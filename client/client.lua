ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  ESX.PlayerData = xPlayer
end)

-- Numpad 4 --
Citizen.CreateThread(function()
	while true do
	  Wait(5)
		if IsControlPressed(0, 108) then
			Numpad4()
		end
	end
end)

-- Numpad 5
Citizen.CreateThread(function()
	while true do
	  Wait(0)
		if IsControlPressed(0, 60) then
			Numpad5()
		end
	end
end)

-- Numpad 6 --
Citizen.CreateThread(function()
	while true do
	  Wait(5)
		if IsControlPressed(0, 107) then
			Numpad6()
		end
	end
end)

-- Numpad 7 --
Citizen.CreateThread(function()
	while true do
	  Wait(0)
		if IsControlPressed(0, 117) then
			Numpad7()
		end
	end
end)

-- Numpad 8 --
Citizen.CreateThread(function()
	while true do
	  Wait(0)
		if IsControlPressed(0, 61) then
			Numpad8()
		end
	end
end)

-- Numpad 9 --
Citizen.CreateThread(function()
	while true do
	  Wait(0)
		if IsControlPressed(0, 118) then
			Numpad9()
		end
	end
end)

-- FUNCTIONS --

-- Function Numpad 4 --
function Numpad4()
	TaskPlayAnim(GetPlayerPed(-1), Config.Numpad4, "hands_up_idle_a_player_one", 8.0, 8.0, -1, 50, 0, false, false, false)
	RequestAnimDict(Config.Numpad4)
	while not HasAnimDictLoaded(Config.Numpad4) do
		Citizen.Wait(100)
	end
end

-- Function Numpad 5 --
function Numpad5()
	TaskPlayAnim(GetPlayerPed(-1), Config.Numpad5, "floyd_dh1_asab_01_g2", 8.0, 8.0, -1, 50, 0, false, false, false)
	RequestAnimDict(Config.Numpad5)
	while not HasAnimDictLoaded(Config.Numpad5) do
		Citizen.Wait(100)
	end
end

-- Function Numpad 6 --
function Numpad6()
		TaskPlayAnim(GetPlayerPed(-1), Config.Numpad6, "floyd_dh1_aeab_01_g2", 8.0, 8.0, -1, 50, 0, false, false, false)
		RequestAnimDict(Config.Numpad6)
		while not HasAnimDictLoaded(Config.Numpad6) do
			Citizen.Wait(100)
		end
end

-- Function Numpad 7 --
function Numpad7()
	TaskPlayAnim(GetPlayerPed(-1), Config.Numpad7, "idle_a", 8.0, 8.0, -1, 50, 0, false, false, false)
	RequestAnimDict(Config.Numpad7)
	while not HasAnimDictLoaded(Config.Numpad7) do
		Citizen.Wait(100)
	end
end

-- Function Numpad 8 -- 
function Numpad8()
	TaskPlayAnim(GetPlayerPed(-1), Config.Numpad8, "idle_a", 8.0, 8.0, -1, 50, 0, false, false, false)
	RequestAnimDict(Config.Numpad8)
	while not HasAnimDictLoaded(Config.Numpad8) do
		Citizen.Wait(100)
	end
end

-- Function Numpad 9 -- 
function Numpad9()
	TaskPlayAnim(GetPlayerPed(-1), Config.Numpad9, "idle_a", 8.0, 8.0, -1, 50, 0, false, false, false)
	RequestAnimDict(Config.Numpad9)
	while not HasAnimDictLoaded(Config.Numpad9) do
		Citizen.Wait(100)
	end
end