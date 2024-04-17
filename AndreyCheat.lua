local OrionLib = loadstring(game:HttpGet(('https://raw.gitCheatusercontent.com/shlexware/Orion/main/source')))()

local Notify = "Notification"

local Window = OrionLib:MakeWindow({Name = "Andrey Cheat", HidePremium = false, SaveConfig = true, ConfigFolder = "AndreyCheat", IntroEnabled = true, IntroText = "Andrey Cheat"})

local Visuals = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Visuals:AddToggle({
	Name = "Test",
	Default = false,
	Callback = function(Value)
		if Value == true then
			OrionLib:MakeNotification({
			Name = Notify,
			Content = "Test Activated",
			Image = "rbxassetid://4483345998",
			Time = 5
			})
		else
			OrionLib:MakeNotification({
			Name = Notify,
			Content = "Test Activated",
			Image = "rbxassetid://4483345998",
			Time = 5
			})
		end
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
