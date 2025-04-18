-- ui.lua
local UILib = {}

-- Create ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SleekUILib"
gui.ResetOnSpawn = false
pcall(function()
    gui.Parent = game:GetService("CoreGui")
end)

-- Tweening function
local function tween(obj, props, time)
    game:GetService("TweenService"):Create(obj, TweenInfo.new(time or 0.2), props):Play()
end

-- Main Window Function
function UILib:CreateWindow(title)
    local self = {}

    -- Main Frame
    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 500, 0, 300)
    main.Position = UDim2.new(0.5, -250, 0.5, -150)
    main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    main.BorderSizePixel = 0
    main.Active = true
    main.Draggable = true
    main.Parent = gui

    -- Corner
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = main

    -- Title
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0, 40)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title or "UI Library"
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 20
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextXAlignment = Enum.TextXAlignment.Center
    titleLabel.Parent = main

    -- Tabs Bar
    local tabBar = Instance.new("Frame")
    tabBar.Size = UDim2.new(0, 120, 1, -40)
    tabBar.Position = UDim2.new(0, 0, 0, 40)
    tabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    tabBar.BorderSizePixel = 0
    tabBar.Parent = main

    local tabCorner = Instance.new("UICorner")
    tabCorner.CornerRadius = UDim.new(0, 6)
    tabCorner.Parent = tabBar

    -- Content Frame
    local contentFrame = Instance.new("Frame")
    contentFrame.Size = UDim2.new(1, -130, 1, -50)
    contentFrame.Position = UDim2.new(0, 130, 0, 50)
    contentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    contentFrame.BorderSizePixel = 0
    contentFrame.Parent = main

    local contentCorner = Instance.new("UICorner")
    contentCorner.CornerRadius = UDim.new(0, 6)
    contentCorner.Parent = contentFrame

    local tabs = {}

    function self:CreateTab(tabName)
        local tab = {}

        -- Tab Button
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, -10, 0, 30)
        btn.Position = UDim2.new(0, 5, 0, (#tabs * 35) + 5)
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.Text = tabName
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 14
        btn
