-- T h e   H u b e r t o s#4606

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- NAZWA ITEMU JAKIM JEST TELEFON NAZWA ITEMU JAKIM JEST TELEFON NAZWA ITEMU JAKIM JEST TELEFON
itemtelefon = "phone" -- NAZWA ITEMU JAKIM JEST TELEFON NAZWA ITEMU JAKIM JEST TELEFON NAZWA ITEMU JAKIM JEST TELEFON
-- NAZWA ITEMU JAKIM JEST TELEFON NAZWA ITEMU JAKIM JEST TELEFON NAZWA ITEMU JAKIM JEST TELEFON

-- UZUPEŁNIJ 0 JEŚLI UŻYWASZ ESX NOTIFICATION, UZUPEŁNIJ 1 JEŚLI UŻYWASZ FEEDM'a PODPIĘTEGO POD ESX NOTFICATION
feedm = 1 -- UZUPEŁNIJ 0 JEŚLI UŻYWASZ ESX NOTIFICATION, UZUPEŁNIJ 1 JEŚLI UŻYWASZ FEEDM'a PODPIĘTEGO POD ESX NOTFICATION
-- UZUPEŁNIJ 0 JEŚLI UŻYWASZ ESX NOTIFICATION, UZUPEŁNIJ 1 JEŚLI UŻYWASZ FEEDM'a PODPIĘTEGO POD ESX NOTFICATION

-- UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA 
nazwaserwera = "NoNameRP" -- UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA  
-- UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA UZUPEŁNIJ NAZWE SERWERA 

RegisterServerEvent('wolfi:przemakanie')
AddEventHandler('wolfi:przemakanie', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local telefon = xPlayer.getInventoryItem(itemtelefon).count
    local pieniazki = xPlayer.getMoney()
    local brudnepieniazki = xPlayer.getAccount('black_money').money
    if telefon > 0 then
        xPlayer.removeInventoryItem(itemtelefon, telefon)
        if feedm == 1 then
            TriggerClientEvent("esx:showAdvancedNotification", source, nazwaserwera, "Informacja", "Zalałeś swój telefon!", CustomLogo, 7500, primary)
        else
            TriggerClientEvent('esx:showNotification', source, 'Zalałeś swój telefon!')
        end
    end
    if pieniazki > 0 then
        xPlayer.removeMoney(pieniazki)
        if feedm == 1 then
            TriggerClientEvent("esx:showAdvancedNotification", source, nazwaserwera, "Informacja", "Przemokły Ci pieniądze, straciłeś ~g~$"..pieniazki.."", CustomLogo, 7500, primary)
        else
            TriggerClientEvent('esx:showNotification', source, "Przemokły Ci pieniądze, straciłeś ~g~$"..pieniazki.."")
        end
    end
    if brudnepieniazki > 0 then
        xPlayer.removeAccountMoney('black_money', brudnepieniazki)
        if feedm == 1 then
            TriggerClientEvent("esx:showAdvancedNotification", source, nazwaserwera, "Informacja", "Przemokły Ci brudne pieniądze, straciłeś ~r~$"..brudnepieniazki.."", CustomLogo, 7500, primary)
        else
            TriggerClientEvent('esx:showNotification', source, "Przemokły Ci brudne pieniądze, straciłeś ~r~$"..brudnepieniazki.."")
        end
    end
end)