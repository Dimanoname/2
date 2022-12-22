while not game:IsLoaded() do
    game.Loaded:Wait()
	wait(1)
end
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
playerdied = false
-- Main info
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/2/main/KavoUI.lua"))()
local Window = Library.CreateLib("Useless GUI | HES", "Useless") -- Themes: Useless ; DarkTheme ; LightTheme ; BloodTheme ; GrapeTheme ; Ocean ; Midnight ; Sentinel ; Synapse ; Serpent . 
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
Funcs:NewButton("Rejoin", "Rejoining to same server", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/rejoin"))()
end)
Funcs:NewButton("Serverhop", "Hoping to another server", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/1/main/serverhop"))()
end)
Funcs:NewSlider("Speed", "changes ur speed", 5000000, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        speed = s
end)
-- Farming
spawn(function()
    while true do
        wait()
        plrchar = workspace:WaitForChild(tostring(MyPlr))
        print(tostring(plrchar) ..  " was found")
        plrhuman = plrchar:WaitForChild("Humanoid")
        print(tostring(plrhuman) ..  " was found")
        if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed < 16 then
            plrhuman.WalkSpeed = 16
        else
            plrhuman.WalkSpeed = speed
        end
    end
end)