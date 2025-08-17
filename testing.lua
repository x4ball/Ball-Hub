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

-- Bikin label judul dulu
Tab:Label({
    Title = "Menu Teleport",
    Desc = "Pilih lokasi untuk teleport",
})

-- Baru bikin button di bawahnya
local Button = Tab:Button({
    Title = "Teleport ke Tempat A",
    Desc = "Klik untuk teleport",
    Locked = false,
    Callback = function()
        WindUI:Notify({
            Title = "Teleport",
            Content = "Teleporting...",
            Duration = 2,
            Icon = "loader",
        })

        task.wait(1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2827.50488, 29, 100)

        WindUI:Notify({
            Title = "Teleport",
            Content = "Sukses Teleport!",
            Duration = 3,
            Icon = "check",
        })
    end
})