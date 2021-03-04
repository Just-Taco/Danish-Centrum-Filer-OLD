-- facut de Uwu Hentai | Muie copiatorilor
local zone = {
	["spawn"] = {x=475.53778076172,y=-118.05686950684,z=62.75883102417,radius = 20.0}, --475.53778076172,-118.05686950684,62.75883102417
	["midtby"] = {x=223.3639831543,y=-792.15325927734,z=30.841007232666,radius = 20.0} --223.3639831543,-792.15325927734,30.841007232666
	--["fermier"] = {x=423.23580932617,y=-1000.4470825195,z=30.709135055542,radius = 60.0},
	--["spital"] = {x=364.30493164063,y=-591.23675537109,z=28.685577392578,radius = 15.0}
}

local uwuMUIEeulamfacut = {laba = false,x=nil,y=nil,z=nil,radius=nil}

function coliziune(entitate)
	for _, lr in ipairs(GetActivePlayers()) do
		if(Vdist(GetEntityCoords(GetPlayerPed(lr)),uwuMUIEeulamfacut.x,uwuMUIEeulamfacut.y,uwuMUIEeulamfacut.z) <= uwuMUIEeulamfacut.radius) then
			SetEntityNoCollisionEntity(GetPlayerPed(lr),entitate,true)
		end
	end
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local jucatorimuie = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(jucatorimuie, true))
		
		if(uwuMUIEeulamfacut.laba == false) then
			for i,v in pairs(zone) do
				if(Vdist(x,y,z,v.x,v.y,v.z) <= v.radius) then
					uwuMUIEeulamfacut.laba = true
					uwuMUIEeulamfacut.x,uwuMUIEeulamfacut.y,uwuMUIEeulamfacut.z,uwuMUIEeulamfacut.radius = v.x,v.y,v.z,v.radius
					SetCurrentPedWeapon(jucatorimuie,GetHashKey("WEAPON_UNARMED"),true)
					ClearPlayerWantedLevel(PlayerId())
					SetPlayerInvincible(jucatorimuie,true)
					SetEntityAlpha(PlayerPedId(), 170, false)
				end
			end
		end
		if uwuMUIEeulamfacut.laba then
			NetworkSetFriendlyFireOption(false)
			DisableControlAction(2, 37, true)
			DisablePlayerFiring(jucatorimuie,true)
			DisableControlAction(0, 106, true)
			Draw3DText(x,y,z, "[~g~GreenZone~g~]", 0.7)

			coliziune(player)
			if(Vdist(x,y,z,uwuMUIEeulamfacut.x,uwuMUIEeulamfacut.y,uwuMUIEeulamfacut.z) > 50.0) then
				uwuMUIEeulamfacut.laba = false
				uwuMUIEeulamfacut.x,uwuMUIEeulamfacut.y,uwuMUIEeulamfacut.z,uwuMUIEeulamfacut.radius = nil,nil,nil,nil
				NetworkSetFriendlyFireOption(true)
				DisableControlAction(2, 37, false)
				DisablePlayerFiring(jucatorimuie,false)
				DisableControlAction(0, 106, false)
				SetPlayerInvincible(jucatorimuie,false)
				SetEntityAlpha(PlayerPedId(), 255, false)
			end
		end
	end
end)

function drawtxt(text,font,centre,x,y,scale,r,g,b,a)
    y = y - 0.010
    scale = scale/2
    y = y + 0.002
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextFont(fontId)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end


function Draw3DText(x,y,z, text,scl) 

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*scl
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 1.1*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString("~h~"..text)
        DrawText(_x,_y)
    end
end