ESX = nil 
isWear = false
Citizen.CreateThread(function()

    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) -- ⚠ NE PAS TOUCHER ⚠
        Citizen.Wait(100)
    end
end)
ESX = nil

TriggerEvent('ESX:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('regist:tenue1', function(result)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    TriggerClientEvent('tenue:1', _src, "Haut 1")

end)