local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Ball Hub",
    Icon = "door-open",
    Author = "By - @X4ball",
    Folder = "Ball Hub",
    Size = UDim2.fromOffset(600, 460),
    Theme = "Dark",
})

-- 🔹 HOME TAB
local Home = Window:Tab({
    Title = "Home",
    Icon = "home",
})

local HomeSection = Home:Section({
    Title = "Profile"
})

local player = game.Players.LocalPlayer
local membership = (player.MembershipType == Enum.MembershipType.None and "Free") or "Premium"

HomeSection:Paragraph({
    Title = player.Name,
    Desc = "Status: " .. membership,
    Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png",
    ImageSize = 80,
})

HomeSection:Button({
    Title = "Join Discord",
    Desc = "Klik buat join server",
    Callback = function()
        setclipboard("https://discord.gg/xxxx") -- ganti link discord
        WindUI:Notify({
            Title = "Discord",
            Content = "Link discord sudah di-copy!",
            Duration = 3,
            Icon = "check",
        })
    end
})

-- 🔹 CHANGELOG (jadi satu di HOME)
local ChangelogSection = Home:Section({
    Title = "Changelog v1.6.4"
})

ChangelogSection:Paragraph({
    Title = "Perubahan",
    Desc = "- Fix bug teleport\n- Tambah Dealer Toyota\n- UI Home Profile baru",
    Color = "Green",
})

-- 🔹 DEALERSHIP TAB
local DealerTab = Window:Tab({
    Title = "Dealership",
    Icon = "car",
})

local DealerSection = DealerTab:Section({
    Title = "Dealer Jakarta"
})

local Places = {
    ["Dealer Mitshubisi JKT"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JKT"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JKT"] = Vector3.new(0, 5, 0),
}

DealerSection:Dropdown({
    Title = "Pilih Dealer",
    Values = {"Dealer Mitshubisi JKT", "Dealer Mercedes JKT", "Dealer Toyota JKT"},
    Value = "Dealer Mitshubisi JKT",
    Callback = function(option)
        local pos = Places[option]
        if pos then
            WindUI:Notify({
                Title = "Teleport",
                Content = "Teleporting ke " .. option .. "...",
                Duration = 2,
                Icon = "loader",
            })
            task.wait(1)
            player.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
            WindUI:Notify({
                Title = "Sukses ✅",
                Content = "Berhasil teleport ke " .. option,
                Duration = 3,
                Icon = "check",
            })
        else
            WindUI:Notify({
                Title = "Gagal ❌",
                Content = "Lokasi dealer nggak ditemukan",
                Duration = 3,
                Icon = "x",
            })
        end
    end
})