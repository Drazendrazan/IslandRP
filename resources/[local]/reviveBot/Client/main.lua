ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj 
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('announce')
AddEventHandler('announce', function(title, msg, sec)
	ESX.Scaleform.ShowFreemodeMessage(title, msg, sec)
end)