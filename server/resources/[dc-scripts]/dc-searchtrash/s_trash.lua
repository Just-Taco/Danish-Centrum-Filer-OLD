local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
MySQL = module("vrp_mysql", "MySQL")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_trash")
vRPCtrash = Tunnel.getInterface("vRP_trash","vRP_trash")

vRPtrash = {}
Tunnel.bindInterface("vRP_trash",vRPtrash)
Proxy.addInterface("vRP_trash",vRPtrash)

configS = {
    searchNotify = "~g~Søger...",
    foundLessMoney = "~g~Mistede Penge ",
    foundMoney = "~g~Fandt Penge! ",
    foundRats = "~r~Av rotter!",
    foundRatsButRanAway = "~r~Rotten løb bæk", -- If enableRats = false, it will show this when you would normally find a rat
    tryAgain = "~y~Prøv igen?!",
    moneyMin = 100,
    moneyMax = 1500,
    searchDuration = 15000, -- Needs to be the same as in c_trash.lua if you want it timed correctly
    enableRats = true
}

function vRPtrash.searchTrash()
    local user_id = vRP.getUserId({source})
    local target = vRP.getUserSource({user_id})
    local chance = math.random (1, 1000)
    local money = math.random(configS.moneyMin, configS.moneyMax/10)
    local lotsOfMoney = math.random(configS.moneyMin, configS.moneyMax)
    vRPclient.notify(target, {configS.searchNotify})
    Wait(configS.searchDuration)
    if chance == 996 or chance == 997 or chance == 998 then
        vRP.giveMoney({user_id, money})
        vRPclient.notify(target, {configS.foundLessMoney, money .. "$."})
    elseif chance == 999 then
        vRP.giveMoney({user_id, lotsOfMoney})
        vRPclient.notify(target, {configS.foundMoney, money .. "$."})
    elseif chance > 760 and chance <= 799 then
        vRP.giveInventoryItem({user_id, 'water', 3, true})
    elseif chance >= 860 and chance <= 899 then
        vRP.giveInventoryItem({user_id, 'vodka', 3, true})
    elseif chance >= 960 and chance <= 995 then
        vRP.giveInventoryItem({user_id, 'ol', 3, true})
    elseif chance >= 400 and chance <= 699 then
        if configS.enableRats == true then
            vRPclient.notify(target, {configS.foundRats})
            vRPclient.varyHealth(target,{-10})
        else
            vRPclient.nofity(target, {configS.foundRatsButRanAway})
        end
    else
        vRPclient.notify(target, {configS.tryAgain})
        --TriggerClientEvent('vRPmisc:trashNotify', source, '~r~Nu ai gasit nimic, mai cauta...')
    end
    --TriggerClientEvent('chatMessage', -1, "Sansa: " .. chance)
end
