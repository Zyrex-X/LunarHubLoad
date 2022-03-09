local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Lunar Hub")
local serv = win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
local lbls = serv:Channel("Auto")
lbls:Label("AutoFarm Function")

local tgls = serv:Channel("Auto")
tgls:Toggle("AutoFarm",false, function(bool)
print(bool)
end)
local tgls = serv:Channel("Auto HakiPad")

btns:Button("Auto Hakipad + summon Rip Indra", function()
local CFrameEnd = CFrame.new(-5494.25586, 314.112183, 2829.02612, -0.530700755e-08, -0.863424182, 1.88888105e-08, 0.863424182, 2.8003118e-08, -0.504478633) --ใส่พิกัดวาร์ปใน()
local Time = 40 --แนะนำ28
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()
    local args = {
        [1] = "activateColor",
        [2] = "Winter Sky"
    }
    game:GetService("RepilcatedStorage").Remotes.CommF:_InvokeServer(unpack(args))
    local CFrameEnd = CFrame.new(-5419.56641, 1089.33752, -2665.78589, 0.971406102, 1.70427565e-08, 0.237423971, -2.01854462e-08, 1, 1.08056044e-08, -0.237423971, -1.52891388e-08, 0.971406102) --ใส่พิกัดวาร์ปใน()
local Time = 4 --แนะนำ28
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()

    local args = {
        [1] = "activateColor",
        [2] = ""
    }
    game:GetService("RepilcatedStorage").Remotes.CommF:_InvokeServer(unpack(args))
    local CFrameEnd = CFrame.new(-5414.27979, 314.237671, -2212.57007, -0.984678745, -4.57075764e-08, 0.174378246, -4.24506084e-08, 1, 2.24074217e-08, -0.174378246, 1.46616497e-08, -0.984678745) --ใส่พิกัดวาร์ปใน()
local Time = 4 --แนะนำ28
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()

    local args = {
        [1] = "activateColor",
        [2] = "Snow White"
    }
    game:GetService("RepilcatedStorage").Remotes.CommF:_InvokeServer(unpack(args))
    local CFrameEnd = CFrame.new(-4972.89502, 335.937714, -3720.4707, -0.738323092, -2.82306036e-08, 0.674447179, 5.20171852e-08, 1, 9.88010598e-08, -0.674447179, 1.08029944e-07, -0.738323092) --ใส่พิกัดวาร์ปใน()
local Time = 4 --แนะนำ28
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()

end)


tgls:Toggle("Auto SetspawnPoint",false, function(bool)
print(bool)
end)
local tgls = serv:Channel("Auto")

tgls:Toggle("Bring/Magnet Mob",false, function(bool)
print(bool)
end)

local win = SomeLib:Window("", _G.Color, _G.Toggle)

local serv = win:Server("Stats","")

local AutoFarm = serv:Channel("Stats", "http://www.roblox.com/asset/?id=7040391851")


Time = AutoFarm Function:Label("Server Time")

function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Time:Refresh("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
end

spawn(function()
    while true do
        UpdateTime()
        wait()
    end
end)

Client = AutoFarm Function:Label("FPS Server")

function UpdateClient()
    local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Fps = workspace:GetRealPhysicsFPS()
    Client:Refresh("Fps : "..Fps.." Ping : "..Ping)
end

spawn(function()
    while true do wait(.1)
        UpdateClient()
    end
end)




local btns = serv:Channel("Buttons","")



btns:Button("Button", function()
DiscordLib:Notification("Notification", "Button", "Okay!")
end)


btns:Button("Button", function()
SomeLib:Notification("Notification", "Button", "Okay!")
end)

local tgls = serv:Channel("Toggles","")

tgls:Toggle("Toggles",false, function(bool)
print(bool)
end)

local sldrs = serv:Channel("Sliders","")

local sldr = sldrs:Slider("sldrs", 0, 1000, 400, function(t)
print(t)
end)

sldrs:Button("Button", function()
sldr:Change(50)
end)

local drops = serv:Channel("Dropdowns","")


local drop = drops:Dropdown("drops",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
print(bool)
end)

drops:Button("Button", function()
drop:Clear()
end)

drops:Button("Add Button", function()
drop:Add("Option")
end)

local clrs = serv:Channel("Colorpickers","")

clrs:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)

local textbs = serv:Channel("Textboxes","")

textbs:Textbox("Gun power", "Type here!", true, function(t)
print(t)
end)

local lbls = serv:Channel("Labels","")

lbls:Label("This is just a label.")

local bnds = serv:Channel("Binds","")

bnds:Bind("Kill bind", Enum.KeyCode.RightShift, function()
print("Killed everyone!")
end)
