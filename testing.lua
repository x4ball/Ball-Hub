-- Buat Window
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Ball Hub",
    Icon = "door-open",
    Author = "By - @X4ball",
    Folder = "Ball Hub",
    Size = UDim2.fromOffset(600, 460),
    Theme = "Dark",
})

Window:Tag({
    Title = "v1.6.4",
    Color = Color3.fromHex("#30ff6a")
})

-- 🏠 HOME TAB
local HomeTab = Window:Tab({
    Title = "Home",
    Icon = "home",
})

-- === SECTION: PROFILE ===
local ProfileSection = HomeTab:Section({
    Title = "Profile",
})
local player = game.Players.LocalPlayer
local avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=420&height=420&format=png"

ProfileSection:Paragraph({
    Title = player.Name,
    Desc = "Welcome to Ball Hub v1.6.4 🎉",
    Thumbnail = avatarUrl,
    ThumbnailSize = 80,
    Color = "Blue",
})

-- === SECTION: LINKS ===
local LinkSection = HomeTab:Section({
    Title = "Links & Social",
})
LinkSection:Paragraph({
    Title = "Community",
    Desc = "Connect with us!",
    Color = "Green",
    Buttons = {
        {
            Icon = "discord",
            Title = "Join Discord",
            Callback = function()
                setclipboard("https://discord.gg/xxxxxxx")
                WindUI:Notify({
                    Title = "Discord",
                    Content = "Link Discord dicopy ke clipboard 📋",
                    Duration = 3,
                    Icon = "check",
                })
            end,
        },
    }
})

-- === SECTION: CHANGELOG ===
local ChangeSection = HomeTab:Section({
    Title = "Changelog",
})
ChangeSection:Paragraph({
    Title = "Update v1.6.4",
    Desc = [[
- 🚀 Added new Teleport Dealers
- 🎨 Improved UI design
- ⚡ Optimized performance
- 🐛 Bug fixes
    ]],
    Color = "Orange",
    Locked = true,
})

-- 🚗 DEALERSHIP TAB
local DealerTab = Window:Tab({
    Title = "Dealership",
    Icon = "car",
})

local DealerSection = DealerTab:Section({
    Title = "Dealer Jakarta",
})

local Places = {
    ["Dealer Mobil Bekas JKT"] = Vector3.new(0, 5, 0),
    ["Dealer Mitshubisi JKT"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JKT"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JKT"] = Vector3.new(50, 5, 50),
}
local NotPlaces = {
    ["Dealer 77 JKT"] = true,
    ["Dealer Retro JKT"] = true,
}

DealerSection:Dropdown({
    Title = "Choose A Dealer",
    Values = { "Dealer Mobil Bekas JKT", "Dealer Mitshubisi JKT", "Dealer Mercedes JKT", "Dealer Toyota JKT", "Dealer Retro JKT", "Dealer 77 JKT" },
    Value = "Choose",
    Callback = function(option)
        if Places[option] then
            WindUI:Notify({
                Title = "Teleport",
                Content = "Teleporting ke " .. option .. "...",
                Duration = 2,
                Icon = "loader",
            })
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Places[option])
            WindUI:Notify({
                Title = "Teleport",
                Content = "Success teleport to " .. option .. " ✅",
                Duration = 3,
                Icon = "check",
            })
        elseif NotPlaces[option] then
            WindUI:Notify({
                Title = "Can't Teleport ❌",
                Content = option .. " not available in Jakarta",
                Duration = 3,
                Icon = "x"
            })
        end
    end
})