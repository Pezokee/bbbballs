local UILib = {}

local gui = Instance.new("ScreenGui")
gui.Name = "RitualUILib"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Create base frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 410, 0, 419)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui

-- TopBar
local topBar = Instance.new("TextLabel")
topBar.Size = UDim2.new(0, 202, 0, 39)
topBar.Position = UDim2.new(0.25, 0, 0.02, 0)
topBar.BackgroundTransparency = 1
topBar.Font = Enum.Font.DenkOne
topBar.Text = "ritual"
topBar.TextScaled = true
topBar.TextColor3 = Color3.fromRGB(147, 0, 2)
topBar.Parent = mainFrame

-- Scroll Frame
local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(0, 373, 0, 370)
scroll.Position = UDim2.new(0.05, 0, 0.1, 0)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 6
scroll.Parent = mainFrame

local UIListLayout = Instance.new("UIListLayout", scroll)
UIListLayout.Padding = UDim.new(0, 10)

-- === ADDERS ===

function UILib:AddButton(text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -20, 0, 35)
    button.BackgroundTransparency = 0.1
    button.BackgroundColor3 = Color3.fromRGB(147, 0, 2)
    button.Text = text
    button.Font = Enum.Font.DenkOne
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.AutoButtonColor = true
    button.Parent = scroll

    local corner = Instance.new("UICorner", button)

    button.MouseButton1Click:Connect(function()
        pcall(callback)
    end)
end

function UILib:AddLabel(text)
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -20, 0, 25)
    label.BackgroundTransparency = 1
    label.Text = text
    label.Font = Enum.Font.DenkOne
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextScaled = true
    label.Parent = scroll
end

function UILib:AddHeader(text)
    local header = Instance.new("TextLabel")
    header.Size = UDim2.new(1, -20, 0, 30)
    header.BackgroundTransparency = 1
    header.Text = text
    header.Font = Enum.Font.DenkOne
    header.TextColor3 = Color3.fromRGB(135, 38, 39)
    header.TextScaled = true
    header.Parent = scroll
end

return UILib
