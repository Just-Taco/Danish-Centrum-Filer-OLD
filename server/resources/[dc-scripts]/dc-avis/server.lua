local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","dc-avis")

RegisterServerEvent('dc-avis:CheckMoney')
AddEventHandler('dc-avis:CheckMoney', function()
    local source = source
    local user_id = vRP.getUserId({source})
			if vRP.tryFullPayment({user_id,100}) then	
				TriggerClientEvent('dc-avis:Animation', source)
				TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Tager Avis...'}, 5000)
			else
				TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke råd til at købe en Avis!'}, 5000)
			end
		end)

RegisterServerEvent('dc-avis:KobAvis')
AddEventHandler('dc-avis:KobAvis', function()
    local source = source
    local user_id = vRP.getUserId({source})
	vRP.giveInventoryItem({user_id,"dc-avis",1,false})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Du købte en Avis!'}, 5000)
end)

vRP.defInventoryItem({"dc-avis","Avis","Se nyheder!", function()
	
	local choices = {}
	
	choices["> Brug"] = {function(source,choice,mod)
		local source = source
		local user_id = vRP.getUserId({source})
        if user_id ~= nil then
			TriggerClientEvent("dc-avis:Use", source)
            vRP.closeMenu({source})
        else
		end
	end}

	return choices
end, 0.50})