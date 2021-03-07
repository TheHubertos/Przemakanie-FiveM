-- T h e   H u b e r t o s#4606

local playerPed = PlayerPedId()

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if IsEntityInWater(playerPed) then
            TriggerServerEvent('wolfi:przemakanie')
        end
    end
end)