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
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ambil thumbnail avatar
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size100x100
local content, isReady = Players:GetUserThumbnailAsync(player.UserId, thumbType, thumbSize)

-- bikin tab kosong khusus profile
local Profile = Wtab:CreateTab({
    Name = player.DisplayName,
    Icon = "user", -- biar ada icon default
})

-- isi dengan avatar + username
Profile:CreateParagraph({
    Title = player.DisplayName,
    Desc = "@" .. player.Name,
    Image = content
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
local Pgph = Tb:Paragraph({
    Title = "Changelog V1.1",
    Desc = [[- Added new tab for teleport to job - Added dealership feature]],
    Color = "Grey",
    Image = "refresh-cw", -
    ImageSize = 30,
    Thumbnail = "https://i.ibb.co.com/r2Lx8rtw/images-2.jpg", -- gambar dari link
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "check",
            Title = "Oke",
            Callback = function()
                print("Button clicked!")
            end,
        }
    }
})
