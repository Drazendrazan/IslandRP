
local robbers = {}
local przerwa = 0
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function sendToDiscord (name,message,color)
    local DiscordWebHook = "https://discord.com/api/webhooks/872048977971937310/4XC2dKKHsOZPvRkpbtnMQOE445Ua_5uBGiBXmWtkQQZrUHOk1MxSKnA4sM4CsJOAZwN8"

  local embeds = {
      {
          ["title"]=message,
          ["type"]="rich",
          ["color"] =color,
          ["footer"]=  {
          ["text"]= "Napad w esx_holdupbank",
         },
      }
  }

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('esx_holdupbank:toofar')
AddEventHandler('esx_holdupbank:toofar', function(robb)
	local source = source
	-- local xPlayers = ESX.GetPlayers()
	rob = false
	-- for i=1, #xPlayers, 1 do
 	-- 	local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 	-- 	if xPlayer.job.name == 'police' then
			-- TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. Banks[robb].nameofbank)
			TriggerClientEvent('esx_holdupbank:killblip', -1)
	-- 	end
	-- end
	if(robbers[source])then
		TriggerClientEvent('esx_holdupbank:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled') .. Banks[robb].nameofbank)
	end
end)

function wolfi_przerwa(czas)
	przerwa = czas
	repeat
	przerwa = przerwa - 1
	Citizen.Wait(1000)
	until(przerwa == 0)
end

RegisterServerEvent('lol')
AddEventHandler('lol', function(robb)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local drill = xPlayer.getInventoryItem('drill')

	if Banks[robb] then
		local bank = Banks[robb]

		if (os.time() - bank.lastrobbed) < 4800 and bank.lastrobbed ~= 0 then

			TriggerClientEvent('esx:showNotification', source, "Poczekaj przed kolejnym napadem na tą placówkę.")
			return
		end

	
		-- SZYMCZAKOV TY NEI WYZYWAJ MNIE BO MI SMUTNO OK? 
		if przerwa == 0 then
		   
			if xPlayer.getInventoryItem('drill').count >= 1 then
				xPlayer.removeInventoryItem('drill', 1)

				if (exports['esx_scoreboard']:getJobsW('police') >= Config.NumberOfCopsRequired) then
					-- for i=1, #xPlayers, 1 do
						-- local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
						-- local identifier = GetPlayerName(source)
						-- local _source = source
						-- if xPlayer.job.name == 'police' then
								-- TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)
								TriggerClientEvent('esx_holdupbank:setblip', -1, Banks[robb].position)
						-- end
					-- end

					TriggerClientEvent('esx:showNotification', source, _U('started_to_rob') .. _U('do_not_move'))
					TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered'))
					TriggerClientEvent('esx:showNotification', source, _U('hold_pos'))
					TriggerClientEvent('esx_borrmaskin:startdrill', source)
					TriggerClientEvent('esx_holdupbank:currentlyrobbing', source, robb)
					Banks[robb].lastrobbed = os.time()
					robbers[source] = robb
					local savedSource = source
					local identifier = GetPlayerName(source)
					local _source = source
					SetTimeout(450000, function()

						if(robbers[savedSource])then

							rob = false
							TriggerClientEvent('esx_holdupbank:robberycomplete', savedSource, job)

							if(xPlayer)then

								xPlayer.addAccountMoney('black_money', bank.reward)
								sendToDiscord (('esx_holdupbank:robberycomplete'), "Gracz [".. _source .."] " .. identifier .. " Licka gracza: " .. xPlayer.identifier .. " ZAROBIL ".. bank.reward .. " BANK KTORY ZOSTAL OKRADZIONY ".. bank.nameofbank .." ")
								-- local xPlayers = ESX.GetPlayers()
								-- for i=1, #xPlayers, 1 do
									-- local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
									-- if xPlayer.job.name == 'police' then
											-- TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at') .. bank.nameofbank)
											TriggerClientEvent('esx_holdupbank:killblip', -1)
									-- end
								-- end
							end
						end
					end)
					wolfi_przerwa(3600)
				else
					TriggerClientEvent('esx:showNotification', source, _U('min_two_police') .. Config.NumberOfCopsRequired)
				end
			end
		else
			TriggerClientEvent('esx:showNotification', source, "Odczekaj jeszcze "..przerwa.."s przed następnym napadem.")
		end
	end
end)