local bc = BrickColor.new("Gold") -- Change white to the colour you want.
local bc2 = BrickColor.new("Grey") -- Change white to the colour you want.
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "--[Useless Gui]--"; -- Change "MuppetIsEpic!" to the alert you want.
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
    Text = "--[Useless Gui]--"; -- Change "MuppetIsEpic!" to the alert you want.
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
getgenv().farmfistactive = false
getgenv().farmbodyactive = false
getgenv().farmpsychicactive = false
getgenv().farmagilityactive = false
getgenv().farmpresentactive = false
getgenv().farmkillsactive = false
playerdied = false
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
		return round(newnum, 3).. "Ocd"
	elseif num / 1e54 >=1 then
		newnum = num / 1e54
		return round(newnum, 3).. "Spd"
	elseif num / 1e51 >=1 then
		newnum = num / 1e51
		return round(newnum, 3).. "Sxd"
	elseif num / 1e48 >=1 then
		newnum = num / 1e48
		return round(newnum, 3).. "Qid"
	elseif num / 1e45 >=1 then
		newnum = num / 1e45
		return round(newnum, 3).. "Qad"
	elseif num / 1e42 >=1 then
		newnum = num / 1e42
		return round(newnum, 3).. "Td"
	elseif num / 1e39 >=1 then
		newnum = num / 1e39
		return round(newnum, 3).. "Dd"
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
function converttotime(secs)
	if secs / 60 >= 1 then
		newsecs = secs - 60
		while newsecs >= 60 do
			newsecs = newsecs - 60
		end
		if newsecs < 10 and newsecs > -1 then
			newsecs = ("0" .. newsecs)
		end
		mins = secs / 60
		if mins + 0.5 <= round(mins, 0) then
			mins = round(mins, 0) - 1
		elseif mins + 0.5 > round(mins, 0) then
			mins = round(mins, 0)
		end
		if mins / 60 >= 1 then
			newmins = mins - 60
			while newmins >= 60 do
				newmins = newmins - 60
			end
			if newmins < 10 and newmins > -1 then
				newmins = ("0" .. newmins)
			end
			hours = mins / 60
			if hours + 0.5 <= round(hours, 0) then
				hours = round(hours, 0) - 1
			elseif hours + 0.5 > round(hours, 0) then
				hours = round(hours, 0)
			end
			if hours < 10 then
				hours = ("0" .. hours)
			end
			return hours .. ":" .. newmins .. ":" .. newsecs
		else
			hours = "00"
			newmins = "00"
			return hours .. ":" .. mins .. ":" .. newsecs
		end
	else
		hours = "00"
		newmins = "00"
		if secs < 10 then
			secs = ("0" .. secs)
		end
		return hours .. ":" .. newmins .. ":" .. secs
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
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/serverhop"))()
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
Funcs:NewButton("Use codes", "Uses all possible codes", function()
	game:GetService("ReplicatedStorage").remotes.EnterCode:FireServer("BETA")
	game:GetService("ReplicatedStorage").remotes.EnterCode:FireServer("HUNDREDLIKES")
	game:GetService("ReplicatedStorage").remotes.EnterCode:FireServer("HUNDREDFAVORITES")
	game:GetService("ReplicatedStorage").remotes.EnterCode:FireServer("TYSMFORTENKVISITS")
	game:GetService("ReplicatedStorage").remotes.EnterCode:FireServer("TWOHUNDREDGROUPMEMBERS")
end)
-- Stat Viewer
local Pls = Window:NewTab("Players")
local Plas = Pls:NewSection("Player list:")
local StatChecker = Window:NewTab("Stats")
local StatCheck = StatChecker:NewSection("Viewer:")
local PN = StatCheck:NewLabel("Player: ")
local AP = StatCheck:NewLabel("Absolute Power: ")
local ST = StatCheck:NewButton("Strength: ","Multiply", function()
	game:GetService("ReplicatedStorage").remotes.multi:InvokeServer("Strength")
end)
local DR = StatCheck:NewButton("Endurance: ","Multiply", function()
	game:GetService("ReplicatedStorage").remotes.multi:InvokeServer("Endurance")
end)
local PS = StatCheck:NewButton("Phychic: ","Multiply", function()
	game:GetService("ReplicatedStorage").remotes.multi:InvokeServer("Psychic")
end)
local AG = StatCheck:NewButton("Agility: ","Multiply", function()
	game:GetService("ReplicatedStorage").remotes.multi:InvokeServer("Agility")
end)
local Tokens = StatCheck:NewLabel("Tokens: ")
local Status = StatCheck:NewLabel("Rank: ")
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
	end
	PL:Refresh(PlayerNames)
end
Plas:NewButton("Reset Player List","Update player list", function()
	UpdatePlayerList()
end)
-- Farm Tab
local Farm = Window:NewTab("Auto Farm")
local Power = Farm:NewSection("Power")
Power:NewToggle("Strength", "Toggling Strength Farm", function(farmfist)
	if farmfist then
		getgenv().farmfistactive = true
		farmfiststate = true
	else
		farmfiststate = false
		getgenv().farmfistactive = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
end)
Power:NewToggle("Endurance", "Toggling Endurance Farm", function(farmbody)
	if farmbody then
		getgenv().farmbodyactive = true
		farmbodystate = true
	else
		getgenv().farmbodyactive = false
		farmbodystate = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
end)
Power:NewToggle("Psychic", "Toggling Psychic Farm", function(farmpsyc)
	if farmpsyc then
		getgenv().farmpsychicactive = true
		farmpsychicstate = true
	else
		getgenv().farmpsychicactive = false
		farmpsychicstate = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
end)
local Other = Farm:NewSection("Other")
Other:NewToggle("Agility", "Toggling Agility Farm", function(farmagil)
	if farmagil then
		getgenv().farmagilityactive = true
	else
		getgenv().farmagilityactive = false
	end
end)
Other:NewToggle("Presents", "Toggling Presents Farm", function(farmpres)
	if farmpres then
		getgenv().farmpresentactive = true
	else
		getgenv().farmpresentactive = false
	end
end)
-- PVP Tab
local PvP = Window:NewTab("PvP")
local Buttons = PvP:NewSection("PVP:")
Targets = {}
local TL = Buttons:NewDropdown("Targets list","List of players", Targets, function(nick)
	local check = Plrs:WaitForChild(nick)
	print(tostring(check) .. " was found.")
	target = nick
end)
function UpdateTargetsList()
	local children = Plrs:GetChildren()
	Targets = {}
	TL:Refresh(Targets)
	wait(0.5)
	for i = 1, #children do
		local child = children[i]
		local player = child.Name
		Targets[i] = player
	end
	TL:Refresh(Targets)
end
Buttons:NewButton("Reset Targets List","Update player list", function()
	UpdateTargetsList()
end)
Buttons:NewToggle("Kill all", "Toggling Killing All", function(allkill)
	if allkill then
		getgenv().killall = true
	else
		getgenv().killall = false
	end
end)
Buttons:NewToggle("Kill target", "Toggling Killing Target", function(tarkill)
	if tarkill then
		getgenv().killtar = true
	else
		getgenv().killtar = false
	end
end)
-- Teleport Tab
local Teleports = Window:NewTab("Teleports")
local Other = Teleports:NewSection("Others:")
local FSTP = Teleports:NewSection("Strength: ")
local BTTP = Teleports:NewSection("Endurance: ")
local PPTP = Teleports:NewSection("Psychic: ")
----------------------------------------------------------------------------------------------------------------------------------------------------------
-- ESP
CharAddedEvent = { }
Plrs.PlayerAdded:connect(function(plr)
	UpdatePlayerList()
	UpdateTargetsList()
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
	UpdateTargetsList()
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
		while getgenv().farmfistactive and not playerdied do
			getgenv().farmpsychicactive = false
			farmpsychicstate = false
			getgenv().farmbodyactive = false
			farmbodystate = false 
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e39 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-679, 113, -740)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 3e33 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400, 22, -514)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e30 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580, 26, 1806)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 3e27 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486, 5, 2034)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 7e24 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1283, -143, 653)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e21 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2418, 62, 1723)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e18 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033, 25, 2036)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e15 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2086, 30, -388)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e12 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 5, -200)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 100e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(468, -1, 75)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239, -1, 816)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e06 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 363)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 100e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 306)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 5e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(296, -1, 314)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Strength.Value)) >= 1e02 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 298)
			end
			game:GetService("ReplicatedStorage").remotes.train:FireServer("strength")
			wait()
		end
		wait()
	end
end)
spawn(function()
	while true do
		while farmbodyactive and not playerdied do
			getgenv().farmpsychicactive = false
			farmpsychicstate = false
			getgenv().farmfistactive = false 
			farmfiststate = false 
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e39 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-587, 20, -591)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 3e33 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-546, 10, -316)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e30 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-399, 91, 1939)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 3e27 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-484, -10, 2064)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 7e24 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1214, -162, 557)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e21 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2402, 19, 1316)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e18 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2022, -13, 1214)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e15 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1962, 5, -318)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e12 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906, 5, -523)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 100e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(412, -1, 105)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(807, -19, 1109)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e06 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(249, 8, 860)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 100e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146, -7, 291)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 5e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(317, 0, 363)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Endurance.Value)) >= 1e02 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346, -1, 334)
			end
			game:GetService("ReplicatedStorage").remotes.train:FireServer("endurance")
			wait()
		end
		wait()
	end
end)
spawn(function()
	while true do
		while farmpsychicactive and not playerdied do
			getgenv().farmbodyactive = false
			farmbodystate = false
			getgenv().farmfistactive = false
			farmfiststate = false 
			if tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e39 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578, 105, -529)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 3e33 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-510, 22, -500)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e30 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206, 10, 1823)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 3e27 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-409, 5, 1627)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 7e24 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1140, -139, 486)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e21 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2295, 192, 1514)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e18 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2029, -10, 1600)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e15 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2073, 49, -411)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e12 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2003, -13, -638)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 100e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 92)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e09 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(701, 24, 487)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e06 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924, -2, 680)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 100e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265, 116, 530)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 5e03 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(459, 16, 337)
			elseif tonumber(string.format("%.0f", game.Players.LocalPlayer.data.Psychic.Value)) >= 1e02 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(319, -1, 319)
			end
			game:GetService("ReplicatedStorage").remotes.train:FireServer("psychic")
			wait()
		end
		wait()
	end
end)
spawn(function()
	while true do
		while getgenv().farmagilityactive do
			wait(0.1)
			game:GetService("ReplicatedStorage").remotes.train:FireServer("agility")
		end
		wait()
	end
	wait()
end)
spawn(function()
	while true do
		while getgenv().farmpresentactive do
			present = workspace.map.Presents:FindFirstChild("Present")
			farmfiststate = getgenv().farmfistactive
			farmbodystate = getgenv().farmbodyactive
			farmpsychicstate = getgenv().farmpsychicactive
			if present then
				presPos1 = round(present.Position.x)
				presPos2 = round(present.Position.y)
				presPos3 = round(present.Position.z)
				getgenv().farmfistactive = false
				getgenv().farmbodyactive = false
				getgenv().farmpsychicactive = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(presPos1, presPos2+3, presPos3)
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				VirtualUser:CaptureController()
				VirtualUser:SetKeyDown(101)
				wait(2)
				VirtualUser:SetKeyUp(101)
			end
			wait(0.5)
			getgenv().farmfistactive = farmfiststate
			getgenv().farmbodyactive = farmbodystate
			getgenv().farmpsychicactive = farmpsychicstate
		end
		wait()
	end
	wait()
end)
-- PVP
function GetPlrCoords()
	PlrX = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, 0)
	PlrY = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, 0)
	PlrZ = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 0)
	wait(0.25)
end
function TpALL()
	local children = Plrs:GetChildren()
	wait(0.25)
	for i = 1, #children do
		local child = children[i]
		if child.name  == tostring(MyPlr) or game.Players[child.name].InArea.Value == "SafeZone" or game.Players[child.name].AP.Value < 1e06 then
		else
			local check = workspace:WaitForChild(child.name)
			local player = tostring(check)
			print(tostring(player) .. "was found!")
			GetPlrCoords()
			game.workspace[player].HumanoidRootPart.CFrame = CFrame.new(PlrX, PlrY, PlrZ)
			game.workspace[player].HumanoidRootPart.Anchored = true
		end
	end
end
function TpTar()
	if target  == tostring(MyPlr) or game.Players[target].InArea.Value == "SafeZone" or game.Players[target].AP.Value < 1e06  then
	else
		game.workspace[target].HumanoidRootPart.CFrame = CFrame.new(PlrX, PlrY, PlrZ)
		game.workspace[target].HumanoidRootPart.Anchored = true
	end
end
spawn(function()
	while true do 
		if getgenv().killall then
			GetPlrCoords()
			game:GetService("ReplicatedStorage").remotes.ability:InvokeServer("EnergyBlast", Vector3.new(PlrX, PlrY+5, PlrZ))
			TpALL()
			wait()
		end
		if getgenv().killtar then
			GetPlrCoords()
			game:GetService("ReplicatedStorage").remotes.ability:InvokeServer("EnergyBlast", Vector3.new(PlrX, PlrY+5, PlrZ))
			TpTar()
			wait()
		end
		wait()
	end
end)
-- Gui
function CamTarg()
	local camera = game.Workspace.CurrentCamera
	local plr = game:GetService("Players").LocalPlayer
	local wc = workspace[plr.Name]
	camera.CameraSubject = wc
	camera.CameraType = Enum.CameraType.Track
end
spawn(function()
	while true do
		if playgui.Enabled == true then
			repeat playgui.Enabled = false until playgui.Enabled == false
		end
		if game.Players.LocalPlayer.PlayerGui.Main.Enabled == false then
			repeat game.Players.LocalPlayer.PlayerGui.Main.Enabled = true until game.Players.LocalPlayer.PlayerGui.Main.Enabled == true
		end
		CamTarg()
		wait(1)
	end		
end)
-- Teleports
if not playerdied then
	Other:NewButton("Safe Zone", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-144, -1, 485)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	-- FS
	FSTP:NewButton("Strength 100 (x5)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 298)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 5k (x20)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(296, -1, 314)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 100k (x100)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 306)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 5M (x1k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276, -1, 363)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 1B (x25k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239, -1, 816)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 100B (x125k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(468, -1, 75)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 5T (x1M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 5, -200)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 5Qa (x15M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2086, 30, -388)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 1Qi (x100M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033, 25, 2036)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 1Sx (x2.5B)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2418, 62, 1723)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 7Sp (x75B)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1283, -143, 653)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		wait(0.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end)
	FSTP:NewButton("Strength 3Oc (x1T)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486, 5, 2034)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 5N (x1Qa)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580, 26, 1806)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 3Dc (x250Qa)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400, 22, -514)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	FSTP:NewButton("Strength 1Dd (x50Qi)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-679, 113, -740)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	-- BT
	BTTP:NewButton("Endurance 100 (x5)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346, -1, 334)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 5k (x20)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(317, 0, 363)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 100k (x100)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146, -7, 291)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 5M (x1k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(249, 8, 860)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 1B (x25k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(807, -19, 1109)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 100B (x125k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(412, -1, 105)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 5T (x1M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906, 5, -523)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 5Qa (x15M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1962, 5, -318)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 1Qi (x100M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2022, -13, 1214)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 1Sx (x2.5B)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2402, 58, 1316)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 7Sp (x75B)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1214, -162, 557)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		wait(0.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end)
	BTTP:NewButton("Endurance 3Oc (x1T)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-484, -10, 2064)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 5N (x1Qa)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-399, 91, 1939)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 3Dc (x250Qa)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-546, 10, -316)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	BTTP:NewButton("Endurance 1Dd (x50Qi)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-587, 20, -591)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	-- PP
	PPTP:NewButton("Psychic 100 (x5)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(319, -1, 319)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 5k (x20)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(459, 16, 337)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 100k (x100)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265, 116, 530)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 5M (x1k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924, -2, 680)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 1B (x25k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(701, 24, 487)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 100B (x125k)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306, -1, 92)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 5T (x1M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2003, -13, -638)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 5Qa (x15M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2073, 49, -411)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 1Qi (x100M)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2029, -10, 1600)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 1Sx (x2.5B)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2295, 192, 1514)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 7Sp (x75B)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1140, -139, 486)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		wait(0.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end)
	PPTP:NewButton("Psychic 3Oc (x1T)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-409, 5, 1627)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 5N (x1Qa)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206, 10, 1823)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 3Dc (x250Qa)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-510, 22, -500)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	PPTP:NewButton("Psychic 1Dd (x50Qi)", "Teleport", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578, 105, -529)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
end
-- Updating players
UpdatePlayerList()
UpdateTargetsList()
-- AutoRankUPandFuse
spawn(function()
	while true do
		game:GetService("ReplicatedStorage").remotes.Fuse:InvokeServer()
		wait()
		game:GetService("ReplicatedStorage").remotes.rankup:InvokeServer()
		wait(5)
	end
end)
--StatChecker
function Multiplies()
	PlrStrMult = tonumber(game.Players[player].data["Strength Multi"].Value)
	PlrEndMult = tonumber(game.Players[player].data["Endurance Multi"].Value)
	PlrPsyMult = tonumber(game.Players[player].data["Psychic Multi"].Value)
	PlrAgiMult = tonumber(game.Players[player].data["Agility Multi"].Value)
	PlrRankMult = tonumber(game.Players[player].data.RankMulti.Value)
	PlrFuseMult = tonumber(game.Players[player].data.FusionMulti.Value)
	if game.Players[player].Elements.EquippedElement.Value == "Fire" then
		PlrEleMult= 1.5
	elseif game.Players[player].Elements.EquippedElement.Value == "Water" then
		PlrEleMult= 2
	elseif game.Players[player].Elements.EquippedElement.Value == "Ice" then
		PlrEleMult= 3.5
	elseif game.Players[player].Elements.EquippedElement.Value == "Earth" then
		PlrEleMult= 4
	elseif game.Players[player].Elements.EquippedElement.Value == "Electricity" then
		PlrEleMult= 3
	elseif game.Players[player].Elements.EquippedElement.Value == "Gold" then
		PlrEleMult= 6
	elseif game.Players[player].Elements.EquippedElement.Value == "Wind" then
		PlrEleMult= 5
	elseif game.Players[player].Elements.EquippedElement.Value == "Time" then
		PlrEleMult= 3
	elseif game.Players[player].Elements.EquippedElement.Value == "Plasma" then
		PlrEleMult= 20
	elseif game.Players[player].Elements.EquippedElement.Value == "Darkness" then
		PlrEleMult= 1
	elseif game.Players[player].Elements.EquippedElement.Value == "Light" then
		PlrEleMult= 1
	elseif game.Players[player].Elements.EquippedElement.Value == "Snow" then
		PlrEleMult= 2.5
	elseif game.Players[player].Elements.EquippedElement.Value == "Christmas" then
		PlrEleMult= 5
	elseif game.Players[player].Elements.EquippedElement.Value == "Perma-ice" then
		PlrEleMult= 1.25
	elseif game.Players[player].Elements.EquippedElement.Value == "Snowflake" then
		PlrEleMult= 2
	elseif game.Players[player].Elements.EquippedElement.Value == "Holly" then
		PlrEleMult= 10
	else
		PlrEleMult= 1
	end
	if game.Players[player].data["x2PowerTimer"].Value >= 1 then
		PlrGPMult = 2
	else
		PlrGPMult = 1
	end
	wait(0.25)
end
function UpdateLabels()
	PN:UpdateLabel("Player: " .. player .. " | " .. tostring(game.Players[player].leaderstats.Reputation.Value) .. " (" .. tostring(game.Players[player].data.RepAmount.Value) .. ")" .. " | " .. converttotime(game.Players[player].data["x2PowerTimer"].Value))
	AP:UpdateLabel("Absolute Power: " .. converttoletter(tostring(game.Players[player].AP.Value)))
	ST:UpdateButton("Str: " .. converttoletter(tostring(game.Players[player].data.Strength.Value)) .. " | x" .. converttoletter(tostring(PlrStrMult*PlrRankMult*PlrFuseMult*PlrGPMult*PlrEleMult)) .. " | " .. "Upg: " .. converttoletter(tostring(game.Players[player].data["Strength Multi Cost"].Value)))
	DR:UpdateButton("End: " .. converttoletter(tostring(game.Players[player].data.Endurance.Value)) .. " | x" .. converttoletter(tostring(PlrEndMult*PlrRankMult*PlrFuseMult*PlrGPMult*PlrEleMult)) .. " | " .. "Upg: " .. converttoletter(tostring(game.Players[player].data["Endurance Multi Cost"].Value)))
	PS:UpdateButton("Psy: " .. converttoletter(tostring(game.Players[player].data.Psychic.Value)) .. " | x" .. converttoletter(tostring(PlrPsyMult*PlrRankMult*PlrFuseMult*PlrGPMult*PlrEleMult)) .. " | " .. "Upg: " .. converttoletter(tostring(game.Players[player].data["Psychic Multi Cost"].Value)))
	AG:UpdateButton("Agi: " .. converttoletter(tostring(game.Players[player].data.Agility.Value)) .. " | x" .. converttoletter(tostring(PlrAgiMult*PlrRankMult*PlrFuseMult*PlrGPMult*PlrEleMult)) .. " | " .. "Upg: " .. converttoletter(tostring(game.Players[player].data["Agility Multi Cost"].Value)))
	Tokens:UpdateLabel("Tokens: " .. converttoletter(tostring(game.Players[player].data.Tokens.Value)) .. " | " .. converttoletter(tostring(game.Players[player].data.Snokens.Value)))
	Status:UpdateLabel("Rank: " .. tostring(game.Players[player].leaderstats.Rank.Value) .. " | " .. "Fuse: " .. tostring(game.Players[player].leaderstats.Fusion.Value))
end
function EmplyLabels()
	PN:UpdateLabel("Player: ")
	AP:UpdateLabel("Absolute Power: ")
	ST:UpdateButton("Str: ")
	DR:UpdateButton("End: ")
	PS:UpdateButton("Psy: ")
	AG:UpdateButton("Agi: ")
	Tokens:UpdateLabel("Tokens: ")
	Status:UpdateLabel("Rank: " .. " | " .. "Fuse: ")
end
player = tostring(MyPlr)
spawn(function()
	while true do
		if player ~= nil then
			Multiplies()
			UpdateLabels()
		else
			EmplyLabels()
		end
		wait()
	end
end)