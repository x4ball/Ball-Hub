local wUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Wtab = wUI:CreateWindow({
    Title = "Cdid Script | B2s Hub",
    Icon = "door-open",
    Author = "Example UI",
    Folder = "MyTestHub",
    
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
})
local Stab = Wtab:Section({
    Title = "Main",
    Icon = "House",
    Opened = true,
})
local Tb = Wtab:Tab({
    Title = "About",
    Icon = "Annouchment",
    Locked = false,
})
local Tb = Wtab:Tab({
    Title = "Changelog",
    Icon = "bird",
    Locked = false,
})
local Paragraph = Tb:Paragraph({
    Title = "Changelog V1.1",
    Desc = "-Added new tab for teleport to job and dealership",
    Color = "Grey",
    Image = "",
    ImageSize = 30,
    Thumbnail = "https://i.ibb.co.com/ksfKwM1W/images-2.jpg",
    ThumbnailSize = 80,
    Locked = false,
})
