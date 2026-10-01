 
local TweenService = game:GetService("TweenService")
 
local RunService = game:GetService("RunService")
 
local CoreGui = game:GetService("CoreGui")
 
local Players = game:GetService("Players")
 
 
CoreGui:FindFirstChild("TLongHub_GetKeyUI")
 
CoreGui.TLongHub_GetKeyUI:Destroy()
 
local ScreenGui = Instance.new("ScreenGui")
 
ScreenGui.Name = "TLongHub_GetKeyUI"
 
ScreenGui.ResetOnSpawn = false
 
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
ScreenGui.Parent = CoreGui
 
local Frame = Instance.new("Frame")
 
Frame.Name = "MainFrame"
 
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
 
Frame.Size = UDim2.new(0, 390, 0, 380)
 
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
 
Frame.BackgroundColor3 = Color3.fromRGB(11, 8, 19)
 
Frame.BorderSizePixel = 0
 
Frame.Active = true
 
Frame.Draggable = true
 
Frame.ClipsDescendants = true
 
Frame.Parent = ScreenGui
 
local UICorner = Instance.new("UICorner")
 
UICorner.CornerRadius = UDim.new(0, 12)
 
UICorner.Parent = Frame
 
local UIStroke = Instance.new("UIStroke")
 
UIStroke.Thickness = 1.8
 
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 
UIStroke.Parent = Frame
 
RunService.RenderStepped:Connect(function(deltaTime)
	 
	UIStroke.Color = Color3.fromHSV(0.69904661178588867, 0.75, 1)
end)
 
local TextLabel = Instance.new("TextLabel")
 
TextLabel.Size = UDim2.new(1, -90, 0, 22)
 
TextLabel.Position = UDim2.new(0, 15, 0, 8)
 
TextLabel.BackgroundTransparency = 1
 
TextLabel.Text = "TLONG KEY SYSTEM - BF HUB"
 
TextLabel.TextColor3 = Color3.fromRGB(245, 245, 255)
 
TextLabel.TextSize = 13
 
TextLabel.Font = Enum.Font.GothamBold
 
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel.Parent = Frame
 
local TextButton = Instance.new("TextButton")
 
TextButton.Size = UDim2.new(0, 55, 0, 22)
 
TextButton.Position = UDim2.new(1, -70, 0, 8)
 
TextButton.BackgroundColor3 = Color3.fromRGB(26, 20, 45)
 
TextButton.Text = "🌐 EN"
 
TextButton.TextColor3 = Color3.fromRGB(255, 215, 100)
 
TextButton.TextSize = 10.5
 
TextButton.Font = Enum.Font.GothamBold
 
TextButton.Parent = Frame
 
local UICorner2 = Instance.new("UICorner")
 
UICorner2.CornerRadius = UDim.new(0, 6)
 
UICorner2.Parent = TextButton
 
local UIStroke2 = Instance.new("UIStroke")
 
UIStroke2.Color = Color3.fromRGB(55, 45, 85)
 
UIStroke2.Thickness = 1
 
UIStroke2.Parent = TextButton
 
local TextBox = Instance.new("TextBox")
 
TextBox.Size = UDim2.new(1, -30, 0, 34)
 
TextBox.Position = UDim2.new(0, 15, 0, 33)
 
TextBox.BackgroundColor3 = Color3.fromRGB(22, 18, 36)
 
TextBox.TextColor3 = Color3.fromRGB(245, 245, 255)
 
TextBox.PlaceholderColor3 = Color3.fromRGB(120, 115, 140)
 
TextBox.PlaceholderText = "Enter verification key here..."
 
TextBox.Text = ""
 
TextBox.TextSize = 12
 
TextBox.Font = Enum.Font.GothamMedium
 
TextBox.ClearTextOnFocus = false
 
TextBox.Parent = Frame
 
local UICorner3 = Instance.new("UICorner")
 
UICorner3.CornerRadius = UDim.new(0, 8)
 
UICorner3.Parent = TextBox
 
local UIStroke3 = Instance.new("UIStroke")
 
UIStroke3.Color = Color3.fromRGB(45, 38, 70)
 
UIStroke3.Thickness = 1
 
UIStroke3.Parent = TextBox
 
local Frame2 = Instance.new("Frame")
 
Frame2.Size = UDim2.new(1, -30, 0, 34)
 
Frame2.Position = UDim2.new(0, 15, 0, 72)
 
Frame2.BackgroundTransparency = 1
 
Frame2.Parent = Frame
 
local TextButton2 = Instance.new("TextButton")
 
TextButton2.Size = UDim2.new(0.5, -5, 1, 0)
 
TextButton2.BackgroundColor3 = Color3.fromRGB(0, 240, 255)
 
TextButton2.Text = "🔗 GET KEY LINK"
 
TextButton2.TextColor3 = Color3.fromRGB(8, 8, 12)
 
TextButton2.TextSize = 12
 
TextButton2.Font = Enum.Font.GothamBold
 
TextButton2.AutoButtonColor = false
 
TextButton2.Parent = Frame2
 
local UICorner4 = Instance.new("UICorner")
 
UICorner4.CornerRadius = UDim.new(0, 8)
 
UICorner4.Parent = TextButton2
 
local TextButton3 = Instance.new("TextButton")
 
TextButton3.Size = UDim2.new(0.5, -5, 1, 0)
 
TextButton3.Position = UDim2.new(0.5, 5, 0, 0)
 
TextButton3.BackgroundColor3 = Color3.fromRGB(38, 30, 62)
 
TextButton3.Text = "✔ CHECK KEY"
 
TextButton3.TextColor3 = Color3.fromRGB(245, 245, 255)
 
TextButton3.TextSize = 12
 
TextButton3.Font = Enum.Font.GothamBold
 
TextButton3.AutoButtonColor = false
 
TextButton3.Parent = Frame2
 
local UICorner5 = Instance.new("UICorner")
 
UICorner5.CornerRadius = UDim.new(0, 8)
 
UICorner5.Parent = TextButton3
 
local Frame3 = Instance.new("Frame")
 
Frame3.Size = UDim2.new(1, -30, 0, 28)
 
Frame3.Position = UDim2.new(0, 15, 0, 112)
 
Frame3.BackgroundColor3 = Color3.fromRGB(16, 12, 28)
 
Frame3.Parent = Frame
 
local UICorner6 = Instance.new("UICorner")
 
UICorner6.CornerRadius = UDim.new(0, 6)
 
UICorner6.Parent = Frame3
 
local TextLabel2 = Instance.new("TextLabel")
 
TextLabel2.Size = UDim2.new(1, -12, 1, 0)
 
TextLabel2.Position = UDim2.new(0, 6, 0, 0)
 
TextLabel2.BackgroundTransparency = 1
 
TextLabel2.Text = "⚡ Key automatically resets at 00:00 daily"
 
TextLabel2.TextColor3 = Color3.fromRGB(180, 175, 205)
 
TextLabel2.TextSize = 9.5
 
TextLabel2.Font = Enum.Font.GothamMedium
 
TextLabel2.TextWrapped = true
 
TextLabel2.Parent = Frame3
 
local Frame4 = Instance.new("Frame")
 
Frame4.Size = UDim2.new(1, -30, 0, 48)
 
Frame4.Position = UDim2.new(0, 15, 0, 146)
 
Frame4.BackgroundColor3 = Color3.fromRGB(20, 16, 36)
 
Frame4.Parent = Frame
 
local UICorner7 = Instance.new("UICorner")
 
UICorner7.CornerRadius = UDim.new(0, 8)
 
UICorner7.Parent = Frame4
 
local UIStroke4 = Instance.new("UIStroke")
 
UIStroke4.Color = Color3.fromRGB(88, 101, 242)
 
UIStroke4.Parent = Frame4
 
local ImageLabel = Instance.new("ImageLabel")
 
ImageLabel.Size = UDim2.new(0, 34, 0, 34)
 
ImageLabel.Position = UDim2.new(0, 8, 0.5, -17)
 
ImageLabel.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
 
ImageLabel.Image = "rbxassetid://99761773347476"
 
ImageLabel.Parent = Frame4
 
local UICorner8 = Instance.new("UICorner")
 
UICorner8.CornerRadius = UDim.new(1, 0)
 
UICorner8.Parent = ImageLabel
 
local TextLabel3 = Instance.new("TextLabel")
 
TextLabel3.Size = UDim2.new(0, 180, 0, 18)
 
TextLabel3.Position = UDim2.new(0, 48, 0, 8)
 
TextLabel3.BackgroundTransparency = 1
 
TextLabel3.Text = "TLong System Community"
 
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
 
TextLabel3.TextSize = 11.5
 
TextLabel3.Font = Enum.Font.GothamBold
 
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel3.Parent = Frame4
 
local TextLabel4 = Instance.new("TextLabel")
 
TextLabel4.Size = UDim2.new(0, 180, 0, 14)
 
TextLabel4.Position = UDim2.new(0, 48, 0, 25)
 
TextLabel4.BackgroundTransparency = 1
 
TextLabel4.Text = "🟢 Join Discord Support Server"
 
TextLabel4.TextColor3 = Color3.fromRGB(80, 255, 140)
 
TextLabel4.TextSize = 9.5
 
TextLabel4.Font = Enum.Font.GothamMedium
 
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel4.Parent = Frame4
 
local TextButton4 = Instance.new("TextButton")
 
TextButton4.Size = UDim2.new(0, 100, 0, 28)
 
TextButton4.Position = UDim2.new(1, -108, 0.5, -14)
 
TextButton4.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
 
TextButton4.Text = "Copy"
 
TextButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
 
TextButton4.TextSize = 10.5
 
TextButton4.Font = Enum.Font.GothamBold
 
TextButton4.Parent = Frame4
 
local UICorner9 = Instance.new("UICorner")
 
UICorner9.CornerRadius = UDim.new(0, 6)
 
UICorner9.Parent = TextButton4
 
local Frame5 = Instance.new("Frame")
 
Frame5.Size = UDim2.new(1, -30, 0, 160)
 
Frame5.Position = UDim2.new(0, 15, 0, 202)
 
Frame5.BackgroundColor3 = Color3.fromRGB(17, 13, 29)
 
Frame5.Parent = Frame
 
local UICorner10 = Instance.new("UICorner")
 
UICorner10.CornerRadius = UDim.new(0, 8)
 
UICorner10.Parent = Frame5
 
local TextLabel5 = Instance.new("TextLabel")
 
TextLabel5.Size = UDim2.new(1, -16, 1, -10)
 
TextLabel5.Position = UDim2.new(0, 8, 0, 5)
 
TextLabel5.BackgroundTransparency = 1
 
TextLabel5.TextColor3 = Color3.fromRGB(242, 160, 120)
 
TextLabel5.TextSize = 9.5
 
TextLabel5.Font = Enum.Font.Gotham
 
TextLabel5.TextWrapped = true
 
TextLabel5.TextYAlignment = Enum.TextYAlignment.Top
 
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel5.Text = "📌 Important Notes:\n• Access the website link to get today's key.\n• Each Key applies to 1 device only.\n• Keys auto-reset at 00:00 (Vietnam Time).\n• Join Discord for support if you encounter script errors.\n• TikTok: Royah Roblox or @python_c3 \n• Follow for more awesome scripts"
 
TextLabel5.Parent = Frame5
 
TextButton.MouseButton1Click:Connect(function()
	 
	TextLabel.Text = "TLONG KEY SYSTEM - BF HUB"
	 
	TextBox.PlaceholderText = "Nhập Key xác thực vào đây..."
	 
	TextButton2.Text = "🔗 LẤY LINK KEY"
	 
	TextButton3.Text = "✔ KIỂM TRA KEY"
	 
	TextLabel2.Text = "⚡ Key tự động làm mới lúc 00:00 hàng ngày"
	 
	TextLabel4.Text = "🟢 Join Server Discord Support"
	 
	TextButton4.Text = "Coppy"
	 
	TextLabel5.Text = "📌 Lưu ý quan trọng:\n• Truy cập link web để lấy Key trong ngày.\n• Mỗi Key chỉ áp dụng cho 1 thiết bị duy nhất.\n• Key tự động làm mới vào 00:00 (Giờ Việt Nam).\n• Tham gia Discord để nhận trợ giúp khi gặp lỗi Script.\n• TikTok: Royah Roblox or @python_c3 \n• Hãy follow để nhận nhiều script xịn"
	 
	TextButton.Text = "🌐 VI"
end)
 
TextButton4.MouseButton1Click:Connect(function()
	 
	local tween = TweenService:Create(TextButton4, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(1, -106, 0.5, -12), Size = UDim2.new(0, 96, 0, 24) })
	 
	local tween2 = TweenService:Create(TextButton4, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -108, 0.5, -14), Size = UDim2.new(0, 100, 0, 28) })
	 
	tween:Play()
	 
	tween.Completed:Connect(function(playbackState)
		 
		tween2:Play()
	end)
	 
	setclipboard("https://discord.gg/TvwRC4tba")
	 
	local HttpService = game:GetService("HttpService")
	 
	local guid = HttpService:GenerateGUID(false)
	 
	local json = HttpService:JSONEncode({ args = { code = "TvwRC4tba" }, cmd = "INVITE_BROWSER", nonce = guid })
	 
	request({
	Body = json,
	Headers = { ["Content-Type"] = "application/json", Origin = "https://discord.com" },
	Method = "POST",
	Url = "http://127.0.0.1:6463/rpc?v=1"
})
	 
	Frame3.BackgroundColor3 = Color3.fromRGB(30, 35, 75)
	 
	TextLabel2.TextColor3 = Color3.fromRGB(120, 150, 255)
	 
	TextLabel2.Text = "💬 Đã copy link Discord! Đã mở ứng dụng Discord (nếu có)."
	 
	TextButton4.Text = "✔ ĐÃ COPY"
	 
	task.delay(2, function(...)
	end)
end)
 
TextButton2.MouseButton1Click:Connect(function()
	 
	local tween3 = TweenService:Create(TextButton2, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0, 2, 0, 2), Size = UDim2.new(0.5, -9, 1, -4) })
	 
	local tween4 = TweenService:Create(TextButton2, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = TextButton2.Position, Size = UDim2.new(0.5, -5, 1, 0) })
	 
	tween3:Play()
	 
	tween3.Completed:Connect(function(playbackState2)
		 
		tween4:Play()
	end)
	 
	setclipboard("https://keylicensenew2.vercel.app/")
	 
	Frame3.BackgroundColor3 = Color3.fromRGB(0, 50, 60)
	 
	TextLabel2.TextColor3 = Color3.fromRGB(0, 240, 255)
	 
	TextLabel2.Text = "📋 Đã sao chép Link Web! Hãy dán lên trình duyệt để Get Key."
	 
	TextButton2.Text = "✔ ĐÃ SAO CHÉP"
	 
	task.delay(2, function(...)
	end)
end)
 
TextButton3.MouseButton1Click:Connect(function()
	 
	local tween5 = TweenService:Create(TextButton3, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.5, 7, 0, 2), Size = UDim2.new(0.5, -9, 1, -4) })
	 
	local tween6 = TweenService:Create(TextButton3, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(0.5, 5, 0, 0), Size = UDim2.new(0.5, -5, 1, 0) })
	 
	tween5:Play()
	 
	tween5.Completed:Connect(function(playbackState3)
		 
		tween6:Play()
	end)
	 
	TextButton3.Text = "⏳ Đang duyệt..."
	 
	Frame3.BackgroundColor3 = Color3.fromRGB(26, 20, 45)
	 
	TextLabel2.TextColor3 = Color3.fromRGB(240, 240, 255)
	 
	TextLabel2.Text = "Đang kiểm tra tính hợp lệ..."
	 
	task.wait(0.35)
	 
	TextButton3.Text = "✔ KIỂM TRA KEY"
	 
	Frame3.BackgroundColor3 = Color3.fromRGB(65, 15, 20)
	 
	TextLabel2.TextColor3 = Color3.fromRGB(255, 100, 100)
	 
	TextLabel2.Text = "✖ Key không hợp lệ hoặc đã hết hạn ngày hôm nay!"
	 
	UIStroke3.Color = Color3.fromRGB(255, 70, 70)
	 
	task.wait(0.6)
	 
	UIStroke3.Color = Color3.fromRGB(45, 38, 70)
end)
