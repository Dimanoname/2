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
local wc = workspace.Characters[plr.Name] 
-- Anti Idle --
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
-- Properties
wc.HumanoidRootPart.Anchored = false

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
-- Main info
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dimanoname/2/main/KavoUI.lua"))()
local Window = Library.CreateLib("Useless GUI | Blox Fruits", "Useless") -- Themes: Useless ; DarkTheme ; LightTheme ; BloodTheme ; GrapeTheme ; Ocean ; Midnight ; Sentinel ; Synapse ; Serpent . 
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
	if wc.HumanoidRootPart.Anchored ~= true then
		wc.HumanoidRootPart.Anchored = true
	end
end)
Funcs:NewButton("Disable anchor", "Makes ur player able to move", function()
	if wc.HumanoidRootPart.Anchored ~= false then
		wc.HumanoidRootPart.Anchored = false
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
local ME = StatCheck:NewLabel("Melee: ")
local DF = StatCheck:NewLabel("Defence: ")
local SW = StatCheck:NewLabel("Sword: ")
local GN = StatCheck:NewLabel("Gun: ")
local BF = StatCheck:NewLabel("Blox Fruit: ")
local Beli = StatCheck:NewLabel("Money: ")

spawn(function()
	while true do
		while player ~= "" do
			wait(0.5)
			PN:UpdateLabel("Player Name: " .. player .. " | " .. tostring(game.Players[player].Data.Level.Value) .. "lvl")
			HP:UpdateLabel("Player Health: " .. converttoletter(tostring(game.workspace.Characters[player].Humanoid.Health)) .. "/" .. converttoletter(tostring(game.workspace.Characters[player].Humanoid.MaxHealth)))
			ME:UpdateLabel("Melee: " .. tostring(game.Players[player].Data.Stats.Melee.Level.Value))
			DF:UpdateLabel("Defence: " .. tostring(game.Players[player].Data.Stats.Defense.Level.Value))
			SW:UpdateLabel("Sword: " .. tostring(game.Players[player].Data.Stats.Sword.Level.Value))
			GN:UpdateLabel("Gun: " .. tostring(game.Players[player].Data.Stats.Gun.Level.Value))
			BF:UpdateLabel("Blox Fruit: " .. tostring(game.Players[player].Data.Stats["Demon Fruit"].Level.Value) .. " | " .. tostring(game.Players[player].Data.DevilFruit.Value))
			Beli:UpdateLabel("Money: " .. converttoletter(tostring(game.Players[player].Data.Beli.Value)) .. " | " .. tostring(game.Players[player].Data.Fragments.Value))
			TpPlayer:UpdateButton("Player coords: " ..tostring(LocationX) .. ", " .. tostring(LocationY) .. ", " .. tostring(LocationY))
		end
	end
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
					Find.Frame.Fist.Text = "Fruit: " ..string.format("%.0f", game.Players[plr.Name].Data.Stats["Devil Fruit"].Level.Value)
					Find.Frame.BT.Text = "Defense: " ..string.format("%.0f", game.Players[plr.Name].Data.Stats.Defense.Level.Value)
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
