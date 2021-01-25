ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("przemakanko:kasa")
AddEventHandler("przemakanko:kasa", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local kasa = xPlayer.getMoney()
     if kasa > 0 then
     xPlayer.removeMoney(kasa)
	 TriggerClientEvent('esx:showNotification', source, ('Przemakła Ci kasa! Straciłeś: ~g~$%s'):format(kasa))

    end
end)

RegisterServerEvent("przemakanko:telefon")
AddEventHandler("przemakanko:telefon", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local fonik = xPlayer.getInventoryItem("phone")["count"]
     if fonik > 0 then
     xPlayer.removeInventoryItem("phone", telefon)
	 TriggerClientEvent('esx:showNotification', source, '~r~Zalałeś swój telefon!')

    end
end)

RegisterServerEvent("przemakanko:brudna")
AddEventHandler("przemakanko:brudna", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local brudniszek = xPlayer.getAccount('black_money').money
     if brudniszek > 0 then
     xPlayer.removeAccountMoney('black_money', brudna)
	 TriggerClientEvent('esx:showNotification', source, ('Brudne Ci zamokły! Straciłeś: ~g~$%s'):format(brudna))

    end
end)
