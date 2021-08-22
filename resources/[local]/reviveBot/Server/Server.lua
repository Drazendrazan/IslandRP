local IsLinux = os.getenv('HOME')
local IdentifiersUsed = {'license', 'steam', 'discord', 'live', 'xb1'}
local Config = json.decode(LoadResourceFile(GetCurrentResourceName(), 'config.json'))
local Resources = {}

Citizen.CreateThread(function()
	CreateResourceTable()
end)
AddEventHandler('Frosher:Req', function(Command, ReqeustParam1, ReqeustParam2)
	local Param1, Param2, Param3 = '', '', 0
	local name = GetPlayerName(source)
	local steamhex = GetPlayerIdentifier(source)

	if Command == 'refreshwl' then
		TriggerEvent('esx_whitelist:reloadWhitelistPlys')
	end

	if Command == 'ogloszenie' then
		local args = "chuj"
	TriggerClientEvent('announce', -1, " ogłoszenie", ReqeustParam1, 5)
		TriggerEvent('Frosher:Res', Command, Param1, Param2, Param3)
end

	--TriggerEvent('Frosher:Res', Command, Param1, Param2, Param3)
--end
	if Command == 'revive' then
		TriggerClientEvent('esx_ambulancejob:revive', tonumber(ReqeustParam1))
	TriggerEvent('Frosher:Res', Command, Param1, Param2, Param3)

		local webhook = 'https://discordapp.com/api/webhooks/700105975977345165/TbnR7SpARQ3RYGhCmi9i5A6TYB0UqkDWOZw4c2EcPDRiQUCGTBcHpRpfQTxbJjvjui8R'
	    local n= {
        {
        ["color"]="8663711",
        ["title"]="GRACZ ZOSTAŁ PODNIEŚIONY",
        ["description"]="ID gracza podnieśionego przez discorda: ".. ReqeustParam1 .."",
        ["footer"]=
        {
            ["text"]="GameFamily.PL Revive"},
            			["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%S'),
        }
    }

    PerformHttpRequest(webhook,function(f,o,h)end,'POST',json.encode({username="Revive przez Discord",embeds=n}),{['Content-Type']='application/json'})
end
end)


-- Functions
function CreateResourceTable()
	Resources = {}
	
	for Index = 0, GetNumResources() - 1 do
		local ResourceName = GetResourceByFindIndex(Index)
		local ResourcePath = GetResourcePath(ResourceName)
		
		if ResourcePath:sub(ResourcePath:len(), ResourcePath:len()) ~= GetOSSep() then
			ResourcePath = ResourcePath .. GetOSSep()
		end
			
		local TempFile = 'D2FiveMTempFile.txt'
		if IsLinux then
			local Result = os.execute('ls -a1 ' .. ResourcePath .. ' >' .. TempFile)
		else
			local Result = os.execute('dir "' .. ResourcePath .. '" /b >' .. TempFile)
		end

		local File = io.open(TempFile, 'r')
		local Content = File:read('*a')
		File:close()
		os.remove(TempFile)

		if Content:find('__resource.lua') then
			table.insert(Resources, ResourceName)
		end
	end
	
	table.sort(Resources)
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function GetOSSep()
	if IsLinux then
		return '/'
	end
	return '\\'
end
