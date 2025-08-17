-- 1. Muat Wind UI
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- 2. Buat Window (jendela utama)
local Window = WindUI:CreateWindow({
    Title = "My Hub",
    Icon = "door-open",
    Author = "by ftgs",
    Folder = "MySuperHub",
    Size = UDim2.fromOffset(600, 460),
    Theme = "Dark",
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

local Tab = Window:Tab({
    Title = "Main",
    Icon = "bird",
    Locked = false,
})

Tab:Section({
    Title = "Dealership JKT",
    TextXAlignment = "Left",
    TextSize = 17,
})

local Places = {
    ["Category A"] = Vector3.new(2827.5, 29, 100),
    ["Category B"] = Vector3.new(100, 10, 50),
    ["Category C"] = Vector3.new(0, 5, 0),
}

local Dropdown = Tab:Dropdown({
    Title = "Pilih Tempat",
    Values = { "Category A", "Category B", "Category C" },
    Value = "Category A",
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
                Title = "Teleport",
                Content = "Sukses ke " .. option .. " ✓",
                Duration = 3,
                Icon = "check",
            })
        end
    end
})