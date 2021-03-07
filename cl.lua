local playerPed = PlayerPedId()

local telefonik = true
local blaczkhajs = true 

Citizen.CreateThread(function()
  while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  end
end)

Citizen.CreateThread(function()
       while true do
         Citizen.Wait(1200)
        if IsEntityInWater(playerPed) and IsPedSwimming(playerPed) then
          TriggerServerEvent('przemakanko:kasa')
		  if telefonik == true then
		  TriggerServerEvent('przemakanko:telefon')
		   if blaczkhajs == true then
		  TriggerServerEvent('przemakanko:brudna')
		   end
		  end
      end
    end
end)