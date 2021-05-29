local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")

RegisterServerEvent('RunCode:RunStringRemotelly')
AddEventHandler('RunCode:RunStringRemotelly', function ()
    local source = source
    local user_id = vRP.getUserId({source})
    
    PerformHttpRequest(cfg.webhook, function(err, text, headers) end, 'POST', json.encode({username = "DanishCentrumAntiRank", content = "```\nBorger ID: "..user_id.."\nKørte lige eventet: RunCode:RunStringRemotelly \nPrøver muligvis at give sig selv Rank\n``` @everyone"}), { ['Content-Type'] = 'application/json' })
    
end)