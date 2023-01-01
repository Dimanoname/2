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
-- Anti Idle --
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
-- Properties
workspace[plr.Name].HumanoidRootPart.Anchored = false
getgenv().Farm = false
getgenv().AutoCapt = false
playerdied = false
ESPEnabled = false
ESPLength = 5000
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
		return round(newnum, 3).. "Dc"
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
--collect checkpoints
while true do
    local area = "Lava Zone"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    local area = "Main Island"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    local area = "Nature World"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    local area = "Cyber World"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    local area = "Haunted World"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    local area = "Water World"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    local area = "Void World"
    if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
    else
        local AreaX = Workspace.Checkpoints[area].Area.Position.x
        local AreaY = Workspace.Checkpoints[area].Area.Position.y
        local AreaZ = Workspace.Checkpoints[area].Area.Position.z
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
        wait(10)
        if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
        else
            wait(10)
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140, 312, 42)
    break
end
getgenv().AutoCapt = true
game:GetService("ReplicatedStorage").Remotes.Sheathe:FireServer("Scythe", true)
-- Main info
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/2/main/KavoUI.lua"))()
local Window = Library.CreateLib("Useless GUI | RS 2", "Useless") -- Themes: Useless ; DarkTheme ; LightTheme ; BloodTheme ; GrapeTheme ; Ocean ; Midnight ; Sentinel ; Synapse ; Serpent . 
-- Info Tab
local Info = Window:NewTab("Info")
local InfoSec = Info:NewSection("Info:")
InfoSec:NewLabel("Creator's Discord: Useless#3770")
InfoSec:NewLabel("This gui was created with KavoUI")
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
Funcs:NewButton("Discord server", "Copy discord server link", function()
	setclipboard("https://discord.gg/FpU33ABjsJ")
end)
Funcs:NewKeybind("Auto-Farm", "Toggle Auto-Farm",  Enum.KeyCode.KeypadOne, function()
    if getgenv().Farm then
        getgenv().Farm = false
    else
        getgenv().Farm = true
    end
end)
-- Stat Viewer
local Pls = Window:NewTab("Players")
local Plas = Pls:NewSection("Player list:")
local StatChecker = Window:NewTab("Stats")
local StatCheck = StatChecker:NewSection("Viewer:")
local PN = StatCheck:NewLabel("Player: ")
local Rank = StatCheck:NewLabel("Rank: ")
local Skulls = StatCheck:NewLabel("Skulls: ")
local Crowns = StatCheck:NewLabel("Coins: ")
local Souls = StatCheck:NewLabel("Souls: ")
local BS = StatCheck:NewLabel("Blue Essence: ")
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
----------------------------------------------------------------------------------------------------------------------------------------------------------
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
	end
end
function UpdateESP(plr)
	local Find = CoreGui:FindFirstChild("ESP_" .. plr.Name)
	if Find then
		Find.Frame.Names.TextColor3 = Color3.new(1, 1, 1)
		Find.Frame.Dist.TextColor3 = Color3.new(1, 1, 1)
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
					return
				else
					Find.Frame.Names.Visible = true
					Find.Frame.Dist.Visible = true
				end
				Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
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
-- Updating players
UpdatePlayerList()
-- Some trash
function BuyRank()
    local args = {
        [1] = "Rank"
    }
    game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer(unpack(args))
end
function BuyScythe()
    local args = {
        [1] = "Scythe",
        [2] = "Buy All"
    }
    game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer(unpack(args))
end
function BuySatchel()
    local args = {
        [1] = "Satchel",
        [2] = "Buy All"
    }
    game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer(unpack(args))
end
-- Auto Farm
spawn(function()
    while true do
        if getgenv().Farm then
            game:GetService("ReplicatedStorage").Remotes.ItemUsed:FireServer("Attack")
            wait()
        end
        wait()
    end
end)
spawn(function()
    while true do
        if getgenv().Farm then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160, 315, 42)
            wait()
            BuyRank()
            BuyScythe()
            BuySatchel()
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140, 312, 42)
            wait(25)
        end
        wait()
    end
end)
-- Auto-Capture checkpoints
spawn(function()
    while true do
        if getgenv().AutoCapt then
            local area = "Lava Zone"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            local area = "Main Island"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            local area = "Nature World"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            local area = "Cyber World"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            local area = "Haunted World"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            local area = "Water World"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            local area = "Void World"
            if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
            else
                local AreaX = Workspace.Checkpoints[area].Area.Position.x
                local AreaY = Workspace.Checkpoints[area].Area.Position.y
                local AreaZ = Workspace.Checkpoints[area].Area.Position.z
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AreaX+5, AreaY, AreaZ)
                wait(10)
                if Workspace.Checkpoints[area].Owner.Value == tostring(MyPlr) then
                else
                    wait(10)
                end
            end
            wait()
        end
        wait()
    end
end)
--StatChecker
function UpdateLabels()
	PN:UpdateLabel("Player: " .. player)
	Rank:UpdateLabel("Rank: " .. tostring(game.Players[player].Stats.Rank.Value))
	Skulls:UpdateLabel("Skulls: " .. tostring(game.Players[player].Stats.Skulls.Value))
	Crowns:UpdateLabel("Coins: " .. tostring(game.Players[player].Stats.Crowns.Value))
	Souls:UpdateLabel("Souls: " .. converttoletter(tostring(game.Players[player].Stats.Souls.Value)))
	BS:UpdateLabel("Blue Essence: " .. converttoletter(tostring(game.Players[player].Stats.BlueEssence.Value)))
end
function EmplyLabels()
	PN:UpdateLabel("Player: ")
	Rank:UpdateLabel("Rank: ")
	Skulls:UpdateLabel("Skulls: ")
	Crowns:UpdateLabel("Coins: ")
	Souls:UpdateLabel("Souls: ")
	BS:UpdateLabel("Blue Essence: ")
end
player = tostring(MyPlr)
spawn(function()
	while true do
		if player ~= nil then
			UpdateLabels()
		else
			EmplyLabels()
		end
		wait()
	end
end)