ESX				= nil

local SearchTable = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function sendToDiscord (name,message,color)
    local DiscordWebHook = "https://discord.com/api/webhooks/866471325086515220/QN5nSTWG8NWIPuVUjjD4v-8UWK9Ci0Ey3DpUTE-puJLXSv49GJhGKrn6tXTm0d5XaIfD"

  local embeds = {
      {
          ["title"]=message,
          ["type"]="rich",
          ["color"] =color,
          ["footer"]=  {
          ["text"]= "Zakucie",
         },
      }
  }

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

ESX.RegisterUsableItem('handcuffs', function(source)
    local _source = source
    local identifier = GetPlayerName(source)
	TriggerClientEvent('esx_handcuffs:onUse', _source)
    sendToDiscord (('esx_handcuffs:onUse'), "Gracz [".. source .."] " .. identifier .. " uzyl kajdanek")
end)

ESX.RegisterServerCallback('esx_policejob:checkSearch', function(source, cb, target)
    local xPlayer = ESX.GetPlayerFromId(source)
    if SearchTable[target] ~= nil then
        if SearchTable[target] == xPlayer.identifier then
            cb(false)
        else
            cb(true)
        end
    else
        cb(false)
    end
end)
 
ESX.RegisterServerCallback('esx_policejob:checkSearch2', function(source, cb, target)
    local xPlayer = ESX.GetPlayerFromId(source)
    if SearchTable[target] ~= nil then
        if SearchTable[target] == xPlayer.identifier then
            cb(true)
        else
            cb(false)
        end
    else
        cb(true)
    end
end)
 
RegisterServerEvent('esx_policejob:isSearching')
AddEventHandler('esx_policejob:isSearching', function(target, boolean)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if boolean == nil then
        SearchTable[target] = xPlayer.identifier
    else
        SearchTable[target] = nil
    end
end)

