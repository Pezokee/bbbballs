-- ModuleScript inside ReplicatedStorage: RitualUI/RitualUILib

local RitualUI = {}

function RitualUI.Create(parent)
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Name = "RitualUI"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")

	local MainFrame = Instance.new("Frame")
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 410, 0, 419)
	MainFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
	MainFrame.BorderSizePixel = 0
	MainFrame.Parent = ScreenGui

	local FrameCorner = Instance.new("UICorner", MainFrame)
	local FrameStroke = Instance.new("UIStroke", MainFrame)
	FrameStroke.Color = Color3.fromRGB(147, 0, 2)
	FrameStroke.Thickness = 2

	local TopBar = Instance.new("Folder", MainFrame)
	TopBar.Name = "TopBar"

	local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Text = "ritual"
	Title.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json")
	Title.TextColor3 = Color3.fromRGB(147, 0, 2)
	Title.TextScaled = true
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(0, 202, 0, 39)
	Title.Position = UDim2.new(0.25, 0, 0.05, 0)
	Title.Parent = TopBar

	local Items = Instance.new("Folder", MainFrame)
	Items.Name = "Items"

	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Name = "Scroller"
	Scroller.Active = true
	Scroller.Size = UDim2.new(0, 373, 0, 389)
	Scroller.Position = UDim2.new(0.044, 0, 0.036, 0)
	Scroller.BackgroundTransparency = 1
	Scroller.BorderSizePixel = 0
	Scroller.ScrollBarImageTransparency = 1
	Scroller.Parent = Items

	local ScrollerStroke = Instance.new("UIStroke", Scroller)
	ScrollerStroke.Color = Color3.fromRGB(147, 0, 2)
	ScrollerStroke.Thickness = 2
	ScrollerStroke.Transparency = 0.5

	local ScrollerCorner = Instance.new("UICorner", Scroller)

	local Header = Instance.new("TextLabel")
	Header.Name = "Header"
	Header.Text = "header"
	Header.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json")
	Header.TextColor3 = Color3.fromRGB(135, 38, 39)
	Header.TextScaled = true
	Header.BackgroundTransparency = 1
	Header.Position = UDim2.new(0.33, 0, 0.07, 0)
	Header.Size = UDim2.new(0, 129, 0, 25)
	Header.Parent = Scroller

	for _, dir in pairs({-0.82, 0.82}) do
		local Bar = Instance.new("Frame")
		Bar.BackgroundColor3 = Header.TextColor3
		Bar.BorderSizePixel = 0
		Bar.Position = UDim2.new(dir, 0, dir < 0 and 0.48 or 0.52, 0)
		Bar.Size = UDim2.new(0, 121, 0, -1)
		Bar.Parent = Header
	end

	local Label = Instance.new("TextLabel")
	Label.Name = "Label"
	Label.Text = "label"
	Label.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json")
	Label.TextColor3 = Color3.new(1, 1, 1)
	Label.TextScaled = true
	Label.BackgroundTransparency = 1
	Label.Position = UDim2.new(0.26, 0, 0.118, 0)
	Label.Size = UDim2.new(0, 179, 0, 20)
	Label.Parent = Scroller

	local Button = Instance.new("TextButton")
	Button.Name = "ActionButton"
	Button.Text = "button"
	Button.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json")
	Button.TextColor3 = Color3.new(1, 1, 1)
	Button.TextSize = 25
	Button.BackgroundTransparency = 1
	Button.Size = UDim2.new(0, 333, 0, 33)
	Button.Position = UDim2.new(0.056, 0, 0.155, 0)
	Button.Parent = Scroller

	local BtnCorner = Instance.new("UICorner", Button)
	local BtnStroke = Instance.new("UIStroke", Button)
	BtnStroke.Color = Color3.fromRGB(147, 0, 2)
	BtnStroke.Thickness = 2

	return {
		ScreenGui = ScreenGui,
		MainFrame = MainFrame,
		Scroller = Scroller,
		Button = Button,
		Label = Label,
		Header = Header,
		SetHeaderText = function(text)
			Header.Text = text
		end,
		SetLabelText = function(text)
			Label.Text = text
		end,
		SetButtonText = function(text)
			Button.Text = text
		end,
		OnButtonClicked = function(callback)
			Button.MouseButton1Click:Connect(callback)
		end
	}
end

return RitualUI
