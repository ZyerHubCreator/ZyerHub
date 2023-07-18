local supported_games = {
	11251823801 -- Slap Battles but bad
}

if table.find(supported_games, game.PlaceId) then

	local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Window = OrionLib:MakeWindow({Name = "Zyer Hub | "..gamename, HidePremium = false, SaveConfig = false})

	--  CONFIGS

	-- nothing yet

	--  TABS

	local MAIN_TAB = Window:MakeTab({
		Name = "Main",
		Icon = "rbxassetid://4034483344",
		PremiumOnly = false
	})

	--  FEATURES

	MAIN_TAB:AddSlider({
		Name = "Walkspeed",
		Min = 16,
		Max = 170,
		Default = 16,
		Color = Color3.fromRGB(0,255,0),
		Increment = 1,
		ValueName = "WS",
		Callback = function(Value)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		end    
	})

	MAIN_TAB:AddSlider({
		Name = "JumpPower",
		Min = 50,
		Max = 170,
		Default = 50,
		Color = Color3.fromRGB(0,255,0),
		Increment = 1,
		ValueName = "JP",
		Callback = function(Value)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		end    
	})

	MAIN_TAB:AddSlider({
		Name = "Reach",
		Min = 1,
		Max = 1000,
		Default = 1,
		Color = Color3.fromRGB(0,255,0),
		Increment = 1,
		ValueName = "REACH",
		Callback = function(Value)
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Default Glove") then
					game.Players.LocalPlayer.Character["Default Glove"].Hitbox.Size = Vector3.new(Value,Value,Value)
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Default Glove") then
					game.Players.LocalPlayer.Backpack["Default Glove"].Hitbox.Size = Vector3.new(Value,Value,Value)
				end
			game.Players.LocalPlayer.Backpack["Default Glove"].Hitbox.Size = Vector3.new(Value,Value,Value)
		end)
end    
})

OrionLib:MakeNotification({
	Name = "Successfully Executed Zyer Hub",
	Content = "Successfully Executed Zyer Hub in "..gamename.."!",
	Image = "rbxassetid://1202200114",
	Time = 3
})

end