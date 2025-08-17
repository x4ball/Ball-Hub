-- Load WindUI Library
local success, WindUI = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
end)

if not success then
    warn("Gagal memuat WindUI. Periksa koneksi atau URL.")
    return
end

-- Buat window utama
local window = WindUI.new("Simple WindUI Script")

-- Buat tab
local tab = window:Tab("Main")

-- Tambahkan tombol
tab:Button("Klik Saya!", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "WindUI",
        Text = "Tombol berhasil diklik!",
        Duration = 5
    })
end)

-- Tambahkan toggle
tab:Toggle("Auto-Farm", false, function(state)
    if state then
        print("Auto-Farm: Aktif")
    else
        print("Auto-Farm: Mati")
    end
end)

-- Tambahkan slider
tab:Slider("WalkSpeed", 16, 50, 16, function(value)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = value
    end
end)

-- Tambahkan label info
tab:Label("Script ini kompatibel dengan semua executor.")
