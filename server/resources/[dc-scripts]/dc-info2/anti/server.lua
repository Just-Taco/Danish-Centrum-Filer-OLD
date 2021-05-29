local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")

RegisterServerEvent('scrap:SellVehicle')
AddEventHandler('scrap:SellVehicle', function ()
    local source = source
    local user_id = vRP.getUserId({source})
    
    PerformHttpRequest(cfg.webhook, function(err, text, headers) end, 'POST', json.encode({username = "DanishCentrumAntiSpawn", content = "```\nBorger ID: "..user_id.."\nKørte lige eventet: scrap:SellVehicle \nPrøver muligvis at give sig selv penge med mod menu\n``` @everyone"}), { ['Content-Type'] = 'application/json' })
    
end)