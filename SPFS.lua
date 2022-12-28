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
local wc = workspace[plr.Name] 
-- Anti Idle --
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/2/main/KavoUI.lua"))()
local Window = Library.CreateLib("Useless GUI | SHTS", "Useless") -- Themes: Useless ; DarkTheme ; LightTheme ; BloodTheme ; GrapeTheme ; Ocean ; Midnight ; Sentinel ; Synapse ; Serpent . 

getgenv().FarmAll = false
getgenv().AutoKill = false

local Misc = Window:NewTab("Misc")
local Funcs = Misc:NewSection("Misc:")
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
Funcs:NewKeybind("Toggle Farm", "Auto Farm All", Enum.KeyCode.KeypadOne, function()
	if getgenv().FarmAll then
        getgenv().FarmAll = false
    else
        getgenv().FarmAll = true
        local isalive = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        lastlocationx = isalive.Position.x
		lastlocationy = isalive.Position.y
		lastlocationz = isalive.Position.z
    end
end)
Funcs:NewKeybind("Toggle AutoKill", "Auto Kill Target", Enum.KeyCode.KeypadTwo, function()
	if getgenv().AutoKill then
        getgenv().AutoKill = false
    else
        getgenv().AutoKill = true
    end
end)
Funcs:NewKeybind("Toggle UI", "Toggle UI", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
local Pls = Window:NewTab("Players")
local Plas = Pls:NewSection("Player list:")
PlayerNames = {}
local PL = Plas:NewDropdown("Player list","List of players", PlayerNames, function(nick)
	local check = game.Players:WaitForChild(nick)
	print(tostring(check) .. " was found.")
	player = nick
end)
function UpdatePlayerList()
	local children = game.Players:GetChildren()
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

spawn(function()
    while true do
        while getgenv().FarmAll do
            local isplayer = game.Players:WaitForChild(tostring(plr))
            local alive = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            alive.Anchored = false
            wait()
            alive.CFrame = CFrame.new(lastlocationx, lastlocationy, lastlocationz)
            game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
            game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
            game:GetService("ReplicatedStorage").Events.Train:FireServer("Endurance")
            wait()
        end
        wait()
    end
end)
spawn(function()
    while true do
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalEndurance")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalPsychic")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalStrength")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalSpeed")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalTokens")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TotalGems")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("QuestCompleted")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("TimePlayed")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("ChestsOpened")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("EnemyKills")
        game:GetService("ReplicatedStorage").Functions.GetBadge:InvokeServer("BossKills")
        game:GetService("ReplicatedStorage").Functions.BuyRank:InvokeServer()
        wait()
        game:GetService("ReplicatedStorage").Functions.BuyFusion:InvokeServer()
        wait(5)
    end
end)
spawn(function()
    while true do
        while getgenv().AutoKill do
            local args = {
                [1] = "SoulHarvest",
                [2] = game.Players[player].Character.Head
            }
            game:GetService("ReplicatedStorage").Functions.Skill:InvokeServer(unpack(args))
            wait()
        end
        wait()
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------
UpdatePlayerList()