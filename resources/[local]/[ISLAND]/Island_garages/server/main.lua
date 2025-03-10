ESX              = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
end)

ESX.RegisterServerCallback('garages:getOwnedVehicles', function (source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll(
		'SELECT * FROM owned_vehicles WHERE owner = @owner',
		{
		['@owner'] = identifier
		},
		function (result2)
			local vehicles = {}

			for i=1, #result2, 1 do
				local vehicleData = json.decode(result[i].vehicle)
				table.insert(vehicles, vehicleData)
			end

			cb(vehicles)
		end
	)
end)

ESX.RegisterServerCallback('garages:checkIfVehicleIsOwned', function (source, cb, plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	local found = nil
	local vehicleData = nil
	MySQL.Async.fetchAll(
	'SELECT * FROM owned_vehicles WHERE owner = @owner',
	{ 
		['@owner'] = identifier
	},
	function (result2)
		local vehicles = {}
		for i=1, #result2, 1 do
			vehicleData = json.decode(result2[i].vehicle)
			if vehicleData.plate == plate then
				found = true
				cb(vehicleData)
				break
			end
		end
		if not found then
			cb(nil)
		end
	end
	)
end)

ESX.RegisterServerCallback('garages:checkVehProps', function (source, cb, plate)
	MySQL.Async.fetchAll(
	'SELECT * FROM owned_vehicles WHERE plate = @plate',
	{ 
		['@plate'] = plate
	},
	function (result2)
		if result2[1] then
			cb(json.decode(result2[1].vehicle))
		end
	end
	)
end)

ESX.RegisterServerCallback('garages:checkIfPlayerIsOwner', function (source, cb, plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll(
	'SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND owner_type = 1',
	{ 
		['@owner'] = identifier,
		['@plate'] = plate
	},
	function (result2)
		if result2[1] ~= nil then
			cb(true)
		else
			cb(false)
		end
	end
	)
end)

RegisterServerEvent('garages:updateOwnedVehicle')
AddEventHandler('garages:updateOwnedVehicle', function(vehicleProps)
 	local _source = source
 	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll(
		'SELECT * FROM owned_vehicles WHERE owner = @owner',
		{
			['@owner'] = identifier
		},
		function(result2) 
			local foundVehicleId = nil 
			for i=1, #result2, 1 do 				
				local vehicle = json.decode(result2[i].vehicle)
				if vehicle.plate == vehicleProps.plate then
					foundVehiclePlate = result2[i].plate
					break
				end
			end
			if foundVehiclePlate ~= nil then
				MySQL.Async.execute(
					'UPDATE owned_vehicles SET vehicle = @vehicle, vehicleid = NULL, state = 1 WHERE plate = @plate',
					{
						['@vehicle'] 	= json.encode(vehicleProps),
						['@plate']      = vehicleProps.plate
					}
				) 
			end
		end
	)
 end)

RegisterServerEvent('garages:removeCarFromParking')
AddEventHandler('garages:removeCarFromParking', function(plate, networkid)
	local xPlayer = ESX.GetPlayerFromId(source)
	if plate ~= nil then
		MySQL.Async.execute(
			'UPDATE `owned_vehicles` SET state = 0, vehicleid = @networkid WHERE plate = @plate',
			{
			  ['@plate'] = plate,
			  ['@networkid'] = networkid
			}
		)
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('veh_released'))
	end
end)
RegisterServerEvent('garages:removeCarFromPoliceParking')
AddEventHandler('garages:removeCarFromPoliceParking', function(plate, networkid)
	local xPlayer = ESX.GetPlayerFromId(source)
	if plate ~= nil then
		MySQL.Async.execute(
			'UPDATE `owned_vehicles` SET state = 0, vehicleid = @networkid WHERE plate = @plate',
			{
			  ['@plate'] = plate,
			  ['@networkid'] = networkid
			}
		)
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('veh_released'))
		SetVehicleDirtLevel(vehicle, 0)
	end
end)

ESX.RegisterServerCallback('garages:getVehiclesInGarage', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll(
	'SELECT * FROM `owned_vehicles` WHERE owner = @identifier AND state = 1',
	{
		['@identifier'] = identifier
	},
	function(result2)
		local vehicles = {}
		for i=1, #result2, 1 do
			local vehicleData = json.decode(result2[i].vehicle)
			table.insert(vehicles, vehicleData)
		end
		cb(vehicles)
	end
	)
end)

ESX.RegisterServerCallback('garages:towVehicle', function(source, cb, plate)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll("SELECT vehicleid FROM owned_vehicles WHERE owner=@identifier AND plate = @plate",
	{
		['@identifier'] = identifier,
		['@plate'] = plate
	}, 
	function(data)
		if data[1] ~= nil then
			cb(data[1].vehicleid)
		end
	end)
end)

ESX.RegisterServerCallback('garages:getVehiclesToTow',function(source, cb)	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local identifier = xPlayer.identifier
	local vehicles = {}
	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier AND state=0",
	{
		['@identifier'] = identifier
	}, 
	function(data) 
		for _,v in pairs(data) do
			if v.vehicleid == nil then
				v.vehicleid = -1
			end
			v.vehicle = v.vehicle:sub(1,-2)
			v.vehicle = v.vehicle .. ',"networkid":' .. v.vehicleid .. '}'
			local vehicle = json.decode(v.vehicle)
			table.insert(vehicles, vehicle)
		end
		cb(vehicles)
	end)
end)

ESX.RegisterServerCallback('garages:getTakedVehicles', function(source, cb)
	local vehicles = {}
	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE state=2",
	{}, 
	function(data) 
		for _,v in pairs(data) do
			local vehicle = json.decode(v.vehicle)
			table.insert(vehicles, vehicle)
		end
		cb(vehicles)
	end)
end)

ESX.RegisterServerCallback('garages:checkMoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= Config.Prices[1] then
		cb(true)
	else
		cb(false)
	end
end)

RegisterServerEvent('garages:pay')
AddEventHandler('garages:pay', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(Config.Prices[1])
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mecano', function(account)
		account.addMoney(Config.Prices[1]/2)
	end)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_police', function(account)
		account.addMoney(Config.Prices[1]/2)
	end)
end)

RegisterServerEvent('garages:updateState')
AddEventHandler('garages:updateState', function(plate)
	MySQL.Sync.execute(
		'UPDATE `owned_vehicles` SET state = 1, vehicleid = NULL WHERE plate = @plate',
		{
		['@plate'] = plate
		}
	)
end)

--SUBOWNER
ESX.RegisterServerCallback('garages:getSubowners', function(source, cb, plate)
	local subowners = {}
	local found = false
	MySQL.Async.fetchAll(
		'SELECT owner FROM owned_vehicles WHERE plate = @plate and owner_type = 0',
		{ ['@plate'] = plate },
		function(data)
			if #data == nil or #data < 1 then
				found = true
			else
				for i=1, #data, 1 do
					MySQL.Async.fetchAll(
						'SELECT firstname, lastname FROM characters WHERE identifier = @identifier',
						{
							['@identifier'] = data[i].owner
						},
						function(data2)
							local subowner = {}
							table.insert(subowners, {label = data2[1].firstname .. " " .. data2[1].lastname, value= data[i].owner})
						end
					)
					if i==#data then
						found = true
					end
				end
			end
		end
	)
	Citizen.CreateThread(function()
		while found == false do
			Citizen.Wait(250)
			if found == true then
				cb(subowners)
			end
		end
	end)
end)

RegisterServerEvent('garages:setSubowner')
AddEventHandler('garages:setSubowner', function(plate, tID)
	local xPlayer = ESX.GetPlayerFromId(source)
	local tPlayer = ESX.GetPlayerFromId(tID)
	local subPrice = 200000
	local identifier = xPlayer.identifier
	local tIdentifier = tPlayer.identifier
	
	MySQL.Async.fetchAll(
		'SELECT * FROM owned_vehicles WHERE plate = @plate AND owner_type = 1',
		{
			['@plate'] = plate
		},
		function(result2)
			if result2 ~= nil then
				if result2[1].owner_type == 1 then
					MySQL.Async.fetchAll(
						'SELECT owner FROM owned_vehicles WHERE plate = @plate AND owner_type = 0',
						{
							['@plate'] = plate
						},
						function(count)
							if #count >= Config.MaxSubs then
								TriggerClientEvent('esx:showNotification', xPlayer.source, _U('max_subs'))
							else
								local choosenVeh = json.decode(result2[1].vehicle)
								local findVeh = exports['esx_vehicleshop']:GetVehicle(choosenVeh.model)
								if findVeh ~= nil then
									subPrice = math.floor(findVeh.price * 0.05)
								end
								if xPlayer.getMoney() < subPrice then
									xPlayer.showNotification("~r~Dodanie współwłaściciela w tym aucie kosztuje " .. subPrice .. "$")
								else
									MySQL.Sync.execute(
										'INSERT INTO owned_vehicles (owner, owner_type, state, plate, vehicle, vehicleid) VALUES (@owner, @owner_type, @state, @plate, @vehicle, @vehicleid)',
										{
											['@owner']   = tIdentifier,
											['@owner_type'] = 0,
											['@state'] = result2[1].state,
											['@plate'] = plate,
											['@vehicle'] =	result2[1].vehicle,
											['@vehicleid'] = result2[1].vehicleid
										}
									)
									TriggerClientEvent('esx:showNotification', xPlayer.source, _U('sub_added'))
									TriggerClientEvent('esx:showNotification', tPlayer.source, _U('you_are_sub', plate))
									xPlayer.removeMoney(subPrice)
								end	
							end
						end
					)
				else
					TriggerClientEvent('esx:showNotification', xPlayer.source, _U('not_owner'))
				end
			else
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('not_veh'))
			end
		end
	)
end)

RegisterCommand('givecar', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.group == 'best' then
		if args[2] ~= nil then
			local playerName = GetPlayerName(args[2])
			TriggerClientEvent('esx_giveownedcar:spawnVehicle',source,args[1],args[2],playerName,'player')
			local steamid = xPlayer.identifier
			local name = GetPlayerName(source)
			wiadomosc = "Użyto komendy /givecar | MODEL AUTA: "..args[1].." DO: "..args[2].." \n[ID: "..source.." | Nazwa Steam: "..name.." | ROCKSTAR: "..steamid.." ]" 
			givecarwebhook('AriviRP.pl', wiadomosc, 11750815)
		else
			local sourceID = source
			local playerName = GetPlayerName(sourceID)
			TriggerClientEvent('esx_giveownedcar:spawnVehicle',source,args[1],sourceID,playerName,'player')
		end
	end
end)
RegisterServerEvent('esx_giveownedcar:printToConsole')
AddEventHandler('esx_giveownedcar:printToConsole', function(msg)
	print(msg)
end)

--give car with custom plate- 1: carModel 2: plate (3: playerID)
RegisterCommand('givecarplate', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.group == 'best' then
		if args[1] == nil then
			TriggerClientEvent('esx:showNotification', source, '/givecarplate [carModel] [plate] [playerID]')
		else
			if args[2] == nil then
				TriggerClientEvent('esx:showNotification', source, _U('none_plate'))
			else
				if args[3] ~= nil then
					local playerName = GetPlayerName(args[3])
					TriggerClientEvent('esx_giveownedcar:spawnVehiclePlate',source,args[1],args[2],args[3],playerName,'player')
					local steamid = xPlayer.identifier
					local name = GetPlayerName(source)
					wiadomosc = "Użyto komendy /givecarplate MODEL AUTA: "..args[1].." DO: "..args[3].."\n[ID: "..source.." | Nazwa Steam: "..name.." | ROCKSTAR: "..steamid.." ]" 
					givecarwebhook('AriviRP.pl', wiadomosc, 11750815)
				else
					local sourceID = source
					local playerName = GetPlayerName(sourceID)
					TriggerClientEvent('esx_giveownedcar:spawnVehiclePlate',source,args[1],args[2],sourceID,playerName,'player')
				end
			end
		end
	end
end)

RegisterServerEvent('esx_giveownedcar:setVehicle')
AddEventHandler('esx_giveownedcar:setVehicle', function (vehicleProps, playerID)
	local _source = playerID
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps),
		--['@stored']  = 1
	}, function ()
		TriggerClientEvent('esx:showNotification', _source, _U('received_car', string.upper(vehicleProps.plate)))
	end)
end)

RegisterCommand('delcar', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.group == 'superadmin' or xPlayer.group == 'best' or xPlayer.group == 'admin' then
		MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
			['@plate'] = args[1]
		})
		TriggerClientEvent('esx:showNotification', source, _U('del_car', args[1]))
		local steamid = xPlayer.identifier
		local name = GetPlayerName(source)
		wiadomosc = "Użyto komendy /delcar | NUMER REJESTRACJI: "..args[1].."\n[ID: "..source.." | Nazwa Steam: "..name.." | ROCKSTAR: "..steamid.." ]" 
		delcarwebhook('AriviRP.pl', wiadomosc, 11750815)
	end
end, false)

RegisterServerEvent('garages:deleteSubowner')
AddEventHandler('garages:deleteSubowner', function(plate, identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Sync.execute(
		'DELETE FROM owned_vehicles WHERE owner = @owner AND plate = @plate',
		{
			['@owner']   = identifier,
			['@plate'] 	 = plate
		}
	)
	TriggerClientEvent('esx:showNotification', xPlayer.source, _U('sub_deleted'))
end)

RegisterServerEvent('garages:buyContract')
AddEventHandler('garages:buyContract', function()
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= 15000 then
		xPlayer.removeMoney(15000)
		xPlayer.addInventoryItem('contract', 1)
	else
		xPlayer.showNotification("~r~Nie masz wystarczająco pieniędzy!")
	end
end)


function parkAllOwnedVehicles()
	MySQL.ready(function ()
		MySQL.Sync.execute(
			'UPDATE `owned_vehicles` SET vehicleid = NULL WHERE vehicleid IS NOT NULL',
			{
			}, function(rowsChanged)
			end
		)
	end)
end

parkAllOwnedVehicles()


-- logs
function givecarwebhook(hook,message,color)
    local givecarwebhook = 'https://discord.com/api/webhooks/863014335966085130/9hQgfzC26sxjFqp2Fj-FegLOixmVvV9_Qsvno2QhAT48dbuvYcYGA8IKOuRNFNVcA_au'
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = 'AriviRP.pl'
                    },
                }
            }
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(givecarwebhook, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function delcarwebhook(hook,message,color)
    local delcarwebhook = 'https://discord.com/api/webhooks/863014414553841673/NN391lCwyqTpQVGK5VFyDp4H0U2028OOIqYfCyi2CauVMIh8QxUnHy53vXUTPSlha4mF'
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = 'AriviRP.pl'
                    },
                }
            }
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(delcarwebhook, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('garages:savecarlog')
AddEventHandler('garages:savecarlog', function() 
	local xPlayer = ESX.GetPlayerFromId(source)
	local steamid = xPlayer.identifier
	local name = GetPlayerName(source)
	wiadomosc = "Zapisał pojazd do garażu\n[ID: "..source.." | Nazwa Steam: "..name.." | ROCKSTAR: "..steamid.." ]" 
	savecarwebhook('AriviRP.pl', wiadomosc, 11750815)
end)

function savecarwebhook(hook,message,color)
    local savecarwebhook = 'https://discord.com/api/webhooks/863014498499428353/DH0GJ_AJz_9Dre9gIFNKpBdNv4zABQmIngIz5wxzECNl8R30bdPm6w1QKkzV6rzAvFIw'
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = 'AriviRP.pl'
                    },
                }
            }
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(savecarwebhook, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('garages:sellVehicle')
AddEventHandler('garages:sellVehicle', function(target, plate)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local _target = target
	local tPlayer = ESX.GetPlayerFromId(_target)
	local result = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @identifier AND plate = @plate', {
		['@identifier'] = xPlayer.identifier,
		['@plate'] = plate
	})
	if result[1] ~= nil then
		MySQL.Async.execute('UPDATE owned_vehicles SET owner = @target WHERE owner = @owner AND plate = @plate', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = plate,
			['@target'] = tPlayer.identifier,
		}, function (rowsChanged)
			if rowsChanged ~= 0 then
				TriggerClientEvent('garages:showAnim', _source)
				Wait(22000)
				TriggerClientEvent('garages:showAnim', _target)
				Wait(22000)
				TriggerClientEvent('esx:showNotification', _source, 'Sprzedales samochód o numerach: '..plate)
				TriggerClientEvent('esx:showNotification', _target, 'Kupiłeś samochód o numerach: '..plate)
				--log
				xPlayer.removeInventoryItem('contract', 1)
			end
		end)
	else
		TriggerClientEvent('esx:showNotification', _source, 'To nie twój samochód')
	end
end)


ESX.RegisterUsableItem('contract', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('garages:getVehicle', _source)
end)
