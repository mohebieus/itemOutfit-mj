ESX = nil 
isWear = false
Citizen.CreateThread(function()

    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) -- ⚠ NE PAS TOUCHER ⚠
        Citizen.Wait(100)
    end
end)
------------------------------# TENUE EXEMPLE #----------------------------
RegisterNetEvent('tenue:1') -- Pour faire pluesieurs tenue dans le script vous pouvez CTRL C et CTRL V toule la partie :
AddEventHandler('tenue:1', function(name)-- DANS LE COTE SERVEUR, LE NOM POUR LA NOTIF.
    local ped = PlayerPedId()
    if not isWear then
        Citizen.Wait(50)
        ClearPedTasksImmediately(ped)
        SetPedComponentVariation(GetPlayerPed(-1) , --[[Mettre la partit du corp en chiffre. Lisste ci-dessous]] 11, --[[Numero du vetement.]]10, --[[Numero de la variation (La texture)]]1, 0)
        ESX.ShowNotification("Vous venez d'équiper la tenue :~g~ "..name)
        isWear = true
    elseif isWear then
        Citizen.Wait(50)
        ClearPedTasksImmediately(ped)
        SetPedComponentVariation(GetPlayerPed(-1) , --[[Mettre la partit du corp en chiffre. Lisste ci-dessous]] 11, --[[Torse nue quand on l'enleve.]]15, --[[Numero de la variation (La texture)]]1, 0)
        ESX.ShowNotification("Vous venez d'enlever la tenue :~g~ "..name)
        isWear = false
    end
end)

--[[Liste des partit du corp :
0: Tête
1: Masque
2: Cheveux
3: Bras
4: Pentalon
5: Parachute / Sac
6: Chaussure
7: Accesoire
8: T-Shirt
9: Gilet par balle
10: Badge
11: Chemise / Torse
]]