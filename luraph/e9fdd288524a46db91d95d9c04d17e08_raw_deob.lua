 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(215, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 263, 0, 290)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0.5, 5, 0.5, 9), UDim2.new(0.125, -2, 0.125, -2), UDim2.new(0, 5, 0, -3)), Path2DControlPoint.new(UDim2.new(0.375, -4, 0, -2), UDim2.new(0, 0, 0, -2), UDim2.new(0, 6, 0, 1)), Path2DControlPoint.new(UDim2.new(0, 1, 0, -1), UDim2.new(0, -1, 0, 0), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0, 2, 0.5, 8), UDim2.new(-0.125, 6, 0, 0), UDim2.new(-0.125, -7, 0, 0)), Path2DControlPoint.new(UDim2.new(0.5, 3, 0, 6), UDim2.new(0, 0, 0, 0), UDim2.new(0, -7, 0.0625, -2)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.071428574621677399)
 
Path2D:GetPositionOnCurve(0.18181818723678589)
 
Path2D:GetTangentOnCurve(0.30769231915473938)
 
Path2D:GetTangentOnCurve(0.40000000596046448)
 
Path2D:GetTangentOnCurve(0.61538463830947876)
 
Path2D:GetTangentOnCurve(0.066666670143604279)
 
Path2D:GetPositionOnCurveArcLength(0.38461539149284363)
 
Path2D:GetPositionOnCurveArcLength(0.92307692766189575)
 
Path2D:GetTangentOnCurveArcLength(0.83333331346511841)
 
Path2D:GetTangentOnCurveArcLength(0.4375)
 
Path2D:GetTangentOnCurveArcLength(0.8571428656578064)
 
ScreenGui:Destroy()
 
local connection = game.DescendantRemoving:Connect(function(descendant)
end)
 
connection:Disconnect()
 
local connection2 = workspace.DescendantRemoving:Connect(function(descendant2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.DescendantRemoving:Connect(function(descendant3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.DescendantRemoving:Connect(function(descendant4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "504449618"
 
Folder:WaitForChild("504449618")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.DescendantRemoving:Connect(function(descendant5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.DescendantRemoving:Connect(function(descendant6)
end)
 
connection6:Disconnect()
 
 
local CoreGui = game:GetService("CoreGui")
 
local Players = game:GetService("Players")
 
local TweenService = game:GetService("TweenService")
 
CoreGui:FindFirstChild("SourcesHubsCinematicIntro")
 
CoreGui.SourcesHubsCinematicIntro:Destroy()
 
local Sound = Instance.new("Sound")
 
Sound.SoundId = "rbxassetid://9060817402"
 
Sound.Volume = 1
 
Sound.Parent = CoreGui
 
local Sound2 = Instance.new("Sound")
 
Sound2.SoundId = "rbxassetid://9114220037"
 
Sound2.Volume = 0.5
 
Sound2.Parent = CoreGui
 
local Sound3 = Instance.new("Sound")
 
Sound3.SoundId = "rbxassetid://4590657391"
 
Sound3.Volume = 2
 
Sound3.Parent = CoreGui
 
Sound:Play()
 
local ScreenGui2 = Instance.new("ScreenGui")
 
ScreenGui2.Name = "SourcesHubsCinematicIntro"
 
ScreenGui2.IgnoreGuiInset = true
 
ScreenGui2.ResetOnSpawn = false
 
ScreenGui2.Parent = CoreGui
 
local Frame2 = Instance.new("Frame")
 
Frame2.Name = "MainFrame"
 
Frame2.Size = UDim2.new(1, 0, 1, 0)
 
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 
Frame2.BorderSizePixel = 0
 
Frame2.Parent = ScreenGui2
 
local TextLabel = Instance.new("TextLabel")
 
TextLabel.Size = UDim2.new(1, -40, 1, -80)
 
TextLabel.Position = UDim2.new(0, 20, 0, 20)
 
TextLabel.BackgroundTransparency = 1
 
TextLabel.Font = Enum.Font.Code
 
TextLabel.Text = ""
 
TextLabel.TextColor3 = Color3.fromRGB(120, 0, 0)
 
TextLabel.TextSize = 13
 
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
 
TextLabel.TextTransparency = 0.4
 
TextLabel.Parent = Frame2
 
task.spawn(function(...)
	 
	TextLabel.Text = "\n> loadstring(game:HttpGet('https://discord.gg/sourceshubs'))()"
	 
	task.wait(0.5)
	 
	TextLabel.Text = "\n> loadstring(game:HttpGet('https://discord.gg/sourceshubs'))()\n> Establishing secure websocket connection..."
	 
	task.wait(0.5)
	 
	TextLabel.Text = "\n> loadstring(game:HttpGet('https://discord.gg/sourceshubs'))()\n> Establishing secure websocket connection..." .. "\n> " .. "Loading player data for: " .. Players.LocalPlayer.Name
	 
	task.wait(0.5)
	 
	TextLabel.Text = "\n> loadstring(game:HttpGet('https://discord.gg/sourceshubs'))()\n> Establishing secure websocket connection..." .. "\n> " .. "Loading player data for: " .. Players.LocalPlayer.Name .. "\n> loadstring(game:HttpGet('https://discord.gg/sourceshubs'))()"
	 
	task.wait(0.5)
	 
end)
 
local Folder3 = Instance.new("Folder")
 
Folder3.Name = "Embers"
 
Folder3.Parent = Frame2
 
task.spawn(function(...)
	 
	local Frame3 = Instance.new("Frame")
	 
	Frame3.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame3.Position = UDim2.new(0.61, 0, 1.1, 0)
	 
	Frame3.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame3.BorderSizePixel = 0
	 
	Frame3.BackgroundTransparency = 0.2
	 
	local UICorner = Instance.new("UICorner")
	 
	UICorner.CornerRadius = UDim.new(1, 0)
	 
	UICorner.Parent = Frame3
	 
	Frame3.Parent = Folder3
	 
	local tween = TweenService:Create(Frame3, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.61000001430511475, -36, -0.01, 0) })
	 
	tween:Play()
	 
	task.delay(1.7, function(...)
		 
		Frame3:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame4 = Instance.new("Frame")
	 
	Frame4.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame4.Position = UDim2.new(0.17, 0, 1.1, 0)
	 
	Frame4.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame4.BorderSizePixel = 0
	 
	Frame4.BackgroundTransparency = 0.2
	 
	local UICorner2 = Instance.new("UICorner")
	 
	UICorner2.CornerRadius = UDim.new(1, 0)
	 
	UICorner2.Parent = Frame4
	 
	Frame4.Parent = Folder3
	 
	local tween2 = TweenService:Create(Frame4, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.17000000178813934, -25, 0.28, 0) })
	 
	tween2:Play()
	 
	task.delay(1.7, function(...)
		 
		Frame4:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame5 = Instance.new("Frame")
	 
	Frame5.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame5.Position = UDim2.new(0.27, 0, 1.1, 0)
	 
	Frame5.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame5.BorderSizePixel = 0
	 
	Frame5.BackgroundTransparency = 0.2
	 
	local UICorner3 = Instance.new("UICorner")
	 
	UICorner3.CornerRadius = UDim.new(1, 0)
	 
	UICorner3.Parent = Frame5
	 
	Frame5.Parent = Folder3
	 
	local tween3 = TweenService:Create(Frame5, TweenInfo.new(2.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.27000001072883606, -40, -0.01, 0) })
	 
	tween3:Play()
	 
	task.delay(2.3, function(...)
		 
		Frame5:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame6 = Instance.new("Frame")
	 
	Frame6.Size = UDim2.new(0, 5, 0, 5)
	 
	Frame6.Position = UDim2.new(0.56, 0, 1.1, 0)
	 
	Frame6.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame6.BorderSizePixel = 0
	 
	Frame6.BackgroundTransparency = 0.2
	 
	local UICorner4 = Instance.new("UICorner")
	 
	UICorner4.CornerRadius = UDim.new(1, 0)
	 
	UICorner4.Parent = Frame6
	 
	Frame6.Parent = Folder3
	 
	local tween4 = TweenService:Create(Frame6, TweenInfo.new(1.9, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.56000000238418579, 23, 0.13, 0) })
	 
	tween4:Play()
	 
	task.delay(1.9, function(...)
		 
		Frame6:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame7 = Instance.new("Frame")
	 
	Frame7.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame7.Position = UDim2.new(0.68, 0, 1.1, 0)
	 
	Frame7.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame7.BorderSizePixel = 0
	 
	Frame7.BackgroundTransparency = 0.2
	 
	local UICorner5 = Instance.new("UICorner")
	 
	UICorner5.CornerRadius = UDim.new(1, 0)
	 
	UICorner5.Parent = Frame7
	 
	Frame7.Parent = Folder3
	 
	local tween5 = TweenService:Create(Frame7, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.68000000715255737, -10, -0.1, 0) })
	 
	tween5:Play()
	 
	task.delay(2, function(...)
		 
		Frame7:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame8 = Instance.new("Frame")
	 
	Frame8.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame8.Position = UDim2.new(0.18, 0, 1.1, 0)
	 
	Frame8.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame8.BorderSizePixel = 0
	 
	Frame8.BackgroundTransparency = 0.2
	 
	local UICorner6 = Instance.new("UICorner")
	 
	UICorner6.CornerRadius = UDim.new(1, 0)
	 
	UICorner6.Parent = Frame8
	 
	Frame8.Parent = Folder3
	 
	local tween6 = TweenService:Create(Frame8, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.18000000715255737, 2, 0.23, 0) })
	 
	tween6:Play()
	 
	task.delay(2.5, function(...)
		 
		Frame8:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame9 = Instance.new("Frame")
	 
	Frame9.Size = UDim2.new(0, 5, 0, 5)
	 
	Frame9.Position = UDim2.new(0.43, 0, 1.1, 0)
	 
	Frame9.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame9.BorderSizePixel = 0
	 
	Frame9.BackgroundTransparency = 0.2
	 
	local UICorner7 = Instance.new("UICorner")
	 
	UICorner7.CornerRadius = UDim.new(1, 0)
	 
	UICorner7.Parent = Frame9
	 
	Frame9.Parent = Folder3
	 
	local tween7 = TweenService:Create(Frame9, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.43000000715255737, -31, 0.02, 0) })
	 
	tween7:Play()
	 
	task.delay(1.7, function(...)
		 
		Frame9:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame10 = Instance.new("Frame")
	 
	Frame10.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame10.Position = UDim2.new(0.72, 0, 1.1, 0)
	 
	Frame10.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame10.BorderSizePixel = 0
	 
	Frame10.BackgroundTransparency = 0.2
	 
	local UICorner8 = Instance.new("UICorner")
	 
	UICorner8.CornerRadius = UDim.new(1, 0)
	 
	UICorner8.Parent = Frame10
	 
	Frame10.Parent = Folder3
	 
	local tween8 = TweenService:Create(Frame10, TweenInfo.new(1.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.72000002861022949, -36, -0.03, 0) })
	 
	tween8:Play()
	 
	task.delay(1.6, function(...)
		 
		Frame10:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame11 = Instance.new("Frame")
	 
	Frame11.Size = UDim2.new(0, 6, 0, 6)
	 
	Frame11.Position = UDim2.new(0.54, 0, 1.1, 0)
	 
	Frame11.BackgroundColor3 = Color3.fromRGB(255, 30, 0)
	 
	Frame11.BorderSizePixel = 0
	 
	Frame11.BackgroundTransparency = 0.2
	 
	local UICorner9 = Instance.new("UICorner")
	 
	UICorner9.CornerRadius = UDim.new(1, 0)
	 
	UICorner9.Parent = Frame11
	 
	Frame11.Parent = Folder3
	 
	local tween9 = TweenService:Create(Frame11, TweenInfo.new(2.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.54000002145767212, -34, -0.02, 0) })
	 
	tween9:Play()
	 
	task.delay(2.1, function(...)
		 
		Frame11:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame12 = Instance.new("Frame")
	 
	Frame12.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame12.Position = UDim2.new(0.63, 0, 1.1, 0)
	 
	Frame12.BackgroundColor3 = Color3.fromRGB(255, 30, 0)
	 
	Frame12.BorderSizePixel = 0
	 
	Frame12.BackgroundTransparency = 0.2
	 
	local UICorner10 = Instance.new("UICorner")
	 
	UICorner10.CornerRadius = UDim.new(1, 0)
	 
	UICorner10.Parent = Frame12
	 
	Frame12.Parent = Folder3
	 
	local tween10 = TweenService:Create(Frame12, TweenInfo.new(1.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.62999999523162842, -28, -0.1, 0) })
	 
	tween10:Play()
	 
	task.delay(1.6, function(...)
		 
		Frame12:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame13 = Instance.new("Frame")
	 
	Frame13.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame13.Position = UDim2.new(0.45, 0, 1.1, 0)
	 
	Frame13.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame13.BorderSizePixel = 0
	 
	Frame13.BackgroundTransparency = 0.2
	 
	local UICorner11 = Instance.new("UICorner")
	 
	UICorner11.CornerRadius = UDim.new(1, 0)
	 
	UICorner11.Parent = Frame13
	 
	Frame13.Parent = Folder3
	 
	local tween11 = TweenService:Create(Frame13, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.44999998807907104, -33, 0.27, 0) })
	 
	tween11:Play()
	 
	task.delay(1.7, function(...)
		 
		Frame13:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame14 = Instance.new("Frame")
	 
	Frame14.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame14.Position = UDim2.new(0.28, 0, 1.1, 0)
	 
	Frame14.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame14.BorderSizePixel = 0
	 
	Frame14.BackgroundTransparency = 0.2
	 
	local UICorner12 = Instance.new("UICorner")
	 
	UICorner12.CornerRadius = UDim.new(1, 0)
	 
	UICorner12.Parent = Frame14
	 
	Frame14.Parent = Folder3
	 
	local tween12 = TweenService:Create(Frame14, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.2800000011920929, 23, 0.27, 0) })
	 
	tween12:Play()
	 
	task.delay(2, function(...)
		 
		Frame14:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame15 = Instance.new("Frame")
	 
	Frame15.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame15.Position = UDim2.new(0.14, 0, 1.1, 0)
	 
	Frame15.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame15.BorderSizePixel = 0
	 
	Frame15.BackgroundTransparency = 0.2
	 
	local UICorner13 = Instance.new("UICorner")
	 
	UICorner13.CornerRadius = UDim.new(1, 0)
	 
	UICorner13.Parent = Frame15
	 
	Frame15.Parent = Folder3
	 
	local tween13 = TweenService:Create(Frame15, TweenInfo.new(2.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.14000000059604645, -32, -0.01, 0) })
	 
	tween13:Play()
	 
	task.delay(2.1, function(...)
		 
		Frame15:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame16 = Instance.new("Frame")
	 
	Frame16.Size = UDim2.new(0, 6, 0, 6)
	 
	Frame16.Position = UDim2.new(0.67, 0, 1.1, 0)
	 
	Frame16.BackgroundColor3 = Color3.fromRGB(255, 30, 0)
	 
	Frame16.BorderSizePixel = 0
	 
	Frame16.BackgroundTransparency = 0.2
	 
	local UICorner14 = Instance.new("UICorner")
	 
	UICorner14.CornerRadius = UDim.new(1, 0)
	 
	UICorner14.Parent = Frame16
	 
	Frame16.Parent = Folder3
	 
	local tween14 = TweenService:Create(Frame16, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.67000001668930054, -23, 0.02, 0) })
	 
	tween14:Play()
	 
	task.delay(1.5, function(...)
		 
		Frame16:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame17 = Instance.new("Frame")
	 
	Frame17.Size = UDim2.new(0, 6, 0, 6)
	 
	Frame17.Position = UDim2.new(0.89, 0, 1.1, 0)
	 
	Frame17.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame17.BorderSizePixel = 0
	 
	Frame17.BackgroundTransparency = 0.2
	 
	local UICorner15 = Instance.new("UICorner")
	 
	UICorner15.CornerRadius = UDim.new(1, 0)
	 
	UICorner15.Parent = Frame17
	 
	Frame17.Parent = Folder3
	 
	local tween15 = TweenService:Create(Frame17, TweenInfo.new(1.9, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.88999998569488525, -14, 0.14, 0) })
	 
	tween15:Play()
	 
	task.delay(1.9, function(...)
		 
		Frame17:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame18 = Instance.new("Frame")
	 
	Frame18.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame18.Position = UDim2.new(0.25, 0, 1.1, 0)
	 
	Frame18.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame18.BorderSizePixel = 0
	 
	Frame18.BackgroundTransparency = 0.2
	 
	local UICorner16 = Instance.new("UICorner")
	 
	UICorner16.CornerRadius = UDim.new(1, 0)
	 
	UICorner16.Parent = Frame18
	 
	Frame18.Parent = Folder3
	 
	local tween16 = TweenService:Create(Frame18, TweenInfo.new(2.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.25, 9, -0.05, 0) })
	 
	tween16:Play()
	 
	task.delay(2.3, function(...)
		 
		Frame18:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame19 = Instance.new("Frame")
	 
	Frame19.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame19.Position = UDim2.new(0.45, 0, 1.1, 0)
	 
	Frame19.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame19.BorderSizePixel = 0
	 
	Frame19.BackgroundTransparency = 0.2
	 
	local UICorner17 = Instance.new("UICorner")
	 
	UICorner17.CornerRadius = UDim.new(1, 0)
	 
	UICorner17.Parent = Frame19
	 
	Frame19.Parent = Folder3
	 
	local tween17 = TweenService:Create(Frame19, TweenInfo.new(1.9, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.44999998807907104, -18, -0.02, 0) })
	 
	tween17:Play()
	 
	task.delay(1.9, function(...)
		 
		Frame19:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame20 = Instance.new("Frame")
	 
	Frame20.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame20.Position = UDim2.new(0.22, 0, 1.1, 0)
	 
	Frame20.BackgroundColor3 = Color3.fromRGB(255, 30, 0)
	 
	Frame20.BorderSizePixel = 0
	 
	Frame20.BackgroundTransparency = 0.2
	 
	local UICorner18 = Instance.new("UICorner")
	 
	UICorner18.CornerRadius = UDim.new(1, 0)
	 
	UICorner18.Parent = Frame20
	 
	Frame20.Parent = Folder3
	 
	local tween18 = TweenService:Create(Frame20, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.2199999988079071, 40, 0.21, 0) })
	 
	tween18:Play()
	 
	task.delay(1.8, function(...)
		 
		Frame20:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame21 = Instance.new("Frame")
	 
	Frame21.Size = UDim2.new(0, 5, 0, 5)
	 
	Frame21.Position = UDim2.new(0.23, 0, 1.1, 0)
	 
	Frame21.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame21.BorderSizePixel = 0
	 
	Frame21.BackgroundTransparency = 0.2
	 
	local UICorner19 = Instance.new("UICorner")
	 
	UICorner19.CornerRadius = UDim.new(1, 0)
	 
	UICorner19.Parent = Frame21
	 
	Frame21.Parent = Folder3
	 
	local tween19 = TweenService:Create(Frame21, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.23000000417232513, 24, 0.1, 0) })
	 
	tween19:Play()
	 
	task.delay(1.7, function(...)
		 
		Frame21:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame22 = Instance.new("Frame")
	 
	Frame22.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame22.Position = UDim2.new(0.24, 0, 1.1, 0)
	 
	Frame22.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame22.BorderSizePixel = 0
	 
	Frame22.BackgroundTransparency = 0.2
	 
	local UICorner20 = Instance.new("UICorner")
	 
	UICorner20.CornerRadius = UDim.new(1, 0)
	 
	UICorner20.Parent = Frame22
	 
	Frame22.Parent = Folder3
	 
	local tween20 = TweenService:Create(Frame22, TweenInfo.new(2.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.23999999463558197, 3, -0.1, 0) })
	 
	tween20:Play()
	 
	task.delay(2.4, function(...)
		 
		Frame22:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame23 = Instance.new("Frame")
	 
	Frame23.Size = UDim2.new(0, 7, 0, 7)
	 
	Frame23.Position = UDim2.new(0.5, 0, 1.1, 0)
	 
	Frame23.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame23.BorderSizePixel = 0
	 
	Frame23.BackgroundTransparency = 0.2
	 
	local UICorner21 = Instance.new("UICorner")
	 
	UICorner21.CornerRadius = UDim.new(1, 0)
	 
	UICorner21.Parent = Frame23
	 
	Frame23.Parent = Folder3
	 
	local tween21 = TweenService:Create(Frame23, TweenInfo.new(2.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.5, -38, -0.05, 0) })
	 
	tween21:Play()
	 
	task.delay(2.2, function(...)
		 
		Frame23:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame24 = Instance.new("Frame")
	 
	Frame24.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame24.Position = UDim2.new(0.14, 0, 1.1, 0)
	 
	Frame24.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame24.BorderSizePixel = 0
	 
	Frame24.BackgroundTransparency = 0.2
	 
	local UICorner22 = Instance.new("UICorner")
	 
	UICorner22.CornerRadius = UDim.new(1, 0)
	 
	UICorner22.Parent = Frame24
	 
	Frame24.Parent = Folder3
	 
	local tween22 = TweenService:Create(Frame24, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.14000000059604645, -36, -0.09, 0) })
	 
	tween22:Play()
	 
	task.delay(1.5, function(...)
		 
		Frame24:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame25 = Instance.new("Frame")
	 
	Frame25.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame25.Position = UDim2.new(0.9, 0, 1.1, 0)
	 
	Frame25.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame25.BorderSizePixel = 0
	 
	Frame25.BackgroundTransparency = 0.2
	 
	local UICorner23 = Instance.new("UICorner")
	 
	UICorner23.CornerRadius = UDim.new(1, 0)
	 
	UICorner23.Parent = Frame25
	 
	Frame25.Parent = Folder3
	 
	local tween23 = TweenService:Create(Frame25, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.89999997615814209, 38, 0.05, 0) })
	 
	tween23:Play()
	 
	task.delay(2, function(...)
		 
		Frame25:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame26 = Instance.new("Frame")
	 
	Frame26.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame26.Position = UDim2.new(0.8, 0, 1.1, 0)
	 
	Frame26.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame26.BorderSizePixel = 0
	 
	Frame26.BackgroundTransparency = 0.2
	 
	local UICorner24 = Instance.new("UICorner")
	 
	UICorner24.CornerRadius = UDim.new(1, 0)
	 
	UICorner24.Parent = Frame26
	 
	Frame26.Parent = Folder3
	 
	local tween24 = TweenService:Create(Frame26, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.80000001192092896, 8, 0.04, 0) })
	 
	tween24:Play()
	 
	task.delay(1.7, function(...)
		 
		Frame26:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame27 = Instance.new("Frame")
	 
	Frame27.Size = UDim2.new(0, 5, 0, 5)
	 
	Frame27.Position = UDim2.new(0.53, 0, 1.1, 0)
	 
	Frame27.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame27.BorderSizePixel = 0
	 
	Frame27.BackgroundTransparency = 0.2
	 
	local UICorner25 = Instance.new("UICorner")
	 
	UICorner25.CornerRadius = UDim.new(1, 0)
	 
	UICorner25.Parent = Frame27
	 
	Frame27.Parent = Folder3
	 
	local tween25 = TweenService:Create(Frame27, TweenInfo.new(2.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.52999997138977051, -36, 0.04, 0) })
	 
	tween25:Play()
	 
	task.delay(2.1, function(...)
		 
		Frame27:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame28 = Instance.new("Frame")
	 
	Frame28.Size = UDim2.new(0, 5, 0, 5)
	 
	Frame28.Position = UDim2.new(0.63, 0, 1.1, 0)
	 
	Frame28.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame28.BorderSizePixel = 0
	 
	Frame28.BackgroundTransparency = 0.2
	 
	local UICorner26 = Instance.new("UICorner")
	 
	UICorner26.CornerRadius = UDim.new(1, 0)
	 
	UICorner26.Parent = Frame28
	 
	Frame28.Parent = Folder3
	 
	local tween26 = TweenService:Create(Frame28, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.62999999523162842, 36, 0.29, 0) })
	 
	tween26:Play()
	 
	task.delay(2.5, function(...)
		 
		Frame28:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame29 = Instance.new("Frame")
	 
	Frame29.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame29.Position = UDim2.new(0.75, 0, 1.1, 0)
	 
	Frame29.BackgroundColor3 = Color3.fromRGB(255, 230, 50)
	 
	Frame29.BorderSizePixel = 0
	 
	Frame29.BackgroundTransparency = 0.2
	 
	local UICorner27 = Instance.new("UICorner")
	 
	UICorner27.CornerRadius = UDim.new(1, 0)
	 
	UICorner27.Parent = Frame29
	 
	Frame29.Parent = Folder3
	 
	local tween27 = TweenService:Create(Frame29, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.75, 23, 0.05, 0) })
	 
	tween27:Play()
	 
	task.delay(2, function(...)
		 
		Frame29:Destroy()
	end)
	 
	task.wait(0.2)
	 
	local Frame30 = Instance.new("Frame")
	 
	Frame30.Size = UDim2.new(0, 8, 0, 8)
	 
	Frame30.Position = UDim2.new(0.34, 0, 1.1, 0)
	 
	Frame30.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
	 
	Frame30.BorderSizePixel = 0
	 
	Frame30.BackgroundTransparency = 0.2
	 
	local UICorner28 = Instance.new("UICorner")
	 
	UICorner28.CornerRadius = UDim.new(1, 0)
	 
	UICorner28.Parent = Frame30
	 
	Frame30.Parent = Folder3
	 
	local tween28 = TweenService:Create(Frame30, TweenInfo.new(1.9, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 1, Position = UDim2.new(0.34000000357627869, 40, 0.03, 0) })
	 
	tween28:Play()
	 
	task.delay(1.9, function(...)
		 
		Frame30:Destroy()
	end)
	 
	task.wait(0.2)
	 
end)
 
local Frame31 = Instance.new("Frame")
 
Frame31.Size = UDim2.new(0, 580, 0, 320)
 
Frame31.Position = UDim2.new(0.5, -290, 0.5, -160)
 
Frame31.BackgroundTransparency = 1
 
Frame31.Parent = Frame2
 
local Frame32 = Instance.new("Frame")
 
Frame32.Size = UDim2.new(1, 10, 0, 120)
 
Frame32.Position = UDim2.new(0, -5, 0, -5)
 
Frame32.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
 
Frame32.BackgroundTransparency = 0.85
 
Frame32.BorderSizePixel = 0
 
Frame32.Parent = Frame31
 
local UICorner29 = Instance.new("UICorner")
 
UICorner29.CornerRadius = UDim.new(0, 12)
 
UICorner29.Parent = Frame32
 
local Frame33 = Instance.new("Frame")
 
Frame33.Size = UDim2.new(1, 0, 0, 110)
 
Frame33.Position = UDim2.new(0, 0, 0, 0)
 
Frame33.BackgroundColor3 = Color3.fromRGB(10, 0, 0)
 
Frame33.BorderColor3 = Color3.fromRGB(255, 30, 30)
 
Frame33.BorderSizePixel = 1.5
 
Frame33.BackgroundTransparency = 0.2
 
Frame33.Parent = Frame31
 
local UICorner30 = Instance.new("UICorner")
 
UICorner30.CornerRadius = UDim.new(0, 8)
 
UICorner30.Parent = Frame33
 
local UIGradient = Instance.new("UIGradient")
 
UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 20, 20)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(80, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 20, 20)) })
 
UIGradient.Parent = Frame33
 
local TextLabel2 = Instance.new("TextLabel")
 
TextLabel2.Size = UDim2.new(0.5, 0, 0, 70)
 
TextLabel2.Position = UDim2.new(0, 0, 0, 10)
 
TextLabel2.BackgroundTransparency = 1
 
TextLabel2.Font = Enum.Font.GothamBlack
 
TextLabel2.Text = ""
 
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
 
TextLabel2.TextSize = 42
 
TextLabel2.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel2.Parent = Frame33
 
local UIStroke = Instance.new("UIStroke")
 
UIStroke.Color = Color3.fromRGB(255, 50, 50)
 
UIStroke.Thickness = 2
 
UIStroke.Parent = TextLabel2
 
local TextLabel3 = Instance.new("TextLabel")
 
TextLabel3.Size = UDim2.new(0.5, 0, 0, 70)
 
TextLabel3.Position = UDim2.new(0.5, 0, 0, 10)
 
TextLabel3.BackgroundTransparency = 1
 
TextLabel3.Font = Enum.Font.GothamBlack
 
TextLabel3.Text = ""
 
TextLabel3.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextLabel3.TextSize = 42
 
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel3.Parent = Frame33
 
local UIStroke2 = Instance.new("UIStroke")
 
UIStroke2.Color = Color3.fromRGB(255, 255, 255)
 
UIStroke2.Thickness = 1
 
UIStroke2.Parent = TextLabel3
 
local TextLabel4 = Instance.new("TextLabel")
 
TextLabel4.Size = UDim2.new(1, 0, 0, 20)
 
TextLabel4.Position = UDim2.new(0, 0, 0, 75)
 
TextLabel4.BackgroundTransparency = 1
 
TextLabel4.Font = Enum.Font.Code
 
TextLabel4.Text = "discord.gg/sourceshubs"
 
TextLabel4.TextColor3 = Color3.fromRGB(255, 120, 120)
 
TextLabel4.TextSize = 13
 
TextLabel4.Parent = Frame33
 
local TextLabel5 = Instance.new("TextLabel")
 
TextLabel5.Size = UDim2.new(1, 0, 0, 30)
 
TextLabel5.Position = UDim2.new(0, 0, 0, 140)
 
TextLabel5.BackgroundTransparency = 1
 
TextLabel5.Font = Enum.Font.GothamMedium
 
TextLabel5.Text = "INITIALIZING SYSTEM..."
 
TextLabel5.TextColor3 = Color3.fromRGB(200, 200, 200)
 
TextLabel5.TextTransparency = 1
 
TextLabel5.TextSize = 15
 
TextLabel5.Parent = Frame31
 
task.spawn(function(...)
	 
	local tween29 = TweenService:Create(TextLabel5, TweenInfo.new(0.5), { TextTransparency = 0 })
	 
	tween29:Play()
	 
	task.wait(0.4)
	 
	TextLabel2.Text = "S"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	TextLabel2.Text = "SO"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	TextLabel2.Text = "SOU"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	TextLabel2.Text = "SOUR"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	TextLabel2.Text = "SOURC"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	TextLabel2.Text = "SOURCE"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	TextLabel2.Text = "SOURCES"
	 
	Sound2:Play()
	 
	task.wait(0.04)
	 
	task.wait(0.1)
	 
	TextLabel3.Text = "H"
	 
	Sound2:Play()
	 
	task.wait(0.05)
	 
	TextLabel3.Text = "HU"
	 
	Sound2:Play()
	 
	task.wait(0.05)
	 
	TextLabel3.Text = "HUB"
	 
	Sound2:Play()
	 
	task.wait(0.05)
	 
	TextLabel3.Text = "HUBS"
	 
	Sound2:Play()
	 
	task.wait(0.05)
	 
	Sound3:Play()
	 
	task.wait(0.4)
	 
	TextLabel5.Text = "BYPASSING SECURITY..."
	 
	task.wait(1.2)
	 
	TextLabel5.Text = "WELCOME, " .. string.upper(Players.LocalPlayer.Name)
	 
	task.wait(1.5)
	 
	local tween30 = TweenService:Create(Frame31, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Position = UDim2.new(0.5, 0, 0.4, 0), Size = UDim2.new(0, 0, 0, 0) })
	 
	tween30:Play()
	 
	local tween31 = TweenService:Create(Frame2, TweenInfo.new(0.6), { BackgroundTransparency = 1 })
	 
	tween31:Play()
	 
	local tween32 = TweenService:Create(TextLabel, TweenInfo.new(0.4), { TextTransparency = 1 })
	 
	tween32:Play()
	 
	task.wait(0.7)
	 
	ScreenGui2:Destroy()
	 
	Sound:Destroy()
	 
	Sound2:Destroy()
	 
	Sound3:Destroy()
end)
 
task.wait(0.1)
 
local UserInputService = game:GetService("UserInputService")
 
local Lighting = game:GetService("Lighting")
 
local TeleportService = game:GetService("TeleportService")
 
CoreGui:FindFirstChild("SourcesHubCore")
 
CoreGui.SourcesHubCore:Destroy()
 
task.spawn(function(...)
	 
	local players = Players:GetPlayers()
	 
	for i, v in ipairs(players) do
		 
		v.Character:FindFirstChild("Head")
		 
		local AboveHeadTag = v.Character.Head:FindFirstChild("AboveHeadTag")
		 
		AboveHeadTag:Destroy()
	end
end)
 
local ScreenGui3 = Instance.new("ScreenGui")
 
ScreenGui3.Name = "SourcesHubCore"
 
ScreenGui3.ResetOnSpawn = false
 
ScreenGui3.Parent = CoreGui
 
local Head = Players.LocalPlayer.Character:WaitForChild("Head", 5)
 
Head:FindFirstChild("AboveHeadTag")
 
Head.AboveHeadTag:Destroy()
 
local BillboardGui = Instance.new("BillboardGui")
 
BillboardGui.Name = "AboveHeadTag"
 
BillboardGui.Size = UDim2.new(0, 220, 0, 50)
 
BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
 
BillboardGui.AlwaysOnTop = true
 
BillboardGui.Parent = Head
 
local TextLabel6 = Instance.new("TextLabel")
 
TextLabel6.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel6.BackgroundTransparency = 1
 
TextLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
 
TextLabel6.TextStrokeTransparency = 0
 
TextLabel6.TextStrokeColor3 = Color3.fromRGB(120, 0, 0)
 
TextLabel6.Text = "discord.gg/sourceshubs"
 
TextLabel6.TextSize = 13
 
TextLabel6.Font = Enum.Font.SourceSansBold
 
TextLabel6.Parent = BillboardGui
 
Players.LocalPlayer.CharacterAdded:Connect(function(character)
	 
	local Head2 = character:WaitForChild("Head", 5)
	 
	Head2:FindFirstChild("AboveHeadTag")
	 
	Head2.AboveHeadTag:Destroy()
	 
	local BillboardGui2 = Instance.new("BillboardGui")
	 
	BillboardGui2.Name = "AboveHeadTag"
	 
	BillboardGui2.Size = UDim2.new(0, 220, 0, 50)
	 
	BillboardGui2.StudsOffset = Vector3.new(0, 2.5, 0)
	 
	BillboardGui2.AlwaysOnTop = true
	 
	BillboardGui2.Parent = Head2
	 
	local TextLabel231 = Instance.new("TextLabel")
	 
	TextLabel231.Size = UDim2.new(1, 0, 1, 0)
	 
	TextLabel231.BackgroundTransparency = 1
	 
	TextLabel231.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel231.TextStrokeTransparency = 0
	 
	TextLabel231.TextStrokeColor3 = Color3.fromRGB(120, 0, 0)
	 
	TextLabel231.Text = "discord.gg/sourceshubs"
	 
	TextLabel231.TextSize = 13
	 
	TextLabel231.Font = Enum.Font.SourceSansBold
	 
	TextLabel231.Parent = BillboardGui2
end)
 
 
local players2 = Players:GetPlayers()
 
for i2, v2 in ipairs(players2) do
	 
	v2.Character:FindFirstChild("SourcesHub_Highlight")
	 
	v2.CharacterAdded:Connect(function(character2)
		 
		character2:FindFirstChild("SourcesHub_Highlight")
	end)
end
 
Players.PlayerAdded:Connect(function(player)
	 
	player.Character:FindFirstChild("SourcesHub_Highlight")
	 
	player.CharacterAdded:Connect(function(character4)
		 
		character4:FindFirstChild("SourcesHub_Highlight")
	end)
end)
 
local result = settings()
 
result.Rendering.QualityLevel = Enum.QualityLevel.Level01
 
Lighting.GlobalShadows = false
 
Lighting.FogEnd = 9000000000
 
Lighting.Brightness = 1
 
local children = Lighting:GetChildren()
 
for i3, v3 in ipairs(children) do
	 
	v3.Enabled = false
end
 
local descendants = workspace:GetDescendants()
 
for i4, v4 in ipairs(descendants) do
	 
	v4.Material = Enum.Material.SmoothPlastic
	 
	v4.Reflectance = 0
end
 
workspace.DescendantAdded:Connect(function(descendant7)
	 
	task.wait()
	 
	descendant7.Material = Enum.Material.SmoothPlastic
	 
	descendant7.Reflectance = 0
end)
 
local Frame34 = Instance.new("Frame")
 
Frame34.Size = UDim2.new(0, 260, 0, 38)
 
Frame34.Position = UDim2.new(1, 10, 1, -55)
 
Frame34.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
 
Frame34.BackgroundTransparency = 0.1
 
Frame34.BorderSizePixel = 0
 
Frame34.Parent = ScreenGui3
 
local UICorner31 = Instance.new("UICorner")
 
UICorner31.CornerRadius = UDim.new(0, 8)
 
UICorner31.Parent = Frame34
 
local UIStroke3 = Instance.new("UIStroke")
 
UIStroke3.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke3.Thickness = 1.2
 
UIStroke3.Parent = Frame34
 
local TextLabel7 = Instance.new("TextLabel")
 
TextLabel7.Size = UDim2.new(1, -16, 1, 0)
 
TextLabel7.Position = UDim2.new(0, 8, 0, 0)
 
TextLabel7.BackgroundTransparency = 1
 
TextLabel7.Text = "Anti-Lag & ESP Activated"
 
TextLabel7.TextColor3 = Color3.fromRGB(240, 240, 240)
 
TextLabel7.TextSize = 13
 
TextLabel7.Font = Enum.Font.SourceSansBold
 
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel7.Parent = Frame34
 
local tween33 = TweenService:Create(Frame34, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
 
tween33:Play()
 
task.delay(2.5, function(...)
	 
	local tween34 = TweenService:Create(Frame34, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Position = UDim2.new(1, 10, 1, -55) })
	 
	tween34:Play()
	 
	tween34.Completed:Connect(function(playbackState)
		 
		Frame34:Destroy()
	end)
end)
 
local Frame35 = Instance.new("Frame")
 
Frame35.Name = "GlowFrame"
 
Frame35.Size = UDim2.new(0, 490, 0, 360)
 
Frame35.Position = UDim2.new(0.5, -245, 0.5, -180)
 
Frame35.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
 
Frame35.BackgroundTransparency = 0.65
 
Frame35.BorderSizePixel = 0
 
Frame35.Parent = ScreenGui3
 
local UICorner32 = Instance.new("UICorner")
 
UICorner32.CornerRadius = UDim.new(0, 14)
 
UICorner32.Parent = Frame35
 
local Frame36 = Instance.new("Frame")
 
Frame36.Name = "MainFrame"
 
Frame36.Size = UDim2.new(0, 482, 0, 352)
 
Frame36.Position = UDim2.new(0, 4, 0, 4)
 
Frame36.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
 
Frame36.BackgroundTransparency = 0.15
 
Frame36.BorderSizePixel = 0
 
Frame36.ClipsDescendants = true
 
Frame36.Parent = Frame35
 
local UICorner33 = Instance.new("UICorner")
 
UICorner33.CornerRadius = UDim.new(0, 12)
 
UICorner33.Parent = Frame36
 
local UIStroke4 = Instance.new("UIStroke")
 
UIStroke4.Color = Color3.fromRGB(140, 0, 0)
 
UIStroke4.Thickness = 1.5
 
UIStroke4.Parent = Frame36
 
local UIGradient2 = Instance.new("UIGradient")
 
UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 15)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(120, 5, 5)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 240, 240)), ColorSequenceKeypoint.new(0.75, Color3.fromRGB(40, 5, 5)), ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 15)) })
 
UIGradient2.Rotation = 45
 
UIGradient2.Parent = Frame36
 
local Frame37 = Instance.new("Frame")
 
Frame37.Name = "TopBar"
 
Frame37.Size = UDim2.new(1, 0, 0, 42)
 
Frame37.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame37.BackgroundTransparency = 0.2
 
Frame37.BorderSizePixel = 0
 
Frame37.Parent = Frame36
 
local UICorner34 = Instance.new("UICorner")
 
UICorner34.CornerRadius = UDim.new(0, 12)
 
UICorner34.Parent = Frame37
 
local TextLabel8 = Instance.new("TextLabel")
 
TextLabel8.Name = "TitleText"
 
TextLabel8.Size = UDim2.new(0, 195, 1, 0)
 
TextLabel8.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel8.BackgroundTransparency = 1
 
TextLabel8.RichText = true
 
TextLabel8.Text = "<font color=\"#8B0000\">Sources Hub Freemium</font> | <font color=\"#FFFFFF\">discord.gg/sourceshubs</font>"
 
TextLabel8.TextSize = 11
 
TextLabel8.Font = Enum.Font.SourceSansBold
 
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel8.Parent = Frame37
 
local UIGradient3 = Instance.new("UIGradient")
 
UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(139, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.75, Color3.fromRGB(139, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })
 
UIGradient3.Parent = TextLabel8
 
RunService.RenderStepped:Connect(function(deltaTime)
	 
	UIGradient2.Rotation = (45 + (math.sin(((0 + (deltaTime * 1.2)) % 6.2831853071795862)) * 45))
	 
	Frame35.BackgroundTransparency = (0.6 + (math.sin((((0 + (deltaTime * 1.2)) % 6.2831853071795862) * 2)) * 0.1))
	 
	UIGradient3.Rotation = ((0 + (deltaTime * 120)) % 360)
end)
 
local Frame38 = Instance.new("Frame")
 
Frame38.Size = UDim2.new(0, 215, 1, 0)
 
Frame38.Position = UDim2.new(0, 208, 0, 0)
 
Frame38.BackgroundTransparency = 1
 
Frame38.Parent = Frame37
 
local TextLabel9 = Instance.new("TextLabel")
 
TextLabel9.Size = UDim2.new(0, 12, 1, 0)
 
TextLabel9.Position = UDim2.new(0, 0, 0, 0)
 
TextLabel9.BackgroundTransparency = 1
 
TextLabel9.Text = "●"
 
TextLabel9.TextColor3 = Color3.fromRGB(50, 255, 100)
 
TextLabel9.TextSize = 11
 
TextLabel9.Font = Enum.Font.SourceSansBold
 
TextLabel9.Parent = Frame38
 
task.spawn(function(...)
	 
	TextLabel9.TextTransparency = 0.1
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.15000000000000002
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.2
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.25
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.3
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.35
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.39999999999999997
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.44999999999999996
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.49999999999999994
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.54999999999999993
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.6
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.65
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.70000000000000007
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.75000000000000011
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.80000000000000016
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.8500000000000002
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.9
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.85
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.79999999999999993
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.74999999999999989
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.69999999999999984
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.6499999999999998
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.59999999999999976
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.54999999999999971
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.49999999999999972
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.44999999999999973
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.39999999999999974
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.34999999999999976
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.29999999999999977
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.24999999999999978
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.19999999999999979
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.1499999999999998
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.1
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.15000000000000002
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.2
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.25
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.3
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.35
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.39999999999999997
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.44999999999999996
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.49999999999999994
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.54999999999999993
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.6
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.65
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.70000000000000007
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.75000000000000011
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.80000000000000016
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.8500000000000002
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.9
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.85
	 
	task.wait(0.03)
	 
	TextLabel9.TextTransparency = 0.79999999999999993
	 
	task.wait(0.03)
	 
end)
 
local TextLabel10 = Instance.new("TextLabel")
 
TextLabel10.Size = UDim2.new(0, 64, 1, 0)
 
TextLabel10.Position = UDim2.new(0, 13, 0, 0)
 
TextLabel10.BackgroundTransparency = 1
 
TextLabel10.Text = "SCRIPTS"
 
TextLabel10.TextColor3 = Color3.fromRGB(255, 75, 75)
 
TextLabel10.TextSize = 9
 
TextLabel10.Font = Enum.Font.SourceSansBold
 
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel10.Parent = Frame38
 
local TextLabel11 = Instance.new("TextLabel")
 
TextLabel11.Size = UDim2.new(1, -78, 1, 0)
 
TextLabel11.Position = UDim2.new(0, 77, 0, 0)
 
TextLabel11.BackgroundTransparency = 1
 
TextLabel11.RichText = true
 
TextLabel11.Text = "FPS: <font color=\"rgb(50,255,100)\">--</font> | PING: <font color=\"rgb(50,255,100)\">--</font>"
 
TextLabel11.TextSize = 9
 
TextLabel11.Font = Enum.Font.SourceSansBold
 
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel11.Parent = Frame38
 
task.spawn(function(...)
	 
	RunService.RenderStepped:Connect(function(deltaTime2)
	end)
	 
	task.wait(0.5)
	 
	Players.LocalPlayer:GetNetworkPing()
	 
end)
 
local TextButton = Instance.new("TextButton")
 
TextButton.Name = "MinimizeButton"
 
TextButton.Size = UDim2.new(0, 26, 0, 26)
 
TextButton.Position = UDim2.new(1, -32, 0.5, -13)
 
TextButton.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton.Text = "_"
 
TextButton.TextColor3 = Color3.fromRGB(255, 70, 70)
 
TextButton.TextSize = 14
 
TextButton.Font = Enum.Font.SourceSansBold
 
TextButton.Parent = Frame37
 
local UICorner35 = Instance.new("UICorner")
 
UICorner35.CornerRadius = UDim.new(0, 6)
 
UICorner35.Parent = TextButton
 
local ScrollingFrame = Instance.new("ScrollingFrame")
 
ScrollingFrame.Name = "CategoryBar"
 
ScrollingFrame.Size = UDim2.new(1, -16, 0, 32)
 
ScrollingFrame.Position = UDim2.new(0, 8, 0, 48)
 
ScrollingFrame.BackgroundTransparency = 1
 
ScrollingFrame.CanvasSize = UDim2.new(0, 360, 0, 0)
 
ScrollingFrame.ScrollBarThickness = 0
 
ScrollingFrame.Parent = Frame36
 
local UIListLayout = Instance.new("UIListLayout")
 
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
 
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout.Padding = UDim.new(0, 6)
 
UIListLayout.Parent = ScrollingFrame
 
local Folder4 = Instance.new("Folder")
 
Folder4.Name = "Pages"
 
Folder4.Parent = Frame36
 
local TextButton2 = Instance.new("TextButton")
 
TextButton2.Name = "ScriptsTab"
 
TextButton2.LayoutOrder = 1
 
TextButton2.Size = UDim2.new(0, 80, 1, 0)
 
TextButton2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton2.Text = "SCRIPTS"
 
TextButton2.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton2.TextSize = 9
 
TextButton2.Font = Enum.Font.SourceSansBold
 
TextButton2.Parent = ScrollingFrame
 
local UICorner36 = Instance.new("UICorner")
 
UICorner36.CornerRadius = UDim.new(0, 6)
 
UICorner36.Parent = TextButton2
 
local UIStroke5 = Instance.new("UIStroke")
 
UIStroke5.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke5.Thickness = 1
 
UIStroke5.Parent = TextButton2
 
local ScrollingFrame2 = Instance.new("ScrollingFrame")
 
ScrollingFrame2.Name = "ScriptsPage"
 
ScrollingFrame2.Size = UDim2.new(1, -16, 1, -94)
 
ScrollingFrame2.Position = UDim2.new(0, 8, 0, 88)
 
ScrollingFrame2.BackgroundTransparency = 1
 
ScrollingFrame2.BorderSizePixel = 0
 
ScrollingFrame2.ScrollBarThickness = 4
 
ScrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(140, 0, 0)
 
ScrollingFrame2.Visible = false
 
ScrollingFrame2.Parent = Folder4
 
local UIListLayout2 = Instance.new("UIListLayout")
 
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout2.Padding = UDim.new(0, 8)
 
UIListLayout2.Parent = ScrollingFrame2
 
local changedSignal = UIListLayout2:GetPropertyChangedSignal("AbsoluteContentSize")
 
changedSignal:Connect(function(arg)
	 
	ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 10)
end)
 
TextButton2.MouseButton1Click:Connect(function()
	 
	TextButton3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton3.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke6.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame3.Visible = false
	 
	TextButton2.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton2.TextColor3 = Color3.fromRGB(255, 60, 60)
	 
	UIStroke5.Color = Color3.fromRGB(140, 0, 0)
	 
	ScrollingFrame2.Visible = true
	 
	TextButton5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton5.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke8.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame5.Visible = false
	 
	TextButton6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton6.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke9.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame6.Visible = false
	 
	TextButton4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton4.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke7.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame4.Visible = false
end)
 
local TextButton3 = Instance.new("TextButton")
 
TextButton3.Name = "Server FinderTab"
 
TextButton3.LayoutOrder = 2
 
TextButton3.Size = UDim2.new(0, 80, 1, 0)
 
TextButton3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton3.Text = "SERVER FINDER"
 
TextButton3.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton3.TextSize = 9
 
TextButton3.Font = Enum.Font.SourceSansBold
 
TextButton3.Parent = ScrollingFrame
 
local UICorner37 = Instance.new("UICorner")
 
UICorner37.CornerRadius = UDim.new(0, 6)
 
UICorner37.Parent = TextButton3
 
local UIStroke6 = Instance.new("UIStroke")
 
UIStroke6.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke6.Thickness = 1
 
UIStroke6.Parent = TextButton3
 
local ScrollingFrame3 = Instance.new("ScrollingFrame")
 
ScrollingFrame3.Name = "Server FinderPage"
 
ScrollingFrame3.Size = UDim2.new(1, -16, 1, -94)
 
ScrollingFrame3.Position = UDim2.new(0, 8, 0, 88)
 
ScrollingFrame3.BackgroundTransparency = 1
 
ScrollingFrame3.BorderSizePixel = 0
 
ScrollingFrame3.ScrollBarThickness = 4
 
ScrollingFrame3.ScrollBarImageColor3 = Color3.fromRGB(140, 0, 0)
 
ScrollingFrame3.Visible = false
 
ScrollingFrame3.Parent = Folder4
 
local UIListLayout3 = Instance.new("UIListLayout")
 
UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout3.Padding = UDim.new(0, 8)
 
UIListLayout3.Parent = ScrollingFrame3
 
local changedSignal2 = UIListLayout3:GetPropertyChangedSignal("AbsoluteContentSize")
 
changedSignal2:Connect(function(arg2)
	 
	ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 10)
end)
 
TextButton3.MouseButton1Click:Connect(function()
	 
	TextButton3.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton3.TextColor3 = Color3.fromRGB(255, 60, 60)
	 
	UIStroke6.Color = Color3.fromRGB(140, 0, 0)
	 
	ScrollingFrame3.Visible = true
	 
	TextButton2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton2.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke5.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame2.Visible = false
	 
	TextButton5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton5.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke8.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame5.Visible = false
	 
	TextButton6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton6.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke9.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame6.Visible = false
	 
	TextButton4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton4.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke7.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame4.Visible = false
end)
 
local TextButton4 = Instance.new("TextButton")
 
TextButton4.Name = "ShaderTab"
 
TextButton4.LayoutOrder = 3
 
TextButton4.Size = UDim2.new(0, 80, 1, 0)
 
TextButton4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton4.Text = "SHADER"
 
TextButton4.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton4.TextSize = 9
 
TextButton4.Font = Enum.Font.SourceSansBold
 
TextButton4.Parent = ScrollingFrame
 
local UICorner38 = Instance.new("UICorner")
 
UICorner38.CornerRadius = UDim.new(0, 6)
 
UICorner38.Parent = TextButton4
 
local UIStroke7 = Instance.new("UIStroke")
 
UIStroke7.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke7.Thickness = 1
 
UIStroke7.Parent = TextButton4
 
local ScrollingFrame4 = Instance.new("ScrollingFrame")
 
ScrollingFrame4.Name = "ShaderPage"
 
ScrollingFrame4.Size = UDim2.new(1, -16, 1, -94)
 
ScrollingFrame4.Position = UDim2.new(0, 8, 0, 88)
 
ScrollingFrame4.BackgroundTransparency = 1
 
ScrollingFrame4.BorderSizePixel = 0
 
ScrollingFrame4.ScrollBarThickness = 4
 
ScrollingFrame4.ScrollBarImageColor3 = Color3.fromRGB(140, 0, 0)
 
ScrollingFrame4.Visible = false
 
ScrollingFrame4.Parent = Folder4
 
local UIListLayout4 = Instance.new("UIListLayout")
 
UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout4.Padding = UDim.new(0, 8)
 
UIListLayout4.Parent = ScrollingFrame4
 
local changedSignal3 = UIListLayout4:GetPropertyChangedSignal("AbsoluteContentSize")
 
changedSignal3:Connect(function(arg3)
	 
	ScrollingFrame4.CanvasSize = UDim2.new(0, 0, 0, 10)
end)
 
TextButton4.MouseButton1Click:Connect(function()
	 
	TextButton3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton3.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke6.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame3.Visible = false
	 
	TextButton2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton2.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke5.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame2.Visible = false
	 
	TextButton5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton5.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke8.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame5.Visible = false
	 
	TextButton6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton6.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke9.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame6.Visible = false
	 
	TextButton4.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton4.TextColor3 = Color3.fromRGB(255, 60, 60)
	 
	UIStroke7.Color = Color3.fromRGB(140, 0, 0)
	 
	ScrollingFrame4.Visible = true
end)
 
local TextButton5 = Instance.new("TextButton")
 
TextButton5.Name = "AnimationsTab"
 
TextButton5.LayoutOrder = 4
 
TextButton5.Size = UDim2.new(0, 80, 1, 0)
 
TextButton5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton5.Text = "ANIMATIONS"
 
TextButton5.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton5.TextSize = 9
 
TextButton5.Font = Enum.Font.SourceSansBold
 
TextButton5.Parent = ScrollingFrame
 
local UICorner39 = Instance.new("UICorner")
 
UICorner39.CornerRadius = UDim.new(0, 6)
 
UICorner39.Parent = TextButton5
 
local UIStroke8 = Instance.new("UIStroke")
 
UIStroke8.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke8.Thickness = 1
 
UIStroke8.Parent = TextButton5
 
local ScrollingFrame5 = Instance.new("ScrollingFrame")
 
ScrollingFrame5.Name = "AnimationsPage"
 
ScrollingFrame5.Size = UDim2.new(1, -16, 1, -94)
 
ScrollingFrame5.Position = UDim2.new(0, 8, 0, 88)
 
ScrollingFrame5.BackgroundTransparency = 1
 
ScrollingFrame5.BorderSizePixel = 0
 
ScrollingFrame5.ScrollBarThickness = 4
 
ScrollingFrame5.ScrollBarImageColor3 = Color3.fromRGB(140, 0, 0)
 
ScrollingFrame5.Visible = false
 
ScrollingFrame5.Parent = Folder4
 
local UIListLayout5 = Instance.new("UIListLayout")
 
UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout5.Padding = UDim.new(0, 8)
 
UIListLayout5.Parent = ScrollingFrame5
 
local changedSignal4 = UIListLayout5:GetPropertyChangedSignal("AbsoluteContentSize")
 
changedSignal4:Connect(function(arg4)
	 
	ScrollingFrame5.CanvasSize = UDim2.new(0, 0, 0, 10)
end)
 
TextButton5.MouseButton1Click:Connect(function()
	 
	TextButton3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton3.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke6.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame3.Visible = false
	 
	TextButton2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton2.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke5.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame2.Visible = false
	 
	TextButton5.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton5.TextColor3 = Color3.fromRGB(255, 60, 60)
	 
	UIStroke8.Color = Color3.fromRGB(140, 0, 0)
	 
	ScrollingFrame5.Visible = true
	 
	TextButton6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton6.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke9.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame6.Visible = false
	 
	TextButton4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton4.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke7.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame4.Visible = false
end)
 
local TextButton6 = Instance.new("TextButton")
 
TextButton6.Name = "SettingsTab"
 
TextButton6.LayoutOrder = 5
 
TextButton6.Size = UDim2.new(0, 80, 1, 0)
 
TextButton6.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton6.Text = "SETTINGS"
 
TextButton6.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton6.TextSize = 9
 
TextButton6.Font = Enum.Font.SourceSansBold
 
TextButton6.Parent = ScrollingFrame
 
local UICorner40 = Instance.new("UICorner")
 
UICorner40.CornerRadius = UDim.new(0, 6)
 
UICorner40.Parent = TextButton6
 
local UIStroke9 = Instance.new("UIStroke")
 
UIStroke9.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke9.Thickness = 1
 
UIStroke9.Parent = TextButton6
 
local ScrollingFrame6 = Instance.new("ScrollingFrame")
 
ScrollingFrame6.Name = "SettingsPage"
 
ScrollingFrame6.Size = UDim2.new(1, -16, 1, -94)
 
ScrollingFrame6.Position = UDim2.new(0, 8, 0, 88)
 
ScrollingFrame6.BackgroundTransparency = 1
 
ScrollingFrame6.BorderSizePixel = 0
 
ScrollingFrame6.ScrollBarThickness = 4
 
ScrollingFrame6.ScrollBarImageColor3 = Color3.fromRGB(140, 0, 0)
 
ScrollingFrame6.Visible = false
 
ScrollingFrame6.Parent = Folder4
 
local UIListLayout6 = Instance.new("UIListLayout")
 
UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout6.Padding = UDim.new(0, 8)
 
UIListLayout6.Parent = ScrollingFrame6
 
local changedSignal5 = UIListLayout6:GetPropertyChangedSignal("AbsoluteContentSize")
 
changedSignal5:Connect(function(arg5)
	 
	ScrollingFrame6.CanvasSize = UDim2.new(0, 0, 0, 10)
end)
 
TextButton6.MouseButton1Click:Connect(function()
	 
	TextButton3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton3.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke6.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame3.Visible = false
	 
	TextButton2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton2.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke5.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame2.Visible = false
	 
	TextButton5.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton5.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke8.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame5.Visible = false
	 
	TextButton6.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton6.TextColor3 = Color3.fromRGB(255, 60, 60)
	 
	UIStroke9.Color = Color3.fromRGB(140, 0, 0)
	 
	ScrollingFrame6.Visible = true
	 
	TextButton4.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton4.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke7.Color = Color3.fromRGB(45, 45, 45)
	 
	ScrollingFrame4.Visible = false
end)
 
TextButton2.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
 
TextButton2.TextColor3 = Color3.fromRGB(255, 60, 60)
 
UIStroke5.Color = Color3.fromRGB(140, 0, 0)
 
ScrollingFrame2.Visible = true
 
TextLabel10.Text = "64 SCRIPTS"
 
local Frame39 = Instance.new("Frame")
 
Frame39.Name = "FilterContainer"
 
Frame39.Size = UDim2.new(1, -6, 0, 30)
 
Frame39.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame39.BackgroundTransparency = 0.2
 
Frame39.Parent = ScrollingFrame2
 
local UICorner41 = Instance.new("UICorner")
 
UICorner41.CornerRadius = UDim.new(0, 6)
 
UICorner41.Parent = Frame39
 
local UIListLayout7 = Instance.new("UIListLayout")
 
UIListLayout7.FillDirection = Enum.FillDirection.Horizontal
 
UIListLayout7.HorizontalAlignment = Enum.HorizontalAlignment.Center
 
UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout7.Padding = UDim.new(0, 6)
 
UIListLayout7.Parent = Frame39
 
local TextButton7 = Instance.new("TextButton")
 
TextButton7.Name = "ALLFilterBtn"
 
TextButton7.LayoutOrder = 1
 
TextButton7.Size = UDim2.new(0.3, -4, 0, 24)
 
TextButton7.Position = UDim2.new(0, 0, 0, 3)
 
TextButton7.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton7.Text = "ALL"
 
TextButton7.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton7.TextSize = 11
 
TextButton7.Font = Enum.Font.SourceSansBold
 
TextButton7.Parent = Frame39
 
local UICorner42 = Instance.new("UICorner")
 
UICorner42.CornerRadius = UDim.new(0, 4)
 
UICorner42.Parent = TextButton7
 
local UIStroke10 = Instance.new("UIStroke")
 
UIStroke10.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke10.Thickness = 1
 
UIStroke10.Parent = TextButton7
 
local TextButton8 = Instance.new("TextButton")
 
TextButton8.Name = "KEYFilterBtn"
 
TextButton8.LayoutOrder = 2
 
TextButton8.Size = UDim2.new(0.3, -4, 0, 24)
 
TextButton8.Position = UDim2.new(0, 0, 0, 3)
 
TextButton8.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton8.Text = "KEY"
 
TextButton8.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton8.TextSize = 11
 
TextButton8.Font = Enum.Font.SourceSansBold
 
TextButton8.Parent = Frame39
 
local UICorner43 = Instance.new("UICorner")
 
UICorner43.CornerRadius = UDim.new(0, 4)
 
UICorner43.Parent = TextButton8
 
local UIStroke11 = Instance.new("UIStroke")
 
UIStroke11.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke11.Thickness = 1
 
UIStroke11.Parent = TextButton8
 
local TextButton9 = Instance.new("TextButton")
 
TextButton9.Name = "KEYLESSFilterBtn"
 
TextButton9.LayoutOrder = 3
 
TextButton9.Size = UDim2.new(0.3, -4, 0, 24)
 
TextButton9.Position = UDim2.new(0, 0, 0, 3)
 
TextButton9.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton9.Text = "KEYLESS"
 
TextButton9.TextColor3 = Color3.fromRGB(160, 160, 160)
 
TextButton9.TextSize = 11
 
TextButton9.Font = Enum.Font.SourceSansBold
 
TextButton9.Parent = Frame39
 
local UICorner44 = Instance.new("UICorner")
 
UICorner44.CornerRadius = UDim.new(0, 4)
 
UICorner44.Parent = TextButton9
 
local UIStroke12 = Instance.new("UIStroke")
 
UIStroke12.Color = Color3.fromRGB(45, 45, 45)
 
UIStroke12.Thickness = 1
 
UIStroke12.Parent = TextButton9
 
TextButton7.MouseButton1Click:Connect(function()
	 
	TextButton7.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton7.TextColor3 = Color3.fromRGB(255, 60, 60)
	 
	UIStroke10.Color = Color3.fromRGB(140, 0, 0)
	 
	TextButton8.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton8.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke11.Color = Color3.fromRGB(45, 45, 45)
	 
	TextButton9.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton9.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke12.Color = Color3.fromRGB(45, 45, 45)
	 
	Frame40.Visible = true
	 
	Frame42.Visible = true
	 
	Frame44.Visible = true
	 
	Frame46.Visible = true
	 
	Frame48.Visible = true
	 
	Frame50.Visible = true
	 
	Frame52.Visible = true
	 
	Frame54.Visible = true
	 
	Frame56.Visible = true
	 
	Frame58.Visible = true
	 
	Frame60.Visible = true
	 
	Frame62.Visible = true
	 
	Frame64.Visible = true
	 
	Frame66.Visible = true
	 
	Frame68.Visible = true
	 
	Frame70.Visible = true
	 
	Frame72.Visible = true
	 
	Frame74.Visible = true
	 
	Frame76.Visible = true
	 
	Frame78.Visible = true
	 
	Frame80.Visible = true
	 
	Frame82.Visible = true
	 
	Frame84.Visible = true
	 
	Frame86.Visible = true
	 
	Frame88.Visible = true
	 
	Frame90.Visible = true
	 
	Frame92.Visible = true
	 
	Frame94.Visible = true
	 
	Frame96.Visible = true
	 
	Frame98.Visible = true
	 
	Frame100.Visible = true
	 
	Frame102.Visible = true
	 
	Frame104.Visible = true
	 
	Frame106.Visible = true
	 
	Frame108.Visible = true
	 
	Frame110.Visible = true
	 
	Frame112.Visible = true
	 
	Frame114.Visible = true
	 
	Frame116.Visible = true
	 
	Frame118.Visible = true
	 
	Frame120.Visible = true
	 
	Frame122.Visible = true
	 
	Frame124.Visible = true
	 
	Frame126.Visible = true
	 
	Frame128.Visible = true
	 
	Frame130.Visible = true
	 
	Frame132.Visible = true
	 
	Frame134.Visible = true
	 
	Frame136.Visible = true
	 
	Frame138.Visible = true
	 
	Frame140.Visible = true
	 
	Frame142.Visible = true
	 
	Frame144.Visible = true
	 
	Frame146.Visible = true
	 
	Frame148.Visible = true
	 
	Frame150.Visible = true
	 
	Frame152.Visible = true
	 
	Frame154.Visible = true
	 
	Frame156.Visible = true
	 
	Frame158.Visible = true
	 
	Frame160.Visible = true
	 
	Frame162.Visible = true
	 
	Frame164.Visible = true
	 
	Frame166.Visible = true
end)
 
TextButton8.MouseButton1Click:Connect(function()
	 
	TextButton7.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton7.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke10.Color = Color3.fromRGB(45, 45, 45)
	 
	TextButton8.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton8.TextColor3 = Color3.fromRGB(255, 70, 70)
	 
	UIStroke11.Color = Color3.fromRGB(140, 0, 0)
	 
	TextButton9.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton9.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke12.Color = Color3.fromRGB(45, 45, 45)
	 
	Frame40.Visible = true
	 
	Frame42.Visible = true
	 
	Frame44.Visible = false
	 
	Frame46.Visible = true
	 
	Frame48.Visible = false
	 
	Frame50.Visible = true
	 
	Frame52.Visible = true
	 
	Frame54.Visible = true
	 
	Frame56.Visible = false
	 
	Frame58.Visible = true
	 
	Frame60.Visible = false
	 
	Frame62.Visible = false
	 
	Frame64.Visible = false
	 
	Frame66.Visible = true
	 
	Frame68.Visible = true
	 
	Frame70.Visible = true
	 
	Frame72.Visible = false
	 
	Frame74.Visible = true
	 
	Frame76.Visible = true
	 
	Frame78.Visible = true
	 
	Frame80.Visible = false
	 
	Frame82.Visible = true
	 
	Frame84.Visible = true
	 
	Frame86.Visible = true
	 
	Frame88.Visible = false
	 
	Frame90.Visible = false
	 
	Frame92.Visible = false
	 
	Frame94.Visible = true
	 
	Frame96.Visible = false
	 
	Frame98.Visible = false
	 
	Frame100.Visible = true
	 
	Frame102.Visible = true
	 
	Frame104.Visible = true
	 
	Frame106.Visible = true
	 
	Frame108.Visible = false
	 
	Frame110.Visible = true
	 
	Frame112.Visible = true
	 
	Frame114.Visible = true
	 
	Frame116.Visible = false
	 
	Frame118.Visible = true
	 
	Frame120.Visible = true
	 
	Frame122.Visible = false
	 
	Frame124.Visible = false
	 
	Frame126.Visible = true
	 
	Frame128.Visible = true
	 
	Frame130.Visible = true
	 
	Frame132.Visible = false
	 
	Frame134.Visible = false
	 
	Frame136.Visible = true
	 
	Frame138.Visible = true
	 
	Frame140.Visible = true
	 
	Frame142.Visible = true
	 
	Frame144.Visible = false
	 
	Frame146.Visible = false
	 
	Frame148.Visible = false
	 
	Frame150.Visible = true
	 
	Frame152.Visible = false
	 
	Frame154.Visible = true
	 
	Frame156.Visible = true
	 
	Frame158.Visible = true
	 
	Frame160.Visible = true
	 
	Frame162.Visible = true
	 
	Frame164.Visible = true
	 
	Frame166.Visible = true
end)
 
TextButton9.MouseButton1Click:Connect(function()
	 
	TextButton7.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton7.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke10.Color = Color3.fromRGB(45, 45, 45)
	 
	TextButton8.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	 
	TextButton8.TextColor3 = Color3.fromRGB(160, 160, 160)
	 
	UIStroke11.Color = Color3.fromRGB(45, 45, 45)
	 
	TextButton9.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
	 
	TextButton9.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	UIStroke12.Color = Color3.fromRGB(140, 0, 0)
	 
	Frame40.Visible = false
	 
	Frame42.Visible = false
	 
	Frame44.Visible = true
	 
	Frame46.Visible = false
	 
	Frame48.Visible = true
	 
	Frame50.Visible = false
	 
	Frame52.Visible = false
	 
	Frame54.Visible = false
	 
	Frame56.Visible = true
	 
	Frame58.Visible = false
	 
	Frame60.Visible = true
	 
	Frame62.Visible = true
	 
	Frame64.Visible = true
	 
	Frame66.Visible = false
	 
	Frame68.Visible = false
	 
	Frame70.Visible = false
	 
	Frame72.Visible = true
	 
	Frame74.Visible = false
	 
	Frame76.Visible = false
	 
	Frame78.Visible = false
	 
	Frame80.Visible = true
	 
	Frame82.Visible = false
	 
	Frame84.Visible = false
	 
	Frame86.Visible = false
	 
	Frame88.Visible = true
	 
	Frame90.Visible = true
	 
	Frame92.Visible = true
	 
	Frame94.Visible = false
	 
	Frame96.Visible = true
	 
	Frame98.Visible = true
	 
	Frame100.Visible = false
	 
	Frame102.Visible = false
	 
	Frame104.Visible = false
	 
	Frame106.Visible = false
	 
	Frame108.Visible = true
	 
	Frame110.Visible = false
	 
	Frame112.Visible = false
	 
	Frame114.Visible = false
	 
	Frame116.Visible = true
	 
	Frame118.Visible = false
	 
	Frame120.Visible = false
	 
	Frame122.Visible = true
	 
	Frame124.Visible = true
	 
	Frame126.Visible = false
	 
	Frame128.Visible = false
	 
	Frame130.Visible = false
	 
	Frame132.Visible = true
	 
	Frame134.Visible = true
	 
	Frame136.Visible = false
	 
	Frame138.Visible = false
	 
	Frame140.Visible = false
	 
	Frame142.Visible = false
	 
	Frame144.Visible = true
	 
	Frame146.Visible = true
	 
	Frame148.Visible = true
	 
	Frame150.Visible = false
	 
	Frame152.Visible = true
	 
	Frame154.Visible = false
	 
	Frame156.Visible = false
	 
	Frame158.Visible = false
	 
	Frame160.Visible = false
	 
	Frame162.Visible = false
	 
	Frame164.Visible = false
	 
	Frame166.Visible = false
end)
 
TextButton7.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
 
TextButton7.TextColor3 = Color3.fromRGB(255, 60, 60)
 
UIStroke10.Color = Color3.fromRGB(140, 0, 0)
 
TextButton8.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton8.TextColor3 = Color3.fromRGB(160, 160, 160)
 
UIStroke11.Color = Color3.fromRGB(45, 45, 45)
 
TextButton9.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
TextButton9.TextColor3 = Color3.fromRGB(160, 160, 160)
 
UIStroke12.Color = Color3.fromRGB(45, 45, 45)
 
local Frame40 = Instance.new("Frame")
 
Frame40.Name = "AIRFLOW HUB"
 
Frame40.LayoutOrder = 2
 
Frame40.Size = UDim2.new(1, -6, 0, 38)
 
Frame40.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame40.BackgroundTransparency = 0.2
 
Frame40.Parent = ScrollingFrame2
 
local UICorner45 = Instance.new("UICorner")
 
UICorner45.CornerRadius = UDim.new(0, 6)
 
UICorner45.Parent = Frame40
 
local UIStroke13 = Instance.new("UIStroke")
 
UIStroke13.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke13.Thickness = 1
 
UIStroke13.Parent = Frame40
 
local TextLabel12 = Instance.new("TextLabel")
 
TextLabel12.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel12.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel12.BackgroundTransparency = 1
 
TextLabel12.Text = "AIRFLOW HUB"
 
TextLabel12.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel12.TextSize = 12
 
TextLabel12.Font = Enum.Font.SourceSansBold
 
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel12.Parent = Frame40
 
local Frame41 = Instance.new("Frame")
 
Frame41.Size = UDim2.new(0, 75, 0, 22)
 
Frame41.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame41.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame41.BorderSizePixel = 0
 
Frame41.Parent = Frame40
 
local UICorner46 = Instance.new("UICorner")
 
UICorner46.CornerRadius = UDim.new(0, 4)
 
UICorner46.Parent = Frame41
 
local UIStroke14 = Instance.new("UIStroke")
 
UIStroke14.Thickness = 1
 
UIStroke14.Parent = Frame41
 
local TextLabel13 = Instance.new("TextLabel")
 
TextLabel13.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel13.BackgroundTransparency = 1
 
TextLabel13.Text = "KEY"
 
TextLabel13.TextSize = 9
 
TextLabel13.Font = Enum.Font.SourceSansBold
 
TextLabel13.Parent = Frame41
 
Frame41.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke14.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel13.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton10 = Instance.new("TextButton")
 
TextButton10.Size = UDim2.new(0, 80, 0, 26)
 
TextButton10.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton10.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton10.Text = "EXECUTE"
 
TextButton10.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton10.TextSize = 11
 
TextButton10.Font = Enum.Font.SourceSansBold
 
TextButton10.Parent = Frame40
 
local UICorner47 = Instance.new("UICorner")
 
UICorner47.CornerRadius = UDim.new(0, 6)
 
UICorner47.Parent = TextButton10
 
local UIStroke15 = Instance.new("UIStroke")
 
UIStroke15.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke15.Thickness = 1
 
UIStroke15.Parent = TextButton10
 
TextButton10.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response = game:HttpGet("https://airflowscript.com/loader")
		 
		loadstring(response)()
	end)
	 
	local Frame258 = Instance.new("Frame")
	 
	Frame258.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame258.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame258.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame258.BackgroundTransparency = 0.1
	 
	Frame258.BorderSizePixel = 0
	 
	Frame258.Parent = ScreenGui3
	 
	local UICorner417 = Instance.new("UICorner")
	 
	UICorner417.CornerRadius = UDim.new(0, 8)
	 
	UICorner417.Parent = Frame258
	 
	local UIStroke385 = Instance.new("UIStroke")
	 
	UIStroke385.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke385.Thickness = 1.2
	 
	UIStroke385.Parent = Frame258
	 
	local TextLabel232 = Instance.new("TextLabel")
	 
	TextLabel232.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel232.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel232.BackgroundTransparency = 1
	 
	TextLabel232.Text = "Executed AIRFLOW HUB"
	 
	TextLabel232.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel232.TextSize = 13
	 
	TextLabel232.Font = Enum.Font.SourceSansBold
	 
	TextLabel232.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel232.Parent = Frame258
	 
	local tween35 = TweenService:Create(Frame258, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween35:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton10.Text = "LOADED"
	 
	TextButton10.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton10.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke15.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame42 = Instance.new("Frame")
 
Frame42.Name = "AJJANS HUB"
 
Frame42.LayoutOrder = 3
 
Frame42.Size = UDim2.new(1, -6, 0, 38)
 
Frame42.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame42.BackgroundTransparency = 0.2
 
Frame42.Parent = ScrollingFrame2
 
local UICorner48 = Instance.new("UICorner")
 
UICorner48.CornerRadius = UDim.new(0, 6)
 
UICorner48.Parent = Frame42
 
local UIStroke16 = Instance.new("UIStroke")
 
UIStroke16.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke16.Thickness = 1
 
UIStroke16.Parent = Frame42
 
local TextLabel14 = Instance.new("TextLabel")
 
TextLabel14.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel14.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel14.BackgroundTransparency = 1
 
TextLabel14.Text = "AJJANS HUB"
 
TextLabel14.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel14.TextSize = 12
 
TextLabel14.Font = Enum.Font.SourceSansBold
 
TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel14.Parent = Frame42
 
local Frame43 = Instance.new("Frame")
 
Frame43.Size = UDim2.new(0, 75, 0, 22)
 
Frame43.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame43.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame43.BorderSizePixel = 0
 
Frame43.Parent = Frame42
 
local UICorner49 = Instance.new("UICorner")
 
UICorner49.CornerRadius = UDim.new(0, 4)
 
UICorner49.Parent = Frame43
 
local UIStroke17 = Instance.new("UIStroke")
 
UIStroke17.Thickness = 1
 
UIStroke17.Parent = Frame43
 
local TextLabel15 = Instance.new("TextLabel")
 
TextLabel15.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel15.BackgroundTransparency = 1
 
TextLabel15.Text = "KEY"
 
TextLabel15.TextSize = 9
 
TextLabel15.Font = Enum.Font.SourceSansBold
 
TextLabel15.Parent = Frame43
 
Frame43.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke17.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel15.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton11 = Instance.new("TextButton")
 
TextButton11.Size = UDim2.new(0, 80, 0, 26)
 
TextButton11.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton11.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton11.Text = "EXECUTE"
 
TextButton11.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton11.TextSize = 11
 
TextButton11.Font = Enum.Font.SourceSansBold
 
TextButton11.Parent = Frame42
 
local UICorner50 = Instance.new("UICorner")
 
UICorner50.CornerRadius = UDim.new(0, 6)
 
UICorner50.Parent = TextButton11
 
local UIStroke18 = Instance.new("UIStroke")
 
UIStroke18.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke18.Thickness = 1
 
UIStroke18.Parent = TextButton11
 
TextButton11.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response2 = game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua")
		 
		loadstring(response2)()
	end)
	 
	local Frame259 = Instance.new("Frame")
	 
	Frame259.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame259.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame259.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame259.BackgroundTransparency = 0.1
	 
	Frame259.BorderSizePixel = 0
	 
	Frame259.Parent = ScreenGui3
	 
	local UICorner418 = Instance.new("UICorner")
	 
	UICorner418.CornerRadius = UDim.new(0, 8)
	 
	UICorner418.Parent = Frame259
	 
	local UIStroke386 = Instance.new("UIStroke")
	 
	UIStroke386.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke386.Thickness = 1.2
	 
	UIStroke386.Parent = Frame259
	 
	local TextLabel233 = Instance.new("TextLabel")
	 
	TextLabel233.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel233.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel233.BackgroundTransparency = 1
	 
	TextLabel233.Text = "Executed AJJANS HUB"
	 
	TextLabel233.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel233.TextSize = 13
	 
	TextLabel233.Font = Enum.Font.SourceSansBold
	 
	TextLabel233.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel233.Parent = Frame259
	 
	local tween36 = TweenService:Create(Frame259, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween36:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton11.Text = "LOADED"
	 
	TextButton11.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton11.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke18.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame44 = Instance.new("Frame")
 
Frame44.Name = "ANTI HIT"
 
Frame44.LayoutOrder = 4
 
Frame44.Size = UDim2.new(1, -6, 0, 38)
 
Frame44.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame44.BackgroundTransparency = 0.2
 
Frame44.Parent = ScrollingFrame2
 
local UICorner51 = Instance.new("UICorner")
 
UICorner51.CornerRadius = UDim.new(0, 6)
 
UICorner51.Parent = Frame44
 
local UIStroke19 = Instance.new("UIStroke")
 
UIStroke19.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke19.Thickness = 1
 
UIStroke19.Parent = Frame44
 
local TextLabel16 = Instance.new("TextLabel")
 
TextLabel16.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel16.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel16.BackgroundTransparency = 1
 
TextLabel16.Text = "ANTI HIT"
 
TextLabel16.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel16.TextSize = 12
 
TextLabel16.Font = Enum.Font.SourceSansBold
 
TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel16.Parent = Frame44
 
local Frame45 = Instance.new("Frame")
 
Frame45.Size = UDim2.new(0, 75, 0, 22)
 
Frame45.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame45.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame45.BorderSizePixel = 0
 
Frame45.Parent = Frame44
 
local UICorner52 = Instance.new("UICorner")
 
UICorner52.CornerRadius = UDim.new(0, 4)
 
UICorner52.Parent = Frame45
 
local UIStroke20 = Instance.new("UIStroke")
 
UIStroke20.Thickness = 1
 
UIStroke20.Parent = Frame45
 
local TextLabel17 = Instance.new("TextLabel")
 
TextLabel17.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel17.BackgroundTransparency = 1
 
TextLabel17.Text = "KEYLESS"
 
TextLabel17.TextSize = 9
 
TextLabel17.Font = Enum.Font.SourceSansBold
 
TextLabel17.Parent = Frame45
 
Frame45.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke20.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel17.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton12 = Instance.new("TextButton")
 
TextButton12.Size = UDim2.new(0, 80, 0, 26)
 
TextButton12.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton12.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton12.Text = "EXECUTE"
 
TextButton12.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton12.TextSize = 11
 
TextButton12.Font = Enum.Font.SourceSansBold
 
TextButton12.Parent = Frame44
 
local UICorner53 = Instance.new("UICorner")
 
UICorner53.CornerRadius = UDim.new(0, 6)
 
UICorner53.Parent = TextButton12
 
local UIStroke21 = Instance.new("UIStroke")
 
UIStroke21.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke21.Thickness = 1
 
UIStroke21.Parent = TextButton12
 
TextButton12.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response3 = game:HttpGet("https://api.getpolsec.com/scripts/hosted/6582551b42d21c6b7eb55f1d76d8d50ce53cb35592093d6615b5e83437594dc0.lua")
		 
		loadstring(response3)()
	end)
	 
	local Frame260 = Instance.new("Frame")
	 
	Frame260.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame260.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame260.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame260.BackgroundTransparency = 0.1
	 
	Frame260.BorderSizePixel = 0
	 
	Frame260.Parent = ScreenGui3
	 
	local UICorner419 = Instance.new("UICorner")
	 
	UICorner419.CornerRadius = UDim.new(0, 8)
	 
	UICorner419.Parent = Frame260
	 
	local UIStroke387 = Instance.new("UIStroke")
	 
	UIStroke387.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke387.Thickness = 1.2
	 
	UIStroke387.Parent = Frame260
	 
	local TextLabel234 = Instance.new("TextLabel")
	 
	TextLabel234.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel234.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel234.BackgroundTransparency = 1
	 
	TextLabel234.Text = "Executed ANTI HIT"
	 
	TextLabel234.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel234.TextSize = 13
	 
	TextLabel234.Font = Enum.Font.SourceSansBold
	 
	TextLabel234.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel234.Parent = Frame260
	 
	local tween37 = TweenService:Create(Frame260, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween37:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton12.Text = "LOADED"
	 
	TextButton12.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke21.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame46 = Instance.new("Frame")
 
Frame46.Name = "ASVRA HUB"
 
Frame46.LayoutOrder = 5
 
Frame46.Size = UDim2.new(1, -6, 0, 38)
 
Frame46.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame46.BackgroundTransparency = 0.2
 
Frame46.Parent = ScrollingFrame2
 
local UICorner54 = Instance.new("UICorner")
 
UICorner54.CornerRadius = UDim.new(0, 6)
 
UICorner54.Parent = Frame46
 
local UIStroke22 = Instance.new("UIStroke")
 
UIStroke22.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke22.Thickness = 1
 
UIStroke22.Parent = Frame46
 
local TextLabel18 = Instance.new("TextLabel")
 
TextLabel18.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel18.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel18.BackgroundTransparency = 1
 
TextLabel18.Text = "ASVRA HUB"
 
TextLabel18.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel18.TextSize = 12
 
TextLabel18.Font = Enum.Font.SourceSansBold
 
TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel18.Parent = Frame46
 
local Frame47 = Instance.new("Frame")
 
Frame47.Size = UDim2.new(0, 75, 0, 22)
 
Frame47.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame47.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame47.BorderSizePixel = 0
 
Frame47.Parent = Frame46
 
local UICorner55 = Instance.new("UICorner")
 
UICorner55.CornerRadius = UDim.new(0, 4)
 
UICorner55.Parent = Frame47
 
local UIStroke23 = Instance.new("UIStroke")
 
UIStroke23.Thickness = 1
 
UIStroke23.Parent = Frame47
 
local TextLabel19 = Instance.new("TextLabel")
 
TextLabel19.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel19.BackgroundTransparency = 1
 
TextLabel19.Text = "KEY"
 
TextLabel19.TextSize = 9
 
TextLabel19.Font = Enum.Font.SourceSansBold
 
TextLabel19.Parent = Frame47
 
Frame47.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke23.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel19.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton13 = Instance.new("TextButton")
 
TextButton13.Size = UDim2.new(0, 80, 0, 26)
 
TextButton13.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton13.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton13.Text = "EXECUTE"
 
TextButton13.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton13.TextSize = 11
 
TextButton13.Font = Enum.Font.SourceSansBold
 
TextButton13.Parent = Frame46
 
local UICorner56 = Instance.new("UICorner")
 
UICorner56.CornerRadius = UDim.new(0, 6)
 
UICorner56.Parent = TextButton13
 
local UIStroke24 = Instance.new("UIStroke")
 
UIStroke24.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke24.Thickness = 1
 
UIStroke24.Parent = TextButton13
 
TextButton13.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response4 = game:HttpGet("https://raw.githubusercontent.com/asvraRoblox/stealegg/refs/heads/main/main")
		 
		loadstring(response4)()
	end)
	 
	local Frame261 = Instance.new("Frame")
	 
	Frame261.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame261.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame261.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame261.BackgroundTransparency = 0.1
	 
	Frame261.BorderSizePixel = 0
	 
	Frame261.Parent = ScreenGui3
	 
	local UICorner420 = Instance.new("UICorner")
	 
	UICorner420.CornerRadius = UDim.new(0, 8)
	 
	UICorner420.Parent = Frame261
	 
	local UIStroke388 = Instance.new("UIStroke")
	 
	UIStroke388.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke388.Thickness = 1.2
	 
	UIStroke388.Parent = Frame261
	 
	local TextLabel235 = Instance.new("TextLabel")
	 
	TextLabel235.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel235.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel235.BackgroundTransparency = 1
	 
	TextLabel235.Text = "Executed ASVRA HUB"
	 
	TextLabel235.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel235.TextSize = 13
	 
	TextLabel235.Font = Enum.Font.SourceSansBold
	 
	TextLabel235.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel235.Parent = Frame261
	 
	local tween38 = TweenService:Create(Frame261, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween38:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton13.Text = "LOADED"
	 
	TextButton13.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton13.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke24.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame48 = Instance.new("Frame")
 
Frame48.Name = "AUTO STEAL"
 
Frame48.LayoutOrder = 6
 
Frame48.Size = UDim2.new(1, -6, 0, 38)
 
Frame48.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame48.BackgroundTransparency = 0.2
 
Frame48.Parent = ScrollingFrame2
 
local UICorner57 = Instance.new("UICorner")
 
UICorner57.CornerRadius = UDim.new(0, 6)
 
UICorner57.Parent = Frame48
 
local UIStroke25 = Instance.new("UIStroke")
 
UIStroke25.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke25.Thickness = 1
 
UIStroke25.Parent = Frame48
 
local TextLabel20 = Instance.new("TextLabel")
 
TextLabel20.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel20.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel20.BackgroundTransparency = 1
 
TextLabel20.Text = "AUTO STEAL"
 
TextLabel20.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel20.TextSize = 12
 
TextLabel20.Font = Enum.Font.SourceSansBold
 
TextLabel20.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel20.Parent = Frame48
 
local Frame49 = Instance.new("Frame")
 
Frame49.Size = UDim2.new(0, 75, 0, 22)
 
Frame49.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame49.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame49.BorderSizePixel = 0
 
Frame49.Parent = Frame48
 
local UICorner58 = Instance.new("UICorner")
 
UICorner58.CornerRadius = UDim.new(0, 4)
 
UICorner58.Parent = Frame49
 
local UIStroke26 = Instance.new("UIStroke")
 
UIStroke26.Thickness = 1
 
UIStroke26.Parent = Frame49
 
local TextLabel21 = Instance.new("TextLabel")
 
TextLabel21.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel21.BackgroundTransparency = 1
 
TextLabel21.Text = "KEYLESS"
 
TextLabel21.TextSize = 9
 
TextLabel21.Font = Enum.Font.SourceSansBold
 
TextLabel21.Parent = Frame49
 
Frame49.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke26.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel21.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton14 = Instance.new("TextButton")
 
TextButton14.Size = UDim2.new(0, 80, 0, 26)
 
TextButton14.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton14.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton14.Text = "EXECUTE"
 
TextButton14.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton14.TextSize = 11
 
TextButton14.Font = Enum.Font.SourceSansBold
 
TextButton14.Parent = Frame48
 
local UICorner59 = Instance.new("UICorner")
 
UICorner59.CornerRadius = UDim.new(0, 6)
 
UICorner59.Parent = TextButton14
 
local UIStroke27 = Instance.new("UIStroke")
 
UIStroke27.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke27.Thickness = 1
 
UIStroke27.Parent = TextButton14
 
TextButton14.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response5 = game:HttpGet("https://pastebin.com/raw/3qCRnyUp")
		 
		loadstring(response5)()
	end)
	 
	local Frame262 = Instance.new("Frame")
	 
	Frame262.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame262.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame262.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame262.BackgroundTransparency = 0.1
	 
	Frame262.BorderSizePixel = 0
	 
	Frame262.Parent = ScreenGui3
	 
	local UICorner421 = Instance.new("UICorner")
	 
	UICorner421.CornerRadius = UDim.new(0, 8)
	 
	UICorner421.Parent = Frame262
	 
	local UIStroke389 = Instance.new("UIStroke")
	 
	UIStroke389.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke389.Thickness = 1.2
	 
	UIStroke389.Parent = Frame262
	 
	local TextLabel236 = Instance.new("TextLabel")
	 
	TextLabel236.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel236.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel236.BackgroundTransparency = 1
	 
	TextLabel236.Text = "Executed AUTO STEAL"
	 
	TextLabel236.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel236.TextSize = 13
	 
	TextLabel236.Font = Enum.Font.SourceSansBold
	 
	TextLabel236.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel236.Parent = Frame262
	 
	local tween39 = TweenService:Create(Frame262, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween39:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton14.Text = "LOADED"
	 
	TextButton14.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke27.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame50 = Instance.new("Frame")
 
Frame50.Name = "AUTO STEAL & FARM"
 
Frame50.LayoutOrder = 7
 
Frame50.Size = UDim2.new(1, -6, 0, 38)
 
Frame50.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame50.BackgroundTransparency = 0.2
 
Frame50.Parent = ScrollingFrame2
 
local UICorner60 = Instance.new("UICorner")
 
UICorner60.CornerRadius = UDim.new(0, 6)
 
UICorner60.Parent = Frame50
 
local UIStroke28 = Instance.new("UIStroke")
 
UIStroke28.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke28.Thickness = 1
 
UIStroke28.Parent = Frame50
 
local TextLabel22 = Instance.new("TextLabel")
 
TextLabel22.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel22.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel22.BackgroundTransparency = 1
 
TextLabel22.Text = "AUTO STEAL & FARM"
 
TextLabel22.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel22.TextSize = 12
 
TextLabel22.Font = Enum.Font.SourceSansBold
 
TextLabel22.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel22.Parent = Frame50
 
local Frame51 = Instance.new("Frame")
 
Frame51.Size = UDim2.new(0, 75, 0, 22)
 
Frame51.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame51.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame51.BorderSizePixel = 0
 
Frame51.Parent = Frame50
 
local UICorner61 = Instance.new("UICorner")
 
UICorner61.CornerRadius = UDim.new(0, 4)
 
UICorner61.Parent = Frame51
 
local UIStroke29 = Instance.new("UIStroke")
 
UIStroke29.Thickness = 1
 
UIStroke29.Parent = Frame51
 
local TextLabel23 = Instance.new("TextLabel")
 
TextLabel23.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel23.BackgroundTransparency = 1
 
TextLabel23.Text = "KEY"
 
TextLabel23.TextSize = 9
 
TextLabel23.Font = Enum.Font.SourceSansBold
 
TextLabel23.Parent = Frame51
 
Frame51.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke29.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel23.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton15 = Instance.new("TextButton")
 
TextButton15.Size = UDim2.new(0, 80, 0, 26)
 
TextButton15.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton15.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton15.Text = "EXECUTE"
 
TextButton15.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton15.TextSize = 11
 
TextButton15.Font = Enum.Font.SourceSansBold
 
TextButton15.Parent = Frame50
 
local UICorner62 = Instance.new("UICorner")
 
UICorner62.CornerRadius = UDim.new(0, 6)
 
UICorner62.Parent = TextButton15
 
local UIStroke30 = Instance.new("UIStroke")
 
UIStroke30.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke30.Thickness = 1
 
UIStroke30.Parent = TextButton15
 
TextButton15.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response6 = game:HttpGet("https://raw.githubusercontent.com/DrakarDev/Hud/refs/heads/main/steal_an_egg.lua")
		 
		loadstring(response6)()
	end)
	 
	local Frame263 = Instance.new("Frame")
	 
	Frame263.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame263.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame263.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame263.BackgroundTransparency = 0.1
	 
	Frame263.BorderSizePixel = 0
	 
	Frame263.Parent = ScreenGui3
	 
	local UICorner422 = Instance.new("UICorner")
	 
	UICorner422.CornerRadius = UDim.new(0, 8)
	 
	UICorner422.Parent = Frame263
	 
	local UIStroke390 = Instance.new("UIStroke")
	 
	UIStroke390.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke390.Thickness = 1.2
	 
	UIStroke390.Parent = Frame263
	 
	local TextLabel237 = Instance.new("TextLabel")
	 
	TextLabel237.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel237.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel237.BackgroundTransparency = 1
	 
	TextLabel237.Text = "Executed AUTO STEAL & FARM"
	 
	TextLabel237.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel237.TextSize = 13
	 
	TextLabel237.Font = Enum.Font.SourceSansBold
	 
	TextLabel237.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel237.Parent = Frame263
	 
	local tween40 = TweenService:Create(Frame263, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween40:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton15.Text = "LOADED"
	 
	TextButton15.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton15.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke30.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame52 = Instance.new("Frame")
 
Frame52.Name = "AXON HUB"
 
Frame52.LayoutOrder = 8
 
Frame52.Size = UDim2.new(1, -6, 0, 38)
 
Frame52.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame52.BackgroundTransparency = 0.2
 
Frame52.Parent = ScrollingFrame2
 
local UICorner63 = Instance.new("UICorner")
 
UICorner63.CornerRadius = UDim.new(0, 6)
 
UICorner63.Parent = Frame52
 
local UIStroke31 = Instance.new("UIStroke")
 
UIStroke31.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke31.Thickness = 1
 
UIStroke31.Parent = Frame52
 
local TextLabel24 = Instance.new("TextLabel")
 
TextLabel24.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel24.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel24.BackgroundTransparency = 1
 
TextLabel24.Text = "AXON HUB"
 
TextLabel24.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel24.TextSize = 12
 
TextLabel24.Font = Enum.Font.SourceSansBold
 
TextLabel24.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel24.Parent = Frame52
 
local Frame53 = Instance.new("Frame")
 
Frame53.Size = UDim2.new(0, 75, 0, 22)
 
Frame53.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame53.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame53.BorderSizePixel = 0
 
Frame53.Parent = Frame52
 
local UICorner64 = Instance.new("UICorner")
 
UICorner64.CornerRadius = UDim.new(0, 4)
 
UICorner64.Parent = Frame53
 
local UIStroke32 = Instance.new("UIStroke")
 
UIStroke32.Thickness = 1
 
UIStroke32.Parent = Frame53
 
local TextLabel25 = Instance.new("TextLabel")
 
TextLabel25.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel25.BackgroundTransparency = 1
 
TextLabel25.Text = "KEY"
 
TextLabel25.TextSize = 9
 
TextLabel25.Font = Enum.Font.SourceSansBold
 
TextLabel25.Parent = Frame53
 
Frame53.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke32.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel25.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton16 = Instance.new("TextButton")
 
TextButton16.Size = UDim2.new(0, 80, 0, 26)
 
TextButton16.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton16.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton16.Text = "EXECUTE"
 
TextButton16.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton16.TextSize = 11
 
TextButton16.Font = Enum.Font.SourceSansBold
 
TextButton16.Parent = Frame52
 
local UICorner65 = Instance.new("UICorner")
 
UICorner65.CornerRadius = UDim.new(0, 6)
 
UICorner65.Parent = TextButton16
 
local UIStroke33 = Instance.new("UIStroke")
 
UIStroke33.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke33.Thickness = 1
 
UIStroke33.Parent = TextButton16
 
TextButton16.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response7 = game:HttpGet("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua")
		 
		loadstring(response7)()
	end)
	 
	local Frame264 = Instance.new("Frame")
	 
	Frame264.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame264.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame264.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame264.BackgroundTransparency = 0.1
	 
	Frame264.BorderSizePixel = 0
	 
	Frame264.Parent = ScreenGui3
	 
	local UICorner423 = Instance.new("UICorner")
	 
	UICorner423.CornerRadius = UDim.new(0, 8)
	 
	UICorner423.Parent = Frame264
	 
	local UIStroke391 = Instance.new("UIStroke")
	 
	UIStroke391.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke391.Thickness = 1.2
	 
	UIStroke391.Parent = Frame264
	 
	local TextLabel238 = Instance.new("TextLabel")
	 
	TextLabel238.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel238.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel238.BackgroundTransparency = 1
	 
	TextLabel238.Text = "Executed AXON HUB"
	 
	TextLabel238.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel238.TextSize = 13
	 
	TextLabel238.Font = Enum.Font.SourceSansBold
	 
	TextLabel238.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel238.Parent = Frame264
	 
	local tween41 = TweenService:Create(Frame264, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween41:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton16.Text = "LOADED"
	 
	TextButton16.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke33.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame54 = Instance.new("Frame")
 
Frame54.Name = "AXONIC HUB"
 
Frame54.LayoutOrder = 9
 
Frame54.Size = UDim2.new(1, -6, 0, 38)
 
Frame54.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame54.BackgroundTransparency = 0.2
 
Frame54.Parent = ScrollingFrame2
 
local UICorner66 = Instance.new("UICorner")
 
UICorner66.CornerRadius = UDim.new(0, 6)
 
UICorner66.Parent = Frame54
 
local UIStroke34 = Instance.new("UIStroke")
 
UIStroke34.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke34.Thickness = 1
 
UIStroke34.Parent = Frame54
 
local TextLabel26 = Instance.new("TextLabel")
 
TextLabel26.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel26.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel26.BackgroundTransparency = 1
 
TextLabel26.Text = "AXONIC HUB"
 
TextLabel26.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel26.TextSize = 12
 
TextLabel26.Font = Enum.Font.SourceSansBold
 
TextLabel26.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel26.Parent = Frame54
 
local Frame55 = Instance.new("Frame")
 
Frame55.Size = UDim2.new(0, 75, 0, 22)
 
Frame55.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame55.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame55.BorderSizePixel = 0
 
Frame55.Parent = Frame54
 
local UICorner67 = Instance.new("UICorner")
 
UICorner67.CornerRadius = UDim.new(0, 4)
 
UICorner67.Parent = Frame55
 
local UIStroke35 = Instance.new("UIStroke")
 
UIStroke35.Thickness = 1
 
UIStroke35.Parent = Frame55
 
local TextLabel27 = Instance.new("TextLabel")
 
TextLabel27.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel27.BackgroundTransparency = 1
 
TextLabel27.Text = "KEY"
 
TextLabel27.TextSize = 9
 
TextLabel27.Font = Enum.Font.SourceSansBold
 
TextLabel27.Parent = Frame55
 
Frame55.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke35.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel27.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton17 = Instance.new("TextButton")
 
TextButton17.Size = UDim2.new(0, 80, 0, 26)
 
TextButton17.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton17.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton17.Text = "EXECUTE"
 
TextButton17.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton17.TextSize = 11
 
TextButton17.Font = Enum.Font.SourceSansBold
 
TextButton17.Parent = Frame54
 
local UICorner68 = Instance.new("UICorner")
 
UICorner68.CornerRadius = UDim.new(0, 6)
 
UICorner68.Parent = TextButton17
 
local UIStroke36 = Instance.new("UIStroke")
 
UIStroke36.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke36.Thickness = 1
 
UIStroke36.Parent = TextButton17
 
TextButton17.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response8 = game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Steal-A-Egg/refs/heads/main/Steal%20A%20Egg")
		 
		loadstring(response8)()
	end)
	 
	local Frame265 = Instance.new("Frame")
	 
	Frame265.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame265.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame265.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame265.BackgroundTransparency = 0.1
	 
	Frame265.BorderSizePixel = 0
	 
	Frame265.Parent = ScreenGui3
	 
	local UICorner424 = Instance.new("UICorner")
	 
	UICorner424.CornerRadius = UDim.new(0, 8)
	 
	UICorner424.Parent = Frame265
	 
	local UIStroke392 = Instance.new("UIStroke")
	 
	UIStroke392.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke392.Thickness = 1.2
	 
	UIStroke392.Parent = Frame265
	 
	local TextLabel239 = Instance.new("TextLabel")
	 
	TextLabel239.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel239.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel239.BackgroundTransparency = 1
	 
	TextLabel239.Text = "Executed AXONIC HUB"
	 
	TextLabel239.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel239.TextSize = 13
	 
	TextLabel239.Font = Enum.Font.SourceSansBold
	 
	TextLabel239.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel239.Parent = Frame265
	 
	local tween42 = TweenService:Create(Frame265, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween42:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton17.Text = "LOADED"
	 
	TextButton17.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton17.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke36.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame56 = Instance.new("Frame")
 
Frame56.Name = "BEE HUB BACK"
 
Frame56.LayoutOrder = 10
 
Frame56.Size = UDim2.new(1, -6, 0, 38)
 
Frame56.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame56.BackgroundTransparency = 0.2
 
Frame56.Parent = ScrollingFrame2
 
local UICorner69 = Instance.new("UICorner")
 
UICorner69.CornerRadius = UDim.new(0, 6)
 
UICorner69.Parent = Frame56
 
local UIStroke37 = Instance.new("UIStroke")
 
UIStroke37.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke37.Thickness = 1
 
UIStroke37.Parent = Frame56
 
local TextLabel28 = Instance.new("TextLabel")
 
TextLabel28.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel28.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel28.BackgroundTransparency = 1
 
TextLabel28.Text = "BEE HUB BACK"
 
TextLabel28.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel28.TextSize = 12
 
TextLabel28.Font = Enum.Font.SourceSansBold
 
TextLabel28.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel28.Parent = Frame56
 
local Frame57 = Instance.new("Frame")
 
Frame57.Size = UDim2.new(0, 75, 0, 22)
 
Frame57.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame57.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame57.BorderSizePixel = 0
 
Frame57.Parent = Frame56
 
local UICorner70 = Instance.new("UICorner")
 
UICorner70.CornerRadius = UDim.new(0, 4)
 
UICorner70.Parent = Frame57
 
local UIStroke38 = Instance.new("UIStroke")
 
UIStroke38.Thickness = 1
 
UIStroke38.Parent = Frame57
 
local TextLabel29 = Instance.new("TextLabel")
 
TextLabel29.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel29.BackgroundTransparency = 1
 
TextLabel29.Text = "KEYLESS"
 
TextLabel29.TextSize = 9
 
TextLabel29.Font = Enum.Font.SourceSansBold
 
TextLabel29.Parent = Frame57
 
Frame57.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke38.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel29.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton18 = Instance.new("TextButton")
 
TextButton18.Size = UDim2.new(0, 80, 0, 26)
 
TextButton18.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton18.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton18.Text = "EXECUTE"
 
TextButton18.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton18.TextSize = 11
 
TextButton18.Font = Enum.Font.SourceSansBold
 
TextButton18.Parent = Frame56
 
local UICorner71 = Instance.new("UICorner")
 
UICorner71.CornerRadius = UDim.new(0, 6)
 
UICorner71.Parent = TextButton18
 
local UIStroke39 = Instance.new("UIStroke")
 
UIStroke39.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke39.Thickness = 1
 
UIStroke39.Parent = TextButton18
 
TextButton18.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response9 = game:HttpGet("https://raw.githubusercontent.com/beehub044/Beehub/refs/heads/main/BEE%20HUB%20IS%20BACK")
		 
		loadstring(response9)()
	end)
	 
	local Frame266 = Instance.new("Frame")
	 
	Frame266.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame266.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame266.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame266.BackgroundTransparency = 0.1
	 
	Frame266.BorderSizePixel = 0
	 
	Frame266.Parent = ScreenGui3
	 
	local UICorner425 = Instance.new("UICorner")
	 
	UICorner425.CornerRadius = UDim.new(0, 8)
	 
	UICorner425.Parent = Frame266
	 
	local UIStroke393 = Instance.new("UIStroke")
	 
	UIStroke393.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke393.Thickness = 1.2
	 
	UIStroke393.Parent = Frame266
	 
	local TextLabel240 = Instance.new("TextLabel")
	 
	TextLabel240.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel240.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel240.BackgroundTransparency = 1
	 
	TextLabel240.Text = "Executed BEE HUB BACK"
	 
	TextLabel240.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel240.TextSize = 13
	 
	TextLabel240.Font = Enum.Font.SourceSansBold
	 
	TextLabel240.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel240.Parent = Frame266
	 
	local tween43 = TweenService:Create(Frame266, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween43:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton18.Text = "LOADED"
	 
	TextButton18.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke39.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame58 = Instance.new("Frame")
 
Frame58.Name = "BIGFROOT"
 
Frame58.LayoutOrder = 11
 
Frame58.Size = UDim2.new(1, -6, 0, 38)
 
Frame58.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame58.BackgroundTransparency = 0.2
 
Frame58.Parent = ScrollingFrame2
 
local UICorner72 = Instance.new("UICorner")
 
UICorner72.CornerRadius = UDim.new(0, 6)
 
UICorner72.Parent = Frame58
 
local UIStroke40 = Instance.new("UIStroke")
 
UIStroke40.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke40.Thickness = 1
 
UIStroke40.Parent = Frame58
 
local TextLabel30 = Instance.new("TextLabel")
 
TextLabel30.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel30.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel30.BackgroundTransparency = 1
 
TextLabel30.Text = "BIGFROOT"
 
TextLabel30.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel30.TextSize = 12
 
TextLabel30.Font = Enum.Font.SourceSansBold
 
TextLabel30.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel30.Parent = Frame58
 
local Frame59 = Instance.new("Frame")
 
Frame59.Size = UDim2.new(0, 75, 0, 22)
 
Frame59.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame59.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame59.BorderSizePixel = 0
 
Frame59.Parent = Frame58
 
local UICorner73 = Instance.new("UICorner")
 
UICorner73.CornerRadius = UDim.new(0, 4)
 
UICorner73.Parent = Frame59
 
local UIStroke41 = Instance.new("UIStroke")
 
UIStroke41.Thickness = 1
 
UIStroke41.Parent = Frame59
 
local TextLabel31 = Instance.new("TextLabel")
 
TextLabel31.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel31.BackgroundTransparency = 1
 
TextLabel31.Text = "KEY"
 
TextLabel31.TextSize = 9
 
TextLabel31.Font = Enum.Font.SourceSansBold
 
TextLabel31.Parent = Frame59
 
Frame59.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke41.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel31.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton19 = Instance.new("TextButton")
 
TextButton19.Size = UDim2.new(0, 80, 0, 26)
 
TextButton19.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton19.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton19.Text = "EXECUTE"
 
TextButton19.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton19.TextSize = 11
 
TextButton19.Font = Enum.Font.SourceSansBold
 
TextButton19.Parent = Frame58
 
local UICorner74 = Instance.new("UICorner")
 
UICorner74.CornerRadius = UDim.new(0, 6)
 
UICorner74.Parent = TextButton19
 
local UIStroke42 = Instance.new("UIStroke")
 
UIStroke42.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke42.Thickness = 1
 
UIStroke42.Parent = TextButton19
 
TextButton19.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response10 = game:HttpGet("https://raw.githubusercontent.com/hanniii1/Loader/refs/heads/main/BFLoader.lua")
		 
		loadstring(response10)()
	end)
	 
	local Frame267 = Instance.new("Frame")
	 
	Frame267.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame267.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame267.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame267.BackgroundTransparency = 0.1
	 
	Frame267.BorderSizePixel = 0
	 
	Frame267.Parent = ScreenGui3
	 
	local UICorner426 = Instance.new("UICorner")
	 
	UICorner426.CornerRadius = UDim.new(0, 8)
	 
	UICorner426.Parent = Frame267
	 
	local UIStroke394 = Instance.new("UIStroke")
	 
	UIStroke394.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke394.Thickness = 1.2
	 
	UIStroke394.Parent = Frame267
	 
	local TextLabel241 = Instance.new("TextLabel")
	 
	TextLabel241.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel241.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel241.BackgroundTransparency = 1
	 
	TextLabel241.Text = "Executed BIGFROOT"
	 
	TextLabel241.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel241.TextSize = 13
	 
	TextLabel241.Font = Enum.Font.SourceSansBold
	 
	TextLabel241.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel241.Parent = Frame267
	 
	local tween44 = TweenService:Create(Frame267, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween44:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton19.Text = "LOADED"
	 
	TextButton19.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton19.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke42.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame60 = Instance.new("Frame")
 
Frame60.Name = "BK HUB"
 
Frame60.LayoutOrder = 12
 
Frame60.Size = UDim2.new(1, -6, 0, 38)
 
Frame60.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame60.BackgroundTransparency = 0.2
 
Frame60.Parent = ScrollingFrame2
 
local UICorner75 = Instance.new("UICorner")
 
UICorner75.CornerRadius = UDim.new(0, 6)
 
UICorner75.Parent = Frame60
 
local UIStroke43 = Instance.new("UIStroke")
 
UIStroke43.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke43.Thickness = 1
 
UIStroke43.Parent = Frame60
 
local TextLabel32 = Instance.new("TextLabel")
 
TextLabel32.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel32.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel32.BackgroundTransparency = 1
 
TextLabel32.Text = "BK HUB"
 
TextLabel32.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel32.TextSize = 12
 
TextLabel32.Font = Enum.Font.SourceSansBold
 
TextLabel32.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel32.Parent = Frame60
 
local Frame61 = Instance.new("Frame")
 
Frame61.Size = UDim2.new(0, 75, 0, 22)
 
Frame61.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame61.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame61.BorderSizePixel = 0
 
Frame61.Parent = Frame60
 
local UICorner76 = Instance.new("UICorner")
 
UICorner76.CornerRadius = UDim.new(0, 4)
 
UICorner76.Parent = Frame61
 
local UIStroke44 = Instance.new("UIStroke")
 
UIStroke44.Thickness = 1
 
UIStroke44.Parent = Frame61
 
local TextLabel33 = Instance.new("TextLabel")
 
TextLabel33.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel33.BackgroundTransparency = 1
 
TextLabel33.Text = "KEYLESS"
 
TextLabel33.TextSize = 9
 
TextLabel33.Font = Enum.Font.SourceSansBold
 
TextLabel33.Parent = Frame61
 
Frame61.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke44.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel33.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton20 = Instance.new("TextButton")
 
TextButton20.Size = UDim2.new(0, 80, 0, 26)
 
TextButton20.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton20.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton20.Text = "EXECUTE"
 
TextButton20.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton20.TextSize = 11
 
TextButton20.Font = Enum.Font.SourceSansBold
 
TextButton20.Parent = Frame60
 
local UICorner77 = Instance.new("UICorner")
 
UICorner77.CornerRadius = UDim.new(0, 6)
 
UICorner77.Parent = TextButton20
 
local UIStroke45 = Instance.new("UIStroke")
 
UIStroke45.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke45.Thickness = 1
 
UIStroke45.Parent = TextButton20
 
TextButton20.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response11 = game:HttpGet("https://api.luarmor.net/files/v4/loaders/9ee4edde227ac85f50872bf9e4226508.lua")
		 
		loadstring(response11)()
	end)
	 
	local Frame268 = Instance.new("Frame")
	 
	Frame268.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame268.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame268.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame268.BackgroundTransparency = 0.1
	 
	Frame268.BorderSizePixel = 0
	 
	Frame268.Parent = ScreenGui3
	 
	local UICorner427 = Instance.new("UICorner")
	 
	UICorner427.CornerRadius = UDim.new(0, 8)
	 
	UICorner427.Parent = Frame268
	 
	local UIStroke395 = Instance.new("UIStroke")
	 
	UIStroke395.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke395.Thickness = 1.2
	 
	UIStroke395.Parent = Frame268
	 
	local TextLabel242 = Instance.new("TextLabel")
	 
	TextLabel242.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel242.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel242.BackgroundTransparency = 1
	 
	TextLabel242.Text = "Executed BK HUB"
	 
	TextLabel242.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel242.TextSize = 13
	 
	TextLabel242.Font = Enum.Font.SourceSansBold
	 
	TextLabel242.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel242.Parent = Frame268
	 
	local tween45 = TweenService:Create(Frame268, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween45:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton20.Text = "LOADED"
	 
	TextButton20.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke45.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame62 = Instance.new("Frame")
 
Frame62.Name = "BLYXO HUB"
 
Frame62.LayoutOrder = 13
 
Frame62.Size = UDim2.new(1, -6, 0, 38)
 
Frame62.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame62.BackgroundTransparency = 0.2
 
Frame62.Parent = ScrollingFrame2
 
local UICorner78 = Instance.new("UICorner")
 
UICorner78.CornerRadius = UDim.new(0, 6)
 
UICorner78.Parent = Frame62
 
local UIStroke46 = Instance.new("UIStroke")
 
UIStroke46.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke46.Thickness = 1
 
UIStroke46.Parent = Frame62
 
local TextLabel34 = Instance.new("TextLabel")
 
TextLabel34.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel34.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel34.BackgroundTransparency = 1
 
TextLabel34.Text = "BLYXO HUB"
 
TextLabel34.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel34.TextSize = 12
 
TextLabel34.Font = Enum.Font.SourceSansBold
 
TextLabel34.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel34.Parent = Frame62
 
local Frame63 = Instance.new("Frame")
 
Frame63.Size = UDim2.new(0, 75, 0, 22)
 
Frame63.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame63.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame63.BorderSizePixel = 0
 
Frame63.Parent = Frame62
 
local UICorner79 = Instance.new("UICorner")
 
UICorner79.CornerRadius = UDim.new(0, 4)
 
UICorner79.Parent = Frame63
 
local UIStroke47 = Instance.new("UIStroke")
 
UIStroke47.Thickness = 1
 
UIStroke47.Parent = Frame63
 
local TextLabel35 = Instance.new("TextLabel")
 
TextLabel35.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel35.BackgroundTransparency = 1
 
TextLabel35.Text = "KEYLESS"
 
TextLabel35.TextSize = 9
 
TextLabel35.Font = Enum.Font.SourceSansBold
 
TextLabel35.Parent = Frame63
 
Frame63.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke47.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel35.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton21 = Instance.new("TextButton")
 
TextButton21.Size = UDim2.new(0, 80, 0, 26)
 
TextButton21.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton21.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton21.Text = "EXECUTE"
 
TextButton21.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton21.TextSize = 11
 
TextButton21.Font = Enum.Font.SourceSansBold
 
TextButton21.Parent = Frame62
 
local UICorner80 = Instance.new("UICorner")
 
UICorner80.CornerRadius = UDim.new(0, 6)
 
UICorner80.Parent = TextButton21
 
local UIStroke48 = Instance.new("UIStroke")
 
UIStroke48.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke48.Thickness = 1
 
UIStroke48.Parent = TextButton21
 
TextButton21.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response12 = game:HttpGet("https://flowauth.net/v1/loaders/69d3463240384f3a73fbe32c178093a2.lua")
		 
		loadstring(response12)()
	end)
	 
	local Frame269 = Instance.new("Frame")
	 
	Frame269.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame269.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame269.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame269.BackgroundTransparency = 0.1
	 
	Frame269.BorderSizePixel = 0
	 
	Frame269.Parent = ScreenGui3
	 
	local UICorner428 = Instance.new("UICorner")
	 
	UICorner428.CornerRadius = UDim.new(0, 8)
	 
	UICorner428.Parent = Frame269
	 
	local UIStroke396 = Instance.new("UIStroke")
	 
	UIStroke396.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke396.Thickness = 1.2
	 
	UIStroke396.Parent = Frame269
	 
	local TextLabel243 = Instance.new("TextLabel")
	 
	TextLabel243.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel243.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel243.BackgroundTransparency = 1
	 
	TextLabel243.Text = "Executed BLYXO HUB"
	 
	TextLabel243.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel243.TextSize = 13
	 
	TextLabel243.Font = Enum.Font.SourceSansBold
	 
	TextLabel243.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel243.Parent = Frame269
	 
	local tween46 = TweenService:Create(Frame269, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween46:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton21.Text = "LOADED"
	 
	TextButton21.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton21.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke48.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame64 = Instance.new("Frame")
 
Frame64.Name = "CHILLI HUB"
 
Frame64.LayoutOrder = 14
 
Frame64.Size = UDim2.new(1, -6, 0, 38)
 
Frame64.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame64.BackgroundTransparency = 0.2
 
Frame64.Parent = ScrollingFrame2
 
local UICorner81 = Instance.new("UICorner")
 
UICorner81.CornerRadius = UDim.new(0, 6)
 
UICorner81.Parent = Frame64
 
local UIStroke49 = Instance.new("UIStroke")
 
UIStroke49.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke49.Thickness = 1
 
UIStroke49.Parent = Frame64
 
local TextLabel36 = Instance.new("TextLabel")
 
TextLabel36.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel36.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel36.BackgroundTransparency = 1
 
TextLabel36.Text = "CHILLI HUB"
 
TextLabel36.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel36.TextSize = 12
 
TextLabel36.Font = Enum.Font.SourceSansBold
 
TextLabel36.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel36.Parent = Frame64
 
local Frame65 = Instance.new("Frame")
 
Frame65.Size = UDim2.new(0, 75, 0, 22)
 
Frame65.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame65.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame65.BorderSizePixel = 0
 
Frame65.Parent = Frame64
 
local UICorner82 = Instance.new("UICorner")
 
UICorner82.CornerRadius = UDim.new(0, 4)
 
UICorner82.Parent = Frame65
 
local UIStroke50 = Instance.new("UIStroke")
 
UIStroke50.Thickness = 1
 
UIStroke50.Parent = Frame65
 
local TextLabel37 = Instance.new("TextLabel")
 
TextLabel37.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel37.BackgroundTransparency = 1
 
TextLabel37.Text = "KEYLESS"
 
TextLabel37.TextSize = 9
 
TextLabel37.Font = Enum.Font.SourceSansBold
 
TextLabel37.Parent = Frame65
 
Frame65.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke50.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel37.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton22 = Instance.new("TextButton")
 
TextButton22.Size = UDim2.new(0, 80, 0, 26)
 
TextButton22.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton22.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton22.Text = "EXECUTE"
 
TextButton22.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton22.TextSize = 11
 
TextButton22.Font = Enum.Font.SourceSansBold
 
TextButton22.Parent = Frame64
 
local UICorner83 = Instance.new("UICorner")
 
UICorner83.CornerRadius = UDim.new(0, 6)
 
UICorner83.Parent = TextButton22
 
local UIStroke51 = Instance.new("UIStroke")
 
UIStroke51.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke51.Thickness = 1
 
UIStroke51.Parent = TextButton22
 
TextButton22.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response13 = game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua")
		 
		loadstring(response13)()
	end)
	 
	local Frame270 = Instance.new("Frame")
	 
	Frame270.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame270.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame270.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame270.BackgroundTransparency = 0.1
	 
	Frame270.BorderSizePixel = 0
	 
	Frame270.Parent = ScreenGui3
	 
	local UICorner429 = Instance.new("UICorner")
	 
	UICorner429.CornerRadius = UDim.new(0, 8)
	 
	UICorner429.Parent = Frame270
	 
	local UIStroke397 = Instance.new("UIStroke")
	 
	UIStroke397.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke397.Thickness = 1.2
	 
	UIStroke397.Parent = Frame270
	 
	local TextLabel244 = Instance.new("TextLabel")
	 
	TextLabel244.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel244.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel244.BackgroundTransparency = 1
	 
	TextLabel244.Text = "Executed CHILLI HUB"
	 
	TextLabel244.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel244.TextSize = 13
	 
	TextLabel244.Font = Enum.Font.SourceSansBold
	 
	TextLabel244.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel244.Parent = Frame270
	 
	local tween47 = TweenService:Create(Frame270, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween47:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton22.Text = "LOADED"
	 
	TextButton22.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke51.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame66 = Instance.new("Frame")
 
Frame66.Name = "CLOVER HUB"
 
Frame66.LayoutOrder = 15
 
Frame66.Size = UDim2.new(1, -6, 0, 38)
 
Frame66.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame66.BackgroundTransparency = 0.2
 
Frame66.Parent = ScrollingFrame2
 
local UICorner84 = Instance.new("UICorner")
 
UICorner84.CornerRadius = UDim.new(0, 6)
 
UICorner84.Parent = Frame66
 
local UIStroke52 = Instance.new("UIStroke")
 
UIStroke52.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke52.Thickness = 1
 
UIStroke52.Parent = Frame66
 
local TextLabel38 = Instance.new("TextLabel")
 
TextLabel38.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel38.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel38.BackgroundTransparency = 1
 
TextLabel38.Text = "CLOVER HUB"
 
TextLabel38.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel38.TextSize = 12
 
TextLabel38.Font = Enum.Font.SourceSansBold
 
TextLabel38.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel38.Parent = Frame66
 
local Frame67 = Instance.new("Frame")
 
Frame67.Size = UDim2.new(0, 75, 0, 22)
 
Frame67.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame67.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame67.BorderSizePixel = 0
 
Frame67.Parent = Frame66
 
local UICorner85 = Instance.new("UICorner")
 
UICorner85.CornerRadius = UDim.new(0, 4)
 
UICorner85.Parent = Frame67
 
local UIStroke53 = Instance.new("UIStroke")
 
UIStroke53.Thickness = 1
 
UIStroke53.Parent = Frame67
 
local TextLabel39 = Instance.new("TextLabel")
 
TextLabel39.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel39.BackgroundTransparency = 1
 
TextLabel39.Text = "KEY"
 
TextLabel39.TextSize = 9
 
TextLabel39.Font = Enum.Font.SourceSansBold
 
TextLabel39.Parent = Frame67
 
Frame67.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke53.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel39.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton23 = Instance.new("TextButton")
 
TextButton23.Size = UDim2.new(0, 80, 0, 26)
 
TextButton23.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton23.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton23.Text = "EXECUTE"
 
TextButton23.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton23.TextSize = 11
 
TextButton23.Font = Enum.Font.SourceSansBold
 
TextButton23.Parent = Frame66
 
local UICorner86 = Instance.new("UICorner")
 
UICorner86.CornerRadius = UDim.new(0, 6)
 
UICorner86.Parent = TextButton23
 
local UIStroke54 = Instance.new("UIStroke")
 
UIStroke54.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke54.Thickness = 1
 
UIStroke54.Parent = TextButton23
 
TextButton23.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response14 = game:HttpGet("https://rawscripts.net/raw/Steal-An-Egg-Clover-Hub-or-Auto-Steal-Egg-Predictor-Auto-Hatch-and-ESP-226600")
		 
		loadstring(response14)()
	end)
	 
	local Frame271 = Instance.new("Frame")
	 
	Frame271.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame271.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame271.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame271.BackgroundTransparency = 0.1
	 
	Frame271.BorderSizePixel = 0
	 
	Frame271.Parent = ScreenGui3
	 
	local UICorner430 = Instance.new("UICorner")
	 
	UICorner430.CornerRadius = UDim.new(0, 8)
	 
	UICorner430.Parent = Frame271
	 
	local UIStroke398 = Instance.new("UIStroke")
	 
	UIStroke398.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke398.Thickness = 1.2
	 
	UIStroke398.Parent = Frame271
	 
	local TextLabel245 = Instance.new("TextLabel")
	 
	TextLabel245.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel245.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel245.BackgroundTransparency = 1
	 
	TextLabel245.Text = "Executed CLOVER HUB"
	 
	TextLabel245.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel245.TextSize = 13
	 
	TextLabel245.Font = Enum.Font.SourceSansBold
	 
	TextLabel245.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel245.Parent = Frame271
	 
	local tween48 = TweenService:Create(Frame271, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween48:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton23.Text = "LOADED"
	 
	TextButton23.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton23.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke54.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame68 = Instance.new("Frame")
 
Frame68.Name = "DECODE HUB"
 
Frame68.LayoutOrder = 16
 
Frame68.Size = UDim2.new(1, -6, 0, 38)
 
Frame68.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame68.BackgroundTransparency = 0.2
 
Frame68.Parent = ScrollingFrame2
 
local UICorner87 = Instance.new("UICorner")
 
UICorner87.CornerRadius = UDim.new(0, 6)
 
UICorner87.Parent = Frame68
 
local UIStroke55 = Instance.new("UIStroke")
 
UIStroke55.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke55.Thickness = 1
 
UIStroke55.Parent = Frame68
 
local TextLabel40 = Instance.new("TextLabel")
 
TextLabel40.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel40.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel40.BackgroundTransparency = 1
 
TextLabel40.Text = "DECODE HUB"
 
TextLabel40.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel40.TextSize = 12
 
TextLabel40.Font = Enum.Font.SourceSansBold
 
TextLabel40.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel40.Parent = Frame68
 
local Frame69 = Instance.new("Frame")
 
Frame69.Size = UDim2.new(0, 75, 0, 22)
 
Frame69.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame69.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame69.BorderSizePixel = 0
 
Frame69.Parent = Frame68
 
local UICorner88 = Instance.new("UICorner")
 
UICorner88.CornerRadius = UDim.new(0, 4)
 
UICorner88.Parent = Frame69
 
local UIStroke56 = Instance.new("UIStroke")
 
UIStroke56.Thickness = 1
 
UIStroke56.Parent = Frame69
 
local TextLabel41 = Instance.new("TextLabel")
 
TextLabel41.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel41.BackgroundTransparency = 1
 
TextLabel41.Text = "KEY"
 
TextLabel41.TextSize = 9
 
TextLabel41.Font = Enum.Font.SourceSansBold
 
TextLabel41.Parent = Frame69
 
Frame69.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke56.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel41.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton24 = Instance.new("TextButton")
 
TextButton24.Size = UDim2.new(0, 80, 0, 26)
 
TextButton24.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton24.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton24.Text = "EXECUTE"
 
TextButton24.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton24.TextSize = 11
 
TextButton24.Font = Enum.Font.SourceSansBold
 
TextButton24.Parent = Frame68
 
local UICorner89 = Instance.new("UICorner")
 
UICorner89.CornerRadius = UDim.new(0, 6)
 
UICorner89.Parent = TextButton24
 
local UIStroke57 = Instance.new("UIStroke")
 
UIStroke57.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke57.Thickness = 1
 
UIStroke57.Parent = TextButton24
 
TextButton24.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response15 = game:HttpGet("https://raw.githubusercontent.com/ItzYumi/Decode/refs/heads/main/DE%3ACODE.lua", true)
		 
		loadstring(response15)()
	end)
	 
	local Frame272 = Instance.new("Frame")
	 
	Frame272.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame272.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame272.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame272.BackgroundTransparency = 0.1
	 
	Frame272.BorderSizePixel = 0
	 
	Frame272.Parent = ScreenGui3
	 
	local UICorner431 = Instance.new("UICorner")
	 
	UICorner431.CornerRadius = UDim.new(0, 8)
	 
	UICorner431.Parent = Frame272
	 
	local UIStroke399 = Instance.new("UIStroke")
	 
	UIStroke399.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke399.Thickness = 1.2
	 
	UIStroke399.Parent = Frame272
	 
	local TextLabel246 = Instance.new("TextLabel")
	 
	TextLabel246.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel246.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel246.BackgroundTransparency = 1
	 
	TextLabel246.Text = "Executed DECODE HUB"
	 
	TextLabel246.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel246.TextSize = 13
	 
	TextLabel246.Font = Enum.Font.SourceSansBold
	 
	TextLabel246.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel246.Parent = Frame272
	 
	local tween49 = TweenService:Create(Frame272, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween49:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton24.Text = "LOADED"
	 
	TextButton24.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke57.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame70 = Instance.new("Frame")
 
Frame70.Name = "FLOW HUB"
 
Frame70.LayoutOrder = 17
 
Frame70.Size = UDim2.new(1, -6, 0, 38)
 
Frame70.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame70.BackgroundTransparency = 0.2
 
Frame70.Parent = ScrollingFrame2
 
local UICorner90 = Instance.new("UICorner")
 
UICorner90.CornerRadius = UDim.new(0, 6)
 
UICorner90.Parent = Frame70
 
local UIStroke58 = Instance.new("UIStroke")
 
UIStroke58.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke58.Thickness = 1
 
UIStroke58.Parent = Frame70
 
local TextLabel42 = Instance.new("TextLabel")
 
TextLabel42.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel42.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel42.BackgroundTransparency = 1
 
TextLabel42.Text = "FLOW HUB"
 
TextLabel42.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel42.TextSize = 12
 
TextLabel42.Font = Enum.Font.SourceSansBold
 
TextLabel42.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel42.Parent = Frame70
 
local Frame71 = Instance.new("Frame")
 
Frame71.Size = UDim2.new(0, 75, 0, 22)
 
Frame71.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame71.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame71.BorderSizePixel = 0
 
Frame71.Parent = Frame70
 
local UICorner91 = Instance.new("UICorner")
 
UICorner91.CornerRadius = UDim.new(0, 4)
 
UICorner91.Parent = Frame71
 
local UIStroke59 = Instance.new("UIStroke")
 
UIStroke59.Thickness = 1
 
UIStroke59.Parent = Frame71
 
local TextLabel43 = Instance.new("TextLabel")
 
TextLabel43.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel43.BackgroundTransparency = 1
 
TextLabel43.Text = "KEY"
 
TextLabel43.TextSize = 9
 
TextLabel43.Font = Enum.Font.SourceSansBold
 
TextLabel43.Parent = Frame71
 
Frame71.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke59.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel43.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton25 = Instance.new("TextButton")
 
TextButton25.Size = UDim2.new(0, 80, 0, 26)
 
TextButton25.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton25.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton25.Text = "EXECUTE"
 
TextButton25.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton25.TextSize = 11
 
TextButton25.Font = Enum.Font.SourceSansBold
 
TextButton25.Parent = Frame70
 
local UICorner92 = Instance.new("UICorner")
 
UICorner92.CornerRadius = UDim.new(0, 6)
 
UICorner92.Parent = TextButton25
 
local UIStroke60 = Instance.new("UIStroke")
 
UIStroke60.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke60.Thickness = 1
 
UIStroke60.Parent = TextButton25
 
TextButton25.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response16 = game:HttpGet("https://api.luarmor.net/files/v4/loaders/5946add9ab91f1e04cb005346a8b1968.lua")
		 
		loadstring(response16)()
	end)
	 
	local Frame273 = Instance.new("Frame")
	 
	Frame273.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame273.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame273.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame273.BackgroundTransparency = 0.1
	 
	Frame273.BorderSizePixel = 0
	 
	Frame273.Parent = ScreenGui3
	 
	local UICorner432 = Instance.new("UICorner")
	 
	UICorner432.CornerRadius = UDim.new(0, 8)
	 
	UICorner432.Parent = Frame273
	 
	local UIStroke400 = Instance.new("UIStroke")
	 
	UIStroke400.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke400.Thickness = 1.2
	 
	UIStroke400.Parent = Frame273
	 
	local TextLabel247 = Instance.new("TextLabel")
	 
	TextLabel247.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel247.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel247.BackgroundTransparency = 1
	 
	TextLabel247.Text = "Executed FLOW HUB"
	 
	TextLabel247.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel247.TextSize = 13
	 
	TextLabel247.Font = Enum.Font.SourceSansBold
	 
	TextLabel247.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel247.Parent = Frame273
	 
	local tween50 = TweenService:Create(Frame273, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween50:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton25.Text = "LOADED"
	 
	TextButton25.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton25.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke60.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame72 = Instance.new("Frame")
 
Frame72.Name = "FOXNAME HUB"
 
Frame72.LayoutOrder = 18
 
Frame72.Size = UDim2.new(1, -6, 0, 38)
 
Frame72.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame72.BackgroundTransparency = 0.2
 
Frame72.Parent = ScrollingFrame2
 
local UICorner93 = Instance.new("UICorner")
 
UICorner93.CornerRadius = UDim.new(0, 6)
 
UICorner93.Parent = Frame72
 
local UIStroke61 = Instance.new("UIStroke")
 
UIStroke61.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke61.Thickness = 1
 
UIStroke61.Parent = Frame72
 
local TextLabel44 = Instance.new("TextLabel")
 
TextLabel44.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel44.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel44.BackgroundTransparency = 1
 
TextLabel44.Text = "FOXNAME HUB"
 
TextLabel44.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel44.TextSize = 12
 
TextLabel44.Font = Enum.Font.SourceSansBold
 
TextLabel44.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel44.Parent = Frame72
 
local Frame73 = Instance.new("Frame")
 
Frame73.Size = UDim2.new(0, 75, 0, 22)
 
Frame73.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame73.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame73.BorderSizePixel = 0
 
Frame73.Parent = Frame72
 
local UICorner94 = Instance.new("UICorner")
 
UICorner94.CornerRadius = UDim.new(0, 4)
 
UICorner94.Parent = Frame73
 
local UIStroke62 = Instance.new("UIStroke")
 
UIStroke62.Thickness = 1
 
UIStroke62.Parent = Frame73
 
local TextLabel45 = Instance.new("TextLabel")
 
TextLabel45.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel45.BackgroundTransparency = 1
 
TextLabel45.Text = "KEYLESS"
 
TextLabel45.TextSize = 9
 
TextLabel45.Font = Enum.Font.SourceSansBold
 
TextLabel45.Parent = Frame73
 
Frame73.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke62.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel45.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton26 = Instance.new("TextButton")
 
TextButton26.Size = UDim2.new(0, 80, 0, 26)
 
TextButton26.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton26.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton26.Text = "EXECUTE"
 
TextButton26.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton26.TextSize = 11
 
TextButton26.Font = Enum.Font.SourceSansBold
 
TextButton26.Parent = Frame72
 
local UICorner95 = Instance.new("UICorner")
 
UICorner95.CornerRadius = UDim.new(0, 6)
 
UICorner95.Parent = TextButton26
 
local UIStroke63 = Instance.new("UIStroke")
 
UIStroke63.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke63.Thickness = 1
 
UIStroke63.Parent = TextButton26
 
TextButton26.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response17 = game:HttpGet("https://raw.githubusercontent.com/Bliqe/Upload/refs/heads/main/Games/RUO/12665928789.lua")
		 
		loadstring(response17)()
	end)
	 
	local Frame274 = Instance.new("Frame")
	 
	Frame274.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame274.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame274.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame274.BackgroundTransparency = 0.1
	 
	Frame274.BorderSizePixel = 0
	 
	Frame274.Parent = ScreenGui3
	 
	local UICorner433 = Instance.new("UICorner")
	 
	UICorner433.CornerRadius = UDim.new(0, 8)
	 
	UICorner433.Parent = Frame274
	 
	local UIStroke401 = Instance.new("UIStroke")
	 
	UIStroke401.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke401.Thickness = 1.2
	 
	UIStroke401.Parent = Frame274
	 
	local TextLabel248 = Instance.new("TextLabel")
	 
	TextLabel248.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel248.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel248.BackgroundTransparency = 1
	 
	TextLabel248.Text = "Executed FOXNAME HUB"
	 
	TextLabel248.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel248.TextSize = 13
	 
	TextLabel248.Font = Enum.Font.SourceSansBold
	 
	TextLabel248.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel248.Parent = Frame274
	 
	local tween51 = TweenService:Create(Frame274, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween51:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton26.Text = "LOADED"
	 
	TextButton26.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke63.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame74 = Instance.new("Frame")
 
Frame74.Name = "FYNESSED HUB"
 
Frame74.LayoutOrder = 19
 
Frame74.Size = UDim2.new(1, -6, 0, 38)
 
Frame74.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame74.BackgroundTransparency = 0.2
 
Frame74.Parent = ScrollingFrame2
 
local UICorner96 = Instance.new("UICorner")
 
UICorner96.CornerRadius = UDim.new(0, 6)
 
UICorner96.Parent = Frame74
 
local UIStroke64 = Instance.new("UIStroke")
 
UIStroke64.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke64.Thickness = 1
 
UIStroke64.Parent = Frame74
 
local TextLabel46 = Instance.new("TextLabel")
 
TextLabel46.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel46.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel46.BackgroundTransparency = 1
 
TextLabel46.Text = "FYNESSED HUB"
 
TextLabel46.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel46.TextSize = 12
 
TextLabel46.Font = Enum.Font.SourceSansBold
 
TextLabel46.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel46.Parent = Frame74
 
local Frame75 = Instance.new("Frame")
 
Frame75.Size = UDim2.new(0, 75, 0, 22)
 
Frame75.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame75.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame75.BorderSizePixel = 0
 
Frame75.Parent = Frame74
 
local UICorner97 = Instance.new("UICorner")
 
UICorner97.CornerRadius = UDim.new(0, 4)
 
UICorner97.Parent = Frame75
 
local UIStroke65 = Instance.new("UIStroke")
 
UIStroke65.Thickness = 1
 
UIStroke65.Parent = Frame75
 
local TextLabel47 = Instance.new("TextLabel")
 
TextLabel47.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel47.BackgroundTransparency = 1
 
TextLabel47.Text = "KEY"
 
TextLabel47.TextSize = 9
 
TextLabel47.Font = Enum.Font.SourceSansBold
 
TextLabel47.Parent = Frame75
 
Frame75.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke65.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel47.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton27 = Instance.new("TextButton")
 
TextButton27.Size = UDim2.new(0, 80, 0, 26)
 
TextButton27.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton27.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton27.Text = "EXECUTE"
 
TextButton27.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton27.TextSize = 11
 
TextButton27.Font = Enum.Font.SourceSansBold
 
TextButton27.Parent = Frame74
 
local UICorner98 = Instance.new("UICorner")
 
UICorner98.CornerRadius = UDim.new(0, 6)
 
UICorner98.Parent = TextButton27
 
local UIStroke66 = Instance.new("UIStroke")
 
UIStroke66.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke66.Thickness = 1
 
UIStroke66.Parent = TextButton27
 
TextButton27.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response18 = game:HttpGet("https://raw.githubusercontent.com/AhmadV6/StealAnEgg/refs/heads/main/FynessedHub")
		 
		loadstring(response18)()
	end)
	 
	local Frame275 = Instance.new("Frame")
	 
	Frame275.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame275.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame275.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame275.BackgroundTransparency = 0.1
	 
	Frame275.BorderSizePixel = 0
	 
	Frame275.Parent = ScreenGui3
	 
	local UICorner434 = Instance.new("UICorner")
	 
	UICorner434.CornerRadius = UDim.new(0, 8)
	 
	UICorner434.Parent = Frame275
	 
	local UIStroke402 = Instance.new("UIStroke")
	 
	UIStroke402.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke402.Thickness = 1.2
	 
	UIStroke402.Parent = Frame275
	 
	local TextLabel249 = Instance.new("TextLabel")
	 
	TextLabel249.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel249.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel249.BackgroundTransparency = 1
	 
	TextLabel249.Text = "Executed FYNESSED HUB"
	 
	TextLabel249.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel249.TextSize = 13
	 
	TextLabel249.Font = Enum.Font.SourceSansBold
	 
	TextLabel249.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel249.Parent = Frame275
	 
	local tween52 = TweenService:Create(Frame275, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween52:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton27.Text = "LOADED"
	 
	TextButton27.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton27.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke66.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame76 = Instance.new("Frame")
 
Frame76.Name = "FYY HUB"
 
Frame76.LayoutOrder = 20
 
Frame76.Size = UDim2.new(1, -6, 0, 38)
 
Frame76.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame76.BackgroundTransparency = 0.2
 
Frame76.Parent = ScrollingFrame2
 
local UICorner99 = Instance.new("UICorner")
 
UICorner99.CornerRadius = UDim.new(0, 6)
 
UICorner99.Parent = Frame76
 
local UIStroke67 = Instance.new("UIStroke")
 
UIStroke67.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke67.Thickness = 1
 
UIStroke67.Parent = Frame76
 
local TextLabel48 = Instance.new("TextLabel")
 
TextLabel48.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel48.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel48.BackgroundTransparency = 1
 
TextLabel48.Text = "FYY HUB"
 
TextLabel48.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel48.TextSize = 12
 
TextLabel48.Font = Enum.Font.SourceSansBold
 
TextLabel48.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel48.Parent = Frame76
 
local Frame77 = Instance.new("Frame")
 
Frame77.Size = UDim2.new(0, 75, 0, 22)
 
Frame77.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame77.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame77.BorderSizePixel = 0
 
Frame77.Parent = Frame76
 
local UICorner100 = Instance.new("UICorner")
 
UICorner100.CornerRadius = UDim.new(0, 4)
 
UICorner100.Parent = Frame77
 
local UIStroke68 = Instance.new("UIStroke")
 
UIStroke68.Thickness = 1
 
UIStroke68.Parent = Frame77
 
local TextLabel49 = Instance.new("TextLabel")
 
TextLabel49.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel49.BackgroundTransparency = 1
 
TextLabel49.Text = "KEY"
 
TextLabel49.TextSize = 9
 
TextLabel49.Font = Enum.Font.SourceSansBold
 
TextLabel49.Parent = Frame77
 
Frame77.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke68.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel49.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton28 = Instance.new("TextButton")
 
TextButton28.Size = UDim2.new(0, 80, 0, 26)
 
TextButton28.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton28.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton28.Text = "EXECUTE"
 
TextButton28.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton28.TextSize = 11
 
TextButton28.Font = Enum.Font.SourceSansBold
 
TextButton28.Parent = Frame76
 
local UICorner101 = Instance.new("UICorner")
 
UICorner101.CornerRadius = UDim.new(0, 6)
 
UICorner101.Parent = TextButton28
 
local UIStroke69 = Instance.new("UIStroke")
 
UIStroke69.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke69.Thickness = 1
 
UIStroke69.Parent = TextButton28
 
TextButton28.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response19 = game:HttpGet("https://FyyCommunity.my.id")
		 
		loadstring(response19)()
	end)
	 
	local Frame276 = Instance.new("Frame")
	 
	Frame276.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame276.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame276.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame276.BackgroundTransparency = 0.1
	 
	Frame276.BorderSizePixel = 0
	 
	Frame276.Parent = ScreenGui3
	 
	local UICorner435 = Instance.new("UICorner")
	 
	UICorner435.CornerRadius = UDim.new(0, 8)
	 
	UICorner435.Parent = Frame276
	 
	local UIStroke403 = Instance.new("UIStroke")
	 
	UIStroke403.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke403.Thickness = 1.2
	 
	UIStroke403.Parent = Frame276
	 
	local TextLabel250 = Instance.new("TextLabel")
	 
	TextLabel250.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel250.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel250.BackgroundTransparency = 1
	 
	TextLabel250.Text = "Executed FYY HUB"
	 
	TextLabel250.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel250.TextSize = 13
	 
	TextLabel250.Font = Enum.Font.SourceSansBold
	 
	TextLabel250.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel250.Parent = Frame276
	 
	local tween53 = TweenService:Create(Frame276, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween53:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton28.Text = "LOADED"
	 
	TextButton28.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke69.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame78 = Instance.new("Frame")
 
Frame78.Name = "GS HUB"
 
Frame78.LayoutOrder = 21
 
Frame78.Size = UDim2.new(1, -6, 0, 38)
 
Frame78.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame78.BackgroundTransparency = 0.2
 
Frame78.Parent = ScrollingFrame2
 
local UICorner102 = Instance.new("UICorner")
 
UICorner102.CornerRadius = UDim.new(0, 6)
 
UICorner102.Parent = Frame78
 
local UIStroke70 = Instance.new("UIStroke")
 
UIStroke70.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke70.Thickness = 1
 
UIStroke70.Parent = Frame78
 
local TextLabel50 = Instance.new("TextLabel")
 
TextLabel50.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel50.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel50.BackgroundTransparency = 1
 
TextLabel50.Text = "GS HUB"
 
TextLabel50.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel50.TextSize = 12
 
TextLabel50.Font = Enum.Font.SourceSansBold
 
TextLabel50.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel50.Parent = Frame78
 
local Frame79 = Instance.new("Frame")
 
Frame79.Size = UDim2.new(0, 75, 0, 22)
 
Frame79.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame79.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame79.BorderSizePixel = 0
 
Frame79.Parent = Frame78
 
local UICorner103 = Instance.new("UICorner")
 
UICorner103.CornerRadius = UDim.new(0, 4)
 
UICorner103.Parent = Frame79
 
local UIStroke71 = Instance.new("UIStroke")
 
UIStroke71.Thickness = 1
 
UIStroke71.Parent = Frame79
 
local TextLabel51 = Instance.new("TextLabel")
 
TextLabel51.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel51.BackgroundTransparency = 1
 
TextLabel51.Text = "KEY"
 
TextLabel51.TextSize = 9
 
TextLabel51.Font = Enum.Font.SourceSansBold
 
TextLabel51.Parent = Frame79
 
Frame79.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke71.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel51.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton29 = Instance.new("TextButton")
 
TextButton29.Size = UDim2.new(0, 80, 0, 26)
 
TextButton29.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton29.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton29.Text = "EXECUTE"
 
TextButton29.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton29.TextSize = 11
 
TextButton29.Font = Enum.Font.SourceSansBold
 
TextButton29.Parent = Frame78
 
local UICorner104 = Instance.new("UICorner")
 
UICorner104.CornerRadius = UDim.new(0, 6)
 
UICorner104.Parent = TextButton29
 
local UIStroke72 = Instance.new("UIStroke")
 
UIStroke72.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke72.Thickness = 1
 
UIStroke72.Parent = TextButton29
 
TextButton29.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response20 = game:HttpGet("https://gist.githubusercontent.com/spiritualgaming1123-beep/46ef55c5f8284e076aafc5ebd12233f4/raw/5b24749c3931c1838a76e64c9af508dcdd03700a/gistfile1.lua")
		 
		loadstring(response20)()
	end)
	 
	local Frame277 = Instance.new("Frame")
	 
	Frame277.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame277.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame277.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame277.BackgroundTransparency = 0.1
	 
	Frame277.BorderSizePixel = 0
	 
	Frame277.Parent = ScreenGui3
	 
	local UICorner436 = Instance.new("UICorner")
	 
	UICorner436.CornerRadius = UDim.new(0, 8)
	 
	UICorner436.Parent = Frame277
	 
	local UIStroke404 = Instance.new("UIStroke")
	 
	UIStroke404.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke404.Thickness = 1.2
	 
	UIStroke404.Parent = Frame277
	 
	local TextLabel251 = Instance.new("TextLabel")
	 
	TextLabel251.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel251.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel251.BackgroundTransparency = 1
	 
	TextLabel251.Text = "Executed GS HUB"
	 
	TextLabel251.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel251.TextSize = 13
	 
	TextLabel251.Font = Enum.Font.SourceSansBold
	 
	TextLabel251.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel251.Parent = Frame277
	 
	local tween54 = TweenService:Create(Frame277, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween54:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton29.Text = "LOADED"
	 
	TextButton29.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton29.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke72.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame80 = Instance.new("Frame")
 
Frame80.Name = "HOSHI HUB"
 
Frame80.LayoutOrder = 22
 
Frame80.Size = UDim2.new(1, -6, 0, 38)
 
Frame80.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame80.BackgroundTransparency = 0.2
 
Frame80.Parent = ScrollingFrame2
 
local UICorner105 = Instance.new("UICorner")
 
UICorner105.CornerRadius = UDim.new(0, 6)
 
UICorner105.Parent = Frame80
 
local UIStroke73 = Instance.new("UIStroke")
 
UIStroke73.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke73.Thickness = 1
 
UIStroke73.Parent = Frame80
 
local TextLabel52 = Instance.new("TextLabel")
 
TextLabel52.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel52.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel52.BackgroundTransparency = 1
 
TextLabel52.Text = "HOSHI HUB"
 
TextLabel52.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel52.TextSize = 12
 
TextLabel52.Font = Enum.Font.SourceSansBold
 
TextLabel52.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel52.Parent = Frame80
 
local Frame81 = Instance.new("Frame")
 
Frame81.Size = UDim2.new(0, 75, 0, 22)
 
Frame81.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame81.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame81.BorderSizePixel = 0
 
Frame81.Parent = Frame80
 
local UICorner106 = Instance.new("UICorner")
 
UICorner106.CornerRadius = UDim.new(0, 4)
 
UICorner106.Parent = Frame81
 
local UIStroke74 = Instance.new("UIStroke")
 
UIStroke74.Thickness = 1
 
UIStroke74.Parent = Frame81
 
local TextLabel53 = Instance.new("TextLabel")
 
TextLabel53.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel53.BackgroundTransparency = 1
 
TextLabel53.Text = "KEYLESS"
 
TextLabel53.TextSize = 9
 
TextLabel53.Font = Enum.Font.SourceSansBold
 
TextLabel53.Parent = Frame81
 
Frame81.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke74.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel53.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton30 = Instance.new("TextButton")
 
TextButton30.Size = UDim2.new(0, 80, 0, 26)
 
TextButton30.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton30.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton30.Text = "EXECUTE"
 
TextButton30.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton30.TextSize = 11
 
TextButton30.Font = Enum.Font.SourceSansBold
 
TextButton30.Parent = Frame80
 
local UICorner107 = Instance.new("UICorner")
 
UICorner107.CornerRadius = UDim.new(0, 6)
 
UICorner107.Parent = TextButton30
 
local UIStroke75 = Instance.new("UIStroke")
 
UIStroke75.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke75.Thickness = 1
 
UIStroke75.Parent = TextButton30
 
TextButton30.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response21 = game:HttpGet("https://hoshihub.site/loader.lua")
		 
		loadstring(response21)()
	end)
	 
	local Frame278 = Instance.new("Frame")
	 
	Frame278.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame278.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame278.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame278.BackgroundTransparency = 0.1
	 
	Frame278.BorderSizePixel = 0
	 
	Frame278.Parent = ScreenGui3
	 
	local UICorner437 = Instance.new("UICorner")
	 
	UICorner437.CornerRadius = UDim.new(0, 8)
	 
	UICorner437.Parent = Frame278
	 
	local UIStroke405 = Instance.new("UIStroke")
	 
	UIStroke405.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke405.Thickness = 1.2
	 
	UIStroke405.Parent = Frame278
	 
	local TextLabel252 = Instance.new("TextLabel")
	 
	TextLabel252.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel252.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel252.BackgroundTransparency = 1
	 
	TextLabel252.Text = "Executed HOSHI HUB"
	 
	TextLabel252.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel252.TextSize = 13
	 
	TextLabel252.Font = Enum.Font.SourceSansBold
	 
	TextLabel252.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel252.Parent = Frame278
	 
	local tween55 = TweenService:Create(Frame278, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween55:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton30.Text = "LOADED"
	 
	TextButton30.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke75.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame82 = Instance.new("Frame")
 
Frame82.Name = "JINHUB"
 
Frame82.LayoutOrder = 23
 
Frame82.Size = UDim2.new(1, -6, 0, 38)
 
Frame82.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame82.BackgroundTransparency = 0.2
 
Frame82.Parent = ScrollingFrame2
 
local UICorner108 = Instance.new("UICorner")
 
UICorner108.CornerRadius = UDim.new(0, 6)
 
UICorner108.Parent = Frame82
 
local UIStroke76 = Instance.new("UIStroke")
 
UIStroke76.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke76.Thickness = 1
 
UIStroke76.Parent = Frame82
 
local TextLabel54 = Instance.new("TextLabel")
 
TextLabel54.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel54.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel54.BackgroundTransparency = 1
 
TextLabel54.Text = "JINHUB"
 
TextLabel54.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel54.TextSize = 12
 
TextLabel54.Font = Enum.Font.SourceSansBold
 
TextLabel54.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel54.Parent = Frame82
 
local Frame83 = Instance.new("Frame")
 
Frame83.Size = UDim2.new(0, 75, 0, 22)
 
Frame83.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame83.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame83.BorderSizePixel = 0
 
Frame83.Parent = Frame82
 
local UICorner109 = Instance.new("UICorner")
 
UICorner109.CornerRadius = UDim.new(0, 4)
 
UICorner109.Parent = Frame83
 
local UIStroke77 = Instance.new("UIStroke")
 
UIStroke77.Thickness = 1
 
UIStroke77.Parent = Frame83
 
local TextLabel55 = Instance.new("TextLabel")
 
TextLabel55.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel55.BackgroundTransparency = 1
 
TextLabel55.Text = "KEY"
 
TextLabel55.TextSize = 9
 
TextLabel55.Font = Enum.Font.SourceSansBold
 
TextLabel55.Parent = Frame83
 
Frame83.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke77.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel55.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton31 = Instance.new("TextButton")
 
TextButton31.Size = UDim2.new(0, 80, 0, 26)
 
TextButton31.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton31.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton31.Text = "EXECUTE"
 
TextButton31.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton31.TextSize = 11
 
TextButton31.Font = Enum.Font.SourceSansBold
 
TextButton31.Parent = Frame82
 
local UICorner110 = Instance.new("UICorner")
 
UICorner110.CornerRadius = UDim.new(0, 6)
 
UICorner110.Parent = TextButton31
 
local UIStroke78 = Instance.new("UIStroke")
 
UIStroke78.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke78.Thickness = 1
 
UIStroke78.Parent = TextButton31
 
TextButton31.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response22 = game:HttpGet("https://jinhub.my.id/scripts/Universal.lua")
		 
		loadstring(response22)()
	end)
	 
	local Frame279 = Instance.new("Frame")
	 
	Frame279.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame279.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame279.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame279.BackgroundTransparency = 0.1
	 
	Frame279.BorderSizePixel = 0
	 
	Frame279.Parent = ScreenGui3
	 
	local UICorner438 = Instance.new("UICorner")
	 
	UICorner438.CornerRadius = UDim.new(0, 8)
	 
	UICorner438.Parent = Frame279
	 
	local UIStroke406 = Instance.new("UIStroke")
	 
	UIStroke406.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke406.Thickness = 1.2
	 
	UIStroke406.Parent = Frame279
	 
	local TextLabel253 = Instance.new("TextLabel")
	 
	TextLabel253.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel253.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel253.BackgroundTransparency = 1
	 
	TextLabel253.Text = "Executed JINHUB"
	 
	TextLabel253.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel253.TextSize = 13
	 
	TextLabel253.Font = Enum.Font.SourceSansBold
	 
	TextLabel253.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel253.Parent = Frame279
	 
	local tween56 = TweenService:Create(Frame279, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween56:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton31.Text = "LOADED"
	 
	TextButton31.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton31.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke78.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame84 = Instance.new("Frame")
 
Frame84.Name = "KALI HUB"
 
Frame84.LayoutOrder = 24
 
Frame84.Size = UDim2.new(1, -6, 0, 38)
 
Frame84.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame84.BackgroundTransparency = 0.2
 
Frame84.Parent = ScrollingFrame2
 
local UICorner111 = Instance.new("UICorner")
 
UICorner111.CornerRadius = UDim.new(0, 6)
 
UICorner111.Parent = Frame84
 
local UIStroke79 = Instance.new("UIStroke")
 
UIStroke79.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke79.Thickness = 1
 
UIStroke79.Parent = Frame84
 
local TextLabel56 = Instance.new("TextLabel")
 
TextLabel56.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel56.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel56.BackgroundTransparency = 1
 
TextLabel56.Text = "KALI HUB"
 
TextLabel56.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel56.TextSize = 12
 
TextLabel56.Font = Enum.Font.SourceSansBold
 
TextLabel56.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel56.Parent = Frame84
 
local Frame85 = Instance.new("Frame")
 
Frame85.Size = UDim2.new(0, 75, 0, 22)
 
Frame85.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame85.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame85.BorderSizePixel = 0
 
Frame85.Parent = Frame84
 
local UICorner112 = Instance.new("UICorner")
 
UICorner112.CornerRadius = UDim.new(0, 4)
 
UICorner112.Parent = Frame85
 
local UIStroke80 = Instance.new("UIStroke")
 
UIStroke80.Thickness = 1
 
UIStroke80.Parent = Frame85
 
local TextLabel57 = Instance.new("TextLabel")
 
TextLabel57.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel57.BackgroundTransparency = 1
 
TextLabel57.Text = "KEY"
 
TextLabel57.TextSize = 9
 
TextLabel57.Font = Enum.Font.SourceSansBold
 
TextLabel57.Parent = Frame85
 
Frame85.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke80.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel57.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton32 = Instance.new("TextButton")
 
TextButton32.Size = UDim2.new(0, 80, 0, 26)
 
TextButton32.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton32.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton32.Text = "EXECUTE"
 
TextButton32.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton32.TextSize = 11
 
TextButton32.Font = Enum.Font.SourceSansBold
 
TextButton32.Parent = Frame84
 
local UICorner113 = Instance.new("UICorner")
 
UICorner113.CornerRadius = UDim.new(0, 6)
 
UICorner113.Parent = TextButton32
 
local UIStroke81 = Instance.new("UIStroke")
 
UIStroke81.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke81.Thickness = 1
 
UIStroke81.Parent = TextButton32
 
TextButton32.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response23 = game:HttpGet("https://kalihub.xyz/loader.lua")
		 
		loadstring(response23)()
	end)
	 
	local Frame280 = Instance.new("Frame")
	 
	Frame280.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame280.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame280.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame280.BackgroundTransparency = 0.1
	 
	Frame280.BorderSizePixel = 0
	 
	Frame280.Parent = ScreenGui3
	 
	local UICorner439 = Instance.new("UICorner")
	 
	UICorner439.CornerRadius = UDim.new(0, 8)
	 
	UICorner439.Parent = Frame280
	 
	local UIStroke407 = Instance.new("UIStroke")
	 
	UIStroke407.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke407.Thickness = 1.2
	 
	UIStroke407.Parent = Frame280
	 
	local TextLabel254 = Instance.new("TextLabel")
	 
	TextLabel254.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel254.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel254.BackgroundTransparency = 1
	 
	TextLabel254.Text = "Executed KALI HUB"
	 
	TextLabel254.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel254.TextSize = 13
	 
	TextLabel254.Font = Enum.Font.SourceSansBold
	 
	TextLabel254.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel254.Parent = Frame280
	 
	local tween57 = TweenService:Create(Frame280, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween57:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton32.Text = "LOADED"
	 
	TextButton32.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke81.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame86 = Instance.new("Frame")
 
Frame86.Name = "KEXXE HUB"
 
Frame86.LayoutOrder = 25
 
Frame86.Size = UDim2.new(1, -6, 0, 38)
 
Frame86.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame86.BackgroundTransparency = 0.2
 
Frame86.Parent = ScrollingFrame2
 
local UICorner114 = Instance.new("UICorner")
 
UICorner114.CornerRadius = UDim.new(0, 6)
 
UICorner114.Parent = Frame86
 
local UIStroke82 = Instance.new("UIStroke")
 
UIStroke82.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke82.Thickness = 1
 
UIStroke82.Parent = Frame86
 
local TextLabel58 = Instance.new("TextLabel")
 
TextLabel58.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel58.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel58.BackgroundTransparency = 1
 
TextLabel58.Text = "KEXXE HUB"
 
TextLabel58.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel58.TextSize = 12
 
TextLabel58.Font = Enum.Font.SourceSansBold
 
TextLabel58.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel58.Parent = Frame86
 
local Frame87 = Instance.new("Frame")
 
Frame87.Size = UDim2.new(0, 75, 0, 22)
 
Frame87.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame87.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame87.BorderSizePixel = 0
 
Frame87.Parent = Frame86
 
local UICorner115 = Instance.new("UICorner")
 
UICorner115.CornerRadius = UDim.new(0, 4)
 
UICorner115.Parent = Frame87
 
local UIStroke83 = Instance.new("UIStroke")
 
UIStroke83.Thickness = 1
 
UIStroke83.Parent = Frame87
 
local TextLabel59 = Instance.new("TextLabel")
 
TextLabel59.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel59.BackgroundTransparency = 1
 
TextLabel59.Text = "KEY"
 
TextLabel59.TextSize = 9
 
TextLabel59.Font = Enum.Font.SourceSansBold
 
TextLabel59.Parent = Frame87
 
Frame87.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke83.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel59.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton33 = Instance.new("TextButton")
 
TextButton33.Size = UDim2.new(0, 80, 0, 26)
 
TextButton33.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton33.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton33.Text = "EXECUTE"
 
TextButton33.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton33.TextSize = 11
 
TextButton33.Font = Enum.Font.SourceSansBold
 
TextButton33.Parent = Frame86
 
local UICorner116 = Instance.new("UICorner")
 
UICorner116.CornerRadius = UDim.new(0, 6)
 
UICorner116.Parent = TextButton33
 
local UIStroke84 = Instance.new("UIStroke")
 
UIStroke84.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke84.Thickness = 1
 
UIStroke84.Parent = TextButton33
 
TextButton33.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response24 = game:HttpGet("https://raw.githubusercontent.com/premiumbuddy/kex/refs/heads/main/kexxxx")
		 
		loadstring(response24)()
	end)
	 
	local Frame281 = Instance.new("Frame")
	 
	Frame281.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame281.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame281.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame281.BackgroundTransparency = 0.1
	 
	Frame281.BorderSizePixel = 0
	 
	Frame281.Parent = ScreenGui3
	 
	local UICorner440 = Instance.new("UICorner")
	 
	UICorner440.CornerRadius = UDim.new(0, 8)
	 
	UICorner440.Parent = Frame281
	 
	local UIStroke408 = Instance.new("UIStroke")
	 
	UIStroke408.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke408.Thickness = 1.2
	 
	UIStroke408.Parent = Frame281
	 
	local TextLabel255 = Instance.new("TextLabel")
	 
	TextLabel255.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel255.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel255.BackgroundTransparency = 1
	 
	TextLabel255.Text = "Executed KEXXE HUB"
	 
	TextLabel255.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel255.TextSize = 13
	 
	TextLabel255.Font = Enum.Font.SourceSansBold
	 
	TextLabel255.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel255.Parent = Frame281
	 
	local tween58 = TweenService:Create(Frame281, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween58:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton33.Text = "LOADED"
	 
	TextButton33.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton33.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke84.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame88 = Instance.new("Frame")
 
Frame88.Name = "LENNON HUB"
 
Frame88.LayoutOrder = 26
 
Frame88.Size = UDim2.new(1, -6, 0, 38)
 
Frame88.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame88.BackgroundTransparency = 0.2
 
Frame88.Parent = ScrollingFrame2
 
local UICorner117 = Instance.new("UICorner")
 
UICorner117.CornerRadius = UDim.new(0, 6)
 
UICorner117.Parent = Frame88
 
local UIStroke85 = Instance.new("UIStroke")
 
UIStroke85.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke85.Thickness = 1
 
UIStroke85.Parent = Frame88
 
local TextLabel60 = Instance.new("TextLabel")
 
TextLabel60.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel60.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel60.BackgroundTransparency = 1
 
TextLabel60.Text = "LENNON HUB"
 
TextLabel60.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel60.TextSize = 12
 
TextLabel60.Font = Enum.Font.SourceSansBold
 
TextLabel60.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel60.Parent = Frame88
 
local Frame89 = Instance.new("Frame")
 
Frame89.Size = UDim2.new(0, 75, 0, 22)
 
Frame89.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame89.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame89.BorderSizePixel = 0
 
Frame89.Parent = Frame88
 
local UICorner118 = Instance.new("UICorner")
 
UICorner118.CornerRadius = UDim.new(0, 4)
 
UICorner118.Parent = Frame89
 
local UIStroke86 = Instance.new("UIStroke")
 
UIStroke86.Thickness = 1
 
UIStroke86.Parent = Frame89
 
local TextLabel61 = Instance.new("TextLabel")
 
TextLabel61.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel61.BackgroundTransparency = 1
 
TextLabel61.Text = "KEYLESS"
 
TextLabel61.TextSize = 9
 
TextLabel61.Font = Enum.Font.SourceSansBold
 
TextLabel61.Parent = Frame89
 
Frame89.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke86.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel61.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton34 = Instance.new("TextButton")
 
TextButton34.Size = UDim2.new(0, 80, 0, 26)
 
TextButton34.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton34.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton34.Text = "EXECUTE"
 
TextButton34.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton34.TextSize = 11
 
TextButton34.Font = Enum.Font.SourceSansBold
 
TextButton34.Parent = Frame88
 
local UICorner119 = Instance.new("UICorner")
 
UICorner119.CornerRadius = UDim.new(0, 6)
 
UICorner119.Parent = TextButton34
 
local UIStroke87 = Instance.new("UIStroke")
 
UIStroke87.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke87.Thickness = 1
 
UIStroke87.Parent = TextButton34
 
TextButton34.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response25 = game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonhubv2/main/stealaneggv2")
		 
		loadstring(response25)()
	end)
	 
	local Frame282 = Instance.new("Frame")
	 
	Frame282.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame282.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame282.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame282.BackgroundTransparency = 0.1
	 
	Frame282.BorderSizePixel = 0
	 
	Frame282.Parent = ScreenGui3
	 
	local UICorner441 = Instance.new("UICorner")
	 
	UICorner441.CornerRadius = UDim.new(0, 8)
	 
	UICorner441.Parent = Frame282
	 
	local UIStroke409 = Instance.new("UIStroke")
	 
	UIStroke409.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke409.Thickness = 1.2
	 
	UIStroke409.Parent = Frame282
	 
	local TextLabel256 = Instance.new("TextLabel")
	 
	TextLabel256.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel256.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel256.BackgroundTransparency = 1
	 
	TextLabel256.Text = "Executed LENNON HUB"
	 
	TextLabel256.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel256.TextSize = 13
	 
	TextLabel256.Font = Enum.Font.SourceSansBold
	 
	TextLabel256.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel256.Parent = Frame282
	 
	local tween59 = TweenService:Create(Frame282, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween59:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton34.Text = "LOADED"
	 
	TextButton34.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke87.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame90 = Instance.new("Frame")
 
Frame90.Name = "LEST HUB"
 
Frame90.LayoutOrder = 27
 
Frame90.Size = UDim2.new(1, -6, 0, 38)
 
Frame90.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame90.BackgroundTransparency = 0.2
 
Frame90.Parent = ScrollingFrame2
 
local UICorner120 = Instance.new("UICorner")
 
UICorner120.CornerRadius = UDim.new(0, 6)
 
UICorner120.Parent = Frame90
 
local UIStroke88 = Instance.new("UIStroke")
 
UIStroke88.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke88.Thickness = 1
 
UIStroke88.Parent = Frame90
 
local TextLabel62 = Instance.new("TextLabel")
 
TextLabel62.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel62.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel62.BackgroundTransparency = 1
 
TextLabel62.Text = "LEST HUB"
 
TextLabel62.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel62.TextSize = 12
 
TextLabel62.Font = Enum.Font.SourceSansBold
 
TextLabel62.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel62.Parent = Frame90
 
local Frame91 = Instance.new("Frame")
 
Frame91.Size = UDim2.new(0, 75, 0, 22)
 
Frame91.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame91.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame91.BorderSizePixel = 0
 
Frame91.Parent = Frame90
 
local UICorner121 = Instance.new("UICorner")
 
UICorner121.CornerRadius = UDim.new(0, 4)
 
UICorner121.Parent = Frame91
 
local UIStroke89 = Instance.new("UIStroke")
 
UIStroke89.Thickness = 1
 
UIStroke89.Parent = Frame91
 
local TextLabel63 = Instance.new("TextLabel")
 
TextLabel63.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel63.BackgroundTransparency = 1
 
TextLabel63.Text = "KEYLESS"
 
TextLabel63.TextSize = 9
 
TextLabel63.Font = Enum.Font.SourceSansBold
 
TextLabel63.Parent = Frame91
 
Frame91.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke89.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel63.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton35 = Instance.new("TextButton")
 
TextButton35.Size = UDim2.new(0, 80, 0, 26)
 
TextButton35.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton35.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton35.Text = "EXECUTE"
 
TextButton35.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton35.TextSize = 11
 
TextButton35.Font = Enum.Font.SourceSansBold
 
TextButton35.Parent = Frame90
 
local UICorner122 = Instance.new("UICorner")
 
UICorner122.CornerRadius = UDim.new(0, 6)
 
UICorner122.Parent = TextButton35
 
local UIStroke90 = Instance.new("UIStroke")
 
UIStroke90.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke90.Thickness = 1
 
UIStroke90.Parent = TextButton35
 
TextButton35.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		getgenv().SCRIPT_KEY = "KEYLESS"
		 
		local response26 = game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/c916d48837ab69c48a9b3cafb04b49c8d9253af84cf8e403b19e2be302cbe67a/download")
		 
		loadstring(response26)()
	end)
	 
	local Frame283 = Instance.new("Frame")
	 
	Frame283.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame283.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame283.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame283.BackgroundTransparency = 0.1
	 
	Frame283.BorderSizePixel = 0
	 
	Frame283.Parent = ScreenGui3
	 
	local UICorner442 = Instance.new("UICorner")
	 
	UICorner442.CornerRadius = UDim.new(0, 8)
	 
	UICorner442.Parent = Frame283
	 
	local UIStroke410 = Instance.new("UIStroke")
	 
	UIStroke410.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke410.Thickness = 1.2
	 
	UIStroke410.Parent = Frame283
	 
	local TextLabel257 = Instance.new("TextLabel")
	 
	TextLabel257.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel257.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel257.BackgroundTransparency = 1
	 
	TextLabel257.Text = "Executed LEST HUB"
	 
	TextLabel257.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel257.TextSize = 13
	 
	TextLabel257.Font = Enum.Font.SourceSansBold
	 
	TextLabel257.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel257.Parent = Frame283
	 
	local tween60 = TweenService:Create(Frame283, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween60:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton35.Text = "LOADED"
	 
	TextButton35.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton35.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke90.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame92 = Instance.new("Frame")
 
Frame92.Name = "LKZ"
 
Frame92.LayoutOrder = 28
 
Frame92.Size = UDim2.new(1, -6, 0, 38)
 
Frame92.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame92.BackgroundTransparency = 0.2
 
Frame92.Parent = ScrollingFrame2
 
local UICorner123 = Instance.new("UICorner")
 
UICorner123.CornerRadius = UDim.new(0, 6)
 
UICorner123.Parent = Frame92
 
local UIStroke91 = Instance.new("UIStroke")
 
UIStroke91.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke91.Thickness = 1
 
UIStroke91.Parent = Frame92
 
local TextLabel64 = Instance.new("TextLabel")
 
TextLabel64.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel64.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel64.BackgroundTransparency = 1
 
TextLabel64.Text = "LKZ"
 
TextLabel64.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel64.TextSize = 12
 
TextLabel64.Font = Enum.Font.SourceSansBold
 
TextLabel64.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel64.Parent = Frame92
 
local Frame93 = Instance.new("Frame")
 
Frame93.Size = UDim2.new(0, 75, 0, 22)
 
Frame93.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame93.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame93.BorderSizePixel = 0
 
Frame93.Parent = Frame92
 
local UICorner124 = Instance.new("UICorner")
 
UICorner124.CornerRadius = UDim.new(0, 4)
 
UICorner124.Parent = Frame93
 
local UIStroke92 = Instance.new("UIStroke")
 
UIStroke92.Thickness = 1
 
UIStroke92.Parent = Frame93
 
local TextLabel65 = Instance.new("TextLabel")
 
TextLabel65.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel65.BackgroundTransparency = 1
 
TextLabel65.Text = "KEYLESS"
 
TextLabel65.TextSize = 9
 
TextLabel65.Font = Enum.Font.SourceSansBold
 
TextLabel65.Parent = Frame93
 
Frame93.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke92.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel65.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton36 = Instance.new("TextButton")
 
TextButton36.Size = UDim2.new(0, 80, 0, 26)
 
TextButton36.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton36.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton36.Text = "EXECUTE"
 
TextButton36.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton36.TextSize = 11
 
TextButton36.Font = Enum.Font.SourceSansBold
 
TextButton36.Parent = Frame92
 
local UICorner125 = Instance.new("UICorner")
 
UICorner125.CornerRadius = UDim.new(0, 6)
 
UICorner125.Parent = TextButton36
 
local UIStroke93 = Instance.new("UIStroke")
 
UIStroke93.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke93.Thickness = 1
 
UIStroke93.Parent = TextButton36
 
TextButton36.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response27 = game:HttpGet("https://api.luarmor.net/files/v4/loaders/65bf3459d87ba3ac46350e154b640929.lua")
		 
		loadstring(response27)()
	end)
	 
	local Frame284 = Instance.new("Frame")
	 
	Frame284.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame284.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame284.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame284.BackgroundTransparency = 0.1
	 
	Frame284.BorderSizePixel = 0
	 
	Frame284.Parent = ScreenGui3
	 
	local UICorner443 = Instance.new("UICorner")
	 
	UICorner443.CornerRadius = UDim.new(0, 8)
	 
	UICorner443.Parent = Frame284
	 
	local UIStroke411 = Instance.new("UIStroke")
	 
	UIStroke411.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke411.Thickness = 1.2
	 
	UIStroke411.Parent = Frame284
	 
	local TextLabel258 = Instance.new("TextLabel")
	 
	TextLabel258.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel258.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel258.BackgroundTransparency = 1
	 
	TextLabel258.Text = "Executed LKZ"
	 
	TextLabel258.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel258.TextSize = 13
	 
	TextLabel258.Font = Enum.Font.SourceSansBold
	 
	TextLabel258.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel258.Parent = Frame284
	 
	local tween61 = TweenService:Create(Frame284, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween61:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton36.Text = "LOADED"
	 
	TextButton36.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke93.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame94 = Instance.new("Frame")
 
Frame94.Name = "LUMIN HUB"
 
Frame94.LayoutOrder = 29
 
Frame94.Size = UDim2.new(1, -6, 0, 38)
 
Frame94.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame94.BackgroundTransparency = 0.2
 
Frame94.Parent = ScrollingFrame2
 
local UICorner126 = Instance.new("UICorner")
 
UICorner126.CornerRadius = UDim.new(0, 6)
 
UICorner126.Parent = Frame94
 
local UIStroke94 = Instance.new("UIStroke")
 
UIStroke94.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke94.Thickness = 1
 
UIStroke94.Parent = Frame94
 
local TextLabel66 = Instance.new("TextLabel")
 
TextLabel66.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel66.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel66.BackgroundTransparency = 1
 
TextLabel66.Text = "LUMIN HUB"
 
TextLabel66.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel66.TextSize = 12
 
TextLabel66.Font = Enum.Font.SourceSansBold
 
TextLabel66.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel66.Parent = Frame94
 
local Frame95 = Instance.new("Frame")
 
Frame95.Size = UDim2.new(0, 75, 0, 22)
 
Frame95.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame95.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame95.BorderSizePixel = 0
 
Frame95.Parent = Frame94
 
local UICorner127 = Instance.new("UICorner")
 
UICorner127.CornerRadius = UDim.new(0, 4)
 
UICorner127.Parent = Frame95
 
local UIStroke95 = Instance.new("UIStroke")
 
UIStroke95.Thickness = 1
 
UIStroke95.Parent = Frame95
 
local TextLabel67 = Instance.new("TextLabel")
 
TextLabel67.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel67.BackgroundTransparency = 1
 
TextLabel67.Text = "KEY"
 
TextLabel67.TextSize = 9
 
TextLabel67.Font = Enum.Font.SourceSansBold
 
TextLabel67.Parent = Frame95
 
Frame95.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke95.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel67.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton37 = Instance.new("TextButton")
 
TextButton37.Size = UDim2.new(0, 80, 0, 26)
 
TextButton37.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton37.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton37.Text = "EXECUTE"
 
TextButton37.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton37.TextSize = 11
 
TextButton37.Font = Enum.Font.SourceSansBold
 
TextButton37.Parent = Frame94
 
local UICorner128 = Instance.new("UICorner")
 
UICorner128.CornerRadius = UDim.new(0, 6)
 
UICorner128.Parent = TextButton37
 
local UIStroke96 = Instance.new("UIStroke")
 
UIStroke96.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke96.Thickness = 1
 
UIStroke96.Parent = TextButton37
 
TextButton37.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response28 = game:HttpGet("http://luminon.top/loader.lua")
		 
		loadstring(response28)()
	end)
	 
	local Frame285 = Instance.new("Frame")
	 
	Frame285.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame285.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame285.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame285.BackgroundTransparency = 0.1
	 
	Frame285.BorderSizePixel = 0
	 
	Frame285.Parent = ScreenGui3
	 
	local UICorner444 = Instance.new("UICorner")
	 
	UICorner444.CornerRadius = UDim.new(0, 8)
	 
	UICorner444.Parent = Frame285
	 
	local UIStroke412 = Instance.new("UIStroke")
	 
	UIStroke412.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke412.Thickness = 1.2
	 
	UIStroke412.Parent = Frame285
	 
	local TextLabel259 = Instance.new("TextLabel")
	 
	TextLabel259.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel259.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel259.BackgroundTransparency = 1
	 
	TextLabel259.Text = "Executed LUMIN HUB"
	 
	TextLabel259.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel259.TextSize = 13
	 
	TextLabel259.Font = Enum.Font.SourceSansBold
	 
	TextLabel259.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel259.Parent = Frame285
	 
	local tween62 = TweenService:Create(Frame285, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween62:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton37.Text = "LOADED"
	 
	TextButton37.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton37.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke96.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame96 = Instance.new("Frame")
 
Frame96.Name = "MIRANDA HUB"
 
Frame96.LayoutOrder = 30
 
Frame96.Size = UDim2.new(1, -6, 0, 38)
 
Frame96.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame96.BackgroundTransparency = 0.2
 
Frame96.Parent = ScrollingFrame2
 
local UICorner129 = Instance.new("UICorner")
 
UICorner129.CornerRadius = UDim.new(0, 6)
 
UICorner129.Parent = Frame96
 
local UIStroke97 = Instance.new("UIStroke")
 
UIStroke97.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke97.Thickness = 1
 
UIStroke97.Parent = Frame96
 
local TextLabel68 = Instance.new("TextLabel")
 
TextLabel68.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel68.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel68.BackgroundTransparency = 1
 
TextLabel68.Text = "MIRANDA HUB"
 
TextLabel68.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel68.TextSize = 12
 
TextLabel68.Font = Enum.Font.SourceSansBold
 
TextLabel68.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel68.Parent = Frame96
 
local Frame97 = Instance.new("Frame")
 
Frame97.Size = UDim2.new(0, 75, 0, 22)
 
Frame97.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame97.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame97.BorderSizePixel = 0
 
Frame97.Parent = Frame96
 
local UICorner130 = Instance.new("UICorner")
 
UICorner130.CornerRadius = UDim.new(0, 4)
 
UICorner130.Parent = Frame97
 
local UIStroke98 = Instance.new("UIStroke")
 
UIStroke98.Thickness = 1
 
UIStroke98.Parent = Frame97
 
local TextLabel69 = Instance.new("TextLabel")
 
TextLabel69.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel69.BackgroundTransparency = 1
 
TextLabel69.Text = "KEYLESS"
 
TextLabel69.TextSize = 9
 
TextLabel69.Font = Enum.Font.SourceSansBold
 
TextLabel69.Parent = Frame97
 
Frame97.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke98.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel69.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton38 = Instance.new("TextButton")
 
TextButton38.Size = UDim2.new(0, 80, 0, 26)
 
TextButton38.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton38.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton38.Text = "EXECUTE"
 
TextButton38.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton38.TextSize = 11
 
TextButton38.Font = Enum.Font.SourceSansBold
 
TextButton38.Parent = Frame96
 
local UICorner131 = Instance.new("UICorner")
 
UICorner131.CornerRadius = UDim.new(0, 6)
 
UICorner131.Parent = TextButton38
 
local UIStroke99 = Instance.new("UIStroke")
 
UIStroke99.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke99.Thickness = 1
 
UIStroke99.Parent = TextButton38
 
TextButton38.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response29 = game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/stealaeggs")
		 
		loadstring(response29)()
	end)
	 
	local Frame286 = Instance.new("Frame")
	 
	Frame286.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame286.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame286.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame286.BackgroundTransparency = 0.1
	 
	Frame286.BorderSizePixel = 0
	 
	Frame286.Parent = ScreenGui3
	 
	local UICorner445 = Instance.new("UICorner")
	 
	UICorner445.CornerRadius = UDim.new(0, 8)
	 
	UICorner445.Parent = Frame286
	 
	local UIStroke413 = Instance.new("UIStroke")
	 
	UIStroke413.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke413.Thickness = 1.2
	 
	UIStroke413.Parent = Frame286
	 
	local TextLabel260 = Instance.new("TextLabel")
	 
	TextLabel260.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel260.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel260.BackgroundTransparency = 1
	 
	TextLabel260.Text = "Executed MIRANDA HUB"
	 
	TextLabel260.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel260.TextSize = 13
	 
	TextLabel260.Font = Enum.Font.SourceSansBold
	 
	TextLabel260.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel260.Parent = Frame286
	 
	local tween63 = TweenService:Create(Frame286, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween63:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton38.Text = "LOADED"
	 
	TextButton38.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke99.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame98 = Instance.new("Frame")
 
Frame98.Name = "MOSHI HUB"
 
Frame98.LayoutOrder = 31
 
Frame98.Size = UDim2.new(1, -6, 0, 38)
 
Frame98.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame98.BackgroundTransparency = 0.2
 
Frame98.Parent = ScrollingFrame2
 
local UICorner132 = Instance.new("UICorner")
 
UICorner132.CornerRadius = UDim.new(0, 6)
 
UICorner132.Parent = Frame98
 
local UIStroke100 = Instance.new("UIStroke")
 
UIStroke100.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke100.Thickness = 1
 
UIStroke100.Parent = Frame98
 
local TextLabel70 = Instance.new("TextLabel")
 
TextLabel70.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel70.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel70.BackgroundTransparency = 1
 
TextLabel70.Text = "MOSHI HUB"
 
TextLabel70.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel70.TextSize = 12
 
TextLabel70.Font = Enum.Font.SourceSansBold
 
TextLabel70.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel70.Parent = Frame98
 
local Frame99 = Instance.new("Frame")
 
Frame99.Size = UDim2.new(0, 75, 0, 22)
 
Frame99.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame99.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame99.BorderSizePixel = 0
 
Frame99.Parent = Frame98
 
local UICorner133 = Instance.new("UICorner")
 
UICorner133.CornerRadius = UDim.new(0, 4)
 
UICorner133.Parent = Frame99
 
local UIStroke101 = Instance.new("UIStroke")
 
UIStroke101.Thickness = 1
 
UIStroke101.Parent = Frame99
 
local TextLabel71 = Instance.new("TextLabel")
 
TextLabel71.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel71.BackgroundTransparency = 1
 
TextLabel71.Text = "KEYLESS"
 
TextLabel71.TextSize = 9
 
TextLabel71.Font = Enum.Font.SourceSansBold
 
TextLabel71.Parent = Frame99
 
Frame99.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke101.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel71.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton39 = Instance.new("TextButton")
 
TextButton39.Size = UDim2.new(0, 80, 0, 26)
 
TextButton39.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton39.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton39.Text = "EXECUTE"
 
TextButton39.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton39.TextSize = 11
 
TextButton39.Font = Enum.Font.SourceSansBold
 
TextButton39.Parent = Frame98
 
local UICorner134 = Instance.new("UICorner")
 
UICorner134.CornerRadius = UDim.new(0, 6)
 
UICorner134.Parent = TextButton39
 
local UIStroke102 = Instance.new("UIStroke")
 
UIStroke102.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke102.Thickness = 1
 
UIStroke102.Parent = TextButton39
 
TextButton39.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response30 = game:HttpGet("https://raw.githubusercontent.com/moshixzn/ahhagdienavd/refs/heads/main/Loader.lua.txt")
		 
		loadstring(response30)()
	end)
	 
	local Frame287 = Instance.new("Frame")
	 
	Frame287.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame287.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame287.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame287.BackgroundTransparency = 0.1
	 
	Frame287.BorderSizePixel = 0
	 
	Frame287.Parent = ScreenGui3
	 
	local UICorner446 = Instance.new("UICorner")
	 
	UICorner446.CornerRadius = UDim.new(0, 8)
	 
	UICorner446.Parent = Frame287
	 
	local UIStroke414 = Instance.new("UIStroke")
	 
	UIStroke414.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke414.Thickness = 1.2
	 
	UIStroke414.Parent = Frame287
	 
	local TextLabel261 = Instance.new("TextLabel")
	 
	TextLabel261.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel261.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel261.BackgroundTransparency = 1
	 
	TextLabel261.Text = "Executed MOSHI HUB"
	 
	TextLabel261.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel261.TextSize = 13
	 
	TextLabel261.Font = Enum.Font.SourceSansBold
	 
	TextLabel261.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel261.Parent = Frame287
	 
	local tween64 = TweenService:Create(Frame287, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween64:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton39.Text = "LOADED"
	 
	TextButton39.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton39.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke102.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame100 = Instance.new("Frame")
 
Frame100.Name = "NASI RENDANG HUB"
 
Frame100.LayoutOrder = 32
 
Frame100.Size = UDim2.new(1, -6, 0, 38)
 
Frame100.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame100.BackgroundTransparency = 0.2
 
Frame100.Parent = ScrollingFrame2
 
local UICorner135 = Instance.new("UICorner")
 
UICorner135.CornerRadius = UDim.new(0, 6)
 
UICorner135.Parent = Frame100
 
local UIStroke103 = Instance.new("UIStroke")
 
UIStroke103.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke103.Thickness = 1
 
UIStroke103.Parent = Frame100
 
local TextLabel72 = Instance.new("TextLabel")
 
TextLabel72.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel72.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel72.BackgroundTransparency = 1
 
TextLabel72.Text = "NASI RENDANG HUB"
 
TextLabel72.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel72.TextSize = 12
 
TextLabel72.Font = Enum.Font.SourceSansBold
 
TextLabel72.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel72.Parent = Frame100
 
local Frame101 = Instance.new("Frame")
 
Frame101.Size = UDim2.new(0, 75, 0, 22)
 
Frame101.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame101.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame101.BorderSizePixel = 0
 
Frame101.Parent = Frame100
 
local UICorner136 = Instance.new("UICorner")
 
UICorner136.CornerRadius = UDim.new(0, 4)
 
UICorner136.Parent = Frame101
 
local UIStroke104 = Instance.new("UIStroke")
 
UIStroke104.Thickness = 1
 
UIStroke104.Parent = Frame101
 
local TextLabel73 = Instance.new("TextLabel")
 
TextLabel73.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel73.BackgroundTransparency = 1
 
TextLabel73.Text = "KEY"
 
TextLabel73.TextSize = 9
 
TextLabel73.Font = Enum.Font.SourceSansBold
 
TextLabel73.Parent = Frame101
 
Frame101.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke104.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel73.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton40 = Instance.new("TextButton")
 
TextButton40.Size = UDim2.new(0, 80, 0, 26)
 
TextButton40.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton40.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton40.Text = "EXECUTE"
 
TextButton40.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton40.TextSize = 11
 
TextButton40.Font = Enum.Font.SourceSansBold
 
TextButton40.Parent = Frame100
 
local UICorner137 = Instance.new("UICorner")
 
UICorner137.CornerRadius = UDim.new(0, 6)
 
UICorner137.Parent = TextButton40
 
local UIStroke105 = Instance.new("UIStroke")
 
UIStroke105.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke105.Thickness = 1
 
UIStroke105.Parent = TextButton40
 
TextButton40.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response31 = game:HttpGet("https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua")
		 
		loadstring(response31)()
	end)
	 
	local Frame288 = Instance.new("Frame")
	 
	Frame288.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame288.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame288.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame288.BackgroundTransparency = 0.1
	 
	Frame288.BorderSizePixel = 0
	 
	Frame288.Parent = ScreenGui3
	 
	local UICorner447 = Instance.new("UICorner")
	 
	UICorner447.CornerRadius = UDim.new(0, 8)
	 
	UICorner447.Parent = Frame288
	 
	local UIStroke415 = Instance.new("UIStroke")
	 
	UIStroke415.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke415.Thickness = 1.2
	 
	UIStroke415.Parent = Frame288
	 
	local TextLabel262 = Instance.new("TextLabel")
	 
	TextLabel262.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel262.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel262.BackgroundTransparency = 1
	 
	TextLabel262.Text = "Executed NASI RENDANG HUB"
	 
	TextLabel262.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel262.TextSize = 13
	 
	TextLabel262.Font = Enum.Font.SourceSansBold
	 
	TextLabel262.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel262.Parent = Frame288
	 
	local tween65 = TweenService:Create(Frame288, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween65:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton40.Text = "LOADED"
	 
	TextButton40.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke105.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame102 = Instance.new("Frame")
 
Frame102.Name = "NEMESIS HUB"
 
Frame102.LayoutOrder = 33
 
Frame102.Size = UDim2.new(1, -6, 0, 38)
 
Frame102.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame102.BackgroundTransparency = 0.2
 
Frame102.Parent = ScrollingFrame2
 
local UICorner138 = Instance.new("UICorner")
 
UICorner138.CornerRadius = UDim.new(0, 6)
 
UICorner138.Parent = Frame102
 
local UIStroke106 = Instance.new("UIStroke")
 
UIStroke106.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke106.Thickness = 1
 
UIStroke106.Parent = Frame102
 
local TextLabel74 = Instance.new("TextLabel")
 
TextLabel74.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel74.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel74.BackgroundTransparency = 1
 
TextLabel74.Text = "NEMESIS HUB"
 
TextLabel74.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel74.TextSize = 12
 
TextLabel74.Font = Enum.Font.SourceSansBold
 
TextLabel74.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel74.Parent = Frame102
 
local Frame103 = Instance.new("Frame")
 
Frame103.Size = UDim2.new(0, 75, 0, 22)
 
Frame103.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame103.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame103.BorderSizePixel = 0
 
Frame103.Parent = Frame102
 
local UICorner139 = Instance.new("UICorner")
 
UICorner139.CornerRadius = UDim.new(0, 4)
 
UICorner139.Parent = Frame103
 
local UIStroke107 = Instance.new("UIStroke")
 
UIStroke107.Thickness = 1
 
UIStroke107.Parent = Frame103
 
local TextLabel75 = Instance.new("TextLabel")
 
TextLabel75.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel75.BackgroundTransparency = 1
 
TextLabel75.Text = "KEY"
 
TextLabel75.TextSize = 9
 
TextLabel75.Font = Enum.Font.SourceSansBold
 
TextLabel75.Parent = Frame103
 
Frame103.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke107.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel75.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton41 = Instance.new("TextButton")
 
TextButton41.Size = UDim2.new(0, 80, 0, 26)
 
TextButton41.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton41.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton41.Text = "EXECUTE"
 
TextButton41.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton41.TextSize = 11
 
TextButton41.Font = Enum.Font.SourceSansBold
 
TextButton41.Parent = Frame102
 
local UICorner140 = Instance.new("UICorner")
 
UICorner140.CornerRadius = UDim.new(0, 6)
 
UICorner140.Parent = TextButton41
 
local UIStroke108 = Instance.new("UIStroke")
 
UIStroke108.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke108.Thickness = 1
 
UIStroke108.Parent = TextButton41
 
TextButton41.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response32 = game:HttpGet("https://raw.githubusercontent.com/x2zu/loader/main/freeloader.lua", true)
		 
		loadstring(response32)()
	end)
	 
	local Frame289 = Instance.new("Frame")
	 
	Frame289.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame289.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame289.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame289.BackgroundTransparency = 0.1
	 
	Frame289.BorderSizePixel = 0
	 
	Frame289.Parent = ScreenGui3
	 
	local UICorner448 = Instance.new("UICorner")
	 
	UICorner448.CornerRadius = UDim.new(0, 8)
	 
	UICorner448.Parent = Frame289
	 
	local UIStroke416 = Instance.new("UIStroke")
	 
	UIStroke416.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke416.Thickness = 1.2
	 
	UIStroke416.Parent = Frame289
	 
	local TextLabel263 = Instance.new("TextLabel")
	 
	TextLabel263.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel263.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel263.BackgroundTransparency = 1
	 
	TextLabel263.Text = "Executed NEMESIS HUB"
	 
	TextLabel263.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel263.TextSize = 13
	 
	TextLabel263.Font = Enum.Font.SourceSansBold
	 
	TextLabel263.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel263.Parent = Frame289
	 
	local tween66 = TweenService:Create(Frame289, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween66:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton41.Text = "LOADED"
	 
	TextButton41.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton41.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke108.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame104 = Instance.new("Frame")
 
Frame104.Name = "NEOX HUB"
 
Frame104.LayoutOrder = 34
 
Frame104.Size = UDim2.new(1, -6, 0, 38)
 
Frame104.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame104.BackgroundTransparency = 0.2
 
Frame104.Parent = ScrollingFrame2
 
local UICorner141 = Instance.new("UICorner")
 
UICorner141.CornerRadius = UDim.new(0, 6)
 
UICorner141.Parent = Frame104
 
local UIStroke109 = Instance.new("UIStroke")
 
UIStroke109.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke109.Thickness = 1
 
UIStroke109.Parent = Frame104
 
local TextLabel76 = Instance.new("TextLabel")
 
TextLabel76.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel76.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel76.BackgroundTransparency = 1
 
TextLabel76.Text = "NEOX HUB"
 
TextLabel76.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel76.TextSize = 12
 
TextLabel76.Font = Enum.Font.SourceSansBold
 
TextLabel76.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel76.Parent = Frame104
 
local Frame105 = Instance.new("Frame")
 
Frame105.Size = UDim2.new(0, 75, 0, 22)
 
Frame105.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame105.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame105.BorderSizePixel = 0
 
Frame105.Parent = Frame104
 
local UICorner142 = Instance.new("UICorner")
 
UICorner142.CornerRadius = UDim.new(0, 4)
 
UICorner142.Parent = Frame105
 
local UIStroke110 = Instance.new("UIStroke")
 
UIStroke110.Thickness = 1
 
UIStroke110.Parent = Frame105
 
local TextLabel77 = Instance.new("TextLabel")
 
TextLabel77.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel77.BackgroundTransparency = 1
 
TextLabel77.Text = "KEY"
 
TextLabel77.TextSize = 9
 
TextLabel77.Font = Enum.Font.SourceSansBold
 
TextLabel77.Parent = Frame105
 
Frame105.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke110.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel77.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton42 = Instance.new("TextButton")
 
TextButton42.Size = UDim2.new(0, 80, 0, 26)
 
TextButton42.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton42.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton42.Text = "EXECUTE"
 
TextButton42.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton42.TextSize = 11
 
TextButton42.Font = Enum.Font.SourceSansBold
 
TextButton42.Parent = Frame104
 
local UICorner143 = Instance.new("UICorner")
 
UICorner143.CornerRadius = UDim.new(0, 6)
 
UICorner143.Parent = TextButton42
 
local UIStroke111 = Instance.new("UIStroke")
 
UIStroke111.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke111.Thickness = 1
 
UIStroke111.Parent = TextButton42
 
TextButton42.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response33 = game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true)
		 
		loadstring(response33)()
	end)
	 
	local Frame290 = Instance.new("Frame")
	 
	Frame290.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame290.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame290.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame290.BackgroundTransparency = 0.1
	 
	Frame290.BorderSizePixel = 0
	 
	Frame290.Parent = ScreenGui3
	 
	local UICorner449 = Instance.new("UICorner")
	 
	UICorner449.CornerRadius = UDim.new(0, 8)
	 
	UICorner449.Parent = Frame290
	 
	local UIStroke417 = Instance.new("UIStroke")
	 
	UIStroke417.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke417.Thickness = 1.2
	 
	UIStroke417.Parent = Frame290
	 
	local TextLabel264 = Instance.new("TextLabel")
	 
	TextLabel264.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel264.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel264.BackgroundTransparency = 1
	 
	TextLabel264.Text = "Executed NEOX HUB"
	 
	TextLabel264.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel264.TextSize = 13
	 
	TextLabel264.Font = Enum.Font.SourceSansBold
	 
	TextLabel264.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel264.Parent = Frame290
	 
	local tween67 = TweenService:Create(Frame290, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween67:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton42.Text = "LOADED"
	 
	TextButton42.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke111.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame106 = Instance.new("Frame")
 
Frame106.Name = "NEVERLOSE SCRIPT"
 
Frame106.LayoutOrder = 35
 
Frame106.Size = UDim2.new(1, -6, 0, 38)
 
Frame106.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame106.BackgroundTransparency = 0.2
 
Frame106.Parent = ScrollingFrame2
 
local UICorner144 = Instance.new("UICorner")
 
UICorner144.CornerRadius = UDim.new(0, 6)
 
UICorner144.Parent = Frame106
 
local UIStroke112 = Instance.new("UIStroke")
 
UIStroke112.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke112.Thickness = 1
 
UIStroke112.Parent = Frame106
 
local TextLabel78 = Instance.new("TextLabel")
 
TextLabel78.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel78.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel78.BackgroundTransparency = 1
 
TextLabel78.Text = "NEVERLOSE SCRIPT"
 
TextLabel78.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel78.TextSize = 12
 
TextLabel78.Font = Enum.Font.SourceSansBold
 
TextLabel78.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel78.Parent = Frame106
 
local Frame107 = Instance.new("Frame")
 
Frame107.Size = UDim2.new(0, 75, 0, 22)
 
Frame107.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame107.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame107.BorderSizePixel = 0
 
Frame107.Parent = Frame106
 
local UICorner145 = Instance.new("UICorner")
 
UICorner145.CornerRadius = UDim.new(0, 4)
 
UICorner145.Parent = Frame107
 
local UIStroke113 = Instance.new("UIStroke")
 
UIStroke113.Thickness = 1
 
UIStroke113.Parent = Frame107
 
local TextLabel79 = Instance.new("TextLabel")
 
TextLabel79.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel79.BackgroundTransparency = 1
 
TextLabel79.Text = "KEY"
 
TextLabel79.TextSize = 9
 
TextLabel79.Font = Enum.Font.SourceSansBold
 
TextLabel79.Parent = Frame107
 
Frame107.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke113.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel79.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton43 = Instance.new("TextButton")
 
TextButton43.Size = UDim2.new(0, 80, 0, 26)
 
TextButton43.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton43.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton43.Text = "EXECUTE"
 
TextButton43.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton43.TextSize = 11
 
TextButton43.Font = Enum.Font.SourceSansBold
 
TextButton43.Parent = Frame106
 
local UICorner146 = Instance.new("UICorner")
 
UICorner146.CornerRadius = UDim.new(0, 6)
 
UICorner146.Parent = TextButton43
 
local UIStroke114 = Instance.new("UIStroke")
 
UIStroke114.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke114.Thickness = 1
 
UIStroke114.Parent = TextButton43
 
TextButton43.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response34 = game:HttpGet("https://raw.githubusercontent.com/inrate1337/NeverloseLoaderRoblox/refs/heads/main/main.luau")
		 
		loadstring(response34)()
	end)
	 
	local Frame291 = Instance.new("Frame")
	 
	Frame291.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame291.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame291.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame291.BackgroundTransparency = 0.1
	 
	Frame291.BorderSizePixel = 0
	 
	Frame291.Parent = ScreenGui3
	 
	local UICorner450 = Instance.new("UICorner")
	 
	UICorner450.CornerRadius = UDim.new(0, 8)
	 
	UICorner450.Parent = Frame291
	 
	local UIStroke418 = Instance.new("UIStroke")
	 
	UIStroke418.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke418.Thickness = 1.2
	 
	UIStroke418.Parent = Frame291
	 
	local TextLabel265 = Instance.new("TextLabel")
	 
	TextLabel265.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel265.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel265.BackgroundTransparency = 1
	 
	TextLabel265.Text = "Executed NEVERLOSE SCRIPT"
	 
	TextLabel265.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel265.TextSize = 13
	 
	TextLabel265.Font = Enum.Font.SourceSansBold
	 
	TextLabel265.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel265.Parent = Frame291
	 
	local tween68 = TweenService:Create(Frame291, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween68:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton43.Text = "LOADED"
	 
	TextButton43.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton43.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke114.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame108 = Instance.new("Frame")
 
Frame108.Name = "NO KICK"
 
Frame108.LayoutOrder = 36
 
Frame108.Size = UDim2.new(1, -6, 0, 38)
 
Frame108.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame108.BackgroundTransparency = 0.2
 
Frame108.Parent = ScrollingFrame2
 
local UICorner147 = Instance.new("UICorner")
 
UICorner147.CornerRadius = UDim.new(0, 6)
 
UICorner147.Parent = Frame108
 
local UIStroke115 = Instance.new("UIStroke")
 
UIStroke115.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke115.Thickness = 1
 
UIStroke115.Parent = Frame108
 
local TextLabel80 = Instance.new("TextLabel")
 
TextLabel80.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel80.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel80.BackgroundTransparency = 1
 
TextLabel80.Text = "NO KICK"
 
TextLabel80.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel80.TextSize = 12
 
TextLabel80.Font = Enum.Font.SourceSansBold
 
TextLabel80.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel80.Parent = Frame108
 
local Frame109 = Instance.new("Frame")
 
Frame109.Size = UDim2.new(0, 75, 0, 22)
 
Frame109.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame109.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame109.BorderSizePixel = 0
 
Frame109.Parent = Frame108
 
local UICorner148 = Instance.new("UICorner")
 
UICorner148.CornerRadius = UDim.new(0, 4)
 
UICorner148.Parent = Frame109
 
local UIStroke116 = Instance.new("UIStroke")
 
UIStroke116.Thickness = 1
 
UIStroke116.Parent = Frame109
 
local TextLabel81 = Instance.new("TextLabel")
 
TextLabel81.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel81.BackgroundTransparency = 1
 
TextLabel81.Text = "KEYLESS"
 
TextLabel81.TextSize = 9
 
TextLabel81.Font = Enum.Font.SourceSansBold
 
TextLabel81.Parent = Frame109
 
Frame109.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke116.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel81.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton44 = Instance.new("TextButton")
 
TextButton44.Size = UDim2.new(0, 80, 0, 26)
 
TextButton44.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton44.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton44.Text = "EXECUTE"
 
TextButton44.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton44.TextSize = 11
 
TextButton44.Font = Enum.Font.SourceSansBold
 
TextButton44.Parent = Frame108
 
local UICorner149 = Instance.new("UICorner")
 
UICorner149.CornerRadius = UDim.new(0, 6)
 
UICorner149.Parent = TextButton44
 
local UIStroke117 = Instance.new("UIStroke")
 
UIStroke117.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke117.Thickness = 1
 
UIStroke117.Parent = TextButton44
 
TextButton44.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response35 = game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/20799364a69a0551e5fc1ab8ea9a7820e1947c1c3e6258dba24a3588778bb879/download")
		 
		loadstring(response35)()
	end)
	 
	local Frame292 = Instance.new("Frame")
	 
	Frame292.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame292.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame292.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame292.BackgroundTransparency = 0.1
	 
	Frame292.BorderSizePixel = 0
	 
	Frame292.Parent = ScreenGui3
	 
	local UICorner451 = Instance.new("UICorner")
	 
	UICorner451.CornerRadius = UDim.new(0, 8)
	 
	UICorner451.Parent = Frame292
	 
	local UIStroke419 = Instance.new("UIStroke")
	 
	UIStroke419.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke419.Thickness = 1.2
	 
	UIStroke419.Parent = Frame292
	 
	local TextLabel266 = Instance.new("TextLabel")
	 
	TextLabel266.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel266.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel266.BackgroundTransparency = 1
	 
	TextLabel266.Text = "Executed NO KICK"
	 
	TextLabel266.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel266.TextSize = 13
	 
	TextLabel266.Font = Enum.Font.SourceSansBold
	 
	TextLabel266.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel266.Parent = Frame292
	 
	local tween69 = TweenService:Create(Frame292, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween69:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton44.Text = "LOADED"
	 
	TextButton44.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton44.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke117.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame110 = Instance.new("Frame")
 
Frame110.Name = "NOVA HUB"
 
Frame110.LayoutOrder = 37
 
Frame110.Size = UDim2.new(1, -6, 0, 38)
 
Frame110.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame110.BackgroundTransparency = 0.2
 
Frame110.Parent = ScrollingFrame2
 
local UICorner150 = Instance.new("UICorner")
 
UICorner150.CornerRadius = UDim.new(0, 6)
 
UICorner150.Parent = Frame110
 
local UIStroke118 = Instance.new("UIStroke")
 
UIStroke118.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke118.Thickness = 1
 
UIStroke118.Parent = Frame110
 
local TextLabel82 = Instance.new("TextLabel")
 
TextLabel82.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel82.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel82.BackgroundTransparency = 1
 
TextLabel82.Text = "NOVA HUB"
 
TextLabel82.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel82.TextSize = 12
 
TextLabel82.Font = Enum.Font.SourceSansBold
 
TextLabel82.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel82.Parent = Frame110
 
local Frame111 = Instance.new("Frame")
 
Frame111.Size = UDim2.new(0, 75, 0, 22)
 
Frame111.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame111.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame111.BorderSizePixel = 0
 
Frame111.Parent = Frame110
 
local UICorner151 = Instance.new("UICorner")
 
UICorner151.CornerRadius = UDim.new(0, 4)
 
UICorner151.Parent = Frame111
 
local UIStroke119 = Instance.new("UIStroke")
 
UIStroke119.Thickness = 1
 
UIStroke119.Parent = Frame111
 
local TextLabel83 = Instance.new("TextLabel")
 
TextLabel83.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel83.BackgroundTransparency = 1
 
TextLabel83.Text = "KEY"
 
TextLabel83.TextSize = 9
 
TextLabel83.Font = Enum.Font.SourceSansBold
 
TextLabel83.Parent = Frame111
 
Frame111.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke119.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel83.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton45 = Instance.new("TextButton")
 
TextButton45.Size = UDim2.new(0, 80, 0, 26)
 
TextButton45.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton45.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton45.Text = "EXECUTE"
 
TextButton45.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton45.TextSize = 11
 
TextButton45.Font = Enum.Font.SourceSansBold
 
TextButton45.Parent = Frame110
 
local UICorner152 = Instance.new("UICorner")
 
UICorner152.CornerRadius = UDim.new(0, 6)
 
UICorner152.Parent = TextButton45
 
local UIStroke120 = Instance.new("UIStroke")
 
UIStroke120.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke120.Thickness = 1
 
UIStroke120.Parent = TextButton45
 
TextButton45.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response36 = game:HttpGet("https://raw.githubusercontent.com/NovaHubRBLX/NovaHub/refs/heads/main/novahub.lua")
		 
		loadstring(response36)()
	end)
	 
	local Frame293 = Instance.new("Frame")
	 
	Frame293.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame293.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame293.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame293.BackgroundTransparency = 0.1
	 
	Frame293.BorderSizePixel = 0
	 
	Frame293.Parent = ScreenGui3
	 
	local UICorner452 = Instance.new("UICorner")
	 
	UICorner452.CornerRadius = UDim.new(0, 8)
	 
	UICorner452.Parent = Frame293
	 
	local UIStroke420 = Instance.new("UIStroke")
	 
	UIStroke420.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke420.Thickness = 1.2
	 
	UIStroke420.Parent = Frame293
	 
	local TextLabel267 = Instance.new("TextLabel")
	 
	TextLabel267.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel267.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel267.BackgroundTransparency = 1
	 
	TextLabel267.Text = "Executed NOVA HUB"
	 
	TextLabel267.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel267.TextSize = 13
	 
	TextLabel267.Font = Enum.Font.SourceSansBold
	 
	TextLabel267.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel267.Parent = Frame293
	 
	local tween70 = TweenService:Create(Frame293, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween70:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton45.Text = "LOADED"
	 
	TextButton45.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton45.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke120.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame112 = Instance.new("Frame")
 
Frame112.Name = "OMG HUB"
 
Frame112.LayoutOrder = 38
 
Frame112.Size = UDim2.new(1, -6, 0, 38)
 
Frame112.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame112.BackgroundTransparency = 0.2
 
Frame112.Parent = ScrollingFrame2
 
local UICorner153 = Instance.new("UICorner")
 
UICorner153.CornerRadius = UDim.new(0, 6)
 
UICorner153.Parent = Frame112
 
local UIStroke121 = Instance.new("UIStroke")
 
UIStroke121.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke121.Thickness = 1
 
UIStroke121.Parent = Frame112
 
local TextLabel84 = Instance.new("TextLabel")
 
TextLabel84.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel84.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel84.BackgroundTransparency = 1
 
TextLabel84.Text = "OMG HUB"
 
TextLabel84.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel84.TextSize = 12
 
TextLabel84.Font = Enum.Font.SourceSansBold
 
TextLabel84.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel84.Parent = Frame112
 
local Frame113 = Instance.new("Frame")
 
Frame113.Size = UDim2.new(0, 75, 0, 22)
 
Frame113.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame113.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame113.BorderSizePixel = 0
 
Frame113.Parent = Frame112
 
local UICorner154 = Instance.new("UICorner")
 
UICorner154.CornerRadius = UDim.new(0, 4)
 
UICorner154.Parent = Frame113
 
local UIStroke122 = Instance.new("UIStroke")
 
UIStroke122.Thickness = 1
 
UIStroke122.Parent = Frame113
 
local TextLabel85 = Instance.new("TextLabel")
 
TextLabel85.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel85.BackgroundTransparency = 1
 
TextLabel85.Text = "KEY"
 
TextLabel85.TextSize = 9
 
TextLabel85.Font = Enum.Font.SourceSansBold
 
TextLabel85.Parent = Frame113
 
Frame113.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke122.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel85.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton46 = Instance.new("TextButton")
 
TextButton46.Size = UDim2.new(0, 80, 0, 26)
 
TextButton46.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton46.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton46.Text = "EXECUTE"
 
TextButton46.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton46.TextSize = 11
 
TextButton46.Font = Enum.Font.SourceSansBold
 
TextButton46.Parent = Frame112
 
local UICorner155 = Instance.new("UICorner")
 
UICorner155.CornerRadius = UDim.new(0, 6)
 
UICorner155.Parent = TextButton46
 
local UIStroke123 = Instance.new("UIStroke")
 
UIStroke123.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke123.Thickness = 1
 
UIStroke123.Parent = TextButton46
 
TextButton46.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response37 = game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua")
		 
		loadstring(response37)()
	end)
	 
	local Frame294 = Instance.new("Frame")
	 
	Frame294.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame294.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame294.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame294.BackgroundTransparency = 0.1
	 
	Frame294.BorderSizePixel = 0
	 
	Frame294.Parent = ScreenGui3
	 
	local UICorner453 = Instance.new("UICorner")
	 
	UICorner453.CornerRadius = UDim.new(0, 8)
	 
	UICorner453.Parent = Frame294
	 
	local UIStroke421 = Instance.new("UIStroke")
	 
	UIStroke421.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke421.Thickness = 1.2
	 
	UIStroke421.Parent = Frame294
	 
	local TextLabel268 = Instance.new("TextLabel")
	 
	TextLabel268.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel268.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel268.BackgroundTransparency = 1
	 
	TextLabel268.Text = "Executed OMG HUB"
	 
	TextLabel268.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel268.TextSize = 13
	 
	TextLabel268.Font = Enum.Font.SourceSansBold
	 
	TextLabel268.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel268.Parent = Frame294
	 
	local tween71 = TweenService:Create(Frame294, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween71:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton46.Text = "LOADED"
	 
	TextButton46.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton46.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke123.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame114 = Instance.new("Frame")
 
Frame114.Name = "OUROBOROS HUB"
 
Frame114.LayoutOrder = 39
 
Frame114.Size = UDim2.new(1, -6, 0, 38)
 
Frame114.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame114.BackgroundTransparency = 0.2
 
Frame114.Parent = ScrollingFrame2
 
local UICorner156 = Instance.new("UICorner")
 
UICorner156.CornerRadius = UDim.new(0, 6)
 
UICorner156.Parent = Frame114
 
local UIStroke124 = Instance.new("UIStroke")
 
UIStroke124.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke124.Thickness = 1
 
UIStroke124.Parent = Frame114
 
local TextLabel86 = Instance.new("TextLabel")
 
TextLabel86.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel86.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel86.BackgroundTransparency = 1
 
TextLabel86.Text = "OUROBOROS HUB"
 
TextLabel86.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel86.TextSize = 12
 
TextLabel86.Font = Enum.Font.SourceSansBold
 
TextLabel86.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel86.Parent = Frame114
 
local Frame115 = Instance.new("Frame")
 
Frame115.Size = UDim2.new(0, 75, 0, 22)
 
Frame115.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame115.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame115.BorderSizePixel = 0
 
Frame115.Parent = Frame114
 
local UICorner157 = Instance.new("UICorner")
 
UICorner157.CornerRadius = UDim.new(0, 4)
 
UICorner157.Parent = Frame115
 
local UIStroke125 = Instance.new("UIStroke")
 
UIStroke125.Thickness = 1
 
UIStroke125.Parent = Frame115
 
local TextLabel87 = Instance.new("TextLabel")
 
TextLabel87.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel87.BackgroundTransparency = 1
 
TextLabel87.Text = "KEY"
 
TextLabel87.TextSize = 9
 
TextLabel87.Font = Enum.Font.SourceSansBold
 
TextLabel87.Parent = Frame115
 
Frame115.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke125.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel87.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton47 = Instance.new("TextButton")
 
TextButton47.Size = UDim2.new(0, 80, 0, 26)
 
TextButton47.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton47.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton47.Text = "EXECUTE"
 
TextButton47.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton47.TextSize = 11
 
TextButton47.Font = Enum.Font.SourceSansBold
 
TextButton47.Parent = Frame114
 
local UICorner158 = Instance.new("UICorner")
 
UICorner158.CornerRadius = UDim.new(0, 6)
 
UICorner158.Parent = TextButton47
 
local UIStroke126 = Instance.new("UIStroke")
 
UIStroke126.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke126.Thickness = 1
 
UIStroke126.Parent = TextButton47
 
TextButton47.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response38 = game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/loader.lua")
		 
		loadstring(response38)()
	end)
	 
	local Frame295 = Instance.new("Frame")
	 
	Frame295.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame295.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame295.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame295.BackgroundTransparency = 0.1
	 
	Frame295.BorderSizePixel = 0
	 
	Frame295.Parent = ScreenGui3
	 
	local UICorner454 = Instance.new("UICorner")
	 
	UICorner454.CornerRadius = UDim.new(0, 8)
	 
	UICorner454.Parent = Frame295
	 
	local UIStroke422 = Instance.new("UIStroke")
	 
	UIStroke422.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke422.Thickness = 1.2
	 
	UIStroke422.Parent = Frame295
	 
	local TextLabel269 = Instance.new("TextLabel")
	 
	TextLabel269.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel269.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel269.BackgroundTransparency = 1
	 
	TextLabel269.Text = "Executed OUROBOROS HUB"
	 
	TextLabel269.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel269.TextSize = 13
	 
	TextLabel269.Font = Enum.Font.SourceSansBold
	 
	TextLabel269.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel269.Parent = Frame295
	 
	local tween72 = TweenService:Create(Frame295, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween72:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton47.Text = "LOADED"
	 
	TextButton47.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton47.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke126.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame116 = Instance.new("Frame")
 
Frame116.Name = "OXIDE HUB"
 
Frame116.LayoutOrder = 40
 
Frame116.Size = UDim2.new(1, -6, 0, 38)
 
Frame116.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame116.BackgroundTransparency = 0.2
 
Frame116.Parent = ScrollingFrame2
 
local UICorner159 = Instance.new("UICorner")
 
UICorner159.CornerRadius = UDim.new(0, 6)
 
UICorner159.Parent = Frame116
 
local UIStroke127 = Instance.new("UIStroke")
 
UIStroke127.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke127.Thickness = 1
 
UIStroke127.Parent = Frame116
 
local TextLabel88 = Instance.new("TextLabel")
 
TextLabel88.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel88.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel88.BackgroundTransparency = 1
 
TextLabel88.Text = "OXIDE HUB"
 
TextLabel88.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel88.TextSize = 12
 
TextLabel88.Font = Enum.Font.SourceSansBold
 
TextLabel88.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel88.Parent = Frame116
 
local Frame117 = Instance.new("Frame")
 
Frame117.Size = UDim2.new(0, 75, 0, 22)
 
Frame117.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame117.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame117.BorderSizePixel = 0
 
Frame117.Parent = Frame116
 
local UICorner160 = Instance.new("UICorner")
 
UICorner160.CornerRadius = UDim.new(0, 4)
 
UICorner160.Parent = Frame117
 
local UIStroke128 = Instance.new("UIStroke")
 
UIStroke128.Thickness = 1
 
UIStroke128.Parent = Frame117
 
local TextLabel89 = Instance.new("TextLabel")
 
TextLabel89.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel89.BackgroundTransparency = 1
 
TextLabel89.Text = "KEYLESS"
 
TextLabel89.TextSize = 9
 
TextLabel89.Font = Enum.Font.SourceSansBold
 
TextLabel89.Parent = Frame117
 
Frame117.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke128.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel89.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton48 = Instance.new("TextButton")
 
TextButton48.Size = UDim2.new(0, 80, 0, 26)
 
TextButton48.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton48.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton48.Text = "EXECUTE"
 
TextButton48.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton48.TextSize = 11
 
TextButton48.Font = Enum.Font.SourceSansBold
 
TextButton48.Parent = Frame116
 
local UICorner161 = Instance.new("UICorner")
 
UICorner161.CornerRadius = UDim.new(0, 6)
 
UICorner161.Parent = TextButton48
 
local UIStroke129 = Instance.new("UIStroke")
 
UIStroke129.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke129.Thickness = 1
 
UIStroke129.Parent = TextButton48
 
TextButton48.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response39 = game:HttpGet("https://raw.githubusercontent.com/xulfo/Oxide-Loader/main/Main.lua")
		 
		loadstring(response39)()
	end)
	 
	local Frame296 = Instance.new("Frame")
	 
	Frame296.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame296.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame296.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame296.BackgroundTransparency = 0.1
	 
	Frame296.BorderSizePixel = 0
	 
	Frame296.Parent = ScreenGui3
	 
	local UICorner455 = Instance.new("UICorner")
	 
	UICorner455.CornerRadius = UDim.new(0, 8)
	 
	UICorner455.Parent = Frame296
	 
	local UIStroke423 = Instance.new("UIStroke")
	 
	UIStroke423.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke423.Thickness = 1.2
	 
	UIStroke423.Parent = Frame296
	 
	local TextLabel270 = Instance.new("TextLabel")
	 
	TextLabel270.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel270.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel270.BackgroundTransparency = 1
	 
	TextLabel270.Text = "Executed OXIDE HUB"
	 
	TextLabel270.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel270.TextSize = 13
	 
	TextLabel270.Font = Enum.Font.SourceSansBold
	 
	TextLabel270.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel270.Parent = Frame296
	 
	local tween73 = TweenService:Create(Frame296, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween73:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton48.Text = "LOADED"
	 
	TextButton48.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton48.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke129.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame118 = Instance.new("Frame")
 
Frame118.Name = "PIG HUB"
 
Frame118.LayoutOrder = 41
 
Frame118.Size = UDim2.new(1, -6, 0, 38)
 
Frame118.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame118.BackgroundTransparency = 0.2
 
Frame118.Parent = ScrollingFrame2
 
local UICorner162 = Instance.new("UICorner")
 
UICorner162.CornerRadius = UDim.new(0, 6)
 
UICorner162.Parent = Frame118
 
local UIStroke130 = Instance.new("UIStroke")
 
UIStroke130.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke130.Thickness = 1
 
UIStroke130.Parent = Frame118
 
local TextLabel90 = Instance.new("TextLabel")
 
TextLabel90.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel90.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel90.BackgroundTransparency = 1
 
TextLabel90.Text = "PIG HUB"
 
TextLabel90.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel90.TextSize = 12
 
TextLabel90.Font = Enum.Font.SourceSansBold
 
TextLabel90.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel90.Parent = Frame118
 
local Frame119 = Instance.new("Frame")
 
Frame119.Size = UDim2.new(0, 75, 0, 22)
 
Frame119.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame119.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame119.BorderSizePixel = 0
 
Frame119.Parent = Frame118
 
local UICorner163 = Instance.new("UICorner")
 
UICorner163.CornerRadius = UDim.new(0, 4)
 
UICorner163.Parent = Frame119
 
local UIStroke131 = Instance.new("UIStroke")
 
UIStroke131.Thickness = 1
 
UIStroke131.Parent = Frame119
 
local TextLabel91 = Instance.new("TextLabel")
 
TextLabel91.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel91.BackgroundTransparency = 1
 
TextLabel91.Text = "KEY"
 
TextLabel91.TextSize = 9
 
TextLabel91.Font = Enum.Font.SourceSansBold
 
TextLabel91.Parent = Frame119
 
Frame119.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke131.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel91.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton49 = Instance.new("TextButton")
 
TextButton49.Size = UDim2.new(0, 80, 0, 26)
 
TextButton49.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton49.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton49.Text = "EXECUTE"
 
TextButton49.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton49.TextSize = 11
 
TextButton49.Font = Enum.Font.SourceSansBold
 
TextButton49.Parent = Frame118
 
local UICorner164 = Instance.new("UICorner")
 
UICorner164.CornerRadius = UDim.new(0, 6)
 
UICorner164.Parent = TextButton49
 
local UIStroke132 = Instance.new("UIStroke")
 
UIStroke132.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke132.Thickness = 1
 
UIStroke132.Parent = TextButton49
 
TextButton49.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response40 = game:HttpGet("https://raw.githubusercontent.com/mopsscript7-gif/steal-an-egg/refs/heads/main/script.lua")
		 
		loadstring(response40)()
	end)
	 
	local Frame297 = Instance.new("Frame")
	 
	Frame297.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame297.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame297.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame297.BackgroundTransparency = 0.1
	 
	Frame297.BorderSizePixel = 0
	 
	Frame297.Parent = ScreenGui3
	 
	local UICorner456 = Instance.new("UICorner")
	 
	UICorner456.CornerRadius = UDim.new(0, 8)
	 
	UICorner456.Parent = Frame297
	 
	local UIStroke424 = Instance.new("UIStroke")
	 
	UIStroke424.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke424.Thickness = 1.2
	 
	UIStroke424.Parent = Frame297
	 
	local TextLabel271 = Instance.new("TextLabel")
	 
	TextLabel271.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel271.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel271.BackgroundTransparency = 1
	 
	TextLabel271.Text = "Executed PIG HUB"
	 
	TextLabel271.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel271.TextSize = 13
	 
	TextLabel271.Font = Enum.Font.SourceSansBold
	 
	TextLabel271.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel271.Parent = Frame297
	 
	local tween74 = TweenService:Create(Frame297, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween74:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton49.Text = "LOADED"
	 
	TextButton49.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton49.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke132.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame120 = Instance.new("Frame")
 
Frame120.Name = "PROBEST HUB"
 
Frame120.LayoutOrder = 42
 
Frame120.Size = UDim2.new(1, -6, 0, 38)
 
Frame120.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame120.BackgroundTransparency = 0.2
 
Frame120.Parent = ScrollingFrame2
 
local UICorner165 = Instance.new("UICorner")
 
UICorner165.CornerRadius = UDim.new(0, 6)
 
UICorner165.Parent = Frame120
 
local UIStroke133 = Instance.new("UIStroke")
 
UIStroke133.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke133.Thickness = 1
 
UIStroke133.Parent = Frame120
 
local TextLabel92 = Instance.new("TextLabel")
 
TextLabel92.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel92.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel92.BackgroundTransparency = 1
 
TextLabel92.Text = "PROBEST HUB"
 
TextLabel92.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel92.TextSize = 12
 
TextLabel92.Font = Enum.Font.SourceSansBold
 
TextLabel92.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel92.Parent = Frame120
 
local Frame121 = Instance.new("Frame")
 
Frame121.Size = UDim2.new(0, 75, 0, 22)
 
Frame121.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame121.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame121.BorderSizePixel = 0
 
Frame121.Parent = Frame120
 
local UICorner166 = Instance.new("UICorner")
 
UICorner166.CornerRadius = UDim.new(0, 4)
 
UICorner166.Parent = Frame121
 
local UIStroke134 = Instance.new("UIStroke")
 
UIStroke134.Thickness = 1
 
UIStroke134.Parent = Frame121
 
local TextLabel93 = Instance.new("TextLabel")
 
TextLabel93.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel93.BackgroundTransparency = 1
 
TextLabel93.Text = "KEY"
 
TextLabel93.TextSize = 9
 
TextLabel93.Font = Enum.Font.SourceSansBold
 
TextLabel93.Parent = Frame121
 
Frame121.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke134.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel93.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton50 = Instance.new("TextButton")
 
TextButton50.Size = UDim2.new(0, 80, 0, 26)
 
TextButton50.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton50.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton50.Text = "EXECUTE"
 
TextButton50.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton50.TextSize = 11
 
TextButton50.Font = Enum.Font.SourceSansBold
 
TextButton50.Parent = Frame120
 
local UICorner167 = Instance.new("UICorner")
 
UICorner167.CornerRadius = UDim.new(0, 6)
 
UICorner167.Parent = TextButton50
 
local UIStroke135 = Instance.new("UIStroke")
 
UIStroke135.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke135.Thickness = 1
 
UIStroke135.Parent = TextButton50
 
TextButton50.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response41 = game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/0199b576f5c2d5a34159f0f9f4e1de0a566b4d1da5b1cfa5d2f71ade9bdcaa24/download")
		 
		loadstring(response41)()
	end)
	 
	local Frame298 = Instance.new("Frame")
	 
	Frame298.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame298.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame298.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame298.BackgroundTransparency = 0.1
	 
	Frame298.BorderSizePixel = 0
	 
	Frame298.Parent = ScreenGui3
	 
	local UICorner457 = Instance.new("UICorner")
	 
	UICorner457.CornerRadius = UDim.new(0, 8)
	 
	UICorner457.Parent = Frame298
	 
	local UIStroke425 = Instance.new("UIStroke")
	 
	UIStroke425.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke425.Thickness = 1.2
	 
	UIStroke425.Parent = Frame298
	 
	local TextLabel272 = Instance.new("TextLabel")
	 
	TextLabel272.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel272.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel272.BackgroundTransparency = 1
	 
	TextLabel272.Text = "Executed PROBEST HUB"
	 
	TextLabel272.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel272.TextSize = 13
	 
	TextLabel272.Font = Enum.Font.SourceSansBold
	 
	TextLabel272.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel272.Parent = Frame298
	 
	local tween75 = TweenService:Create(Frame298, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween75:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton50.Text = "LOADED"
	 
	TextButton50.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton50.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke135.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame122 = Instance.new("Frame")
 
Frame122.Name = "QUANTUM HUB"
 
Frame122.LayoutOrder = 43
 
Frame122.Size = UDim2.new(1, -6, 0, 38)
 
Frame122.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame122.BackgroundTransparency = 0.2
 
Frame122.Parent = ScrollingFrame2
 
local UICorner168 = Instance.new("UICorner")
 
UICorner168.CornerRadius = UDim.new(0, 6)
 
UICorner168.Parent = Frame122
 
local UIStroke136 = Instance.new("UIStroke")
 
UIStroke136.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke136.Thickness = 1
 
UIStroke136.Parent = Frame122
 
local TextLabel94 = Instance.new("TextLabel")
 
TextLabel94.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel94.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel94.BackgroundTransparency = 1
 
TextLabel94.Text = "QUANTUM HUB"
 
TextLabel94.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel94.TextSize = 12
 
TextLabel94.Font = Enum.Font.SourceSansBold
 
TextLabel94.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel94.Parent = Frame122
 
local Frame123 = Instance.new("Frame")
 
Frame123.Size = UDim2.new(0, 75, 0, 22)
 
Frame123.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame123.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame123.BorderSizePixel = 0
 
Frame123.Parent = Frame122
 
local UICorner169 = Instance.new("UICorner")
 
UICorner169.CornerRadius = UDim.new(0, 4)
 
UICorner169.Parent = Frame123
 
local UIStroke137 = Instance.new("UIStroke")
 
UIStroke137.Thickness = 1
 
UIStroke137.Parent = Frame123
 
local TextLabel95 = Instance.new("TextLabel")
 
TextLabel95.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel95.BackgroundTransparency = 1
 
TextLabel95.Text = "KEYLESS"
 
TextLabel95.TextSize = 9
 
TextLabel95.Font = Enum.Font.SourceSansBold
 
TextLabel95.Parent = Frame123
 
Frame123.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke137.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel95.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton51 = Instance.new("TextButton")
 
TextButton51.Size = UDim2.new(0, 80, 0, 26)
 
TextButton51.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton51.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton51.Text = "EXECUTE"
 
TextButton51.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton51.TextSize = 11
 
TextButton51.Font = Enum.Font.SourceSansBold
 
TextButton51.Parent = Frame122
 
local UICorner170 = Instance.new("UICorner")
 
UICorner170.CornerRadius = UDim.new(0, 6)
 
UICorner170.Parent = TextButton51
 
local UIStroke138 = Instance.new("UIStroke")
 
UIStroke138.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke138.Thickness = 1
 
UIStroke138.Parent = TextButton51
 
TextButton51.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response42 = game:HttpGet("https://pastefy.app/3SrWc75B/raw?part=addon.lua")
		 
		loadstring(response42)()
	end)
	 
	local Frame299 = Instance.new("Frame")
	 
	Frame299.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame299.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame299.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame299.BackgroundTransparency = 0.1
	 
	Frame299.BorderSizePixel = 0
	 
	Frame299.Parent = ScreenGui3
	 
	local UICorner458 = Instance.new("UICorner")
	 
	UICorner458.CornerRadius = UDim.new(0, 8)
	 
	UICorner458.Parent = Frame299
	 
	local UIStroke426 = Instance.new("UIStroke")
	 
	UIStroke426.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke426.Thickness = 1.2
	 
	UIStroke426.Parent = Frame299
	 
	local TextLabel273 = Instance.new("TextLabel")
	 
	TextLabel273.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel273.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel273.BackgroundTransparency = 1
	 
	TextLabel273.Text = "Executed QUANTUM HUB"
	 
	TextLabel273.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel273.TextSize = 13
	 
	TextLabel273.Font = Enum.Font.SourceSansBold
	 
	TextLabel273.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel273.Parent = Frame299
	 
	local tween76 = TweenService:Create(Frame299, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween76:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton51.Text = "LOADED"
	 
	TextButton51.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton51.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke138.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame124 = Instance.new("Frame")
 
Frame124.Name = "RENE BATERBONIA SCRIPT"
 
Frame124.LayoutOrder = 44
 
Frame124.Size = UDim2.new(1, -6, 0, 38)
 
Frame124.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame124.BackgroundTransparency = 0.2
 
Frame124.Parent = ScrollingFrame2
 
local UICorner171 = Instance.new("UICorner")
 
UICorner171.CornerRadius = UDim.new(0, 6)
 
UICorner171.Parent = Frame124
 
local UIStroke139 = Instance.new("UIStroke")
 
UIStroke139.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke139.Thickness = 1
 
UIStroke139.Parent = Frame124
 
local TextLabel96 = Instance.new("TextLabel")
 
TextLabel96.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel96.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel96.BackgroundTransparency = 1
 
TextLabel96.Text = "RENE BATERBONIA SCRIPT"
 
TextLabel96.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel96.TextSize = 12
 
TextLabel96.Font = Enum.Font.SourceSansBold
 
TextLabel96.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel96.Parent = Frame124
 
local Frame125 = Instance.new("Frame")
 
Frame125.Size = UDim2.new(0, 75, 0, 22)
 
Frame125.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame125.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame125.BorderSizePixel = 0
 
Frame125.Parent = Frame124
 
local UICorner172 = Instance.new("UICorner")
 
UICorner172.CornerRadius = UDim.new(0, 4)
 
UICorner172.Parent = Frame125
 
local UIStroke140 = Instance.new("UIStroke")
 
UIStroke140.Thickness = 1
 
UIStroke140.Parent = Frame125
 
local TextLabel97 = Instance.new("TextLabel")
 
TextLabel97.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel97.BackgroundTransparency = 1
 
TextLabel97.Text = "KEYLESS"
 
TextLabel97.TextSize = 9
 
TextLabel97.Font = Enum.Font.SourceSansBold
 
TextLabel97.Parent = Frame125
 
Frame125.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke140.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel97.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton52 = Instance.new("TextButton")
 
TextButton52.Size = UDim2.new(0, 80, 0, 26)
 
TextButton52.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton52.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton52.Text = "EXECUTE"
 
TextButton52.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton52.TextSize = 11
 
TextButton52.Font = Enum.Font.SourceSansBold
 
TextButton52.Parent = Frame124
 
local UICorner173 = Instance.new("UICorner")
 
UICorner173.CornerRadius = UDim.new(0, 6)
 
UICorner173.Parent = TextButton52
 
local UIStroke141 = Instance.new("UIStroke")
 
UIStroke141.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke141.Thickness = 1
 
UIStroke141.Parent = TextButton52
 
TextButton52.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response43 = game:HttpGet("https://raw.githubusercontent.com/sabscrip-arch/srver/refs/heads/main/Stealanegg")
		 
		loadstring(response43)()
	end)
	 
	local Frame300 = Instance.new("Frame")
	 
	Frame300.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame300.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame300.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame300.BackgroundTransparency = 0.1
	 
	Frame300.BorderSizePixel = 0
	 
	Frame300.Parent = ScreenGui3
	 
	local UICorner459 = Instance.new("UICorner")
	 
	UICorner459.CornerRadius = UDim.new(0, 8)
	 
	UICorner459.Parent = Frame300
	 
	local UIStroke427 = Instance.new("UIStroke")
	 
	UIStroke427.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke427.Thickness = 1.2
	 
	UIStroke427.Parent = Frame300
	 
	local TextLabel274 = Instance.new("TextLabel")
	 
	TextLabel274.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel274.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel274.BackgroundTransparency = 1
	 
	TextLabel274.Text = "Executed RENE BATERBONIA SCRIPT"
	 
	TextLabel274.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel274.TextSize = 13
	 
	TextLabel274.Font = Enum.Font.SourceSansBold
	 
	TextLabel274.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel274.Parent = Frame300
	 
	local tween77 = TweenService:Create(Frame300, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween77:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton52.Text = "LOADED"
	 
	TextButton52.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton52.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke141.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame126 = Instance.new("Frame")
 
Frame126.Name = "RIFT HUB"
 
Frame126.LayoutOrder = 45
 
Frame126.Size = UDim2.new(1, -6, 0, 38)
 
Frame126.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame126.BackgroundTransparency = 0.2
 
Frame126.Parent = ScrollingFrame2
 
local UICorner174 = Instance.new("UICorner")
 
UICorner174.CornerRadius = UDim.new(0, 6)
 
UICorner174.Parent = Frame126
 
local UIStroke142 = Instance.new("UIStroke")
 
UIStroke142.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke142.Thickness = 1
 
UIStroke142.Parent = Frame126
 
local TextLabel98 = Instance.new("TextLabel")
 
TextLabel98.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel98.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel98.BackgroundTransparency = 1
 
TextLabel98.Text = "RIFT HUB"
 
TextLabel98.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel98.TextSize = 12
 
TextLabel98.Font = Enum.Font.SourceSansBold
 
TextLabel98.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel98.Parent = Frame126
 
local Frame127 = Instance.new("Frame")
 
Frame127.Size = UDim2.new(0, 75, 0, 22)
 
Frame127.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame127.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame127.BorderSizePixel = 0
 
Frame127.Parent = Frame126
 
local UICorner175 = Instance.new("UICorner")
 
UICorner175.CornerRadius = UDim.new(0, 4)
 
UICorner175.Parent = Frame127
 
local UIStroke143 = Instance.new("UIStroke")
 
UIStroke143.Thickness = 1
 
UIStroke143.Parent = Frame127
 
local TextLabel99 = Instance.new("TextLabel")
 
TextLabel99.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel99.BackgroundTransparency = 1
 
TextLabel99.Text = "KEY"
 
TextLabel99.TextSize = 9
 
TextLabel99.Font = Enum.Font.SourceSansBold
 
TextLabel99.Parent = Frame127
 
Frame127.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke143.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel99.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton53 = Instance.new("TextButton")
 
TextButton53.Size = UDim2.new(0, 80, 0, 26)
 
TextButton53.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton53.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton53.Text = "EXECUTE"
 
TextButton53.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton53.TextSize = 11
 
TextButton53.Font = Enum.Font.SourceSansBold
 
TextButton53.Parent = Frame126
 
local UICorner176 = Instance.new("UICorner")
 
UICorner176.CornerRadius = UDim.new(0, 6)
 
UICorner176.Parent = TextButton53
 
local UIStroke144 = Instance.new("UIStroke")
 
UIStroke144.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke144.Thickness = 1
 
UIStroke144.Parent = TextButton53
 
TextButton53.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response44 = game:HttpGet("https://rifton.top/loader.lua")
		 
		loadstring(response44)()
	end)
	 
	local Frame301 = Instance.new("Frame")
	 
	Frame301.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame301.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame301.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame301.BackgroundTransparency = 0.1
	 
	Frame301.BorderSizePixel = 0
	 
	Frame301.Parent = ScreenGui3
	 
	local UICorner460 = Instance.new("UICorner")
	 
	UICorner460.CornerRadius = UDim.new(0, 8)
	 
	UICorner460.Parent = Frame301
	 
	local UIStroke428 = Instance.new("UIStroke")
	 
	UIStroke428.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke428.Thickness = 1.2
	 
	UIStroke428.Parent = Frame301
	 
	local TextLabel275 = Instance.new("TextLabel")
	 
	TextLabel275.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel275.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel275.BackgroundTransparency = 1
	 
	TextLabel275.Text = "Executed RIFT HUB"
	 
	TextLabel275.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel275.TextSize = 13
	 
	TextLabel275.Font = Enum.Font.SourceSansBold
	 
	TextLabel275.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel275.Parent = Frame301
	 
	local tween78 = TweenService:Create(Frame301, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween78:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton53.Text = "LOADED"
	 
	TextButton53.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton53.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke144.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame128 = Instance.new("Frame")
 
Frame128.Name = "SAIOPS HUB"
 
Frame128.LayoutOrder = 46
 
Frame128.Size = UDim2.new(1, -6, 0, 38)
 
Frame128.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame128.BackgroundTransparency = 0.2
 
Frame128.Parent = ScrollingFrame2
 
local UICorner177 = Instance.new("UICorner")
 
UICorner177.CornerRadius = UDim.new(0, 6)
 
UICorner177.Parent = Frame128
 
local UIStroke145 = Instance.new("UIStroke")
 
UIStroke145.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke145.Thickness = 1
 
UIStroke145.Parent = Frame128
 
local TextLabel100 = Instance.new("TextLabel")
 
TextLabel100.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel100.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel100.BackgroundTransparency = 1
 
TextLabel100.Text = "SAIOPS HUB"
 
TextLabel100.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel100.TextSize = 12
 
TextLabel100.Font = Enum.Font.SourceSansBold
 
TextLabel100.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel100.Parent = Frame128
 
local Frame129 = Instance.new("Frame")
 
Frame129.Size = UDim2.new(0, 75, 0, 22)
 
Frame129.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame129.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame129.BorderSizePixel = 0
 
Frame129.Parent = Frame128
 
local UICorner178 = Instance.new("UICorner")
 
UICorner178.CornerRadius = UDim.new(0, 4)
 
UICorner178.Parent = Frame129
 
local UIStroke146 = Instance.new("UIStroke")
 
UIStroke146.Thickness = 1
 
UIStroke146.Parent = Frame129
 
local TextLabel101 = Instance.new("TextLabel")
 
TextLabel101.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel101.BackgroundTransparency = 1
 
TextLabel101.Text = "KEY"
 
TextLabel101.TextSize = 9
 
TextLabel101.Font = Enum.Font.SourceSansBold
 
TextLabel101.Parent = Frame129
 
Frame129.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke146.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel101.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton54 = Instance.new("TextButton")
 
TextButton54.Size = UDim2.new(0, 80, 0, 26)
 
TextButton54.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton54.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton54.Text = "EXECUTE"
 
TextButton54.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton54.TextSize = 11
 
TextButton54.Font = Enum.Font.SourceSansBold
 
TextButton54.Parent = Frame128
 
local UICorner179 = Instance.new("UICorner")
 
UICorner179.CornerRadius = UDim.new(0, 6)
 
UICorner179.Parent = TextButton54
 
local UIStroke147 = Instance.new("UIStroke")
 
UIStroke147.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke147.Thickness = 1
 
UIStroke147.Parent = TextButton54
 
TextButton54.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response45 = game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua")
		 
		loadstring(response45)()
	end)
	 
	local Frame302 = Instance.new("Frame")
	 
	Frame302.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame302.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame302.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame302.BackgroundTransparency = 0.1
	 
	Frame302.BorderSizePixel = 0
	 
	Frame302.Parent = ScreenGui3
	 
	local UICorner461 = Instance.new("UICorner")
	 
	UICorner461.CornerRadius = UDim.new(0, 8)
	 
	UICorner461.Parent = Frame302
	 
	local UIStroke429 = Instance.new("UIStroke")
	 
	UIStroke429.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke429.Thickness = 1.2
	 
	UIStroke429.Parent = Frame302
	 
	local TextLabel276 = Instance.new("TextLabel")
	 
	TextLabel276.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel276.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel276.BackgroundTransparency = 1
	 
	TextLabel276.Text = "Executed SAIOPS HUB"
	 
	TextLabel276.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel276.TextSize = 13
	 
	TextLabel276.Font = Enum.Font.SourceSansBold
	 
	TextLabel276.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel276.Parent = Frame302
	 
	local tween79 = TweenService:Create(Frame302, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween79:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton54.Text = "LOADED"
	 
	TextButton54.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton54.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke147.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame130 = Instance.new("Frame")
 
Frame130.Name = "SCRIPTVERSE HUB"
 
Frame130.LayoutOrder = 47
 
Frame130.Size = UDim2.new(1, -6, 0, 38)
 
Frame130.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame130.BackgroundTransparency = 0.2
 
Frame130.Parent = ScrollingFrame2
 
local UICorner180 = Instance.new("UICorner")
 
UICorner180.CornerRadius = UDim.new(0, 6)
 
UICorner180.Parent = Frame130
 
local UIStroke148 = Instance.new("UIStroke")
 
UIStroke148.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke148.Thickness = 1
 
UIStroke148.Parent = Frame130
 
local TextLabel102 = Instance.new("TextLabel")
 
TextLabel102.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel102.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel102.BackgroundTransparency = 1
 
TextLabel102.Text = "SCRIPTVERSE HUB"
 
TextLabel102.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel102.TextSize = 12
 
TextLabel102.Font = Enum.Font.SourceSansBold
 
TextLabel102.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel102.Parent = Frame130
 
local Frame131 = Instance.new("Frame")
 
Frame131.Size = UDim2.new(0, 75, 0, 22)
 
Frame131.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame131.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame131.BorderSizePixel = 0
 
Frame131.Parent = Frame130
 
local UICorner181 = Instance.new("UICorner")
 
UICorner181.CornerRadius = UDim.new(0, 4)
 
UICorner181.Parent = Frame131
 
local UIStroke149 = Instance.new("UIStroke")
 
UIStroke149.Thickness = 1
 
UIStroke149.Parent = Frame131
 
local TextLabel103 = Instance.new("TextLabel")
 
TextLabel103.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel103.BackgroundTransparency = 1
 
TextLabel103.Text = "KEY"
 
TextLabel103.TextSize = 9
 
TextLabel103.Font = Enum.Font.SourceSansBold
 
TextLabel103.Parent = Frame131
 
Frame131.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke149.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel103.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton55 = Instance.new("TextButton")
 
TextButton55.Size = UDim2.new(0, 80, 0, 26)
 
TextButton55.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton55.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton55.Text = "EXECUTE"
 
TextButton55.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton55.TextSize = 11
 
TextButton55.Font = Enum.Font.SourceSansBold
 
TextButton55.Parent = Frame130
 
local UICorner182 = Instance.new("UICorner")
 
UICorner182.CornerRadius = UDim.new(0, 6)
 
UICorner182.Parent = TextButton55
 
local UIStroke150 = Instance.new("UIStroke")
 
UIStroke150.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke150.Thickness = 1
 
UIStroke150.Parent = TextButton55
 
TextButton55.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response46 = game:HttpGet("https://scriptversekey.xyz/s/steal-an-egg")
		 
		loadstring(response46)()
	end)
	 
	local Frame303 = Instance.new("Frame")
	 
	Frame303.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame303.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame303.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame303.BackgroundTransparency = 0.1
	 
	Frame303.BorderSizePixel = 0
	 
	Frame303.Parent = ScreenGui3
	 
	local UICorner462 = Instance.new("UICorner")
	 
	UICorner462.CornerRadius = UDim.new(0, 8)
	 
	UICorner462.Parent = Frame303
	 
	local UIStroke430 = Instance.new("UIStroke")
	 
	UIStroke430.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke430.Thickness = 1.2
	 
	UIStroke430.Parent = Frame303
	 
	local TextLabel277 = Instance.new("TextLabel")
	 
	TextLabel277.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel277.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel277.BackgroundTransparency = 1
	 
	TextLabel277.Text = "Executed SCRIPTVERSE HUB"
	 
	TextLabel277.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel277.TextSize = 13
	 
	TextLabel277.Font = Enum.Font.SourceSansBold
	 
	TextLabel277.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel277.Parent = Frame303
	 
	local tween80 = TweenService:Create(Frame303, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween80:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton55.Text = "LOADED"
	 
	TextButton55.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton55.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke150.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame132 = Instance.new("Frame")
 
Frame132.Name = "SENA HUB"
 
Frame132.LayoutOrder = 48
 
Frame132.Size = UDim2.new(1, -6, 0, 38)
 
Frame132.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame132.BackgroundTransparency = 0.2
 
Frame132.Parent = ScrollingFrame2
 
local UICorner183 = Instance.new("UICorner")
 
UICorner183.CornerRadius = UDim.new(0, 6)
 
UICorner183.Parent = Frame132
 
local UIStroke151 = Instance.new("UIStroke")
 
UIStroke151.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke151.Thickness = 1
 
UIStroke151.Parent = Frame132
 
local TextLabel104 = Instance.new("TextLabel")
 
TextLabel104.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel104.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel104.BackgroundTransparency = 1
 
TextLabel104.Text = "SENA HUB"
 
TextLabel104.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel104.TextSize = 12
 
TextLabel104.Font = Enum.Font.SourceSansBold
 
TextLabel104.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel104.Parent = Frame132
 
local Frame133 = Instance.new("Frame")
 
Frame133.Size = UDim2.new(0, 75, 0, 22)
 
Frame133.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame133.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame133.BorderSizePixel = 0
 
Frame133.Parent = Frame132
 
local UICorner184 = Instance.new("UICorner")
 
UICorner184.CornerRadius = UDim.new(0, 4)
 
UICorner184.Parent = Frame133
 
local UIStroke152 = Instance.new("UIStroke")
 
UIStroke152.Thickness = 1
 
UIStroke152.Parent = Frame133
 
local TextLabel105 = Instance.new("TextLabel")
 
TextLabel105.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel105.BackgroundTransparency = 1
 
TextLabel105.Text = "KEYLESS"
 
TextLabel105.TextSize = 9
 
TextLabel105.Font = Enum.Font.SourceSansBold
 
TextLabel105.Parent = Frame133
 
Frame133.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke152.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel105.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton56 = Instance.new("TextButton")
 
TextButton56.Size = UDim2.new(0, 80, 0, 26)
 
TextButton56.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton56.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton56.Text = "EXECUTE"
 
TextButton56.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton56.TextSize = 11
 
TextButton56.Font = Enum.Font.SourceSansBold
 
TextButton56.Parent = Frame132
 
local UICorner185 = Instance.new("UICorner")
 
UICorner185.CornerRadius = UDim.new(0, 6)
 
UICorner185.Parent = TextButton56
 
local UIStroke153 = Instance.new("UIStroke")
 
UIStroke153.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke153.Thickness = 1
 
UIStroke153.Parent = TextButton56
 
TextButton56.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response47 = game:HttpGet("https://raw.githubusercontent.com/senarblx/sena/refs/heads/main/loader")
		 
		loadstring(response47)()
	end)
	 
	local Frame304 = Instance.new("Frame")
	 
	Frame304.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame304.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame304.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame304.BackgroundTransparency = 0.1
	 
	Frame304.BorderSizePixel = 0
	 
	Frame304.Parent = ScreenGui3
	 
	local UICorner463 = Instance.new("UICorner")
	 
	UICorner463.CornerRadius = UDim.new(0, 8)
	 
	UICorner463.Parent = Frame304
	 
	local UIStroke431 = Instance.new("UIStroke")
	 
	UIStroke431.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke431.Thickness = 1.2
	 
	UIStroke431.Parent = Frame304
	 
	local TextLabel278 = Instance.new("TextLabel")
	 
	TextLabel278.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel278.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel278.BackgroundTransparency = 1
	 
	TextLabel278.Text = "Executed SENA HUB"
	 
	TextLabel278.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel278.TextSize = 13
	 
	TextLabel278.Font = Enum.Font.SourceSansBold
	 
	TextLabel278.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel278.Parent = Frame304
	 
	local tween81 = TweenService:Create(Frame304, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween81:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton56.Text = "LOADED"
	 
	TextButton56.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton56.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke153.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame134 = Instance.new("Frame")
 
Frame134.Name = "SNOWY HUB"
 
Frame134.LayoutOrder = 49
 
Frame134.Size = UDim2.new(1, -6, 0, 38)
 
Frame134.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame134.BackgroundTransparency = 0.2
 
Frame134.Parent = ScrollingFrame2
 
local UICorner186 = Instance.new("UICorner")
 
UICorner186.CornerRadius = UDim.new(0, 6)
 
UICorner186.Parent = Frame134
 
local UIStroke154 = Instance.new("UIStroke")
 
UIStroke154.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke154.Thickness = 1
 
UIStroke154.Parent = Frame134
 
local TextLabel106 = Instance.new("TextLabel")
 
TextLabel106.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel106.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel106.BackgroundTransparency = 1
 
TextLabel106.Text = "SNOWY HUB"
 
TextLabel106.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel106.TextSize = 12
 
TextLabel106.Font = Enum.Font.SourceSansBold
 
TextLabel106.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel106.Parent = Frame134
 
local Frame135 = Instance.new("Frame")
 
Frame135.Size = UDim2.new(0, 75, 0, 22)
 
Frame135.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame135.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame135.BorderSizePixel = 0
 
Frame135.Parent = Frame134
 
local UICorner187 = Instance.new("UICorner")
 
UICorner187.CornerRadius = UDim.new(0, 4)
 
UICorner187.Parent = Frame135
 
local UIStroke155 = Instance.new("UIStroke")
 
UIStroke155.Thickness = 1
 
UIStroke155.Parent = Frame135
 
local TextLabel107 = Instance.new("TextLabel")
 
TextLabel107.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel107.BackgroundTransparency = 1
 
TextLabel107.Text = "KEYLESS"
 
TextLabel107.TextSize = 9
 
TextLabel107.Font = Enum.Font.SourceSansBold
 
TextLabel107.Parent = Frame135
 
Frame135.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke155.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel107.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton57 = Instance.new("TextButton")
 
TextButton57.Size = UDim2.new(0, 80, 0, 26)
 
TextButton57.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton57.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton57.Text = "EXECUTE"
 
TextButton57.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton57.TextSize = 11
 
TextButton57.Font = Enum.Font.SourceSansBold
 
TextButton57.Parent = Frame134
 
local UICorner188 = Instance.new("UICorner")
 
UICorner188.CornerRadius = UDim.new(0, 6)
 
UICorner188.Parent = TextButton57
 
local UIStroke156 = Instance.new("UIStroke")
 
UIStroke156.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke156.Thickness = 1
 
UIStroke156.Parent = TextButton57
 
TextButton57.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response48 = game:HttpGet("https://flowauth.net/v1/ui/a87f00d9adf63658655fcd02ab86a4ef.lua")
		 
		loadstring(response48)()
	end)
	 
	local Frame305 = Instance.new("Frame")
	 
	Frame305.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame305.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame305.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame305.BackgroundTransparency = 0.1
	 
	Frame305.BorderSizePixel = 0
	 
	Frame305.Parent = ScreenGui3
	 
	local UICorner464 = Instance.new("UICorner")
	 
	UICorner464.CornerRadius = UDim.new(0, 8)
	 
	UICorner464.Parent = Frame305
	 
	local UIStroke432 = Instance.new("UIStroke")
	 
	UIStroke432.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke432.Thickness = 1.2
	 
	UIStroke432.Parent = Frame305
	 
	local TextLabel279 = Instance.new("TextLabel")
	 
	TextLabel279.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel279.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel279.BackgroundTransparency = 1
	 
	TextLabel279.Text = "Executed SNOWY HUB"
	 
	TextLabel279.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel279.TextSize = 13
	 
	TextLabel279.Font = Enum.Font.SourceSansBold
	 
	TextLabel279.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel279.Parent = Frame305
	 
	local tween82 = TweenService:Create(Frame305, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween82:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton57.Text = "LOADED"
	 
	TextButton57.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton57.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke156.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame136 = Instance.new("Frame")
 
Frame136.Name = "SOLIX [NEW]"
 
Frame136.LayoutOrder = 50
 
Frame136.Size = UDim2.new(1, -6, 0, 38)
 
Frame136.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame136.BackgroundTransparency = 0.2
 
Frame136.Parent = ScrollingFrame2
 
local UICorner189 = Instance.new("UICorner")
 
UICorner189.CornerRadius = UDim.new(0, 6)
 
UICorner189.Parent = Frame136
 
local UIStroke157 = Instance.new("UIStroke")
 
UIStroke157.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke157.Thickness = 1
 
UIStroke157.Parent = Frame136
 
local TextLabel108 = Instance.new("TextLabel")
 
TextLabel108.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel108.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel108.BackgroundTransparency = 1
 
TextLabel108.Text = "SOLIX [NEW]"
 
TextLabel108.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel108.TextSize = 12
 
TextLabel108.Font = Enum.Font.SourceSansBold
 
TextLabel108.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel108.Parent = Frame136
 
local Frame137 = Instance.new("Frame")
 
Frame137.Size = UDim2.new(0, 75, 0, 22)
 
Frame137.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame137.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame137.BorderSizePixel = 0
 
Frame137.Parent = Frame136
 
local UICorner190 = Instance.new("UICorner")
 
UICorner190.CornerRadius = UDim.new(0, 4)
 
UICorner190.Parent = Frame137
 
local UIStroke158 = Instance.new("UIStroke")
 
UIStroke158.Thickness = 1
 
UIStroke158.Parent = Frame137
 
local TextLabel109 = Instance.new("TextLabel")
 
TextLabel109.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel109.BackgroundTransparency = 1
 
TextLabel109.Text = "KEY"
 
TextLabel109.TextSize = 9
 
TextLabel109.Font = Enum.Font.SourceSansBold
 
TextLabel109.Parent = Frame137
 
Frame137.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke158.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel109.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton58 = Instance.new("TextButton")
 
TextButton58.Size = UDim2.new(0, 80, 0, 26)
 
TextButton58.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton58.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton58.Text = "EXECUTE"
 
TextButton58.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton58.TextSize = 11
 
TextButton58.Font = Enum.Font.SourceSansBold
 
TextButton58.Parent = Frame136
 
local UICorner191 = Instance.new("UICorner")
 
UICorner191.CornerRadius = UDim.new(0, 6)
 
UICorner191.Parent = TextButton58
 
local UIStroke159 = Instance.new("UIStroke")
 
UIStroke159.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke159.Thickness = 1
 
UIStroke159.Parent = TextButton58
 
TextButton58.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response49 = game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua")
		 
		loadstring(response49)()
	end)
	 
	local Frame306 = Instance.new("Frame")
	 
	Frame306.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame306.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame306.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame306.BackgroundTransparency = 0.1
	 
	Frame306.BorderSizePixel = 0
	 
	Frame306.Parent = ScreenGui3
	 
	local UICorner465 = Instance.new("UICorner")
	 
	UICorner465.CornerRadius = UDim.new(0, 8)
	 
	UICorner465.Parent = Frame306
	 
	local UIStroke433 = Instance.new("UIStroke")
	 
	UIStroke433.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke433.Thickness = 1.2
	 
	UIStroke433.Parent = Frame306
	 
	local TextLabel280 = Instance.new("TextLabel")
	 
	TextLabel280.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel280.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel280.BackgroundTransparency = 1
	 
	TextLabel280.Text = "Executed SOLIX [NEW]"
	 
	TextLabel280.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel280.TextSize = 13
	 
	TextLabel280.Font = Enum.Font.SourceSansBold
	 
	TextLabel280.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel280.Parent = Frame306
	 
	local tween83 = TweenService:Create(Frame306, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween83:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton58.Text = "LOADED"
	 
	TextButton58.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton58.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke159.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame138 = Instance.new("Frame")
 
Frame138.Name = "SOLIX HUB"
 
Frame138.LayoutOrder = 51
 
Frame138.Size = UDim2.new(1, -6, 0, 38)
 
Frame138.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame138.BackgroundTransparency = 0.2
 
Frame138.Parent = ScrollingFrame2
 
local UICorner192 = Instance.new("UICorner")
 
UICorner192.CornerRadius = UDim.new(0, 6)
 
UICorner192.Parent = Frame138
 
local UIStroke160 = Instance.new("UIStroke")
 
UIStroke160.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke160.Thickness = 1
 
UIStroke160.Parent = Frame138
 
local TextLabel110 = Instance.new("TextLabel")
 
TextLabel110.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel110.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel110.BackgroundTransparency = 1
 
TextLabel110.Text = "SOLIX HUB"
 
TextLabel110.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel110.TextSize = 12
 
TextLabel110.Font = Enum.Font.SourceSansBold
 
TextLabel110.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel110.Parent = Frame138
 
local Frame139 = Instance.new("Frame")
 
Frame139.Size = UDim2.new(0, 75, 0, 22)
 
Frame139.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame139.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame139.BorderSizePixel = 0
 
Frame139.Parent = Frame138
 
local UICorner193 = Instance.new("UICorner")
 
UICorner193.CornerRadius = UDim.new(0, 4)
 
UICorner193.Parent = Frame139
 
local UIStroke161 = Instance.new("UIStroke")
 
UIStroke161.Thickness = 1
 
UIStroke161.Parent = Frame139
 
local TextLabel111 = Instance.new("TextLabel")
 
TextLabel111.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel111.BackgroundTransparency = 1
 
TextLabel111.Text = "KEY"
 
TextLabel111.TextSize = 9
 
TextLabel111.Font = Enum.Font.SourceSansBold
 
TextLabel111.Parent = Frame139
 
Frame139.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke161.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel111.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton59 = Instance.new("TextButton")
 
TextButton59.Size = UDim2.new(0, 80, 0, 26)
 
TextButton59.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton59.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton59.Text = "EXECUTE"
 
TextButton59.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton59.TextSize = 11
 
TextButton59.Font = Enum.Font.SourceSansBold
 
TextButton59.Parent = Frame138
 
local UICorner194 = Instance.new("UICorner")
 
UICorner194.CornerRadius = UDim.new(0, 6)
 
UICorner194.Parent = TextButton59
 
local UIStroke162 = Instance.new("UIStroke")
 
UIStroke162.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke162.Thickness = 1
 
UIStroke162.Parent = TextButton59
 
TextButton59.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response50 = game:HttpGet("https://solixhub.com/loader")
		 
		loadstring(response50)()
	end)
	 
	local Frame307 = Instance.new("Frame")
	 
	Frame307.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame307.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame307.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame307.BackgroundTransparency = 0.1
	 
	Frame307.BorderSizePixel = 0
	 
	Frame307.Parent = ScreenGui3
	 
	local UICorner466 = Instance.new("UICorner")
	 
	UICorner466.CornerRadius = UDim.new(0, 8)
	 
	UICorner466.Parent = Frame307
	 
	local UIStroke434 = Instance.new("UIStroke")
	 
	UIStroke434.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke434.Thickness = 1.2
	 
	UIStroke434.Parent = Frame307
	 
	local TextLabel281 = Instance.new("TextLabel")
	 
	TextLabel281.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel281.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel281.BackgroundTransparency = 1
	 
	TextLabel281.Text = "Executed SOLIX HUB"
	 
	TextLabel281.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel281.TextSize = 13
	 
	TextLabel281.Font = Enum.Font.SourceSansBold
	 
	TextLabel281.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel281.Parent = Frame307
	 
	local tween84 = TweenService:Create(Frame307, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween84:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton59.Text = "LOADED"
	 
	TextButton59.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton59.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke162.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame140 = Instance.new("Frame")
 
Frame140.Name = "SPEED HUB"
 
Frame140.LayoutOrder = 52
 
Frame140.Size = UDim2.new(1, -6, 0, 38)
 
Frame140.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame140.BackgroundTransparency = 0.2
 
Frame140.Parent = ScrollingFrame2
 
local UICorner195 = Instance.new("UICorner")
 
UICorner195.CornerRadius = UDim.new(0, 6)
 
UICorner195.Parent = Frame140
 
local UIStroke163 = Instance.new("UIStroke")
 
UIStroke163.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke163.Thickness = 1
 
UIStroke163.Parent = Frame140
 
local TextLabel112 = Instance.new("TextLabel")
 
TextLabel112.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel112.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel112.BackgroundTransparency = 1
 
TextLabel112.Text = "SPEED HUB"
 
TextLabel112.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel112.TextSize = 12
 
TextLabel112.Font = Enum.Font.SourceSansBold
 
TextLabel112.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel112.Parent = Frame140
 
local Frame141 = Instance.new("Frame")
 
Frame141.Size = UDim2.new(0, 75, 0, 22)
 
Frame141.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame141.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame141.BorderSizePixel = 0
 
Frame141.Parent = Frame140
 
local UICorner196 = Instance.new("UICorner")
 
UICorner196.CornerRadius = UDim.new(0, 4)
 
UICorner196.Parent = Frame141
 
local UIStroke164 = Instance.new("UIStroke")
 
UIStroke164.Thickness = 1
 
UIStroke164.Parent = Frame141
 
local TextLabel113 = Instance.new("TextLabel")
 
TextLabel113.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel113.BackgroundTransparency = 1
 
TextLabel113.Text = "KEY"
 
TextLabel113.TextSize = 9
 
TextLabel113.Font = Enum.Font.SourceSansBold
 
TextLabel113.Parent = Frame141
 
Frame141.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke164.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel113.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton60 = Instance.new("TextButton")
 
TextButton60.Size = UDim2.new(0, 80, 0, 26)
 
TextButton60.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton60.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton60.Text = "EXECUTE"
 
TextButton60.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton60.TextSize = 11
 
TextButton60.Font = Enum.Font.SourceSansBold
 
TextButton60.Parent = Frame140
 
local UICorner197 = Instance.new("UICorner")
 
UICorner197.CornerRadius = UDim.new(0, 6)
 
UICorner197.Parent = TextButton60
 
local UIStroke165 = Instance.new("UIStroke")
 
UIStroke165.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke165.Thickness = 1
 
UIStroke165.Parent = TextButton60
 
TextButton60.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response51 = game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true)
		 
		loadstring(response51)()
	end)
	 
	local Frame308 = Instance.new("Frame")
	 
	Frame308.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame308.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame308.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame308.BackgroundTransparency = 0.1
	 
	Frame308.BorderSizePixel = 0
	 
	Frame308.Parent = ScreenGui3
	 
	local UICorner467 = Instance.new("UICorner")
	 
	UICorner467.CornerRadius = UDim.new(0, 8)
	 
	UICorner467.Parent = Frame308
	 
	local UIStroke435 = Instance.new("UIStroke")
	 
	UIStroke435.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke435.Thickness = 1.2
	 
	UIStroke435.Parent = Frame308
	 
	local TextLabel282 = Instance.new("TextLabel")
	 
	TextLabel282.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel282.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel282.BackgroundTransparency = 1
	 
	TextLabel282.Text = "Executed SPEED HUB"
	 
	TextLabel282.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel282.TextSize = 13
	 
	TextLabel282.Font = Enum.Font.SourceSansBold
	 
	TextLabel282.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel282.Parent = Frame308
	 
	local tween85 = TweenService:Create(Frame308, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween85:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton60.Text = "LOADED"
	 
	TextButton60.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton60.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke165.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame142 = Instance.new("Frame")
 
Frame142.Name = "SPORTSCLUB HUB"
 
Frame142.LayoutOrder = 53
 
Frame142.Size = UDim2.new(1, -6, 0, 38)
 
Frame142.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame142.BackgroundTransparency = 0.2
 
Frame142.Parent = ScrollingFrame2
 
local UICorner198 = Instance.new("UICorner")
 
UICorner198.CornerRadius = UDim.new(0, 6)
 
UICorner198.Parent = Frame142
 
local UIStroke166 = Instance.new("UIStroke")
 
UIStroke166.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke166.Thickness = 1
 
UIStroke166.Parent = Frame142
 
local TextLabel114 = Instance.new("TextLabel")
 
TextLabel114.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel114.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel114.BackgroundTransparency = 1
 
TextLabel114.Text = "SPORTSCLUB HUB"
 
TextLabel114.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel114.TextSize = 12
 
TextLabel114.Font = Enum.Font.SourceSansBold
 
TextLabel114.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel114.Parent = Frame142
 
local Frame143 = Instance.new("Frame")
 
Frame143.Size = UDim2.new(0, 75, 0, 22)
 
Frame143.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame143.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame143.BorderSizePixel = 0
 
Frame143.Parent = Frame142
 
local UICorner199 = Instance.new("UICorner")
 
UICorner199.CornerRadius = UDim.new(0, 4)
 
UICorner199.Parent = Frame143
 
local UIStroke167 = Instance.new("UIStroke")
 
UIStroke167.Thickness = 1
 
UIStroke167.Parent = Frame143
 
local TextLabel115 = Instance.new("TextLabel")
 
TextLabel115.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel115.BackgroundTransparency = 1
 
TextLabel115.Text = "KEY"
 
TextLabel115.TextSize = 9
 
TextLabel115.Font = Enum.Font.SourceSansBold
 
TextLabel115.Parent = Frame143
 
Frame143.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke167.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel115.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton61 = Instance.new("TextButton")
 
TextButton61.Size = UDim2.new(0, 80, 0, 26)
 
TextButton61.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton61.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton61.Text = "EXECUTE"
 
TextButton61.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton61.TextSize = 11
 
TextButton61.Font = Enum.Font.SourceSansBold
 
TextButton61.Parent = Frame142
 
local UICorner200 = Instance.new("UICorner")
 
UICorner200.CornerRadius = UDim.new(0, 6)
 
UICorner200.Parent = TextButton61
 
local UIStroke168 = Instance.new("UIStroke")
 
UIStroke168.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke168.Thickness = 1
 
UIStroke168.Parent = TextButton61
 
TextButton61.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response52 = game:HttpGet("https://loader.sportsclub.fun/loader.luau")
		 
		loadstring(response52)()
	end)
	 
	local Frame309 = Instance.new("Frame")
	 
	Frame309.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame309.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame309.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame309.BackgroundTransparency = 0.1
	 
	Frame309.BorderSizePixel = 0
	 
	Frame309.Parent = ScreenGui3
	 
	local UICorner468 = Instance.new("UICorner")
	 
	UICorner468.CornerRadius = UDim.new(0, 8)
	 
	UICorner468.Parent = Frame309
	 
	local UIStroke436 = Instance.new("UIStroke")
	 
	UIStroke436.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke436.Thickness = 1.2
	 
	UIStroke436.Parent = Frame309
	 
	local TextLabel283 = Instance.new("TextLabel")
	 
	TextLabel283.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel283.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel283.BackgroundTransparency = 1
	 
	TextLabel283.Text = "Executed SPORTSCLUB HUB"
	 
	TextLabel283.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel283.TextSize = 13
	 
	TextLabel283.Font = Enum.Font.SourceSansBold
	 
	TextLabel283.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel283.Parent = Frame309
	 
	local tween86 = TweenService:Create(Frame309, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween86:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton61.Text = "LOADED"
	 
	TextButton61.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton61.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke168.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame144 = Instance.new("Frame")
 
Frame144.Name = "STEAL AN EGG"
 
Frame144.LayoutOrder = 54
 
Frame144.Size = UDim2.new(1, -6, 0, 38)
 
Frame144.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame144.BackgroundTransparency = 0.2
 
Frame144.Parent = ScrollingFrame2
 
local UICorner201 = Instance.new("UICorner")
 
UICorner201.CornerRadius = UDim.new(0, 6)
 
UICorner201.Parent = Frame144
 
local UIStroke169 = Instance.new("UIStroke")
 
UIStroke169.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke169.Thickness = 1
 
UIStroke169.Parent = Frame144
 
local TextLabel116 = Instance.new("TextLabel")
 
TextLabel116.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel116.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel116.BackgroundTransparency = 1
 
TextLabel116.Text = "STEAL AN EGG"
 
TextLabel116.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel116.TextSize = 12
 
TextLabel116.Font = Enum.Font.SourceSansBold
 
TextLabel116.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel116.Parent = Frame144
 
local Frame145 = Instance.new("Frame")
 
Frame145.Size = UDim2.new(0, 75, 0, 22)
 
Frame145.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame145.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame145.BorderSizePixel = 0
 
Frame145.Parent = Frame144
 
local UICorner202 = Instance.new("UICorner")
 
UICorner202.CornerRadius = UDim.new(0, 4)
 
UICorner202.Parent = Frame145
 
local UIStroke170 = Instance.new("UIStroke")
 
UIStroke170.Thickness = 1
 
UIStroke170.Parent = Frame145
 
local TextLabel117 = Instance.new("TextLabel")
 
TextLabel117.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel117.BackgroundTransparency = 1
 
TextLabel117.Text = "KEYLESS"
 
TextLabel117.TextSize = 9
 
TextLabel117.Font = Enum.Font.SourceSansBold
 
TextLabel117.Parent = Frame145
 
Frame145.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke170.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel117.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton62 = Instance.new("TextButton")
 
TextButton62.Size = UDim2.new(0, 80, 0, 26)
 
TextButton62.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton62.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton62.Text = "EXECUTE"
 
TextButton62.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton62.TextSize = 11
 
TextButton62.Font = Enum.Font.SourceSansBold
 
TextButton62.Parent = Frame144
 
local UICorner203 = Instance.new("UICorner")
 
UICorner203.CornerRadius = UDim.new(0, 6)
 
UICorner203.Parent = TextButton62
 
local UIStroke171 = Instance.new("UIStroke")
 
UIStroke171.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke171.Thickness = 1
 
UIStroke171.Parent = TextButton62
 
TextButton62.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response53 = game:HttpGet("https://raw.githubusercontent.com/Dodoyung24/script-core/main/Steal-An-Egg")
		 
		loadstring(response53)()
	end)
	 
	local Frame310 = Instance.new("Frame")
	 
	Frame310.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame310.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame310.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame310.BackgroundTransparency = 0.1
	 
	Frame310.BorderSizePixel = 0
	 
	Frame310.Parent = ScreenGui3
	 
	local UICorner469 = Instance.new("UICorner")
	 
	UICorner469.CornerRadius = UDim.new(0, 8)
	 
	UICorner469.Parent = Frame310
	 
	local UIStroke437 = Instance.new("UIStroke")
	 
	UIStroke437.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke437.Thickness = 1.2
	 
	UIStroke437.Parent = Frame310
	 
	local TextLabel284 = Instance.new("TextLabel")
	 
	TextLabel284.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel284.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel284.BackgroundTransparency = 1
	 
	TextLabel284.Text = "Executed STEAL AN EGG"
	 
	TextLabel284.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel284.TextSize = 13
	 
	TextLabel284.Font = Enum.Font.SourceSansBold
	 
	TextLabel284.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel284.Parent = Frame310
	 
	local tween87 = TweenService:Create(Frame310, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween87:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton62.Text = "LOADED"
	 
	TextButton62.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton62.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke171.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame146 = Instance.new("Frame")
 
Frame146.Name = "UB HUB"
 
Frame146.LayoutOrder = 55
 
Frame146.Size = UDim2.new(1, -6, 0, 38)
 
Frame146.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame146.BackgroundTransparency = 0.2
 
Frame146.Parent = ScrollingFrame2
 
local UICorner204 = Instance.new("UICorner")
 
UICorner204.CornerRadius = UDim.new(0, 6)
 
UICorner204.Parent = Frame146
 
local UIStroke172 = Instance.new("UIStroke")
 
UIStroke172.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke172.Thickness = 1
 
UIStroke172.Parent = Frame146
 
local TextLabel118 = Instance.new("TextLabel")
 
TextLabel118.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel118.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel118.BackgroundTransparency = 1
 
TextLabel118.Text = "UB HUB"
 
TextLabel118.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel118.TextSize = 12
 
TextLabel118.Font = Enum.Font.SourceSansBold
 
TextLabel118.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel118.Parent = Frame146
 
local Frame147 = Instance.new("Frame")
 
Frame147.Size = UDim2.new(0, 75, 0, 22)
 
Frame147.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame147.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame147.BorderSizePixel = 0
 
Frame147.Parent = Frame146
 
local UICorner205 = Instance.new("UICorner")
 
UICorner205.CornerRadius = UDim.new(0, 4)
 
UICorner205.Parent = Frame147
 
local UIStroke173 = Instance.new("UIStroke")
 
UIStroke173.Thickness = 1
 
UIStroke173.Parent = Frame147
 
local TextLabel119 = Instance.new("TextLabel")
 
TextLabel119.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel119.BackgroundTransparency = 1
 
TextLabel119.Text = "KEYLESS"
 
TextLabel119.TextSize = 9
 
TextLabel119.Font = Enum.Font.SourceSansBold
 
TextLabel119.Parent = Frame147
 
Frame147.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke173.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel119.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton63 = Instance.new("TextButton")
 
TextButton63.Size = UDim2.new(0, 80, 0, 26)
 
TextButton63.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton63.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton63.Text = "EXECUTE"
 
TextButton63.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton63.TextSize = 11
 
TextButton63.Font = Enum.Font.SourceSansBold
 
TextButton63.Parent = Frame146
 
local UICorner206 = Instance.new("UICorner")
 
UICorner206.CornerRadius = UDim.new(0, 6)
 
UICorner206.Parent = TextButton63
 
local UIStroke174 = Instance.new("UIStroke")
 
UIStroke174.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke174.Thickness = 1
 
UIStroke174.Parent = TextButton63
 
TextButton63.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response54 = game:HttpGet("https://raw.githubusercontent.com/TeamUBHub/UBLoader/refs/heads/main/index/Key.lua")
		 
		loadstring(response54)()
	end)
	 
	local Frame311 = Instance.new("Frame")
	 
	Frame311.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame311.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame311.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame311.BackgroundTransparency = 0.1
	 
	Frame311.BorderSizePixel = 0
	 
	Frame311.Parent = ScreenGui3
	 
	local UICorner470 = Instance.new("UICorner")
	 
	UICorner470.CornerRadius = UDim.new(0, 8)
	 
	UICorner470.Parent = Frame311
	 
	local UIStroke438 = Instance.new("UIStroke")
	 
	UIStroke438.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke438.Thickness = 1.2
	 
	UIStroke438.Parent = Frame311
	 
	local TextLabel285 = Instance.new("TextLabel")
	 
	TextLabel285.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel285.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel285.BackgroundTransparency = 1
	 
	TextLabel285.Text = "Executed UB HUB"
	 
	TextLabel285.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel285.TextSize = 13
	 
	TextLabel285.Font = Enum.Font.SourceSansBold
	 
	TextLabel285.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel285.Parent = Frame311
	 
	local tween88 = TweenService:Create(Frame311, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween88:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton63.Text = "LOADED"
	 
	TextButton63.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton63.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke174.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame148 = Instance.new("Frame")
 
Frame148.Name = "VALINC HUB"
 
Frame148.LayoutOrder = 56
 
Frame148.Size = UDim2.new(1, -6, 0, 38)
 
Frame148.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame148.BackgroundTransparency = 0.2
 
Frame148.Parent = ScrollingFrame2
 
local UICorner207 = Instance.new("UICorner")
 
UICorner207.CornerRadius = UDim.new(0, 6)
 
UICorner207.Parent = Frame148
 
local UIStroke175 = Instance.new("UIStroke")
 
UIStroke175.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke175.Thickness = 1
 
UIStroke175.Parent = Frame148
 
local TextLabel120 = Instance.new("TextLabel")
 
TextLabel120.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel120.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel120.BackgroundTransparency = 1
 
TextLabel120.Text = "VALINC HUB"
 
TextLabel120.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel120.TextSize = 12
 
TextLabel120.Font = Enum.Font.SourceSansBold
 
TextLabel120.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel120.Parent = Frame148
 
local Frame149 = Instance.new("Frame")
 
Frame149.Size = UDim2.new(0, 75, 0, 22)
 
Frame149.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame149.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame149.BorderSizePixel = 0
 
Frame149.Parent = Frame148
 
local UICorner208 = Instance.new("UICorner")
 
UICorner208.CornerRadius = UDim.new(0, 4)
 
UICorner208.Parent = Frame149
 
local UIStroke176 = Instance.new("UIStroke")
 
UIStroke176.Thickness = 1
 
UIStroke176.Parent = Frame149
 
local TextLabel121 = Instance.new("TextLabel")
 
TextLabel121.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel121.BackgroundTransparency = 1
 
TextLabel121.Text = "KEYLESS"
 
TextLabel121.TextSize = 9
 
TextLabel121.Font = Enum.Font.SourceSansBold
 
TextLabel121.Parent = Frame149
 
Frame149.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke176.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel121.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton64 = Instance.new("TextButton")
 
TextButton64.Size = UDim2.new(0, 80, 0, 26)
 
TextButton64.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton64.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton64.Text = "EXECUTE"
 
TextButton64.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton64.TextSize = 11
 
TextButton64.Font = Enum.Font.SourceSansBold
 
TextButton64.Parent = Frame148
 
local UICorner209 = Instance.new("UICorner")
 
UICorner209.CornerRadius = UDim.new(0, 6)
 
UICorner209.Parent = TextButton64
 
local UIStroke177 = Instance.new("UIStroke")
 
UIStroke177.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke177.Thickness = 1
 
UIStroke177.Parent = TextButton64
 
TextButton64.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response55 = game:HttpGet("https://api.valincsyndicate.com/v1/releases/5502cba03703f4a3628d522d396b80d8.lua")
		 
		loadstring(response55)()
	end)
	 
	local Frame312 = Instance.new("Frame")
	 
	Frame312.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame312.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame312.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame312.BackgroundTransparency = 0.1
	 
	Frame312.BorderSizePixel = 0
	 
	Frame312.Parent = ScreenGui3
	 
	local UICorner471 = Instance.new("UICorner")
	 
	UICorner471.CornerRadius = UDim.new(0, 8)
	 
	UICorner471.Parent = Frame312
	 
	local UIStroke439 = Instance.new("UIStroke")
	 
	UIStroke439.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke439.Thickness = 1.2
	 
	UIStroke439.Parent = Frame312
	 
	local TextLabel286 = Instance.new("TextLabel")
	 
	TextLabel286.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel286.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel286.BackgroundTransparency = 1
	 
	TextLabel286.Text = "Executed VALINC HUB"
	 
	TextLabel286.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel286.TextSize = 13
	 
	TextLabel286.Font = Enum.Font.SourceSansBold
	 
	TextLabel286.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel286.Parent = Frame312
	 
	local tween89 = TweenService:Create(Frame312, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween89:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton64.Text = "LOADED"
	 
	TextButton64.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton64.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke177.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame150 = Instance.new("Frame")
 
Frame150.Name = "VANTAGE HUB"
 
Frame150.LayoutOrder = 57
 
Frame150.Size = UDim2.new(1, -6, 0, 38)
 
Frame150.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame150.BackgroundTransparency = 0.2
 
Frame150.Parent = ScrollingFrame2
 
local UICorner210 = Instance.new("UICorner")
 
UICorner210.CornerRadius = UDim.new(0, 6)
 
UICorner210.Parent = Frame150
 
local UIStroke178 = Instance.new("UIStroke")
 
UIStroke178.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke178.Thickness = 1
 
UIStroke178.Parent = Frame150
 
local TextLabel122 = Instance.new("TextLabel")
 
TextLabel122.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel122.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel122.BackgroundTransparency = 1
 
TextLabel122.Text = "VANTAGE HUB"
 
TextLabel122.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel122.TextSize = 12
 
TextLabel122.Font = Enum.Font.SourceSansBold
 
TextLabel122.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel122.Parent = Frame150
 
local Frame151 = Instance.new("Frame")
 
Frame151.Size = UDim2.new(0, 75, 0, 22)
 
Frame151.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame151.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame151.BorderSizePixel = 0
 
Frame151.Parent = Frame150
 
local UICorner211 = Instance.new("UICorner")
 
UICorner211.CornerRadius = UDim.new(0, 4)
 
UICorner211.Parent = Frame151
 
local UIStroke179 = Instance.new("UIStroke")
 
UIStroke179.Thickness = 1
 
UIStroke179.Parent = Frame151
 
local TextLabel123 = Instance.new("TextLabel")
 
TextLabel123.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel123.BackgroundTransparency = 1
 
TextLabel123.Text = "KEY"
 
TextLabel123.TextSize = 9
 
TextLabel123.Font = Enum.Font.SourceSansBold
 
TextLabel123.Parent = Frame151
 
Frame151.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke179.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel123.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton65 = Instance.new("TextButton")
 
TextButton65.Size = UDim2.new(0, 80, 0, 26)
 
TextButton65.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton65.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton65.Text = "EXECUTE"
 
TextButton65.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton65.TextSize = 11
 
TextButton65.Font = Enum.Font.SourceSansBold
 
TextButton65.Parent = Frame150
 
local UICorner212 = Instance.new("UICorner")
 
UICorner212.CornerRadius = UDim.new(0, 6)
 
UICorner212.Parent = TextButton65
 
local UIStroke180 = Instance.new("UIStroke")
 
UIStroke180.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke180.Thickness = 1
 
UIStroke180.Parent = TextButton65
 
TextButton65.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response56 = game:HttpGet("https://raw.githubusercontent.com/MisterNovitski/Vantage/refs/heads/main/mm2.txt", true)
		 
		loadstring(response56)()
	end)
	 
	local Frame313 = Instance.new("Frame")
	 
	Frame313.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame313.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame313.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame313.BackgroundTransparency = 0.1
	 
	Frame313.BorderSizePixel = 0
	 
	Frame313.Parent = ScreenGui3
	 
	local UICorner472 = Instance.new("UICorner")
	 
	UICorner472.CornerRadius = UDim.new(0, 8)
	 
	UICorner472.Parent = Frame313
	 
	local UIStroke440 = Instance.new("UIStroke")
	 
	UIStroke440.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke440.Thickness = 1.2
	 
	UIStroke440.Parent = Frame313
	 
	local TextLabel287 = Instance.new("TextLabel")
	 
	TextLabel287.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel287.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel287.BackgroundTransparency = 1
	 
	TextLabel287.Text = "Executed VANTAGE HUB"
	 
	TextLabel287.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel287.TextSize = 13
	 
	TextLabel287.Font = Enum.Font.SourceSansBold
	 
	TextLabel287.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel287.Parent = Frame313
	 
	local tween90 = TweenService:Create(Frame313, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween90:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton65.Text = "LOADED"
	 
	TextButton65.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton65.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke180.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame152 = Instance.new("Frame")
 
Frame152.Name = "VOIDSHELL"
 
Frame152.LayoutOrder = 58
 
Frame152.Size = UDim2.new(1, -6, 0, 38)
 
Frame152.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame152.BackgroundTransparency = 0.2
 
Frame152.Parent = ScrollingFrame2
 
local UICorner213 = Instance.new("UICorner")
 
UICorner213.CornerRadius = UDim.new(0, 6)
 
UICorner213.Parent = Frame152
 
local UIStroke181 = Instance.new("UIStroke")
 
UIStroke181.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke181.Thickness = 1
 
UIStroke181.Parent = Frame152
 
local TextLabel124 = Instance.new("TextLabel")
 
TextLabel124.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel124.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel124.BackgroundTransparency = 1
 
TextLabel124.Text = "VOIDSHELL"
 
TextLabel124.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel124.TextSize = 12
 
TextLabel124.Font = Enum.Font.SourceSansBold
 
TextLabel124.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel124.Parent = Frame152
 
local Frame153 = Instance.new("Frame")
 
Frame153.Size = UDim2.new(0, 75, 0, 22)
 
Frame153.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame153.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame153.BorderSizePixel = 0
 
Frame153.Parent = Frame152
 
local UICorner214 = Instance.new("UICorner")
 
UICorner214.CornerRadius = UDim.new(0, 4)
 
UICorner214.Parent = Frame153
 
local UIStroke182 = Instance.new("UIStroke")
 
UIStroke182.Thickness = 1
 
UIStroke182.Parent = Frame153
 
local TextLabel125 = Instance.new("TextLabel")
 
TextLabel125.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel125.BackgroundTransparency = 1
 
TextLabel125.Text = "KEYLESS"
 
TextLabel125.TextSize = 9
 
TextLabel125.Font = Enum.Font.SourceSansBold
 
TextLabel125.Parent = Frame153
 
Frame153.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
 
UIStroke182.Color = Color3.fromRGB(30, 180, 70)
 
TextLabel125.TextColor3 = Color3.fromRGB(50, 230, 100)
 
local TextButton66 = Instance.new("TextButton")
 
TextButton66.Size = UDim2.new(0, 80, 0, 26)
 
TextButton66.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton66.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton66.Text = "EXECUTE"
 
TextButton66.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton66.TextSize = 11
 
TextButton66.Font = Enum.Font.SourceSansBold
 
TextButton66.Parent = Frame152
 
local UICorner215 = Instance.new("UICorner")
 
UICorner215.CornerRadius = UDim.new(0, 6)
 
UICorner215.Parent = TextButton66
 
local UIStroke183 = Instance.new("UIStroke")
 
UIStroke183.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke183.Thickness = 1
 
UIStroke183.Parent = TextButton66
 
TextButton66.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response57 = game:HttpGet("https://raw.githubusercontent.com/VoidShell-null/VoidShell-Hub/refs/heads/main/Scripts/StealAnEgg.luau")
		 
		loadstring(response57)()
	end)
	 
	local Frame314 = Instance.new("Frame")
	 
	Frame314.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame314.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame314.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame314.BackgroundTransparency = 0.1
	 
	Frame314.BorderSizePixel = 0
	 
	Frame314.Parent = ScreenGui3
	 
	local UICorner473 = Instance.new("UICorner")
	 
	UICorner473.CornerRadius = UDim.new(0, 8)
	 
	UICorner473.Parent = Frame314
	 
	local UIStroke441 = Instance.new("UIStroke")
	 
	UIStroke441.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke441.Thickness = 1.2
	 
	UIStroke441.Parent = Frame314
	 
	local TextLabel288 = Instance.new("TextLabel")
	 
	TextLabel288.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel288.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel288.BackgroundTransparency = 1
	 
	TextLabel288.Text = "Executed VOIDSHELL"
	 
	TextLabel288.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel288.TextSize = 13
	 
	TextLabel288.Font = Enum.Font.SourceSansBold
	 
	TextLabel288.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel288.Parent = Frame314
	 
	local tween91 = TweenService:Create(Frame314, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween91:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton66.Text = "LOADED"
	 
	TextButton66.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton66.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke183.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame154 = Instance.new("Frame")
 
Frame154.Name = "VXEZE HUB"
 
Frame154.LayoutOrder = 59
 
Frame154.Size = UDim2.new(1, -6, 0, 38)
 
Frame154.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame154.BackgroundTransparency = 0.2
 
Frame154.Parent = ScrollingFrame2
 
local UICorner216 = Instance.new("UICorner")
 
UICorner216.CornerRadius = UDim.new(0, 6)
 
UICorner216.Parent = Frame154
 
local UIStroke184 = Instance.new("UIStroke")
 
UIStroke184.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke184.Thickness = 1
 
UIStroke184.Parent = Frame154
 
local TextLabel126 = Instance.new("TextLabel")
 
TextLabel126.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel126.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel126.BackgroundTransparency = 1
 
TextLabel126.Text = "VXEZE HUB"
 
TextLabel126.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel126.TextSize = 12
 
TextLabel126.Font = Enum.Font.SourceSansBold
 
TextLabel126.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel126.Parent = Frame154
 
local Frame155 = Instance.new("Frame")
 
Frame155.Size = UDim2.new(0, 75, 0, 22)
 
Frame155.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame155.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame155.BorderSizePixel = 0
 
Frame155.Parent = Frame154
 
local UICorner217 = Instance.new("UICorner")
 
UICorner217.CornerRadius = UDim.new(0, 4)
 
UICorner217.Parent = Frame155
 
local UIStroke185 = Instance.new("UIStroke")
 
UIStroke185.Thickness = 1
 
UIStroke185.Parent = Frame155
 
local TextLabel127 = Instance.new("TextLabel")
 
TextLabel127.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel127.BackgroundTransparency = 1
 
TextLabel127.Text = "KEY"
 
TextLabel127.TextSize = 9
 
TextLabel127.Font = Enum.Font.SourceSansBold
 
TextLabel127.Parent = Frame155
 
Frame155.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke185.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel127.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton67 = Instance.new("TextButton")
 
TextButton67.Size = UDim2.new(0, 80, 0, 26)
 
TextButton67.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton67.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton67.Text = "EXECUTE"
 
TextButton67.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton67.TextSize = 11
 
TextButton67.Font = Enum.Font.SourceSansBold
 
TextButton67.Parent = Frame154
 
local UICorner218 = Instance.new("UICorner")
 
UICorner218.CornerRadius = UDim.new(0, 6)
 
UICorner218.Parent = TextButton67
 
local UIStroke186 = Instance.new("UIStroke")
 
UIStroke186.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke186.Thickness = 1
 
UIStroke186.Parent = TextButton67
 
TextButton67.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response58 = game:HttpGet("https://vxezestudio.online/api/scripts/script_G5CGjqj2X3rOS/stream/init")
		 
		loadstring(response58)()
	end)
	 
	local Frame315 = Instance.new("Frame")
	 
	Frame315.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame315.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame315.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame315.BackgroundTransparency = 0.1
	 
	Frame315.BorderSizePixel = 0
	 
	Frame315.Parent = ScreenGui3
	 
	local UICorner474 = Instance.new("UICorner")
	 
	UICorner474.CornerRadius = UDim.new(0, 8)
	 
	UICorner474.Parent = Frame315
	 
	local UIStroke442 = Instance.new("UIStroke")
	 
	UIStroke442.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke442.Thickness = 1.2
	 
	UIStroke442.Parent = Frame315
	 
	local TextLabel289 = Instance.new("TextLabel")
	 
	TextLabel289.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel289.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel289.BackgroundTransparency = 1
	 
	TextLabel289.Text = "Executed VXEZE HUB"
	 
	TextLabel289.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel289.TextSize = 13
	 
	TextLabel289.Font = Enum.Font.SourceSansBold
	 
	TextLabel289.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel289.Parent = Frame315
	 
	local tween92 = TweenService:Create(Frame315, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween92:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton67.Text = "LOADED"
	 
	TextButton67.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton67.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke186.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame156 = Instance.new("Frame")
 
Frame156.Name = "YURI HUB"
 
Frame156.LayoutOrder = 60
 
Frame156.Size = UDim2.new(1, -6, 0, 38)
 
Frame156.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame156.BackgroundTransparency = 0.2
 
Frame156.Parent = ScrollingFrame2
 
local UICorner219 = Instance.new("UICorner")
 
UICorner219.CornerRadius = UDim.new(0, 6)
 
UICorner219.Parent = Frame156
 
local UIStroke187 = Instance.new("UIStroke")
 
UIStroke187.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke187.Thickness = 1
 
UIStroke187.Parent = Frame156
 
local TextLabel128 = Instance.new("TextLabel")
 
TextLabel128.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel128.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel128.BackgroundTransparency = 1
 
TextLabel128.Text = "YURI HUB"
 
TextLabel128.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel128.TextSize = 12
 
TextLabel128.Font = Enum.Font.SourceSansBold
 
TextLabel128.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel128.Parent = Frame156
 
local Frame157 = Instance.new("Frame")
 
Frame157.Size = UDim2.new(0, 75, 0, 22)
 
Frame157.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame157.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame157.BorderSizePixel = 0
 
Frame157.Parent = Frame156
 
local UICorner220 = Instance.new("UICorner")
 
UICorner220.CornerRadius = UDim.new(0, 4)
 
UICorner220.Parent = Frame157
 
local UIStroke188 = Instance.new("UIStroke")
 
UIStroke188.Thickness = 1
 
UIStroke188.Parent = Frame157
 
local TextLabel129 = Instance.new("TextLabel")
 
TextLabel129.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel129.BackgroundTransparency = 1
 
TextLabel129.Text = "KEY"
 
TextLabel129.TextSize = 9
 
TextLabel129.Font = Enum.Font.SourceSansBold
 
TextLabel129.Parent = Frame157
 
Frame157.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke188.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel129.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton68 = Instance.new("TextButton")
 
TextButton68.Size = UDim2.new(0, 80, 0, 26)
 
TextButton68.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton68.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton68.Text = "EXECUTE"
 
TextButton68.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton68.TextSize = 11
 
TextButton68.Font = Enum.Font.SourceSansBold
 
TextButton68.Parent = Frame156
 
local UICorner221 = Instance.new("UICorner")
 
UICorner221.CornerRadius = UDim.new(0, 6)
 
UICorner221.Parent = TextButton68
 
local UIStroke189 = Instance.new("UIStroke")
 
UIStroke189.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke189.Thickness = 1
 
UIStroke189.Parent = TextButton68
 
TextButton68.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		_G.autoExec = false
		 
		local response59 = game:HttpGet("https://raw.githubusercontent.com/iLove-yuri/leeeeesbian/refs/heads/main/homumado.lua")
		 
		loadstring(response59)()
	end)
	 
	local Frame316 = Instance.new("Frame")
	 
	Frame316.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame316.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame316.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame316.BackgroundTransparency = 0.1
	 
	Frame316.BorderSizePixel = 0
	 
	Frame316.Parent = ScreenGui3
	 
	local UICorner475 = Instance.new("UICorner")
	 
	UICorner475.CornerRadius = UDim.new(0, 8)
	 
	UICorner475.Parent = Frame316
	 
	local UIStroke443 = Instance.new("UIStroke")
	 
	UIStroke443.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke443.Thickness = 1.2
	 
	UIStroke443.Parent = Frame316
	 
	local TextLabel290 = Instance.new("TextLabel")
	 
	TextLabel290.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel290.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel290.BackgroundTransparency = 1
	 
	TextLabel290.Text = "Executed YURI HUB"
	 
	TextLabel290.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel290.TextSize = 13
	 
	TextLabel290.Font = Enum.Font.SourceSansBold
	 
	TextLabel290.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel290.Parent = Frame316
	 
	local tween93 = TweenService:Create(Frame316, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween93:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton68.Text = "LOADED"
	 
	TextButton68.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton68.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke189.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame158 = Instance.new("Frame")
 
Frame158.Name = "ZERO HUB"
 
Frame158.LayoutOrder = 61
 
Frame158.Size = UDim2.new(1, -6, 0, 38)
 
Frame158.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame158.BackgroundTransparency = 0.2
 
Frame158.Parent = ScrollingFrame2
 
local UICorner222 = Instance.new("UICorner")
 
UICorner222.CornerRadius = UDim.new(0, 6)
 
UICorner222.Parent = Frame158
 
local UIStroke190 = Instance.new("UIStroke")
 
UIStroke190.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke190.Thickness = 1
 
UIStroke190.Parent = Frame158
 
local TextLabel130 = Instance.new("TextLabel")
 
TextLabel130.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel130.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel130.BackgroundTransparency = 1
 
TextLabel130.Text = "ZERO HUB"
 
TextLabel130.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel130.TextSize = 12
 
TextLabel130.Font = Enum.Font.SourceSansBold
 
TextLabel130.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel130.Parent = Frame158
 
local Frame159 = Instance.new("Frame")
 
Frame159.Size = UDim2.new(0, 75, 0, 22)
 
Frame159.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame159.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame159.BorderSizePixel = 0
 
Frame159.Parent = Frame158
 
local UICorner223 = Instance.new("UICorner")
 
UICorner223.CornerRadius = UDim.new(0, 4)
 
UICorner223.Parent = Frame159
 
local UIStroke191 = Instance.new("UIStroke")
 
UIStroke191.Thickness = 1
 
UIStroke191.Parent = Frame159
 
local TextLabel131 = Instance.new("TextLabel")
 
TextLabel131.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel131.BackgroundTransparency = 1
 
TextLabel131.Text = "KEY"
 
TextLabel131.TextSize = 9
 
TextLabel131.Font = Enum.Font.SourceSansBold
 
TextLabel131.Parent = Frame159
 
Frame159.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke191.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel131.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton69 = Instance.new("TextButton")
 
TextButton69.Size = UDim2.new(0, 80, 0, 26)
 
TextButton69.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton69.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton69.Text = "EXECUTE"
 
TextButton69.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton69.TextSize = 11
 
TextButton69.Font = Enum.Font.SourceSansBold
 
TextButton69.Parent = Frame158
 
local UICorner224 = Instance.new("UICorner")
 
UICorner224.CornerRadius = UDim.new(0, 6)
 
UICorner224.Parent = TextButton69
 
local UIStroke192 = Instance.new("UIStroke")
 
UIStroke192.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke192.Thickness = 1
 
UIStroke192.Parent = TextButton69
 
TextButton69.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response60 = game:HttpGet("https://www.zeroimpact.online/raw/loader")
		 
		loadstring(response60)()
	end)
	 
	local Frame317 = Instance.new("Frame")
	 
	Frame317.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame317.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame317.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame317.BackgroundTransparency = 0.1
	 
	Frame317.BorderSizePixel = 0
	 
	Frame317.Parent = ScreenGui3
	 
	local UICorner476 = Instance.new("UICorner")
	 
	UICorner476.CornerRadius = UDim.new(0, 8)
	 
	UICorner476.Parent = Frame317
	 
	local UIStroke444 = Instance.new("UIStroke")
	 
	UIStroke444.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke444.Thickness = 1.2
	 
	UIStroke444.Parent = Frame317
	 
	local TextLabel291 = Instance.new("TextLabel")
	 
	TextLabel291.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel291.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel291.BackgroundTransparency = 1
	 
	TextLabel291.Text = "Executed ZERO HUB"
	 
	TextLabel291.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel291.TextSize = 13
	 
	TextLabel291.Font = Enum.Font.SourceSansBold
	 
	TextLabel291.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel291.Parent = Frame317
	 
	local tween94 = TweenService:Create(Frame317, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween94:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton69.Text = "LOADED"
	 
	TextButton69.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton69.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke192.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame160 = Instance.new("Frame")
 
Frame160.Name = "ZERO POINT HUB"
 
Frame160.LayoutOrder = 62
 
Frame160.Size = UDim2.new(1, -6, 0, 38)
 
Frame160.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame160.BackgroundTransparency = 0.2
 
Frame160.Parent = ScrollingFrame2
 
local UICorner225 = Instance.new("UICorner")
 
UICorner225.CornerRadius = UDim.new(0, 6)
 
UICorner225.Parent = Frame160
 
local UIStroke193 = Instance.new("UIStroke")
 
UIStroke193.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke193.Thickness = 1
 
UIStroke193.Parent = Frame160
 
local TextLabel132 = Instance.new("TextLabel")
 
TextLabel132.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel132.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel132.BackgroundTransparency = 1
 
TextLabel132.Text = "ZERO POINT HUB"
 
TextLabel132.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel132.TextSize = 12
 
TextLabel132.Font = Enum.Font.SourceSansBold
 
TextLabel132.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel132.Parent = Frame160
 
local Frame161 = Instance.new("Frame")
 
Frame161.Size = UDim2.new(0, 75, 0, 22)
 
Frame161.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame161.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame161.BorderSizePixel = 0
 
Frame161.Parent = Frame160
 
local UICorner226 = Instance.new("UICorner")
 
UICorner226.CornerRadius = UDim.new(0, 4)
 
UICorner226.Parent = Frame161
 
local UIStroke194 = Instance.new("UIStroke")
 
UIStroke194.Thickness = 1
 
UIStroke194.Parent = Frame161
 
local TextLabel133 = Instance.new("TextLabel")
 
TextLabel133.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel133.BackgroundTransparency = 1
 
TextLabel133.Text = "KEY"
 
TextLabel133.TextSize = 9
 
TextLabel133.Font = Enum.Font.SourceSansBold
 
TextLabel133.Parent = Frame161
 
Frame161.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke194.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel133.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton70 = Instance.new("TextButton")
 
TextButton70.Size = UDim2.new(0, 80, 0, 26)
 
TextButton70.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton70.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton70.Text = "EXECUTE"
 
TextButton70.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton70.TextSize = 11
 
TextButton70.Font = Enum.Font.SourceSansBold
 
TextButton70.Parent = Frame160
 
local UICorner227 = Instance.new("UICorner")
 
UICorner227.CornerRadius = UDim.new(0, 6)
 
UICorner227.Parent = TextButton70
 
local UIStroke195 = Instance.new("UIStroke")
 
UIStroke195.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke195.Thickness = 1
 
UIStroke195.Parent = TextButton70
 
TextButton70.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response61 = game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem")
		 
		loadstring(response61)()
	end)
	 
	local Frame318 = Instance.new("Frame")
	 
	Frame318.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame318.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame318.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame318.BackgroundTransparency = 0.1
	 
	Frame318.BorderSizePixel = 0
	 
	Frame318.Parent = ScreenGui3
	 
	local UICorner477 = Instance.new("UICorner")
	 
	UICorner477.CornerRadius = UDim.new(0, 8)
	 
	UICorner477.Parent = Frame318
	 
	local UIStroke445 = Instance.new("UIStroke")
	 
	UIStroke445.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke445.Thickness = 1.2
	 
	UIStroke445.Parent = Frame318
	 
	local TextLabel292 = Instance.new("TextLabel")
	 
	TextLabel292.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel292.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel292.BackgroundTransparency = 1
	 
	TextLabel292.Text = "Executed ZERO POINT HUB"
	 
	TextLabel292.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel292.TextSize = 13
	 
	TextLabel292.Font = Enum.Font.SourceSansBold
	 
	TextLabel292.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel292.Parent = Frame318
	 
	local tween95 = TweenService:Create(Frame318, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween95:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton70.Text = "LOADED"
	 
	TextButton70.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton70.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke195.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame162 = Instance.new("Frame")
 
Frame162.Name = "ZEROIN HUB"
 
Frame162.LayoutOrder = 63
 
Frame162.Size = UDim2.new(1, -6, 0, 38)
 
Frame162.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame162.BackgroundTransparency = 0.2
 
Frame162.Parent = ScrollingFrame2
 
local UICorner228 = Instance.new("UICorner")
 
UICorner228.CornerRadius = UDim.new(0, 6)
 
UICorner228.Parent = Frame162
 
local UIStroke196 = Instance.new("UIStroke")
 
UIStroke196.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke196.Thickness = 1
 
UIStroke196.Parent = Frame162
 
local TextLabel134 = Instance.new("TextLabel")
 
TextLabel134.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel134.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel134.BackgroundTransparency = 1
 
TextLabel134.Text = "ZEROIN HUB"
 
TextLabel134.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel134.TextSize = 12
 
TextLabel134.Font = Enum.Font.SourceSansBold
 
TextLabel134.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel134.Parent = Frame162
 
local Frame163 = Instance.new("Frame")
 
Frame163.Size = UDim2.new(0, 75, 0, 22)
 
Frame163.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame163.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame163.BorderSizePixel = 0
 
Frame163.Parent = Frame162
 
local UICorner229 = Instance.new("UICorner")
 
UICorner229.CornerRadius = UDim.new(0, 4)
 
UICorner229.Parent = Frame163
 
local UIStroke197 = Instance.new("UIStroke")
 
UIStroke197.Thickness = 1
 
UIStroke197.Parent = Frame163
 
local TextLabel135 = Instance.new("TextLabel")
 
TextLabel135.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel135.BackgroundTransparency = 1
 
TextLabel135.Text = "KEY"
 
TextLabel135.TextSize = 9
 
TextLabel135.Font = Enum.Font.SourceSansBold
 
TextLabel135.Parent = Frame163
 
Frame163.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke197.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel135.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton71 = Instance.new("TextButton")
 
TextButton71.Size = UDim2.new(0, 80, 0, 26)
 
TextButton71.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton71.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton71.Text = "EXECUTE"
 
TextButton71.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton71.TextSize = 11
 
TextButton71.Font = Enum.Font.SourceSansBold
 
TextButton71.Parent = Frame162
 
local UICorner230 = Instance.new("UICorner")
 
UICorner230.CornerRadius = UDim.new(0, 6)
 
UICorner230.Parent = TextButton71
 
local UIStroke198 = Instance.new("UIStroke")
 
UIStroke198.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke198.Thickness = 1
 
UIStroke198.Parent = TextButton71
 
TextButton71.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response62 = game:HttpGet("https://zeroinhub.com/api/script")
		 
		loadstring(response62)()
	end)
	 
	local Frame319 = Instance.new("Frame")
	 
	Frame319.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame319.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame319.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame319.BackgroundTransparency = 0.1
	 
	Frame319.BorderSizePixel = 0
	 
	Frame319.Parent = ScreenGui3
	 
	local UICorner478 = Instance.new("UICorner")
	 
	UICorner478.CornerRadius = UDim.new(0, 8)
	 
	UICorner478.Parent = Frame319
	 
	local UIStroke446 = Instance.new("UIStroke")
	 
	UIStroke446.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke446.Thickness = 1.2
	 
	UIStroke446.Parent = Frame319
	 
	local TextLabel293 = Instance.new("TextLabel")
	 
	TextLabel293.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel293.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel293.BackgroundTransparency = 1
	 
	TextLabel293.Text = "Executed ZEROIN HUB"
	 
	TextLabel293.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel293.TextSize = 13
	 
	TextLabel293.Font = Enum.Font.SourceSansBold
	 
	TextLabel293.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel293.Parent = Frame319
	 
	local tween96 = TweenService:Create(Frame319, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween96:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton71.Text = "LOADED"
	 
	TextButton71.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton71.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke198.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame164 = Instance.new("Frame")
 
Frame164.Name = "ZK HUB"
 
Frame164.LayoutOrder = 64
 
Frame164.Size = UDim2.new(1, -6, 0, 38)
 
Frame164.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame164.BackgroundTransparency = 0.2
 
Frame164.Parent = ScrollingFrame2
 
local UICorner231 = Instance.new("UICorner")
 
UICorner231.CornerRadius = UDim.new(0, 6)
 
UICorner231.Parent = Frame164
 
local UIStroke199 = Instance.new("UIStroke")
 
UIStroke199.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke199.Thickness = 1
 
UIStroke199.Parent = Frame164
 
local TextLabel136 = Instance.new("TextLabel")
 
TextLabel136.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel136.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel136.BackgroundTransparency = 1
 
TextLabel136.Text = "ZK HUB"
 
TextLabel136.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel136.TextSize = 12
 
TextLabel136.Font = Enum.Font.SourceSansBold
 
TextLabel136.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel136.Parent = Frame164
 
local Frame165 = Instance.new("Frame")
 
Frame165.Size = UDim2.new(0, 75, 0, 22)
 
Frame165.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame165.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame165.BorderSizePixel = 0
 
Frame165.Parent = Frame164
 
local UICorner232 = Instance.new("UICorner")
 
UICorner232.CornerRadius = UDim.new(0, 4)
 
UICorner232.Parent = Frame165
 
local UIStroke200 = Instance.new("UIStroke")
 
UIStroke200.Thickness = 1
 
UIStroke200.Parent = Frame165
 
local TextLabel137 = Instance.new("TextLabel")
 
TextLabel137.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel137.BackgroundTransparency = 1
 
TextLabel137.Text = "KEY"
 
TextLabel137.TextSize = 9
 
TextLabel137.Font = Enum.Font.SourceSansBold
 
TextLabel137.Parent = Frame165
 
Frame165.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke200.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel137.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton72 = Instance.new("TextButton")
 
TextButton72.Size = UDim2.new(0, 80, 0, 26)
 
TextButton72.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton72.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton72.Text = "EXECUTE"
 
TextButton72.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton72.TextSize = 11
 
TextButton72.Font = Enum.Font.SourceSansBold
 
TextButton72.Parent = Frame164
 
local UICorner233 = Instance.new("UICorner")
 
UICorner233.CornerRadius = UDim.new(0, 6)
 
UICorner233.Parent = TextButton72
 
local UIStroke201 = Instance.new("UIStroke")
 
UIStroke201.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke201.Thickness = 1
 
UIStroke201.Parent = TextButton72
 
TextButton72.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		_G.Config = { ApiKey = "ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7" }
		 
		local response63 = game:HttpGet("https://zkcommunity.cloud/loader.lua")
		 
		loadstring(response63)()
	end)
	 
	local Frame320 = Instance.new("Frame")
	 
	Frame320.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame320.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame320.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame320.BackgroundTransparency = 0.1
	 
	Frame320.BorderSizePixel = 0
	 
	Frame320.Parent = ScreenGui3
	 
	local UICorner479 = Instance.new("UICorner")
	 
	UICorner479.CornerRadius = UDim.new(0, 8)
	 
	UICorner479.Parent = Frame320
	 
	local UIStroke447 = Instance.new("UIStroke")
	 
	UIStroke447.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke447.Thickness = 1.2
	 
	UIStroke447.Parent = Frame320
	 
	local TextLabel294 = Instance.new("TextLabel")
	 
	TextLabel294.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel294.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel294.BackgroundTransparency = 1
	 
	TextLabel294.Text = "Executed ZK HUB"
	 
	TextLabel294.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel294.TextSize = 13
	 
	TextLabel294.Font = Enum.Font.SourceSansBold
	 
	TextLabel294.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel294.Parent = Frame320
	 
	local tween97 = TweenService:Create(Frame320, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween97:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton72.Text = "LOADED"
	 
	TextButton72.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton72.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke201.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame166 = Instance.new("Frame")
 
Frame166.Name = "ZNEX HUB"
 
Frame166.LayoutOrder = 65
 
Frame166.Size = UDim2.new(1, -6, 0, 38)
 
Frame166.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame166.BackgroundTransparency = 0.2
 
Frame166.Parent = ScrollingFrame2
 
local UICorner234 = Instance.new("UICorner")
 
UICorner234.CornerRadius = UDim.new(0, 6)
 
UICorner234.Parent = Frame166
 
local UIStroke202 = Instance.new("UIStroke")
 
UIStroke202.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke202.Thickness = 1
 
UIStroke202.Parent = Frame166
 
local TextLabel138 = Instance.new("TextLabel")
 
TextLabel138.Size = UDim2.new(0.52, 0, 1, 0)
 
TextLabel138.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel138.BackgroundTransparency = 1
 
TextLabel138.Text = "ZNEX HUB"
 
TextLabel138.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel138.TextSize = 12
 
TextLabel138.Font = Enum.Font.SourceSansBold
 
TextLabel138.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel138.Parent = Frame166
 
local Frame167 = Instance.new("Frame")
 
Frame167.Size = UDim2.new(0, 75, 0, 22)
 
Frame167.Position = UDim2.new(0.53, 0, 0.5, -11)
 
Frame167.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
 
Frame167.BorderSizePixel = 0
 
Frame167.Parent = Frame166
 
local UICorner235 = Instance.new("UICorner")
 
UICorner235.CornerRadius = UDim.new(0, 4)
 
UICorner235.Parent = Frame167
 
local UIStroke203 = Instance.new("UIStroke")
 
UIStroke203.Thickness = 1
 
UIStroke203.Parent = Frame167
 
local TextLabel139 = Instance.new("TextLabel")
 
TextLabel139.Size = UDim2.new(1, 0, 1, 0)
 
TextLabel139.BackgroundTransparency = 1
 
TextLabel139.Text = "KEY"
 
TextLabel139.TextSize = 9
 
TextLabel139.Font = Enum.Font.SourceSansBold
 
TextLabel139.Parent = Frame167
 
Frame167.BackgroundColor3 = Color3.fromRGB(36, 8, 8)
 
UIStroke203.Color = Color3.fromRGB(180, 30, 30)
 
TextLabel139.TextColor3 = Color3.fromRGB(255, 70, 70)
 
local TextButton73 = Instance.new("TextButton")
 
TextButton73.Size = UDim2.new(0, 80, 0, 26)
 
TextButton73.Position = UDim2.new(1, -86, 0.5, -13)
 
TextButton73.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton73.Text = "EXECUTE"
 
TextButton73.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton73.TextSize = 11
 
TextButton73.Font = Enum.Font.SourceSansBold
 
TextButton73.Parent = Frame166
 
local UICorner236 = Instance.new("UICorner")
 
UICorner236.CornerRadius = UDim.new(0, 6)
 
UICorner236.Parent = TextButton73
 
local UIStroke204 = Instance.new("UIStroke")
 
UIStroke204.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke204.Thickness = 1
 
UIStroke204.Parent = TextButton73
 
TextButton73.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		 
		local response64 = game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/181cfe2bd5df35ce78607b5ffb37c6666abd76eda11ff33b0f24a1b2d8ee935f/download")
		 
		loadstring(response64)()
	end)
	 
	local Frame321 = Instance.new("Frame")
	 
	Frame321.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame321.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame321.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame321.BackgroundTransparency = 0.1
	 
	Frame321.BorderSizePixel = 0
	 
	Frame321.Parent = ScreenGui3
	 
	local UICorner480 = Instance.new("UICorner")
	 
	UICorner480.CornerRadius = UDim.new(0, 8)
	 
	UICorner480.Parent = Frame321
	 
	local UIStroke448 = Instance.new("UIStroke")
	 
	UIStroke448.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke448.Thickness = 1.2
	 
	UIStroke448.Parent = Frame321
	 
	local TextLabel295 = Instance.new("TextLabel")
	 
	TextLabel295.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel295.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel295.BackgroundTransparency = 1
	 
	TextLabel295.Text = "Executed ZNEX HUB"
	 
	TextLabel295.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel295.TextSize = 13
	 
	TextLabel295.Font = Enum.Font.SourceSansBold
	 
	TextLabel295.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel295.Parent = Frame321
	 
	local tween98 = TweenService:Create(Frame321, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween98:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	TextButton73.Text = "LOADED"
	 
	TextButton73.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton73.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke204.Color = Color3.fromRGB(30, 180, 70)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame168 = Instance.new("Frame")
 
Frame168.Size = UDim2.new(1, -6, 0, 130)
 
Frame168.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame168.BackgroundTransparency = 0.2
 
Frame168.Parent = ScrollingFrame3
 
local UICorner237 = Instance.new("UICorner")
 
UICorner237.CornerRadius = UDim.new(0, 8)
 
UICorner237.Parent = Frame168
 
local UIStroke205 = Instance.new("UIStroke")
 
UIStroke205.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke205.Thickness = 1
 
UIStroke205.Parent = Frame168
 
local TextLabel140 = Instance.new("TextLabel")
 
TextLabel140.Size = UDim2.new(1, -20, 0, 30)
 
TextLabel140.Position = UDim2.new(0, 10, 0, 10)
 
TextLabel140.BackgroundTransparency = 1
 
TextLabel140.Text = "Status: Ready"
 
TextLabel140.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextLabel140.TextSize = 12
 
TextLabel140.Font = Enum.Font.Gotham
 
TextLabel140.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel140.Parent = Frame168
 
local TextButton74 = Instance.new("TextButton")
 
TextButton74.Name = "PSButton"
 
TextButton74.Size = UDim2.new(1, -20, 0, 48)
 
TextButton74.Position = UDim2.new(0, 10, 0, 52)
 
TextButton74.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
 
TextButton74.BackgroundTransparency = 0.1
 
TextButton74.BorderSizePixel = 0
 
TextButton74.Text = "Click to make a PS"
 
TextButton74.TextColor3 = Color3.fromRGB(255, 255, 255)
 
TextButton74.TextSize = 14
 
TextButton74.Font = Enum.Font.GothamBold
 
TextButton74.Parent = Frame168
 
local UICorner238 = Instance.new("UICorner")
 
UICorner238.CornerRadius = UDim.new(0, 8)
 
UICorner238.Parent = TextButton74
 
local UIStroke206 = Instance.new("UIStroke")
 
UIStroke206.Color = Color3.fromRGB(255, 80, 80)
 
UIStroke206.Thickness = 1
 
UIStroke206.Parent = TextButton74
 
TextButton74.MouseEnter:Connect(function(arg6)
	 
	local tween99 = TweenService:Create(TextButton74, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(220, 30, 30) })
	 
	tween99:Play()
end)
 
TextButton74.MouseLeave:Connect(function(arg7)
	 
	local tween100 = TweenService:Create(TextButton74, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(180, 20, 20) })
	 
	tween100:Play()
end)
 
TextButton74.MouseButton1Click:Connect(function()
	 
	TextLabel140.Text = "Status: Navigating to deepest server list..."
	 
	TextLabel140.TextColor3 = Color3.fromRGB(255, 200, 0)
	 
	local response65 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100")
	 
	local data = HttpService:JSONDecode(response65)
	 
	TextLabel140.Text = "Status: Scanning page 1..."
	 
	task.wait(0.05)
	 
	local response66 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data.nextPageCursor)
	 
	local data2 = HttpService:JSONDecode(response66)
	 
	TextLabel140.Text = "Status: Scanning page 2..."
	 
	task.wait(0.05)
	 
	local response67 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data2.nextPageCursor)
	 
	local data3 = HttpService:JSONDecode(response67)
	 
	TextLabel140.Text = "Status: Scanning page 3..."
	 
	task.wait(0.05)
	 
	local response68 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data3.nextPageCursor)
	 
	local data4 = HttpService:JSONDecode(response68)
	 
	TextLabel140.Text = "Status: Scanning page 4..."
	 
	task.wait(0.05)
	 
	local response69 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data4.nextPageCursor)
	 
	local data5 = HttpService:JSONDecode(response69)
	 
	TextLabel140.Text = "Status: Scanning page 5..."
	 
	task.wait(0.05)
	 
	local response70 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data5.nextPageCursor)
	 
	local data6 = HttpService:JSONDecode(response70)
	 
	TextLabel140.Text = "Status: Scanning page 6..."
	 
	task.wait(0.05)
	 
	local response71 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data6.nextPageCursor)
	 
	local data7 = HttpService:JSONDecode(response71)
	 
	TextLabel140.Text = "Status: Scanning page 7..."
	 
	task.wait(0.05)
	 
	local response72 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data7.nextPageCursor)
	 
	local data8 = HttpService:JSONDecode(response72)
	 
	TextLabel140.Text = "Status: Scanning page 8..."
	 
	task.wait(0.05)
	 
	local response73 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data8.nextPageCursor)
	 
	local data9 = HttpService:JSONDecode(response73)
	 
	TextLabel140.Text = "Status: Scanning page 9..."
	 
	task.wait(0.05)
	 
	local response74 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data9.nextPageCursor)
	 
	local data10 = HttpService:JSONDecode(response74)
	 
	TextLabel140.Text = "Status: Scanning page 10..."
	 
	task.wait(0.05)
	 
	local response75 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data10.nextPageCursor)
	 
	local data11 = HttpService:JSONDecode(response75)
	 
	TextLabel140.Text = "Status: Scanning page 11..."
	 
	task.wait(0.05)
	 
	local response76 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data11.nextPageCursor)
	 
	local data12 = HttpService:JSONDecode(response76)
	 
	TextLabel140.Text = "Status: Scanning page 12..."
	 
	task.wait(0.05)
	 
	local response77 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data12.nextPageCursor)
	 
	local data13 = HttpService:JSONDecode(response77)
	 
	TextLabel140.Text = "Status: Scanning page 13..."
	 
	task.wait(0.05)
	 
	local response78 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data13.nextPageCursor)
	 
	local data14 = HttpService:JSONDecode(response78)
	 
	TextLabel140.Text = "Status: Scanning page 14..."
	 
	task.wait(0.05)
	 
	local response79 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data14.nextPageCursor)
	 
	local data15 = HttpService:JSONDecode(response79)
	 
	TextLabel140.Text = "Status: Scanning page 15..."
	 
	task.wait(0.05)
	 
	local response80 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data15.nextPageCursor)
	 
	local data16 = HttpService:JSONDecode(response80)
	 
	TextLabel140.Text = "Status: Scanning page 16..."
	 
	task.wait(0.05)
	 
	local response81 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data16.nextPageCursor)
	 
	local data17 = HttpService:JSONDecode(response81)
	 
	TextLabel140.Text = "Status: Scanning page 17..."
	 
	task.wait(0.05)
	 
	local response82 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data17.nextPageCursor)
	 
	local data18 = HttpService:JSONDecode(response82)
	 
	TextLabel140.Text = "Status: Scanning page 18..."
	 
	task.wait(0.05)
	 
	local response83 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data18.nextPageCursor)
	 
	local data19 = HttpService:JSONDecode(response83)
	 
	TextLabel140.Text = "Status: Scanning page 19..."
	 
	task.wait(0.05)
	 
	local response84 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data19.nextPageCursor)
	 
	local data20 = HttpService:JSONDecode(response84)
	 
	TextLabel140.Text = "Status: Scanning page 20..."
	 
	task.wait(0.05)
	 
	local response85 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data20.nextPageCursor)
	 
	local data21 = HttpService:JSONDecode(response85)
	 
	TextLabel140.Text = "Status: Scanning page 21..."
	 
	task.wait(0.05)
	 
	local response86 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data21.nextPageCursor)
	 
	local data22 = HttpService:JSONDecode(response86)
	 
	TextLabel140.Text = "Status: Scanning page 22..."
	 
	task.wait(0.05)
	 
	local response87 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data22.nextPageCursor)
	 
	local data23 = HttpService:JSONDecode(response87)
	 
	TextLabel140.Text = "Status: Scanning page 23..."
	 
	task.wait(0.05)
	 
	local response88 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data23.nextPageCursor)
	 
	local data24 = HttpService:JSONDecode(response88)
	 
	TextLabel140.Text = "Status: Scanning page 24..."
	 
	task.wait(0.05)
	 
	local response89 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data24.nextPageCursor)
	 
	local data25 = HttpService:JSONDecode(response89)
	 
	TextLabel140.Text = "Status: Scanning page 25..."
	 
	task.wait(0.05)
	 
	local response90 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data25.nextPageCursor)
	 
	local data26 = HttpService:JSONDecode(response90)
	 
	TextLabel140.Text = "Status: Scanning page 26..."
	 
	task.wait(0.05)
	 
	local response91 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data26.nextPageCursor)
	 
	local data27 = HttpService:JSONDecode(response91)
	 
	TextLabel140.Text = "Status: Scanning page 27..."
	 
	task.wait(0.05)
	 
	local response92 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data27.nextPageCursor)
	 
	local data28 = HttpService:JSONDecode(response92)
	 
	TextLabel140.Text = "Status: Scanning page 28..."
	 
	task.wait(0.05)
	 
	local response93 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data28.nextPageCursor)
	 
	local data29 = HttpService:JSONDecode(response93)
	 
	TextLabel140.Text = "Status: Scanning page 29..."
	 
	task.wait(0.05)
	 
	local response94 = game:HttpGet("https://games.roblox.com/v1/games/" .. 0 .. "/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data29.nextPageCursor)
	 
	local data30 = HttpService:JSONDecode(response94)
	 
	TextLabel140.Text = "Status: Scanning page 30..."
	 
	task.wait(0.05)
	 
	for i5, v5 in ipairs(data30.data) do
		 
	end
	 
end)
 
local Frame169 = Instance.new("Frame")
 
Frame169.Name = "CINEMATIC BLOOM"
 
Frame169.LayoutOrder = 1
 
Frame169.Size = UDim2.new(1, -6, 0, 38)
 
Frame169.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame169.BackgroundTransparency = 0.2
 
Frame169.Parent = ScrollingFrame4
 
local UICorner239 = Instance.new("UICorner")
 
UICorner239.CornerRadius = UDim.new(0, 6)
 
UICorner239.Parent = Frame169
 
local UIStroke207 = Instance.new("UIStroke")
 
UIStroke207.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke207.Thickness = 1
 
UIStroke207.Parent = Frame169
 
local TextLabel141 = Instance.new("TextLabel")
 
TextLabel141.Size = UDim2.new(0.6, 0, 1, 0)
 
TextLabel141.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel141.BackgroundTransparency = 1
 
TextLabel141.Text = "CINEMATIC BLOOM"
 
TextLabel141.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel141.TextSize = 12
 
TextLabel141.Font = Enum.Font.SourceSansBold
 
TextLabel141.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel141.Parent = Frame169
 
local TextButton75 = Instance.new("TextButton")
 
TextButton75.Size = UDim2.new(0, 90, 0, 26)
 
TextButton75.Position = UDim2.new(1, -96, 0.5, -13)
 
TextButton75.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton75.Text = "ACTIVATE"
 
TextButton75.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton75.TextSize = 11
 
TextButton75.Font = Enum.Font.SourceSansBold
 
TextButton75.Parent = Frame169
 
local UICorner240 = Instance.new("UICorner")
 
UICorner240.CornerRadius = UDim.new(0, 6)
 
UICorner240.Parent = TextButton75
 
local UIStroke208 = Instance.new("UIStroke")
 
UIStroke208.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke208.Thickness = 1
 
UIStroke208.Parent = TextButton75
 
TextButton75.MouseButton1Click:Connect(function()
	 
	local children2 = Lighting:GetChildren()
	 
	for i6, v6 in ipairs(children2) do
	end
	 
	ScrollingFrame4:GetChildren()
	 
	local TextButton164 = Frame169:FindFirstChildOfClass("TextButton")
	 
	local UIStroke449 = Frame169:FindFirstChildOfClass("UIStroke")
	 
	TextButton164.Text = "ACTIVATE"
	 
	TextButton164.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton164.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke449.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton165 = Frame170:FindFirstChildOfClass("TextButton")
	 
	local UIStroke450 = Frame170:FindFirstChildOfClass("UIStroke")
	 
	TextButton165.Text = "ACTIVATE"
	 
	TextButton165.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton165.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke450.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton166 = Frame171:FindFirstChildOfClass("TextButton")
	 
	local UIStroke451 = Frame171:FindFirstChildOfClass("UIStroke")
	 
	TextButton166.Text = "ACTIVATE"
	 
	TextButton166.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton166.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke451.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton167 = Frame172:FindFirstChildOfClass("TextButton")
	 
	local UIStroke452 = Frame172:FindFirstChildOfClass("UIStroke")
	 
	TextButton167.Text = "ACTIVATE"
	 
	TextButton167.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton167.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke452.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton168 = Frame173:FindFirstChildOfClass("TextButton")
	 
	local UIStroke453 = Frame173:FindFirstChildOfClass("UIStroke")
	 
	TextButton168.Text = "ACTIVATE"
	 
	TextButton168.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton168.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke453.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton169 = Frame174:FindFirstChildOfClass("TextButton")
	 
	local UIStroke454 = Frame174:FindFirstChildOfClass("UIStroke")
	 
	TextButton169.Text = "ACTIVATE"
	 
	TextButton169.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton169.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke454.Color = Color3.fromRGB(120, 0, 0)
	 
	local BloomEffect = Instance.new("BloomEffect")
	 
	BloomEffect.Name = "SourcesHub_Shader"
	 
	BloomEffect.Intensity = 0.8
	 
	BloomEffect.Size = 35
	 
	BloomEffect.Threshold = 0.75
	 
	BloomEffect.Parent = Lighting
	 
	TextButton75.Text = "ACTIVE"
	 
	TextButton75.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton75.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke208.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame322 = Instance.new("Frame")
	 
	Frame322.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame322.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame322.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame322.BackgroundTransparency = 0.1
	 
	Frame322.BorderSizePixel = 0
	 
	Frame322.Parent = ScreenGui3
	 
	local UICorner481 = Instance.new("UICorner")
	 
	UICorner481.CornerRadius = UDim.new(0, 8)
	 
	UICorner481.Parent = Frame322
	 
	local UIStroke455 = Instance.new("UIStroke")
	 
	UIStroke455.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke455.Thickness = 1.2
	 
	UIStroke455.Parent = Frame322
	 
	local TextLabel296 = Instance.new("TextLabel")
	 
	TextLabel296.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel296.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel296.BackgroundTransparency = 1
	 
	TextLabel296.Text = "Shader Enabled: CINEMATIC BLOOM"
	 
	TextLabel296.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel296.TextSize = 13
	 
	TextLabel296.Font = Enum.Font.SourceSansBold
	 
	TextLabel296.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel296.Parent = Frame322
	 
	local tween101 = TweenService:Create(Frame322, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween101:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame170 = Instance.new("Frame")
 
Frame170.Name = "VIBRANT COLOR"
 
Frame170.LayoutOrder = 2
 
Frame170.Size = UDim2.new(1, -6, 0, 38)
 
Frame170.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame170.BackgroundTransparency = 0.2
 
Frame170.Parent = ScrollingFrame4
 
local UICorner241 = Instance.new("UICorner")
 
UICorner241.CornerRadius = UDim.new(0, 6)
 
UICorner241.Parent = Frame170
 
local UIStroke209 = Instance.new("UIStroke")
 
UIStroke209.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke209.Thickness = 1
 
UIStroke209.Parent = Frame170
 
local TextLabel142 = Instance.new("TextLabel")
 
TextLabel142.Size = UDim2.new(0.6, 0, 1, 0)
 
TextLabel142.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel142.BackgroundTransparency = 1
 
TextLabel142.Text = "VIBRANT COLOR"
 
TextLabel142.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel142.TextSize = 12
 
TextLabel142.Font = Enum.Font.SourceSansBold
 
TextLabel142.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel142.Parent = Frame170
 
local TextButton76 = Instance.new("TextButton")
 
TextButton76.Size = UDim2.new(0, 90, 0, 26)
 
TextButton76.Position = UDim2.new(1, -96, 0.5, -13)
 
TextButton76.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton76.Text = "ACTIVATE"
 
TextButton76.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton76.TextSize = 11
 
TextButton76.Font = Enum.Font.SourceSansBold
 
TextButton76.Parent = Frame170
 
local UICorner242 = Instance.new("UICorner")
 
UICorner242.CornerRadius = UDim.new(0, 6)
 
UICorner242.Parent = TextButton76
 
local UIStroke210 = Instance.new("UIStroke")
 
UIStroke210.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke210.Thickness = 1
 
UIStroke210.Parent = TextButton76
 
TextButton76.MouseButton1Click:Connect(function()
	 
	Lighting:GetChildren()
	 
	BloomEffect:Destroy()
	 
	ScrollingFrame4:GetChildren()
	 
	local TextButton170 = Frame169:FindFirstChildOfClass("TextButton")
	 
	local UIStroke456 = Frame169:FindFirstChildOfClass("UIStroke")
	 
	TextButton170.Text = "ACTIVATE"
	 
	TextButton170.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton170.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke456.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton171 = Frame170:FindFirstChildOfClass("TextButton")
	 
	local UIStroke457 = Frame170:FindFirstChildOfClass("UIStroke")
	 
	TextButton171.Text = "ACTIVATE"
	 
	TextButton171.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton171.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke457.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton172 = Frame171:FindFirstChildOfClass("TextButton")
	 
	local UIStroke458 = Frame171:FindFirstChildOfClass("UIStroke")
	 
	TextButton172.Text = "ACTIVATE"
	 
	TextButton172.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton172.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke458.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton173 = Frame172:FindFirstChildOfClass("TextButton")
	 
	local UIStroke459 = Frame172:FindFirstChildOfClass("UIStroke")
	 
	TextButton173.Text = "ACTIVATE"
	 
	TextButton173.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton173.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke459.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton174 = Frame173:FindFirstChildOfClass("TextButton")
	 
	local UIStroke460 = Frame173:FindFirstChildOfClass("UIStroke")
	 
	TextButton174.Text = "ACTIVATE"
	 
	TextButton174.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton174.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke460.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton175 = Frame174:FindFirstChildOfClass("TextButton")
	 
	local UIStroke461 = Frame174:FindFirstChildOfClass("UIStroke")
	 
	TextButton175.Text = "ACTIVATE"
	 
	TextButton175.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton175.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke461.Color = Color3.fromRGB(120, 0, 0)
	 
	local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
	 
	ColorCorrectionEffect.Name = "SourcesHub_Shader"
	 
	ColorCorrectionEffect.Saturation = 0.35
	 
	ColorCorrectionEffect.Contrast = 0.15
	 
	ColorCorrectionEffect.Brightness = 0.05
	 
	ColorCorrectionEffect.Parent = Lighting
	 
	TextButton76.Text = "ACTIVE"
	 
	TextButton76.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton76.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke210.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame323 = Instance.new("Frame")
	 
	Frame323.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame323.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame323.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame323.BackgroundTransparency = 0.1
	 
	Frame323.BorderSizePixel = 0
	 
	Frame323.Parent = ScreenGui3
	 
	local UICorner482 = Instance.new("UICorner")
	 
	UICorner482.CornerRadius = UDim.new(0, 8)
	 
	UICorner482.Parent = Frame323
	 
	local UIStroke462 = Instance.new("UIStroke")
	 
	UIStroke462.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke462.Thickness = 1.2
	 
	UIStroke462.Parent = Frame323
	 
	local TextLabel297 = Instance.new("TextLabel")
	 
	TextLabel297.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel297.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel297.BackgroundTransparency = 1
	 
	TextLabel297.Text = "Shader Enabled: VIBRANT COLOR"
	 
	TextLabel297.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel297.TextSize = 13
	 
	TextLabel297.Font = Enum.Font.SourceSansBold
	 
	TextLabel297.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel297.Parent = Frame323
	 
	local tween102 = TweenService:Create(Frame323, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween102:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame171 = Instance.new("Frame")
 
Frame171.Name = "RETRO / SEPIA"
 
Frame171.LayoutOrder = 3
 
Frame171.Size = UDim2.new(1, -6, 0, 38)
 
Frame171.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame171.BackgroundTransparency = 0.2
 
Frame171.Parent = ScrollingFrame4
 
local UICorner243 = Instance.new("UICorner")
 
UICorner243.CornerRadius = UDim.new(0, 6)
 
UICorner243.Parent = Frame171
 
local UIStroke211 = Instance.new("UIStroke")
 
UIStroke211.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke211.Thickness = 1
 
UIStroke211.Parent = Frame171
 
local TextLabel143 = Instance.new("TextLabel")
 
TextLabel143.Size = UDim2.new(0.6, 0, 1, 0)
 
TextLabel143.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel143.BackgroundTransparency = 1
 
TextLabel143.Text = "RETRO / SEPIA"
 
TextLabel143.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel143.TextSize = 12
 
TextLabel143.Font = Enum.Font.SourceSansBold
 
TextLabel143.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel143.Parent = Frame171
 
local TextButton77 = Instance.new("TextButton")
 
TextButton77.Size = UDim2.new(0, 90, 0, 26)
 
TextButton77.Position = UDim2.new(1, -96, 0.5, -13)
 
TextButton77.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton77.Text = "ACTIVATE"
 
TextButton77.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton77.TextSize = 11
 
TextButton77.Font = Enum.Font.SourceSansBold
 
TextButton77.Parent = Frame171
 
local UICorner244 = Instance.new("UICorner")
 
UICorner244.CornerRadius = UDim.new(0, 6)
 
UICorner244.Parent = TextButton77
 
local UIStroke212 = Instance.new("UIStroke")
 
UIStroke212.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke212.Thickness = 1
 
UIStroke212.Parent = TextButton77
 
TextButton77.MouseButton1Click:Connect(function()
	 
	Lighting:GetChildren()
	 
	ColorCorrectionEffect:Destroy()
	 
	ScrollingFrame4:GetChildren()
	 
	local TextButton176 = Frame169:FindFirstChildOfClass("TextButton")
	 
	local UIStroke463 = Frame169:FindFirstChildOfClass("UIStroke")
	 
	TextButton176.Text = "ACTIVATE"
	 
	TextButton176.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton176.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke463.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton177 = Frame170:FindFirstChildOfClass("TextButton")
	 
	local UIStroke464 = Frame170:FindFirstChildOfClass("UIStroke")
	 
	TextButton177.Text = "ACTIVATE"
	 
	TextButton177.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton177.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke464.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton178 = Frame171:FindFirstChildOfClass("TextButton")
	 
	local UIStroke465 = Frame171:FindFirstChildOfClass("UIStroke")
	 
	TextButton178.Text = "ACTIVATE"
	 
	TextButton178.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton178.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke465.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton179 = Frame172:FindFirstChildOfClass("TextButton")
	 
	local UIStroke466 = Frame172:FindFirstChildOfClass("UIStroke")
	 
	TextButton179.Text = "ACTIVATE"
	 
	TextButton179.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton179.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke466.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton180 = Frame173:FindFirstChildOfClass("TextButton")
	 
	local UIStroke467 = Frame173:FindFirstChildOfClass("UIStroke")
	 
	TextButton180.Text = "ACTIVATE"
	 
	TextButton180.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton180.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke467.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton181 = Frame174:FindFirstChildOfClass("TextButton")
	 
	local UIStroke468 = Frame174:FindFirstChildOfClass("UIStroke")
	 
	TextButton181.Text = "ACTIVATE"
	 
	TextButton181.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton181.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke468.Color = Color3.fromRGB(120, 0, 0)
	 
	local ColorCorrectionEffect2 = Instance.new("ColorCorrectionEffect")
	 
	ColorCorrectionEffect2.Name = "SourcesHub_Shader"
	 
	ColorCorrectionEffect2.TintColor = Color3.fromRGB(255, 235, 190)
	 
	ColorCorrectionEffect2.Saturation = -0.2
	 
	ColorCorrectionEffect2.Contrast = 0.1
	 
	ColorCorrectionEffect2.Parent = Lighting
	 
	TextButton77.Text = "ACTIVE"
	 
	TextButton77.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton77.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke212.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame324 = Instance.new("Frame")
	 
	Frame324.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame324.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame324.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame324.BackgroundTransparency = 0.1
	 
	Frame324.BorderSizePixel = 0
	 
	Frame324.Parent = ScreenGui3
	 
	local UICorner483 = Instance.new("UICorner")
	 
	UICorner483.CornerRadius = UDim.new(0, 8)
	 
	UICorner483.Parent = Frame324
	 
	local UIStroke469 = Instance.new("UIStroke")
	 
	UIStroke469.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke469.Thickness = 1.2
	 
	UIStroke469.Parent = Frame324
	 
	local TextLabel298 = Instance.new("TextLabel")
	 
	TextLabel298.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel298.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel298.BackgroundTransparency = 1
	 
	TextLabel298.Text = "Shader Enabled: RETRO / SEPIA"
	 
	TextLabel298.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel298.TextSize = 13
	 
	TextLabel298.Font = Enum.Font.SourceSansBold
	 
	TextLabel298.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel298.Parent = Frame324
	 
	local tween103 = TweenService:Create(Frame324, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween103:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame172 = Instance.new("Frame")
 
Frame172.Name = "DEEP NIGHTS"
 
Frame172.LayoutOrder = 4
 
Frame172.Size = UDim2.new(1, -6, 0, 38)
 
Frame172.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame172.BackgroundTransparency = 0.2
 
Frame172.Parent = ScrollingFrame4
 
local UICorner245 = Instance.new("UICorner")
 
UICorner245.CornerRadius = UDim.new(0, 6)
 
UICorner245.Parent = Frame172
 
local UIStroke213 = Instance.new("UIStroke")
 
UIStroke213.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke213.Thickness = 1
 
UIStroke213.Parent = Frame172
 
local TextLabel144 = Instance.new("TextLabel")
 
TextLabel144.Size = UDim2.new(0.6, 0, 1, 0)
 
TextLabel144.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel144.BackgroundTransparency = 1
 
TextLabel144.Text = "DEEP NIGHTS"
 
TextLabel144.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel144.TextSize = 12
 
TextLabel144.Font = Enum.Font.SourceSansBold
 
TextLabel144.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel144.Parent = Frame172
 
local TextButton78 = Instance.new("TextButton")
 
TextButton78.Size = UDim2.new(0, 90, 0, 26)
 
TextButton78.Position = UDim2.new(1, -96, 0.5, -13)
 
TextButton78.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton78.Text = "ACTIVATE"
 
TextButton78.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton78.TextSize = 11
 
TextButton78.Font = Enum.Font.SourceSansBold
 
TextButton78.Parent = Frame172
 
local UICorner246 = Instance.new("UICorner")
 
UICorner246.CornerRadius = UDim.new(0, 6)
 
UICorner246.Parent = TextButton78
 
local UIStroke214 = Instance.new("UIStroke")
 
UIStroke214.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke214.Thickness = 1
 
UIStroke214.Parent = TextButton78
 
TextButton78.MouseButton1Click:Connect(function()
	 
	Lighting:GetChildren()
	 
	ColorCorrectionEffect2:Destroy()
	 
	ScrollingFrame4:GetChildren()
	 
	local TextButton182 = Frame169:FindFirstChildOfClass("TextButton")
	 
	local UIStroke470 = Frame169:FindFirstChildOfClass("UIStroke")
	 
	TextButton182.Text = "ACTIVATE"
	 
	TextButton182.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton182.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke470.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton183 = Frame170:FindFirstChildOfClass("TextButton")
	 
	local UIStroke471 = Frame170:FindFirstChildOfClass("UIStroke")
	 
	TextButton183.Text = "ACTIVATE"
	 
	TextButton183.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton183.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke471.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton184 = Frame171:FindFirstChildOfClass("TextButton")
	 
	local UIStroke472 = Frame171:FindFirstChildOfClass("UIStroke")
	 
	TextButton184.Text = "ACTIVATE"
	 
	TextButton184.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton184.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke472.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton185 = Frame172:FindFirstChildOfClass("TextButton")
	 
	local UIStroke473 = Frame172:FindFirstChildOfClass("UIStroke")
	 
	TextButton185.Text = "ACTIVATE"
	 
	TextButton185.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton185.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke473.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton186 = Frame173:FindFirstChildOfClass("TextButton")
	 
	local UIStroke474 = Frame173:FindFirstChildOfClass("UIStroke")
	 
	TextButton186.Text = "ACTIVATE"
	 
	TextButton186.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton186.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke474.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton187 = Frame174:FindFirstChildOfClass("TextButton")
	 
	local UIStroke475 = Frame174:FindFirstChildOfClass("UIStroke")
	 
	TextButton187.Text = "ACTIVATE"
	 
	TextButton187.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton187.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke475.Color = Color3.fromRGB(120, 0, 0)
	 
	local ColorCorrectionEffect3 = Instance.new("ColorCorrectionEffect")
	 
	ColorCorrectionEffect3.Name = "SourcesHub_Shader"
	 
	ColorCorrectionEffect3.TintColor = Color3.fromRGB(150, 180, 255)
	 
	ColorCorrectionEffect3.Saturation = -0.1
	 
	ColorCorrectionEffect3.Contrast = 0.25
	 
	ColorCorrectionEffect3.Brightness = -0.08
	 
	ColorCorrectionEffect3.Parent = Lighting
	 
	TextButton78.Text = "ACTIVE"
	 
	TextButton78.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton78.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke214.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame325 = Instance.new("Frame")
	 
	Frame325.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame325.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame325.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame325.BackgroundTransparency = 0.1
	 
	Frame325.BorderSizePixel = 0
	 
	Frame325.Parent = ScreenGui3
	 
	local UICorner484 = Instance.new("UICorner")
	 
	UICorner484.CornerRadius = UDim.new(0, 8)
	 
	UICorner484.Parent = Frame325
	 
	local UIStroke476 = Instance.new("UIStroke")
	 
	UIStroke476.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke476.Thickness = 1.2
	 
	UIStroke476.Parent = Frame325
	 
	local TextLabel299 = Instance.new("TextLabel")
	 
	TextLabel299.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel299.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel299.BackgroundTransparency = 1
	 
	TextLabel299.Text = "Shader Enabled: DEEP NIGHTS"
	 
	TextLabel299.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel299.TextSize = 13
	 
	TextLabel299.Font = Enum.Font.SourceSansBold
	 
	TextLabel299.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel299.Parent = Frame325
	 
	local tween104 = TweenService:Create(Frame325, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween104:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame173 = Instance.new("Frame")
 
Frame173.Name = "SOFT BLUR"
 
Frame173.LayoutOrder = 5
 
Frame173.Size = UDim2.new(1, -6, 0, 38)
 
Frame173.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame173.BackgroundTransparency = 0.2
 
Frame173.Parent = ScrollingFrame4
 
local UICorner247 = Instance.new("UICorner")
 
UICorner247.CornerRadius = UDim.new(0, 6)
 
UICorner247.Parent = Frame173
 
local UIStroke215 = Instance.new("UIStroke")
 
UIStroke215.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke215.Thickness = 1
 
UIStroke215.Parent = Frame173
 
local TextLabel145 = Instance.new("TextLabel")
 
TextLabel145.Size = UDim2.new(0.6, 0, 1, 0)
 
TextLabel145.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel145.BackgroundTransparency = 1
 
TextLabel145.Text = "SOFT BLUR"
 
TextLabel145.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel145.TextSize = 12
 
TextLabel145.Font = Enum.Font.SourceSansBold
 
TextLabel145.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel145.Parent = Frame173
 
local TextButton79 = Instance.new("TextButton")
 
TextButton79.Size = UDim2.new(0, 90, 0, 26)
 
TextButton79.Position = UDim2.new(1, -96, 0.5, -13)
 
TextButton79.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton79.Text = "ACTIVATE"
 
TextButton79.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton79.TextSize = 11
 
TextButton79.Font = Enum.Font.SourceSansBold
 
TextButton79.Parent = Frame173
 
local UICorner248 = Instance.new("UICorner")
 
UICorner248.CornerRadius = UDim.new(0, 6)
 
UICorner248.Parent = TextButton79
 
local UIStroke216 = Instance.new("UIStroke")
 
UIStroke216.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke216.Thickness = 1
 
UIStroke216.Parent = TextButton79
 
TextButton79.MouseButton1Click:Connect(function()
	 
	Lighting:GetChildren()
	 
	ColorCorrectionEffect3:Destroy()
	 
	ScrollingFrame4:GetChildren()
	 
	local TextButton188 = Frame169:FindFirstChildOfClass("TextButton")
	 
	local UIStroke477 = Frame169:FindFirstChildOfClass("UIStroke")
	 
	TextButton188.Text = "ACTIVATE"
	 
	TextButton188.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton188.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke477.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton189 = Frame170:FindFirstChildOfClass("TextButton")
	 
	local UIStroke478 = Frame170:FindFirstChildOfClass("UIStroke")
	 
	TextButton189.Text = "ACTIVATE"
	 
	TextButton189.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton189.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke478.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton190 = Frame171:FindFirstChildOfClass("TextButton")
	 
	local UIStroke479 = Frame171:FindFirstChildOfClass("UIStroke")
	 
	TextButton190.Text = "ACTIVATE"
	 
	TextButton190.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton190.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke479.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton191 = Frame172:FindFirstChildOfClass("TextButton")
	 
	local UIStroke480 = Frame172:FindFirstChildOfClass("UIStroke")
	 
	TextButton191.Text = "ACTIVATE"
	 
	TextButton191.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton191.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke480.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton192 = Frame173:FindFirstChildOfClass("TextButton")
	 
	local UIStroke481 = Frame173:FindFirstChildOfClass("UIStroke")
	 
	TextButton192.Text = "ACTIVATE"
	 
	TextButton192.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton192.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke481.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton193 = Frame174:FindFirstChildOfClass("TextButton")
	 
	local UIStroke482 = Frame174:FindFirstChildOfClass("UIStroke")
	 
	TextButton193.Text = "ACTIVATE"
	 
	TextButton193.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton193.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke482.Color = Color3.fromRGB(120, 0, 0)
	 
	local BlurEffect = Instance.new("BlurEffect")
	 
	BlurEffect.Name = "SourcesHub_Shader"
	 
	BlurEffect.Size = 4
	 
	BlurEffect.Parent = Lighting
	 
	TextButton79.Text = "ACTIVE"
	 
	TextButton79.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton79.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke216.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame326 = Instance.new("Frame")
	 
	Frame326.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame326.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame326.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame326.BackgroundTransparency = 0.1
	 
	Frame326.BorderSizePixel = 0
	 
	Frame326.Parent = ScreenGui3
	 
	local UICorner485 = Instance.new("UICorner")
	 
	UICorner485.CornerRadius = UDim.new(0, 8)
	 
	UICorner485.Parent = Frame326
	 
	local UIStroke483 = Instance.new("UIStroke")
	 
	UIStroke483.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke483.Thickness = 1.2
	 
	UIStroke483.Parent = Frame326
	 
	local TextLabel300 = Instance.new("TextLabel")
	 
	TextLabel300.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel300.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel300.BackgroundTransparency = 1
	 
	TextLabel300.Text = "Shader Enabled: SOFT BLUR"
	 
	TextLabel300.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel300.TextSize = 13
	 
	TextLabel300.Font = Enum.Font.SourceSansBold
	 
	TextLabel300.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel300.Parent = Frame326
	 
	local tween105 = TweenService:Create(Frame326, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween105:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame174 = Instance.new("Frame")
 
Frame174.Name = "SUN GLOW"
 
Frame174.LayoutOrder = 6
 
Frame174.Size = UDim2.new(1, -6, 0, 38)
 
Frame174.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame174.BackgroundTransparency = 0.2
 
Frame174.Parent = ScrollingFrame4
 
local UICorner249 = Instance.new("UICorner")
 
UICorner249.CornerRadius = UDim.new(0, 6)
 
UICorner249.Parent = Frame174
 
local UIStroke217 = Instance.new("UIStroke")
 
UIStroke217.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke217.Thickness = 1
 
UIStroke217.Parent = Frame174
 
local TextLabel146 = Instance.new("TextLabel")
 
TextLabel146.Size = UDim2.new(0.6, 0, 1, 0)
 
TextLabel146.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel146.BackgroundTransparency = 1
 
TextLabel146.Text = "SUN GLOW"
 
TextLabel146.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel146.TextSize = 12
 
TextLabel146.Font = Enum.Font.SourceSansBold
 
TextLabel146.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel146.Parent = Frame174
 
local TextButton80 = Instance.new("TextButton")
 
TextButton80.Size = UDim2.new(0, 90, 0, 26)
 
TextButton80.Position = UDim2.new(1, -96, 0.5, -13)
 
TextButton80.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton80.Text = "ACTIVATE"
 
TextButton80.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton80.TextSize = 11
 
TextButton80.Font = Enum.Font.SourceSansBold
 
TextButton80.Parent = Frame174
 
local UICorner250 = Instance.new("UICorner")
 
UICorner250.CornerRadius = UDim.new(0, 6)
 
UICorner250.Parent = TextButton80
 
local UIStroke218 = Instance.new("UIStroke")
 
UIStroke218.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke218.Thickness = 1
 
UIStroke218.Parent = TextButton80
 
TextButton80.MouseButton1Click:Connect(function()
	 
	Lighting:GetChildren()
	 
	BlurEffect:Destroy()
	 
	ScrollingFrame4:GetChildren()
	 
	local TextButton194 = Frame169:FindFirstChildOfClass("TextButton")
	 
	local UIStroke484 = Frame169:FindFirstChildOfClass("UIStroke")
	 
	TextButton194.Text = "ACTIVATE"
	 
	TextButton194.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton194.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke484.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton195 = Frame170:FindFirstChildOfClass("TextButton")
	 
	local UIStroke485 = Frame170:FindFirstChildOfClass("UIStroke")
	 
	TextButton195.Text = "ACTIVATE"
	 
	TextButton195.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton195.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke485.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton196 = Frame171:FindFirstChildOfClass("TextButton")
	 
	local UIStroke486 = Frame171:FindFirstChildOfClass("UIStroke")
	 
	TextButton196.Text = "ACTIVATE"
	 
	TextButton196.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton196.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke486.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton197 = Frame172:FindFirstChildOfClass("TextButton")
	 
	local UIStroke487 = Frame172:FindFirstChildOfClass("UIStroke")
	 
	TextButton197.Text = "ACTIVATE"
	 
	TextButton197.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton197.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke487.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton198 = Frame173:FindFirstChildOfClass("TextButton")
	 
	local UIStroke488 = Frame173:FindFirstChildOfClass("UIStroke")
	 
	TextButton198.Text = "ACTIVATE"
	 
	TextButton198.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton198.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke488.Color = Color3.fromRGB(120, 0, 0)
	 
	local TextButton199 = Frame174:FindFirstChildOfClass("TextButton")
	 
	local UIStroke489 = Frame174:FindFirstChildOfClass("UIStroke")
	 
	TextButton199.Text = "ACTIVATE"
	 
	TextButton199.TextColor3 = Color3.fromRGB(255, 50, 50)
	 
	TextButton199.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
	 
	UIStroke489.Color = Color3.fromRGB(120, 0, 0)
	 
	local SunRaysEffect = Instance.new("SunRaysEffect")
	 
	SunRaysEffect.Name = "SourcesHub_Shader"
	 
	SunRaysEffect.Intensity = 0.3
	 
	SunRaysEffect.Spread = 0.8
	 
	SunRaysEffect.Parent = Lighting
	 
	TextButton80.Text = "ACTIVE"
	 
	TextButton80.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton80.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke218.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame327 = Instance.new("Frame")
	 
	Frame327.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame327.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame327.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame327.BackgroundTransparency = 0.1
	 
	Frame327.BorderSizePixel = 0
	 
	Frame327.Parent = ScreenGui3
	 
	local UICorner486 = Instance.new("UICorner")
	 
	UICorner486.CornerRadius = UDim.new(0, 8)
	 
	UICorner486.Parent = Frame327
	 
	local UIStroke490 = Instance.new("UIStroke")
	 
	UIStroke490.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke490.Thickness = 1.2
	 
	UIStroke490.Parent = Frame327
	 
	local TextLabel301 = Instance.new("TextLabel")
	 
	TextLabel301.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel301.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel301.BackgroundTransparency = 1
	 
	TextLabel301.Text = "Shader Enabled: SUN GLOW"
	 
	TextLabel301.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel301.TextSize = 13
	 
	TextLabel301.Font = Enum.Font.SourceSansBold
	 
	TextLabel301.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel301.Parent = Frame327
	 
	local tween106 = TweenService:Create(Frame327, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween106:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
Players.LocalPlayer.Character:FindFirstChild("Animate")
 
Players.LocalPlayer.CharacterAdded:Connect(function(character3)
	 
	task.wait(0.5)
	 
	character3:FindFirstChild("Animate")
end)
 
local Frame175 = Instance.new("Frame")
 
Frame175.Name = "NINJA"
 
Frame175.LayoutOrder = 1
 
Frame175.Size = UDim2.new(1, -6, 0, 38)
 
Frame175.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame175.BackgroundTransparency = 0.2
 
Frame175.Parent = ScrollingFrame5
 
local UICorner251 = Instance.new("UICorner")
 
UICorner251.CornerRadius = UDim.new(0, 6)
 
UICorner251.Parent = Frame175
 
local UIStroke219 = Instance.new("UIStroke")
 
UIStroke219.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke219.Thickness = 1
 
UIStroke219.Parent = Frame175
 
local TextLabel147 = Instance.new("TextLabel")
 
TextLabel147.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel147.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel147.BackgroundTransparency = 1
 
TextLabel147.Text = "NINJA"
 
TextLabel147.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel147.TextSize = 12
 
TextLabel147.Font = Enum.Font.SourceSansBold
 
TextLabel147.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel147.Parent = Frame175
 
local TextButton81 = Instance.new("TextButton")
 
TextButton81.Size = UDim2.new(0, 85, 0, 26)
 
TextButton81.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton81.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton81.Text = "APPLY"
 
TextButton81.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton81.TextSize = 11
 
TextButton81.Font = Enum.Font.SourceSansBold
 
TextButton81.Parent = Frame175
 
local UICorner252 = Instance.new("UICorner")
 
UICorner252.CornerRadius = UDim.new(0, 6)
 
UICorner252.Parent = TextButton81
 
local UIStroke220 = Instance.new("UIStroke")
 
UIStroke220.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke220.Thickness = 1
 
UIStroke220.Parent = TextButton81
 
TextButton81.MouseButton1Click:Connect(function()
	 
	local Animate = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall = Animate:FindFirstChild("fall")
	 
	local FallAnim = fall:FindFirstChild("FallAnim")
	 
	FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
	 
	local walk = Animate:FindFirstChild("walk")
	 
	local WalkAnim = walk:FindFirstChild("WalkAnim")
	 
	WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
	 
	local run = Animate:FindFirstChild("run")
	 
	local RunAnim = run:FindFirstChild("RunAnim")
	 
	RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
	 
	local idle = Animate:FindFirstChild("idle")
	 
	local Animation2 = idle:FindFirstChild("Animation2")
	 
	Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
	 
	local climb = Animate:FindFirstChild("climb")
	 
	local ClimbAnim = climb:FindFirstChild("ClimbAnim")
	 
	ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
	 
	local jump = Animate:FindFirstChild("jump")
	 
	local JumpAnim = jump:FindFirstChild("JumpAnim")
	 
	JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
	 
	local idle2 = Animate:FindFirstChild("idle")
	 
	local Animation1 = idle2:FindFirstChild("Animation1")
	 
	Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton81.Text = "APPLIED"
	 
	TextButton81.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton81.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke220.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame328 = Instance.new("Frame")
	 
	Frame328.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame328.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame328.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame328.BackgroundTransparency = 0.1
	 
	Frame328.BorderSizePixel = 0
	 
	Frame328.Parent = ScreenGui3
	 
	local UICorner487 = Instance.new("UICorner")
	 
	UICorner487.CornerRadius = UDim.new(0, 8)
	 
	UICorner487.Parent = Frame328
	 
	local UIStroke491 = Instance.new("UIStroke")
	 
	UIStroke491.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke491.Thickness = 1.2
	 
	UIStroke491.Parent = Frame328
	 
	local TextLabel302 = Instance.new("TextLabel")
	 
	TextLabel302.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel302.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel302.BackgroundTransparency = 1
	 
	TextLabel302.Text = "Animation Applied: NINJA"
	 
	TextLabel302.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel302.TextSize = 13
	 
	TextLabel302.Font = Enum.Font.SourceSansBold
	 
	TextLabel302.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel302.Parent = Frame328
	 
	local tween107 = TweenService:Create(Frame328, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween107:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame176 = Instance.new("Frame")
 
Frame176.Name = "LEVITATION"
 
Frame176.LayoutOrder = 2
 
Frame176.Size = UDim2.new(1, -6, 0, 38)
 
Frame176.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame176.BackgroundTransparency = 0.2
 
Frame176.Parent = ScrollingFrame5
 
local UICorner253 = Instance.new("UICorner")
 
UICorner253.CornerRadius = UDim.new(0, 6)
 
UICorner253.Parent = Frame176
 
local UIStroke221 = Instance.new("UIStroke")
 
UIStroke221.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke221.Thickness = 1
 
UIStroke221.Parent = Frame176
 
local TextLabel148 = Instance.new("TextLabel")
 
TextLabel148.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel148.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel148.BackgroundTransparency = 1
 
TextLabel148.Text = "LEVITATION"
 
TextLabel148.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel148.TextSize = 12
 
TextLabel148.Font = Enum.Font.SourceSansBold
 
TextLabel148.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel148.Parent = Frame176
 
local TextButton82 = Instance.new("TextButton")
 
TextButton82.Size = UDim2.new(0, 85, 0, 26)
 
TextButton82.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton82.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton82.Text = "APPLY"
 
TextButton82.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton82.TextSize = 11
 
TextButton82.Font = Enum.Font.SourceSansBold
 
TextButton82.Parent = Frame176
 
local UICorner254 = Instance.new("UICorner")
 
UICorner254.CornerRadius = UDim.new(0, 6)
 
UICorner254.Parent = TextButton82
 
local UIStroke222 = Instance.new("UIStroke")
 
UIStroke222.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke222.Thickness = 1
 
UIStroke222.Parent = TextButton82
 
TextButton82.MouseButton1Click:Connect(function()
	 
	local Animate2 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall2 = Animate2:FindFirstChild("fall")
	 
	local FallAnim2 = fall2:FindFirstChild("FallAnim")
	 
	FallAnim2.AnimationId = "http://www.roblox.com/asset/?id=616005863"
	 
	local walk2 = Animate2:FindFirstChild("walk")
	 
	local WalkAnim2 = walk2:FindFirstChild("WalkAnim")
	 
	WalkAnim2.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	 
	local run2 = Animate2:FindFirstChild("run")
	 
	local RunAnim2 = run2:FindFirstChild("RunAnim")
	 
	RunAnim2.AnimationId = "http://www.roblox.com/asset/?id=616010382"
	 
	local idle3 = Animate2:FindFirstChild("idle")
	 
	local Animation22 = idle3:FindFirstChild("Animation2")
	 
	Animation22.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	 
	local climb2 = Animate2:FindFirstChild("climb")
	 
	local ClimbAnim2 = climb2:FindFirstChild("ClimbAnim")
	 
	ClimbAnim2.AnimationId = "http://www.roblox.com/asset/?id=616003713"
	 
	local jump2 = Animate2:FindFirstChild("jump")
	 
	local JumpAnim2 = jump2:FindFirstChild("JumpAnim")
	 
	JumpAnim2.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	 
	local idle4 = Animate2:FindFirstChild("idle")
	 
	local Animation12 = idle4:FindFirstChild("Animation1")
	 
	Animation12.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton82.Text = "APPLIED"
	 
	TextButton82.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton82.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke222.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame329 = Instance.new("Frame")
	 
	Frame329.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame329.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame329.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame329.BackgroundTransparency = 0.1
	 
	Frame329.BorderSizePixel = 0
	 
	Frame329.Parent = ScreenGui3
	 
	local UICorner488 = Instance.new("UICorner")
	 
	UICorner488.CornerRadius = UDim.new(0, 8)
	 
	UICorner488.Parent = Frame329
	 
	local UIStroke492 = Instance.new("UIStroke")
	 
	UIStroke492.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke492.Thickness = 1.2
	 
	UIStroke492.Parent = Frame329
	 
	local TextLabel303 = Instance.new("TextLabel")
	 
	TextLabel303.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel303.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel303.BackgroundTransparency = 1
	 
	TextLabel303.Text = "Animation Applied: LEVITATION"
	 
	TextLabel303.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel303.TextSize = 13
	 
	TextLabel303.Font = Enum.Font.SourceSansBold
	 
	TextLabel303.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel303.Parent = Frame329
	 
	local tween108 = TweenService:Create(Frame329, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween108:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame177 = Instance.new("Frame")
 
Frame177.Name = "WEREWOLF"
 
Frame177.LayoutOrder = 3
 
Frame177.Size = UDim2.new(1, -6, 0, 38)
 
Frame177.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame177.BackgroundTransparency = 0.2
 
Frame177.Parent = ScrollingFrame5
 
local UICorner255 = Instance.new("UICorner")
 
UICorner255.CornerRadius = UDim.new(0, 6)
 
UICorner255.Parent = Frame177
 
local UIStroke223 = Instance.new("UIStroke")
 
UIStroke223.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke223.Thickness = 1
 
UIStroke223.Parent = Frame177
 
local TextLabel149 = Instance.new("TextLabel")
 
TextLabel149.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel149.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel149.BackgroundTransparency = 1
 
TextLabel149.Text = "WEREWOLF"
 
TextLabel149.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel149.TextSize = 12
 
TextLabel149.Font = Enum.Font.SourceSansBold
 
TextLabel149.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel149.Parent = Frame177
 
local TextButton83 = Instance.new("TextButton")
 
TextButton83.Size = UDim2.new(0, 85, 0, 26)
 
TextButton83.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton83.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton83.Text = "APPLY"
 
TextButton83.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton83.TextSize = 11
 
TextButton83.Font = Enum.Font.SourceSansBold
 
TextButton83.Parent = Frame177
 
local UICorner256 = Instance.new("UICorner")
 
UICorner256.CornerRadius = UDim.new(0, 6)
 
UICorner256.Parent = TextButton83
 
local UIStroke224 = Instance.new("UIStroke")
 
UIStroke224.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke224.Thickness = 1
 
UIStroke224.Parent = TextButton83
 
TextButton83.MouseButton1Click:Connect(function()
	 
	local Animate3 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall3 = Animate3:FindFirstChild("fall")
	 
	local FallAnim3 = fall3:FindFirstChild("FallAnim")
	 
	FallAnim3.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
	 
	local walk3 = Animate3:FindFirstChild("walk")
	 
	local WalkAnim3 = walk3:FindFirstChild("WalkAnim")
	 
	WalkAnim3.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	 
	local run3 = Animate3:FindFirstChild("run")
	 
	local RunAnim3 = run3:FindFirstChild("RunAnim")
	 
	RunAnim3.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
	 
	local idle5 = Animate3:FindFirstChild("idle")
	 
	local Animation23 = idle5:FindFirstChild("Animation2")
	 
	Animation23.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
	 
	local climb3 = Animate3:FindFirstChild("climb")
	 
	local ClimbAnim3 = climb3:FindFirstChild("ClimbAnim")
	 
	ClimbAnim3.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
	 
	local jump3 = Animate3:FindFirstChild("jump")
	 
	local JumpAnim3 = jump3:FindFirstChild("JumpAnim")
	 
	JumpAnim3.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	 
	local idle6 = Animate3:FindFirstChild("idle")
	 
	local Animation13 = idle6:FindFirstChild("Animation1")
	 
	Animation13.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton83.Text = "APPLIED"
	 
	TextButton83.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton83.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke224.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame330 = Instance.new("Frame")
	 
	Frame330.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame330.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame330.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame330.BackgroundTransparency = 0.1
	 
	Frame330.BorderSizePixel = 0
	 
	Frame330.Parent = ScreenGui3
	 
	local UICorner489 = Instance.new("UICorner")
	 
	UICorner489.CornerRadius = UDim.new(0, 8)
	 
	UICorner489.Parent = Frame330
	 
	local UIStroke493 = Instance.new("UIStroke")
	 
	UIStroke493.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke493.Thickness = 1.2
	 
	UIStroke493.Parent = Frame330
	 
	local TextLabel304 = Instance.new("TextLabel")
	 
	TextLabel304.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel304.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel304.BackgroundTransparency = 1
	 
	TextLabel304.Text = "Animation Applied: WEREWOLF"
	 
	TextLabel304.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel304.TextSize = 13
	 
	TextLabel304.Font = Enum.Font.SourceSansBold
	 
	TextLabel304.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel304.Parent = Frame330
	 
	local tween109 = TweenService:Create(Frame330, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween109:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame178 = Instance.new("Frame")
 
Frame178.Name = "STYLISH"
 
Frame178.LayoutOrder = 4
 
Frame178.Size = UDim2.new(1, -6, 0, 38)
 
Frame178.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame178.BackgroundTransparency = 0.2
 
Frame178.Parent = ScrollingFrame5
 
local UICorner257 = Instance.new("UICorner")
 
UICorner257.CornerRadius = UDim.new(0, 6)
 
UICorner257.Parent = Frame178
 
local UIStroke225 = Instance.new("UIStroke")
 
UIStroke225.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke225.Thickness = 1
 
UIStroke225.Parent = Frame178
 
local TextLabel150 = Instance.new("TextLabel")
 
TextLabel150.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel150.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel150.BackgroundTransparency = 1
 
TextLabel150.Text = "STYLISH"
 
TextLabel150.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel150.TextSize = 12
 
TextLabel150.Font = Enum.Font.SourceSansBold
 
TextLabel150.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel150.Parent = Frame178
 
local TextButton84 = Instance.new("TextButton")
 
TextButton84.Size = UDim2.new(0, 85, 0, 26)
 
TextButton84.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton84.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton84.Text = "APPLY"
 
TextButton84.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton84.TextSize = 11
 
TextButton84.Font = Enum.Font.SourceSansBold
 
TextButton84.Parent = Frame178
 
local UICorner258 = Instance.new("UICorner")
 
UICorner258.CornerRadius = UDim.new(0, 6)
 
UICorner258.Parent = TextButton84
 
local UIStroke226 = Instance.new("UIStroke")
 
UIStroke226.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke226.Thickness = 1
 
UIStroke226.Parent = TextButton84
 
TextButton84.MouseButton1Click:Connect(function()
	 
	local Animate4 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall4 = Animate4:FindFirstChild("fall")
	 
	local FallAnim4 = fall4:FindFirstChild("FallAnim")
	 
	FallAnim4.AnimationId = "http://www.roblox.com/asset/?id=616134815"
	 
	local walk4 = Animate4:FindFirstChild("walk")
	 
	local WalkAnim4 = walk4:FindFirstChild("WalkAnim")
	 
	WalkAnim4.AnimationId = "http://www.roblox.com/asset/?id=616146177"
	 
	local run4 = Animate4:FindFirstChild("run")
	 
	local RunAnim4 = run4:FindFirstChild("RunAnim")
	 
	RunAnim4.AnimationId = "http://www.roblox.com/asset/?id=616140816"
	 
	local idle7 = Animate4:FindFirstChild("idle")
	 
	local Animation24 = idle7:FindFirstChild("Animation2")
	 
	Animation24.AnimationId = "http://www.roblox.com/asset/?id=616138447"
	 
	local climb4 = Animate4:FindFirstChild("climb")
	 
	local ClimbAnim4 = climb4:FindFirstChild("ClimbAnim")
	 
	ClimbAnim4.AnimationId = "http://www.roblox.com/asset/?id=616133594"
	 
	local jump4 = Animate4:FindFirstChild("jump")
	 
	local JumpAnim4 = jump4:FindFirstChild("JumpAnim")
	 
	JumpAnim4.AnimationId = "http://www.roblox.com/asset/?id=616139451"
	 
	local idle8 = Animate4:FindFirstChild("idle")
	 
	local Animation14 = idle8:FindFirstChild("Animation1")
	 
	Animation14.AnimationId = "http://www.roblox.com/asset/?id=616136790"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton84.Text = "APPLIED"
	 
	TextButton84.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton84.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke226.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame331 = Instance.new("Frame")
	 
	Frame331.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame331.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame331.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame331.BackgroundTransparency = 0.1
	 
	Frame331.BorderSizePixel = 0
	 
	Frame331.Parent = ScreenGui3
	 
	local UICorner490 = Instance.new("UICorner")
	 
	UICorner490.CornerRadius = UDim.new(0, 8)
	 
	UICorner490.Parent = Frame331
	 
	local UIStroke494 = Instance.new("UIStroke")
	 
	UIStroke494.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke494.Thickness = 1.2
	 
	UIStroke494.Parent = Frame331
	 
	local TextLabel305 = Instance.new("TextLabel")
	 
	TextLabel305.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel305.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel305.BackgroundTransparency = 1
	 
	TextLabel305.Text = "Animation Applied: STYLISH"
	 
	TextLabel305.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel305.TextSize = 13
	 
	TextLabel305.Font = Enum.Font.SourceSansBold
	 
	TextLabel305.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel305.Parent = Frame331
	 
	local tween110 = TweenService:Create(Frame331, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween110:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame179 = Instance.new("Frame")
 
Frame179.Name = "ROBOT"
 
Frame179.LayoutOrder = 5
 
Frame179.Size = UDim2.new(1, -6, 0, 38)
 
Frame179.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame179.BackgroundTransparency = 0.2
 
Frame179.Parent = ScrollingFrame5
 
local UICorner259 = Instance.new("UICorner")
 
UICorner259.CornerRadius = UDim.new(0, 6)
 
UICorner259.Parent = Frame179
 
local UIStroke227 = Instance.new("UIStroke")
 
UIStroke227.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke227.Thickness = 1
 
UIStroke227.Parent = Frame179
 
local TextLabel151 = Instance.new("TextLabel")
 
TextLabel151.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel151.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel151.BackgroundTransparency = 1
 
TextLabel151.Text = "ROBOT"
 
TextLabel151.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel151.TextSize = 12
 
TextLabel151.Font = Enum.Font.SourceSansBold
 
TextLabel151.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel151.Parent = Frame179
 
local TextButton85 = Instance.new("TextButton")
 
TextButton85.Size = UDim2.new(0, 85, 0, 26)
 
TextButton85.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton85.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton85.Text = "APPLY"
 
TextButton85.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton85.TextSize = 11
 
TextButton85.Font = Enum.Font.SourceSansBold
 
TextButton85.Parent = Frame179
 
local UICorner260 = Instance.new("UICorner")
 
UICorner260.CornerRadius = UDim.new(0, 6)
 
UICorner260.Parent = TextButton85
 
local UIStroke228 = Instance.new("UIStroke")
 
UIStroke228.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke228.Thickness = 1
 
UIStroke228.Parent = TextButton85
 
TextButton85.MouseButton1Click:Connect(function()
	 
	local Animate5 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall5 = Animate5:FindFirstChild("fall")
	 
	local FallAnim5 = fall5:FindFirstChild("FallAnim")
	 
	FallAnim5.AnimationId = "http://www.roblox.com/asset/?id=616087089"
	 
	local walk5 = Animate5:FindFirstChild("walk")
	 
	local WalkAnim5 = walk5:FindFirstChild("WalkAnim")
	 
	WalkAnim5.AnimationId = "http://www.roblox.com/asset/?id=616095330"
	 
	local run5 = Animate5:FindFirstChild("run")
	 
	local RunAnim5 = run5:FindFirstChild("RunAnim")
	 
	RunAnim5.AnimationId = "http://www.roblox.com/asset/?id=616091570"
	 
	local idle9 = Animate5:FindFirstChild("idle")
	 
	local Animation25 = idle9:FindFirstChild("Animation2")
	 
	Animation25.AnimationId = "http://www.roblox.com/asset/?id=616089559"
	 
	local climb5 = Animate5:FindFirstChild("climb")
	 
	local ClimbAnim5 = climb5:FindFirstChild("ClimbAnim")
	 
	ClimbAnim5.AnimationId = "http://www.roblox.com/asset/?id=616086039"
	 
	local jump5 = Animate5:FindFirstChild("jump")
	 
	local JumpAnim5 = jump5:FindFirstChild("JumpAnim")
	 
	JumpAnim5.AnimationId = "http://www.roblox.com/asset/?id=616090535"
	 
	local idle10 = Animate5:FindFirstChild("idle")
	 
	local Animation15 = idle10:FindFirstChild("Animation1")
	 
	Animation15.AnimationId = "http://www.roblox.com/asset/?id=616088211"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton85.Text = "APPLIED"
	 
	TextButton85.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton85.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke228.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame332 = Instance.new("Frame")
	 
	Frame332.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame332.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame332.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame332.BackgroundTransparency = 0.1
	 
	Frame332.BorderSizePixel = 0
	 
	Frame332.Parent = ScreenGui3
	 
	local UICorner491 = Instance.new("UICorner")
	 
	UICorner491.CornerRadius = UDim.new(0, 8)
	 
	UICorner491.Parent = Frame332
	 
	local UIStroke495 = Instance.new("UIStroke")
	 
	UIStroke495.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke495.Thickness = 1.2
	 
	UIStroke495.Parent = Frame332
	 
	local TextLabel306 = Instance.new("TextLabel")
	 
	TextLabel306.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel306.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel306.BackgroundTransparency = 1
	 
	TextLabel306.Text = "Animation Applied: ROBOT"
	 
	TextLabel306.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel306.TextSize = 13
	 
	TextLabel306.Font = Enum.Font.SourceSansBold
	 
	TextLabel306.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel306.Parent = Frame332
	 
	local tween111 = TweenService:Create(Frame332, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween111:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame180 = Instance.new("Frame")
 
Frame180.Name = "BUBBLY"
 
Frame180.LayoutOrder = 6
 
Frame180.Size = UDim2.new(1, -6, 0, 38)
 
Frame180.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame180.BackgroundTransparency = 0.2
 
Frame180.Parent = ScrollingFrame5
 
local UICorner261 = Instance.new("UICorner")
 
UICorner261.CornerRadius = UDim.new(0, 6)
 
UICorner261.Parent = Frame180
 
local UIStroke229 = Instance.new("UIStroke")
 
UIStroke229.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke229.Thickness = 1
 
UIStroke229.Parent = Frame180
 
local TextLabel152 = Instance.new("TextLabel")
 
TextLabel152.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel152.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel152.BackgroundTransparency = 1
 
TextLabel152.Text = "BUBBLY"
 
TextLabel152.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel152.TextSize = 12
 
TextLabel152.Font = Enum.Font.SourceSansBold
 
TextLabel152.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel152.Parent = Frame180
 
local TextButton86 = Instance.new("TextButton")
 
TextButton86.Size = UDim2.new(0, 85, 0, 26)
 
TextButton86.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton86.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton86.Text = "APPLY"
 
TextButton86.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton86.TextSize = 11
 
TextButton86.Font = Enum.Font.SourceSansBold
 
TextButton86.Parent = Frame180
 
local UICorner262 = Instance.new("UICorner")
 
UICorner262.CornerRadius = UDim.new(0, 6)
 
UICorner262.Parent = TextButton86
 
local UIStroke230 = Instance.new("UIStroke")
 
UIStroke230.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke230.Thickness = 1
 
UIStroke230.Parent = TextButton86
 
TextButton86.MouseButton1Click:Connect(function()
	 
	local Animate6 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall6 = Animate6:FindFirstChild("fall")
	 
	local FallAnim6 = fall6:FindFirstChild("FallAnim")
	 
	FallAnim6.AnimationId = "http://www.roblox.com/asset/?id=910001910"
	 
	local swim = Animate6:FindFirstChild("swim")
	 
	local Swim = swim:FindFirstChild("Swim")
	 
	Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
	 
	local walk6 = Animate6:FindFirstChild("walk")
	 
	local WalkAnim6 = walk6:FindFirstChild("WalkAnim")
	 
	WalkAnim6.AnimationId = "http://www.roblox.com/asset/?id=910034870"
	 
	local swimidle = Animate6:FindFirstChild("swimidle")
	 
	local SwimIdle = swimidle:FindFirstChild("SwimIdle")
	 
	SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
	 
	local idle11 = Animate6:FindFirstChild("idle")
	 
	local Animation26 = idle11:FindFirstChild("Animation2")
	 
	Animation26.AnimationId = "http://www.roblox.com/asset/?id=910009958"
	 
	local run6 = Animate6:FindFirstChild("run")
	 
	local RunAnim6 = run6:FindFirstChild("RunAnim")
	 
	RunAnim6.AnimationId = "http://www.roblox.com/asset/?id=910025107"
	 
	local jump6 = Animate6:FindFirstChild("jump")
	 
	local JumpAnim6 = jump6:FindFirstChild("JumpAnim")
	 
	JumpAnim6.AnimationId = "http://www.roblox.com/asset/?id=910016857"
	 
	local idle12 = Animate6:FindFirstChild("idle")
	 
	local Animation16 = idle12:FindFirstChild("Animation1")
	 
	Animation16.AnimationId = "http://www.roblox.com/asset/?id=910004836"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton86.Text = "APPLIED"
	 
	TextButton86.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton86.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke230.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame333 = Instance.new("Frame")
	 
	Frame333.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame333.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame333.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame333.BackgroundTransparency = 0.1
	 
	Frame333.BorderSizePixel = 0
	 
	Frame333.Parent = ScreenGui3
	 
	local UICorner492 = Instance.new("UICorner")
	 
	UICorner492.CornerRadius = UDim.new(0, 8)
	 
	UICorner492.Parent = Frame333
	 
	local UIStroke496 = Instance.new("UIStroke")
	 
	UIStroke496.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke496.Thickness = 1.2
	 
	UIStroke496.Parent = Frame333
	 
	local TextLabel307 = Instance.new("TextLabel")
	 
	TextLabel307.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel307.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel307.BackgroundTransparency = 1
	 
	TextLabel307.Text = "Animation Applied: BUBBLY"
	 
	TextLabel307.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel307.TextSize = 13
	 
	TextLabel307.Font = Enum.Font.SourceSansBold
	 
	TextLabel307.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel307.Parent = Frame333
	 
	local tween112 = TweenService:Create(Frame333, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween112:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame181 = Instance.new("Frame")
 
Frame181.Name = "CARTOONY"
 
Frame181.LayoutOrder = 7
 
Frame181.Size = UDim2.new(1, -6, 0, 38)
 
Frame181.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame181.BackgroundTransparency = 0.2
 
Frame181.Parent = ScrollingFrame5
 
local UICorner263 = Instance.new("UICorner")
 
UICorner263.CornerRadius = UDim.new(0, 6)
 
UICorner263.Parent = Frame181
 
local UIStroke231 = Instance.new("UIStroke")
 
UIStroke231.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke231.Thickness = 1
 
UIStroke231.Parent = Frame181
 
local TextLabel153 = Instance.new("TextLabel")
 
TextLabel153.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel153.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel153.BackgroundTransparency = 1
 
TextLabel153.Text = "CARTOONY"
 
TextLabel153.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel153.TextSize = 12
 
TextLabel153.Font = Enum.Font.SourceSansBold
 
TextLabel153.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel153.Parent = Frame181
 
local TextButton87 = Instance.new("TextButton")
 
TextButton87.Size = UDim2.new(0, 85, 0, 26)
 
TextButton87.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton87.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton87.Text = "APPLY"
 
TextButton87.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton87.TextSize = 11
 
TextButton87.Font = Enum.Font.SourceSansBold
 
TextButton87.Parent = Frame181
 
local UICorner264 = Instance.new("UICorner")
 
UICorner264.CornerRadius = UDim.new(0, 6)
 
UICorner264.Parent = TextButton87
 
local UIStroke232 = Instance.new("UIStroke")
 
UIStroke232.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke232.Thickness = 1
 
UIStroke232.Parent = TextButton87
 
TextButton87.MouseButton1Click:Connect(function()
	 
	local Animate7 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall7 = Animate7:FindFirstChild("fall")
	 
	local FallAnim7 = fall7:FindFirstChild("FallAnim")
	 
	FallAnim7.AnimationId = "http://www.roblox.com/asset/?id=742637151"
	 
	local walk7 = Animate7:FindFirstChild("walk")
	 
	local WalkAnim7 = walk7:FindFirstChild("WalkAnim")
	 
	WalkAnim7.AnimationId = "http://www.roblox.com/asset/?id=742640026"
	 
	local run7 = Animate7:FindFirstChild("run")
	 
	local RunAnim7 = run7:FindFirstChild("RunAnim")
	 
	RunAnim7.AnimationId = "http://www.roblox.com/asset/?id=742638842"
	 
	local idle13 = Animate7:FindFirstChild("idle")
	 
	local Animation27 = idle13:FindFirstChild("Animation2")
	 
	Animation27.AnimationId = "http://www.roblox.com/asset/?id=742638445"
	 
	local climb6 = Animate7:FindFirstChild("climb")
	 
	local ClimbAnim6 = climb6:FindFirstChild("ClimbAnim")
	 
	ClimbAnim6.AnimationId = "http://www.roblox.com/asset/?id=742636889"
	 
	local jump7 = Animate7:FindFirstChild("jump")
	 
	local JumpAnim7 = jump7:FindFirstChild("JumpAnim")
	 
	JumpAnim7.AnimationId = "http://www.roblox.com/asset/?id=742637942"
	 
	local idle14 = Animate7:FindFirstChild("idle")
	 
	local Animation17 = idle14:FindFirstChild("Animation1")
	 
	Animation17.AnimationId = "http://www.roblox.com/asset/?id=742637544"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton87.Text = "APPLIED"
	 
	TextButton87.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton87.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke232.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame334 = Instance.new("Frame")
	 
	Frame334.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame334.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame334.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame334.BackgroundTransparency = 0.1
	 
	Frame334.BorderSizePixel = 0
	 
	Frame334.Parent = ScreenGui3
	 
	local UICorner493 = Instance.new("UICorner")
	 
	UICorner493.CornerRadius = UDim.new(0, 8)
	 
	UICorner493.Parent = Frame334
	 
	local UIStroke497 = Instance.new("UIStroke")
	 
	UIStroke497.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke497.Thickness = 1.2
	 
	UIStroke497.Parent = Frame334
	 
	local TextLabel308 = Instance.new("TextLabel")
	 
	TextLabel308.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel308.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel308.BackgroundTransparency = 1
	 
	TextLabel308.Text = "Animation Applied: CARTOONY"
	 
	TextLabel308.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel308.TextSize = 13
	 
	TextLabel308.Font = Enum.Font.SourceSansBold
	 
	TextLabel308.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel308.Parent = Frame334
	 
	local tween113 = TweenService:Create(Frame334, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween113:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame182 = Instance.new("Frame")
 
Frame182.Name = "SUPERHERO"
 
Frame182.LayoutOrder = 8
 
Frame182.Size = UDim2.new(1, -6, 0, 38)
 
Frame182.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame182.BackgroundTransparency = 0.2
 
Frame182.Parent = ScrollingFrame5
 
local UICorner265 = Instance.new("UICorner")
 
UICorner265.CornerRadius = UDim.new(0, 6)
 
UICorner265.Parent = Frame182
 
local UIStroke233 = Instance.new("UIStroke")
 
UIStroke233.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke233.Thickness = 1
 
UIStroke233.Parent = Frame182
 
local TextLabel154 = Instance.new("TextLabel")
 
TextLabel154.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel154.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel154.BackgroundTransparency = 1
 
TextLabel154.Text = "SUPERHERO"
 
TextLabel154.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel154.TextSize = 12
 
TextLabel154.Font = Enum.Font.SourceSansBold
 
TextLabel154.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel154.Parent = Frame182
 
local TextButton88 = Instance.new("TextButton")
 
TextButton88.Size = UDim2.new(0, 85, 0, 26)
 
TextButton88.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton88.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton88.Text = "APPLY"
 
TextButton88.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton88.TextSize = 11
 
TextButton88.Font = Enum.Font.SourceSansBold
 
TextButton88.Parent = Frame182
 
local UICorner266 = Instance.new("UICorner")
 
UICorner266.CornerRadius = UDim.new(0, 6)
 
UICorner266.Parent = TextButton88
 
local UIStroke234 = Instance.new("UIStroke")
 
UIStroke234.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke234.Thickness = 1
 
UIStroke234.Parent = TextButton88
 
TextButton88.MouseButton1Click:Connect(function()
	 
	local Animate8 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall8 = Animate8:FindFirstChild("fall")
	 
	local FallAnim8 = fall8:FindFirstChild("FallAnim")
	 
	FallAnim8.AnimationId = "http://www.roblox.com/asset/?id=616108001"
	 
	local walk8 = Animate8:FindFirstChild("walk")
	 
	local WalkAnim8 = walk8:FindFirstChild("WalkAnim")
	 
	WalkAnim8.AnimationId = "http://www.roblox.com/asset/?id=616122287"
	 
	local run8 = Animate8:FindFirstChild("run")
	 
	local RunAnim8 = run8:FindFirstChild("RunAnim")
	 
	RunAnim8.AnimationId = "http://www.roblox.com/asset/?id=616117076"
	 
	local idle15 = Animate8:FindFirstChild("idle")
	 
	local Animation28 = idle15:FindFirstChild("Animation2")
	 
	Animation28.AnimationId = "http://www.roblox.com/asset/?id=616113536"
	 
	local climb7 = Animate8:FindFirstChild("climb")
	 
	local ClimbAnim7 = climb7:FindFirstChild("ClimbAnim")
	 
	ClimbAnim7.AnimationId = "http://www.roblox.com/asset/?id=616104706"
	 
	local jump8 = Animate8:FindFirstChild("jump")
	 
	local JumpAnim8 = jump8:FindFirstChild("JumpAnim")
	 
	JumpAnim8.AnimationId = "http://www.roblox.com/asset/?id=616115533"
	 
	local idle16 = Animate8:FindFirstChild("idle")
	 
	local Animation18 = idle16:FindFirstChild("Animation1")
	 
	Animation18.AnimationId = "http://www.roblox.com/asset/?id=616111295"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton88.Text = "APPLIED"
	 
	TextButton88.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton88.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke234.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame335 = Instance.new("Frame")
	 
	Frame335.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame335.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame335.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame335.BackgroundTransparency = 0.1
	 
	Frame335.BorderSizePixel = 0
	 
	Frame335.Parent = ScreenGui3
	 
	local UICorner494 = Instance.new("UICorner")
	 
	UICorner494.CornerRadius = UDim.new(0, 8)
	 
	UICorner494.Parent = Frame335
	 
	local UIStroke498 = Instance.new("UIStroke")
	 
	UIStroke498.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke498.Thickness = 1.2
	 
	UIStroke498.Parent = Frame335
	 
	local TextLabel309 = Instance.new("TextLabel")
	 
	TextLabel309.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel309.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel309.BackgroundTransparency = 1
	 
	TextLabel309.Text = "Animation Applied: SUPERHERO"
	 
	TextLabel309.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel309.TextSize = 13
	 
	TextLabel309.Font = Enum.Font.SourceSansBold
	 
	TextLabel309.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel309.Parent = Frame335
	 
	local tween114 = TweenService:Create(Frame335, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween114:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame183 = Instance.new("Frame")
 
Frame183.Name = "KNIGHT"
 
Frame183.LayoutOrder = 9
 
Frame183.Size = UDim2.new(1, -6, 0, 38)
 
Frame183.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame183.BackgroundTransparency = 0.2
 
Frame183.Parent = ScrollingFrame5
 
local UICorner267 = Instance.new("UICorner")
 
UICorner267.CornerRadius = UDim.new(0, 6)
 
UICorner267.Parent = Frame183
 
local UIStroke235 = Instance.new("UIStroke")
 
UIStroke235.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke235.Thickness = 1
 
UIStroke235.Parent = Frame183
 
local TextLabel155 = Instance.new("TextLabel")
 
TextLabel155.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel155.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel155.BackgroundTransparency = 1
 
TextLabel155.Text = "KNIGHT"
 
TextLabel155.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel155.TextSize = 12
 
TextLabel155.Font = Enum.Font.SourceSansBold
 
TextLabel155.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel155.Parent = Frame183
 
local TextButton89 = Instance.new("TextButton")
 
TextButton89.Size = UDim2.new(0, 85, 0, 26)
 
TextButton89.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton89.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton89.Text = "APPLY"
 
TextButton89.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton89.TextSize = 11
 
TextButton89.Font = Enum.Font.SourceSansBold
 
TextButton89.Parent = Frame183
 
local UICorner268 = Instance.new("UICorner")
 
UICorner268.CornerRadius = UDim.new(0, 6)
 
UICorner268.Parent = TextButton89
 
local UIStroke236 = Instance.new("UIStroke")
 
UIStroke236.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke236.Thickness = 1
 
UIStroke236.Parent = TextButton89
 
TextButton89.MouseButton1Click:Connect(function()
	 
	local Animate9 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall9 = Animate9:FindFirstChild("fall")
	 
	local FallAnim9 = fall9:FindFirstChild("FallAnim")
	 
	FallAnim9.AnimationId = "http://www.roblox.com/asset/?id=657600338"
	 
	local walk9 = Animate9:FindFirstChild("walk")
	 
	local WalkAnim9 = walk9:FindFirstChild("WalkAnim")
	 
	WalkAnim9.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	 
	local run9 = Animate9:FindFirstChild("run")
	 
	local RunAnim9 = run9:FindFirstChild("RunAnim")
	 
	RunAnim9.AnimationId = "http://www.roblox.com/asset/?id=657564596"
	 
	local idle17 = Animate9:FindFirstChild("idle")
	 
	local Animation29 = idle17:FindFirstChild("Animation2")
	 
	Animation29.AnimationId = "http://www.roblox.com/asset/?id=657568135"
	 
	local climb8 = Animate9:FindFirstChild("climb")
	 
	local ClimbAnim8 = climb8:FindFirstChild("ClimbAnim")
	 
	ClimbAnim8.AnimationId = "http://www.roblox.com/asset/?id=658360781"
	 
	local jump9 = Animate9:FindFirstChild("jump")
	 
	local JumpAnim9 = jump9:FindFirstChild("JumpAnim")
	 
	JumpAnim9.AnimationId = "http://www.roblox.com/asset/?id=658409194"
	 
	local idle18 = Animate9:FindFirstChild("idle")
	 
	local Animation19 = idle18:FindFirstChild("Animation1")
	 
	Animation19.AnimationId = "http://www.roblox.com/asset/?id=657595757"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton89.Text = "APPLIED"
	 
	TextButton89.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton89.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke236.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame336 = Instance.new("Frame")
	 
	Frame336.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame336.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame336.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame336.BackgroundTransparency = 0.1
	 
	Frame336.BorderSizePixel = 0
	 
	Frame336.Parent = ScreenGui3
	 
	local UICorner495 = Instance.new("UICorner")
	 
	UICorner495.CornerRadius = UDim.new(0, 8)
	 
	UICorner495.Parent = Frame336
	 
	local UIStroke499 = Instance.new("UIStroke")
	 
	UIStroke499.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke499.Thickness = 1.2
	 
	UIStroke499.Parent = Frame336
	 
	local TextLabel310 = Instance.new("TextLabel")
	 
	TextLabel310.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel310.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel310.BackgroundTransparency = 1
	 
	TextLabel310.Text = "Animation Applied: KNIGHT"
	 
	TextLabel310.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel310.TextSize = 13
	 
	TextLabel310.Font = Enum.Font.SourceSansBold
	 
	TextLabel310.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel310.Parent = Frame336
	 
	local tween115 = TweenService:Create(Frame336, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween115:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame184 = Instance.new("Frame")
 
Frame184.Name = "ZOMBIE"
 
Frame184.LayoutOrder = 10
 
Frame184.Size = UDim2.new(1, -6, 0, 38)
 
Frame184.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame184.BackgroundTransparency = 0.2
 
Frame184.Parent = ScrollingFrame5
 
local UICorner269 = Instance.new("UICorner")
 
UICorner269.CornerRadius = UDim.new(0, 6)
 
UICorner269.Parent = Frame184
 
local UIStroke237 = Instance.new("UIStroke")
 
UIStroke237.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke237.Thickness = 1
 
UIStroke237.Parent = Frame184
 
local TextLabel156 = Instance.new("TextLabel")
 
TextLabel156.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel156.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel156.BackgroundTransparency = 1
 
TextLabel156.Text = "ZOMBIE"
 
TextLabel156.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel156.TextSize = 12
 
TextLabel156.Font = Enum.Font.SourceSansBold
 
TextLabel156.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel156.Parent = Frame184
 
local TextButton90 = Instance.new("TextButton")
 
TextButton90.Size = UDim2.new(0, 85, 0, 26)
 
TextButton90.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton90.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton90.Text = "APPLY"
 
TextButton90.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton90.TextSize = 11
 
TextButton90.Font = Enum.Font.SourceSansBold
 
TextButton90.Parent = Frame184
 
local UICorner270 = Instance.new("UICorner")
 
UICorner270.CornerRadius = UDim.new(0, 6)
 
UICorner270.Parent = TextButton90
 
local UIStroke238 = Instance.new("UIStroke")
 
UIStroke238.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke238.Thickness = 1
 
UIStroke238.Parent = TextButton90
 
TextButton90.MouseButton1Click:Connect(function()
	 
	local Animate10 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall10 = Animate10:FindFirstChild("fall")
	 
	local FallAnim10 = fall10:FindFirstChild("FallAnim")
	 
	FallAnim10.AnimationId = "http://www.roblox.com/asset/?id=616157476"
	 
	local walk10 = Animate10:FindFirstChild("walk")
	 
	local WalkAnim10 = walk10:FindFirstChild("WalkAnim")
	 
	WalkAnim10.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	 
	local run10 = Animate10:FindFirstChild("run")
	 
	local RunAnim10 = run10:FindFirstChild("RunAnim")
	 
	RunAnim10.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	 
	local idle19 = Animate10:FindFirstChild("idle")
	 
	local Animation210 = idle19:FindFirstChild("Animation2")
	 
	Animation210.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	 
	local climb9 = Animate10:FindFirstChild("climb")
	 
	local ClimbAnim9 = climb9:FindFirstChild("ClimbAnim")
	 
	ClimbAnim9.AnimationId = "http://www.roblox.com/asset/?id=616156119"
	 
	local jump10 = Animate10:FindFirstChild("jump")
	 
	local JumpAnim10 = jump10:FindFirstChild("JumpAnim")
	 
	JumpAnim10.AnimationId = "http://www.roblox.com/asset/?id=616161997"
	 
	local idle20 = Animate10:FindFirstChild("idle")
	 
	local Animation110 = idle20:FindFirstChild("Animation1")
	 
	Animation110.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton90.Text = "APPLIED"
	 
	TextButton90.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton90.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke238.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame337 = Instance.new("Frame")
	 
	Frame337.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame337.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame337.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame337.BackgroundTransparency = 0.1
	 
	Frame337.BorderSizePixel = 0
	 
	Frame337.Parent = ScreenGui3
	 
	local UICorner496 = Instance.new("UICorner")
	 
	UICorner496.CornerRadius = UDim.new(0, 8)
	 
	UICorner496.Parent = Frame337
	 
	local UIStroke500 = Instance.new("UIStroke")
	 
	UIStroke500.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke500.Thickness = 1.2
	 
	UIStroke500.Parent = Frame337
	 
	local TextLabel311 = Instance.new("TextLabel")
	 
	TextLabel311.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel311.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel311.BackgroundTransparency = 1
	 
	TextLabel311.Text = "Animation Applied: ZOMBIE"
	 
	TextLabel311.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel311.TextSize = 13
	 
	TextLabel311.Font = Enum.Font.SourceSansBold
	 
	TextLabel311.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel311.Parent = Frame337
	 
	local tween116 = TweenService:Create(Frame337, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween116:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame185 = Instance.new("Frame")
 
Frame185.Name = "ELDER"
 
Frame185.LayoutOrder = 11
 
Frame185.Size = UDim2.new(1, -6, 0, 38)
 
Frame185.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame185.BackgroundTransparency = 0.2
 
Frame185.Parent = ScrollingFrame5
 
local UICorner271 = Instance.new("UICorner")
 
UICorner271.CornerRadius = UDim.new(0, 6)
 
UICorner271.Parent = Frame185
 
local UIStroke239 = Instance.new("UIStroke")
 
UIStroke239.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke239.Thickness = 1
 
UIStroke239.Parent = Frame185
 
local TextLabel157 = Instance.new("TextLabel")
 
TextLabel157.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel157.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel157.BackgroundTransparency = 1
 
TextLabel157.Text = "ELDER"
 
TextLabel157.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel157.TextSize = 12
 
TextLabel157.Font = Enum.Font.SourceSansBold
 
TextLabel157.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel157.Parent = Frame185
 
local TextButton91 = Instance.new("TextButton")
 
TextButton91.Size = UDim2.new(0, 85, 0, 26)
 
TextButton91.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton91.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton91.Text = "APPLY"
 
TextButton91.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton91.TextSize = 11
 
TextButton91.Font = Enum.Font.SourceSansBold
 
TextButton91.Parent = Frame185
 
local UICorner272 = Instance.new("UICorner")
 
UICorner272.CornerRadius = UDim.new(0, 6)
 
UICorner272.Parent = TextButton91
 
local UIStroke240 = Instance.new("UIStroke")
 
UIStroke240.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke240.Thickness = 1
 
UIStroke240.Parent = TextButton91
 
TextButton91.MouseButton1Click:Connect(function()
	 
	local Animate11 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall11 = Animate11:FindFirstChild("fall")
	 
	local FallAnim11 = fall11:FindFirstChild("FallAnim")
	 
	FallAnim11.AnimationId = "http://www.roblox.com/asset/?id=845396048"
	 
	local walk11 = Animate11:FindFirstChild("walk")
	 
	local WalkAnim11 = walk11:FindFirstChild("WalkAnim")
	 
	WalkAnim11.AnimationId = "http://www.roblox.com/asset/?id=845403856"
	 
	local run11 = Animate11:FindFirstChild("run")
	 
	local RunAnim11 = run11:FindFirstChild("RunAnim")
	 
	RunAnim11.AnimationId = "http://www.roblox.com/asset/?id=845386501"
	 
	local idle21 = Animate11:FindFirstChild("idle")
	 
	local Animation211 = idle21:FindFirstChild("Animation2")
	 
	Animation211.AnimationId = "http://www.roblox.com/asset/?id=845400520"
	 
	local climb10 = Animate11:FindFirstChild("climb")
	 
	local ClimbAnim10 = climb10:FindFirstChild("ClimbAnim")
	 
	ClimbAnim10.AnimationId = "http://www.roblox.com/asset/?id=845392038"
	 
	local jump11 = Animate11:FindFirstChild("jump")
	 
	local JumpAnim11 = jump11:FindFirstChild("JumpAnim")
	 
	JumpAnim11.AnimationId = "http://www.roblox.com/asset/?id=845398858"
	 
	local idle22 = Animate11:FindFirstChild("idle")
	 
	local Animation111 = idle22:FindFirstChild("Animation1")
	 
	Animation111.AnimationId = "http://www.roblox.com/asset/?id=845397899"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton91.Text = "APPLIED"
	 
	TextButton91.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton91.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke240.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame338 = Instance.new("Frame")
	 
	Frame338.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame338.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame338.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame338.BackgroundTransparency = 0.1
	 
	Frame338.BorderSizePixel = 0
	 
	Frame338.Parent = ScreenGui3
	 
	local UICorner497 = Instance.new("UICorner")
	 
	UICorner497.CornerRadius = UDim.new(0, 8)
	 
	UICorner497.Parent = Frame338
	 
	local UIStroke501 = Instance.new("UIStroke")
	 
	UIStroke501.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke501.Thickness = 1.2
	 
	UIStroke501.Parent = Frame338
	 
	local TextLabel312 = Instance.new("TextLabel")
	 
	TextLabel312.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel312.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel312.BackgroundTransparency = 1
	 
	TextLabel312.Text = "Animation Applied: ELDER"
	 
	TextLabel312.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel312.TextSize = 13
	 
	TextLabel312.Font = Enum.Font.SourceSansBold
	 
	TextLabel312.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel312.Parent = Frame338
	 
	local tween117 = TweenService:Create(Frame338, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween117:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame186 = Instance.new("Frame")
 
Frame186.Name = "ASTRONAUT"
 
Frame186.LayoutOrder = 12
 
Frame186.Size = UDim2.new(1, -6, 0, 38)
 
Frame186.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame186.BackgroundTransparency = 0.2
 
Frame186.Parent = ScrollingFrame5
 
local UICorner273 = Instance.new("UICorner")
 
UICorner273.CornerRadius = UDim.new(0, 6)
 
UICorner273.Parent = Frame186
 
local UIStroke241 = Instance.new("UIStroke")
 
UIStroke241.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke241.Thickness = 1
 
UIStroke241.Parent = Frame186
 
local TextLabel158 = Instance.new("TextLabel")
 
TextLabel158.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel158.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel158.BackgroundTransparency = 1
 
TextLabel158.Text = "ASTRONAUT"
 
TextLabel158.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel158.TextSize = 12
 
TextLabel158.Font = Enum.Font.SourceSansBold
 
TextLabel158.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel158.Parent = Frame186
 
local TextButton92 = Instance.new("TextButton")
 
TextButton92.Size = UDim2.new(0, 85, 0, 26)
 
TextButton92.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton92.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton92.Text = "APPLY"
 
TextButton92.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton92.TextSize = 11
 
TextButton92.Font = Enum.Font.SourceSansBold
 
TextButton92.Parent = Frame186
 
local UICorner274 = Instance.new("UICorner")
 
UICorner274.CornerRadius = UDim.new(0, 6)
 
UICorner274.Parent = TextButton92
 
local UIStroke242 = Instance.new("UIStroke")
 
UIStroke242.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke242.Thickness = 1
 
UIStroke242.Parent = TextButton92
 
TextButton92.MouseButton1Click:Connect(function()
	 
	local Animate12 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall12 = Animate12:FindFirstChild("fall")
	 
	local FallAnim12 = fall12:FindFirstChild("FallAnim")
	 
	FallAnim12.AnimationId = "http://www.roblox.com/asset/?id=891617961"
	 
	local walk12 = Animate12:FindFirstChild("walk")
	 
	local WalkAnim12 = walk12:FindFirstChild("WalkAnim")
	 
	WalkAnim12.AnimationId = "http://www.roblox.com/asset/?id=891667138"
	 
	local run12 = Animate12:FindFirstChild("run")
	 
	local RunAnim12 = run12:FindFirstChild("RunAnim")
	 
	RunAnim12.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	 
	local idle23 = Animate12:FindFirstChild("idle")
	 
	local Animation212 = idle23:FindFirstChild("Animation2")
	 
	Animation212.AnimationId = "http://www.roblox.com/asset/?id=891633237"
	 
	local climb11 = Animate12:FindFirstChild("climb")
	 
	local ClimbAnim11 = climb11:FindFirstChild("ClimbAnim")
	 
	ClimbAnim11.AnimationId = "http://www.roblox.com/asset/?id=891609353"
	 
	local jump12 = Animate12:FindFirstChild("jump")
	 
	local JumpAnim12 = jump12:FindFirstChild("JumpAnim")
	 
	JumpAnim12.AnimationId = "http://www.roblox.com/asset/?id=891627522"
	 
	local idle24 = Animate12:FindFirstChild("idle")
	 
	local Animation112 = idle24:FindFirstChild("Animation1")
	 
	Animation112.AnimationId = "http://www.roblox.com/asset/?id=891621366"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton92.Text = "APPLIED"
	 
	TextButton92.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton92.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke242.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame339 = Instance.new("Frame")
	 
	Frame339.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame339.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame339.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame339.BackgroundTransparency = 0.1
	 
	Frame339.BorderSizePixel = 0
	 
	Frame339.Parent = ScreenGui3
	 
	local UICorner498 = Instance.new("UICorner")
	 
	UICorner498.CornerRadius = UDim.new(0, 8)
	 
	UICorner498.Parent = Frame339
	 
	local UIStroke502 = Instance.new("UIStroke")
	 
	UIStroke502.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke502.Thickness = 1.2
	 
	UIStroke502.Parent = Frame339
	 
	local TextLabel313 = Instance.new("TextLabel")
	 
	TextLabel313.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel313.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel313.BackgroundTransparency = 1
	 
	TextLabel313.Text = "Animation Applied: ASTRONAUT"
	 
	TextLabel313.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel313.TextSize = 13
	 
	TextLabel313.Font = Enum.Font.SourceSansBold
	 
	TextLabel313.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel313.Parent = Frame339
	 
	local tween118 = TweenService:Create(Frame339, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween118:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame187 = Instance.new("Frame")
 
Frame187.Name = "TOY"
 
Frame187.LayoutOrder = 13
 
Frame187.Size = UDim2.new(1, -6, 0, 38)
 
Frame187.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame187.BackgroundTransparency = 0.2
 
Frame187.Parent = ScrollingFrame5
 
local UICorner275 = Instance.new("UICorner")
 
UICorner275.CornerRadius = UDim.new(0, 6)
 
UICorner275.Parent = Frame187
 
local UIStroke243 = Instance.new("UIStroke")
 
UIStroke243.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke243.Thickness = 1
 
UIStroke243.Parent = Frame187
 
local TextLabel159 = Instance.new("TextLabel")
 
TextLabel159.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel159.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel159.BackgroundTransparency = 1
 
TextLabel159.Text = "TOY"
 
TextLabel159.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel159.TextSize = 12
 
TextLabel159.Font = Enum.Font.SourceSansBold
 
TextLabel159.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel159.Parent = Frame187
 
local TextButton93 = Instance.new("TextButton")
 
TextButton93.Size = UDim2.new(0, 85, 0, 26)
 
TextButton93.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton93.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton93.Text = "APPLY"
 
TextButton93.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton93.TextSize = 11
 
TextButton93.Font = Enum.Font.SourceSansBold
 
TextButton93.Parent = Frame187
 
local UICorner276 = Instance.new("UICorner")
 
UICorner276.CornerRadius = UDim.new(0, 6)
 
UICorner276.Parent = TextButton93
 
local UIStroke244 = Instance.new("UIStroke")
 
UIStroke244.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke244.Thickness = 1
 
UIStroke244.Parent = TextButton93
 
TextButton93.MouseButton1Click:Connect(function()
	 
	local Animate13 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall13 = Animate13:FindFirstChild("fall")
	 
	local FallAnim13 = fall13:FindFirstChild("FallAnim")
	 
	FallAnim13.AnimationId = "http://www.roblox.com/asset/?id=782846423"
	 
	local walk13 = Animate13:FindFirstChild("walk")
	 
	local WalkAnim13 = walk13:FindFirstChild("WalkAnim")
	 
	WalkAnim13.AnimationId = "http://www.roblox.com/asset/?id=782843345"
	 
	local run13 = Animate13:FindFirstChild("run")
	 
	local RunAnim13 = run13:FindFirstChild("RunAnim")
	 
	RunAnim13.AnimationId = "http://www.roblox.com/asset/?id=782842708"
	 
	local idle25 = Animate13:FindFirstChild("idle")
	 
	local Animation213 = idle25:FindFirstChild("Animation2")
	 
	Animation213.AnimationId = "http://www.roblox.com/asset/?id=782845736"
	 
	local climb12 = Animate13:FindFirstChild("climb")
	 
	local ClimbAnim12 = climb12:FindFirstChild("ClimbAnim")
	 
	ClimbAnim12.AnimationId = "http://www.roblox.com/asset/?id=782843869"
	 
	local jump13 = Animate13:FindFirstChild("jump")
	 
	local JumpAnim13 = jump13:FindFirstChild("JumpAnim")
	 
	JumpAnim13.AnimationId = "http://www.roblox.com/asset/?id=782847020"
	 
	local idle26 = Animate13:FindFirstChild("idle")
	 
	local Animation113 = idle26:FindFirstChild("Animation1")
	 
	Animation113.AnimationId = "http://www.roblox.com/asset/?id=782841498"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton93.Text = "APPLIED"
	 
	TextButton93.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton93.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke244.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame340 = Instance.new("Frame")
	 
	Frame340.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame340.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame340.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame340.BackgroundTransparency = 0.1
	 
	Frame340.BorderSizePixel = 0
	 
	Frame340.Parent = ScreenGui3
	 
	local UICorner499 = Instance.new("UICorner")
	 
	UICorner499.CornerRadius = UDim.new(0, 8)
	 
	UICorner499.Parent = Frame340
	 
	local UIStroke503 = Instance.new("UIStroke")
	 
	UIStroke503.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke503.Thickness = 1.2
	 
	UIStroke503.Parent = Frame340
	 
	local TextLabel314 = Instance.new("TextLabel")
	 
	TextLabel314.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel314.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel314.BackgroundTransparency = 1
	 
	TextLabel314.Text = "Animation Applied: TOY"
	 
	TextLabel314.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel314.TextSize = 13
	 
	TextLabel314.Font = Enum.Font.SourceSansBold
	 
	TextLabel314.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel314.Parent = Frame340
	 
	local tween119 = TweenService:Create(Frame340, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween119:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame188 = Instance.new("Frame")
 
Frame188.Name = "VAMPIRE"
 
Frame188.LayoutOrder = 14
 
Frame188.Size = UDim2.new(1, -6, 0, 38)
 
Frame188.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame188.BackgroundTransparency = 0.2
 
Frame188.Parent = ScrollingFrame5
 
local UICorner277 = Instance.new("UICorner")
 
UICorner277.CornerRadius = UDim.new(0, 6)
 
UICorner277.Parent = Frame188
 
local UIStroke245 = Instance.new("UIStroke")
 
UIStroke245.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke245.Thickness = 1
 
UIStroke245.Parent = Frame188
 
local TextLabel160 = Instance.new("TextLabel")
 
TextLabel160.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel160.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel160.BackgroundTransparency = 1
 
TextLabel160.Text = "VAMPIRE"
 
TextLabel160.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel160.TextSize = 12
 
TextLabel160.Font = Enum.Font.SourceSansBold
 
TextLabel160.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel160.Parent = Frame188
 
local TextButton94 = Instance.new("TextButton")
 
TextButton94.Size = UDim2.new(0, 85, 0, 26)
 
TextButton94.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton94.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton94.Text = "APPLY"
 
TextButton94.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton94.TextSize = 11
 
TextButton94.Font = Enum.Font.SourceSansBold
 
TextButton94.Parent = Frame188
 
local UICorner278 = Instance.new("UICorner")
 
UICorner278.CornerRadius = UDim.new(0, 6)
 
UICorner278.Parent = TextButton94
 
local UIStroke246 = Instance.new("UIStroke")
 
UIStroke246.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke246.Thickness = 1
 
UIStroke246.Parent = TextButton94
 
TextButton94.MouseButton1Click:Connect(function()
	 
	local Animate14 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall14 = Animate14:FindFirstChild("fall")
	 
	local FallAnim14 = fall14:FindFirstChild("FallAnim")
	 
	FallAnim14.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
	 
	local walk14 = Animate14:FindFirstChild("walk")
	 
	local WalkAnim14 = walk14:FindFirstChild("WalkAnim")
	 
	WalkAnim14.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
	 
	local run14 = Animate14:FindFirstChild("run")
	 
	local RunAnim14 = run14:FindFirstChild("RunAnim")
	 
	RunAnim14.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
	 
	local idle27 = Animate14:FindFirstChild("idle")
	 
	local Animation214 = idle27:FindFirstChild("Animation2")
	 
	Animation214.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
	 
	local climb13 = Animate14:FindFirstChild("climb")
	 
	local ClimbAnim13 = climb13:FindFirstChild("ClimbAnim")
	 
	ClimbAnim13.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
	 
	local jump14 = Animate14:FindFirstChild("jump")
	 
	local JumpAnim14 = jump14:FindFirstChild("JumpAnim")
	 
	JumpAnim14.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
	 
	local idle28 = Animate14:FindFirstChild("idle")
	 
	local Animation114 = idle28:FindFirstChild("Animation1")
	 
	Animation114.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton94.Text = "APPLIED"
	 
	TextButton94.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton94.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke246.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame341 = Instance.new("Frame")
	 
	Frame341.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame341.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame341.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame341.BackgroundTransparency = 0.1
	 
	Frame341.BorderSizePixel = 0
	 
	Frame341.Parent = ScreenGui3
	 
	local UICorner500 = Instance.new("UICorner")
	 
	UICorner500.CornerRadius = UDim.new(0, 8)
	 
	UICorner500.Parent = Frame341
	 
	local UIStroke504 = Instance.new("UIStroke")
	 
	UIStroke504.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke504.Thickness = 1.2
	 
	UIStroke504.Parent = Frame341
	 
	local TextLabel315 = Instance.new("TextLabel")
	 
	TextLabel315.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel315.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel315.BackgroundTransparency = 1
	 
	TextLabel315.Text = "Animation Applied: VAMPIRE"
	 
	TextLabel315.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel315.TextSize = 13
	 
	TextLabel315.Font = Enum.Font.SourceSansBold
	 
	TextLabel315.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel315.Parent = Frame341
	 
	local tween120 = TweenService:Create(Frame341, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween120:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame189 = Instance.new("Frame")
 
Frame189.Name = "PATROL"
 
Frame189.LayoutOrder = 15
 
Frame189.Size = UDim2.new(1, -6, 0, 38)
 
Frame189.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame189.BackgroundTransparency = 0.2
 
Frame189.Parent = ScrollingFrame5
 
local UICorner279 = Instance.new("UICorner")
 
UICorner279.CornerRadius = UDim.new(0, 6)
 
UICorner279.Parent = Frame189
 
local UIStroke247 = Instance.new("UIStroke")
 
UIStroke247.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke247.Thickness = 1
 
UIStroke247.Parent = Frame189
 
local TextLabel161 = Instance.new("TextLabel")
 
TextLabel161.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel161.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel161.BackgroundTransparency = 1
 
TextLabel161.Text = "PATROL"
 
TextLabel161.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel161.TextSize = 12
 
TextLabel161.Font = Enum.Font.SourceSansBold
 
TextLabel161.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel161.Parent = Frame189
 
local TextButton95 = Instance.new("TextButton")
 
TextButton95.Size = UDim2.new(0, 85, 0, 26)
 
TextButton95.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton95.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton95.Text = "APPLY"
 
TextButton95.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton95.TextSize = 11
 
TextButton95.Font = Enum.Font.SourceSansBold
 
TextButton95.Parent = Frame189
 
local UICorner280 = Instance.new("UICorner")
 
UICorner280.CornerRadius = UDim.new(0, 6)
 
UICorner280.Parent = TextButton95
 
local UIStroke248 = Instance.new("UIStroke")
 
UIStroke248.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke248.Thickness = 1
 
UIStroke248.Parent = TextButton95
 
TextButton95.MouseButton1Click:Connect(function()
	 
	local Animate15 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall15 = Animate15:FindFirstChild("fall")
	 
	local FallAnim15 = fall15:FindFirstChild("FallAnim")
	 
	FallAnim15.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
	 
	local walk15 = Animate15:FindFirstChild("walk")
	 
	local WalkAnim15 = walk15:FindFirstChild("WalkAnim")
	 
	WalkAnim15.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
	 
	local run15 = Animate15:FindFirstChild("run")
	 
	local RunAnim15 = run15:FindFirstChild("RunAnim")
	 
	RunAnim15.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
	 
	local idle29 = Animate15:FindFirstChild("idle")
	 
	local Animation215 = idle29:FindFirstChild("Animation2")
	 
	Animation215.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
	 
	local climb14 = Animate15:FindFirstChild("climb")
	 
	local ClimbAnim14 = climb14:FindFirstChild("ClimbAnim")
	 
	ClimbAnim14.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
	 
	local jump15 = Animate15:FindFirstChild("jump")
	 
	local JumpAnim15 = jump15:FindFirstChild("JumpAnim")
	 
	JumpAnim15.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
	 
	local idle30 = Animate15:FindFirstChild("idle")
	 
	local Animation115 = idle30:FindFirstChild("Animation1")
	 
	Animation115.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton95.Text = "APPLIED"
	 
	TextButton95.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton95.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke248.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame342 = Instance.new("Frame")
	 
	Frame342.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame342.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame342.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame342.BackgroundTransparency = 0.1
	 
	Frame342.BorderSizePixel = 0
	 
	Frame342.Parent = ScreenGui3
	 
	local UICorner501 = Instance.new("UICorner")
	 
	UICorner501.CornerRadius = UDim.new(0, 8)
	 
	UICorner501.Parent = Frame342
	 
	local UIStroke505 = Instance.new("UIStroke")
	 
	UIStroke505.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke505.Thickness = 1.2
	 
	UIStroke505.Parent = Frame342
	 
	local TextLabel316 = Instance.new("TextLabel")
	 
	TextLabel316.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel316.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel316.BackgroundTransparency = 1
	 
	TextLabel316.Text = "Animation Applied: PATROL"
	 
	TextLabel316.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel316.TextSize = 13
	 
	TextLabel316.Font = Enum.Font.SourceSansBold
	 
	TextLabel316.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel316.Parent = Frame342
	 
	local tween121 = TweenService:Create(Frame342, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween121:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame190 = Instance.new("Frame")
 
Frame190.Name = "CONFIDENT"
 
Frame190.LayoutOrder = 16
 
Frame190.Size = UDim2.new(1, -6, 0, 38)
 
Frame190.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame190.BackgroundTransparency = 0.2
 
Frame190.Parent = ScrollingFrame5
 
local UICorner281 = Instance.new("UICorner")
 
UICorner281.CornerRadius = UDim.new(0, 6)
 
UICorner281.Parent = Frame190
 
local UIStroke249 = Instance.new("UIStroke")
 
UIStroke249.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke249.Thickness = 1
 
UIStroke249.Parent = Frame190
 
local TextLabel162 = Instance.new("TextLabel")
 
TextLabel162.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel162.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel162.BackgroundTransparency = 1
 
TextLabel162.Text = "CONFIDENT"
 
TextLabel162.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel162.TextSize = 12
 
TextLabel162.Font = Enum.Font.SourceSansBold
 
TextLabel162.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel162.Parent = Frame190
 
local TextButton96 = Instance.new("TextButton")
 
TextButton96.Size = UDim2.new(0, 85, 0, 26)
 
TextButton96.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton96.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton96.Text = "APPLY"
 
TextButton96.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton96.TextSize = 11
 
TextButton96.Font = Enum.Font.SourceSansBold
 
TextButton96.Parent = Frame190
 
local UICorner282 = Instance.new("UICorner")
 
UICorner282.CornerRadius = UDim.new(0, 6)
 
UICorner282.Parent = TextButton96
 
local UIStroke250 = Instance.new("UIStroke")
 
UIStroke250.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke250.Thickness = 1
 
UIStroke250.Parent = TextButton96
 
TextButton96.MouseButton1Click:Connect(function()
	 
	local Animate16 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall16 = Animate16:FindFirstChild("fall")
	 
	local FallAnim16 = fall16:FindFirstChild("FallAnim")
	 
	FallAnim16.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
	 
	local walk16 = Animate16:FindFirstChild("walk")
	 
	local WalkAnim16 = walk16:FindFirstChild("WalkAnim")
	 
	WalkAnim16.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
	 
	local run16 = Animate16:FindFirstChild("run")
	 
	local RunAnim16 = run16:FindFirstChild("RunAnim")
	 
	RunAnim16.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
	 
	local idle31 = Animate16:FindFirstChild("idle")
	 
	local Animation216 = idle31:FindFirstChild("Animation2")
	 
	Animation216.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
	 
	local climb15 = Animate16:FindFirstChild("climb")
	 
	local ClimbAnim15 = climb15:FindFirstChild("ClimbAnim")
	 
	ClimbAnim15.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
	 
	local jump16 = Animate16:FindFirstChild("jump")
	 
	local JumpAnim16 = jump16:FindFirstChild("JumpAnim")
	 
	JumpAnim16.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
	 
	local idle32 = Animate16:FindFirstChild("idle")
	 
	local Animation116 = idle32:FindFirstChild("Animation1")
	 
	Animation116.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton96.Text = "APPLIED"
	 
	TextButton96.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton96.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke250.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame343 = Instance.new("Frame")
	 
	Frame343.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame343.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame343.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame343.BackgroundTransparency = 0.1
	 
	Frame343.BorderSizePixel = 0
	 
	Frame343.Parent = ScreenGui3
	 
	local UICorner502 = Instance.new("UICorner")
	 
	UICorner502.CornerRadius = UDim.new(0, 8)
	 
	UICorner502.Parent = Frame343
	 
	local UIStroke506 = Instance.new("UIStroke")
	 
	UIStroke506.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke506.Thickness = 1.2
	 
	UIStroke506.Parent = Frame343
	 
	local TextLabel317 = Instance.new("TextLabel")
	 
	TextLabel317.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel317.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel317.BackgroundTransparency = 1
	 
	TextLabel317.Text = "Animation Applied: CONFIDENT"
	 
	TextLabel317.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel317.TextSize = 13
	 
	TextLabel317.Font = Enum.Font.SourceSansBold
	 
	TextLabel317.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel317.Parent = Frame343
	 
	local tween122 = TweenService:Create(Frame343, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween122:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame191 = Instance.new("Frame")
 
Frame191.Name = "SNEAKY"
 
Frame191.LayoutOrder = 17
 
Frame191.Size = UDim2.new(1, -6, 0, 38)
 
Frame191.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame191.BackgroundTransparency = 0.2
 
Frame191.Parent = ScrollingFrame5
 
local UICorner283 = Instance.new("UICorner")
 
UICorner283.CornerRadius = UDim.new(0, 6)
 
UICorner283.Parent = Frame191
 
local UIStroke251 = Instance.new("UIStroke")
 
UIStroke251.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke251.Thickness = 1
 
UIStroke251.Parent = Frame191
 
local TextLabel163 = Instance.new("TextLabel")
 
TextLabel163.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel163.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel163.BackgroundTransparency = 1
 
TextLabel163.Text = "SNEAKY"
 
TextLabel163.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel163.TextSize = 12
 
TextLabel163.Font = Enum.Font.SourceSansBold
 
TextLabel163.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel163.Parent = Frame191
 
local TextButton97 = Instance.new("TextButton")
 
TextButton97.Size = UDim2.new(0, 85, 0, 26)
 
TextButton97.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton97.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton97.Text = "APPLY"
 
TextButton97.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton97.TextSize = 11
 
TextButton97.Font = Enum.Font.SourceSansBold
 
TextButton97.Parent = Frame191
 
local UICorner284 = Instance.new("UICorner")
 
UICorner284.CornerRadius = UDim.new(0, 6)
 
UICorner284.Parent = TextButton97
 
local UIStroke252 = Instance.new("UIStroke")
 
UIStroke252.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke252.Thickness = 1
 
UIStroke252.Parent = TextButton97
 
TextButton97.MouseButton1Click:Connect(function()
	 
	local Animate17 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall17 = Animate17:FindFirstChild("fall")
	 
	local FallAnim17 = fall17:FindFirstChild("FallAnim")
	 
	FallAnim17.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
	 
	local walk17 = Animate17:FindFirstChild("walk")
	 
	local WalkAnim17 = walk17:FindFirstChild("WalkAnim")
	 
	WalkAnim17.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
	 
	local run17 = Animate17:FindFirstChild("run")
	 
	local RunAnim17 = run17:FindFirstChild("RunAnim")
	 
	RunAnim17.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
	 
	local idle33 = Animate17:FindFirstChild("idle")
	 
	local Animation217 = idle33:FindFirstChild("Animation2")
	 
	Animation217.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
	 
	local climb16 = Animate17:FindFirstChild("climb")
	 
	local ClimbAnim16 = climb16:FindFirstChild("ClimbAnim")
	 
	ClimbAnim16.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
	 
	local jump17 = Animate17:FindFirstChild("jump")
	 
	local JumpAnim17 = jump17:FindFirstChild("JumpAnim")
	 
	JumpAnim17.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
	 
	local idle34 = Animate17:FindFirstChild("idle")
	 
	local Animation117 = idle34:FindFirstChild("Animation1")
	 
	Animation117.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton97.Text = "APPLIED"
	 
	TextButton97.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton97.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke252.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame344 = Instance.new("Frame")
	 
	Frame344.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame344.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame344.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame344.BackgroundTransparency = 0.1
	 
	Frame344.BorderSizePixel = 0
	 
	Frame344.Parent = ScreenGui3
	 
	local UICorner503 = Instance.new("UICorner")
	 
	UICorner503.CornerRadius = UDim.new(0, 8)
	 
	UICorner503.Parent = Frame344
	 
	local UIStroke507 = Instance.new("UIStroke")
	 
	UIStroke507.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke507.Thickness = 1.2
	 
	UIStroke507.Parent = Frame344
	 
	local TextLabel318 = Instance.new("TextLabel")
	 
	TextLabel318.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel318.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel318.BackgroundTransparency = 1
	 
	TextLabel318.Text = "Animation Applied: SNEAKY"
	 
	TextLabel318.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel318.TextSize = 13
	 
	TextLabel318.Font = Enum.Font.SourceSansBold
	 
	TextLabel318.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel318.Parent = Frame344
	 
	local tween123 = TweenService:Create(Frame344, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween123:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame192 = Instance.new("Frame")
 
Frame192.Name = "COWBOY"
 
Frame192.LayoutOrder = 18
 
Frame192.Size = UDim2.new(1, -6, 0, 38)
 
Frame192.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame192.BackgroundTransparency = 0.2
 
Frame192.Parent = ScrollingFrame5
 
local UICorner285 = Instance.new("UICorner")
 
UICorner285.CornerRadius = UDim.new(0, 6)
 
UICorner285.Parent = Frame192
 
local UIStroke253 = Instance.new("UIStroke")
 
UIStroke253.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke253.Thickness = 1
 
UIStroke253.Parent = Frame192
 
local TextLabel164 = Instance.new("TextLabel")
 
TextLabel164.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel164.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel164.BackgroundTransparency = 1
 
TextLabel164.Text = "COWBOY"
 
TextLabel164.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel164.TextSize = 12
 
TextLabel164.Font = Enum.Font.SourceSansBold
 
TextLabel164.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel164.Parent = Frame192
 
local TextButton98 = Instance.new("TextButton")
 
TextButton98.Size = UDim2.new(0, 85, 0, 26)
 
TextButton98.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton98.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton98.Text = "APPLY"
 
TextButton98.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton98.TextSize = 11
 
TextButton98.Font = Enum.Font.SourceSansBold
 
TextButton98.Parent = Frame192
 
local UICorner286 = Instance.new("UICorner")
 
UICorner286.CornerRadius = UDim.new(0, 6)
 
UICorner286.Parent = TextButton98
 
local UIStroke254 = Instance.new("UIStroke")
 
UIStroke254.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke254.Thickness = 1
 
UIStroke254.Parent = TextButton98
 
TextButton98.MouseButton1Click:Connect(function()
	 
	local Animate18 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall18 = Animate18:FindFirstChild("fall")
	 
	local FallAnim18 = fall18:FindFirstChild("FallAnim")
	 
	FallAnim18.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
	 
	local walk18 = Animate18:FindFirstChild("walk")
	 
	local WalkAnim18 = walk18:FindFirstChild("WalkAnim")
	 
	WalkAnim18.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
	 
	local run18 = Animate18:FindFirstChild("run")
	 
	local RunAnim18 = run18:FindFirstChild("RunAnim")
	 
	RunAnim18.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
	 
	local idle35 = Animate18:FindFirstChild("idle")
	 
	local Animation218 = idle35:FindFirstChild("Animation2")
	 
	Animation218.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
	 
	local climb17 = Animate18:FindFirstChild("climb")
	 
	local ClimbAnim17 = climb17:FindFirstChild("ClimbAnim")
	 
	ClimbAnim17.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
	 
	local jump18 = Animate18:FindFirstChild("jump")
	 
	local JumpAnim18 = jump18:FindFirstChild("JumpAnim")
	 
	JumpAnim18.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
	 
	local idle36 = Animate18:FindFirstChild("idle")
	 
	local Animation118 = idle36:FindFirstChild("Animation1")
	 
	Animation118.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton98.Text = "APPLIED"
	 
	TextButton98.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton98.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke254.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame345 = Instance.new("Frame")
	 
	Frame345.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame345.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame345.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame345.BackgroundTransparency = 0.1
	 
	Frame345.BorderSizePixel = 0
	 
	Frame345.Parent = ScreenGui3
	 
	local UICorner504 = Instance.new("UICorner")
	 
	UICorner504.CornerRadius = UDim.new(0, 8)
	 
	UICorner504.Parent = Frame345
	 
	local UIStroke508 = Instance.new("UIStroke")
	 
	UIStroke508.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke508.Thickness = 1.2
	 
	UIStroke508.Parent = Frame345
	 
	local TextLabel319 = Instance.new("TextLabel")
	 
	TextLabel319.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel319.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel319.BackgroundTransparency = 1
	 
	TextLabel319.Text = "Animation Applied: COWBOY"
	 
	TextLabel319.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel319.TextSize = 13
	 
	TextLabel319.Font = Enum.Font.SourceSansBold
	 
	TextLabel319.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel319.Parent = Frame345
	 
	local tween124 = TweenService:Create(Frame345, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween124:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local Frame193 = Instance.new("Frame")
 
Frame193.Name = "NONE"
 
Frame193.LayoutOrder = 19
 
Frame193.Size = UDim2.new(1, -6, 0, 38)
 
Frame193.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame193.BackgroundTransparency = 0.2
 
Frame193.Parent = ScrollingFrame5
 
local UICorner287 = Instance.new("UICorner")
 
UICorner287.CornerRadius = UDim.new(0, 6)
 
UICorner287.Parent = Frame193
 
local UIStroke255 = Instance.new("UIStroke")
 
UIStroke255.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke255.Thickness = 1
 
UIStroke255.Parent = Frame193
 
local TextLabel165 = Instance.new("TextLabel")
 
TextLabel165.Size = UDim2.new(0.55, 0, 1, 0)
 
TextLabel165.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel165.BackgroundTransparency = 1
 
TextLabel165.Text = "NONE"
 
TextLabel165.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel165.TextSize = 12
 
TextLabel165.Font = Enum.Font.SourceSansBold
 
TextLabel165.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel165.Parent = Frame193
 
local TextButton99 = Instance.new("TextButton")
 
TextButton99.Size = UDim2.new(0, 85, 0, 26)
 
TextButton99.Position = UDim2.new(1, -91, 0.5, -13)
 
TextButton99.BackgroundColor3 = Color3.fromRGB(28, 10, 10)
 
TextButton99.Text = "APPLY"
 
TextButton99.TextColor3 = Color3.fromRGB(255, 50, 50)
 
TextButton99.TextSize = 11
 
TextButton99.Font = Enum.Font.SourceSansBold
 
TextButton99.Parent = Frame193
 
local UICorner288 = Instance.new("UICorner")
 
UICorner288.CornerRadius = UDim.new(0, 6)
 
UICorner288.Parent = TextButton99
 
local UIStroke256 = Instance.new("UIStroke")
 
UIStroke256.Color = Color3.fromRGB(120, 0, 0)
 
UIStroke256.Thickness = 1
 
UIStroke256.Parent = TextButton99
 
TextButton99.MouseButton1Click:Connect(function()
	 
	local Animate19 = Players.LocalPlayer.Character:FindFirstChild("Animate")
	 
	local fall19 = Animate19:FindFirstChild("fall")
	 
	local FallAnim19 = fall19:FindFirstChild("FallAnim")
	 
	FallAnim19.AnimationId = "http://www.roblox.com/asset/?id=0"
	 
	local walk19 = Animate19:FindFirstChild("walk")
	 
	local WalkAnim19 = walk19:FindFirstChild("WalkAnim")
	 
	WalkAnim19.AnimationId = "http://www.roblox.com/asset/?id=0"
	 
	local idle37 = Animate19:FindFirstChild("idle")
	 
	local Animation219 = idle37:FindFirstChild("Animation2")
	 
	Animation219.AnimationId = "http://www.roblox.com/asset/?id=0"
	 
	local run19 = Animate19:FindFirstChild("run")
	 
	local RunAnim19 = run19:FindFirstChild("RunAnim")
	 
	RunAnim19.AnimationId = "http://www.roblox.com/asset/?id=0"
	 
	local jump19 = Animate19:FindFirstChild("jump")
	 
	local JumpAnim19 = jump19:FindFirstChild("JumpAnim")
	 
	JumpAnim19.AnimationId = "http://www.roblox.com/asset/?id=0"
	 
	local idle38 = Animate19:FindFirstChild("idle")
	 
	local Animation119 = idle38:FindFirstChild("Animation1")
	 
	Animation119.AnimationId = "http://www.roblox.com/asset/?id=0"
	 
	Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 
	Players.LocalPlayer.Character.Humanoid.Jump = true
	 
	TextButton99.Text = "APPLIED"
	 
	TextButton99.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton99.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke256.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame346 = Instance.new("Frame")
	 
	Frame346.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame346.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame346.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame346.BackgroundTransparency = 0.1
	 
	Frame346.BorderSizePixel = 0
	 
	Frame346.Parent = ScreenGui3
	 
	local UICorner505 = Instance.new("UICorner")
	 
	UICorner505.CornerRadius = UDim.new(0, 8)
	 
	UICorner505.Parent = Frame346
	 
	local UIStroke509 = Instance.new("UIStroke")
	 
	UIStroke509.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke509.Thickness = 1.2
	 
	UIStroke509.Parent = Frame346
	 
	local TextLabel320 = Instance.new("TextLabel")
	 
	TextLabel320.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel320.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel320.BackgroundTransparency = 1
	 
	TextLabel320.Text = "Animation Applied: NONE"
	 
	TextLabel320.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel320.TextSize = 13
	 
	TextLabel320.Font = Enum.Font.SourceSansBold
	 
	TextLabel320.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel320.Parent = Frame346
	 
	local tween125 = TweenService:Create(Frame346, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween125:Play()
	 
	task.delay(2.5, function(...)
	end)
	 
	task.delay(2, function(...)
	end)
end)
 
local TextLabel166 = Instance.new("TextLabel")
 
TextLabel166.Size = UDim2.new(1, -6, 0, 28)
 
TextLabel166.BackgroundTransparency = 1
 
TextLabel166.Text = "SELECT SCRIPTS TO AUTO EXECUTE:"
 
TextLabel166.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel166.TextSize = 12
 
TextLabel166.Font = Enum.Font.SourceSansBold
 
TextLabel166.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel166.Parent = ScrollingFrame6
 
local Frame194 = Instance.new("Frame")
 
Frame194.Name = "AutoExec_AIRFLOW HUB"
 
Frame194.LayoutOrder = 2
 
Frame194.Size = UDim2.new(1, -6, 0, 38)
 
Frame194.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame194.BackgroundTransparency = 0.2
 
Frame194.Parent = ScrollingFrame6
 
local UICorner289 = Instance.new("UICorner")
 
UICorner289.CornerRadius = UDim.new(0, 6)
 
UICorner289.Parent = Frame194
 
local UIStroke257 = Instance.new("UIStroke")
 
UIStroke257.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke257.Thickness = 1
 
UIStroke257.Parent = Frame194
 
local TextLabel167 = Instance.new("TextLabel")
 
TextLabel167.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel167.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel167.BackgroundTransparency = 1
 
TextLabel167.Text = "AIRFLOW HUB"
 
TextLabel167.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel167.TextSize = 12
 
TextLabel167.Font = Enum.Font.SourceSansBold
 
TextLabel167.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel167.Parent = Frame194
 
local TextButton100 = Instance.new("TextButton")
 
TextButton100.Size = UDim2.new(0, 96, 0, 26)
 
TextButton100.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton100.TextSize = 11
 
TextButton100.Font = Enum.Font.SourceSansBold
 
TextButton100.Parent = Frame194
 
local UICorner290 = Instance.new("UICorner")
 
UICorner290.CornerRadius = UDim.new(0, 6)
 
UICorner290.Parent = TextButton100
 
local UIStroke258 = Instance.new("UIStroke")
 
UIStroke258.Thickness = 1
 
UIStroke258.Parent = Frame194
 
TextButton100.Text = "AUTO: OFF"
 
TextButton100.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton100.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke258.Color = Color3.fromRGB(60, 60, 60)
 
TextButton100.MouseButton1Click:Connect(function()
	 
	local json = HttpService:JSONEncode({ ["AIRFLOW HUB"] = true })
	 
	writefile("SourcesHub_AutoExec.json", json)
	 
	TextButton100.Text = "AUTO: ON"
	 
	TextButton100.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton100.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke258.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame347 = Instance.new("Frame")
	 
	Frame347.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame347.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame347.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame347.BackgroundTransparency = 0.1
	 
	Frame347.BorderSizePixel = 0
	 
	Frame347.Parent = ScreenGui3
	 
	local UICorner506 = Instance.new("UICorner")
	 
	UICorner506.CornerRadius = UDim.new(0, 8)
	 
	UICorner506.Parent = Frame347
	 
	local UIStroke510 = Instance.new("UIStroke")
	 
	UIStroke510.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke510.Thickness = 1.2
	 
	UIStroke510.Parent = Frame347
	 
	local TextLabel321 = Instance.new("TextLabel")
	 
	TextLabel321.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel321.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel321.BackgroundTransparency = 1
	 
	TextLabel321.Text = "Auto-Exec Added: AIRFLOW HUB"
	 
	TextLabel321.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel321.TextSize = 13
	 
	TextLabel321.Font = Enum.Font.SourceSansBold
	 
	TextLabel321.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel321.Parent = Frame347
	 
	local tween126 = TweenService:Create(Frame347, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween126:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame195 = Instance.new("Frame")
 
Frame195.Name = "AutoExec_AJJANS HUB"
 
Frame195.LayoutOrder = 3
 
Frame195.Size = UDim2.new(1, -6, 0, 38)
 
Frame195.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame195.BackgroundTransparency = 0.2
 
Frame195.Parent = ScrollingFrame6
 
local UICorner291 = Instance.new("UICorner")
 
UICorner291.CornerRadius = UDim.new(0, 6)
 
UICorner291.Parent = Frame195
 
local UIStroke259 = Instance.new("UIStroke")
 
UIStroke259.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke259.Thickness = 1
 
UIStroke259.Parent = Frame195
 
local TextLabel168 = Instance.new("TextLabel")
 
TextLabel168.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel168.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel168.BackgroundTransparency = 1
 
TextLabel168.Text = "AJJANS HUB"
 
TextLabel168.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel168.TextSize = 12
 
TextLabel168.Font = Enum.Font.SourceSansBold
 
TextLabel168.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel168.Parent = Frame195
 
local TextButton101 = Instance.new("TextButton")
 
TextButton101.Size = UDim2.new(0, 96, 0, 26)
 
TextButton101.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton101.TextSize = 11
 
TextButton101.Font = Enum.Font.SourceSansBold
 
TextButton101.Parent = Frame195
 
local UICorner292 = Instance.new("UICorner")
 
UICorner292.CornerRadius = UDim.new(0, 6)
 
UICorner292.Parent = TextButton101
 
local UIStroke260 = Instance.new("UIStroke")
 
UIStroke260.Thickness = 1
 
UIStroke260.Parent = Frame195
 
TextButton101.Text = "AUTO: OFF"
 
TextButton101.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton101.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke260.Color = Color3.fromRGB(60, 60, 60)
 
TextButton101.MouseButton1Click:Connect(function()
	 
	local json2 = HttpService:JSONEncode({ ["AIRFLOW HUB"] = true, ["AJJANS HUB"] = true })
	 
	writefile("SourcesHub_AutoExec.json", json2)
	 
	TextButton101.Text = "AUTO: ON"
	 
	TextButton101.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton101.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke260.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame348 = Instance.new("Frame")
	 
	Frame348.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame348.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame348.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame348.BackgroundTransparency = 0.1
	 
	Frame348.BorderSizePixel = 0
	 
	Frame348.Parent = ScreenGui3
	 
	local UICorner507 = Instance.new("UICorner")
	 
	UICorner507.CornerRadius = UDim.new(0, 8)
	 
	UICorner507.Parent = Frame348
	 
	local UIStroke511 = Instance.new("UIStroke")
	 
	UIStroke511.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke511.Thickness = 1.2
	 
	UIStroke511.Parent = Frame348
	 
	local TextLabel322 = Instance.new("TextLabel")
	 
	TextLabel322.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel322.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel322.BackgroundTransparency = 1
	 
	TextLabel322.Text = "Auto-Exec Added: AJJANS HUB"
	 
	TextLabel322.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel322.TextSize = 13
	 
	TextLabel322.Font = Enum.Font.SourceSansBold
	 
	TextLabel322.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel322.Parent = Frame348
	 
	local tween127 = TweenService:Create(Frame348, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween127:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame196 = Instance.new("Frame")
 
Frame196.Name = "AutoExec_ANTI HIT"
 
Frame196.LayoutOrder = 4
 
Frame196.Size = UDim2.new(1, -6, 0, 38)
 
Frame196.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame196.BackgroundTransparency = 0.2
 
Frame196.Parent = ScrollingFrame6
 
local UICorner293 = Instance.new("UICorner")
 
UICorner293.CornerRadius = UDim.new(0, 6)
 
UICorner293.Parent = Frame196
 
local UIStroke261 = Instance.new("UIStroke")
 
UIStroke261.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke261.Thickness = 1
 
UIStroke261.Parent = Frame196
 
local TextLabel169 = Instance.new("TextLabel")
 
TextLabel169.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel169.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel169.BackgroundTransparency = 1
 
TextLabel169.Text = "ANTI HIT"
 
TextLabel169.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel169.TextSize = 12
 
TextLabel169.Font = Enum.Font.SourceSansBold
 
TextLabel169.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel169.Parent = Frame196
 
local TextButton102 = Instance.new("TextButton")
 
TextButton102.Size = UDim2.new(0, 96, 0, 26)
 
TextButton102.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton102.TextSize = 11
 
TextButton102.Font = Enum.Font.SourceSansBold
 
TextButton102.Parent = Frame196
 
local UICorner294 = Instance.new("UICorner")
 
UICorner294.CornerRadius = UDim.new(0, 6)
 
UICorner294.Parent = TextButton102
 
local UIStroke262 = Instance.new("UIStroke")
 
UIStroke262.Thickness = 1
 
UIStroke262.Parent = Frame196
 
TextButton102.Text = "AUTO: OFF"
 
TextButton102.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton102.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke262.Color = Color3.fromRGB(60, 60, 60)
 
TextButton102.MouseButton1Click:Connect(function()
	 
	local json3 = HttpService:JSONEncode({ ["AIRFLOW HUB"] = true, ["AJJANS HUB"] = true, ["ANTI HIT"] = true })
	 
	writefile("SourcesHub_AutoExec.json", json3)
	 
	TextButton102.Text = "AUTO: ON"
	 
	TextButton102.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton102.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke262.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame349 = Instance.new("Frame")
	 
	Frame349.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame349.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame349.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame349.BackgroundTransparency = 0.1
	 
	Frame349.BorderSizePixel = 0
	 
	Frame349.Parent = ScreenGui3
	 
	local UICorner508 = Instance.new("UICorner")
	 
	UICorner508.CornerRadius = UDim.new(0, 8)
	 
	UICorner508.Parent = Frame349
	 
	local UIStroke512 = Instance.new("UIStroke")
	 
	UIStroke512.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke512.Thickness = 1.2
	 
	UIStroke512.Parent = Frame349
	 
	local TextLabel323 = Instance.new("TextLabel")
	 
	TextLabel323.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel323.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel323.BackgroundTransparency = 1
	 
	TextLabel323.Text = "Auto-Exec Added: ANTI HIT"
	 
	TextLabel323.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel323.TextSize = 13
	 
	TextLabel323.Font = Enum.Font.SourceSansBold
	 
	TextLabel323.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel323.Parent = Frame349
	 
	local tween128 = TweenService:Create(Frame349, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween128:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame197 = Instance.new("Frame")
 
Frame197.Name = "AutoExec_ASVRA HUB"
 
Frame197.LayoutOrder = 5
 
Frame197.Size = UDim2.new(1, -6, 0, 38)
 
Frame197.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame197.BackgroundTransparency = 0.2
 
Frame197.Parent = ScrollingFrame6
 
local UICorner295 = Instance.new("UICorner")
 
UICorner295.CornerRadius = UDim.new(0, 6)
 
UICorner295.Parent = Frame197
 
local UIStroke263 = Instance.new("UIStroke")
 
UIStroke263.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke263.Thickness = 1
 
UIStroke263.Parent = Frame197
 
local TextLabel170 = Instance.new("TextLabel")
 
TextLabel170.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel170.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel170.BackgroundTransparency = 1
 
TextLabel170.Text = "ASVRA HUB"
 
TextLabel170.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel170.TextSize = 12
 
TextLabel170.Font = Enum.Font.SourceSansBold
 
TextLabel170.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel170.Parent = Frame197
 
local TextButton103 = Instance.new("TextButton")
 
TextButton103.Size = UDim2.new(0, 96, 0, 26)
 
TextButton103.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton103.TextSize = 11
 
TextButton103.Font = Enum.Font.SourceSansBold
 
TextButton103.Parent = Frame197
 
local UICorner296 = Instance.new("UICorner")
 
UICorner296.CornerRadius = UDim.new(0, 6)
 
UICorner296.Parent = TextButton103
 
local UIStroke264 = Instance.new("UIStroke")
 
UIStroke264.Thickness = 1
 
UIStroke264.Parent = Frame197
 
TextButton103.Text = "AUTO: OFF"
 
TextButton103.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton103.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke264.Color = Color3.fromRGB(60, 60, 60)
 
TextButton103.MouseButton1Click:Connect(function()
	 
	local json4 = HttpService:JSONEncode({ ["AIRFLOW HUB"] = true, ["AJJANS HUB"] = true, ["ANTI HIT"] = true, ["ASVRA HUB"] = true })
	 
	writefile("SourcesHub_AutoExec.json", json4)
	 
	TextButton103.Text = "AUTO: ON"
	 
	TextButton103.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton103.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke264.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame350 = Instance.new("Frame")
	 
	Frame350.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame350.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame350.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame350.BackgroundTransparency = 0.1
	 
	Frame350.BorderSizePixel = 0
	 
	Frame350.Parent = ScreenGui3
	 
	local UICorner509 = Instance.new("UICorner")
	 
	UICorner509.CornerRadius = UDim.new(0, 8)
	 
	UICorner509.Parent = Frame350
	 
	local UIStroke513 = Instance.new("UIStroke")
	 
	UIStroke513.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke513.Thickness = 1.2
	 
	UIStroke513.Parent = Frame350
	 
	local TextLabel324 = Instance.new("TextLabel")
	 
	TextLabel324.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel324.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel324.BackgroundTransparency = 1
	 
	TextLabel324.Text = "Auto-Exec Added: ASVRA HUB"
	 
	TextLabel324.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel324.TextSize = 13
	 
	TextLabel324.Font = Enum.Font.SourceSansBold
	 
	TextLabel324.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel324.Parent = Frame350
	 
	local tween129 = TweenService:Create(Frame350, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween129:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame198 = Instance.new("Frame")
 
Frame198.Name = "AutoExec_AUTO STEAL"
 
Frame198.LayoutOrder = 6
 
Frame198.Size = UDim2.new(1, -6, 0, 38)
 
Frame198.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame198.BackgroundTransparency = 0.2
 
Frame198.Parent = ScrollingFrame6
 
local UICorner297 = Instance.new("UICorner")
 
UICorner297.CornerRadius = UDim.new(0, 6)
 
UICorner297.Parent = Frame198
 
local UIStroke265 = Instance.new("UIStroke")
 
UIStroke265.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke265.Thickness = 1
 
UIStroke265.Parent = Frame198
 
local TextLabel171 = Instance.new("TextLabel")
 
TextLabel171.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel171.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel171.BackgroundTransparency = 1
 
TextLabel171.Text = "AUTO STEAL"
 
TextLabel171.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel171.TextSize = 12
 
TextLabel171.Font = Enum.Font.SourceSansBold
 
TextLabel171.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel171.Parent = Frame198
 
local TextButton104 = Instance.new("TextButton")
 
TextButton104.Size = UDim2.new(0, 96, 0, 26)
 
TextButton104.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton104.TextSize = 11
 
TextButton104.Font = Enum.Font.SourceSansBold
 
TextButton104.Parent = Frame198
 
local UICorner298 = Instance.new("UICorner")
 
UICorner298.CornerRadius = UDim.new(0, 6)
 
UICorner298.Parent = TextButton104
 
local UIStroke266 = Instance.new("UIStroke")
 
UIStroke266.Thickness = 1
 
UIStroke266.Parent = Frame198
 
TextButton104.Text = "AUTO: OFF"
 
TextButton104.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton104.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke266.Color = Color3.fromRGB(60, 60, 60)
 
TextButton104.MouseButton1Click:Connect(function()
	 
	local json5 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json5)
	 
	TextButton104.Text = "AUTO: ON"
	 
	TextButton104.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton104.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke266.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame351 = Instance.new("Frame")
	 
	Frame351.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame351.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame351.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame351.BackgroundTransparency = 0.1
	 
	Frame351.BorderSizePixel = 0
	 
	Frame351.Parent = ScreenGui3
	 
	local UICorner510 = Instance.new("UICorner")
	 
	UICorner510.CornerRadius = UDim.new(0, 8)
	 
	UICorner510.Parent = Frame351
	 
	local UIStroke514 = Instance.new("UIStroke")
	 
	UIStroke514.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke514.Thickness = 1.2
	 
	UIStroke514.Parent = Frame351
	 
	local TextLabel325 = Instance.new("TextLabel")
	 
	TextLabel325.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel325.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel325.BackgroundTransparency = 1
	 
	TextLabel325.Text = "Auto-Exec Added: AUTO STEAL"
	 
	TextLabel325.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel325.TextSize = 13
	 
	TextLabel325.Font = Enum.Font.SourceSansBold
	 
	TextLabel325.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel325.Parent = Frame351
	 
	local tween130 = TweenService:Create(Frame351, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween130:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame199 = Instance.new("Frame")
 
Frame199.Name = "AutoExec_AUTO STEAL & FARM"
 
Frame199.LayoutOrder = 7
 
Frame199.Size = UDim2.new(1, -6, 0, 38)
 
Frame199.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame199.BackgroundTransparency = 0.2
 
Frame199.Parent = ScrollingFrame6
 
local UICorner299 = Instance.new("UICorner")
 
UICorner299.CornerRadius = UDim.new(0, 6)
 
UICorner299.Parent = Frame199
 
local UIStroke267 = Instance.new("UIStroke")
 
UIStroke267.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke267.Thickness = 1
 
UIStroke267.Parent = Frame199
 
local TextLabel172 = Instance.new("TextLabel")
 
TextLabel172.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel172.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel172.BackgroundTransparency = 1
 
TextLabel172.Text = "AUTO STEAL & FARM"
 
TextLabel172.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel172.TextSize = 12
 
TextLabel172.Font = Enum.Font.SourceSansBold
 
TextLabel172.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel172.Parent = Frame199
 
local TextButton105 = Instance.new("TextButton")
 
TextButton105.Size = UDim2.new(0, 96, 0, 26)
 
TextButton105.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton105.TextSize = 11
 
TextButton105.Font = Enum.Font.SourceSansBold
 
TextButton105.Parent = Frame199
 
local UICorner300 = Instance.new("UICorner")
 
UICorner300.CornerRadius = UDim.new(0, 6)
 
UICorner300.Parent = TextButton105
 
local UIStroke268 = Instance.new("UIStroke")
 
UIStroke268.Thickness = 1
 
UIStroke268.Parent = Frame199
 
TextButton105.Text = "AUTO: OFF"
 
TextButton105.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton105.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke268.Color = Color3.fromRGB(60, 60, 60)
 
TextButton105.MouseButton1Click:Connect(function()
	 
	local json6 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json6)
	 
	TextButton105.Text = "AUTO: ON"
	 
	TextButton105.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton105.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke268.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame352 = Instance.new("Frame")
	 
	Frame352.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame352.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame352.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame352.BackgroundTransparency = 0.1
	 
	Frame352.BorderSizePixel = 0
	 
	Frame352.Parent = ScreenGui3
	 
	local UICorner511 = Instance.new("UICorner")
	 
	UICorner511.CornerRadius = UDim.new(0, 8)
	 
	UICorner511.Parent = Frame352
	 
	local UIStroke515 = Instance.new("UIStroke")
	 
	UIStroke515.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke515.Thickness = 1.2
	 
	UIStroke515.Parent = Frame352
	 
	local TextLabel326 = Instance.new("TextLabel")
	 
	TextLabel326.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel326.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel326.BackgroundTransparency = 1
	 
	TextLabel326.Text = "Auto-Exec Added: AUTO STEAL & FARM"
	 
	TextLabel326.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel326.TextSize = 13
	 
	TextLabel326.Font = Enum.Font.SourceSansBold
	 
	TextLabel326.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel326.Parent = Frame352
	 
	local tween131 = TweenService:Create(Frame352, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween131:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame200 = Instance.new("Frame")
 
Frame200.Name = "AutoExec_AXON HUB"
 
Frame200.LayoutOrder = 8
 
Frame200.Size = UDim2.new(1, -6, 0, 38)
 
Frame200.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame200.BackgroundTransparency = 0.2
 
Frame200.Parent = ScrollingFrame6
 
local UICorner301 = Instance.new("UICorner")
 
UICorner301.CornerRadius = UDim.new(0, 6)
 
UICorner301.Parent = Frame200
 
local UIStroke269 = Instance.new("UIStroke")
 
UIStroke269.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke269.Thickness = 1
 
UIStroke269.Parent = Frame200
 
local TextLabel173 = Instance.new("TextLabel")
 
TextLabel173.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel173.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel173.BackgroundTransparency = 1
 
TextLabel173.Text = "AXON HUB"
 
TextLabel173.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel173.TextSize = 12
 
TextLabel173.Font = Enum.Font.SourceSansBold
 
TextLabel173.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel173.Parent = Frame200
 
local TextButton106 = Instance.new("TextButton")
 
TextButton106.Size = UDim2.new(0, 96, 0, 26)
 
TextButton106.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton106.TextSize = 11
 
TextButton106.Font = Enum.Font.SourceSansBold
 
TextButton106.Parent = Frame200
 
local UICorner302 = Instance.new("UICorner")
 
UICorner302.CornerRadius = UDim.new(0, 6)
 
UICorner302.Parent = TextButton106
 
local UIStroke270 = Instance.new("UIStroke")
 
UIStroke270.Thickness = 1
 
UIStroke270.Parent = Frame200
 
TextButton106.Text = "AUTO: OFF"
 
TextButton106.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton106.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke270.Color = Color3.fromRGB(60, 60, 60)
 
TextButton106.MouseButton1Click:Connect(function()
	 
	local json7 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json7)
	 
	TextButton106.Text = "AUTO: ON"
	 
	TextButton106.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton106.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke270.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame353 = Instance.new("Frame")
	 
	Frame353.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame353.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame353.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame353.BackgroundTransparency = 0.1
	 
	Frame353.BorderSizePixel = 0
	 
	Frame353.Parent = ScreenGui3
	 
	local UICorner512 = Instance.new("UICorner")
	 
	UICorner512.CornerRadius = UDim.new(0, 8)
	 
	UICorner512.Parent = Frame353
	 
	local UIStroke516 = Instance.new("UIStroke")
	 
	UIStroke516.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke516.Thickness = 1.2
	 
	UIStroke516.Parent = Frame353
	 
	local TextLabel327 = Instance.new("TextLabel")
	 
	TextLabel327.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel327.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel327.BackgroundTransparency = 1
	 
	TextLabel327.Text = "Auto-Exec Added: AXON HUB"
	 
	TextLabel327.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel327.TextSize = 13
	 
	TextLabel327.Font = Enum.Font.SourceSansBold
	 
	TextLabel327.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel327.Parent = Frame353
	 
	local tween132 = TweenService:Create(Frame353, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween132:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame201 = Instance.new("Frame")
 
Frame201.Name = "AutoExec_AXONIC HUB"
 
Frame201.LayoutOrder = 9
 
Frame201.Size = UDim2.new(1, -6, 0, 38)
 
Frame201.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame201.BackgroundTransparency = 0.2
 
Frame201.Parent = ScrollingFrame6
 
local UICorner303 = Instance.new("UICorner")
 
UICorner303.CornerRadius = UDim.new(0, 6)
 
UICorner303.Parent = Frame201
 
local UIStroke271 = Instance.new("UIStroke")
 
UIStroke271.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke271.Thickness = 1
 
UIStroke271.Parent = Frame201
 
local TextLabel174 = Instance.new("TextLabel")
 
TextLabel174.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel174.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel174.BackgroundTransparency = 1
 
TextLabel174.Text = "AXONIC HUB"
 
TextLabel174.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel174.TextSize = 12
 
TextLabel174.Font = Enum.Font.SourceSansBold
 
TextLabel174.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel174.Parent = Frame201
 
local TextButton107 = Instance.new("TextButton")
 
TextButton107.Size = UDim2.new(0, 96, 0, 26)
 
TextButton107.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton107.TextSize = 11
 
TextButton107.Font = Enum.Font.SourceSansBold
 
TextButton107.Parent = Frame201
 
local UICorner304 = Instance.new("UICorner")
 
UICorner304.CornerRadius = UDim.new(0, 6)
 
UICorner304.Parent = TextButton107
 
local UIStroke272 = Instance.new("UIStroke")
 
UIStroke272.Thickness = 1
 
UIStroke272.Parent = Frame201
 
TextButton107.Text = "AUTO: OFF"
 
TextButton107.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton107.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke272.Color = Color3.fromRGB(60, 60, 60)
 
TextButton107.MouseButton1Click:Connect(function()
	 
	local json8 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json8)
	 
	TextButton107.Text = "AUTO: ON"
	 
	TextButton107.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton107.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke272.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame354 = Instance.new("Frame")
	 
	Frame354.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame354.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame354.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame354.BackgroundTransparency = 0.1
	 
	Frame354.BorderSizePixel = 0
	 
	Frame354.Parent = ScreenGui3
	 
	local UICorner513 = Instance.new("UICorner")
	 
	UICorner513.CornerRadius = UDim.new(0, 8)
	 
	UICorner513.Parent = Frame354
	 
	local UIStroke517 = Instance.new("UIStroke")
	 
	UIStroke517.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke517.Thickness = 1.2
	 
	UIStroke517.Parent = Frame354
	 
	local TextLabel328 = Instance.new("TextLabel")
	 
	TextLabel328.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel328.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel328.BackgroundTransparency = 1
	 
	TextLabel328.Text = "Auto-Exec Added: AXONIC HUB"
	 
	TextLabel328.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel328.TextSize = 13
	 
	TextLabel328.Font = Enum.Font.SourceSansBold
	 
	TextLabel328.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel328.Parent = Frame354
	 
	local tween133 = TweenService:Create(Frame354, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween133:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame202 = Instance.new("Frame")
 
Frame202.Name = "AutoExec_BEE HUB BACK"
 
Frame202.LayoutOrder = 10
 
Frame202.Size = UDim2.new(1, -6, 0, 38)
 
Frame202.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame202.BackgroundTransparency = 0.2
 
Frame202.Parent = ScrollingFrame6
 
local UICorner305 = Instance.new("UICorner")
 
UICorner305.CornerRadius = UDim.new(0, 6)
 
UICorner305.Parent = Frame202
 
local UIStroke273 = Instance.new("UIStroke")
 
UIStroke273.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke273.Thickness = 1
 
UIStroke273.Parent = Frame202
 
local TextLabel175 = Instance.new("TextLabel")
 
TextLabel175.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel175.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel175.BackgroundTransparency = 1
 
TextLabel175.Text = "BEE HUB BACK"
 
TextLabel175.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel175.TextSize = 12
 
TextLabel175.Font = Enum.Font.SourceSansBold
 
TextLabel175.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel175.Parent = Frame202
 
local TextButton108 = Instance.new("TextButton")
 
TextButton108.Size = UDim2.new(0, 96, 0, 26)
 
TextButton108.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton108.TextSize = 11
 
TextButton108.Font = Enum.Font.SourceSansBold
 
TextButton108.Parent = Frame202
 
local UICorner306 = Instance.new("UICorner")
 
UICorner306.CornerRadius = UDim.new(0, 6)
 
UICorner306.Parent = TextButton108
 
local UIStroke274 = Instance.new("UIStroke")
 
UIStroke274.Thickness = 1
 
UIStroke274.Parent = Frame202
 
TextButton108.Text = "AUTO: OFF"
 
TextButton108.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton108.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke274.Color = Color3.fromRGB(60, 60, 60)
 
TextButton108.MouseButton1Click:Connect(function()
	 
	local json9 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json9)
	 
	TextButton108.Text = "AUTO: ON"
	 
	TextButton108.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton108.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke274.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame355 = Instance.new("Frame")
	 
	Frame355.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame355.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame355.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame355.BackgroundTransparency = 0.1
	 
	Frame355.BorderSizePixel = 0
	 
	Frame355.Parent = ScreenGui3
	 
	local UICorner514 = Instance.new("UICorner")
	 
	UICorner514.CornerRadius = UDim.new(0, 8)
	 
	UICorner514.Parent = Frame355
	 
	local UIStroke518 = Instance.new("UIStroke")
	 
	UIStroke518.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke518.Thickness = 1.2
	 
	UIStroke518.Parent = Frame355
	 
	local TextLabel329 = Instance.new("TextLabel")
	 
	TextLabel329.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel329.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel329.BackgroundTransparency = 1
	 
	TextLabel329.Text = "Auto-Exec Added: BEE HUB BACK"
	 
	TextLabel329.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel329.TextSize = 13
	 
	TextLabel329.Font = Enum.Font.SourceSansBold
	 
	TextLabel329.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel329.Parent = Frame355
	 
	local tween134 = TweenService:Create(Frame355, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween134:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame203 = Instance.new("Frame")
 
Frame203.Name = "AutoExec_BIGFROOT"
 
Frame203.LayoutOrder = 11
 
Frame203.Size = UDim2.new(1, -6, 0, 38)
 
Frame203.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame203.BackgroundTransparency = 0.2
 
Frame203.Parent = ScrollingFrame6
 
local UICorner307 = Instance.new("UICorner")
 
UICorner307.CornerRadius = UDim.new(0, 6)
 
UICorner307.Parent = Frame203
 
local UIStroke275 = Instance.new("UIStroke")
 
UIStroke275.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke275.Thickness = 1
 
UIStroke275.Parent = Frame203
 
local TextLabel176 = Instance.new("TextLabel")
 
TextLabel176.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel176.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel176.BackgroundTransparency = 1
 
TextLabel176.Text = "BIGFROOT"
 
TextLabel176.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel176.TextSize = 12
 
TextLabel176.Font = Enum.Font.SourceSansBold
 
TextLabel176.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel176.Parent = Frame203
 
local TextButton109 = Instance.new("TextButton")
 
TextButton109.Size = UDim2.new(0, 96, 0, 26)
 
TextButton109.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton109.TextSize = 11
 
TextButton109.Font = Enum.Font.SourceSansBold
 
TextButton109.Parent = Frame203
 
local UICorner308 = Instance.new("UICorner")
 
UICorner308.CornerRadius = UDim.new(0, 6)
 
UICorner308.Parent = TextButton109
 
local UIStroke276 = Instance.new("UIStroke")
 
UIStroke276.Thickness = 1
 
UIStroke276.Parent = Frame203
 
TextButton109.Text = "AUTO: OFF"
 
TextButton109.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton109.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke276.Color = Color3.fromRGB(60, 60, 60)
 
TextButton109.MouseButton1Click:Connect(function()
	 
	local json10 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true
})
	 
	writefile("SourcesHub_AutoExec.json", json10)
	 
	TextButton109.Text = "AUTO: ON"
	 
	TextButton109.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton109.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke276.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame356 = Instance.new("Frame")
	 
	Frame356.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame356.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame356.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame356.BackgroundTransparency = 0.1
	 
	Frame356.BorderSizePixel = 0
	 
	Frame356.Parent = ScreenGui3
	 
	local UICorner515 = Instance.new("UICorner")
	 
	UICorner515.CornerRadius = UDim.new(0, 8)
	 
	UICorner515.Parent = Frame356
	 
	local UIStroke519 = Instance.new("UIStroke")
	 
	UIStroke519.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke519.Thickness = 1.2
	 
	UIStroke519.Parent = Frame356
	 
	local TextLabel330 = Instance.new("TextLabel")
	 
	TextLabel330.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel330.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel330.BackgroundTransparency = 1
	 
	TextLabel330.Text = "Auto-Exec Added: BIGFROOT"
	 
	TextLabel330.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel330.TextSize = 13
	 
	TextLabel330.Font = Enum.Font.SourceSansBold
	 
	TextLabel330.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel330.Parent = Frame356
	 
	local tween135 = TweenService:Create(Frame356, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween135:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame204 = Instance.new("Frame")
 
Frame204.Name = "AutoExec_BK HUB"
 
Frame204.LayoutOrder = 12
 
Frame204.Size = UDim2.new(1, -6, 0, 38)
 
Frame204.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame204.BackgroundTransparency = 0.2
 
Frame204.Parent = ScrollingFrame6
 
local UICorner309 = Instance.new("UICorner")
 
UICorner309.CornerRadius = UDim.new(0, 6)
 
UICorner309.Parent = Frame204
 
local UIStroke277 = Instance.new("UIStroke")
 
UIStroke277.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke277.Thickness = 1
 
UIStroke277.Parent = Frame204
 
local TextLabel177 = Instance.new("TextLabel")
 
TextLabel177.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel177.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel177.BackgroundTransparency = 1
 
TextLabel177.Text = "BK HUB"
 
TextLabel177.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel177.TextSize = 12
 
TextLabel177.Font = Enum.Font.SourceSansBold
 
TextLabel177.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel177.Parent = Frame204
 
local TextButton110 = Instance.new("TextButton")
 
TextButton110.Size = UDim2.new(0, 96, 0, 26)
 
TextButton110.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton110.TextSize = 11
 
TextButton110.Font = Enum.Font.SourceSansBold
 
TextButton110.Parent = Frame204
 
local UICorner310 = Instance.new("UICorner")
 
UICorner310.CornerRadius = UDim.new(0, 6)
 
UICorner310.Parent = TextButton110
 
local UIStroke278 = Instance.new("UIStroke")
 
UIStroke278.Thickness = 1
 
UIStroke278.Parent = Frame204
 
TextButton110.Text = "AUTO: OFF"
 
TextButton110.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton110.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke278.Color = Color3.fromRGB(60, 60, 60)
 
TextButton110.MouseButton1Click:Connect(function()
	 
	local json11 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json11)
	 
	TextButton110.Text = "AUTO: ON"
	 
	TextButton110.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton110.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke278.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame357 = Instance.new("Frame")
	 
	Frame357.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame357.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame357.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame357.BackgroundTransparency = 0.1
	 
	Frame357.BorderSizePixel = 0
	 
	Frame357.Parent = ScreenGui3
	 
	local UICorner516 = Instance.new("UICorner")
	 
	UICorner516.CornerRadius = UDim.new(0, 8)
	 
	UICorner516.Parent = Frame357
	 
	local UIStroke520 = Instance.new("UIStroke")
	 
	UIStroke520.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke520.Thickness = 1.2
	 
	UIStroke520.Parent = Frame357
	 
	local TextLabel331 = Instance.new("TextLabel")
	 
	TextLabel331.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel331.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel331.BackgroundTransparency = 1
	 
	TextLabel331.Text = "Auto-Exec Added: BK HUB"
	 
	TextLabel331.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel331.TextSize = 13
	 
	TextLabel331.Font = Enum.Font.SourceSansBold
	 
	TextLabel331.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel331.Parent = Frame357
	 
	local tween136 = TweenService:Create(Frame357, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween136:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame205 = Instance.new("Frame")
 
Frame205.Name = "AutoExec_BLYXO HUB"
 
Frame205.LayoutOrder = 13
 
Frame205.Size = UDim2.new(1, -6, 0, 38)
 
Frame205.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame205.BackgroundTransparency = 0.2
 
Frame205.Parent = ScrollingFrame6
 
local UICorner311 = Instance.new("UICorner")
 
UICorner311.CornerRadius = UDim.new(0, 6)
 
UICorner311.Parent = Frame205
 
local UIStroke279 = Instance.new("UIStroke")
 
UIStroke279.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke279.Thickness = 1
 
UIStroke279.Parent = Frame205
 
local TextLabel178 = Instance.new("TextLabel")
 
TextLabel178.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel178.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel178.BackgroundTransparency = 1
 
TextLabel178.Text = "BLYXO HUB"
 
TextLabel178.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel178.TextSize = 12
 
TextLabel178.Font = Enum.Font.SourceSansBold
 
TextLabel178.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel178.Parent = Frame205
 
local TextButton111 = Instance.new("TextButton")
 
TextButton111.Size = UDim2.new(0, 96, 0, 26)
 
TextButton111.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton111.TextSize = 11
 
TextButton111.Font = Enum.Font.SourceSansBold
 
TextButton111.Parent = Frame205
 
local UICorner312 = Instance.new("UICorner")
 
UICorner312.CornerRadius = UDim.new(0, 6)
 
UICorner312.Parent = TextButton111
 
local UIStroke280 = Instance.new("UIStroke")
 
UIStroke280.Thickness = 1
 
UIStroke280.Parent = Frame205
 
TextButton111.Text = "AUTO: OFF"
 
TextButton111.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton111.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke280.Color = Color3.fromRGB(60, 60, 60)
 
TextButton111.MouseButton1Click:Connect(function()
	 
	local json12 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json12)
	 
	TextButton111.Text = "AUTO: ON"
	 
	TextButton111.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton111.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke280.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame358 = Instance.new("Frame")
	 
	Frame358.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame358.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame358.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame358.BackgroundTransparency = 0.1
	 
	Frame358.BorderSizePixel = 0
	 
	Frame358.Parent = ScreenGui3
	 
	local UICorner517 = Instance.new("UICorner")
	 
	UICorner517.CornerRadius = UDim.new(0, 8)
	 
	UICorner517.Parent = Frame358
	 
	local UIStroke521 = Instance.new("UIStroke")
	 
	UIStroke521.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke521.Thickness = 1.2
	 
	UIStroke521.Parent = Frame358
	 
	local TextLabel332 = Instance.new("TextLabel")
	 
	TextLabel332.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel332.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel332.BackgroundTransparency = 1
	 
	TextLabel332.Text = "Auto-Exec Added: BLYXO HUB"
	 
	TextLabel332.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel332.TextSize = 13
	 
	TextLabel332.Font = Enum.Font.SourceSansBold
	 
	TextLabel332.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel332.Parent = Frame358
	 
	local tween137 = TweenService:Create(Frame358, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween137:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame206 = Instance.new("Frame")
 
Frame206.Name = "AutoExec_CHILLI HUB"
 
Frame206.LayoutOrder = 14
 
Frame206.Size = UDim2.new(1, -6, 0, 38)
 
Frame206.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame206.BackgroundTransparency = 0.2
 
Frame206.Parent = ScrollingFrame6
 
local UICorner313 = Instance.new("UICorner")
 
UICorner313.CornerRadius = UDim.new(0, 6)
 
UICorner313.Parent = Frame206
 
local UIStroke281 = Instance.new("UIStroke")
 
UIStroke281.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke281.Thickness = 1
 
UIStroke281.Parent = Frame206
 
local TextLabel179 = Instance.new("TextLabel")
 
TextLabel179.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel179.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel179.BackgroundTransparency = 1
 
TextLabel179.Text = "CHILLI HUB"
 
TextLabel179.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel179.TextSize = 12
 
TextLabel179.Font = Enum.Font.SourceSansBold
 
TextLabel179.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel179.Parent = Frame206
 
local TextButton112 = Instance.new("TextButton")
 
TextButton112.Size = UDim2.new(0, 96, 0, 26)
 
TextButton112.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton112.TextSize = 11
 
TextButton112.Font = Enum.Font.SourceSansBold
 
TextButton112.Parent = Frame206
 
local UICorner314 = Instance.new("UICorner")
 
UICorner314.CornerRadius = UDim.new(0, 6)
 
UICorner314.Parent = TextButton112
 
local UIStroke282 = Instance.new("UIStroke")
 
UIStroke282.Thickness = 1
 
UIStroke282.Parent = Frame206
 
TextButton112.Text = "AUTO: OFF"
 
TextButton112.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton112.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke282.Color = Color3.fromRGB(60, 60, 60)
 
TextButton112.MouseButton1Click:Connect(function()
	 
	local json13 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json13)
	 
	TextButton112.Text = "AUTO: ON"
	 
	TextButton112.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton112.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke282.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame359 = Instance.new("Frame")
	 
	Frame359.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame359.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame359.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame359.BackgroundTransparency = 0.1
	 
	Frame359.BorderSizePixel = 0
	 
	Frame359.Parent = ScreenGui3
	 
	local UICorner518 = Instance.new("UICorner")
	 
	UICorner518.CornerRadius = UDim.new(0, 8)
	 
	UICorner518.Parent = Frame359
	 
	local UIStroke522 = Instance.new("UIStroke")
	 
	UIStroke522.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke522.Thickness = 1.2
	 
	UIStroke522.Parent = Frame359
	 
	local TextLabel333 = Instance.new("TextLabel")
	 
	TextLabel333.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel333.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel333.BackgroundTransparency = 1
	 
	TextLabel333.Text = "Auto-Exec Added: CHILLI HUB"
	 
	TextLabel333.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel333.TextSize = 13
	 
	TextLabel333.Font = Enum.Font.SourceSansBold
	 
	TextLabel333.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel333.Parent = Frame359
	 
	local tween138 = TweenService:Create(Frame359, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween138:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame207 = Instance.new("Frame")
 
Frame207.Name = "AutoExec_CLOVER HUB"
 
Frame207.LayoutOrder = 15
 
Frame207.Size = UDim2.new(1, -6, 0, 38)
 
Frame207.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame207.BackgroundTransparency = 0.2
 
Frame207.Parent = ScrollingFrame6
 
local UICorner315 = Instance.new("UICorner")
 
UICorner315.CornerRadius = UDim.new(0, 6)
 
UICorner315.Parent = Frame207
 
local UIStroke283 = Instance.new("UIStroke")
 
UIStroke283.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke283.Thickness = 1
 
UIStroke283.Parent = Frame207
 
local TextLabel180 = Instance.new("TextLabel")
 
TextLabel180.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel180.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel180.BackgroundTransparency = 1
 
TextLabel180.Text = "CLOVER HUB"
 
TextLabel180.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel180.TextSize = 12
 
TextLabel180.Font = Enum.Font.SourceSansBold
 
TextLabel180.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel180.Parent = Frame207
 
local TextButton113 = Instance.new("TextButton")
 
TextButton113.Size = UDim2.new(0, 96, 0, 26)
 
TextButton113.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton113.TextSize = 11
 
TextButton113.Font = Enum.Font.SourceSansBold
 
TextButton113.Parent = Frame207
 
local UICorner316 = Instance.new("UICorner")
 
UICorner316.CornerRadius = UDim.new(0, 6)
 
UICorner316.Parent = TextButton113
 
local UIStroke284 = Instance.new("UIStroke")
 
UIStroke284.Thickness = 1
 
UIStroke284.Parent = Frame207
 
TextButton113.Text = "AUTO: OFF"
 
TextButton113.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton113.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke284.Color = Color3.fromRGB(60, 60, 60)
 
TextButton113.MouseButton1Click:Connect(function()
	 
	local json14 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json14)
	 
	TextButton113.Text = "AUTO: ON"
	 
	TextButton113.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton113.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke284.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame360 = Instance.new("Frame")
	 
	Frame360.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame360.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame360.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame360.BackgroundTransparency = 0.1
	 
	Frame360.BorderSizePixel = 0
	 
	Frame360.Parent = ScreenGui3
	 
	local UICorner519 = Instance.new("UICorner")
	 
	UICorner519.CornerRadius = UDim.new(0, 8)
	 
	UICorner519.Parent = Frame360
	 
	local UIStroke523 = Instance.new("UIStroke")
	 
	UIStroke523.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke523.Thickness = 1.2
	 
	UIStroke523.Parent = Frame360
	 
	local TextLabel334 = Instance.new("TextLabel")
	 
	TextLabel334.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel334.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel334.BackgroundTransparency = 1
	 
	TextLabel334.Text = "Auto-Exec Added: CLOVER HUB"
	 
	TextLabel334.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel334.TextSize = 13
	 
	TextLabel334.Font = Enum.Font.SourceSansBold
	 
	TextLabel334.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel334.Parent = Frame360
	 
	local tween139 = TweenService:Create(Frame360, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween139:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame208 = Instance.new("Frame")
 
Frame208.Name = "AutoExec_DECODE HUB"
 
Frame208.LayoutOrder = 16
 
Frame208.Size = UDim2.new(1, -6, 0, 38)
 
Frame208.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame208.BackgroundTransparency = 0.2
 
Frame208.Parent = ScrollingFrame6
 
local UICorner317 = Instance.new("UICorner")
 
UICorner317.CornerRadius = UDim.new(0, 6)
 
UICorner317.Parent = Frame208
 
local UIStroke285 = Instance.new("UIStroke")
 
UIStroke285.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke285.Thickness = 1
 
UIStroke285.Parent = Frame208
 
local TextLabel181 = Instance.new("TextLabel")
 
TextLabel181.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel181.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel181.BackgroundTransparency = 1
 
TextLabel181.Text = "DECODE HUB"
 
TextLabel181.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel181.TextSize = 12
 
TextLabel181.Font = Enum.Font.SourceSansBold
 
TextLabel181.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel181.Parent = Frame208
 
local TextButton114 = Instance.new("TextButton")
 
TextButton114.Size = UDim2.new(0, 96, 0, 26)
 
TextButton114.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton114.TextSize = 11
 
TextButton114.Font = Enum.Font.SourceSansBold
 
TextButton114.Parent = Frame208
 
local UICorner318 = Instance.new("UICorner")
 
UICorner318.CornerRadius = UDim.new(0, 6)
 
UICorner318.Parent = TextButton114
 
local UIStroke286 = Instance.new("UIStroke")
 
UIStroke286.Thickness = 1
 
UIStroke286.Parent = Frame208
 
TextButton114.Text = "AUTO: OFF"
 
TextButton114.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton114.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke286.Color = Color3.fromRGB(60, 60, 60)
 
TextButton114.MouseButton1Click:Connect(function()
	 
	local json15 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json15)
	 
	TextButton114.Text = "AUTO: ON"
	 
	TextButton114.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton114.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke286.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame361 = Instance.new("Frame")
	 
	Frame361.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame361.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame361.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame361.BackgroundTransparency = 0.1
	 
	Frame361.BorderSizePixel = 0
	 
	Frame361.Parent = ScreenGui3
	 
	local UICorner520 = Instance.new("UICorner")
	 
	UICorner520.CornerRadius = UDim.new(0, 8)
	 
	UICorner520.Parent = Frame361
	 
	local UIStroke524 = Instance.new("UIStroke")
	 
	UIStroke524.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke524.Thickness = 1.2
	 
	UIStroke524.Parent = Frame361
	 
	local TextLabel335 = Instance.new("TextLabel")
	 
	TextLabel335.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel335.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel335.BackgroundTransparency = 1
	 
	TextLabel335.Text = "Auto-Exec Added: DECODE HUB"
	 
	TextLabel335.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel335.TextSize = 13
	 
	TextLabel335.Font = Enum.Font.SourceSansBold
	 
	TextLabel335.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel335.Parent = Frame361
	 
	local tween140 = TweenService:Create(Frame361, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween140:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame209 = Instance.new("Frame")
 
Frame209.Name = "AutoExec_FLOW HUB"
 
Frame209.LayoutOrder = 17
 
Frame209.Size = UDim2.new(1, -6, 0, 38)
 
Frame209.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame209.BackgroundTransparency = 0.2
 
Frame209.Parent = ScrollingFrame6
 
local UICorner319 = Instance.new("UICorner")
 
UICorner319.CornerRadius = UDim.new(0, 6)
 
UICorner319.Parent = Frame209
 
local UIStroke287 = Instance.new("UIStroke")
 
UIStroke287.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke287.Thickness = 1
 
UIStroke287.Parent = Frame209
 
local TextLabel182 = Instance.new("TextLabel")
 
TextLabel182.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel182.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel182.BackgroundTransparency = 1
 
TextLabel182.Text = "FLOW HUB"
 
TextLabel182.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel182.TextSize = 12
 
TextLabel182.Font = Enum.Font.SourceSansBold
 
TextLabel182.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel182.Parent = Frame209
 
local TextButton115 = Instance.new("TextButton")
 
TextButton115.Size = UDim2.new(0, 96, 0, 26)
 
TextButton115.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton115.TextSize = 11
 
TextButton115.Font = Enum.Font.SourceSansBold
 
TextButton115.Parent = Frame209
 
local UICorner320 = Instance.new("UICorner")
 
UICorner320.CornerRadius = UDim.new(0, 6)
 
UICorner320.Parent = TextButton115
 
local UIStroke288 = Instance.new("UIStroke")
 
UIStroke288.Thickness = 1
 
UIStroke288.Parent = Frame209
 
TextButton115.Text = "AUTO: OFF"
 
TextButton115.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton115.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke288.Color = Color3.fromRGB(60, 60, 60)
 
TextButton115.MouseButton1Click:Connect(function()
	 
	local json16 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json16)
	 
	TextButton115.Text = "AUTO: ON"
	 
	TextButton115.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton115.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke288.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame362 = Instance.new("Frame")
	 
	Frame362.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame362.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame362.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame362.BackgroundTransparency = 0.1
	 
	Frame362.BorderSizePixel = 0
	 
	Frame362.Parent = ScreenGui3
	 
	local UICorner521 = Instance.new("UICorner")
	 
	UICorner521.CornerRadius = UDim.new(0, 8)
	 
	UICorner521.Parent = Frame362
	 
	local UIStroke525 = Instance.new("UIStroke")
	 
	UIStroke525.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke525.Thickness = 1.2
	 
	UIStroke525.Parent = Frame362
	 
	local TextLabel336 = Instance.new("TextLabel")
	 
	TextLabel336.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel336.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel336.BackgroundTransparency = 1
	 
	TextLabel336.Text = "Auto-Exec Added: FLOW HUB"
	 
	TextLabel336.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel336.TextSize = 13
	 
	TextLabel336.Font = Enum.Font.SourceSansBold
	 
	TextLabel336.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel336.Parent = Frame362
	 
	local tween141 = TweenService:Create(Frame362, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween141:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame210 = Instance.new("Frame")
 
Frame210.Name = "AutoExec_FOXNAME HUB"
 
Frame210.LayoutOrder = 18
 
Frame210.Size = UDim2.new(1, -6, 0, 38)
 
Frame210.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame210.BackgroundTransparency = 0.2
 
Frame210.Parent = ScrollingFrame6
 
local UICorner321 = Instance.new("UICorner")
 
UICorner321.CornerRadius = UDim.new(0, 6)
 
UICorner321.Parent = Frame210
 
local UIStroke289 = Instance.new("UIStroke")
 
UIStroke289.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke289.Thickness = 1
 
UIStroke289.Parent = Frame210
 
local TextLabel183 = Instance.new("TextLabel")
 
TextLabel183.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel183.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel183.BackgroundTransparency = 1
 
TextLabel183.Text = "FOXNAME HUB"
 
TextLabel183.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel183.TextSize = 12
 
TextLabel183.Font = Enum.Font.SourceSansBold
 
TextLabel183.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel183.Parent = Frame210
 
local TextButton116 = Instance.new("TextButton")
 
TextButton116.Size = UDim2.new(0, 96, 0, 26)
 
TextButton116.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton116.TextSize = 11
 
TextButton116.Font = Enum.Font.SourceSansBold
 
TextButton116.Parent = Frame210
 
local UICorner322 = Instance.new("UICorner")
 
UICorner322.CornerRadius = UDim.new(0, 6)
 
UICorner322.Parent = TextButton116
 
local UIStroke290 = Instance.new("UIStroke")
 
UIStroke290.Thickness = 1
 
UIStroke290.Parent = Frame210
 
TextButton116.Text = "AUTO: OFF"
 
TextButton116.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton116.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke290.Color = Color3.fromRGB(60, 60, 60)
 
TextButton116.MouseButton1Click:Connect(function()
	 
	local json17 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json17)
	 
	TextButton116.Text = "AUTO: ON"
	 
	TextButton116.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton116.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke290.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame363 = Instance.new("Frame")
	 
	Frame363.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame363.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame363.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame363.BackgroundTransparency = 0.1
	 
	Frame363.BorderSizePixel = 0
	 
	Frame363.Parent = ScreenGui3
	 
	local UICorner522 = Instance.new("UICorner")
	 
	UICorner522.CornerRadius = UDim.new(0, 8)
	 
	UICorner522.Parent = Frame363
	 
	local UIStroke526 = Instance.new("UIStroke")
	 
	UIStroke526.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke526.Thickness = 1.2
	 
	UIStroke526.Parent = Frame363
	 
	local TextLabel337 = Instance.new("TextLabel")
	 
	TextLabel337.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel337.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel337.BackgroundTransparency = 1
	 
	TextLabel337.Text = "Auto-Exec Added: FOXNAME HUB"
	 
	TextLabel337.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel337.TextSize = 13
	 
	TextLabel337.Font = Enum.Font.SourceSansBold
	 
	TextLabel337.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel337.Parent = Frame363
	 
	local tween142 = TweenService:Create(Frame363, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween142:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame211 = Instance.new("Frame")
 
Frame211.Name = "AutoExec_FYNESSED HUB"
 
Frame211.LayoutOrder = 19
 
Frame211.Size = UDim2.new(1, -6, 0, 38)
 
Frame211.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame211.BackgroundTransparency = 0.2
 
Frame211.Parent = ScrollingFrame6
 
local UICorner323 = Instance.new("UICorner")
 
UICorner323.CornerRadius = UDim.new(0, 6)
 
UICorner323.Parent = Frame211
 
local UIStroke291 = Instance.new("UIStroke")
 
UIStroke291.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke291.Thickness = 1
 
UIStroke291.Parent = Frame211
 
local TextLabel184 = Instance.new("TextLabel")
 
TextLabel184.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel184.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel184.BackgroundTransparency = 1
 
TextLabel184.Text = "FYNESSED HUB"
 
TextLabel184.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel184.TextSize = 12
 
TextLabel184.Font = Enum.Font.SourceSansBold
 
TextLabel184.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel184.Parent = Frame211
 
local TextButton117 = Instance.new("TextButton")
 
TextButton117.Size = UDim2.new(0, 96, 0, 26)
 
TextButton117.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton117.TextSize = 11
 
TextButton117.Font = Enum.Font.SourceSansBold
 
TextButton117.Parent = Frame211
 
local UICorner324 = Instance.new("UICorner")
 
UICorner324.CornerRadius = UDim.new(0, 6)
 
UICorner324.Parent = TextButton117
 
local UIStroke292 = Instance.new("UIStroke")
 
UIStroke292.Thickness = 1
 
UIStroke292.Parent = Frame211
 
TextButton117.Text = "AUTO: OFF"
 
TextButton117.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton117.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke292.Color = Color3.fromRGB(60, 60, 60)
 
TextButton117.MouseButton1Click:Connect(function()
	 
	local json18 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json18)
	 
	TextButton117.Text = "AUTO: ON"
	 
	TextButton117.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton117.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke292.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame364 = Instance.new("Frame")
	 
	Frame364.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame364.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame364.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame364.BackgroundTransparency = 0.1
	 
	Frame364.BorderSizePixel = 0
	 
	Frame364.Parent = ScreenGui3
	 
	local UICorner523 = Instance.new("UICorner")
	 
	UICorner523.CornerRadius = UDim.new(0, 8)
	 
	UICorner523.Parent = Frame364
	 
	local UIStroke527 = Instance.new("UIStroke")
	 
	UIStroke527.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke527.Thickness = 1.2
	 
	UIStroke527.Parent = Frame364
	 
	local TextLabel338 = Instance.new("TextLabel")
	 
	TextLabel338.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel338.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel338.BackgroundTransparency = 1
	 
	TextLabel338.Text = "Auto-Exec Added: FYNESSED HUB"
	 
	TextLabel338.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel338.TextSize = 13
	 
	TextLabel338.Font = Enum.Font.SourceSansBold
	 
	TextLabel338.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel338.Parent = Frame364
	 
	local tween143 = TweenService:Create(Frame364, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween143:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame212 = Instance.new("Frame")
 
Frame212.Name = "AutoExec_FYY HUB"
 
Frame212.LayoutOrder = 20
 
Frame212.Size = UDim2.new(1, -6, 0, 38)
 
Frame212.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame212.BackgroundTransparency = 0.2
 
Frame212.Parent = ScrollingFrame6
 
local UICorner325 = Instance.new("UICorner")
 
UICorner325.CornerRadius = UDim.new(0, 6)
 
UICorner325.Parent = Frame212
 
local UIStroke293 = Instance.new("UIStroke")
 
UIStroke293.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke293.Thickness = 1
 
UIStroke293.Parent = Frame212
 
local TextLabel185 = Instance.new("TextLabel")
 
TextLabel185.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel185.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel185.BackgroundTransparency = 1
 
TextLabel185.Text = "FYY HUB"
 
TextLabel185.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel185.TextSize = 12
 
TextLabel185.Font = Enum.Font.SourceSansBold
 
TextLabel185.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel185.Parent = Frame212
 
local TextButton118 = Instance.new("TextButton")
 
TextButton118.Size = UDim2.new(0, 96, 0, 26)
 
TextButton118.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton118.TextSize = 11
 
TextButton118.Font = Enum.Font.SourceSansBold
 
TextButton118.Parent = Frame212
 
local UICorner326 = Instance.new("UICorner")
 
UICorner326.CornerRadius = UDim.new(0, 6)
 
UICorner326.Parent = TextButton118
 
local UIStroke294 = Instance.new("UIStroke")
 
UIStroke294.Thickness = 1
 
UIStroke294.Parent = Frame212
 
TextButton118.Text = "AUTO: OFF"
 
TextButton118.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton118.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke294.Color = Color3.fromRGB(60, 60, 60)
 
TextButton118.MouseButton1Click:Connect(function()
	 
	local json19 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json19)
	 
	TextButton118.Text = "AUTO: ON"
	 
	TextButton118.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton118.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke294.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame365 = Instance.new("Frame")
	 
	Frame365.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame365.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame365.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame365.BackgroundTransparency = 0.1
	 
	Frame365.BorderSizePixel = 0
	 
	Frame365.Parent = ScreenGui3
	 
	local UICorner524 = Instance.new("UICorner")
	 
	UICorner524.CornerRadius = UDim.new(0, 8)
	 
	UICorner524.Parent = Frame365
	 
	local UIStroke528 = Instance.new("UIStroke")
	 
	UIStroke528.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke528.Thickness = 1.2
	 
	UIStroke528.Parent = Frame365
	 
	local TextLabel339 = Instance.new("TextLabel")
	 
	TextLabel339.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel339.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel339.BackgroundTransparency = 1
	 
	TextLabel339.Text = "Auto-Exec Added: FYY HUB"
	 
	TextLabel339.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel339.TextSize = 13
	 
	TextLabel339.Font = Enum.Font.SourceSansBold
	 
	TextLabel339.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel339.Parent = Frame365
	 
	local tween144 = TweenService:Create(Frame365, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween144:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame213 = Instance.new("Frame")
 
Frame213.Name = "AutoExec_GS HUB"
 
Frame213.LayoutOrder = 21
 
Frame213.Size = UDim2.new(1, -6, 0, 38)
 
Frame213.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame213.BackgroundTransparency = 0.2
 
Frame213.Parent = ScrollingFrame6
 
local UICorner327 = Instance.new("UICorner")
 
UICorner327.CornerRadius = UDim.new(0, 6)
 
UICorner327.Parent = Frame213
 
local UIStroke295 = Instance.new("UIStroke")
 
UIStroke295.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke295.Thickness = 1
 
UIStroke295.Parent = Frame213
 
local TextLabel186 = Instance.new("TextLabel")
 
TextLabel186.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel186.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel186.BackgroundTransparency = 1
 
TextLabel186.Text = "GS HUB"
 
TextLabel186.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel186.TextSize = 12
 
TextLabel186.Font = Enum.Font.SourceSansBold
 
TextLabel186.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel186.Parent = Frame213
 
local TextButton119 = Instance.new("TextButton")
 
TextButton119.Size = UDim2.new(0, 96, 0, 26)
 
TextButton119.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton119.TextSize = 11
 
TextButton119.Font = Enum.Font.SourceSansBold
 
TextButton119.Parent = Frame213
 
local UICorner328 = Instance.new("UICorner")
 
UICorner328.CornerRadius = UDim.new(0, 6)
 
UICorner328.Parent = TextButton119
 
local UIStroke296 = Instance.new("UIStroke")
 
UIStroke296.Thickness = 1
 
UIStroke296.Parent = Frame213
 
TextButton119.Text = "AUTO: OFF"
 
TextButton119.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton119.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke296.Color = Color3.fromRGB(60, 60, 60)
 
TextButton119.MouseButton1Click:Connect(function()
	 
	local json20 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json20)
	 
	TextButton119.Text = "AUTO: ON"
	 
	TextButton119.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton119.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke296.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame366 = Instance.new("Frame")
	 
	Frame366.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame366.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame366.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame366.BackgroundTransparency = 0.1
	 
	Frame366.BorderSizePixel = 0
	 
	Frame366.Parent = ScreenGui3
	 
	local UICorner525 = Instance.new("UICorner")
	 
	UICorner525.CornerRadius = UDim.new(0, 8)
	 
	UICorner525.Parent = Frame366
	 
	local UIStroke529 = Instance.new("UIStroke")
	 
	UIStroke529.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke529.Thickness = 1.2
	 
	UIStroke529.Parent = Frame366
	 
	local TextLabel340 = Instance.new("TextLabel")
	 
	TextLabel340.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel340.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel340.BackgroundTransparency = 1
	 
	TextLabel340.Text = "Auto-Exec Added: GS HUB"
	 
	TextLabel340.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel340.TextSize = 13
	 
	TextLabel340.Font = Enum.Font.SourceSansBold
	 
	TextLabel340.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel340.Parent = Frame366
	 
	local tween145 = TweenService:Create(Frame366, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween145:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame214 = Instance.new("Frame")
 
Frame214.Name = "AutoExec_HOSHI HUB"
 
Frame214.LayoutOrder = 22
 
Frame214.Size = UDim2.new(1, -6, 0, 38)
 
Frame214.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame214.BackgroundTransparency = 0.2
 
Frame214.Parent = ScrollingFrame6
 
local UICorner329 = Instance.new("UICorner")
 
UICorner329.CornerRadius = UDim.new(0, 6)
 
UICorner329.Parent = Frame214
 
local UIStroke297 = Instance.new("UIStroke")
 
UIStroke297.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke297.Thickness = 1
 
UIStroke297.Parent = Frame214
 
local TextLabel187 = Instance.new("TextLabel")
 
TextLabel187.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel187.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel187.BackgroundTransparency = 1
 
TextLabel187.Text = "HOSHI HUB"
 
TextLabel187.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel187.TextSize = 12
 
TextLabel187.Font = Enum.Font.SourceSansBold
 
TextLabel187.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel187.Parent = Frame214
 
local TextButton120 = Instance.new("TextButton")
 
TextButton120.Size = UDim2.new(0, 96, 0, 26)
 
TextButton120.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton120.TextSize = 11
 
TextButton120.Font = Enum.Font.SourceSansBold
 
TextButton120.Parent = Frame214
 
local UICorner330 = Instance.new("UICorner")
 
UICorner330.CornerRadius = UDim.new(0, 6)
 
UICorner330.Parent = TextButton120
 
local UIStroke298 = Instance.new("UIStroke")
 
UIStroke298.Thickness = 1
 
UIStroke298.Parent = Frame214
 
TextButton120.Text = "AUTO: OFF"
 
TextButton120.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton120.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke298.Color = Color3.fromRGB(60, 60, 60)
 
TextButton120.MouseButton1Click:Connect(function()
	 
	local json21 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json21)
	 
	TextButton120.Text = "AUTO: ON"
	 
	TextButton120.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton120.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke298.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame367 = Instance.new("Frame")
	 
	Frame367.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame367.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame367.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame367.BackgroundTransparency = 0.1
	 
	Frame367.BorderSizePixel = 0
	 
	Frame367.Parent = ScreenGui3
	 
	local UICorner526 = Instance.new("UICorner")
	 
	UICorner526.CornerRadius = UDim.new(0, 8)
	 
	UICorner526.Parent = Frame367
	 
	local UIStroke530 = Instance.new("UIStroke")
	 
	UIStroke530.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke530.Thickness = 1.2
	 
	UIStroke530.Parent = Frame367
	 
	local TextLabel341 = Instance.new("TextLabel")
	 
	TextLabel341.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel341.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel341.BackgroundTransparency = 1
	 
	TextLabel341.Text = "Auto-Exec Added: HOSHI HUB"
	 
	TextLabel341.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel341.TextSize = 13
	 
	TextLabel341.Font = Enum.Font.SourceSansBold
	 
	TextLabel341.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel341.Parent = Frame367
	 
	local tween146 = TweenService:Create(Frame367, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween146:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame215 = Instance.new("Frame")
 
Frame215.Name = "AutoExec_JINHUB"
 
Frame215.LayoutOrder = 23
 
Frame215.Size = UDim2.new(1, -6, 0, 38)
 
Frame215.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame215.BackgroundTransparency = 0.2
 
Frame215.Parent = ScrollingFrame6
 
local UICorner331 = Instance.new("UICorner")
 
UICorner331.CornerRadius = UDim.new(0, 6)
 
UICorner331.Parent = Frame215
 
local UIStroke299 = Instance.new("UIStroke")
 
UIStroke299.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke299.Thickness = 1
 
UIStroke299.Parent = Frame215
 
local TextLabel188 = Instance.new("TextLabel")
 
TextLabel188.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel188.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel188.BackgroundTransparency = 1
 
TextLabel188.Text = "JINHUB"
 
TextLabel188.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel188.TextSize = 12
 
TextLabel188.Font = Enum.Font.SourceSansBold
 
TextLabel188.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel188.Parent = Frame215
 
local TextButton121 = Instance.new("TextButton")
 
TextButton121.Size = UDim2.new(0, 96, 0, 26)
 
TextButton121.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton121.TextSize = 11
 
TextButton121.Font = Enum.Font.SourceSansBold
 
TextButton121.Parent = Frame215
 
local UICorner332 = Instance.new("UICorner")
 
UICorner332.CornerRadius = UDim.new(0, 6)
 
UICorner332.Parent = TextButton121
 
local UIStroke300 = Instance.new("UIStroke")
 
UIStroke300.Thickness = 1
 
UIStroke300.Parent = Frame215
 
TextButton121.Text = "AUTO: OFF"
 
TextButton121.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton121.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke300.Color = Color3.fromRGB(60, 60, 60)
 
TextButton121.MouseButton1Click:Connect(function()
	 
	local json22 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true
})
	 
	writefile("SourcesHub_AutoExec.json", json22)
	 
	TextButton121.Text = "AUTO: ON"
	 
	TextButton121.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton121.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke300.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame368 = Instance.new("Frame")
	 
	Frame368.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame368.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame368.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame368.BackgroundTransparency = 0.1
	 
	Frame368.BorderSizePixel = 0
	 
	Frame368.Parent = ScreenGui3
	 
	local UICorner527 = Instance.new("UICorner")
	 
	UICorner527.CornerRadius = UDim.new(0, 8)
	 
	UICorner527.Parent = Frame368
	 
	local UIStroke531 = Instance.new("UIStroke")
	 
	UIStroke531.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke531.Thickness = 1.2
	 
	UIStroke531.Parent = Frame368
	 
	local TextLabel342 = Instance.new("TextLabel")
	 
	TextLabel342.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel342.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel342.BackgroundTransparency = 1
	 
	TextLabel342.Text = "Auto-Exec Added: JINHUB"
	 
	TextLabel342.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel342.TextSize = 13
	 
	TextLabel342.Font = Enum.Font.SourceSansBold
	 
	TextLabel342.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel342.Parent = Frame368
	 
	local tween147 = TweenService:Create(Frame368, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween147:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame216 = Instance.new("Frame")
 
Frame216.Name = "AutoExec_KALI HUB"
 
Frame216.LayoutOrder = 24
 
Frame216.Size = UDim2.new(1, -6, 0, 38)
 
Frame216.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame216.BackgroundTransparency = 0.2
 
Frame216.Parent = ScrollingFrame6
 
local UICorner333 = Instance.new("UICorner")
 
UICorner333.CornerRadius = UDim.new(0, 6)
 
UICorner333.Parent = Frame216
 
local UIStroke301 = Instance.new("UIStroke")
 
UIStroke301.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke301.Thickness = 1
 
UIStroke301.Parent = Frame216
 
local TextLabel189 = Instance.new("TextLabel")
 
TextLabel189.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel189.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel189.BackgroundTransparency = 1
 
TextLabel189.Text = "KALI HUB"
 
TextLabel189.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel189.TextSize = 12
 
TextLabel189.Font = Enum.Font.SourceSansBold
 
TextLabel189.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel189.Parent = Frame216
 
local TextButton122 = Instance.new("TextButton")
 
TextButton122.Size = UDim2.new(0, 96, 0, 26)
 
TextButton122.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton122.TextSize = 11
 
TextButton122.Font = Enum.Font.SourceSansBold
 
TextButton122.Parent = Frame216
 
local UICorner334 = Instance.new("UICorner")
 
UICorner334.CornerRadius = UDim.new(0, 6)
 
UICorner334.Parent = TextButton122
 
local UIStroke302 = Instance.new("UIStroke")
 
UIStroke302.Thickness = 1
 
UIStroke302.Parent = Frame216
 
TextButton122.Text = "AUTO: OFF"
 
TextButton122.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton122.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke302.Color = Color3.fromRGB(60, 60, 60)
 
TextButton122.MouseButton1Click:Connect(function()
	 
	local json23 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json23)
	 
	TextButton122.Text = "AUTO: ON"
	 
	TextButton122.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton122.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke302.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame369 = Instance.new("Frame")
	 
	Frame369.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame369.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame369.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame369.BackgroundTransparency = 0.1
	 
	Frame369.BorderSizePixel = 0
	 
	Frame369.Parent = ScreenGui3
	 
	local UICorner528 = Instance.new("UICorner")
	 
	UICorner528.CornerRadius = UDim.new(0, 8)
	 
	UICorner528.Parent = Frame369
	 
	local UIStroke532 = Instance.new("UIStroke")
	 
	UIStroke532.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke532.Thickness = 1.2
	 
	UIStroke532.Parent = Frame369
	 
	local TextLabel343 = Instance.new("TextLabel")
	 
	TextLabel343.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel343.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel343.BackgroundTransparency = 1
	 
	TextLabel343.Text = "Auto-Exec Added: KALI HUB"
	 
	TextLabel343.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel343.TextSize = 13
	 
	TextLabel343.Font = Enum.Font.SourceSansBold
	 
	TextLabel343.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel343.Parent = Frame369
	 
	local tween148 = TweenService:Create(Frame369, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween148:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame217 = Instance.new("Frame")
 
Frame217.Name = "AutoExec_KEXXE HUB"
 
Frame217.LayoutOrder = 25
 
Frame217.Size = UDim2.new(1, -6, 0, 38)
 
Frame217.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame217.BackgroundTransparency = 0.2
 
Frame217.Parent = ScrollingFrame6
 
local UICorner335 = Instance.new("UICorner")
 
UICorner335.CornerRadius = UDim.new(0, 6)
 
UICorner335.Parent = Frame217
 
local UIStroke303 = Instance.new("UIStroke")
 
UIStroke303.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke303.Thickness = 1
 
UIStroke303.Parent = Frame217
 
local TextLabel190 = Instance.new("TextLabel")
 
TextLabel190.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel190.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel190.BackgroundTransparency = 1
 
TextLabel190.Text = "KEXXE HUB"
 
TextLabel190.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel190.TextSize = 12
 
TextLabel190.Font = Enum.Font.SourceSansBold
 
TextLabel190.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel190.Parent = Frame217
 
local TextButton123 = Instance.new("TextButton")
 
TextButton123.Size = UDim2.new(0, 96, 0, 26)
 
TextButton123.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton123.TextSize = 11
 
TextButton123.Font = Enum.Font.SourceSansBold
 
TextButton123.Parent = Frame217
 
local UICorner336 = Instance.new("UICorner")
 
UICorner336.CornerRadius = UDim.new(0, 6)
 
UICorner336.Parent = TextButton123
 
local UIStroke304 = Instance.new("UIStroke")
 
UIStroke304.Thickness = 1
 
UIStroke304.Parent = Frame217
 
TextButton123.Text = "AUTO: OFF"
 
TextButton123.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton123.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke304.Color = Color3.fromRGB(60, 60, 60)
 
TextButton123.MouseButton1Click:Connect(function()
	 
	local json24 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json24)
	 
	TextButton123.Text = "AUTO: ON"
	 
	TextButton123.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton123.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke304.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame370 = Instance.new("Frame")
	 
	Frame370.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame370.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame370.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame370.BackgroundTransparency = 0.1
	 
	Frame370.BorderSizePixel = 0
	 
	Frame370.Parent = ScreenGui3
	 
	local UICorner529 = Instance.new("UICorner")
	 
	UICorner529.CornerRadius = UDim.new(0, 8)
	 
	UICorner529.Parent = Frame370
	 
	local UIStroke533 = Instance.new("UIStroke")
	 
	UIStroke533.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke533.Thickness = 1.2
	 
	UIStroke533.Parent = Frame370
	 
	local TextLabel344 = Instance.new("TextLabel")
	 
	TextLabel344.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel344.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel344.BackgroundTransparency = 1
	 
	TextLabel344.Text = "Auto-Exec Added: KEXXE HUB"
	 
	TextLabel344.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel344.TextSize = 13
	 
	TextLabel344.Font = Enum.Font.SourceSansBold
	 
	TextLabel344.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel344.Parent = Frame370
	 
	local tween149 = TweenService:Create(Frame370, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween149:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame218 = Instance.new("Frame")
 
Frame218.Name = "AutoExec_LENNON HUB"
 
Frame218.LayoutOrder = 26
 
Frame218.Size = UDim2.new(1, -6, 0, 38)
 
Frame218.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame218.BackgroundTransparency = 0.2
 
Frame218.Parent = ScrollingFrame6
 
local UICorner337 = Instance.new("UICorner")
 
UICorner337.CornerRadius = UDim.new(0, 6)
 
UICorner337.Parent = Frame218
 
local UIStroke305 = Instance.new("UIStroke")
 
UIStroke305.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke305.Thickness = 1
 
UIStroke305.Parent = Frame218
 
local TextLabel191 = Instance.new("TextLabel")
 
TextLabel191.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel191.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel191.BackgroundTransparency = 1
 
TextLabel191.Text = "LENNON HUB"
 
TextLabel191.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel191.TextSize = 12
 
TextLabel191.Font = Enum.Font.SourceSansBold
 
TextLabel191.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel191.Parent = Frame218
 
local TextButton124 = Instance.new("TextButton")
 
TextButton124.Size = UDim2.new(0, 96, 0, 26)
 
TextButton124.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton124.TextSize = 11
 
TextButton124.Font = Enum.Font.SourceSansBold
 
TextButton124.Parent = Frame218
 
local UICorner338 = Instance.new("UICorner")
 
UICorner338.CornerRadius = UDim.new(0, 6)
 
UICorner338.Parent = TextButton124
 
local UIStroke306 = Instance.new("UIStroke")
 
UIStroke306.Thickness = 1
 
UIStroke306.Parent = Frame218
 
TextButton124.Text = "AUTO: OFF"
 
TextButton124.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton124.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke306.Color = Color3.fromRGB(60, 60, 60)
 
TextButton124.MouseButton1Click:Connect(function()
	 
	local json25 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json25)
	 
	TextButton124.Text = "AUTO: ON"
	 
	TextButton124.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton124.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke306.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame371 = Instance.new("Frame")
	 
	Frame371.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame371.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame371.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame371.BackgroundTransparency = 0.1
	 
	Frame371.BorderSizePixel = 0
	 
	Frame371.Parent = ScreenGui3
	 
	local UICorner530 = Instance.new("UICorner")
	 
	UICorner530.CornerRadius = UDim.new(0, 8)
	 
	UICorner530.Parent = Frame371
	 
	local UIStroke534 = Instance.new("UIStroke")
	 
	UIStroke534.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke534.Thickness = 1.2
	 
	UIStroke534.Parent = Frame371
	 
	local TextLabel345 = Instance.new("TextLabel")
	 
	TextLabel345.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel345.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel345.BackgroundTransparency = 1
	 
	TextLabel345.Text = "Auto-Exec Added: LENNON HUB"
	 
	TextLabel345.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel345.TextSize = 13
	 
	TextLabel345.Font = Enum.Font.SourceSansBold
	 
	TextLabel345.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel345.Parent = Frame371
	 
	local tween150 = TweenService:Create(Frame371, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween150:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame219 = Instance.new("Frame")
 
Frame219.Name = "AutoExec_LEST HUB"
 
Frame219.LayoutOrder = 27
 
Frame219.Size = UDim2.new(1, -6, 0, 38)
 
Frame219.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame219.BackgroundTransparency = 0.2
 
Frame219.Parent = ScrollingFrame6
 
local UICorner339 = Instance.new("UICorner")
 
UICorner339.CornerRadius = UDim.new(0, 6)
 
UICorner339.Parent = Frame219
 
local UIStroke307 = Instance.new("UIStroke")
 
UIStroke307.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke307.Thickness = 1
 
UIStroke307.Parent = Frame219
 
local TextLabel192 = Instance.new("TextLabel")
 
TextLabel192.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel192.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel192.BackgroundTransparency = 1
 
TextLabel192.Text = "LEST HUB"
 
TextLabel192.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel192.TextSize = 12
 
TextLabel192.Font = Enum.Font.SourceSansBold
 
TextLabel192.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel192.Parent = Frame219
 
local TextButton125 = Instance.new("TextButton")
 
TextButton125.Size = UDim2.new(0, 96, 0, 26)
 
TextButton125.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton125.TextSize = 11
 
TextButton125.Font = Enum.Font.SourceSansBold
 
TextButton125.Parent = Frame219
 
local UICorner340 = Instance.new("UICorner")
 
UICorner340.CornerRadius = UDim.new(0, 6)
 
UICorner340.Parent = TextButton125
 
local UIStroke308 = Instance.new("UIStroke")
 
UIStroke308.Thickness = 1
 
UIStroke308.Parent = Frame219
 
TextButton125.Text = "AUTO: OFF"
 
TextButton125.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton125.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke308.Color = Color3.fromRGB(60, 60, 60)
 
TextButton125.MouseButton1Click:Connect(function()
	 
	local json26 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json26)
	 
	TextButton125.Text = "AUTO: ON"
	 
	TextButton125.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton125.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke308.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame372 = Instance.new("Frame")
	 
	Frame372.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame372.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame372.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame372.BackgroundTransparency = 0.1
	 
	Frame372.BorderSizePixel = 0
	 
	Frame372.Parent = ScreenGui3
	 
	local UICorner531 = Instance.new("UICorner")
	 
	UICorner531.CornerRadius = UDim.new(0, 8)
	 
	UICorner531.Parent = Frame372
	 
	local UIStroke535 = Instance.new("UIStroke")
	 
	UIStroke535.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke535.Thickness = 1.2
	 
	UIStroke535.Parent = Frame372
	 
	local TextLabel346 = Instance.new("TextLabel")
	 
	TextLabel346.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel346.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel346.BackgroundTransparency = 1
	 
	TextLabel346.Text = "Auto-Exec Added: LEST HUB"
	 
	TextLabel346.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel346.TextSize = 13
	 
	TextLabel346.Font = Enum.Font.SourceSansBold
	 
	TextLabel346.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel346.Parent = Frame372
	 
	local tween151 = TweenService:Create(Frame372, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween151:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame220 = Instance.new("Frame")
 
Frame220.Name = "AutoExec_LKZ"
 
Frame220.LayoutOrder = 28
 
Frame220.Size = UDim2.new(1, -6, 0, 38)
 
Frame220.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame220.BackgroundTransparency = 0.2
 
Frame220.Parent = ScrollingFrame6
 
local UICorner341 = Instance.new("UICorner")
 
UICorner341.CornerRadius = UDim.new(0, 6)
 
UICorner341.Parent = Frame220
 
local UIStroke309 = Instance.new("UIStroke")
 
UIStroke309.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke309.Thickness = 1
 
UIStroke309.Parent = Frame220
 
local TextLabel193 = Instance.new("TextLabel")
 
TextLabel193.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel193.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel193.BackgroundTransparency = 1
 
TextLabel193.Text = "LKZ"
 
TextLabel193.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel193.TextSize = 12
 
TextLabel193.Font = Enum.Font.SourceSansBold
 
TextLabel193.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel193.Parent = Frame220
 
local TextButton126 = Instance.new("TextButton")
 
TextButton126.Size = UDim2.new(0, 96, 0, 26)
 
TextButton126.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton126.TextSize = 11
 
TextButton126.Font = Enum.Font.SourceSansBold
 
TextButton126.Parent = Frame220
 
local UICorner342 = Instance.new("UICorner")
 
UICorner342.CornerRadius = UDim.new(0, 6)
 
UICorner342.Parent = TextButton126
 
local UIStroke310 = Instance.new("UIStroke")
 
UIStroke310.Thickness = 1
 
UIStroke310.Parent = Frame220
 
TextButton126.Text = "AUTO: OFF"
 
TextButton126.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton126.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke310.Color = Color3.fromRGB(60, 60, 60)
 
TextButton126.MouseButton1Click:Connect(function()
	 
	local json27 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true
})
	 
	writefile("SourcesHub_AutoExec.json", json27)
	 
	TextButton126.Text = "AUTO: ON"
	 
	TextButton126.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton126.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke310.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame373 = Instance.new("Frame")
	 
	Frame373.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame373.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame373.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame373.BackgroundTransparency = 0.1
	 
	Frame373.BorderSizePixel = 0
	 
	Frame373.Parent = ScreenGui3
	 
	local UICorner532 = Instance.new("UICorner")
	 
	UICorner532.CornerRadius = UDim.new(0, 8)
	 
	UICorner532.Parent = Frame373
	 
	local UIStroke536 = Instance.new("UIStroke")
	 
	UIStroke536.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke536.Thickness = 1.2
	 
	UIStroke536.Parent = Frame373
	 
	local TextLabel347 = Instance.new("TextLabel")
	 
	TextLabel347.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel347.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel347.BackgroundTransparency = 1
	 
	TextLabel347.Text = "Auto-Exec Added: LKZ"
	 
	TextLabel347.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel347.TextSize = 13
	 
	TextLabel347.Font = Enum.Font.SourceSansBold
	 
	TextLabel347.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel347.Parent = Frame373
	 
	local tween152 = TweenService:Create(Frame373, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween152:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame221 = Instance.new("Frame")
 
Frame221.Name = "AutoExec_LUMIN HUB"
 
Frame221.LayoutOrder = 29
 
Frame221.Size = UDim2.new(1, -6, 0, 38)
 
Frame221.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame221.BackgroundTransparency = 0.2
 
Frame221.Parent = ScrollingFrame6
 
local UICorner343 = Instance.new("UICorner")
 
UICorner343.CornerRadius = UDim.new(0, 6)
 
UICorner343.Parent = Frame221
 
local UIStroke311 = Instance.new("UIStroke")
 
UIStroke311.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke311.Thickness = 1
 
UIStroke311.Parent = Frame221
 
local TextLabel194 = Instance.new("TextLabel")
 
TextLabel194.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel194.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel194.BackgroundTransparency = 1
 
TextLabel194.Text = "LUMIN HUB"
 
TextLabel194.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel194.TextSize = 12
 
TextLabel194.Font = Enum.Font.SourceSansBold
 
TextLabel194.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel194.Parent = Frame221
 
local TextButton127 = Instance.new("TextButton")
 
TextButton127.Size = UDim2.new(0, 96, 0, 26)
 
TextButton127.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton127.TextSize = 11
 
TextButton127.Font = Enum.Font.SourceSansBold
 
TextButton127.Parent = Frame221
 
local UICorner344 = Instance.new("UICorner")
 
UICorner344.CornerRadius = UDim.new(0, 6)
 
UICorner344.Parent = TextButton127
 
local UIStroke312 = Instance.new("UIStroke")
 
UIStroke312.Thickness = 1
 
UIStroke312.Parent = Frame221
 
TextButton127.Text = "AUTO: OFF"
 
TextButton127.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton127.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke312.Color = Color3.fromRGB(60, 60, 60)
 
TextButton127.MouseButton1Click:Connect(function()
	 
	local json28 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json28)
	 
	TextButton127.Text = "AUTO: ON"
	 
	TextButton127.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton127.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke312.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame374 = Instance.new("Frame")
	 
	Frame374.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame374.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame374.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame374.BackgroundTransparency = 0.1
	 
	Frame374.BorderSizePixel = 0
	 
	Frame374.Parent = ScreenGui3
	 
	local UICorner533 = Instance.new("UICorner")
	 
	UICorner533.CornerRadius = UDim.new(0, 8)
	 
	UICorner533.Parent = Frame374
	 
	local UIStroke537 = Instance.new("UIStroke")
	 
	UIStroke537.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke537.Thickness = 1.2
	 
	UIStroke537.Parent = Frame374
	 
	local TextLabel348 = Instance.new("TextLabel")
	 
	TextLabel348.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel348.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel348.BackgroundTransparency = 1
	 
	TextLabel348.Text = "Auto-Exec Added: LUMIN HUB"
	 
	TextLabel348.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel348.TextSize = 13
	 
	TextLabel348.Font = Enum.Font.SourceSansBold
	 
	TextLabel348.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel348.Parent = Frame374
	 
	local tween153 = TweenService:Create(Frame374, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween153:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame222 = Instance.new("Frame")
 
Frame222.Name = "AutoExec_MIRANDA HUB"
 
Frame222.LayoutOrder = 30
 
Frame222.Size = UDim2.new(1, -6, 0, 38)
 
Frame222.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame222.BackgroundTransparency = 0.2
 
Frame222.Parent = ScrollingFrame6
 
local UICorner345 = Instance.new("UICorner")
 
UICorner345.CornerRadius = UDim.new(0, 6)
 
UICorner345.Parent = Frame222
 
local UIStroke313 = Instance.new("UIStroke")
 
UIStroke313.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke313.Thickness = 1
 
UIStroke313.Parent = Frame222
 
local TextLabel195 = Instance.new("TextLabel")
 
TextLabel195.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel195.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel195.BackgroundTransparency = 1
 
TextLabel195.Text = "MIRANDA HUB"
 
TextLabel195.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel195.TextSize = 12
 
TextLabel195.Font = Enum.Font.SourceSansBold
 
TextLabel195.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel195.Parent = Frame222
 
local TextButton128 = Instance.new("TextButton")
 
TextButton128.Size = UDim2.new(0, 96, 0, 26)
 
TextButton128.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton128.TextSize = 11
 
TextButton128.Font = Enum.Font.SourceSansBold
 
TextButton128.Parent = Frame222
 
local UICorner346 = Instance.new("UICorner")
 
UICorner346.CornerRadius = UDim.new(0, 6)
 
UICorner346.Parent = TextButton128
 
local UIStroke314 = Instance.new("UIStroke")
 
UIStroke314.Thickness = 1
 
UIStroke314.Parent = Frame222
 
TextButton128.Text = "AUTO: OFF"
 
TextButton128.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton128.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke314.Color = Color3.fromRGB(60, 60, 60)
 
TextButton128.MouseButton1Click:Connect(function()
	 
	local json29 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json29)
	 
	TextButton128.Text = "AUTO: ON"
	 
	TextButton128.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton128.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke314.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame375 = Instance.new("Frame")
	 
	Frame375.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame375.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame375.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame375.BackgroundTransparency = 0.1
	 
	Frame375.BorderSizePixel = 0
	 
	Frame375.Parent = ScreenGui3
	 
	local UICorner534 = Instance.new("UICorner")
	 
	UICorner534.CornerRadius = UDim.new(0, 8)
	 
	UICorner534.Parent = Frame375
	 
	local UIStroke538 = Instance.new("UIStroke")
	 
	UIStroke538.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke538.Thickness = 1.2
	 
	UIStroke538.Parent = Frame375
	 
	local TextLabel349 = Instance.new("TextLabel")
	 
	TextLabel349.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel349.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel349.BackgroundTransparency = 1
	 
	TextLabel349.Text = "Auto-Exec Added: MIRANDA HUB"
	 
	TextLabel349.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel349.TextSize = 13
	 
	TextLabel349.Font = Enum.Font.SourceSansBold
	 
	TextLabel349.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel349.Parent = Frame375
	 
	local tween154 = TweenService:Create(Frame375, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween154:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame223 = Instance.new("Frame")
 
Frame223.Name = "AutoExec_MOSHI HUB"
 
Frame223.LayoutOrder = 31
 
Frame223.Size = UDim2.new(1, -6, 0, 38)
 
Frame223.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame223.BackgroundTransparency = 0.2
 
Frame223.Parent = ScrollingFrame6
 
local UICorner347 = Instance.new("UICorner")
 
UICorner347.CornerRadius = UDim.new(0, 6)
 
UICorner347.Parent = Frame223
 
local UIStroke315 = Instance.new("UIStroke")
 
UIStroke315.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke315.Thickness = 1
 
UIStroke315.Parent = Frame223
 
local TextLabel196 = Instance.new("TextLabel")
 
TextLabel196.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel196.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel196.BackgroundTransparency = 1
 
TextLabel196.Text = "MOSHI HUB"
 
TextLabel196.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel196.TextSize = 12
 
TextLabel196.Font = Enum.Font.SourceSansBold
 
TextLabel196.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel196.Parent = Frame223
 
local TextButton129 = Instance.new("TextButton")
 
TextButton129.Size = UDim2.new(0, 96, 0, 26)
 
TextButton129.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton129.TextSize = 11
 
TextButton129.Font = Enum.Font.SourceSansBold
 
TextButton129.Parent = Frame223
 
local UICorner348 = Instance.new("UICorner")
 
UICorner348.CornerRadius = UDim.new(0, 6)
 
UICorner348.Parent = TextButton129
 
local UIStroke316 = Instance.new("UIStroke")
 
UIStroke316.Thickness = 1
 
UIStroke316.Parent = Frame223
 
TextButton129.Text = "AUTO: OFF"
 
TextButton129.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton129.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke316.Color = Color3.fromRGB(60, 60, 60)
 
TextButton129.MouseButton1Click:Connect(function()
	 
	local json30 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json30)
	 
	TextButton129.Text = "AUTO: ON"
	 
	TextButton129.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton129.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke316.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame376 = Instance.new("Frame")
	 
	Frame376.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame376.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame376.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame376.BackgroundTransparency = 0.1
	 
	Frame376.BorderSizePixel = 0
	 
	Frame376.Parent = ScreenGui3
	 
	local UICorner535 = Instance.new("UICorner")
	 
	UICorner535.CornerRadius = UDim.new(0, 8)
	 
	UICorner535.Parent = Frame376
	 
	local UIStroke539 = Instance.new("UIStroke")
	 
	UIStroke539.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke539.Thickness = 1.2
	 
	UIStroke539.Parent = Frame376
	 
	local TextLabel350 = Instance.new("TextLabel")
	 
	TextLabel350.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel350.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel350.BackgroundTransparency = 1
	 
	TextLabel350.Text = "Auto-Exec Added: MOSHI HUB"
	 
	TextLabel350.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel350.TextSize = 13
	 
	TextLabel350.Font = Enum.Font.SourceSansBold
	 
	TextLabel350.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel350.Parent = Frame376
	 
	local tween155 = TweenService:Create(Frame376, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween155:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame224 = Instance.new("Frame")
 
Frame224.Name = "AutoExec_NASI RENDANG HUB"
 
Frame224.LayoutOrder = 32
 
Frame224.Size = UDim2.new(1, -6, 0, 38)
 
Frame224.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame224.BackgroundTransparency = 0.2
 
Frame224.Parent = ScrollingFrame6
 
local UICorner349 = Instance.new("UICorner")
 
UICorner349.CornerRadius = UDim.new(0, 6)
 
UICorner349.Parent = Frame224
 
local UIStroke317 = Instance.new("UIStroke")
 
UIStroke317.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke317.Thickness = 1
 
UIStroke317.Parent = Frame224
 
local TextLabel197 = Instance.new("TextLabel")
 
TextLabel197.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel197.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel197.BackgroundTransparency = 1
 
TextLabel197.Text = "NASI RENDANG HUB"
 
TextLabel197.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel197.TextSize = 12
 
TextLabel197.Font = Enum.Font.SourceSansBold
 
TextLabel197.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel197.Parent = Frame224
 
local TextButton130 = Instance.new("TextButton")
 
TextButton130.Size = UDim2.new(0, 96, 0, 26)
 
TextButton130.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton130.TextSize = 11
 
TextButton130.Font = Enum.Font.SourceSansBold
 
TextButton130.Parent = Frame224
 
local UICorner350 = Instance.new("UICorner")
 
UICorner350.CornerRadius = UDim.new(0, 6)
 
UICorner350.Parent = TextButton130
 
local UIStroke318 = Instance.new("UIStroke")
 
UIStroke318.Thickness = 1
 
UIStroke318.Parent = Frame224
 
TextButton130.Text = "AUTO: OFF"
 
TextButton130.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton130.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke318.Color = Color3.fromRGB(60, 60, 60)
 
TextButton130.MouseButton1Click:Connect(function()
	 
	local json31 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json31)
	 
	TextButton130.Text = "AUTO: ON"
	 
	TextButton130.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton130.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke318.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame377 = Instance.new("Frame")
	 
	Frame377.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame377.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame377.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame377.BackgroundTransparency = 0.1
	 
	Frame377.BorderSizePixel = 0
	 
	Frame377.Parent = ScreenGui3
	 
	local UICorner536 = Instance.new("UICorner")
	 
	UICorner536.CornerRadius = UDim.new(0, 8)
	 
	UICorner536.Parent = Frame377
	 
	local UIStroke540 = Instance.new("UIStroke")
	 
	UIStroke540.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke540.Thickness = 1.2
	 
	UIStroke540.Parent = Frame377
	 
	local TextLabel351 = Instance.new("TextLabel")
	 
	TextLabel351.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel351.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel351.BackgroundTransparency = 1
	 
	TextLabel351.Text = "Auto-Exec Added: NASI RENDANG HUB"
	 
	TextLabel351.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel351.TextSize = 13
	 
	TextLabel351.Font = Enum.Font.SourceSansBold
	 
	TextLabel351.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel351.Parent = Frame377
	 
	local tween156 = TweenService:Create(Frame377, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween156:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame225 = Instance.new("Frame")
 
Frame225.Name = "AutoExec_NEMESIS HUB"
 
Frame225.LayoutOrder = 33
 
Frame225.Size = UDim2.new(1, -6, 0, 38)
 
Frame225.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame225.BackgroundTransparency = 0.2
 
Frame225.Parent = ScrollingFrame6
 
local UICorner351 = Instance.new("UICorner")
 
UICorner351.CornerRadius = UDim.new(0, 6)
 
UICorner351.Parent = Frame225
 
local UIStroke319 = Instance.new("UIStroke")
 
UIStroke319.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke319.Thickness = 1
 
UIStroke319.Parent = Frame225
 
local TextLabel198 = Instance.new("TextLabel")
 
TextLabel198.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel198.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel198.BackgroundTransparency = 1
 
TextLabel198.Text = "NEMESIS HUB"
 
TextLabel198.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel198.TextSize = 12
 
TextLabel198.Font = Enum.Font.SourceSansBold
 
TextLabel198.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel198.Parent = Frame225
 
local TextButton131 = Instance.new("TextButton")
 
TextButton131.Size = UDim2.new(0, 96, 0, 26)
 
TextButton131.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton131.TextSize = 11
 
TextButton131.Font = Enum.Font.SourceSansBold
 
TextButton131.Parent = Frame225
 
local UICorner352 = Instance.new("UICorner")
 
UICorner352.CornerRadius = UDim.new(0, 6)
 
UICorner352.Parent = TextButton131
 
local UIStroke320 = Instance.new("UIStroke")
 
UIStroke320.Thickness = 1
 
UIStroke320.Parent = Frame225
 
TextButton131.Text = "AUTO: OFF"
 
TextButton131.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton131.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke320.Color = Color3.fromRGB(60, 60, 60)
 
TextButton131.MouseButton1Click:Connect(function()
	 
	local json32 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json32)
	 
	TextButton131.Text = "AUTO: ON"
	 
	TextButton131.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton131.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke320.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame378 = Instance.new("Frame")
	 
	Frame378.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame378.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame378.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame378.BackgroundTransparency = 0.1
	 
	Frame378.BorderSizePixel = 0
	 
	Frame378.Parent = ScreenGui3
	 
	local UICorner537 = Instance.new("UICorner")
	 
	UICorner537.CornerRadius = UDim.new(0, 8)
	 
	UICorner537.Parent = Frame378
	 
	local UIStroke541 = Instance.new("UIStroke")
	 
	UIStroke541.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke541.Thickness = 1.2
	 
	UIStroke541.Parent = Frame378
	 
	local TextLabel352 = Instance.new("TextLabel")
	 
	TextLabel352.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel352.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel352.BackgroundTransparency = 1
	 
	TextLabel352.Text = "Auto-Exec Added: NEMESIS HUB"
	 
	TextLabel352.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel352.TextSize = 13
	 
	TextLabel352.Font = Enum.Font.SourceSansBold
	 
	TextLabel352.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel352.Parent = Frame378
	 
	local tween157 = TweenService:Create(Frame378, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween157:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame226 = Instance.new("Frame")
 
Frame226.Name = "AutoExec_NEOX HUB"
 
Frame226.LayoutOrder = 34
 
Frame226.Size = UDim2.new(1, -6, 0, 38)
 
Frame226.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame226.BackgroundTransparency = 0.2
 
Frame226.Parent = ScrollingFrame6
 
local UICorner353 = Instance.new("UICorner")
 
UICorner353.CornerRadius = UDim.new(0, 6)
 
UICorner353.Parent = Frame226
 
local UIStroke321 = Instance.new("UIStroke")
 
UIStroke321.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke321.Thickness = 1
 
UIStroke321.Parent = Frame226
 
local TextLabel199 = Instance.new("TextLabel")
 
TextLabel199.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel199.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel199.BackgroundTransparency = 1
 
TextLabel199.Text = "NEOX HUB"
 
TextLabel199.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel199.TextSize = 12
 
TextLabel199.Font = Enum.Font.SourceSansBold
 
TextLabel199.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel199.Parent = Frame226
 
local TextButton132 = Instance.new("TextButton")
 
TextButton132.Size = UDim2.new(0, 96, 0, 26)
 
TextButton132.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton132.TextSize = 11
 
TextButton132.Font = Enum.Font.SourceSansBold
 
TextButton132.Parent = Frame226
 
local UICorner354 = Instance.new("UICorner")
 
UICorner354.CornerRadius = UDim.new(0, 6)
 
UICorner354.Parent = TextButton132
 
local UIStroke322 = Instance.new("UIStroke")
 
UIStroke322.Thickness = 1
 
UIStroke322.Parent = Frame226
 
TextButton132.Text = "AUTO: OFF"
 
TextButton132.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton132.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke322.Color = Color3.fromRGB(60, 60, 60)
 
TextButton132.MouseButton1Click:Connect(function()
	 
	local json33 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json33)
	 
	TextButton132.Text = "AUTO: ON"
	 
	TextButton132.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton132.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke322.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame379 = Instance.new("Frame")
	 
	Frame379.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame379.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame379.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame379.BackgroundTransparency = 0.1
	 
	Frame379.BorderSizePixel = 0
	 
	Frame379.Parent = ScreenGui3
	 
	local UICorner538 = Instance.new("UICorner")
	 
	UICorner538.CornerRadius = UDim.new(0, 8)
	 
	UICorner538.Parent = Frame379
	 
	local UIStroke542 = Instance.new("UIStroke")
	 
	UIStroke542.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke542.Thickness = 1.2
	 
	UIStroke542.Parent = Frame379
	 
	local TextLabel353 = Instance.new("TextLabel")
	 
	TextLabel353.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel353.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel353.BackgroundTransparency = 1
	 
	TextLabel353.Text = "Auto-Exec Added: NEOX HUB"
	 
	TextLabel353.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel353.TextSize = 13
	 
	TextLabel353.Font = Enum.Font.SourceSansBold
	 
	TextLabel353.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel353.Parent = Frame379
	 
	local tween158 = TweenService:Create(Frame379, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween158:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame227 = Instance.new("Frame")
 
Frame227.Name = "AutoExec_NEVERLOSE SCRIPT"
 
Frame227.LayoutOrder = 35
 
Frame227.Size = UDim2.new(1, -6, 0, 38)
 
Frame227.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame227.BackgroundTransparency = 0.2
 
Frame227.Parent = ScrollingFrame6
 
local UICorner355 = Instance.new("UICorner")
 
UICorner355.CornerRadius = UDim.new(0, 6)
 
UICorner355.Parent = Frame227
 
local UIStroke323 = Instance.new("UIStroke")
 
UIStroke323.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke323.Thickness = 1
 
UIStroke323.Parent = Frame227
 
local TextLabel200 = Instance.new("TextLabel")
 
TextLabel200.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel200.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel200.BackgroundTransparency = 1
 
TextLabel200.Text = "NEVERLOSE SCRIPT"
 
TextLabel200.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel200.TextSize = 12
 
TextLabel200.Font = Enum.Font.SourceSansBold
 
TextLabel200.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel200.Parent = Frame227
 
local TextButton133 = Instance.new("TextButton")
 
TextButton133.Size = UDim2.new(0, 96, 0, 26)
 
TextButton133.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton133.TextSize = 11
 
TextButton133.Font = Enum.Font.SourceSansBold
 
TextButton133.Parent = Frame227
 
local UICorner356 = Instance.new("UICorner")
 
UICorner356.CornerRadius = UDim.new(0, 6)
 
UICorner356.Parent = TextButton133
 
local UIStroke324 = Instance.new("UIStroke")
 
UIStroke324.Thickness = 1
 
UIStroke324.Parent = Frame227
 
TextButton133.Text = "AUTO: OFF"
 
TextButton133.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton133.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke324.Color = Color3.fromRGB(60, 60, 60)
 
TextButton133.MouseButton1Click:Connect(function()
	 
	local json34 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json34)
	 
	TextButton133.Text = "AUTO: ON"
	 
	TextButton133.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton133.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke324.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame380 = Instance.new("Frame")
	 
	Frame380.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame380.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame380.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame380.BackgroundTransparency = 0.1
	 
	Frame380.BorderSizePixel = 0
	 
	Frame380.Parent = ScreenGui3
	 
	local UICorner539 = Instance.new("UICorner")
	 
	UICorner539.CornerRadius = UDim.new(0, 8)
	 
	UICorner539.Parent = Frame380
	 
	local UIStroke543 = Instance.new("UIStroke")
	 
	UIStroke543.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke543.Thickness = 1.2
	 
	UIStroke543.Parent = Frame380
	 
	local TextLabel354 = Instance.new("TextLabel")
	 
	TextLabel354.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel354.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel354.BackgroundTransparency = 1
	 
	TextLabel354.Text = "Auto-Exec Added: NEVERLOSE SCRIPT"
	 
	TextLabel354.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel354.TextSize = 13
	 
	TextLabel354.Font = Enum.Font.SourceSansBold
	 
	TextLabel354.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel354.Parent = Frame380
	 
	local tween159 = TweenService:Create(Frame380, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween159:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame228 = Instance.new("Frame")
 
Frame228.Name = "AutoExec_NO KICK"
 
Frame228.LayoutOrder = 36
 
Frame228.Size = UDim2.new(1, -6, 0, 38)
 
Frame228.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame228.BackgroundTransparency = 0.2
 
Frame228.Parent = ScrollingFrame6
 
local UICorner357 = Instance.new("UICorner")
 
UICorner357.CornerRadius = UDim.new(0, 6)
 
UICorner357.Parent = Frame228
 
local UIStroke325 = Instance.new("UIStroke")
 
UIStroke325.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke325.Thickness = 1
 
UIStroke325.Parent = Frame228
 
local TextLabel201 = Instance.new("TextLabel")
 
TextLabel201.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel201.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel201.BackgroundTransparency = 1
 
TextLabel201.Text = "NO KICK"
 
TextLabel201.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel201.TextSize = 12
 
TextLabel201.Font = Enum.Font.SourceSansBold
 
TextLabel201.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel201.Parent = Frame228
 
local TextButton134 = Instance.new("TextButton")
 
TextButton134.Size = UDim2.new(0, 96, 0, 26)
 
TextButton134.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton134.TextSize = 11
 
TextButton134.Font = Enum.Font.SourceSansBold
 
TextButton134.Parent = Frame228
 
local UICorner358 = Instance.new("UICorner")
 
UICorner358.CornerRadius = UDim.new(0, 6)
 
UICorner358.Parent = TextButton134
 
local UIStroke326 = Instance.new("UIStroke")
 
UIStroke326.Thickness = 1
 
UIStroke326.Parent = Frame228
 
TextButton134.Text = "AUTO: OFF"
 
TextButton134.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton134.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke326.Color = Color3.fromRGB(60, 60, 60)
 
TextButton134.MouseButton1Click:Connect(function()
	 
	local json35 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json35)
	 
	TextButton134.Text = "AUTO: ON"
	 
	TextButton134.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton134.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke326.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame381 = Instance.new("Frame")
	 
	Frame381.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame381.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame381.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame381.BackgroundTransparency = 0.1
	 
	Frame381.BorderSizePixel = 0
	 
	Frame381.Parent = ScreenGui3
	 
	local UICorner540 = Instance.new("UICorner")
	 
	UICorner540.CornerRadius = UDim.new(0, 8)
	 
	UICorner540.Parent = Frame381
	 
	local UIStroke544 = Instance.new("UIStroke")
	 
	UIStroke544.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke544.Thickness = 1.2
	 
	UIStroke544.Parent = Frame381
	 
	local TextLabel355 = Instance.new("TextLabel")
	 
	TextLabel355.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel355.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel355.BackgroundTransparency = 1
	 
	TextLabel355.Text = "Auto-Exec Added: NO KICK"
	 
	TextLabel355.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel355.TextSize = 13
	 
	TextLabel355.Font = Enum.Font.SourceSansBold
	 
	TextLabel355.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel355.Parent = Frame381
	 
	local tween160 = TweenService:Create(Frame381, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween160:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame229 = Instance.new("Frame")
 
Frame229.Name = "AutoExec_NOVA HUB"
 
Frame229.LayoutOrder = 37
 
Frame229.Size = UDim2.new(1, -6, 0, 38)
 
Frame229.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame229.BackgroundTransparency = 0.2
 
Frame229.Parent = ScrollingFrame6
 
local UICorner359 = Instance.new("UICorner")
 
UICorner359.CornerRadius = UDim.new(0, 6)
 
UICorner359.Parent = Frame229
 
local UIStroke327 = Instance.new("UIStroke")
 
UIStroke327.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke327.Thickness = 1
 
UIStroke327.Parent = Frame229
 
local TextLabel202 = Instance.new("TextLabel")
 
TextLabel202.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel202.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel202.BackgroundTransparency = 1
 
TextLabel202.Text = "NOVA HUB"
 
TextLabel202.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel202.TextSize = 12
 
TextLabel202.Font = Enum.Font.SourceSansBold
 
TextLabel202.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel202.Parent = Frame229
 
local TextButton135 = Instance.new("TextButton")
 
TextButton135.Size = UDim2.new(0, 96, 0, 26)
 
TextButton135.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton135.TextSize = 11
 
TextButton135.Font = Enum.Font.SourceSansBold
 
TextButton135.Parent = Frame229
 
local UICorner360 = Instance.new("UICorner")
 
UICorner360.CornerRadius = UDim.new(0, 6)
 
UICorner360.Parent = TextButton135
 
local UIStroke328 = Instance.new("UIStroke")
 
UIStroke328.Thickness = 1
 
UIStroke328.Parent = Frame229
 
TextButton135.Text = "AUTO: OFF"
 
TextButton135.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton135.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke328.Color = Color3.fromRGB(60, 60, 60)
 
TextButton135.MouseButton1Click:Connect(function()
	 
	local json36 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json36)
	 
	TextButton135.Text = "AUTO: ON"
	 
	TextButton135.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton135.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke328.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame382 = Instance.new("Frame")
	 
	Frame382.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame382.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame382.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame382.BackgroundTransparency = 0.1
	 
	Frame382.BorderSizePixel = 0
	 
	Frame382.Parent = ScreenGui3
	 
	local UICorner541 = Instance.new("UICorner")
	 
	UICorner541.CornerRadius = UDim.new(0, 8)
	 
	UICorner541.Parent = Frame382
	 
	local UIStroke545 = Instance.new("UIStroke")
	 
	UIStroke545.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke545.Thickness = 1.2
	 
	UIStroke545.Parent = Frame382
	 
	local TextLabel356 = Instance.new("TextLabel")
	 
	TextLabel356.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel356.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel356.BackgroundTransparency = 1
	 
	TextLabel356.Text = "Auto-Exec Added: NOVA HUB"
	 
	TextLabel356.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel356.TextSize = 13
	 
	TextLabel356.Font = Enum.Font.SourceSansBold
	 
	TextLabel356.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel356.Parent = Frame382
	 
	local tween161 = TweenService:Create(Frame382, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween161:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame230 = Instance.new("Frame")
 
Frame230.Name = "AutoExec_OMG HUB"
 
Frame230.LayoutOrder = 38
 
Frame230.Size = UDim2.new(1, -6, 0, 38)
 
Frame230.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame230.BackgroundTransparency = 0.2
 
Frame230.Parent = ScrollingFrame6
 
local UICorner361 = Instance.new("UICorner")
 
UICorner361.CornerRadius = UDim.new(0, 6)
 
UICorner361.Parent = Frame230
 
local UIStroke329 = Instance.new("UIStroke")
 
UIStroke329.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke329.Thickness = 1
 
UIStroke329.Parent = Frame230
 
local TextLabel203 = Instance.new("TextLabel")
 
TextLabel203.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel203.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel203.BackgroundTransparency = 1
 
TextLabel203.Text = "OMG HUB"
 
TextLabel203.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel203.TextSize = 12
 
TextLabel203.Font = Enum.Font.SourceSansBold
 
TextLabel203.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel203.Parent = Frame230
 
local TextButton136 = Instance.new("TextButton")
 
TextButton136.Size = UDim2.new(0, 96, 0, 26)
 
TextButton136.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton136.TextSize = 11
 
TextButton136.Font = Enum.Font.SourceSansBold
 
TextButton136.Parent = Frame230
 
local UICorner362 = Instance.new("UICorner")
 
UICorner362.CornerRadius = UDim.new(0, 6)
 
UICorner362.Parent = TextButton136
 
local UIStroke330 = Instance.new("UIStroke")
 
UIStroke330.Thickness = 1
 
UIStroke330.Parent = Frame230
 
TextButton136.Text = "AUTO: OFF"
 
TextButton136.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton136.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke330.Color = Color3.fromRGB(60, 60, 60)
 
TextButton136.MouseButton1Click:Connect(function()
	 
	local json37 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json37)
	 
	TextButton136.Text = "AUTO: ON"
	 
	TextButton136.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton136.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke330.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame383 = Instance.new("Frame")
	 
	Frame383.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame383.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame383.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame383.BackgroundTransparency = 0.1
	 
	Frame383.BorderSizePixel = 0
	 
	Frame383.Parent = ScreenGui3
	 
	local UICorner542 = Instance.new("UICorner")
	 
	UICorner542.CornerRadius = UDim.new(0, 8)
	 
	UICorner542.Parent = Frame383
	 
	local UIStroke546 = Instance.new("UIStroke")
	 
	UIStroke546.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke546.Thickness = 1.2
	 
	UIStroke546.Parent = Frame383
	 
	local TextLabel357 = Instance.new("TextLabel")
	 
	TextLabel357.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel357.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel357.BackgroundTransparency = 1
	 
	TextLabel357.Text = "Auto-Exec Added: OMG HUB"
	 
	TextLabel357.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel357.TextSize = 13
	 
	TextLabel357.Font = Enum.Font.SourceSansBold
	 
	TextLabel357.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel357.Parent = Frame383
	 
	local tween162 = TweenService:Create(Frame383, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween162:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame231 = Instance.new("Frame")
 
Frame231.Name = "AutoExec_OUROBOROS HUB"
 
Frame231.LayoutOrder = 39
 
Frame231.Size = UDim2.new(1, -6, 0, 38)
 
Frame231.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame231.BackgroundTransparency = 0.2
 
Frame231.Parent = ScrollingFrame6
 
local UICorner363 = Instance.new("UICorner")
 
UICorner363.CornerRadius = UDim.new(0, 6)
 
UICorner363.Parent = Frame231
 
local UIStroke331 = Instance.new("UIStroke")
 
UIStroke331.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke331.Thickness = 1
 
UIStroke331.Parent = Frame231
 
local TextLabel204 = Instance.new("TextLabel")
 
TextLabel204.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel204.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel204.BackgroundTransparency = 1
 
TextLabel204.Text = "OUROBOROS HUB"
 
TextLabel204.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel204.TextSize = 12
 
TextLabel204.Font = Enum.Font.SourceSansBold
 
TextLabel204.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel204.Parent = Frame231
 
local TextButton137 = Instance.new("TextButton")
 
TextButton137.Size = UDim2.new(0, 96, 0, 26)
 
TextButton137.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton137.TextSize = 11
 
TextButton137.Font = Enum.Font.SourceSansBold
 
TextButton137.Parent = Frame231
 
local UICorner364 = Instance.new("UICorner")
 
UICorner364.CornerRadius = UDim.new(0, 6)
 
UICorner364.Parent = TextButton137
 
local UIStroke332 = Instance.new("UIStroke")
 
UIStroke332.Thickness = 1
 
UIStroke332.Parent = Frame231
 
TextButton137.Text = "AUTO: OFF"
 
TextButton137.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton137.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke332.Color = Color3.fromRGB(60, 60, 60)
 
TextButton137.MouseButton1Click:Connect(function()
	 
	local json38 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json38)
	 
	TextButton137.Text = "AUTO: ON"
	 
	TextButton137.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton137.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke332.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame384 = Instance.new("Frame")
	 
	Frame384.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame384.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame384.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame384.BackgroundTransparency = 0.1
	 
	Frame384.BorderSizePixel = 0
	 
	Frame384.Parent = ScreenGui3
	 
	local UICorner543 = Instance.new("UICorner")
	 
	UICorner543.CornerRadius = UDim.new(0, 8)
	 
	UICorner543.Parent = Frame384
	 
	local UIStroke547 = Instance.new("UIStroke")
	 
	UIStroke547.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke547.Thickness = 1.2
	 
	UIStroke547.Parent = Frame384
	 
	local TextLabel358 = Instance.new("TextLabel")
	 
	TextLabel358.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel358.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel358.BackgroundTransparency = 1
	 
	TextLabel358.Text = "Auto-Exec Added: OUROBOROS HUB"
	 
	TextLabel358.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel358.TextSize = 13
	 
	TextLabel358.Font = Enum.Font.SourceSansBold
	 
	TextLabel358.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel358.Parent = Frame384
	 
	local tween163 = TweenService:Create(Frame384, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween163:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame232 = Instance.new("Frame")
 
Frame232.Name = "AutoExec_OXIDE HUB"
 
Frame232.LayoutOrder = 40
 
Frame232.Size = UDim2.new(1, -6, 0, 38)
 
Frame232.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame232.BackgroundTransparency = 0.2
 
Frame232.Parent = ScrollingFrame6
 
local UICorner365 = Instance.new("UICorner")
 
UICorner365.CornerRadius = UDim.new(0, 6)
 
UICorner365.Parent = Frame232
 
local UIStroke333 = Instance.new("UIStroke")
 
UIStroke333.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke333.Thickness = 1
 
UIStroke333.Parent = Frame232
 
local TextLabel205 = Instance.new("TextLabel")
 
TextLabel205.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel205.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel205.BackgroundTransparency = 1
 
TextLabel205.Text = "OXIDE HUB"
 
TextLabel205.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel205.TextSize = 12
 
TextLabel205.Font = Enum.Font.SourceSansBold
 
TextLabel205.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel205.Parent = Frame232
 
local TextButton138 = Instance.new("TextButton")
 
TextButton138.Size = UDim2.new(0, 96, 0, 26)
 
TextButton138.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton138.TextSize = 11
 
TextButton138.Font = Enum.Font.SourceSansBold
 
TextButton138.Parent = Frame232
 
local UICorner366 = Instance.new("UICorner")
 
UICorner366.CornerRadius = UDim.new(0, 6)
 
UICorner366.Parent = TextButton138
 
local UIStroke334 = Instance.new("UIStroke")
 
UIStroke334.Thickness = 1
 
UIStroke334.Parent = Frame232
 
TextButton138.Text = "AUTO: OFF"
 
TextButton138.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton138.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke334.Color = Color3.fromRGB(60, 60, 60)
 
TextButton138.MouseButton1Click:Connect(function()
	 
	local json39 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json39)
	 
	TextButton138.Text = "AUTO: ON"
	 
	TextButton138.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton138.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke334.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame385 = Instance.new("Frame")
	 
	Frame385.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame385.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame385.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame385.BackgroundTransparency = 0.1
	 
	Frame385.BorderSizePixel = 0
	 
	Frame385.Parent = ScreenGui3
	 
	local UICorner544 = Instance.new("UICorner")
	 
	UICorner544.CornerRadius = UDim.new(0, 8)
	 
	UICorner544.Parent = Frame385
	 
	local UIStroke548 = Instance.new("UIStroke")
	 
	UIStroke548.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke548.Thickness = 1.2
	 
	UIStroke548.Parent = Frame385
	 
	local TextLabel359 = Instance.new("TextLabel")
	 
	TextLabel359.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel359.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel359.BackgroundTransparency = 1
	 
	TextLabel359.Text = "Auto-Exec Added: OXIDE HUB"
	 
	TextLabel359.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel359.TextSize = 13
	 
	TextLabel359.Font = Enum.Font.SourceSansBold
	 
	TextLabel359.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel359.Parent = Frame385
	 
	local tween164 = TweenService:Create(Frame385, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween164:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame233 = Instance.new("Frame")
 
Frame233.Name = "AutoExec_PIG HUB"
 
Frame233.LayoutOrder = 41
 
Frame233.Size = UDim2.new(1, -6, 0, 38)
 
Frame233.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame233.BackgroundTransparency = 0.2
 
Frame233.Parent = ScrollingFrame6
 
local UICorner367 = Instance.new("UICorner")
 
UICorner367.CornerRadius = UDim.new(0, 6)
 
UICorner367.Parent = Frame233
 
local UIStroke335 = Instance.new("UIStroke")
 
UIStroke335.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke335.Thickness = 1
 
UIStroke335.Parent = Frame233
 
local TextLabel206 = Instance.new("TextLabel")
 
TextLabel206.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel206.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel206.BackgroundTransparency = 1
 
TextLabel206.Text = "PIG HUB"
 
TextLabel206.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel206.TextSize = 12
 
TextLabel206.Font = Enum.Font.SourceSansBold
 
TextLabel206.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel206.Parent = Frame233
 
local TextButton139 = Instance.new("TextButton")
 
TextButton139.Size = UDim2.new(0, 96, 0, 26)
 
TextButton139.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton139.TextSize = 11
 
TextButton139.Font = Enum.Font.SourceSansBold
 
TextButton139.Parent = Frame233
 
local UICorner368 = Instance.new("UICorner")
 
UICorner368.CornerRadius = UDim.new(0, 6)
 
UICorner368.Parent = TextButton139
 
local UIStroke336 = Instance.new("UIStroke")
 
UIStroke336.Thickness = 1
 
UIStroke336.Parent = Frame233
 
TextButton139.Text = "AUTO: OFF"
 
TextButton139.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton139.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke336.Color = Color3.fromRGB(60, 60, 60)
 
TextButton139.MouseButton1Click:Connect(function()
	 
	local json40 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json40)
	 
	TextButton139.Text = "AUTO: ON"
	 
	TextButton139.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton139.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke336.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame386 = Instance.new("Frame")
	 
	Frame386.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame386.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame386.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame386.BackgroundTransparency = 0.1
	 
	Frame386.BorderSizePixel = 0
	 
	Frame386.Parent = ScreenGui3
	 
	local UICorner545 = Instance.new("UICorner")
	 
	UICorner545.CornerRadius = UDim.new(0, 8)
	 
	UICorner545.Parent = Frame386
	 
	local UIStroke549 = Instance.new("UIStroke")
	 
	UIStroke549.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke549.Thickness = 1.2
	 
	UIStroke549.Parent = Frame386
	 
	local TextLabel360 = Instance.new("TextLabel")
	 
	TextLabel360.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel360.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel360.BackgroundTransparency = 1
	 
	TextLabel360.Text = "Auto-Exec Added: PIG HUB"
	 
	TextLabel360.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel360.TextSize = 13
	 
	TextLabel360.Font = Enum.Font.SourceSansBold
	 
	TextLabel360.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel360.Parent = Frame386
	 
	local tween165 = TweenService:Create(Frame386, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween165:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame234 = Instance.new("Frame")
 
Frame234.Name = "AutoExec_PROBEST HUB"
 
Frame234.LayoutOrder = 42
 
Frame234.Size = UDim2.new(1, -6, 0, 38)
 
Frame234.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame234.BackgroundTransparency = 0.2
 
Frame234.Parent = ScrollingFrame6
 
local UICorner369 = Instance.new("UICorner")
 
UICorner369.CornerRadius = UDim.new(0, 6)
 
UICorner369.Parent = Frame234
 
local UIStroke337 = Instance.new("UIStroke")
 
UIStroke337.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke337.Thickness = 1
 
UIStroke337.Parent = Frame234
 
local TextLabel207 = Instance.new("TextLabel")
 
TextLabel207.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel207.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel207.BackgroundTransparency = 1
 
TextLabel207.Text = "PROBEST HUB"
 
TextLabel207.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel207.TextSize = 12
 
TextLabel207.Font = Enum.Font.SourceSansBold
 
TextLabel207.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel207.Parent = Frame234
 
local TextButton140 = Instance.new("TextButton")
 
TextButton140.Size = UDim2.new(0, 96, 0, 26)
 
TextButton140.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton140.TextSize = 11
 
TextButton140.Font = Enum.Font.SourceSansBold
 
TextButton140.Parent = Frame234
 
local UICorner370 = Instance.new("UICorner")
 
UICorner370.CornerRadius = UDim.new(0, 6)
 
UICorner370.Parent = TextButton140
 
local UIStroke338 = Instance.new("UIStroke")
 
UIStroke338.Thickness = 1
 
UIStroke338.Parent = Frame234
 
TextButton140.Text = "AUTO: OFF"
 
TextButton140.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton140.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke338.Color = Color3.fromRGB(60, 60, 60)
 
TextButton140.MouseButton1Click:Connect(function()
	 
	local json41 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json41)
	 
	TextButton140.Text = "AUTO: ON"
	 
	TextButton140.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton140.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke338.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame387 = Instance.new("Frame")
	 
	Frame387.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame387.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame387.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame387.BackgroundTransparency = 0.1
	 
	Frame387.BorderSizePixel = 0
	 
	Frame387.Parent = ScreenGui3
	 
	local UICorner546 = Instance.new("UICorner")
	 
	UICorner546.CornerRadius = UDim.new(0, 8)
	 
	UICorner546.Parent = Frame387
	 
	local UIStroke550 = Instance.new("UIStroke")
	 
	UIStroke550.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke550.Thickness = 1.2
	 
	UIStroke550.Parent = Frame387
	 
	local TextLabel361 = Instance.new("TextLabel")
	 
	TextLabel361.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel361.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel361.BackgroundTransparency = 1
	 
	TextLabel361.Text = "Auto-Exec Added: PROBEST HUB"
	 
	TextLabel361.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel361.TextSize = 13
	 
	TextLabel361.Font = Enum.Font.SourceSansBold
	 
	TextLabel361.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel361.Parent = Frame387
	 
	local tween166 = TweenService:Create(Frame387, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween166:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame235 = Instance.new("Frame")
 
Frame235.Name = "AutoExec_QUANTUM HUB"
 
Frame235.LayoutOrder = 43
 
Frame235.Size = UDim2.new(1, -6, 0, 38)
 
Frame235.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame235.BackgroundTransparency = 0.2
 
Frame235.Parent = ScrollingFrame6
 
local UICorner371 = Instance.new("UICorner")
 
UICorner371.CornerRadius = UDim.new(0, 6)
 
UICorner371.Parent = Frame235
 
local UIStroke339 = Instance.new("UIStroke")
 
UIStroke339.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke339.Thickness = 1
 
UIStroke339.Parent = Frame235
 
local TextLabel208 = Instance.new("TextLabel")
 
TextLabel208.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel208.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel208.BackgroundTransparency = 1
 
TextLabel208.Text = "QUANTUM HUB"
 
TextLabel208.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel208.TextSize = 12
 
TextLabel208.Font = Enum.Font.SourceSansBold
 
TextLabel208.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel208.Parent = Frame235
 
local TextButton141 = Instance.new("TextButton")
 
TextButton141.Size = UDim2.new(0, 96, 0, 26)
 
TextButton141.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton141.TextSize = 11
 
TextButton141.Font = Enum.Font.SourceSansBold
 
TextButton141.Parent = Frame235
 
local UICorner372 = Instance.new("UICorner")
 
UICorner372.CornerRadius = UDim.new(0, 6)
 
UICorner372.Parent = TextButton141
 
local UIStroke340 = Instance.new("UIStroke")
 
UIStroke340.Thickness = 1
 
UIStroke340.Parent = Frame235
 
TextButton141.Text = "AUTO: OFF"
 
TextButton141.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton141.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke340.Color = Color3.fromRGB(60, 60, 60)
 
TextButton141.MouseButton1Click:Connect(function()
	 
	local json42 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json42)
	 
	TextButton141.Text = "AUTO: ON"
	 
	TextButton141.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton141.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke340.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame388 = Instance.new("Frame")
	 
	Frame388.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame388.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame388.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame388.BackgroundTransparency = 0.1
	 
	Frame388.BorderSizePixel = 0
	 
	Frame388.Parent = ScreenGui3
	 
	local UICorner547 = Instance.new("UICorner")
	 
	UICorner547.CornerRadius = UDim.new(0, 8)
	 
	UICorner547.Parent = Frame388
	 
	local UIStroke551 = Instance.new("UIStroke")
	 
	UIStroke551.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke551.Thickness = 1.2
	 
	UIStroke551.Parent = Frame388
	 
	local TextLabel362 = Instance.new("TextLabel")
	 
	TextLabel362.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel362.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel362.BackgroundTransparency = 1
	 
	TextLabel362.Text = "Auto-Exec Added: QUANTUM HUB"
	 
	TextLabel362.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel362.TextSize = 13
	 
	TextLabel362.Font = Enum.Font.SourceSansBold
	 
	TextLabel362.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel362.Parent = Frame388
	 
	local tween167 = TweenService:Create(Frame388, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween167:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame236 = Instance.new("Frame")
 
Frame236.Name = "AutoExec_RENE BATERBONIA SCRIPT"
 
Frame236.LayoutOrder = 44
 
Frame236.Size = UDim2.new(1, -6, 0, 38)
 
Frame236.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame236.BackgroundTransparency = 0.2
 
Frame236.Parent = ScrollingFrame6
 
local UICorner373 = Instance.new("UICorner")
 
UICorner373.CornerRadius = UDim.new(0, 6)
 
UICorner373.Parent = Frame236
 
local UIStroke341 = Instance.new("UIStroke")
 
UIStroke341.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke341.Thickness = 1
 
UIStroke341.Parent = Frame236
 
local TextLabel209 = Instance.new("TextLabel")
 
TextLabel209.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel209.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel209.BackgroundTransparency = 1
 
TextLabel209.Text = "RENE BATERBONIA SCRIPT"
 
TextLabel209.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel209.TextSize = 12
 
TextLabel209.Font = Enum.Font.SourceSansBold
 
TextLabel209.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel209.Parent = Frame236
 
local TextButton142 = Instance.new("TextButton")
 
TextButton142.Size = UDim2.new(0, 96, 0, 26)
 
TextButton142.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton142.TextSize = 11
 
TextButton142.Font = Enum.Font.SourceSansBold
 
TextButton142.Parent = Frame236
 
local UICorner374 = Instance.new("UICorner")
 
UICorner374.CornerRadius = UDim.new(0, 6)
 
UICorner374.Parent = TextButton142
 
local UIStroke342 = Instance.new("UIStroke")
 
UIStroke342.Thickness = 1
 
UIStroke342.Parent = Frame236
 
TextButton142.Text = "AUTO: OFF"
 
TextButton142.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton142.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke342.Color = Color3.fromRGB(60, 60, 60)
 
TextButton142.MouseButton1Click:Connect(function()
	 
	local json43 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json43)
	 
	TextButton142.Text = "AUTO: ON"
	 
	TextButton142.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton142.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke342.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame389 = Instance.new("Frame")
	 
	Frame389.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame389.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame389.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame389.BackgroundTransparency = 0.1
	 
	Frame389.BorderSizePixel = 0
	 
	Frame389.Parent = ScreenGui3
	 
	local UICorner548 = Instance.new("UICorner")
	 
	UICorner548.CornerRadius = UDim.new(0, 8)
	 
	UICorner548.Parent = Frame389
	 
	local UIStroke552 = Instance.new("UIStroke")
	 
	UIStroke552.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke552.Thickness = 1.2
	 
	UIStroke552.Parent = Frame389
	 
	local TextLabel363 = Instance.new("TextLabel")
	 
	TextLabel363.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel363.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel363.BackgroundTransparency = 1
	 
	TextLabel363.Text = "Auto-Exec Added: RENE BATERBONIA SCRIPT"
	 
	TextLabel363.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel363.TextSize = 13
	 
	TextLabel363.Font = Enum.Font.SourceSansBold
	 
	TextLabel363.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel363.Parent = Frame389
	 
	local tween168 = TweenService:Create(Frame389, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween168:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame237 = Instance.new("Frame")
 
Frame237.Name = "AutoExec_RIFT HUB"
 
Frame237.LayoutOrder = 45
 
Frame237.Size = UDim2.new(1, -6, 0, 38)
 
Frame237.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame237.BackgroundTransparency = 0.2
 
Frame237.Parent = ScrollingFrame6
 
local UICorner375 = Instance.new("UICorner")
 
UICorner375.CornerRadius = UDim.new(0, 6)
 
UICorner375.Parent = Frame237
 
local UIStroke343 = Instance.new("UIStroke")
 
UIStroke343.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke343.Thickness = 1
 
UIStroke343.Parent = Frame237
 
local TextLabel210 = Instance.new("TextLabel")
 
TextLabel210.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel210.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel210.BackgroundTransparency = 1
 
TextLabel210.Text = "RIFT HUB"
 
TextLabel210.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel210.TextSize = 12
 
TextLabel210.Font = Enum.Font.SourceSansBold
 
TextLabel210.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel210.Parent = Frame237
 
local TextButton143 = Instance.new("TextButton")
 
TextButton143.Size = UDim2.new(0, 96, 0, 26)
 
TextButton143.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton143.TextSize = 11
 
TextButton143.Font = Enum.Font.SourceSansBold
 
TextButton143.Parent = Frame237
 
local UICorner376 = Instance.new("UICorner")
 
UICorner376.CornerRadius = UDim.new(0, 6)
 
UICorner376.Parent = TextButton143
 
local UIStroke344 = Instance.new("UIStroke")
 
UIStroke344.Thickness = 1
 
UIStroke344.Parent = Frame237
 
TextButton143.Text = "AUTO: OFF"
 
TextButton143.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton143.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke344.Color = Color3.fromRGB(60, 60, 60)
 
TextButton143.MouseButton1Click:Connect(function()
	 
	local json44 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json44)
	 
	TextButton143.Text = "AUTO: ON"
	 
	TextButton143.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton143.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke344.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame390 = Instance.new("Frame")
	 
	Frame390.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame390.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame390.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame390.BackgroundTransparency = 0.1
	 
	Frame390.BorderSizePixel = 0
	 
	Frame390.Parent = ScreenGui3
	 
	local UICorner549 = Instance.new("UICorner")
	 
	UICorner549.CornerRadius = UDim.new(0, 8)
	 
	UICorner549.Parent = Frame390
	 
	local UIStroke553 = Instance.new("UIStroke")
	 
	UIStroke553.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke553.Thickness = 1.2
	 
	UIStroke553.Parent = Frame390
	 
	local TextLabel364 = Instance.new("TextLabel")
	 
	TextLabel364.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel364.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel364.BackgroundTransparency = 1
	 
	TextLabel364.Text = "Auto-Exec Added: RIFT HUB"
	 
	TextLabel364.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel364.TextSize = 13
	 
	TextLabel364.Font = Enum.Font.SourceSansBold
	 
	TextLabel364.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel364.Parent = Frame390
	 
	local tween169 = TweenService:Create(Frame390, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween169:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame238 = Instance.new("Frame")
 
Frame238.Name = "AutoExec_SAIOPS HUB"
 
Frame238.LayoutOrder = 46
 
Frame238.Size = UDim2.new(1, -6, 0, 38)
 
Frame238.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame238.BackgroundTransparency = 0.2
 
Frame238.Parent = ScrollingFrame6
 
local UICorner377 = Instance.new("UICorner")
 
UICorner377.CornerRadius = UDim.new(0, 6)
 
UICorner377.Parent = Frame238
 
local UIStroke345 = Instance.new("UIStroke")
 
UIStroke345.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke345.Thickness = 1
 
UIStroke345.Parent = Frame238
 
local TextLabel211 = Instance.new("TextLabel")
 
TextLabel211.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel211.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel211.BackgroundTransparency = 1
 
TextLabel211.Text = "SAIOPS HUB"
 
TextLabel211.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel211.TextSize = 12
 
TextLabel211.Font = Enum.Font.SourceSansBold
 
TextLabel211.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel211.Parent = Frame238
 
local TextButton144 = Instance.new("TextButton")
 
TextButton144.Size = UDim2.new(0, 96, 0, 26)
 
TextButton144.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton144.TextSize = 11
 
TextButton144.Font = Enum.Font.SourceSansBold
 
TextButton144.Parent = Frame238
 
local UICorner378 = Instance.new("UICorner")
 
UICorner378.CornerRadius = UDim.new(0, 6)
 
UICorner378.Parent = TextButton144
 
local UIStroke346 = Instance.new("UIStroke")
 
UIStroke346.Thickness = 1
 
UIStroke346.Parent = Frame238
 
TextButton144.Text = "AUTO: OFF"
 
TextButton144.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton144.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke346.Color = Color3.fromRGB(60, 60, 60)
 
TextButton144.MouseButton1Click:Connect(function()
	 
	local json45 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json45)
	 
	TextButton144.Text = "AUTO: ON"
	 
	TextButton144.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton144.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke346.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame391 = Instance.new("Frame")
	 
	Frame391.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame391.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame391.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame391.BackgroundTransparency = 0.1
	 
	Frame391.BorderSizePixel = 0
	 
	Frame391.Parent = ScreenGui3
	 
	local UICorner550 = Instance.new("UICorner")
	 
	UICorner550.CornerRadius = UDim.new(0, 8)
	 
	UICorner550.Parent = Frame391
	 
	local UIStroke554 = Instance.new("UIStroke")
	 
	UIStroke554.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke554.Thickness = 1.2
	 
	UIStroke554.Parent = Frame391
	 
	local TextLabel365 = Instance.new("TextLabel")
	 
	TextLabel365.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel365.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel365.BackgroundTransparency = 1
	 
	TextLabel365.Text = "Auto-Exec Added: SAIOPS HUB"
	 
	TextLabel365.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel365.TextSize = 13
	 
	TextLabel365.Font = Enum.Font.SourceSansBold
	 
	TextLabel365.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel365.Parent = Frame391
	 
	local tween170 = TweenService:Create(Frame391, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween170:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame239 = Instance.new("Frame")
 
Frame239.Name = "AutoExec_SCRIPTVERSE HUB"
 
Frame239.LayoutOrder = 47
 
Frame239.Size = UDim2.new(1, -6, 0, 38)
 
Frame239.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame239.BackgroundTransparency = 0.2
 
Frame239.Parent = ScrollingFrame6
 
local UICorner379 = Instance.new("UICorner")
 
UICorner379.CornerRadius = UDim.new(0, 6)
 
UICorner379.Parent = Frame239
 
local UIStroke347 = Instance.new("UIStroke")
 
UIStroke347.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke347.Thickness = 1
 
UIStroke347.Parent = Frame239
 
local TextLabel212 = Instance.new("TextLabel")
 
TextLabel212.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel212.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel212.BackgroundTransparency = 1
 
TextLabel212.Text = "SCRIPTVERSE HUB"
 
TextLabel212.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel212.TextSize = 12
 
TextLabel212.Font = Enum.Font.SourceSansBold
 
TextLabel212.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel212.Parent = Frame239
 
local TextButton145 = Instance.new("TextButton")
 
TextButton145.Size = UDim2.new(0, 96, 0, 26)
 
TextButton145.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton145.TextSize = 11
 
TextButton145.Font = Enum.Font.SourceSansBold
 
TextButton145.Parent = Frame239
 
local UICorner380 = Instance.new("UICorner")
 
UICorner380.CornerRadius = UDim.new(0, 6)
 
UICorner380.Parent = TextButton145
 
local UIStroke348 = Instance.new("UIStroke")
 
UIStroke348.Thickness = 1
 
UIStroke348.Parent = Frame239
 
TextButton145.Text = "AUTO: OFF"
 
TextButton145.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton145.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke348.Color = Color3.fromRGB(60, 60, 60)
 
TextButton145.MouseButton1Click:Connect(function()
	 
	local json46 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json46)
	 
	TextButton145.Text = "AUTO: ON"
	 
	TextButton145.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton145.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke348.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame392 = Instance.new("Frame")
	 
	Frame392.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame392.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame392.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame392.BackgroundTransparency = 0.1
	 
	Frame392.BorderSizePixel = 0
	 
	Frame392.Parent = ScreenGui3
	 
	local UICorner551 = Instance.new("UICorner")
	 
	UICorner551.CornerRadius = UDim.new(0, 8)
	 
	UICorner551.Parent = Frame392
	 
	local UIStroke555 = Instance.new("UIStroke")
	 
	UIStroke555.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke555.Thickness = 1.2
	 
	UIStroke555.Parent = Frame392
	 
	local TextLabel366 = Instance.new("TextLabel")
	 
	TextLabel366.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel366.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel366.BackgroundTransparency = 1
	 
	TextLabel366.Text = "Auto-Exec Added: SCRIPTVERSE HUB"
	 
	TextLabel366.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel366.TextSize = 13
	 
	TextLabel366.Font = Enum.Font.SourceSansBold
	 
	TextLabel366.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel366.Parent = Frame392
	 
	local tween171 = TweenService:Create(Frame392, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween171:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame240 = Instance.new("Frame")
 
Frame240.Name = "AutoExec_SENA HUB"
 
Frame240.LayoutOrder = 48
 
Frame240.Size = UDim2.new(1, -6, 0, 38)
 
Frame240.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame240.BackgroundTransparency = 0.2
 
Frame240.Parent = ScrollingFrame6
 
local UICorner381 = Instance.new("UICorner")
 
UICorner381.CornerRadius = UDim.new(0, 6)
 
UICorner381.Parent = Frame240
 
local UIStroke349 = Instance.new("UIStroke")
 
UIStroke349.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke349.Thickness = 1
 
UIStroke349.Parent = Frame240
 
local TextLabel213 = Instance.new("TextLabel")
 
TextLabel213.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel213.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel213.BackgroundTransparency = 1
 
TextLabel213.Text = "SENA HUB"
 
TextLabel213.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel213.TextSize = 12
 
TextLabel213.Font = Enum.Font.SourceSansBold
 
TextLabel213.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel213.Parent = Frame240
 
local TextButton146 = Instance.new("TextButton")
 
TextButton146.Size = UDim2.new(0, 96, 0, 26)
 
TextButton146.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton146.TextSize = 11
 
TextButton146.Font = Enum.Font.SourceSansBold
 
TextButton146.Parent = Frame240
 
local UICorner382 = Instance.new("UICorner")
 
UICorner382.CornerRadius = UDim.new(0, 6)
 
UICorner382.Parent = TextButton146
 
local UIStroke350 = Instance.new("UIStroke")
 
UIStroke350.Thickness = 1
 
UIStroke350.Parent = Frame240
 
TextButton146.Text = "AUTO: OFF"
 
TextButton146.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton146.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke350.Color = Color3.fromRGB(60, 60, 60)
 
TextButton146.MouseButton1Click:Connect(function()
	 
	local json47 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json47)
	 
	TextButton146.Text = "AUTO: ON"
	 
	TextButton146.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton146.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke350.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame393 = Instance.new("Frame")
	 
	Frame393.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame393.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame393.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame393.BackgroundTransparency = 0.1
	 
	Frame393.BorderSizePixel = 0
	 
	Frame393.Parent = ScreenGui3
	 
	local UICorner552 = Instance.new("UICorner")
	 
	UICorner552.CornerRadius = UDim.new(0, 8)
	 
	UICorner552.Parent = Frame393
	 
	local UIStroke556 = Instance.new("UIStroke")
	 
	UIStroke556.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke556.Thickness = 1.2
	 
	UIStroke556.Parent = Frame393
	 
	local TextLabel367 = Instance.new("TextLabel")
	 
	TextLabel367.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel367.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel367.BackgroundTransparency = 1
	 
	TextLabel367.Text = "Auto-Exec Added: SENA HUB"
	 
	TextLabel367.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel367.TextSize = 13
	 
	TextLabel367.Font = Enum.Font.SourceSansBold
	 
	TextLabel367.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel367.Parent = Frame393
	 
	local tween172 = TweenService:Create(Frame393, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween172:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame241 = Instance.new("Frame")
 
Frame241.Name = "AutoExec_SNOWY HUB"
 
Frame241.LayoutOrder = 49
 
Frame241.Size = UDim2.new(1, -6, 0, 38)
 
Frame241.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame241.BackgroundTransparency = 0.2
 
Frame241.Parent = ScrollingFrame6
 
local UICorner383 = Instance.new("UICorner")
 
UICorner383.CornerRadius = UDim.new(0, 6)
 
UICorner383.Parent = Frame241
 
local UIStroke351 = Instance.new("UIStroke")
 
UIStroke351.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke351.Thickness = 1
 
UIStroke351.Parent = Frame241
 
local TextLabel214 = Instance.new("TextLabel")
 
TextLabel214.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel214.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel214.BackgroundTransparency = 1
 
TextLabel214.Text = "SNOWY HUB"
 
TextLabel214.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel214.TextSize = 12
 
TextLabel214.Font = Enum.Font.SourceSansBold
 
TextLabel214.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel214.Parent = Frame241
 
local TextButton147 = Instance.new("TextButton")
 
TextButton147.Size = UDim2.new(0, 96, 0, 26)
 
TextButton147.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton147.TextSize = 11
 
TextButton147.Font = Enum.Font.SourceSansBold
 
TextButton147.Parent = Frame241
 
local UICorner384 = Instance.new("UICorner")
 
UICorner384.CornerRadius = UDim.new(0, 6)
 
UICorner384.Parent = TextButton147
 
local UIStroke352 = Instance.new("UIStroke")
 
UIStroke352.Thickness = 1
 
UIStroke352.Parent = Frame241
 
TextButton147.Text = "AUTO: OFF"
 
TextButton147.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton147.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke352.Color = Color3.fromRGB(60, 60, 60)
 
TextButton147.MouseButton1Click:Connect(function()
	 
	local json48 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json48)
	 
	TextButton147.Text = "AUTO: ON"
	 
	TextButton147.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton147.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke352.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame394 = Instance.new("Frame")
	 
	Frame394.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame394.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame394.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame394.BackgroundTransparency = 0.1
	 
	Frame394.BorderSizePixel = 0
	 
	Frame394.Parent = ScreenGui3
	 
	local UICorner553 = Instance.new("UICorner")
	 
	UICorner553.CornerRadius = UDim.new(0, 8)
	 
	UICorner553.Parent = Frame394
	 
	local UIStroke557 = Instance.new("UIStroke")
	 
	UIStroke557.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke557.Thickness = 1.2
	 
	UIStroke557.Parent = Frame394
	 
	local TextLabel368 = Instance.new("TextLabel")
	 
	TextLabel368.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel368.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel368.BackgroundTransparency = 1
	 
	TextLabel368.Text = "Auto-Exec Added: SNOWY HUB"
	 
	TextLabel368.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel368.TextSize = 13
	 
	TextLabel368.Font = Enum.Font.SourceSansBold
	 
	TextLabel368.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel368.Parent = Frame394
	 
	local tween173 = TweenService:Create(Frame394, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween173:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame242 = Instance.new("Frame")
 
Frame242.Name = "AutoExec_SOLIX [NEW]"
 
Frame242.LayoutOrder = 50
 
Frame242.Size = UDim2.new(1, -6, 0, 38)
 
Frame242.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame242.BackgroundTransparency = 0.2
 
Frame242.Parent = ScrollingFrame6
 
local UICorner385 = Instance.new("UICorner")
 
UICorner385.CornerRadius = UDim.new(0, 6)
 
UICorner385.Parent = Frame242
 
local UIStroke353 = Instance.new("UIStroke")
 
UIStroke353.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke353.Thickness = 1
 
UIStroke353.Parent = Frame242
 
local TextLabel215 = Instance.new("TextLabel")
 
TextLabel215.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel215.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel215.BackgroundTransparency = 1
 
TextLabel215.Text = "SOLIX [NEW]"
 
TextLabel215.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel215.TextSize = 12
 
TextLabel215.Font = Enum.Font.SourceSansBold
 
TextLabel215.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel215.Parent = Frame242
 
local TextButton148 = Instance.new("TextButton")
 
TextButton148.Size = UDim2.new(0, 96, 0, 26)
 
TextButton148.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton148.TextSize = 11
 
TextButton148.Font = Enum.Font.SourceSansBold
 
TextButton148.Parent = Frame242
 
local UICorner386 = Instance.new("UICorner")
 
UICorner386.CornerRadius = UDim.new(0, 6)
 
UICorner386.Parent = TextButton148
 
local UIStroke354 = Instance.new("UIStroke")
 
UIStroke354.Thickness = 1
 
UIStroke354.Parent = Frame242
 
TextButton148.Text = "AUTO: OFF"
 
TextButton148.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton148.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke354.Color = Color3.fromRGB(60, 60, 60)
 
TextButton148.MouseButton1Click:Connect(function()
	 
	local json49 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX [NEW]"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json49)
	 
	TextButton148.Text = "AUTO: ON"
	 
	TextButton148.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton148.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke354.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame395 = Instance.new("Frame")
	 
	Frame395.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame395.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame395.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame395.BackgroundTransparency = 0.1
	 
	Frame395.BorderSizePixel = 0
	 
	Frame395.Parent = ScreenGui3
	 
	local UICorner554 = Instance.new("UICorner")
	 
	UICorner554.CornerRadius = UDim.new(0, 8)
	 
	UICorner554.Parent = Frame395
	 
	local UIStroke558 = Instance.new("UIStroke")
	 
	UIStroke558.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke558.Thickness = 1.2
	 
	UIStroke558.Parent = Frame395
	 
	local TextLabel369 = Instance.new("TextLabel")
	 
	TextLabel369.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel369.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel369.BackgroundTransparency = 1
	 
	TextLabel369.Text = "Auto-Exec Added: SOLIX [NEW]"
	 
	TextLabel369.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel369.TextSize = 13
	 
	TextLabel369.Font = Enum.Font.SourceSansBold
	 
	TextLabel369.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel369.Parent = Frame395
	 
	local tween174 = TweenService:Create(Frame395, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween174:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame243 = Instance.new("Frame")
 
Frame243.Name = "AutoExec_SOLIX HUB"
 
Frame243.LayoutOrder = 51
 
Frame243.Size = UDim2.new(1, -6, 0, 38)
 
Frame243.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame243.BackgroundTransparency = 0.2
 
Frame243.Parent = ScrollingFrame6
 
local UICorner387 = Instance.new("UICorner")
 
UICorner387.CornerRadius = UDim.new(0, 6)
 
UICorner387.Parent = Frame243
 
local UIStroke355 = Instance.new("UIStroke")
 
UIStroke355.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke355.Thickness = 1
 
UIStroke355.Parent = Frame243
 
local TextLabel216 = Instance.new("TextLabel")
 
TextLabel216.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel216.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel216.BackgroundTransparency = 1
 
TextLabel216.Text = "SOLIX HUB"
 
TextLabel216.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel216.TextSize = 12
 
TextLabel216.Font = Enum.Font.SourceSansBold
 
TextLabel216.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel216.Parent = Frame243
 
local TextButton149 = Instance.new("TextButton")
 
TextButton149.Size = UDim2.new(0, 96, 0, 26)
 
TextButton149.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton149.TextSize = 11
 
TextButton149.Font = Enum.Font.SourceSansBold
 
TextButton149.Parent = Frame243
 
local UICorner388 = Instance.new("UICorner")
 
UICorner388.CornerRadius = UDim.new(0, 6)
 
UICorner388.Parent = TextButton149
 
local UIStroke356 = Instance.new("UIStroke")
 
UIStroke356.Thickness = 1
 
UIStroke356.Parent = Frame243
 
TextButton149.Text = "AUTO: OFF"
 
TextButton149.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton149.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke356.Color = Color3.fromRGB(60, 60, 60)
 
TextButton149.MouseButton1Click:Connect(function()
	 
	local json50 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json50)
	 
	TextButton149.Text = "AUTO: ON"
	 
	TextButton149.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton149.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke356.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame396 = Instance.new("Frame")
	 
	Frame396.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame396.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame396.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame396.BackgroundTransparency = 0.1
	 
	Frame396.BorderSizePixel = 0
	 
	Frame396.Parent = ScreenGui3
	 
	local UICorner555 = Instance.new("UICorner")
	 
	UICorner555.CornerRadius = UDim.new(0, 8)
	 
	UICorner555.Parent = Frame396
	 
	local UIStroke559 = Instance.new("UIStroke")
	 
	UIStroke559.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke559.Thickness = 1.2
	 
	UIStroke559.Parent = Frame396
	 
	local TextLabel370 = Instance.new("TextLabel")
	 
	TextLabel370.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel370.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel370.BackgroundTransparency = 1
	 
	TextLabel370.Text = "Auto-Exec Added: SOLIX HUB"
	 
	TextLabel370.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel370.TextSize = 13
	 
	TextLabel370.Font = Enum.Font.SourceSansBold
	 
	TextLabel370.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel370.Parent = Frame396
	 
	local tween175 = TweenService:Create(Frame396, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween175:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame244 = Instance.new("Frame")
 
Frame244.Name = "AutoExec_SPEED HUB"
 
Frame244.LayoutOrder = 52
 
Frame244.Size = UDim2.new(1, -6, 0, 38)
 
Frame244.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame244.BackgroundTransparency = 0.2
 
Frame244.Parent = ScrollingFrame6
 
local UICorner389 = Instance.new("UICorner")
 
UICorner389.CornerRadius = UDim.new(0, 6)
 
UICorner389.Parent = Frame244
 
local UIStroke357 = Instance.new("UIStroke")
 
UIStroke357.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke357.Thickness = 1
 
UIStroke357.Parent = Frame244
 
local TextLabel217 = Instance.new("TextLabel")
 
TextLabel217.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel217.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel217.BackgroundTransparency = 1
 
TextLabel217.Text = "SPEED HUB"
 
TextLabel217.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel217.TextSize = 12
 
TextLabel217.Font = Enum.Font.SourceSansBold
 
TextLabel217.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel217.Parent = Frame244
 
local TextButton150 = Instance.new("TextButton")
 
TextButton150.Size = UDim2.new(0, 96, 0, 26)
 
TextButton150.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton150.TextSize = 11
 
TextButton150.Font = Enum.Font.SourceSansBold
 
TextButton150.Parent = Frame244
 
local UICorner390 = Instance.new("UICorner")
 
UICorner390.CornerRadius = UDim.new(0, 6)
 
UICorner390.Parent = TextButton150
 
local UIStroke358 = Instance.new("UIStroke")
 
UIStroke358.Thickness = 1
 
UIStroke358.Parent = Frame244
 
TextButton150.Text = "AUTO: OFF"
 
TextButton150.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton150.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke358.Color = Color3.fromRGB(60, 60, 60)
 
TextButton150.MouseButton1Click:Connect(function()
	 
	local json51 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json51)
	 
	TextButton150.Text = "AUTO: ON"
	 
	TextButton150.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton150.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke358.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame397 = Instance.new("Frame")
	 
	Frame397.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame397.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame397.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame397.BackgroundTransparency = 0.1
	 
	Frame397.BorderSizePixel = 0
	 
	Frame397.Parent = ScreenGui3
	 
	local UICorner556 = Instance.new("UICorner")
	 
	UICorner556.CornerRadius = UDim.new(0, 8)
	 
	UICorner556.Parent = Frame397
	 
	local UIStroke560 = Instance.new("UIStroke")
	 
	UIStroke560.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke560.Thickness = 1.2
	 
	UIStroke560.Parent = Frame397
	 
	local TextLabel371 = Instance.new("TextLabel")
	 
	TextLabel371.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel371.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel371.BackgroundTransparency = 1
	 
	TextLabel371.Text = "Auto-Exec Added: SPEED HUB"
	 
	TextLabel371.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel371.TextSize = 13
	 
	TextLabel371.Font = Enum.Font.SourceSansBold
	 
	TextLabel371.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel371.Parent = Frame397
	 
	local tween176 = TweenService:Create(Frame397, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween176:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame245 = Instance.new("Frame")
 
Frame245.Name = "AutoExec_SPORTSCLUB HUB"
 
Frame245.LayoutOrder = 53
 
Frame245.Size = UDim2.new(1, -6, 0, 38)
 
Frame245.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame245.BackgroundTransparency = 0.2
 
Frame245.Parent = ScrollingFrame6
 
local UICorner391 = Instance.new("UICorner")
 
UICorner391.CornerRadius = UDim.new(0, 6)
 
UICorner391.Parent = Frame245
 
local UIStroke359 = Instance.new("UIStroke")
 
UIStroke359.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke359.Thickness = 1
 
UIStroke359.Parent = Frame245
 
local TextLabel218 = Instance.new("TextLabel")
 
TextLabel218.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel218.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel218.BackgroundTransparency = 1
 
TextLabel218.Text = "SPORTSCLUB HUB"
 
TextLabel218.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel218.TextSize = 12
 
TextLabel218.Font = Enum.Font.SourceSansBold
 
TextLabel218.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel218.Parent = Frame245
 
local TextButton151 = Instance.new("TextButton")
 
TextButton151.Size = UDim2.new(0, 96, 0, 26)
 
TextButton151.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton151.TextSize = 11
 
TextButton151.Font = Enum.Font.SourceSansBold
 
TextButton151.Parent = Frame245
 
local UICorner392 = Instance.new("UICorner")
 
UICorner392.CornerRadius = UDim.new(0, 6)
 
UICorner392.Parent = TextButton151
 
local UIStroke360 = Instance.new("UIStroke")
 
UIStroke360.Thickness = 1
 
UIStroke360.Parent = Frame245
 
TextButton151.Text = "AUTO: OFF"
 
TextButton151.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton151.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke360.Color = Color3.fromRGB(60, 60, 60)
 
TextButton151.MouseButton1Click:Connect(function()
	 
	local json52 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json52)
	 
	TextButton151.Text = "AUTO: ON"
	 
	TextButton151.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton151.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke360.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame398 = Instance.new("Frame")
	 
	Frame398.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame398.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame398.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame398.BackgroundTransparency = 0.1
	 
	Frame398.BorderSizePixel = 0
	 
	Frame398.Parent = ScreenGui3
	 
	local UICorner557 = Instance.new("UICorner")
	 
	UICorner557.CornerRadius = UDim.new(0, 8)
	 
	UICorner557.Parent = Frame398
	 
	local UIStroke561 = Instance.new("UIStroke")
	 
	UIStroke561.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke561.Thickness = 1.2
	 
	UIStroke561.Parent = Frame398
	 
	local TextLabel372 = Instance.new("TextLabel")
	 
	TextLabel372.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel372.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel372.BackgroundTransparency = 1
	 
	TextLabel372.Text = "Auto-Exec Added: SPORTSCLUB HUB"
	 
	TextLabel372.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel372.TextSize = 13
	 
	TextLabel372.Font = Enum.Font.SourceSansBold
	 
	TextLabel372.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel372.Parent = Frame398
	 
	local tween177 = TweenService:Create(Frame398, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween177:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame246 = Instance.new("Frame")
 
Frame246.Name = "AutoExec_STEAL AN EGG"
 
Frame246.LayoutOrder = 54
 
Frame246.Size = UDim2.new(1, -6, 0, 38)
 
Frame246.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame246.BackgroundTransparency = 0.2
 
Frame246.Parent = ScrollingFrame6
 
local UICorner393 = Instance.new("UICorner")
 
UICorner393.CornerRadius = UDim.new(0, 6)
 
UICorner393.Parent = Frame246
 
local UIStroke361 = Instance.new("UIStroke")
 
UIStroke361.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke361.Thickness = 1
 
UIStroke361.Parent = Frame246
 
local TextLabel219 = Instance.new("TextLabel")
 
TextLabel219.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel219.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel219.BackgroundTransparency = 1
 
TextLabel219.Text = "STEAL AN EGG"
 
TextLabel219.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel219.TextSize = 12
 
TextLabel219.Font = Enum.Font.SourceSansBold
 
TextLabel219.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel219.Parent = Frame246
 
local TextButton152 = Instance.new("TextButton")
 
TextButton152.Size = UDim2.new(0, 96, 0, 26)
 
TextButton152.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton152.TextSize = 11
 
TextButton152.Font = Enum.Font.SourceSansBold
 
TextButton152.Parent = Frame246
 
local UICorner394 = Instance.new("UICorner")
 
UICorner394.CornerRadius = UDim.new(0, 6)
 
UICorner394.Parent = TextButton152
 
local UIStroke362 = Instance.new("UIStroke")
 
UIStroke362.Thickness = 1
 
UIStroke362.Parent = Frame246
 
TextButton152.Text = "AUTO: OFF"
 
TextButton152.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton152.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke362.Color = Color3.fromRGB(60, 60, 60)
 
TextButton152.MouseButton1Click:Connect(function()
	 
	local json53 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json53)
	 
	TextButton152.Text = "AUTO: ON"
	 
	TextButton152.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton152.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke362.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame399 = Instance.new("Frame")
	 
	Frame399.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame399.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame399.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame399.BackgroundTransparency = 0.1
	 
	Frame399.BorderSizePixel = 0
	 
	Frame399.Parent = ScreenGui3
	 
	local UICorner558 = Instance.new("UICorner")
	 
	UICorner558.CornerRadius = UDim.new(0, 8)
	 
	UICorner558.Parent = Frame399
	 
	local UIStroke562 = Instance.new("UIStroke")
	 
	UIStroke562.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke562.Thickness = 1.2
	 
	UIStroke562.Parent = Frame399
	 
	local TextLabel373 = Instance.new("TextLabel")
	 
	TextLabel373.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel373.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel373.BackgroundTransparency = 1
	 
	TextLabel373.Text = "Auto-Exec Added: STEAL AN EGG"
	 
	TextLabel373.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel373.TextSize = 13
	 
	TextLabel373.Font = Enum.Font.SourceSansBold
	 
	TextLabel373.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel373.Parent = Frame399
	 
	local tween178 = TweenService:Create(Frame399, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween178:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame247 = Instance.new("Frame")
 
Frame247.Name = "AutoExec_UB HUB"
 
Frame247.LayoutOrder = 55
 
Frame247.Size = UDim2.new(1, -6, 0, 38)
 
Frame247.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame247.BackgroundTransparency = 0.2
 
Frame247.Parent = ScrollingFrame6
 
local UICorner395 = Instance.new("UICorner")
 
UICorner395.CornerRadius = UDim.new(0, 6)
 
UICorner395.Parent = Frame247
 
local UIStroke363 = Instance.new("UIStroke")
 
UIStroke363.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke363.Thickness = 1
 
UIStroke363.Parent = Frame247
 
local TextLabel220 = Instance.new("TextLabel")
 
TextLabel220.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel220.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel220.BackgroundTransparency = 1
 
TextLabel220.Text = "UB HUB"
 
TextLabel220.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel220.TextSize = 12
 
TextLabel220.Font = Enum.Font.SourceSansBold
 
TextLabel220.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel220.Parent = Frame247
 
local TextButton153 = Instance.new("TextButton")
 
TextButton153.Size = UDim2.new(0, 96, 0, 26)
 
TextButton153.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton153.TextSize = 11
 
TextButton153.Font = Enum.Font.SourceSansBold
 
TextButton153.Parent = Frame247
 
local UICorner396 = Instance.new("UICorner")
 
UICorner396.CornerRadius = UDim.new(0, 6)
 
UICorner396.Parent = TextButton153
 
local UIStroke364 = Instance.new("UIStroke")
 
UIStroke364.Thickness = 1
 
UIStroke364.Parent = Frame247
 
TextButton153.Text = "AUTO: OFF"
 
TextButton153.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton153.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke364.Color = Color3.fromRGB(60, 60, 60)
 
TextButton153.MouseButton1Click:Connect(function()
	 
	local json54 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json54)
	 
	TextButton153.Text = "AUTO: ON"
	 
	TextButton153.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton153.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke364.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame400 = Instance.new("Frame")
	 
	Frame400.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame400.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame400.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame400.BackgroundTransparency = 0.1
	 
	Frame400.BorderSizePixel = 0
	 
	Frame400.Parent = ScreenGui3
	 
	local UICorner559 = Instance.new("UICorner")
	 
	UICorner559.CornerRadius = UDim.new(0, 8)
	 
	UICorner559.Parent = Frame400
	 
	local UIStroke563 = Instance.new("UIStroke")
	 
	UIStroke563.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke563.Thickness = 1.2
	 
	UIStroke563.Parent = Frame400
	 
	local TextLabel374 = Instance.new("TextLabel")
	 
	TextLabel374.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel374.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel374.BackgroundTransparency = 1
	 
	TextLabel374.Text = "Auto-Exec Added: UB HUB"
	 
	TextLabel374.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel374.TextSize = 13
	 
	TextLabel374.Font = Enum.Font.SourceSansBold
	 
	TextLabel374.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel374.Parent = Frame400
	 
	local tween179 = TweenService:Create(Frame400, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween179:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame248 = Instance.new("Frame")
 
Frame248.Name = "AutoExec_VALINC HUB"
 
Frame248.LayoutOrder = 56
 
Frame248.Size = UDim2.new(1, -6, 0, 38)
 
Frame248.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame248.BackgroundTransparency = 0.2
 
Frame248.Parent = ScrollingFrame6
 
local UICorner397 = Instance.new("UICorner")
 
UICorner397.CornerRadius = UDim.new(0, 6)
 
UICorner397.Parent = Frame248
 
local UIStroke365 = Instance.new("UIStroke")
 
UIStroke365.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke365.Thickness = 1
 
UIStroke365.Parent = Frame248
 
local TextLabel221 = Instance.new("TextLabel")
 
TextLabel221.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel221.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel221.BackgroundTransparency = 1
 
TextLabel221.Text = "VALINC HUB"
 
TextLabel221.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel221.TextSize = 12
 
TextLabel221.Font = Enum.Font.SourceSansBold
 
TextLabel221.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel221.Parent = Frame248
 
local TextButton154 = Instance.new("TextButton")
 
TextButton154.Size = UDim2.new(0, 96, 0, 26)
 
TextButton154.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton154.TextSize = 11
 
TextButton154.Font = Enum.Font.SourceSansBold
 
TextButton154.Parent = Frame248
 
local UICorner398 = Instance.new("UICorner")
 
UICorner398.CornerRadius = UDim.new(0, 6)
 
UICorner398.Parent = TextButton154
 
local UIStroke366 = Instance.new("UIStroke")
 
UIStroke366.Thickness = 1
 
UIStroke366.Parent = Frame248
 
TextButton154.Text = "AUTO: OFF"
 
TextButton154.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton154.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke366.Color = Color3.fromRGB(60, 60, 60)
 
TextButton154.MouseButton1Click:Connect(function()
	 
	local json55 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json55)
	 
	TextButton154.Text = "AUTO: ON"
	 
	TextButton154.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton154.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke366.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame401 = Instance.new("Frame")
	 
	Frame401.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame401.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame401.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame401.BackgroundTransparency = 0.1
	 
	Frame401.BorderSizePixel = 0
	 
	Frame401.Parent = ScreenGui3
	 
	local UICorner560 = Instance.new("UICorner")
	 
	UICorner560.CornerRadius = UDim.new(0, 8)
	 
	UICorner560.Parent = Frame401
	 
	local UIStroke564 = Instance.new("UIStroke")
	 
	UIStroke564.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke564.Thickness = 1.2
	 
	UIStroke564.Parent = Frame401
	 
	local TextLabel375 = Instance.new("TextLabel")
	 
	TextLabel375.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel375.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel375.BackgroundTransparency = 1
	 
	TextLabel375.Text = "Auto-Exec Added: VALINC HUB"
	 
	TextLabel375.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel375.TextSize = 13
	 
	TextLabel375.Font = Enum.Font.SourceSansBold
	 
	TextLabel375.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel375.Parent = Frame401
	 
	local tween180 = TweenService:Create(Frame401, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween180:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame249 = Instance.new("Frame")
 
Frame249.Name = "AutoExec_VANTAGE HUB"
 
Frame249.LayoutOrder = 57
 
Frame249.Size = UDim2.new(1, -6, 0, 38)
 
Frame249.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame249.BackgroundTransparency = 0.2
 
Frame249.Parent = ScrollingFrame6
 
local UICorner399 = Instance.new("UICorner")
 
UICorner399.CornerRadius = UDim.new(0, 6)
 
UICorner399.Parent = Frame249
 
local UIStroke367 = Instance.new("UIStroke")
 
UIStroke367.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke367.Thickness = 1
 
UIStroke367.Parent = Frame249
 
local TextLabel222 = Instance.new("TextLabel")
 
TextLabel222.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel222.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel222.BackgroundTransparency = 1
 
TextLabel222.Text = "VANTAGE HUB"
 
TextLabel222.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel222.TextSize = 12
 
TextLabel222.Font = Enum.Font.SourceSansBold
 
TextLabel222.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel222.Parent = Frame249
 
local TextButton155 = Instance.new("TextButton")
 
TextButton155.Size = UDim2.new(0, 96, 0, 26)
 
TextButton155.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton155.TextSize = 11
 
TextButton155.Font = Enum.Font.SourceSansBold
 
TextButton155.Parent = Frame249
 
local UICorner400 = Instance.new("UICorner")
 
UICorner400.CornerRadius = UDim.new(0, 6)
 
UICorner400.Parent = TextButton155
 
local UIStroke368 = Instance.new("UIStroke")
 
UIStroke368.Thickness = 1
 
UIStroke368.Parent = Frame249
 
TextButton155.Text = "AUTO: OFF"
 
TextButton155.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton155.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke368.Color = Color3.fromRGB(60, 60, 60)
 
TextButton155.MouseButton1Click:Connect(function()
	 
	local json56 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json56)
	 
	TextButton155.Text = "AUTO: ON"
	 
	TextButton155.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton155.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke368.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame402 = Instance.new("Frame")
	 
	Frame402.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame402.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame402.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame402.BackgroundTransparency = 0.1
	 
	Frame402.BorderSizePixel = 0
	 
	Frame402.Parent = ScreenGui3
	 
	local UICorner561 = Instance.new("UICorner")
	 
	UICorner561.CornerRadius = UDim.new(0, 8)
	 
	UICorner561.Parent = Frame402
	 
	local UIStroke565 = Instance.new("UIStroke")
	 
	UIStroke565.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke565.Thickness = 1.2
	 
	UIStroke565.Parent = Frame402
	 
	local TextLabel376 = Instance.new("TextLabel")
	 
	TextLabel376.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel376.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel376.BackgroundTransparency = 1
	 
	TextLabel376.Text = "Auto-Exec Added: VANTAGE HUB"
	 
	TextLabel376.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel376.TextSize = 13
	 
	TextLabel376.Font = Enum.Font.SourceSansBold
	 
	TextLabel376.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel376.Parent = Frame402
	 
	local tween181 = TweenService:Create(Frame402, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween181:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame250 = Instance.new("Frame")
 
Frame250.Name = "AutoExec_VOIDSHELL"
 
Frame250.LayoutOrder = 58
 
Frame250.Size = UDim2.new(1, -6, 0, 38)
 
Frame250.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame250.BackgroundTransparency = 0.2
 
Frame250.Parent = ScrollingFrame6
 
local UICorner401 = Instance.new("UICorner")
 
UICorner401.CornerRadius = UDim.new(0, 6)
 
UICorner401.Parent = Frame250
 
local UIStroke369 = Instance.new("UIStroke")
 
UIStroke369.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke369.Thickness = 1
 
UIStroke369.Parent = Frame250
 
local TextLabel223 = Instance.new("TextLabel")
 
TextLabel223.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel223.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel223.BackgroundTransparency = 1
 
TextLabel223.Text = "VOIDSHELL"
 
TextLabel223.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel223.TextSize = 12
 
TextLabel223.Font = Enum.Font.SourceSansBold
 
TextLabel223.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel223.Parent = Frame250
 
local TextButton156 = Instance.new("TextButton")
 
TextButton156.Size = UDim2.new(0, 96, 0, 26)
 
TextButton156.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton156.TextSize = 11
 
TextButton156.Font = Enum.Font.SourceSansBold
 
TextButton156.Parent = Frame250
 
local UICorner402 = Instance.new("UICorner")
 
UICorner402.CornerRadius = UDim.new(0, 6)
 
UICorner402.Parent = TextButton156
 
local UIStroke370 = Instance.new("UIStroke")
 
UIStroke370.Thickness = 1
 
UIStroke370.Parent = Frame250
 
TextButton156.Text = "AUTO: OFF"
 
TextButton156.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton156.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke370.Color = Color3.fromRGB(60, 60, 60)
 
TextButton156.MouseButton1Click:Connect(function()
	 
	local json57 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true
})
	 
	writefile("SourcesHub_AutoExec.json", json57)
	 
	TextButton156.Text = "AUTO: ON"
	 
	TextButton156.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton156.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke370.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame403 = Instance.new("Frame")
	 
	Frame403.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame403.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame403.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame403.BackgroundTransparency = 0.1
	 
	Frame403.BorderSizePixel = 0
	 
	Frame403.Parent = ScreenGui3
	 
	local UICorner562 = Instance.new("UICorner")
	 
	UICorner562.CornerRadius = UDim.new(0, 8)
	 
	UICorner562.Parent = Frame403
	 
	local UIStroke566 = Instance.new("UIStroke")
	 
	UIStroke566.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke566.Thickness = 1.2
	 
	UIStroke566.Parent = Frame403
	 
	local TextLabel377 = Instance.new("TextLabel")
	 
	TextLabel377.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel377.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel377.BackgroundTransparency = 1
	 
	TextLabel377.Text = "Auto-Exec Added: VOIDSHELL"
	 
	TextLabel377.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel377.TextSize = 13
	 
	TextLabel377.Font = Enum.Font.SourceSansBold
	 
	TextLabel377.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel377.Parent = Frame403
	 
	local tween182 = TweenService:Create(Frame403, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween182:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame251 = Instance.new("Frame")
 
Frame251.Name = "AutoExec_VXEZE HUB"
 
Frame251.LayoutOrder = 59
 
Frame251.Size = UDim2.new(1, -6, 0, 38)
 
Frame251.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame251.BackgroundTransparency = 0.2
 
Frame251.Parent = ScrollingFrame6
 
local UICorner403 = Instance.new("UICorner")
 
UICorner403.CornerRadius = UDim.new(0, 6)
 
UICorner403.Parent = Frame251
 
local UIStroke371 = Instance.new("UIStroke")
 
UIStroke371.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke371.Thickness = 1
 
UIStroke371.Parent = Frame251
 
local TextLabel224 = Instance.new("TextLabel")
 
TextLabel224.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel224.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel224.BackgroundTransparency = 1
 
TextLabel224.Text = "VXEZE HUB"
 
TextLabel224.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel224.TextSize = 12
 
TextLabel224.Font = Enum.Font.SourceSansBold
 
TextLabel224.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel224.Parent = Frame251
 
local TextButton157 = Instance.new("TextButton")
 
TextButton157.Size = UDim2.new(0, 96, 0, 26)
 
TextButton157.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton157.TextSize = 11
 
TextButton157.Font = Enum.Font.SourceSansBold
 
TextButton157.Parent = Frame251
 
local UICorner404 = Instance.new("UICorner")
 
UICorner404.CornerRadius = UDim.new(0, 6)
 
UICorner404.Parent = TextButton157
 
local UIStroke372 = Instance.new("UIStroke")
 
UIStroke372.Thickness = 1
 
UIStroke372.Parent = Frame251
 
TextButton157.Text = "AUTO: OFF"
 
TextButton157.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton157.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke372.Color = Color3.fromRGB(60, 60, 60)
 
TextButton157.MouseButton1Click:Connect(function()
	 
	local json58 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json58)
	 
	TextButton157.Text = "AUTO: ON"
	 
	TextButton157.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton157.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke372.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame404 = Instance.new("Frame")
	 
	Frame404.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame404.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame404.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame404.BackgroundTransparency = 0.1
	 
	Frame404.BorderSizePixel = 0
	 
	Frame404.Parent = ScreenGui3
	 
	local UICorner563 = Instance.new("UICorner")
	 
	UICorner563.CornerRadius = UDim.new(0, 8)
	 
	UICorner563.Parent = Frame404
	 
	local UIStroke567 = Instance.new("UIStroke")
	 
	UIStroke567.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke567.Thickness = 1.2
	 
	UIStroke567.Parent = Frame404
	 
	local TextLabel378 = Instance.new("TextLabel")
	 
	TextLabel378.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel378.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel378.BackgroundTransparency = 1
	 
	TextLabel378.Text = "Auto-Exec Added: VXEZE HUB"
	 
	TextLabel378.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel378.TextSize = 13
	 
	TextLabel378.Font = Enum.Font.SourceSansBold
	 
	TextLabel378.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel378.Parent = Frame404
	 
	local tween183 = TweenService:Create(Frame404, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween183:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame252 = Instance.new("Frame")
 
Frame252.Name = "AutoExec_YURI HUB"
 
Frame252.LayoutOrder = 60
 
Frame252.Size = UDim2.new(1, -6, 0, 38)
 
Frame252.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame252.BackgroundTransparency = 0.2
 
Frame252.Parent = ScrollingFrame6
 
local UICorner405 = Instance.new("UICorner")
 
UICorner405.CornerRadius = UDim.new(0, 6)
 
UICorner405.Parent = Frame252
 
local UIStroke373 = Instance.new("UIStroke")
 
UIStroke373.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke373.Thickness = 1
 
UIStroke373.Parent = Frame252
 
local TextLabel225 = Instance.new("TextLabel")
 
TextLabel225.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel225.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel225.BackgroundTransparency = 1
 
TextLabel225.Text = "YURI HUB"
 
TextLabel225.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel225.TextSize = 12
 
TextLabel225.Font = Enum.Font.SourceSansBold
 
TextLabel225.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel225.Parent = Frame252
 
local TextButton158 = Instance.new("TextButton")
 
TextButton158.Size = UDim2.new(0, 96, 0, 26)
 
TextButton158.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton158.TextSize = 11
 
TextButton158.Font = Enum.Font.SourceSansBold
 
TextButton158.Parent = Frame252
 
local UICorner406 = Instance.new("UICorner")
 
UICorner406.CornerRadius = UDim.new(0, 6)
 
UICorner406.Parent = TextButton158
 
local UIStroke374 = Instance.new("UIStroke")
 
UIStroke374.Thickness = 1
 
UIStroke374.Parent = Frame252
 
TextButton158.Text = "AUTO: OFF"
 
TextButton158.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton158.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke374.Color = Color3.fromRGB(60, 60, 60)
 
TextButton158.MouseButton1Click:Connect(function()
	 
	local json59 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true,
	["YURI HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json59)
	 
	TextButton158.Text = "AUTO: ON"
	 
	TextButton158.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton158.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke374.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame405 = Instance.new("Frame")
	 
	Frame405.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame405.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame405.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame405.BackgroundTransparency = 0.1
	 
	Frame405.BorderSizePixel = 0
	 
	Frame405.Parent = ScreenGui3
	 
	local UICorner564 = Instance.new("UICorner")
	 
	UICorner564.CornerRadius = UDim.new(0, 8)
	 
	UICorner564.Parent = Frame405
	 
	local UIStroke568 = Instance.new("UIStroke")
	 
	UIStroke568.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke568.Thickness = 1.2
	 
	UIStroke568.Parent = Frame405
	 
	local TextLabel379 = Instance.new("TextLabel")
	 
	TextLabel379.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel379.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel379.BackgroundTransparency = 1
	 
	TextLabel379.Text = "Auto-Exec Added: YURI HUB"
	 
	TextLabel379.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel379.TextSize = 13
	 
	TextLabel379.Font = Enum.Font.SourceSansBold
	 
	TextLabel379.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel379.Parent = Frame405
	 
	local tween184 = TweenService:Create(Frame405, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween184:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame253 = Instance.new("Frame")
 
Frame253.Name = "AutoExec_ZERO HUB"
 
Frame253.LayoutOrder = 61
 
Frame253.Size = UDim2.new(1, -6, 0, 38)
 
Frame253.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame253.BackgroundTransparency = 0.2
 
Frame253.Parent = ScrollingFrame6
 
local UICorner407 = Instance.new("UICorner")
 
UICorner407.CornerRadius = UDim.new(0, 6)
 
UICorner407.Parent = Frame253
 
local UIStroke375 = Instance.new("UIStroke")
 
UIStroke375.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke375.Thickness = 1
 
UIStroke375.Parent = Frame253
 
local TextLabel226 = Instance.new("TextLabel")
 
TextLabel226.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel226.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel226.BackgroundTransparency = 1
 
TextLabel226.Text = "ZERO HUB"
 
TextLabel226.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel226.TextSize = 12
 
TextLabel226.Font = Enum.Font.SourceSansBold
 
TextLabel226.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel226.Parent = Frame253
 
local TextButton159 = Instance.new("TextButton")
 
TextButton159.Size = UDim2.new(0, 96, 0, 26)
 
TextButton159.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton159.TextSize = 11
 
TextButton159.Font = Enum.Font.SourceSansBold
 
TextButton159.Parent = Frame253
 
local UICorner408 = Instance.new("UICorner")
 
UICorner408.CornerRadius = UDim.new(0, 6)
 
UICorner408.Parent = TextButton159
 
local UIStroke376 = Instance.new("UIStroke")
 
UIStroke376.Thickness = 1
 
UIStroke376.Parent = Frame253
 
TextButton159.Text = "AUTO: OFF"
 
TextButton159.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton159.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke376.Color = Color3.fromRGB(60, 60, 60)
 
TextButton159.MouseButton1Click:Connect(function()
	 
	local json60 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true,
	["YURI HUB"] = true,
	["ZERO HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json60)
	 
	TextButton159.Text = "AUTO: ON"
	 
	TextButton159.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton159.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke376.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame406 = Instance.new("Frame")
	 
	Frame406.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame406.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame406.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame406.BackgroundTransparency = 0.1
	 
	Frame406.BorderSizePixel = 0
	 
	Frame406.Parent = ScreenGui3
	 
	local UICorner565 = Instance.new("UICorner")
	 
	UICorner565.CornerRadius = UDim.new(0, 8)
	 
	UICorner565.Parent = Frame406
	 
	local UIStroke569 = Instance.new("UIStroke")
	 
	UIStroke569.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke569.Thickness = 1.2
	 
	UIStroke569.Parent = Frame406
	 
	local TextLabel380 = Instance.new("TextLabel")
	 
	TextLabel380.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel380.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel380.BackgroundTransparency = 1
	 
	TextLabel380.Text = "Auto-Exec Added: ZERO HUB"
	 
	TextLabel380.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel380.TextSize = 13
	 
	TextLabel380.Font = Enum.Font.SourceSansBold
	 
	TextLabel380.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel380.Parent = Frame406
	 
	local tween185 = TweenService:Create(Frame406, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween185:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame254 = Instance.new("Frame")
 
Frame254.Name = "AutoExec_ZERO POINT HUB"
 
Frame254.LayoutOrder = 62
 
Frame254.Size = UDim2.new(1, -6, 0, 38)
 
Frame254.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame254.BackgroundTransparency = 0.2
 
Frame254.Parent = ScrollingFrame6
 
local UICorner409 = Instance.new("UICorner")
 
UICorner409.CornerRadius = UDim.new(0, 6)
 
UICorner409.Parent = Frame254
 
local UIStroke377 = Instance.new("UIStroke")
 
UIStroke377.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke377.Thickness = 1
 
UIStroke377.Parent = Frame254
 
local TextLabel227 = Instance.new("TextLabel")
 
TextLabel227.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel227.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel227.BackgroundTransparency = 1
 
TextLabel227.Text = "ZERO POINT HUB"
 
TextLabel227.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel227.TextSize = 12
 
TextLabel227.Font = Enum.Font.SourceSansBold
 
TextLabel227.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel227.Parent = Frame254
 
local TextButton160 = Instance.new("TextButton")
 
TextButton160.Size = UDim2.new(0, 96, 0, 26)
 
TextButton160.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton160.TextSize = 11
 
TextButton160.Font = Enum.Font.SourceSansBold
 
TextButton160.Parent = Frame254
 
local UICorner410 = Instance.new("UICorner")
 
UICorner410.CornerRadius = UDim.new(0, 6)
 
UICorner410.Parent = TextButton160
 
local UIStroke378 = Instance.new("UIStroke")
 
UIStroke378.Thickness = 1
 
UIStroke378.Parent = Frame254
 
TextButton160.Text = "AUTO: OFF"
 
TextButton160.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton160.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke378.Color = Color3.fromRGB(60, 60, 60)
 
TextButton160.MouseButton1Click:Connect(function()
	 
	local json61 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true,
	["YURI HUB"] = true,
	["ZERO HUB"] = true,
	["ZERO POINT HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json61)
	 
	TextButton160.Text = "AUTO: ON"
	 
	TextButton160.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton160.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke378.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame407 = Instance.new("Frame")
	 
	Frame407.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame407.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame407.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame407.BackgroundTransparency = 0.1
	 
	Frame407.BorderSizePixel = 0
	 
	Frame407.Parent = ScreenGui3
	 
	local UICorner566 = Instance.new("UICorner")
	 
	UICorner566.CornerRadius = UDim.new(0, 8)
	 
	UICorner566.Parent = Frame407
	 
	local UIStroke570 = Instance.new("UIStroke")
	 
	UIStroke570.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke570.Thickness = 1.2
	 
	UIStroke570.Parent = Frame407
	 
	local TextLabel381 = Instance.new("TextLabel")
	 
	TextLabel381.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel381.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel381.BackgroundTransparency = 1
	 
	TextLabel381.Text = "Auto-Exec Added: ZERO POINT HUB"
	 
	TextLabel381.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel381.TextSize = 13
	 
	TextLabel381.Font = Enum.Font.SourceSansBold
	 
	TextLabel381.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel381.Parent = Frame407
	 
	local tween186 = TweenService:Create(Frame407, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween186:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame255 = Instance.new("Frame")
 
Frame255.Name = "AutoExec_ZEROIN HUB"
 
Frame255.LayoutOrder = 63
 
Frame255.Size = UDim2.new(1, -6, 0, 38)
 
Frame255.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame255.BackgroundTransparency = 0.2
 
Frame255.Parent = ScrollingFrame6
 
local UICorner411 = Instance.new("UICorner")
 
UICorner411.CornerRadius = UDim.new(0, 6)
 
UICorner411.Parent = Frame255
 
local UIStroke379 = Instance.new("UIStroke")
 
UIStroke379.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke379.Thickness = 1
 
UIStroke379.Parent = Frame255
 
local TextLabel228 = Instance.new("TextLabel")
 
TextLabel228.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel228.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel228.BackgroundTransparency = 1
 
TextLabel228.Text = "ZEROIN HUB"
 
TextLabel228.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel228.TextSize = 12
 
TextLabel228.Font = Enum.Font.SourceSansBold
 
TextLabel228.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel228.Parent = Frame255
 
local TextButton161 = Instance.new("TextButton")
 
TextButton161.Size = UDim2.new(0, 96, 0, 26)
 
TextButton161.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton161.TextSize = 11
 
TextButton161.Font = Enum.Font.SourceSansBold
 
TextButton161.Parent = Frame255
 
local UICorner412 = Instance.new("UICorner")
 
UICorner412.CornerRadius = UDim.new(0, 6)
 
UICorner412.Parent = TextButton161
 
local UIStroke380 = Instance.new("UIStroke")
 
UIStroke380.Thickness = 1
 
UIStroke380.Parent = Frame255
 
TextButton161.Text = "AUTO: OFF"
 
TextButton161.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton161.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke380.Color = Color3.fromRGB(60, 60, 60)
 
TextButton161.MouseButton1Click:Connect(function()
	 
	local json62 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true,
	["YURI HUB"] = true,
	["ZERO HUB"] = true,
	["ZERO POINT HUB"] = true,
	["ZEROIN HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json62)
	 
	TextButton161.Text = "AUTO: ON"
	 
	TextButton161.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton161.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke380.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame408 = Instance.new("Frame")
	 
	Frame408.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame408.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame408.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame408.BackgroundTransparency = 0.1
	 
	Frame408.BorderSizePixel = 0
	 
	Frame408.Parent = ScreenGui3
	 
	local UICorner567 = Instance.new("UICorner")
	 
	UICorner567.CornerRadius = UDim.new(0, 8)
	 
	UICorner567.Parent = Frame408
	 
	local UIStroke571 = Instance.new("UIStroke")
	 
	UIStroke571.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke571.Thickness = 1.2
	 
	UIStroke571.Parent = Frame408
	 
	local TextLabel382 = Instance.new("TextLabel")
	 
	TextLabel382.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel382.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel382.BackgroundTransparency = 1
	 
	TextLabel382.Text = "Auto-Exec Added: ZEROIN HUB"
	 
	TextLabel382.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel382.TextSize = 13
	 
	TextLabel382.Font = Enum.Font.SourceSansBold
	 
	TextLabel382.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel382.Parent = Frame408
	 
	local tween187 = TweenService:Create(Frame408, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween187:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame256 = Instance.new("Frame")
 
Frame256.Name = "AutoExec_ZK HUB"
 
Frame256.LayoutOrder = 64
 
Frame256.Size = UDim2.new(1, -6, 0, 38)
 
Frame256.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame256.BackgroundTransparency = 0.2
 
Frame256.Parent = ScrollingFrame6
 
local UICorner413 = Instance.new("UICorner")
 
UICorner413.CornerRadius = UDim.new(0, 6)
 
UICorner413.Parent = Frame256
 
local UIStroke381 = Instance.new("UIStroke")
 
UIStroke381.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke381.Thickness = 1
 
UIStroke381.Parent = Frame256
 
local TextLabel229 = Instance.new("TextLabel")
 
TextLabel229.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel229.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel229.BackgroundTransparency = 1
 
TextLabel229.Text = "ZK HUB"
 
TextLabel229.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel229.TextSize = 12
 
TextLabel229.Font = Enum.Font.SourceSansBold
 
TextLabel229.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel229.Parent = Frame256
 
local TextButton162 = Instance.new("TextButton")
 
TextButton162.Size = UDim2.new(0, 96, 0, 26)
 
TextButton162.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton162.TextSize = 11
 
TextButton162.Font = Enum.Font.SourceSansBold
 
TextButton162.Parent = Frame256
 
local UICorner414 = Instance.new("UICorner")
 
UICorner414.CornerRadius = UDim.new(0, 6)
 
UICorner414.Parent = TextButton162
 
local UIStroke382 = Instance.new("UIStroke")
 
UIStroke382.Thickness = 1
 
UIStroke382.Parent = Frame256
 
TextButton162.Text = "AUTO: OFF"
 
TextButton162.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton162.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke382.Color = Color3.fromRGB(60, 60, 60)
 
TextButton162.MouseButton1Click:Connect(function()
	 
	local json63 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true,
	["YURI HUB"] = true,
	["ZERO HUB"] = true,
	["ZERO POINT HUB"] = true,
	["ZEROIN HUB"] = true,
	["ZK HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json63)
	 
	TextButton162.Text = "AUTO: ON"
	 
	TextButton162.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton162.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke382.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame409 = Instance.new("Frame")
	 
	Frame409.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame409.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame409.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame409.BackgroundTransparency = 0.1
	 
	Frame409.BorderSizePixel = 0
	 
	Frame409.Parent = ScreenGui3
	 
	local UICorner568 = Instance.new("UICorner")
	 
	UICorner568.CornerRadius = UDim.new(0, 8)
	 
	UICorner568.Parent = Frame409
	 
	local UIStroke572 = Instance.new("UIStroke")
	 
	UIStroke572.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke572.Thickness = 1.2
	 
	UIStroke572.Parent = Frame409
	 
	local TextLabel383 = Instance.new("TextLabel")
	 
	TextLabel383.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel383.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel383.BackgroundTransparency = 1
	 
	TextLabel383.Text = "Auto-Exec Added: ZK HUB"
	 
	TextLabel383.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel383.TextSize = 13
	 
	TextLabel383.Font = Enum.Font.SourceSansBold
	 
	TextLabel383.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel383.Parent = Frame409
	 
	local tween188 = TweenService:Create(Frame409, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween188:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
local Frame257 = Instance.new("Frame")
 
Frame257.Name = "AutoExec_ZNEX HUB"
 
Frame257.LayoutOrder = 65
 
Frame257.Size = UDim2.new(1, -6, 0, 38)
 
Frame257.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
 
Frame257.BackgroundTransparency = 0.2
 
Frame257.Parent = ScrollingFrame6
 
local UICorner415 = Instance.new("UICorner")
 
UICorner415.CornerRadius = UDim.new(0, 6)
 
UICorner415.Parent = Frame257
 
local UIStroke383 = Instance.new("UIStroke")
 
UIStroke383.Color = Color3.fromRGB(35, 35, 35)
 
UIStroke383.Thickness = 1
 
UIStroke383.Parent = Frame257
 
local TextLabel230 = Instance.new("TextLabel")
 
TextLabel230.Size = UDim2.new(0.65, 0, 1, 0)
 
TextLabel230.Position = UDim2.new(0, 10, 0, 0)
 
TextLabel230.BackgroundTransparency = 1
 
TextLabel230.Text = "ZNEX HUB"
 
TextLabel230.TextColor3 = Color3.fromRGB(220, 220, 220)
 
TextLabel230.TextSize = 12
 
TextLabel230.Font = Enum.Font.SourceSansBold
 
TextLabel230.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel230.Parent = Frame257
 
local TextButton163 = Instance.new("TextButton")
 
TextButton163.Size = UDim2.new(0, 96, 0, 26)
 
TextButton163.Position = UDim2.new(1, -102, 0.5, -13)
 
TextButton163.TextSize = 11
 
TextButton163.Font = Enum.Font.SourceSansBold
 
TextButton163.Parent = Frame257
 
local UICorner416 = Instance.new("UICorner")
 
UICorner416.CornerRadius = UDim.new(0, 6)
 
UICorner416.Parent = TextButton163
 
local UIStroke384 = Instance.new("UIStroke")
 
UIStroke384.Thickness = 1
 
UIStroke384.Parent = Frame257
 
TextButton163.Text = "AUTO: OFF"
 
TextButton163.TextColor3 = Color3.fromRGB(180, 180, 180)
 
TextButton163.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
 
UIStroke384.Color = Color3.fromRGB(60, 60, 60)
 
TextButton163.MouseButton1Click:Connect(function()
	 
	local json64 = HttpService:JSONEncode({
	["AIRFLOW HUB"] = true,
	["AJJANS HUB"] = true,
	["ANTI HIT"] = true,
	["ASVRA HUB"] = true,
	["AUTO STEAL"] = true,
	["AUTO STEAL & FARM"] = true,
	["AXON HUB"] = true,
	["AXONIC HUB"] = true,
	["BEE HUB BACK"] = true,
	BIGFROOT = true,
	["BK HUB"] = true,
	["BLYXO HUB"] = true,
	["CHILLI HUB"] = true,
	["CLOVER HUB"] = true,
	["DECODE HUB"] = true,
	["FLOW HUB"] = true,
	["FOXNAME HUB"] = true,
	["FYNESSED HUB"] = true,
	["FYY HUB"] = true,
	["GS HUB"] = true,
	["HOSHI HUB"] = true,
	JINHUB = true,
	["KALI HUB"] = true,
	["KEXXE HUB"] = true,
	["LENNON HUB"] = true,
	["LEST HUB"] = true,
	LKZ = true,
	["LUMIN HUB"] = true,
	["MIRANDA HUB"] = true,
	["MOSHI HUB"] = true,
	["NASI RENDANG HUB"] = true,
	["NEMESIS HUB"] = true,
	["NEOX HUB"] = true,
	["NEVERLOSE SCRIPT"] = true,
	["NO KICK"] = true,
	["NOVA HUB"] = true,
	["OMG HUB"] = true,
	["OUROBOROS HUB"] = true,
	["OXIDE HUB"] = true,
	["PIG HUB"] = true,
	["PROBEST HUB"] = true,
	["QUANTUM HUB"] = true,
	["RENE BATERBONIA SCRIPT"] = true,
	["RIFT HUB"] = true,
	["SAIOPS HUB"] = true,
	["SCRIPTVERSE HUB"] = true,
	["SENA HUB"] = true,
	["SNOWY HUB"] = true,
	["SOLIX HUB"] = true,
	["SOLIX [NEW]"] = true,
	["SPEED HUB"] = true,
	["SPORTSCLUB HUB"] = true,
	["STEAL AN EGG"] = true,
	["UB HUB"] = true,
	["VALINC HUB"] = true,
	["VANTAGE HUB"] = true,
	VOIDSHELL = true,
	["VXEZE HUB"] = true,
	["YURI HUB"] = true,
	["ZERO HUB"] = true,
	["ZERO POINT HUB"] = true,
	["ZEROIN HUB"] = true,
	["ZK HUB"] = true,
	["ZNEX HUB"] = true
})
	 
	writefile("SourcesHub_AutoExec.json", json64)
	 
	TextButton163.Text = "AUTO: ON"
	 
	TextButton163.TextColor3 = Color3.fromRGB(50, 230, 100)
	 
	TextButton163.BackgroundColor3 = Color3.fromRGB(8, 36, 14)
	 
	UIStroke384.Color = Color3.fromRGB(30, 180, 70)
	 
	local Frame410 = Instance.new("Frame")
	 
	Frame410.Size = UDim2.new(0, 260, 0, 38)
	 
	Frame410.Position = UDim2.new(1, 10, 1, -55)
	 
	Frame410.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	 
	Frame410.BackgroundTransparency = 0.1
	 
	Frame410.BorderSizePixel = 0
	 
	Frame410.Parent = ScreenGui3
	 
	local UICorner569 = Instance.new("UICorner")
	 
	UICorner569.CornerRadius = UDim.new(0, 8)
	 
	UICorner569.Parent = Frame410
	 
	local UIStroke573 = Instance.new("UIStroke")
	 
	UIStroke573.Color = Color3.fromRGB(120, 0, 0)
	 
	UIStroke573.Thickness = 1.2
	 
	UIStroke573.Parent = Frame410
	 
	local TextLabel384 = Instance.new("TextLabel")
	 
	TextLabel384.Size = UDim2.new(1, -16, 1, 0)
	 
	TextLabel384.Position = UDim2.new(0, 8, 0, 0)
	 
	TextLabel384.BackgroundTransparency = 1
	 
	TextLabel384.Text = "Auto-Exec Added: ZNEX HUB"
	 
	TextLabel384.TextColor3 = Color3.fromRGB(240, 240, 240)
	 
	TextLabel384.TextSize = 13
	 
	TextLabel384.Font = Enum.Font.SourceSansBold
	 
	TextLabel384.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel384.Parent = Frame410
	 
	local tween189 = TweenService:Create(Frame410, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(1, -275, 1, -55) })
	 
	tween189:Play()
	 
	task.delay(2.5, function(...)
	end)
end)
 
task.spawn(function(...)
end)
 
Frame37.InputBegan:Connect(function(input, gameProcessed)
end)
 
Frame37.InputChanged:Connect(function(input2, gameProcessed2)
end)
 
UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
end)
 
TextButton.MouseButton1Click:Connect(function()
	 
	TextButton.Text = "+"
	 
	ScrollingFrame.Visible = false
	 
	ScrollingFrame3.Visible = false
	 
	ScrollingFrame2.Visible = false
	 
	ScrollingFrame5.Visible = false
	 
	ScrollingFrame6.Visible = false
	 
	ScrollingFrame4.Visible = false
	 
	local tween190 = TweenService:Create(Frame35, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.new(0, 490, 0, 50) })
	 
	local tween191 = TweenService:Create(Frame36, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.new(0, 482, 0, 42) })
	 
	tween191:Play()
	 
	tween190:Play()
end)
 
UserInputService.InputBegan:Connect(function(input4, gameProcessed4)
end)
