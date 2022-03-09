local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Lunar Hub")
local serv = win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
local lbls = serv:Channel("Auto")
lbls:Label("AutoFarm Function")

local tgls = serv:Channel("Auto")
tgls:Toggle("AutoFarm",false, function(bool)
print(bool)
end)
local tgls = serv:Channel("Auto")

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
