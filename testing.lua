local wi = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local wdw = wi:CreateWindow({
    Title = "My Super script | Test Hub",
    Icon = "door-open",
    Author = "Example UI",
    Folder = "MyTestHub",
    Theme = "Dark",
})
wdw:Tag({
    Title = "Free",
    Color = Color3.fromHex("#30ff6a")
})
wdw:Tag({
    Title = "Beta",
    Color = Color3.fromHex("#ffff4d")
})
local sts = wdw:Section({
    Title = "Main",
    Opened = true,
})
local mtb = sts:Tab({
    Title = "home",
    Icon = "home",
    Locked = false,
})
local cgg = mtb:Section({
    Title = "Changelog v1.6.4"
})
local mpgh = cgg:Paragraph({
    Title = "Perubahan",
    Desc = "- Fix bug teleport\n- Tambah Dealer Toyota\n- UI Home Profile baru",
    Color = "Green",
})
local sts1 = wdw:Section({
    Title = "Teleport",
    Opened = true,
})
local mtb1 = sts1:Tab({
    Title = "Dealership",
    Icon = "car",
    Locked = false,
})
mtb1:Section({
    Title = "Dealership Jakarta"
})
local Places = {
    ["Dealer Mercedez Benz JKT"] = Vector3.new(315.027832, 23.4426422, -1674.36316),
    ["Dealer Mitsubishi JKT"] = Vector3.new(739.678223, 24.5365658, -2117.28955),
    ["Dealer Hyundai JKT"] = Vector3.new(941.509766, 22.1062279, 10773.6934),
    ["Dealer Toyota JKT"] = Vector3.new(533.399658, 25.3010502, -1966.38733),
    ["Dealer Audi JKT"] = Vector3.new(1786.8241, 46.2610168, 1457.70154),
    ["Dealer Lexus JKT"] = Vector3.new(526.806091, 25.3010406, -1954.80811),
    ["Dealer Bmw JKT"] = Vector3.new(1573.52417, 27.9048462, -3955.22729),
    ["Dealer VW JKT"] = Vector3.new(1801.60413, 46.2610168, 1466.19629),
}

mtb1:Dropdown({
    Title = "Pilih Dealer",
    Values = {"Dealer Mitsubishi JKT", "Dealer Mercedez Benz JKT", "Dealer Toyota JKT", "Dealer Bmw JKT", "Dealer Lexus JKT", "Dealer Hyundai JKT", "Dealer Audi JKT", "Dealer Vw JKT"},
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
            Player.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
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