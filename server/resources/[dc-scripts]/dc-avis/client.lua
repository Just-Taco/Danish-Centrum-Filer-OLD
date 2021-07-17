
function LocalPed()
    return GetPlayerPed(-1)
end

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(1)
				local playerCoords = GetEntityCoords(LocalPed())
				local ped = GetPlayerPed(-1)
				local pos = GetEntityCoords(PlayerPedId())
						for k,v in pairs(config.postkasse) do
						if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, v.x, v.y, v.z, true ) < 5 then
					--	DrawMarker(27, v.x,v.y,v.z-0.95, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 0.6, 0.6, 50, 50, 204, 100, false, true, 2, nil, nil, false)
						DrawText3Ds(v.x,v.y,v.z-1.15, "Tryk ~g~[E]~s~ for at købe en ~y~Avis~s~ ", 3.0, 7)
						if IsControlJustPressed(1, 38) then
						if not IsPedInAnyVehicle(PlayerPedId()) then
						TriggerServerEvent("dc-avis:CheckMoney")
					else
						exports['mythic_notify']:SendAlert('error', 'Du kan ikke gøre dette i et køretøj.')
									end
								end
							end
						end
					end
				end)

RegisterNetEvent('dc-avis:Animation')
AddEventHandler('dc-avis:Animation', function()
  	local ped = PlayerPedId()
  	FreezeEntityPosition(ped, true)
  	RequestAnimDict("amb@prop_human_bum_bin@idle_b")
  	while (not HasAnimDictLoaded("amb@prop_human_bum_bin@idle_b")) do Citizen.Wait(0) end
    TaskPlayAnim(ped,"amb@prop_human_bum_bin@idle_b","idle_d",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
    Wait(1000)
    StopAnimTask(ped, "amb@prop_human_bum_bin@idle_b","idle_d", 1.0)
    FreezeEntityPosition(ped, false)
    TriggerServerEvent("dc-avis:KobAvis")
		end)

RegisterNetEvent('dc-avis:Use')
AddEventHandler('dc-avis:Use', function()
	local ped = PlayerPedId()
    dict = "missmic3"
    RequestAnimDict(dict)
    
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(1)
    end
    TaskPlayAnim(PlayerPedId(), dict, 'newspaper_dialogue_idle_dave', 8.0, 8.0, -1, 49, 0, false, false, false)
    prop = CreateObject(GetHashKey("prop_cs_newspaper"), GetEntityCoords(PlayerPedId()), true, true, true)
	AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 6286), 0.11, 0.248, -0.351, 14.0, 100.0, 15.0, true, true, false, true, 1, true)
	Wait(1000)
	TriggerEvent("avis:OpenAvisMenu", ped)
	done = false
	repeat
		Wait(1000)
	until done
    ClearPedSecondaryTask(PlayerPedId())
    DeleteObject(prop)
    DetachEntity(prop, true, false) 
end)

function DrawText3Ds(x,y,z, text)
local onScreen,_x,_y=World3dToScreen2d(x,y,z)
local px,py,pz=table.unpack(GetGameplayCamCoords())
	SetTextScale(0.40, 0.40)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
			end

-------------------------------------------------
--                     UI                      --
-------------------------------------------------

RegisterNetEvent("avis:OpenAvisMenu")
AddEventHandler("avis:OpenAvisMenu", function ()
    SetNuiFocus(true, true)
    Citizen.Wait(100)
    SendNUIMessage({
        type = "openAvisMenu",
    })
end)

RegisterNUICallback("CloseMenu", function (data, callback)
    SetNuiFocus(false, false)
	callback("ok")
	done = true
end)