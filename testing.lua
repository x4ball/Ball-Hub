local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "My Hub",
    Author = "ftgs",
    Theme = "Dark",
    Size = UDim2.fromOffset(600, 500),
    SideBarWidth = 180,
})

Window:EditOpenButton({
    Title = "Open Hub",
    Draggable = true,
    Color = ColorSequence.new(Color3.fromHex("4A00E0"), Color3.fromHex("8E2DE2"))
})

-- 🔹 Section 1: Movement
local Movement = Window:Section({
    Title = "Movement",
    Icon = "run",
    Opened = true
})

Movement:Button({
    Title = "Speed 32",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    end
})

Movement:Toggle({
    Title = "Infinite Jump",
    Callback = function(state)
        if state then
            -- aktifkan
        end
    end
})

-- 🔹 Section 2: Teleport
local Teleport = Window:Section({
    Title = "Teleport",
    Icon = "map-marker"
})

Teleport:Button({
    Title = "To Spawn",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0)
    end
})
