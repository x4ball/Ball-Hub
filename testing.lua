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

-- 5. Buat Section & Fitur
local Main = Window:Section({
    Title = "Main",
    Icon = "home",
})

Main:Button({
    Title = "Speed 32",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    end
})
