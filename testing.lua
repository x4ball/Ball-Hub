local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

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
    ["Dealer Mobil Bekas JKT"] = Vector3.new(0,0,0),
    ["Dealer Mitshubisi JKT"] = Vector3.new(2827.5, 29, 100),
    ["Dealer Mercedes JKT"] = Vector3.new(100, 10, 50),
    ["Dealer Toyota JKT"] = Vector3.new(0, 5, 0),
    ["Dealer Bmw JKT"] = Vector3.new(50, 20, 10),
}

local NotPlace = {
    ["Dealer 77 JKT"] = true,
    ["Dealer Retro JKT"] = true,
}

local Dropdown = Tab:Dropdown({
    Title = "Choose A Dealer",
    Values = { "Dealer Mobil Bekas JKT", "Dealer Mitshubisi JKT", "Dealer Mercedes JKT", "Dealer Toyota JKT", "Dealer Retro JKT", "Dealer 77 JKT" },
    Value = "Choose",
    Callback = function(option)
        if Places[option] then
            WindUI:Notify({
                Title = "Teleport",
                Content = "Teleporting ke " .. option .. "...",
                Duration = 2,
                Icon = "loader",
            })
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Places[option])
            WindUI:Notify({
                Title = "Teleport Success",
                Content = "Sukses teleport ke " .. option .. " ✅",
                Duration = 3,
                Icon = "check",
            })
        elseif NotPlace[option] then
            WindUI:Notify({
                Title = "Can't Teleport ❌",
                Content = "Sorry, The Place Not In Jakarta",
                Duration = 3,
                Icon = "x",
            })
        end
    end
})