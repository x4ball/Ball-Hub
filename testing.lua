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
