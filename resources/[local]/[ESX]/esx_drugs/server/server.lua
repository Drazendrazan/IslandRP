ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local PlayersHarvestingCoke    = {}
local PlayersTransformingCoke  = {}
local PlayersSellingCoke       = {}
local PlayersHarvestingMeth    = {}
local PlayersTransformingMeth  = {}
local PlayersSellingMeth       = {}
local PlayersHarvestingWeed    = {}
local PlayersTransformingWeed  = {}
local PlayersSellingWeed       = {}
local PlayersHarvestingheroina   = {}
local PlayersTransformingheroina = {}
local PlayersSellingheroina      = {}
local event1 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event2 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event3 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event4 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event5 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event6 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event7 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event8 = 'cotyrobisz:code' .. math.random(1000,1000000)
local event9 = 'cotyrobisz:code' .. math.random(1000,1000000)


CreateThread(function()
	while true do
		Zones = {
			CokeField =		{x =  3286.7, y = 5185.04, z = 17.42,	name = _U('coke_field'),		sprite = 1,	color = 100},         
			CokeProcessing =	{x = 1543.14, y = 3592.87, z = 34.45,	name = _U('coke_processing'),	sprite = 1,	color = 100},         

			MethField =			{x = 1905.12, y = 4924.16, z = 47.89,	name = _U('meth_field'),		sprite = 1,	color = 50},          
			MethProcessing =	{x =  1014.28, y = 2905.71, z = 40.4,	name = _U('meth_processing'),	sprite = 1,	color = 50},          

			WeedField =			{x = 1445.4, y = 3749.36, z = 30.93  ,	name = _U('weed_field'),		sprite = 1,	color = 25},          
			WeedProcessing =	{x = 1442.44,	y =  6333.04,	z =  22.98,	name = _U('weed_processing'),	sprite = 1,	color = 25},          

			--heroinaField =		{x = 1231.05,	y = 4382.55, z = 34.42,	name = _U('heroina_field'),		sprite = 1,	color = 1},               
			--heroinaProcessing =	{x = 2301.81,	y = 1721.7,	z = 67.04,	name = _U('heroina_processing'),	sprite = 1,	color = 1},           
		}

		TriggerClientEvent('skrrrt:esx_dragi_config', -1, Zones)
		TriggerClientEvent('skrrrt:esx_dragi_eventchanger', -1, event1, event2, event3, event4, event5, event6, event7, event8, event9)
		Wait(1000)
	end
end)


TriggerEvent('esx:getShtestaredObjtestect', function(obj) ESX = obj end)



--coke
local function HarvestCoke(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsCoke then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsCoke))
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingCoke[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			if xPlayer then
				local coke = xPlayer.getInventoryItem('coke')

				if coke.limit ~= -1 and coke.count >= coke.limit then
					TriggerClientEvent('esx:showNotification', source, _U('inv_full_coke'))
				else
					xPlayer.addInventoryItem('coke', 1)
					HarvestCoke(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event2)
AddEventHandler(event2, function()

	local _source = source

	PlayersHarvestingCoke[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestCoke(_source)

end)

RegisterServerEvent('esx_drugs:stopHarvestCoke')
AddEventHandler('esx_drugs:stopHarvestCoke', function()

	local _source = source

	PlayersHarvestingCoke[_source] = false

end)

local function TransformCoke(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsCoke then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsCoke))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingCoke[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local cokeQuantity = xPlayer.getInventoryItem('coke').count
				local poochQuantity = xPlayer.getInventoryItem('coke_pooch').count

				if poochQuantity > 60 then
					TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
				elseif cokeQuantity < 3 then
					TriggerClientEvent('esx:showNotification', source, _U('not_enough_coke'))
				else
					xPlayer.removeInventoryItem('coke', 4)
					xPlayer.addInventoryItem('coke_pooch', 1)
				
					TransformCoke(source)
				end
			end

		end
	end)
end

RegisterServerEvent(event3)
AddEventHandler(event3, function()

	local _source = source

	PlayersTransformingCoke[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformCoke(_source)

end)

RegisterServerEvent('esx_drugs:stopTransformCoke')
AddEventHandler('esx_drugs:stopTransformCoke', function()

	local _source = source

	PlayersTransformingCoke[_source] = false

end)

local function SellCoke(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsCoke then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsCoke))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingCoke[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local poochQuantity = xPlayer.getInventoryItem('coke_pooch').count

				if poochQuantity == 0 then
					TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
				else
					xPlayer.removeInventoryItem('coke_pooch', 1)
					if exports['esx_scoreboard']:getJobsW('police') == 0 then
						xPlayer.addAccountMoney('black_money', 198)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_coke'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 1 then
						xPlayer.addAccountMoney('black_money', 258)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_coke'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 2 then
						xPlayer.addAccountMoney('black_money', 308)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_coke'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 3 then
						xPlayer.addAccountMoney('black_money', 358)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_coke'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 4 then
						xPlayer.addAccountMoney('black_money', 396)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_coke'))
					elseif exports['esx_scoreboard']:getJobsW('police') >= 5 then
						xPlayer.addAccountMoney('black_money', 428)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_coke'))
					end
					
					SellCoke(source)
				end
			end
		end
	end)
end

RegisterServerEvent('esx_drugs:startSellCoke')
AddEventHandler('esx_drugs:startSellCoke', function()

	local _source = source

	TriggerEvent('BanSql:ICheat', source, "TRIGGER PROTECTER", " | Powod: Użycie nieistniejącego eventu: esx_drugs:startSellCoke |") 

end)

RegisterServerEvent('esx_drugs:stopSellCoke')
AddEventHandler('esx_drugs:stopSellCoke', function()

	local _source = source

	PlayersSellingCoke[_source] = false

end)

--meth
local function HarvestMeth(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsMeth then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsMeth))
		return
	end
	
	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingMeth[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local meth = xPlayer.getInventoryItem('meth')

				if meth.limit ~= -1 and meth.count >= meth.limit then
					TriggerClientEvent('esx:showNotification', source, _U('inv_full_meth'))
				else
					xPlayer.addInventoryItem('meth', 1)
					HarvestMeth(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event4)
AddEventHandler(event4, function()

	local _source = source

	PlayersHarvestingMeth[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestMeth(_source)

end)

RegisterServerEvent('esx_drugs:stopHarvestMeth')
AddEventHandler('esx_drugs:stopHarvestMeth', function()

	local _source = source

	PlayersHarvestingMeth[_source] = false

end)

local function TransformMeth(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsMeth then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsMeth))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingMeth[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local methQuantity = xPlayer.getInventoryItem('meth').count
				local poochQuantity = xPlayer.getInventoryItem('meth_pooch').count

				if poochQuantity > 60 then
					TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
				elseif methQuantity < 4 then
					TriggerClientEvent('esx:showNotification', source, _U('not_enough_meth'))
				else
					xPlayer.removeInventoryItem('meth', 4)
					xPlayer.addInventoryItem('meth_pooch', 1)
					
					TransformMeth(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event5)
AddEventHandler(event5, function()

	local _source = source

	PlayersTransformingMeth[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformMeth(_source)

end)

RegisterServerEvent('esx_drugs:stopTransformMeth')
AddEventHandler('esx_drugs:stopTransformMeth', function()

	local _source = source

	PlayersTransformingMeth[_source] = false

end)

local function SellMeth(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsMeth then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsMeth))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingMeth[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local poochQuantity = xPlayer.getInventoryItem('meth_pooch').count

				if poochQuantity == 0 then
					TriggerClientEvent('esx:showNotification', _source, _U('no_pouches_sale'))
				else
					xPlayer.removeInventoryItem('meth_pooch', 1)
					if exports['esx_scoreboard']:getJobsW('police') == 0 then
						xPlayer.addAccountMoney('black_money', 276)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 1 then
						xPlayer.addAccountMoney('black_money', 374)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 2 then
						xPlayer.addAccountMoney('black_money', 474)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 3 then
						xPlayer.addAccountMoney('black_money', 552)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 4 then
						xPlayer.addAccountMoney('black_money', 616)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 5 then
						xPlayer.addAccountMoney('black_money', 654)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					elseif exports['esx_scoreboard']:getJobsW('police') >= 6 then
						xPlayer.addAccountMoney('black_money', 686)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_meth'))
					end
					
					SellMeth(source)
				end
			end
		end
	end)
end

RegisterServerEvent('esx_drugs:startSellMeth')
AddEventHandler('esx_drugs:startSellMeth', function()

	local _source = source

	TriggerEvent('BanSql:ICheat', source, "TRIGGER PROTECTER",  " | Powod: Użycie nieistniejącego eventu: esx_drugs:startSellMeth |") 
end)

RegisterServerEvent('esx_drugs:stopSellMeth')
AddEventHandler('esx_drugs:stopSellMeth', function()

	local _source = source

	PlayersSellingMeth[_source] = false

end)

--weed
local function HarvestWeed(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsWeed then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsWeed))
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingWeed[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local weed = xPlayer.getInventoryItem('weed')

				if weed.limit ~= -1 and weed.count >= weed.limit then
					TriggerClientEvent('esx:showNotification', source, _U('inv_full_weed'))
				else
					xPlayer.addInventoryItem('weed', 1)
					HarvestWeed(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event6)
AddEventHandler(event6, function()

	local _source = source

	PlayersHarvestingWeed[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestWeed(_source)

end)

RegisterServerEvent('esx_drugs:stopHarvestWeed')
AddEventHandler('esx_drugs:stopHarvestWeed', function()

	local _source = source

	PlayersHarvestingWeed[_source] = false

end)

local function TransformWeed(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsWeed then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsWeed))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingWeed[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local weedQuantity = xPlayer.getInventoryItem('weed').count
				local poochQuantity = xPlayer.getInventoryItem('weed_pooch').count

				if poochQuantity > 60 then
					TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
				elseif weedQuantity < 4 then
					TriggerClientEvent('esx:showNotification', source, _U('not_enough_weed'))
				else
					xPlayer.removeInventoryItem('weed', 4)
					xPlayer.addInventoryItem('weed_pooch', 1)
					
					TransformWeed(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event7)
AddEventHandler(event7, function()

	local _source = source

	PlayersTransformingWeed[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformWeed(_source)

end)

RegisterServerEvent('esx_drugs:stopTransformWeed')
AddEventHandler('esx_drugs:stopTransformWeed', function()

	local _source = source

	PlayersTransformingWeed[_source] = false

end)

local function SellWeed(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsWeed then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsWeed))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingWeed[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local poochQuantity = xPlayer.getInventoryItem('weed_pooch').count

				if poochQuantity == 0 then
					TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
				else
					xPlayer.removeInventoryItem('weed_pooch', 1)
					if exports['esx_scoreboard']:getJobsW('police') == 0 then
						xPlayer.addAccountMoney('black_money', 108)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_weed'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 1 then
						xPlayer.addAccountMoney('black_money', 128)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_weed'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 2 then
						xPlayer.addAccountMoney('black_money', 152)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_weed'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 3 then
						xPlayer.addAccountMoney('black_money', 165)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_weed'))
					elseif exports['esx_scoreboard']:getJobsW('police') >= 4 then
						xPlayer.addAccountMoney('black_money', 180)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_weed'))
					end
					
					SellWeed(source)
				end
			end
		end
	end)
end

RegisterServerEvent('esx_drugs:startSellWeed')
AddEventHandler('esx_drugs:startSellWeed', function()

	local _source = source

	TriggerEvent('BanSql:ICheat', source, "TRIGGER PROTECTER",  " | Powod: Użycie nieistniejącego eventu: esx_drugs:startSellWeed |") 

end)

RegisterServerEvent('esx_drugs:stopSellWeed')
AddEventHandler('esx_drugs:stopSellWeed', function()

	local _source = source

	PlayersSellingWeed[_source] = false

end)


--heroina

local function Harvestheroina(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsheroina then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsheroina))
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingheroina[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local heroina = xPlayer.getInventoryItem('heroina')

				if heroina.limit ~= -1 and heroina.count >= heroina.limit then
					TriggerClientEvent('esx:showNotification', source, _U('inv_full_heroina'))
				else
					xPlayer.addInventoryItem('heroina', 1)
					Harvestheroina(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event8)
AddEventHandler(event8, function()

	local _source = source

	PlayersHarvestingheroina[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	Harvestheroina(_source)

end)

RegisterServerEvent('esx_drugs:stopHarvestheroina')
AddEventHandler('esx_drugs:stopHarvestheroina', function()

	local _source = source

	PlayersHarvestingheroina[_source] = false

end)

local function Transformheroina(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsheroina then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsheroina))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingheroina[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local heroinaQuantity = xPlayer.getInventoryItem('heroina').count
				local poochQuantity = xPlayer.getInventoryItem('heroina_pooch').count

				if poochQuantity > 60 then
					TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
				elseif heroinaQuantity < 4 then
					TriggerClientEvent('esx:showNotification', source, _U('not_enough_heroina'))
				else
					xPlayer.removeInventoryItem('heroina', 4)
					xPlayer.addInventoryItem('heroina_pooch', 1)
				
					Transformheroina(source)
				end
			end
		end
	end)
end

RegisterServerEvent(event9)
AddEventHandler(event9, function()

	local _source = source

	PlayersTransformingheroina[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	Transformheroina(_source)

end)

RegisterServerEvent('esx_drugs:stopTransformheroina')
AddEventHandler('esx_drugs:stopTransformheroina', function()

	local _source = source

	PlayersTransformingheroina[_source] = false

end)

local function Sellheroina(source)

	if exports['esx_scoreboard']:getJobsW('police') < Config.RequiredCopsheroina then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', exports['esx_scoreboard']:getJobsW('police'), Config.RequiredCopsheroina))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingheroina[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)
			if xPlayer then
				local poochQuantity = xPlayer.getInventoryItem('heroina_pooch').count

				if poochQuantity == 0 then
					TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
				else
					xPlayer.removeInventoryItem('heroina_pooch', 1)
					if exports['esx_scoreboard']:getJobsW('police') == 0 then
						xPlayer.addAccountMoney('black_money', 300)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_heroina'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 1 then
						xPlayer.addAccountMoney('black_money', 500)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_heroina'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 2 then
						xPlayer.addAccountMoney('black_money', 700)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_heroina'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 3 then
						xPlayer.addAccountMoney('black_money', 800)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_heroina'))
					elseif exports['esx_scoreboard']:getJobsW('police') == 4 then
						xPlayer.addAccountMoney('black_money', 900)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_heroina'))
					elseif exports['esx_scoreboard']:getJobsW('police') >= 5 then
						xPlayer.addAccountMoney('black_money', 1000)
						TriggerClientEvent('esx:showNotification', source, _U('sold_one_heroina'))
					end
					
					Sellheroina(source)
				end
			end
		end
	end)
end

RegisterServerEvent('esx_drugs:startSellheroina')
AddEventHandler('esx_drugs:startSellheroina', function()

	local _source = source

	TriggerEvent('BanSql:ICheat', source, "TRIGGER PROTECTER",  " | Powod: Użycie nieistniejącego eventu:  esx_drugs:startSellheroina |") 

end)

RegisterServerEvent('esx_drugs:stopSellheroina')
AddEventHandler('esx_drugs:stopSellheroina', function()

	local _source = source

	PlayersSellingheroina[_source] = false

end)

RegisterServerEvent('esx_drugs:GetUserInventory')
AddEventHandler('esx_drugs:GetUserInventory', function(currentZone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer then
		TriggerClientEvent('esx_drugs:ReturnInventory', 
			_source, 
			xPlayer.getInventoryItem('coke').count, 
			xPlayer.getInventoryItem('coke_pooch').count,
			xPlayer.getInventoryItem('meth').count, 
			xPlayer.getInventoryItem('meth_pooch').count, 
			xPlayer.getInventoryItem('weed').count, 
			xPlayer.getInventoryItem('weed_pooch').count, 
			xPlayer.getInventoryItem('heroina').count, 
			xPlayer.getInventoryItem('heroina_pooch').count,
			xPlayer.job.name, 
			currentZone
		)
	end
end)

ESX.RegisterUsableItem('weed', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer then
		xPlayer.removeInventoryItem('weed', 1)

		TriggerClientEvent('esx_drugs:onPot', _source)
		TriggerClientEvent('esx:showNotification', _source, _U('used_one_weed'))
	end
end)
