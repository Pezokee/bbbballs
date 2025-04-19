Apologies for the earlier confusion. Upon reviewing the script at [Example.lua](https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Example.lua), it's clear that this is a UI library for Roblox, inspired by LinoriaLib. Here's a comprehensive `README.md` file tailored for this UI library:

---

```markdown
# 🎨 Obsidian UI Library for Roblox

**Obsidian** is a sleek and customizable UI library for Roblox, inspired by [LinoriaLib](https://github.com/mstudio45/LinoriaLib) and enhanced with additional features, including theme and save management. It supports mobile devices and integrates with [Lucide icons](https://lucide.dev/icons/).

---

## 📦 Features

- **Modular Design**: Easily create windows, tabs, groupboxes, and various UI elements.
- **Customizable**: Supports themes and user preferences.
- **Persistent Settings**: Save and load configurations with `SaveManager`.
- **Mobile-Friendly**: Optimized for mobile devices with adjustable UI elements.
- **Icon Support**: Integrates with Lucide icons for a rich visual experience.

---

## 🚀 Getting Started

### 1. Load the Library

```lua
local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()
```

### 2. Create a Window

```lua
local Window = Library:CreateWindow({
    Title = "Obsidian UI",
    Footer = "Version: Example",
    Icon = 95816097006870,
    Center = true,
    AutoShow = true,
    Resizable = true,
    ShowCustomCursor = true,
    NotifySide = "Right",
})
```

### 3. Add Tabs and Groupboxes

```lua
local Tabs = {
    Main = Window:AddTab("Main", "user"),
    Settings = Window:AddTab("Settings", "settings"),
}

local MainGroup = Tabs.Main:AddLeftGroupbox("Main Controls")
```

---

## 🧩 UI Elements

### Toggle

```lua
MainGroup:AddToggle("MyToggle", {
    Text = "Enable Feature",
    Default = true,
    Callback = function(Value)
        print("Toggle is now:", Value)
    end,
})
```

### Checkbox

```lua
MainGroup:AddCheckbox("MyCheckbox", {
    Text = "Check me",
    Default = false,
    Callback = function(Value)
        print("Checkbox state:", Value)
    end,
})
```

### Button

```lua
MainGroup:AddButton({
    Text = "Click Me",
    Func = function()
        print("Button clicked!")
    end,
    DoubleClick = false,
})
```

### Dropdown

```lua
MainGroup:AddDropdown("MyDropdown", {
    Values = { "Option 1", "Option 2", "Option 3" },
    Default = 1,
    Multi = false,
    Text = "Choose an option",
    Callback = function(Value)
        print("Selected:", Value)
    end,
})
```

### Color Picker

```lua
MainGroup:AddLabel("Pick a Color"):AddColorPicker("MyColorPicker", {
    Default = Color3.new(1, 0, 0),
    Title = "Color Picker",
    Callback = function(Value)
        print("Color selected:", Value)
    end,
})
```

---

## 💾 Save & Load Configurations

```lua
SaveManager:SetLibrary(Library)
SaveManager:BuildConfigSection(Tabs.Settings)
SaveManager:LoadAutoloadConfig()
```

---

## 🎨 Theme Management

```lua
ThemeManager:SetLibrary(Library)
ThemeManager:ApplyToTab(Tabs.Settings)
```

---

## 📺 Demonstration

For a visual demonstration, check out this [YouTube video](https://www.youtube.com/watch?v=Qag8V6mIV6s) showcasing the Obsidian UI Library in action.

---

## 🧑‍💻 Credits

- **Original Library**: [LinoriaLib](https://github.com/mstudio45/LinoriaLib)
- **Modified by**: [deividcomsono](https://github.com/deividcomsono)

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

---

Feel free to customize this `README.md` further to suit your project's specific needs. Let me know if you need assistance with anything else! 
