while not game:IsLoaded() do
	wait(0.25)
    game.Loaded:Wait()
end

local bc = BrickColor.new("Gold") -- Change white to the colour you want.
local bc2 = BrickColor.new("Grey") -- Change white to the colour you want.
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[Useless Gui]"; -- Change "MuppetIsEpic!" to the alert you want.
    Font = Enum.Font.Cartoon;
    Color = bc2.Color;
    FontSize = Enum.FontSize.Size96
})
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Thanks for using!"; -- Change "MuppetIsEpic!" to the alert you want.
    Font = Enum.Font.Cartoon;
    Color = bc.Color;
    FontSize = Enum.FontSize.Size96
})
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[Useless Gui]"; -- Change "MuppetIsEpic!" to the alert you want.
    Font = Enum.Font.Cartoon;
    Color = bc2.Color;
    FontSize = Enum.FontSize.Size96
})

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
local playgui = game.Players.LocalPlayer.PlayerGui.MainMenu
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
local Window = Library.CreateLib("Useless GUI | SHTS", "Useless") -- Themes: Useless ; DarkTheme ; LightTheme ; BloodTheme ; GrapeTheme ; Ocean ; Midnight ; Sentinel ; Synapse ; Serpent . 
-- Info Tab
local Info = Window:NewTab("Info")
local InfoSec = Info:NewSection("Info:")
InfoSec:NewLabel("Creator's Discord: Useless#3770")
InfoSec:NewLabel("This gui was created with KavoUI")
InfoSec:NewLabel("If you want to create the same - learn it")
InfoSec:NewLabel("If you found some bugs, send them to my discrod")
local KeyBinds = Info:NewSection("Keybinds")
KeyBinds:NewKeybind("Toggle UI", "Toggle UI", Enum.KeyCode.RightControl, function()
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
local ST = StatCheck:NewLabel("Strength: ")
local DR = StatCheck:NewLabel("Durability: ")
local PS = StatCheck:NewLabel("Phychic: ")
local AG = StatCheck:NewLabel("Agility: ")
local Tokens = StatCheck:NewLabel("Tokens: ")
local Status = StatCheck:NewLabel("Kill Streak: ")

spawn(function()
	while true do
		while player ~= "" do
			wait(0.5)
			PN:UpdateLabel("Player Name: " .. player)
			HP:UpdateLabel("Reputation: " .. tostring(game.Players[player].leaderstats.Reputation.Value) .. " (" .. tostring(game.Players[player].data.RepAmount.Value) .. ")")
			ST:UpdateLabel("Strength: " .. converttoletter(tostring(game.Players[player].data.Strength.Value)) .. " | x" .. converttoletter(tostring(game.Players[player].data["Strength Multi"].Value)))
			DR:UpdateLabel("Durability: " .. converttoletter(tostring(game.Players[player].data.Endurance.Value)) .. " | x" .. converttoletter(tostring(game.Players[player].data["Endurance Multi"].Value)))
			PS:UpdateLabel("Psychic: " .. converttoletter(tostring(game.Players[player].data.Psychic.Value)) .. " | x" .. converttoletter(tostring(game.Players[player].data["Psychic Multi"].Value)))
			AG:UpdateLabel("Agility: " .. converttoletter(tostring(game.Players[player].data.Agility.Value)) .. " | x" .. converttoletter(tostring(game.Players[player].data["Agility Multi"].Value)))
			Tokens:UpdateLabel("Tokens: " .. converttoletter(tostring(game.Players[player].data.Tokens.Value)) .. " | " .. converttoletter(tostring(game.Players[player].data.Snokens.Value)))
			Status:UpdateLabel("Kill Streak: " ..tostring(game.Players[player].leaderstats["Kill Streak"].Value) .. " | " .. "Rank: " .. tostring(game.Players[player].leaderstats.Rank.Value) .. " | " .. "Fuse: " .. tostring(game.Players[player].leaderstats.Fusion.Value))
			TpPlayer:UpdateButton("Player coords: " ..tostring(LocationX) .. ", " .. tostring(LocationY) .. ", " .. tostring(LocationY))
		end
	end
end)
-- Farm Tab
local Farm = Window:NewTab("Auto Farm")

local Power = Farm:NewSection("Power Farm")
Power:NewToggle("Strength", "Toggling Strength Farm", function(farmfist)
	if farmfist then
		farmfistactive = true
		deathreturnactive = true
		farmfiststate = true
	else
		farmfiststate = false
		farmfistactive = false
		deathreturnactive = false
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
	end
end)

Power:NewToggle("Endurance", "Toggling Endurance Farm", function(farmbody)
	if farmbody then
		farmbodyactive = true
		farmbodystate = true
		deathreturnactive = true
	else
		farmbodyactive = false
		farmbodystate = false
		deathreturnactive = false
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
	end
end)

Power:NewToggle("Psychic", "Toggling Psychic Farm", function(farmpsyc)
	if farmpsyc then
		farmpsychicactive = true
		farmpsychicstate = true
		deathreturnactive = true
	else
		farmpsychicactive = false
		farmpsychicstate = false
		deathreturnactive = false
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
	end
end)

local Other = Farm:NewSection("Other Farm")
Other:NewToggle("Agility", "Toggling Agility Farm", function(farmagil)
	if farmagil then
		farmagilityactive = true
		deathreturnactive = true
	else
		farmagilityactive = false
		deathreturnactive = false
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
	end
end)

Other:NewToggle("Presents", "Toggling Presents Farm", function(farmpres)
	if farmpres then
		farmpresentactive = true
		deathreturnactive = true
	else
		farmpresentactive = false
		deathreturnactive = false
		wait(1)
		workspace[plr.Name].HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
	end
end)

-- Teleport Tab
local Teleports = Window:NewTab("Teleports")

local Other = Teleports:NewSection("Others:")
local FSTP = Teleports:NewSection("Strength: ")
local BTTP = Teleports:NewSection("Endurance: ")
local PPTP = Teleports:NewSection("Psychic: ")

local SafeZone = Other:NewButton("Safe Zone", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
end)

-- FS

FSTP:NewButton("Strength 100 (x5)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 298)
end)

FSTP:NewButton("Strength 5k (x20)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(296, -1, 314)
end)

FSTP:NewButton("Strength 100k (x100)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 306)
end)

FSTP:NewButton("Strength 5M (x1k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 363)
end)

FSTP:NewButton("Strength 1B (x25k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239, -1, 816)
end)

FSTP:NewButton("Strength 100B (x125k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(468, -1, 75)
end)

FSTP:NewButton("Strength 5T (x1M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 5, -200)
end)

FSTP:NewButton("Strength 5Qa (x15M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2086, 30, -388)
end)

FSTP:NewButton("Strength 1Qi (x100M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033, 25, 2036)
end)

FSTP:NewButton("Strength 1Sx (x2.5B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2418, 62, 1723)
end)

FSTP:NewButton("Strength 7Sp (x75B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1283, -143, 653)
	wait(0.25)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end)

FSTP:NewButton("Strength 3Oc (x1T)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486, 5, 2034)
end)

FSTP:NewButton("Strength 5N (x1Qa)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580, 26, 1806)
end)

FSTP:NewButton("Strength 3Dc (x250Qa)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400, 22, -514)
end)

FSTP:NewButton("Strength 1Dd (x50Qi)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-679, 113, -740)
end)

-- BT

BTTP:NewButton("Endurance 100 (x5)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346, -1, 334)
end)

BTTP:NewButton("Endurance 5k (x20)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(317, 0, 363)
end)

BTTP:NewButton("Endurance 100k (x100)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146, -7, 291)
end)

BTTP:NewButton("Endurance 5M (x1k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(249, 8, 860)
end)

BTTP:NewButton("Endurance 1B (x25k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(807, -19, 1109)
end)

BTTP:NewButton("Endurance 100B (x125k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(412, -1, 105)
end)

BTTP:NewButton("Endurance 5T (x1M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906, 5, -523)
end)

BTTP:NewButton("Endurance 5Qa (x15M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1962, 5, -318)
end)

BTTP:NewButton("Endurance 1Qi (x100M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2022, -13, 1214)
end)

BTTP:NewButton("Endurance 1Sx (x2.5B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2402, 58, 1316)
end)

BTTP:NewButton("Endurance 7Sp (x75B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1214, -162, 557)
	wait(0.25)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end)

BTTP:NewButton("Endurance 3Oc (x1T)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-484, -10, 2064)
end)

BTTP:NewButton("Endurance 5N (x1Qa)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-399, 91, 1939)
end)

BTTP:NewButton("Endurance 3Dc (x250Qa)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-546, 10, -316)
end)

BTTP:NewButton("Endurance 1Dd (x50Qi)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-587, 20, -591)
end)

-- PP

PPTP:NewButton("Psychic 100 (x5)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(319, -1, 319)
end)

PPTP:NewButton("Psychic 5k (x20)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(459, 16, 337)
end)

PPTP:NewButton("Psychic 100k (x100)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265, 116, 530)
end)

PPTP:NewButton("Psychic 5M (x1k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924, -2, 680)
end)

PPTP:NewButton("Psychic 1B (x25k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(701, 24, 487)
end)

PPTP:NewButton("Psychic 100B (x125k)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 92)
end)

PPTP:NewButton("Psychic 5T (x1M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2003, -13, -638)
end)

PPTP:NewButton("Psychic 5Qa (x15M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2073, 49, -411)
end)

PPTP:NewButton("Psychic 1Qi (x100M)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2029, -10, 1600)
end)

PPTP:NewButton("Psychic 1Sx (x2.5B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2295, 192, 1514)
end)

PPTP:NewButton("Psychic 7Sp (x75B)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1140, -139, 486)
	wait(0.25)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end)

PPTP:NewButton("Psychic 3Oc (x1T)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-409, 5, 1627)
end)

PPTP:NewButton("Psychic 5N (x1Qa)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206, 10, 1823)
end)

PPTP:NewButton("Psychic 3Dc (x250Qa)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-510, 22, -500)
end)

PPTP:NewButton("Psychic 1Dd (x50Qi)", "Teleport", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578, 105, -529)
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
		local plrStatus = game.Players[plr.Name].leaderstats.Reputation
		if plrStatus.Value == "Villain" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(255, 113, 106)
		elseif plrStatus.Value == "Evil" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(255, 142, 100)
		elseif plrStatus.Value == "Guardian" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(3, 12, 255)
		elseif plrStatus.Value == "Hero" then
			Find.Frame.Names.TextColor3 = Color3.fromRGB(0, 144, 211)
		elseif plrStatus.Value == "Supervillain" then
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
					Find.Frame.Fist.Text = "Str: " ..converttoletter(string.format("%.0f", game.Players[plr.Name].data.Strength.Value))
					Find.Frame.BT.Text = "End: " ..converttoletter(string.format("%.0f", game.Players[plr.Name].data.Endurance.Value))
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

spawn(function()
	while true do
		while farmfistactive and not playerdied do
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e39 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-679, 113, -740)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 3e33 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400, 22, -514)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e30 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580, 26, 1806)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 3e27 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486, 5, 2034)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 7e24 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1283, -143, 653)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e21 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2418, 62, 1723)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e18 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033, 25, 2036)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e15 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2086, 30, -388)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e12 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 5, -200)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 100e09 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(468, -1, 75)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e09 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239, -1, 816)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e06 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 363)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 100e03 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 306)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e03 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(296, -1, 314)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e02 then
				farmpsychicactive = false
				farmbodyactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 298)
			end
			game:GetService("ReplicatedStorage").remotes.train:FireServer("strength")
			wait(0.1)
		end
		wait(0.5)
	end
end)

spawn(function()
	while true do
		while farmbodyactive and not playerdied do
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e39 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-587, 20, -591)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 3e33 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-546, 10, -316)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e30 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-399, 91, 1939)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 3e27 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-484, -10, 2064)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 7e24 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1214, -162, 557)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e21 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2402, 58, 1316)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e18 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2022, -13, 1214)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e15 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1962, 5, -318)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e12 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906, 5, -523)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 100e09 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(412, -1, 105)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e09 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(807, -19, 1109)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e06 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(249, 8, 860)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 100e03 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146, -7, 291)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e03 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(317, 0, 363)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e02 then
				farmpsychicactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346, -1, 334)
			end
			game:GetService("ReplicatedStorage").remotes.train:FireServer("endurance")
			wait(0.1)
		end
		wait(0.5)
	end
end)

spawn(function()
	while true do
		while farmpsychicactive and not playerdied do
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e39 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578, 105, -529)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 3e33 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-510, 22, -500)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e30 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206, 10, 1823)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 3e27 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-409, 5, 1627)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 7e24 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1140, -139, 486)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e21 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2295, 192, 1514)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e18 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2029, -10, 1600)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e15 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2073, 49, -411)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e12 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2003, -13, -638)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 100e09 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 92)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e09 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(701, 24, 487)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e06 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924, -2, 680)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 100e03 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265, 116, 530)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e03 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(459, 16, 337)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e02 then
				farmbodyactive = false
				farmfistactive = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(319, -1, 319)
			end
			game:GetService("ReplicatedStorage").remotes.train:FireServer("psychic")
			wait(0.1)
		end
		wait(0.5)
	end
end)

spawn(function()
	while true do
		wait(0.25)
		while farmagilityactive do
			wait(0.1)
			game:GetService("ReplicatedStorage").remotes.train:FireServer("agility")
		end
	end
end)

spawn(function()
	while true do
		wait(0.25)
		while farmpresentactive do
			present = workspace.map.Presents:FindFirstChild("Present")
			farmfiststate = farmfistactive
			farmbodystate = farmbodyactive
			farmpsychicstate = farmpsychicactive
			if present then
				presPos1 = round(present.Position.x)
				presPos2 = round(present.Position.y)
				presPos3 = round(present.Position.z)
				farmfistactive = false
				farmbodyactive = false
				farmpsychicactive = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(presPos1, presPos2+3, presPos3)
				VirtualUser:CaptureController()
				VirtualUser:SetKeyDown(101)
				wait(2)
				VirtualUser:SetKeyUp(101)
			end
			wait(0.5)
			farmfistactive = farmfiststate
			farmbodyactive = farmbodystate
			farmpsychicactive = farmpsychicstate
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
				--print("Player " ..tostring(game.Players.LocalPlayer.Name).. " Died")
				--print(tostring(SavePosition.Text))
				wait(0.25)
				game:GetService("ReplicatedStorage").RespawnEvent:FireServer()
				wait(0.5)
	    	    game.Players.LocalPlayer.PlayerGui.plrstats.Enabled = true
	    	    wait(0.5)
	    	    camera.CameraType = Enum.CameraType.Track
	    	    wait(0.25)
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
