-- 1. Muat Wind UI
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- 2. Buat Window (jendela utama)
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
-- 3. ✅ TARUH DI SINI: Topbar Button
Window:CreateTopbarButton("MyCustomButton1", "bird", function()
    print("clicked!")
end, 990)

-- 4. (Opsional) Edit tombol buka GUI
Window:EditOpenButton({
    Title = "Open Hub",
    Draggable = true,
})
-- DEALER AND JOB SECTION
local Section = Window:Section({
    Title = "Teleport Dealership & Job",
    Icon = "bird",
    Opened = true,
})

local Tab = Window:Tab({
    Title = "Dealership",
    Icon = "bird",
    Locked = false,
})

Tab:Section({
    Title = "Dealership Jakarta",
    TextXAlignment = "Left",
    TextSize = 20,
})

local Places = {
    ["Dealer Mobil Bekas JKT"] = Vector3.new()
    ["Dealer Mitshubisi JKT"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JKT"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JKT"] = Vector3.new(0, 5, 0),
    ["Dealer Bmw JKT"] = Vector3.new()
}
local notplace = {
    ["Dealer 77 JKT"] = Vector3.new()
    ["Dealer Retro JKT"] = Vector3.new()
}

local Dropdown = Tab:Dropdown({
    Title = "Choose A Dealer",
    Values = { "Dealer Mobil Bekas JKT", "Dealer Mitshubisi JKT", "Dealer Mercedes JKT", "Dealer Toyota JKT", "Dealer Retro JKT", "Dealer 77 JKT" },
    Value = "Choose",
    Callback = function(option)
        local pos = Places[option]
        if pos then
            -- notif sebelum teleport
            WindUI:Notify({
                Title = "Teleport",
                Content = "Teleporting ke " .. option .. "...",
                Duration = 2,
                Icon = "loader",
            })

            task.wait(1)

            -- teleport
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)

            -- notif sukses sesuai lokasi
            WindUI:Notify({
                Title = "Teleport to" .. option.. ",
                Content = "Sucses teleport to " .. option .. "✅",
                Duration = 3,
                Icon = "check",
            })
            local notpos = notplaces
            if notpos then
            Windui:Notify({
                Title = "Can't Teleport ❌",
                Content = "Sorry The Place Not In Jakarta",
                Duration = 3,
                Icon = "loader"
            })
                
        end
    end
})

Tab:Section({
    Title = "Dealership Jawa Barat",
    TextXAlignment = "Left",
    TextSize = 20,
})

local Places = {
    ["Dealer Mobil Bekas JWB"] = Vector3.new()
    ["Dealer Mitshubisi JWB"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JWB"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JWB"] = Vector3.new(0, 5, 0),
    ["Dealer Bmw JWB"] = Vector3.new()
}
local notplace = {
    ["Dealer 77 JWB"] = Vector3.new()
    ["Dealer Retro JWB"] = Vector3.new()
}

local Dropdown = Tab:Dropdown({
    Title = "Choose A Dealer",
    Values = { "Dealer Mobil Bekas JWB", "Dealer Mitshubisi JWB", "Dealer Mercedes JWB", "Dealer Toyota JWB", "Dealer Retro JWB", "Dealer 77 JWB" },
    Value = "Choose",
    Callback = function(option)
        local pos = Places[option]
        if pos then
            -- notif sebelum teleport
            WindUI:Notify({
                Title = "Teleport",
                Content = "Teleporting ke " .. option .. "...",
                Duration = 2,
                Icon = "loader",
            })

            task.wait(1)

            -- teleport
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)

            -- notif sukses sesuai lokasi
            WindUI:Notify({
                Title = "Teleport to" .. option.. ",
                Content = "Sucses teleport to " .. option .. "✅",
                Duration = 3,
                Icon = "check",
            })
            local notpos = notplaces
            if notpos then
            Windui:Notify({
                Title = "Can't Teleport ❌",
                Content = "Sorry The Place Not In Jawa Barat",
                Duration = 3,
                Icon = "loader"
            })
                
        end
    end
})

Tab:Section({
    Title = "Dealership Jawa Tengah",
    TextXAlignment = "Left",
    TextSize = 20,
})

local Places = {
    ["Dealer Mobil Bekas JWT"] = Vector3.new()
    ["Dealer Mitshubisi JWT"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JWT"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JWT"] = Vector3.new(0, 5, 0),
    ["Dealer Bmw JWT"] = Vector3.new()
}
local notplace = {
    ["Dealer 77 JWT"] = Vector3.new()
    ["Dealer Retro JWT"] = Vector3.new()
}

local Dropdown = Tab:Dropdown({
    Title = "Choose A Dealer",
    Values = { "Dealer Mobil Bekas JWT", "Dealer Mitshubisi JWT", "Dealer Mercedes JWT", "Dealer Toyota JWY", "Dealer Retro JWT", "Dealer 77 JWY" },
    Value = "Choose",
    Callback = function(option)
        local pos = Places[option]
        if pos then
            -- notif sebelum teleport
            WindUI:Notify({
                Title = "Teleport",
                Content = "Teleporting ke " .. option .. "...",
                Duration = 2,
                Icon = "loader",
            })

            task.wait(1)

            -- teleport
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)

            -- notif sukses sesuai lokasi
            WindUI:Notify({
                Title = "Teleport to" .. option.. ",
                Content = "Sucses teleport to " .. option .. "✅",
                Duration = 3,
                Icon = "check",
            })
            local notpos = notplaces
            if notpos then
            Windui:Notify({
                Title = "Can't Teleport ❌",
                Content = "Sorry The Place Not In Jawa Tengah",
                Duration = 3,
                Icon = "loader"
            })
                
        end
    end
})

local Tab = Window:Tab({
    Title = "Job Application",
    Icon = "bird",
    Locked = false,
})

Tab:Section({
    Title = "Job Jawa Tengah",
    TextXAlignment = "Left",
    TextSize = 20,
})
