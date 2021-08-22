local rob = false
local robbers = {}
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
          ["text"]= "Kradziez z esx_holdup",
         },
      }
  }

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('esx_holdup:toofar')
AddEventHandler('esx_holdup:toofar', function(robb)
	local _source = source
	-- local xPlayers = ESX.GetPlayers()
	rob = false
	-- for i=1, #xPlayers, 1 do
		-- local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		-- if xPlayer.job.name == 'police' then
			-- TriggerClientEvent('esx:showNotifi', xPlayers[i], _U('robbery_cancelled_at', Stores[robb].nameofstore))
			TriggerClientEvent('esx_holdup:killblip', -1)
		-- end
	-- end

	if robbers[_source] then
		TriggerClientEvent('esx_holdup:toofarlocal', _source)
		robbers[_source] = nil
		TriggerClientEvent('esx:showNotification', _source, _U('robbery_cancelled_at', Stores[robb].nameofstore))
	end
end)

RegisterServerEvent('esx_holdup:rob')
AddEventHandler('esx_holdup:rob', function(robb)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	-- local xPlayers = ESX.GetPlayers()

	if Stores[robb] then
		local store = Stores[robb]

		if (os.time() - store.lastrobbed) < Config.TimerBeforeNewRob and store.lastrobbed ~= 0 then
			TriggerClientEvent('esx:showNotification', _source, _U('recently_robbed', Config.TimerBeforeNewRob - (os.time() - store.lastrobbed)))
			return
		end

		

		if rob == false then
			if true then
				rob = true
			
						TriggerClientEvent('esx_holdup:setblip', -1, Stores[robb].position,store.nameofstore)
				

				TriggerClientEvent('esx:showNotification', _source, _U('started_to_rob', store.nameofstore))
				TriggerClientEvent('esx:showNotification', _source, _U('alarm_triggered'))
				
				TriggerClientEvent('esx_holdup:currentlyrobbing', _source, robb)
				TriggerClientEvent('esx_holdup:starttimer', _source)
				
				Stores[robb].lastrobbed = os.time()
				robbers[_source] = robb
				local savedSource = _source
				SetTimeout(store.secondsRemaining * 1000, function()

					if robbers[savedSource] then
						rob = false
						if xPlayer then
							local award = store.reward
							TriggerClientEvent('esx_holdup:robberycomplete', savedSource, award)
							xPlayer.addAccountMoney('black_money', award)
							sendToDiscord (('esx_holdup:robberycomplete'), "Gracz [".. _source .."] " .. xPlayer.name .. " Licka gracza: " .. xPlayer.identifier .. " UKRADL ".. award .." Z ".. store.nameofstore .." ") 
							-- local xPlayers = ESX.GetPlayers()
							-- for i=1, #xPlayers, 1 do
								-- local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								-- if xPlayer.job.name == 'police' then
									-- TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at', store.nameofstore))
									TriggerClientEvent('esx_holdup:killblip', -1)
								-- end
							-- end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', _source, _U('min_police', Config.PoliceNumberRequired))
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('robbery_already'))
		end
	end
end)
