local Log = 'https://discord.com/api/webhooks/872118565233360937/eMl_6RnhccFRkZFkna-7tTKJMKTEhQVDmtikh8EUCguAJ-4ku3UaaRPtduYVAma8FLFA'

RegisterServerEvent('Fuckmedaddy:log')
AddEventHandler('Fuckmedaddy:log', function(pedId)
    local _source = source
    local name = GetPlayerName(_source)
    local targetName = GetPlayerName(pedId)
    PerformHttpRequest(Log, function(err, text, headers) end, 'POST', json.encode({embeds={{title="__**Aim Logi**__",description="\nPlayer name: "..name.. "`[".._source.."]`\nIs aiming: "..targetName.." `["..pedId.."]`",color=16711680}}}), { ['Content-Type'] = 'application/json' })
end)

