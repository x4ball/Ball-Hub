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
    Title = "Working",
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "Beta Version",
    Color = Color3.fromHex("#30ff6a")
})

-- 🔹 HOME TAB
local Home = Window:Tab({
    Title = "Home",
    Icon = "house",
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
-- 🔹 PLAYER TAB
local PlayerTab = Window:Tab({
    Title = "Player",
    Icon = "player",
})

local PlayerSection = PlayerTab:Section({ 
    Title = "Feature",
    TextXAlignment = "Left",
    TextSize = 20, 
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
local Job = Window:Tab({
    Title = "Job Application",
    Icon = "job",
})

local JobSection = Job:Section({
    Title = "Job Place in Jakarta"
})

local JobButton = Tab:Button({
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
local JobSection = Job:Section({
    Title = "Get A Job"
})
local JobButton = JobTab:Button({
    Title = "Office",
    Desc = "Get A Office Job",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").NetworkContainer.RemoteEvents.Job:FireServer("Office")
        Truck,Taxi,SiLambat,Gowes,Travel Unemployee
})

        local JobSection = Job:Section({
            Title = "Get A Job"
})
        -- 🔧 Fungsi ambil job name
local function getJobName()
    local billboard = workspace:FindFirstChild("Billboard")
    if not billboard then return "Not Found" end

    local jobSelection = billboard:FindFirstChild("JobSelection")
    if not jobSelection then return "Not Found" end

    local playerBillboard = jobSelection:FindFirstChild("PlayerBillboard")
    if not playerBillboard then return "Not Found" end

    local frame = playerBillboard:FindFirstChild("Frame")
    if not frame then return "Not Found" end

    local jobNameLabel = frame:FindFirstChild("JobName")
    if not jobNameLabel then return "Not Found" end

    return jobNameLabel.Text
end
  
}

-- 📄 Buat Paragraph
local JobParagraph = JobTab:Paragraph({
    Title = "Job Status",
    Desc = "Loading job...",
    Color = "White", -- Bisa: "Red", "Green", "Blue", "White", dll
    Image = "", -- Biarkan kosong atau tambah icon
    ImageSize = 30,
    Thumbnail = "", -- Misalnya avatar pemain nanti
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "refresh",
            Title = "Refresh",
            Callback = function()
                local job = getJobName()
                Paragraph:SetDesc(job) -- Update deskripsi secara live
            end
        }
    }
})

-- ⚡ Update job pertama kali
spawn(function()
    wait(0.5)
    local job = getJobName()
    Paragraph:SetDesc(job)
end)
})