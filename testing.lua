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

Main:Button({
    Title = "Click Me!",
    Callback = function()
        -- Di sinilah kamu taruh Notify
        WindUI:Notify({
            Title = "Sukses!",
            Content = "Fitur berhasil dijalankan!",
            Duration = 3, -- 3 detik
            Icon = "check", -- bisa: "bird", "cog", "warning", dll
        })
    end
})
