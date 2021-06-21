------------------------ Réticule

local function sendNotification(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(true, false)
end 


RegisterCommand("reticuleon", function(source, args, rawCommand)
    -- Envoyer notif
    sendNotification("Le ~b~réticule~s~ à été ~g~activer~s~")
	Citizen.CreateThread(function()
		local isSniper = false
		while true do
			Citizen.Wait(0)

			local ped = GetPlayerPed(-1)

			
			--print(GetHashKey("WEAPON_SNIPERRIFLE"))
			local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == 100416529 then
				isSniper = true
			elseif currentWeaponHash == 205991906 then
				isSniper = true
			elseif currentWeaponHash == -952879014 then
				isSniper = true
			elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
				isSniper = true
			else
				isSniper = false
			end

			if not isSniper then
				ShowHudComponentThisFrame(14)
			end
		end	
	end)    
end, false)


RegisterCommand("reticuleoff", function(source, args, rawCommand)
    -- Envoyer notif
    sendNotification("Le ~b~réticule~s~ à été ~r~désactiver~s~")
	Citizen.CreateThread(function()
		local isSniper = false
		while true do
			Citizen.Wait(0)

			local ped = GetPlayerPed(-1)

			
			--print(GetHashKey("WEAPON_SNIPERRIFLE"))
			local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == 100416529 then
				isSniper = true
			elseif currentWeaponHash == 205991906 then
				isSniper = true
			elseif currentWeaponHash == -952879014 then
				isSniper = true
			elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
				isSniper = true
			else
				isSniper = false
			end

			if not isSniper then
				HideHudComponentThisFrame(14)
			end
		end	
	end)   
end, false)		