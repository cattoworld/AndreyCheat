local OrionLib = loadstring(game:HttpGet(('https://raw.gitCheatusercontent.com/shlexware/Orion/main/source'), true))()

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

local Extra = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = true
})

Visuals:AddToggle({
	Name = "Test",
	Default = false,
	Callback = function(Value)
		if Value == true then
			OrionLib:MakeNotification({
			Name = "its a test",
			Content = "Test Activated",
			Image = "rbxassetid://4483345998",
			Time = 5
			})
		else
			OrionLib:MakeNotification({
			Name = "you got mail",
			Content = "Test Deactivated",
			Image = "rbxassetid://4483345998",
			Time = 5
			})
		end
})

Main:AddToggle({
	Name = "Warning"
	Default = false,
	Callback = function(Value)
		if Value == true then
			workspace.ChildAdded:Connect(function(inst)
			    if inst.Name == "RushMoving" then
					OrionLib:MakeNotification({
					Name = "Uh oh",
					Content = "Rush is Coming",
					Image = "rbxassetid://17187045096",
					Time = 5
					})
				elseif inst.Name == "AmbushMoving" then
					OrionLib:MakeNotification({
					Name = "Uh oh",
					Content = "Ambush is Coming",
					Image = "rbxassetid://17187047503",
					Time = 5
					})
				end
			end
		end
	end
end
