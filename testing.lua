local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local wd = WindUI:CreateWindow({
    Title = "Ball Hub",
    Icon = "door-open",
    Author = "By - @X4ball",
    Folder = "Ball Hub",
    Size = UDim2.fromOffset(600, 460),
    Theme = "Dark",
})
wd:Tag({
    Title = "Working",
    Color = Color3.fromHex("#30ff6a")
})
wd:Tag({
    Title = "Beta Version",
    Color = Color3.fromHex("#30ff6a")
})
-- 🔹 HOME TAB
local hm = wd:Tab({
    Title = "Home",
    Icon = "house",
})

local hs = hm:Section({
    Title = "Profile"
})

local player = game.Players.LocalPlayer
local membership = (player.MembershipType == Enum.MembershipType.None and "Free") or "Premium"

hs:Paragraph({
    Title = player.Name,
    Desc = "Status: " .. membership,
    Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png",
    ImageSize = 80,
})

hs:Button({
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
local cln = hm:Section({
    Title = "Changelog v1.6.4"
})

cln:Paragraph({
    Title = "Perubahan",
    Desc = "- Fix bug teleport\n- Tambah Dealer Toyota\n- UI Home Profile baru",
    Color = "Green",
})
-- 🔹 PLAYER TAB
local pb = wd:Tab({
    Title = "Player",
    Icon = "player",
})

local psn = pb:Section({ 
    Title = "Feature",
    TextXAlignment = "Left",
    TextSize = 20, 
})
-- 🔹 DEALERSHIP TAB
local DealerTab = wd:Tab({
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

local DealerSection = DealerTab:Section({
    Title = "Dealer Jawa barat"
})

local Places = {
    ["Dealer Mitshubisi JWB"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JWB"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JWB"] = Vector3.new(0, 5, 0),
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

local DealerSection = DealerTab:Section({
    Title = "Dealer Jawa Tengah"
})

local Places = {
    ["Dealer Mitshubisi JWB"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JWB"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JWB"] = Vector3.new(0, 5, 0),
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

local DealerSection = DealerTab:Section({
    Title = "Dealer Jawa Tengah"
})

local Places = {
    ["Dealer Mitshubisi JWB"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JWB"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JWB"] = Vector3.new(0, 5, 0),
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
-- 🔹 JOB APPLICATION TAB
local jp = wd:Tab({
    Title = "Job Application",
    Icon = "job",
})

local jpe = jp:Section({
    Title = "Job Place in Jakarta"
})

jpe:Button({
    Title = "Teleport To Office",
    Desc = "Teleport to office job buliding.",
    Locked = false,
    Callback = function()
        WindUI:Notify({
                Title = "Teleport",
                Content = "Teleport To Office place",
                Duration = 2,
                Icon = "loader",
            })
        task.wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
TrucWindUI:Notify({
                Title = "Sukses",
                Content = "Berhasil teleport ke ",
                Duration = 3,
                Icon = "check",
        })
    end
})

local jtn = jp:Section({
    Title = "Get A Job"
})

jtn:Button({
    Title = "Office",
    Desc = "Get A Office Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Office")
})

jtn:Button({
    Title = "Truck",
    Desc = "Get A Truck Drivers Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Truck")
})

jtn:Button({
    Title = "Gowes",
    Desc = "Get A Gojek Driver Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Gowes")
})

jtn:Button({
    Title = "Taxi",
    Desc = "Get A Taxi Driver Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Taxi")
})

jtn:Button({
    Title = "Travel",
    Desc = "Get A Travel Driver Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Travel")
})

jtn:Button({
    Title = "Corurier Si Lambat",
    Desc = "Get A Corurier Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("SiLambat")
})

jtn:Button({
    Title = "Pengangguran",
    Desc = "Dasar penganguran ga guna",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Unemployee")
})