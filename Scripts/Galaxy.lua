local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

if getgenv().LukHubLoaded then
	rconsoleprint("@@RED@@")
	rconsoleprint("\nLukHub is already loaded!")
	return
end
wait(0.025)
getgenv().LukHubLoaded = true

rconsolename("LukHub Console - v1.2")
rconsoleprint("@@BLUE@@")
rconsoleprint[[
  _           _      _    _       _     
 | |         | |    | |  | |     | |    
 | |    _   _| | _  | |__| |_   _| |__  
 | |   | | | | |/ / |  __  | | | | '_ \ 
 | |___| |_| |   <  | |  | | |_| | |_) |
 |______\__,_|_|\_\ |_|  |_|\__,_|_.__/ 
]]

wait(0.7)
rconsoleprint("@@WHITE@@")
rconsoleprint("-> Searching for game")
wait(1)
rconsoleprint("\n-> Game Found: ")
rconsoleprint("@@LIGHT_BLUE@@")
rconsoleprint(""..GetName.Name)
rconsoleprint("@@WHITE@@")
wait(0.5)
rconsoleprint("\n-> Executing Hub")
wait(0.3)
rconsoleprint(".")
wait(0.3)
rconsoleprint(".")
wait(0.3)
rconsoleprint(".")
wait(0)




local OwlLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lukieiscool/OwlHub/master/UILib.lua", true))()



OwlLib:SetCategory()


local Scripts = OwlLib:new("Scripts")
local ESP = OwlLib:new("ESP")
local Music = OwlLib:new("Music")
local tptab = OwlLib:new("Teleport")
local Misc = OwlLib:new("Misc")
local var = Instance.new("Sound")


Scripts:newBtn("Infinite Yield", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end, true)

Scripts:newBtn("Dex Explorer", function()
	loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end, true)

Scripts:newBtn("Automine", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/EtG61AfE'))()
end, true)

Scripts:newBtn("Force Despawn", function() 
	loadstring(game:HttpGet('https://pastebin.com/raw/h9b3Vq4q'))()
end, true)

ESP:newBtn("ESP", function() 
    -- change active
active = not active 
if not active then
	for i,v in next, game.workspace.Ships:GetChildren() do 
		for i2,v2 in next, v:GetChildren() do 
			v2.CenterPoint.Checks:Destroy()
		end
	end
end
end)

local a = Color3.fromRGB(255,255,255)
local colors = {}

ESP:newColorPicker("ESP Color", function(b) 
for i, v in pairs(colors) do
v.TextColor3 = b
a = b
end
end)




Music:newTextbox("Music ID", function(a) 
	var.SoundId = "rbxassetid://"..(a)
	var.Parent = game.workspace
	var.TimePosition = 1
end, "Enter ID", noCallbackOnStart)


Music:newSlider("Volume", function(B)
var.Volume = (B) 
end, 0, 10, 1)

Music:newBtn("Loop", function(C) var.Looped = C end, false)
Music:newBtn("Play", function() var:Play() end, true)
Music:newBtn("Pause", function() var:Pause() end, true)
Music:newBtn("Resume", function() var:Resume() end, true)
Music:newBtn("Stop", function() var:Stop() end, true)


Misc:newBtn("Teleport to Ship", function()
local localPlayer = game.Players.LocalPlayer
local faction = localPlayer.Team.Name
local ship

for i, v in pairs(workspace.Ships[faction]:GetChildren()) do
    if tostring(v.Owner.Value) == localPlayer.Name then
        ship = v
    end
end

local shipseat = ship.PilotSeat.CFrame

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ship.PilotSeat.CFrame
end, true)

tptab:newBtn("Mega Base", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.645864487, 1430.91455, -26.7162628)
end, true)

tptab:newBtn("Main Base", function()
	local localPlayer = game.Players.LocalPlayer
	local faction = localPlayer.Team.Name
	local factiontp = game.workspace.Bases[faction]:FindFirstChild("Starbase").CenterPoint.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = factiontp
end, true)

Misc:newBtn("Teleport Ship Seat", function()
	local localPlayer = game.Players.LocalPlayer
	local faction = localPlayer.Team.Name
	local ship
	
	for i, v in pairs(workspace.Ships[faction]:GetChildren()) do
		if tostring(v.Owner.Value) == localPlayer.Name then
			ship = v
		end
	end
	
	local shipseat = ship.PilotSeat.CFrame
	
	ship.PilotSeat.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p
end, true)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.549171507, 1623.88684, -0.567706823)

rconsoleprint("\n-> Hub has been executed")
rconsoleprint("\n-> Enjoy!")



function isnil(thing)
	return (thing == nil)
end

local function round(n)
	return math.floor(tonumber(n) + 0.5)
end

function Update()
for i,v in next, game.workspace.Ships:GetChildren() do 
	for i2,v2 in next, v:GetChildren() do
		local Checks = Instance.new("Folder", v2:WaitForChild'CenterPoint') 
		Checks.Name = "Checks"
		if not isnil(v2:WaitForChild'CenterPoint') and not v2:WaitForChild'CenterPoint'.Checks:FindFirstChild("Hull") then
		local bill = Instance.new("BillboardGui", v2:WaitForChild'CenterPoint'.Checks)
		bill.Name = "Hull"
		bill.Size = UDim2.new(1,200,1,30)
		bill.Adornee = v2:WaitForChild'CenterPoint'
		bill.AlwaysOnTop=true
		local name = Instance.new('TextLabel',bill)
		name.TextWrapped = true
		name.Text = ("Hull: " ..v2:WaitForChild'Hull'.Value)
		name.Size = UDim2.new(1,0,1,0)
		name.TextYAlignment = 'Top'
		name.TextColor3 = a
		name.BackgroundTransparency = 1
		name.TextStrokeColor3 = Color3.new(0,0,0)
		name.TextStrokeTransparency = 0
		name.Position = UDim2.new(0,0,0,0)
		table.insert(colors, name)
		else
		v2:WaitForChild'CenterPoint'.Checks.Hull.TextLabel.Text = ("Hull: " ..v2.Hull.Value)
		end
		if not isnil(v2:WaitForChild'CenterPoint') and not v2:WaitForChild'CenterPoint'.Checks:FindFirstChild("Shield") then
		local bill2 = Instance.new("BillboardGui", v2:WaitForChild'CenterPoint'.Checks)
		bill2.Name = "Shield"
		bill2.Size = UDim2.new(1,200,1,30)
		bill2.Adornee = v2:WaitForChild'CenterPoint'
		bill2.AlwaysOnTop=true
		local name2 = Instance.new('TextLabel',bill2)
		name2.TextWrapped = true
		name2.Text = ("Shield: " ..v2:WaitForChild'Shield'.Value)
		name2.Size = UDim2.new(1,0,1,0)
		name2.TextYAlignment = 'Top'
		name2.TextColor3 = a
		name2.BackgroundTransparency = 1
		name2.TextStrokeColor3 = Color3.new(0,0,0)
		name2.TextStrokeTransparency = 0
		name2.Position = UDim2.new(0,0,0,-12)
		table.insert(colors, name2)
		else
		v2:WaitForChild'CenterPoint'.Checks.Shield.TextLabel.Text = ("Shield: " ..v2.Shield.Value)
		end
		if not isnil(v2:WaitForChild'CenterPoint') and not v2:WaitForChild'CenterPoint'.Checks:FindFirstChild("Distance") then
		local bill3 = Instance.new("BillboardGui", v2:WaitForChild'CenterPoint'.Checks)
		bill3.Name = "Distance"
		bill3.Size = UDim2.new(1,200,1,30)
		bill3.Adornee = v2:WaitForChild'CenterPoint'
		bill3.AlwaysOnTop=true
		local name3 = Instance.new('TextLabel',bill3)
		name3.TextWrapped = true
		name3.Text = ("Distance: " ..round((game.Players.LocalPlayer.Character.Head.Position - v2:WaitForChild'CenterPoint'.Position).Magnitude/1).."Studs")
		name3.Size = UDim2.new(1,0,1,0)
		name3.TextYAlignment = 'Top'
		name3.TextColor3 = a
		name3.BackgroundTransparency = 1
		name3.TextStrokeColor3 = Color3.new(0,0,0)
		name3.TextStrokeTransparency = 0
		name3.Position = UDim2.new(0,0,0,12)
		table.insert(colors, name3)
		else
		v2:WaitForChild'CenterPoint'.Checks.Distance.TextLabel.Text = ("Distance: " ..round((game.Players.LocalPlayer.Character.Head.Position - v2:WaitForChild'CenterPoint'.Position).Magnitude/1).." studs")
		end
		if not isnil(v2:WaitForChild'CenterPoint') and not v2:WaitForChild'CenterPoint'.Checks:FindFirstChild("Ship") then
		local bill4 = Instance.new("BillboardGui", v2:WaitForChild'CenterPoint'.Checks)
		bill4.Name = "Ship"
		bill4.Size = UDim2.new(1,200,1,30)
		bill4.Adornee = v2:WaitForChild'CenterPoint'
		bill4.AlwaysOnTop=true
		local name4 = Instance.new('TextLabel',bill4)
		name4.TextWrapped = true
		name4.Text = (v2.Name)
		name4.Size = UDim2.new(1,0,1,0)
		name4.TextYAlignment = 'Top'
		name4.TextColor3 = a
		name4.BackgroundTransparency = 1
		name4.TextStrokeColor3 = Color3.new(0,0,0)
		name4.TextStrokeTransparency = 0
		name4.Position = UDim2.new(0,0,0,-24)
		table.insert(colors, name4)
		else
		v2:WaitForChild'CenterPoint'.Checks.Ship.TextLabel.Text = (v2.Name)
		end
		if not isnil(v2:FindFirstChild'Owner') and not v2:WaitForChild'CenterPoint'.Checks:FindFirstChild("Owner") then
        local bill5 = Instance.new("BillboardGui", v2:WaitForChild'CenterPoint'.Checks)
        bill5.Name = "Owner"
        bill5.Size = UDim2.new(1,200,1,30)
        bill5.Adornee = v2:WaitForChild'CenterPoint'
        bill5.AlwaysOnTop=true
        local name5 = Instance.new('TextLabel',bill5)
        name5.TextWrapped = true
        name5.Text = tostring(v2.Owner.Value)
        name5.Size = UDim2.new(1,0,1,0)
        name5.TextYAlignment = 'Top'
        name5.TextColor3 = a
        name5.BackgroundTransparency = 1
        name5.TextStrokeColor3 = Color3.new(0,0,0)
        name5.TextStrokeTransparency = 0
        name5.Position = UDim2.new(0,0,0,24)
	table.insert(colors, name5)
        else
        v2:WaitForChild'CenterPoint'.Checks.Owner.TextLabel.Text = tostring(v2.Owner.Value)
        end
	end
end
end

while wait() do
	if active == true then
		Update()
	end
end
