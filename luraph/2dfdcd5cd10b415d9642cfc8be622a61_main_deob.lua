 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(886, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 200, 0, 113)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0, 2, 0.25, 0), UDim2.new(0, 5, -0.125, -6), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0.25, -4, 0.5, 2), UDim2.new(0, -2, 0, -4), UDim2.new(0, -5, 0, 1)), Path2DControlPoint.new(UDim2.new(0.25, 2, 0.5, -1), UDim2.new(-0.0625, 4, 0, 1), UDim2.new(0.125, -7, 0, -7)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.27272728085517883)
 
Path2D:GetPositionOnCurve(0.25)
 
Path2D:GetPositionOnCurve(0.75)
 
Path2D:GetPositionOnCurve(0.25)
 
Path2D:GetTangentOnCurve(0.875)
 
Path2D:GetTangentOnCurve(0.27272728085517883)
 
Path2D:GetTangentOnCurve(0.5)
 
Path2D:GetPositionOnCurveArcLength(0.0625)
 
Path2D:GetPositionOnCurveArcLength(0.53846156597137451)
 
Path2D:GetTangentOnCurveArcLength(0.25)
 
Path2D:GetTangentOnCurveArcLength(0.4285714328289032)
 
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
 
Folder2.Name = "116273317"
 
Folder:WaitForChild("116273317")
 
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
 
 
local Players = game:GetService("Players")
 
local TweenService = game:GetService("TweenService")
 
local UserInputService = game:GetService("UserInputService")
 
local MarketplaceService = game:GetService("MarketplaceService")
 
local hui = gethui()
 
local PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
 
local hui2 = gethui()
 
local CoreGui = game:GetService("CoreGui")
 
local children = hui:GetChildren()
 
for i, v in ipairs(children) do
end
 
local children2 = PlayerGui:GetChildren()
 
for i2, v2 in ipairs(children2) do
end
 
local children3 = hui2:GetChildren()
 
for i3, v3 in ipairs(children3) do
end
 
local children4 = CoreGui:GetChildren()
 
for i4, v4 in ipairs(children4) do
end
 
local ScreenGui2 = Instance.new("ScreenGui")
 
ScreenGui2.Name = "NR_Loader"
 
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
ScreenGui2.ResetOnSpawn = false
 
ScreenGui2.IgnoreGuiInset = true
 
ScreenGui2.DisplayOrder = 1000
 
ScreenGui2.Parent = hui
 
local UICorner = Instance.new("UICorner")
 
UICorner.CornerRadius = UDim.new(0, 14)
 
local UIStroke = Instance.new("UIStroke")
 
UIStroke.Thickness = 1
 
UIStroke.Transparency = 0.2
 
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
local Frame2 = Instance.new("Frame")
 
Frame2.Active = true
 
Frame2.Parent = ScreenGui2
 
Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
 
Frame2.ClipsDescendants = true
 
Frame2.Name = "Window"
 
Frame2.Position = UDim2.fromScale(0.5, 0.5)
 
Frame2.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
 
Frame2.BackgroundTransparency = 0.12
 
Frame2.BorderSizePixel = 0
 
Frame2.Size = UDim2.fromOffset(420, 330)
 
UICorner.Parent = Frame2
 
UIStroke.Parent = Frame2
 
local UIScale = Instance.new("UIScale")
 
UIScale.Parent = Frame2
 
UIScale.Scale = 0.34
 
local changedSignal = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize")
 
changedSignal:Connect(function(arg)
	 
	UIScale.Scale = 0.34
end)
 
local changedSignal2 = workspace:GetPropertyChangedSignal("CurrentCamera")
 
changedSignal2:Connect(function(arg2)
	 
	UIScale.Scale = 0.34
	 
	local changedSignal3 = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize")
	 
	changedSignal3:Connect(function(arg64)
		 
		UIScale.Scale = 0.34
	end)
end)
 
UIScale.Scale = 0.30600000000000005
 
Frame2.BackgroundTransparency = 1
 
Frame2.UIStroke.Transparency = 1
 
local tween = TweenService:Create(UIScale, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 0.34 })
 
tween:Play()
 
local tween2 = TweenService:Create(Frame2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.12 })
 
tween2:Play()
 
local tween3 = TweenService:Create(Frame2.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.2 })
 
tween3:Play()
 
local Frame3 = Instance.new("Frame")
 
Frame3.AnchorPoint = Vector2.new(1, 1)
 
Frame3.Name = "Toasts"
 
Frame3.Position = UDim2.new(1, -12, 1, -12)
 
Frame3.Parent = ScreenGui2
 
Frame3.BackgroundTransparency = 1
 
Frame3.AutomaticSize = Enum.AutomaticSize.Y
 
Frame3.Size = UDim2.new(0, 250, 0, 0)
 
local UIListLayout = Instance.new("UIListLayout")
 
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
 
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
 
UIListLayout.Parent = Frame3
 
UIListLayout.Padding = UDim.new(0, 6)
 
local UICorner2 = Instance.new("UICorner")
 
UICorner2.CornerRadius = UDim.new(0, 14)
 
local Frame4 = Instance.new("Frame")
 
Frame4.Name = "TopBar"
 
Frame4.BackgroundColor3 = Color3.fromRGB(18, 21, 20)
 
Frame4.Parent = Frame2
 
Frame4.BackgroundTransparency = 0.1
 
Frame4.BorderSizePixel = 0
 
Frame4.Size = UDim2.new(1, 0, 0, 52)
 
UICorner2.Parent = Frame4
 
local Frame5 = Instance.new("Frame")
 
Frame5.BackgroundTransparency = 0.1
 
Frame5.Position = UDim2.new(0, 0, 1, -14)
 
Frame5.Parent = Frame4
 
Frame5.BackgroundColor3 = Color3.fromRGB(18, 21, 20)
 
Frame5.BorderSizePixel = 0
 
Frame5.Size = UDim2.new(1, 0, 0, 14)
 
local UICorner3 = Instance.new("UICorner")
 
UICorner3.CornerRadius = UDim.new(0, 8)
 
local TextButton = Instance.new("TextButton")
 
TextButton.Visible = false
 
TextButton.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton.Parent = Frame4
 
TextButton.Text = "<"
 
TextButton.AutoButtonColor = false
 
TextButton.Font = Enum.Font.GothamBold
 
TextButton.Name = "Back"
 
TextButton.Position = UDim2.new(0, 12, 0.5, -13)
 
TextButton.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton.BackgroundTransparency = 1
 
TextButton.TextSize = 14
 
TextButton.Size = UDim2.fromOffset(26, 26)
 
UICorner3.Parent = TextButton
 
local UICorner4 = Instance.new("UICorner")
 
UICorner4.CornerRadius = UDim.new(0, 8)
 
local ImageLabel = Instance.new("ImageLabel")
 
ImageLabel.Image = "rbxassetid://124947058155926"
 
ImageLabel.BackgroundTransparency = 1
 
ImageLabel.Position = UDim2.new(0, 14, 0.5, -16)
 
ImageLabel.Parent = Frame4
 
ImageLabel.Size = UDim2.fromOffset(32, 32)
 
UICorner4.Parent = ImageLabel
 
local TextLabel = Instance.new("TextLabel")
 
TextLabel.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel.Parent = Frame4
 
TextLabel.Text = "Nasi Rendang LUA"
 
TextLabel.Font = Enum.Font.GothamBold
 
TextLabel.BackgroundTransparency = 1
 
TextLabel.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel.TextSize = 14
 
TextLabel.Size = UDim2.new(1, -160, 0, 17)
 
local TextLabel2 = Instance.new("TextLabel")
 
TextLabel2.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel2.Parent = Frame4
 
TextLabel2.Text = "Free Script Loader"
 
TextLabel2.Font = Enum.Font.Gotham
 
TextLabel2.BackgroundTransparency = 1
 
TextLabel2.Position = UDim2.new(0, 56, 0, 27)
 
TextLabel2.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel2.TextSize = 11
 
TextLabel2.Size = UDim2.new(1, -160, 0, 13)
 
local UICorner5 = Instance.new("UICorner")
 
UICorner5.CornerRadius = UDim.new(0, 8)
 
local TextButton2 = Instance.new("TextButton")
 
TextButton2.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton2.Parent = Frame4
 
TextButton2.Text = "x"
 
TextButton2.AutoButtonColor = false
 
TextButton2.Font = Enum.Font.GothamBold
 
TextButton2.BackgroundTransparency = 0.2
 
TextButton2.Position = UDim2.new(1, -36, 0.5, -13)
 
TextButton2.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton2.TextSize = 14
 
TextButton2.Size = UDim2.fromOffset(26, 26)
 
UICorner5.Parent = TextButton2
 
local UICorner6 = Instance.new("UICorner")
 
UICorner6.CornerRadius = UDim.new(0, 8)
 
local UIStroke2 = Instance.new("UIStroke")
 
UIStroke2.Thickness = 1
 
UIStroke2.Transparency = 0.2
 
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke2.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton3 = Instance.new("TextButton")
 
TextButton3.Visible = false
 
TextButton3.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton3.Parent = Frame4
 
TextButton3.Text = "Logout"
 
TextButton3.AutoButtonColor = false
 
TextButton3.Font = Enum.Font.GothamBold
 
TextButton3.Name = "Logout"
 
TextButton3.Position = UDim2.new(1, -100, 0.5, -12)
 
TextButton3.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton3.BackgroundTransparency = 0.2
 
TextButton3.TextSize = 11
 
TextButton3.Size = UDim2.fromOffset(58, 24)
 
UICorner6.Parent = TextButton3
 
UIStroke2.Parent = TextButton3
 
TextButton2.MouseEnter:Connect(function(arg3)
	 
	local tween98 = TweenService:Create(TextButton2, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(220, 90, 90) })
	 
	tween98:Play()
end)
 
TextButton2.MouseLeave:Connect(function(arg4)
	 
	local tween99 = TweenService:Create(TextButton2, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween99:Play()
end)
 
TextButton.MouseEnter:Connect(function(arg5)
	 
	local tween100 = TweenService:Create(TextButton, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(228, 232, 229) })
	 
	tween100:Play()
end)
 
TextButton.MouseLeave:Connect(function(arg6)
	 
	local tween101 = TweenService:Create(TextButton, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween101:Play()
end)
 
TextButton3.MouseEnter:Connect(function(arg7)
	 
	local tween102 = TweenService:Create(TextButton3, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(220, 90, 90) })
	 
	tween102:Play()
end)
 
TextButton3.MouseLeave:Connect(function(arg8)
	 
	local tween103 = TweenService:Create(TextButton3, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween103:Play()
end)
 
Frame4.Active = true
 
Frame4.InputBegan:Connect(function(input, gameProcessed)
end)
 
Frame4.InputChanged:Connect(function(input2, gameProcessed2)
end)
 
UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
end)
 
local Frame6 = Instance.new("Frame")
 
Frame6.Name = "Content"
 
Frame6.Position = UDim2.new(0, 0, 0, 52)
 
Frame6.Parent = Frame2
 
Frame6.ClipsDescendants = true
 
Frame6.BackgroundTransparency = 1
 
Frame6.Size = UDim2.new(1, 0, 1, -52)
 
local Frame7 = Instance.new("Frame")
 
Frame7.Name = "Home"
 
Frame7.Position = UDim2.fromScale(0, 0)
 
Frame7.Parent = Frame6
 
Frame7.BackgroundTransparency = 1
 
Frame7.Size = UDim2.fromScale(1, 1)
 
local Frame8 = Instance.new("Frame")
 
Frame8.Visible = false
 
Frame8.Name = "Gold"
 
Frame8.Position = UDim2.fromScale(-1, 0)
 
Frame8.Parent = Frame6
 
Frame8.BackgroundTransparency = 1
 
Frame8.Size = UDim2.fromScale(1, 1)
 
local Frame9 = Instance.new("Frame")
 
Frame9.Visible = false
 
Frame9.Name = "Games"
 
Frame9.Position = UDim2.fromScale(1, 0)
 
Frame9.Parent = Frame6
 
Frame9.BackgroundTransparency = 1
 
Frame9.Size = UDim2.fromScale(1, 1)
 
TextButton.MouseButton1Click:Connect(function()
end)
 
local UICorner7 = Instance.new("UICorner")
 
UICorner7.CornerRadius = UDim.new(0, 14)
 
local ImageLabel2 = Instance.new("ImageLabel")
 
ImageLabel2.AnchorPoint = Vector2.new(0.5, 0)
 
ImageLabel2.Image = "rbxassetid://124947058155926"
 
ImageLabel2.BackgroundTransparency = 1
 
ImageLabel2.Position = UDim2.new(0.5, 0, 0, 8)
 
ImageLabel2.Parent = Frame7
 
ImageLabel2.Size = UDim2.fromOffset(60, 60)
 
UICorner7.Parent = ImageLabel2
 
local UIStroke3 = Instance.new("UIStroke")
 
UIStroke3.Thickness = 1.5
 
UIStroke3.Transparency = 0.55
 
UIStroke3.Parent = ImageLabel2
 
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke3.Color = Color3.fromRGB(160, 95, 245)
 
local TextLabel3 = Instance.new("TextLabel")
 
TextLabel3.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel3.Parent = Frame7
 
TextLabel3.Text = "Nasi Rendang LUA Free Script"
 
TextLabel3.Font = Enum.Font.GothamBold
 
TextLabel3.BackgroundTransparency = 1
 
TextLabel3.Position = UDim2.new(0, 16, 0, 72)
 
TextLabel3.TextXAlignment = Enum.TextXAlignment.Center
 
TextLabel3.TextSize = 16
 
TextLabel3.Size = UDim2.new(1, -32, 0, 20)
 
local TextLabel4 = Instance.new("TextLabel")
 
TextLabel4.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel4.Parent = Frame7
 
TextLabel4.Text = "Detecting game..."
 
TextLabel4.Font = Enum.Font.Gotham
 
TextLabel4.BackgroundTransparency = 1
 
TextLabel4.Position = UDim2.new(0, 16, 0, 92)
 
TextLabel4.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel4.TextXAlignment = Enum.TextXAlignment.Center
 
TextLabel4.TextSize = 11
 
TextLabel4.Size = UDim2.new(1, -32, 0, 14)
 
local UICorner8 = Instance.new("UICorner")
 
UICorner8.CornerRadius = UDim.new(0, 9)
 
local UIStroke4 = Instance.new("UIStroke")
 
UIStroke4.Thickness = 1
 
UIStroke4.Transparency = 0.2
 
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke4.Color = Color3.fromRGB(38, 44, 41)
 
local Frame10 = Instance.new("Frame")
 
Frame10.BackgroundTransparency = 0.2
 
Frame10.Position = UDim2.new(0, 40, 0, 112)
 
Frame10.Parent = Frame7
 
Frame10.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
Frame10.BorderSizePixel = 0
 
Frame10.Size = UDim2.new(1, -80, 0, 32)
 
UICorner8.Parent = Frame10
 
UIStroke4.Parent = Frame10
 
local TextBox = Instance.new("TextBox")
 
TextBox.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextBox.Parent = Frame10
 
TextBox.Text = ""
 
TextBox.TextXAlignment = Enum.TextXAlignment.Center
 
TextBox.ClearTextOnFocus = false
 
TextBox.Font = Enum.Font.GothamBold
 
TextBox.BackgroundTransparency = 1
 
TextBox.PlaceholderColor3 = Color3.fromRGB(120, 128, 124)
 
TextBox.Position = UDim2.fromOffset(8, 0)
 
TextBox.PlaceholderText = "Paste your key (Standard / Lifetime)"
 
TextBox.TextSize = 12
 
TextBox.Size = UDim2.new(1, -16, 1, 0)
 
local UICorner9 = Instance.new("UICorner")
 
UICorner9.CornerRadius = UDim.new(0, 10)
 
local UIStroke5 = Instance.new("UIStroke")
 
UIStroke5.Thickness = 1
 
UIStroke5.Transparency = 0.2
 
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke5.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton4 = Instance.new("TextButton")
 
TextButton4.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextButton4.Parent = Frame7
 
TextButton4.Text = "GET KEY"
 
TextButton4.AutoButtonColor = false
 
TextButton4.Font = Enum.Font.GothamBold
 
TextButton4.BackgroundTransparency = 0.2
 
TextButton4.Position = UDim2.new(0, 40, 0, 152)
 
TextButton4.TextSize = 12
 
TextButton4.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton4.BorderSizePixel = 0
 
TextButton4.Size = UDim2.new(0.5, -46, 0, 34)
 
UICorner9.Parent = TextButton4
 
UIStroke5.Parent = TextButton4
 
local UIScale2 = Instance.new("UIScale")
 
UIScale2.Parent = TextButton4
 
TextButton4.MouseEnter:Connect(function(arg9)
	 
	local tween104 = TweenService:Create(UIScale2, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween104:Play()
	 
	local tween105 = TweenService:Create(TextButton4, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween105:Play()
end)
 
TextButton4.MouseLeave:Connect(function(arg10)
	 
	local tween106 = TweenService:Create(UIScale2, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween106:Play()
	 
	local tween107 = TweenService:Create(TextButton4, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween107:Play()
end)
 
TextButton4.MouseButton1Down:Connect(function(x, y)
	 
	local tween108 = TweenService:Create(UIScale2, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
	 
	tween108:Play()
end)
 
TextButton4.MouseButton1Up:Connect(function(arg11)
	 
	local tween109 = TweenService:Create(UIScale2, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween109:Play()
end)
 
local UICorner10 = Instance.new("UICorner")
 
UICorner10.CornerRadius = UDim.new(0, 10)
 
local UIStroke6 = Instance.new("UIStroke")
 
UIStroke6.Thickness = 1
 
UIStroke6.Transparency = 0.15
 
UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke6.Color = Color3.fromRGB(160, 95, 245)
 
local TextButton5 = Instance.new("TextButton")
 
TextButton5.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextButton5.Parent = Frame7
 
TextButton5.Text = "CHECK KEY"
 
TextButton5.AutoButtonColor = false
 
TextButton5.Font = Enum.Font.GothamBold
 
TextButton5.BackgroundTransparency = 0.1
 
TextButton5.Position = UDim2.new(0.5, 6, 0, 152)
 
TextButton5.TextSize = 12
 
TextButton5.BackgroundColor3 = Color3.fromRGB(58, 34, 92)
 
TextButton5.BorderSizePixel = 0
 
TextButton5.Size = UDim2.new(0.5, -46, 0, 34)
 
UICorner10.Parent = TextButton5
 
UIStroke6.Parent = TextButton5
 
local UIScale3 = Instance.new("UIScale")
 
UIScale3.Parent = TextButton5
 
TextButton5.MouseEnter:Connect(function(arg12)
	 
	local tween110 = TweenService:Create(UIScale3, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween110:Play()
	 
	local tween111 = TweenService:Create(TextButton5, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
	 
	tween111:Play()
end)
 
TextButton5.MouseLeave:Connect(function(arg13)
	 
	local tween112 = TweenService:Create(UIScale3, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween112:Play()
	 
	local tween113 = TweenService:Create(TextButton5, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
	 
	tween113:Play()
end)
 
TextButton5.MouseButton1Down:Connect(function(x2, y2)
	 
	local tween114 = TweenService:Create(UIScale3, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
	 
	tween114:Play()
end)
 
TextButton5.MouseButton1Up:Connect(function(arg14)
	 
	local tween115 = TweenService:Create(UIScale3, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween115:Play()
end)
 
local UICorner11 = Instance.new("UICorner")
 
UICorner11.CornerRadius = UDim.new(0, 10)
 
local UIStroke7 = Instance.new("UIStroke")
 
UIStroke7.Thickness = 1
 
UIStroke7.Transparency = 0.2
 
UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke7.Color = Color3.fromRGB(255, 216, 92)
 
local TextButton6 = Instance.new("TextButton")
 
TextButton6.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextButton6.Parent = Frame7
 
TextButton6.Text = "GOLD MEMBER KEY"
 
TextButton6.AutoButtonColor = false
 
TextButton6.Font = Enum.Font.GothamBold
 
TextButton6.BackgroundTransparency = 0.2
 
TextButton6.Position = UDim2.new(0, 40, 0, 194)
 
TextButton6.TextSize = 12
 
TextButton6.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton6.BorderSizePixel = 0
 
TextButton6.Size = UDim2.new(1, -80, 0, 38)
 
UICorner11.Parent = TextButton6
 
UIStroke7.Parent = TextButton6
 
local UIScale4 = Instance.new("UIScale")
 
UIScale4.Parent = TextButton6
 
TextButton6.MouseEnter:Connect(function(arg15)
	 
	local tween116 = TweenService:Create(UIScale4, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween116:Play()
	 
	local tween117 = TweenService:Create(TextButton6, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween117:Play()
end)
 
TextButton6.MouseLeave:Connect(function(arg16)
	 
	local tween118 = TweenService:Create(UIScale4, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween118:Play()
	 
	local tween119 = TweenService:Create(TextButton6, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween119:Play()
end)
 
TextButton6.MouseButton1Down:Connect(function(x3, y3)
	 
	local tween120 = TweenService:Create(UIScale4, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
	 
	tween120:Play()
end)
 
TextButton6.MouseButton1Up:Connect(function(arg17)
	 
	local tween121 = TweenService:Create(UIScale4, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween121:Play()
end)
 
local UICorner12 = Instance.new("UICorner")
 
UICorner12.CornerRadius = UDim.new(0, 10)
 
local UIStroke8 = Instance.new("UIStroke")
 
UIStroke8.Thickness = 1
 
UIStroke8.Transparency = 1
 
UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke8.Color = Color3.fromRGB(160, 95, 245)
 
local TextButton7 = Instance.new("TextButton")
 
TextButton7.Visible = false
 
TextButton7.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextButton7.Parent = Frame7
 
TextButton7.Text = "CHOOSE GAME"
 
TextButton7.AutoButtonColor = false
 
TextButton7.Font = Enum.Font.GothamBold
 
TextButton7.BackgroundTransparency = 1
 
TextButton7.Position = UDim2.new(0, 40, 0, 150)
 
TextButton7.TextSize = 13
 
TextButton7.BackgroundColor3 = Color3.fromRGB(58, 34, 92)
 
TextButton7.BorderSizePixel = 0
 
TextButton7.Size = UDim2.new(1, -80, 0, 44)
 
UICorner12.Parent = TextButton7
 
UIStroke8.Parent = TextButton7
 
local UIScale5 = Instance.new("UIScale")
 
UIScale5.Parent = TextButton7
 
TextButton7.MouseEnter:Connect(function(arg18)
	 
	local tween122 = TweenService:Create(UIScale5, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween122:Play()
	 
	local tween123 = TweenService:Create(TextButton7, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
	 
	tween123:Play()
end)
 
TextButton7.MouseLeave:Connect(function(arg19)
	 
	local tween124 = TweenService:Create(UIScale5, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween124:Play()
	 
	local tween125 = TweenService:Create(TextButton7, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
	 
	tween125:Play()
end)
 
TextButton7.MouseButton1Down:Connect(function(x4, y4)
	 
	local tween126 = TweenService:Create(UIScale5, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
	 
	tween126:Play()
end)
 
TextButton7.MouseButton1Up:Connect(function(arg20)
	 
	local tween127 = TweenService:Create(UIScale5, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween127:Play()
end)
 
TextButton7.MouseButton1Click:Connect(function()
end)
 
local UICorner13 = Instance.new("UICorner")
 
UICorner13.CornerRadius = UDim.new(0, 14)
 
local UIStroke9 = Instance.new("UIStroke")
 
UIStroke9.Thickness = 1
 
UIStroke9.Transparency = 0.2
 
UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke9.Color = Color3.fromRGB(38, 44, 41)
 
local Frame11 = Instance.new("Frame")
 
Frame11.Visible = false
 
Frame11.Parent = Frame7
 
Frame11.AnchorPoint = Vector2.new(0.5, 0)
 
Frame11.BorderSizePixel = 0
 
Frame11.Name = "TierBadge"
 
Frame11.Position = UDim2.new(0.5, 0, 0, 110)
 
Frame11.BackgroundTransparency = 0.08
 
Frame11.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
Frame11.AutomaticSize = Enum.AutomaticSize.X
 
Frame11.Size = UDim2.fromOffset(0, 28)
 
UICorner13.Parent = Frame11
 
UIStroke9.Parent = Frame11
 
local UIPadding = Instance.new("UIPadding")
 
UIPadding.Parent = Frame11
 
UIPadding.PaddingLeft = UDim.new(0, 16)
 
UIPadding.PaddingRight = UDim.new(0, 16)
 
local TextLabel5 = Instance.new("TextLabel")
 
TextLabel5.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel5.Parent = Frame11
 
TextLabel5.Text = ""
 
TextLabel5.Font = Enum.Font.GothamBold
 
TextLabel5.BackgroundTransparency = 1
 
TextLabel5.TextSize = 12
 
TextLabel5.TextYAlignment = Enum.TextYAlignment.Center
 
TextLabel5.AutomaticSize = Enum.AutomaticSize.X
 
TextLabel5.Size = UDim2.fromOffset(0, 28)
 
local TextLabel6 = Instance.new("TextLabel")
 
TextLabel6.Visible = false
 
TextLabel6.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel6.Parent = Frame7
 
TextLabel6.Text = ""
 
TextLabel6.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel6.AnchorPoint = Vector2.new(0.5, 0)
 
TextLabel6.Font = Enum.Font.Gotham
 
TextLabel6.BackgroundTransparency = 1
 
TextLabel6.Position = UDim2.new(0.5, 0, 0, 204)
 
TextLabel6.TextXAlignment = Enum.TextXAlignment.Center
 
TextLabel6.Name = "ExpiryLabel"
 
TextLabel6.TextSize = 11
 
TextLabel6.Size = UDim2.new(1, -60, 0, 16)
 
local TextLabel7 = Instance.new("TextLabel")
 
TextLabel7.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextLabel7.Parent = Frame8
 
TextLabel7.Text = "GOLD MEMBER"
 
TextLabel7.Font = Enum.Font.GothamBold
 
TextLabel7.BackgroundTransparency = 1
 
TextLabel7.Position = UDim2.new(0, 16, 0, 58)
 
TextLabel7.TextXAlignment = Enum.TextXAlignment.Center
 
TextLabel7.TextSize = 18
 
TextLabel7.Size = UDim2.new(1, -32, 0, 22)
 
local UICorner14 = Instance.new("UICorner")
 
UICorner14.CornerRadius = UDim.new(0, 9)
 
local UIStroke10 = Instance.new("UIStroke")
 
UIStroke10.Thickness = 1
 
UIStroke10.Transparency = 0.2
 
UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke10.Color = Color3.fromRGB(255, 216, 92)
 
local Frame12 = Instance.new("Frame")
 
Frame12.BackgroundTransparency = 0.2
 
Frame12.Position = UDim2.new(0, 40, 0, 102)
 
Frame12.Parent = Frame8
 
Frame12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
Frame12.BorderSizePixel = 0
 
Frame12.Size = UDim2.new(1, -80, 0, 34)
 
UICorner14.Parent = Frame12
 
UIStroke10.Parent = Frame12
 
local TextBox2 = Instance.new("TextBox")
 
TextBox2.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextBox2.Parent = Frame12
 
TextBox2.Text = ""
 
TextBox2.TextXAlignment = Enum.TextXAlignment.Center
 
TextBox2.ClearTextOnFocus = false
 
TextBox2.Font = Enum.Font.GothamBold
 
TextBox2.BackgroundTransparency = 1
 
TextBox2.PlaceholderColor3 = Color3.fromRGB(120, 128, 124)
 
TextBox2.Position = UDim2.fromOffset(8, 0)
 
TextBox2.PlaceholderText = "Paste your Gold key"
 
TextBox2.TextSize = 12
 
TextBox2.Size = UDim2.new(1, -16, 1, 0)
 
local UICorner15 = Instance.new("UICorner")
 
UICorner15.CornerRadius = UDim.new(0, 10)
 
local UIStroke11 = Instance.new("UIStroke")
 
UIStroke11.Thickness = 1
 
UIStroke11.Transparency = 0.2
 
UIStroke11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke11.Color = Color3.fromRGB(255, 216, 92)
 
local TextButton8 = Instance.new("TextButton")
 
TextButton8.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextButton8.Parent = Frame8
 
TextButton8.Text = "GET GOLD KEY"
 
TextButton8.AutoButtonColor = false
 
TextButton8.Font = Enum.Font.GothamBold
 
TextButton8.BackgroundTransparency = 0.2
 
TextButton8.Position = UDim2.new(0, 40, 0, 148)
 
TextButton8.TextSize = 11
 
TextButton8.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton8.BorderSizePixel = 0
 
TextButton8.Size = UDim2.new(0.5, -46, 0, 38)
 
UICorner15.Parent = TextButton8
 
UIStroke11.Parent = TextButton8
 
local UIScale6 = Instance.new("UIScale")
 
UIScale6.Parent = TextButton8
 
TextButton8.MouseEnter:Connect(function(arg21)
	 
	local tween128 = TweenService:Create(UIScale6, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween128:Play()
	 
	local tween129 = TweenService:Create(TextButton8, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween129:Play()
end)
 
TextButton8.MouseLeave:Connect(function(arg22)
	 
	local tween130 = TweenService:Create(UIScale6, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween130:Play()
	 
	local tween131 = TweenService:Create(TextButton8, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween131:Play()
end)
 
TextButton8.MouseButton1Down:Connect(function(x5, y5)
	 
	local tween132 = TweenService:Create(UIScale6, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
	 
	tween132:Play()
end)
 
TextButton8.MouseButton1Up:Connect(function(arg23)
	 
	local tween133 = TweenService:Create(UIScale6, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween133:Play()
end)
 
local UICorner16 = Instance.new("UICorner")
 
UICorner16.CornerRadius = UDim.new(0, 10)
 
local UIStroke12 = Instance.new("UIStroke")
 
UIStroke12.Thickness = 1
 
UIStroke12.Transparency = 0.15
 
UIStroke12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke12.Color = Color3.fromRGB(255, 216, 92)
 
local TextButton9 = Instance.new("TextButton")
 
TextButton9.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextButton9.Parent = Frame8
 
TextButton9.Text = "CHECK KEY"
 
TextButton9.AutoButtonColor = false
 
TextButton9.Font = Enum.Font.GothamBold
 
TextButton9.BackgroundTransparency = 0.1
 
TextButton9.Position = UDim2.new(0.5, 6, 0, 148)
 
TextButton9.TextSize = 12
 
TextButton9.BackgroundColor3 = Color3.fromRGB(70, 56, 20)
 
TextButton9.BorderSizePixel = 0
 
TextButton9.Size = UDim2.new(0.5, -46, 0, 38)
 
UICorner16.Parent = TextButton9
 
UIStroke12.Parent = TextButton9
 
local UIScale7 = Instance.new("UIScale")
 
UIScale7.Parent = TextButton9
 
TextButton9.MouseEnter:Connect(function(arg24)
	 
	local tween134 = TweenService:Create(UIScale7, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween134:Play()
	 
	local tween135 = TweenService:Create(TextButton9, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
	 
	tween135:Play()
end)
 
TextButton9.MouseLeave:Connect(function(arg25)
	 
	local tween136 = TweenService:Create(UIScale7, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween136:Play()
	 
	local tween137 = TweenService:Create(TextButton9, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
	 
	tween137:Play()
end)
 
TextButton9.MouseButton1Down:Connect(function(x6, y6)
	 
	local tween138 = TweenService:Create(UIScale7, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
	 
	tween138:Play()
end)
 
TextButton9.MouseButton1Up:Connect(function(arg26)
	 
	local tween139 = TweenService:Create(UIScale7, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
	 
	tween139:Play()
end)
 
TextButton5.MouseButton1Click:Connect(function()
	 
	TextButton5.Text = "CHECKING..."
	 
	task.spawn(function(...)
		 
		TextButton5.Text = "CHECK KEY"
		 
		Frame10.Position = (UDim2.new(0, 40, 0, 112) + UDim2.fromOffset(-5, 0))
		 
		task.wait(0.04)
		 
		Frame10.Position = (UDim2.new(0, 40, 0, 112) + UDim2.fromOffset(5, 0))
		 
		task.wait(0.04)
		 
	end)
end)
 
TextBox.FocusLost:Connect(function(enterPressed, inputObject)
	 
	TextButton5.Text = "CHECKING..."
	 
	task.spawn(function(...)
		 
		TextButton5.Text = "CHECK KEY"
		 
		Frame10.Position = ((UDim2.new(0, 40, 0, 112) + UDim2.fromOffset(-5, 0)) + UDim2.fromOffset(-5, 0))
		 
		task.wait(0.04)
		 
		Frame10.Position = ((UDim2.new(0, 40, 0, 112) + UDim2.fromOffset(-5, 0)) + UDim2.fromOffset(5, 0))
		 
		task.wait(0.04)
		 
	end)
end)
 
TextButton9.MouseButton1Click:Connect(function()
	 
	TextButton9.Text = "CHECKING..."
	 
	task.spawn(function(...)
		 
		TextButton9.Text = "CHECK KEY"
		 
		Frame12.Position = (UDim2.new(0, 40, 0, 102) + UDim2.fromOffset(-5, 0))
		 
		task.wait(0.04)
		 
		Frame12.Position = (UDim2.new(0, 40, 0, 102) + UDim2.fromOffset(5, 0))
		 
		task.wait(0.04)
		 
	end)
end)
 
TextBox2.FocusLost:Connect(function(enterPressed2, inputObject2)
	 
	TextButton9.Text = "CHECKING..."
	 
	task.spawn(function(...)
		 
		TextButton9.Text = "CHECK KEY"
		 
		Frame12.Position = ((UDim2.new(0, 40, 0, 102) + UDim2.fromOffset(-5, 0)) + UDim2.fromOffset(-5, 0))
		 
		task.wait(0.04)
		 
		Frame12.Position = ((UDim2.new(0, 40, 0, 102) + UDim2.fromOffset(-5, 0)) + UDim2.fromOffset(5, 0))
		 
		task.wait(0.04)
		 
	end)
end)
 
TextButton6.MouseButton1Click:Connect(function()
	 
	Frame9.Visible = true
	 
	local tween140 = TweenService:Create(Frame9, TweenInfo.new(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.fromScale(2, 0) })
	 
	tween140:Play()
	 
	Frame7.Visible = true
	 
	local tween141 = TweenService:Create(Frame7, TweenInfo.new(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.fromScale(1, 0) })
	 
	tween141:Play()
	 
	Frame8.Visible = true
	 
	local tween142 = TweenService:Create(Frame8, TweenInfo.new(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.fromScale(0, 0) })
	 
	tween142:Play()
	 
	TextButton.Visible = true
	 
	local tween143 = TweenService:Create(ImageLabel, TweenInfo.new(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 44, 0.5, -16) })
	 
	tween143:Play()
	 
	local tween144 = TweenService:Create(TextLabel, TweenInfo.new(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 86, 0, 10) })
	 
	tween144:Play()
	 
	local tween145 = TweenService:Create(TextLabel2, TweenInfo.new(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 86, 0, 27) })
	 
	tween145:Play()
	 
	TextLabel2.Text = "Gold members"
	 
	task.delay(0.28, function(...)
	end)
end)
 
TextButton4.MouseButton1Click:Connect(function()
	 
	setclipboard("https://www.nrlscript.com/key")
	 
	local UICorner77 = Instance.new("UICorner")
	 
	UICorner77.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke49 = Instance.new("UIStroke")
	 
	UIStroke49.Thickness = 1
	 
	UIStroke49.Transparency = 0.2
	 
	UIStroke49.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke49.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame20 = Instance.new("Frame")
	 
	Frame20.BackgroundTransparency = 0.05
	 
	Frame20.Parent = Frame3
	 
	Frame20.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame20.BorderSizePixel = 0
	 
	Frame20.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner77.Parent = Frame20
	 
	UIStroke49.Parent = Frame20
	 
	local UICorner78 = Instance.new("UICorner")
	 
	UICorner78.CornerRadius = UDim.new(0, 2)
	 
	local Frame21 = Instance.new("Frame")
	 
	Frame21.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame21.Parent = Frame20
	 
	Frame21.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame21.BorderSizePixel = 0
	 
	Frame21.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner78.Parent = Frame21
	 
	local TextLabel82 = Instance.new("TextLabel")
	 
	TextLabel82.TextWrapped = true
	 
	TextLabel82.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel82.Parent = Frame20
	 
	TextLabel82.Text = "Key page copied — open it in your browser: https://www.nrlscript.com/key"
	 
	TextLabel82.Font = Enum.Font.Gotham
	 
	TextLabel82.BackgroundTransparency = 1
	 
	TextLabel82.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel82.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel82.TextSize = 12
	 
	TextLabel82.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale27 = Instance.new("UIScale")
	 
	UIScale27.Parent = Frame20
	 
	UIScale27.Scale = 0.85
	 
	local tween146 = TweenService:Create(UIScale27, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween146:Play()
	 
	task.delay(8, function(...)
	end)
end)
 
TextButton8.MouseButton1Click:Connect(function()
	 
	setclipboard("https://discord.gg/vrzg9YaNPj")
	 
	local UICorner79 = Instance.new("UICorner")
	 
	UICorner79.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke50 = Instance.new("UIStroke")
	 
	UIStroke50.Thickness = 1
	 
	UIStroke50.Transparency = 0.2
	 
	UIStroke50.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke50.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame22 = Instance.new("Frame")
	 
	Frame22.BackgroundTransparency = 0.05
	 
	Frame22.Parent = Frame3
	 
	Frame22.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame22.BorderSizePixel = 0
	 
	Frame22.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner79.Parent = Frame22
	 
	UIStroke50.Parent = Frame22
	 
	local UICorner80 = Instance.new("UICorner")
	 
	UICorner80.CornerRadius = UDim.new(0, 2)
	 
	local Frame23 = Instance.new("Frame")
	 
	Frame23.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame23.Parent = Frame22
	 
	Frame23.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame23.BorderSizePixel = 0
	 
	Frame23.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner80.Parent = Frame23
	 
	local TextLabel83 = Instance.new("TextLabel")
	 
	TextLabel83.TextWrapped = true
	 
	TextLabel83.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel83.Parent = Frame22
	 
	TextLabel83.Text = "Discord invite copied — join to get Gold key."
	 
	TextLabel83.Font = Enum.Font.Gotham
	 
	TextLabel83.BackgroundTransparency = 1
	 
	TextLabel83.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel83.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel83.TextSize = 12
	 
	TextLabel83.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale28 = Instance.new("UIScale")
	 
	UIScale28.Parent = Frame22
	 
	UIScale28.Scale = 0.85
	 
	local tween147 = TweenService:Create(UIScale28, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween147:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
	 
	local contents = readfile("nr_loader_key.txt")
	 
	local result = contents .. "|":gmatch("([^|]*)|")
	 
	for k, v5 in result do
	end
	 
	local result2 = k:gsub("%s+", "")
	 
	local result3 = result2:gsub("%s", "")
	 
	local result4 = result3:upper()
	 
	HttpService:UrlEncode(result4)
	 
	gethwid()
	 
	HttpService:UrlEncode("uid-0")
	 
end)
 
TextButton3.MouseButton1Click:Connect(function()
end)
 
local TextButton10 = Instance.new("TextButton")
 
TextButton10.TextColor3 = Color3.fromRGB(160, 95, 245)
 
TextButton10.Parent = Frame7
 
TextButton10.Text = "Need help? discord.gg/vrzg9YaNPj — click to copy"
 
TextButton10.AutoButtonColor = false
 
TextButton10.Font = Enum.Font.Gotham
 
TextButton10.BackgroundTransparency = 1
 
TextButton10.Position = UDim2.new(0, 40, 0, 240)
 
TextButton10.TextSize = 10
 
TextButton10.Size = UDim2.new(1, -80, 0, 18)
 
TextButton10.MouseButton1Click:Connect(function()
	 
	setclipboard("https://discord.gg/vrzg9YaNPj")
	 
	local UICorner81 = Instance.new("UICorner")
	 
	UICorner81.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke51 = Instance.new("UIStroke")
	 
	UIStroke51.Thickness = 1
	 
	UIStroke51.Transparency = 0.2
	 
	UIStroke51.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke51.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame24 = Instance.new("Frame")
	 
	Frame24.BackgroundTransparency = 0.05
	 
	Frame24.Parent = Frame3
	 
	Frame24.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame24.BorderSizePixel = 0
	 
	Frame24.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner81.Parent = Frame24
	 
	UIStroke51.Parent = Frame24
	 
	local UICorner82 = Instance.new("UICorner")
	 
	UICorner82.CornerRadius = UDim.new(0, 2)
	 
	local Frame25 = Instance.new("Frame")
	 
	Frame25.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame25.Parent = Frame24
	 
	Frame25.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame25.BorderSizePixel = 0
	 
	Frame25.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner82.Parent = Frame25
	 
	local TextLabel84 = Instance.new("TextLabel")
	 
	TextLabel84.TextWrapped = true
	 
	TextLabel84.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel84.Parent = Frame24
	 
	TextLabel84.Text = "Invite link copied to clipboard"
	 
	TextLabel84.Font = Enum.Font.Gotham
	 
	TextLabel84.BackgroundTransparency = 1
	 
	TextLabel84.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel84.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel84.TextSize = 12
	 
	TextLabel84.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale29 = Instance.new("UIScale")
	 
	UIScale29.Parent = Frame24
	 
	UIScale29.Scale = 0.85
	 
	local tween148 = TweenService:Create(UIScale29, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween148:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
 
local TextLabel8 = Instance.new("TextLabel")
 
TextLabel8.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel8.Parent = Frame7
 
TextLabel8.Text = "16 scripts available  |  Wave"
 
TextLabel8.AnchorPoint = Vector2.new(0, 1)
 
TextLabel8.Font = Enum.Font.Gotham
 
TextLabel8.BackgroundTransparency = 1
 
TextLabel8.Position = UDim2.new(0, 16, 1, -8)
 
TextLabel8.TextXAlignment = Enum.TextXAlignment.Center
 
TextLabel8.TextSize = 10
 
TextLabel8.Size = UDim2.new(1, -32, 0, 12)
 
task.spawn(function(...)
	 
	local tween4 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween4:Play()
	 
	task.wait(1.15)
	 
	local tween5 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween5:Play()
	 
	task.wait(1.15)
	 
	local tween6 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween6:Play()
	 
	task.wait(1.15)
	 
	local tween7 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween7:Play()
	 
	task.wait(1.15)
	 
	local tween8 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween8:Play()
	 
	task.wait(1.15)
	 
	local tween9 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween9:Play()
	 
	task.wait(1.15)
	 
	local tween10 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween10:Play()
	 
	task.wait(1.15)
	 
	local tween11 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween11:Play()
	 
	task.wait(1.15)
	 
	local tween12 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween12:Play()
	 
	task.wait(1.15)
	 
	local tween13 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween13:Play()
	 
	task.wait(1.15)
	 
	local tween14 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween14:Play()
	 
	task.wait(1.15)
	 
	local tween15 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween15:Play()
	 
	task.wait(1.15)
	 
	local tween16 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween16:Play()
	 
	task.wait(1.15)
	 
	local tween17 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween17:Play()
	 
	task.wait(1.15)
	 
	local tween18 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween18:Play()
	 
	task.wait(1.15)
	 
	local tween19 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween19:Play()
	 
	task.wait(1.15)
	 
	local tween20 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween20:Play()
	 
	task.wait(1.15)
	 
	local tween21 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween21:Play()
	 
	task.wait(1.15)
	 
	local tween22 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween22:Play()
	 
	task.wait(1.15)
	 
	local tween23 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween23:Play()
	 
	task.wait(1.15)
	 
	local tween24 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween24:Play()
	 
	task.wait(1.15)
	 
	local tween25 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween25:Play()
	 
	task.wait(1.15)
	 
	local tween26 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween26:Play()
	 
	task.wait(1.15)
	 
	local tween27 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween27:Play()
	 
	task.wait(1.15)
	 
	local tween28 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween28:Play()
	 
	task.wait(1.15)
	 
	local tween29 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween29:Play()
	 
	task.wait(1.15)
	 
	local tween30 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween30:Play()
	 
	task.wait(1.15)
	 
	local tween31 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween31:Play()
	 
	task.wait(1.15)
	 
	local tween32 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween32:Play()
	 
	task.wait(1.15)
	 
	local tween33 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween33:Play()
	 
	task.wait(1.15)
	 
	local tween34 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween34:Play()
	 
	task.wait(1.15)
	 
	local tween35 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween35:Play()
	 
	task.wait(1.15)
	 
	local tween36 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween36:Play()
	 
	task.wait(1.15)
	 
	local tween37 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween37:Play()
	 
	task.wait(1.15)
	 
	local tween38 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween38:Play()
	 
	task.wait(1.15)
	 
	local tween39 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween39:Play()
	 
	task.wait(1.15)
	 
	local tween40 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween40:Play()
	 
	task.wait(1.15)
	 
	local tween41 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween41:Play()
	 
	task.wait(1.15)
	 
	local tween42 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween42:Play()
	 
	task.wait(1.15)
	 
	local tween43 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween43:Play()
	 
	task.wait(1.15)
	 
	local tween44 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween44:Play()
	 
	task.wait(1.15)
	 
	local tween45 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween45:Play()
	 
	task.wait(1.15)
	 
	local tween46 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween46:Play()
	 
	task.wait(1.15)
	 
	local tween47 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween47:Play()
	 
	task.wait(1.15)
	 
	local tween48 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween48:Play()
	 
	task.wait(1.15)
	 
	local tween49 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween49:Play()
	 
	task.wait(1.15)
	 
	local tween50 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween50:Play()
	 
	task.wait(1.15)
	 
	local tween51 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween51:Play()
	 
	task.wait(1.15)
	 
	local tween52 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween52:Play()
	 
	task.wait(1.15)
	 
	local tween53 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.45 })
	 
	tween53:Play()
	 
	task.wait(1.15)
	 
	local tween54 = TweenService:Create(UIStroke3, TweenInfo.new(1.1, Enum.EasingStyle.Sine), { Transparency = 0.85 })
	 
	tween54:Play()
	 
	task.wait(1.15)
	 
end)
 
local ScrollingFrame = Instance.new("ScrollingFrame")
 
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(38, 44, 41)
 
ScrollingFrame.Parent = Frame9
 
ScrollingFrame.ScrollBarThickness = 3
 
ScrollingFrame.ScrollBarImageTransparency = 0.3
 
ScrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
 
ScrollingFrame.BackgroundTransparency = 1
 
ScrollingFrame.Position = UDim2.new(0, 10, 0, 6)
 
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
 
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
 
ScrollingFrame.BorderSizePixel = 0
 
ScrollingFrame.Size = UDim2.new(1, -20, 1, -12)
 
local UIListLayout2 = Instance.new("UIListLayout")
 
UIListLayout2.Parent = ScrollingFrame
 
UIListLayout2.Padding = UDim.new(0, 8)
 
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
 
local UIPadding2 = Instance.new("UIPadding")
 
UIPadding2.PaddingTop = UDim.new(0, 4)
 
UIPadding2.PaddingBottom = UDim.new(0, 6)
 
UIPadding2.PaddingRight = UDim.new(0, 6)
 
UIPadding2.PaddingLeft = UDim.new(0, 2)
 
UIPadding2.Parent = ScrollingFrame
 
task.spawn(function(...)
	 
	MarketplaceService:GetProductInfo(0)
	 
	task.wait(0.4)
	 
	MarketplaceService:GetProductInfo(0)
	 
	task.wait(0.8)
	 
	MarketplaceService:GetProductInfo(0)
	 
	task.wait(1.2000000000000002)
	 
	MarketplaceService:GetProductInfo(0)
	 
	task.wait(1.6)
	 
	MarketplaceService:GetProductInfo(0)
	 
	task.wait(2)
	 
	request({ Method = "GET", Url = "https://games.roblox.com/v1/games/multiget-place-details?placeIds=0" })
	 
	TextLabel4.Text = "Game not identified"
end)
 
local UICorner17 = Instance.new("UICorner")
 
UICorner17.CornerRadius = UDim.new(0, 10)
 
local UIStroke13 = Instance.new("UIStroke")
 
UIStroke13.Thickness = 1
 
UIStroke13.Transparency = 0.2
 
UIStroke13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke13.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton11 = Instance.new("TextButton")
 
TextButton11.LayoutOrder = 1
 
TextButton11.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton11.BackgroundTransparency = 0.2
 
TextButton11.AutoButtonColor = false
 
TextButton11.Parent = ScrollingFrame
 
TextButton11.Text = ""
 
TextButton11.BorderSizePixel = 0
 
TextButton11.Size = UDim2.new(1, 0, 0, 58)
 
UICorner17.Parent = TextButton11
 
UIStroke13.Parent = TextButton11
 
local UICorner18 = Instance.new("UICorner")
 
UICorner18.CornerRadius = UDim.new(0, 8)
 
local ImageLabel3 = Instance.new("ImageLabel")
 
ImageLabel3.Image = "rbxthumb://type=GameIcon&id=10708913337&w=150&h=150"
 
ImageLabel3.BackgroundTransparency = 0.3
 
ImageLabel3.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel3.Parent = TextButton11
 
ImageLabel3.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel3.Size = UDim2.fromOffset(34, 34)
 
UICorner18.Parent = ImageLabel3
 
local TextLabel9 = Instance.new("TextLabel")
 
TextLabel9.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel9.Parent = TextButton11
 
TextLabel9.Text = "Anime Dice"
 
TextLabel9.Font = Enum.Font.GothamBold
 
TextLabel9.BackgroundTransparency = 1
 
TextLabel9.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel9.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel9.TextSize = 13
 
TextLabel9.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel10 = Instance.new("TextLabel")
 
TextLabel10.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel10.Parent = TextButton11
 
TextLabel10.Text = "Auto roll / farm / luck"
 
TextLabel10.Font = Enum.Font.Gotham
 
TextLabel10.BackgroundTransparency = 1
 
TextLabel10.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel10.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel10.TextSize = 11
 
TextLabel10.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel11 = Instance.new("TextLabel")
 
TextLabel11.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel11.Parent = TextButton11
 
TextLabel11.Text = ""
 
TextLabel11.AnchorPoint = Vector2.new(1, 0)
 
TextLabel11.Font = Enum.Font.GothamBold
 
TextLabel11.BackgroundTransparency = 1
 
TextLabel11.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel11.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel11.TextSize = 9.5
 
TextLabel11.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel4 = Instance.new("ImageLabel")
 
ImageLabel4.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel4.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel4.BackgroundTransparency = 1
 
ImageLabel4.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel4.Parent = TextButton11
 
ImageLabel4.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel4.Visible = false
 
ImageLabel4.Size = UDim2.fromOffset(14, 14)
 
local TextLabel12 = Instance.new("TextLabel")
 
TextLabel12.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel12.Parent = TextButton11
 
TextLabel12.Text = ">"
 
TextLabel12.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel12.Font = Enum.Font.GothamBold
 
TextLabel12.BackgroundTransparency = 1
 
TextLabel12.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel12.TextSize = 12
 
TextLabel12.Size = UDim2.fromOffset(10, 16)
 
local UICorner19 = Instance.new("UICorner")
 
UICorner19.CornerRadius = UDim.new(0, 6)
 
local UIStroke14 = Instance.new("UIStroke")
 
UIStroke14.Thickness = 1
 
UIStroke14.Transparency = 0.2
 
UIStroke14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke14.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton12 = Instance.new("TextButton")
 
TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton12.Parent = TextButton11
 
TextButton12.Text = "⚡ Auto Execute: OFF"
 
TextButton12.AutoButtonColor = false
 
TextButton12.AnchorPoint = Vector2.new(1, 0)
 
TextButton12.Font = Enum.Font.Gotham
 
TextButton12.BackgroundTransparency = 0.2
 
TextButton12.Position = UDim2.new(1, -26, 0, 31)
 
TextButton12.TextSize = 8.5
 
TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton12.BorderSizePixel = 0
 
TextButton12.Size = UDim2.fromOffset(116, 20)
 
UICorner19.Parent = TextButton12
 
UIStroke14.Parent = TextButton12
 
local contents2 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents2)
 
TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton12.BackgroundTransparency = 0.2
 
TextButton12.Text = "⚡ Auto Execute: OFF"
 
TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton12.Font = Enum.Font.Gotham
 
TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton12.UIStroke.Transparency = 0.5
 
TextButton12.MouseButton1Down:Connect(function(x7, y7)
end)
 
TextButton12.MouseButton1Click:Connect(function()
	 
	local contents19 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents19)
	 
	local json = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Anime Dice" })
	 
	writefile("nr_loader_autoexec.json", json)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents20 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents20)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents21 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents21)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents22 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents22)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents23 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents23)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents24 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents24)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents25 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents25)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents26 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents26)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents27 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents27)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents28 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents28)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents29 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents29)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents30 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents30)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents31 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents31)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents32 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents32)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents33 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents33)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents34 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents34)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents35 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents35)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner83 = Instance.new("UICorner")
	 
	UICorner83.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke52 = Instance.new("UIStroke")
	 
	UIStroke52.Thickness = 1
	 
	UIStroke52.Transparency = 0.2
	 
	UIStroke52.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke52.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame26 = Instance.new("Frame")
	 
	Frame26.BackgroundTransparency = 0.05
	 
	Frame26.Parent = Frame3
	 
	Frame26.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame26.BorderSizePixel = 0
	 
	Frame26.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner83.Parent = Frame26
	 
	UIStroke52.Parent = Frame26
	 
	local UICorner84 = Instance.new("UICorner")
	 
	UICorner84.CornerRadius = UDim.new(0, 2)
	 
	local Frame27 = Instance.new("Frame")
	 
	Frame27.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame27.Parent = Frame26
	 
	Frame27.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame27.BorderSizePixel = 0
	 
	Frame27.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner84.Parent = Frame27
	 
	local TextLabel85 = Instance.new("TextLabel")
	 
	TextLabel85.TextWrapped = true
	 
	TextLabel85.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel85.Parent = Frame26
	 
	TextLabel85.Text = "[Auto Exec: 24h] Anime Dice aktif! Link dicopy ke clipboard."
	 
	TextLabel85.Font = Enum.Font.Gotham
	 
	TextLabel85.BackgroundTransparency = 1
	 
	TextLabel85.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel85.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel85.TextSize = 12
	 
	TextLabel85.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale30 = Instance.new("UIScale")
	 
	UIScale30.Parent = Frame26
	 
	UIScale30.Scale = 0.85
	 
	local tween149 = TweenService:Create(UIScale30, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween149:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale8 = Instance.new("UIScale")
 
UIScale8.Parent = TextButton11
 
TextButton11.MouseEnter:Connect(function(arg27)
	 
	local tween150 = TweenService:Create(TextButton11, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween150:Play()
	 
	local tween151 = TweenService:Create(UIScale8, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween151:Play()
	 
	local tween152 = TweenService:Create(TextLabel12, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween152:Play()
end)
 
TextButton11.MouseLeave:Connect(function(arg28)
	 
	local tween153 = TweenService:Create(TextButton11, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween153:Play()
	 
	local tween154 = TweenService:Create(UIScale8, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween154:Play()
	 
	local tween155 = TweenService:Create(TextLabel12, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween155:Play()
end)
 
TextButton11.MouseButton1Click:Connect(function()
end)
 
TextButton11.BackgroundTransparency = 1
 
UIScale8.Scale = 0.96
 
task.delay(0.04, function(...)
	 
	local tween56 = TweenService:Create(TextButton11, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween56:Play()
	 
	local tween57 = TweenService:Create(UIScale8, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween57:Play()
end)
 
local UICorner20 = Instance.new("UICorner")
 
UICorner20.CornerRadius = UDim.new(0, 10)
 
local UIStroke15 = Instance.new("UIStroke")
 
UIStroke15.Thickness = 1
 
UIStroke15.Transparency = 0.2
 
UIStroke15.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke15.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton13 = Instance.new("TextButton")
 
TextButton13.LayoutOrder = 2
 
TextButton13.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton13.BackgroundTransparency = 0.2
 
TextButton13.AutoButtonColor = false
 
TextButton13.Parent = ScrollingFrame
 
TextButton13.Text = ""
 
TextButton13.BorderSizePixel = 0
 
TextButton13.Size = UDim2.new(1, 0, 0, 58)
 
UICorner20.Parent = TextButton13
 
UIStroke15.Parent = TextButton13
 
local UICorner21 = Instance.new("UICorner")
 
UICorner21.CornerRadius = UDim.new(0, 8)
 
local ImageLabel5 = Instance.new("ImageLabel")
 
ImageLabel5.Image = "rbxthumb://type=GameIcon&id=10035204815&w=150&h=150"
 
ImageLabel5.BackgroundTransparency = 0.3
 
ImageLabel5.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel5.Parent = TextButton13
 
ImageLabel5.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel5.Size = UDim2.fromOffset(34, 34)
 
UICorner21.Parent = ImageLabel5
 
local TextLabel13 = Instance.new("TextLabel")
 
TextLabel13.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel13.Parent = TextButton13
 
TextLabel13.Text = "Ride A Pet"
 
TextLabel13.Font = Enum.Font.GothamBold
 
TextLabel13.BackgroundTransparency = 1
 
TextLabel13.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel13.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel13.TextSize = 13
 
TextLabel13.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel14 = Instance.new("TextLabel")
 
TextLabel14.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel14.Parent = TextButton13
 
TextLabel14.Text = "Auto farm / egg / ride"
 
TextLabel14.Font = Enum.Font.Gotham
 
TextLabel14.BackgroundTransparency = 1
 
TextLabel14.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel14.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel14.TextSize = 11
 
TextLabel14.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel15 = Instance.new("TextLabel")
 
TextLabel15.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel15.Parent = TextButton13
 
TextLabel15.Text = ""
 
TextLabel15.AnchorPoint = Vector2.new(1, 0)
 
TextLabel15.Font = Enum.Font.GothamBold
 
TextLabel15.BackgroundTransparency = 1
 
TextLabel15.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel15.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel15.TextSize = 9.5
 
TextLabel15.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel6 = Instance.new("ImageLabel")
 
ImageLabel6.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel6.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel6.BackgroundTransparency = 1
 
ImageLabel6.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel6.Parent = TextButton13
 
ImageLabel6.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel6.Visible = false
 
ImageLabel6.Size = UDim2.fromOffset(14, 14)
 
local TextLabel16 = Instance.new("TextLabel")
 
TextLabel16.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel16.Parent = TextButton13
 
TextLabel16.Text = ">"
 
TextLabel16.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel16.Font = Enum.Font.GothamBold
 
TextLabel16.BackgroundTransparency = 1
 
TextLabel16.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel16.TextSize = 12
 
TextLabel16.Size = UDim2.fromOffset(10, 16)
 
local UICorner22 = Instance.new("UICorner")
 
UICorner22.CornerRadius = UDim.new(0, 6)
 
local UIStroke16 = Instance.new("UIStroke")
 
UIStroke16.Thickness = 1
 
UIStroke16.Transparency = 0.2
 
UIStroke16.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke16.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton14 = Instance.new("TextButton")
 
TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton14.Parent = TextButton13
 
TextButton14.Text = "⚡ Auto Execute: OFF"
 
TextButton14.AutoButtonColor = false
 
TextButton14.AnchorPoint = Vector2.new(1, 0)
 
TextButton14.Font = Enum.Font.Gotham
 
TextButton14.BackgroundTransparency = 0.2
 
TextButton14.Position = UDim2.new(1, -26, 0, 31)
 
TextButton14.TextSize = 8.5
 
TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton14.BorderSizePixel = 0
 
TextButton14.Size = UDim2.fromOffset(116, 20)
 
UICorner22.Parent = TextButton14
 
UIStroke16.Parent = TextButton14
 
local contents3 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents3)
 
TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton14.BackgroundTransparency = 0.2
 
TextButton14.Text = "⚡ Auto Execute: OFF"
 
TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton14.Font = Enum.Font.Gotham
 
TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton14.UIStroke.Transparency = 0.5
 
TextButton14.MouseButton1Down:Connect(function(x8, y8)
end)
 
TextButton14.MouseButton1Click:Connect(function()
	 
	local contents36 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents36)
	 
	local json2 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Ride A Pet" })
	 
	writefile("nr_loader_autoexec.json", json2)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents37 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents37)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents38 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents38)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents39 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents39)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents40 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents40)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents41 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents41)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents42 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents42)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents43 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents43)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents44 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents44)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents45 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents45)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents46 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents46)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents47 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents47)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents48 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents48)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents49 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents49)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents50 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents50)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents51 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents51)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents52 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents52)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner85 = Instance.new("UICorner")
	 
	UICorner85.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke53 = Instance.new("UIStroke")
	 
	UIStroke53.Thickness = 1
	 
	UIStroke53.Transparency = 0.2
	 
	UIStroke53.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke53.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame28 = Instance.new("Frame")
	 
	Frame28.BackgroundTransparency = 0.05
	 
	Frame28.Parent = Frame3
	 
	Frame28.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame28.BorderSizePixel = 0
	 
	Frame28.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner85.Parent = Frame28
	 
	UIStroke53.Parent = Frame28
	 
	local UICorner86 = Instance.new("UICorner")
	 
	UICorner86.CornerRadius = UDim.new(0, 2)
	 
	local Frame29 = Instance.new("Frame")
	 
	Frame29.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame29.Parent = Frame28
	 
	Frame29.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame29.BorderSizePixel = 0
	 
	Frame29.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner86.Parent = Frame29
	 
	local TextLabel86 = Instance.new("TextLabel")
	 
	TextLabel86.TextWrapped = true
	 
	TextLabel86.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel86.Parent = Frame28
	 
	TextLabel86.Text = "[Auto Exec: 24h] Ride A Pet aktif! Link dicopy ke clipboard."
	 
	TextLabel86.Font = Enum.Font.Gotham
	 
	TextLabel86.BackgroundTransparency = 1
	 
	TextLabel86.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel86.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel86.TextSize = 12
	 
	TextLabel86.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale31 = Instance.new("UIScale")
	 
	UIScale31.Parent = Frame28
	 
	UIScale31.Scale = 0.85
	 
	local tween156 = TweenService:Create(UIScale31, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween156:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale9 = Instance.new("UIScale")
 
UIScale9.Parent = TextButton13
 
TextButton13.MouseEnter:Connect(function(arg29)
	 
	local tween157 = TweenService:Create(TextButton13, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween157:Play()
	 
	local tween158 = TweenService:Create(UIScale9, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween158:Play()
	 
	local tween159 = TweenService:Create(TextLabel16, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween159:Play()
end)
 
TextButton13.MouseLeave:Connect(function(arg30)
	 
	local tween160 = TweenService:Create(TextButton13, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween160:Play()
	 
	local tween161 = TweenService:Create(UIScale9, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween161:Play()
	 
	local tween162 = TweenService:Create(TextLabel16, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween162:Play()
end)
 
TextButton13.MouseButton1Click:Connect(function()
end)
 
TextButton13.BackgroundTransparency = 1
 
UIScale9.Scale = 0.96
 
task.delay(0.08, function(...)
	 
	local tween58 = TweenService:Create(TextButton13, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween58:Play()
	 
	local tween59 = TweenService:Create(UIScale9, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween59:Play()
end)
 
local UICorner23 = Instance.new("UICorner")
 
UICorner23.CornerRadius = UDim.new(0, 10)
 
local UIStroke17 = Instance.new("UIStroke")
 
UIStroke17.Thickness = 1
 
UIStroke17.Transparency = 0.2
 
UIStroke17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke17.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton15 = Instance.new("TextButton")
 
TextButton15.LayoutOrder = 3
 
TextButton15.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton15.BackgroundTransparency = 0.2
 
TextButton15.AutoButtonColor = false
 
TextButton15.Parent = ScrollingFrame
 
TextButton15.Text = ""
 
TextButton15.BorderSizePixel = 0
 
TextButton15.Size = UDim2.new(1, 0, 0, 58)
 
UICorner23.Parent = TextButton15
 
UIStroke17.Parent = TextButton15
 
local UICorner24 = Instance.new("UICorner")
 
UICorner24.CornerRadius = UDim.new(0, 8)
 
local ImageLabel7 = Instance.new("ImageLabel")
 
ImageLabel7.Image = "rbxassetid://105645768765428"
 
ImageLabel7.BackgroundTransparency = 0.3
 
ImageLabel7.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel7.Parent = TextButton15
 
ImageLabel7.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel7.Size = UDim2.fromOffset(34, 34)
 
UICorner24.Parent = ImageLabel7
 
local TextLabel17 = Instance.new("TextLabel")
 
TextLabel17.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel17.Parent = TextButton15
 
TextLabel17.Text = "Capybara VS Plant"
 
TextLabel17.Font = Enum.Font.GothamBold
 
TextLabel17.BackgroundTransparency = 1
 
TextLabel17.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel17.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel17.TextSize = 13
 
TextLabel17.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel18 = Instance.new("TextLabel")
 
TextLabel18.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel18.Parent = TextButton15
 
TextLabel18.Text = "Auto farm"
 
TextLabel18.Font = Enum.Font.Gotham
 
TextLabel18.BackgroundTransparency = 1
 
TextLabel18.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel18.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel18.TextSize = 11
 
TextLabel18.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel19 = Instance.new("TextLabel")
 
TextLabel19.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel19.Parent = TextButton15
 
TextLabel19.Text = ""
 
TextLabel19.AnchorPoint = Vector2.new(1, 0)
 
TextLabel19.Font = Enum.Font.GothamBold
 
TextLabel19.BackgroundTransparency = 1
 
TextLabel19.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel19.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel19.TextSize = 9.5
 
TextLabel19.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel8 = Instance.new("ImageLabel")
 
ImageLabel8.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel8.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel8.BackgroundTransparency = 1
 
ImageLabel8.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel8.Parent = TextButton15
 
ImageLabel8.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel8.Visible = false
 
ImageLabel8.Size = UDim2.fromOffset(14, 14)
 
local TextLabel20 = Instance.new("TextLabel")
 
TextLabel20.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel20.Parent = TextButton15
 
TextLabel20.Text = ">"
 
TextLabel20.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel20.Font = Enum.Font.GothamBold
 
TextLabel20.BackgroundTransparency = 1
 
TextLabel20.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel20.TextSize = 12
 
TextLabel20.Size = UDim2.fromOffset(10, 16)
 
local UICorner25 = Instance.new("UICorner")
 
UICorner25.CornerRadius = UDim.new(0, 6)
 
local UIStroke18 = Instance.new("UIStroke")
 
UIStroke18.Thickness = 1
 
UIStroke18.Transparency = 0.2
 
UIStroke18.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke18.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton16 = Instance.new("TextButton")
 
TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton16.Parent = TextButton15
 
TextButton16.Text = "⚡ Auto Execute: OFF"
 
TextButton16.AutoButtonColor = false
 
TextButton16.AnchorPoint = Vector2.new(1, 0)
 
TextButton16.Font = Enum.Font.Gotham
 
TextButton16.BackgroundTransparency = 0.2
 
TextButton16.Position = UDim2.new(1, -26, 0, 31)
 
TextButton16.TextSize = 8.5
 
TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton16.BorderSizePixel = 0
 
TextButton16.Size = UDim2.fromOffset(116, 20)
 
UICorner25.Parent = TextButton16
 
UIStroke18.Parent = TextButton16
 
local contents4 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents4)
 
TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton16.BackgroundTransparency = 0.2
 
TextButton16.Text = "⚡ Auto Execute: OFF"
 
TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton16.Font = Enum.Font.Gotham
 
TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton16.UIStroke.Transparency = 0.5
 
TextButton16.MouseButton1Down:Connect(function(x9, y9)
end)
 
TextButton16.MouseButton1Click:Connect(function()
	 
	local contents53 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents53)
	 
	local json3 = HttpService:JSONEncode({
	durationHours = 24,
	enabledAt = 1790833324,
	expiresAt = 1790919724,
	gameName = "Capybara VS Plant"
})
	 
	writefile("nr_loader_autoexec.json", json3)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents54 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents54)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents55 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents55)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents56 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents56)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents57 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents57)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents58 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents58)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents59 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents59)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents60 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents60)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents61 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents61)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents62 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents62)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents63 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents63)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents64 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents64)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents65 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents65)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents66 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents66)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents67 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents67)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents68 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents68)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents69 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents69)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner87 = Instance.new("UICorner")
	 
	UICorner87.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke54 = Instance.new("UIStroke")
	 
	UIStroke54.Thickness = 1
	 
	UIStroke54.Transparency = 0.2
	 
	UIStroke54.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke54.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame30 = Instance.new("Frame")
	 
	Frame30.BackgroundTransparency = 0.05
	 
	Frame30.Parent = Frame3
	 
	Frame30.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame30.BorderSizePixel = 0
	 
	Frame30.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner87.Parent = Frame30
	 
	UIStroke54.Parent = Frame30
	 
	local UICorner88 = Instance.new("UICorner")
	 
	UICorner88.CornerRadius = UDim.new(0, 2)
	 
	local Frame31 = Instance.new("Frame")
	 
	Frame31.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame31.Parent = Frame30
	 
	Frame31.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame31.BorderSizePixel = 0
	 
	Frame31.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner88.Parent = Frame31
	 
	local TextLabel87 = Instance.new("TextLabel")
	 
	TextLabel87.TextWrapped = true
	 
	TextLabel87.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel87.Parent = Frame30
	 
	TextLabel87.Text = "[Auto Exec: 24h] Capybara VS Plant aktif! Link dicopy ke clipboard."
	 
	TextLabel87.Font = Enum.Font.Gotham
	 
	TextLabel87.BackgroundTransparency = 1
	 
	TextLabel87.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel87.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel87.TextSize = 12
	 
	TextLabel87.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale32 = Instance.new("UIScale")
	 
	UIScale32.Parent = Frame30
	 
	UIScale32.Scale = 0.85
	 
	local tween163 = TweenService:Create(UIScale32, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween163:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale10 = Instance.new("UIScale")
 
UIScale10.Parent = TextButton15
 
TextButton15.MouseEnter:Connect(function(arg31)
	 
	local tween164 = TweenService:Create(TextButton15, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween164:Play()
	 
	local tween165 = TweenService:Create(UIScale10, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween165:Play()
	 
	local tween166 = TweenService:Create(TextLabel20, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween166:Play()
end)
 
TextButton15.MouseLeave:Connect(function(arg32)
	 
	local tween167 = TweenService:Create(TextButton15, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween167:Play()
	 
	local tween168 = TweenService:Create(UIScale10, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween168:Play()
	 
	local tween169 = TweenService:Create(TextLabel20, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween169:Play()
end)
 
TextButton15.MouseButton1Click:Connect(function()
end)
 
TextButton15.BackgroundTransparency = 1
 
UIScale10.Scale = 0.96
 
task.delay(0.12, function(...)
	 
	local tween60 = TweenService:Create(TextButton15, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween60:Play()
	 
	local tween61 = TweenService:Create(UIScale10, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween61:Play()
end)
 
local UICorner26 = Instance.new("UICorner")
 
UICorner26.CornerRadius = UDim.new(0, 10)
 
local UIStroke19 = Instance.new("UIStroke")
 
UIStroke19.Thickness = 1
 
UIStroke19.Transparency = 0.2
 
UIStroke19.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke19.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton17 = Instance.new("TextButton")
 
TextButton17.LayoutOrder = 4
 
TextButton17.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton17.BackgroundTransparency = 0.2
 
TextButton17.AutoButtonColor = false
 
TextButton17.Parent = ScrollingFrame
 
TextButton17.Text = ""
 
TextButton17.BorderSizePixel = 0
 
TextButton17.Size = UDim2.new(1, 0, 0, 58)
 
UICorner26.Parent = TextButton17
 
UIStroke19.Parent = TextButton17
 
local UICorner27 = Instance.new("UICorner")
 
UICorner27.CornerRadius = UDim.new(0, 8)
 
local ImageLabel9 = Instance.new("ImageLabel")
 
ImageLabel9.Image = "rbxassetid://71490087912254"
 
ImageLabel9.BackgroundTransparency = 0.3
 
ImageLabel9.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel9.Parent = TextButton17
 
ImageLabel9.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel9.Size = UDim2.fromOffset(34, 34)
 
UICorner27.Parent = ImageLabel9
 
local TextLabel21 = Instance.new("TextLabel")
 
TextLabel21.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel21.Parent = TextButton17
 
TextLabel21.Text = "Steal an Egg"
 
TextLabel21.Font = Enum.Font.GothamBold
 
TextLabel21.BackgroundTransparency = 1
 
TextLabel21.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel21.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel21.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel21.TextSize = 13
 
TextLabel21.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel22 = Instance.new("TextLabel")
 
TextLabel22.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel22.Parent = TextButton17
 
TextLabel22.Text = "Auto steal / farm"
 
TextLabel22.Font = Enum.Font.Gotham
 
TextLabel22.BackgroundTransparency = 1
 
TextLabel22.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel22.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel22.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel22.TextSize = 11
 
TextLabel22.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel23 = Instance.new("TextLabel")
 
TextLabel23.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel23.Parent = TextButton17
 
TextLabel23.Text = ""
 
TextLabel23.AnchorPoint = Vector2.new(1, 0)
 
TextLabel23.Font = Enum.Font.GothamBold
 
TextLabel23.BackgroundTransparency = 1
 
TextLabel23.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel23.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel23.TextSize = 9.5
 
TextLabel23.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel10 = Instance.new("ImageLabel")
 
ImageLabel10.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel10.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel10.BackgroundTransparency = 1
 
ImageLabel10.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel10.Parent = TextButton17
 
ImageLabel10.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel10.Visible = false
 
ImageLabel10.Size = UDim2.fromOffset(14, 14)
 
local TextLabel24 = Instance.new("TextLabel")
 
TextLabel24.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel24.Parent = TextButton17
 
TextLabel24.Text = ">"
 
TextLabel24.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel24.Font = Enum.Font.GothamBold
 
TextLabel24.BackgroundTransparency = 1
 
TextLabel24.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel24.TextSize = 12
 
TextLabel24.Size = UDim2.fromOffset(10, 16)
 
local UICorner28 = Instance.new("UICorner")
 
UICorner28.CornerRadius = UDim.new(0, 6)
 
local UIStroke20 = Instance.new("UIStroke")
 
UIStroke20.Thickness = 1
 
UIStroke20.Transparency = 0.2
 
UIStroke20.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke20.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton18 = Instance.new("TextButton")
 
TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton18.Parent = TextButton17
 
TextButton18.Text = "⚡ Auto Execute: OFF"
 
TextButton18.AutoButtonColor = false
 
TextButton18.AnchorPoint = Vector2.new(1, 0)
 
TextButton18.Font = Enum.Font.Gotham
 
TextButton18.BackgroundTransparency = 0.2
 
TextButton18.Position = UDim2.new(1, -26, 0, 31)
 
TextButton18.TextSize = 8.5
 
TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton18.BorderSizePixel = 0
 
TextButton18.Size = UDim2.fromOffset(116, 20)
 
UICorner28.Parent = TextButton18
 
UIStroke20.Parent = TextButton18
 
local contents5 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents5)
 
TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton18.BackgroundTransparency = 0.2
 
TextButton18.Text = "⚡ Auto Execute: OFF"
 
TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton18.Font = Enum.Font.Gotham
 
TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton18.UIStroke.Transparency = 0.5
 
TextButton18.MouseButton1Down:Connect(function(x10, y10)
end)
 
TextButton18.MouseButton1Click:Connect(function()
	 
	local contents70 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents70)
	 
	local json4 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Steal an Egg" })
	 
	writefile("nr_loader_autoexec.json", json4)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents71 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents71)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents72 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents72)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents73 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents73)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents74 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents74)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents75 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents75)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents76 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents76)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents77 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents77)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents78 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents78)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents79 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents79)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents80 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents80)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents81 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents81)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents82 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents82)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents83 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents83)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents84 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents84)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents85 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents85)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents86 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents86)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner89 = Instance.new("UICorner")
	 
	UICorner89.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke55 = Instance.new("UIStroke")
	 
	UIStroke55.Thickness = 1
	 
	UIStroke55.Transparency = 0.2
	 
	UIStroke55.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke55.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame32 = Instance.new("Frame")
	 
	Frame32.BackgroundTransparency = 0.05
	 
	Frame32.Parent = Frame3
	 
	Frame32.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame32.BorderSizePixel = 0
	 
	Frame32.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner89.Parent = Frame32
	 
	UIStroke55.Parent = Frame32
	 
	local UICorner90 = Instance.new("UICorner")
	 
	UICorner90.CornerRadius = UDim.new(0, 2)
	 
	local Frame33 = Instance.new("Frame")
	 
	Frame33.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame33.Parent = Frame32
	 
	Frame33.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame33.BorderSizePixel = 0
	 
	Frame33.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner90.Parent = Frame33
	 
	local TextLabel88 = Instance.new("TextLabel")
	 
	TextLabel88.TextWrapped = true
	 
	TextLabel88.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel88.Parent = Frame32
	 
	TextLabel88.Text = "[Auto Exec: 24h] Steal an Egg aktif! Link dicopy ke clipboard."
	 
	TextLabel88.Font = Enum.Font.Gotham
	 
	TextLabel88.BackgroundTransparency = 1
	 
	TextLabel88.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel88.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel88.TextSize = 12
	 
	TextLabel88.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale33 = Instance.new("UIScale")
	 
	UIScale33.Parent = Frame32
	 
	UIScale33.Scale = 0.85
	 
	local tween170 = TweenService:Create(UIScale33, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween170:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale11 = Instance.new("UIScale")
 
UIScale11.Parent = TextButton17
 
TextButton17.MouseEnter:Connect(function(arg33)
	 
	local tween171 = TweenService:Create(TextButton17, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween171:Play()
	 
	local tween172 = TweenService:Create(UIScale11, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween172:Play()
	 
	local tween173 = TweenService:Create(TextLabel24, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween173:Play()
end)
 
TextButton17.MouseLeave:Connect(function(arg34)
	 
	local tween174 = TweenService:Create(TextButton17, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween174:Play()
	 
	local tween175 = TweenService:Create(UIScale11, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween175:Play()
	 
	local tween176 = TweenService:Create(TextLabel24, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween176:Play()
end)
 
TextButton17.MouseButton1Click:Connect(function()
end)
 
TextButton17.BackgroundTransparency = 1
 
UIScale11.Scale = 0.96
 
task.delay(0.16, function(...)
	 
	local tween62 = TweenService:Create(TextButton17, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween62:Play()
	 
	local tween63 = TweenService:Create(UIScale11, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween63:Play()
end)
 
local UICorner29 = Instance.new("UICorner")
 
UICorner29.CornerRadius = UDim.new(0, 10)
 
local UIStroke21 = Instance.new("UIStroke")
 
UIStroke21.Thickness = 1
 
UIStroke21.Transparency = 0.2
 
UIStroke21.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke21.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton19 = Instance.new("TextButton")
 
TextButton19.LayoutOrder = 5
 
TextButton19.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton19.BackgroundTransparency = 0.2
 
TextButton19.AutoButtonColor = false
 
TextButton19.Parent = ScrollingFrame
 
TextButton19.Text = ""
 
TextButton19.BorderSizePixel = 0
 
TextButton19.Size = UDim2.new(1, 0, 0, 58)
 
UICorner29.Parent = TextButton19
 
UIStroke21.Parent = TextButton19
 
local UICorner30 = Instance.new("UICorner")
 
UICorner30.CornerRadius = UDim.new(0, 8)
 
local ImageLabel11 = Instance.new("ImageLabel")
 
ImageLabel11.Image = "rbxassetid://94197048748373"
 
ImageLabel11.BackgroundTransparency = 0.3
 
ImageLabel11.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel11.Parent = TextButton19
 
ImageLabel11.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel11.Size = UDim2.fromOffset(34, 34)
 
UICorner30.Parent = ImageLabel11
 
local TextLabel25 = Instance.new("TextLabel")
 
TextLabel25.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel25.Parent = TextButton19
 
TextLabel25.Text = "Grow a Chicken Fighter"
 
TextLabel25.Font = Enum.Font.GothamBold
 
TextLabel25.BackgroundTransparency = 1
 
TextLabel25.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel25.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel25.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel25.TextSize = 13
 
TextLabel25.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel26 = Instance.new("TextLabel")
 
TextLabel26.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel26.Parent = TextButton19
 
TextLabel26.Text = "Auto farm / fight"
 
TextLabel26.Font = Enum.Font.Gotham
 
TextLabel26.BackgroundTransparency = 1
 
TextLabel26.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel26.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel26.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel26.TextSize = 11
 
TextLabel26.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel27 = Instance.new("TextLabel")
 
TextLabel27.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel27.Parent = TextButton19
 
TextLabel27.Text = ""
 
TextLabel27.AnchorPoint = Vector2.new(1, 0)
 
TextLabel27.Font = Enum.Font.GothamBold
 
TextLabel27.BackgroundTransparency = 1
 
TextLabel27.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel27.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel27.TextSize = 9.5
 
TextLabel27.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel12 = Instance.new("ImageLabel")
 
ImageLabel12.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel12.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel12.BackgroundTransparency = 1
 
ImageLabel12.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel12.Parent = TextButton19
 
ImageLabel12.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel12.Visible = false
 
ImageLabel12.Size = UDim2.fromOffset(14, 14)
 
local TextLabel28 = Instance.new("TextLabel")
 
TextLabel28.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel28.Parent = TextButton19
 
TextLabel28.Text = ">"
 
TextLabel28.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel28.Font = Enum.Font.GothamBold
 
TextLabel28.BackgroundTransparency = 1
 
TextLabel28.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel28.TextSize = 12
 
TextLabel28.Size = UDim2.fromOffset(10, 16)
 
local UICorner31 = Instance.new("UICorner")
 
UICorner31.CornerRadius = UDim.new(0, 6)
 
local UIStroke22 = Instance.new("UIStroke")
 
UIStroke22.Thickness = 1
 
UIStroke22.Transparency = 0.2
 
UIStroke22.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke22.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton20 = Instance.new("TextButton")
 
TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton20.Parent = TextButton19
 
TextButton20.Text = "⚡ Auto Execute: OFF"
 
TextButton20.AutoButtonColor = false
 
TextButton20.AnchorPoint = Vector2.new(1, 0)
 
TextButton20.Font = Enum.Font.Gotham
 
TextButton20.BackgroundTransparency = 0.2
 
TextButton20.Position = UDim2.new(1, -26, 0, 31)
 
TextButton20.TextSize = 8.5
 
TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton20.BorderSizePixel = 0
 
TextButton20.Size = UDim2.fromOffset(116, 20)
 
UICorner31.Parent = TextButton20
 
UIStroke22.Parent = TextButton20
 
local contents6 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents6)
 
TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton20.BackgroundTransparency = 0.2
 
TextButton20.Text = "⚡ Auto Execute: OFF"
 
TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton20.Font = Enum.Font.Gotham
 
TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton20.UIStroke.Transparency = 0.5
 
TextButton20.MouseButton1Down:Connect(function(x11, y11)
end)
 
TextButton20.MouseButton1Click:Connect(function()
	 
	local contents87 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents87)
	 
	local json5 = HttpService:JSONEncode({
	durationHours = 24,
	enabledAt = 1790833324,
	expiresAt = 1790919724,
	gameName = "Grow a Chicken Fighter"
})
	 
	writefile("nr_loader_autoexec.json", json5)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents88 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents88)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents89 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents89)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents90 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents90)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents91 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents91)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents92 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents92)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents93 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents93)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents94 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents94)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents95 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents95)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents96 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents96)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents97 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents97)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents98 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents98)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents99 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents99)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents100 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents100)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents101 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents101)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents102 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents102)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents103 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents103)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner91 = Instance.new("UICorner")
	 
	UICorner91.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke56 = Instance.new("UIStroke")
	 
	UIStroke56.Thickness = 1
	 
	UIStroke56.Transparency = 0.2
	 
	UIStroke56.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke56.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame34 = Instance.new("Frame")
	 
	Frame34.BackgroundTransparency = 0.05
	 
	Frame34.Parent = Frame3
	 
	Frame34.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame34.BorderSizePixel = 0
	 
	Frame34.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner91.Parent = Frame34
	 
	UIStroke56.Parent = Frame34
	 
	local UICorner92 = Instance.new("UICorner")
	 
	UICorner92.CornerRadius = UDim.new(0, 2)
	 
	local Frame35 = Instance.new("Frame")
	 
	Frame35.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame35.Parent = Frame34
	 
	Frame35.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame35.BorderSizePixel = 0
	 
	Frame35.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner92.Parent = Frame35
	 
	local TextLabel89 = Instance.new("TextLabel")
	 
	TextLabel89.TextWrapped = true
	 
	TextLabel89.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel89.Parent = Frame34
	 
	TextLabel89.Text = "[Auto Exec: 24h] Grow a Chicken Fighter aktif! Link dicopy ke clipboard."
	 
	TextLabel89.Font = Enum.Font.Gotham
	 
	TextLabel89.BackgroundTransparency = 1
	 
	TextLabel89.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel89.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel89.TextSize = 12
	 
	TextLabel89.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale34 = Instance.new("UIScale")
	 
	UIScale34.Parent = Frame34
	 
	UIScale34.Scale = 0.85
	 
	local tween177 = TweenService:Create(UIScale34, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween177:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale12 = Instance.new("UIScale")
 
UIScale12.Parent = TextButton19
 
TextButton19.MouseEnter:Connect(function(arg35)
	 
	local tween178 = TweenService:Create(TextButton19, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween178:Play()
	 
	local tween179 = TweenService:Create(UIScale12, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween179:Play()
	 
	local tween180 = TweenService:Create(TextLabel28, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween180:Play()
end)
 
TextButton19.MouseLeave:Connect(function(arg36)
	 
	local tween181 = TweenService:Create(TextButton19, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween181:Play()
	 
	local tween182 = TweenService:Create(UIScale12, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween182:Play()
	 
	local tween183 = TweenService:Create(TextLabel28, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween183:Play()
end)
 
TextButton19.MouseButton1Click:Connect(function()
end)
 
TextButton19.BackgroundTransparency = 1
 
UIScale12.Scale = 0.96
 
task.delay(0.2, function(...)
	 
	local tween64 = TweenService:Create(TextButton19, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween64:Play()
	 
	local tween65 = TweenService:Create(UIScale12, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween65:Play()
end)
 
local UICorner32 = Instance.new("UICorner")
 
UICorner32.CornerRadius = UDim.new(0, 10)
 
local UIStroke23 = Instance.new("UIStroke")
 
UIStroke23.Thickness = 1
 
UIStroke23.Transparency = 0.2
 
UIStroke23.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke23.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton21 = Instance.new("TextButton")
 
TextButton21.LayoutOrder = 6
 
TextButton21.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton21.BackgroundTransparency = 0.2
 
TextButton21.AutoButtonColor = false
 
TextButton21.Parent = ScrollingFrame
 
TextButton21.Text = ""
 
TextButton21.BorderSizePixel = 0
 
TextButton21.Size = UDim2.new(1, 0, 0, 58)
 
UICorner32.Parent = TextButton21
 
UIStroke23.Parent = TextButton21
 
local UICorner33 = Instance.new("UICorner")
 
UICorner33.CornerRadius = UDim.new(0, 8)
 
local ImageLabel13 = Instance.new("ImageLabel")
 
ImageLabel13.Image = "rbxassetid://131974959514318"
 
ImageLabel13.BackgroundTransparency = 0.3
 
ImageLabel13.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel13.Parent = TextButton21
 
ImageLabel13.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel13.Size = UDim2.fromOffset(34, 34)
 
UICorner33.Parent = ImageLabel13
 
local TextLabel29 = Instance.new("TextLabel")
 
TextLabel29.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel29.Parent = TextButton21
 
TextLabel29.Text = "Anime Expedition"
 
TextLabel29.Font = Enum.Font.GothamBold
 
TextLabel29.BackgroundTransparency = 1
 
TextLabel29.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel29.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel29.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel29.TextSize = 13
 
TextLabel29.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel30 = Instance.new("TextLabel")
 
TextLabel30.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel30.Parent = TextButton21
 
TextLabel30.Text = "Auto match / farm"
 
TextLabel30.Font = Enum.Font.Gotham
 
TextLabel30.BackgroundTransparency = 1
 
TextLabel30.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel30.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel30.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel30.TextSize = 11
 
TextLabel30.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel31 = Instance.new("TextLabel")
 
TextLabel31.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel31.Parent = TextButton21
 
TextLabel31.Text = ""
 
TextLabel31.AnchorPoint = Vector2.new(1, 0)
 
TextLabel31.Font = Enum.Font.GothamBold
 
TextLabel31.BackgroundTransparency = 1
 
TextLabel31.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel31.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel31.TextSize = 9.5
 
TextLabel31.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel14 = Instance.new("ImageLabel")
 
ImageLabel14.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel14.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel14.BackgroundTransparency = 1
 
ImageLabel14.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel14.Parent = TextButton21
 
ImageLabel14.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel14.Visible = false
 
ImageLabel14.Size = UDim2.fromOffset(14, 14)
 
local TextLabel32 = Instance.new("TextLabel")
 
TextLabel32.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel32.Parent = TextButton21
 
TextLabel32.Text = ">"
 
TextLabel32.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel32.Font = Enum.Font.GothamBold
 
TextLabel32.BackgroundTransparency = 1
 
TextLabel32.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel32.TextSize = 12
 
TextLabel32.Size = UDim2.fromOffset(10, 16)
 
local UICorner34 = Instance.new("UICorner")
 
UICorner34.CornerRadius = UDim.new(0, 6)
 
local UIStroke24 = Instance.new("UIStroke")
 
UIStroke24.Thickness = 1
 
UIStroke24.Transparency = 0.2
 
UIStroke24.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke24.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton22 = Instance.new("TextButton")
 
TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton22.Parent = TextButton21
 
TextButton22.Text = "⚡ Auto Execute: OFF"
 
TextButton22.AutoButtonColor = false
 
TextButton22.AnchorPoint = Vector2.new(1, 0)
 
TextButton22.Font = Enum.Font.Gotham
 
TextButton22.BackgroundTransparency = 0.2
 
TextButton22.Position = UDim2.new(1, -26, 0, 31)
 
TextButton22.TextSize = 8.5
 
TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton22.BorderSizePixel = 0
 
TextButton22.Size = UDim2.fromOffset(116, 20)
 
UICorner34.Parent = TextButton22
 
UIStroke24.Parent = TextButton22
 
local contents7 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents7)
 
TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton22.BackgroundTransparency = 0.2
 
TextButton22.Text = "⚡ Auto Execute: OFF"
 
TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton22.Font = Enum.Font.Gotham
 
TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton22.UIStroke.Transparency = 0.5
 
TextButton22.MouseButton1Down:Connect(function(x12, y12)
end)
 
TextButton22.MouseButton1Click:Connect(function()
	 
	local contents104 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents104)
	 
	local json6 = HttpService:JSONEncode({
	durationHours = 24,
	enabledAt = 1790833324,
	expiresAt = 1790919724,
	gameName = "Anime Expedition"
})
	 
	writefile("nr_loader_autoexec.json", json6)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents105 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents105)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents106 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents106)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents107 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents107)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents108 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents108)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents109 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents109)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents110 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents110)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents111 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents111)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents112 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents112)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents113 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents113)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents114 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents114)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents115 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents115)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents116 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents116)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents117 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents117)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents118 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents118)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents119 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents119)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents120 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents120)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner93 = Instance.new("UICorner")
	 
	UICorner93.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke57 = Instance.new("UIStroke")
	 
	UIStroke57.Thickness = 1
	 
	UIStroke57.Transparency = 0.2
	 
	UIStroke57.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke57.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame36 = Instance.new("Frame")
	 
	Frame36.BackgroundTransparency = 0.05
	 
	Frame36.Parent = Frame3
	 
	Frame36.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame36.BorderSizePixel = 0
	 
	Frame36.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner93.Parent = Frame36
	 
	UIStroke57.Parent = Frame36
	 
	local UICorner94 = Instance.new("UICorner")
	 
	UICorner94.CornerRadius = UDim.new(0, 2)
	 
	local Frame37 = Instance.new("Frame")
	 
	Frame37.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame37.Parent = Frame36
	 
	Frame37.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame37.BorderSizePixel = 0
	 
	Frame37.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner94.Parent = Frame37
	 
	local TextLabel90 = Instance.new("TextLabel")
	 
	TextLabel90.TextWrapped = true
	 
	TextLabel90.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel90.Parent = Frame36
	 
	TextLabel90.Text = "[Auto Exec: 24h] Anime Expedition aktif! Link dicopy ke clipboard."
	 
	TextLabel90.Font = Enum.Font.Gotham
	 
	TextLabel90.BackgroundTransparency = 1
	 
	TextLabel90.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel90.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel90.TextSize = 12
	 
	TextLabel90.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale35 = Instance.new("UIScale")
	 
	UIScale35.Parent = Frame36
	 
	UIScale35.Scale = 0.85
	 
	local tween184 = TweenService:Create(UIScale35, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween184:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale13 = Instance.new("UIScale")
 
UIScale13.Parent = TextButton21
 
TextButton21.MouseEnter:Connect(function(arg37)
	 
	local tween185 = TweenService:Create(TextButton21, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween185:Play()
	 
	local tween186 = TweenService:Create(UIScale13, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween186:Play()
	 
	local tween187 = TweenService:Create(TextLabel32, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween187:Play()
end)
 
TextButton21.MouseLeave:Connect(function(arg38)
	 
	local tween188 = TweenService:Create(TextButton21, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween188:Play()
	 
	local tween189 = TweenService:Create(UIScale13, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween189:Play()
	 
	local tween190 = TweenService:Create(TextLabel32, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween190:Play()
end)
 
TextButton21.MouseButton1Click:Connect(function()
end)
 
TextButton21.BackgroundTransparency = 1
 
UIScale13.Scale = 0.96
 
task.delay(0.24, function(...)
	 
	local tween66 = TweenService:Create(TextButton21, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween66:Play()
	 
	local tween67 = TweenService:Create(UIScale13, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween67:Play()
end)
 
local UICorner35 = Instance.new("UICorner")
 
UICorner35.CornerRadius = UDim.new(0, 10)
 
local UIStroke25 = Instance.new("UIStroke")
 
UIStroke25.Thickness = 1
 
UIStroke25.Transparency = 0.2
 
UIStroke25.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke25.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton23 = Instance.new("TextButton")
 
TextButton23.LayoutOrder = 7
 
TextButton23.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton23.BackgroundTransparency = 0.2
 
TextButton23.AutoButtonColor = false
 
TextButton23.Parent = ScrollingFrame
 
TextButton23.Text = ""
 
TextButton23.BorderSizePixel = 0
 
TextButton23.Size = UDim2.new(1, 0, 0, 58)
 
UICorner35.Parent = TextButton23
 
UIStroke25.Parent = TextButton23
 
local UICorner36 = Instance.new("UICorner")
 
UICorner36.CornerRadius = UDim.new(0, 8)
 
local ImageLabel15 = Instance.new("ImageLabel")
 
ImageLabel15.Image = "rbxassetid://114063353587790"
 
ImageLabel15.BackgroundTransparency = 0.3
 
ImageLabel15.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel15.Parent = TextButton23
 
ImageLabel15.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel15.Size = UDim2.fromOffset(34, 34)
 
UICorner36.Parent = ImageLabel15
 
local TextLabel33 = Instance.new("TextLabel")
 
TextLabel33.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel33.Parent = TextButton23
 
TextLabel33.Text = "Iron Souls"
 
TextLabel33.Font = Enum.Font.GothamBold
 
TextLabel33.BackgroundTransparency = 1
 
TextLabel33.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel33.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel33.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel33.TextSize = 13
 
TextLabel33.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel34 = Instance.new("TextLabel")
 
TextLabel34.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel34.Parent = TextButton23
 
TextLabel34.Text = "Auto farm / forge / upgrade"
 
TextLabel34.Font = Enum.Font.Gotham
 
TextLabel34.BackgroundTransparency = 1
 
TextLabel34.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel34.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel34.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel34.TextSize = 11
 
TextLabel34.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel35 = Instance.new("TextLabel")
 
TextLabel35.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel35.Parent = TextButton23
 
TextLabel35.Text = ""
 
TextLabel35.AnchorPoint = Vector2.new(1, 0)
 
TextLabel35.Font = Enum.Font.GothamBold
 
TextLabel35.BackgroundTransparency = 1
 
TextLabel35.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel35.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel35.TextSize = 9.5
 
TextLabel35.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel16 = Instance.new("ImageLabel")
 
ImageLabel16.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel16.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel16.BackgroundTransparency = 1
 
ImageLabel16.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel16.Parent = TextButton23
 
ImageLabel16.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel16.Visible = false
 
ImageLabel16.Size = UDim2.fromOffset(14, 14)
 
local TextLabel36 = Instance.new("TextLabel")
 
TextLabel36.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel36.Parent = TextButton23
 
TextLabel36.Text = ">"
 
TextLabel36.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel36.Font = Enum.Font.GothamBold
 
TextLabel36.BackgroundTransparency = 1
 
TextLabel36.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel36.TextSize = 12
 
TextLabel36.Size = UDim2.fromOffset(10, 16)
 
local UICorner37 = Instance.new("UICorner")
 
UICorner37.CornerRadius = UDim.new(0, 6)
 
local UIStroke26 = Instance.new("UIStroke")
 
UIStroke26.Thickness = 1
 
UIStroke26.Transparency = 0.2
 
UIStroke26.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke26.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton24 = Instance.new("TextButton")
 
TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton24.Parent = TextButton23
 
TextButton24.Text = "⚡ Auto Execute: OFF"
 
TextButton24.AutoButtonColor = false
 
TextButton24.AnchorPoint = Vector2.new(1, 0)
 
TextButton24.Font = Enum.Font.Gotham
 
TextButton24.BackgroundTransparency = 0.2
 
TextButton24.Position = UDim2.new(1, -26, 0, 31)
 
TextButton24.TextSize = 8.5
 
TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton24.BorderSizePixel = 0
 
TextButton24.Size = UDim2.fromOffset(116, 20)
 
UICorner37.Parent = TextButton24
 
UIStroke26.Parent = TextButton24
 
local contents8 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents8)
 
TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton24.BackgroundTransparency = 0.2
 
TextButton24.Text = "⚡ Auto Execute: OFF"
 
TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton24.Font = Enum.Font.Gotham
 
TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton24.UIStroke.Transparency = 0.5
 
TextButton24.MouseButton1Down:Connect(function(x13, y13)
end)
 
TextButton24.MouseButton1Click:Connect(function()
	 
	local contents121 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents121)
	 
	local json7 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Iron Souls" })
	 
	writefile("nr_loader_autoexec.json", json7)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents122 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents122)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents123 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents123)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents124 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents124)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents125 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents125)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents126 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents126)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents127 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents127)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents128 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents128)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents129 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents129)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents130 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents130)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents131 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents131)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents132 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents132)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents133 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents133)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents134 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents134)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents135 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents135)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents136 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents136)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents137 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents137)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner95 = Instance.new("UICorner")
	 
	UICorner95.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke58 = Instance.new("UIStroke")
	 
	UIStroke58.Thickness = 1
	 
	UIStroke58.Transparency = 0.2
	 
	UIStroke58.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke58.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame38 = Instance.new("Frame")
	 
	Frame38.BackgroundTransparency = 0.05
	 
	Frame38.Parent = Frame3
	 
	Frame38.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame38.BorderSizePixel = 0
	 
	Frame38.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner95.Parent = Frame38
	 
	UIStroke58.Parent = Frame38
	 
	local UICorner96 = Instance.new("UICorner")
	 
	UICorner96.CornerRadius = UDim.new(0, 2)
	 
	local Frame39 = Instance.new("Frame")
	 
	Frame39.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame39.Parent = Frame38
	 
	Frame39.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame39.BorderSizePixel = 0
	 
	Frame39.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner96.Parent = Frame39
	 
	local TextLabel91 = Instance.new("TextLabel")
	 
	TextLabel91.TextWrapped = true
	 
	TextLabel91.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel91.Parent = Frame38
	 
	TextLabel91.Text = "[Auto Exec: 24h] Iron Souls aktif! Link dicopy ke clipboard."
	 
	TextLabel91.Font = Enum.Font.Gotham
	 
	TextLabel91.BackgroundTransparency = 1
	 
	TextLabel91.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel91.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel91.TextSize = 12
	 
	TextLabel91.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale36 = Instance.new("UIScale")
	 
	UIScale36.Parent = Frame38
	 
	UIScale36.Scale = 0.85
	 
	local tween191 = TweenService:Create(UIScale36, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween191:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale14 = Instance.new("UIScale")
 
UIScale14.Parent = TextButton23
 
TextButton23.MouseEnter:Connect(function(arg39)
	 
	local tween192 = TweenService:Create(TextButton23, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween192:Play()
	 
	local tween193 = TweenService:Create(UIScale14, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween193:Play()
	 
	local tween194 = TweenService:Create(TextLabel36, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween194:Play()
end)
 
TextButton23.MouseLeave:Connect(function(arg40)
	 
	local tween195 = TweenService:Create(TextButton23, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween195:Play()
	 
	local tween196 = TweenService:Create(UIScale14, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween196:Play()
	 
	local tween197 = TweenService:Create(TextLabel36, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween197:Play()
end)
 
TextButton23.MouseButton1Click:Connect(function()
end)
 
TextButton23.BackgroundTransparency = 1
 
UIScale14.Scale = 0.96
 
task.delay(0.28, function(...)
	 
	local tween68 = TweenService:Create(TextButton23, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween68:Play()
	 
	local tween69 = TweenService:Create(UIScale14, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween69:Play()
end)
 
local UICorner38 = Instance.new("UICorner")
 
UICorner38.CornerRadius = UDim.new(0, 10)
 
local UIStroke27 = Instance.new("UIStroke")
 
UIStroke27.Thickness = 1
 
UIStroke27.Transparency = 0.2
 
UIStroke27.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke27.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton25 = Instance.new("TextButton")
 
TextButton25.LayoutOrder = 8
 
TextButton25.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton25.BackgroundTransparency = 0.2
 
TextButton25.AutoButtonColor = false
 
TextButton25.Parent = ScrollingFrame
 
TextButton25.Text = ""
 
TextButton25.BorderSizePixel = 0
 
TextButton25.Size = UDim2.new(1, 0, 0, 58)
 
UICorner38.Parent = TextButton25
 
UIStroke27.Parent = TextButton25
 
local UICorner39 = Instance.new("UICorner")
 
UICorner39.CornerRadius = UDim.new(0, 8)
 
local ImageLabel17 = Instance.new("ImageLabel")
 
ImageLabel17.Image = "rbxassetid://115169947896689"
 
ImageLabel17.BackgroundTransparency = 0.3
 
ImageLabel17.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel17.Parent = TextButton25
 
ImageLabel17.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel17.Size = UDim2.fromOffset(34, 34)
 
UICorner39.Parent = ImageLabel17
 
local TextLabel37 = Instance.new("TextLabel")
 
TextLabel37.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel37.Parent = TextButton25
 
TextLabel37.Text = "Anime Card Farm"
 
TextLabel37.Font = Enum.Font.GothamBold
 
TextLabel37.BackgroundTransparency = 1
 
TextLabel37.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel37.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel37.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel37.TextSize = 13
 
TextLabel37.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel38 = Instance.new("TextLabel")
 
TextLabel38.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel38.Parent = TextButton25
 
TextLabel38.Text = "Auto farm / cards"
 
TextLabel38.Font = Enum.Font.Gotham
 
TextLabel38.BackgroundTransparency = 1
 
TextLabel38.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel38.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel38.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel38.TextSize = 11
 
TextLabel38.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel39 = Instance.new("TextLabel")
 
TextLabel39.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel39.Parent = TextButton25
 
TextLabel39.Text = ""
 
TextLabel39.AnchorPoint = Vector2.new(1, 0)
 
TextLabel39.Font = Enum.Font.GothamBold
 
TextLabel39.BackgroundTransparency = 1
 
TextLabel39.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel39.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel39.TextSize = 9.5
 
TextLabel39.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel18 = Instance.new("ImageLabel")
 
ImageLabel18.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel18.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel18.BackgroundTransparency = 1
 
ImageLabel18.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel18.Parent = TextButton25
 
ImageLabel18.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel18.Visible = false
 
ImageLabel18.Size = UDim2.fromOffset(14, 14)
 
local TextLabel40 = Instance.new("TextLabel")
 
TextLabel40.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel40.Parent = TextButton25
 
TextLabel40.Text = ">"
 
TextLabel40.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel40.Font = Enum.Font.GothamBold
 
TextLabel40.BackgroundTransparency = 1
 
TextLabel40.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel40.TextSize = 12
 
TextLabel40.Size = UDim2.fromOffset(10, 16)
 
local UICorner40 = Instance.new("UICorner")
 
UICorner40.CornerRadius = UDim.new(0, 6)
 
local UIStroke28 = Instance.new("UIStroke")
 
UIStroke28.Thickness = 1
 
UIStroke28.Transparency = 0.2
 
UIStroke28.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke28.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton26 = Instance.new("TextButton")
 
TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton26.Parent = TextButton25
 
TextButton26.Text = "⚡ Auto Execute: OFF"
 
TextButton26.AutoButtonColor = false
 
TextButton26.AnchorPoint = Vector2.new(1, 0)
 
TextButton26.Font = Enum.Font.Gotham
 
TextButton26.BackgroundTransparency = 0.2
 
TextButton26.Position = UDim2.new(1, -26, 0, 31)
 
TextButton26.TextSize = 8.5
 
TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton26.BorderSizePixel = 0
 
TextButton26.Size = UDim2.fromOffset(116, 20)
 
UICorner40.Parent = TextButton26
 
UIStroke28.Parent = TextButton26
 
local contents9 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents9)
 
TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton26.BackgroundTransparency = 0.2
 
TextButton26.Text = "⚡ Auto Execute: OFF"
 
TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton26.Font = Enum.Font.Gotham
 
TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton26.UIStroke.Transparency = 0.5
 
TextButton26.MouseButton1Down:Connect(function(x14, y14)
end)
 
TextButton26.MouseButton1Click:Connect(function()
	 
	local contents138 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents138)
	 
	local json8 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Anime Card Farm" })
	 
	writefile("nr_loader_autoexec.json", json8)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents139 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents139)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents140 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents140)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents141 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents141)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents142 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents142)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents143 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents143)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents144 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents144)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents145 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents145)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents146 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents146)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents147 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents147)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents148 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents148)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents149 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents149)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents150 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents150)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents151 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents151)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents152 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents152)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents153 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents153)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents154 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents154)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner97 = Instance.new("UICorner")
	 
	UICorner97.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke59 = Instance.new("UIStroke")
	 
	UIStroke59.Thickness = 1
	 
	UIStroke59.Transparency = 0.2
	 
	UIStroke59.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke59.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame40 = Instance.new("Frame")
	 
	Frame40.BackgroundTransparency = 0.05
	 
	Frame40.Parent = Frame3
	 
	Frame40.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame40.BorderSizePixel = 0
	 
	Frame40.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner97.Parent = Frame40
	 
	UIStroke59.Parent = Frame40
	 
	local UICorner98 = Instance.new("UICorner")
	 
	UICorner98.CornerRadius = UDim.new(0, 2)
	 
	local Frame41 = Instance.new("Frame")
	 
	Frame41.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame41.Parent = Frame40
	 
	Frame41.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame41.BorderSizePixel = 0
	 
	Frame41.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner98.Parent = Frame41
	 
	local TextLabel92 = Instance.new("TextLabel")
	 
	TextLabel92.TextWrapped = true
	 
	TextLabel92.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel92.Parent = Frame40
	 
	TextLabel92.Text = "[Auto Exec: 24h] Anime Card Farm aktif! Link dicopy ke clipboard."
	 
	TextLabel92.Font = Enum.Font.Gotham
	 
	TextLabel92.BackgroundTransparency = 1
	 
	TextLabel92.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel92.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel92.TextSize = 12
	 
	TextLabel92.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale37 = Instance.new("UIScale")
	 
	UIScale37.Parent = Frame40
	 
	UIScale37.Scale = 0.85
	 
	local tween198 = TweenService:Create(UIScale37, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween198:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale15 = Instance.new("UIScale")
 
UIScale15.Parent = TextButton25
 
TextButton25.MouseEnter:Connect(function(arg41)
	 
	local tween199 = TweenService:Create(TextButton25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween199:Play()
	 
	local tween200 = TweenService:Create(UIScale15, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween200:Play()
	 
	local tween201 = TweenService:Create(TextLabel40, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween201:Play()
end)
 
TextButton25.MouseLeave:Connect(function(arg42)
	 
	local tween202 = TweenService:Create(TextButton25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween202:Play()
	 
	local tween203 = TweenService:Create(UIScale15, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween203:Play()
	 
	local tween204 = TweenService:Create(TextLabel40, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween204:Play()
end)
 
TextButton25.MouseButton1Click:Connect(function()
end)
 
TextButton25.BackgroundTransparency = 1
 
UIScale15.Scale = 0.96
 
task.delay(0.32, function(...)
	 
	local tween70 = TweenService:Create(TextButton25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween70:Play()
	 
	local tween71 = TweenService:Create(UIScale15, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween71:Play()
end)
 
local UICorner41 = Instance.new("UICorner")
 
UICorner41.CornerRadius = UDim.new(0, 10)
 
local UIStroke29 = Instance.new("UIStroke")
 
UIStroke29.Thickness = 1
 
UIStroke29.Transparency = 0.2
 
UIStroke29.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke29.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton27 = Instance.new("TextButton")
 
TextButton27.LayoutOrder = 9
 
TextButton27.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton27.BackgroundTransparency = 0.2
 
TextButton27.AutoButtonColor = false
 
TextButton27.Parent = ScrollingFrame
 
TextButton27.Text = ""
 
TextButton27.BorderSizePixel = 0
 
TextButton27.Size = UDim2.new(1, 0, 0, 58)
 
UICorner41.Parent = TextButton27
 
UIStroke29.Parent = TextButton27
 
local UICorner42 = Instance.new("UICorner")
 
UICorner42.CornerRadius = UDim.new(0, 8)
 
local ImageLabel19 = Instance.new("ImageLabel")
 
ImageLabel19.Image = "rbxassetid://118103427371929"
 
ImageLabel19.BackgroundTransparency = 0.3
 
ImageLabel19.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel19.Parent = TextButton27
 
ImageLabel19.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel19.Size = UDim2.fromOffset(34, 34)
 
UICorner42.Parent = ImageLabel19
 
local TextLabel41 = Instance.new("TextLabel")
 
TextLabel41.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel41.Parent = TextButton27
 
TextLabel41.Text = "Roblox Anti AFK"
 
TextLabel41.Font = Enum.Font.GothamBold
 
TextLabel41.BackgroundTransparency = 1
 
TextLabel41.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel41.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel41.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel41.TextSize = 13
 
TextLabel41.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel42 = Instance.new("TextLabel")
 
TextLabel42.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel42.Parent = TextButton27
 
TextLabel42.Text = "Blocks idle kick / any game"
 
TextLabel42.Font = Enum.Font.Gotham
 
TextLabel42.BackgroundTransparency = 1
 
TextLabel42.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel42.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel42.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel42.TextSize = 11
 
TextLabel42.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel43 = Instance.new("TextLabel")
 
TextLabel43.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel43.Parent = TextButton27
 
TextLabel43.Text = ""
 
TextLabel43.AnchorPoint = Vector2.new(1, 0)
 
TextLabel43.Font = Enum.Font.GothamBold
 
TextLabel43.BackgroundTransparency = 1
 
TextLabel43.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel43.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel43.TextSize = 9.5
 
TextLabel43.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel20 = Instance.new("ImageLabel")
 
ImageLabel20.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel20.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel20.BackgroundTransparency = 1
 
ImageLabel20.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel20.Parent = TextButton27
 
ImageLabel20.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel20.Visible = false
 
ImageLabel20.Size = UDim2.fromOffset(14, 14)
 
local TextLabel44 = Instance.new("TextLabel")
 
TextLabel44.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel44.Parent = TextButton27
 
TextLabel44.Text = ">"
 
TextLabel44.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel44.Font = Enum.Font.GothamBold
 
TextLabel44.BackgroundTransparency = 1
 
TextLabel44.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel44.TextSize = 12
 
TextLabel44.Size = UDim2.fromOffset(10, 16)
 
local UICorner43 = Instance.new("UICorner")
 
UICorner43.CornerRadius = UDim.new(0, 6)
 
local UIStroke30 = Instance.new("UIStroke")
 
UIStroke30.Thickness = 1
 
UIStroke30.Transparency = 0.2
 
UIStroke30.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke30.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton28 = Instance.new("TextButton")
 
TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton28.Parent = TextButton27
 
TextButton28.Text = "⚡ Auto Execute: OFF"
 
TextButton28.AutoButtonColor = false
 
TextButton28.AnchorPoint = Vector2.new(1, 0)
 
TextButton28.Font = Enum.Font.Gotham
 
TextButton28.BackgroundTransparency = 0.2
 
TextButton28.Position = UDim2.new(1, -26, 0, 31)
 
TextButton28.TextSize = 8.5
 
TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton28.BorderSizePixel = 0
 
TextButton28.Size = UDim2.fromOffset(116, 20)
 
UICorner43.Parent = TextButton28
 
UIStroke30.Parent = TextButton28
 
local contents10 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents10)
 
TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton28.BackgroundTransparency = 0.2
 
TextButton28.Text = "⚡ Auto Execute: OFF"
 
TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton28.Font = Enum.Font.Gotham
 
TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton28.UIStroke.Transparency = 0.5
 
TextButton28.MouseButton1Down:Connect(function(x15, y15)
end)
 
TextButton28.MouseButton1Click:Connect(function()
	 
	local contents155 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents155)
	 
	local json9 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Roblox Anti AFK" })
	 
	writefile("nr_loader_autoexec.json", json9)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents156 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents156)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents157 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents157)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents158 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents158)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents159 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents159)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents160 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents160)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents161 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents161)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents162 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents162)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents163 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents163)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents164 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents164)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents165 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents165)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents166 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents166)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents167 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents167)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents168 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents168)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents169 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents169)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents170 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents170)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents171 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents171)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner99 = Instance.new("UICorner")
	 
	UICorner99.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke60 = Instance.new("UIStroke")
	 
	UIStroke60.Thickness = 1
	 
	UIStroke60.Transparency = 0.2
	 
	UIStroke60.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke60.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame42 = Instance.new("Frame")
	 
	Frame42.BackgroundTransparency = 0.05
	 
	Frame42.Parent = Frame3
	 
	Frame42.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame42.BorderSizePixel = 0
	 
	Frame42.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner99.Parent = Frame42
	 
	UIStroke60.Parent = Frame42
	 
	local UICorner100 = Instance.new("UICorner")
	 
	UICorner100.CornerRadius = UDim.new(0, 2)
	 
	local Frame43 = Instance.new("Frame")
	 
	Frame43.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame43.Parent = Frame42
	 
	Frame43.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame43.BorderSizePixel = 0
	 
	Frame43.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner100.Parent = Frame43
	 
	local TextLabel93 = Instance.new("TextLabel")
	 
	TextLabel93.TextWrapped = true
	 
	TextLabel93.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel93.Parent = Frame42
	 
	TextLabel93.Text = "[Auto Exec: 24h] Roblox Anti AFK aktif! Link dicopy ke clipboard."
	 
	TextLabel93.Font = Enum.Font.Gotham
	 
	TextLabel93.BackgroundTransparency = 1
	 
	TextLabel93.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel93.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel93.TextSize = 12
	 
	TextLabel93.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale38 = Instance.new("UIScale")
	 
	UIScale38.Parent = Frame42
	 
	UIScale38.Scale = 0.85
	 
	local tween205 = TweenService:Create(UIScale38, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween205:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale16 = Instance.new("UIScale")
 
UIScale16.Parent = TextButton27
 
TextButton27.MouseEnter:Connect(function(arg43)
	 
	local tween206 = TweenService:Create(TextButton27, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween206:Play()
	 
	local tween207 = TweenService:Create(UIScale16, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween207:Play()
	 
	local tween208 = TweenService:Create(TextLabel44, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween208:Play()
end)
 
TextButton27.MouseLeave:Connect(function(arg44)
	 
	local tween209 = TweenService:Create(TextButton27, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween209:Play()
	 
	local tween210 = TweenService:Create(UIScale16, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween210:Play()
	 
	local tween211 = TweenService:Create(TextLabel44, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween211:Play()
end)
 
TextButton27.MouseButton1Click:Connect(function()
end)
 
TextButton27.BackgroundTransparency = 1
 
UIScale16.Scale = 0.96
 
task.delay(0.36, function(...)
	 
	local tween79 = TweenService:Create(TextButton27, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween79:Play()
	 
	local tween80 = TweenService:Create(UIScale16, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween80:Play()
end)
 
local UICorner44 = Instance.new("UICorner")
 
UICorner44.CornerRadius = UDim.new(0, 10)
 
local UIStroke31 = Instance.new("UIStroke")
 
UIStroke31.Thickness = 1
 
UIStroke31.Transparency = 0.2
 
UIStroke31.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke31.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton29 = Instance.new("TextButton")
 
TextButton29.LayoutOrder = 10
 
TextButton29.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton29.BackgroundTransparency = 0.2
 
TextButton29.AutoButtonColor = false
 
TextButton29.Parent = ScrollingFrame
 
TextButton29.Text = ""
 
TextButton29.BorderSizePixel = 0
 
TextButton29.Size = UDim2.new(1, 0, 0, 58)
 
UICorner44.Parent = TextButton29
 
UIStroke31.Parent = TextButton29
 
local UICorner45 = Instance.new("UICorner")
 
UICorner45.CornerRadius = UDim.new(0, 8)
 
local ImageLabel21 = Instance.new("ImageLabel")
 
ImageLabel21.Image = "rbxassetid://103507136591905"
 
ImageLabel21.BackgroundTransparency = 0.3
 
ImageLabel21.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel21.Parent = TextButton29
 
ImageLabel21.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel21.Size = UDim2.fromOffset(34, 34)
 
UICorner45.Parent = ImageLabel21
 
local TextLabel45 = Instance.new("TextLabel")
 
TextLabel45.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel45.Parent = TextButton29
 
TextLabel45.Text = "Grow A Garden 2"
 
TextLabel45.Font = Enum.Font.GothamBold
 
TextLabel45.BackgroundTransparency = 1
 
TextLabel45.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel45.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel45.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel45.TextSize = 13
 
TextLabel45.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel46 = Instance.new("TextLabel")
 
TextLabel46.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel46.Parent = TextButton29
 
TextLabel46.Text = "Auto farm / shop / sell"
 
TextLabel46.Font = Enum.Font.Gotham
 
TextLabel46.BackgroundTransparency = 1
 
TextLabel46.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel46.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel46.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel46.TextSize = 11
 
TextLabel46.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel47 = Instance.new("TextLabel")
 
TextLabel47.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel47.Parent = TextButton29
 
TextLabel47.Text = ""
 
TextLabel47.AnchorPoint = Vector2.new(1, 0)
 
TextLabel47.Font = Enum.Font.GothamBold
 
TextLabel47.BackgroundTransparency = 1
 
TextLabel47.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel47.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel47.TextSize = 9.5
 
TextLabel47.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel22 = Instance.new("ImageLabel")
 
ImageLabel22.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel22.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel22.BackgroundTransparency = 1
 
ImageLabel22.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel22.Parent = TextButton29
 
ImageLabel22.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel22.Visible = false
 
ImageLabel22.Size = UDim2.fromOffset(14, 14)
 
local TextLabel48 = Instance.new("TextLabel")
 
TextLabel48.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel48.Parent = TextButton29
 
TextLabel48.Text = ">"
 
TextLabel48.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel48.Font = Enum.Font.GothamBold
 
TextLabel48.BackgroundTransparency = 1
 
TextLabel48.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel48.TextSize = 12
 
TextLabel48.Size = UDim2.fromOffset(10, 16)
 
local UICorner46 = Instance.new("UICorner")
 
UICorner46.CornerRadius = UDim.new(0, 6)
 
local UIStroke32 = Instance.new("UIStroke")
 
UIStroke32.Thickness = 1
 
UIStroke32.Transparency = 0.2
 
UIStroke32.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke32.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton30 = Instance.new("TextButton")
 
TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton30.Parent = TextButton29
 
TextButton30.Text = "⚡ Auto Execute: OFF"
 
TextButton30.AutoButtonColor = false
 
TextButton30.AnchorPoint = Vector2.new(1, 0)
 
TextButton30.Font = Enum.Font.Gotham
 
TextButton30.BackgroundTransparency = 0.2
 
TextButton30.Position = UDim2.new(1, -26, 0, 31)
 
TextButton30.TextSize = 8.5
 
TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton30.BorderSizePixel = 0
 
TextButton30.Size = UDim2.fromOffset(116, 20)
 
UICorner46.Parent = TextButton30
 
UIStroke32.Parent = TextButton30
 
local contents11 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents11)
 
TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton30.BackgroundTransparency = 0.2
 
TextButton30.Text = "⚡ Auto Execute: OFF"
 
TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton30.Font = Enum.Font.Gotham
 
TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton30.UIStroke.Transparency = 0.5
 
TextButton30.MouseButton1Down:Connect(function(x16, y16)
end)
 
TextButton30.MouseButton1Click:Connect(function()
	 
	local contents172 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents172)
	 
	local json10 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Grow A Garden 2" })
	 
	writefile("nr_loader_autoexec.json", json10)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents173 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents173)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents174 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents174)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents175 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents175)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents176 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents176)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents177 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents177)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents178 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents178)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents179 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents179)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents180 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents180)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents181 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents181)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents182 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents182)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents183 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents183)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents184 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents184)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents185 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents185)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents186 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents186)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents187 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents187)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents188 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents188)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner101 = Instance.new("UICorner")
	 
	UICorner101.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke61 = Instance.new("UIStroke")
	 
	UIStroke61.Thickness = 1
	 
	UIStroke61.Transparency = 0.2
	 
	UIStroke61.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke61.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame44 = Instance.new("Frame")
	 
	Frame44.BackgroundTransparency = 0.05
	 
	Frame44.Parent = Frame3
	 
	Frame44.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame44.BorderSizePixel = 0
	 
	Frame44.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner101.Parent = Frame44
	 
	UIStroke61.Parent = Frame44
	 
	local UICorner102 = Instance.new("UICorner")
	 
	UICorner102.CornerRadius = UDim.new(0, 2)
	 
	local Frame45 = Instance.new("Frame")
	 
	Frame45.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame45.Parent = Frame44
	 
	Frame45.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame45.BorderSizePixel = 0
	 
	Frame45.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner102.Parent = Frame45
	 
	local TextLabel94 = Instance.new("TextLabel")
	 
	TextLabel94.TextWrapped = true
	 
	TextLabel94.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel94.Parent = Frame44
	 
	TextLabel94.Text = "[Auto Exec: 24h] Grow A Garden 2 aktif! Link dicopy ke clipboard."
	 
	TextLabel94.Font = Enum.Font.Gotham
	 
	TextLabel94.BackgroundTransparency = 1
	 
	TextLabel94.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel94.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel94.TextSize = 12
	 
	TextLabel94.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale39 = Instance.new("UIScale")
	 
	UIScale39.Parent = Frame44
	 
	UIScale39.Scale = 0.85
	 
	local tween212 = TweenService:Create(UIScale39, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween212:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale17 = Instance.new("UIScale")
 
UIScale17.Parent = TextButton29
 
TextButton29.MouseEnter:Connect(function(arg45)
	 
	local tween213 = TweenService:Create(TextButton29, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween213:Play()
	 
	local tween214 = TweenService:Create(UIScale17, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween214:Play()
	 
	local tween215 = TweenService:Create(TextLabel48, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween215:Play()
end)
 
TextButton29.MouseLeave:Connect(function(arg46)
	 
	local tween216 = TweenService:Create(TextButton29, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween216:Play()
	 
	local tween217 = TweenService:Create(UIScale17, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween217:Play()
	 
	local tween218 = TweenService:Create(TextLabel48, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween218:Play()
end)
 
TextButton29.MouseButton1Click:Connect(function()
end)
 
TextButton29.BackgroundTransparency = 1
 
UIScale17.Scale = 0.96
 
task.delay(0.4, function(...)
	 
	local tween81 = TweenService:Create(TextButton29, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween81:Play()
	 
	local tween82 = TweenService:Create(UIScale17, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween82:Play()
end)
 
local UICorner47 = Instance.new("UICorner")
 
UICorner47.CornerRadius = UDim.new(0, 10)
 
local UIStroke33 = Instance.new("UIStroke")
 
UIStroke33.Thickness = 1
 
UIStroke33.Transparency = 0.2
 
UIStroke33.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke33.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton31 = Instance.new("TextButton")
 
TextButton31.LayoutOrder = 11
 
TextButton31.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton31.BackgroundTransparency = 0.2
 
TextButton31.AutoButtonColor = false
 
TextButton31.Parent = ScrollingFrame
 
TextButton31.Text = ""
 
TextButton31.BorderSizePixel = 0
 
TextButton31.Size = UDim2.new(1, 0, 0, 58)
 
UICorner47.Parent = TextButton31
 
UIStroke33.Parent = TextButton31
 
local UICorner48 = Instance.new("UICorner")
 
UICorner48.CornerRadius = UDim.new(0, 8)
 
local ImageLabel23 = Instance.new("ImageLabel")
 
ImageLabel23.Image = "rbxassetid://95633120003456"
 
ImageLabel23.BackgroundTransparency = 0.3
 
ImageLabel23.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel23.Parent = TextButton31
 
ImageLabel23.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel23.Size = UDim2.fromOffset(34, 34)
 
UICorner48.Parent = ImageLabel23
 
local TextLabel49 = Instance.new("TextLabel")
 
TextLabel49.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel49.Parent = TextButton31
 
TextLabel49.Text = "Tap Heroes: Pet Simulator 99"
 
TextLabel49.Font = Enum.Font.GothamBold
 
TextLabel49.BackgroundTransparency = 1
 
TextLabel49.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel49.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel49.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel49.TextSize = 13
 
TextLabel49.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel50 = Instance.new("TextLabel")
 
TextLabel50.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel50.Parent = TextButton31
 
TextLabel50.Text = "Auto tap / farm"
 
TextLabel50.Font = Enum.Font.Gotham
 
TextLabel50.BackgroundTransparency = 1
 
TextLabel50.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel50.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel50.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel50.TextSize = 11
 
TextLabel50.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel51 = Instance.new("TextLabel")
 
TextLabel51.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel51.Parent = TextButton31
 
TextLabel51.Text = ""
 
TextLabel51.AnchorPoint = Vector2.new(1, 0)
 
TextLabel51.Font = Enum.Font.GothamBold
 
TextLabel51.BackgroundTransparency = 1
 
TextLabel51.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel51.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel51.TextSize = 9.5
 
TextLabel51.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel24 = Instance.new("ImageLabel")
 
ImageLabel24.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel24.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel24.BackgroundTransparency = 1
 
ImageLabel24.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel24.Parent = TextButton31
 
ImageLabel24.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel24.Visible = false
 
ImageLabel24.Size = UDim2.fromOffset(14, 14)
 
local TextLabel52 = Instance.new("TextLabel")
 
TextLabel52.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel52.Parent = TextButton31
 
TextLabel52.Text = ">"
 
TextLabel52.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel52.Font = Enum.Font.GothamBold
 
TextLabel52.BackgroundTransparency = 1
 
TextLabel52.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel52.TextSize = 12
 
TextLabel52.Size = UDim2.fromOffset(10, 16)
 
local UICorner49 = Instance.new("UICorner")
 
UICorner49.CornerRadius = UDim.new(0, 6)
 
local UIStroke34 = Instance.new("UIStroke")
 
UIStroke34.Thickness = 1
 
UIStroke34.Transparency = 0.2
 
UIStroke34.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke34.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton32 = Instance.new("TextButton")
 
TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton32.Parent = TextButton31
 
TextButton32.Text = "⚡ Auto Execute: OFF"
 
TextButton32.AutoButtonColor = false
 
TextButton32.AnchorPoint = Vector2.new(1, 0)
 
TextButton32.Font = Enum.Font.Gotham
 
TextButton32.BackgroundTransparency = 0.2
 
TextButton32.Position = UDim2.new(1, -26, 0, 31)
 
TextButton32.TextSize = 8.5
 
TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton32.BorderSizePixel = 0
 
TextButton32.Size = UDim2.fromOffset(116, 20)
 
UICorner49.Parent = TextButton32
 
UIStroke34.Parent = TextButton32
 
local contents12 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents12)
 
TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton32.BackgroundTransparency = 0.2
 
TextButton32.Text = "⚡ Auto Execute: OFF"
 
TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton32.Font = Enum.Font.Gotham
 
TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton32.UIStroke.Transparency = 0.5
 
TextButton32.MouseButton1Down:Connect(function(x17, y17)
end)
 
TextButton32.MouseButton1Click:Connect(function()
	 
	local contents189 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents189)
	 
	local json11 = HttpService:JSONEncode({
	durationHours = 24,
	enabledAt = 1790833324,
	expiresAt = 1790919724,
	gameName = "Tap Heroes: Pet Simulator 99"
})
	 
	writefile("nr_loader_autoexec.json", json11)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents190 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents190)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents191 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents191)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents192 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents192)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents193 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents193)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents194 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents194)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents195 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents195)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents196 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents196)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents197 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents197)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents198 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents198)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents199 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents199)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents200 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents200)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents201 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents201)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents202 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents202)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents203 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents203)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents204 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents204)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents205 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents205)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner103 = Instance.new("UICorner")
	 
	UICorner103.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke62 = Instance.new("UIStroke")
	 
	UIStroke62.Thickness = 1
	 
	UIStroke62.Transparency = 0.2
	 
	UIStroke62.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke62.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame46 = Instance.new("Frame")
	 
	Frame46.BackgroundTransparency = 0.05
	 
	Frame46.Parent = Frame3
	 
	Frame46.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame46.BorderSizePixel = 0
	 
	Frame46.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner103.Parent = Frame46
	 
	UIStroke62.Parent = Frame46
	 
	local UICorner104 = Instance.new("UICorner")
	 
	UICorner104.CornerRadius = UDim.new(0, 2)
	 
	local Frame47 = Instance.new("Frame")
	 
	Frame47.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame47.Parent = Frame46
	 
	Frame47.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame47.BorderSizePixel = 0
	 
	Frame47.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner104.Parent = Frame47
	 
	local TextLabel95 = Instance.new("TextLabel")
	 
	TextLabel95.TextWrapped = true
	 
	TextLabel95.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel95.Parent = Frame46
	 
	TextLabel95.Text = "[Auto Exec: 24h] Tap Heroes: Pet Simulator 99 aktif! Link dicopy ke clipboard."
	 
	TextLabel95.Font = Enum.Font.Gotham
	 
	TextLabel95.BackgroundTransparency = 1
	 
	TextLabel95.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel95.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel95.TextSize = 12
	 
	TextLabel95.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale40 = Instance.new("UIScale")
	 
	UIScale40.Parent = Frame46
	 
	UIScale40.Scale = 0.85
	 
	local tween219 = TweenService:Create(UIScale40, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween219:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale18 = Instance.new("UIScale")
 
UIScale18.Parent = TextButton31
 
TextButton31.MouseEnter:Connect(function(arg47)
	 
	local tween220 = TweenService:Create(TextButton31, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween220:Play()
	 
	local tween221 = TweenService:Create(UIScale18, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween221:Play()
	 
	local tween222 = TweenService:Create(TextLabel52, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween222:Play()
end)
 
TextButton31.MouseLeave:Connect(function(arg48)
	 
	local tween223 = TweenService:Create(TextButton31, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween223:Play()
	 
	local tween224 = TweenService:Create(UIScale18, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween224:Play()
	 
	local tween225 = TweenService:Create(TextLabel52, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween225:Play()
end)
 
TextButton31.MouseButton1Click:Connect(function()
end)
 
TextButton31.BackgroundTransparency = 1
 
UIScale18.Scale = 0.96
 
task.delay(0.44, function(...)
	 
	local tween83 = TweenService:Create(TextButton31, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween83:Play()
	 
	local tween84 = TweenService:Create(UIScale18, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween84:Play()
end)
 
local UICorner50 = Instance.new("UICorner")
 
UICorner50.CornerRadius = UDim.new(0, 10)
 
local UIStroke35 = Instance.new("UIStroke")
 
UIStroke35.Thickness = 1
 
UIStroke35.Transparency = 0.2
 
UIStroke35.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke35.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton33 = Instance.new("TextButton")
 
TextButton33.LayoutOrder = 12
 
TextButton33.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton33.BackgroundTransparency = 0.2
 
TextButton33.AutoButtonColor = false
 
TextButton33.Parent = ScrollingFrame
 
TextButton33.Text = ""
 
TextButton33.BorderSizePixel = 0
 
TextButton33.Size = UDim2.new(1, 0, 0, 58)
 
UICorner50.Parent = TextButton33
 
UIStroke35.Parent = TextButton33
 
local UICorner51 = Instance.new("UICorner")
 
UICorner51.CornerRadius = UDim.new(0, 8)
 
local ImageLabel25 = Instance.new("ImageLabel")
 
ImageLabel25.Image = "rbxassetid://95336994655521"
 
ImageLabel25.BackgroundTransparency = 0.3
 
ImageLabel25.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel25.Parent = TextButton33
 
ImageLabel25.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel25.Size = UDim2.fromOffset(34, 34)
 
UICorner51.Parent = ImageLabel25
 
local TextLabel53 = Instance.new("TextLabel")
 
TextLabel53.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel53.Parent = TextButton33
 
TextLabel53.Text = "Haze Seas"
 
TextLabel53.Font = Enum.Font.GothamBold
 
TextLabel53.BackgroundTransparency = 1
 
TextLabel53.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel53.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel53.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel53.TextSize = 13
 
TextLabel53.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel54 = Instance.new("TextLabel")
 
TextLabel54.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel54.Parent = TextButton33
 
TextLabel54.Text = "Auto punch / farm"
 
TextLabel54.Font = Enum.Font.Gotham
 
TextLabel54.BackgroundTransparency = 1
 
TextLabel54.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel54.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel54.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel54.TextSize = 11
 
TextLabel54.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel55 = Instance.new("TextLabel")
 
TextLabel55.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel55.Parent = TextButton33
 
TextLabel55.Text = ""
 
TextLabel55.AnchorPoint = Vector2.new(1, 0)
 
TextLabel55.Font = Enum.Font.GothamBold
 
TextLabel55.BackgroundTransparency = 1
 
TextLabel55.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel55.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel55.TextSize = 9.5
 
TextLabel55.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel26 = Instance.new("ImageLabel")
 
ImageLabel26.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel26.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel26.BackgroundTransparency = 1
 
ImageLabel26.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel26.Parent = TextButton33
 
ImageLabel26.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel26.Visible = false
 
ImageLabel26.Size = UDim2.fromOffset(14, 14)
 
local TextLabel56 = Instance.new("TextLabel")
 
TextLabel56.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel56.Parent = TextButton33
 
TextLabel56.Text = ">"
 
TextLabel56.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel56.Font = Enum.Font.GothamBold
 
TextLabel56.BackgroundTransparency = 1
 
TextLabel56.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel56.TextSize = 12
 
TextLabel56.Size = UDim2.fromOffset(10, 16)
 
local UICorner52 = Instance.new("UICorner")
 
UICorner52.CornerRadius = UDim.new(0, 6)
 
local UIStroke36 = Instance.new("UIStroke")
 
UIStroke36.Thickness = 1
 
UIStroke36.Transparency = 0.2
 
UIStroke36.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke36.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton34 = Instance.new("TextButton")
 
TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton34.Parent = TextButton33
 
TextButton34.Text = "⚡ Auto Execute: OFF"
 
TextButton34.AutoButtonColor = false
 
TextButton34.AnchorPoint = Vector2.new(1, 0)
 
TextButton34.Font = Enum.Font.Gotham
 
TextButton34.BackgroundTransparency = 0.2
 
TextButton34.Position = UDim2.new(1, -26, 0, 31)
 
TextButton34.TextSize = 8.5
 
TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton34.BorderSizePixel = 0
 
TextButton34.Size = UDim2.fromOffset(116, 20)
 
UICorner52.Parent = TextButton34
 
UIStroke36.Parent = TextButton34
 
local contents13 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents13)
 
TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton34.BackgroundTransparency = 0.2
 
TextButton34.Text = "⚡ Auto Execute: OFF"
 
TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton34.Font = Enum.Font.Gotham
 
TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton34.UIStroke.Transparency = 0.5
 
TextButton34.MouseButton1Down:Connect(function(x18, y18)
end)
 
TextButton34.MouseButton1Click:Connect(function()
	 
	local contents206 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents206)
	 
	local json12 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Haze Seas" })
	 
	writefile("nr_loader_autoexec.json", json12)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents207 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents207)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents208 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents208)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents209 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents209)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents210 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents210)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents211 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents211)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents212 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents212)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents213 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents213)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents214 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents214)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents215 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents215)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents216 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents216)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents217 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents217)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents218 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents218)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents219 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents219)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents220 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents220)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents221 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents221)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents222 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents222)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner105 = Instance.new("UICorner")
	 
	UICorner105.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke63 = Instance.new("UIStroke")
	 
	UIStroke63.Thickness = 1
	 
	UIStroke63.Transparency = 0.2
	 
	UIStroke63.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke63.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame48 = Instance.new("Frame")
	 
	Frame48.BackgroundTransparency = 0.05
	 
	Frame48.Parent = Frame3
	 
	Frame48.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame48.BorderSizePixel = 0
	 
	Frame48.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner105.Parent = Frame48
	 
	UIStroke63.Parent = Frame48
	 
	local UICorner106 = Instance.new("UICorner")
	 
	UICorner106.CornerRadius = UDim.new(0, 2)
	 
	local Frame49 = Instance.new("Frame")
	 
	Frame49.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame49.Parent = Frame48
	 
	Frame49.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame49.BorderSizePixel = 0
	 
	Frame49.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner106.Parent = Frame49
	 
	local TextLabel96 = Instance.new("TextLabel")
	 
	TextLabel96.TextWrapped = true
	 
	TextLabel96.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel96.Parent = Frame48
	 
	TextLabel96.Text = "[Auto Exec: 24h] Haze Seas aktif! Link dicopy ke clipboard."
	 
	TextLabel96.Font = Enum.Font.Gotham
	 
	TextLabel96.BackgroundTransparency = 1
	 
	TextLabel96.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel96.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel96.TextSize = 12
	 
	TextLabel96.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale41 = Instance.new("UIScale")
	 
	UIScale41.Parent = Frame48
	 
	UIScale41.Scale = 0.85
	 
	local tween226 = TweenService:Create(UIScale41, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween226:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale19 = Instance.new("UIScale")
 
UIScale19.Parent = TextButton33
 
TextButton33.MouseEnter:Connect(function(arg49)
	 
	local tween227 = TweenService:Create(TextButton33, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween227:Play()
	 
	local tween228 = TweenService:Create(UIScale19, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween228:Play()
	 
	local tween229 = TweenService:Create(TextLabel56, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween229:Play()
end)
 
TextButton33.MouseLeave:Connect(function(arg50)
	 
	local tween230 = TweenService:Create(TextButton33, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween230:Play()
	 
	local tween231 = TweenService:Create(UIScale19, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween231:Play()
	 
	local tween232 = TweenService:Create(TextLabel56, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween232:Play()
end)
 
TextButton33.MouseButton1Click:Connect(function()
end)
 
TextButton33.BackgroundTransparency = 1
 
UIScale19.Scale = 0.96
 
task.delay(0.48, function(...)
	 
	local tween85 = TweenService:Create(TextButton33, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween85:Play()
	 
	local tween86 = TweenService:Create(UIScale19, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween86:Play()
end)
 
local UICorner53 = Instance.new("UICorner")
 
UICorner53.CornerRadius = UDim.new(0, 10)
 
local UIStroke37 = Instance.new("UIStroke")
 
UIStroke37.Thickness = 1
 
UIStroke37.Transparency = 0.2
 
UIStroke37.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke37.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton35 = Instance.new("TextButton")
 
TextButton35.LayoutOrder = 13
 
TextButton35.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton35.BackgroundTransparency = 0.2
 
TextButton35.AutoButtonColor = false
 
TextButton35.Parent = ScrollingFrame
 
TextButton35.Text = ""
 
TextButton35.BorderSizePixel = 0
 
TextButton35.Size = UDim2.new(1, 0, 0, 58)
 
UICorner53.Parent = TextButton35
 
UIStroke37.Parent = TextButton35
 
local UICorner54 = Instance.new("UICorner")
 
UICorner54.CornerRadius = UDim.new(0, 8)
 
local ImageLabel27 = Instance.new("ImageLabel")
 
ImageLabel27.Image = "rbxassetid://74203696854385"
 
ImageLabel27.BackgroundTransparency = 0.3
 
ImageLabel27.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel27.Parent = TextButton35
 
ImageLabel27.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel27.Size = UDim2.fromOffset(34, 34)
 
UICorner54.Parent = ImageLabel27
 
local TextLabel57 = Instance.new("TextLabel")
 
TextLabel57.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel57.Parent = TextButton35
 
TextLabel57.Text = "Build an Anthill"
 
TextLabel57.Font = Enum.Font.GothamBold
 
TextLabel57.BackgroundTransparency = 1
 
TextLabel57.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel57.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel57.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel57.TextSize = 13
 
TextLabel57.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel58 = Instance.new("TextLabel")
 
TextLabel58.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel58.Parent = TextButton35
 
TextLabel58.Text = "Auto food / collect / sell sugar"
 
TextLabel58.Font = Enum.Font.Gotham
 
TextLabel58.BackgroundTransparency = 1
 
TextLabel58.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel58.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel58.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel58.TextSize = 11
 
TextLabel58.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel59 = Instance.new("TextLabel")
 
TextLabel59.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel59.Parent = TextButton35
 
TextLabel59.Text = ""
 
TextLabel59.AnchorPoint = Vector2.new(1, 0)
 
TextLabel59.Font = Enum.Font.GothamBold
 
TextLabel59.BackgroundTransparency = 1
 
TextLabel59.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel59.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel59.TextSize = 9.5
 
TextLabel59.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel28 = Instance.new("ImageLabel")
 
ImageLabel28.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel28.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel28.BackgroundTransparency = 1
 
ImageLabel28.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel28.Parent = TextButton35
 
ImageLabel28.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel28.Visible = false
 
ImageLabel28.Size = UDim2.fromOffset(14, 14)
 
local TextLabel60 = Instance.new("TextLabel")
 
TextLabel60.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel60.Parent = TextButton35
 
TextLabel60.Text = ">"
 
TextLabel60.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel60.Font = Enum.Font.GothamBold
 
TextLabel60.BackgroundTransparency = 1
 
TextLabel60.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel60.TextSize = 12
 
TextLabel60.Size = UDim2.fromOffset(10, 16)
 
local UICorner55 = Instance.new("UICorner")
 
UICorner55.CornerRadius = UDim.new(0, 6)
 
local UIStroke38 = Instance.new("UIStroke")
 
UIStroke38.Thickness = 1
 
UIStroke38.Transparency = 0.2
 
UIStroke38.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke38.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton36 = Instance.new("TextButton")
 
TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton36.Parent = TextButton35
 
TextButton36.Text = "⚡ Auto Execute: OFF"
 
TextButton36.AutoButtonColor = false
 
TextButton36.AnchorPoint = Vector2.new(1, 0)
 
TextButton36.Font = Enum.Font.Gotham
 
TextButton36.BackgroundTransparency = 0.2
 
TextButton36.Position = UDim2.new(1, -26, 0, 31)
 
TextButton36.TextSize = 8.5
 
TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton36.BorderSizePixel = 0
 
TextButton36.Size = UDim2.fromOffset(116, 20)
 
UICorner55.Parent = TextButton36
 
UIStroke38.Parent = TextButton36
 
local contents14 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents14)
 
TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton36.BackgroundTransparency = 0.2
 
TextButton36.Text = "⚡ Auto Execute: OFF"
 
TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton36.Font = Enum.Font.Gotham
 
TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton36.UIStroke.Transparency = 0.5
 
TextButton36.MouseButton1Down:Connect(function(x19, y19)
end)
 
TextButton36.MouseButton1Click:Connect(function()
	 
	local contents223 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents223)
	 
	local json13 = HttpService:JSONEncode({
	durationHours = 24,
	enabledAt = 1790833324,
	expiresAt = 1790919724,
	gameName = "Build an Anthill"
})
	 
	writefile("nr_loader_autoexec.json", json13)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents224 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents224)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents225 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents225)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents226 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents226)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents227 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents227)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents228 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents228)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents229 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents229)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents230 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents230)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents231 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents231)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents232 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents232)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents233 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents233)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents234 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents234)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents235 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents235)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents236 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents236)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents237 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents237)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents238 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents238)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents239 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents239)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner107 = Instance.new("UICorner")
	 
	UICorner107.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke64 = Instance.new("UIStroke")
	 
	UIStroke64.Thickness = 1
	 
	UIStroke64.Transparency = 0.2
	 
	UIStroke64.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke64.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame50 = Instance.new("Frame")
	 
	Frame50.BackgroundTransparency = 0.05
	 
	Frame50.Parent = Frame3
	 
	Frame50.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame50.BorderSizePixel = 0
	 
	Frame50.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner107.Parent = Frame50
	 
	UIStroke64.Parent = Frame50
	 
	local UICorner108 = Instance.new("UICorner")
	 
	UICorner108.CornerRadius = UDim.new(0, 2)
	 
	local Frame51 = Instance.new("Frame")
	 
	Frame51.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame51.Parent = Frame50
	 
	Frame51.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame51.BorderSizePixel = 0
	 
	Frame51.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner108.Parent = Frame51
	 
	local TextLabel97 = Instance.new("TextLabel")
	 
	TextLabel97.TextWrapped = true
	 
	TextLabel97.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel97.Parent = Frame50
	 
	TextLabel97.Text = "[Auto Exec: 24h] Build an Anthill aktif! Link dicopy ke clipboard."
	 
	TextLabel97.Font = Enum.Font.Gotham
	 
	TextLabel97.BackgroundTransparency = 1
	 
	TextLabel97.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel97.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel97.TextSize = 12
	 
	TextLabel97.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale42 = Instance.new("UIScale")
	 
	UIScale42.Parent = Frame50
	 
	UIScale42.Scale = 0.85
	 
	local tween233 = TweenService:Create(UIScale42, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween233:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale20 = Instance.new("UIScale")
 
UIScale20.Parent = TextButton35
 
TextButton35.MouseEnter:Connect(function(arg51)
	 
	local tween234 = TweenService:Create(TextButton35, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween234:Play()
	 
	local tween235 = TweenService:Create(UIScale20, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween235:Play()
	 
	local tween236 = TweenService:Create(TextLabel60, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween236:Play()
end)
 
TextButton35.MouseLeave:Connect(function(arg52)
	 
	local tween237 = TweenService:Create(TextButton35, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween237:Play()
	 
	local tween238 = TweenService:Create(UIScale20, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween238:Play()
	 
	local tween239 = TweenService:Create(TextLabel60, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween239:Play()
end)
 
TextButton35.MouseButton1Click:Connect(function()
end)
 
TextButton35.BackgroundTransparency = 1
 
UIScale20.Scale = 0.96
 
task.delay(0.52, function(...)
	 
	local tween87 = TweenService:Create(TextButton35, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween87:Play()
	 
	local tween88 = TweenService:Create(UIScale20, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween88:Play()
end)
 
local UICorner56 = Instance.new("UICorner")
 
UICorner56.CornerRadius = UDim.new(0, 10)
 
local UIStroke39 = Instance.new("UIStroke")
 
UIStroke39.Thickness = 1
 
UIStroke39.Transparency = 0.2
 
UIStroke39.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke39.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton37 = Instance.new("TextButton")
 
TextButton37.LayoutOrder = 14
 
TextButton37.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton37.BackgroundTransparency = 0.2
 
TextButton37.AutoButtonColor = false
 
TextButton37.Parent = ScrollingFrame
 
TextButton37.Text = ""
 
TextButton37.BorderSizePixel = 0
 
TextButton37.Size = UDim2.new(1, 0, 0, 58)
 
UICorner56.Parent = TextButton37
 
UIStroke39.Parent = TextButton37
 
local UICorner57 = Instance.new("UICorner")
 
UICorner57.CornerRadius = UDim.new(0, 8)
 
local ImageLabel29 = Instance.new("ImageLabel")
 
ImageLabel29.Image = "rbxassetid://131809011640166"
 
ImageLabel29.BackgroundTransparency = 0.3
 
ImageLabel29.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel29.Parent = TextButton37
 
ImageLabel29.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel29.Size = UDim2.fromOffset(34, 34)
 
UICorner57.Parent = ImageLabel29
 
local TextLabel61 = Instance.new("TextLabel")
 
TextLabel61.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel61.Parent = TextButton37
 
TextLabel61.Text = "Build a Ring Farm"
 
TextLabel61.Font = Enum.Font.GothamBold
 
TextLabel61.BackgroundTransparency = 1
 
TextLabel61.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel61.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel61.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel61.TextSize = 13
 
TextLabel61.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel62 = Instance.new("TextLabel")
 
TextLabel62.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel62.Parent = TextButton37
 
TextLabel62.Text = "Auto farm"
 
TextLabel62.Font = Enum.Font.Gotham
 
TextLabel62.BackgroundTransparency = 1
 
TextLabel62.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel62.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel62.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel62.TextSize = 11
 
TextLabel62.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel63 = Instance.new("TextLabel")
 
TextLabel63.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel63.Parent = TextButton37
 
TextLabel63.Text = ""
 
TextLabel63.AnchorPoint = Vector2.new(1, 0)
 
TextLabel63.Font = Enum.Font.GothamBold
 
TextLabel63.BackgroundTransparency = 1
 
TextLabel63.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel63.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel63.TextSize = 9.5
 
TextLabel63.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel30 = Instance.new("ImageLabel")
 
ImageLabel30.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel30.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel30.BackgroundTransparency = 1
 
ImageLabel30.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel30.Parent = TextButton37
 
ImageLabel30.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel30.Visible = false
 
ImageLabel30.Size = UDim2.fromOffset(14, 14)
 
local TextLabel64 = Instance.new("TextLabel")
 
TextLabel64.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel64.Parent = TextButton37
 
TextLabel64.Text = ">"
 
TextLabel64.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel64.Font = Enum.Font.GothamBold
 
TextLabel64.BackgroundTransparency = 1
 
TextLabel64.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel64.TextSize = 12
 
TextLabel64.Size = UDim2.fromOffset(10, 16)
 
local UICorner58 = Instance.new("UICorner")
 
UICorner58.CornerRadius = UDim.new(0, 6)
 
local UIStroke40 = Instance.new("UIStroke")
 
UIStroke40.Thickness = 1
 
UIStroke40.Transparency = 0.2
 
UIStroke40.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke40.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton38 = Instance.new("TextButton")
 
TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton38.Parent = TextButton37
 
TextButton38.Text = "⚡ Auto Execute: OFF"
 
TextButton38.AutoButtonColor = false
 
TextButton38.AnchorPoint = Vector2.new(1, 0)
 
TextButton38.Font = Enum.Font.Gotham
 
TextButton38.BackgroundTransparency = 0.2
 
TextButton38.Position = UDim2.new(1, -26, 0, 31)
 
TextButton38.TextSize = 8.5
 
TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton38.BorderSizePixel = 0
 
TextButton38.Size = UDim2.fromOffset(116, 20)
 
UICorner58.Parent = TextButton38
 
UIStroke40.Parent = TextButton38
 
local contents15 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents15)
 
TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton38.BackgroundTransparency = 0.2
 
TextButton38.Text = "⚡ Auto Execute: OFF"
 
TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton38.Font = Enum.Font.Gotham
 
TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton38.UIStroke.Transparency = 0.5
 
TextButton38.MouseButton1Down:Connect(function(x20, y20)
end)
 
TextButton38.MouseButton1Click:Connect(function()
	 
	local contents240 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents240)
	 
	local json14 = HttpService:JSONEncode({
	durationHours = 24,
	enabledAt = 1790833324,
	expiresAt = 1790919724,
	gameName = "Build a Ring Farm"
})
	 
	writefile("nr_loader_autoexec.json", json14)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents241 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents241)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents242 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents242)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents243 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents243)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents244 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents244)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents245 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents245)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents246 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents246)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents247 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents247)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents248 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents248)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents249 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents249)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents250 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents250)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents251 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents251)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents252 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents252)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents253 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents253)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents254 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents254)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents255 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents255)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents256 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents256)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner109 = Instance.new("UICorner")
	 
	UICorner109.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke65 = Instance.new("UIStroke")
	 
	UIStroke65.Thickness = 1
	 
	UIStroke65.Transparency = 0.2
	 
	UIStroke65.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke65.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame52 = Instance.new("Frame")
	 
	Frame52.BackgroundTransparency = 0.05
	 
	Frame52.Parent = Frame3
	 
	Frame52.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame52.BorderSizePixel = 0
	 
	Frame52.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner109.Parent = Frame52
	 
	UIStroke65.Parent = Frame52
	 
	local UICorner110 = Instance.new("UICorner")
	 
	UICorner110.CornerRadius = UDim.new(0, 2)
	 
	local Frame53 = Instance.new("Frame")
	 
	Frame53.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame53.Parent = Frame52
	 
	Frame53.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame53.BorderSizePixel = 0
	 
	Frame53.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner110.Parent = Frame53
	 
	local TextLabel98 = Instance.new("TextLabel")
	 
	TextLabel98.TextWrapped = true
	 
	TextLabel98.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel98.Parent = Frame52
	 
	TextLabel98.Text = "[Auto Exec: 24h] Build a Ring Farm aktif! Link dicopy ke clipboard."
	 
	TextLabel98.Font = Enum.Font.Gotham
	 
	TextLabel98.BackgroundTransparency = 1
	 
	TextLabel98.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel98.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel98.TextSize = 12
	 
	TextLabel98.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale43 = Instance.new("UIScale")
	 
	UIScale43.Parent = Frame52
	 
	UIScale43.Scale = 0.85
	 
	local tween240 = TweenService:Create(UIScale43, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween240:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale21 = Instance.new("UIScale")
 
UIScale21.Parent = TextButton37
 
TextButton37.MouseEnter:Connect(function(arg53)
	 
	local tween241 = TweenService:Create(TextButton37, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween241:Play()
	 
	local tween242 = TweenService:Create(UIScale21, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween242:Play()
	 
	local tween243 = TweenService:Create(TextLabel64, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween243:Play()
end)
 
TextButton37.MouseLeave:Connect(function(arg54)
	 
	local tween244 = TweenService:Create(TextButton37, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween244:Play()
	 
	local tween245 = TweenService:Create(UIScale21, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween245:Play()
	 
	local tween246 = TweenService:Create(TextLabel64, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween246:Play()
end)
 
TextButton37.MouseButton1Click:Connect(function()
end)
 
TextButton37.BackgroundTransparency = 1
 
UIScale21.Scale = 0.96
 
task.delay(0.56, function(...)
	 
	local tween89 = TweenService:Create(TextButton37, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween89:Play()
	 
	local tween90 = TweenService:Create(UIScale21, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween90:Play()
end)
 
local UICorner59 = Instance.new("UICorner")
 
UICorner59.CornerRadius = UDim.new(0, 10)
 
local UIStroke41 = Instance.new("UIStroke")
 
UIStroke41.Thickness = 1
 
UIStroke41.Transparency = 0.2
 
UIStroke41.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke41.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton39 = Instance.new("TextButton")
 
TextButton39.LayoutOrder = 15
 
TextButton39.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton39.BackgroundTransparency = 0.2
 
TextButton39.AutoButtonColor = false
 
TextButton39.Parent = ScrollingFrame
 
TextButton39.Text = ""
 
TextButton39.BorderSizePixel = 0
 
TextButton39.Size = UDim2.new(1, 0, 0, 58)
 
UICorner59.Parent = TextButton39
 
UIStroke41.Parent = TextButton39
 
local UICorner60 = Instance.new("UICorner")
 
UICorner60.CornerRadius = UDim.new(0, 8)
 
local ImageLabel31 = Instance.new("ImageLabel")
 
ImageLabel31.Image = "rbxassetid://112510549708715"
 
ImageLabel31.BackgroundTransparency = 0.3
 
ImageLabel31.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel31.Parent = TextButton39
 
ImageLabel31.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel31.Size = UDim2.fromOffset(34, 34)
 
UICorner60.Parent = ImageLabel31
 
local TextLabel65 = Instance.new("TextLabel")
 
TextLabel65.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel65.Parent = TextButton39
 
TextLabel65.Text = "Evomon"
 
TextLabel65.Font = Enum.Font.GothamBold
 
TextLabel65.BackgroundTransparency = 1
 
TextLabel65.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel65.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel65.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel65.TextSize = 13
 
TextLabel65.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel66 = Instance.new("TextLabel")
 
TextLabel66.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel66.Parent = TextButton39
 
TextLabel66.Text = "Auto hunt / evolve"
 
TextLabel66.Font = Enum.Font.Gotham
 
TextLabel66.BackgroundTransparency = 1
 
TextLabel66.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel66.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel66.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel66.TextSize = 11
 
TextLabel66.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel67 = Instance.new("TextLabel")
 
TextLabel67.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel67.Parent = TextButton39
 
TextLabel67.Text = ""
 
TextLabel67.AnchorPoint = Vector2.new(1, 0)
 
TextLabel67.Font = Enum.Font.GothamBold
 
TextLabel67.BackgroundTransparency = 1
 
TextLabel67.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel67.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel67.TextSize = 9.5
 
TextLabel67.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel32 = Instance.new("ImageLabel")
 
ImageLabel32.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel32.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel32.BackgroundTransparency = 1
 
ImageLabel32.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel32.Parent = TextButton39
 
ImageLabel32.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel32.Visible = false
 
ImageLabel32.Size = UDim2.fromOffset(14, 14)
 
local TextLabel68 = Instance.new("TextLabel")
 
TextLabel68.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel68.Parent = TextButton39
 
TextLabel68.Text = ">"
 
TextLabel68.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel68.Font = Enum.Font.GothamBold
 
TextLabel68.BackgroundTransparency = 1
 
TextLabel68.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel68.TextSize = 12
 
TextLabel68.Size = UDim2.fromOffset(10, 16)
 
local UICorner61 = Instance.new("UICorner")
 
UICorner61.CornerRadius = UDim.new(0, 6)
 
local UIStroke42 = Instance.new("UIStroke")
 
UIStroke42.Thickness = 1
 
UIStroke42.Transparency = 0.2
 
UIStroke42.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke42.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton40 = Instance.new("TextButton")
 
TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton40.Parent = TextButton39
 
TextButton40.Text = "⚡ Auto Execute: OFF"
 
TextButton40.AutoButtonColor = false
 
TextButton40.AnchorPoint = Vector2.new(1, 0)
 
TextButton40.Font = Enum.Font.Gotham
 
TextButton40.BackgroundTransparency = 0.2
 
TextButton40.Position = UDim2.new(1, -26, 0, 31)
 
TextButton40.TextSize = 8.5
 
TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton40.BorderSizePixel = 0
 
TextButton40.Size = UDim2.fromOffset(116, 20)
 
UICorner61.Parent = TextButton40
 
UIStroke42.Parent = TextButton40
 
local contents16 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents16)
 
TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton40.BackgroundTransparency = 0.2
 
TextButton40.Text = "⚡ Auto Execute: OFF"
 
TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton40.Font = Enum.Font.Gotham
 
TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton40.UIStroke.Transparency = 0.5
 
TextButton40.MouseButton1Down:Connect(function(x21, y21)
end)
 
TextButton40.MouseButton1Click:Connect(function()
	 
	local contents257 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents257)
	 
	local json15 = HttpService:JSONEncode({ durationHours = 24, enabledAt = 1790833324, expiresAt = 1790919724, gameName = "Evomon" })
	 
	writefile("nr_loader_autoexec.json", json15)
	 
	writefile("autoexec/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	writefile("autoexecute/nr_loader.lua", "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local contents258 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents258)
	 
	TextButton12.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton12.BackgroundTransparency = 0.2
	 
	TextButton12.Text = "⚡ Auto Execute: OFF"
	 
	TextButton12.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton12.Font = Enum.Font.Gotham
	 
	TextButton12.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton12.UIStroke.Transparency = 0.5
	 
	local contents259 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents259)
	 
	TextButton14.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton14.BackgroundTransparency = 0.2
	 
	TextButton14.Text = "⚡ Auto Execute: OFF"
	 
	TextButton14.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton14.Font = Enum.Font.Gotham
	 
	TextButton14.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton14.UIStroke.Transparency = 0.5
	 
	local contents260 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents260)
	 
	TextButton16.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton16.BackgroundTransparency = 0.2
	 
	TextButton16.Text = "⚡ Auto Execute: OFF"
	 
	TextButton16.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton16.Font = Enum.Font.Gotham
	 
	TextButton16.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton16.UIStroke.Transparency = 0.5
	 
	local contents261 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents261)
	 
	TextButton18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton18.BackgroundTransparency = 0.2
	 
	TextButton18.Text = "⚡ Auto Execute: OFF"
	 
	TextButton18.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton18.Font = Enum.Font.Gotham
	 
	TextButton18.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton18.UIStroke.Transparency = 0.5
	 
	local contents262 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents262)
	 
	TextButton20.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton20.BackgroundTransparency = 0.2
	 
	TextButton20.Text = "⚡ Auto Execute: OFF"
	 
	TextButton20.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton20.Font = Enum.Font.Gotham
	 
	TextButton20.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton20.UIStroke.Transparency = 0.5
	 
	local contents263 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents263)
	 
	TextButton22.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton22.BackgroundTransparency = 0.2
	 
	TextButton22.Text = "⚡ Auto Execute: OFF"
	 
	TextButton22.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton22.Font = Enum.Font.Gotham
	 
	TextButton22.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton22.UIStroke.Transparency = 0.5
	 
	local contents264 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents264)
	 
	TextButton24.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton24.BackgroundTransparency = 0.2
	 
	TextButton24.Text = "⚡ Auto Execute: OFF"
	 
	TextButton24.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton24.Font = Enum.Font.Gotham
	 
	TextButton24.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton24.UIStroke.Transparency = 0.5
	 
	local contents265 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents265)
	 
	TextButton26.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton26.BackgroundTransparency = 0.2
	 
	TextButton26.Text = "⚡ Auto Execute: OFF"
	 
	TextButton26.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton26.Font = Enum.Font.Gotham
	 
	TextButton26.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton26.UIStroke.Transparency = 0.5
	 
	local contents266 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents266)
	 
	TextButton28.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton28.BackgroundTransparency = 0.2
	 
	TextButton28.Text = "⚡ Auto Execute: OFF"
	 
	TextButton28.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton28.Font = Enum.Font.Gotham
	 
	TextButton28.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton28.UIStroke.Transparency = 0.5
	 
	local contents267 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents267)
	 
	TextButton30.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton30.BackgroundTransparency = 0.2
	 
	TextButton30.Text = "⚡ Auto Execute: OFF"
	 
	TextButton30.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton30.Font = Enum.Font.Gotham
	 
	TextButton30.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton30.UIStroke.Transparency = 0.5
	 
	local contents268 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents268)
	 
	TextButton32.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton32.BackgroundTransparency = 0.2
	 
	TextButton32.Text = "⚡ Auto Execute: OFF"
	 
	TextButton32.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton32.Font = Enum.Font.Gotham
	 
	TextButton32.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton32.UIStroke.Transparency = 0.5
	 
	local contents269 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents269)
	 
	TextButton34.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton34.BackgroundTransparency = 0.2
	 
	TextButton34.Text = "⚡ Auto Execute: OFF"
	 
	TextButton34.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton34.Font = Enum.Font.Gotham
	 
	TextButton34.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton34.UIStroke.Transparency = 0.5
	 
	local contents270 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents270)
	 
	TextButton36.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton36.BackgroundTransparency = 0.2
	 
	TextButton36.Text = "⚡ Auto Execute: OFF"
	 
	TextButton36.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton36.Font = Enum.Font.Gotham
	 
	TextButton36.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton36.UIStroke.Transparency = 0.5
	 
	local contents271 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents271)
	 
	TextButton38.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton38.BackgroundTransparency = 0.2
	 
	TextButton38.Text = "⚡ Auto Execute: OFF"
	 
	TextButton38.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton38.Font = Enum.Font.Gotham
	 
	TextButton38.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton38.UIStroke.Transparency = 0.5
	 
	local contents272 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents272)
	 
	TextButton40.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton40.BackgroundTransparency = 0.2
	 
	TextButton40.Text = "⚡ Auto Execute: OFF"
	 
	TextButton40.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton40.Font = Enum.Font.Gotham
	 
	TextButton40.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton40.UIStroke.Transparency = 0.5
	 
	local contents273 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents273)
	 
	TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton42.BackgroundTransparency = 0.2
	 
	TextButton42.Text = "⚡ Auto Execute: OFF"
	 
	TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton42.Font = Enum.Font.Gotham
	 
	TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
	 
	TextButton42.UIStroke.Transparency = 0.5
	 
	setclipboard("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/JualNasiRendang/loader/refs/heads/main/main.lua\"))()")
	 
	local UICorner111 = Instance.new("UICorner")
	 
	UICorner111.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke66 = Instance.new("UIStroke")
	 
	UIStroke66.Thickness = 1
	 
	UIStroke66.Transparency = 0.2
	 
	UIStroke66.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke66.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame54 = Instance.new("Frame")
	 
	Frame54.BackgroundTransparency = 0.05
	 
	Frame54.Parent = Frame3
	 
	Frame54.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame54.BorderSizePixel = 0
	 
	Frame54.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner111.Parent = Frame54
	 
	UIStroke66.Parent = Frame54
	 
	local UICorner112 = Instance.new("UICorner")
	 
	UICorner112.CornerRadius = UDim.new(0, 2)
	 
	local Frame55 = Instance.new("Frame")
	 
	Frame55.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame55.Parent = Frame54
	 
	Frame55.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
	 
	Frame55.BorderSizePixel = 0
	 
	Frame55.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner112.Parent = Frame55
	 
	local TextLabel99 = Instance.new("TextLabel")
	 
	TextLabel99.TextWrapped = true
	 
	TextLabel99.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel99.Parent = Frame54
	 
	TextLabel99.Text = "[Auto Exec: 24h] Evomon aktif! Link dicopy ke clipboard."
	 
	TextLabel99.Font = Enum.Font.Gotham
	 
	TextLabel99.BackgroundTransparency = 1
	 
	TextLabel99.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel99.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel99.TextSize = 12
	 
	TextLabel99.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale44 = Instance.new("UIScale")
	 
	UIScale44.Parent = Frame54
	 
	UIScale44.Scale = 0.85
	 
	local tween247 = TweenService:Create(UIScale44, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween247:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale22 = Instance.new("UIScale")
 
UIScale22.Parent = TextButton39
 
TextButton39.MouseEnter:Connect(function(arg55)
	 
	local tween248 = TweenService:Create(TextButton39, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween248:Play()
	 
	local tween249 = TweenService:Create(UIScale22, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween249:Play()
	 
	local tween250 = TweenService:Create(TextLabel68, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(160, 95, 245) })
	 
	tween250:Play()
end)
 
TextButton39.MouseLeave:Connect(function(arg56)
	 
	local tween251 = TweenService:Create(TextButton39, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween251:Play()
	 
	local tween252 = TweenService:Create(UIScale22, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween252:Play()
	 
	local tween253 = TweenService:Create(TextLabel68, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween253:Play()
end)
 
TextButton39.MouseButton1Click:Connect(function()
end)
 
TextButton39.BackgroundTransparency = 1
 
UIScale22.Scale = 0.96
 
task.delay(0.6, function(...)
	 
	local tween91 = TweenService:Create(TextButton39, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween91:Play()
	 
	local tween92 = TweenService:Create(UIScale22, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween92:Play()
end)
 
local UICorner62 = Instance.new("UICorner")
 
UICorner62.CornerRadius = UDim.new(0, 10)
 
local UIStroke43 = Instance.new("UIStroke")
 
UIStroke43.Thickness = 1
 
UIStroke43.Transparency = 0.35
 
UIStroke43.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke43.Color = Color3.fromRGB(255, 216, 92)
 
local TextButton41 = Instance.new("TextButton")
 
TextButton41.LayoutOrder = 16
 
TextButton41.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton41.BackgroundTransparency = 0.2
 
TextButton41.AutoButtonColor = false
 
TextButton41.Parent = ScrollingFrame
 
TextButton41.Text = ""
 
TextButton41.BorderSizePixel = 0
 
TextButton41.Size = UDim2.new(1, 0, 0, 58)
 
UICorner62.Parent = TextButton41
 
UIStroke43.Parent = TextButton41
 
local UICorner63 = Instance.new("UICorner")
 
UICorner63.CornerRadius = UDim.new(0, 8)
 
local ImageLabel33 = Instance.new("ImageLabel")
 
ImageLabel33.Image = "rbxassetid://112510549708715"
 
ImageLabel33.BackgroundTransparency = 0.3
 
ImageLabel33.Position = UDim2.new(0, 12, 0.5, -17)
 
ImageLabel33.Parent = TextButton41
 
ImageLabel33.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
 
ImageLabel33.Size = UDim2.fromOffset(34, 34)
 
UICorner63.Parent = ImageLabel33
 
local TextLabel69 = Instance.new("TextLabel")
 
TextLabel69.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextLabel69.Parent = TextButton41
 
TextLabel69.Text = "Evomon Gold V4"
 
TextLabel69.Font = Enum.Font.GothamBold
 
TextLabel69.BackgroundTransparency = 1
 
TextLabel69.Position = UDim2.new(0, 56, 0, 10)
 
TextLabel69.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel69.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel69.TextSize = 13
 
TextLabel69.Size = UDim2.new(1, -205, 0, 16)
 
local TextLabel70 = Instance.new("TextLabel")
 
TextLabel70.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel70.Parent = TextButton41
 
TextLabel70.Text = "Auto hunt / evolve / VIP farm"
 
TextLabel70.Font = Enum.Font.Gotham
 
TextLabel70.BackgroundTransparency = 1
 
TextLabel70.Position = UDim2.new(0, 56, 0, 28)
 
TextLabel70.TextTruncate = Enum.TextTruncate.AtEnd
 
TextLabel70.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel70.TextSize = 11
 
TextLabel70.Size = UDim2.new(1, -205, 0, 14)
 
local TextLabel71 = Instance.new("TextLabel")
 
TextLabel71.TextColor3 = Color3.fromRGB(255, 216, 92)
 
TextLabel71.Parent = TextButton41
 
TextLabel71.Text = "★ PREMIUM ONLY"
 
TextLabel71.AnchorPoint = Vector2.new(1, 0)
 
TextLabel71.Font = Enum.Font.GothamBold
 
TextLabel71.BackgroundTransparency = 1
 
TextLabel71.Position = UDim2.new(1, -26, 0, 10)
 
TextLabel71.TextXAlignment = Enum.TextXAlignment.Right
 
TextLabel71.TextSize = 9.5
 
TextLabel71.Size = UDim2.fromOffset(116, 16)
 
local ImageLabel34 = Instance.new("ImageLabel")
 
ImageLabel34.AnchorPoint = Vector2.new(1, 0.5)
 
ImageLabel34.Image = "rbxasset://textures/loading/robloxTiltRight.png"
 
ImageLabel34.BackgroundTransparency = 1
 
ImageLabel34.Position = UDim2.new(1, -12, 0.5, 0)
 
ImageLabel34.Parent = TextButton41
 
ImageLabel34.ImageColor3 = Color3.fromRGB(160, 95, 245)
 
ImageLabel34.Visible = false
 
ImageLabel34.Size = UDim2.fromOffset(14, 14)
 
local TextLabel72 = Instance.new("TextLabel")
 
TextLabel72.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextLabel72.Parent = TextButton41
 
TextLabel72.Text = ">"
 
TextLabel72.AnchorPoint = Vector2.new(1, 0.5)
 
TextLabel72.Font = Enum.Font.GothamBold
 
TextLabel72.BackgroundTransparency = 1
 
TextLabel72.Position = UDim2.new(1, -12, 0.5, 0)
 
TextLabel72.TextSize = 12
 
TextLabel72.Size = UDim2.fromOffset(10, 16)
 
local UICorner64 = Instance.new("UICorner")
 
UICorner64.CornerRadius = UDim.new(0, 6)
 
local UIStroke44 = Instance.new("UIStroke")
 
UIStroke44.Thickness = 1
 
UIStroke44.Transparency = 0.2
 
UIStroke44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke44.Color = Color3.fromRGB(38, 44, 41)
 
local TextButton42 = Instance.new("TextButton")
 
TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton42.Parent = TextButton41
 
TextButton42.Text = "⚡ Auto Execute: OFF"
 
TextButton42.AutoButtonColor = false
 
TextButton42.AnchorPoint = Vector2.new(1, 0)
 
TextButton42.Font = Enum.Font.Gotham
 
TextButton42.BackgroundTransparency = 0.2
 
TextButton42.Position = UDim2.new(1, -26, 0, 31)
 
TextButton42.TextSize = 8.5
 
TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton42.BorderSizePixel = 0
 
TextButton42.Size = UDim2.fromOffset(116, 20)
 
UICorner64.Parent = TextButton42
 
UIStroke44.Parent = TextButton42
 
local contents17 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents17)
 
TextButton42.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
 
TextButton42.BackgroundTransparency = 0.2
 
TextButton42.Text = "⚡ Auto Execute: OFF"
 
TextButton42.TextColor3 = Color3.fromRGB(120, 128, 124)
 
TextButton42.Font = Enum.Font.Gotham
 
TextButton42.UIStroke.Color = Color3.fromRGB(38, 44, 41)
 
TextButton42.UIStroke.Transparency = 0.5
 
TextButton42.MouseButton1Down:Connect(function(x22, y22)
end)
 
TextButton42.MouseButton1Click:Connect(function()
	 
	local contents274 = readfile("nr_loader_autoexec.json")
	 
	HttpService:JSONDecode(contents274)
	 
	local contents275 = readfile("nr_loader_key.txt")
	 
	local result5 = contents275:split("|")
	 
	result5[3]:lower()
	 
	local UICorner113 = Instance.new("UICorner")
	 
	UICorner113.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke67 = Instance.new("UIStroke")
	 
	UIStroke67.Thickness = 1
	 
	UIStroke67.Transparency = 0.2
	 
	UIStroke67.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke67.Color = Color3.fromRGB(220, 90, 90)
	 
	local Frame56 = Instance.new("Frame")
	 
	Frame56.BackgroundTransparency = 0.05
	 
	Frame56.Parent = Frame3
	 
	Frame56.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame56.BorderSizePixel = 0
	 
	Frame56.Size = UDim2.new(1, 0, 0, 44)
	 
	UICorner113.Parent = Frame56
	 
	UIStroke67.Parent = Frame56
	 
	local UICorner114 = Instance.new("UICorner")
	 
	UICorner114.CornerRadius = UDim.new(0, 2)
	 
	local Frame57 = Instance.new("Frame")
	 
	Frame57.Position = UDim2.new(0, 6, 0.5, -16)
	 
	Frame57.Parent = Frame56
	 
	Frame57.BackgroundColor3 = Color3.fromRGB(220, 90, 90)
	 
	Frame57.BorderSizePixel = 0
	 
	Frame57.Size = UDim2.new(0, 3, 1, -12)
	 
	UICorner114.Parent = Frame57
	 
	local TextLabel100 = Instance.new("TextLabel")
	 
	TextLabel100.TextWrapped = true
	 
	TextLabel100.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel100.Parent = Frame56
	 
	TextLabel100.Text = "Khusus member Premium / Gold / Lifetime!"
	 
	TextLabel100.Font = Enum.Font.Gotham
	 
	TextLabel100.BackgroundTransparency = 1
	 
	TextLabel100.Position = UDim2.new(0, 16, 0, 0)
	 
	TextLabel100.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel100.TextSize = 12
	 
	TextLabel100.Size = UDim2.new(1, -26, 1, 0)
	 
	local UIScale45 = Instance.new("UIScale")
	 
	UIScale45.Parent = Frame56
	 
	UIScale45.Scale = 0.85
	 
	local tween254 = TweenService:Create(UIScale45, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween254:Play()
	 
	task.delay(5, function(...)
	end)
end)
 
task.spawn(function(...)
end, "", "")
 
local UIScale23 = Instance.new("UIScale")
 
UIScale23.Parent = TextButton41
 
TextButton41.MouseEnter:Connect(function(arg57)
	 
	local tween255 = TweenService:Create(TextButton41, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.05 })
	 
	tween255:Play()
	 
	local tween256 = TweenService:Create(UIScale23, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.015 })
	 
	tween256:Play()
	 
	local tween257 = TweenService:Create(TextLabel72, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(255, 216, 92) })
	 
	tween257:Play()
end)
 
TextButton41.MouseLeave:Connect(function(arg58)
	 
	local tween258 = TweenService:Create(TextButton41, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween258:Play()
	 
	local tween259 = TweenService:Create(UIScale23, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween259:Play()
	 
	local tween260 = TweenService:Create(TextLabel72, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
	 
	tween260:Play()
end)
 
TextButton41.MouseButton1Click:Connect(function()
end)
 
TextButton41.BackgroundTransparency = 1
 
UIScale23.Scale = 0.96
 
task.delay(0.64, function(...)
	 
	local tween93 = TweenService:Create(TextButton41, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
	 
	tween93:Play()
	 
	local tween94 = TweenService:Create(UIScale23, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween94:Play()
end)
 
print("[NRL] whats-new: showing 3 item(s)")
 
local contents18 = readfile("nr_loader_autoexec.json")
 
HttpService:JSONDecode(contents18)
 
task.delay(0.35, function(...)
	 
	local TextButton43 = Instance.new("TextButton")
	 
	TextButton43.Parent = Frame2
	 
	TextButton43.Text = ""
	 
	TextButton43.AutoButtonColor = false
	 
	TextButton43.Name = "WhatsNew"
	 
	TextButton43.BackgroundColor3 = Color3.new(0, 0, 0)
	 
	TextButton43.BackgroundTransparency = 1
	 
	TextButton43.ZIndex = 50
	 
	TextButton43.BorderSizePixel = 0
	 
	TextButton43.Size = UDim2.fromScale(1, 1)
	 
	local UICorner67 = Instance.new("UICorner")
	 
	UICorner67.CornerRadius = UDim.new(0, 12)
	 
	local UIStroke46 = Instance.new("UIStroke")
	 
	UIStroke46.Thickness = 1
	 
	UIStroke46.Transparency = 0.25
	 
	UIStroke46.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke46.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame15 = Instance.new("Frame")
	 
	Frame15.Active = true
	 
	Frame15.Parent = TextButton43
	 
	Frame15.AnchorPoint = Vector2.new(0.5, 0.5)
	 
	Frame15.BackgroundTransparency = 0.02
	 
	Frame15.Position = UDim2.fromScale(0.5, 0.5)
	 
	Frame15.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
	 
	Frame15.ZIndex = 51
	 
	Frame15.BorderSizePixel = 0
	 
	Frame15.Size = UDim2.fromOffset(300, 202)
	 
	UICorner67.Parent = Frame15
	 
	UIStroke46.Parent = Frame15
	 
	local UICorner68 = Instance.new("UICorner")
	 
	UICorner68.CornerRadius = UDim.new(0, 8)
	 
	local UIStroke47 = Instance.new("UIStroke")
	 
	UIStroke47.Thickness = 1
	 
	UIStroke47.Transparency = 0.3
	 
	UIStroke47.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke47.Color = Color3.fromRGB(160, 95, 245)
	 
	local Frame16 = Instance.new("Frame")
	 
	Frame16.BackgroundColor3 = Color3.fromRGB(58, 34, 92)
	 
	Frame16.Position = UDim2.fromOffset(14, 14)
	 
	Frame16.Parent = Frame15
	 
	Frame16.ZIndex = 52
	 
	Frame16.BorderSizePixel = 0
	 
	Frame16.Size = UDim2.fromOffset(42, 16)
	 
	UICorner68.Parent = Frame16
	 
	UIStroke47.Parent = Frame16
	 
	local TextLabel74 = Instance.new("TextLabel")
	 
	TextLabel74.ZIndex = 53
	 
	TextLabel74.Font = Enum.Font.GothamBold
	 
	TextLabel74.BackgroundTransparency = 1
	 
	TextLabel74.TextColor3 = Color3.fromRGB(160, 95, 245)
	 
	TextLabel74.Parent = Frame16
	 
	TextLabel74.Text = "NEW"
	 
	TextLabel74.TextSize = 9
	 
	TextLabel74.Size = UDim2.fromScale(1, 1)
	 
	local TextLabel75 = Instance.new("TextLabel")
	 
	TextLabel75.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel75.Parent = Frame15
	 
	TextLabel75.Text = "New Games Added"
	 
	TextLabel75.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel75.Font = Enum.Font.GothamBold
	 
	TextLabel75.BackgroundTransparency = 1
	 
	TextLabel75.Position = UDim2.fromOffset(62, 13)
	 
	TextLabel75.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel75.ZIndex = 52
	 
	TextLabel75.TextSize = 14
	 
	TextLabel75.Size = UDim2.new(1, -100, 0, 18)
	 
	local UICorner69 = Instance.new("UICorner")
	 
	UICorner69.CornerRadius = UDim.new(0, 6)
	 
	local TextButton44 = Instance.new("TextButton")
	 
	TextButton44.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextButton44.Parent = Frame15
	 
	TextButton44.Text = "x"
	 
	TextButton44.AutoButtonColor = false
	 
	TextButton44.AnchorPoint = Vector2.new(1, 0)
	 
	TextButton44.Font = Enum.Font.GothamBold
	 
	TextButton44.BackgroundTransparency = 0.2
	 
	TextButton44.Position = UDim2.new(1, -12, 0, 12)
	 
	TextButton44.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	TextButton44.ZIndex = 52
	 
	TextButton44.TextSize = 12
	 
	TextButton44.Size = UDim2.fromOffset(20, 20)
	 
	UICorner69.Parent = TextButton44
	 
	TextButton44.MouseEnter:Connect(function(arg59)
		 
		local tween264 = TweenService:Create(TextButton44, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(220, 90, 90) })
		 
		tween264:Play()
	end)
	 
	TextButton44.MouseLeave:Connect(function(arg60)
		 
		local tween265 = TweenService:Create(TextButton44, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(120, 128, 124) })
		 
		tween265:Play()
	end)
	 
	local UICorner70 = Instance.new("UICorner")
	 
	UICorner70.CornerRadius = UDim.new(0, 8)
	 
	local Frame17 = Instance.new("Frame")
	 
	Frame17.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	Frame17.BackgroundTransparency = 1
	 
	Frame17.Position = UDim2.fromOffset(14, 46)
	 
	Frame17.Parent = Frame15
	 
	Frame17.ZIndex = 52
	 
	Frame17.BorderSizePixel = 0
	 
	Frame17.Size = UDim2.new(1, -28, 0, 30)
	 
	UICorner70.Parent = Frame17
	 
	local UICorner71 = Instance.new("UICorner")
	 
	UICorner71.CornerRadius = UDim.new(0, 6)
	 
	local ImageLabel35 = Instance.new("ImageLabel")
	 
	ImageLabel35.Image = "rbxthumb://type=GameIcon&id=10708913337&w=150&h=150"
	 
	ImageLabel35.BackgroundTransparency = 0.3
	 
	ImageLabel35.Position = UDim2.new(0, 8, 0.5, -12)
	 
	ImageLabel35.Parent = Frame17
	 
	ImageLabel35.ZIndex = 53
	 
	ImageLabel35.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
	 
	ImageLabel35.Size = UDim2.fromOffset(24, 24)
	 
	UICorner71.Parent = ImageLabel35
	 
	local TextLabel76 = Instance.new("TextLabel")
	 
	TextLabel76.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel76.Parent = Frame17
	 
	TextLabel76.Text = "Anime Dice"
	 
	TextLabel76.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel76.Font = Enum.Font.GothamBold
	 
	TextLabel76.BackgroundTransparency = 1
	 
	TextLabel76.Position = UDim2.new(0, 40, 0, 3)
	 
	TextLabel76.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel76.ZIndex = 53
	 
	TextLabel76.TextSize = 12
	 
	TextLabel76.Size = UDim2.new(1, -50, 0, 13)
	 
	local TextLabel77 = Instance.new("TextLabel")
	 
	TextLabel77.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextLabel77.Parent = Frame17
	 
	TextLabel77.Text = "Auto roll / farm / luck"
	 
	TextLabel77.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel77.Font = Enum.Font.Gotham
	 
	TextLabel77.BackgroundTransparency = 1
	 
	TextLabel77.Position = UDim2.new(0, 40, 0, 16)
	 
	TextLabel77.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel77.ZIndex = 53
	 
	TextLabel77.TextSize = 10
	 
	TextLabel77.Size = UDim2.new(1, -50, 0, 12)
	 
	task.delay(0.05, function(...)
		 
		local tween76 = TweenService:Create(Frame17, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
		 
		tween76:Play()
	end)
	 
	local UICorner72 = Instance.new("UICorner")
	 
	UICorner72.CornerRadius = UDim.new(0, 8)
	 
	local Frame18 = Instance.new("Frame")
	 
	Frame18.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	Frame18.BackgroundTransparency = 1
	 
	Frame18.Position = UDim2.fromOffset(14, 80)
	 
	Frame18.Parent = Frame15
	 
	Frame18.ZIndex = 52
	 
	Frame18.BorderSizePixel = 0
	 
	Frame18.Size = UDim2.new(1, -28, 0, 30)
	 
	UICorner72.Parent = Frame18
	 
	local UICorner73 = Instance.new("UICorner")
	 
	UICorner73.CornerRadius = UDim.new(0, 6)
	 
	local ImageLabel36 = Instance.new("ImageLabel")
	 
	ImageLabel36.Image = "rbxthumb://type=GameIcon&id=10035204815&w=150&h=150"
	 
	ImageLabel36.BackgroundTransparency = 0.3
	 
	ImageLabel36.Position = UDim2.new(0, 8, 0.5, -12)
	 
	ImageLabel36.Parent = Frame18
	 
	ImageLabel36.ZIndex = 53
	 
	ImageLabel36.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
	 
	ImageLabel36.Size = UDim2.fromOffset(24, 24)
	 
	UICorner73.Parent = ImageLabel36
	 
	local TextLabel78 = Instance.new("TextLabel")
	 
	TextLabel78.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel78.Parent = Frame18
	 
	TextLabel78.Text = "Ride A Pet"
	 
	TextLabel78.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel78.Font = Enum.Font.GothamBold
	 
	TextLabel78.BackgroundTransparency = 1
	 
	TextLabel78.Position = UDim2.new(0, 40, 0, 3)
	 
	TextLabel78.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel78.ZIndex = 53
	 
	TextLabel78.TextSize = 12
	 
	TextLabel78.Size = UDim2.new(1, -50, 0, 13)
	 
	local TextLabel79 = Instance.new("TextLabel")
	 
	TextLabel79.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextLabel79.Parent = Frame18
	 
	TextLabel79.Text = "Auto farm / egg / ride"
	 
	TextLabel79.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel79.Font = Enum.Font.Gotham
	 
	TextLabel79.BackgroundTransparency = 1
	 
	TextLabel79.Position = UDim2.new(0, 40, 0, 16)
	 
	TextLabel79.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel79.ZIndex = 53
	 
	TextLabel79.TextSize = 10
	 
	TextLabel79.Size = UDim2.new(1, -50, 0, 12)
	 
	task.delay(0.1, function(...)
		 
		local tween77 = TweenService:Create(Frame18, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
		 
		tween77:Play()
	end)
	 
	local UICorner74 = Instance.new("UICorner")
	 
	UICorner74.CornerRadius = UDim.new(0, 8)
	 
	local Frame19 = Instance.new("Frame")
	 
	Frame19.BackgroundColor3 = Color3.fromRGB(24, 28, 26)
	 
	Frame19.BackgroundTransparency = 1
	 
	Frame19.Position = UDim2.fromOffset(14, 114)
	 
	Frame19.Parent = Frame15
	 
	Frame19.ZIndex = 52
	 
	Frame19.BorderSizePixel = 0
	 
	Frame19.Size = UDim2.new(1, -28, 0, 30)
	 
	UICorner74.Parent = Frame19
	 
	local UICorner75 = Instance.new("UICorner")
	 
	UICorner75.CornerRadius = UDim.new(0, 6)
	 
	local ImageLabel37 = Instance.new("ImageLabel")
	 
	ImageLabel37.Image = "rbxassetid://94197048748373"
	 
	ImageLabel37.BackgroundTransparency = 0.3
	 
	ImageLabel37.Position = UDim2.new(0, 8, 0.5, -12)
	 
	ImageLabel37.Parent = Frame19
	 
	ImageLabel37.ZIndex = 53
	 
	ImageLabel37.BackgroundColor3 = Color3.fromRGB(11, 13, 12)
	 
	ImageLabel37.Size = UDim2.fromOffset(24, 24)
	 
	UICorner75.Parent = ImageLabel37
	 
	local TextLabel80 = Instance.new("TextLabel")
	 
	TextLabel80.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextLabel80.Parent = Frame19
	 
	TextLabel80.Text = "Grow a Chicken Fighter"
	 
	TextLabel80.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel80.Font = Enum.Font.GothamBold
	 
	TextLabel80.BackgroundTransparency = 1
	 
	TextLabel80.Position = UDim2.new(0, 40, 0, 3)
	 
	TextLabel80.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel80.ZIndex = 53
	 
	TextLabel80.TextSize = 12
	 
	TextLabel80.Size = UDim2.new(1, -50, 0, 13)
	 
	local TextLabel81 = Instance.new("TextLabel")
	 
	TextLabel81.TextColor3 = Color3.fromRGB(120, 128, 124)
	 
	TextLabel81.Parent = Frame19
	 
	TextLabel81.Text = "Auto farm / fight"
	 
	TextLabel81.TextTruncate = Enum.TextTruncate.AtEnd
	 
	TextLabel81.Font = Enum.Font.Gotham
	 
	TextLabel81.BackgroundTransparency = 1
	 
	TextLabel81.Position = UDim2.new(0, 40, 0, 16)
	 
	TextLabel81.TextXAlignment = Enum.TextXAlignment.Left
	 
	TextLabel81.ZIndex = 53
	 
	TextLabel81.TextSize = 10
	 
	TextLabel81.Size = UDim2.new(1, -50, 0, 12)
	 
	task.delay(0.15000000000000002, function(...)
		 
		local tween78 = TweenService:Create(Frame19, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 })
		 
		tween78:Play()
	end)
	 
	local UICorner76 = Instance.new("UICorner")
	 
	UICorner76.CornerRadius = UDim.new(0, 9)
	 
	local UIStroke48 = Instance.new("UIStroke")
	 
	UIStroke48.Thickness = 1
	 
	UIStroke48.Transparency = 0.2
	 
	UIStroke48.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	 
	UIStroke48.Color = Color3.fromRGB(160, 95, 245)
	 
	local TextButton45 = Instance.new("TextButton")
	 
	TextButton45.TextColor3 = Color3.fromRGB(228, 232, 229)
	 
	TextButton45.Parent = Frame15
	 
	TextButton45.Text = "GOT IT"
	 
	TextButton45.BackgroundColor3 = Color3.fromRGB(58, 34, 92)
	 
	TextButton45.AutoButtonColor = false
	 
	TextButton45.AnchorPoint = Vector2.new(0.5, 1)
	 
	TextButton45.Font = Enum.Font.GothamBold
	 
	TextButton45.BackgroundTransparency = 0.1
	 
	TextButton45.Position = UDim2.new(0.5, 0, 1, -14)
	 
	TextButton45.TextSize = 12
	 
	TextButton45.ZIndex = 52
	 
	TextButton45.BorderSizePixel = 0
	 
	TextButton45.Size = UDim2.new(1, -28, 0, 32)
	 
	UICorner76.Parent = TextButton45
	 
	UIStroke48.Parent = TextButton45
	 
	local UIScale25 = Instance.new("UIScale")
	 
	UIScale25.Parent = TextButton45
	 
	TextButton45.MouseEnter:Connect(function(arg61)
		 
		local tween266 = TweenService:Create(UIScale25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
		 
		tween266:Play()
		 
		local tween267 = TweenService:Create(TextButton45, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
		 
		tween267:Play()
	end)
	 
	TextButton45.MouseLeave:Connect(function(arg62)
		 
		local tween268 = TweenService:Create(UIScale25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 })
		 
		tween268:Play()
		 
		local tween269 = TweenService:Create(TextButton45, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
		 
		tween269:Play()
	end)
	 
	TextButton45.MouseButton1Down:Connect(function(x23, y23)
		 
		local tween270 = TweenService:Create(UIScale25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.97 })
		 
		tween270:Play()
	end)
	 
	TextButton45.MouseButton1Up:Connect(function(arg63)
		 
		local tween271 = TweenService:Create(UIScale25, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.03 })
		 
		tween271:Play()
	end)
	 
	local UIScale26 = Instance.new("UIScale")
	 
	UIScale26.Parent = Frame15
	 
	UIScale26.Scale = 0.9
	 
	Frame15.BackgroundTransparency = 1
	 
	Frame15.UIStroke.Transparency = 1
	 
	local tween72 = TweenService:Create(TextButton43, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.45 })
	 
	tween72:Play()
	 
	local tween73 = TweenService:Create(UIScale26, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
	 
	tween73:Play()
	 
	local tween74 = TweenService:Create(Frame15, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.02 })
	 
	tween74:Play()
	 
	local tween75 = TweenService:Create(Frame15.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.25 })
	 
	tween75:Play()
	 
	TextButton45.MouseButton1Click:Connect(function()
		 
		local tween272 = TweenService:Create(TextButton43, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
		 
		tween272:Play()
		 
		local tween273 = TweenService:Create(UIScale26, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.92 })
		 
		tween273:Play()
		 
		local tween274 = TweenService:Create(Frame15, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
		 
		tween274:Play()
		 
		local tween275 = TweenService:Create(Frame15.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
		 
		tween275:Play()
		 
		Frame15:GetDescendants()
		 
		task.delay(0.34, function(...)
		end)
	end)
	 
	TextButton44.MouseButton1Click:Connect(function()
	end)
end)
 
TextButton2.MouseButton1Click:Connect(function()
	 
	task.spawn(function(...)
		 
		local tween261 = TweenService:Create(Frame2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
		 
		tween261:Play()
		 
		local tween262 = TweenService:Create(Frame2.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
		 
		tween262:Play()
		 
		local tween263 = TweenService:Create(UIScale, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.30600000000000005 })
		 
		tween263:Play()
		 
		task.wait(0.32)
		 
		ScreenGui2:Destroy()
	end)
end)
 
UserInputService.InputBegan:Connect(function(input4, gameProcessed4)
end)
 
local UICorner65 = Instance.new("UICorner")
 
UICorner65.CornerRadius = UDim.new(0, 8)
 
local UIStroke45 = Instance.new("UIStroke")
 
UIStroke45.Thickness = 1
 
UIStroke45.Transparency = 0.2
 
UIStroke45.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke45.Color = Color3.fromRGB(160, 95, 245)
 
local Frame13 = Instance.new("Frame")
 
Frame13.BackgroundTransparency = 0.05
 
Frame13.Parent = Frame3
 
Frame13.BackgroundColor3 = Color3.fromRGB(14, 16, 15)
 
Frame13.BorderSizePixel = 0
 
Frame13.Size = UDim2.new(1, 0, 0, 44)
 
UICorner65.Parent = Frame13
 
UIStroke45.Parent = Frame13
 
local UICorner66 = Instance.new("UICorner")
 
UICorner66.CornerRadius = UDim.new(0, 2)
 
local Frame14 = Instance.new("Frame")
 
Frame14.Position = UDim2.new(0, 6, 0.5, -16)
 
Frame14.Parent = Frame13
 
Frame14.BackgroundColor3 = Color3.fromRGB(160, 95, 245)
 
Frame14.BorderSizePixel = 0
 
Frame14.Size = UDim2.new(0, 3, 1, -12)
 
UICorner66.Parent = Frame14
 
local TextLabel73 = Instance.new("TextLabel")
 
TextLabel73.TextWrapped = true
 
TextLabel73.TextColor3 = Color3.fromRGB(228, 232, 229)
 
TextLabel73.Parent = Frame13
 
TextLabel73.Text = "Nasi Rendang loader ready. Pick a game."
 
TextLabel73.Font = Enum.Font.Gotham
 
TextLabel73.BackgroundTransparency = 1
 
TextLabel73.Position = UDim2.new(0, 16, 0, 0)
 
TextLabel73.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel73.TextSize = 12
 
TextLabel73.Size = UDim2.new(1, -26, 1, 0)
 
local UIScale24 = Instance.new("UIScale")
 
UIScale24.Parent = Frame13
 
UIScale24.Scale = 0.85
 
local tween55 = TweenService:Create(UIScale24, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
 
tween55:Play()
 
task.delay(5, function(...)
	 
	local tween95 = TweenService:Create(Frame13, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
	 
	tween95:Play()
	 
	local tween96 = TweenService:Create(Frame13.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
	 
	tween96:Play()
	 
	local tween97 = TweenService:Create(TextLabel73, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 1 })
	 
	tween97:Play()
	 
	task.wait(0.32)
	 
	Frame13:Destroy()
end)
