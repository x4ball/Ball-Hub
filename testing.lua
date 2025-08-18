local ui = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local wnd = ui:CreateWindow({
    Title = "My Super Hub ",
    Icon = "door-open",
    Author = "by .ftgs and .ftgs",
    Folder = "MySuperHub",

    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
     
     User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            print("clicked")
        end,
})
wnd:Tag({
    Title = "Working",
    Color = Color3.fromHex("#05f545")
})
wnd:Tag({
    Title = "Beta Version",
    Color = Color3.fromHex("#edea34")
})
-- home tab
local Hometab = wnd:Tab({
    Title = "Home",
    Icon = "house",
})

-- ambil service
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ambil uang (leaderstats)
local money = 0
if LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Money") then
    money = LocalPlayer.leaderstats.Money.Value
end

-- status premium/free
local status = (money >= 1000) and "Premium" or "Free"

-- changelog text
local changelog = [[
📜 Changelog:
- v1.0 : Rilis awal
- v1.1 : Fix bug UI
- v1.2 : Tambah fitur auto farm
]]

-- ambil avatar player
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size100x100
local content, isReady = Players:GetUserThumbnailAsync(LocalPlayer.UserId, thumbType, thumbSize)

-- paragraph di tab home
local InfoParagraph = Hometab:Paragraph({
    Title = "Script Info",
    Desc = "👤 Player: " .. LocalPlayer.Name ..
           "\n💸 Money: " .. money ..
           "\n⭐ Status: " .. status ..
           "\n\n" .. changelog,
    Color = "Blue",
    Locked = false,
    Thumbnail = content,
    ThumbnailSize = 80,
})
-- player tab
local Playertab = wnd:Tab({
    Title = "Player",
    Icon = "human",
})
-- Auto Tab
local Autotab = wnd:Tab({
    Title = "Player",
    Icon = "human",
})
