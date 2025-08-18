local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "My Super Hub ",
    Icon = "door-open",
    Author = "by .ftgs and .ftgs",
    Folder = "MySuperHub",
    
    -- ↓ This all is Optional. You can remove it.
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
        Anonymous = true,
        Callback = function()
            print("clicked")
        end,
    },
})
Window:Tag({
    Title = "v1.6.4",
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "Beta Version",
    Color = Color3.fromHex("#30ff6a")
})
local HomeSection = Window:Section({
    Title = "Main",
    Icon = "",
    Opened = false,
})
local HomeTab = HomeSection:Tab({
    Title = "Changelog",
    Icon = "info",
    Locked = false,
})
local AboutPara = HomeTab:Paragraph({
    Title = "Changelog",
    Desc = "-",
    Thumbnail = "",
    ThumbnailSize = 80, 
    Locked = false,
})
local HomeTab = HomeSection:Tab({
    Title = "information",
    Icon = "info",
    Locked = false,
})