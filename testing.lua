local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Test Window",
    Theme = "Dark",
})

local Home = Window:Tab({
    Title = "Home",
    Icon = "home",
})

local Section = Home:Section({
    Title = "Test Section"
})

Section:Button({
    Title = "Hello",
    Desc = "Klik aku",
    Callback = function()
        WindUI:Notify({
            Title = "Success",
            Content = "Tombol kepencet ✅",
            Duration = 3,
            Icon = "check"
        })
    end
})