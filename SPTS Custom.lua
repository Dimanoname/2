repeat wait(0.5) until game.Loaded()
wait(1)

-- Aliases
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local root = char.HumanoidRootPart
local Plrs = game:GetService("Players")
local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
local UIS = game:GetService'UserInputService'
local RepStor = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local Run = game:GetService("RunService")
local mouse = game.Players.LocalPlayer:GetMouse()
local human = plr.Character:WaitForChild("Humanoid")
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local Backpack = plr.Backpack
local camera = game.Workspace.CurrentCamera
local Workspace = game:GetService("Workspace")
local playgui = game.Players.LocalPlayer.PlayerGui.Play
local wc = workspace[plr.Name] 
-- Anti Idle --
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
-- Properties
workspace[plr.Name].HumanoidRootPart.Anchored = false

showtopplayersactive = false
showtopplayersfistactive = false
showtopplayersbodyactive = false
showtopplayersspeedactive = false
showtopplayersjumpactive = false
showtopplayerspsychicactive = false
settplocation = false
playerdied = false
deathreturnactive = false
resetplayerstat = false
killplayeractive = false

ESPEnabled = false
ESPLength = 5000

human:UnequipTools()
-- Round
function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end
	
function converttoletter(num)
	if num / 1e57 >=1 then
		newnum = num / 1e57
		return round(newnum, 3).. "OcDe"
	elseif num / 1e54 >=1 then
		newnum = num / 1e54
		return round(newnum, 3).. "SpDe"
	elseif num / 1e51 >=1 then
		newnum = num / 1e51
		return round(newnum, 3).. "SxDe"
	elseif num / 1e48 >=1 then
		newnum = num / 1e48
		return round(newnum, 3).. "QiDe"
	elseif num / 1e45 >=1 then
		newnum = num / 1e45
		return round(newnum, 3).. "QaDe"
	elseif num / 1e42 >=1 then
		newnum = num / 1e42
		return round(newnum, 3).. "TDe"
	elseif num / 1e39 >=1 then
		newnum = num / 1e39
		return round(newnum, 3).. "DDe"
	elseif num / 1e36 >=1 then
		newnum = num / 1e36
		return round(newnum, 3).. "Un"
	elseif num / 1e33 >=1 then
		newnum = num / 1e33
		return round(newnum, 3).. "De"
	elseif num / 1e30 >=1 then
		newnum = num / 1e30
		return round(newnum, 3).. "No"
	elseif num / 1e27 >=1 then
		newnum = num / 1e27
		return round(newnum, 3).. "Oc"
	elseif num / 1e24 >=1 then
		newnum = num / 1e24
		return round(newnum, 3).. "Sp"
	elseif num / 1e21 >=1 then
		newnum = num / 1e21
		return round(newnum, 3).. "Sx"
	elseif num / 1e18 >=1 then
		newnum = num / 1e18
		return round(newnum, 3).. "Qi"
	elseif num / 1e15 >=1 then
		newnum = num / 1e15
		return round(newnum, 3).. "Qa"
	elseif num / 1e12 >=1 then
		newnum = num / 1e12
		return round(newnum, 3).. "T"
	elseif num / 1e09 >=1 then
		newnum = num / 1e09
		return round(newnum, 3).. "B"
	elseif num / 1e06 >=1 then
		newnum = num / 1e06
		return round(newnum, 3).. "M"
	elseif num / 1e03 >=1 then
		newnum = num / 1e03
		return round(newnum, 3).. "K"
	else return num
	end
end

function converttohours(mins)
	if mins / 60 >= 1 then
		hours = mins / 60
		return round(hours, 1) .. "h"
	end
end

function converttodays(mins)
	if mins / 60 >= 1 then
		hours = mins / 60
		if hours / 24 >= 1 then
			days = hours / 24
			return round(days, 1) .. "d"
		else
			days = 0
			return days .. "d"
		end
	end
end
-- Main info
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/2/main/KavoUI.lua"))()
local Window = Library.CreateLib("Useless GUI | SPTS: Custom II", "Useless") -- Themes: Useless ; DarkTheme ; LightTheme ; BloodTheme ; GrapeTheme ; Ocean ; Midnight ; Sentinel ; Synapse ; Serpent . 
-- Info Tab
local Info = Window:NewTab("Info")
local Creator = Info:NewSection("Creator:")
Creator:NewLabel("Discord: Useless#3770")
local ToggleGui = Info:NewSection("Toggle UI")
ToggleGui:NewKeybind("Toggle UI", "Toggle UI", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
-- Misc Tab
local Misc = Window:NewTab("Misc")
local Funcs = Misc:NewSection("Misc:")
Funcs:NewButton("ESP", "Enabling ESP", function()
	ESPEnabled = not ESPEnabled
	if ESPEnabled then
		for _, v in next, Plrs:GetPlayers() do
			if v ~= MyPlr then
				if CharAddedEvent[v.Name] == nil then
					CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
						if ESPEnabled then
							RemoveESP(v)
							CreateESP(v)
						end
						repeat wait() until Char:FindFirstChild("HumanoidRootPart")
					end)
				end
				RemoveESP(v)
				CreateESP(v)
			end
		end
	else
		for _, v in next, Plrs:GetPlayers() do
			RemoveESP(v)
		end
	end
end)
Funcs:NewButton("Rejoin", "Rejoining to same server", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/rejoin"))()
end)
Funcs:NewButton("Serverhop", "Hoping to another server", function()
	Teleport()
end)
Funcs:NewButton("Enable anchor", "Makes ur player unable to move", function()
	if game.workspace[tostring(MyPlr)].HumanoidRootPart.Anchored ~= true then
		game.workspace[tostring(MyPlr)].HumanoidRootPart.Anchored = true
	end
end)
Funcs:NewButton("Disable anchor", "Makes ur player able to move", function()
	if game.workspace[tostring(MyPlr)].HumanoidRootPart.Anchored ~= false then
		game.workspace[tostring(MyPlr)].HumanoidRootPart.Anchored = false
	end
end)

-- Stat Viewer
local Pls = Window:NewTab("Players")
local Plas = Pls:NewSection("Player list:")

PlayerNames = {}
local PL = Plas:NewDropdown("Player list","List of players", PlayerNames, function(nick)
	local check = Plrs:WaitForChild(nick)
	print(tostring(check) .. " was found.")
	player = nick
end)

function UpdatePlayerList()
	local children = Plrs:GetChildren()
	PlayerNames = {}
	PL:Refresh(PlayerNames)
	wait(0.5)
	for i = 1, #children do
		local child = children[i]
		local player = child.Name
		local display = child.DisplayName
		local status = Plrs[player].leaderstats.Status.Value
		PlayerNames[i] = player
		PL:Refresh(PlayerNames)
	end
	PL:Refresh(PlayerNames)
end

local PLRESET = Plas:NewButton("Reset Player List","Update player list", function()
	UpdatePlayerList()
end)

local StatChecker = Window:NewTab("Stats")
local StatCheck = StatChecker:NewSection("Viewer:")

player = tostring(MyPlr)
spawn(function()
	while true do
		LocationX = round(game.Players[player].Character.HumanoidRootPart.Position.x, 0)
		LocationY = round(game.Players[player].Character.HumanoidRootPart.Position.y, 0)
		LocationZ = round(game.Players[player].Character.HumanoidRootPart.Position.z, 0)
		wait(0.5)
	end
end)

local TpPlayer = Funcs:NewButton("Player coords: ","Teleports you to choosen player", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocationX, LocationY,  LocationZ)
end) 

local PN = StatCheck:NewLabel("Player Name: ")
local HP = StatCheck:NewLabel("Player Health: ")
local FS = StatCheck:NewLabel("Fist Strength: ")
local BT = StatCheck:NewLabel("Body Toughness: ")
local WS = StatCheck:NewLabel("Walk Speed: ")
local JF = StatCheck:NewLabel("Jump Power: ")
local PP = StatCheck:NewLabel("Psychic Power: ")
local Tokens = StatCheck:NewLabel("Tokens: ")

spawn(function()
	while true do
		while player ~= "" do
			wait(0.5)
			PN:UpdateLabel("Player Name: " .. player)
			HP:UpdateLabel("Player Health: " .. converttoletter(tostring(game.workspace[player].Humanoid.Health)) .. "/" .. converttoletter(tostring(game.workspace[player].Humanoid.MaxHealth)))
			FS:UpdateLabel("Fist Strength: " .. converttoletter(tostring(game.Players[player].PlayerFolder.DataFolder.FS.Value)) .. " | " .. converttoletter(tostring(game.Players[player].PlayerFolder.Multipliers.FSMulti.Value)))
			BT:UpdateLabel("Body Toughness: " .. converttoletter(tostring(game.Players[player].PlayerFolder.DataFolder.BT.Value)) .. " | " .. converttoletter(tostring(game.Players[player].PlayerFolder.Multipliers.BTMulti.Value)))
			WS:UpdateLabel("Walk Speed: " .. converttoletter(tostring(game.Players[player].PlayerFolder.DataFolder.WS.Value)) .. " | " .. converttoletter(tostring(game.Players[player].PlayerFolder.Multipliers.WSMulti.Value)))
			JF:UpdateLabel("Jump Power: " .. converttoletter(tostring(game.Players[player].PlayerFolder.DataFolder.JF.Value)) .. " | " .. converttoletter(tostring(game.Players[player].PlayerFolder.Multipliers.JFMulti.Value)))
			PP:UpdateLabel("Psychic Power: " .. converttoletter(tostring(game.Players[player].PlayerFolder.DataFolder.PP.Value)) .. " | " .. converttoletter(tostring(game.Players[player].PlayerFolder.Multipliers.PPMulti.Value)))
			Tokens:UpdateLabel("Tokens: " .. converttoletter(tostring(game.Players[player].PlayerFolder.DataFolder.Tokens.Value)))
			TpPlayer:UpdateButton("Player coords: " ..tostring(LocationX) .. ", " .. tostring(LocationY) .. ", " .. tostring(LocationY))
		end
	end
end)
-- Farm Tab
local Farm = Window:NewTab("Auto Farm")

local Fist = Farm:NewSection("Fist Farm")
Fist:NewToggle("Fist Strength", "Toggling Fist Farm", function(farmfist)
	if farmfist then
		FSTool = Backpack.FSTool
		farmfistactive = true
		deathreturnactive = true
		if tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 350e18 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2790, 21225, -2944)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 5e18 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1926, 13220, 2144)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 500e15 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2300, 7290, 2636)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 35e15 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-224, 513, 328)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 5e15 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1135, 1816, 985)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e12 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(812, 5581, -1697)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e12 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207, 3500, 113)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e09 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 2520, -466)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e09 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-143, 1558, -68)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e06 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2476, 54, -2369)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e06 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2400, 54, -2325)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e03 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2468, 54, -2309)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e03 then
			workspace[plr.Name].HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92, 50, -66)
			wait(0.1)
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/FSToolEquip"))()
		end
	else 
		farmfistactive = false
		deathreturnactive = false
		wait(1)
		human:UnequipTools()
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190.5, 50, 28)
	end
end)

local Body = Farm:NewSection("Body Farm")
Body:NewToggle("Body Toughness", "Toggling Body Farm", function(farmbody)
	if farmbody then
		farmbodyactive = true
		deathreturnactive = true
	else
		farmbodyactive = false
		deathreturnactive = false
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190.5, 50, 28)
	end
end)

local Psyc = Farm:NewSection("Psychic Farm")
Psyc:NewToggle("Psychic Power", "Toggling Psychic Farm", function(farmpsychic)
	if farmpsychic then
		farmpsychicactive = true
		deathreturnactive = true
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = true
	else
		farmpsychicactive = false
		deathreturnactive = false
		wait(1)
		human:UnequipTools()
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190.5, 50, 28)
	end
end)

local WJ = Farm:NewSection("Walk Speed & Jump Power Farm")
WJ:NewToggle("Walk Speed ", "Toggling Walk Speed Farm", function(farmwalk)
	if farmwalk then
		farmspeedactive = true
		game.workspace[tostring(MyPlr)].HumanoidRootPart.Anchored = true
	else
		farmspeedactive = false
	end
end)
WJ:NewToggle("Jump Power", "Toggling Jump Power Farm", function(farmjump)
	if farmjump then
		farmjumpactive = true
		game.workspace[tostring(MyPlr)].HumanoidRootPart.Anchored = true
	else
		farmjumpactive = false
	end
end)
-- Teleport Tab
local Teleports = Window:NewTab("Teleports")

local Other = Teleports:NewSection("Others:")
local FSTP = Teleports:NewSection("Fist Strength:")
local BTTP = Teleports:NewSection("Body Toughness:")
local PPTP = Teleports:NewSection("Psychic Power:")

local SafeZone = Other:NewButton("Safe Zone", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190.5, 50, 28)
end)

local FS1k = FSTP:NewButton("Fist 1k (x10)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92, 60, -66)
end)

local FS100k100M = FSTP:NewButton("Fist 100k-100M (x50-1k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2425, 55, -2297)
end)

local FS1B = FSTP:NewButton("Fist 1B (x10k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-143, 1558, -68)
end)

local FS100B = FSTP:NewButton("Fist 100B (x50k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 2520, -466)
end)

local FS1T = FSTP:NewButton("Fist 1T (x500k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207, 3500, 113)
end)

local FS100T = FSTP:NewButton("Fist 100T (x3M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(812, 5581, -1697)
end)

local FS5Qa = FSTP:NewButton("Fist 5Qa (x50M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1135, 1816, 985)
end)

local FS35Qa = FSTP:NewButton("Fist 35Qa (x200M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-224, 513, 328)
end)

local FS500Qa = FSTP:NewButton("Fist 500Qa (x1B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2300, 7290, 2636)
end)

local FS5Qi = FSTP:NewButton("Fist 5Qi (x5B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1926, 13220, 2144)
end)

local FS350Qi = FSTP:NewButton("Fist 350Qi (x25B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2790, 21225, -2944)
end)

-- BT

local BT1k = BTTP:NewButton("Body 1k (x10)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225, 45, -288)
end)

local BT100k = BTTP:NewButton("Body 100K (x50)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1479, 52, 1108)
end)

local BT1M = BTTP:NewButton("Body 1M (x100)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502, 270, -1255)
end)

local BT100M = BTTP:NewButton("Body 100M (x1k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2440.62, 558.521, -2338.16)
end)

local BT1B = BTTP:NewButton("Body 1B (x10k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-242, 40, -320)
end)

local BT100B = BTTP:NewButton("Body 100B (x50k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-248, 40, -350)
end)

local BT1T = BTTP:NewButton("Body 1T (x100k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80, 40, -325)
end)

local BT100T = BTTP:NewButton("Body 100T (x500k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82, 45, -370)
end)

local BT5Qa = BTTP:NewButton("Body 5Qa (x50M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-78, 44, -412)
end)

local BT35Qa = BTTP:NewButton("Body 35Qa (x200M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-245, 40, -404)
end)

local BT500Qa = BTTP:NewButton("Body 500Qa (x1B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1805, 45, 653)
end)

local BT5Qi = BTTP:NewButton("Body 5Qi (x5B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1810, 60, 756)
end)

local BT350Qi = BTTP:NewButton("Body 350Qi (x25B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1823, 61, 802)
end)

local PP10k = PPTP:NewButton("Psychic 10k (x10)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 774, -86)
end)

local PP1M = PPTP:NewButton("Psychic 1M (x100)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-340, 1055, -263)
end)

local PP1B = PPTP:NewButton("Psychic 1B (x10k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-352, 1055, -133)
end)

local PP1T = PPTP:NewButton("Psychic 1T (x10M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-323, 1067, -196)
end)

local PP1Qa = PPTP:NewButton("Psychic 1Qa (x100M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-423, 1120, -267)
end)

local PP350Qa = PPTP:NewButton("Psychic 350Qa (x1B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429, 1120, -140)
end)

local PP3Qi = PPTP:NewButton("Psychic 3Qi (x10B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-425, 1144, -200)
end)

local PP50Qi = PPTP:NewButton("Psychic 50Qi (x100B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-496, 1234, -209)
end)

local PP1Sx = PPTP:NewButton("Psychic 1Sx (x1T)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(462, 1010, -844)
end)
-- ESP
CharAddedEvent = { }

Plrs.PlayerAdded:connect(function(plr)
	UpdatePlayerList()
	if CharAddedEvent[plr.Name] == nil then
		CharAddedEvent[plr.Name] = plr.CharacterAdded:connect(function(char)
			if ESPEnabled then
				RemoveESP(plr)
				CreateESP(plr)
			end
		end)
	end
end)

Plrs.PlayerRemoving:connect(function(plr)
	UpdatePlayerList()
	if CharAddedEvent[plr.Name] ~= nil then
		CharAddedEvent[plr.Name]:Disconnect()
		CharAddedEvent[plr.Name] = nil
	end
	RemoveESP(plr)
end)

function CreateESP(plr)
	if plr ~= nil then
		local GetChar = plr.Character
		if not GetChar then return end
		local GetHead do
			repeat wait() until GetChar:FindFirstChild("Head")
		end
		GetHead = GetChar.Head
		
		local bb = Instance.new("BillboardGui", CoreGui)
		bb.Adornee = GetHead
		bb.ExtentsOffset = Vector3.new(0, 1, 0)
		bb.AlwaysOnTop = true
		bb.Size = UDim2.new(0, 5, 0, 5)
		bb.StudsOffset = Vector3.new(0, 3, 0)
		bb.Name = "ESP_" .. plr.Name
		
		local frame = Instance.new("Frame", bb)
		frame.ZIndex = 10
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 1, 0)
		
		local TxtName = Instance.new("TextLabel", frame)
		TxtName.Name = "Names"
		TxtName.ZIndex = 10
		TxtName.Text = plr.Name
		TxtName.BackgroundTransparency = 1
		TxtName.Position = UDim2.new(0, 0, 0, -45)
		TxtName.Size = UDim2.new(1, 0, 10, 0)
		TxtName.Font = "SourceSansBold"
		TxtName.TextColor3 = Color3.new(0, 0, 0)
		TxtName.TextSize = 14
		TxtName.TextStrokeTransparency = 0.5
		
		local TxtDist = Instance.new("TextLabel", frame)
		TxtDist.Name = "Dist"
		TxtDist.ZIndex = 10
		TxtDist.Text = ""
		TxtDist.BackgroundTransparency = 1
		TxtDist.Position = UDim2.new(0, 0, 0, -35)
		TxtDist.Size = UDim2.new(1, 0, 10, 0)
		TxtDist.Font = "SourceSansBold"
		TxtDist.TextColor3 = Color3.new(0, 0, 0)
		TxtDist.TextSize = 15
		TxtDist.TextStrokeTransparency = 0.5

		local TxtFist = Instance.new("TextLabel", frame)
		TxtFist.Name = "Fist"
		TxtFist.ZIndex = 10
		TxtFist.Text = ""
		TxtFist.BackgroundTransparency = 1
		TxtFist.Position = UDim2.new(0, 0, 0, -25)
		TxtFist.Size = UDim2.new(1, 0, 10, 0)
		TxtFist.Font = "SourceSansBold"
		TxtFist.TextColor3 = Color3.new(0, 0, 0)
		TxtFist.TextSize = 15
		TxtFist.TextStrokeTransparency = 0.5

		local TxtBody = Instance.new("TextLabel", frame)
		TxtBody.Name = "BT"
		TxtBody.ZIndex = 10
		TxtBody.Text = ""
		TxtBody.BackgroundTransparency = 1
		TxtBody.Position = UDim2.new(0, 0, 0, -15)
		TxtBody.Size = UDim2.new(1, 0, 10, 0)
		TxtBody.Font = "SourceSansBold"
		TxtBody.TextColor3 = Color3.new(0, 0, 0)
		TxtBody.TextSize = 15
		TxtBody.TextStrokeTransparency = 0.5
	end
end

function UpdateESP(plr)
	local Find = CoreGui:FindFirstChild("ESP_" .. plr.Name)
	if Find then
		local plrStatus = game.Players[plr.Name].leaderstats.Status
		if plrStatus.Value == "Criminal" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(255, 113, 106)
		elseif plrStatus.Value == "Lawbreaker" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(255, 142, 100)
		elseif plrStatus.Value == "Guardian" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(3, 12, 255)
		elseif plrStatus.Value == "Protector" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(0, 144, 211)
		elseif plrStatus.Value == "SuperVillian" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(187, 0, 250)
		elseif plrStatus.Value == "Superhero" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(209, 255, 59)
		else
			Find.Frame.Names.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
		Find.Frame.Dist.TextColor3 = Color3.new(1, 1, 1)
		Find.Frame.Fist.TextColor3 = Color3.new(1, 1, 1)
		Find.Frame.BT.TextColor3 = Color3.new(1, 1, 1)
		local GetChar = plr.Character
		if MyChar and GetChar then
			local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
			local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
			local Find4 = GetChar:FindFirstChildOfClass("Humanoid")
			if Find2 and Find3 then
				local pos = Find3.Position
				local Dist = (Find2.Position - pos).magnitude
				if Dist > ESPLength then
					Find.Frame.Names.Visible = false
					Find.Frame.Dist.Visible = false
					Find.Frame.Fist.Visible = false
					Find.Frame.BT.Visible = false
					return
				else
					Find.Frame.Names.Visible = true
					Find.Frame.Dist.Visible = true
					Find.Frame.Fist.Visible = true
					Find.Frame.BT.Visible = true
				end
				Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
				if Find4 then
					Find.Frame.Fist.Text = "Fist: " ..converttoletter(string.format("%.0f", game.Players[plr.Name].PlayerFolder.DataFolder.FS.Value))
					Find.Frame.BT.Text = "Body: " ..converttoletter(string.format("%.0f", game.Players[plr.Name].PlayerFolder.DataFolder.BT.Value))
				else
					Find.Frame.Fist.Text = ""
					Find.Frame.BT.Text = ""
				end
			end
		end
	end
end

function RemoveESP(plr)
	local ESP = CoreGui:FindFirstChild("ESP_" .. plr.Name)
	if ESP then
		ESP:Destroy()
	end
end

Run:BindToRenderStep("UpdateESP", Enum.RenderPriority.Character.Value, function()
	for _, v in next, Plrs:GetPlayers() do
		UpdateESP(v)
	end
end)
-- Farming

function EquipFS()
	local plr = game:GetService("Players").LocalPlayer
	local Backpack = plr.Backpack
	local children = Backpack:GetChildren()
	for i = 1, #children do
		local child = children[i]
    	if child.Name == "FSTool" then
       		child.Parent = workspace[plr.Name]
    	end
	end
end

function EquipPP()
	local plr = game:GetService("Players").LocalPlayer
	local Backpack = plr.Backpack
	local children = Backpack:GetChildren()
	for i = 1, #children do
		local child = children[i]
    	if child.Name == "PPTool" then
       		child.Parent = workspace[plr.Name]
    	end
	end
end

spawn(function()
	while true do
		while farmfistactive and not playerdied do
			human:UnequipTools()
			FSTool = Backpack.FSTool
			EquipFS()
			wait(1)
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 350e18 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2790, 21025, -2944)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 5e18 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1926, 13100, 2144)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 500e15 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2300, 7100, 2636)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 35e15 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-233, 523, 321)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 5e15 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1125, 1846, 985)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e12 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(820, 5481, -1697)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e12 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207, 3450, 113)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e09 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 2480, -466)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e09 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-143, 1528, -68)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e06 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2476, 54, -2369)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmbodyactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e06 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2400, 54, -2325)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmbodyactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 100e03 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2468, 54, -2309)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmbodyactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.FS.Value)) >= 1e03 then
				farmpsychicactive = false
				farmbodyactive = false 
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92, 30, -66)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
			end
			wait(0.5)
			FSTool:Activate()
		end
		wait(1)
	end
end)

spawn(function()
	while true do
		if farmbodyactive and game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 70e18 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1823, 59, 802)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 1e18 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1810, 58, 756)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 150e15 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1805, 45, 653)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 10e15 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-245, 33, -404)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 1e15 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-78, 33, -412)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 50e12 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82, 37, -370)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 500e09 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80, 37, -325)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 50e09 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-248, 38, -350)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 500e06 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-242, 38, -320)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 50e06 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2440.62, 535, -2338.16)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 500e03 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502, 262, -1255)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 50e03 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1479, 30, 1108)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false 
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.BT.Value)) >= 5e02 then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225, 35, -288)
				wait(1)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmpsychicactive = false
				farmfistactive = false  
			end
		end
		wait(1)
	end
end)

spawn(function()
	while true do
		if farmpsychicactive and game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
			EquipPP()
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 1e21 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(462, 1010, -844)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 50e18 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-496, 1234, -209)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 3e18 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-425, 1144, -200)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 350e15 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429, 1120, -140)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 1e15 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-423, 1120, -267)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 1e12 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-323, 1067, -196)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 1e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-352, 1055, -133)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 1e06 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-340, 1055, -263)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.PlayerFolder.DataFolder.PP.Value)) >= 10e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 774, -86)
				wait(0.5)
				workspace[plr.Name].HumanoidRootPart.Anchored = true
				farmfistactive = false
				farmbodyactive = false
			end
			wait(0.1)
		end
		wait(0.5)
	end
end)

spawn(function()
	while true do
		wait(0.25)
		while farmspeedactive do
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			VirtualUser:CaptureController()
			wait(0.25)
			VirtualUser:SetKeyDown(119)
			wait(0.5)
			VirtualUser:SetKeyUp(119)
		end
	end
end)

spawn(function()
	while true do
		wait(0.25)
		while farmjumpactive do
			workspace[plr.Name].HumanoidRootPart.Anchored = true
			wait(0.5)
			for i = 1, 20 do
			   game.workspace[tostring(MyPlr)].Humanoid.Jump = true
			   wait(0.25)
			end
		end
	end
end)
-- Return On Death
local player = game:GetService("Players").LocalPlayer

spawn(function()
	while true do
		while deathreturnactive do
			if playgui.Enabled == true then
				repeat playgui.Enabled = false until playgui.Enabled == false
	    	end
			wait(0.5)
			player.Character.Humanoid.Died:connect(function()
				playerdied = true
			end)
			if not playerdied then
				wait(1)
				lastlocationx = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x
				lastlocationy = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y
				lastlocationz = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z
				wait(0.5)
			end
			if playerdied then
				workspace[plr.Name].HumanoidRootPart.Anchored = false
				--print("Player " ..tostring(game.Players.LocalPlayer.Name).. " Died")
				--print(tostring(SavePosition.Text))
				wait(0.25)
				game:GetService("ReplicatedStorage").RespawnEvent:FireServer()
				wait(0.5)
	    	    game.Players.LocalPlayer.PlayerGui.plrstats.Enabled = true
	    	    wait(0.5)
	    	    camera.CameraType = Enum.CameraType.Track
	    	    wait(0.25)
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/Trash"))()
				wait(0.5)
				--print("screengui disabled")
				repeat wait(0.5) until game.Players.LocalPlayer.Character.Humanoid
				--print("Teleporting back to " ..tostring(SavePosition.Text))
				wait(1)
				local FindHum = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastlocationx, lastlocationy, lastlocationz)
				playerdied = false
			end
		end
		wait(1)
	end		
end)
-- ServerHop
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
