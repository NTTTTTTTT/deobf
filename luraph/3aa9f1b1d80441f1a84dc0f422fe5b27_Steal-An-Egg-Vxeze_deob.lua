local TweenService
TweenService = game:GetService("TweenService")
UserInputService = game:GetService("UserInputService")
local str, n, fn, fn2, fn3, fn4, fn5, fn6, screenGui, frame
local imageLabel, imageLabel2, textLabel, uiStroke, textLabel2, textBox, uiStroke2, imageLabel3, uiStroke3, textButton
local imageLabel4, uiCorner, uiStroke4, textButton2, imageLabel5, uiCorner2, uiStroke5, textButton3, imageLabel6, uiCorner3
local uiStroke6, textButton4

do
	local HttpService = game:GetService("HttpService")
	Players = game:GetService("Players")

	local function fn7()
		if type(gethui) == "function" then
			local ok, result = pcall(gethui)
			if ok and result then
				return result
			end
		end

		local ok, result = pcall(function()
			return game:GetService("CoreGui")
		end)

		if ok and result then
			return result
		end
		local localPlayer = Players.LocalPlayer
		return localPlayer and localPlayer:FindFirstChildOfClass("PlayerGui") or nil
	end

	local v = fn7()

	if v then
		local eggStealStartupNotice = v:FindFirstChild("EggStealStartupNotice")

		if eggStealStartupNotice then
			eggStealStartupNotice:Destroy()
		end

		local screenGui2 = Instance.new("ScreenGui")
		screenGui2.Name = "EggStealStartupNotice"
		screenGui2.ResetOnSpawn = false
		screenGui2.IgnoreGuiInset = true
		screenGui2.DisplayOrder = 100000
		screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		local textButton5 = Instance.new("TextButton")
		textButton5.Size = UDim2.fromScale(1, 1)
		textButton5.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton5.BackgroundTransparency = 0.35
		textButton5.Text = ""
		textButton5.AutoButtonColor = false
		textButton5.Parent = screenGui2
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		frame2.Position = UDim2.fromScale(0.5, 0.5)
		frame2.Size = UDim2.new(0.9, 0, 0.85, 0)
		frame2.BackgroundColor3 = Color3.fromRGB(25, 27, 34)
		frame2.BorderSizePixel = 0
		frame2.Parent = textButton5
		local uiSizeConstraint = Instance.new("UISizeConstraint")
		uiSizeConstraint.MaxSize = Vector2.new(560, 340)
		uiSizeConstraint.Parent = frame2
		local uiCorner4 = Instance.new("UICorner")
		uiCorner4.CornerRadius = UDim.new(0, 14)
		uiCorner4.Parent = frame2
		local textLabel3 = Instance.new("TextLabel")
		textLabel3.BackgroundTransparency = 1
		textLabel3.Position = UDim2.fromOffset(20, 12)
		textLabel3.Size = UDim2.new(1, -40, 0, 36)
		textLabel3.Font = Enum.Font.GothamBold
		textLabel3.TextSize = 21
		textLabel3.TextColor3 = Color3.fromRGB(255, 203, 96)
		textLabel3.Text = "THÔNG BÁO AUTO STEAL EGG"
		textLabel3.TextScaled = true
		textLabel3.Parent = frame2
		local uiTextSizeConstraint = Instance.new("UITextSizeConstraint")
		uiTextSizeConstraint.MaxTextSize = 21
		uiTextSizeConstraint.Parent = textLabel3
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(20, 58)
		scrollingFrame.Size = UDim2.new(1, -40, 1, -130)
		scrollingFrame.CanvasSize = UDim2.new()
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.ScrollBarThickness = 4
		scrollingFrame.Parent = frame2
		local textLabel4 = Instance.new("TextLabel")
		textLabel4.BackgroundTransparency = 1
		textLabel4.Size = UDim2.new(1, -10, 0, 0)
		textLabel4.AutomaticSize = Enum.AutomaticSize.Y
		textLabel4.Font = Enum.Font.Gotham
		textLabel4.TextSize = 17
		textLabel4.TextColor3 = Color3.fromRGB(237, 238, 244)
		textLabel4.TextWrapped = true
		textLabel4.TextXAlignment = Enum.TextXAlignment.Left
		textLabel4.TextYAlignment = Enum.TextYAlignment.Top

		textLabel4.Text = [[Tất cả script đang lỗi auto steal egg roài, đang tìm cách fix nà, ae vào kênh discord theo dõi update script nhé

Mọi người có thể tạm dùng Anti-hit / freeze boss để tự đi lấy egg không bị boss đuổi theo

Script cũng đã update tự động làm mọi thứ từ event mới như đánh boss từ event mới]]

		textLabel4.Parent = scrollingFrame

		local function createTextButton(text, arg, arg2, backgroundColor3)
			local textButton6 = Instance.new("TextButton")
			textButton6.Position = UDim2.new(arg, 0, 1, -58)
			textButton6.Size = UDim2.new(arg2, 0, 0, 42)
			textButton6.BackgroundColor3 = backgroundColor3
			textButton6.Font = Enum.Font.GothamBold
			textButton6.TextSize = 15
			textButton6.TextColor3 = Color3.new(1, 1, 1)
			textButton6.Text = text
			textButton6.Parent = frame2
			local uiCorner5 = Instance.new("UICorner")
			uiCorner5.CornerRadius = UDim.new(0, 8)
			uiCorner5.Parent = textButton6
			return textButton6
		end

		local copyLinkDiscord = createTextButton("Copy link Discord", 0.04, 0.57, Color3.fromRGB(88, 101, 242))
		local v2 = createTextButton("Đóng", 0.64, 0.32, Color3.fromRGB(65, 68, 80))

		copyLinkDiscord.Activated:Connect(function()
			local v3 = setclipboard or toclipboard
			local ok = type(v3) == "function" and pcall(v3, "https://discord.gg/wfCDm6DN7")
			copyLinkDiscord.Text = ok and "Đã copy!" or "Không copy được"

			if not ok then
				textLabel4.Text = "Link Discord: https://discord.gg/wfCDm6DN7\n\n" .. textLabel4.Text
				scrollingFrame.CanvasPosition = Vector2.zero
			end
		end)

		v2.Activated:Connect(function()
			screenGui2:Destroy()
		end)

		screenGui2.Parent = v
	end

	CoreGui = game:GetService("CoreGui")

	for _, v2 in ipairs({ "KeySystemGui", "NotificationHolder" }) do
		for _, child in ipairs(CoreGui:GetChildren()) do
			if child.Name == v2 then
				pcall(function()
					child:Destroy()
				end)
			end
		end
	end

	if type(isfolder) == "function" and type(makefolder) == "function" then
		pcall(function()
			if not isfolder("VxezeHub") then
				makefolder("VxezeHub")
			end
		end)
	end

	local str2 = "key_f13b1dcb65f80955"
	local str3 = "https://vxezestudio.online/api/key/verify"
	local str4 = "VxezeHub/key-" .. str2 .. ".txt"
	local v2 = HttpService:GenerateGUID(false)
	local flag = false

	saveKeyToFile = function(arg)
		if type(writefile) == "function" then
			pcall(writefile, str4, arg)
		end
	end

	loadKeyFromFile = function()
		if type(isfile) ~= "function" or type(readfile) ~= "function" then
			return nil
		end

		local ok, result = pcall(function()
			return isfile(str4) and readfile(str4) or nil
		end)

		if ok and result and result ~= "" then
			return result
		end
		return nil
	end

	deleteKeyFile = function()
		if type(isfile) == "function" and type(delfile) == "function" then
			pcall(function()
				if isfile(str4) then
					delfile(str4)
				end
			end)
		end
	end

	local screenGui2 = Instance.new("ScreenGui")
	screenGui2.Name = "NotificationHolder"
	screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	if type(syn) == "table" and type(syn.protect_gui) == "function" then
		pcall(syn.protect_gui, screenGui2)
	end

	screenGui2.Parent = v
	local frame2 = Instance.new("Frame")
	frame2.BackgroundTransparency = 1
	frame2.Position = UDim2.new(1, -20, 1, -20)
	frame2.Size = UDim2.new(0, 340, 0, 500)
	frame2.AnchorPoint = Vector2.new(1, 1)
	frame2.Parent = screenGui2
	local tbl = {}

	Notify = function(text, text2, arg)
		spawn(function()
			local frame3 = Instance.new("Frame")
			local uiCorner4 = Instance.new("UICorner")
			local uiStroke7 = Instance.new("UIStroke")
			local frame4 = Instance.new("Frame")
			local uiCorner5 = Instance.new("UICorner")
			local imageLabel7 = Instance.new("ImageLabel")
			local uiCorner6 = Instance.new("UICorner")
			local frame5 = Instance.new("Frame")
			local textLabel3 = Instance.new("TextLabel")
			local textLabel4 = Instance.new("TextLabel")
			local frame6 = Instance.new("Frame")
			local frame7 = Instance.new("Frame")
			local uiCorner7 = Instance.new("UICorner")
			local uiCorner8 = Instance.new("UICorner")
			frame3.Size = UDim2.new(1, 0, 0, 75)
			frame3.Position = UDim2.new(0, 350, 1, 0)
			frame3.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
			frame3.BorderSizePixel = 0
			frame3.ClipsDescendants = false
			frame3.Parent = frame2
			table.insert(tbl, frame3)
			uiCorner4.CornerRadius = UDim.new(0, 12)
			uiCorner4.Parent = frame3
			uiStroke7.Color = Color3.fromRGB(0, 255, 255)
			uiStroke7.Thickness = 2
			uiStroke7.Transparency = 0.3
			uiStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			uiStroke7.Parent = frame3
			frame4.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
			frame4.Size = UDim2.new(0, 50, 0, 50)
			frame4.Position = UDim2.new(0, 12, 0.5, 0)
			frame4.AnchorPoint = Vector2.new(0, 0.5)
			frame4.BorderSizePixel = 0
			frame4.Parent = frame3
			uiCorner5.CornerRadius = UDim.new(0, 10)
			uiCorner5.Parent = frame4
			imageLabel7.Image = "rbxassetid://104202858258775"
			imageLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			imageLabel7.BackgroundTransparency = 1
			imageLabel7.Size = UDim2.new(1, -8, 1, -8)
			imageLabel7.Position = UDim2.new(0.5, 0, 0.5, 0)
			imageLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel7.BorderSizePixel = 0
			imageLabel7.Parent = frame4
			uiCorner6.CornerRadius = UDim.new(0, 8)
			uiCorner6.Parent = imageLabel7
			frame5.BackgroundTransparency = 1
			frame5.Position = UDim2.new(0, 72, 0, 10)
			frame5.Size = UDim2.new(1, -82, 1, -20)
			frame5.Parent = frame3
			textLabel3.Font = Enum.Font.FredokaOne
			textLabel3.Text = text
			textLabel3.TextColor3 = Color3.fromRGB(0, 255, 255)
			textLabel3.TextSize = 15
			textLabel3.TextXAlignment = Enum.TextXAlignment.Left
			textLabel3.TextYAlignment = Enum.TextYAlignment.Top
			textLabel3.BackgroundTransparency = 1
			textLabel3.Position = UDim2.new(0, 0, 0, 0)
			textLabel3.Size = UDim2.new(1, 0, 0, 18)
			textLabel3.Parent = frame5
			local uiStroke8 = Instance.new("UIStroke")
			uiStroke8.Color = Color3.fromRGB(0, 0, 0)
			uiStroke8.Thickness = 1.5
			uiStroke8.Parent = textLabel3
			textLabel4.Font = Enum.Font.FredokaOne
			textLabel4.Text = text2
			textLabel4.TextColor3 = Color3.fromRGB(200, 200, 200)
			textLabel4.TextSize = 13
			textLabel4.TextXAlignment = Enum.TextXAlignment.Left
			textLabel4.TextYAlignment = Enum.TextYAlignment.Top
			textLabel4.TextWrapped = true
			textLabel4.BackgroundTransparency = 1
			textLabel4.Position = UDim2.new(0, 0, 0, 20)
			textLabel4.Size = UDim2.new(1, 0, 1, -20)
			textLabel4.Parent = frame5
			frame6.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
			frame6.BorderSizePixel = 0
			frame6.Position = UDim2.new(0, 12, 1, -8)
			frame6.Size = UDim2.new(1, -24, 0, 3)
			frame6.Parent = frame3
			uiCorner7.CornerRadius = UDim.new(1, 0)
			uiCorner7.Parent = frame6
			frame7.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
			frame7.BorderSizePixel = 0
			frame7.Size = UDim2.new(1, 0, 1, 0)
			frame7.Parent = frame6
			uiCorner8.CornerRadius = UDim.new(1, 0)
			uiCorner8.Parent = frame7

			for i = #tbl - 1, 1, -1 do
				local v3 = tbl[i]

				if v3 and v3.Parent then
					local position = v3.Position
					TweenService:Create(v3, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset - 85) }):Play()
				end
			end

			frame3.Position = UDim2.new(0, 350, 1, 0)
			TweenService:Create(frame3, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 1, -85) }):Play()
			TweenService:Create(uiStroke7, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 2.5 }):Play()
			task.wait(0.5)
			TweenService:Create(uiStroke7, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Transparency = 0.3, Thickness = 2 }):Play()
			TweenService:Create(frame7, TweenInfo.new(arg, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Size = UDim2.new(0, 0, 1, 0) }):Play()
			task.wait(arg - 0.4)
			TweenService:Create(frame3, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { Position = UDim2.new(0, 350, frame3.Position.Y.Scale, frame3.Position.Y.Offset) }):Play()
			TweenService:Create(uiStroke7, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
			TweenService:Create(frame3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(frame4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(imageLabel7, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { ImageTransparency = 1 }):Play()
			TweenService:Create(textLabel3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { TextTransparency = 1 }):Play()
			TweenService:Create(uiStroke8, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
			TweenService:Create(textLabel4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { TextTransparency = 1 }):Play()
			TweenService:Create(frame6, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(frame7, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			task.wait(0.4)

			for i, v3 in ipairs(tbl) do
				if v3 == frame3 then
					table.remove(tbl, i)
					break
				end
			end

			frame3:Destroy()
		end)
	end

	Notify = function(arg, arg2, arg3)
		local n2 = math.max(1, math.min(15, tonumber(arg3) or 3))

		task.spawn(function()
			if not frame2 or not frame2.Parent then
				return
			end

			local ok, result = pcall(function()
				local frame3 = Instance.new("Frame")
				frame3.Name = "VxezeNotification"
				frame3.Size = UDim2.new(1, 0, 0, 75)
				frame3.Position = UDim2.new(0, 360, 1, -85)
				frame3.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
				frame3.BorderSizePixel = 0
				frame3.Parent = frame2
				local uiCorner4 = Instance.new("UICorner")
				uiCorner4.CornerRadius = UDim.new(0, 12)
				uiCorner4.Parent = frame3
				local uiStroke7 = Instance.new("UIStroke")
				uiStroke7.Color = Color3.fromRGB(0, 255, 255)
				uiStroke7.Thickness = 2
				uiStroke7.Transparency = 0.3
				uiStroke7.Parent = frame3
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.Position = UDim2.new(0, 16, 0, 10)
				textLabel3.Size = UDim2.new(1, -32, 0, 20)
				textLabel3.Font = Enum.Font.GothamBold
				local v3 = tostring
				local v4 = arg
				local str5

				if arg then
					str5 = v4
				else
					str5 = "Vxeze Hub"
				end

				textLabel3.Text = v3(str5)
				textLabel3.TextColor3 = Color3.fromRGB(0, 255, 255)
				textLabel3.TextSize = 15
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.Parent = frame3
				local textLabel4 = Instance.new("TextLabel")
				textLabel4.BackgroundTransparency = 1
				textLabel4.Position = UDim2.new(0, 16, 0, 32)
				textLabel4.Size = UDim2.new(1, -32, 0, 32)
				textLabel4.Font = Enum.Font.Gotham
				textLabel4.Text = tostring(arg2 or "")
				textLabel4.TextColor3 = Color3.fromRGB(220, 220, 225)
				textLabel4.TextSize = 13
				textLabel4.TextWrapped = true
				textLabel4.TextXAlignment = Enum.TextXAlignment.Left
				textLabel4.TextYAlignment = Enum.TextYAlignment.Top
				textLabel4.Parent = frame3
				return frame3
			end)

			if not ok or not result then
				return
			end

			for _, v3 in ipairs(tbl) do
				if v3 and v3.Parent then
					v3.Position = v3.Position - UDim2.new(0, 0, 0, 82)
				end
			end

			table.insert(tbl, result)

			pcall(function()
				TweenService:Create(result, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 1, -85) }):Play()
			end)

			task.delay(n2, function()
				pcall(function()
					TweenService:Create(result, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
						Position = UDim2.new(0, 360, result.Position.Y.Scale, result.Position.Y.Offset),
						BackgroundTransparency = 1,
					}):Play()
				end)

				task.wait(0.35)

				for i = #tbl, 1, -1 do
					if tbl[i] == result then
						table.remove(tbl, i)
						break
					end
				end

				pcall(function()
					result:Destroy()
				end)
			end)
		end)
	end

	local request_ = request or http_request or http and http.request
	local request_2

	if request_ then
		request_2 = request_
	else
		request_2 = syn and syn.request
	end

	request_2 = request_2 or fluxus and fluxus.request
	local request_3

	if request_2 then
		request_3 = request_2
	else
		request_3 = krnl and krnl.request
	end

	str = "[VXEZE_TRANSIENT]"
	n = 3
	local n2 = 1
	local str5 = tostring(HttpService:GenerateGUID(false))

	for i = 1, #str5 do
		n2 = (n2 * 131 + string.byte(str5, i)) % 2147483647
	end

	local function fn8(arg, arg2)
		n2 = (n2 * 48271 + 1) % 2147483647
		local n3 = math.max(math.max(3, math.min(60, 2 ^ math.min(arg, 6))), math.min(300, math.max(0, tonumber(arg2) or 0)))
		return n3 + n3 * 0.25 * n2 / 2147483647
	end

	fn = function(arg, arg2)
		local v3 = fn8(arg, arg2)

		if task and type(task.wait) == "function" then
			task.wait(v3)
		else
			wait(v3)
		end
	end

	local function fn9(arg, arg2)
		if not arg then
			return 0, nil, nil
		end

		if type(arg2) == "string" then
			return 200, arg2, nil
		end

		if type(arg2) ~= "table" then
			return 0, nil, nil
		end
		return tonumber(arg2.StatusCode or arg2.Status or arg2.status_code or arg2.status) or arg2.Success == false and 0 or 200, arg2.Body or arg2.body or arg2.ResponseBody or arg2.response_body, arg2.Headers or arg2.headers
	end

	local function fn10(arg, arg2)
		local num = type(arg2) == "table" and tonumber(arg2.retryAfterSeconds) or nil

		if type(arg) == "table" then
			for k, v3 in pairs(arg) do
				if tostring(k):lower() == "retry-after" then
					num = tonumber(v3) or num
				end
			end
		end

		return math.min(300, math.max(0, num or 3))
	end

	local function fn11(arg, arg2)
		if arg == 429 and type(arg2) == "table" and arg2.code == "ACTIVE_SESSIONS_FULL" then
			return false
		end
		local flag2 = arg == 0 or arg == 408 or arg == 425 or arg == 429
		local flag3

		if flag2 then
			flag3 = flag2
		else
			flag3 = arg >= 500 and arg <= 599
		end

		return flag3 or arg == 409 and type(arg2) == "table" and arg2.code == "VERIFY_IN_PROGRESS"
	end

	local tbl2 = {}

	local function fn12(arg, arg2, arg3)
		local url = arg.Url
		local authorization = arg.Headers and arg.Headers.Authorization or ""
		local tbl3 = tbl2[url]

		if tbl3 and (tbl3.body ~= arg.Body or tbl3.authorization ~= authorization) then
			if not tbl3.done then
				return false, str .. " request still pending", true
			end
			tbl2[url] = nil
			tbl3 = nil
		end

		if not tbl3 then
			tbl3 = { done = false, body = arg.Body, authorization = authorization }
			tbl2[url] = tbl3
			local v3 = arg3 or request_3

			task.spawn(function()
				local v4 = tbl3
				local v5 = tbl3
				local ok, response = pcall(v3, arg)
				v4.ok = ok
				v5.response = response
				tbl3.done = true
			end)
		end

		local now = os.clock()

		while not tbl3.done and os.clock() - now < arg2 do
			task.wait(0.05)
		end

		if not tbl3.done then
			return false, str .. " request timed out", true
		end
		tbl2[url] = nil
		return tbl3.ok, tbl3.response, false
	end

	local v3 = nil
	local v4 = nil

	local function fn13(arg)
		if arg == nil then
			return nil
		end
		local str6 = tostring(arg):gsub("^%s+", ""):gsub("%s+$", ""):gsub("[%c]", "")

		if #str6 > 256 then
			str6 = str6:sub(1, 256)
		end

		local str7 = str6:lower()
		if #str6 < 8 then
			return nil
		end

		if str7:match("^unknown") or str7:match("^nil") or str7:match("^null") or str7:match("^undefined") or str7 == "none" or str7 == "n/a" or str7 == "na" or str7 == "false" or str7 == "true" then
			return nil
		end

		if str7:match("^0+$") or str7:match("^(%w)%1+$") then
			return nil
		end

		if str7:match("^%d+$") and #str7 <= 12 then
			return nil
		end
		local tbl3 = {}
		local n3 = 0

		for match in str7:gmatch("[%w]") do
			if not tbl3[match] then
				tbl3[match] = true
				n3 += 1
			end
		end

		if n3 < 4 then
			return nil
		end
		return str6
	end

	local function fn14(arg)
		local v5 = fn13(arg)
		if v5 then
			v4 = v5
			return v5
		end
		return nil
	end

	getHWID = function()
		if v4 then
			return v4
		end

		for _, v5 in ipairs({
			function()
				return type(gethwid) == "function" and gethwid() or nil
			end,
			function()
				return type(getdeviceid) == "function" and getdeviceid() or nil
			end,
			function()
				return syn and type(syn.get_hwid) == "function" and syn.get_hwid() or nil
			end,
			function()
				return game:GetService("RbxAnalyticsService"):GetClientId()
			end,
		}) do
			local ok, result = pcall(v5)

			if ok then
				local v6 = fn14(result)
				if v6 then
					return v6
				end
			end
		end

		if type(isfile) == "function" and type(readfile) == "function" then
			local ok, result = pcall(function()
				return isfile("VxezeHub/device-id.txt") and readfile("VxezeHub/device-id.txt") or nil
			end)

			if ok then
				local v5 = fn14(result)
				if v5 then
					return v5
				end
			end
		end

		local ok, result = pcall(function()
			return "vxeze-" .. HttpService:GenerateGUID(false)
		end)

		local v5 = ok and fn14(result) or nil

		if v5 and type(writefile) == "function" then
			pcall(writefile, "VxezeHub/device-id.txt", v5)
		end

		return v5
	end

	local function fn15()
		local ok, result = pcall(function()
			if identifyexecutor then
				return (identifyexecutor())
			end

			if syn then
				return "Synapse X"
			end

			if fluxus then
				return "Fluxus"
			end

			if krnl then
				return "KRNL"
			end

			if codex then
				return "Codex"
			end

			if delta then
				return "Delta"
			end
			return nil
		end)

		if ok and result and tostring(result) ~= "" then
			return tostring(result)
		end
		return "unknown"
	end

	fn2 = function(arg)
		if type(arg) ~= "string" then
			return arg
		end
		return (arg:gsub("^%s*(.-)%s*$", "%1"))
	end

	local function fn16(arg)
		if type(arg) == "table" then
			return arg
		end

		if not arg or arg == "" then
			return nil
		end

		local ok, result = pcall(function()
			return HttpService:JSONDecode(arg)
		end)

		if ok then
			return result
		end
		return nil
	end

	fn3 = function(arg)
		return tostring(arg or ""):lower():find("invalid or expired key") ~= nil
	end

	fn4 = function(arg)
		local str6 = tostring(arg or ""):lower()
		return str6:find("reset hwid") or str6:find("hwid_reset_required")
	end

	fn5 = function(arg)
		local str6 = tostring(arg or ""):lower()
		return str6:find("active tabs are full") or str6:find("too many active sessions") or str6:find("active lease limit")
	end

	fn6 = function(arg)
		local str6 = tostring(arg or ""):lower()
		return str6:find("rate limited") or str6:find("too many invalid attempts") or str6:find("already being verified") or str6:find("active tabs are full") or str6:find("too many active sessions") or str6:find("failed to connect") or str6:find("check your internet") or str6:find("invalid request") or str6:find("timeout") or str6:find("temporar") or str6:find("too often") or str6:find("network") or str6:find("cdn") or str6:find("http 0") or str6:find("unsupported http response")
	end

	local function fn17(arg)
		if type(arg) ~= "table" or getmetatable(arg) ~= nil then
			return false
		end

		if rawget(arg, "valid") ~= true or rawget(arg, "leaseVersion") ~= 2 then
			return false
		end
		local value = rawget(arg, "licenseWatermark")
		local value2 = rawget(arg, "leaseToken")
		if type(value) ~= "string" or type(value2) ~= "string" then
			return false
		end
		local match, v5, v6 = value:match("^vwm1%.(%d+)%.([a-f0-9]+)%.([A-Za-z0-9_-]+)$")
		if not match or #match < 8 or #match > 12 or #v5 ~= 16 or #v6 < 24 or #v6 > 64 then
			return false
		end
		local match2, v7 = value2:match("^kl1%.([A-Za-z0-9_-]+)%.([A-Za-z0-9_-]+)$")
		if not match2 or #match2 < 24 or #v7 ~= 43 then
			return false
		end
		local value3 = rawget(arg, "sessionToken")
		if value3 ~= nil and (type(value3) ~= "string" or #value3 < 24 or #value3 > 2048) then
			return false
		end
		return true
	end

	local function fn18(arg, arg2)
		if fn6(arg2) or fn5(arg2) then
			return
		end

		if type(arg) ~= "table" or arg.kick ~= true then
			return
		end

		task.delay(0.35, function()
			local localPlayer = Players.LocalPlayer

			if localPlayer then
				localPlayer:Kick("[Vxeze Hub] Key verification failed too many times.")
			end
		end)
	end

	validateKeyWithServer = function(arg)
		getgenv().VxezeKeyVerified = false
		getgenv().VxezeLicenseWatermark = nil
		local v5 = fn2(arg)
		if not v5 or v5 == "" then
			return false, "Please enter a key", nil
		end
		local v6 = fn15()

		local json = HttpService:JSONEncode({
			scriptId = str2,
			key = v5,
			playerName = Players.LocalPlayer and Players.LocalPlayer.Name or "unknown",
			playerUserId = Players.LocalPlayer and tostring(Players.LocalPlayer.UserId) or "0",
			placeId = game.PlaceId,
			jobId = game.JobId,
			sessionId = v2,
			hwid = getHWID(),
			executor = v6,
		})

		local v7 = nil
		if type(request_3) ~= "function" then
			return false, "Executor HTTP API is unavailable. Update or change executor.", nil
		end
		local v8 = nil

		for i = 1, 1 do
			local str6

			if request_3 then
				local v9, v10 = fn12({
					Url = str3,
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json", Accept = "application/json" },
					Body = json,
				}, 6)

				if not (v9 and v10) then
					if not v9 then
						return false, str .. " executor network unavailable", nil
					end
					return false, str .. " executor returned no HTTP response", nil
				end

				local kind = type(v10)
				local num, body

				if kind == "table" then
					if getmetatable(v10) ~= nil then
						return false, "Invalid verification response", nil
					end
					num = tonumber(v10.StatusCode or v10.Status or v10.status_code or v10.status)
					body = v10.Body or v10.body or v10.ResponseBody or v10.response_body
					num = num or v10.Success == false and 0 or 200
				else
					num = nil
					body = nil

					if kind == "string" then
						num = 200
						body = v10
					end
				end

				local v11 = fn16(body)

				if fn11(num or 0, v11) then
					local v12, v13, v14 = fn9(v9, v10)
					n = fn10(v14, v11)
					return false, str .. " key server busy", nil
				end

				if v11 then
					v7 = v11
					break
				end

				if not num then
					str6 = "Executor returned an unsupported HTTP response"
				elseif num == 0 then
					str6 = "Executor could not reach key server (HTTP 0)"
				elseif num == 401 or num == 403 then
					str6 = "Request blocked by network or CDN (HTTP " .. tostring(num) .. "). Disable VPN or try another network."
				elseif num >= 500 then
					str6 = "Key server temporarily unavailable (HTTP " .. tostring(num) .. ")"
				else
					str6 = "Key server returned HTTP " .. tostring(num) .. " without JSON"
				end
			else
				str6 = v8
			end

			if str6 == "Request timed out" then
				v8 = str6
				break
			end

			if not (i < 1) then
				v8 = str6
			else
				wait(0.6 * i)
				v8 = str6
			end
		end

		if v7 then
			if v7.valid == true then
				if not fn17(v7) then
					return false, "Invalid verification credentials", nil
				end

				if type(v7.licenseWatermark) ~= "string" or not v7.licenseWatermark:match("^vwm1%.%d+%.[a-f0-9]+%.[A-Za-z0-9_-]+$") then
					fn18({ kick = true }, "Signed license watermark is missing")
					return false, "Signed license watermark is missing", nil
				end
				local genv = getgenv()
				genv.VxezeLicenseWatermark = v7.licenseWatermark
				genv.VxezeKeyVerified = true

				if type(v7.runtimeSessionToken) == "string" and type(v7.runtimeSyncUrl) == "string" then
					genv.VxezePlayerControlCredentials = {
						RuntimeSessionToken = v7.runtimeSessionToken,
						SyncUrl = v7.runtimeSyncUrl,
						ReleaseUrl = tostring(v7.runtimeReleaseUrl or ""),
						KeyTargetId = str2,
						SyncSeconds = tonumber(v7.runtimeSyncSeconds) or 12,
					}
				end

				v3 = v5
				saveKeyToFile(v5)

				if type(v7.sessionToken) == "string" and not flag then
					flag = true
					local sessionToken = v7.sessionToken
					local str6 = ("https://vxezestudio.online/api/key/verify"):gsub("/verify$", "/tab/ping")

					local vxezeTabSessionCredentials = {
						Active = true,
						SessionToken = sessionToken,
						ReleaseUrl = ("https://vxezestudio.online/api/key/verify"):gsub("/verify$", "/tab/release"),
					}

					getgenv().VxezeTabSessionCredentials = vxezeTabSessionCredentials
					local n3 = math.max(8, tonumber(v7.sessionPingSeconds) or 15)

					task.spawn(function()
						local v9 = n3
						local n4 = 0

						while vxezeTabSessionCredentials.Active do
							task.wait(v9 + math.random() * 2)

							if vxezeTabSessionCredentials.Active then
								local flag2 = false

								if request_3 then
									local v10, v11 = fn12({
										Url = str6,
										Method = "POST",
										Headers = { ["Content-Type"] = "application/json", Accept = "application/json" },
										Body = HttpService:JSONEncode({ sessionToken = sessionToken }),
									}, 6)

									local v12, v13, v14 = fn9(v10, v11)
									local v15 = v13 and fn16(v13) or nil
									local str7

									if v15 then
										str7 = tostring(v15.code or "")
									else
										str7 = v15
									end

									str7 = str7 or ""

									if v12 == 423 and str7 == "KEY_TEMPORARILY_LOCKED" then
										vxezeTabSessionCredentials.Active = false
										local localPlayer = Players.LocalPlayer

										if localPlayer then
											localPlayer:Kick("[Vxeze Hub] This lifetime key is temporarily locked.")
										end

										break
									elseif v12 == 410 and str7 == "KEY_INACTIVE" then
										vxezeTabSessionCredentials.Active = false
										deleteKeyFile()
										local localPlayer = Players.LocalPlayer

										if localPlayer then
											localPlayer:Kick("[Vxeze Hub] This key is no longer active.")
										end

										break
									else
										local flag3 = v12 == 401 and str7 == "SESSION_TOKEN_INVALID"
										local flag4

										if flag3 then
											flag4 = flag3
										else
											flag4 = v12 == 409 and str7 == "SLOT_TAKEN"
										end

										if flag4 then
											vxezeTabSessionCredentials.Active = false
											warn("[Vxeze] Tab session needs verification: " .. str7)
											break
										else
											flag2 = v12 >= 200 and v12 < 300 and type(v15) == "table" and v15.ok == true

											if flag2 and type(v15) == "table" and type(v15.sessionToken) == "string" then
												sessionToken = v15.sessionToken
												vxezeTabSessionCredentials.SessionToken = sessionToken
											end

											v9 = flag2 and n3

											if v9 then
												flag2 = flag2 and 0
												n4 = flag2 or n4 + 1
											else
												v9 = fn8(n4 + 1, fn10(v14, v15))
												flag2 = flag2 and 0
												n4 = flag2 or n4 + 1
											end

											continue
										end
									end
								else
									n4 = flag2 and 0 or n4 + 1
									continue
								end
							end

							break
						end

						flag = false
					end)
				end

				local tbl3

				if v7.premium == true then
					tbl3 = { hours = 999999, minutes = 0 }
				else
					tbl3 = nil

					if v7.keyExpiresAt then
						local ok, result = pcall(function()
							return DateTime.fromIsoDate(v7.keyExpiresAt).UnixTimestamp
						end)

						local v9 = ok and result
						tbl3 = nil

						if v9 then
							local n3 = math.max(0, result - os.time())
							tbl3 = { hours = math.floor(n3 / 3600), minutes = math.floor(n3 % 3600 / 60) }
						end
					end
				end

				return true, v7.message or "Valid key", tbl3
			end

			local error_ = v7.error or v7.message or "Invalid key"
			local flag2 = not fn4(error_)
			local pos

			if flag2 then
				pos = error_:lower():find("hwid") or error_:lower():find("bound") or error_:lower():find("another device")
			else
				pos = flag2
			end

			if pos then
				deleteKeyFile()
			end

			fn18(v7, error_)
			return false, error_, v7.time_remaining
		end

		return false, v8 or "Failed to connect to server. Check your internet.", nil
	end

	loadImage = function(arg)
		if not arg or arg == "" then
			return ""
		end

		if type(arg) == "string" then
			if arg:match("^https?://") then
				return arg
			end

			if arg:match("^rbxassetid://") then
				return arg
			end

			if tonumber(arg) then
				return "rbxassetid://" .. arg
			end
		end

		return "rbxassetid://" .. tostring(arg)
	end

	screenGui = Instance.new("ScreenGui")
	frame = Instance.new("Frame")
	UICorner = Instance.new("UICorner")
	UIStroke = Instance.new("UIStroke")
	imageLabel = Instance.new("ImageLabel")
	local uiCorner4 = Instance.new("UICorner")
	Character = Instance.new("ImageLabel")
	imageLabel2 = Instance.new("ImageLabel")
	local uiCorner5 = Instance.new("UICorner")
	textLabel = Instance.new("TextLabel")
	uiStroke = Instance.new("UIStroke")
	textLabel2 = Instance.new("TextLabel")
	textBox = Instance.new("TextBox")
	local uiCorner6 = Instance.new("UICorner")
	uiStroke2 = Instance.new("UIStroke")
	imageLabel3 = Instance.new("ImageLabel")
	local uiCorner7 = Instance.new("UICorner")
	uiStroke3 = Instance.new("UIStroke")
	textButton = Instance.new("TextButton")
	imageLabel4 = Instance.new("ImageLabel")
	uiCorner = Instance.new("UICorner")
	uiStroke4 = Instance.new("UIStroke")
	textButton2 = Instance.new("TextButton")
	imageLabel5 = Instance.new("ImageLabel")
	uiCorner2 = Instance.new("UICorner")
	uiStroke5 = Instance.new("UIStroke")
	textButton3 = Instance.new("TextButton")
	imageLabel6 = Instance.new("ImageLabel")
	uiCorner3 = Instance.new("UICorner")
	uiStroke6 = Instance.new("UIStroke")
	textButton4 = Instance.new("TextButton")
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Name = "KeySystemGui"

	if type(syn) == "table" and type(syn.protect_gui) == "function" then
		pcall(syn.protect_gui, screenGui)
	end

	screenGui.Parent = v
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
	frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.Size = UDim2.new(0, 500, 0, 350)
	frame.Name = "MainFrame"
	frame.Parent = screenGui
	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = frame
	UIStroke.Color = Color3.fromRGB(0, 255, 255)
	UIStroke.Thickness = 3
	UIStroke.Transparency = 0
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = frame
	imageLabel.Image = loadImage("133093108462584")
	imageLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
	imageLabel.BackgroundTransparency = 1
	imageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel.BorderSizePixel = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 0)
	imageLabel.Name = "Background"
	imageLabel.ZIndex = 1
	imageLabel.Parent = frame
	uiCorner4.CornerRadius = UDim.new(0, 16)
	uiCorner4.Parent = imageLabel
	Character.Image = loadImage("117730372760094")
	Character.BackgroundTransparency = 1
	Character.BorderSizePixel = 0
	Character.Position = UDim2.new(1, 40, 0, -65)
	Character.AnchorPoint = Vector2.new(1, 0)
	Character.Size = UDim2.new(0, 220, 0, 250)
	Character.ScaleType = Enum.ScaleType.Fit
	Character.ZIndex = 2
	Character.Name = "Character"
	Character.Parent = frame
	imageLabel2.Image = loadImage("104202858258775")
	imageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel2.BorderSizePixel = 0
	imageLabel2.Position = UDim2.new(0, 18, 0, 18)
	imageLabel2.Size = UDim2.new(0, 42, 0, 42)
	imageLabel2.ZIndex = 3
	imageLabel2.Name = "CharacterIcon"
	imageLabel2.Parent = frame
	uiCorner5.CornerRadius = UDim.new(0, 8)
	uiCorner5.Parent = imageLabel2
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.Text = "Steal An Egg"
	textLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
	textLabel.TextSize = 22
	textLabel.TextTransparency = 0
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textLabel.BorderSizePixel = 0
	textLabel.Position = UDim2.new(0, 70, 0, 20)
	textLabel.Size = UDim2.new(0, 240, 0, 30)
	textLabel.ZIndex = 3
	textLabel.Parent = frame
	uiStroke.Color = Color3.fromRGB(0, 0, 0)
	uiStroke.Thickness = 2
	uiStroke.Transparency = 0
	uiStroke.Parent = textLabel
	textLabel2.Font = Enum.Font.FredokaOne
	textLabel2.Text = "Enter your key below to continue"
	textLabel2.TextColor3 = Color3.fromRGB(200, 200, 200)
	textLabel2.TextSize = 13
	textLabel2.TextTransparency = 0
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	textLabel2.BackgroundTransparency = 1
	textLabel2.BorderSizePixel = 0
	textLabel2.Position = UDim2.new(0, 70, 0, 50)
	textLabel2.Size = UDim2.new(0, 240, 0, 18)
	textLabel2.ZIndex = 3
	textLabel2.Parent = frame
	textBox.Font = Enum.Font.FredokaOne
	textBox.PlaceholderText = "Enter Key Here..."
	textBox.Text = ""
	textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	textBox.TextSize = 16
	textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
	textBox.BorderSizePixel = 0
	textBox.Position = UDim2.new(0, 30, 0, 125)
	textBox.Size = UDim2.new(0, 340, 0, 40)
	textBox.ClearTextOnFocus = false
	textBox.ZIndex = 3
	textBox.Name = "KeyInput"
	textBox.Parent = frame
	uiCorner6.CornerRadius = UDim.new(0, 10)
	uiCorner6.Parent = textBox
	uiStroke2.Color = Color3.fromRGB(0, 255, 255)
	uiStroke2.Thickness = 2
	uiStroke2.Transparency = 0
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Parent = textBox
	imageLabel3.Image = loadImage("117928961549219")
	imageLabel3.BackgroundColor3 = Color3.fromRGB(50, 100, 150)
	imageLabel3.BackgroundTransparency = 0
	imageLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel3.BorderSizePixel = 0
	imageLabel3.Position = UDim2.new(0, 30, 0, 195)
	imageLabel3.Size = UDim2.new(0, 205, 0, 45)
	imageLabel3.ZIndex = 3
	imageLabel3.Name = "GetKeyBtn"
	imageLabel3.Parent = frame
	uiCorner7.CornerRadius = UDim.new(0, 10)
	uiCorner7.Parent = imageLabel3
end

uiStroke3.Color = Color3.fromRGB(70, 140, 200)
uiStroke3.Thickness = 2.5
uiStroke3.Transparency = 0
uiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke3.Parent = imageLabel3
textButton.Font = Enum.Font.FredokaOne
textButton.Text = "Get Key"
textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
textButton.TextSize = 16
textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton.BackgroundTransparency = 1
textButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton.BorderSizePixel = 0
textButton.Size = UDim2.new(1, 0, 1, 0)
textButton.ZIndex = 4
textButton.Name = "GetKeyButton"
textButton.Parent = imageLabel3
local uiStroke7
uiStroke7 = Instance.new("UIStroke")
uiStroke7.Color = Color3.fromRGB(0, 0, 0)
uiStroke7.Thickness = 2
uiStroke7.Transparency = 0
uiStroke7.Parent = textButton
imageLabel4.Image = loadImage("122513747232289")
imageLabel4.BackgroundColor3 = Color3.fromRGB(50, 100, 150)
imageLabel4.BackgroundTransparency = 0
imageLabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
imageLabel4.BorderSizePixel = 0
imageLabel4.Position = UDim2.new(0, 265, 0, 195)
imageLabel4.Size = UDim2.new(0, 205, 0, 45)
imageLabel4.ZIndex = 3
imageLabel4.Name = "CheckKeyBtn"
imageLabel4.Parent = frame
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = imageLabel4
uiStroke4.Color = Color3.fromRGB(70, 140, 200)
uiStroke4.Thickness = 2.5
uiStroke4.Transparency = 0
uiStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke4.Parent = imageLabel4
textButton2.Font = Enum.Font.FredokaOne
textButton2.Text = "Check Key"
textButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
textButton2.TextSize = 16
textButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton2.BackgroundTransparency = 1
textButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton2.BorderSizePixel = 0
textButton2.Size = UDim2.new(1, 0, 1, 0)
textButton2.ZIndex = 4
textButton2.Name = "CheckKeyButton"
textButton2.Parent = imageLabel4

do
	local uiStroke8 = Instance.new("UIStroke")
	uiStroke8.Color = Color3.fromRGB(0, 0, 0)
	uiStroke8.Thickness = 2
	uiStroke8.Transparency = 0
	uiStroke8.Parent = textButton2
	imageLabel5.Image = loadImage("122513747232289")
	imageLabel5.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	imageLabel5.BackgroundTransparency = 0
	imageLabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel5.BorderSizePixel = 0
	imageLabel5.Position = UDim2.new(0, 30, 0, 270)
	imageLabel5.Size = UDim2.new(0, 205, 0, 45)
	imageLabel5.ZIndex = 3
	imageLabel5.Name = "DiscordBtn"
	imageLabel5.Parent = frame
	uiCorner2.CornerRadius = UDim.new(0, 10)
	uiCorner2.Parent = imageLabel5
	uiStroke5.Color = Color3.fromRGB(108, 121, 255)
	uiStroke5.Thickness = 2.5
	uiStroke5.Transparency = 0
	uiStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke5.Parent = imageLabel5
	textButton3.Font = Enum.Font.FredokaOne
	textButton3.Text = "Discord"
	textButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton3.TextSize = 16
	textButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textButton3.BackgroundTransparency = 1
	textButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textButton3.BorderSizePixel = 0
	textButton3.Size = UDim2.new(1, 0, 1, 0)
	textButton3.ZIndex = 4
	textButton3.Name = "DiscordButton"
	textButton3.Parent = imageLabel5
	local uiStroke9 = Instance.new("UIStroke")
	uiStroke9.Color = Color3.fromRGB(0, 0, 0)
	uiStroke9.Thickness = 2
	uiStroke9.Transparency = 0
	uiStroke9.Parent = textButton3
	imageLabel6.Image = loadImage("103629842357172")
	imageLabel6.BackgroundColor3 = Color3.fromRGB(150, 50, 150)
	imageLabel6.BackgroundTransparency = 0
	imageLabel6.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel6.BorderSizePixel = 0
	imageLabel6.Position = UDim2.new(0, 265, 0, 270)
	imageLabel6.Size = UDim2.new(0, 205, 0, 45)
	imageLabel6.ZIndex = 3
	imageLabel6.Name = "TutorialBtn"
	imageLabel6.Parent = frame
	uiCorner3.CornerRadius = UDim.new(0, 10)
	uiCorner3.Parent = imageLabel6
	uiStroke6.Color = Color3.fromRGB(200, 70, 200)
	uiStroke6.Thickness = 2.5
	uiStroke6.Transparency = 0
	uiStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke6.Parent = imageLabel6
	textButton4.Font = Enum.Font.FredokaOne
	textButton4.Text = "Tutorial"
	textButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton4.TextSize = 16
	textButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textButton4.BackgroundTransparency = 1
	textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textButton4.BorderSizePixel = 0
	textButton4.Size = UDim2.new(1, 0, 1, 0)
	textButton4.ZIndex = 4
	textButton4.Name = "TutorialButton"
	textButton4.Parent = imageLabel6
	local uiStroke10 = Instance.new("UIStroke")
	uiStroke10.Color = Color3.fromRGB(0, 0, 0)
	uiStroke10.Thickness = 2
	uiStroke10.Transparency = 0
	uiStroke10.Parent = textButton4

	local function fn7(imageTransparency)
		imageLabel.ImageTransparency = imageTransparency
		Character.ImageTransparency = imageTransparency
		imageLabel2.ImageTransparency = imageTransparency
		imageLabel2.BackgroundTransparency = imageTransparency
		textLabel.TextTransparency = imageTransparency
		textLabel2.TextTransparency = imageTransparency
		textBox.TextTransparency = imageTransparency
		textBox.BackgroundTransparency = imageTransparency
		textBox.PlaceholderColor3 = imageTransparency == 1 and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(150, 150, 150)
		imageLabel3.ImageTransparency = imageTransparency
		imageLabel3.BackgroundTransparency = imageTransparency
		textButton.TextTransparency = imageTransparency
		imageLabel4.ImageTransparency = imageTransparency
		imageLabel4.BackgroundTransparency = imageTransparency
		textButton2.TextTransparency = imageTransparency
		imageLabel5.ImageTransparency = imageTransparency
		imageLabel5.BackgroundTransparency = imageTransparency
		textButton3.TextTransparency = imageTransparency
		imageLabel6.ImageTransparency = imageTransparency
		imageLabel6.BackgroundTransparency = imageTransparency
		textButton4.TextTransparency = imageTransparency
		uiStroke.Transparency = imageTransparency
		uiStroke2.Transparency = imageTransparency
		uiStroke3.Transparency = imageTransparency
		uiStroke7.Transparency = imageTransparency
		uiStroke4.Transparency = imageTransparency
		uiStroke8.Transparency = imageTransparency
		uiStroke5.Transparency = imageTransparency
		uiStroke9.Transparency = imageTransparency
		uiStroke6.Transparency = imageTransparency
		uiStroke10.Transparency = imageTransparency
	end

	createSLOpenEffect = function()
		frame.ClipsDescendants = true
		fn7(1)
		frame.Size = UDim2.new(0, 4, 0, 4)
		frame.BackgroundColor3 = Color3.fromRGB(0, 220, 255)
		frame.BackgroundTransparency = 0
		UICorner.CornerRadius = UDim.new(1, 0)
		UIStroke.Transparency = 1
		UIStroke.Thickness = 3
		wait(0.15)
		TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 4, Color = Color3.fromRGB(0, 255, 255) }):Play()
		TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.2 }):Play()
		wait(0.1)
		TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundColor3 = Color3.fromRGB(0, 200, 255), BackgroundTransparency = 0 }):Play()
		wait(0.12)
		UICorner.CornerRadius = UDim.new(0, 4)
		TweenService:Create(frame, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, 500, 0, 4), BackgroundColor3 = Color3.fromRGB(10, 10, 20) }):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 3, Color = Color3.fromRGB(0, 255, 255) }):Play()
		wait(0.35)
		TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 6, Transparency = 0 }):Play()
		wait(0.08)
		TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Thickness = 3, Transparency = 0.1 }):Play()
		wait(0.1)
		UICorner.CornerRadius = UDim.new(0, 16)
		TweenService:Create(frame, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, 500, 0, 350), BackgroundColor3 = Color3.fromRGB(25, 25, 35) }):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 3, Color = Color3.fromRGB(0, 255, 255) }):Play()
		wait(0.3)
		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		frame2.BackgroundTransparency = 0.4
		frame2.Size = UDim2.new(1, 0, 0, 2)
		frame2.Position = UDim2.new(0, 0, 0, 0)
		frame2.ZIndex = 201
		frame2.BorderSizePixel = 0
		frame2.Parent = frame
		TweenService:Create(frame2, TweenInfo.new(0.18, Enum.EasingStyle.Linear), { Position = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 0.8 }):Play()
		wait(0.18)
		frame2:Destroy()
		frame.ClipsDescendants = false
		TweenService:Create(imageLabel, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
		TweenService:Create(Character, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
		TweenService:Create(imageLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 1 }):Play()
		wait(0.08)
		TweenService:Create(textLabel, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		wait(0.06)
		TweenService:Create(textLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		wait(0.08)
		TweenService:Create(textBox, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(uiStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		textBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
		wait(0.08)
		TweenService:Create(imageLabel3, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke7, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(imageLabel4, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke8, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		wait(0.06)
		TweenService:Create(imageLabel5, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke5, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke9, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(imageLabel6, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke6, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke10, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		wait(0.15)
		TweenService:Create(UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Transparency = 0.25, Thickness = 3 }):Play()
	end

	local v = loadKeyFromFile()

	local function fn8(visible)
		local textTransparency = visible and 0 or 1
		textBox.Visible = visible
		imageLabel3.Visible = visible
		imageLabel4.Visible = visible
		imageLabel5.Visible = visible
		imageLabel6.Visible = visible
		textBox.TextTransparency = textTransparency
		textBox.BackgroundTransparency = visible and 0 or 1
		imageLabel3.ImageTransparency = textTransparency
		imageLabel3.BackgroundTransparency = textTransparency
		textButton.TextTransparency = textTransparency
		imageLabel4.ImageTransparency = textTransparency
		imageLabel4.BackgroundTransparency = textTransparency
		textButton2.TextTransparency = textTransparency
		imageLabel5.ImageTransparency = textTransparency
		imageLabel5.BackgroundTransparency = textTransparency
		textButton3.TextTransparency = textTransparency
		imageLabel6.ImageTransparency = textTransparency
		imageLabel6.BackgroundTransparency = textTransparency
		textButton4.TextTransparency = textTransparency
		uiStroke2.Transparency = textTransparency
		uiStroke3.Transparency = textTransparency
		uiStroke7.Transparency = textTransparency
		uiStroke4.Transparency = textTransparency
		uiStroke8.Transparency = textTransparency
		uiStroke5.Transparency = textTransparency
		uiStroke9.Transparency = textTransparency
		uiStroke6.Transparency = textTransparency
		uiStroke10.Transparency = textTransparency
	end

	local function fn9()
		textLabel2.Text = "Checking saved key..."
		textBox.Text = ""
		fn8(false)
	end

	local function fn10(text)
		textLabel2.Text = text or "Enter your key below to continue"
		fn8(true)
	end

	local function fn11(text)
		textLabel2.Text = text or "Server busy. Try Check Key again"
		fn8(true)
		imageLabel3.Visible = false
		imageLabel5.Visible = false
		imageLabel6.Visible = false
		imageLabel3.ImageTransparency = 1
		imageLabel3.BackgroundTransparency = 1
		textButton.TextTransparency = 1
		imageLabel5.ImageTransparency = 1
		imageLabel5.BackgroundTransparency = 1
		textButton3.TextTransparency = 1
		imageLabel6.ImageTransparency = 1
		imageLabel6.BackgroundTransparency = 1
		textButton4.TextTransparency = 1
		uiStroke3.Transparency = 1
		uiStroke7.Transparency = 1
		uiStroke5.Transparency = 1
		uiStroke9.Transparency = 1
		uiStroke6.Transparency = 1
		uiStroke10.Transparency = 1
	end

	if v then
		fn9()
	else
		fn10()
	end

	task.spawn(createSLOpenEffect)
	dragging = false
	dragInput = nil
	dragStart = nil
	local position = nil

	smoothDrag = function(arg)
		local n2 = arg.Position - dragStart
		local udim2 = UDim2.new(position.X.Scale, position.X.Offset + n2.X, position.Y.Scale, position.Y.Offset + n2.Y)
		TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = udim2 }):Play()
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			position = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					dragInput = nil
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			smoothDrag(input)
		end
	end)

	textButton.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel3, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke3, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel3, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke3, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton.MouseEnter:Connect(function()
		TweenService:Create(uiStroke3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 180, 255) }):Play()
	end)

	textButton.MouseLeave:Connect(function()
		TweenService:Create(uiStroke3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(70, 140, 200) }):Play()
	end)

	textButton2.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel4, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke4, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton2.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel4, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke4, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton2.MouseEnter:Connect(function()
		TweenService:Create(uiStroke4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 180, 255) }):Play()
	end)

	textButton2.MouseLeave:Connect(function()
		TweenService:Create(uiStroke4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(70, 140, 200) }):Play()
	end)

	textButton3.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel5, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke5, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton3.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel5, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke5, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton3.MouseEnter:Connect(function()
		TweenService:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(138, 151, 255) }):Play()
	end)

	textButton3.MouseLeave:Connect(function()
		TweenService:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(108, 121, 255) }):Play()
	end)

	textButton4.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel6, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke6, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton4.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel6, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke6, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton4.MouseEnter:Connect(function()
		TweenService:Create(uiStroke6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 100, 255) }):Play()
	end)

	textButton4.MouseLeave:Connect(function()
		TweenService:Create(uiStroke6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(200, 70, 200) }):Play()
	end)

	textButton.MouseButton1Click:Connect(function()
		Notify("Vxeze Hub", "Opening key system... Copying link to clipboard!", 3)
		setclipboard("https://vxezestudio.online/key/key_f13b1dcb65f80955")
	end)

	createSLCloseEffect = function()
		frame.ClipsDescendants = true
		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.new(1, 0, 1, 0)
		frame2.ZIndex = 200
		frame2.BorderSizePixel = 0
		frame2.Parent = frame
		local uiCorner4 = Instance.new("UICorner")
		uiCorner4.CornerRadius = UDim.new(0, 16)
		uiCorner4.Parent = frame2
		TweenService:Create(frame2, TweenInfo.new(0.05, Enum.EasingStyle.Linear), { BackgroundTransparency = 0.6 }):Play()
		wait(0.05)
		TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
		imageLabel.ImageTransparency = 1
		Character.ImageTransparency = 1
		imageLabel2.ImageTransparency = 1
		imageLabel2.BackgroundTransparency = 1
		textLabel.TextTransparency = 1
		textLabel2.TextTransparency = 1
		textBox.TextTransparency = 1
		textBox.BackgroundTransparency = 1
		imageLabel3.ImageTransparency = 1
		imageLabel3.BackgroundTransparency = 1
		textButton.TextTransparency = 1
		imageLabel4.ImageTransparency = 1
		imageLabel4.BackgroundTransparency = 1
		textButton2.TextTransparency = 1
		imageLabel5.ImageTransparency = 1
		imageLabel5.BackgroundTransparency = 1
		textButton3.TextTransparency = 1
		imageLabel6.ImageTransparency = 1
		imageLabel6.BackgroundTransparency = 1
		textButton4.TextTransparency = 1
		uiStroke.Transparency = 1
		uiStroke2.Transparency = 1
		uiStroke3.Transparency = 1
		uiStroke7.Transparency = 1
		uiStroke4.Transparency = 1
		uiStroke8.Transparency = 1
		uiStroke5.Transparency = 1
		uiStroke9.Transparency = 1
		uiStroke6.Transparency = 1
		uiStroke10.Transparency = 1
		wait(0.08)
		local frame3 = Instance.new("Frame")
		frame3.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		frame3.BackgroundTransparency = 0.4
		frame3.Size = UDim2.new(1, 0, 0, 2)
		frame3.Position = UDim2.new(0, 0, 0, 0)
		frame3.ZIndex = 201
		frame3.BorderSizePixel = 0
		frame3.Parent = frame
		TweenService:Create(frame3, TweenInfo.new(0.12, Enum.EasingStyle.Linear), { Position = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 0.9 }):Play()
		wait(0.12)
		frame3:Destroy()
		UICorner.CornerRadius = UDim.new(0, 4)
		TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In), { Size = UDim2.new(0, 500, 0, 4), BackgroundColor3 = Color3.fromRGB(5, 5, 5) }):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 0, Thickness = 3, Color = Color3.fromRGB(0, 255, 255) }):Play()
		wait(0.3)
		TweenService:Create(UIStroke, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 6, Transparency = 0 }):Play()
		wait(0.07)
		UICorner.CornerRadius = UDim.new(1, 0)

		TweenService:Create(frame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 4, 0, 4),
			BackgroundColor3 = Color3.fromRGB(0, 200, 255),
			BackgroundTransparency = 0,
		}):Play()

		TweenService:Create(UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
		wait(0.18)
		TweenService:Create(frame, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.1 }):Play()
		wait(0.08)
		TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
		wait(0.2)
	end

	local flag = false
	local v2 = validateKeyWithServer
	local flag2 = false
	local n2 = 0
	local v3 = nil
	local flag3 = false
	local v4 = nil
	local v5 = nil

	validateKeyWithServer = function(arg)
		local v6 = fn2(arg)

		if flag2 then
			local v7 = n2
			local now = os.clock()

			while flag2 and os.clock() - now < 12 do
				task.wait(0.05)
			end

			if not flag2 and n2 ~= v7 and v3 == v6 then
				return flag3, v4, v5
			end

			if flag2 then
				return false, str .. " verification is still running", nil
			end
		end

		flag2 = true
		local n3 = 0
		local flag4, str2, v7

		while true do
			n3 += 1
			local v8, v9, v10 = v2(v6)

			if v8 or not tostring(v9):find("[VXEZE_TRANSIENT]", 1, true) then
				flag4 = v8
				str2 = v9
				v7 = v10
				break
			end

			if not flag and screenGui and not screenGui.Parent then
				flag4 = false
				str2 = "Verification cancelled"
				v7 = nil
				break
			end

			if n3 < 2 then
				pcall(Notify, "Vxeze Hub", "Server busy. Retrying once...", 2)
				fn(1, n)
			end

			if not (n3 >= 2) then
				continue
			end
			flag4 = v8
			str2 = v9
			v7 = v10
			break
		end

		v3 = v6
		flag3 = flag4 == true
		v4 = str2
		v5 = v7
		n2 += 1
		flag2 = false
		return flag3, v4, v5
	end

	autoCheckSavedKey = function()
		local genv = getgenv()
		local flag4 = genv.Premium == true and type(genv.Key) == "string"
		local v6 = nil

		if flag4 then
			v6 = fn2(genv.Key)
			local flag5 = v6 and v6 ~= ""
			local v7 = nil

			if not flag5 then
				v6 = v7
			end
		end

		v6 = v6 or v or loadKeyFromFile()

		if v6 then
			textBox.Text = v6
			fn9()
			Notify("Vxeze Hub", "Checking saved key...", 2)
			local flag5 = false
			local v7 = nil
			local v8 = nil

			for i = 1, 1 do
				flag5, v7, v8 = validateKeyWithServer(v6)

				if not (flag5 or fn3(v7) or fn5(v7)) then
					if fn6(v7) then
						continue
					end
				end

				break
			end

			if flag5 then
				local str2 = ""

				if v8 then
					str2 = string.format(" (%dh %dm remaining)", v8.hours or 0, v8.minutes or 0)
				end

				Notify("Vxeze Hub", "Key valid!" .. str2, 3)
				local frame2 = Instance.new("Frame")
				frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
				frame2.BackgroundTransparency = 1
				frame2.Size = UDim2.new(1, 0, 1, 0)
				frame2.ZIndex = 100
				frame2.BorderSizePixel = 0
				frame2.Parent = frame
				local uiCorner4 = Instance.new("UICorner")
				uiCorner4.CornerRadius = UDim.new(0, 16)
				uiCorner4.Parent = frame2

				for i = 1, 2 do
					TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 0.6 }):Play()
					wait(0.08)
					TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 1 }):Play()
					wait(0.08)
				end

				frame2:Destroy()
				wait(0.2)
				createSLCloseEffect()
				screenGui:Destroy()
				flag = true
				return true
			end

			if fn3(v7) then
				Notify("Vxeze Hub", "Saved key expired. Please get a new key.", 4)
				deleteKeyFile()
				textBox.Text = ""
				fn10("Saved key expired. Enter a new key")
			elseif fn4(v7) then
				Notify("HWID Reset Required", tostring(v7), 5)
				fn11("Reset HWID in My Premium Keys, then retry")
				textBox.Text = v6
			elseif fn5(v7) then
				Notify("Vxeze Hub", "Active tab limit reached. Close another tab, then try again.", 4)
				fn11("Active tabs are full. Close another tab and retry")
				textBox.Text = v6
			elseif fn6(v7) then
				Notify("Vxeze Hub", "Could not re-check saved key. Keeping it saved.", 4)
				fn11("Server busy. Try Check Key again")
				textBox.Text = v6
			else
				Notify("Vxeze Hub", "Could not re-check saved key: " .. tostring(v7), 4)
				fn10("Enter your key below to continue")
				textBox.Text = v6
			end

			TweenService:Create(uiStroke2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 50, 50) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(80, 20, 20) }):Play()
			local position2 = frame.Position

			for i = 1, 6 do
				local n3 = i % 2 == 0 and 10 or -10
				TweenService:Create(frame, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(position2.X.Scale, position2.X.Offset + n3, position2.Y.Scale, position2.Y.Offset) }):Play()
				wait(0.05)
			end

			TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = position2 }):Play()
			wait(0.3)
			TweenService:Create(uiStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(0, 255, 255) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(35, 35, 45) }):Play()
			return false
		end

		return false
	end

	task.spawn(function()
		task.wait(0.15)
		autoCheckSavedKey()
	end)

	textButton2.MouseButton1Click:Connect(function()
		local text = textBox.Text
		if text == "" then
			Notify("Vxeze Hub", "Please enter a key!", 3)
			return
		end
		Notify("Vxeze Hub", "Validating key with server...", 2)
		local v6, v7, v8 = validateKeyWithServer(text)

		if v6 then
			local str2 = ""

			if v8 then
				str2 = string.format(" (%dh %dm remaining)", v8.hours or 0, v8.minutes or 0)
			end

			Notify("Vxeze Hub", "Key verified!" .. str2, 3)
			local frame2 = Instance.new("Frame")
			frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
			frame2.BackgroundTransparency = 1
			frame2.Size = UDim2.new(1, 0, 1, 0)
			frame2.ZIndex = 100
			frame2.BorderSizePixel = 0
			frame2.Parent = frame
			local uiCorner4 = Instance.new("UICorner")
			uiCorner4.CornerRadius = UDim.new(0, 16)
			uiCorner4.Parent = frame2

			for i = 1, 2 do
				TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 0.6 }):Play()
				wait(0.08)
				TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 1 }):Play()
				wait(0.08)
			end

			frame2:Destroy()
			wait(0.2)
			createSLCloseEffect()
			screenGui:Destroy()
			flag = true
		else
			local v9 = loadKeyFromFile()

			if v9 and fn2(v9) == fn2(text) and fn3(v7) then
				deleteKeyFile()
				fn10("Saved key expired. Enter a new key")
			elseif fn4(v7) then
				fn11("Reset HWID in My Premium Keys, then retry")
				textBox.Text = text
			elseif fn5(v7) then
				fn11("Active tabs are full. Close another tab and retry")
				textBox.Text = text
			elseif fn6(v7) then
				fn11("Server busy. Try Check Key again")
				textBox.Text = text
			else
				fn10("Enter your key below to continue")
				textBox.Text = text
			end

			TweenService:Create(uiStroke2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 50, 50) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(80, 20, 20) }):Play()
			local position2 = frame.Position

			for i = 1, 6 do
				local n3 = i % 2 == 0 and 10 or -10
				TweenService:Create(frame, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(position2.X.Scale, position2.X.Offset + n3, position2.Y.Scale, position2.Y.Offset) }):Play()
				wait(0.05)
			end

			TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = position2 }):Play()
			wait(0.2)

			if fn4(v7) then
				Notify("HWID Reset Required", tostring(v7), 5)
			elseif fn5(v7) then
				Notify("Vxeze Hub", "Active tab limit reached. Close another tab, then try again.", 4)
			elseif fn6(v7) then
				Notify("Vxeze Hub", "Key server is busy. Your key was kept; please retry.", 4)
			else
				Notify("Vxeze Hub", "Invalid Key: " .. tostring(v7), 4)
			end

			wait(0.3)
			TweenService:Create(uiStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(0, 255, 255) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(35, 35, 45) }):Play()
		end
	end)

	textButton3.MouseButton1Click:Connect(function()
		Notify("Vxeze Hub", "Discord link copied to clipboard!", 3)
		setclipboard("https://dsc.gg/vxezehub")
	end)

	textButton4.MouseButton1Click:Connect(function()
		Notify("Vxeze Hub", "Tutorial link copied to clipboard!", 3)
		setclipboard("https://youtu.be/b5kzFdezIl4")
	end)

	repeat
		wait()
	until flag == true
end

getgenv().VxezeKeyVerified = true
local genv = getgenv()

if genv.VxezeKeyVerified ~= true or type(genv.VxezeLicenseWatermark) ~= "string" or not genv.VxezeLicenseWatermark:match("^vwm1%.%d+%.[a-f0-9]+%.[A-Za-z0-9_-]+$") then
	local localPlayer = Players.LocalPlayer

	if localPlayer then
		localPlayer:Kick("[Vxeze Hub] Signed website verification is required.")
	end

	return
end

Environment = getgenv and getgenv() or _G
Environment.EggStealScriptStartedAt = os.clock()

if type(Environment.EggStealHub) == "table" and type(Environment.EggStealHub.Destroy) == "function" then
	pcall(Environment.EggStealHub.Destroy)
end

pcall(function()
	local eggStealSpeedProjectionTest = Environment.EggStealSpeedProjectionTest

	if type(eggStealSpeedProjectionTest) == "table" and type(eggStealSpeedProjectionTest.Disable) == "function" then
		eggStealSpeedProjectionTest.Disable()
		Environment.EggStealSpeedProjectionTest = nil
	end
end)

if type(Environment.EggStealHubConnections) == "table" then
	for _, eggStealHubConnection in ipairs(Environment.EggStealHubConnections) do
		pcall(eggStealHubConnection.Disconnect, eggStealHubConnection)
	end

	table.clear(Environment.EggStealHubConnections)
end

pcall(function()
	local hui

	if type(gethui) == "function" then
		hui = gethui()
	else
		hui = nil

		if type(get_hidden_ui) == "function" then
			hui = get_hidden_ui()
		end
	end

	local localPlayer = game:GetService("Players").LocalPlayer
	local tbl = {}

	if hui then
		table.insert(tbl, hui)
	end

	local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")

	if playerGui then
		table.insert(tbl, playerGui)
	end

	for _, v in ipairs(tbl) do
		if v ~= nil then
			for _, child in ipairs(v:GetChildren()) do
				if child.Name == "FluentRenewed_Egg Steal Hub" or child.Name == "FluentRenewed_Steal An Egg" then
					child:Destroy()
				end
			end
		end
	end
end)

Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService
RunService = game:GetService("RunService")
local TweenService2
TweenService2 = game:GetService("TweenService")
local HttpService
HttpService = game:GetService("HttpService")
local TeleportService
TeleportService = game:GetService("TeleportService")
local GuiService
GuiService = game:GetService("GuiService")
local Workspace
Workspace = game:GetService("Workspace")
local fn7

fn7 = function()
	local world = Workspace:FindFirstChild("World")
	local objects = Workspace:FindFirstChild("__OBJECTS")
	if world and world:FindFirstChild("Areas") then
		return world
	end

	if objects and objects:FindFirstChild("Areas") then
		return objects
	end
	return world or objects
end

local eggStealEffectCleanup = Environment.EggStealEffectCleanup

if type(eggStealEffectCleanup) == "table" and type(eggStealEffectCleanup.Stop) == "function" then
	pcall(eggStealEffectCleanup.Stop)
end

local fn8, localPlayer, v, PlotCmds, Constants, EggItemUtil, AssetItemSerialization, module, Treadmills, FreeGifts
local get, getAreaEggSnapshot, getAreaEggRecord, requestCarryAreaEgg, v2, playerRequest, tbl, tbl2

do
	local eggStealEffectCleanup2 = {
		Alive = false,
		Connections = {},
		Classes = {
			ParticleEmitter = true,
			Trail = true,
			Beam = true,
			Smoke = true,
			Fire = true,
			Sparkles = true,
			Explosion = true,
			Highlight = true,
			ForceField = true,
			SelectionBox = true,
			SelectionSphere = true,
			Atmosphere = true,
			Clouds = true,
		},
		Removed = 0,
		RemovedByClass = {},
		StartedAt = os.clock(),
		Queue = {},
		Queued = setmetatable({}, { __mode = "k" }),
		QueueHead = 1,
		QueueTail = 0,
		Pending = 0,
		DrainConnection = nil,
	}

	local str2 = table.concat({
		"ParticleEmitter",
		"Trail",
		"Beam",
		"Smoke",
		"Fire",
		"Sparkles",
		"Explosion",
		"Highlight",
		"Light",
		"ForceField",
		"SelectionBox",
		"SelectionSphere",
		"PostEffect",
		"Atmosphere",
		"Clouds",
	}, ", ")

	local function fn9(arg)
		while arg ~= nil and arg ~= Workspace do
			if arg:IsA("Model") then
				if Players:GetPlayerFromCharacter(arg) ~= nil then
					return true
				end

				if arg:FindFirstChildOfClass("Humanoid") ~= nil then
					local v3 = Players:FindFirstChild(arg.Name)
					if v3 ~= nil and v3:IsA("Player") then
						return true
					end
				end
			end

			arg = arg.Parent
		end

		return false
	end

	fn8 = function(arg)
		if arg == nil then
			return false
		end

		while arg ~= nil and arg ~= Workspace do
			local name = arg.Name
			if name == "ScrambleLocalVisuals" or name == "ScrambleArena" or name == "ScrambleHazards" or name == "ScrambleFx" or name == "ACTUAL_DRONES" or string.sub(name, 1, 14) == "PersonalDrone_" or string.sub(name, 1, 12) == "DroneVisual_" or arg:GetAttribute("ScrambleDroneId") ~= nil or arg:GetAttribute("ScrambleAnimatedRig") == true then
				return true
			end
			local attribute = arg:GetAttribute("TemplateSource")
			if type(attribute) == "string" and string.sub(attribute, 1, 24) == "Workspace.ACTUAL_DRONES." then
				return true
			end
			arg = arg.Parent
		end

		return false
	end

	eggStealEffectCleanup2.IsProtected = function(arg)
		if fn9(arg) then
			return true
		end

		if fn8(arg) then
			return true
		end
		local eggStealHubVisuals = Workspace:FindFirstChild("EggStealHubVisuals")
		return eggStealHubVisuals ~= nil and (arg == eggStealHubVisuals or arg:IsDescendantOf(eggStealHubVisuals))
	end

	eggStealEffectCleanup2.IsEffect = function(arg)
		return eggStealEffectCleanup2.Classes[arg.ClassName] == true or arg:IsA("Light") or arg:IsA("PostEffect")
	end

	eggStealEffectCleanup2.Remove = function(arg)
		if not eggStealEffectCleanup2.Alive or arg == nil or arg.Parent == nil or not eggStealEffectCleanup2.IsEffect(arg) or eggStealEffectCleanup2.IsProtected(arg) then
			return false
		end

		if arg:IsA("ParticleEmitter") or arg:IsA("Trail") or arg:IsA("Beam") or arg:IsA("Smoke") or arg:IsA("Fire") or arg:IsA("Sparkles") or arg:IsA("Light") or arg:IsA("PostEffect") or arg:IsA("Clouds") or arg:IsA("Highlight") then
			pcall(function()
				arg.Enabled = false
			end)
		elseif arg:IsA("Explosion") or arg:IsA("ForceField") then
			pcall(function()
				arg.Visible = false
			end)
		end

		local className = arg.ClassName
		local ok = pcall(arg.Destroy, arg)

		if ok then
			eggStealEffectCleanup2.Removed = eggStealEffectCleanup2.Removed + 1
			eggStealEffectCleanup2.RemovedByClass[className] = (eggStealEffectCleanup2.RemovedByClass[className] or 0) + 1
		end

		return ok
	end

	eggStealEffectCleanup2.Scan = function(arg)
		local ok, result = pcall(arg.QueryDescendants, arg, str2)
		if not ok or type(result) ~= "table" then
			return
		end
		local now = os.clock()
		local v3, v4, v5 = ipairs(result)
		local n2 = 0

		for _, v6 in v3, v4, v5 do
			if eggStealEffectCleanup2.Alive then
				eggStealEffectCleanup2.Remove(v6)
				n2 += 1

				if os.clock() < (Environment.EggStealStartupCleanupDeadline or 0) and (n2 >= 96 or os.clock() - now >= 0.0015) then
					task.wait()
					now = os.clock()
					n2 = 0
				end

				continue
			end

			break
		end
	end

	eggStealEffectCleanup2.Enqueue = function(arg)
		if not eggStealEffectCleanup2.Alive or eggStealEffectCleanup2.Queued[arg] then
			return
		end
		eggStealEffectCleanup2.Queued[arg] = true
		eggStealEffectCleanup2.QueueTail = eggStealEffectCleanup2.QueueTail + 1
		eggStealEffectCleanup2.Queue[eggStealEffectCleanup2.QueueTail] = arg
		eggStealEffectCleanup2.Pending = eggStealEffectCleanup2.Pending + 1
		if eggStealEffectCleanup2.DrainConnection ~= nil then
			return
		end

		eggStealEffectCleanup2.DrainConnection = RunService.Heartbeat:Connect(function()
			local now = os.clock()
			local n2 = 0

			while eggStealEffectCleanup2.Alive and eggStealEffectCleanup2.QueueHead <= eggStealEffectCleanup2.QueueTail and n2 < 100 and os.clock() - now < 0.0015 do
				local v3 = eggStealEffectCleanup2.Queue[eggStealEffectCleanup2.QueueHead]
				eggStealEffectCleanup2.Queue[eggStealEffectCleanup2.QueueHead] = nil
				eggStealEffectCleanup2.QueueHead = eggStealEffectCleanup2.QueueHead + 1
				eggStealEffectCleanup2.Pending = eggStealEffectCleanup2.Pending - 1
				eggStealEffectCleanup2.Queued[v3] = nil
				n2 += 1
				pcall(eggStealEffectCleanup2.Remove, v3)
			end

			if eggStealEffectCleanup2.QueueTail < eggStealEffectCleanup2.QueueHead then
				local v3 = eggStealEffectCleanup2
				eggStealEffectCleanup2.QueueHead = 1
				v3.QueueTail = 0
				eggStealEffectCleanup2.DrainConnection:Disconnect()
				eggStealEffectCleanup2.DrainConnection = nil
			end
		end)
	end

	eggStealEffectCleanup2.Watch = function(arg)
		table.insert(eggStealEffectCleanup2.Connections, arg.DescendantAdded:Connect(function(descendant)
			if not eggStealEffectCleanup2.Alive or not eggStealEffectCleanup2.IsEffect(descendant) or eggStealEffectCleanup2.IsProtected(descendant) then
				return
			end
			eggStealEffectCleanup2.Enqueue(descendant)
		end))
	end

	eggStealEffectCleanup2.Stop = function()
		eggStealEffectCleanup2.Alive = false

		for _, connection in ipairs(eggStealEffectCleanup2.Connections) do
			pcall(connection.Disconnect, connection)
		end

		table.clear(eggStealEffectCleanup2.Connections)

		if eggStealEffectCleanup2.DrainConnection ~= nil then
			pcall(eggStealEffectCleanup2.DrainConnection.Disconnect, eggStealEffectCleanup2.DrainConnection)
			eggStealEffectCleanup2.DrainConnection = nil
		end

		table.clear(eggStealEffectCleanup2.Queue)
		eggStealEffectCleanup2.Queued = setmetatable({}, { __mode = "k" })
		local v3 = eggStealEffectCleanup2
		eggStealEffectCleanup2.QueueHead = 1
		v3.QueueTail = 0
		eggStealEffectCleanup2.Pending = 0
	end

	eggStealEffectCleanup2.Flush = function()
		while eggStealEffectCleanup2.Alive and eggStealEffectCleanup2.QueueHead <= eggStealEffectCleanup2.QueueTail do
			local v3 = eggStealEffectCleanup2.Queue[eggStealEffectCleanup2.QueueHead]
			eggStealEffectCleanup2.Queue[eggStealEffectCleanup2.QueueHead] = nil
			eggStealEffectCleanup2.QueueHead = eggStealEffectCleanup2.QueueHead + 1
			eggStealEffectCleanup2.Pending = math.max(0, eggStealEffectCleanup2.Pending - 1)
			eggStealEffectCleanup2.Queued[v3] = nil
			pcall(eggStealEffectCleanup2.Remove, v3)
		end
	end

	Environment.EggStealEffectCleanup = eggStealEffectCleanup2
	local Lighting = game:GetService("Lighting")
	Environment.EggStealStartupCleanupDeadline = nil
	local eggStealTextureCleanup = Environment.EggStealTextureCleanup

	if type(eggStealTextureCleanup) == "table" and type(eggStealTextureCleanup.Stop) == "function" then
		pcall(eggStealTextureCleanup.Stop)
	end

	local eggStealTextureCleanup2 = {
		Alive = false,
		Completed = false,
		StartedAt = os.clock(),
		FinishedAt = nil,
		Classes = {
			Decal = true,
			Texture = true,
			SurfaceAppearance = true,
			SpecialMesh = true,
			Shirt = true,
			Pants = true,
			ShirtGraphic = true,
		},
		ObjectsProcessed = 0,
		PropertiesChanged = 0,
	}

	local str3 = table.concat({
		"BasePart",
		"Decal",
		"Texture",
		"SurfaceAppearance",
		"SpecialMesh",
		"Shirt",
		"Pants",
		"ShirtGraphic",
	}, ", ")

	eggStealTextureCleanup2.IsProtected = function(arg)
		if fn9(arg) then
			return true
		end

		if fn8(arg) then
			return true
		end
		local eggStealHubVisuals = Workspace:FindFirstChild("EggStealHubVisuals")
		local flag = eggStealHubVisuals ~= nil
		local flag2

		if flag then
			flag2 = arg == eggStealHubVisuals or arg:IsDescendantOf(eggStealHubVisuals)
		else
			flag2 = flag
		end

		return flag2
	end

	eggStealTextureCleanup2.IsTextureObject = function(arg)
		return arg:IsA("BasePart") or eggStealTextureCleanup2.Classes[arg.ClassName] == true
	end

	local function fn10(arg, arg2, arg3)
		local ok, result = pcall(function()
			return arg[arg2]
		end)

		if not ok or result == arg3 then
			return false
		end

		return (pcall(function()
			arg[arg2] = arg3
		end))
	end

	eggStealTextureCleanup2.Apply = function(arg)
		if not eggStealTextureCleanup2.Alive or arg == nil or arg.Parent == nil or not eggStealTextureCleanup2.IsTextureObject(arg) or eggStealTextureCleanup2.IsProtected(arg) then
			return false
		end
		eggStealTextureCleanup2.ObjectsProcessed = eggStealTextureCleanup2.ObjectsProcessed + 1
		local flag = false

		if arg:IsA("BasePart") then
			flag = fn10(arg, "Material", Enum.Material.SmoothPlastic)
			flag = flag or false

			if arg:IsA("MeshPart") then
				local textureID = fn10(arg, "TextureID", "") or flag
				local renderFidelity = fn10(arg, "RenderFidelity", Enum.RenderFidelity.Performance) or textureID
				flag = fn10(arg, "DoubleSided", false) or renderFidelity
			elseif arg:IsA("PartOperation") then
				flag = fn10(arg, "RenderFidelity", Enum.RenderFidelity.Performance) or flag
			end
		end

		if arg:IsA("Decal") or arg:IsA("Texture") then
			flag = fn10(arg, "Transparency", 1) or flag
		end

		if arg:IsA("SurfaceAppearance") then
			local colorMap = fn10(arg, "ColorMap", "") or flag
			local normalMap = fn10(arg, "NormalMap", "") or colorMap
			local metalnessMap = fn10(arg, "MetalnessMap", "") or normalMap
			flag = fn10(arg, "RoughnessMap", "") or metalnessMap
		end

		if arg:IsA("SpecialMesh") then
			flag = fn10(arg, "TextureId", "") or flag
		end

		local shirtTemplate

		if arg:IsA("Shirt") then
			shirtTemplate = fn10(arg, "ShirtTemplate", "") or flag
		elseif arg:IsA("Pants") then
			shirtTemplate = fn10(arg, "PantsTemplate", "") or flag
		elseif arg:IsA("ShirtGraphic") then
			shirtTemplate = fn10(arg, "Graphic", "") or flag
		else
			shirtTemplate = flag
		end

		if shirtTemplate then
			eggStealTextureCleanup2.PropertiesChanged = eggStealTextureCleanup2.PropertiesChanged + 1
		end

		return shirtTemplate
	end

	eggStealTextureCleanup2.Scan = function(arg)
		if not eggStealTextureCleanup2.Alive then
			return 0
		end
		local ok, result = pcall(arg.QueryDescendants, arg, str3)
		if not ok or type(result) ~= "table" then
			return 0
		end
		local objectsProcessed = eggStealTextureCleanup2.ObjectsProcessed
		local now = os.clock()
		local v3, v4, v5 = ipairs(result)
		local n2 = 0

		for _, v6 in v3, v4, v5 do
			if eggStealTextureCleanup2.Alive then
				pcall(eggStealTextureCleanup2.Apply, v6)
				n2 += 1

				if os.clock() < (Environment.EggStealStartupCleanupDeadline or 0) and (n2 >= 64 or os.clock() - now >= 0.0015) then
					task.wait()
					now = os.clock()
					n2 = 0
				end

				continue
			end

			break
		end

		return eggStealTextureCleanup2.ObjectsProcessed - objectsProcessed
	end

	eggStealTextureCleanup2.Stop = function()
		eggStealTextureCleanup2.Alive = false
	end

	Environment.EggStealTextureCleanup = eggStealTextureCleanup2
	eggStealTextureCleanup2.Completed = true
	eggStealTextureCleanup2.FinishedAt = os.clock()
	eggStealTextureCleanup2.Alive = false
	eggStealEffectCleanup2.Flush()
	eggStealEffectCleanup2.Stop()
	Environment.EggStealStartupCleanupDeadline = nil

	for _, child in ipairs(Workspace:GetChildren()) do
		if child:IsA("StringValue") and (string.sub(child.Name, 1, 16) == "EggStealHubPhase" or string.sub(child.Name, 1, 17) == "EggStealHubError_" or string.sub(child.Name, 1, 23) == "EggStealHubNativeError_") then
			child:Destroy()
		end
	end

	localPlayer = Players.LocalPlayer
	v = nil
	local library = ReplicatedStorage:FindFirstChild("Library")
	local directory = ReplicatedStorage:FindFirstChild("Directory")

	if library ~= nil and directory ~= nil then
		EggCmds = require(library.Client.EggCmds)
		PlotCmds = require(library.Client.PlotCmds)
		Save = require(library.Client.Save)
		Network = require(library.Client.Network)
		Constants = require(library.Globals.Constants)
		EggItemUtil = require(library.Util.EggItemUtil)
		AssetItemSerialization = require(library.Util.AssetItemSerialization)
		require(library.Util.AssetItemUtil)
		local assetEarnings = library.Util:FindFirstChild("AssetEarnings")
		module = assetEarnings and require(assetEarnings) or nil
		Assets = require(directory.Assets)
		RarityDirectory = require(directory.Rarity)
		Mutations = require(library.Modules.Mutations)
		Treadmills = require(directory.Treadmills)
		Gears = require(directory.Gears)
		FreeGifts = require(directory.FreeGifts)
		Trails = require(directory.Trails)
	else
		local shared = ReplicatedStorage:WaitForChild("Shared")
		local client = ReplicatedStorage:WaitForChild("Client")
		local data = ReplicatedStorage:WaitForChild("Data")
		local EggState = require(client:WaitForChild("EggState"))
		local PlotState = require(client:WaitForChild("PlotState"))
		local Remotes = require(shared:WaitForChild("Remotes"))
		v = Remotes
		local EggRecords = require(shared.Util:WaitForChild("EggRecords"))
		local AssetItems = require(shared.Util:WaitForChild("AssetItems"))
		module = require(shared.Util:WaitForChild("AssetEarnings"))

		EggCmds = {
			AreaEggSnapshotUpdated = EggState.FieldRefreshed,
			AreaEggUpdated = EggState.FieldShifted,
			AreaEggRemoved = EggState.FieldGone,
			AreaEggRareSpawnsRevealed = EggState.RarityRevealed,
			AreaEggCarryStateChanged = EggState.CarryChanged,
			AreaEggClaimed = EggState.FieldClaimed,
			GetAreaEggSnapshot = EggState.ReadFieldEggs,
			GetAreaEggRecord = EggState.ReadFieldEgg,
			GetOwnerRuntimeRecords = EggState.ReadOwnerEggs,
			GetRuntimeRecord = EggState.ReadOwnedEgg,
			RequestCarryAreaEgg = EggState.CarryFieldEgg,
			RequestDropHeldAreaEgg = EggState.DropFieldEgg,
			RequestPlaceEgg = EggState.PlantEgg,
			RequestHatchEgg = EggState.BeginHatch,
			RequestCompleteHatchEgg = EggState.FinishHatch,
			RequestEquipTool = EggState.WearEggTool,
			RequestUnequipTool = EggState.DoffEggTool,
		}

		EggCmds.IsLocalEggReady = function(arg)
			local ok, result = pcall(EggState.IsReadyToHatch, arg)
			return ok and result == true
		end

		PlotCmds = {
			GetMySlot = PlotState.ResolveLocalSlot,
			GetPlotData = function()
				return PlotState.ResolvePlot()
			end,
			IsWorldPositionWithinLocalPlotBounds = PlotState.ContainsLocalPoint,
		}

		Save = require(shared:WaitForChild("Save"))
		Network = {}

		Network.Invoke = function(arg, ...)
			if typeof(arg) == "Instance" and arg:IsA("RemoteFunction") then
				return arg:InvokeServer(...)
			end

			if typeof(arg) == "Instance" and arg:IsA("RemoteEvent") then
				arg:FireServer(...)
				return true
			end

			if type(arg) == "function" then
				return arg(...)
			end
			error("Unsupported remote invoke endpoint: " .. tostring(arg))
		end

		Network.Fire = function(arg, ...)
			if typeof(arg) == "Instance" and arg:IsA("RemoteEvent") then
				arg:FireServer(...)
				return true
			end

			if typeof(arg) == "Instance" and arg:IsA("RemoteFunction") then
				task.spawn(arg.InvokeServer, arg, ...)
				return true
			end

			if type(arg) == "function" then
				arg(...)
				return true
			end
			error("Unsupported remote fire endpoint: " .. tostring(arg))
		end

		Network.Fired = function(arg)
			return arg.OnClientEvent
		end

		Constants = require(shared.Globals:WaitForChild("Constants"))

		Constants.NETWORK_MAP = {
			Guards = { REPORT_GUARD_HIT = Remotes.GuardPatrol and Remotes.GuardPatrol.ForestStrike or nil },
			RuntimeSync = {},
			Treadmills = {
				REQUEST_EQUIP_STATIC = Remotes.Treadmill.AskWearStill,
				REQUEST_UNEQUIP = Remotes.Treadmill.AskDoff,
				REQUEST_UPGRADE = Remotes.Treadmill.AskTierRaise,
			},
			Backpack = {
				EQUIP_BEST = Remotes.Haul.WearBest,
				SET_AUTO_SELL_STATE = Remotes.Haul.WriteAutoSell,
				GET_AUTO_SELL_STATE = Remotes.Haul.FetchAutoSell,
			},
			Index = {
				REQUEST_CLAIM_ALL = Remotes.Codex.AskRedeemAll,
				REQUEST_CLAIM_LIMITED_EGG_REWARD = Remotes.Codex.AskRedeemLimitedEgg,
			},
			OfflineAssets = { REQUEST_REDEEM = Remotes.AwayEarnings.AskCollect },
			Bat = { ACTIVATE = Remotes.BatSwing.Trigger },
			Plots = { REQUEST_BASE_UPGRADE = Remotes.Homestead.AskBaseTierRaise },
			FreeGifts = {},
			GroupReward = { CLAIM_REWARD = Remotes.GroupPerk.RedeemPerk },
			Trails = {
				REQUEST_SELECT = Remotes.Trailwear.AskChoose,
				REQUEST_PURCHASE = Remotes.Trailwear.AskPurchase,
			},
			AssetInventory = { SELL_ALL_ASSETS = Remotes.PetSatchel.SellEveryPet, SELL_ASSET = Remotes.PetSatchel.SellPet },
		}

		EggItemUtil = { GetGrowthDuration = EggRecords.GrowthDuration, GetWeightKgForScale = EggRecords.WeightKgForScale }
		AssetItemSerialization = { Deserialize = AssetItems.Decode }
		Assets = require(data:WaitForChild("Assets"))
		RarityDirectory = require(data:WaitForChild("Rarity"))
		local Mutations_ = require(shared.Modules:WaitForChild("Mutations"))
		Mutations = setmetatable({ GetMutations = Mutations_.All }, { __index = Mutations_ })
		Treadmills = require(data:WaitForChild("Treadmills"))
		Gears = require(data:WaitForChild("Gears"))
		FreeGifts = { Directory = {} }
		Trails = require(data:WaitForChild("Trails"))
	end

	get = type(Save.Get) == "function" and Save.Get or Save.Peek

	if type(get) ~= "function" then
		error("Save module has no Get/Peek reader")
	end

	task.wait()
	getAreaEggSnapshot = EggCmds.GetAreaEggSnapshot
	getAreaEggRecord = EggCmds.GetAreaEggRecord
	requestCarryAreaEgg = EggCmds.RequestCarryAreaEgg
	v2 = nil
	playerRequest = nil
	local client = ReplicatedStorage:FindFirstChild("Client")
	client = client and client:FindFirstChild("AreaEggResetWall")

	if client ~= nil and client:IsA("ModuleScript") then
		local ok, result = pcall(require, client)

		if ok and type(result) == "table" then
			v2 = result
		end
	end

	local shared = ReplicatedStorage:FindFirstChild("Shared")
	shared = shared and shared:FindFirstChild("Types")
	shared = shared and shared:FindFirstChild("AreaEggs")

	if shared ~= nil and shared:IsA("ModuleScript") then
		local ok, result = pcall(require, shared)

		if ok and type(result) == "table" and type(result.DropReasons) == "table" then
			playerRequest = result.DropReasons.PlayerRequest
		end
	end

	tbl = {
		SimpleUiVersion = 17,
		Language = "English",
		AutoSteal = false,
		AntiHitSteal = false,
		ManualCarryLift = false,
		AvoidTraps = false,
		AutoPlace = false,
		AutoHatch = false,
		PrioritizeMoneyPerSecond = false,
		TreadmillActionGuard = true,
		TPWalkEnabled = false,
		TPWalkSpeed = 1,
		TPWalkStepCap = 2.25,
		TPWalkWallGuard = true,
		AutoEquipBest = false,
		AutoDropHeldEgg = false,
		AutoBatAura = false,
		AutoStealFromPlayers = false,
		PlayerStealRarities = { Secret = true, Eternal = true, Divine = true },
		AutoEquipBat = false,
		AutoTreadmillTraining = false,
		AutoTreadmillUpgrade = false,
		AutoBaseUpgrade = false,
		AutoClaimFreeGifts = false,
		AutoClaimGroupReward = false,
		AutoClaimIndexRewards = false,
		AutoEquipBestTrail = false,
		AutoBuyTrail = false,
		AutoEquipBestGear = false,
		AutoSellSelected = false,
		AutoSellAllEligible = false,
		SyncAutoSellRarities = false,
		AntiAFK = true,
		VisualCleanup = false,
		FPSBoost = false,
		AutoScrambleBoss = false,
		AutoClaimScrambleMastery = false,
		ScrambleClaimInfinite = true,
		ScrambleBossDodge = true,
		ScrambleBossRescue = true,
		ScrambleBossAttackDelay = 0.75,
		ScrambleBossAttackRange = 16,
		AutoScrambleFarm = false,
		AutoScrambleShop = false,
		AutoScrambleVault = false,
		SelectedScrambleOffers = {},
		ScramblePurchaseQuantity = 1,
		ScrambleMoveSpeed = 650,
		ScrambleDroneArrivalDistance = 4.5,
		ScrambleActionDelay = 0.5,
		StealTeleportToEgg = false,
		StealMovementMode = "Tween",
		AutoFarmCycle = false,
		AutoServerHop = false,
		EggESP = false,
		GuardBypass = true,
		AntiHit = false,
		GodMode = true,
		AntiRagdoll = true,
		NoClipMovement = true,
		ObfuscationCompatibility = true,
		SuppressRuntimeHeuristics = true,
		TargetPriority = "Rarest",
		SelectedTargetPriorities = { Rarest = true },
		PreemptHigherPriority = true,
		SelectedArenas = {},
		PreferredStealArena = "Titan Temple",
		ArenaPriority = {
			"Titan Temple",
			"Cherry Blossom",
			"Cosmic",
			"Prehistoric",
			"Abyss Ocean",
			"Volcano",
			"Snow",
			"Jungle",
			"Desert",
			"Lake",
			"Forest",
		},
		SelectedCategories = {},
		SelectedRarities = {},
		BigEggOnly = false,
		MinEggScale = 6,
		RequiredMutations = {},
		SellCategories = {},
		SellRarities = {},
		SellMutations = {},
		AutoSellRaritiesSelection = {},
		WantedTrails = { BlueTrail = true },
		TweenSpeed = 650,
		StealReturnSpeedMultiplier = 1.125,
		StealReturnWaypointDistance = 30,
		StealReturnZigzagWidth = 12,
		StealReturnWallInset = 6,
		StealReturnZigzagSpacing = 150,
		StealReturnZigzagMaxPoints = 8,
		EscapeTweenSpeedFloor = 1000,
		StealFinalSprintSpeed = 1150,
		StealDeliveryOutsideDistance = 50,
		StealDeliverySafeDepth = 46,
		StealDeliveryRepairDepth = 40,
		StealDeliveryDeepPushSpeed = 360,
		RetryDelay = 0.05,
		StealPreRequestDelay = 0.25,
		StealRequestTimeout = 3,
		StealCarryConfirmTimeout = 5,
		StealTweenRideMode = UserInputService.TouchEnabled and "No Ride" or "Ride Guard",
		StealRideVisual = not UserInputService.TouchEnabled,
		MobileDirectRide = true,
		StealCloneHumanoid = true,
		StealRequestAttempts = 8,
		EggCheckerRefreshInterval = 3,
		ArrivalDistance = 12,
		FarmDelay = 1,
		PlaceDelay = 2,
		HatchDelay = 1.5,
		EquipDelay = 6,
		SellDelay = 2,
		SellPetAmount = 1000000,
		SellEggAmount = 1000000,
		UtilityDelay = 2,
		AttackDelay = 0.6,
		AuraRange = 12,
		AutoServerHopDelay = 2,
		ESPDistance = 3000,
	}

	tbl2 = {
		Alive = true,
		StartupTimings = { StartedAt = Environment.EggStealScriptStartedAt, Phases = {} },
		SafeZoneBarrierClearSince = nil,
		SafeZoneBarrierReason = nil,
		Moving = false,
		MoveGeneration = 0,
		IsCarrying = false,
		CarryUid = nil,
		CarryAreaId = nil,
		CarryRunBackWakeDelayRequired = false,
		CarryStartedAt = 0,
		CarryConfirmedAt = 0,
		CarryToolConfirmedAt = 0,
		CarryConfirmationGeneration = 0,
		Status = "Ready",
		ServerHopPending = false,
		ServerHopTarget = nil,
		ServerHopStartedAt = 0,
		FarmCycleStatus = "Disabled",
		FarmCycleActionBusy = false,
		FarmCycleLastSellResult = "None",
		FarmServiceStatus = "None",
		FarmCycleNextPlaceScanAt = 0,
		FarmCyclePlacePendingUntil = 0,
		PlaceEggLimit = 30,
		LastError = "None",
		Workers = {},
		Connections = {},
		Scramble = {
			Supported = false,
			Snapshot = nil,
			SnapshotAt = 0,
			SnapshotSource = nil,
			SignalFull = nil,
			SignalState = nil,
			SignalReady = nil,
			SignalRevision = -1,
			SignalFullRevision = -1,
			Bootstrapped = false,
			BootstrapSource = nil,
			DroneRecords = {},
			DropRecords = {},
			Status = "Waiting for Dr Scramble",
			LastError = nil,
			LastSamples = nil,
			LastTargetId = nil,
			LastTargetLabel = nil,
			CombatTargetId = nil,
			CombatTargetMissingSince = nil,
			LastTargetSelectionRefreshAt = 0,
			LastScoutAt = 0,
			HigherVisualWaitId = nil,
			HigherVisualWaitSince = nil,
			LastPurchaseId = nil,
			LastPurchaseAt = 0,
			FarmEntryPending = false,
			FarmWasActive = false,
			FarmWindowToken = nil,
			PriorityEggCache = nil,
			VaultInterfaceShown = false,
			VaultClaimedAt = 0,
			Connections = {},
		},
		Blacklist = {},
		PrimerBlacklist = {},
		PrimerFailureCounts = {},
		Markers = {},
		IntegrityRoot = nil,
		IntegrityStates = {},
		IntegrityScans = 0,
		IntegrityMatches = 0,
		IntegrityScanError = "None",
		IntegrityPatches = 0,
		RuntimeChallenge = nil,
		RuntimeSequence = 0,
		LastRuntimeHeartbeatAt = 0,
		RuntimeHeartbeatsForwarded = 0,
		RuntimeBackupHeartbeats = 0,
		RuntimeHeartbeatStalls = 0,
		RuntimeReportsBlocked = 0,
		NetworkFireHooked = false,
		NetworkFireClosure = nil,
		GuardNamecallHooked = false,
		GuardNamecallHookState = nil,
		GuardHitsBlocked = 0,
		GodModePulses = 0,
		GuardPartsNeutralized = 0,
		ProtectedHumanoid = nil,
		ProtectedHumanoidState = nil,
		NoClipStates = {},
		NoClipParts = nil,
		NoClipCharacter = nil,
		NoClipConnection = nil,
		NoClipEnabled = false,
		NoClipPartConnections = setmetatable({}, { __mode = "k" }),
		RideRigPool = nil,
		StealHumanoidPool = nil,
		GuardPartStates = setmetatable({}, { __mode = "k" }),
		GuardPartClass = setmetatable({}, { __mode = "k" }),
		GuardContainers = setmetatable({}, { __mode = "k" }),
		GuardScanComplete = false,
		MoveTrace = {},
		RouteTrace = {},
		TargetDirty = true,
		TargetRevision = 0,
		TargetArenaRankScratch = {},
		ActiveTargetUid = nil,
		PendingTargetUid = nil,
		TargetRateCache = {},
		TargetRateDataLoaded = false,
		TargetRateData = nil,
		Checker = {
			Enabled = false,
			Dirty = true,
			SelectedUid = nil,
			Entries = {},
			Cards = {},
			CardPool = {},
			LastSignature = nil,
			SignatureCache = {},
			SignatureGeneration = 0,
			LastCount = nil,
			SelectionInitialized = false,
			LastSelectionUid = nil,
			SelectedESPVisible = nil,
			SelectedESPState = {},
			ManualBusy = false,
		},
		PlayerSteal = {
			Busy = false,
			ManualBusy = false,
			AutoBusy = false,
			Mode = nil,
			TargetUserId = nil,
			Status = "Waiting for a player carrying an egg",
			RetryAt = {},
			Rows = {},
			HitRange = nil,
			ActiveScratch = {},
			CarrierScratch = {},
			NameKeyScratch = {},
			LastUiStatus = nil,
			LastUiRangeKey = nil,
		},
		AntiHitSteal = {
			Active = false,
			Uid = nil,
			LastEscapedUid = nil,
			StartedAt = 0,
			EndsAt = 0,
			Pulses = 0,
			LastTarget = nil,
			LastReason = nil,
			VisualCharacter = nil,
			VisualCamera = nil,
			VisualCameraSubject = nil,
			VisualCameraType = nil,
			VisualCameraConnection = nil,
			VisualHolding = false,
			VisualCameraCFrame = nil,
			VisualCameraFocus = nil,
			VisualPickupPivot = nil,
		},
		ManualCarryLift = nil,
		DroppedTargetUid = nil,
		DroppedTargetDeadline = 0,
		RespawnRecoveryUid = nil,
		LastRetiredCarryRequest = nil,
		SuppressDroppedCarryUid = nil,
		ForestPrimerDropInFlight = nil,
		ForestPrimerDropError = nil,
		RunBackReadyTrace = {},
		StealPresentationState = {
			Depth = 0,
			Character = nil,
			Humanoid = nil,
			Animate = nil,
			AnimateDisabled = nil,
			AutoRotate = nil,
			AnimationPlayedConnection = nil,
		},
		LastDroppedTargetUid = nil,
		LastRecoveredDroppedUid = nil,
		LastTargetSwitch = "None",
		SellTrace = {},
		AntiAfkPulses = 0,
		LastAntiAfkAt = 0,
		AntiAfkDisabledConnections = {},
		AntiAfkIdledConnection = nil,
		AntiAfkIdledCallback = nil,
		AntiAfkPulseBusy = false,
		Event = {},
		FPS = {
			Applied = false,
			Applying = false,
			States = setmetatable({}, { __mode = "k" }),
			Connections = {},
			ObjectsProcessed = 0,
			PropertiesChanged = 0,
		},
		Metrics = {
			Stolen = 0,
			Placed = 0,
			Hatched = 0,
			Equipped = 0,
			Dropped = 0,
			BatHits = 0,
			Upgrades = 0,
			Rewards = 0,
			Trails = 0,
			Sold = 0,
			TreadmillEscapes = 0,
			TPWalkPulses = 0,
			TPWalkBlocked = 0,
			Gears = 0,
			StealRequests = 0,
			StealRequestTimeouts = 0,
			StealRequestErrors = 0,
			StealToolRecoveries = 0,
			FastCarryReturns = 0,
			ScrambleDroneSwings = 0,
			ScrambleDropsVisited = 0,
			ScrambleSamplesEarned = 0,
			ScramblePurchases = 0,
			ScrambleLostPartsCollected = 0,
			ScrambleVaultClaims = 0,
			Errors = 0,
		},
		CollectionService = game:GetService("CollectionService"),
		Lighting = game:GetService("Lighting"),
		Terrain = Workspace:FindFirstChildOfClass("Terrain"),
		EffectCleanup = eggStealEffectCleanup2,
		TextureCleanup = eggStealTextureCleanup2,
		VisualCleanup = { Enabled = false, Running = false, Generation = 0, LastError = nil },
		SetVisualCleanup = function(arg)
			local visualCleanup = arg == true
			tbl.VisualCleanup = visualCleanup
			local visualCleanup2 = tbl2.VisualCleanup
			visualCleanup2.Enabled = visualCleanup
			visualCleanup2.Generation = visualCleanup2.Generation + 1
			local generation = visualCleanup2.Generation

			if not visualCleanup then
				eggStealEffectCleanup2.Stop()
				eggStealTextureCleanup2.Stop()
				Environment.EggStealStartupCleanupDeadline = nil
				return true
			end

			if visualCleanup2.Running then
				return true
			end
			visualCleanup2.Running = true
			visualCleanup2.LastError = nil

			task.spawn(function()
				eggStealEffectCleanup2.Stop()
				eggStealEffectCleanup2.Alive = true
				eggStealEffectCleanup2.Removed = 0
				table.clear(eggStealEffectCleanup2.RemovedByClass)
				eggStealEffectCleanup2.StartedAt = os.clock()
				eggStealEffectCleanup2.Queue = {}
				eggStealEffectCleanup2.Queued = setmetatable({}, { __mode = "k" })
				local v3 = eggStealEffectCleanup2
				eggStealEffectCleanup2.QueueHead = 1
				v3.QueueTail = 0
				eggStealEffectCleanup2.Pending = 0
				eggStealTextureCleanup2.Alive = true
				eggStealTextureCleanup2.Completed = false
				eggStealTextureCleanup2.StartedAt = os.clock()
				eggStealTextureCleanup2.FinishedAt = nil
				eggStealTextureCleanup2.ObjectsProcessed = 0
				eggStealTextureCleanup2.PropertiesChanged = 0
				Environment.EggStealStartupCleanupDeadline = os.clock() + 8

				local ok, result = xpcall(function()
					eggStealEffectCleanup2.Watch(Workspace)
					eggStealEffectCleanup2.Watch(Lighting)
					eggStealEffectCleanup2.Scan(Workspace)
					eggStealEffectCleanup2.Scan(Lighting)
					if generation ~= visualCleanup2.Generation or not visualCleanup2.Enabled then
						return
					end
					eggStealTextureCleanup2.Scan(Workspace)
					eggStealTextureCleanup2.Scan(Lighting)
				end, debug.traceback)

				eggStealTextureCleanup2.Completed = true
				eggStealTextureCleanup2.FinishedAt = os.clock()
				eggStealTextureCleanup2.Alive = false
				Environment.EggStealStartupCleanupDeadline = nil
				local enabled = generation ~= visualCleanup2.Generation and visualCleanup2.Enabled

				if generation ~= visualCleanup2.Generation or not visualCleanup2.Enabled then
					eggStealEffectCleanup2.Stop()
				else
					eggStealEffectCleanup2.Flush()
				end

				visualCleanup2.Running = false

				if not ok then
					visualCleanup2.LastError = tostring(result)
				end

				if enabled and tbl2.Alive then
					tbl2.SetVisualCleanup(true)
				end
			end)

			return true
		end,
	}
end

local tbl3

tbl3 = {
	Scrambled = "MutationConsumable",
	["Experiment #001"] = "LimitedTimeExperimentPet",
	["Nibbles #013"] = "Nibbles013",
	["2x Cash Booster"] = "CashBooster",
	["1.25x Speed"] = "SpeedBoost",
	["2x Treadmill Booster"] = "TreadmillBooster",
}

local tbl4

tbl4 = {
	"Scrambled",
	"Experiment #001",
	"Nibbles #013",
	"2x Cash Booster",
	"1.25x Speed",
	"2x Treadmill Booster",
}

local fn9

fn9 = function(arg)
	local scramble = type(v) == "table" and v.Scramble or nil
	local flag = type(scramble) == "table" and scramble[arg] or nil
	if typeof(flag) == "Instance" then
		return flag
	end
	return nil
end

local fn10

do
	local n2 = 0.75

	local function fn11(arg)
		local tbl5 = {}

		for k, v3 in pairs(arg) do
			tbl5[k] = v3
		end

		return tbl5
	end

	local function fn12(arg)
		if type(arg) ~= "table" then
			return
		end
		local droneRecords = tbl2.Scramble.DroneRecords

		if arg.Full == true then
			table.clear(droneRecords)
		end

		local v3 = pairs
		local removes = type(arg.Removes) == "table" and arg.Removes or {}

		for _, remove in v3(removes) do
			local id = type(remove) == "table" and remove.Id or remove

			if id ~= nil then
				droneRecords[tostring(id)] = nil
			end
		end

		local upserts = type(arg.Upserts) == "table" and arg.Upserts or arg

		for _, upsert in pairs(upserts) do
			if type(upsert) == "table" and upsert.Id ~= nil then
				droneRecords[tostring(upsert.Id)] = upsert
			end
		end
	end

	local function fn13(arg)
		if type(arg) ~= "table" then
			return
		end
		local dropRecords = tbl2.Scramble.DropRecords
		local upserts = type(arg.Upserts) == "table" and arg.Upserts or arg

		for _, upsert in pairs(upserts) do
			local flag = type(upsert) == "table" and upsert.Id ~= nil

			if flag then
				flag = upsert.OwnerUserId == nil

				if not flag then
					local userId = localPlayer.UserId
					flag = tonumber(upsert.OwnerUserId) == userId
				end
			end

			if flag then
				dropRecords[tostring(upsert.Id)] = upsert
			end
		end
	end

	local function fn14(arg)
		if type(arg) ~= "table" then
			return
		end

		for _, v3 in pairs(arg) do
			local id = type(v3) == "table" and v3.Id or v3

			if id ~= nil then
				tbl2.Scramble.DropRecords[tostring(id)] = nil
			end
		end
	end

	fn10 = function(arg, bootstrapSource)
		if type(arg) ~= "table" or type(arg.Window) ~= "table" or type(arg.State) ~= "table" then
			return false
		end
		local scramble = tbl2.Scramble
		local signalFullRevision = tonumber(arg.Revision) or -1
		if signalFullRevision < (scramble.SignalFullRevision or -1) then
			return false
		end
		local signalFull = scramble.SignalFull
		local window = type(signalFull) == "table" and signalFull.Window or nil
		local window2 = arg.Window

		if window then
			window = window.StartsAt or window.EndsAt
		end

		local startsAt = window2.StartsAt or window2.EndsAt

		if window ~= nil and startsAt ~= nil and window ~= startsAt then
			table.clear(scramble.DroneRecords)
			table.clear(scramble.DropRecords)
		end

		scramble.SignalFull = fn11(arg)
		scramble.SignalFullRevision = signalFullRevision
		scramble.BootstrapSource = bootstrapSource

		if (scramble.SignalRevision or -1) <= signalFullRevision then
			scramble.SignalRevision = signalFullRevision
			scramble.SignalState = arg.State
			scramble.SignalReady = arg.Ready
		end

		if type(arg.Drones) == "table" then
			fn12(arg.Drones)
		end

		if type(arg.Drops) == "table" then
			fn13(arg.Drops)
		end

		return true
	end

	local function fn15()
		local scramble = tbl2.Scramble
		if scramble.Bootstrapped then
			return
		end
		scramble.Bootstrapped = true

		if scramble.SignalFull == nil and type(filtergc) == "function" then
			local ok, result = pcall(filtergc, "table", { Keys = { "Window", "State", "Revision" } }, false)

			if ok and type(result) == "table" then
				local v3, v4, v5 = ipairs(result)
				local n3 = -math.huge
				local n4 = -math.huge
				local v6 = nil

				for _, v7 in v3, v4, v5 do
					if type(v7) == "table" and type(v7.Window) == "table" and type(v7.State) == "table" and type(v7.Shop) == "table" and type(v7.Revision) == "number" then
						local n5 = tonumber(v7.Window.NextAt) or tonumber(v7.Window.EndsAt) or 0
						local flag = n5 > n3
						local flag2

						if flag then
							flag2 = flag
						else
							flag2 = n5 == n3 and v7.Revision > n4
						end

						if flag2 then
							n4 = v7.Revision
							n3 = n5
							v6 = v7
						end
					end
				end

				if v6 ~= nil then
					fn10(v6, "ClientGC")
				end
			end
		end

		if scramble.SignalFull == nil then
			local Request = fn9("Request")

			if Request ~= nil and Request:IsA("RemoteFunction") then
				local ok, result = pcall(Request.InvokeServer, Request, "Snapshot")

				if ok and type(result) == "table" then
					fn10(type(result.Snapshot) == "table" and result.Snapshot or result, "Request")
				end
			end
		end

		if type(filtergc) == "function" then
			local ok, result = pcall(filtergc, "table", { Keys = { "Id", "Origin", "Kind" } }, false)

			if ok and type(result) == "table" then
				local serverTimeNow = Workspace:GetServerTimeNow()

				for _, v3 in ipairs(result) do
					local flag = type(v3) == "table" and v3.Id ~= nil and typeof(v3.Model) == "Instance" and v3.Model:IsDescendantOf(Workspace)

					if flag then
						flag = (tonumber(v3.ExpiresAt) or 0) > serverTimeNow
					end

					if flag then
						fn13({ v3 })
					end
				end
			end
		end

		local scrambleLocalVisuals = Workspace:FindFirstChild("ScrambleLocalVisuals")

		if scrambleLocalVisuals ~= nil then
			for _, v3 in ipairs(scrambleLocalVisuals:QueryDescendants("Model[$ScrambleDroneId]")) do
				local attribute = v3:GetAttribute("ScrambleDroneId")
				local hitbox = v3:FindFirstChild("Hitbox")

				if attribute ~= nil and hitbox ~= nil and hitbox:IsA("BasePart") and scramble.DroneRecords[tostring(attribute)] == nil then
					scramble.DroneRecords[tostring(attribute)] = {
						Id = attribute,
						Health = tonumber(hitbox:GetAttribute("Health")) or 0,
						Position = hitbox.Position,
						Attributes = { ScrambleTier = v3:GetAttribute("ScrambleTier") },
					}
				end
			end
		end
	end

	local function fn16()
		local scramble = tbl2.Scramble
		local signalFull = scramble.SignalFull
		if type(signalFull) ~= "table" or type(signalFull.Window) ~= "table" then
			return nil
		end
		local v3 = fn11(signalFull)

		if type(scramble.SignalState) == "table" then
			v3.State = scramble.SignalState
			v3.Ready = scramble.SignalReady
		end

		local tbl5 = {}
		local scrambleLocalVisuals = Workspace:FindFirstChild("ScrambleLocalVisuals")

		if scrambleLocalVisuals ~= nil then
			for _, v4 in ipairs(scrambleLocalVisuals:QueryDescendants("Model[$ScrambleDroneId]")) do
				local attribute = v4:GetAttribute("ScrambleDroneId")
				local hitbox = v4:FindFirstChild("Hitbox")

				if attribute ~= nil and hitbox ~= nil and hitbox:IsA("BasePart") then
					local v5 = scramble.DroneRecords[tostring(attribute)]
					local tbl6 = type(v5) == "table" and fn11(v5) or { Id = attribute }
					tbl6.Health = tonumber(hitbox:GetAttribute("Health")) or 0
					tbl6.Position = hitbox.Position

					tbl6.Attributes = {
						ScrambleTier = v4:GetAttribute("ScrambleTier") or type(tbl6.Attributes) == "table" and tbl6.Attributes.ScrambleTier or nil,
					}

					tbl5[#tbl5 + 1] = tbl6
				end
			end
		end

		v3.Drones = { Full = true, Upserts = tbl5 }
		local tbl6 = {}
		local serverTimeNow = Workspace:GetServerTimeNow()

		for k, dropRecord in pairs(scramble.DropRecords) do
			if serverTimeNow < (tonumber(dropRecord.ExpiresAt) or 0) then
				tbl6[#tbl6 + 1] = dropRecord
			else
				scramble.DropRecords[k] = nil
			end
		end

		v3.Drops = { Upserts = tbl6 }
		return v3
	end

	tbl2.Event.FetchScrambleSnapshot = function(arg)
		local scramble = tbl2.Scramble
		local flag = not arg and type(scramble.Snapshot) == "table"

		if flag then
			flag = os.clock() - (scramble.SnapshotAt or 0) < n2
		end

		if flag then
			return scramble.Snapshot
		end
		fn15()
		local v3 = fn16()
		scramble.Supported = v3 ~= nil or fn9("State") ~= nil
		if v3 == nil then
			scramble.LastError = "Waiting for full Scramble State event"
			return nil, scramble.LastError
		end
		local lastSamples = type(v3.State) == "table" and tonumber(v3.State.Samples) or 0

		if scramble.LastSamples ~= nil and lastSamples > scramble.LastSamples then
			local metrics = tbl2.Metrics
			metrics.ScrambleSamplesEarned = metrics.ScrambleSamplesEarned + lastSamples - scramble.LastSamples
		end

		scramble.LastSamples = lastSamples
		scramble.Snapshot = v3
		scramble.SnapshotAt = os.clock()
		scramble.SnapshotSource = scramble.BootstrapSource or "State"
		scramble.LastError = nil
		return v3
	end

	tbl2.Event.InvalidateScrambleSnapshot = function()
		tbl2.Scramble.SnapshotAt = 0
	end

	tbl2.Event.StartScrambleObserver = function()
		local scramble = tbl2.Scramble
		if scramble.ObserverStarted then
			return true
		end

		if os.clock() < (scramble.ObserverRetryAt or 0) then
			return false
		end

		local function fn17(arg)
			local v3 = fn9(arg)
			if v3 == nil or not v3:IsA("RemoteEvent") then
				return
			end

			local connection = v3.OnClientEvent:Connect(function(arg2)
				if arg == "State" and type(arg2) == "table" then
					local scramble2 = tbl2.Scramble
					local signalRevision = tonumber(arg2.Revision) or -1
					local flag = arg2.Patch ~= true and type(arg2.Window) == "table"

					if flag then
						fn10(arg2, "State")
					else
						local flag2 = type(arg2.State) == "table"

						if flag2 then
							flag2 = signalRevision >= (scramble2.SignalRevision or -1)
						end

						if flag2 then
							scramble2.SignalRevision = signalRevision
							scramble2.SignalState = arg2.State
							scramble2.SignalReady = arg2.Ready
						end
					end

					local flag2 = not flag

					if flag2 and type(arg2.Drones) == "table" then
						fn12(arg2.Drones)
					end

					if flag2 and type(arg2.Drops) == "table" then
						fn13(arg2.Drops)
					end
				elseif arg == "Drones" then
					fn12(arg2)
				elseif arg == "Drops" then
					fn13(arg2)
				elseif arg == "RemoveDrops" then
					fn14(arg2)
				end

				tbl2.Event.InvalidateScrambleSnapshot()
			end)

			table.insert(tbl2.Scramble.Connections, connection)
		end

		fn17("State")
		fn17("Drones")
		fn17("Drops")
		fn17("RemoveDrops")
		scramble.ObserverStarted = #scramble.Connections > 0

		if not scramble.ObserverStarted then
			scramble.ObserverRetryAt = os.clock() + 5
		end

		tbl2.Event.FetchScrambleSnapshot(true)
		return scramble.ObserverStarted
	end
end

tbl2.Event.StopScrambleObserver = function()
	local scramble = tbl2.Scramble
	if not scramble.ObserverStarted and not scramble.Bootstrapped then
		return
	end
	scramble.ObserverStarted = false
	scramble.ObserverRetryAt = 0

	for _, connection in ipairs(scramble.Connections) do
		pcall(function()
			connection:Disconnect()
		end)
	end

	table.clear(scramble.Connections)
	scramble.Snapshot = nil
	scramble.SignalFull = nil
	scramble.SignalState = nil
	scramble.SignalReady = nil
	scramble.SnapshotAt = 0
	scramble.SignalRevision = -1
	scramble.SignalFullRevision = -1
	scramble.Bootstrapped = false
	scramble.LastSamples = nil
	table.clear(scramble.DroneRecords)
	table.clear(scramble.DropRecords)
end

tbl2.Event.GetScramblePurchaseCount = function(arg, arg2)
	local state = type(arg) == "table" and arg.State or nil
	local shopPurchases = type(state) == "table" and state.ShopPurchases or nil
	local flag = type(shopPurchases) == "table" and shopPurchases[arg2] or nil

	if type(flag) ~= "table" and type(shopPurchases) == "table" then
		for _, shopPurchase in pairs(shopPurchases) do
			if type(shopPurchase) == "table" and shopPurchase.Id == arg2 then
				flag = shopPurchase
				break
			end
		end
	end

	if type(flag) ~= "table" or flag.Period ~= arg.ShopPeriod then
		return 0
	end
	return tonumber(flag.Count) or 0
end

tbl2.Event.GetScrambleOffer = function(arg, arg2)
	local v3 = ipairs
	local shop = type(arg) == "table" and arg.Shop or {}

	for _, v4 in v3(shop) do
		if type(v4) == "table" and v4.Id == arg2 then
			return v4
		end
	end

	return nil
end

tbl2.Event.GetScrambleStatus = function()
	local v3, v4 = tbl2.Event.FetchScrambleSnapshot(false)

	if v3 == nil then
		return {
			Available = false,
			Active = false,
			Samples = 0,
			Drones = 0,
			Drops = 0,
			Status = v4 or "Unavailable",
		}
	end

	local window = type(v3.Window) == "table" and v3.Window or {}
	local upserts = type(v3.Drones) == "table" and v3.Drones.Upserts or nil
	local upserts2 = type(v3.Drops) == "table" and (v3.Drops.Upserts or v3.Drops) or nil
	local v5 = pairs
	local tbl5 = type(upserts) == "table" and upserts or {}
	local n2 = 0

	for _, v6 in v5(tbl5) do
		local flag = type(v6) == "table"

		if flag then
			flag = (tonumber(v6.Health) or 0) > 0
		end

		if flag then
			n2 += 1
		end
	end

	local v6 = pairs
	upserts2 = type(upserts2) == "table" and upserts2 or {}
	local n3 = 0

	for _, v7 in v6(upserts2) do
		if type(v7) == "table" and v7.Id ~= nil then
			n3 += 1
		end
	end

	local n4 = type(v3.State) == "table" and tonumber(v3.State.Samples) or 0

	return {
		Available = window.Available == true,
		Active = window.Active == true,
		StartsAt = tonumber(window.StartsAt),
		EndsAt = tonumber(window.EndsAt),
		NextAt = tonumber(window.NextAt),
		Samples = n4,
		Drones = n2,
		Drops = n3,
		ShopPeriod = v3.ShopPeriod,
		Status = tbl2.Scramble.Status,
		Snapshot = v3,
	}
end

tbl2.PrimaryChaseProtectionUid = nil
tbl2.PrimaryChaseProtectionAreaId = nil
tbl2.PrimaryChaseProtectionStartedAt = 0
tbl2.PostDropRouteUid = nil
tbl2.PostDropRouteUntil = 0
tbl2.PostDropRouteStartedAt = 0

tbl2.ArmPostDropRoute = function(postDropRouteUid)
	if type(postDropRouteUid) ~= "string" then
		return false
	end
	tbl2.PostDropRouteUid = postDropRouteUid
	tbl2.PostDropRouteStartedAt = os.clock()
	tbl2.PostDropRouteUntil = tbl2.PostDropRouteStartedAt + 20

	tbl2.PostDropRouteTrace = {
		DroppedUid = postDropRouteUid,
		StartedAt = tbl2.PostDropRouteStartedAt,
		Until = tbl2.PostDropRouteUntil,
		Segments = 0,
		Mode = "SegmentedNonCarryAfterPrimaryDrop",
	}

	return true
end

tbl2.IsPostDropRoute = function()
	local flag = type(tbl2.PostDropRouteUid) == "string"

	if flag then
		flag = os.clock() < (tbl2.PostDropRouteUntil or 0)
	end

	return flag and not tbl2.IsDeliveryCarry() and (tbl2.StealInProgress or tbl2.Checker.ManualBusy)
end

tbl2.ClearPostDropRoute = function(clearReason)
	local postDropRouteTrace = tbl2.PostDropRouteTrace

	if type(postDropRouteTrace) == "table" and tbl2.PostDropRouteUid ~= nil then
		postDropRouteTrace.ClearedAt = os.clock()
		postDropRouteTrace.ClearReason = clearReason or "Cleared"
	end

	tbl2.PostDropRouteUid = nil
	tbl2.PostDropRouteUntil = 0
	tbl2.PostDropRouteStartedAt = 0
end

tbl2.IsPrimaryChaseProtected = function(arg, arg2)
	local primaryChaseProtectionUid = tbl2.PrimaryChaseProtectionUid
	if type(primaryChaseProtectionUid) ~= "string" then
		return false
	end

	if arg ~= nil and arg ~= primaryChaseProtectionUid then
		return false
	end
	local primaryChaseProtectionAreaId = tbl2.PrimaryChaseProtectionAreaId
	if arg2 ~= nil and primaryChaseProtectionAreaId ~= nil and arg2 ~= primaryChaseProtectionAreaId then
		return false
	end
	return tbl2.Alive and tbl2.IsCarryStateConfirmed(primaryChaseProtectionUid) and (tbl2.StealInProgress or tbl2.Checker.ManualBusy)
end

tbl2.ArmPrimaryChaseProtection = function(primaryChaseProtectionUid, primaryChaseProtectionAreaId)
	if type(primaryChaseProtectionUid) ~= "string" or not tbl2.IsCarryStateConfirmed(primaryChaseProtectionUid) then
		return false
	end
	tbl2.PrimaryChaseProtectionUid = primaryChaseProtectionUid
	tbl2.PrimaryChaseProtectionAreaId = primaryChaseProtectionAreaId
	tbl2.PrimaryChaseProtectionStartedAt = os.clock()

	tbl2.PrimaryChaseProtectionTrace = {
		Uid = primaryChaseProtectionUid,
		AreaId = primaryChaseProtectionAreaId,
		StartedAt = tbl2.PrimaryChaseProtectionStartedAt,
		Mode = "AfterAuthoritativeChasingOnly",
	}

	return true
end

tbl2.ClearPrimaryChaseProtection = function(clearReason)
	local primaryChaseProtectionTrace = tbl2.PrimaryChaseProtectionTrace

	if type(primaryChaseProtectionTrace) == "table" and tbl2.PrimaryChaseProtectionUid ~= nil then
		primaryChaseProtectionTrace.ClearedAt = os.clock()
		primaryChaseProtectionTrace.ClearReason = clearReason or "Cleared"
	end

	tbl2.PrimaryChaseProtectionUid = nil
	tbl2.PrimaryChaseProtectionAreaId = nil
	tbl2.PrimaryChaseProtectionStartedAt = 0
end

do
	local tbl5 = {}
	local v3 = pairs
	local guards = Constants.NETWORK_MAP.Guards or {}

	for k, guard in v3(guards) do
		local v4 = string.upper(tostring(k))

		if string.find(v4, "HIT", 1, true) or string.find(v4, "ATTACK", 1, true) or string.find(v4, "DAMAGE", 1, true) then
			tbl5[guard] = true
		end
	end

	tbl2.RuntimeSyncEndpoints = Constants.NETWORK_MAP.RuntimeSync or {}
	tbl2.NetworkFireClosure = Network.Fire
	OriginalNetworkFire = tbl2.NetworkFireClosure

	local function fire(arg, ...)
		local v4 = table.pack(...)

		if arg == tbl2.RuntimeSyncEndpoints.HEARTBEAT and type(v4[1]) == "table" then
			local v5 = v4[1]
			local runtimeChallenge = tbl2.RuntimeChallenge

			if runtimeChallenge == nil or runtimeChallenge.challengeId ~= v5.challengeId or runtimeChallenge.nonce ~= v5.nonce then
				tbl2.RuntimeSequence = 0
			end

			tbl2.RuntimeChallenge = {
				challengeId = v5.challengeId,
				nonce = v5.nonce,
				heartbeatInterval = v5.heartbeatInterval or runtimeChallenge and runtimeChallenge.heartbeatInterval or nil,
			}

			tbl2.RuntimeSequence = tonumber(v5.sequence) or tbl2.RuntimeSequence
			tbl2.LastRuntimeHeartbeatAt = os.clock()
			tbl2.RuntimeHeartbeatsForwarded = tbl2.RuntimeHeartbeatsForwarded + 1
			return OriginalNetworkFire(arg, table.unpack(v4, 1, v4.n))
		end

		if tbl.ObfuscationCompatibility and tbl.SuppressRuntimeHeuristics and arg == tbl2.RuntimeSyncEndpoints.REPORT and (v4[1] == "CoreGuiHeuristic" or v4[1] == "Tamper") then
			tbl2.RuntimeReportsBlocked = tbl2.RuntimeReportsBlocked + 1
			return
		end

		if tbl5[arg] and (tbl.GuardBypass or tbl2.IsPrimaryChaseProtected()) then
			tbl2.GuardHitsBlocked = tbl2.GuardHitsBlocked + 1

			if tbl2.IsPrimaryChaseProtected() then
				local primaryChaseProtectionTrace = tbl2.PrimaryChaseProtectionTrace

				if type(primaryChaseProtectionTrace) == "table" then
					primaryChaseProtectionTrace.NetworkBlocks = (primaryChaseProtectionTrace.NetworkBlocks or 0) + 1
					primaryChaseProtectionTrace.LastNetworkBlockAt = os.clock()
				end
			end

			return
		end

		return OriginalNetworkFire(arg, table.unpack(v4, 1, v4.n))
	end

	if type(hookfunction) == "function" then
		local ok, result = pcall(hookfunction, tbl2.NetworkFireClosure, fire)

		if ok and type(result) == "function" then
			OriginalNetworkFire = result
			tbl2.NetworkFireHooked = true
		end
	end

	Network.Fire = fire
end

local eggStealGuardNamecallHook = Environment.EggStealGuardNamecallHook
tbl2.LegacyNamecallWrapperPresent = type(eggStealGuardNamecallHook) == "table" and eggStealGuardNamecallHook.Installed == true

if type(eggStealGuardNamecallHook) == "table" then
	eggStealGuardNamecallHook.Enabled = false

	if eggStealGuardNamecallHook.Bridge ~= nil and type(eggStealGuardNamecallHook.Bridge.Disable) == "function" then
		local ok, result = pcall(eggStealGuardNamecallHook.Bridge.Disable)

		if not ok then
			tbl2.LegacyNamecallDisableError = tostring(result)
		end
	end

	eggStealGuardNamecallHook.Remote = nil
	eggStealGuardNamecallHook.Runtime = nil
	eggStealGuardNamecallHook.Config = nil
end

tbl2.GuardNamecallHookState = nil
tbl2.GuardNamecallHooked = false
tbl2.GuardNamecallMode = "Disabled: no startup interception"

if tbl2.RuntimeSyncEndpoints.CHALLENGE ~= nil and type(Network.Fired) == "function" then
	local ok, result = pcall(Network.Fired, tbl2.RuntimeSyncEndpoints.CHALLENGE)

	if ok and result ~= nil then
		local connection = result:Connect(function(arg)
			if type(arg) ~= "table" then
				return
			end
			local runtimeChallenge = tbl2.RuntimeChallenge

			if runtimeChallenge == nil or runtimeChallenge.challengeId ~= arg.challengeId or runtimeChallenge.nonce ~= arg.nonce then
				tbl2.RuntimeSequence = 0
			end

			tbl2.RuntimeChallenge = table.clone(arg)
			tbl2.LastRuntimeHeartbeatAt = os.clock()
		end)

		table.insert(tbl2.Connections, connection)
	end
end

task.spawn(function()
	local n2 = 0

	while tbl2.Alive do
		local runtimeChallenge = tbl2.RuntimeChallenge

		if tbl.ObfuscationCompatibility and type(runtimeChallenge) == "table" and tbl2.LastRuntimeHeartbeatAt > 0 then
			local n3 = math.max(2, tonumber(runtimeChallenge.heartbeatInterval) or 4)
			local now = os.clock()

			if now - tbl2.LastRuntimeHeartbeatAt > math.max(12, n3 * 3) and now - n2 > n3 then
				tbl2.RuntimeHeartbeatStalls = tbl2.RuntimeHeartbeatStalls + 1
				n2 = now
			end
		end

		task.wait(1)
	end
end)

Environment.EggStealHubConnections = tbl2.Connections
Options = nil
Library = nil
FarmCycleParagraph = nil
MarkerFolder = nil
PhaseValue = Workspace:FindFirstChild("EggStealHubPhase")

if PhaseValue ~= nil then
	PhaseValue:Destroy()
end

PhaseValue = Instance.new("StringValue")
PhaseValue.Name = "EggStealHubPhase"
PhaseValue.Value = "CoreReady"
PhaseValue.Parent = Workspace
tbl2.StartupTimings.Phases.CoreReady = os.clock()

setPhase = function(value)
	PhaseValue.Value = value
	PhaseValue:SetAttribute("Phase", value)
	tbl2.StartupTimings.Phases[value] = os.clock()
end

log = function(arg, arg2)
	print(string.format("[EGGSTEAL][%s] %s", arg, tostring(arg2)))
end

setStatus = function(arg)
	tbl2.Status = tostring(arg)
end

setError = function(arg, arg2)
	tbl2.LastError = tostring(arg2)
	local metrics = tbl2.Metrics
	metrics.Errors = metrics.Errors + 1
	log(arg, arg2)
end

connect = function(arg, arg2)
	local connection = arg:Connect(arg2)
	table.insert(tbl2.Connections, connection)
	return connection
end

local function fn11(arg)
	local antiAfkDisabledConnections = tbl2.AntiAfkDisabledConnections

	if not arg then
		for k in pairs(antiAfkDisabledConnections) do
			pcall(k.Enable, k)
			antiAfkDisabledConnections[k] = nil
		end

		return
	end

	if type(getconnections) ~= "function" then
		return
	end
	local ok, result = pcall(getconnections, localPlayer.Idled)
	if not ok or type(result) ~= "table" then
		return
	end

	for _, v3 in ipairs(result) do
		if not antiAfkDisabledConnections[v3] and v3.Function ~= tbl2.AntiAfkIdledCallback and v3.Enabled ~= false and type(v3.Disable) == "function" and type(v3.Enable) == "function" and pcall(v3.Disable, v3) then
			antiAfkDisabledConnections[v3] = true
		end
	end
end

tbl2.SetAntiAfk = function(arg)
	tbl.AntiAFK = arg == true

	if tbl.AntiAFK then
		if tbl2.AntiAfkIdledConnection == nil then
			fn11(true)

			tbl2.AntiAfkIdledCallback = function()
				if tbl2.Alive and tbl.AntiAFK then
					local v3, v4 = tbl2.TriggerAntiAfk()

					if not v3 and v4 ~= "Anti AFK pulse already running" then
						setError("ANTI_AFK", v4)
					end
				end
			end

			tbl2.AntiAfkIdledConnection = localPlayer.Idled:Connect(tbl2.AntiAfkIdledCallback)
		else
			fn11(true)
		end
	else
		if tbl2.AntiAfkIdledConnection then
			tbl2.AntiAfkIdledConnection:Disconnect()
			tbl2.AntiAfkIdledConnection = nil
		end

		tbl2.AntiAfkIdledCallback = nil
		fn11(false)
	end
end

tbl2.TriggerAntiAfk = function()
	if not tbl.AntiAFK then
		return false, "Anti AFK disabled"
	end

	if tbl2.AntiAfkPulseBusy then
		return false, "Anti AFK pulse already running"
	end
	tbl2.AntiAfkPulseBusy = true
	fn11(true)
	local virtualInputManager = nil

	local ok, result = pcall(function()
		virtualInputManager = Instance.new("VirtualInputManager")
		virtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
		task.wait(0.05)
		virtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
	end)

	if virtualInputManager then
		pcall(virtualInputManager.Destroy, virtualInputManager)
	end

	tbl2.AntiAfkPulseBusy = false
	if not ok then
		return false, result
	end
	tbl2.AntiAfkPulses = tbl2.AntiAfkPulses + 1
	tbl2.LastAntiAfkAt = os.clock()
	return true
end

task.spawn(function()
	while tbl2.Alive do
		task.wait(300)

		if tbl2.Alive and tbl.AntiAFK then
			local v3, v4 = tbl2.TriggerAntiAfk()

			if not v3 and v4 ~= "Anti AFK pulse already running" then
				setError("ANTI_AFK", v4)
			end
		end
	end
end)

tbl2.FPS.ReleaseProtected = function(arg)
	if not fn8(arg) then
		return false
	end
	local objectConnections = tbl2.FPS.ObjectConnections and tbl2.FPS.ObjectConnections[arg]

	if objectConnections then
		for _, objectConnection in ipairs(objectConnections) do
			objectConnection:Disconnect()
		end

		if objectConnections.Destroying then
			objectConnections.Destroying:Disconnect()
		end

		tbl2.FPS.ObjectConnections[arg] = nil
	end

	if tbl2.FPS.Guarded then
		tbl2.FPS.Guarded[arg] = nil
	end

	local v3 = tbl2.FPS.States[arg]
	tbl2.FPS.States[arg] = nil

	if v3 then
		for k, v4 in pairs(v3) do
			pcall(function()
				arg[k] = v4.Value
			end)
		end
	end

	return true
end

tbl2.FPS.SetProperty = function(arg, arg2, arg3)
	if arg == nil then
		return false
	end

	if tbl2.FPS.ReleaseProtected(arg) then
		return false
	end
	local v3 = tbl2.FPS.States[arg]

	if v3 == nil then
		local tbl5 = {}
		tbl2.FPS.States[arg] = tbl5
		v3 = tbl5
	end

	if v3[arg2] == nil then
		local ok, result = pcall(function()
			return arg[arg2]
		end)

		if not ok then
			return false
		end
		v3[arg2] = { Value = result }
	end

	local ok = pcall(function()
		arg[arg2] = arg3
	end)

	if ok then
		local fps = tbl2.FPS
		fps.PropertiesChanged = fps.PropertiesChanged + 1
	end

	return ok
end

tbl2.FPS.GuardProperty = function(arg, arg2, arg3)
	local guarded = tbl2.FPS.Guarded

	if guarded == nil then
		guarded = setmetatable({}, { __mode = "k" })
		tbl2.FPS.Guarded = guarded
	end

	local v3 = guarded[arg]

	if v3 == nil then
		local tbl5 = {}
		guarded[arg] = tbl5
		v3 = tbl5
	end

	if v3[arg2] then
		return
	end
	v3[arg2] = true
	local ok, result = pcall(arg.GetPropertyChangedSignal, arg, arg2)

	if ok and result ~= nil then
		local objectConnections = tbl2.FPS.ObjectConnections

		if objectConnections == nil then
			objectConnections = setmetatable({}, { __mode = "k" })
			tbl2.FPS.ObjectConnections = objectConnections
		end

		local tbl5 = objectConnections[arg]

		if tbl5 == nil then
			tbl5 = {}
			objectConnections[arg] = tbl5

			tbl5.Destroying = arg.Destroying:Connect(function()
				for _, v4 in ipairs(tbl5) do
					v4:Disconnect()
				end

				tbl5.Destroying:Disconnect()
				objectConnections[arg] = nil
			end)
		end

		tbl5[#tbl5 + 1] = result:Connect(function()
			if tbl2.FPS.ReleaseProtected(arg) then
				return
			end

			if tbl.FPSBoost then
				pcall(function()
					if arg[arg2] ~= arg3 then
						arg[arg2] = arg3
					end
				end)
			end
		end)
	end
end

tbl2.FPS.ApplyObject = function(arg)
	if arg == nil then
		return
	end

	if tbl2.FPS.ReleaseProtected(arg) then
		return
	end
	local eggStealHubVisuals = Workspace:FindFirstChild("EggStealHubVisuals")
	if eggStealHubVisuals and arg:IsDescendantOf(eggStealHubVisuals) then
		return
	end
	local fps = tbl2.FPS
	fps.ObjectsProcessed = fps.ObjectsProcessed + 1

	if arg:IsA("BasePart") and not arg:IsA("Terrain") then
		tbl2.FPS.SetProperty(arg, "CastShadow", false)
		local build = fn7()
		build = build and build:FindFirstChild("Build")

		if build and arg.Anchored and arg:IsDescendantOf(build) then
			tbl2.FPS.SetProperty(arg, "LocalTransparencyModifier", 1)
		end

		tbl2.FPS.SetProperty(arg, "Reflectance", 0)

		local ok, result = pcall(function()
			return arg.CurrentPhysicalProperties
		end)

		if ok and result ~= nil and arg.CustomPhysicalProperties == nil then
			tbl2.FPS.SetProperty(arg, "CustomPhysicalProperties", result)
		end

		tbl2.FPS.SetProperty(arg, "Material", Enum.Material.SmoothPlastic)

		if arg:IsA("MeshPart") or arg:IsA("PartOperation") then
			tbl2.FPS.SetProperty(arg, "RenderFidelity", Enum.RenderFidelity.Performance)
		end

		if arg:IsA("MeshPart") then
			tbl2.FPS.SetProperty(arg, "TextureID", "")
			tbl2.FPS.SetProperty(arg, "DoubleSided", false)
		end
	end

	if arg:IsA("Model") then
		tbl2.FPS.SetProperty(arg, "LevelOfDetail", Enum.ModelLevelOfDetail.StreamingMesh)
	end

	if arg:IsA("ParticleEmitter") or arg:IsA("Trail") or arg:IsA("Beam") or arg:IsA("Smoke") or arg:IsA("Fire") or arg:IsA("Sparkles") then
		tbl2.FPS.SetProperty(arg, "Enabled", false)
		tbl2.FPS.GuardProperty(arg, "Enabled", false)
	end

	if arg:IsA("Explosion") then
		tbl2.FPS.SetProperty(arg, "Visible", false)
		tbl2.FPS.GuardProperty(arg, "Visible", false)
	end

	if arg:IsA("PointLight") or arg:IsA("SpotLight") or arg:IsA("SurfaceLight") then
		tbl2.FPS.SetProperty(arg, "Enabled", false)
		tbl2.FPS.GuardProperty(arg, "Enabled", false)
	end

	if arg:IsA("Decal") or arg:IsA("Texture") then
		tbl2.FPS.SetProperty(arg, "Transparency", 1)
		tbl2.FPS.SetProperty(arg, "Color3", Color3.new(0, 0, 0))
	end

	if arg:IsA("SpecialMesh") then
		tbl2.FPS.SetProperty(arg, "TextureId", "")
	end

	if arg:IsA("SurfaceAppearance") then
		tbl2.FPS.SetProperty(arg, "ColorMap", "")
		tbl2.FPS.SetProperty(arg, "NormalMap", "")
		tbl2.FPS.SetProperty(arg, "MetalnessMap", "")
		tbl2.FPS.SetProperty(arg, "RoughnessMap", "")
	end

	if arg:IsA("Shirt") then
		tbl2.FPS.SetProperty(arg, "ShirtTemplate", "")
	elseif arg:IsA("Pants") then
		tbl2.FPS.SetProperty(arg, "PantsTemplate", "")
	elseif arg:IsA("ShirtGraphic") then
		tbl2.FPS.SetProperty(arg, "Graphic", "")
	end

	if (arg:IsA("BillboardGui") or arg:IsA("SurfaceGui")) and #arg:QueryDescendants("TextButton, ImageButton, TextBox") == 0 then
		tbl2.FPS.SetProperty(arg, "Enabled", false)
		tbl2.FPS.GuardProperty(arg, "Enabled", false)
	end

	if arg:IsA("Highlight") then
		tbl2.FPS.SetProperty(arg, "Enabled", false)
		tbl2.FPS.GuardProperty(arg, "Enabled", false)
	end

	if arg:IsA("ForceField") then
		tbl2.FPS.SetProperty(arg, "Visible", false)
		tbl2.FPS.GuardProperty(arg, "Visible", false)
	end

	if arg:IsA("Clouds") then
		tbl2.FPS.SetProperty(arg, "Enabled", false)
		tbl2.FPS.GuardProperty(arg, "Enabled", false)
		tbl2.FPS.SetProperty(arg, "Density", 0)
		tbl2.FPS.SetProperty(arg, "Cover", 0)
	end

	if arg:IsA("PostEffect") then
		tbl2.FPS.SetProperty(arg, "Enabled", false)
		tbl2.FPS.GuardProperty(arg, "Enabled", false)
	end

	if arg:IsA("Atmosphere") then
		tbl2.FPS.SetProperty(arg, "Density", 0)
		tbl2.FPS.SetProperty(arg, "Haze", 0)
		tbl2.FPS.SetProperty(arg, "Glare", 0)
	end

	if arg:IsA("Sky") then
		tbl2.FPS.SetProperty(arg, "CelestialBodiesShown", false)
		tbl2.FPS.SetProperty(arg, "StarCount", 0)
		tbl2.FPS.SetProperty(arg, "SkyboxBk", "")
		tbl2.FPS.SetProperty(arg, "SkyboxDn", "")
		tbl2.FPS.SetProperty(arg, "SkyboxFt", "")
		tbl2.FPS.SetProperty(arg, "SkyboxLf", "")
		tbl2.FPS.SetProperty(arg, "SkyboxRt", "")
		tbl2.FPS.SetProperty(arg, "SkyboxUp", "")
		tbl2.FPS.SetProperty(arg, "SunTextureId", "")
		tbl2.FPS.SetProperty(arg, "MoonTextureId", "")
	end

	if arg:IsA("Humanoid") then
		tbl2.FPS.SetProperty(arg, "DisplayDistanceType", Enum.HumanoidDisplayDistanceType.None)
		tbl2.FPS.SetProperty(arg, "HealthDisplayType", Enum.HumanoidHealthDisplayType.AlwaysOff)
		tbl2.FPS.SetProperty(arg, "NameDisplayDistance", 0)
		tbl2.FPS.SetProperty(arg, "HealthDisplayDistance", 0)
	end
end

tbl2.FPS.ApplyGlobal = function()
	tbl2.FPS.SetProperty(tbl2.Lighting, "GlobalShadows", false)
	tbl2.FPS.SetProperty(tbl2.Lighting, "ShadowSoftness", 0)
	tbl2.FPS.SetProperty(tbl2.Lighting, "EnvironmentDiffuseScale", 0)
	tbl2.FPS.SetProperty(tbl2.Lighting, "EnvironmentSpecularScale", 0)
	tbl2.FPS.SetProperty(tbl2.Lighting, "Brightness", 1.5)
	tbl2.FPS.SetProperty(tbl2.Lighting, "ExposureCompensation", 0)
	tbl2.FPS.SetProperty(tbl2.Lighting, "FogStart", 0)
	tbl2.FPS.SetProperty(tbl2.Lighting, "FogEnd", 1000000)
	tbl2.FPS.SetProperty(tbl2.Lighting, "Technology", Enum.Technology.Compatibility)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "GlobalShadows", false)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "ShadowSoftness", 0)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "EnvironmentDiffuseScale", 0)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "EnvironmentSpecularScale", 0)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "Brightness", 1.5)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "ExposureCompensation", 0)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "FogStart", 0)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "FogEnd", 1000000)
	tbl2.FPS.GuardProperty(tbl2.Lighting, "Technology", Enum.Technology.Compatibility)

	if tbl2.Terrain ~= nil then
		tbl2.FPS.SetProperty(tbl2.Terrain, "Decoration", false)
		tbl2.FPS.SetProperty(tbl2.Terrain, "WaterWaveSize", 0)
		tbl2.FPS.SetProperty(tbl2.Terrain, "WaterWaveSpeed", 0)
		tbl2.FPS.SetProperty(tbl2.Terrain, "WaterReflectance", 0)
		tbl2.FPS.SetProperty(tbl2.Terrain, "WaterTransparency", 0.5)
	end

	if tbl2.FPS.RenderingQuality == nil then
		pcall(function()
			tbl2.FPS.RenderingQuality = settings().Rendering.QualityLevel
		end)
	end

	pcall(function()
		local level01 = Enum.QualityLevel.Level01
		settings().Rendering.QualityLevel = level01
	end)
end

tbl2.FPS.DisconnectWatchers = function()
	for _, connection in ipairs(tbl2.FPS.Connections) do
		pcall(connection.Disconnect, connection)
	end

	table.clear(tbl2.FPS.Connections)

	if tbl2.FPS.ObjectConnections ~= nil then
		for _, objectConnection in pairs(tbl2.FPS.ObjectConnections) do
			for _, v3 in ipairs(objectConnection) do
				pcall(v3.Disconnect, v3)
			end

			pcall(objectConnection.Destroying.Disconnect, objectConnection.Destroying)
		end

		tbl2.FPS.ObjectConnections = nil
	end

	tbl2.FPS.Guarded = setmetatable({}, { __mode = "k" })
end

tbl2.FPS.Apply = function()
	if tbl2.FPS.Applying or tbl2.FPS.Applied then
		return true
	end
	tbl2.FPS.Applying = true
	tbl2.FPS.Generation = (tbl2.FPS.Generation or 0) + 1
	local generation = tbl2.FPS.Generation
	tbl2.FPS.ObjectsProcessed = 0
	tbl2.FPS.PropertiesChanged = 0
	tbl2.FPS.DisconnectWatchers()
	local tbl5 = {}
	local n2 = 1
	local n3 = 0
	local obj = setmetatable({}, { __mode = "k" })

	local function fn12(descendant)
		if tbl2.FPS.ReleaseProtected(descendant) then
			return
		end

		if obj[descendant] then
			return
		end
		obj[descendant] = true
		n3 += 1
		tbl5[n3] = descendant
	end

	for _, v3 in ipairs({ Workspace, tbl2.Lighting }) do
		table.insert(tbl2.FPS.Connections, v3.DescendantAdded:Connect(fn12))
	end

	tbl2.FPS.ApplyGlobal()

	for _, v3 in ipairs({ Workspace, tbl2.Lighting }) do
		for _, v4 in ipairs(v3:QueryDescendants("BasePart, Model, ParticleEmitter, Trail, Beam, Smoke, Fire, Sparkles, Explosion, Light, Decal, Texture, SpecialMesh, SurfaceAppearance, Shirt, Pants, ShirtGraphic, BillboardGui, SurfaceGui, Highlight, ForceField, Clouds, PostEffect, Atmosphere, Sky, Humanoid")) do
			fn12(v4)
		end
	end

	tbl2.FPS.Applied = true
	tbl2.FPS.Applying = false

	table.insert(tbl2.FPS.Connections, RunService.Heartbeat:Connect(function()
		if generation ~= tbl2.FPS.Generation then
			return
		end
		local now = os.clock()
		local n4 = 0

		while n2 <= n3 and n4 < 100 and os.clock() - now < 0.0015 do
			local v3 = tbl5[n2]
			tbl5[n2] = nil
			n2 += 1
			n4 += 1

			if v3 and v3.Parent then
				pcall(tbl2.FPS.ApplyObject, v3)
			end
		end

		tbl2.FPS.Pending = math.max(0, n3 - n2 + 1)

		if n3 < n2 then
			n2 = 1
			n3 = 0
		end
	end))

	return true
end

tbl2.FPS.Restore = function()
	tbl2.FPS.Generation = (tbl2.FPS.Generation or 0) + 1
	tbl2.FPS.Pending = 0
	tbl2.FPS.DisconnectWatchers()

	for k, state in pairs(tbl2.FPS.States) do
		for k2, v3 in pairs(state) do
			pcall(function()
				k[k2] = v3.Value
			end)
		end
	end

	if tbl2.FPS.RenderingQuality ~= nil then
		pcall(function()
			local renderingQuality = tbl2.FPS.RenderingQuality
			settings().Rendering.QualityLevel = renderingQuality
		end)
	end

	tbl2.FPS.States = setmetatable({}, { __mode = "k" })
	tbl2.FPS.Applied = false
	tbl2.FPS.Applying = false
	return true
end

tbl2.FPS.Refresh = function()
	tbl2.FPS.Restore()
	if tbl.FPSBoost then
		return tbl2.FPS.Apply()
	end
	return true
end

tbl2.FPS.QueueRefresh = function()
	tbl2.FPS.RefreshGeneration = (tbl2.FPS.RefreshGeneration or 0) + 1
	local refreshGeneration = tbl2.FPS.RefreshGeneration

	task.delay(0.25, function()
		if tbl2.Alive and refreshGeneration == tbl2.FPS.RefreshGeneration then
			local ok, result, result2 = xpcall(tbl2.FPS.Refresh, debug.traceback)

			if not ok then
				setError("FPS_BOOST", result)
			elseif not result then
				setError("FPS_BOOST", result2)
			end
		end
	end)
end

getCharacter = function()
	local character = localPlayer.Character

	if character == nil or character.Parent == nil then
		character = localPlayer.CharacterAdded:Wait()
	end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart", 10)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoidRootPart == nil or humanoid == nil or humanoid.Health <= 0 then
		return nil, nil, nil
	end
	return character, humanoidRootPart, humanoid
end

do
	local RagdollJoints = nil

	pcall(function()
		RagdollJoints = require(ReplicatedStorage.Shared.Modules.RagdollJoints)
	end)

	restoreProtectedHumanoid = function()
		local protectedHumanoid = tbl2.ProtectedHumanoid
		local protectedHumanoidState = tbl2.ProtectedHumanoidState

		if protectedHumanoid ~= nil and protectedHumanoid.Parent ~= nil and type(protectedHumanoidState) == "table" then
			pcall(function()
				protectedHumanoid.BreakJointsOnDeath = protectedHumanoidState.BreakJointsOnDeath
				protectedHumanoid.RequiresNeck = protectedHumanoidState.RequiresNeck
				protectedHumanoid.MaxHealth = protectedHumanoidState.MaxHealth
				protectedHumanoid.Health = math.min(protectedHumanoidState.Health, protectedHumanoidState.MaxHealth)
				protectedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, protectedHumanoidState.DeadEnabled)
				protectedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, protectedHumanoidState.PhysicsEnabled)
				protectedHumanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, protectedHumanoidState.FallingDownEnabled)
				protectedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, protectedHumanoidState.RagdollEnabled)
				protectedHumanoid.PlatformStand = protectedHumanoidState.PlatformStand
			end)
		end

		tbl2.ProtectedHumanoid = nil
		tbl2.ProtectedHumanoidState = nil
	end

	local function fn12(arg, arg2, arg3)
		if arg:GetStateEnabled(arg2) ~= arg3 then
			arg:SetStateEnabled(arg2, arg3)
		end
	end

	protectHumanoid = function(protectedHumanoid, arg, arg2)
		if protectedHumanoid == nil or protectedHumanoid.Parent == nil then
			return
		end
		local flag = localPlayer:GetAttribute("InScrambleArena") == true

		if tbl2.ProtectedHumanoid ~= protectedHumanoid then
			restoreProtectedHumanoid()
			local flag2 = true
			local flag3 = true
			local flag4 = true
			local flag5 = true

			pcall(function()
				flag2 = protectedHumanoid:GetStateEnabled(Enum.HumanoidStateType.Dead)
				flag3 = protectedHumanoid:GetStateEnabled(Enum.HumanoidStateType.Physics)
				flag4 = protectedHumanoid:GetStateEnabled(Enum.HumanoidStateType.FallingDown)
				flag5 = protectedHumanoid:GetStateEnabled(Enum.HumanoidStateType.Ragdoll)
			end)

			tbl2.ProtectedHumanoid = protectedHumanoid

			tbl2.ProtectedHumanoidState = {
				BreakJointsOnDeath = protectedHumanoid.BreakJointsOnDeath,
				RequiresNeck = protectedHumanoid.RequiresNeck,
				MaxHealth = protectedHumanoid.MaxHealth,
				Health = protectedHumanoid.Health,
				DeadEnabled = flag2,
				PhysicsEnabled = flag3,
				FallingDownEnabled = flag4,
				RagdollEnabled = flag5,
				PlatformStand = protectedHumanoid.PlatformStand,
			}
		end

		pcall(function()
			local godMode = not flag and (tbl.GodMode or arg == true)
			local antiRagdoll = tbl.AntiRagdoll or not flag and arg2 == true

			if godMode then
				if protectedHumanoid.BreakJointsOnDeath then
					protectedHumanoid.BreakJointsOnDeath = false
				end

				if protectedHumanoid.RequiresNeck then
					protectedHumanoid.RequiresNeck = false
				end

				fn12(protectedHumanoid, Enum.HumanoidStateType.Dead, false)
				local maxHealth = math.max(1000000, protectedHumanoid.MaxHealth)

				if protectedHumanoid.MaxHealth ~= maxHealth then
					protectedHumanoid.MaxHealth = maxHealth
				end

				if protectedHumanoid.Health < maxHealth then
					protectedHumanoid.Health = maxHealth
				end

				local dead = Enum.HumanoidStateType.Dead

				if protectedHumanoid:GetState() == dead then
					protectedHumanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
				end

				tbl2.GodModePulses = tbl2.GodModePulses + 1
			end

			if antiRagdoll then
				fn12(protectedHumanoid, Enum.HumanoidStateType.Physics, false)
				fn12(protectedHumanoid, Enum.HumanoidStateType.FallingDown, false)
				fn12(protectedHumanoid, Enum.HumanoidStateType.Ragdoll, false)

				if protectedHumanoid.PlatformStand then
					protectedHumanoid.PlatformStand = false
				end

				local state = protectedHumanoid:GetState()

				if state == Enum.HumanoidStateType.Physics or state == Enum.HumanoidStateType.FallingDown or state == Enum.HumanoidStateType.Ragdoll then
					local parent = protectedHumanoid.Parent

					if RagdollJoints ~= nil and type(RagdollJoints.Release) == "function" and parent ~= nil and parent:IsA("Model") then
						pcall(RagdollJoints.Release, parent)
					end

					protectedHumanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
					local rootPart = protectedHumanoid.RootPart

					if rootPart ~= nil then
						rootPart.AssemblyAngularVelocity = Vector3.zero
					end
				end
			elseif tbl2.ProtectedHumanoidState then
				local protectedHumanoidState = tbl2.ProtectedHumanoidState
				fn12(protectedHumanoid, Enum.HumanoidStateType.Physics, protectedHumanoidState.PhysicsEnabled)
				fn12(protectedHumanoid, Enum.HumanoidStateType.FallingDown, protectedHumanoidState.FallingDownEnabled)
				fn12(protectedHumanoid, Enum.HumanoidStateType.Ragdoll, protectedHumanoidState.RagdollEnabled)
			end
		end)
	end
end

do
	local v3 = nil
	local v4 = nil
	local v5 = nil
	local n2 = 0

	local function fn12()
		local character = localPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		character = character and character:FindFirstChild("HumanoidRootPart")

		if not tbl2.Alive or localPlayer:GetAttribute("InScrambleArena") == true or not tbl.AntiRagdoll and not tbl.TPWalkEnabled or tbl2.Moving or not humanoid or humanoid.Health <= 0 or not character or character.Anchored or humanoid.Sit then
			v3 = nil
			v4 = nil
			v5 = nil
			n2 = 0
			return
		end

		local now = os.clock()
		local assemblyLinearVelocity = character.AssemblyLinearVelocity

		if character ~= v3 or not v5 or now - v5 > 0.25 then
			v3 = character
			v4 = assemblyLinearVelocity
			v5 = now
			n2 = 0
			return
		end

		local state = humanoid:GetState()
		local platformStand = humanoid.PlatformStand or state == Enum.HumanoidStateType.Physics or state == Enum.HumanoidStateType.Ragdoll or state == Enum.HumanoidStateType.FallingDown
		local vector = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
		local vector2 = Vector3.new(v4.X, 0, v4.Z)
		local n3 = math.max(humanoid.WalkSpeed + 18, 34)
		local jumpPower = humanoid.UseJumpPower and humanoid.JumpPower

		if not jumpPower then
			local jumpHeight = humanoid.JumpHeight
			jumpPower = math.sqrt(2 * math.max(0, Workspace.Gravity) * jumpHeight)
		end

		local flag = vector.Magnitude > n3 and (vector - vector2).Magnitude > 18
		local flag2 = assemblyLinearVelocity.Y > jumpPower + 15 and assemblyLinearVelocity.Y - v4.Y > 18

		if (platformStand or flag or flag2 or now < n2) and tbl2.IsNearOwnTreadmill ~= nil and tbl2.IsNearOwnTreadmill(character) then
			v3 = character
			v4 = assemblyLinearVelocity
			v5 = now
			n2 = 0
			return
		end

		if platformStand or flag or flag2 then
			n2 = now + 0.2
			tbl2.AntiKnockbackCorrections = (tbl2.AntiKnockbackCorrections or 0) + 1
		end

		if now < n2 then
			local n4 = humanoid.MoveDirection * humanoid.WalkSpeed
			local y = assemblyLinearVelocity.Y

			if platformStand or flag2 then
				y = math.min(v4.Y, 0)
			end

			character.AssemblyLinearVelocity = Vector3.new(n4.X, y, n4.Z)
			character.AssemblyAngularVelocity = Vector3.zero

			if platformStand then
				protectHumanoid(humanoid, tbl.TPWalkEnabled, tbl.TPWalkEnabled)
			end

			assemblyLinearVelocity = character.AssemblyLinearVelocity
		end

		v4 = assemblyLinearVelocity
		v5 = now
	end

	connect(RunService.PreSimulation, fn12)
	connect(RunService.PostSimulation, fn12)
end

setMovementNoClip = function(noClipCharacter, arg)
	if arg then
		if tbl2.NoClipEnabled and tbl2.NoClipCharacter == noClipCharacter then
			return
		end

		if tbl2.NoClipEnabled then
			setMovementNoClip(tbl2.NoClipCharacter, false)
		end

		local noClipStates = tbl2.NoClipStates
		local noClipPartConnections = tbl2.NoClipPartConnections
		tbl2.NoClipEnabled = true
		tbl2.NoClipCharacter = noClipCharacter
		tbl2.NoClipParts = nil

		local function fn12(descendant)
			if not descendant:IsA("BasePart") or noClipStates[descendant] ~= nil then
				return
			end
			noClipStates[descendant] = descendant.CanCollide

			if descendant.CanCollide then
				descendant.CanCollide = false
			end

			noClipPartConnections[descendant] = descendant:GetPropertyChangedSignal("CanCollide"):Connect(function()
				if tbl2.NoClipEnabled and tbl2.NoClipCharacter == noClipCharacter and descendant.Parent ~= nil and descendant.CanCollide then
					descendant.CanCollide = false
				end
			end)
		end

		for _, v3 in ipairs(noClipCharacter:QueryDescendants("BasePart")) do
			fn12(v3)
		end

		tbl2.NoClipConnection = noClipCharacter.DescendantAdded:Connect(fn12)
		return
	end

	if tbl2.NoClipConnection ~= nil then
		tbl2.NoClipConnection:Disconnect()
		tbl2.NoClipConnection = nil
	end

	tbl2.NoClipEnabled = false
	tbl2.NoClipCharacter = nil
	tbl2.NoClipParts = nil

	for k, noClipPartConnection in pairs(tbl2.NoClipPartConnections) do
		pcall(noClipPartConnection.Disconnect, noClipPartConnection)
		tbl2.NoClipPartConnections[k] = nil
	end

	for k, noClipState in pairs(tbl2.NoClipStates) do
		if k.Parent ~= nil then
			pcall(function()
				k.CanCollide = noClipState
			end)
		end

		tbl2.NoClipStates[k] = nil
	end
end

local fn12, fn13

do
	local tbl5 = { guardareas = true }

	local function fn14(arg)
		local v3 = string.lower(arg.Name)
		if tbl5[v3] then
			return false
		end
		return string.find(v3, "guard", 1, true) ~= nil
	end

	local function fn15(arg)
		local v3 = nil

		for i = 1, 6 do
			if not (arg == nil or arg == Workspace) then
				if arg:GetAttribute("TargetUserId") ~= nil or arg:GetAttribute("GuardId") ~= nil or fn14(arg) then
					v3 = arg
				end

				arg = arg.Parent
				continue
			end

			break
		end

		return v3
	end

	local function fn16(arg)
		local v3 = tbl2.GuardPartClass[arg]
		if v3 ~= nil then
			return v3
		end
		local flag = fn15(arg) ~= nil
		tbl2.GuardPartClass[arg] = flag
		return flag
	end

	local fn17 = nil

	local function fn18(arg)
		if not tbl.GuardBypass or not arg:IsA("BasePart") or not fn16(arg) then
			return
		end

		if tbl2.GuardPartStates[arg] == nil then
			tbl2.GuardPartStates[arg] = { CanTouch = arg.CanTouch, CanCollide = arg.CanCollide }
			tbl2.GuardPartsNeutralized = tbl2.GuardPartsNeutralized + 1
			fn17(fn15(arg) or arg.Parent)
		end

		if arg.CanTouch then
			arg.CanTouch = false
		end

		if arg.CanCollide then
			arg.CanCollide = false
		end
	end

	fn17 = function(arg)
		if arg == nil or arg == Workspace or tbl2.GuardContainers[arg] then
			return
		end
		local tbl6 = {}
		tbl2.GuardContainers[arg] = tbl6

		local function fn19()
			if tbl2.GuardContainers[arg] ~= tbl6 then
				return
			end
			tbl2.GuardContainers[arg] = nil

			for _, v3 in pairs(tbl6) do
				v3:Disconnect()
			end
		end

		tbl6.Added = arg.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("BasePart") then
				tbl2.GuardPartClass[descendant] = nil
				fn18(descendant)
			end
		end)

		tbl6.Ancestry = arg.AncestryChanged:Connect(function()
			if not arg:IsDescendantOf(Workspace) then
				fn19()
			end
		end)

		tbl6.Destroying = arg.Destroying:Connect(fn19)
	end

	local tbl6 = {}
	local obj = setmetatable({}, { __mode = "k" })
	local n2 = 1
	local n3 = 0
	tbl2.GuardPartsPending = 0

	local function fn19()
		local now = os.clock()
		local n4 = 0

		while n2 <= n3 and n4 < 100 and os.clock() - now < 0.0015 do
			local v3 = tbl6[n2]
			tbl6[n2] = nil
			n2 += 1
			obj[v3] = nil
			tbl2.GuardPartsPending = tbl2.GuardPartsPending - 1
			n4 += 1

			if tbl.GuardBypass and v3.Parent ~= nil then
				fn18(v3)
			end
		end

		if n2 > n3 then
			n2 = 1
			n3 = 0
			local guardDrainConnection = tbl2.GuardDrainConnection
			tbl2.GuardDrainConnection = nil

			if guardDrainConnection then
				guardDrainConnection:Disconnect()
			end
		end
	end

	connect(Workspace.DescendantAdded, function(arg)
		if not tbl2.Alive or not tbl.GuardBypass or not arg:IsA("BasePart") then
			return
		end
		tbl2.GuardPartClass[arg] = nil
		local parent = arg.Parent

		if fn14(arg) or arg:GetAttribute("GuardId") ~= nil or arg:GetAttribute("TargetUserId") ~= nil or parent ~= nil and (fn14(parent) or parent:GetAttribute("GuardId") ~= nil or parent:GetAttribute("TargetUserId") ~= nil) then
			task.defer(fn18, arg)
		elseif not obj[arg] then
			n3 += 1
			tbl6[n3] = arg
			obj[arg] = true
			tbl2.GuardPartsPending = tbl2.GuardPartsPending + 1

			if tbl2.GuardDrainConnection == nil then
				tbl2.GuardDrainConnection = RunService.Heartbeat:Connect(fn19)
			end
		end
	end)

	fn12 = function()
		local now = os.clock()
		local n4 = 0

		for k in pairs(tbl2.GuardPartStates) do
			if k.Parent ~= nil then
				if k.CanTouch then
					k.CanTouch = false
				end

				if k.CanCollide then
					k.CanCollide = false
				end
			end

			n4 += 1

			if tbl.ObfuscationCompatibility and (n4 >= 64 or os.clock() - now >= 0.00125) then
				task.wait()
				now = os.clock()
				n4 = 0
			end
		end
	end

	fn13 = function()
		local now = os.clock()
		local n4 = 0

		for _, v3 in ipairs(Workspace:QueryDescendants("BasePart")) do
			if not tbl2.Alive or not tbl.GuardBypass then
				return false
			end
			fn18(v3)
			n4 += 1

			if tbl.ObfuscationCompatibility and (n4 >= 64 or os.clock() - now >= 0.0015) then
				task.wait()
				now = os.clock()
				n4 = 0
			end
		end

		return true
	end
end

local fn14

fn14 = function()
	for k, guardPartState in pairs(tbl2.GuardPartStates) do
		if k.Parent ~= nil then
			pcall(function()
				k.CanTouch = guardPartState.CanTouch
				k.CanCollide = guardPartState.CanCollide
			end)
		end

		tbl2.GuardPartStates[k] = nil
	end
end

local fn15

fn15 = function(integrityRoot)
	if tbl2.IntegrityRoot == integrityRoot and #tbl2.IntegrityStates > 0 then
		return tbl2.IntegrityStates
	end
	local now = os.clock()
	local flag = tbl2.IntegrityRoot == integrityRoot
	local flag2

	if flag then
		flag2 = now < (tbl2.IntegrityRetryAt or 0)
	else
		flag2 = flag
	end

	if flag2 then
		return tbl2.IntegrityStates
	end
	tbl2.IntegrityRetryAt = now + 3
	tbl2.IntegrityRoot = integrityRoot
	table.clear(tbl2.IntegrityStates)
	tbl2.IntegrityScans = tbl2.IntegrityScans + 1
	if type(filtergc) ~= "function" then
		tbl2.IntegrityScanError = "filtergc unavailable"
		return tbl2.IntegrityStates
	end
	local ok, result = pcall(filtergc, "table", { Keys = { "RootPart", "LastGoodSample", "Evidence" } }, false)
	if not ok or type(result) ~= "table" then
		tbl2.IntegrityScanError = tostring(result)
		return tbl2.IntegrityStates
	end

	for _, v3 in next, result, nil do
		if type(v3) == "table" and rawget(v3, "RootPart") == integrityRoot and type(rawget(v3, "LastGoodSample")) == "table" and type(rawget(v3, "Evidence")) == "table" then
			table.insert(tbl2.IntegrityStates, v3)
		end
	end

	tbl2.IntegrityMatches = #tbl2.IntegrityStates
	tbl2.IntegrityScanError = "None"
	return tbl2.IntegrityStates
end

do
	local tbl5 = {
		"LastGoodSample",
		"LastSample",
		"LastObservedSample",
		"LastGameplayTrustedSample",
		"LastValidatedSample",
		"LastValidatedGroundedSample",
		"LastConfirmedGroundSample",
		"CandidateGroundedSample",
	}

	local function fn16(arg, arg2, arg3, arg4)
		if type(arg) ~= "table" then
			return
		end
		local value = rawget(arg, "Position")
		local value2 = rawget(arg, "CFrame")
		local cframe = typeof(value2) == "CFrame" and value2 - value2.Position or CFrame.identity

		if typeof(value) == "Vector3" then
			rawset(arg, "Position", arg2)
		end

		if typeof(value2) == "CFrame" then
			rawset(arg, "CFrame", CFrame.new(arg2) * cframe)
		end

		if type(rawget(arg, "Timestamp")) == "number" then
			rawset(arg, "Timestamp", arg3)
		end

		if typeof(rawget(arg, "LinearVelocity")) == "Vector3" then
			rawset(arg, "LinearVelocity", typeof(arg4) == "Vector3" and arg4 or Vector3.zero)
		end

		if typeof(rawget(arg, "AngularVelocity")) == "Vector3" then
			rawset(arg, "AngularVelocity", Vector3.zero)
		end
	end

	local function fn17(arg, arg2, arg3, arg4)
		for _, v3 in ipairs(tbl5) do
			fn16(rawget(arg, v3), arg2, arg3, arg4)
		end
	end

	local function fn18(arg, arg2, lastSupportedAt, arg3)
		fn17(arg, arg2, lastSupportedAt, arg3)
		local value = rawget(arg, "Evidence")

		if type(value) == "table" then
			for k, v3 in next, value, nil do
				if type(v3) == "number" then
					value[k] = 0
				end
			end
		end

		arg.ThreatLevel = "Trusted"
		arg.MovementMode = "Grounded"
		arg.FirstSuspiciousAt = nil
		arg.ValidationLocked = false
		arg.CorrectionContext = nil
		arg.UncertainUntil = nil
		arg.KickQueued = false
		arg.InvalidHeartbeatCount = 0

		if type(rawget(arg, "TamperScore")) == "number" then
			arg.TamperScore = 0
		end

		if type(rawget(arg, "CoreGuiScore")) == "number" then
			arg.CoreGuiScore = 0
		end

		arg.IsSupportedNow = true
		arg.HighestYSinceGround = arg2.Y
		arg.LastSupportedAt = lastSupportedAt
		arg.SupportStartedAt = lastSupportedAt
		tbl2.IntegrityPatches = tbl2.IntegrityPatches + 1
	end

	primeMovementIntegrity = function(arg, arg2)
		local now = os.clock()

		for _, v3 in ipairs(fn15(arg)) do
			fn18(v3, arg2, now, nil)
		end
	end

	primeMovementIntegrityMoving = function(arg, arg2, arg3)
		arg3 = typeof(arg3) == "Vector3" and arg3 or nil
		local now = os.clock()

		for _, v3 in ipairs(fn15(arg)) do
			fn18(v3, arg2, now, arg3)
		end
	end
end

tbl2.TPWalk = {
	LastPosition = nil,
	LastSafePosition = nil,
	LastSafePivot = nil,
	LastPulseAt = 0,
	CurrentRoot = nil,
	IntegrityBusy = false,
	Respawns = 0,
	SafetyWalls = {},
	SafetyWallsRefreshedAt = 0,
	LastBlockedBy = nil,
}

tbl2.TPWalk.RaycastParams = RaycastParams.new()
tbl2.TPWalk.RaycastParams.FilterType = Enum.RaycastFilterType.Exclude
tbl2.TPWalk.RaycastParams.IgnoreWater = true

pcall(function()
	tbl2.TPWalk.RaycastParams.RespectCanCollide = true
end)

local function fn16()
	local build = fn7()
	local safetyWalls = tbl2.TPWalk.SafetyWalls
	table.clear(safetyWalls)
	local tbl5 = {}

	local function fn17(arg)
		if arg ~= nil and arg:IsA("BasePart") and not tbl5[arg] then
			tbl5[arg] = true
			table.insert(safetyWalls, arg)
		end
	end

	build = build and build:FindFirstChild("Build")
	build = build and build:FindFirstChild("1")
	build = build and build:FindFirstChild("COLLISIONS")
	build = build and build:FindFirstChild("GUARD NO COLLIDE")

	if build ~= nil then
		for _, v3 in ipairs({ "WALL LEFT", "WALL RIGHT" }) do
			local v4 = build:FindFirstChild(v3)

			if v4 ~= nil then
				for _, child in ipairs(v4:GetChildren()) do
					fn17(child)
				end
			end
		end
	end

	tbl2.TPWalk.SafetyWallsRefreshedAt = os.clock()
	return safetyWalls
end

resolveTPWalkSafetyWalls = function()
	local safetyWalls = tbl2.TPWalk.SafetyWalls
	local v3 = safetyWalls[1]
	local flag = #safetyWalls == 0 or v3 == nil or v3.Parent == nil
	local flag2

	if flag then
		flag2 = flag
	else
		local safetyWallsRefreshedAt = tbl2.TPWalk.SafetyWallsRefreshedAt
		flag2 = os.clock() - safetyWallsRefreshedAt >= 3
	end

	if flag2 then
		safetyWalls = fn16()
	end

	return safetyWalls
end

do
	local function fn17()
		local areas = fn7()
		areas = areas and areas:FindFirstChild("Areas")
		return areas and areas:FindFirstChild("WallStartCollision") or nil
	end

	clearTPWalkBarrierLock = function()
		tbl2.TPWalk.LastPosition = nil
		tbl2.TPWalk.LastSafePosition = nil
		tbl2.TPWalk.LastSafePivot = nil
	end

	local function fn18(arg, currentRoot)
		tbl2.TPWalk.CurrentRoot = currentRoot
		tbl2.TPWalk.LastPosition = currentRoot.Position
		tbl2.TPWalk.LastSafePosition = currentRoot.Position
		tbl2.TPWalk.LastSafePivot = arg:GetPivot()
	end

	local function fn19(arg)
		pcall(function()
			arg.AssemblyLinearVelocity = Vector3.zero
			arg.AssemblyAngularVelocity = Vector3.zero
		end)
	end

	local function fn20(lastBlockedBy)
		tbl2.TPWalk.LastBlockedBy = lastBlockedBy or "Steal-area barrier"
		local metrics = tbl2.Metrics
		metrics.TPWalkBlocked = metrics.TPWalkBlocked + 1
	end

	local function fn21(arg, arg2, arg3)
		local lastSafePivot = tbl2.TPWalk.LastSafePivot

		if lastSafePivot ~= nil then
			pcall(arg.PivotTo, arg, lastSafePivot)
		end

		fn19(arg2)
		tbl2.TPWalk.LastPosition = arg2.Position
		fn20(arg3)
	end

	local function fn22(arg, arg2)
		local x = arg2.X
		local flag = math.abs(arg.X) <= x

		if flag then
			local y = arg2.Y
			flag = math.abs(arg.Y) <= y
		end

		local flag2

		if flag then
			local z = arg2.Z
			flag2 = math.abs(arg.Z) <= z
		else
			flag2 = flag
		end

		return flag2
	end

	local function fn23(arg, arg2, arg3)
		local tbl5 = { arg.X, arg.Y, arg.Z }
		local tbl6 = { arg2.X, arg2.Y, arg2.Z }
		local tbl7 = { arg3.X, arg3.Y, arg3.Z }
		local n2 = 0
		local n3 = 1

		for i = 1, 3 do
			local n4 = tbl6[i] - tbl5[i]

			if math.abs(n4) <= 1e-06 then
				if tbl7[i] < math.abs(tbl5[i]) then
					return nil
				end
				continue
			end

			local n5 = (-tbl7[i] - tbl5[i]) / n4
			local n6 = (tbl7[i] - tbl5[i]) / n4
			local v3, v4

			if n5 > n6 then
				v3 = n6
				v4 = n5
			else
				v3 = n5
				v4 = n6
			end

			local n7 = math.max(n2, v3)
			local n8 = math.min(n3, v4)

			if not (n8 < n7) then
				n2 = n7
				n3 = n8
				continue
			end

			return nil
		end

		return n2
	end

	local function fn24(arg, arg2, arg3, arg4)
		local v3 = arg4.CFrame:PointToObjectSpace(arg)
		local v4 = arg4.CFrame:PointToObjectSpace(arg + arg2)
		local n2 = math.max(arg3.Size.X, arg3.Size.Z) * 0.5 + 0.35
		local n3 = arg4.Size * 0.5 + Vector3.new(n2, arg3.Size.Y * 0.5 + 0.35, n2)

		if fn22(v3, n3) then
			local tbl5 = { v3.X, v3.Y, v3.Z }
			local tbl6 = { v4.X, v4.Y, v4.Z }
			local tbl7 = { n3.X, n3.Y, n3.Z }
			local n4 = -math.huge
			local n5 = 1

			for i = 1, 3 do
				local n6 = math.abs(tbl5[i]) / math.max(tbl7[i], 0.001)

				if n4 < n6 then
					n4 = n6
					n5 = i
				end
			end

			local v5 = tbl5[n5]
			local v6 = tbl6[n5]
			if v5 * v6 < 0 or math.abs(v6) + 0.0001 < math.abs(v5) then
				return 0
			end
			return 1
		end

		local v5 = fn23(v3, v4, n3)
		if v5 == nil or v5 < 0 or v5 > 1 then
			return 1
		end
		return math.clamp(v5 - 0.1 / math.max(arg2.Magnitude, 0.1), 0, 1)
	end

	local function fn25(arg, arg2, arg3)
		if tbl.TPWalkWallGuard ~= true or arg3.Magnitude <= 0.0001 then
			return arg3
		end
		local raycastParams = tbl2.TPWalk.RaycastParams
		local filterDescendantsInstances = { arg }
		local v3 = fn17()

		if v3 ~= nil then
			table.insert(filterDescendantsInstances, v3)
		end

		raycastParams.FilterDescendantsInstances = filterDescendantsInstances
		local hit = Workspace:Raycast(arg2.Position, arg3, raycastParams)
		local n2 = 1
		local instance = nil

		if hit ~= nil then
			n2 = math.min(1, math.max(0, hit.Distance - math.max(arg2.Size.X, arg2.Size.Z) * 0.5 - 0.25) / math.max(arg3.Magnitude, 0.0001))
			instance = hit.Instance
		end

		local v4 = resolveTPWalkSafetyWalls()

		for _, v5 in ipairs(v4) do
			if v5.Parent ~= nil then
				local v6 = fn24(arg2.Position, arg3, arg2, v5)

				if v6 < n2 then
					n2 = v6
					instance = v5
				end
			end
		end

		if n2 < 0.999 then
			tbl2.TPWalk.LastBlockedBy = instance and instance:GetFullName() or "World geometry"
			local metrics = tbl2.Metrics
			metrics.TPWalkBlocked = metrics.TPWalkBlocked + 1
		end

		return arg3 * math.clamp(n2, 0, 1)
	end

	local function fn26(arg, arg2)
		if tbl.TPWalkWallGuard ~= true then
			fn18(arg, arg2)
			return true
		end

		if tbl2.TPWalk.CurrentRoot ~= arg2 or tbl2.TPWalk.LastSafePivot == nil then
			fn18(arg, arg2)
			return true
		end
		local position = arg2.Position
		local lastSafePosition = tbl2.TPWalk.LastSafePosition or position
		local n2 = position - lastSafePosition
		local fullName = nil

		if n2.Magnitude > 0.0001 then
			local v3 = resolveTPWalkSafetyWalls()
			fullName = nil

			for _, v4 in ipairs(v3) do
				if v4.Parent ~= nil and fn24(lastSafePosition, n2, arg2, v4) < 0.999 then
					fullName = v4:GetFullName()
					break
				else
					fullName = nil
				end
			end
		end

		if fullName ~= nil then
			fn21(arg, arg2, fullName)
			return false
		end
		tbl2.TPWalk.LastPosition = position
		tbl2.TPWalk.LastSafePosition = position
		tbl2.TPWalk.LastSafePivot = arg:GetPivot()
		return true
	end

	getTPWalkCharacter = function()
		local character = localPlayer.Character
		if character == nil or character.Parent == nil then
			return nil, nil, nil
		end
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoidRootPart == nil or humanoid == nil or humanoid.Health <= 0 then
			return nil, nil, nil
		end
		return character, humanoidRootPart, humanoid
	end

	local function fn27(deltaTime)
		if localPlayer:GetAttribute("InScrambleArena") == true then
			return
		end

		if not tbl2.Alive or tbl.TPWalkEnabled ~= true or tbl2.Moving then
			clearTPWalkBarrierLock()
			tbl2.TPWalk.CurrentRoot = nil
			return
		end

		local v3, v4, v5 = getTPWalkCharacter()

		if v3 == nil or v4 == nil or v5 == nil or v5.Health <= 0 then
			clearTPWalkBarrierLock()
			tbl2.TPWalk.CurrentRoot = nil
			return
		end

		if tbl2.IsNearOwnTreadmill ~= nil and tbl2.IsNearOwnTreadmill(v4) then
			clearTPWalkBarrierLock()
			tbl2.TPWalk.CurrentRoot = nil
			return
		end

		if not fn26(v3, v4) then
			return
		end
		local moveDirection = v5.MoveDirection
		if moveDirection.Magnitude <= 0.01 then
			return
		end
		local n2 = math.clamp(tonumber(deltaTime) or 0, 0, 0.05)
		local n3 = math.min((tonumber(tbl.TPWalkSpeed) or 1) * n2 * 10, tonumber(tbl.TPWalkStepCap) or 2.25)
		if n3 <= 0 then
			return
		end
		local v6 = fn25(v3, v4, moveDirection.Unit * n3)
		if v6.Magnitude <= 0.0001 then
			tbl2.TPWalk.LastPosition = v4.Position
			return
		end
		protectHumanoid(v5, true, true)

		if tbl.NoClipMovement then
			setMovementNoClip(v3, true)
		end

		local ok = pcall(v3.TranslateBy, v3, v6)
		v4.AssemblyAngularVelocity = Vector3.zero

		if tbl.NoClipMovement then
			setMovementNoClip(v3, false)
		end

		if ok and v4.Parent ~= nil then
			if fn26(v3, v4) then
				tbl2.TPWalk.LastPulseAt = os.clock()
				local metrics = tbl2.Metrics
				metrics.TPWalkPulses = metrics.TPWalkPulses + 1
			end
		end
	end

	local function fn28()
		if localPlayer:GetAttribute("InScrambleArena") == true then
			return
		end

		if not tbl2.Alive or tbl.TPWalkEnabled ~= true or tbl2.Moving then
			return
		end
		local v3, v4, v5 = getTPWalkCharacter()

		if v3 ~= nil and v4 ~= nil and v5 ~= nil and (tbl2.IsNearOwnTreadmill == nil or not tbl2.IsNearOwnTreadmill(v4)) then
			fn26(v3, v4)
		end
	end

	tbl2.SetTPWalkFrameWriters = function(arg)
		local tpWalkFrameConnections = tbl2.TPWalkFrameConnections

		if arg then
			if tpWalkFrameConnections then
				return
			end
			local postSimulation = RunService.PostSimulation
			local connect_ = postSimulation.Connect
			tbl2.TPWalkFrameConnections = { RunService.Heartbeat:Connect(fn27), connect_(postSimulation, fn28) }
		elseif tpWalkFrameConnections then
			for _, tpWalkFrameConnection in ipairs(tpWalkFrameConnections) do
				tpWalkFrameConnection:Disconnect()
			end

			tbl2.TPWalkFrameConnections = nil
		end
	end
end

tbl2.SetTPWalkFrameWriters(tbl.TPWalkEnabled)

task.spawn(function()
	while tbl2.Alive do
		if tbl.TPWalkEnabled and not tbl2.Moving and not tbl2.TPWalk.IntegrityBusy then
			local v3, v4, v5 = getTPWalkCharacter()
			local lastPulseAt = tbl2.TPWalk.LastPulseAt
			local flag = os.clock() - lastPulseAt <= 0.35

			if v4 ~= nil and v5 ~= nil and flag and (tbl2.IsNearOwnTreadmill == nil or not tbl2.IsNearOwnTreadmill(v4)) then
				tbl2.TPWalk.IntegrityBusy = true
				tbl2.TPWalk.CurrentRoot = v4

				local ok, result = xpcall(function()
					protectHumanoid(v5, true, true)
					v4.AssemblyAngularVelocity = Vector3.zero

					if tbl.GuardBypass and tbl2.RefreshForestAttackProtection then
						tbl2.RefreshForestAttackProtection()
					end

					primeMovementIntegrity(v4, v4.Position)
				end, debug.traceback)

				tbl2.TPWalk.IntegrityBusy = false

				if not ok then
					tbl2.TPWalk.LastIntegrityError = tostring(result)
				end
			end
		end

		task.wait(0.2)
	end
end)

connect(localPlayer.CharacterAdded, function(arg)
	clearTPWalkBarrierLock()
	tbl2.TPWalk.LastPulseAt = 0
	tbl2.TPWalk.CurrentRoot = nil
	tbl2.TPWalk.IntegrityBusy = false
	local tpWalk = tbl2.TPWalk
	tpWalk.Respawns = tpWalk.Respawns + 1
	tbl2.IntegrityRoot = nil
	table.clear(tbl2.IntegrityStates)

	task.defer(function()
		local humanoidRootPart = arg:WaitForChild("HumanoidRootPart", 10)
		local humanoid = arg:FindFirstChildOfClass("Humanoid") or arg:WaitForChild("Humanoid", 10)
		if not tbl2.Alive or tbl.TPWalkEnabled ~= true or humanoidRootPart == nil or humanoid == nil then
			return
		end
		tbl2.TPWalk.CurrentRoot = humanoidRootPart
		tbl2.TPWalk.LastPosition = humanoidRootPart.Position

		local ok, result = xpcall(function()
			protectHumanoid(humanoid, true, true)
			primeMovementIntegrity(humanoidRootPart, humanoidRootPart.Position)
		end, debug.traceback)

		if not ok then
			tbl2.TPWalk.LastIntegrityError = tostring(result)
		end
	end)
end)

selectedEmpty = function(arg)
	if type(arg) ~= "table" then
		return true
	end

	for _, v3 in pairs(arg) do
		if v3 == true then
			return false
		end
	end

	return true
end

local fn17

fn17 = function(arg, arg2)
	return selectedEmpty(arg) or arg.All == true or arg[arg2] == true
end

local fn18

fn18 = function(arg, arg2)
	local mutations = arg.Mutations
	if arg2 == "None" then
		return type(mutations) ~= "table" or #mutations == 0
	end

	if type(mutations) ~= "table" then
		return false
	end

	for _, mutation in ipairs(mutations) do
		if mutation == arg2 then
			return true
		end
	end

	return false
end

getAssetConfig = function(arg)
	local assetCategory = type(arg) == "table" and (arg.AssetCategory or arg.Category)
	if type(assetCategory) ~= "string" then
		return nil
	end
	return Assets.Directory[assetCategory]
end

getRecordRarityId = function(arg)
	local rarity = getAssetConfig(arg)
	rarity = rarity and rarity.Rarity
	return rarity and (rarity._id or rarity.DisplayName), tonumber(rarity and rarity.RarityNumber) or 0
end

getEggDisplayName = function(arg)
	local v3 = getAssetConfig(arg)
	return tostring(v3 and v3.DisplayName or v3 and v3.Egg and v3.Egg.DisplayName or arg and (arg.AssetCategory or arg.Category) or "Unknown Egg")
end

local fn19

fn19 = function(arg, arg2)
	if type(arg) ~= "table" or type(module) ~= "table" then
		return nil
	end
	local category = arg.Category or arg.AssetCategory
	local num = tonumber(arg.Scale or arg.AssetScale)
	if type(category) ~= "string" or num == nil or num <= 0 then
		return nil
	end

	local tbl5 = {
		Category = category,
		Scale = num,
		EyeColor = arg.EyeColor or arg.AssetEyeColor,
		ColorSeed = arg.ColorSeed or arg.AssetColorSeed,
		ColorIndex = arg.ColorIndex or arg.AssetColorIndex,
		Mutations = type(arg.Mutations) == "table" and arg.Mutations or {},
		BaseMutation = arg.BaseMutation,
		Gender = arg.Gender or arg.AssetGender,
		Personality = arg.Personality or arg.AssetPersonality,
		IsStolenDNA = arg.IsStolenDNA,
	}

	if not (type(arg.Category) == "string" and tonumber(arg.Scale) ~= nil and type(arg.Mutations) == "table") then
		arg = tbl5
	end

	if arg2 == nil and tbl2.TargetRateDataLoaded ~= true then
		tbl2.TargetRateDataLoaded = true
		local ok, result = pcall(get)
		tbl2.TargetRateData = ok and type(result) == "table" and result or nil
	end

	arg2 = arg2 or tbl2.TargetRateData

	if type(module.LiveRatePerSecond) == "function" then
		local ok, result = pcall(module.LiveRatePerSecond, arg, type(arg2) == "table" and arg2.Gamepasses or nil, type(arg2) == "table" and arg2.Products or nil, localPlayer)
		ok = ok and tonumber(result) or nil
		if ok ~= nil and ok >= 0 then
			return ok
		end
	end

	if type(module.MutationOnlyRatePerSecond) == "function" then
		local ok, result = pcall(module.MutationOnlyRatePerSecond, arg)
		ok = ok and tonumber(result) or nil
		if ok ~= nil and ok >= 0 then
			return ok
		end
	end

	return nil
end

getMoneyPerSecond = function(arg)
	if type(arg) ~= "table" then
		return nil
	end
	local uid = type(arg.Uid) == "string" and arg.Uid or arg
	local v3 = tbl2.TargetRateCache[uid]
	local version = arg.Version
	if version ~= nil and type(v3) == "table" and v3.Version == version then
		return v3.Value ~= false and v3.Value or nil
	end
	local str2 = type(arg.Mutations) == "table" and table.concat(arg.Mutations, ",") or ""
	local concat = table.concat
	local tbl5 = {}
	local str3 = tostring(version or "")
	local str4 = tostring(arg.AssetCategory or arg.Category or "")
	local str5 = tostring(arg.AssetScale or arg.Scale or "")
	local str6 = tostring(arg.BaseMutation or "")
	tbl5[1] = str3
	tbl5[2] = str4
	tbl5[3] = str5
	tbl5[4] = str6
	tbl5[5] = str2
	local v4 = concat(tbl5, "|")
	if type(v3) == "table" and v3.Signature == v4 then
		return v3.Value ~= false and v3.Value or nil
	end
	local num = tonumber(fn19(arg))
	tbl2.TargetRateCache[uid] = { Version = version, Signature = v4, Value = num ~= nil and num >= 0 and num or false }
	return num ~= nil and num >= 0 and num or nil
end

local fn20

fn20 = function(arg)
	local v3 = string.lower(tostring(select(1, getRecordRarityId(arg)) or ""))
	if v3 == "divine" then
		return 3
	end

	if v3 == "eternal" then
		return 2
	end

	if v3 == "secret" then
		return 1
	end
	return 0
end

tbl2.CompareTargetPriority = function(arg, arg2, arg3)
	if type(arg) ~= "table" or type(arg2) ~= "table" then
		return 0
	end
	local v3 = fn20(arg)
	local v4 = fn20(arg2)
	if v3 ~= v4 then
		return v3 > v4 and 1 or -1
	end

	if selectedEmpty(tbl.SelectedRarities) then
		local v5 = getMoneyPerSecond(arg)
		local v6 = getMoneyPerSecond(arg2)

		if v5 ~= v6 then
			if v5 == nil then
				return -1
			end

			if v6 == nil then
				return 1
			end
			return v5 > v6 and 1 or -1
		end

		if arg3 == nil then
			arg3 = {}
			local v7 = ipairs
			local arenaPriority = tbl.ArenaPriority or {}

			for k, v8 in v7(arenaPriority) do
				arg3[v8] = k
			end
		end

		local huge = arg3[arg.AreaId] or math.huge
		local huge2 = arg3[arg2.AreaId] or math.huge
		if huge ~= huge2 then
			return huge < huge2 and 1 or -1
		end
		return 0
	end

	local preferredStealArena = tbl.PreferredStealArena

	if type(preferredStealArena) == "string" and preferredStealArena ~= "" then
		local flag = arg.AreaId == preferredStealArena
		if flag ~= arg2.AreaId == preferredStealArena then
			return flag and 1 or -1
		end
	end

	if arg3 == nil then
		local tbl5 = {}
		local v5 = ipairs
		local arenaPriority = tbl.ArenaPriority or {}

		for k, v6 in v5(arenaPriority) do
			tbl5[v6] = k
		end

		arg3 = tbl5
	end

	local huge = arg3[arg.AreaId] or math.huge
	local huge2 = arg3[arg2.AreaId] or math.huge
	if huge ~= huge2 then
		return huge < huge2 and 1 or -1
	end
	local selectedTargetPriorities = tbl.SelectedTargetPriorities

	if fn17(selectedTargetPriorities, "Rarest") then
		local v5, v6 = getRecordRarityId(arg)
		local v7, v8 = getRecordRarityId(arg2)
		if v6 ~= v8 then
			return v6 > v8 and 1 or -1
		end
	end

	if fn17(selectedTargetPriorities, "Largest") then
		local n2 = tonumber(arg.AssetScale) or 0
		local n3 = tonumber(arg2.AssetScale) or 0
		if n2 ~= n3 then
			return n2 > n3 and 1 or -1
		end
	end

	if fn17(selectedTargetPriorities, "Most Mutated") then
		local n2 = type(arg.Mutations) == "table" and #arg.Mutations or 0
		local n3 = type(arg2.Mutations) == "table" and #arg2.Mutations or 0
		if n2 ~= n3 then
			return n2 > n3 and 1 or -1
		end
	end

	if tbl.PrioritizeMoneyPerSecond then
		local v5 = getMoneyPerSecond(arg)
		local v6 = getMoneyPerSecond(arg2)

		if v5 ~= v6 then
			if v5 == nil then
				return -1
			end

			if v6 == nil then
				return 1
			end
			return v5 > v6 and 1 or -1
		end
	end

	return 0
end

local fn21

local function fn22(arg)
	if selectedEmpty(tbl.RequiredMutations) then
		return true
	end

	for k, requiredMutation in pairs(tbl.RequiredMutations) do
		if requiredMutation and fn18(arg, k) then
			return true
		end
	end

	return false
end

fn21 = function(arg)
	if not fn17(tbl.SelectedArenas, arg.AreaId) then
		return false, "Arena"
	end
	local bigEggOnly = tbl.BigEggOnly

	if bigEggOnly then
		bigEggOnly = (tonumber(arg.AssetScale) or 0) < tbl.MinEggScale
	end

	if bigEggOnly then
		return false, "Size"
	end

	if not fn17(tbl.SelectedCategories, arg.AssetCategory) then
		return false, "Category"
	end

	if not fn22(arg) then
		return false, "Mutation"
	end
	return true
end

recordMatchesFilters = function(arg)
	local v3, v4 = fn21(arg)
	if not v3 then
		return false, v4
	end
	local v5 = getRecordRarityId(arg)
	if not selectedEmpty(tbl.SelectedRarities) and tbl.SelectedRarities.All ~= true and tbl.SelectedRarities[v5] ~= true then
		return false, "Rarity"
	end
	return true
end

getSnapshot = function()
	local targetRevision = tbl2.TargetRevision or 0
	local targetSnapshotCache = tbl2.TargetSnapshotCache
	local flag = type(targetSnapshotCache) == "table" and targetSnapshotCache.Revision == targetRevision
	local flag2

	if flag then
		flag2 = os.clock() < (targetSnapshotCache.ExpiresAt or 0)
	else
		flag2 = flag
	end

	if flag2 then
		return targetSnapshotCache.Value
	end
	local ok, result = pcall(getAreaEggSnapshot)
	if not ok or type(result) ~= "table" or type(result.Records) ~= "table" then
		return nil
	end
	tbl2.TargetSnapshotCache = { Revision = targetRevision, ExpiresAt = os.clock() + 0.5, Value = result }
	return result
end

local fn23

fn23 = function(arg)
	if type(arg) ~= "table" then
		return nil
	end

	if type(arg.Uid) == "string" and string.find(arg.Uid, "FirstAreaEgg_", 1, true) == 1 and type(arg.AreaId) == "string" and type(arg.NestId) == "string" then
		return string.format("%s:%s", arg.AreaId, arg.NestId)
	end
	return nil
end

tbl2.DroppedRecovery = {}

tbl2.CanRecoverDropped = function(arg)
	local v3 = tbl2.DroppedRecovery[arg]
	if not v3 or v3.Attempts < 3 then
		return true
	end
	local now = os.clock()
	if v3.BlockedUntil and now >= v3.BlockedUntil then
		tbl2.DroppedRecovery[arg] = nil
		return true
	end

	if not v3.BlockedUntil then
		v3.BlockedUntil = now + 10
		tbl2.Blacklist[arg] = math.max(tbl2.Blacklist[arg] or 0, v3.BlockedUntil)
		tbl2.LastDroppedRecoverySkip = { Uid = arg, Attempts = v3.Attempts, Until = v3.BlockedUntil }
	end

	if tbl2.DroppedTargetUid == arg then
		tbl2.DroppedTargetUid = nil
		tbl2.DroppedTargetDeadline = 0
	end

	if tbl2.LastDroppedTargetUid == arg then
		tbl2.LastDroppedTargetUid = nil
	end

	return false
end

tbl2.BeginDroppedRecovery = function(activeDroppedRecoveryUid)
	if not tbl2.CanRecoverDropped(activeDroppedRecoveryUid) then
		return false
	end
	local tbl5 = tbl2.DroppedRecovery[activeDroppedRecoveryUid] or { Attempts = 0 }
	tbl2.DroppedRecovery[activeDroppedRecoveryUid] = tbl5
	tbl5.Attempts = tbl5.Attempts + 1
	tbl5.LastAttemptAt = os.clock()
	tbl2.ActiveDroppedRecoveryUid = activeDroppedRecoveryUid
	return true
end

tbl2.FinishDroppedRecovery = function(arg, arg2)
	local activeDroppedRecoveryUid = tbl2.ActiveDroppedRecoveryUid
	tbl2.ActiveDroppedRecoveryUid = nil
	if not activeDroppedRecoveryUid then
		return
	end

	if arg then
		tbl2.DroppedRecovery[activeDroppedRecoveryUid] = nil
		tbl2.Blacklist[activeDroppedRecoveryUid] = nil
	elseif arg2 == "Cancelled" or arg2 == "Destroyed" or arg2 == "Character unavailable" or arg2 == "Retarget" or arg2 == "Movement busy" then
		local v3 = tbl2.DroppedRecovery[activeDroppedRecoveryUid]

		if v3 then
			v3.Attempts = math.max(0, v3.Attempts - 1)
		end
	elseif not (tbl2.IsCarrying and tbl2.CarryUid == activeDroppedRecoveryUid) then
		tbl2.CanRecoverDropped(activeDroppedRecoveryUid)
	end
end

local fn24

fn24 = function(arg)
	if not tbl2.CanRecoverDropped(arg) then
		return true
	end
	local v3 = tbl2.Blacklist[arg]
	if v3 == nil then
		return false
	end

	if v3 <= os.clock() then
		tbl2.Blacklist[arg] = nil
		return false
	end
	return true
end

chooseEgg = function()
	local v3 = recordMatchesFilters
	local v4 = fn24
	local compareTargetPriority = tbl2.CompareTargetPriority
	local v5 = getSnapshot()
	local character = localPlayer.Character
	local humanoidRootPart = character and character.Parent and character:FindFirstChild("HumanoidRootPart")
	local humanoid = character and character.Parent and character:FindFirstChildOfClass("Humanoid")
	if v5 == nil then
		tbl2.LastEggSearch = { Reason = "Snapshot unavailable" }
		return nil, "Snapshot unavailable"
	end

	if humanoidRootPart == nil or humanoid == nil or humanoid.Health <= 0 then
		tbl2.LastEggSearch = { Reason = "Character unavailable" }
		return nil, "Character unavailable"
	end
	local droppedTargetUid = tbl2.DroppedTargetUid or tbl2.LastDroppedTargetUid
	local n2 = tonumber(tbl2.DroppedTargetDeadline) or 0

	if type(droppedTargetUid) == "string" and tbl2.CanRecoverDropped(droppedTargetUid) then
		local v6 = getAreaEggRecord(droppedTargetUid)

		if type(v6) == "table" and (v6.State == "Dropped" or v6.State == "Slot") and typeof(v6.BottomCFrame) == "CFrame" then
			tbl2.Blacklist[droppedTargetUid] = nil
			tbl2.LastDroppedTargetUid = droppedTargetUid
			tbl2.LastEggSearch = { SnapshotCount = #v5.Records, SlotCount = 0, EligibleCount = 1, RecoveringDropped = true }
			return v6, nil
		end

		if os.clock() < n2 then
			tbl2.LastEggSearch = {
				SnapshotCount = #v5.Records,
				SlotCount = 0,
				EligibleCount = 0,
				RecoveringDropped = true,
				Reason = "Waiting for dropped egg sync",
			}

			return nil, "Waiting for dropped egg sync"
		end

		tbl2.DroppedTargetUid = nil
		tbl2.LastDroppedTargetUid = nil
		tbl2.DroppedTargetDeadline = 0
	end

	local targetChoiceCache = tbl2.TargetChoiceCache
	local targetRevision = tbl2.TargetRevision or 0
	local flag = not tbl2.TargetDirty and type(targetChoiceCache) == "table" and targetChoiceCache.Revision == targetRevision and type(targetChoiceCache.Uid) == "string"
	local flag2

	if flag then
		flag2 = os.clock() < (targetChoiceCache.ExpiresAt or 0)
	else
		flag2 = flag
	end

	if flag2 then
		local v6 = getAreaEggRecord(targetChoiceCache.Uid)
		if type(v6) == "table" and (v6.State == "Slot" or v6.State == "Dropped") and typeof(v6.BottomCFrame) == "CFrame" and v3(v6) and not v4(v6.Uid) then
			return v6, nil
		end
		tbl2.TargetChoiceCache = nil
	end

	local position = humanoidRootPart.Position
	local targetArenaRankScratch = tbl2.TargetArenaRankScratch
	table.clear(targetArenaRankScratch)
	local v6 = ipairs
	local arenaPriority = tbl.ArenaPriority or {}

	for k, v7 in v6(arenaPriority) do
		targetArenaRankScratch[v7] = k
	end

	local tbl5 = {}
	local tbl6 = { Arena = 0, Size = 0, Category = 0, Mutation = 0, Rarity = 0, Blacklist = 0 }
	local n3 = 0
	local n4 = 0
	local n5 = 0
	local v7 = nil
	local huge = math.huge

	for _, record in ipairs(v5.Records) do
		if type(record) == "table" and type(record.Uid) == "string" and (record.State == "Slot" or record.State == "Dropped") and typeof(record.BottomCFrame) == "CFrame" then
			n3 += 1

			if record.State == "Dropped" then
				n4 += 1
			end

			local str2 = select(1, getRecordRarityId(record)) or "Unknown"
			tbl5[str2] = (tbl5[str2] or 0) + 1
			local v8, v9 = v3(record)

			if v8 and v4(record.Uid) then
				tbl6.Blacklist = (tbl6.Blacklist or 0) + 1
			elseif v8 then
				n5 += 1

				if v7 == nil then
					huge = (record.BottomCFrame.Position - position).Magnitude
					v7 = record
				else
					local v10 = compareTargetPriority(record, v7, targetArenaRankScratch)

					if v10 >= 0 then
						local magnitude = (record.BottomCFrame.Position - position).Magnitude

						if v10 > 0 or magnitude < huge then
							v7 = record
							huge = magnitude
						end
					end
				end
			elseif v9 ~= nil then
				tbl6[v9] = (tbl6[v9] or 0) + 1
			end
		end
	end

	tbl2.LastEggSearch = {
		SnapshotCount = #v5.Records,
		SlotCount = n3,
		DroppedCount = n4,
		EligibleCount = n5,
		RarityFallback = false,
		SelectionMode = selectedEmpty(tbl.SelectedRarities) and "RarityThenMoneyThenArena" or "SelectedRarities",
		Rarities = tbl5,
		Rejected = tbl6,
	}

	tbl2.TargetDirty = false

	if n5 == 0 then
		local flag3 = tbl.OnlyPriorityEggs and type(tbl.PriorityRarities) == "table"
		local str2 = "No eligible egg"

		if flag3 then
			local tbl7 = {}

			for _, priorityRarity in ipairs(tbl.PriorityRarities) do
				table.insert(tbl7, tostring(priorityRarity))
			end

			if #tbl7 > 0 then
				str2 = "No " .. table.concat(tbl7, "/")
			end
		end

		local reason

		if n3 == 0 then
			reason = "No available slot or dropped eggs"
		else
			local tbl7 = {}

			for _, v8 in ipairs({ "Arena", "Size", "Category", "Mutation", "Rarity", "Blacklist" }) do
				if tbl6[v8] > 0 then
					table.insert(tbl7, (v8 == "Size" and "Size < " .. tostring(tbl.MinEggScale) or v8) .. "=" .. tostring(tbl6[v8]))
				end
			end

			reason = str2 .. " (" .. table.concat(tbl7, ", ") .. ")"
		end

		tbl2.LastEggSearch.Reason = reason
		return nil, reason
	end

	tbl2.TargetChoiceCache = { Revision = tbl2.TargetRevision or 0, ExpiresAt = os.clock() + 1, Uid = v7.Uid }
	return v7, nil
end

tbl2.BuildRetargetCheck = function(arg)
	local v3 = getAreaEggRecord
	local v4 = recordMatchesFilters
	local v5 = chooseEgg
	local compareTargetPriority = tbl2.CompareTargetPriority
	local uid = arg.Uid
	local version = arg.Version
	local state = arg.State

	return function()
		local v6 = v3(uid)
		if v6 == nil or not v4(v6) then
			tbl2.PendingTargetUid = nil
			return true, "Target changed"
		end

		if not tbl.PreemptHigherPriority or not tbl2.TargetDirty then
			return false
		end
		tbl2.TargetDirty = false

		if not (v6 ~= nil and (v6.State == "Slot" or state == "Dropped" and v6.State == "Dropped")) then
			tbl2.PendingTargetUid = nil
			tbl2.LastTargetSwitch = string.format("%s became unavailable", uid)
			return true, "Target changed"
		end

		if version ~= nil and v6.Version ~= version then
			if typeof(arg.BottomCFrame) == "CFrame" and typeof(v6.BottomCFrame) == "CFrame" and (arg.BottomCFrame.Position - v6.BottomCFrame.Position).Magnitude > 1.5 then
				tbl2.PendingTargetUid = uid
				return true, "Target refreshed"
			end
			version = v6.Version
		end

		local v7 = v5()

		if v7 ~= nil and v7.Uid ~= uid and compareTargetPriority(v7, v6, tbl2.TargetArenaRankScratch) > 0 then
			tbl2.PendingTargetUid = v7.Uid
			tbl2.LastTargetSwitch = string.format("%s -> %s", uid, v7.Uid)
			return true, "Higher-priority target"
		end

		return false
	end
end

tbl2.TreadmillQueryStates = setmetatable({}, { __mode = "k" })
tbl2.TreadmillControllerStates = setmetatable({}, { __mode = "k" })
tbl2.LastTreadmillUnequipAt = -math.huge
tbl2.TreadmillUnequipBusy = false
tbl2.TreadmillEquipKnown = false
tbl2.TreadmillTrainingRetryAt = 0

tbl2.GetOwnTreadmillBottom = function()
	local now = os.clock()
	local cachedTreadmillBottom = tbl2.CachedTreadmillBottom
	if now < (tbl2.TreadmillBottomRefreshAt or 0) then
		return cachedTreadmillBottom ~= nil and cachedTreadmillBottom.Parent ~= nil and cachedTreadmillBottom or nil
	end
	tbl2.TreadmillBottomRefreshAt = now + 1
	local ok, result = pcall(PlotCmds.GetMySlot)
	local plots = Workspace:FindFirstChild("Plots")
	ok = ok and result ~= nil and plots and plots:FindFirstChild(tostring(result))
	ok = ok and ok:FindFirstChild("TreadmillBottom")
	tbl2.CachedTreadmillBottom = ok ~= nil and ok:IsA("BasePart") and ok or nil
	return tbl2.CachedTreadmillBottom
end

tbl2.IsNearOwnTreadmill = function(arg)
	local flag = arg ~= nil and tbl2.GetOwnTreadmillBottom()
	if flag == nil then
		return false
	end
	local v3 = flag.CFrame:PointToObjectSpace(arg.Position)
	local n2 = flag.Size.X * 0.5 + 8
	local flag2 = math.abs(v3.X) <= n2
	local flag3

	if flag2 then
		local n3 = flag.Size.Z * 0.5 + 8
		flag3 = math.abs(v3.Z) <= n3
	else
		flag3 = flag2
	end

	return flag3 and math.abs(v3.Y) <= 10
end

do
	local tbl5 = {}
	local tbl6 = {}

	local function fn25(arg)
		for _, connection in ipairs(arg.Connections) do
			connection:Disconnect()
		end

		table.clear(arg.Parts)
		table.clear(arg.Indices)
	end

	tbl2.ClearPartCaches = function()
		for k, v3 in pairs(tbl5) do
			fn25(v3)
			tbl5[k] = nil
		end
	end

	tbl2.GetCachedBaseParts = function(arg, arg2)
		local v3 = tbl5[arg]
		if v3 and v3.Container == arg2 then
			return v3.Parts
		end

		if v3 then
			fn25(v3)
			tbl5[arg] = nil
		end

		if arg2 == nil or not tbl2.Alive then
			return tbl6
		end
		local tbl7 = { Container = arg2, Parts = {}, Indices = {}, Connections = {} }
		tbl5[arg] = tbl7

		local function fn26(descendant)
			if not descendant:IsA("BasePart") or tbl7.Indices[descendant] then
				return
			end
			local n2 = #tbl7.Parts + 1
			local indices = tbl7.Indices
			tbl7.Parts[n2] = descendant
			indices[descendant] = n2
		end

		local function fn27(descendant)
			local v4 = tbl7.Indices[descendant]
			if v4 == nil then
				return
			end
			local v5 = tbl7.Parts[#tbl7.Parts]
			tbl7.Parts[v4] = v5
			tbl7.Indices[v5] = v4
			tbl7.Parts[#tbl7.Parts] = nil
			tbl7.Indices[descendant] = nil
		end

		tbl7.Connections[1] = arg2.DescendantAdded:Connect(fn26)
		tbl7.Connections[2] = arg2.DescendantRemoving:Connect(fn27)

		for _, v4 in ipairs(arg2:QueryDescendants("BasePart")) do
			fn26(v4)
		end

		return tbl7.Parts
	end
end

local function fn25(arg)
	if arg == nil or not arg:IsA("BasePart") then
		return
	end

	if tbl2.TreadmillQueryStates[arg] == nil then
		tbl2.TreadmillQueryStates[arg] = { CanQuery = arg.CanQuery, CanTouch = arg.CanTouch }
	end

	if arg.CanQuery then
		arg.CanQuery = false
	end

	if arg.CanTouch then
		arg.CanTouch = false
	end
end

tbl2.ShouldSuppressTreadmill = function()
	local flag = tbl2.Alive and tbl.TreadmillActionGuard == true

	if flag then
		local flag2 = tbl2.StealInProgress == true or tbl2.Moving == true or tbl2.Checker and tbl2.Checker.ManualBusy == true
		local flag3

		if flag2 then
			flag3 = flag2
		else
			flag3 = os.clock() < (tbl2.TreadmillGuardUntil or 0)
		end

		flag = flag3 == true
	end

	return flag
end

tbl2.SuppressTreadmillController = function()
	if not tbl2.ShouldSuppressTreadmill() then
		return false
	end
	local playerScripts = localPlayer:FindFirstChild("PlayerScripts")
	local cachedTreadmillController = tbl2.CachedTreadmillController

	if cachedTreadmillController == nil or playerScripts == nil or not cachedTreadmillController:IsDescendantOf(playerScripts) then
		cachedTreadmillController = playerScripts and playerScripts:FindFirstChild("TreadmillStaticController", true)
		tbl2.CachedTreadmillController = cachedTreadmillController
	end

	if cachedTreadmillController ~= nil and cachedTreadmillController:IsA("LocalScript") then
		if tbl2.TreadmillControllerStates[cachedTreadmillController] == nil then
			tbl2.TreadmillControllerStates[cachedTreadmillController] = { Disabled = cachedTreadmillController.Disabled }
		end

		if not cachedTreadmillController.Disabled then
			cachedTreadmillController.Disabled = true
		end

		return true
	end

	return false
end

tbl2.SuppressTreadmillRaycast = function()
	if not tbl2.ShouldSuppressTreadmill() then
		return false
	end
	tbl2.SuppressTreadmillController()
	local ok, result = pcall(PlotCmds.GetMySlot)
	if not ok or result == nil then
		return false
	end
	local plots = Workspace:FindFirstChild("Plots")
	plots = plots and plots:FindFirstChild(tostring(result))
	fn25(plots and plots:FindFirstChild("TreadmillBottom"))
	local clientTreadmillRenders = Workspace:FindFirstChild("__ClientTreadmillRenders")
	clientTreadmillRenders = clientTreadmillRenders and clientTreadmillRenders:FindFirstChild("TreadmillRender_" .. tostring(result))

	for _, v3 in ipairs(tbl2.GetCachedBaseParts("Treadmill", clientTreadmillRenders)) do
		fn25(v3)
	end

	return true
end

tbl2.ClearTreadmillState = function(lastTreadmillAction, arg)
	if tbl.TreadmillActionGuard ~= true then
		return true
	end
	local character = localPlayer.Character
	local humanoidRootPart = character and character.Parent and character:FindFirstChild("HumanoidRootPart")
	local humanoid = character and character.Parent and character:FindFirstChildOfClass("Humanoid")
	local treadmillEquipKnown = tbl2.TreadmillEquipKnown
	local v3 = tbl2.IsNearOwnTreadmill(humanoidRootPart)
	tbl2.TreadmillGuardUntil = os.clock() + 2
	tbl2.SuppressTreadmillRaycast()
	local now = os.clock()
	tbl2.TreadmillEquipKnown = false
	tbl2.TreadmillTrainingRetryAt = now + 6

	if (treadmillEquipKnown or v3) and not tbl2.TreadmillUnequipBusy and now - tbl2.LastTreadmillUnequipAt >= (arg and 0.15 or 0.4) then
		tbl2.LastTreadmillUnequipAt = now
		tbl2.TreadmillUnequipBusy = true

		task.spawn(function()
			local ok, result = pcall(Network.Invoke, Constants.NETWORK_MAP.Treadmills.REQUEST_UNEQUIP)

			if (not ok or result ~= true) and tbl2.ShouldSuppressTreadmill() then
				task.wait(0.1)
				pcall(Network.Invoke, Constants.NETWORK_MAP.Treadmills.REQUEST_UNEQUIP)
			end

			tbl2.TreadmillUnequipBusy = false
		end)

		local metrics = tbl2.Metrics
		metrics.TreadmillEscapes = metrics.TreadmillEscapes + 1
	end

	if (treadmillEquipKnown or v3) and humanoid ~= nil then
		humanoid.Sit = false
		humanoid.PlatformStand = false
		pcall(humanoid.ChangeState, humanoid, Enum.HumanoidStateType.Running)
	end

	if (treadmillEquipKnown or v3) and humanoidRootPart ~= nil then
		humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
		humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
	end

	tbl2.LastTreadmillAction = lastTreadmillAction or "MOVE"
	return true
end

tbl2.RestoreTreadmillGuard = function()
	for k, treadmillQueryState in pairs(tbl2.TreadmillQueryStates) do
		if k.Parent ~= nil then
			pcall(function()
				k.CanQuery = treadmillQueryState.CanQuery
				k.CanTouch = treadmillQueryState.CanTouch
			end)
		end
	end

	table.clear(tbl2.TreadmillQueryStates)

	for k, treadmillControllerState in pairs(tbl2.TreadmillControllerStates) do
		if k.Parent ~= nil then
			pcall(function()
				k.Disabled = treadmillControllerState.Disabled
			end)
		end
	end

	table.clear(tbl2.TreadmillControllerStates)
end

task.spawn(function()
	while tbl2.Alive do
		if tbl2.ShouldSuppressTreadmill() then
			tbl2.SuppressTreadmillRaycast()
		elseif next(tbl2.TreadmillQueryStates) or next(tbl2.TreadmillControllerStates) then
			tbl2.RestoreTreadmillGuard()
		end

		task.wait(0.2)
	end

	tbl2.RestoreTreadmillGuard()
end)

local fn26

fn26 = function()
	if v2 ~= nil and type(v2.IsSealed) == "function" then
		local ok, result = pcall(v2.IsSealed)
		if ok and result == true then
			return "Safe-zone barrier is sealed"
		end
	end

	local areas = fn7()
	areas = areas and areas:FindFirstChild("Areas")
	if areas == nil then
		return "Safe-zone areas unavailable"
	end
	local wallStartVisual = areas:FindFirstChild("WallStartVisual")
	if wallStartVisual == nil or not wallStartVisual:IsA("BasePart") then
		return "Reset wall visual unavailable"
	end

	if wallStartVisual.Size.Y > 0.0011 then
		return "Waiting for white reset wall to finish lowering"
	end
	local wallStartCollision = areas:FindFirstChild("WallStartCollision")
	if wallStartCollision == nil or not wallStartCollision:IsA("BasePart") then
		return "Safe-zone collision unavailable"
	end

	if wallStartCollision.CanCollide then
		return "Safe-zone collision is active"
	end

	for _, v3 in ipairs(tbl2.GetCachedBaseParts("StealBarrier", wallStartCollision)) do
		if v3.CanCollide then
			return "Safe-zone collision is active"
		end
	end

	return nil
end

local fn27

fn27 = function()
	local v3 = fn26()

	if v3 ~= nil then
		tbl2.SafeZoneBarrierClearSince = nil
		tbl2.SafeZoneBarrierReason = v3
		return false, v3
	end

	tbl2.SafeZoneBarrierClearSince = tbl2.SafeZoneBarrierClearSince or os.clock()
	tbl2.SafeZoneBarrierReason = nil
	return true, nil
end

do
	local trapAvoidance = { LastError = nil, Replans = 0, HazardCount = 0, EscapeCommitment = nil }
	tbl2.TrapAvoidance = trapAvoidance
	local tbl5 = {}
	local tbl6 = {}
	local traps = Constants.TAGS_MAP and Constants.TAGS_MAP.Traps
	traps = traps and traps.PLACED_TRAP or "PlacedTrap"

	local function fn28(arg)
		return arg.Name == "PlayerTrap" or arg.Name == "SubspaceTrap" or arg.Name == "SubspaceMine"
	end

	local function fn29()
		trapAvoidance.Revision = (trapAvoidance.Revision or 0) + 1
	end

	local function fn30(arg)
		if tbl5[arg] then
			return
		end
		tbl5[arg] = true
		tbl6[arg] = arg.DescendantAdded:Connect(fn29)
		fn29()
	end

	local function fn31(arg)
		if not tbl5[arg] then
			return
		end
		tbl5[arg] = nil
		local v3 = tbl6[arg]

		if v3 ~= nil then
			v3:Disconnect()
			tbl6[arg] = nil
		end

		fn29()
	end

	trapAvoidance.StopTracking = function()
		for k, v3 in pairs(tbl6) do
			pcall(v3.Disconnect, v3)
			tbl6[k] = nil
			tbl5[k] = nil
		end
	end

	for _, v3 in ipairs(tbl2.CollectionService:GetTagged(traps)) do
		fn30(v3)
	end

	for _, v3 in ipairs(Workspace:QueryDescendants("#PlayerTrap, #SubspaceTrap, #SubspaceMine")) do
		fn30(v3)
	end

	connect(tbl2.CollectionService:GetInstanceAddedSignal(traps), fn30)

	connect(Workspace.DescendantAdded, function(arg)
		if fn28(arg) then
			fn30(arg)
		end
	end)

	connect(Workspace.DescendantRemoving, function(arg)
		fn31(arg)
	end)

	trapAvoidance.ReadHazards = function()
		local now = os.clock()
		local flag = trapAvoidance.CachedHazards and trapAvoidance.CachedRevision == trapAvoidance.Revision and trapAvoidance.CachedMode == tbl.AvoidTraps

		if flag then
			flag = now < (trapAvoidance.CacheUntil or 0)
		end

		if flag then
			return trapAvoidance.CachedHazards
		end
		local tbl7 = {}
		local cachedHazards = {}

		for k in pairs(tbl5) do
			if tbl.AvoidTraps then
				tbl7[#tbl7 + 1] = k
			end
		end

		local v3, v4 = getCharacter()

		for _, v5 in ipairs(tbl7) do
			if v5:IsDescendantOf(Workspace) and not v5:FindFirstAncestorWhichIsA("Tool") then
				local huge = math.huge
				local n2 = -math.huge
				local huge2 = math.huge
				local n3 = -math.huge

				local function fn32(arg)
					local cFrame = arg.CFrame
					local n4 = arg.Size * 0.5
					local x = n4.X
					local y = n4.Y
					local n5 = math.abs(cFrame.RightVector.X) * x + math.abs(cFrame.UpVector.X) * y
					local z = n4.Z
					local n6 = n5 + math.abs(cFrame.LookVector.X) * z
					local x2 = n4.X
					local y2 = n4.Y
					local z2 = n4.Z
					local n7 = math.abs(cFrame.RightVector.Z) * x2 + math.abs(cFrame.UpVector.Z) * y2 + math.abs(cFrame.LookVector.Z) * z2
					local n8 = math.min(huge, cFrame.X - n6)
					local n9 = math.max(n2, cFrame.X + n6)
					huge = n8
					n2 = n9
					local n10 = math.min(huge2, cFrame.Z - n7)
					local n11 = math.max(n3, cFrame.Z + n7)
					huge2 = n10
					n3 = n11
				end

				if v5:IsA("BasePart") then
					fn32(v5)
				end

				local v6 = ipairs
				local v7 = table.pack(v5:QueryDescendants("BasePart"))
				v7.n = 1 + v7.n - 1
				table.move(v7, 1, v7.n, 1, v7)

				for _, v8 in v6(table.unpack(v7, 1, v7.n)) do
					fn32(v8)
				end

				if huge < math.huge then
					if v5.Name == "SubspaceTrap" or v5.Name == "SubspaceMine" then
						local n4 = (huge + n2) * 0.5
						local n5 = (huge2 + n3) * 0.5
						local subspaceMine = Gears.Directory and Gears.Directory.SubspaceMine
						local n6 = math.max(8, tonumber(subspaceMine and subspaceMine.TRIGGER_RADIUS) or 8)
						huge = math.min(huge, n4 - n6)
						n2 = math.max(n2, n4 + n6)
						huge2 = math.min(huge2, n5 - n6)
						n3 = math.max(n3, n5 + n6)
					end

					local n4 = 6 + (v4 and math.max(v4.Size.X, v4.Size.Z) * 0.5 or 1)
					cachedHazards[#cachedHazards + 1] = { MinX = huge - n4, MaxX = n2 + n4, MinZ = huge2 - n4, MaxZ = n3 + n4 }
				end
			end
		end

		trapAvoidance.HazardCount = #cachedHazards
		trapAvoidance.CachedHazards = cachedHazards
		trapAvoidance.CachedRevision = trapAvoidance.Revision
		trapAvoidance.CachedMode = tbl.AvoidTraps
		trapAvoidance.CacheUntil = now + 0.05
		return cachedHazards
	end

	trapAvoidance.Intersects = function(arg, arg2, arg3)
		local v3, v4, v5 = ipairs({ "X", "Z" })
		local n2 = 0
		local n3 = 1

		for _, v6 in v3, v4, v5 do
			local v7 = arg[v6]
			local n4 = arg2[v6] - arg[v6]
			local v8 = arg3["Min" .. v6]
			local v9 = arg3["Max" .. v6]

			if math.abs(n4) < 1e-08 then
				if v7 < v8 or v7 > v9 then
					return false
				end
				continue
			end

			local n5 = (v8 - v7) / n4
			local n6 = (v9 - v7) / n4

			if not (n6 < n5) then
				local v10 = n6
				n6 = n5
				n5 = v10
			end

			local n7 = math.max(n2, n6)
			local n8 = math.min(n3, n5)

			if not (n8 < n7) then
				n2 = n7
				n3 = n8
				continue
			end

			return false
		end

		return true
	end

	trapAvoidance.Clear = function(arg, arg2, arg3)
		for _, v3 in ipairs(arg3) do
			if trapAvoidance.Intersects(arg, arg2, v3) then
				return false
			end
		end

		return true
	end

	trapAvoidance.Plan = function(arg, arg2, arg3)
		if not trapAvoidance.Clear(arg, arg, arg3) then
			return nil, "Starting inside trap margin"
		end

		if not trapAvoidance.Clear(arg2, arg2, arg3) then
			return nil, "Trap covers target"
		end

		if trapAvoidance.Clear(arg, arg2, arg3) then
			return { arg2 }
		end

		if #arg3 > 40 then
			return nil, "Too many traps for a verified route"
		end
		local tbl7 = { arg, arg2 }

		for _, v3 in ipairs(arg3) do
			for _, v4 in ipairs({ v3.MinX - 2, v3.MaxX + 2 }) do
				for _, v5 in ipairs({ v3.MinZ - 2, v3.MaxZ + 2 }) do
					local vector = Vector3.new(v4, arg.Y, v5)

					if trapAvoidance.Clear(vector, vector, arg3) then
						tbl7[#tbl7 + 1] = vector
					end
				end
			end
		end

		local tbl8 = { 0 }
		local tbl9 = {}
		local tbl10 = {}

		for i = 1, #tbl7 do
			local huge = math.huge
			local v3 = nil

			for i2 = 1, #tbl7 do
				local flag = not tbl10[i2]

				if flag then
					flag = (tbl8[i2] or math.huge) < huge
				end

				if flag then
					huge = tbl8[i2]
					v3 = i2
				end
			end

			if v3 == nil then
				break
			end

			if v3 == 2 then
				local tbl11 = {}
				local n2 = 2

				while n2 ~= 1 do
					table.insert(tbl11, 1, tbl7[n2])
					n2 = tbl9[n2]
				end

				return tbl11
			end

			tbl10[v3] = true

			for i2, v4 in ipairs(tbl7) do
				if not tbl10[i2] and trapAvoidance.Clear(tbl7[v3], v4, arg3) then
					local n2 = huge + (v4 - tbl7[v3]).Magnitude

					if n2 < (tbl8[i2] or math.huge) then
						tbl8[i2] = n2
						tbl9[i2] = v3
					end
				end
			end
		end

		return nil, "No clear route around traps"
	end

	trapAvoidance.SelectPrepared = function(arg, arg2, arg3)
		local prepared = trapAvoidance.Prepared
		if trapAvoidance.Clear(arg, arg2, arg3) then
			return { arg2 }
		end

		if prepared and prepared.Uid == tbl2.CarryUid and prepared.Character == localPlayer.Character then
			for _, route in ipairs(prepared.Routes) do
				if not ((route.Target - arg2).Magnitude < 0.5) then
					continue
				end

				for i = #route.Points, 1, -1 do
					local flag = trapAvoidance.Clear(arg, route.Points[i], arg3)

					for i2 = i, #route.Points - 1 do
						if not trapAvoidance.Clear(route.Points[i2], route.Points[i2 + 1], arg3) then
							flag = false
							break
						end
					end

					if flag then
						local tbl7 = {}

						for i2 = i, #route.Points do
							tbl7[#tbl7 + 1] = route.Points[i2]
						end

						return tbl7
					end
				end
			end

			local v3 = ipairs
			local detours = prepared.Detours or {}
			local v4 = nil
			local tbl7 = nil

			for _, detour in v3(detours) do
				local v5 = detour[1]
				local v6 = detour[2]

				if trapAvoidance.Clear(arg, v5, arg3) and trapAvoidance.Clear(v5, v6, arg3) and trapAvoidance.Clear(v6, arg2, arg3) then
					local n2 = (v5 - arg).Magnitude + (v6 - v5).Magnitude + (arg2 - v6).Magnitude

					if not v4 or n2 < v4 then
						tbl7 = { v5, v6, arg2 }
						v4 = n2
					end
				end
			end

			if tbl7 then
				return tbl7
			end
		end

		local n2 = 0
		local v3 = nil
		local tbl7 = nil

		for _, v4 in ipairs(arg3) do
			if trapAvoidance.Intersects(arg, arg2, v4) then
				n2 += 1

				if not (n2 > 4) then
					local tbl8 = {}
					local vector = Vector3.new(v4.MinX - 2, arg.Y, v4.MinZ - 2)
					local vector2 = Vector3.new(v4.MaxX + 2, arg.Y, v4.MinZ - 2)
					local vector3 = Vector3.new(v4.MaxX + 2, arg.Y, v4.MaxZ + 2)
					local vector4 = Vector3.new
					local n3 = v4.MinX - 2
					local y = arg.Y
					local n4 = v4.MaxZ + 2
					tbl8[1] = vector
					tbl8[2] = vector2
					tbl8[3] = vector3

					do
						local values = table.pack(vector4(n3, y, n4))
						table.move(values, 1, values.n, 4, tbl8)
					end

					for i, v5 in ipairs(tbl8) do
						if trapAvoidance.Clear(arg, v5, arg3) then
							for _, v6 in ipairs({ v5, tbl8[i % 4 + 1], tbl8[(i + 2) % 4 + 1] }) do
								if trapAvoidance.Clear(v5, v6, arg3) and trapAvoidance.Clear(v6, arg2, arg3) then
									local n5 = (v5 - arg).Magnitude + (v6 - v5).Magnitude + (arg2 - v6).Magnitude

									if not v3 or n5 < v3 then
										tbl7 = { v5, v6, arg2 }
										v3 = n5
									end
								end
							end
						end
					end

					continue
				end
			else
				continue
			end

			break
		end

		if tbl7 then
			return tbl7
		end
		return nil, "Prepared trap route blocked"
	end

	local tbl7 = {}

	for i = 0, 15 do
		local n2 = i * 3.1415926535897931 / 8
		tbl7[#tbl7 + 1] = { X = math.cos(n2), Z = math.sin(n2) }
	end

	trapAvoidance.ReadGuardSamples = function(arg, guardSampleUid)
		local prepared = trapAvoidance.Prepared
		guardSampleUid = guardSampleUid or tbl2.CarryUid
		if not guardSampleUid then
			return {}
		end
		local now = os.clock()
		local flag = trapAvoidance.GuardSamples and trapAvoidance.GuardSampleUid == guardSampleUid

		if flag then
			flag = now < (trapAvoidance.GuardSampleUntil or 0)
		end

		if flag then
			return trapAvoidance.GuardSamples
		end
		local guardSamples = {}

		local function fn32(arg2)
			if not arg2 or not arg2.Parent then
				return
			end
			local position = arg2.Position
			local n2 = position.X - arg.X
			local n3 = position.Z - arg.Z
			if n2 * n2 + n3 * n3 > 122500 then
				return
			end
			local assemblyLinearVelocity = arg2.AssemblyLinearVelocity
			local n4 = math.clamp(tbl2.StealTiming.FrameSeconds * 2 + 0.1, 0.15, 0.4)

			guardSamples[#guardSamples + 1] = {
				X = position.X,
				Z = position.Z,
				NextX = position.X + math.clamp(assemblyLinearVelocity.X * n4, -32, 32),
				NextZ = position.Z + math.clamp(assemblyLinearVelocity.Z * n4, -32, 32),
				Radius = 18 + math.max(arg2.Size.X, arg2.Size.Z) * 0.5,
			}
		end

		if prepared and prepared.Uid == guardSampleUid and prepared.Character == localPlayer.Character then
			for _, guard in ipairs(prepared.Guards) do
				fn32(guard)
			end
		else
			local carryWatch = tbl2.CarryWatch

			if carryWatch and carryWatch.Uid == guardSampleUid and carryWatch.Guard.Parent then
				fn32(carryWatch.Guard:FindFirstChild("HumanoidRootPart"))
			end
		end

		local v3 = trapAvoidance
		trapAvoidance.GuardSamples = guardSamples
		v3.GuardSampleUid = guardSampleUid
		trapAvoidance.GuardSampleUntil = now + 0.05
		return guardSamples
	end

	local function fn32(arg, arg2, arg3, arg4)
		local n2 = arg2.X - arg.X
		local n3 = arg2.Z - arg.Z
		local n4 = n2 * n2 + n3 * n3
		local n5 = n4 > 0 and math.clamp(((arg3 - arg.X) * n2 + (arg4 - arg.Z) * n3) / n4, 0, 1) or 0
		local n6 = arg.X + n5 * n2 - arg3
		local n7 = arg.Z + n5 * n3 - arg4
		return n6 * n6 + n7 * n7
	end

	trapAvoidance.GuardClear = function(arg, arg2, arg3)
		for _, v3 in ipairs(arg3) do
			local n2 = arg.X - v3.X
			local n3 = arg.Z - v3.Z
			local n4 = arg2.X - arg.X
			local n5 = arg2.Z - arg.Z
			local n6 = v3.Radius * v3.Radius

			if n2 * n2 + n3 * n3 <= n6 then
				if n2 * n4 + n3 * n5 < -0.001 then
					return false
				end
				continue
			end

			local flag = fn32(arg, arg2, v3.X, v3.Z) < n6
			local flag2

			if flag then
				flag2 = flag
			else
				flag2 = fn32(arg, arg2, v3.NextX or v3.X, v3.NextZ or v3.Z) < n6
			end

			if flag2 then
				return false
			end
		end

		return true
	end

	trapAvoidance.SelectGuardStep = function(arg, arg2, arg3, arg4, arg5)
		local n2 = arg2 - arg
		local magnitude = n2.Magnitude
		local n3 = magnitude <= arg3 and arg2 or arg + n2.Unit * arg3
		local prepared = trapAvoidance.Prepared
		local n4 = n2.X / math.max(magnitude, 0.001)
		local n5 = n2.Z / math.max(magnitude, 0.001)
		local escapeCommitment = trapAvoidance.EscapeCommitment
		local flag = escapeCommitment and tbl2.CarryUid ~= nil and escapeCommitment.Uid == tbl2.CarryUid

		if flag then
			local v3, v4, v5 = ipairs(arg4)
			local huge = math.huge
			local flag2 = nil

			for _, v6 in v3, v4, v5 do
				local n6 = v6.X - escapeCommitment.GuardX
				local n7 = v6.Z - escapeCommitment.GuardZ
				local n8 = n6 * n6 + n7 * n7

				if n8 < huge then
					huge = n8
					flag2 = v6
				end
			end

			flag2 = flag2 and huge <= 9216 and flag2 or nil

			if flag2 then
				local z = flag2.Z
				escapeCommitment.GuardX = flag2.X
				escapeCommitment.GuardZ = z
				escapeCommitment.Radius = flag2.Radius

				if (flag2.X - arg.X) * escapeCommitment.MoveX + (flag2.Z - arg.Z) * escapeCommitment.MoveZ <= -(flag2.Radius * 0.65) then
					trapAvoidance.EscapeCommitment = nil
					escapeCommitment = nil
					flag = false
				end
			else
				trapAvoidance.EscapeCommitment = nil
				escapeCommitment = nil
				flag = false
			end
		end

		if not flag and trapAvoidance.GuardClear(arg, n3, arg4) then
			return n3
		end
		local n6 = 0
		local n7 = 0

		for _, v3 in ipairs(arg4) do
			local n8 = v3.X - arg.X
			local n9 = v3.Z - arg.Z
			local n10 = n8 * n4 + n9 * n5
			local n11 = n8 * n5 - n9 * n4
			local flag2 = n10 > 0

			if flag2 then
				local n12 = v3.Radius * 0.25
				flag2 = math.abs(n11) > n12
			end

			if flag2 then
				local n12 = n10 / math.max(n8 * n8 + n9 * n9, 1)

				if n6 < n12 then
					n7 = n11 > 0 and -1

					if n7 then
						n6 = n12
					else
						n7 = 1
						n6 = n12
					end
				end
			end
		end

		local v3 = nil
		local v4 = nil

		for _, v5 in ipairs(tbl7) do
			local n8 = arg + Vector3.new(v5.X * arg3, 0, v5.Z * arg3)
			local n9 = v5.X * n4 + v5.Z * n5
			local n10 = v5.X * n5 - v5.Z * n4

			if flag then
				if n9 < -0.05 or n10 * escapeCommitment.Side < 0.12 or v5.X * escapeCommitment.DirectionX + v5.Z * escapeCommitment.DirectionZ < 0.35 then
					continue
				end
			end

			local flag2 = not prepared or #prepared.Bounds == 0

			if not flag2 then
				for _, bound in ipairs(prepared.Bounds) do
					if bound.Parent then
						local v6 = bound.CFrame:PointToObjectSpace(n8)
						local n11 = bound.Size * 0.5
						local n12 = n11.X - 3
						local flag3 = math.abs(v6.X) <= n12

						if flag3 then
							local n13 = n11.Z - 3
							flag3 = math.abs(v6.Z) <= n13
						end

						if flag3 then
							flag2 = true
							break
						end
					end
				end
			end

			if flag2 and trapAvoidance.Clear(arg, n8, arg5) and trapAvoidance.GuardClear(arg, n8, arg4) then
				local n11 = magnitude - (arg2 - n8).Magnitude

				if n7 ~= 0 and not flag then
					n11 += n10 * n7 * 18
				end

				local lastEscapeDirection = trapAvoidance.LastEscapeDirection

				if lastEscapeDirection and trapAvoidance.LastEscapeUid == tbl2.CarryUid then
					n11 += (v5.X * lastEscapeDirection.X + v5.Z * lastEscapeDirection.Z) * 8
				end

				if flag then
					n11 = n11 + n9 * 8 + (v5.X * escapeCommitment.DirectionX + v5.Z * escapeCommitment.DirectionZ) * 20
				end

				if not v3 or n11 > v3 then
					v3 = n11
					v4 = n8
				end
			end
		end

		if v4 then
			local unit = (v4 - arg).Unit
			local v5 = trapAvoidance
			local carryUid = tbl2.CarryUid
			trapAvoidance.LastEscapeDirection = unit
			v5.LastEscapeUid = carryUid

			if not flag then
				local flag2 = false
				local huge = math.huge
				local v6 = nil

				for _, v7 in ipairs(arg4) do
					local flag3 = not trapAvoidance.GuardClear(arg, n3, { v7 })
					local v8 = fn32(arg, n3, v7.X, v7.Z)

					if flag3 and not flag2 or flag3 == flag2 and v8 < huge then
						flag2 = flag3
						huge = v8
						v6 = v7
					end
				end

				if v6 then
					trapAvoidance.EscapeCommitment = {
						Uid = tbl2.CarryUid,
						GuardX = v6.X,
						GuardZ = v6.Z,
						Radius = v6.Radius,
						MoveX = n4,
						MoveZ = n5,
						Side = (v6.X - arg.X) * n5 - (v6.Z - arg.Z) * n4 >= 0 and -1 or 1,
						DirectionX = unit.X,
						DirectionZ = unit.Z,
					}
				end
			else
				local z = unit.Z
				escapeCommitment.DirectionX = unit.X
				escapeCommitment.DirectionZ = z
			end

			trapAvoidance.LastEscape = {
				At = os.clock(),
				Uid = tbl2.CarryUid,
				Origin = { arg.X, arg.Y, arg.Z },
				Target = { v4.X, v4.Y, v4.Z },
			}

			return v4
		end

		return nil, "No clear guard escape segment"
	end
end

tbl2.StealTiming = {
	FrameSeconds = UserInputService.TouchEnabled and 0.033333333333333333 or 0.016666666666666666,
	MeasuredDt = UserInputService.TouchEnabled and 0.033333333333333333 or 0.016666666666666666,
	MaxGap = 0,
	Stalls = 0,
	GraceUsed = 0,
	SlowFrameScore = 0,
	LastIntegrityPrimeAt = 0,
}

tbl2.ObserveStealFrame = function(arg)
	if type(arg) ~= "number" or arg <= 0 or arg ~= arg then
		return
	end
	local stealTiming = tbl2.StealTiming
	local measuredDt = math.clamp(arg, 0.0041666666666666666, 0.25)
	stealTiming.MeasuredDt = measuredDt

	if measuredDt > stealTiming.FrameSeconds then
		stealTiming.FrameSeconds = measuredDt
	else
		stealTiming.FrameSeconds = stealTiming.FrameSeconds * 0.85 + measuredDt * 0.15
	end

	stealTiming.MaxGap = math.max(stealTiming.MaxGap, arg)

	if arg > 0.1 then
		stealTiming.Stalls = stealTiming.Stalls + 1
	end

	if arg >= 0.08 then
		stealTiming.SlowFrameScore = math.min((stealTiming.SlowFrameScore or 0) + 2, 8)
	elseif arg >= 0.041666666666666664 then
		stealTiming.SlowFrameScore = math.min((stealTiming.SlowFrameScore or 0) + 1, 8)
	else
		stealTiming.SlowFrameScore = math.max((stealTiming.SlowFrameScore or 0) - 1, 0)
	end
end

connect(RunService.Heartbeat, tbl2.ObserveStealFrame)

tbl2.ShouldUseLowFpsCarryMode = function()
	local touchEnabled = UserInputService.TouchEnabled

	if touchEnabled then
		touchEnabled = (tbl2.StealTiming.SlowFrameScore or 0) >= 4
	end

	return touchEnabled
end

tbl2.IsDeliveryCarry = function()
	return tbl2.IsCarrying == true and tbl2.CarryUid ~= nil and tbl2.CarryUid ~= tbl2.PrimerCarryUid
end

tbl2.StealSegmentLength = function(arg, arg2)
	local n2 = math.max(1, tonumber(arg) or 650)
	local n3 = math.clamp(tbl2.StealTiming.FrameSeconds, 0.016666666666666666, 0.25)
	if arg2 then
		return 32
	end

	if n2 >= 2000 then
		return math.clamp(math.max(250, n2 * n3 * 1.2), 250, 1000)
	end
	return math.clamp(math.max(48, n2 * n3 * 1.1), 48, 120)
end

tbl2.StealSegmentDuration = function(arg, arg2, arg3)
	local n2 = math.max(1, tonumber(arg2) or 650)
	local n3 = arg / n2
	local n4 = math.clamp(tbl2.StealTiming.FrameSeconds, 0.0041666666666666666, 0.25)

	if arg3 then
		local n5 = arg / 1050
		local n6 = n4 * 0.95
		local n7 = math.min(n3, n5)
		local n8

		if not (arg <= n2 * n4 * 1.25) then
			n8 = n7
		else
			n8 = math.min(n7, n6)
		end

		return math.max(n8, UserInputService.TouchEnabled and math.min(n4 * 0.75, n5) or 0.0041666666666666666, 0.0041666666666666666)
	end

	if n2 >= 2000 then
		local n5 = n4 * 0.95
		if arg <= n2 * n4 * 1.25 then
			return math.max(math.min(n3, n5), 0.0041666666666666666)
		end
	end

	return math.max(n3, 0.0041666666666666666)
end

tbl2.GetCarryReturnSpeed = function()
	local n2 = (tonumber(tbl.TweenSpeed) or 650) * math.clamp(tonumber(tbl.StealReturnSpeedMultiplier) or 1.125, 1, 1.25)
	local n3 = math.clamp(tonumber(tbl.EscapeTweenSpeedFloor) or 1000, 1, 1400)
	return math.clamp(math.max(n2, n3), 1, 1400)
end

tbl2.ClassifyTweenCompletion = function(arg, arg2, arg3, arg4)
	local n2 = arg - arg2
	local magnitude = Vector2.new(n2.X, n2.Z).Magnitude
	local n3 = math.clamp(tbl2.StealTiming.FrameSeconds, 0.0041666666666666666, 0.25)
	local n4 = tonumber(arg4) or tbl2.MoveTrace and tonumber(tbl2.MoveTrace.Speed) or 650
	local n5 = math.clamp(0.5 * Workspace.Gravity * n3 * n3 + 0.5, 0.5, 4.5)
	local n6 = math.max(tonumber(arg3) or 0.2, 0.25)
	local n7, n8, n9

	if n4 >= 2000 then
		n7 = math.max(n6, math.clamp(n4 * n3 * 0.04, 3, 25))
		n8 = math.max(n5, 15)
		n9 = math.clamp(n4 * n3 * 0.2, 30, 150)
	elseif n4 >= 1000 then
		n7 = math.max(n6, math.clamp(n4 * n3 * 0.03, 1.5, 8))
		n8 = math.max(n5, 8.5)
		n9 = math.clamp(n4 * n3 * 0.15, 15, 60)
	else
		n7 = math.max(n6, math.clamp(n4 * n3 * 0.02, 0.5, 4))
		n8 = math.max(n5, 3.5)
		n9 = math.clamp(n4 * n3 * 0.1, 8, 25)
	end

	if magnitude <= n7 and math.abs(n2.Y) <= n8 then
		return "Vertical drift"
	end

	if n2.Magnitude <= n9 then
		return "Minor movement displacement"
	end
	return "Movement displaced"
end

tbl2.RecordMovementDisplacement = function(arg, arg2, arg3)
	local movementDisplacements = tbl2.MovementDisplacements or {}
	tbl2.MovementDisplacements = movementDisplacements

	movementDisplacements[#movementDisplacements + 1] = {
		At = os.clock(),
		Reason = arg3,
		Status = tbl2.Status,
		CarryUid = tbl2.CarryUid,
		Expected = { arg.X, arg.Y, arg.Z },
		Actual = { arg2.X, arg2.Y, arg2.Z },
		Residual = (arg - arg2).Magnitude,
		FrameSeconds = tbl2.StealTiming.FrameSeconds,
	}

	if #movementDisplacements > 6 then
		table.remove(movementDisplacements, 1)
	end
end

tbl2.NewStealDeadline = function(arg)
	return { At = os.clock() + math.max(0.25, tonumber(arg) or 4), Grace = 0, Drained = false }
end

tbl2.WaitStealFrame = function(arg)
	local now = os.clock()
	RunService.Heartbeat:Wait()
	local n2 = os.clock() - now

	if n2 > 0.1 and arg.Grace < 2.5 then
		local n3 = math.min(n2, 2.5 - arg.Grace)
		arg.Grace = arg.Grace + n3
		arg.At = arg.At + n3
		local stealTiming = tbl2.StealTiming
		stealTiming.GraceUsed = stealTiming.GraceUsed + n3
	end
end

tbl2.StealDeadlineExpired = function(arg)
	local at = arg.At
	if os.clock() < at then
		return false
	end

	if not arg.Drained then
		arg.Drained = true
		return false
	end
	return true
end

tbl2.WaitStealWorkerDelay = function(arg, arg2)
	local isCarrying = tbl2.IsCarrying
	local targetDirty = tbl2.TargetDirty
	local targetRevision = tbl2.TargetRevision or 0
	local n2 = os.clock() + math.max(0, tonumber(arg2) or 1)

	while true do
		task.wait(math.min(0.1, math.max(0, n2 - os.clock())))
		if not tbl2.Alive or tbl[arg] ~= true then
			return
		end

		if not isCarrying and tbl2.IsCarrying then
			return
		end
		local targetDirty2 = tbl2.TargetDirty

		if targetDirty2 then
			targetDirty2 = not targetDirty

			if not targetDirty2 then
				targetDirty2 = (tbl2.TargetRevision or 0) ~= targetRevision
			end
		end

		if targetDirty2 then
			return
		end

		if not (n2 <= os.clock()) then
			continue
		end
		break
	end
end

local primaryCarryHeightOffset

do
	local function fn28(arg, arg2, arg3, arg4, arg5, arg6, arg7)
		local v3, v4, v5 = getCharacter()
		if v3 == nil or v4 == nil or v5 == nil then
			return false, "Character unavailable"
		end
		arg6 = arg6 or tbl.ArrivalDistance
		if arg7 and not arg7(v4.Position, arg) then
			return false, "Trap route changed"
		end
		local magnitude = (arg - v4.Position).Magnitude
		if magnitude <= arg6 then
			return true
		end
		local tweenSpeed = tonumber(arg5) or tbl.TweenSpeed
		tbl2.MoveTrace = { Mode = "Tween", StartedAt = os.clock(), Target = arg, Steps = 0, Generation = arg2, Speed = tweenSpeed }
		local n2 = magnitude / math.max(1, tweenSpeed)
		local position = v4.Position
		local rotation = v4.CFrame.Rotation
		local n3 = CFrame.new(arg) * rotation
		local now = os.clock()
		local n4 = 0

		local function fn29(arg8)
			local now2 = os.clock()

			if arg8 or now2 - n4 >= 0.05 then
				primeMovementIntegrity(v4, v4.Position)
				n4 = now2
				tbl2.StealTiming.LastIntegrityPrimeAt = now2
			end
		end

		fn29(true)

		pcall(function()
			v4.AssemblyLinearVelocity = Vector3.zero
			v4.AssemblyAngularVelocity = Vector3.zero
		end)

		tbl2.ActiveMoveTween = nil
		local n5 = os.clock() + 0.083333333333333329
		local flag = false

		while tbl2.Alive and arg2 == tbl2.MoveGeneration do
			if localPlayer.Character ~= v3 or v4.Parent ~= v3 then
				return false, "Character changed"
			end
			local now2 = os.clock()

			if n5 <= now2 then
				n5 = now2 + 0.083333333333333329

				if arg7 then
					local ok, result = pcall(arg7, v4.Position, arg)
					if not ok or not result then
						return false, ok and "Trap route changed" or tostring(result)
					end
				end

				if type(arg4) == "function" then
					local ok, result, result2 = pcall(arg4)
					if not ok then
						return false, result
					end

					if result then
						return false, result2 or "Retarget"
					end
				end
			end

			if arg3 ~= nil and tbl[arg3] ~= true then
				return false, "Cancelled"
			end

			if tbl.GodMode then
				protectHumanoid(v5)
			end

			if v5.Health <= 0 then
				return false, "Character died during movement"
			end

			if not flag then
				local carryDepartureTrace = tbl2.CarryDepartureTrace

				if carryDepartureTrace and carryDepartureTrace.Uid == tbl2.CarryUid and not carryDepartureTrace.FirstTweenAt then
					carryDepartureTrace.FirstTweenAt = os.clock()
					carryDepartureTrace.CarryToTweenSeconds = carryDepartureTrace.FirstTweenAt - tbl2.CarryConfirmedAt
				end

				flag = true

				if tbl2.StartPendingRide then
					tbl2.StartPendingRide()
				end
			end

			if tbl.NoClipMovement then
				setMovementNoClip(v3, true)
			end

			fn29(false)
			local moveTrace = tbl2.MoveTrace
			moveTrace.Steps = moveTrace.Steps + 1
			local n6 = math.max(0, os.clock() - now)
			local n7

			if n2 > 0 then
				n7 = math.clamp(n6 / n2, 0, 1)
			else
				n7 = 1
			end

			local v6 = position:Lerp(arg, n7)

			local ok, result = pcall(function()
				local rotation2 = n3.Rotation
				v4.CFrame = CFrame.new(v6) * rotation2
			end)

			if not ok then
				return false, tostring(result)
			end

			if tbl2.ActiveDroppedRecoveryUid ~= nil then
				pcall(protectHumanoid, v5, false, true)
				local n8 = arg - v4.Position
				local vector = Vector3.new(n8.X, 0, n8.Z)

				if vector.Magnitude > 0.05 then
					local n9 = vector.Unit * math.min(tweenSpeed, 700)
					local z = n9.Z
					v4.AssemblyLinearVelocity = Vector3.new(n9.X, math.clamp(n8.Y * 10, -65, 65), z)
					v4.AssemblyAngularVelocity = Vector3.zero
				end
			end

			tbl2.MoveTrace.Position = v4.Position
			local n8 = arg - v4.Position
			local magnitude2 = n8.Magnitude
			local magnitude3 = Vector2.new(n8.X, n8.Z).Magnitude
			local n9 = math.abs(n8.Y)
			local n10

			if tweenSpeed >= 2000 then
				n10 = 15
			elseif tweenSpeed >= 1000 then
				n10 = 8.5
			else
				n10 = 3.5
			end

			tbl2.MoveTrace.Remaining = magnitude2
			local n11

			if tweenSpeed >= 2000 then
				n11 = math.max(arg6, 3.5)
			elseif not (tweenSpeed >= 1000) then
				n11 = arg6
			else
				n11 = math.max(arg6, 2)
			end

			if magnitude2 <= n11 or magnitude3 <= n11 and n9 <= n10 then
				fn29(true)
				tbl2.MoveTrace.Outcome = "Arrived"
				local startedAt = tbl2.MoveTrace.StartedAt
				tbl2.MoveTrace.Elapsed = os.clock() - startedAt
				return true
			end

			if n7 >= 1 then
				local v7 = tbl2.ClassifyTweenCompletion(arg, v4.Position, arg6, tweenSpeed)
				tbl2.MoveTrace.Outcome = v7
				tbl2.MoveTrace.Remaining = magnitude2

				if v7 == "Vertical drift" or v7 == "Arrived" then
					fn29(true)
					local startedAt = tbl2.MoveTrace.StartedAt
					tbl2.MoveTrace.Elapsed = os.clock() - startedAt
					return true
				end

				tbl2.RecordMovementDisplacement(arg, v4.Position, v7)
				return false, v7
			end

			RunService.PreRender:Wait()
		end

		return false, "Cancelled"
	end

	local function fn29(target, arg, arg2, arg3, arg4, arg5, arg6)
		local v3
		v3, v3 = getCharacter()
		if v3 == nil then
			return false, "Character unavailable"
		end
		arg5 = arg5 or tbl.ArrivalDistance
		local requestedSpeed = math.max(1, tonumber(arg4) or tonumber(tbl.TweenSpeed) or 650)
		local v4 = tbl2.IsDeliveryCarry()
		tbl2.StealSegmentLength(requestedSpeed, v4)
		local now = os.clock()
		local networkSegments = 0
		local n2 = 0
		local n3 = 0

		while tbl2.Alive and arg == tbl2.MoveGeneration do
			local n4 = target - v3.Position
			local magnitude = n4.Magnitude
			local magnitude2 = Vector2.new(n4.X, n4.Z).Magnitude
			local n5 = math.abs(n4.Y)
			local n6

			if requestedSpeed >= 2000 then
				n6 = 15
			elseif requestedSpeed >= 1000 or tbl2.IsDeliveryCarry() then
				n6 = 8.5
			else
				n6 = 3.5
			end

			if magnitude <= arg5 or magnitude2 <= arg5 and n5 <= n6 then
				tbl2.MoveTrace.Target = target
				tbl2.MoveTrace.NetworkSegments = networkSegments
				tbl2.MoveTrace.RequestedSpeed = requestedSpeed
				tbl2.MoveTrace.Elapsed = os.clock() - now
				tbl2.MoveTrace.Outcome = "Arrived"
				return true
			end

			local v5 = tbl2.IsDeliveryCarry()
			local segmentLength = tbl2.StealSegmentLength(requestedSpeed, v5)
			local v6 = tbl2.IsPostDropRoute()

			if v6 then
				local n7 = math.clamp(tbl2.StealTiming.FrameSeconds, 0.016666666666666666, 0.12)

				if requestedSpeed >= 2000 then
					local n8 = math.clamp(requestedSpeed * n7 * 0.75, 150, 240)
					segmentLength = math.min(segmentLength, n8)
				else
					segmentLength = math.min(segmentLength, 96)
				end
			end

			local n7

			if (v5 or v6) and magnitude > segmentLength then
				n7 = v3.Position + n4.Unit * segmentLength
			else
				n7 = target
			end

			local fn30 = arg6
			local trapAvoidance = tbl2.TrapAvoidance

			if v5 and trapAvoidance and trapAvoidance.SelectGuardStep then
				local v7 = trapAvoidance.ReadGuardSamples(v3.Position)

				if #v7 > 0 then
					local v8 = trapAvoidance.ReadHazards()
					local escapeCommitment = trapAvoidance.EscapeCommitment

					if escapeCommitment and escapeCommitment.Uid == tbl2.CarryUid or not trapAvoidance.GuardClear(v3.Position, n7, v7) then
						local v9, v10 = trapAvoidance.SelectGuardStep(v3.Position, n7, math.min(segmentLength, magnitude), v7, v8)
						if not v9 then
							return false, v10
						end

						if (v9 - n7).Magnitude > 0.01 then
							n2 += 1
							if n2 > 32 then
								return false, "Guard escape made no progress"
							end
							n7 = v9
						else
							n2 = 0
							n7 = v9
						end
					end

					fn30 = function(arg7, arg8)
						return (not arg6 or arg6(arg7, arg8)) and trapAvoidance.GuardClear(arg7, arg8, trapAvoidance.ReadGuardSamples(arg7))
					end
				end
			end

			local flag = n7 == target
			local magnitude3 = (n7 - v3.Position).Magnitude
			local v7 = tbl2.StealSegmentDuration(magnitude3, requestedSpeed, tbl2.IsDeliveryCarry())
			local n8 = magnitude3 / v7
			local n9

			if flag then
				n9 = arg5
			elseif requestedSpeed >= 2000 then
				n9 = 4
			elseif tbl2.IsDeliveryCarry() then
				n9 = math.clamp(requestedSpeed * tbl2.StealTiming.FrameSeconds * 0.04, 0.5, 2.5)
			else
				n9 = 0.3
			end

			local v8, v9 = fn28(n7, arg, arg2, arg3, n8, n9, fn30)
			networkSegments += 1

			if tbl2.IsPostDropRoute() then
				local postDropRouteTrace = tbl2.PostDropRouteTrace

				if type(postDropRouteTrace) == "table" then
					postDropRouteTrace.Segments = (postDropRouteTrace.Segments or 0) + 1
					postDropRouteTrace.LastSegmentAt = os.clock()
					postDropRouteTrace.LastSegmentLength = magnitude3
					postDropRouteTrace.LastRequestedSpeed = requestedSpeed
					postDropRouteTrace.LastPosition = v3.Position
					postDropRouteTrace.Target = target
				end
			end

			tbl2.MoveTrace.Target = target
			tbl2.MoveTrace.NetworkSegments = networkSegments
			tbl2.MoveTrace.RequestedSpeed = requestedSpeed
			tbl2.MoveTrace.SegmentLength = segmentLength
			tbl2.MoveTrace.SegmentDuration = v7
			tbl2.MoveTrace.FrameSeconds = tbl2.StealTiming.FrameSeconds
			tbl2.MoveTrace.FramePaced = tbl2.IsDeliveryCarry()
			tbl2.MoveTrace.NetworkSynchronized = nil

			if not v8 then
				local v10 = tbl2.IsDeliveryCarry()
				local n10

				if requestedSpeed >= 2000 then
					n10 = 4
				elseif v10 then
					n10 = 4
				else
					n10 = 2
				end

				if (v9 == "Minor movement displacement" or (requestedSpeed >= 2000 or v10) and v9 == "Movement displaced") and n3 < n10 then
					n3 += 1
					local v11
					v11, v3 = getCharacter()
					if not v3 then
						return false, "Character unavailable"
					end
					continue
				end

				return false, v9
			end

			if flag then
				tbl2.MoveTrace.Elapsed = os.clock() - now
				return true
			end
			local v10, v11
			v10, v3, v11 = getCharacter()
			if v3 == nil then
				return false, "Character unavailable"
			end

			if v11 ~= nil and tbl2.StealPresentationState.Depth > 0 then
				v11:Move(Vector3.zero, false)
			end
		end

		return false, "Cancelled"
	end

	primaryCarryHeightOffset = 50
	tbl2.PrimaryCarryHeightUid = nil
	tbl2.PrimaryCarryHeightY = nil
	tbl2.PrimaryCarryHeightOffset = primaryCarryHeightOffset

	tbl2.IsPrimaryCarryHeightActive = function(arg)
		local carryUid = arg or tbl2.CarryUid
		return type(carryUid) == "string" and tbl2.IsCarrying == true and tbl2.CarryUid == carryUid and tbl2.PrimaryCarryTargetUid == carryUid and tbl2.PrimaryCarryHeightUid == carryUid
	end

	tbl2.SetPrimaryCarryHeightTarget = function(arg, arg2)
		if not tbl2.IsPrimaryCarryHeightActive(arg2 or tbl2.CarryUid) or type(arg) ~= "number" then
			return nil
		end
		local primaryCarryHeightY = arg + primaryCarryHeightOffset
		tbl2.PrimaryCarryHeightY = primaryCarryHeightY
		return primaryCarryHeightY
	end

	tbl2.HoldPrimaryCarryHeight = function(arg, arg2)
		if not tbl2.IsPrimaryCarryHeightActive(arg2 or tbl2.CarryUid) or not arg or not arg:IsA("BasePart") or type(tbl2.PrimaryCarryHeightY) ~= "number" then
			return false
		end
		local assemblyLinearVelocity = arg.AssemblyLinearVelocity
		local z = assemblyLinearVelocity.Z
		arg.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, math.clamp((tbl2.PrimaryCarryHeightY - arg.Position.Y) * 14, -90, 90), z)
		return true
	end

	tbl2.ClearPrimaryCarryHeight = function(clearReason)
		if tbl2.PrimaryCarryHeightUid ~= nil then
			tbl2.PrimaryCarryHeightTrace = tbl2.PrimaryCarryHeightTrace or {}
			tbl2.PrimaryCarryHeightTrace.ClearedAt = os.clock()
			tbl2.PrimaryCarryHeightTrace.ClearReason = clearReason or "Cleared"
		end

		tbl2.PrimaryCarryHeightUid = nil
		tbl2.PrimaryCarryHeightY = nil
	end

	tbl2.CarryPhysicsDrive = {
		Active = false,
		Uid = nil,
		Target = nil,
		Speed = 0,
		Arrival = 0.75,
		Phase = nil,
		MinSpeed = 0,
		MinSpeedUntil = 0,
		LastDt = 0,
		Steps = 0,
	}

	tbl2.SetCarryPhysicsDrive = function(uid, target, arg, arg2, phase, arg3, arg4)
		if type(uid) ~= "string" or typeof(target) ~= "Vector3" then
			return false
		end
		local carryPhysicsDrive = tbl2.CarryPhysicsDrive

		if carryPhysicsDrive.Active ~= true or carryPhysicsDrive.Uid ~= uid then
			carryPhysicsDrive.Steps = 0
			carryPhysicsDrive.StartedAt = os.clock()
			carryPhysicsDrive.MinSpeed = 0
			carryPhysicsDrive.MinSpeedUntil = 0
		end

		carryPhysicsDrive.Active = true
		carryPhysicsDrive.Uid = uid
		carryPhysicsDrive.Target = target
		carryPhysicsDrive.Speed = math.max(1, tonumber(arg) or 1350)
		carryPhysicsDrive.Arrival = math.max(0.25, tonumber(arg2) or 0.75)
		carryPhysicsDrive.Phase = phase

		if tonumber(arg3) then
			carryPhysicsDrive.MinSpeed = math.max(0, tonumber(arg3))
		end

		if tonumber(arg4) then
			carryPhysicsDrive.MinSpeedUntil = tonumber(arg4)
		end

		carryPhysicsDrive.UpdatedAt = os.clock()
		return true
	end

	tbl2.StopCarryPhysicsDrive = function(arg, stopReason, arg2)
		local carryPhysicsDrive = tbl2.CarryPhysicsDrive
		if arg ~= nil and carryPhysicsDrive.Uid ~= arg then
			return
		end
		carryPhysicsDrive.Active = false
		carryPhysicsDrive.StoppedAt = os.clock()
		carryPhysicsDrive.StopReason = stopReason or "Stopped"
		carryPhysicsDrive.Target = nil
		carryPhysicsDrive.Phase = nil
		carryPhysicsDrive.MinSpeed = 0
		carryPhysicsDrive.MinSpeedUntil = 0

		if arg2 == true then
			local character = localPlayer.Character
			character = character and character:FindFirstChild("HumanoidRootPart")

			if character and character:IsA("BasePart") then
				character.AssemblyLinearVelocity = Vector3.zero
				character.AssemblyAngularVelocity = Vector3.zero
			end
		end
	end

	connect(RunService.PreSimulation or RunService.Stepped, function(arg, arg2)
		local carryPhysicsDrive = tbl2.CarryPhysicsDrive
		if not carryPhysicsDrive.Active then
			return
		end
		local uid = carryPhysicsDrive.Uid
		if not tbl2.Alive or tbl2.IsCarrying ~= true or tbl2.CarryUid ~= uid then
			tbl2.StopCarryPhysicsDrive(uid, "Carry state ended", false)
			return
		end
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		character = character and character:FindFirstChildOfClass("Humanoid")
		if not humanoidRootPart or not humanoidRootPart:IsA("BasePart") or not character or character.Health <= 0 then
			tbl2.StopCarryPhysicsDrive(uid, "Character unavailable", false)
			return
		end
		local target = carryPhysicsDrive.Target
		if typeof(target) ~= "Vector3" then
			return
		end
		local n2 = target - humanoidRootPart.Position
		local vector = Vector3.new(n2.X, 0, n2.Z)
		local now = os.clock()
		local n3 = math.max(1, tonumber(carryPhysicsDrive.Speed) or 1350)
		local lastSpeed

		if now < (carryPhysicsDrive.MinSpeedUntil or 0) then
			lastSpeed = math.max(n3, tonumber(carryPhysicsDrive.MinSpeed) or 0)
		else
			lastSpeed = n3
		end

		local lastDt = math.clamp(tonumber(arg2) or tonumber(arg) or 0.016666666666666666, 0.0041666666666666666, 0.25)
		local n4 = math.min(lastSpeed, vector.Magnitude * 0.95 / lastDt)
		local vector2 = vector.Magnitude > carryPhysicsDrive.Arrival and vector.Unit * n4 or Vector3.zero
		local n5 = now < (carryPhysicsDrive.MinSpeedUntil or 0) and 180 or 110
		local n6 = math.clamp(math.clamp(n2.Y * 12, -n5, n5), -math.abs(n2.Y) * 0.95 / lastDt, math.abs(n2.Y) * 0.95 / lastDt)

		if math.abs(n2.Y) <= 0.35 then
			n6 = 0
		end

		humanoidRootPart.AssemblyLinearVelocity = Vector3.new(vector2.X, n6, vector2.Z)
		humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
		carryPhysicsDrive.LastDt = lastDt
		carryPhysicsDrive.LastPosition = humanoidRootPart.Position
		carryPhysicsDrive.LastVelocity = humanoidRootPart.AssemblyLinearVelocity
		carryPhysicsDrive.LastSpeed = lastSpeed
		carryPhysicsDrive.LastDistance = n2.Magnitude
		carryPhysicsDrive.Steps = (carryPhysicsDrive.Steps or 0) + 1
	end)

	setStealTweenPresentation = function(arg)
		local stealPresentationState = tbl2.StealPresentationState

		if arg then
			stealPresentationState.Depth = (stealPresentationState.Depth or 0) + 1
			if stealPresentationState.Depth > 1 then
				return true
			end
			local v3, v4, v5 = getCharacter()
			if v3 == nil or v5 == nil then
				stealPresentationState.Depth = 0
				return false
			end
			local animate = v3:FindFirstChild("Animate")
			local animator = v5:FindFirstChildOfClass("Animator")
			stealPresentationState.Character = v3
			stealPresentationState.Humanoid = v5
			stealPresentationState.Animate = animate
			stealPresentationState.AnimateDisabled = nil
			stealPresentationState.AutoRotate = v5.AutoRotate

			if animate ~= nil then
				stealPresentationState.AnimateDisabled = animate.Disabled
				animate.Disabled = true
			end

			v5.AutoRotate = false
			v5:Move(Vector3.zero, false)

			if animator ~= nil then
				for _, v6 in ipairs(animator:GetPlayingAnimationTracks()) do
					pcall(v6.Stop, v6, 0)
				end

				stealPresentationState.AnimationPlayedConnection = animator.AnimationPlayed:Connect(function(arg2)
					if tbl2.Alive and stealPresentationState.Depth > 0 then
						task.defer(function()
							if stealPresentationState.Depth > 0 then
								pcall(arg2.Stop, arg2, 0)
							end
						end)
					end
				end)
			end

			return true
		end

		stealPresentationState.Depth = math.max(0, (stealPresentationState.Depth or 0) - 1)
		if stealPresentationState.Depth > 0 then
			return true
		end

		if stealPresentationState.AnimationPlayedConnection ~= nil then
			stealPresentationState.AnimationPlayedConnection:Disconnect()
			stealPresentationState.AnimationPlayedConnection = nil
		end

		if stealPresentationState.Humanoid ~= nil and stealPresentationState.Humanoid.Parent ~= nil then
			if stealPresentationState.AutoRotate ~= nil then
				stealPresentationState.Humanoid.AutoRotate = stealPresentationState.AutoRotate
			end

			stealPresentationState.Humanoid:Move(Vector3.zero, false)
		end

		if stealPresentationState.Animate ~= nil and stealPresentationState.Animate.Parent ~= nil and stealPresentationState.AnimateDisabled ~= nil then
			stealPresentationState.Animate.Disabled = stealPresentationState.AnimateDisabled
		end

		stealPresentationState.Character = nil
		stealPresentationState.Humanoid = nil
		stealPresentationState.Animate = nil
		stealPresentationState.AnimateDisabled = nil
		stealPresentationState.AutoRotate = nil
		return true
	end

	tbl2.SetStealTweenPresentation = setStealTweenPresentation

	tbl2.TrapAvoidance.Move = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
		local trapAvoidance = tbl2.TrapAvoidance
		arg7 = arg7 or fn29
		trapAvoidance.LastError = nil
		local result

		for i = 1, 12 do
			trapAvoidance.Interrupted = false
			if not tbl2.Alive or arg2 ~= tbl2.MoveGeneration then
				return false, "Cancelled"
			end

			if not tbl.AvoidTraps and not tbl2.IsDeliveryCarry() then
				local v3, v4 = arg7(arg, arg2, arg3, arg4, arg5, arg6, function()
					return not tbl.AvoidTraps and not tbl2.IsDeliveryCarry()
				end)

				if v4 == "Trap route changed" then
					trapAvoidance.Replans = trapAvoidance.Replans + 1
					continue
				end
				return v3, v4
			end

			local v3, v4 = getCharacter()
			if v4 == nil then
				return false, "Character unavailable"
			end
			local v5 = trapAvoidance.ReadHazards()
			local v6, waiting

			if tbl2.IsDeliveryCarry() then
				v6, waiting = trapAvoidance.SelectPrepared(v4.Position, arg, v5)
			else
				v6, waiting = trapAvoidance.Plan(v4.Position, arg, v5)
			end

			if v6 == nil then
				trapAvoidance.LastError = waiting
				setStatus("Waiting: " .. waiting)
				return false, waiting
			end

			trapAvoidance.WaypointCount = #v6
			local flag = false
			local exitTo = nil

			for i2, v7 in ipairs(v6) do
				local n2

				if (tonumber(arg5) or 0) >= 2000 then
					n2 = 4
				else
					local flag2 = tbl2.IsDeliveryCarry()

					if not flag2 then
						flag2 = (tonumber(arg5) or 0) >= 1000
					end

					if flag2 then
						n2 = 3
					else
						n2 = 1.2
					end
				end

				local arrivalDistance = i2 == #v6 and (arg6 or tbl.ArrivalDistance) or n2
				trapAvoidance.Active = true
				local ok, result2

				ok, result2, result = pcall(arg7, v7, arg2, arg3, arg4, arg5, arrivalDistance, function(arg8, arg9)
					return trapAvoidance.Clear(arg8, arg9, trapAvoidance.ReadHazards())
				end)

				trapAvoidance.Active = false

				if not ok then
					error(result2, 0)
				end

				if not result2 then
					exitTo = 1
					break
				end
			end

			if exitTo == 1 then
				if result ~= "Trap route changed" then
					return false, result
				end
				trapAvoidance.Replans = trapAvoidance.Replans + 1
				flag = true
			end

			if not flag then
				return true
			end
		end

		trapAvoidance.LastError = "Trap layout keeps changing"
		return false, trapAvoidance.LastError
	end

	moveTo = function(arg, arg2, arg3, arg4, arg5)
		if tbl2.FarmTransaction and tbl2.FarmTransaction.Thread ~= coroutine.running() then
			return false, "Movement busy"
		end
		local now = os.clock()

		while tbl2.Moving and tbl2.Alive do
			if arg2 ~= nil and tbl[arg2] ~= true then
				return false, "Cancelled"
			end

			if os.clock() - now > 12 then
				return false, "Movement busy"
			end
			task.wait(0.05)
		end

		if not tbl2.Alive then
			return false, "Destroyed"
		end
		local v3 = arg3

		local function fn30()
			if localPlayer:GetAttribute("InScrambleArena") == true then
				return true, "Scramble arena owns movement"
			end

			if v3 then
				return v3()
			end
			return false
		end

		tbl2.ClearTreadmillState(arg2 or "MOVE", false)
		tbl2.Moving = true
		tbl2.MoveTrace = { Mode = "Planning", Steps = 0 }
		tbl2.MoveGeneration = tbl2.MoveGeneration + 1
		local moveGeneration = tbl2.MoveGeneration
		local now2 = os.clock()
		table.insert(tbl2.RouteTrace, { Label = tbl2.Status, Target = arg, StartedAt = now2 })

		while #tbl2.RouteTrace > 12 do
			table.remove(tbl2.RouteTrace, 1)
		end

		local ok, result, result2 = xpcall(function()
			if tbl2.ActiveTargetUid ~= nil or tbl2.IsCarrying or arg2 == "AutoSteal" or arg2 == "AutoFarmCycle" or tbl.AvoidTraps then
				return tbl2.TrapAvoidance.Move(arg, moveGeneration, arg2, fn30, arg4 or tbl.TweenSpeed, arg5, fn29)
			end
			return fn29(arg, moveGeneration, arg2, fn30, arg4, arg5)
		end, debug.traceback)

		if tbl2.ActiveMoveTween then
			pcall(function()
				tbl2.ActiveMoveTween:Cancel()
			end)

			tbl2.ActiveMoveTween = nil
		end

		tbl2.Moving = false

		if tbl.NoClipMovement then
			local character = localPlayer.Character

			if character ~= nil then
				setMovementNoClip(character, false)
			end
		end

		tbl2.MoveTrace.Success = ok and result == true
		tbl2.MoveTrace.Reason = ok and result2 or result
		tbl2.MoveTrace.TotalElapsed = os.clock() - now2
		if not ok then
			setError("MOVE", result)
			return false, result
		end
		return result, result2
	end
end

local fn28

fn28 = function(arg)
	local areas = fn7()
	areas = areas and areas:FindFirstChild("Areas")
	areas = areas and areas:FindFirstChild("GuardAreas")
	if areas == nil or type(arg) ~= "string" then
		return nil
	end
	return areas:FindFirstChild(arg)
end

tbl2.PlanCarryGuardBypass = function(arg, arg2, arg3, arg4)
	tbl2.CarryGuardBypass = nil
	local bounds = fn28(arg2)
	local guard = bounds and bounds:FindFirstChild("Guard")
	bounds = bounds and bounds:FindFirstChild("Bounds")
	local humanoidRootPart = guard and guard:FindFirstChild("HumanoidRootPart")
	local attribute = guard and guard:GetAttribute("GuardState")
	local guardBypassTrace = { Uid = arg, AreaId = arg2, At = os.clock(), GuardState = attribute }
	tbl2.GuardBypassTrace = guardBypassTrace
	if attribute == nil or attribute == "Sleeping" and guard:GetAttribute("Sleeping") == true or not humanoidRootPart or not humanoidRootPart:IsA("BasePart") or not bounds or not bounds:IsA("BasePart") then
		guardBypassTrace.Decision = "No active guard"
		return nil
	end
	local position = humanoidRootPart.Position
	guardBypassTrace.GuardPosition = { position.X, position.Z }
	if position.X >= arg3.X - 8 or position.X <= arg4.X + 8 then
		guardBypassTrace.Decision = "Guard outside return leg"
		return nil
	end
	local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
	local n2 = position.X + math.clamp(assemblyLinearVelocity.X * 0.25, -32, 32)
	local n3 = position.Z + math.clamp(assemblyLinearVelocity.Z * 0.25, -32, 32)
	local n4 = 40 + math.max(humanoidRootPart.Size.X, humanoidRootPart.Size.Z) * 0.5
	local n5 = n4 * n4
	local n6 = (n4 + 20) * (n4 + 20)

	local function fn29(arg5, arg6, arg7, arg8)
		local n7 = arg6.X - arg5.X
		local n8 = arg6.Z - arg5.Z
		local n9 = n7 * n7 + n8 * n8
		local n10 = n9 > 0 and math.clamp(((arg7 - arg5.X) * n7 + (arg8 - arg5.Z) * n8) / n9, 0, 1) or 0
		local n11 = arg5.X + n10 * n7 - arg7
		local n12 = arg5.Z + n10 * n8 - arg8
		return n11 * n11 + n12 * n12
	end

	local function fn30(arg5, arg6)
		return fn29(arg5, arg6, position.X, position.Z) >= n5 and fn29(arg5, arg6, n2, n3) >= n5
	end

	if fn29(arg3, arg4, position.X, position.Z) >= n6 and fn29(arg3, arg4, n2, n3) >= n6 then
		guardBypassTrace.Decision = "Direct lane clear"
		return nil
	end
	local n7 = math.min(58, bounds.Size.Z * 0.5 - 12)
	if n7 < 25 then
		guardBypassTrace.Decision = "No arena shoulder"
		return nil
	end
	local n8 = math.max(arg4.X, position.X - 65)
	if n8 >= arg3.X - 8 then
		guardBypassTrace.Decision = "Guard too close for bypass"
		return nil
	end
	local v3, v4, v5 = ipairs({ -1, 1 })
	local v6 = nil
	local points = nil

	for _, v7 in v3, v4, v5 do
		local n9 = bounds.Position.Z + v7 * n7
		local vector = Vector3.new(n8, arg4.Y, n9)

		if fn30(arg3, vector) and fn30(vector, arg4) then
			local n10 = (vector - arg3).Magnitude + (arg4 - vector).Magnitude

			if not v6 or n10 < v6 then
				points = { vector }
				v6 = n10
			end
		else
			local vector2 = Vector3.new(arg3.X, arg4.Y, n9)

			if arg3.X - position.X >= 100 and fn30(arg3, vector2) and fn30(vector2, vector) and fn30(vector, arg4) then
				local n10 = (vector2 - arg3).Magnitude + (vector - vector2).Magnitude + (arg4 - vector).Magnitude + 20

				if not v6 or n10 < v6 then
					points = { vector2, vector }
					v6 = n10
				end
			end
		end
	end

	if not points then
		guardBypassTrace.Decision = "No clear bypass"
		return nil
	end

	local carryGuardBypass = {
		Uid = arg,
		AreaId = arg2,
		Character = localPlayer.Character,
		Points = points,
		GuardX = position.X,
		GuardZ = position.Z,
	}

	tbl2.CarryGuardBypass = carryGuardBypass
	guardBypassTrace.Decision = "Committed shoulder"
	guardBypassTrace.Points = points
	return carryGuardBypass
end

local fn29, fn30, n2, fn31, fn32, fn33

do
	local function fn34(arg)
		local bounds = fn28(arg)
		bounds = bounds and bounds:FindFirstChild("Bounds")
		if bounds == nil or not bounds:IsA("BasePart") then
			return nil
		end
		return bounds.Position + Vector3.new(0, 3, 0)
	end

	fn29 = function(arg)
		local areas = fn7()
		areas = areas and areas:FindFirstChild("Areas")
		areas = areas and areas:FindFirstChild("GuardAreas")
		if areas == nil then
			return nil
		end

		for _, child in ipairs(areas:GetChildren()) do
			local bounds = child:FindFirstChild("Bounds")

			if bounds ~= nil and bounds:IsA("BasePart") then
				local v3 = bounds.CFrame:PointToObjectSpace(arg)
				local n3 = bounds.Size * 0.5
				local n4 = n3.X + 8
				local flag = math.abs(v3.X) <= n4

				if flag then
					local n5 = n3.Z + 8
					flag = math.abs(v3.Z) <= n5
				end

				if flag then
					return child.Name
				end
			end
		end

		return nil
	end

	fn30 = function()
		local areas = fn7()
		areas = areas and areas:FindFirstChild("Areas")
		areas = areas and areas:FindFirstChild("SeparationLine")
		if areas == nil or not areas:IsA("BasePart") then
			return nil
		end
		local n3 = areas.Position + Vector3.new(0, 3, 0)
		return n3 - areas.CFrame.LookVector.Unit * math.max(tonumber(tbl.StealDeliveryOutsideDistance) or 50, (tonumber(tbl.ArrivalDistance) or 12) + 30), n3 + areas.CFrame.LookVector.Unit * 14
	end

	tbl2.BeginAntiHitCameraHold = function(visualCharacter)
		local antiHitSteal = tbl2.AntiHitSteal
		tbl2.EndAntiHitCameraHold()
		local currentCamera = Workspace.CurrentCamera
		if visualCharacter == nil or currentCamera == nil then
			return false
		end
		antiHitSteal.VisualCharacter = visualCharacter
		antiHitSteal.VisualCamera = currentCamera
		antiHitSteal.VisualCameraSubject = currentCamera.CameraSubject
		antiHitSteal.VisualCameraType = currentCamera.CameraType
		antiHitSteal.VisualCameraCFrame = currentCamera.CFrame
		antiHitSteal.VisualCameraFocus = currentCamera.Focus
		antiHitSteal.VisualPickupPivot = visualCharacter:GetPivot()
		antiHitSteal.VisualHolding = true
		currentCamera.CameraType = Enum.CameraType.Scriptable

		antiHitSteal.VisualCameraConnection = RunService.PreRender:Connect(function()
			if antiHitSteal.VisualHolding and antiHitSteal.VisualCamera == currentCamera and currentCamera.Parent ~= nil then
				currentCamera.CameraType = Enum.CameraType.Scriptable
				currentCamera.CFrame = antiHitSteal.VisualCameraCFrame
				currentCamera.Focus = antiHitSteal.VisualCameraFocus
			end
		end)

		return true
	end

	tbl2.RemoveRunEffect = function(arg)
		local character = arg or localPlayer.Character
		if character == nil then
			return false
		end
		local eternalTrail = character:FindFirstChild("EternalTrail", true)
		local flag = false

		if eternalTrail ~= nil then
			pcall(eternalTrail.Destroy, eternalTrail)
			flag = true
		end

		for _, descendant in ipairs(character:GetDescendants()) do
			if descendant:IsA("Trail") and descendant.Parent ~= nil then
				pcall(descendant.Destroy, descendant)
				flag = true
			end
		end

		return flag
	end

	tbl2.EndAntiHitCameraHold = function()
		local antiHitSteal = tbl2.AntiHitSteal
		antiHitSteal.VisualHolding = false

		if antiHitSteal.VisualCameraConnection ~= nil then
			pcall(antiHitSteal.VisualCameraConnection.Disconnect, antiHitSteal.VisualCameraConnection)
			antiHitSteal.VisualCameraConnection = nil
		end

		local visualCamera = antiHitSteal.VisualCamera

		if visualCamera ~= nil and visualCamera.Parent ~= nil then
			visualCamera.CameraType = antiHitSteal.VisualCameraType or Enum.CameraType.Custom
			local visualCameraSubject = antiHitSteal.VisualCameraSubject

			if visualCameraSubject == nil or visualCameraSubject.Parent == nil then
				local character = localPlayer.Character
				visualCameraSubject = character and character:FindFirstChildOfClass("Humanoid")
			end

			if visualCameraSubject ~= nil then
				visualCamera.CameraSubject = visualCameraSubject
			end
		end

		antiHitSteal.VisualCharacter = nil
		antiHitSteal.VisualCamera = nil
		antiHitSteal.VisualCameraSubject = nil
		antiHitSteal.VisualCameraType = nil
		antiHitSteal.VisualCameraCFrame = nil
		antiHitSteal.VisualCameraFocus = nil
		antiHitSteal.VisualPickupPivot = nil
	end

	tbl2.RunAntiHitStealEscape = function()
		local antiHitSteal = tbl2.AntiHitSteal
		local carryUid = tbl2.CarryUid
		if not tbl.AntiHitSteal or not tbl2.Alive then
			return false, "Cancelled"
		end

		if type(carryUid) ~= "string" or not tbl2.IsCarryStateConfirmed(carryUid) then
			return false, "Carry is not authoritatively confirmed"
		end

		if antiHitSteal.LastEscapedUid == carryUid or antiHitSteal.Active then
			return false, "Waiting for claim"
		end
		local lastTarget = select(1, fn30())
		if lastTarget == nil then
			return false, "Exit target unavailable"
		end
		stopMovement()
		local v3, v4, v5 = getCharacter()
		if v3 == nil or v4 == nil or v5 == nil or v5.Health <= 0 then
			return false, "Character unavailable"
		end
		local flag = tbl2.NoClipCharacter == v3
		tbl2.BeginAntiHitCameraHold(v3)

		if tbl.GodMode or tbl.AntiRagdoll then
			protectHumanoid(v5)
		end

		if tbl.NoClipMovement then
			setMovementNoClip(v3, true)
		end

		if tbl.GuardBypass then
			tbl2.RefreshForestAttackProtection()
		end

		primeMovementIntegrity(v4, v4.Position)
		local now = os.clock()
		antiHitSteal.Active = true
		antiHitSteal.Uid = carryUid
		antiHitSteal.StartedAt = now
		antiHitSteal.EndsAt = now + 0.1
		antiHitSteal.Pulses = 0
		antiHitSteal.LastTarget = lastTarget
		antiHitSteal.LastReason = nil
		local flag2, lastReason

		while true do
			local antiHitSteal2 = tbl2.Alive and tbl.AntiHitSteal

			if antiHitSteal2 then
				local endsAt = antiHitSteal.EndsAt
				antiHitSteal2 = os.clock() < endsAt
			end

			flag2 = true
			lastReason = "Anti-hit safe-zone escape complete"

			if antiHitSteal2 then
				if not tbl2.IsCarryStateConfirmed(carryUid) then
					flag2 = false
					lastReason = "Carry dropped"
					break
				else
					local v6, v7, v8 = getCharacter()

					if v6 == nil or v7 == nil or v8 == nil or v8.Health <= 0 then
						flag2 = false
						lastReason = "Character unavailable"
						break
					else
						local rotation = v7.CFrame.Rotation
						local cFrame = v7.CFrame
						v6:PivotTo(CFrame.new(lastTarget) * rotation * cFrame:ToObjectSpace(v6:GetPivot()))
						v7.AssemblyLinearVelocity = Vector3.zero
						v7.AssemblyAngularVelocity = Vector3.zero
						antiHitSteal.Pulses = antiHitSteal.Pulses + 1

						if os.clock() - now >= 0.05 then
							if tbl.GodMode or tbl.AntiRagdoll then
								protectHumanoid(v8)
							end

							primeMovementIntegrity(v7, v7.Position)
							now = os.clock()
						end

						RunService.Heartbeat:Wait()
						continue
					end
				end
			end

			break
		end

		if not tbl.AntiHitSteal then
			flag2 = false
			lastReason = "Cancelled"
		end

		antiHitSteal.Active = false

		if flag2 then
			antiHitSteal.LastEscapedUid = carryUid
		end

		antiHitSteal.LastReason = lastReason

		if not flag and tbl2.NoClipCharacter == v3 then
			setMovementNoClip(v3, false)
		end

		local n3 = os.clock() + 2

		while true do
			if tbl2.Alive and tbl.AntiHitSteal and antiHitSteal.VisualHolding and os.clock() < n3 then
				local v6
				v6, v6 = getCharacter()
				local visualPickupPivot = antiHitSteal.VisualPickupPivot
				if not (v6 == nil or visualPickupPivot == nil or (v6.Position - visualPickupPivot.Position).Magnitude <= 12) then
					RunService.Heartbeat:Wait()
					continue
				end
			end

			break
		end

		tbl2.EndAntiHitCameraHold()
		return flag2, lastReason
	end

	tbl2.QueueAntiHitCarryEscape = function()
		if not tbl.AntiHitSteal or not tbl2.Alive or not tbl2.IsCarrying then
			return false
		end

		if tbl2.ManualCarryLift ~= nil then
			return false
		end

		if tbl2.StealInProgress or tbl2.ActiveTargetUid ~= nil or tbl2.Checker.ManualBusy or tbl2.AntiHitSteal.Active then
			return false
		end
		local carryUid = tbl2.CarryUid
		if type(carryUid) ~= "string" or tbl2.AntiHitSteal.LastEscapedUid == carryUid then
			return false
		end

		task.spawn(function()
			if tbl2.Alive and tbl.AntiHitSteal and tbl2.IsCarrying and tbl2.CarryUid == carryUid then
				tbl2.RunAntiHitStealEscape()
			end
		end)

		return true
	end

	tbl2.StopManualCarryLift = function()
		local manualCarryLift = tbl2.ManualCarryLift
		tbl2.ManualCarryLift = nil
		if manualCarryLift == nil then
			return
		end

		if manualCarryLift.Connection then
			manualCarryLift.Connection:Disconnect()
		end

		if manualCarryLift.Tween then
			manualCarryLift.Tween:Cancel()
		end

		if manualCarryLift.HeightValue then
			manualCarryLift.HeightValue:Destroy()
		end
	end

	tbl2.StartManualCarryLift = function()
		if not tbl.ManualCarryLift or not tbl2.Alive or not tbl2.IsCarrying then
			return false
		end
		local carryUid = tbl2.CarryUid
		if type(carryUid) ~= "string" then
			return false
		end

		if tbl2.StealInProgress or tbl2.ActiveTargetUid ~= nil or tbl2.Checker.ManualBusy or tbl2.FarmTransaction ~= nil or tbl2.Moving or tbl2.AntiHitSteal.Active or tbl2.PlayerSteal.Busy then
			return false
		end

		if tbl2.ManualCarryLift ~= nil then
			if tbl2.ManualCarryLift.Uid == carryUid then
				return true
			end
			tbl2.StopManualCarryLift()
		end

		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if humanoidRootPart == nil or humanoid == nil or humanoid.Health <= 0 then
			return false
		end
		local numberValue = Instance.new("NumberValue")
		numberValue.Value = humanoidRootPart.Position.Y
		local n3 = numberValue.Value + 50
		local tween = TweenService2:Create(numberValue, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Value = n3 })
		local manualCarryLift = { Uid = carryUid, Character = character, Root = humanoidRootPart, HeightValue = numberValue, Tween = tween, TargetY = n3 }
		tbl2.ManualCarryLift = manualCarryLift

		local function fn35()
			if tbl2.ManualCarryLift ~= manualCarryLift then
				return
			end

			if not tbl2.Alive or not tbl.ManualCarryLift or not tbl2.IsCarrying or tbl2.CarryUid ~= carryUid or localPlayer.Character ~= character or humanoidRootPart.Parent ~= character or humanoid.Health <= 0 or tbl2.Moving or tbl2.StealInProgress or tbl2.ActiveTargetUid ~= nil or tbl2.Checker.ManualBusy or tbl2.FarmTransaction ~= nil or tbl2.PlayerSteal.Busy or tbl2.AntiHitSteal.Active then
				tbl2.StopManualCarryLift()
				return
			end
			local position = humanoidRootPart.Position
			humanoidRootPart.CFrame = CFrame.new(position.X, numberValue.Value, position.Z) * humanoidRootPart.CFrame.Rotation
			local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
			humanoidRootPart.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
		end

		manualCarryLift.Connection = RunService.PreSimulation:Connect(fn35)
		fn35()
		tween:Play()
		return true
	end

	tbl2.GetHeldEggTool = function(arg)
		local character = localPlayer.Character
		if character == nil or type(arg) ~= "string" then
			return nil
		end

		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Tool") and child:GetAttribute("ItemType") == "AssetEgg" and child:GetAttribute("UID") == arg and child:FindFirstChild("Handle") ~= nil then
				return child
			end
		end

		return nil
	end

	tbl2.IsCarryStateConfirmed = function(arg)
		return tbl2.IsCarrying and tbl2.CarryUid == arg and tbl2.CarryConfirmedAt > 0
	end

	tbl2.IsCarryConfirmed = function(arg)
		return tbl2.IsCarryStateConfirmed(arg)
	end

	tbl2.TryConfirmCarry = function(arg)
		if tbl2.IsCarryStateConfirmed(arg) then
			if tbl2.CarryToolConfirmedAt <= 0 and tbl2.GetHeldEggTool(arg) ~= nil then
				tbl2.CarryToolConfirmedAt = os.clock()
			end

			return true
		end

		return false
	end

	tbl2.ClearCarryWatch = function()
		local carryWatch = tbl2.CarryWatch
		tbl2.CarryWatch = nil

		if carryWatch and carryWatch.Connection then
			carryWatch.Connection:Disconnect()
		end
	end

	tbl2.ObserveCarryGuard = function()
		local carryWatch = tbl2.CarryWatch
		if not carryWatch or carryWatch.Character ~= localPlayer.Character or not tbl2.IsCarryStateConfirmed(carryWatch.Uid) then
			return
		end

		if not carryWatch.Guard.Parent then
			return
		end
		local attribute = carryWatch.Guard:GetAttribute("GuardState")

		if carryWatch.State ~= attribute then
			carryWatch.State = attribute
			local changes = carryWatch.Changes or {}
			carryWatch.Changes = changes
			changes[#changes + 1] = { At = os.clock(), State = attribute }

			if #changes > 4 then
				table.remove(changes, 1)
			end
		end

		if attribute == "Chasing" then
			carryWatch.ChasingAt = carryWatch.ChasingAt or os.clock()

			if tbl2.CarryUid == tbl2.PrimaryCarryTargetUid and (tbl2.StealInProgress or tbl2.Checker.ManualBusy) and not tbl2.IsPrimaryChaseProtected(tbl2.CarryUid, tbl2.CarryAreaId) then
				tbl2.ArmPrimaryChaseProtection(tbl2.CarryUid, tbl2.CarryAreaId)
			end
		end
	end

	tbl2.BeginCarryWatch = function(arg, arg2)
		local guard = fn28(arg2)
		guard = guard and guard:FindFirstChild("Guard")
		local carryWatch = tbl2.CarryWatch
		if carryWatch and carryWatch.Uid == arg and carryWatch.Character == localPlayer.Character and carryWatch.Guard == guard then
			tbl2.ObserveCarryGuard()
			return
		end
		tbl2.ClearCarryWatch()
		if not guard then
			return
		end
		local carryWatch2 = { Uid = arg, Character = localPlayer.Character, Guard = guard, Root = guard:FindFirstChild("HumanoidRootPart") }
		tbl2.CarryWatch = carryWatch2
		carryWatch2.Connection = guard:GetAttributeChangedSignal("GuardState"):Connect(tbl2.ObserveCarryGuard)
		tbl2.ObserveCarryGuard()
	end

	tbl2.WaitForRunBackReady = function(arg, arg2, arg3)
		local runBackReadyTrace = {
			Uid = arg,
			AreaId = arg2 or tbl2.CarryAreaId,
			WakeDelayRequired = tbl2.CarryRunBackWakeDelayRequired == true,
			StartedAt = os.clock(),
			GuardState = "Not required",
		}

		tbl2.RunBackReadyTrace = runBackReadyTrace
		if arg3 ~= nil and tbl[arg3] ~= true then
			runBackReadyTrace.Outcome = "Cancelled"
			return false, "Cancelled"
		end

		if not tbl2.IsCarryConfirmed(arg) then
			runBackReadyTrace.Outcome = "Carry is not confirmed"
			return false, "Carry is not confirmed"
		end

		if tbl2.CarryRunBackWakeDelayRequired ~= true then
			runBackReadyTrace.Outcome = "Ready without guard wake"
			runBackReadyTrace.ReadyAt = os.clock()
			return true
		end

		arg2 = arg2 or tbl2.CarryAreaId
		tbl2.BeginCarryWatch(arg, arg2)
		local v3 = tbl2.NewStealDeadline(8)
		local character = localPlayer.Character
		setStatus(string.format("Waiting for %s guard chase", tostring(arg2 or "arena")))

		while tbl2.Alive do
			local v4, v5, v6 = getCharacter()
			if v4 ~= character or localPlayer.Character ~= character or not v5 or not v6 or v6.Health <= 0 then
				runBackReadyTrace.Outcome = "Character changed"
				return false, "Character changed"
			end

			if tbl2.HoldPrimaryCarryHeight then
				tbl2.HoldPrimaryCarryHeight(v5, arg)
			end

			if arg3 ~= nil and tbl[arg3] ~= true then
				runBackReadyTrace.Outcome = "Cancelled"
				return false, "Cancelled"
			end

			if not tbl2.IsCarryConfirmed(arg) then
				runBackReadyTrace.Outcome = "Carry dropped before guard chase"
				return false, "Carry dropped before guard chase"
			end
			local guard = fn28(arg2)
			guard = guard and guard:FindFirstChild("Guard")
			local attribute = guard and guard:GetAttribute("GuardState") or "Unavailable"
			runBackReadyTrace.GuardState = attribute
			local carryWatch = tbl2.CarryWatch
			local chasingAt = carryWatch and carryWatch.Uid == arg and carryWatch.Character == character and carryWatch.Guard == guard and carryWatch.ChasingAt

			if attribute == "Chasing" or chasingAt then
				runBackReadyTrace.ChasingObservedAt = chasingAt or os.clock()
				RunService.Heartbeat:Wait()
				if not tbl2.Alive then
					return false, "Destroyed"
				end
				arg3 = arg3 and tbl[arg3] ~= true
				if arg3 then
					return false, "Cancelled"
				end

				if localPlayer.Character ~= character then
					return false, "Character changed"
				end

				if not tbl2.IsCarryConfirmed(arg) then
					runBackReadyTrace.Outcome = "Carry dropped at guard wake"
					return false, "Carry dropped at guard wake"
				end
				runBackReadyTrace.ReadyAt = os.clock()
				runBackReadyTrace.Waited = runBackReadyTrace.ReadyAt - runBackReadyTrace.StartedAt
				runBackReadyTrace.Outcome = "Guard chasing"
				return true
			end

			if tbl2.StealDeadlineExpired(v3) then
				break
			end
			tbl2.WaitStealFrame(v3)
		end

		if not tbl2.Alive then
			return false, "Destroyed"
		end
		local startedAt = runBackReadyTrace.StartedAt
		runBackReadyTrace.Waited = os.clock() - startedAt
		runBackReadyTrace.Outcome = "Guard chase timeout"
		return false, "Guard chase timeout"
	end

	tbl2.ClearRideRigPool = function()
		local rideRigPool = tbl2.RideRigPool
		tbl2.RideRigPool = nil
		if not rideRigPool then
			return
		end

		if rideRigPool.Rider then
			pcall(rideRigPool.Rider.Destroy, rideRigPool.Rider)
		end

		if rideRigPool.Model then
			pcall(rideRigPool.Model.Destroy, rideRigPool.Model)
		end
	end

	tbl2.CreateRideController = function(arg, arg2, arg3, arg4)
		assert(typeof(arg) == "Instance" and arg:IsA("Model"), "Guard model required")
		assert(typeof(arg2) == "Instance" and arg2:IsA("Model"), "Character required")
		local humanoidRootPart = arg2:FindFirstChild("HumanoidRootPart")
		local humanoid = arg2:FindFirstChildOfClass("Humanoid")
		assert(humanoidRootPart and humanoid and humanoid.Health > 0, "Living character required")
		local flag = UserInputService.TouchEnabled and tbl.MobileDirectRide == true
		arg3 = arg3 or CFrame.new()
		assert(typeof(arg3) == "CFrame", "Offset must be a CFrame")
		local parent = arg.Parent
		assert(parent, "Guard parent required")
		local rideRigPool = tbl2.RideRigPool
		local rider = nil
		local model

		if rideRigPool and rideRigPool.Guard == arg and rideRigPool.Character == arg2 and rideRigPool.Model and rideRigPool.Rider and rideRigPool.Model.Parent == nil and rideRigPool.Rider.Parent == nil then
			model = rideRigPool.Model
			rider = rideRigPool.Rider
			tbl2.RideRigPool = nil
		else
			model = nil

			if rideRigPool then
				tbl2.ClearRideRigPool()
				model = nil
			end
		end

		local tbl5

		tbl5 = {
			Connections = {},
			Stopped = false,
			OriginalGuard = arg,
			HiddenParts = {},
			HiddenEffects = {},
			Tracks = {},
			Stop = function()
				if tbl5.Stopped then
					return
				end
				tbl5.Stopped = true

				if tbl5.ClearCarryVisual then
					tbl5.ClearCarryVisual()
				end

				if tbl5.RestoreRideCamera then
					pcall(tbl5.RestoreRideCamera)
				end

				for _, connection in ipairs(tbl5.Connections) do
					connection:Disconnect()
				end

				table.clear(tbl5.Connections)

				if tbl5.RenderStepName then
					pcall(function()
						RunService:UnbindFromRenderStep(tbl5.RenderStepName)
					end)

					tbl5.RenderStepName = nil
				end

				tbl5.DirectFollowActive = false

				for k, hiddenPart in pairs(tbl5.HiddenParts) do
					pcall(function()
						k.LocalTransparencyModifier = hiddenPart
					end)
				end

				table.clear(tbl5.HiddenParts)

				for k, hiddenEffect in pairs(tbl5.HiddenEffects) do
					pcall(function()
						k.Enabled = hiddenEffect
					end)
				end

				table.clear(tbl5.HiddenEffects)

				for _, track in ipairs(tbl5.Tracks) do
					pcall(function()
						track:Stop(0)
						track:Destroy()
					end)
				end

				table.clear(tbl5.Tracks)

				if tbl5.RiderMotorC0 then
					for k, v3 in pairs(tbl5.RiderMotorC0) do
						pcall(function()
							k.C0 = v3
							k.Transform = CFrame.new()
						end)
					end
				end

				if tbl5.Recyclable and tbl2.Alive and localPlayer.Character == arg2 and arg.Parent ~= nil and tbl5.Rider ~= nil and tbl5.Model ~= nil then
					for _, v3 in ipairs(tbl5.Rider:QueryDescendants("JointInstance")) do
						if v3.Name == "VisualSaddle" then
							v3:Destroy()
						end
					end

					tbl5.Rider.Parent = nil
					tbl5.Model.Parent = nil
					tbl2.ClearRideRigPool()
					tbl2.RideRigPool = { Character = arg2, Guard = arg, Model = tbl5.Model, Rider = tbl5.Rider }
					tbl5.Pooled = true
				else
					if tbl5.Rider then
						tbl5.Rider:Destroy()
						tbl5.Rider = nil
					end

					if tbl5.Model then
						tbl5.Model:Destroy()
						tbl5.Model = nil
					end
				end

				if tbl5.Parked and arg.Parent == nil then
					local ok, result = pcall(function()
						arg.Parent = parent
					end)

					tbl5.Restored = ok
					tbl5.RestoreError = ok and nil or tostring(result)
				end
			end,
		}

		local model2 = model

		if model2 == nil then
			local archivable = arg.Archivable
			arg.Archivable = true
			local ok
			ok, model2 = pcall(arg.Clone, arg)
			arg.Archivable = archivable
			assert(ok and model2, "Guard clone failed")
		else
			tbl5.ReusedRig = true
		end

		tbl5.Model = model2

		local ok, result = pcall(function()
			model2.Name = "__EggStealRide_" .. parent.Name

			for _, v3 in ipairs(model2:QueryDescendants("Script, LocalScript, ModuleScript")) do
				v3:Destroy()
			end

			local humanoidRootPart2 = model2:FindFirstChild("HumanoidRootPart")
			assert(humanoidRootPart2 and humanoidRootPart2:IsA("BasePart"), "Clone root missing")
			local BasePart = model2:QueryDescendants("BasePart")

			for _, v3 in ipairs(BasePart) do
				v3.Anchored = false
				v3.Massless = true
				v3.CanCollide = false
				v3.CanTouch = false
				v3.CanQuery = false
			end

			local humanoid2 = model2:FindFirstChildOfClass("Humanoid")

			if humanoid2 then
				humanoid2.AutoRotate = false
				humanoid2.PlatformStand = true
				humanoid2.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			end

			local huge = math.huge

			for _, v3 in ipairs(BasePart) do
				v3.LocalTransparencyModifier = 0

				if v3.Transparency < 1 then
					local v4 = humanoidRootPart2.CFrame:ToObjectSpace(v3.CFrame)
					local n3 = v3.Size * 0.5
					local x = n3.X
					local y = n3.Y
					local z = n3.Z
					huge = math.min(huge, v4.Position.Y - math.abs(v4.RightVector.Y) * x + math.abs(v4.UpVector.Y) * y + math.abs(v4.LookVector.Y) * z)
				end
			end

			if huge == math.huge then
				huge = -3
			end

			humanoidRootPart2.Anchored = true
			tbl5.VisualOnly = true
			local rider2 = rider

			if rider2 == nil then
				local archivable = arg2.Archivable
				arg2.Archivable = true
				local ok
				ok, rider2 = pcall(arg2.Clone, arg2)
				arg2.Archivable = archivable
				assert(ok and rider2, "Visual rider clone failed")
			end

			tbl5.Rider = rider2
			rider2.Name = "__EggStealVisualRider"

			for _, v3 in ipairs(rider2:QueryDescendants("Script, LocalScript, ModuleScript, Tool")) do
				v3:Destroy()
			end

			local v3 = assert(rider2:FindFirstChild("HumanoidRootPart"), "Visual rider root missing")

			for _, v4 in ipairs(rider2:QueryDescendants("BasePart")) do
				v4.Anchored = false
				v4.Massless = true
				v4.CanCollide = false
				v4.CanTouch = false
				v4.CanQuery = false
				v4.LocalTransparencyModifier = 0
			end

			local humanoid3 = rider2:FindFirstChildOfClass("Humanoid")

			if humanoid3 then
				humanoid3.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				humanoid3.AutoRotate = false
				humanoid3.PlatformStand = true
				humanoid3.AutomaticScalingEnabled = false
			end

			local v4 = nil
			local cameraSubject = nil
			local cameraType = nil
			local v5 = humanoid3 or v3

			tbl5.RestoreRideCamera = function()
				if v4 then
					v4.CameraSubject = cameraSubject
					v4.CameraType = cameraType or Enum.CameraType.Custom
				end

				v4 = nil
			end

			local function fn35()
				local currentCamera = Workspace.CurrentCamera

				if currentCamera and tbl5.Started and rider2.Parent then
					if not v4 then
						v4 = currentCamera
						cameraSubject = currentCamera.CameraSubject
						cameraType = currentCamera.CameraType
					end

					currentCamera.CameraSubject = v5
					currentCamera.CameraType = Enum.CameraType.Custom
				end
			end

			local tbl6 = {}
			tbl5.RiderMotorC0 = setmetatable({}, { __mode = "k" })

			for _, v6 in ipairs(rider2:QueryDescendants("Animator")) do
				v6:Destroy()
			end

			for _, v6 in ipairs(rider2:QueryDescendants("Motor6D")) do
				tbl5.RiderMotorC0[v6] = v6.C0
				v6.Transform = CFrame.new()

				if v6.Name == "LeftHip" or v6.Name == "RightHip" or v6.Name == "Left Hip" or v6.Name == "Right Hip" then
					local rotation = v6.C0.Rotation
					tbl6[v6] = CFrame.new(v6.C0.Position) * CFrame.Angles(1.3962634015954636, 0, 0) * rotation
				elseif v6.Name == "LeftKnee" or v6.Name == "RightKnee" then
					local rotation = v6.C0.Rotation
					tbl6[v6] = CFrame.new(v6.C0.Position) * CFrame.Angles(-1.3962634015954636, 0, 0) * rotation
				end
			end

			local function fn36()
				for k, v6 in pairs(tbl6) do
					if k.Parent then
						k.C0 = v6
						k.Transform = CFrame.new()
					end
				end
			end

			local weld = Instance.new("Weld")
			weld.Name = "VisualSaddle"
			local n3 = -math.huge
			local v6 = nil

			for _, v7 in ipairs(BasePart) do
				local str2 = v7.Name:lower()

				if v7.Transparency < 1 and v7 ~= humanoidRootPart2 and not str2:find("head") and not str2:find("tail") and not str2:find("wing") and not str2:find("leg") and not str2:find("foot") and not str2:find("paw") then
					local size = v7.Size
					local n4 = size.X * size.Y * size.Z / (1 + math.abs(humanoidRootPart2.CFrame:PointToObjectSpace(v7.Position).X) * 0.1)

					if str2 == "body" or str2 == "torso" or str2 == "uppertorso" then
						n4 *= 4
					end

					if n4 > n3 then
						n3 = n4
						v6 = v7
					end
				end
			end

			assert(v6, "Visible mount body missing")
			local lowerTorso = rider2:FindFirstChild("LowerTorso") or rider2:FindFirstChild("Torso") or v3
			local n4 = -(v3.CFrame:PointToObjectSpace(lowerTorso.Position).Y - lowerTorso.Size.Y * 0.5) + 0.05

			local tbl7 = {
				upperbody = 100,
				torso2 = 95,
				body = 90,
				spine2 = 85,
				spine = 80,
				torso1 = 75,
				torso = 70,
				lowerbody = 60,
			}

			local v7 = nil

			if not flag then
				local n5 = 0

				for _, v8 in ipairs(model2:QueryDescendants("Bone")) do
					local n6 = tbl7[v8.Name:lower()] or 0

					if n5 < n6 then
						v7 = v8
						n5 = n6
					end
				end
			end

			local v8 = nil

			if v7 then
				local tbl8 = {}
				local parent2 = v7

				while parent2 and parent2:IsA("Bone") do
					table.insert(tbl8, 1, parent2.CFrame)
					parent2 = parent2.Parent
				end

				assert(parent2 and parent2:IsA("BasePart"), "Bone anchor missing")
				local cFrame = parent2.CFrame

				for _, v9 in ipairs(tbl8) do
					cFrame *= v9
				end

				local rotation = humanoidRootPart2.CFrame.Rotation
				v8 = cFrame:ToObjectSpace(CFrame.new(cFrame.Position + humanoidRootPart2.CFrame.UpVector * (v6.Size.Y * 0.5 + n4)) * rotation)
				v3.Anchored = true
				weld:Destroy()
				tbl5.SaddleBone = v7.Name
				tbl5.SaddleMode = "AnimatedBone"
			else
				weld.Part0 = v6
				weld.Part1 = v3
				local v9 = v6.CFrame:VectorToObjectSpace(humanoidRootPart2.CFrame.UpVector)
				local n5 = v6.Size * 0.5
				local huge2 = math.huge

				if math.abs(v9.X) > 0.0001 then
					huge2 = math.min(math.huge, n5.X / math.abs(v9.X))
				end

				local n6

				if not (math.abs(v9.Y) > 0.0001) then
					n6 = huge2
				else
					n6 = math.min(huge2, n5.Y / math.abs(v9.Y))
				end

				local n7

				if not (math.abs(v9.Z) > 0.0001) then
					n7 = n6
				else
					n7 = math.min(n6, n5.Z / math.abs(v9.Z))
				end

				local rotation = humanoidRootPart2.CFrame.Rotation
				weld.C0 = v6.CFrame:ToObjectSpace(CFrame.new(v6.Position + humanoidRootPart2.CFrame.UpVector * n7 + humanoidRootPart2.CFrame.UpVector * n4) * rotation)
				weld.Parent = v3
				tbl5.SaddleMode = "RigidBody"
			end

			tbl5.SaddleBody = v6.Name
			tbl5.SaddlePadding = 0.05

			local function fn37()
				if not v7 or not rider2.Parent then
					return
				end
				rider2:PivotTo(v7.TransformedWorldCFrame * v8 * v3.CFrame:ToObjectSpace(rider2:GetPivot()))
			end

			local function fn38(arg5, arg6)
				return arg5.Parent ~= nil and not fn8(arg5) and (arg5 == arg6 or arg5:IsDescendantOf(arg6))
			end

			local function fn39(arg5, arg6, arg7, arg8)
				local function fn40(arg9)
					local v9 = fn38(arg9, arg7)
					local flag2

					if v9 then
						flag2 = v9
					else
						flag2 = arg8 ~= nil and fn38(arg9, arg8)
					end

					return flag2
				end

				for k, v9 in pairs(arg5) do
					if fn40(k) then
						if k.LocalTransparencyModifier ~= 1 then
							k.LocalTransparencyModifier = 1
						end
					else
						arg5[k] = nil

						pcall(function()
							k.LocalTransparencyModifier = v9
						end)
					end
				end

				for k, v9 in pairs(arg6) do
					if fn40(k) then
						if k.Enabled then
							k.Enabled = false
						end
					else
						arg6[k] = nil

						pcall(function()
							k.Enabled = v9
						end)
					end
				end
			end

			local function fn40(arg5)
				local stopped = tbl5.Stopped

				if not stopped then
					stopped = not (fn38(arg5, arg2) or fn38(arg5, arg))
				end

				if stopped then
					return
				end

				if arg5:IsA("BasePart") then
					if tbl5.HiddenParts[arg5] == nil then
						tbl5.HiddenParts[arg5] = arg5.LocalTransparencyModifier
					end

					if arg5.LocalTransparencyModifier ~= 1 then
						arg5.LocalTransparencyModifier = 1
					end
				elseif arg5:IsA("Trail") or arg5:IsA("Beam") or arg5:IsA("ParticleEmitter") then
					if tbl5.HiddenEffects[arg5] == nil then
						tbl5.HiddenEffects[arg5] = arg5.Enabled
					end

					if arg5.Enabled then
						arg5.Enabled = false
					end

					if arg5:IsA("Trail") or arg5:IsA("ParticleEmitter") then
						arg5:Clear()
					end
				end
			end

			local v9 = nil
			local v10 = nil
			local v11 = nil
			local flag2 = false
			local tbl8 = {}
			local tbl9 = {}
			local tbl10 = {}
			local upperTorso = arg2:FindFirstChild("UpperTorso") or arg2:FindFirstChild("Torso") or humanoidRootPart
			local upperTorso2 = rider2:FindFirstChild("UpperTorso") or rider2:FindFirstChild("Torso") or v3
			local tbl11 = {}

			local tbl12 = {
				LeftShoulder = true,
				RightShoulder = true,
				LeftElbow = true,
				RightElbow = true,
				LeftWrist = true,
				RightWrist = true,
				["Left Shoulder"] = true,
				["Right Shoulder"] = true,
			}

			for _, v12 in ipairs(rider2:QueryDescendants("Motor6D")) do
				if tbl12[v12.Name] and v12.Part0 then
					local v13 = arg2:FindFirstChild(v12.Parent.Name)
					v13 = v13 and v13:FindFirstChild(v12.Name)

					if v13 and v13:IsA("Motor6D") then
						tbl11[#tbl11 + 1] = { Visual = v12, Original = v13 }
					end
				end
			end

			local tbl13 = {
				LeftShoulder = 1,
				RightShoulder = 1,
				["Left Shoulder"] = 1,
				["Right Shoulder"] = 1,
				LeftElbow = 2,
				RightElbow = 2,
				LeftWrist = 3,
				RightWrist = 3,
			}

			table.sort(tbl11, function(arg5, arg6)
				return tbl13[arg5.Visual.Name] < tbl13[arg6.Visual.Name]
			end)

			local function fn41()
				for _, v12 in ipairs(tbl8) do
					v12:Disconnect()
				end

				table.clear(tbl8)

				for k, v12 in pairs(tbl9) do
					pcall(function()
						k.LocalTransparencyModifier = v12
					end)
				end

				for k, v12 in pairs(tbl10) do
					pcall(function()
						k.Enabled = v12
					end)
				end

				table.clear(tbl9)
				table.clear(tbl10)
				v9 = nil
			end

			tbl5.ClearCarryVisual = function()
				fn41()

				if v10 then
					v10:Destroy()
					v10 = nil
				end

				v11 = nil
			end

			local function fn42(descendant)
				if not v9 or not fn38(descendant, v9) then
					return
				end

				if descendant:IsA("BasePart") then
					if tbl9[descendant] == nil then
						tbl9[descendant] = descendant.LocalTransparencyModifier
					end
				elseif descendant:IsA("Trail") or descendant:IsA("Beam") or descendant:IsA("ParticleEmitter") or descendant:IsA("BillboardGui") or descendant:IsA("SurfaceGui") then
					if tbl10[descendant] == nil then
						tbl10[descendant] = descendant.Enabled
					end
				end
			end

			local function fn43()
				local carryUid = tbl5.CarryUid

				if not tbl5.Started or not carryUid or not tbl2.IsCarrying or tbl2.CarryUid ~= carryUid then
					if v9 then
						fn41()
					end

					if v10 then
						v10.Parent = nil
					end

					return
				end

				local v12 = Workspace:FindFirstChild(carryUid)

				if not v12 or not v12:IsA("Model") or fn8(v12) then
					v12 = nil
				end

				if v12 ~= v9 then
					fn41()
					v9 = v12

					if v12 then
						tbl8[1] = v12.DescendantAdded:Connect(fn42)

						for _, v13 in ipairs(v12:QueryDescendants("BasePart, Trail, Beam, ParticleEmitter, BillboardGui, SurfaceGui")) do
							fn42(v13)
						end
					end
				end

				if not flag2 and v12 and v12:FindFirstChildWhichIsA("BasePart", true) then
					flag2 = true
					local archivable = v12.Archivable
					v12.Archivable = true
					local ok, result = pcall(v12.Clone, v12)
					v12.Archivable = archivable

					if ok and result then
						result.Name = "__EggStealVisualCarry"

						for _, v13 in ipairs(result:QueryDescendants("Script, LocalScript, ModuleScript, JointInstance, WeldConstraint, Constraint, ProximityPrompt")) do
							v13:Destroy()
						end

						local BasePart2 = result:QueryDescendants("BasePart")

						if #BasePart2 > 0 then
							for _, v13 in ipairs(BasePart2) do
								v13.Anchored = not tbl5.DirectFollowActive
								v13.Massless = true
								v13.CanCollide = false
								v13.CanTouch = false
								v13.CanQuery = false
								v13.LocalTransparencyModifier = 0
							end

							for _, v13 in ipairs(result:QueryDescendants("Trail, Beam, ParticleEmitter, BillboardGui, SurfaceGui")) do
								v13.Enabled = false
							end

							result:PivotTo(upperTorso2.CFrame * upperTorso.CFrame:ToObjectSpace(v12:GetPivot()))

							if tbl5.DirectFollowActive then
								for _, v13 in ipairs(BasePart2) do
									local weldConstraint = Instance.new("WeldConstraint")
									weldConstraint.Part0 = upperTorso2
									weldConstraint.Part1 = v13
									weldConstraint.Parent = v13
								end
							end

							result.Parent = model2
							v10 = result
						else
							result:Destroy()
						end
					end
				end

				if not v10 then
					return
				end

				for _, v13 in ipairs(tbl11) do
					local visual = v13.Visual
					local original = v13.Original

					if visual.Parent and original.Parent then
						local c1 = original.C1
						visual.C0 = original.C0
						visual.C1 = c1
						visual.Transform = original.Transform

						if not tbl5.DirectFollowActive and visual.Part0 and visual.Part1 then
							visual.Part1.CFrame = visual.Part0.CFrame * visual.C0 * visual.Transform * visual.C1:Inverse()
						end
					end
				end

				if v12 and not tbl5.DirectFollowActive then
					v11 = upperTorso.CFrame:ToObjectSpace(v12:GetPivot())
				end

				if tbl5.DirectFollowActive then
					if v10.Parent ~= model2 then
						v10.Parent = model2
					end
				elseif v11 then
					v10:PivotTo(upperTorso2.CFrame * v11)

					if v10.Parent ~= model2 then
						v10.Parent = model2
					end
				end

				if v12 then
					fn39(tbl9, tbl10, v12)
				end
			end

			local v12 = arg2:QueryDescendants("BasePart, Trail, Beam, ParticleEmitter")

			local function fn44(descendant)
				if tbl5.Started then
					fn40(descendant)
				else
					v12[#v12 + 1] = descendant
				end
			end

			table.insert(tbl5.Connections, arg2.DescendantAdded:Connect(fn44))
			local v13 = ipairs
			local v14 = table.pack(arg:QueryDescendants("BasePart, Trail, Beam, ParticleEmitter"))
			v14.n = 1 + v14.n - 1
			table.move(v14, 1, v14.n, 1, v14)

			for _, v15 in v13(table.unpack(v14, 1, v14.n)) do
				v12[#v12 + 1] = v15
			end

			table.insert(tbl5.Connections, arg.DescendantAdded:Connect(fn44))
			local v15 = fn7()
			local areas = v15 and v15:FindFirstChild("Areas")
			local ground = areas and areas:FindFirstChild("Ground")
			local raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Include
			raycastParams.FilterDescendantsInstances = ground and { ground } or {}
			local humanoidRootPart3 = arg:FindFirstChild("HumanoidRootPart")
			local n5 = (humanoidRootPart3 and humanoidRootPart3:IsA("BasePart") and humanoidRootPart3.Position.Y or humanoidRootPart2.Position.Y) + huge - 0.15
			local vector = Vector3.new(0, 0, -1)
			local v16 = nil
			local n6 = 0

			local function fn45(arg5, arg6)
				if tbl5.Stopped then
					return
				end

				if not humanoidRootPart.Parent or not humanoidRootPart2.Parent then
					tbl5.Stop()
					return
				end
				local vector2 = fn30()
				vector2 = vector2 and Vector3.new(vector2.X - humanoidRootPart.Position.X, 0, vector2.Z - humanoidRootPart.Position.Z)

				if vector2 and vector2.Magnitude > 6 then
					vector = vector2.Unit
				end

				local y = n5
				local v17 = n5

				if ground then
					local hit = Workspace:Raycast(humanoidRootPart.Position + Vector3.new(0, 100, 0), Vector3.new(0, -400, 0), raycastParams)

					if hit then
						y = hit.Position.Y
						n5 = y
					end
				else
					y = v17
				end

				local vector3 = Vector3.new(humanoidRootPart.Position.X, y - huge + 0.15, humanoidRootPart.Position.Z)
				local n7 = CFrame.lookAt(vector3, vector3 + vector) * arg3
				local n8 = math.clamp(tonumber(arg5) or 0, 0, 0.1)

				if v16 == nil or n8 == 0 or (n7.Position - v16.Position).Magnitude > 160 then
					v16 = n7
				else
					v16 = v16:Lerp(n7, 1 - math.exp(-24 * n8))
				end

				model2:PivotTo(v16 * humanoidRootPart2.CFrame:ToObjectSpace(model2:GetPivot()))
				local now = os.clock()

				if n6 <= now then
					fn39(tbl5.HiddenParts, tbl5.HiddenEffects, arg2, arg)
					n6 = now + 0.1
				end

				fn37()

				if not arg6 then
					fn43()
				end

				tbl5.GroundY = y
				tbl5.Facing = vector
			end

			local function fn46()
				local v17 = humanoidRootPart2.CFrame:ToObjectSpace(model2:GetPivot())
				local v18 = fn30()
				local renderStepName = "EggStealRide_" .. tostring(tbl5):gsub("%W", "")

				local ok, result = pcall(function()
					RunService:BindToRenderStep(renderStepName, Enum.RenderPriority.Camera.Value - 1, function()
						if tbl5.Stopped then
							return
						end

						if localPlayer.Character ~= arg2 or not humanoidRootPart.Parent or not humanoidRootPart2.Parent then
							if not tbl5.DirectStopQueued then
								tbl5.DirectStopQueued = true
								task.defer(tbl5.Stop)
							end

							return
						end

						local position = humanoidRootPart.Position
						local v19 = n5
						local y = n5

						if ground then
							local hit = Workspace:Raycast(position + Vector3.new(0, 100, 0), Vector3.new(0, -400, 0), raycastParams)

							if hit then
								y = hit.Position.Y
								n5 = y
							else
								y = v19
							end
						end

						local vector2 = v18 and Vector3.new(v18.X - position.X, 0, v18.Z - position.Z)

						if vector2 and vector2.Magnitude > 6 then
							vector = vector2.Unit
						end

						local vector3 = Vector3.new(position.X, y - huge + 0.15, position.Z)
						model2:PivotTo(CFrame.lookAt(vector3, vector3 + vector) * arg3 * v17)
						tbl5.GroundY = y
						tbl5.Facing = vector
					end)
				end)

				if not ok then
					return false, tostring(result)
				end
				tbl5.RenderStepName = renderStepName
				tbl5.DirectFollowActive = true
				return true
			end

			tbl5.Parked = false
			local tbl14 = {}

			for _, v17 in ipairs(BasePart) do
				tbl14[v17] = v17.LocalTransparencyModifier
				v17.LocalTransparencyModifier = 1
			end

			for _, v17 in ipairs(rider2:QueryDescendants("BasePart")) do
				tbl14[v17] = v17.LocalTransparencyModifier
				v17.LocalTransparencyModifier = 1
			end

			local tbl15 = {}

			for _, v17 in ipairs({ model2, rider2 }) do
				for _, v18 in ipairs(v17:QueryDescendants("Trail, Beam, ParticleEmitter, BillboardGui, SurfaceGui, PointLight, SpotLight, SurfaceLight")) do
					tbl15[v18] = v18.Enabled
					v18.Enabled = false

					if v18:IsA("Trail") or v18:IsA("ParticleEmitter") then
						v18:Clear()
					end
				end
			end

			model2.Parent = Workspace

			local ok, result = pcall(function()
				local data = ReplicatedStorage:FindFirstChild("Data")
				data = data and data:FindFirstChild("Guards")

				if data then
					local name = parent.Name
					data = require(data).Directory[name]
				end

				data = data and data.WalkAnimation

				if not data then
					error("Guard WalkAnimation missing")
				end

				local animator = model2:FindFirstChildWhichIsA("Animator", true)

				if not animator then
					local v17 = humanoid2
					local animationController

					if humanoid2 then
						animationController = v17
					else
						animationController = model2:FindFirstChildOfClass("AnimationController")
					end

					if not animationController then
						animationController = Instance.new("AnimationController")
						animationController.Parent = model2
					end

					animator = Instance.new("Animator")
					animator.Parent = animationController
				end

				for _, v17 in ipairs(animator:GetPlayingAnimationTracks()) do
					v17:Stop(0)
				end

				local v17 = animator:LoadAnimation(data)
				table.insert(tbl5.Tracks, v17)
				v17.Priority = Enum.AnimationPriority.Movement
				v17.Looped = true
				v17:Play(0.1, 1, 1)
				tbl5.WalkAnimationId = data.AnimationId
			end)

			if not ok then
				tbl5.AnimationError = tostring(result)
			end

			rider2.Parent = model2
			fn36()

			tbl5.Start = function()
				if tbl5.Stopped or tbl5.Started then
					return
				end

				if localPlayer.Character ~= arg2 or not humanoidRootPart.Parent or humanoid.Health <= 0 then
					tbl5.Stop()
					return
				end
				tbl5.Started = true
				fn45(nil, flag)
				if tbl5.Stopped then
					return
				end

				if flag then
					local v17, v18 = fn46()

					if not v17 then
						tbl2.LastRideError = v18
					end
				end

				for k, v17 in pairs(tbl14) do
					if k.Parent then
						k.LocalTransparencyModifier = v17
					end
				end

				for k, v17 in pairs(tbl15) do
					if k.Parent then
						k.Enabled = v17
					end
				end

				for _, v17 in ipairs(v12) do
					if v17.Parent then
						fn40(v17)
					end
				end

				table.clear(v12)
				table.clear(tbl14)
				table.clear(tbl15)

				if tbl5.DirectFollowActive then
					fn43()
					fn35()

					task.spawn(function()
						while true do
							if not tbl5.Stopped and tbl5.DirectFollowActive then
								task.wait(0.2)

								if not tbl5.Stopped then
									if localPlayer.Character ~= arg2 or not humanoidRootPart.Parent or not humanoidRootPart2.Parent then
										tbl5.Stop()
										break
									else
										local ok2, result2 = pcall(function()
											fn39(tbl5.HiddenParts, tbl5.HiddenEffects, arg2, arg)
											fn43()
											fn35()
										end)

										if not ok2 then
											tbl2.LastRideError = tostring(result2)
											tbl5.Stop()
											break
										else
											continue
										end
									end
								end
							end

							break
						end
					end)
				else
					table.insert(tbl5.Connections, RunService.PreRender:Connect(function(deltaTime)
						if tbl2.ShouldUseLowFpsCarryMode() then
							if not tbl5.LowFpsStopQueued then
								tbl5.LowFpsStopQueued = true
								tbl2.RidePerformanceTrace = { At = os.clock(), Reason = "Low mobile FPS during carry" }

								if tbl2.ActiveRide == tbl5 then
									tbl2.ActiveRide = nil
								end

								task.defer(function()
									tbl5.Stop()

									if tbl2.ClearRideRigPool then
										tbl2.ClearRideRigPool()
									end
								end)
							end

							return
						end

						fn45(deltaTime)
						fn35()
					end))
				end
			end

			if not arg4 then
				tbl5.Start()
			end

			table.insert(tbl5.Connections, humanoid.Died:Connect(tbl5.Stop))

			table.insert(tbl5.Connections, arg2.AncestryChanged:Connect(function(child, parent2)
				if parent2 == nil then
					tbl5.Stop()
				end
			end))

			task.delay(60, tbl5.Stop)
		end)

		if not ok then
			tbl5.Stop()
			error(result)
		end

		tbl5.Recyclable = true
		return tbl5
	end

	tbl2.ClearPreparedRide = function()
		local preparedRide = tbl2.PreparedRide
		tbl2.PreparedRide = nil

		if preparedRide then
			local ok, result = pcall(preparedRide.Controller.Stop)

			if not ok then
				tbl2.LastRideError = tostring(result)
			end
		end
	end

	tbl2.PrepareStealRide = function(arg)
		tbl2.ClearPreparedRide()
		if not tbl.StealRideVisual or tbl2.IsCarrying then
			return
		end
		local flag = tbl2.ShouldUseLowFpsCarryMode()

		if flag then
			flag = not (UserInputService.TouchEnabled and tbl.MobileDirectRide)
		end

		if flag then
			tbl2.RidePreparationTrace = { Uid = arg.Uid, Skipped = "Low mobile FPS", FrameSeconds = tbl2.StealTiming.FrameSeconds }

			if tbl2.ClearRideRigPool then
				tbl2.ClearRideRigPool()
			end

			return
		end

		local character = localPlayer.Character
		local guard = fn28(arg.AreaId)
		guard = guard and guard:FindFirstChild("Guard")
		if not character or not guard then
			return
		end
		local now = os.clock()
		local ok, result = pcall(tbl2.CreateRideController, guard, character, nil, true)
		tbl2.RidePreparationTrace = { Uid = arg.Uid, Seconds = os.clock() - now, Success = ok }

		if ok and tbl2.Alive and tbl.StealRideVisual and localPlayer.Character == character and guard.Parent and not result.Stopped then
			tbl2.PreparedRide = { Uid = arg.Uid, Character = character, Guard = guard, Controller = result }
		elseif ok then
			result.Stop()
		else
			tbl2.LastRideError = tostring(result)
		end
	end

	tbl2.StartPendingRide = function()
		local activeRide = tbl2.ActiveRide
		if not activeRide or activeRide.Stopped or activeRide.Started or activeRide.StartQueued then
			return
		end
		local flag = tbl2.ShouldUseLowFpsCarryMode()

		if flag then
			flag = not (UserInputService.TouchEnabled and tbl.MobileDirectRide)
		end

		if flag then
			tbl2.ActiveRide = nil
			tbl2.RidePerformanceTrace = { At = os.clock(), Reason = "Low mobile FPS before ride start" }

			task.defer(function()
				activeRide.Stop()

				if tbl2.ClearRideRigPool then
					tbl2.ClearRideRigPool()
				end
			end)

			return
		end

		activeRide.StartQueued = true

		task.defer(function()
			if tbl2.Alive and tbl2.ActiveRide == activeRide and tbl2.IsCarryStateConfirmed(activeRide.CarryUid) then
				local ok, result = pcall(activeRide.Start)

				if not ok then
					tbl2.LastRideError = tostring(result)
					activeRide.Stop()
				end
			end
		end)
	end

	tbl2.WaitForDeliveryClaim = function(arg, arg2, droppedTargetUid)
		local v3 = tbl2.NewStealDeadline(6)
		local character = localPlayer.Character
		local flag = false

		while true do
			if not tbl2.Alive then
				return false, "Destroyed"
			else
				if arg and tbl[arg] ~= true then
					return false, "Cancelled"
				end

				if arg2 < tbl2.Metrics.Stolen then
					return true
				end

				if localPlayer.Character ~= character then
					return false, "Character changed"
				end
				local v4, v5, v6 = getCharacter()
				if not v4 or not v5 or not v6 or v6.Health <= 0 then
					return false, "Character unavailable"
				end
				local flag2 = type(droppedTargetUid) == "string" and not tbl2.IsCarrying
				local flag3 = false
				local result = nil

				if flag2 then
					flag3, result = pcall(getAreaEggRecord, droppedTargetUid)
				end

				flag3 = flag3 and type(result) == "table" and result.Uid == droppedTargetUid and (result.State == "Dropped" or result.State == "Slot") and typeof(result.BottomCFrame) == "CFrame"
				flag = flag3 and flag

				if flag then
					local flag4 = tbl2.DroppedTargetUid ~= droppedTargetUid
					local flag5

					if flag4 then
						flag5 = flag4
					else
						flag5 = (tonumber(tbl2.DroppedTargetDeadline) or 0) <= 0
					end

					if flag5 then
						tbl2.DroppedTargetDeadline = os.clock() + 8
					end

					tbl2.DroppedTargetUid = droppedTargetUid
					tbl2.LastDroppedTargetUid = droppedTargetUid
					tbl2.Blacklist[droppedTargetUid] = nil
					tbl2.TargetDirty = true

					if tbl2.LastCarryRelease and tbl2.LastCarryRelease.Uid == droppedTargetUid then
						tbl2.LastCarryRelease.Outcome = result.State == "Slot" and "Guard returned pinned egg to nest" or "Dropped record confirmed"
					end

					return false, result.State == "Slot" and "Pinned egg returned to nest" or "Dropped egg confirmed"
				end

				flag = flag3 == true
				if tbl2.StealDeadlineExpired(v3) then
					break
				end
				tbl2.WaitStealFrame(v3)
			end
		end

		if tbl2.LastCarryRelease then
			tbl2.LastCarryRelease.Outcome = "Released without claim confirmation"
		end

		return false, "Carry released without claim confirmation"
	end

	tbl2.BuildReturnZigzag = function(arg, arg2)
		local n3 = arg2 - arg
		local vector = Vector3.new(n3.X, 0, n3.Z)
		local magnitude = vector.Magnitude
		local tbl5 = {}
		local n4 = math.clamp(tonumber(tbl.StealReturnWaypointDistance) or 30, 5, 100)
		if magnitude <= n4 + 20 then
			return tbl5
		end
		local n5 = math.clamp(tonumber(tbl.StealReturnZigzagSpacing) or 150, 50, 500)
		local n6 = math.clamp(math.floor(tonumber(tbl.StealReturnZigzagMaxPoints) or 8), 2, 12)
		local n7 = math.clamp(math.floor(magnitude / n5), 2, n6)
		local unit = Vector3.new(-vector.Z, 0, vector.X).Unit
		local n8 = (magnitude - n4) / magnitude

		for i = 1, n7 do
			local n9 = n8 * i / (n7 + 1)
			local n10 = i % 2 == 1 and -1 or 1
			local v3 = arg:Lerp(arg2, n9)
			local v4 = fn29(v3)
			local bounds = v4 and fn28(v4)
			bounds = bounds and bounds:FindFirstChild("Bounds")

			if (v4 == "Prehistoric" or v4 == "Abyss Ocean") and bounds and bounds:IsA("BasePart") then
				local n11 = math.clamp(tonumber(tbl.StealReturnWallInset) or 6, 3, 20)
				local n12 = bounds.Size * 0.5
				local v5 = bounds.CFrame:PointToObjectSpace(v3)
				local v6 = bounds.CFrame:VectorToObjectSpace(unit * n10)
				local huge = math.huge
				local flag = true

				for _, v7 in ipairs({ "X", "Z" }) do
					local n13 = n12[v7] - n11

					if n13 <= 0 or math.abs(v5[v7]) > n13 then
						flag = false
						break
					elseif math.abs(v6[v7]) > 1e-05 then
						huge = math.min(huge, ((v6[v7] > 0 and n13 or -n13) - v5[v7]) / v6[v7])
					end
				end

				if flag and huge < math.huge and huge > 0 then
					v3 += unit * n10 * huge
				end
			end

			tbl5[#tbl5 + 1] = v3
		end

		tbl5[#tbl5 + 1] = arg:Lerp(arg2, n8)
		return tbl5
	end

	tbl2.HasOwnedCarryRecord = function(arg)
		local ok, result = pcall(getAreaEggRecord, arg)
		return ok and type(result) == "table" and result.Uid == arg and result.State == "Carried" and result.CarrierUserId == localPlayer.UserId, ok and type(result) == "table" and result.State or "Unavailable"
	end

	tbl2.WaitForCarryDeparture = function(arg, arg2)
		local character = localPlayer.Character
		local v3 = tbl2.NewStealDeadline(math.max(6, tbl.StealCarryConfirmTimeout))

		tbl2.CarryDepartureTrace = {
			Uid = arg,
			PrimaryUid = tbl2.PrimaryCarryTargetUid,
			PrimerUid = tbl2.PrimerCarryUid,
			StartedAt = os.clock(),
			Ready = false,
		}

		setStatus("Waiting for carried egg ownership")

		while tbl2.Alive do
			if arg2 and tbl[arg2] ~= true then
				return false, "Cancelled"
			end

			if localPlayer.Character ~= character then
				return false, "Character changed"
			end
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")
			if not humanoid or humanoid.Health <= 0 then
				return false, "Character unavailable"
			end

			if not tbl2.IsCarryStateConfirmed(arg) then
				tbl2.CarryDepartureTrace.Failure = "Carry lost before departure"
				return false, tbl2.CarryDepartureTrace.Failure
			end
			local v4, v5 = tbl2.HasOwnedCarryRecord(arg)

			if v4 then
				tbl2.CarryDepartureTrace.Ready = true
				tbl2.CarryDepartureTrace.Proof = "Carry event + Carried record + local carrier"
				tbl2.CarryDepartureTrace.FinishedAt = os.clock()
				return true
			end

			tbl2.CarryDepartureTrace.RecordState = v5
			if tbl2.StealDeadlineExpired(v3) then
				break
			end
			tbl2.WaitStealFrame(v3)
		end

		tbl2.CarryDepartureTrace.Failure = tbl2.Alive and "Carried record confirmation timeout" or "Destroyed"
		return false, tbl2.CarryDepartureTrace.Failure
	end

	local function fn35(arg, arg2)
		if not tbl.ObfuscationCompatibility then
			tbl2.ClearTreadmillState("RETURN_CARRIED", true)
		end

		local carryUid = tbl2.CarryUid
		tbl2.CarryLiftApplied = false
		if carryUid == tbl2.PrimerCarryUid or tbl2.PrimaryCarryTargetUid and carryUid ~= tbl2.PrimaryCarryTargetUid then
			return false, "Primary egg UID not confirmed"
		end

		if carryUid == nil or not tbl2.IsCarryConfirmed(carryUid) then
			return false, "Carry is not authoritatively confirmed"
		end

		tbl2.CarryDepartureTrace = {
			Uid = carryUid,
			PrimaryUid = tbl2.PrimaryCarryTargetUid,
			PrimerUid = tbl2.PrimerCarryUid,
			StartedAt = os.clock(),
			Ready = true,
			Proof = "Matching CarryChanged event; record replication is not a departure gate",
		}

		tbl2.BeginCarryWatch(carryUid, arg2 or tbl2.CarryAreaId)
		local stolen = tbl2.Metrics.Stolen
		local moveGeneration = tbl2.MoveGeneration
		local n3 = math.max(1, tonumber(tbl2.GetCarryReturnSpeed()) or 1000)
		local n4 = math.clamp(tonumber(tbl2.StealTiming.FrameSeconds) or 0.016666666666666666, 0.0041666666666666666, 0.12)
		local n5 = math.clamp(n3 * n4 * 1.15, 42, 84)
		local n6 = math.clamp((n4 - 0.033333333333333333) / 0.08666666666666667, 0, 1)
		local n7 = 1 / math.max(n4, 0.0041666666666666666)
		local n8 = math.clamp(n3 * n4 * 0.38, 0, 72) * n6

		tbl2.UltraLowFpsCarryTrace = {
			FrameSeconds = n4,
			EstimatedFps = n7,
			Factor = n6,
			ReplicationReserve = n8,
			StartedAt = os.clock(),
		}

		tbl2.RunBackReadyTrace = {
			Uid = carryUid,
			AreaId = arg2 or tbl2.CarryAreaId,
			WakeDelayRequired = tbl2.CarryRunBackWakeDelayRequired == true,
			StagingAt = os.clock(),
			Outcome = "Moving before readiness check",
		}

		tbl2.CarryDepartureTrace = tbl2.CarryDepartureTrace or {}
		tbl2.CarryDepartureTrace.Uid = carryUid
		tbl2.CarryDepartureTrace.PrimaryUid = tbl2.PrimaryCarryTargetUid
		tbl2.CarryDepartureTrace.PrimerUid = tbl2.PrimerCarryUid
		tbl2.CarryDepartureTrace.Ready = true
		tbl2.CarryDepartureTrace.Proof = "Matching CarryChanged event; record replication is not a departure gate"

		tbl2.DeliveryTrace = {
			Uid = carryUid,
			StartedAt = os.clock(),
			RequestedSpeed = n3,
			ReturnSpeed = n3,
			RouteMode = "ReplicationAwareBoundary",
			StepCap = n5,
			FrameSeconds = n4,
			FinalSprintSpeed = math.clamp(tonumber(tbl.StealFinalSprintSpeed) or 1150, 1, 1400),
			DeliveryOutsideDistance = tonumber(tbl.StealDeliveryOutsideDistance) or 50,
			GuardReplanDisabled = true,
			TrapReplanDisabled = true,
		}

		local function fn36()
			if stolen < tbl2.Metrics.Stolen then
				return false, "Claimed"
			end

			if not tbl2.IsCarryStateConfirmed(carryUid) then
				return false, "Carry dropped"
			end

			if arg ~= nil and tbl[arg] ~= true then
				return false, "Cancelled"
			end

			if not tbl2.Alive or moveGeneration ~= tbl2.MoveGeneration then
				return false, "Cancelled"
			end
			return true
		end

		local v3 = n3
		tbl2.DeliveryTrace.ReplicationVelocity = true
		tbl2.DeliveryTrace.ReplicationSpeed = v3

		local tbl5 = {
			Enabled = false,
			SafetyFloor = 120,
			ComfortGap = 145,
			ReleaseGap = 160,
			MaxSpeed = 2150,
			SmoothedSpeed = v3,
			LastDistance = nil,
			LastSampleAt = nil,
			ClosingRate = 0,
			LastUpdateAt = os.clock(),
			NextSampleAt = 0,
			CachedDistance = nil,
			CachedClosingRate = 0,
			CachedState = nil,
			Pressure = false,
		}

		tbl2.DeliveryTrace.GuardSpacing = {
			SafetyFloor = tbl5.SafetyFloor,
			ComfortGap = tbl5.ComfortGap,
			ReleaseGap = tbl5.ReleaseGap,
			MaxSpeed = tbl5.MaxSpeed,
			LowFpsFactor = n6,
			ReplicationReserve = n8,
			EstimatedFps = n7,
			Mode = "ObserveOnlyNoGuardSpeedBoost",
		}

		local function fn37(arg3, lastSampleAt)
			local carryWatch = tbl2.CarryWatch
			local guard = carryWatch and carryWatch.Uid == carryUid and carryWatch.Character == localPlayer.Character and carryWatch.Guard or nil
			local root = carryWatch and carryWatch.Root or nil

			if guard and guard.Parent and (not root or not root.Parent) then
				root = guard:FindFirstChild("HumanoidRootPart")

				if carryWatch then
					carryWatch.Root = root
				end
			end

			local flag = carryWatch and carryWatch.Uid == carryUid and carryWatch.ChasingAt ~= nil
			carryWatch = carryWatch and carryWatch.State or nil

			if not root or not root:IsA("BasePart") or not flag then
				tbl5.LastDistance = nil
				tbl5.LastSampleAt = nil
				tbl5.ClosingRate = 0
				return nil, 0, carryWatch, false
			end

			tbl5.Enabled = true
			local n9 = arg3.Position.X - root.Position.X
			local n10 = arg3.Position.Z - root.Position.Z
			local v4 = math.sqrt(n9 * n9 + n10 * n10)
			local closingRate = tbl5.ClosingRate

			if tbl5.LastDistance ~= nil and tbl5.LastSampleAt ~= nil then
				local n11 = lastSampleAt - tbl5.LastSampleAt

				if n11 >= 0.0083333333333333332 then
					local exp = math.exp
					closingRate += (math.clamp((tbl5.LastDistance - v4) / n11, -1200, 1200) - closingRate) * (1 - exp(-9 * math.clamp(n11, 0.0083333333333333332, 0.12)))
					tbl5.ClosingRate = closingRate
					tbl5.LastDistance = v4
					tbl5.LastSampleAt = lastSampleAt
				end
			else
				tbl5.LastDistance = v4
				tbl5.LastSampleAt = lastSampleAt
				tbl5.ClosingRate = 0
				closingRate = 0
			end

			return v4, closingRate, carryWatch, true
		end

		local function fn38(arg3, arg4)
			if arg4 >= tbl5.NextSampleAt then
				tbl5.NextSampleAt = arg4 + 0.1
				local v4 = tbl5
				local v5 = tbl5
				local v6 = tbl5
				local v7, v8, v9 = fn37(arg3, arg4)
				v4.CachedDistance = v7
				v5.CachedClosingRate = v8
				v6.CachedState = v9
			end

			return v3, tbl5.CachedDistance, tbl5.CachedClosingRate, tbl5.CachedState, false, v3
		end

		local function fn39(arg3, arg4, arg5)
			local vector = Vector3.new(arg3.X, 0, arg3.Z)
			if arg3.Magnitude <= arg5 then
				return Vector3.zero
			end
			local vector2 = vector.Magnitude > 0.0001 and vector.Unit * arg4 or Vector3.zero
			return Vector3.new(vector2.X, math.clamp(arg3.Y * 10, -65, 65), vector2.Z)
		end

		local function fn40(logicalWaypoint, arg3, phase, arg4, arg5)
			local n9 = math.max(0.35, tonumber(arg3) or 1)
			local vector

			if arg5 == true then
				if tbl2.IsPrimaryCarryHeightActive(carryUid) then
					tbl2.PrimaryCarryHeightY = logicalWaypoint.Y
					vector = logicalWaypoint
				else
					vector = logicalWaypoint
				end
			elseif tbl2.IsPrimaryCarryHeightActive(carryUid) then
				local v4 = tbl2.SetPrimaryCarryHeightTarget(logicalWaypoint.Y, carryUid)

				if v4 == nil then
					vector = logicalWaypoint
				else
					vector = Vector3.new(logicalWaypoint.X, v4, logicalWaypoint.Z)
				end
			else
				vector = logicalWaypoint
			end

			local deliveryTrace = tbl2.DeliveryTrace
			deliveryTrace.Phase = phase
			deliveryTrace.LogicalWaypoint = logicalWaypoint
			deliveryTrace.Waypoint = vector
			deliveryTrace.RealPlayerYOffset = tbl2.IsPrimaryCarryHeightActive(carryUid) and 50 or 0
			deliveryTrace.Waypoints = deliveryTrace.Waypoints or {}
			deliveryTrace.Waypoints[#deliveryTrace.Waypoints + 1] = vector
			deliveryTrace.WaypointIndex = #deliveryTrace.Waypoints
			deliveryTrace.WaypointCount = #deliveryTrace.Waypoints
			deliveryTrace.WaypointReached = false
			local v4
			v4, v4 = getCharacter()
			if not v4 then
				return false, "Character unavailable"
			end

			local motionDiagnostics = {
				Version = 1,
				StartedAt = os.clock(),
				KnockbackAtStart = tbl2.AntiKnockbackCorrections or 0,
				KnockbackDuringSamples = 0,
				BackwardSamples = 0,
				BetweenSampleBacktracks = 0,
				VelocityChangedSamples = 0,
				MaxSampleSeconds = 0,
				MaxAssistDistance = 0,
			}

			deliveryTrace.MotionDiagnostics = motionDiagnostics
			deliveryTrace.DepartureMotionSamples = {}
			deliveryTrace.MotionSamples = {}
			deliveryTrace.MotionSampleIndex = 0
			deliveryTrace.MotionSampleCadence = 0.1
			local magnitude = (vector - v4.Position).Magnitude
			local max = math.max
			local n10 = os.clock() + max(2.5, magnitude / math.max(1, v3) * 5 + 1.5)
			local now = os.clock()
			local n11 = 0
			local n12 = 0
			local n13 = 0
			local v5 = nil
			local position = nil
			local v6 = nil
			local poorProgressFrames = 0
			local correctionAssistActive = false
			local correctionAssistHealthyFrames = 0
			local n14 = 0

			while os.clock() < n10 do
				local v7, v8 = fn36()
				if not v7 then
					return false, v8
				end
				local v9, v10, v11 = getCharacter()
				if not v9 or not v10 or not v11 or v11.Health <= 0 then
					return false, "Character unavailable"
				end

				if n11 > 0 then
					local now2 = os.clock()

					if tbl.NoClipMovement and (n11 == 1 or now2 - n12 >= 0.2) then
						setMovementNoClip(v9, true)
						n12 = now2
					end

					if (tbl.GodMode or tbl.AntiRagdoll) and (n11 == 1 or now2 - n13 >= 0.1) then
						protectHumanoid(v11)
						n13 = now2
					end
				end

				local n15 = vector - v10.Position
				local magnitude2 = n15.Magnitude
				deliveryTrace.Remaining = magnitude2
				deliveryTrace.Position = v10.Position
				deliveryTrace.Phase = phase

				if magnitude2 <= n9 then
					tbl2.StopCarryPhysicsDrive(carryUid, phase .. " arrived", false)
					local deferredOutsideStop = phase == "Boundary4" or phase == "BoundaryRecross" or phase == "OutsideRepair"

					if arg4 == true and not deferredOutsideStop then
						v10.AssemblyLinearVelocity = Vector3.zero
						v10.AssemblyAngularVelocity = Vector3.zero

						if tbl2.HoldPrimaryCarryHeight then
							tbl2.HoldPrimaryCarryHeight(v10, carryUid)
						end

						primeMovementIntegrityMoving(v10, v10.Position, v10.AssemblyLinearVelocity)
					end

					deliveryTrace.WaypointReached = true
					deliveryTrace.LastReachedAt = os.clock()
					deliveryTrace.DeferredOutsideStop = deferredOutsideStop
					return true
				end

				local vector2 = Vector3.new(n15.X, 0, n15.Z)
				local unit = vector2.Magnitude > 0.05 and vector2.Unit or Vector3.zero
				local now2 = os.clock()
				local primaryDepartureBoost = tbl2.PrimaryDepartureBoost
				local departureBoost = (phase == "ArenaCenter" or phase == "FixedDelivery") and type(primaryDepartureBoost) == "table" and primaryDepartureBoost.Uid == carryUid

				if departureBoost then
					departureBoost = now2 < (primaryDepartureBoost.Until or 0)
				end

				local v12, v13, v14, v15, v16, v17 = fn38(v10, now2)
				local n16

				if departureBoost then
					n16 = math.max(v12, tonumber(primaryDepartureBoost.Speed) or 1900)
				else
					n16 = departureBoost
				end

				n16 = n16 or v12
				local cruiseSpeed

				if phase == "InsideStage" or phase == "Boundary4" or phase == "BoundaryRecross" or phase == "OutsideRepair" then
					local finalSprintFloor = math.clamp(tonumber(tbl.StealFinalSprintSpeed) or 1150, 1, 1400)
					cruiseSpeed = math.max(n16, finalSprintFloor)
					deliveryTrace.FinalSprint = true
					deliveryTrace.FinalSprintFloor = finalSprintFloor
				else
					deliveryTrace.FinalSprint = false
					cruiseSpeed = n16
				end

				local v18 = fn39(n15, cruiseSpeed, n9)
				deliveryTrace.CruiseSpeed = cruiseSpeed
				local setCarryPhysicsDrive = tbl2.SetCarryPhysicsDrive
				local v19 = departureBoost and cruiseSpeed or nil
				local until_

				if departureBoost then
					until_ = primaryDepartureBoost.Until or now2
				else
					until_ = departureBoost
				end

				until_ = until_ or nil
				setCarryPhysicsDrive(carryUid, vector, cruiseSpeed, n9, phase, v19, until_)
				local position2 = v10.Position
				local now3 = os.clock()
				local antiKnockbackCorrections = tbl2.AntiKnockbackCorrections or 0
				local steps = tbl2.CarryPhysicsDrive.Steps or 0
				local flag = v5 == v10 and position and v6
				local n17 = 0

				if flag then
					local n18 = position2 - position
					n17 = Vector3.new(n18.X, 0, n18.Z):Dot(v6)

					if n17 < -1 then
						motionDiagnostics.BetweenSampleBacktracks = motionDiagnostics.BetweenSampleBacktracks + 1
					end
				end

				local rotation = v10.CFrame.Rotation

				if n11 >= 2 and tbl2.StartPendingRide then
					tbl2.StartPendingRide()
				end

				if now2 - now >= 0.05 then
					primeMovementIntegrityMoving(v10, v10.Position, v18)
					now = now2
				end

				deliveryTrace.ActiveSpeed = cruiseSpeed
				deliveryTrace.DepartureBoost = departureBoost
				deliveryTrace.GuardDistanceXZ = v13
				deliveryTrace.GuardClosingRate = v14
				deliveryTrace.GuardState = v15
				deliveryTrace.GuardSpacingPressure = v16
				deliveryTrace.GuardSpacingTargetSpeed = v17
				deliveryTrace.GuardSpacingSmoothedSpeed = v12
				local result = RunService.Heartbeat:Wait()
				local v20, v21 = fn36()
				if not v20 then
					return false, v21
				end
				local v22, v23
				v22, v5, v23 = getCharacter()
				if not v22 or not v5 or not v23 or v23.Health <= 0 then
					return false, "Character unavailable"
				end
				local firstHeartbeatDt = math.max(tonumber(result) or n4, 0.0041666666666666666)
				local position3 = v5.Position
				local n18 = math.max(os.clock() - now3, 0.0041666666666666666)
				local assemblyLinearVelocity = v5.AssemblyLinearVelocity
				local n19 = math.max(0, (tbl2.AntiKnockbackCorrections or 0) - antiKnockbackCorrections)
				local carryPhysicsDrive = tbl2.CarryPhysicsDrive
				local n20 = math.max(0, (carryPhysicsDrive.Steps or 0) - steps)
				local lastVelocity = carryPhysicsDrive.Uid == carryUid and n20 > 0 and carryPhysicsDrive.LastVelocity or nil
				local flag2 = v5 == v10
				local magnitude3 = flag2 and typeof(lastVelocity) == "Vector3" and (assemblyLinearVelocity - lastVelocity).Magnitude or nil
				motionDiagnostics.KnockbackDuringSamples = motionDiagnostics.KnockbackDuringSamples + n19
				motionDiagnostics.MaxSampleSeconds = math.max(motionDiagnostics.MaxSampleSeconds, n18)

				if magnitude3 and magnitude3 > 18 then
					motionDiagnostics.VelocityChangedSamples = motionDiagnostics.VelocityChangedSamples + 1
				end

				local firstForwardProgress = 0

				if unit.Magnitude > 0 then
					firstForwardProgress = Vector3.new(position3.X - position2.X, 0, position3.Z - position2.Z):Dot(unit)
				end

				local expectedForwardProgress = cruiseSpeed * firstHeartbeatDt

				if flag2 and firstForwardProgress < -1 then
					motionDiagnostics.BackwardSamples = motionDiagnostics.BackwardSamples + 1
				end

				if n11 == 0 then
					deliveryTrace.FirstHeartbeatAt = os.clock()
					deliveryTrace.FirstHeartbeatDt = firstHeartbeatDt
					deliveryTrace.FirstForwardProgress = firstForwardProgress
					deliveryTrace.CarryToFirstHeartbeatSeconds = deliveryTrace.FirstHeartbeatAt - tbl2.CarryConfirmedAt
				end

				local correctionObservedForwardSpeed = firstForwardProgress / firstHeartbeatDt

				if correctionObservedForwardSpeed < 830 then
					poorProgressFrames += 1
				else
					poorProgressFrames = 0
				end

				deliveryTrace.PoorProgressFrames = poorProgressFrames
				deliveryTrace.CorrectionObservedForwardSpeed = correctionObservedForwardSpeed
				deliveryTrace.CorrectionAssistSpeed = 720

				if not correctionAssistActive and magnitude2 > n9 and n11 >= 3 and poorProgressFrames >= 3 then
					deliveryTrace.CorrectionAssistStarts = (deliveryTrace.CorrectionAssistStarts or 0) + 1
					deliveryTrace.CorrectionAssistStartedAt = os.clock()
					correctionAssistActive = true
					correctionAssistHealthyFrames = 0
				end

				if correctionAssistActive then
					if magnitude2 <= n9 then
						correctionAssistActive = false
						correctionAssistHealthyFrames = 0
					elseif correctionObservedForwardSpeed >= 830 then
						correctionAssistHealthyFrames += 1

						if correctionAssistHealthyFrames >= 3 then
							deliveryTrace.CorrectionAssistReleasedAt = os.clock()
							poorProgressFrames = 0
							correctionAssistActive = false
							correctionAssistHealthyFrames = 0
						end
					else
						correctionAssistHealthyFrames = 0
					end
				end

				local flag3 = correctionAssistActive and magnitude2 > n9
				local n21 = 0

				if flag3 then
					local n22 = vector - v5.Position
					local vector3 = Vector3.new(n22.X, 0, n22.Z)

					if vector3.Magnitude > 0.01 then
						local n23 = math.min(vector3.Magnitude, 720 * firstHeartbeatDt)
						local n24 = tbl2.ShouldUseLowFpsCarryMode()
						local lastCorrectionDistance

						if n24 then
							lastCorrectionDistance = math.min(n23, 28)
						else
							lastCorrectionDistance = n23
						end

						if lastCorrectionDistance > 0 then
							local n25 = v5.Position + vector3.Unit * lastCorrectionDistance
							n24 = n24 and 28 or 720 * firstHeartbeatDt
							local vector4 = Vector3.new(n25.X, v5.Position.Y + math.clamp(n22.Y, -n24, n24), n25.Z)
							v5.CFrame = CFrame.new(vector4) * rotation
							n21 = (vector4 - position3).Magnitude
							motionDiagnostics.MaxAssistDistance = math.max(motionDiagnostics.MaxAssistDistance, n21)
							deliveryTrace.CFrameCorrections = (deliveryTrace.CFrameCorrections or 0) + 1
							deliveryTrace.CorrectionAssistSteps = (deliveryTrace.CorrectionAssistSteps or 0) + 1
							deliveryTrace.LastCorrectionDistance = lastCorrectionDistance
						end
					end
				end

				deliveryTrace.CorrectionAssistActive = correctionAssistActive
				deliveryTrace.CorrectionAssistHealthyFrames = correctionAssistHealthyFrames
				local n22 = vector - v5.Position
				local vector3 = Vector3.new(n22.X, 0, n22.Z)
				local flag4, vector4

				if vector2.Magnitude > n9 and vector2:Dot(vector3) < 0 then
					deliveryTrace.EndpointCrossings = (deliveryTrace.EndpointCrossings or 0) + 1
					local rotation2 = v5.CFrame.Rotation
					v5.CFrame = CFrame.new(vector) * rotation2
					v5.AssemblyLinearVelocity = Vector3.zero
					v5.AssemblyAngularVelocity = Vector3.zero
					n22 = vector - v5.Position
					deliveryTrace.EndpointLatchedAt = os.clock()
					flag4 = true
					vector4 = Vector3.zero
				else
					vector4 = fn39(n22, cruiseSpeed, n9)
					tbl2.SetCarryPhysicsDrive(carryUid, vector, cruiseSpeed, n9, phase)
					flag4 = false
				end

				deliveryTrace.DepartureCruisePreserved = true
				deliveryTrace.ObservedForwardSpeed = firstForwardProgress / firstHeartbeatDt
				deliveryTrace.RawHeartbeatDt = firstHeartbeatDt
				deliveryTrace.LocalVelocity = vector4
				local flag5 = n11 < 12

				if not flag5 then
					local motionSampleCadence = deliveryTrace.MotionSampleCadence
					flag5 = os.clock() - n14 >= motionSampleCadence
				end

				if flag5 or flag4 or n19 > 0 or firstForwardProgress < -1 or n21 > 0 then
					n14 = os.clock()
					deliveryTrace.MotionSampleIndex = deliveryTrace.MotionSampleIndex % 60 + 1
					local motionSamples = deliveryTrace.MotionSamples
					local motionSampleIndex = deliveryTrace.MotionSampleIndex

					local tbl6 = {
						At = os.clock(),
						Dt = firstHeartbeatDt,
						Remaining = n22.Magnitude,
						RequestedSpeed = cruiseSpeed,
						AppliedSpeed = cruiseSpeed,
						ForwardProgress = firstForwardProgress,
						GuardDistance = v13,
						SampleSeconds = n18,
						SameRoot = flag2,
						ObservedForwardSpeed = flag2 and firstForwardProgress / n18 or nil,
						BeforePosition = position2,
						AfterPhysicsPosition = position3,
						FinalPosition = v5.Position,
						WrittenVelocity = lastVelocity,
						ObservedVelocity = assemblyLinearVelocity,
						VelocityChange = magnitude3,
						PhysicsSteps = n20,
						KnockbackCorrections = n19,
						BetweenSampleProgress = n17,
						AssistDistance = n21,
						EndpointLatched = flag4,
					}

					local carryConfirmedAt = tbl2.CarryConfirmedAt
					tbl6.CarryAgeSeconds = os.clock() - carryConfirmedAt
					tbl6.BurstActive = departureBoost
					tbl6.MovingFlag = tbl2.Moving
					motionSamples[motionSampleIndex] = tbl6

					if #deliveryTrace.DepartureMotionSamples < 12 then
						deliveryTrace.DepartureMotionSamples[#deliveryTrace.DepartureMotionSamples + 1] = deliveryTrace.MotionSamples[deliveryTrace.MotionSampleIndex]
					end
				end

				position = v5.Position
				n11 += 1
				deliveryTrace.Steps = (deliveryTrace.Steps or 0) + 1
				deliveryTrace.LastDt = firstHeartbeatDt
				deliveryTrace.LastForwardProgress = firstForwardProgress
				deliveryTrace.ExpectedForwardProgress = expectedForwardProgress
				deliveryTrace.ServerVelocity = nil
				v6 = unit
			end

			tbl2.StopCarryPhysicsDrive(carryUid, "Carry move timeout", false)
			return false, "Replication-aware carry move timeout"
		end

		local function fn41(arg3)
			if arg3 == "Claimed" then
				tbl2.CarryAreaId = nil
				return true
			end

			if arg3 == "Carry dropped" then
				return tbl2.WaitForDeliveryClaim(arg, stolen, carryUid)
			end
			return false, arg3
		end

		local v4
		v4, v4 = getCharacter()
		if not v4 then
			return false, "Character unavailable"
		end
		local vector = Vector3.new(516, 71, -367)
		local carryAreaId = arg2 or tbl2.CarryAreaId or fn29(v4.Position)
		tbl2.DeliveryTrace.RouteMode = "FixedXZCarryYPlus50"
		tbl2.DeliveryTrace.FixedDeliveryTarget = { 516, 71, -367 }
		tbl2.DeliveryTrace.FixedDeliveryPhysicalY = 71 + primaryCarryHeightOffset
		tbl2.DeliveryTrace.FixedArrivalDistance = 0.75

		tbl2.RunBackReadyTrace = {
			Uid = carryUid,
			AreaId = carryAreaId,
			WakeDelayRequired = tbl2.CarryRunBackWakeDelayRequired == true,
			StartedAt = os.clock(),
			ReadyAt = os.clock(),
			Waited = 0,
			Outcome = "Bypassed for immediate fixed-target departure",
		}

		local carryGuardBypass = tbl2.CarryGuardBypass

		if carryGuardBypass and carryGuardBypass.Uid == carryUid and carryGuardBypass.Character == localPlayer.Character then
			tbl2.DeliveryTrace.RouteMode = "CommittedGuardShoulderThenFixed"
			tbl2.DeliveryTrace.GuardBypassPoints = carryGuardBypass.Points

			for i, point in ipairs(carryGuardBypass.Points) do
				local v5, v6 = getCharacter()
				if not v6 then
					return false, "Character unavailable"
				end
				local y = point.Y
				local z = point.Z
				local vector2 = Vector3.new(math.min(v6.Position.X, point.X), y, z)

				if v6.Position.X > point.X + 4 or math.abs(v6.Position.Z - point.Z) > 4 then
					local v7, v8 = fn40(vector2, 2, "GuardBypass" .. i, false, false)
					if not v7 then
						return fn41(v8)
					end
				end
			end
		end

		setStatus("Returning egg to fixed delivery point")
		local fixedDelivery, v5 = fn40(Vector3.new(516, 71, -367), 0.75, "FixedDelivery", false, false)
		if not fixedDelivery then
			return fn41(v5)
		end
		local v6
		v6, v6 = getCharacter()
		if not v6 then
			return false, "Character unavailable"
		end
		tbl2.StopCarryPhysicsDrive(carryUid, "Fixed delivery reached", false)
		v6.AssemblyLinearVelocity = Vector3.zero
		v6.AssemblyAngularVelocity = Vector3.zero

		if tbl2.IsPrimaryCarryHeightActive(carryUid) then
			tbl2.PrimaryCarryHeightY = vector.Y + primaryCarryHeightOffset
			tbl2.HoldPrimaryCarryHeight(v6, carryUid)
		end

		tbl2.DeliveryTrace.FixedTargetReachedAt = os.clock()
		tbl2.DeliveryTrace.FixedTargetReachedPosition = { v6.Position.X, v6.Position.Y, v6.Position.Z }
		setStatus("At fixed delivery point; waiting for claim")
		local v7 = tbl2.NewStealDeadline(6)

		while true do
			local alive = tbl2.Alive
			local flag

			if alive then
				flag = arg == nil or tbl[arg] == true
			else
				flag = alive
			end

			if flag then
				if stolen < tbl2.Metrics.Stolen then
					tbl2.CarryAreaId = nil
					return true
				end

				if not tbl2.IsCarryStateConfirmed(carryUid) then
					tbl2.CarryAreaId = nil
					return tbl2.WaitForDeliveryClaim(arg, stolen, carryUid)
				end
				local v8, v9, v10 = getCharacter()
				if not v9 or not v10 or v10.Health <= 0 then
					return false, "Character unavailable"
				end
				v9.AssemblyLinearVelocity = Vector3.zero
				v9.AssemblyAngularVelocity = Vector3.zero

				if tbl2.IsPrimaryCarryHeightActive(carryUid) then
					tbl2.PrimaryCarryHeightY = vector.Y + primaryCarryHeightOffset
					tbl2.HoldPrimaryCarryHeight(v9, carryUid)
				end

				if tbl2.StealDeadlineExpired(v7) then
					break
				end
				tbl2.WaitStealFrame(v7)
				continue
			end

			break
		end

		if stolen < tbl2.Metrics.Stolen then
			tbl2.CarryAreaId = nil
			return true
		end

		if not tbl2.IsCarrying then
			tbl2.CarryAreaId = nil
			return tbl2.WaitForDeliveryClaim(arg, stolen, carryUid)
		end
		return false, "Claim confirmation timeout"
	end

	local function fn36(arg, arg2, arg3)
		local character = localPlayer.Character
		local carryAreaId = arg2 or tbl2.CarryAreaId
		carryAreaId = carryAreaId and fn28(carryAreaId)
		carryAreaId = carryAreaId and carryAreaId:FindFirstChild("Guard")
		local preparedRide = tbl2.PreparedRide
		local controller

		if tbl.StealRideVisual and preparedRide and preparedRide.Uid == tbl2.CarryUid and preparedRide.Character == character and preparedRide.Guard == carryAreaId and not preparedRide.Controller.Stopped then
			controller = preparedRide.Controller
			controller.CarryUid = tbl2.CarryUid
			tbl2.PreparedRide = nil
			tbl2.ActiveRide = controller
		else
			tbl2.ClearPreparedRide()
			controller = nil
		end

		local ok, result, reason = xpcall(function()
			return fn35(arg, arg2, arg3)
		end, debug.traceback)

		if controller then
			controller.Stop()

			if tbl2.ActiveRide == controller then
				tbl2.ActiveRide = nil
			end
		end

		if tbl2.DeliveryTrace then
			tbl2.DeliveryTrace.FinishedAt = os.clock()
			tbl2.DeliveryTrace.Success = ok and result == true
			tbl2.DeliveryTrace.Reason = reason

			if not ok then
				tbl2.DeliveryTrace.Reason = tostring(result)
			end
		end

		if tbl2.CarryDepartureTrace and not tbl2.CarryDepartureTrace.FirstTweenAt then
			tbl2.CarryDepartureTrace.NoTweenReason = ok and reason or tostring(result)
		end

		if not ok then
			return false, tostring(result)
		end
		return result, reason
	end

	local eggStealServerHopHistory = Environment.EggStealServerHopHistory

	if type(eggStealServerHopHistory) ~= "table" then
		eggStealServerHopHistory = {}
		Environment.EggStealServerHopHistory = eggStealServerHopHistory
	end

	eggStealServerHopHistory[game.JobId] = true
	local n3 = 2
	local n4 = 0.75
	local n5 = 0
	n2 = 0

	local function fn37(arg)
		local now = os.clock()
		if now < n2 then
			return nil, "Server list rate limited"
		end
		local n6 = n4 - now - n5

		if n6 > 0 then
			task.wait(n6)
		end

		if not tbl2.Alive then
			return nil, "Destroyed"
		end
		n5 = os.clock()
		local str2 = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true", game.PlaceId)

		if type(arg) == "string" and arg ~= "" then
			str2 ..= "&cursor=" .. HttpService:UrlEncode(arg)
		end

		local request_ = request or http_request or http and http.request or syn and syn.request or fluxus and fluxus.request
		local request_2

		if request_ then
			request_2 = request_
		else
			request_2 = krnl and krnl.request
		end

		local tbl5 = { Url = str2, Method = "GET", Headers = { Accept = "application/json" } }
		local flag = false
		local flag2 = false
		local v3 = nil

		task.spawn(function()
			local ok, result = pcall(function()
				if type(request_2) == "function" then
					return request_2(tbl5)
				end
				return game:HttpGetAsync(str2)
			end)

			flag2 = ok
			v3 = result
			flag = true
		end)

		local now2 = os.clock()

		while tbl2.Alive and not flag and os.clock() - now2 < 8 do
			task.wait(0.05)
		end

		if not flag then
			return nil, "Server list request timed out"
		end

		if not flag2 then
			return nil, tostring(v3)
		end
		local body = v3
		local headers = nil
		local n7 = 200

		if type(v3) == "table" then
			n7 = tonumber(v3.StatusCode or v3.Status or v3.status_code or v3.status)

			if not n7 then
				n7 = v3.Success == false and 0 or 200
			end

			body = v3.Body or v3.body or v3.ResponseBody or v3.response_body
			headers = v3.Headers or v3.headers
		end

		if n7 == 429 then
			local flag3 = type(headers) == "table"

			if flag3 then
				flag3 = tonumber(headers["Retry-After"] or headers["retry-after"])
			end

			local n8 = math.clamp(flag3 or nil or 20, 5, 60)
			n2 = os.clock() + n8
			log("AUTO_SERVER_HOP", string.format("Rate limited; cooling down for %ds", math.ceil(n8)))
			return nil, "Server list rate limited"
		end

		if n7 < 200 or n7 >= 300 then
			return nil, "Server list request failed (HTTP " .. tostring(n7) .. ")"
		end

		if type(body) ~= "string" or body == "" then
			return nil, "Empty server list response"
		end
		local ok, result = pcall(HttpService.JSONDecode, HttpService, body)
		if not ok then
			return nil, "Invalid server list JSON"
		end

		if type(result) ~= "table" or type(result.data) ~= "table" then
			return nil, "Invalid server list response"
		end
		return result
	end

	fn31 = function(arg)
		local tbl5 = {}
		local tbl6 = {}
		local tbl7 = {}
		local nextPageCursor = nil
		local n6 = 0

		for i = 1, 5 do
			local str2 = type(nextPageCursor) == "string" and nextPageCursor or "__FIRST_PAGE__"
			local flag

			if tbl7[str2] then
				flag = #tbl5 > 0
				tbl5 = flag and tbl5
				tbl6 = tbl5 or tbl6
				if #tbl6 == 0 then
					return nil, "No public server with 0-1 players found"
				end

				table.sort(tbl6, function(arg2, arg3)
					local huge = tonumber(arg2.playing) or math.huge
					local huge2 = tonumber(arg3.playing) or math.huge
					if huge ~= huge2 then
						return huge < huge2
					end
					return tostring(arg2.id) < tostring(arg3.id)
				end)

				return tbl6
			end

			tbl7[str2] = true
			local v3, v4 = fn37(nextPageCursor)

			if v3 == nil then
				if #tbl5 > 0 or #tbl6 > 0 then
					flag = #tbl5 > 0
					tbl5 = flag and tbl5
					tbl6 = tbl5 or tbl6
					if #tbl6 == 0 then
						return nil, "No public server with 0-1 players found"
					end

					table.sort(tbl6, function(arg2, arg3)
						local huge = tonumber(arg2.playing) or math.huge
						local huge2 = tonumber(arg3.playing) or math.huge
						if huge ~= huge2 then
							return huge < huge2
						end
						return tostring(arg2.id) < tostring(arg3.id)
					end)

					return tbl6
				end

				return nil, v4
			end

			local n7 = 0

			for _, v5 in ipairs(v3.data) do
				local id = type(v5.id) == "string" and v5.id or nil
				local num = tonumber(v5.playing)
				local num2 = tonumber(v5.maxPlayers)

				if id and id ~= game.JobId and num and num <= 1 and (num2 == nil or num < num2) then
					n7 += 1
					tbl6[#tbl6 + 1] = v5

					if not eggStealServerHopHistory[id] then
						tbl5[#tbl5 + 1] = v5
					end
				end
			end

			if n7 == 0 then
				n6 += 1
			else
				n6 = 0
			end

			if arg then
				flag = #tbl5 > 0
				tbl5 = flag and tbl5
				tbl6 = tbl5 or tbl6
				if #tbl6 == 0 then
					return nil, "No public server with 0-1 players found"
				end

				table.sort(tbl6, function(arg2, arg3)
					local huge = tonumber(arg2.playing) or math.huge
					local huge2 = tonumber(arg3.playing) or math.huge
					if huge ~= huge2 then
						return huge < huge2
					end
					return tostring(arg2.id) < tostring(arg3.id)
				end)

				return tbl6
			end

			nextPageCursor = v3.nextPageCursor

			if type(nextPageCursor) ~= "string" or nextPageCursor == "" then
				flag = #tbl5 > 0
				tbl5 = flag and tbl5
				tbl6 = tbl5 or tbl6
				if #tbl6 == 0 then
					return nil, "No public server with 0-1 players found"
				end

				table.sort(tbl6, function(arg2, arg3)
					local huge = tonumber(arg2.playing) or math.huge
					local huge2 = tonumber(arg3.playing) or math.huge
					if huge ~= huge2 then
						return huge < huge2
					end
					return tostring(arg2.id) < tostring(arg3.id)
				end)

				return tbl6
			end

			local flag2 = n6 >= n3

			if flag2 then
				flag2 = #tbl5 > 0 or #tbl6 > 0 or i >= 5
			end

			if flag2 then
				flag = #tbl5 > 0
				tbl5 = flag and tbl5
				tbl6 = tbl5 or tbl6
				if #tbl6 == 0 then
					return nil, "No public server with 0-1 players found"
				end

				table.sort(tbl6, function(arg2, arg3)
					local huge = tonumber(arg2.playing) or math.huge
					local huge2 = tonumber(arg3.playing) or math.huge
					if huge ~= huge2 then
						return huge < huge2
					end
					return tostring(arg2.id) < tostring(arg3.id)
				end)

				return tbl6
			end
		end

		tbl6 = #tbl5 > 0 and tbl5 or tbl6
		if #tbl6 == 0 then
			return nil, "No public server with 0-1 players found"
		end

		table.sort(tbl6, function(arg2, arg3)
			local huge = tonumber(arg2.playing) or math.huge
			local huge2 = tonumber(arg3.playing) or math.huge
			if huge ~= huge2 then
				return huge < huge2
			end
			return tostring(arg2.id) < tostring(arg3.id)
		end)

		return tbl6
	end

	local function fn38()
		local v3, v4 = fn31(true)
		if v3 == nil then
			return nil, v4
		end
		local huge = tonumber(v3[1].playing) or math.huge
		local tbl5 = {}

		for _, v5 in ipairs(v3) do
			if (tonumber(v5.playing) or math.huge) == huge then
				tbl5[#tbl5 + 1] = v5
				continue
			end
			break
		end

		return tbl5[math.random(1, #tbl5)]
	end

	fn32 = function()
		pcall(function()
			GuiService:ClearError()
		end)

		task.spawn(function()
			for i = 1, 3 do
				task.wait(0.25)

				pcall(function()
					GuiService:ClearError()
				end)
			end
		end)
	end

	fn33 = function(arg, arg2)
		if type(arg) ~= "table" or type(arg.id) ~= "string" or arg.id == "" then
			return false, "Invalid server candidate"
		end

		if arg.id == game.JobId then
			return false, "Already in this server"
		end

		if tbl2.ServerHopPending then
			return false, "Teleport pending"
		end
		fn32()
		tbl2.ServerHopPending = true
		tbl2.ServerHopTarget = arg.id
		tbl2.ServerHopStartedAt = os.clock()
		local serverHopStartedAt = tbl2.ServerHopStartedAt
		eggStealServerHopHistory[arg.id] = true
		local n6 = tonumber(arg.playing) or 0
		setStatus(string.format("Joining server (%d player%s)", n6, n6 == 1 and "" or "s"))

		if type(tbl2.ServerBrowser) == "table" and type(tbl2.ServerBrowser.SetStatus) == "function" then
			tbl2.ServerBrowser.SetStatus(string.format("Joining %d/%s players…", n6, tostring(arg.maxPlayers or "?")), false)
		end

		log(arg2 or "SERVER_HOP", string.format("Teleporting to %s (%d player%s)", arg.id, n6, n6 == 1 and "" or "s"))
		local ok, result = pcall(TeleportService.TeleportToPlaceInstance, TeleportService, game.PlaceId, arg.id, localPlayer)

		if not ok then
			tbl2.ServerHopPending = false
			tbl2.ServerHopTarget = nil
			tbl2.ServerHopStartedAt = 0
			return false, result
		end

		task.delay(8, function()
			if not tbl2.Alive or not tbl2.ServerHopPending or tbl2.ServerHopStartedAt ~= serverHopStartedAt then
				return
			end
			tbl2.ServerHopPending = false
			tbl2.ServerHopTarget = nil
			tbl2.ServerHopStartedAt = 0
			fn32()
			log(arg2 or "SERVER_HOP", "Teleport timed out; choose another server")

			if type(tbl2.ServerBrowser) == "table" then
				if type(tbl2.ServerBrowser.SetStatus) == "function" then
					tbl2.ServerBrowser.SetStatus("Join timed out; refreshing list…", true)
				end

				if tbl.AutoServerHop and type(tbl2.ServerBrowser.Refresh) == "function" then
					tbl2.ServerBrowser.Refresh()
				end
			end
		end)

		return true
	end

	serverHop = function(arg)
		if tbl2.ServerHopPending then
			if os.clock() - (tonumber(tbl2.ServerHopStartedAt) or 0) < 8 then
				return true, "Teleport pending"
			end
			tbl2.ServerHopPending = false
			tbl2.ServerHopTarget = nil
			tbl2.ServerHopStartedAt = 0
			fn32()
			setStatus("Teleport timed out; finding another server")
		end

		if arg and tbl[arg] ~= true then
			return false, "Cancelled"
		end
		local n6 = n2 - os.clock()
		if n6 > 0 then
			setStatus(string.format("Server list cooldown (%ds)", math.ceil(n6)))
			return false, "Server list rate limited"
		end
		setStatus("Finding a 0-1 player server")
		local v3, v4 = fn38()

		if v3 == nil then
			if v4 == "Server list rate limited" then
				setStatus("Server list rate limited; cooling down")
			else
				setStatus("Waiting for a 0-1 player server")
			end

			return false, v4
		end

		if arg and tbl[arg] ~= true then
			return false, "Cancelled"
		end
		return fn33(v3, "AUTO_SERVER_HOP")
	end

	connect(TeleportService.TeleportInitFailed, function(arg, arg2, arg3)
		if arg ~= localPlayer or not tbl2.ServerHopPending then
			return
		end
		tbl2.ServerHopPending = false
		tbl2.ServerHopTarget = nil
		tbl2.ServerHopStartedAt = 0
		fn32()
		local joinFailed = tostring(arg3 or arg2)
		setError("SERVER_HOP", joinFailed)
		log("SERVER_BROWSER", "Teleport failed (" .. joinFailed .. "); refreshing list")

		if type(tbl2.ServerBrowser) == "table" then
			if type(tbl2.ServerBrowser.SetStatus) == "function" then
				tbl2.ServerBrowser.SetStatus("Join failed: " .. joinFailed, true)
			end

			if tbl.AutoServerHop and type(tbl2.ServerBrowser.Refresh) == "function" then
				task.delay(1.5, tbl2.ServerBrowser.Refresh)
			end
		end
	end)

	tbl2.DrainCarryRequest = function(arg)
		local carryRequestInFlight = tbl2.CarryRequestInFlight
		if not carryRequestInFlight then
			return true
		end

		if not tbl2.Alive then
			return false, "Destroyed"
		end

		if arg and tbl[arg] ~= true then
			return false, "Cancelled"
		end

		if carryRequestInFlight.Character ~= localPlayer.Character then
			tbl2.CarryRequestInFlight = nil
			tbl2.LastRetiredCarryRequest = { Uid = carryRequestInFlight.Uid, Reason = "Character changed", At = os.clock() }
			tbl2.TargetDirty = true
			return true
		end

		if carryRequestInFlight.Finished then
			local flag = carryRequestInFlight.Character == localPlayer.Character and carryRequestInFlight.Result[1] and carryRequestInFlight.Result[2] == true and not tbl2.IsCarryStateConfirmed(carryRequestInFlight.Uid) and tbl2.Metrics.Stolen == carryRequestInFlight.StolenBefore
			local flag2

			if flag then
				local n6 = carryRequestInFlight.FinishedAt + 6
				flag2 = os.clock() < n6
			else
				flag2 = flag
			end

			if flag2 then
				return false, "Waiting for late carry confirmation"
			end
			tbl2.CarryRequestInFlight = nil
			return true
		end

		return false, "Carry request still pending"
	end

	tbl2.RunPendingCarryRequest = function(arg)
		arg.Result = table.pack(pcall(arg.Callback, arg.Context))
		arg.FinishedAt = os.clock()
		arg.Trace.RequestFinishedAt = arg.FinishedAt
		arg.Finished = true
	end

	tbl2.CallWithTimeout = function(arg, arg2, arg3, arg4, arg5, arg6)
		local str2

		if not tbl2.Alive then
			str2 = "Destroyed"
		else
			local flag = arg5 and tbl[arg5] ~= true
			str2 = nil

			if flag then
				str2 = "Cancelled"
			end
		end

		if str2 then
			return false, false, str2
		end
		local v3, v4 = tbl2.DrainCarryRequest(arg5)
		if not v3 then
			return false, false, v4
		end

		local carryRequestInFlight = {
			Uid = arg4,
			Character = localPlayer.Character,
			Finished = false,
			StolenBefore = tbl2.Metrics.Stolen,
			StartedAt = os.clock(),
			Callback = arg2,
			Context = arg6,
		}

		if type(arg6) == "table" then
			arg6.Character = carryRequestInFlight.Character
		end

		carryRequestInFlight.Trace = { Uid = arg4, RequestStartedAt = carryRequestInFlight.StartedAt }

		if arg4 == tbl2.PrimaryCarryTargetUid then
			tbl2.PrimaryCarryRequestTrace = carryRequestInFlight.Trace
		end

		tbl2.CarryRequestInFlight = carryRequestInFlight
		carryRequestInFlight.Worker = task.spawn(tbl2.RunPendingCarryRequest, carryRequestInFlight)
		local v5 = tbl2.NewStealDeadline(arg)

		while true do
			local str3

			if not tbl2.Alive then
				str3 = "Destroyed"
			elseif arg5 and tbl[arg5] ~= true then
				str3 = "Cancelled"
			else
				str3 = nil
			end

			if str3 then
				return false, false, str3
			end

			if localPlayer.Character ~= carryRequestInFlight.Character then
				return false, false, "Character changed"
			end

			if tbl2.IsCarryStateConfirmed(arg4) then
				carryRequestInFlight.Trace.CarryObservedAt = os.clock()

				if carryRequestInFlight.Finished or type(arg6) == "table" and arg6.WaitForCarryEvent then
					tbl2.CarryRequestInFlight = nil
				end

				return true, true, true, nil, true
			end

			if type(arg3) == "function" then
				local ok, result = pcall(arg3, arg6)
				if ok and result == true then
					break
				end
			end

			if carryRequestInFlight.Finished then
				local result = carryRequestInFlight.Result
				if not result[1] or result[2] ~= true then
					tbl2.CarryRequestInFlight = nil
					return true, table.unpack(result, 1, result.n)
				end

				if not (type(arg6) == "table" and arg6.WaitForCarryEvent) then
					return true, table.unpack(result, 1, result.n)
				end
			end

			if tbl2.StealDeadlineExpired(v5) then
				return false, false, "Request timeout"
			end
			tbl2.WaitStealFrame(v5)
		end

		carryRequestInFlight.Trace.CarryObservedAt = os.clock()

		if carryRequestInFlight.Finished or type(arg6) == "table" and arg6.WaitForCarryEvent then
			tbl2.CarryRequestInFlight = nil
		end

		return true, true, true, nil, true
	end

	tbl2.RunValidatedCarryAction = function(arg)
		if arg.Character ~= nil and localPlayer.Character ~= arg.Character then
			return false, "Character changed"
		end
		local v3 = getAreaEggRecord(arg.Uid)

		if not (type(v3) == "table" and typeof(v3.BottomCFrame) == "CFrame" and (v3.State == "Slot" or v3.State == "Dropped")) or arg.RequireFilters and not recordMatchesFilters(v3) then
			if arg.TrackInvalidation then
				arg.Invalidated = true
			end

			return false, arg.Primer and "Primer changed" or "Target changed"
		end

		local v4, v5 = getCharacter()
		if arg.Character ~= nil and v4 ~= arg.Character then
			return false, "Character changed"
		end
		local n6 = v3.BottomCFrame.Position + Vector3.new(0, 1.5, 0)

		if v5 == nil or (v5.Position - n6).Magnitude > 2.75 then
			if arg.TrackDisplacement then
				arg.Displaced = true
			end

			return false, arg.Primer and "Primer pickup position displaced before carry request" or "Pickup position displaced before carry request"
		end

		local metrics = tbl2.Metrics
		metrics.StealRequests = metrics.StealRequests + 1
		return requestCarryAreaEgg(v3.Uid, fn23(v3))
	end

	tbl2.ObserveValidatedCarryRequest = function(arg)
		if tbl2.IsCarryStateConfirmed(arg.Uid) then
			return true
		end

		if arg.StabilizeCharacter then
			local v3, v4, v5 = getCharacter()

			if v3 ~= nil and v4 ~= nil and v5 ~= nil then
				if tbl.GodMode then
					protectHumanoid(v5)
				end

				v4.AssemblyLinearVelocity = Vector3.zero
				v4.AssemblyAngularVelocity = Vector3.zero
			end
		end

		return tbl2.TryConfirmCarry(arg.Uid)
	end

	tbl2.ReconcileTimedOutCarryRequest = function(arg, arg2, arg3)
		local carryRequestInFlight = tbl2.CarryRequestInFlight
		if carryRequestInFlight == nil or carryRequestInFlight.Uid ~= arg then
			return false, "Another carry request is pending", false
		end
		local character = localPlayer.Character
		local v3 = tbl2.NewStealDeadline(arg3)
		setStatus("Waiting for delayed egg carry result")

		while true do
			if not tbl2.Alive then
				return false, "Destroyed", false
			else
				if arg2 and tbl[arg2] ~= true then
					return false, "Cancelled", false
				end

				if localPlayer.Character ~= character then
					return false, "Character changed", false
				end

				if tbl2.TryConfirmCarry(arg) then
					return true, nil, false
				end

				if carryRequestInFlight and carryRequestInFlight.Finished then
					local result = carryRequestInFlight.Result

					if not result[1] or result[2] ~= true then
						tbl2.CarryRequestInFlight = nil
						local v4 = tostring
						local v5 = result[1]
						local str2

						if v5 then
							str2 = result[3] or "Carry denied"
						else
							str2 = v5
						end

						str2 = str2 or result[2]
						return false, v4(str2), true
					end

					if type(carryRequestInFlight.Context) == "table" and carryRequestInFlight.Context.WaitForCarryEvent then
						tbl2.CarryRequestInFlight = nil
						return false, "Carry action completed without a carry event", true
					end
				end

				if tbl2.StealDeadlineExpired(v3) then
					break
				end
				tbl2.WaitStealFrame(v3)
			end
		end

		return false, "Delayed carry confirmation timeout", false
	end

	tbl2.ReleaseStrandedPrimer = function(arg)
		local carryUid = tbl2.CarryUid
		if type(carryUid) ~= "string" or not tbl2.IsCarryStateConfirmed(carryUid) then
			return false, "Primer carry is not confirmed"
		end
		local forestPrimerDropInFlight = tbl2.ForestPrimerDropInFlight

		if forestPrimerDropInFlight == nil or forestPrimerDropInFlight.Uid ~= carryUid then
			forestPrimerDropInFlight = { Uid = carryUid, StartedAt = os.clock(), Finished = false }
			tbl2.ForestPrimerDropInFlight = forestPrimerDropInFlight
			tbl2.SuppressDroppedCarryUid = carryUid
			tbl2.LastDropRequest = { Uid = carryUid, At = forestPrimerDropInFlight.StartedAt, Reason = playerRequest }

			task.spawn(function()
				forestPrimerDropInFlight.Result = table.pack(pcall(EggCmds.RequestDropHeldAreaEgg, playerRequest))
				forestPrimerDropInFlight.FinishedAt = os.clock()
				forestPrimerDropInFlight.Finished = true
			end)
		end

		local v3 = tbl2.NewStealDeadline(6)
		setStatus("Releasing stranded primer egg")

		while tbl2.Alive and (arg == nil or tbl[arg] == true) do
			if not tbl2.IsCarryStateConfirmed(carryUid) then
				tbl2.ForestPrimerDropInFlight = nil
				tbl2.PrimerCarryUid = nil
				tbl2.ActivePrimerUid = nil
				tbl2.PrimerRetryCharacter = nil
				tbl2.PrimerRetryAreaId = nil
				tbl2.PrimerRetryAfter = 0
				return false, "Primer released"
			end

			if forestPrimerDropInFlight.Finished then
				local result = forestPrimerDropInFlight.Result
				if not result[1] or result[2] ~= true then
					tbl2.ForestPrimerDropInFlight = nil
					return false, tostring(result[1] and (result[3] or "Primer drop denied") or result[2])
				end
				local finishedAt = forestPrimerDropInFlight.FinishedAt
				if os.clock() - finishedAt >= 3 then
					tbl2.ForestPrimerDropInFlight = nil
					return false, "Primer drop was accepted but carry did not release"
				end
			end

			if tbl2.StealDeadlineExpired(v3) then
				return false, "Primer drop still pending"
			end
			tbl2.WaitStealFrame(v3)
		end

		return false, tbl2.Alive and "Cancelled" or "Destroyed"
	end

	local function fn39(arg, arg2)
		local v3 = getSnapshot()
		local v4
		v4, v4 = getCharacter()
		if v3 == nil or v4 == nil then
			return nil
		end
		local v5 = getAreaEggRecord(arg)
		local position = type(v5) == "table" and typeof(v5.BottomCFrame) == "CFrame" and v5.BottomCFrame.Position or v4.Position
		local v6 = nil
		local v7 = nil

		for _, record in ipairs(v3.Records) do
			local flag = type(record) == "table" and record.Uid ~= arg and fn23(record) ~= nil and (record.State == "Slot" or record.State == "Dropped") and typeof(record.BottomCFrame) == "CFrame" and tbl2.ResolvePrimerStrike(record.AreaId) ~= nil

			if flag then
				flag = not arg2

				if not flag then
					flag = os.clock() >= (tbl2.PrimerBlacklist[record.Uid] or 0)
				end
			end

			if flag then
				local guard = fn28(record.AreaId)
				guard = guard and guard:FindFirstChild("Guard")
				local humanoidRootPart = guard and guard:FindFirstChild("HumanoidRootPart")
				local magnitude = (record.BottomCFrame.Position - position).Magnitude

				if humanoidRootPart and humanoidRootPart:IsA("BasePart") and (v6 == nil or magnitude < v6) then
					v6 = magnitude
					v7 = record
				end
			end
		end

		return v7
	end

	tbl2.ResolvePrimerStrike = function(arg)
		if type(arg) ~= "string" then
			return nil
		end

		local function fn40(arg2)
			return (arg2:lower():gsub("[%s_%-]", ""))
		end

		local guardPatrol = v and v.GuardPatrol
		if type(guardPatrol) ~= "table" then
			return nil
		end
		local str2 = fn40(arg) .. "strike"

		for k, v3 in pairs(guardPatrol) do
			if type(k) == "string" and fn40(k) == str2 then
				return v3
			end
		end

		return nil
	end

	tbl2.SendPrimerStrike = function(arg, arg2)
		if not tbl2.Alive then
			return false, "Destroyed"
		end

		if arg2 and tbl[arg2] ~= true then
			return false, "Cancelled"
		end

		if not tbl2.IsCarryStateConfirmed(arg.Uid) then
			return false, "Primer carry not confirmed"
		end
		local v3 = tbl2.ResolvePrimerStrike(arg.AreaId)
		local guard = fn28(arg.AreaId)
		guard = guard and guard:FindFirstChild("Guard")
		guard = guard and guard:FindFirstChild("HumanoidRootPart")
		if not v3 or not guard or not guard:IsA("BasePart") then
			return false, "Primer Strike remote or guard root unavailable"
		end
		local tbl5 = { EggUid = arg.Uid, GuardCFrame = guard.CFrame }
		tbl2.PrimerCarryUid = arg.Uid
		tbl2.PrimerStrikeCharacter = localPlayer.Character
		tbl2.SuppressDroppedCarryUid = arg.Uid

		local ok, result = pcall(function()
			v3:FireServer(tbl5)
		end)

		local v4 = tbl2

		local primerStrikeTrace = {
			Uid = arg.Uid,
			AreaId = arg.AreaId,
			At = os.clock(),
			PickupProof = "CarryChanged",
			Dispatched = ok,
		}

		local flag = not ok
		primerStrikeTrace.Error = flag and tostring(result) or nil
		v4.PrimerStrikeTrace = primerStrikeTrace

		if flag then
			if tbl2.SuppressDroppedCarryUid == arg.Uid then
				tbl2.SuppressDroppedCarryUid = nil
			end

			return false, "Primer Strike dispatch failed: " .. tostring(result)
		end

		return true
	end

	tbl2.BeginForestPrimerStrike = function(arg, arg2, arg3)
		tbl2.ActivePrimerUid = nil
		local v3 = fn39(arg, arg2 == "AutoSteal" or arg2 == "AutoFarmCycle")
		if v3 == nil then
			return false, "No eligible primer egg with Strike available"
		end
		tbl2.ActivePrimerUid = v3.Uid
		tbl2.PrimerRetryAreaId = v3.AreaId
		if tbl2.ResolvePrimerStrike(v3.AreaId) == nil then
			return false, "Primer Strike remote unavailable"
		end

		local function fn40()
			if type(arg3) == "function" then
				local v4, v5 = arg3()
				if v4 then
					return true, v5
				end
			end

			local v4 = getAreaEggRecord(v3.Uid)
			if type(v4) ~= "table" or v4.State ~= "Slot" and v4.State ~= "Dropped" or v4.AreaId ~= v3.AreaId or fn23(v4) == nil or typeof(v4.BottomCFrame) ~= "CFrame" then
				return true, "Primer changed"
			end
			return false
		end

		local n6 = v3.BottomCFrame.Position + Vector3.new(0, 1.5, 0)
		setStatus("Tweening to primer egg in " .. tostring(v3.AreaId))
		local v4, v5 = moveTo(n6, arg2, fn40, tbl.TweenSpeed, 1.25)
		if not v4 then
			return false, v5
		end
		local v6 = getAreaEggRecord(v3.Uid)
		if type(v6) ~= "table" or v6.State ~= "Slot" and v6.State ~= "Dropped" then
			return false, "Primer changed"
		end
		local str2 = nil
		local flag = false

		for i = 1, 3 do
			if not tbl2.Alive then
				return false, "Destroyed"
			end

			if arg2 and tbl[arg2] ~= true then
				return false, "Cancelled"
			end

			if tbl2.IsCarryStateConfirmed(v3.Uid) then
				flag = true
				break
			end
			local v7, v8 = fn40()
			if v7 then
				return false, v8
			end
			v6 = getAreaEggRecord(v3.Uid)
			local v9, v10, v11 = getCharacter()
			if not v10 or not v11 or v11.Health <= 0 then
				return false, "Character unavailable"
			end

			if i > 1 then
				local tweenSpeed = tbl.TweenSpeed
				local v12, v13 = moveTo(v6.BottomCFrame.Position + Vector3.new(0, 1.5, 0), arg2, fn40, tweenSpeed, 0.5)
				if not v12 then
					return false, v13
				end
			end

			v11:Move(Vector3.zero, false)
			task.wait(i == 1 and 0.08 or tbl.StealPreRequestDelay)
			if not tbl2.Alive then
				return false, "Destroyed"
			end

			if arg2 and tbl[arg2] ~= true then
				return false, "Cancelled"
			end

			if tbl2.IsCarryStateConfirmed(v3.Uid) then
				flag = true
				break
			end
			local v12, v13 = fn40()
			if v12 then
				return false, v13
			end
			v6 = getAreaEggRecord(v3.Uid)
			if type(v6) ~= "table" or typeof(v6.BottomCFrame) ~= "CFrame" then
				return false, "Primer changed"
			end
			local v14
			v14, v14 = getCharacter()
			local n7 = v6.BottomCFrame.Position + Vector3.new(0, 1.5, 0)
			if v14 == nil or (v14.Position - n7).Magnitude > 2.75 then
				str2 = "Primer pickup position displaced"
				continue
			end
			setStatus(string.format("Taking primer egg in %s (%d/3)", tostring(v3.AreaId), i))

			local v15, v16, v17, v18 = tbl2.CallWithTimeout(tbl.StealRequestTimeout, tbl2.RunValidatedCarryAction, tbl2.ObserveValidatedCarryRequest, v3.Uid, arg2, {
				Uid = v3.Uid,
				Primer = true,
				OwnerKey = arg2,
				WaitForCarryEvent = true,
				RequireFilters = false,
				StabilizeCharacter = false,
			})

			if not v15 then
				local v19, v20, v21 = tbl2.ReconcileTimedOutCarryRequest(v3.Uid, arg2, tbl.StealCarryConfirmTimeout)
				if v19 then
					flag = true
					break
				end
				str2 = v20 or tostring(v17)
				if not v21 then
					return false, str2
				end
				task.wait(0.08)
				continue
			end

			str2 = v16 and (v18 or "Primer carry denied") or tostring(v17)
			if v16 and v17 == true or tbl2.IsCarryStateConfirmed(v3.Uid) then
				flag = true
				break
			end
			task.wait(0.08)
		end

		if not flag then
			return false, str2
		end
		tbl2.CarryAreaId = v6.AreaId
		setStatus("Sending primer GuardPatrol Strike")
		local v7, v8 = tbl2.SendPrimerStrike(v6, arg2)
		if not v7 then
			return false, v8
		end
		return true, nil, v3.Uid
	end

	tbl2.WaitForPrimerRelease = function(arg, arg2)
		local primerStrikeCharacter = tbl2.PrimerStrikeCharacter
		local v3 = tbl2.NewStealDeadline(8)
		setStatus("Waiting for primer release")
		local exitTo = nil

		while true do
			if tbl2.Alive then
				if arg2 and tbl[arg2] ~= true then
					exitTo = 2
					break
				elseif localPlayer.Character ~= primerStrikeCharacter then
					exitTo = 3
					break
				else
					local v4, v5, v6 = getCharacter()

					if not v5 or not v6 or v6.Health <= 0 then
						exitTo = 4
						break
					elseif not tbl2.IsCarrying then
						local v7 = getAreaEggRecord(arg)

						if type(v7) ~= "table" or v7.State ~= "Carried" or v7.CarrierUserId ~= localPlayer.UserId then
							exitTo = 5
							break
						elseif tbl2.StealDeadlineExpired(v3) then
							exitTo = 1
							break
						else
							tbl2.WaitStealFrame(v3)
							continue
						end
					elseif tbl2.CarryUid == arg then
						if tbl2.StealDeadlineExpired(v3) then
							exitTo = 1
							break
						else
							tbl2.WaitStealFrame(v3)
							continue
						end
					end
				end

				break
			else
				exitTo = 1
				break
			end
		end

		if exitTo == 1 then
			return false, tbl2.Alive and "Primer release timeout" or "Destroyed"
		end

		if exitTo == 2 then
			return false, "Cancelled"
		end

		if exitTo == 3 then
			return false, "Character changed"
		end

		if exitTo == 4 then
			return false, "Character unavailable"
		end

		if exitTo == 5 then
			tbl2.PrimerStrikeTrace.ReleasedAt = os.clock()
			tbl2.ActivePrimerUid = nil
			tbl2.PrimerCarryUid = nil
			return true, nil, arg
		end

		return false, "Unexpected carry during primer release"
	end

	tbl2.UseFastOutboundWaypoint = function(arg, arg2)
		return (arg == "Titan Temple" or arg == "Cherry Blossom" or arg == "Light Dark") and type(arg2) == "string"
	end

	tbl2.UseTitanOutboundWaypoint = tbl2.UseFastOutboundWaypoint

	tbl2.UseFastEggWaypoint = function(arg)
		return type(arg) == "string"
	end

	tbl2.PrepareCarryNavigation = function(arg, arg2, arg3)
		local trapAvoidance = tbl2.TrapAvoidance
		local now = os.clock()
		local v3, v4 = fn30()
		if not arg2 or not v3 then
			return false, "Exit target unavailable"
		end

		local prepared = {
			Uid = arg.Uid,
			Character = localPlayer.Character,
			Routes = {},
			Detours = {},
			Guards = {},
			Bounds = {},
			Revision = trapAvoidance.Revision,
		}

		local guard = fn28(arg.AreaId)
		local parent = guard and guard.Parent
		guard = guard and guard:FindFirstChild("Guard")
		local humanoidRootPart = guard and guard:FindFirstChild("HumanoidRootPart")

		if humanoidRootPart then
			prepared.Guards[#prepared.Guards + 1] = humanoidRootPart
		end

		if parent then
			for _, child in ipairs(parent:GetChildren()) do
				local bounds = child:FindFirstChild("Bounds")

				if bounds then
					prepared.Bounds[#prepared.Bounds + 1] = bounds
				end
			end
		end

		local flag = not arg3 and fn34(arg.AreaId) or nil
		local tbl5 = {}

		if flag then
			tbl5[#tbl5 + 1] = flag + Vector3.new(0, 1.5, 0)
		end

		if v4 then
			tbl5[#tbl5 + 1] = v4 + Vector3.new(0, 1.5, 0)
		end

		tbl5[#tbl5 + 1] = v3 + Vector3.new(0, 1.5, 0)
		local v5 = trapAvoidance.ReadHazards()
		local position = arg2.Position

		for _, v6 in ipairs(v5) do
			if not (#prepared.Detours >= 60) then
				local tbl6 = {}
				local vector = Vector3.new(v6.MinX - 2, position.Y, v6.MinZ - 2)
				local vector2 = Vector3.new(v6.MaxX + 2, position.Y, v6.MinZ - 2)
				local vector3 = Vector3.new(v6.MaxX + 2, position.Y, v6.MaxZ + 2)
				local vector4 = Vector3.new
				local n6 = v6.MinX - 2
				local y = position.Y
				local n7 = v6.MaxZ + 2
				tbl6[1] = vector
				tbl6[2] = vector2
				tbl6[3] = vector3

				do
					local values = table.pack(vector4(n6, y, n7))
					table.move(values, 1, values.n, 4, tbl6)
				end

				for i, v7 in ipairs(tbl6) do
					prepared.Detours[#prepared.Detours + 1] = { v7, v7 }
					local v8 = tbl6[i % 4 + 1]
					prepared.Detours[#prepared.Detours + 1] = { v7, v8 }
					prepared.Detours[#prepared.Detours + 1] = { v8, v7 }
				end

				continue
			end

			break
		end

		for _, v6 in ipairs(tbl5) do
			local v7, v8 = trapAvoidance.Plan(position, v6, v5)
			if not v7 then
				return false, v8
			end
			prepared.Routes[#prepared.Routes + 1] = { Target = v6, Points = v7 }
			position = v6
		end

		prepared.PreparedAt = os.clock()
		trapAvoidance.Prepared = prepared
		trapAvoidance.GuardSamples = nil
		trapAvoidance.GuardSampleUid = nil
		trapAvoidance.LastEscapeDirection = nil
		trapAvoidance.LastEscapeUid = nil
		trapAvoidance.EscapeCommitment = nil

		tbl2.NavigationPreparationTrace = {
			Uid = arg.Uid,
			At = prepared.PreparedAt,
			Seconds = prepared.PreparedAt - now,
			Routes = #prepared.Routes,
			Guards = #prepared.Guards,
		}

		local v6 = trapAvoidance.ReadGuardSamples(arg2.Position, arg.Uid)
		local v7 = prepared.Routes[1].Points[1]

		if v7 and #v6 > 0 and (v7 - arg2.Position).Magnitude > 0.2 then
			local v8, v9 = trapAvoidance.SelectGuardStep(arg2.Position, v7, math.min(50, (v7 - arg2.Position).Magnitude), v6, v5)
			if not v8 then
				tbl2.NavigationPreparationTrace.Failure = v9
				return false, v9
			end
		end

		return true
	end

	local function fn40(arg, arg2, arg3)
		local v3 = getAreaEggRecord
		local v4 = recordMatchesFilters
		local v5 = chooseEgg
		local v6 = getCharacter
		local v7 = moveTo
		local flag = tbl.StealMovementMode == "TP"

		if arg2 == nil and not arg then
			arg2 = "AutoSteal"
		end

		if arg3 == nil and tbl2.Checker.ManualBusy then
			return false, "Movement busy"
		end

		if tbl2.IsCarrying then
			tbl2.ClearTreadmillState("STEAL", true)

			if tbl2.DroppedRecovery[tbl2.CarryUid] then
				tbl2.ActiveDroppedRecoveryUid = tbl2.CarryUid
			end

			if tbl2.CarryUid == tbl2.PrimerCarryUid or tbl2.CarryUid == tbl2.ActivePrimerUid then
				return tbl2.ReleaseStrandedPrimer(arg2)
			end

			if tbl2.PrimaryCarryTargetUid and tbl2.CarryUid ~= tbl2.PrimaryCarryTargetUid then
				return false, "Waiting for primer release; primary egg not confirmed"
			end
			return fn36(arg2, tbl2.CarryAreaId, type(arg3) == "string" or tbl2.LastRecoveredDroppedUid == tbl2.CarryUid)
		end

		local v8, v9 = tbl2.DrainCarryRequest(arg2)
		if not v8 then
			return false, v9
		end
		local flag2 = type(arg3) ~= "string"

		if flag2 then
			flag2 = os.clock() < (tbl2.PrimerRetryAfter or 0)
		end

		if flag2 then
			setStatus("Waiting before retrying primer in place")
			return false, "Primer retry cooldown"
		end
		local v10, v11 = fn27()

		if not v10 then
			setStatus("Waiting: " .. tostring(v11))

			if tbl2.KaitunSimpleStatus ~= nil then
				tbl2.KaitunSimpleStatus = "Steal Egg [ Waiting for safe-zone wall ]"
				tbl2.Status = tbl2.KaitunSimpleStatus
			end

			return false, v11
		end

		local v12, str2

		if type(arg3) == "string" then
			v12 = v3(arg3)
			local flag3 = type(v12) == "table" and v12.Uid == arg3 and (v12.State == "Slot" or v12.State == "Dropped") and typeof(v12.BottomCFrame) == "CFrame"
			str2 = nil

			if not flag3 then
				v12 = nil
				str2 = "Selected egg is no longer available"
			end
		else
			v12, str2 = v5()
		end

		if v12 == nil then
			local waiting = str2 or "No eligible egg"
			setStatus("Waiting: " .. waiting)

			if tbl2.KaitunSimpleStatus ~= nil then
				tbl2.KaitunSimpleStatus = string.format("Steal Egg [ %s ]", waiting)
				tbl2.Status = tbl2.KaitunSimpleStatus
			end

			if waiting == "Waiting for dropped egg sync" or waiting == "Snapshot unavailable" or waiting == "Character unavailable" then
				return false, waiting
			end
			return false, "No eligible egg"
		end

		tbl2.ClearTreadmillState("STEAL", true)
		local flag3 = v12.State == "Dropped" or tbl2.DroppedTargetUid == v12.Uid or tbl2.LastDroppedTargetUid == v12.Uid
		local lastCarryRelease = tbl2.LastCarryRelease
		local flag4 = type(lastCarryRelease) == "table" and type(lastCarryRelease.At) == "number"

		if flag4 then
			local at = lastCarryRelease.At
			flag4 = os.clock() - at
		end

		flag4 = flag4 or math.huge
		local flag5 = flag3 and type(lastCarryRelease) == "table" and lastCarryRelease.Uid == v12.Uid and lastCarryRelease.Outcome ~= "Claimed" and flag4 >= 0 and flag4 < 10
		if not tbl2.CanRecoverDropped(v12.Uid) or flag5 and not tbl2.BeginDroppedRecovery(v12.Uid) then
			return false, "Dropped egg retry limit"
		end

		if flag3 then
			arg3 = v12.Uid
		end

		local flag6 = not flag5

		if flag6 then
			tbl2.ActiveDroppedRecoveryUid = nil
		end

		tbl2.EggApproachRouteTrace = {
			Uid = v12.Uid,
			ReleaseAge = flag4,
			Mode = flag5 and "RecentDropRecovery" or "PrimerWaypoint",
			StartedAt = os.clock(),
		}

		if flag5 then
			arg3 = v12.Uid
			tbl2.Blacklist[v12.Uid] = nil

			tbl2.DroppedRecoverySettle = {
				Uid = v12.Uid,
				StartedAt = os.clock(),
				Seconds = 1.5,
				Mode = "PostKnockbackReplicationSettle",
			}

			setStatus("Waiting for dropped egg position sync")
			local n6 = os.clock() + 1.5

			while tbl2.Alive and os.clock() < n6 do
				if arg2 ~= nil and tbl[arg2] ~= true then
					return false, "Cancelled"
				end
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")
				if not character or not humanoid or humanoid.Health <= 0 then
					return false, "Character unavailable"
				end
				task.wait(math.min(0.08, math.max(0, n6 - os.clock())))
			end

			if not tbl2.Alive then
				return false, "Destroyed"
			end
			tbl2.DroppedRecoverySettle.FinishedAt = os.clock()
		end

		if tbl2.PrimerCarryUid == v12.Uid then
			tbl2.PrimerCarryUid = nil
		end

		tbl2.PrimaryCarryTargetUid = v12.Uid
		tbl2.ActiveTargetUid = v12.Uid
		tbl2.ActiveTargetAreaId = v12.AreaId
		tbl2.PendingTargetUid = nil
		tbl2.TargetDirty = false
		local position = nil
		local state = nil
		local fn41

		if type(arg3) == "string" then
			fn41 = function()
				local v13 = v3(arg3)
				if type(v13) ~= "table" or v13.State ~= "Slot" and v13.State ~= "Dropped" or typeof(v13.BottomCFrame) ~= "CFrame" then
					return true, "Target changed"
				end

				if state ~= nil and v13.State ~= state then
					return true, "Target moved"
				end

				if position ~= nil and (v13.BottomCFrame.Position - position).Magnitude > 1.5 then
					return true, "Target moved"
				end
				return false
			end
		else
			fn41 = tbl2.BuildRetargetCheck(v12)
		end

		local function fn42()
			local v13 = fn26()

			if v13 ~= nil then
				tbl2.SafeZoneBarrierClearSince = nil
				tbl2.SafeZoneBarrierReason = v13
				return true, "Safe-zone barrier active"
			end

			return fn41()
		end

		local function fn43(arg4, arg5)
			if arg4 == "Higher-priority target" or arg4 == "Target changed" or arg4 == "Target refreshed" or arg4 == "Safe-zone barrier active" then
				tbl2.ActiveTargetUid = nil
				return false, "Retarget"
			end

			if type(arg3) ~= "string" then
				tbl2.Blacklist[v12.Uid] = os.clock() + arg5
			end

			tbl2.ActiveTargetUid = nil
			return false, arg4
		end

		local n6 = flag5 and 550 or nil

		if flag6 then
			tbl2.PrepareStealRide(v12)
		else
			tbl2.ClearPreparedRide()
		end

		if flag6 then
			local v13 = fn30()
			if v13 == nil then
				local v14, v15 = fn43("Safe-zone center unavailable", 1)
				return v14, v15
			end
			local v14
			v14, v14 = v6()
			local flag7 = tbl2.PrimerRetryCharacter == localPlayer.Character

			if flag7 then
				flag7 = os.clock() - (tbl2.PrimerRetryAt or 0) < 60
			end

			local flag8 = flag7 and tbl2.PrimerRetryAreaId ~= nil and v14 ~= nil

			if flag8 then
				local primerRetryAreaId = tbl2.PrimerRetryAreaId
				flag8 = fn29(v14.Position) == primerRetryAreaId
			end

			if not flag8 then
				setStatus("Moving to safe-zone center")
				local v15, v16 = v7(v13, arg2, fn42, nil, 2)
				if not v15 then
					local v17, v18 = fn43(v16, 1)
					return v17, v18
				end
			end
		end

		local v13 = nil

		if flag6 then
			local v14, v15

			v14, v15, v13 = tbl2.BeginForestPrimerStrike(v12.Uid, arg2, function()
				if not tbl2.Alive then
					return true, "Destroyed"
				end
				local v16 = v3(v12.Uid)
				if type(v16) ~= "table" or v16.Uid ~= v12.Uid or type(arg3) ~= "string" and not v4(v16) or typeof(v16.BottomCFrame) ~= "CFrame" or v16.State ~= "Slot" and v16.State ~= "Dropped" then
					return true, "Target changed"
				end

				if fn26() ~= nil then
					return true, "Safe-zone barrier active"
				end
				return false
			end)

			if not v14 then
				tbl2.LastForestPrimerError = tostring(v15)
				local activePrimerUid = tbl2.ActivePrimerUid

				if type(activePrimerUid) == "string" and tbl2.IsCarryStateConfirmed(activePrimerUid) then
					if v15 ~= "Cancelled" and v15 ~= "Destroyed" then
						tbl2.PrimerBlacklist[activePrimerUid] = os.clock() + 15
					end

					tbl2.PrimerRetryCharacter = nil
					tbl2.PrimerRetryAreaId = nil
					tbl2.PrimerRetryAfter = 0
				elseif type(activePrimerUid) == "string" and v15 ~= "Target changed" and v15 ~= "Safe-zone barrier active" and v15 ~= "Cancelled" and v15 ~= "Character changed" then
					local n7 = (tbl2.PrimerFailureCounts[activePrimerUid] or 0) + 1
					tbl2.PrimerFailureCounts[activePrimerUid] = n7

					if n7 >= 2 then
						tbl2.PrimerBlacklist[activePrimerUid] = os.clock() + 15
						tbl2.PrimerFailureCounts[activePrimerUid] = 0
						tbl2.PrimerRetryCharacter = nil
						tbl2.PrimerRetryAreaId = nil
						tbl2.PrimerRetryAfter = os.clock() + 0.5
					else
						tbl2.PrimerRetryCharacter = localPlayer.Character
						tbl2.PrimerRetryAt = os.clock()
						tbl2.PrimerRetryAfter = os.clock() + 2
					end
				else
					tbl2.PrimerRetryCharacter = nil
					tbl2.PrimerRetryAreaId = nil
					tbl2.PrimerRetryAfter = os.clock() + 2
				end

				local v16, v17 = fn43(v15, 1)
				return v16, v17
			end

			if type(v13) == "string" then
				tbl2.PrimerFailureCounts[v13] = nil
				tbl2.PrimerBlacklist[v13] = nil
			end

			tbl2.LastForestPrimerError = nil
			tbl2.PrimerRetryCharacter = nil
			tbl2.PrimerRetryAreaId = nil
			tbl2.PrimerRetryAfter = 0
		end

		if flag6 and tbl2.UseFastEggWaypoint(v13) then
			tbl2.FastEggWaypointTrace = { Uid = v12.Uid, AreaId = v12.AreaId, PrimerUid = v13, Speed = 8000, StartedAt = os.clock() }
			n6 = 8000
		end

		if flag6 then
			if not flag then
				if tbl2.UseFastOutboundWaypoint(v12.AreaId, v13) then
					local vector = v12.AreaId == "Light Dark" and Vector3.new(4610, 71, -407) or Vector3.new(3427.9, 91.2, -412.4)

					tbl2.FastOutboundTrace = {
						Uid = v12.Uid,
						AreaId = v12.AreaId,
						PrimerUid = v13,
						Waypoint = vector,
						StartedAt = os.clock(),
						Speed = n6,
						EggApproachSpeed = n6,
					}

					tbl2.TitanOutboundTrace = tbl2.FastOutboundTrace
					setStatus(string.format("%s: fast tween to reference waypoint (%d)", v12.AreaId, n6))
					local v14, v15 = v7(vector, arg2, fn42, n6, 2)
					tbl2.FastOutboundTrace.WaypointReached = v14 == true
					tbl2.FastOutboundTrace.Reason = v15
					if not v14 then
						local v16, v17 = fn43(v15, 1)
						return v16, v17
					end
					tbl2.FastOutboundTrace.WaypointReachedAt = os.clock()
					local v16 = v3(v12.Uid)
					if type(v16) ~= "table" or v16.AreaId ~= v12.AreaId or v16.State ~= "Slot" and v16.State ~= "Dropped" or typeof(v16.BottomCFrame) ~= "CFrame" or type(arg3) ~= "string" and not v4(v16) then
						local targetChanged, v17 = fn43("Target changed", 0)
						return targetChanged, v17
					end
					v12 = v16
					tbl2.FastOutboundTrace.EggPosition = v16.BottomCFrame.Position
					setStatus(string.format("%s: moving from waypoint to egg", v12.AreaId))
				end
			end
		end

		local function fn44(arg4, arg5, arg6, arg7, arg8)
			if not flag or tbl.AvoidTraps then
				return v7(arg4, arg5, arg6, arg7, arg8)
			end

			if not tbl2.Alive then
				return false, "Destroyed"
			end

			if arg5 and tbl[arg5] ~= true then
				return false, "Cancelled"
			end
			local v14, v15 = arg6()
			if v14 then
				return false, v15
			end
			local v16, v17, v18 = v6()
			if not v16 or not v17 or not v18 then
				return false, "Character unavailable"
			end
			local n7 = arg4 - v17.Position
			tbl2.PrimaryApproachTrace = { Mode = "TP near + tween final", StartedAt = os.clock(), Target = arg4 }

			if n7.Magnitude > 24 then
				local staging = arg4 - n7.Unit * 18
				local rotation = v17.CFrame.Rotation
				local cFrame = v17.CFrame
				v16:PivotTo(CFrame.new(staging) * rotation * cFrame:ToObjectSpace(v16:GetPivot()))
				v17.AssemblyLinearVelocity = Vector3.zero
				v17.AssemblyAngularVelocity = Vector3.zero
				primeMovementIntegrity(v17, v17.Position)
				RunService.Heartbeat:Wait()
				if not tbl2.Alive then
					return false, "Destroyed"
				end

				if arg5 and tbl[arg5] ~= true then
					return false, "Cancelled"
				end

				if localPlayer.Character ~= v16 or not v17.Parent then
					return false, "Character changed"
				end
				local v19, v20 = arg6()
				if v19 then
					return false, v20
				end
				tbl2.PrimaryApproachTrace.Staging = staging
				tbl2.PrimaryApproachTrace.StagingError = (v17.Position - staging).Magnitude
				if tbl2.PrimaryApproachTrace.StagingError > 6 then
					tbl2.PrimaryApproachTrace.Reason = "Staging teleport corrected"
					return false, "Staging teleport corrected"
				end
			end

			local v19, v20 = v7(arg4, arg5, arg6, math.min(tonumber(arg7) or tonumber(tbl.TweenSpeed) or 650, 120), arg8 or 1.25)
			tbl2.PrimaryApproachTrace.FinishedAt = os.clock()
			tbl2.PrimaryApproachTrace.Reached = v19 == true
			tbl2.PrimaryApproachTrace.Reason = v20
			if not v19 then
				return false, v20
			end
			return true
		end

		if flag then
			local v14 = v3(v12.Uid)
			if type(v14) ~= "table" or typeof(v14.BottomCFrame) ~= "CFrame" or v14.State ~= "Slot" and v14.State ~= "Dropped" then
				local targetChanged, v15 = fn43("Target changed", 0)
				return targetChanged, v15
			end
			v12 = v14
		end

		local n7 = v12.BottomCFrame.Position + Vector3.new(0, 1.5, 0)

		if type(arg3) == "string" then
			local flag7 = false
			local str3 = "Selected egg movement did not settle"

			for i = 1, 30 do
				local v14 = v3(arg3)
				if type(v14) ~= "table" or v14.State ~= "Slot" and v14.State ~= "Dropped" or typeof(v14.BottomCFrame) ~= "CFrame" then
					local targetChanged, v15 = fn43("Target changed", 0)
					return targetChanged, v15
				end
				v12 = v14
				position = v14.BottomCFrame.Position
				state = v14.State
				local n8 = position + Vector3.new(0, 1.5, 0)
				setStatus(string.format(flag5 and "Retrying pinned %s" or "Chasing selected %s", tostring(v14.AssetCategory)))
				flag7, str3 = fn44(n8, arg2, fn42, n6, flag5 and 2.75 or 1.25)

				if flag7 then
					local v15 = v3(arg3)
					local v16
					v16, v16 = v6()

					if type(v15) == "table" and typeof(v15.BottomCFrame) == "CFrame" and v16 ~= nil and (v15.BottomCFrame.Position - v16.Position).Magnitude <= 2.75 then
						v12 = v15
						local n9 = v15.BottomCFrame.Position + Vector3.new(0, 1.5, 0)
						break
					end

					flag7 = false
					str3 = "Target moved"
				elseif str3 ~= "Target moved" then
					local v15, v16 = fn43(str3, 8)
					return v15, v16
				end

				task.wait()
			end

			if not flag7 then
				return false, str3
			end
		else
			local v14 = tostring
			local areaId = v12.AreaId
			setStatus(string.format("Approaching %s in %s", tostring(v12.AssetCategory), v14(areaId)))
			local v15, v16 = fn44(n7, arg2, fn42, n6, 1.25)
			if not v15 then
				local v17, v18 = fn43(v16, 8)
				return v17, v18
			end
		end

		local v14 = v3(v12.Uid)

		if not (type(v14) == "table" and typeof(v14.BottomCFrame) == "CFrame" and (v14.State == "Slot" or v14.State == "Dropped")) then
			tbl2.TargetDirty = true
			tbl2.ActiveTargetUid = nil
			return false, "Retarget"
		end

		if v13 ~= nil then
			local v15, v16 = tbl2.WaitForPrimerRelease(v13, arg2)

			if not v15 then
				tbl2.LastForestPrimerError = tostring(v16)
				tbl2.PrimerBlacklist[v13] = os.clock() + 15
				local v17, v18 = fn43(v16, 1)
				return v17, v18
			end

			if type(arg3) == "string" then
				local v17 = v3(arg3)
				if type(v17) ~= "table" or typeof(v17.BottomCFrame) ~= "CFrame" or v17.State ~= "Slot" and v17.State ~= "Dropped" then
					local targetChanged, v18 = fn43("Target changed", 0)
					return targetChanged, v18
				end
				position = v17.BottomCFrame.Position
				state = v17.State
			end

			local v17, v18 = fn42()
			if v17 then
				local v19, v20 = fn43(v18, 0)
				return v19, v20
			end
		end

		setStatus("Requesting egg carry")
		tbl2.BeginCarryWatch(v12.Uid, v12.AreaId)
		local stolen = tbl2.Metrics.Stolen
		local stealRequestAttempts = tbl.StealRequestAttempts
		local str3 = nil
		local flag7 = false

		for i = 1, stealRequestAttempts do
			local v15 = v3(v12.Uid)

			if not (type(v15) == "table" and typeof(v15.BottomCFrame) == "CFrame" and (v15.State == "Slot" or v15.State == "Dropped")) then
				if tbl2.IsCarrying and tbl2.CarryUid == v12.Uid then
					flag7 = true
				else
					str3 = "Egg changed before carry"
				end

				break
			end

			local n8 = v15.BottomCFrame.Position + Vector3.new(0, 1.5, 0)

			if type(arg3) == "string" then
				position = v15.BottomCFrame.Position
				state = v15.State
			end

			local v16
			v16, v16 = v6()

			if i > 1 or v16 == nil or (v16.Position - n8).Magnitude > 2.25 then
				local v17, v18 = fn44(n8, arg2, fn42, n6, flag5 and 2.75 or 1.25)

				if not v17 then
					if type(arg3) == "string" and v18 == "Target moved" then
						task.wait()
						continue
					end
					local v19, v20 = fn43(v18, 8)
					return v19, v20
				end
			end

			local v17, v18, v19 = v6()

			if v17 ~= nil and v18 ~= nil and v19 ~= nil then
				if tbl.GodMode then
					protectHumanoid(v19)
				end

				primeMovementIntegrity(v18, v18.Position)
				v18.AssemblyLinearVelocity = Vector3.zero
				v18.AssemblyAngularVelocity = Vector3.zero
			end

			task.wait(i == 1 and 0.08 or tbl.StealPreRequestDelay)
			local v20 = v3(v12.Uid)
			local v21
			v21, v21 = v6()
			local flag8 = type(v20) == "table"
			local flag9

			if flag8 then
				flag9 = v20.State == "Slot" or v20.State == "Dropped"
			else
				flag9 = flag8
			end

			flag9 = flag9 and typeof(v20.BottomCFrame) == "CFrame"
			if not flag9 then
				local targetChanged, v22 = fn43("Target changed", 0)
				return targetChanged, v22
			end
			local n9 = v20.BottomCFrame.Position + Vector3.new(0, 1.5, 0)

			if v21 == nil or (v21.Position - n9).Magnitude > 2.75 then
				tbl2.PrimaryPickupTrace = {
					Uid = v12.Uid,
					Attempt = i,
					Reason = "Pickup position displaced before request",
					Distance = v21 and (v21.Position - n9).Magnitude or nil,
					At = os.clock(),
				}

				str3 = "Pickup position displaced before request"
				local str4 = "Pickup position displaced before request"
				if i < stealRequestAttempts then
					continue
				end
				str3 = str4
				break
			end

			if not tbl2.IsCarryStateConfirmed(v15.Uid) and fn26() ~= nil then
				local v22, v23 = fn43("Safe-zone barrier active", 0)
				return v22, v23
			end

			if not tbl2.IsCarryStateConfirmed(v15.Uid) then
				local v22, v23 = tbl2.PrepareCarryNavigation(v15, v18, flag5 or type(arg3) == "string")
				if not v22 then
					local v24, v25 = fn43(v23, 1)
					return v24, v25
				end
			end

			local tbl5 = {
				Uid = v12.Uid,
				Primer = false,
				OwnerKey = arg2,
				WaitForCarryEvent = true,
				RequireFilters = type(arg3) ~= "string",
				TrackInvalidation = true,
				TrackDisplacement = true,
				StabilizeCharacter = true,
				Invalidated = false,
				Displaced = false,
			}

			local v22, v23, str4, v24, v25 = tbl2.CallWithTimeout(tbl.StealRequestTimeout, tbl2.RunValidatedCarryAction, tbl2.ObserveValidatedCarryRequest, v12.Uid, arg2, tbl5)

			if tbl5.Invalidated then
				tbl2.TargetDirty = true
				tbl2.PendingTargetUid = nil
				tbl2.ActiveTargetUid = nil
				return false, "Retarget"
			end

			if tbl5.Displaced then
				str3 = "Pickup position displaced before carry request"
				local str5 = "Pickup position displaced before carry request"
				if i < stealRequestAttempts then
					continue
				end
				str3 = str5
				break
			end

			if v25 == true then
				local metrics = tbl2.Metrics
				metrics.FastCarryReturns = metrics.FastCarryReturns + 1
			end

			if not v22 then
				local v26 = tostring
				str4 = str4 or "Request timeout"
				str3 = v26(str4)
				if str3 == "Cancelled" or str3 == "Destroyed" then
					local v27, v28 = fn43(str3, 0)
					return v27, v28
				end
				local metrics = tbl2.Metrics
				metrics.StealRequestTimeouts = metrics.StealRequestTimeouts + 1
				local v27, v28, v29 = tbl2.ReconcileTimedOutCarryRequest(v12.Uid, arg2, tbl.StealCarryConfirmTimeout)
				if v27 then
					flag7 = true
					break
				end
				str3 = v28 or str3
				if not v29 then
					local v30, v31 = fn43(str3, 0)
					return v30, v31
				end

				if not (i < stealRequestAttempts) then
					break
				end
				task.wait(tbl.RetryDelay)
				continue
			end

			if not v23 then
				str3 = tostring(str4)
				local metrics = tbl2.Metrics
				metrics.StealRequestErrors = metrics.StealRequestErrors + 1
				str4 = false
				v24 = str3
			end

			if str4 then
				flag7 = true

				if tbl2.DroppedTargetUid == v12.Uid then
					tbl2.LastRecoveredDroppedUid = v12.Uid
					tbl2.DroppedTargetUid = nil
					tbl2.DroppedTargetDeadline = 0
				end

				break
			end

			str3 = v24 or "Carry denied"
			task.wait(tbl.RetryDelay)
		end

		if not flag7 then
			tbl2.CarryAreaId = nil

			if type(arg3) ~= "string" then
				tbl2.Blacklist[v12.Uid] = os.clock() + 10
			end

			tbl2.ActiveTargetUid = nil
			return false, str3 or "Carry denied"
		end

		tbl2.CarryAreaId = v12.AreaId
		if stolen < tbl2.Metrics.Stolen then
			tbl2.ActiveTargetUid = nil
			return true
		end

		if not tbl2.IsCarryStateConfirmed(v12.Uid) or tbl2.CarryUid ~= v12.Uid then
			tbl2.ActiveTargetUid = nil
			return false, "Primary egg carry not confirmed"
		end
		log("STEAL", string.format("Carry accepted %s", v12.Uid))
		local v15, v16 = fn36(arg2, v12.AreaId, flag5 or type(arg3) == "string")
		tbl2.ActiveTargetUid = nil
		return v15, v16
	end

	tbl2.ForestAttackBindings = {}

	tbl2.RefreshForestAttackProtection = function()
		tbl2.ForestAttackProtectionCount = 0
		if type(filtergc) ~= "function" then
			tbl2.ForestAttackProtectionError = "filtergc unavailable"
			return false
		end

		local ok, result = pcall(function()
			for k, forestAttackBinding in pairs(tbl2.ForestAttackBindings) do
				local value = rawget(k, "_guardModel")

				if typeof(value) ~= "Instance" or not value:IsDescendantOf(Workspace) then
					local wrapper = forestAttackBinding.Wrapper

					if rawget(k, "_attackHandler") == wrapper then
						k._attackHandler = forestAttackBinding.Original
					end

					tbl2.ForestAttackBindings[k] = nil
				end
			end

			for k, forestAttackBinding in pairs(tbl2.ForestAttackBindings) do
				local wrapper = forestAttackBinding.Wrapper

				if rawget(k, "_attackHandler") == wrapper then
					tbl2.ForestAttackProtectionCount = tbl2.ForestAttackProtectionCount + 1
				else
					tbl2.ForestAttackBindings[k] = nil
				end
			end

			if tbl2.ForestAttackProtectionCount > 0 then
				return
			end
			local now = os.clock()
			if now < (tbl2.ForestAttackRetryAt or 0) then
				return
			end
			tbl2.ForestAttackRetryAt = now + 3
			local table_ = filtergc("table", { Keys = { "_attackHandler", "_guardModel", "_areaId" }, KeyValuePairs = { _areaId = "Forest" } }, false)

			for _, v3 in ipairs(table_) do
				local value = rawget(v3, "_guardModel")
				local value2 = rawget(v3, "_attackHandler")

				if typeof(value) == "Instance" and value:IsDescendantOf(Workspace) and type(value2) == "function" and not table.isfrozen(v3) and tbl2.ForestAttackBindings[v3] == nil then
					local tbl5 = {
						Original = value2,
						Wrapper = function(arg, ...)
							local alive = tbl2.Alive

							if alive then
								alive = tbl.GuardBypass

								if not alive then
									alive = tbl2.IsPrimaryChaseProtected(type(arg) == "table" and arg.EggUid or nil, rawget(v3, "_areaId"))
								end
							end

							if alive then
								alive = tbl2.StealInProgress or tbl2.ActiveStealHumanoid ~= nil or tbl.TPWalkEnabled or tbl2.IsPrimaryChaseProtected()
							end

							if alive and type(arg) == "table" and arg.Player == localPlayer and arg.EggUid ~= nil then
								tbl2.GuardHitsBlocked = tbl2.GuardHitsBlocked + 1
								tbl2.LastForestAttackBlocked = { At = os.clock(), Uid = arg.EggUid }
								return
							end

							return value2(arg, ...)
						end,
					}

					v3._attackHandler = tbl5.Wrapper
					tbl2.ForestAttackBindings[v3] = tbl5
				end

				local flag = tbl2.ForestAttackBindings[v3]

				if flag then
					local wrapper = flag.Wrapper
					flag = rawget(v3, "_attackHandler") == wrapper
				end

				if flag then
					tbl2.ForestAttackProtectionCount = tbl2.ForestAttackProtectionCount + 1
				end
			end
		end)

		tbl2.ForestAttackProtectionError = not ok and tostring(result) or tbl2.ForestAttackProtectionCount == 0 and "No live Forest attack callback found" or nil
		return ok and tbl2.ForestAttackProtectionCount > 0
	end

	tbl2.RestoreForestAttackProtection = function()
		for k, forestAttackBinding in pairs(tbl2.ForestAttackBindings) do
			local wrapper = forestAttackBinding.Wrapper

			if rawget(k, "_attackHandler") == wrapper then
				k._attackHandler = forestAttackBinding.Original
			end
		end

		table.clear(tbl2.ForestAttackBindings)
		tbl2.ForestAttackRetryAt = nil
	end

	tbl2.StealSurvival = { Version = 2, Events = {}, Samples = {}, Connections = {}, Serial = 0 }

	tbl2.RecordStealSurvival = function(arg, arg2, arg3, arg4, arg5)
		local stealSurvival = tbl2.StealSurvival
		arg2 = arg2 and arg2:FindFirstChild("HumanoidRootPart")
		local activeStealHumanoid = tbl2.ActiveStealHumanoid

		local tbl5 = {
			Kind = arg,
			At = os.clock(),
			Character = stealSurvival.Serial,
			Detail = arg4,
			Phase = tbl2.StealSurvivalPhase or "Idle",
			Status = tbl2.Status,
			CarryUid = tbl2.CarryUid,
			Claimed = tbl2.Metrics and tbl2.Metrics.Stolen,
			Touch = UserInputService.TouchEnabled,
			FrameSeconds = stealSurvival.LastFrameSeconds,
			FrameMaxLastSecond = stealSurvival.WindowMax,
			Health = arg5 or arg3 and arg3.Health,
			HumanoidState = arg3 and tostring(arg3:GetState()),
			DeadEnabled = arg3 and arg3:GetStateEnabled(Enum.HumanoidStateType.Dead),
			OriginalHealth = activeStealHumanoid and activeStealHumanoid.Original.Health,
			CloneHealth = activeStealHumanoid and activeStealHumanoid.Clone and activeStealHumanoid.Clone.Health,
			RootAnchored = arg2 and arg2.Anchored,
			Position = arg2 and { arg2.Position.X, arg2.Position.Y, arg2.Position.Z },
			Remaining = tbl2.MoveTrace and tbl2.MoveTrace.Remaining,
		}

		local carryWatch = tbl2.CarryWatch

		if carryWatch and carryWatch.Uid == tbl2.CarryUid and carryWatch.Guard.Parent then
			local root = carryWatch.Root

			if not root or not root.Parent then
				root = carryWatch.Guard:FindFirstChild("HumanoidRootPart")
				carryWatch.Root = root
			end

			tbl5.GuardState = carryWatch.State
			tbl5.GuardDistance = root and arg2 and (root.Position - arg2.Position).Magnitude
			tbl5.GuardTarget = carryWatch.Guard:GetAttribute("TargetPlayer")
		end

		local samples = arg == "Sample" and stealSurvival.Samples or stealSurvival.Events
		samples[#samples + 1] = tbl5

		if #samples > 64 then
			table.remove(samples, 1)
		end

		if arg == "Died" or arg == "CharacterRemoving" or arg == "HealthDrop" and tbl5.Health <= 0 then
			stealSurvival.LastIncident = { Event = tbl5, Events = table.clone(stealSurvival.Events), Samples = table.clone(stealSurvival.Samples) }
		end

		return tbl5
	end

	tbl2.BindStealSurvival = function(arg)
		local stealSurvival = tbl2.StealSurvival

		for _, connection in ipairs(stealSurvival.Connections) do
			connection:Disconnect()
		end

		table.clear(stealSurvival.Connections)
		stealSurvival.Serial = stealSurvival.Serial + 1
		local tbl5 = {}

		local function fn41(child)
			if tbl5[child] then
				return
			end
			local flag = not child:IsA("Humanoid")

			if flag then
				flag = not (child.Name == "HumanoidRootPart" and child:IsA("BasePart"))
			end

			if flag then
				return
			end
			local tbl6 = {}

			local function fn42(arg2)
				tbl6[#tbl6 + 1] = arg2
				stealSurvival.Connections[#stealSurvival.Connections + 1] = arg2
			end

			if child:IsA("Humanoid") and not tbl5[child] then
				tbl5[child] = true
				local health = child.Health

				fn42(child.HealthChanged:Connect(function(health2)
					if health2 < health then
						tbl2.RecordStealSurvival("HealthDrop", arg, child, nil, health2)
					end

					health = health2
				end))

				fn42(child.Died:Connect(function()
					tbl2.RecordStealSurvival("Died", arg, child)
				end))

				fn42(child.StateEnabledChanged:Connect(function(arg2, arg3)
					if arg2 == Enum.HumanoidStateType.Dead then
						tbl2.RecordStealSurvival("DeadEnabledChanged", arg, child, tostring(arg3))
					end
				end))
			elseif child.Name == "HumanoidRootPart" and child:IsA("BasePart") and not tbl5[child] then
				tbl5[child] = true

				fn42(child:GetPropertyChangedSignal("Anchored"):Connect(function()
					tbl2.RecordStealSurvival("RootAnchoredChanged", arg, arg:FindFirstChildOfClass("Humanoid"))
				end))
			end

			fn42(child.Destroying:Connect(function()
				tbl5[child] = nil

				for _, v3 in ipairs(tbl6) do
					v3:Disconnect()
					local v4 = table.find(stealSurvival.Connections, v3)

					if v4 then
						table.remove(stealSurvival.Connections, v4)
					end
				end

				table.clear(tbl6)
			end))
		end

		for _, child in ipairs(arg:GetChildren()) do
			fn41(child)
		end

		table.insert(stealSurvival.Connections, arg.ChildAdded:Connect(fn41))
		tbl2.RecordStealSurvival("CharacterBound", arg, arg:FindFirstChildOfClass("Humanoid"))
	end

	connect(localPlayer.CharacterAdded, tbl2.BindStealSurvival)

	connect(localPlayer.CharacterRemoving, function(arg)
		tbl2.RecordStealSurvival("CharacterRemoving", arg, arg:FindFirstChildOfClass("Humanoid"))
	end)

	connect(RunService.Heartbeat, function(lastFrameSeconds)
		local stealSurvival = tbl2.StealSurvival
		local now = os.clock()
		stealSurvival.LastFrameSeconds = lastFrameSeconds

		if now - (stealSurvival.WindowAt or 0) >= 1 then
			stealSurvival.WindowAt = now
			stealSurvival.WindowMax = lastFrameSeconds
		end

		stealSurvival.WindowMax = math.max(stealSurvival.WindowMax or lastFrameSeconds, lastFrameSeconds)
		local stealInProgress = tbl2.StealInProgress

		if not stealInProgress then
			stealInProgress = now < (stealSurvival.WatchUntil or 0)
		end

		if stealInProgress then
			stealInProgress = now >= (stealSurvival.NextSample or 0)
		end

		if stealInProgress then
			stealSurvival.NextSample = now + (tbl2.IsDeliveryCarry() and 0.5 or 0.25)
			local character = localPlayer.Character
			tbl2.RecordStealSurvival("Sample", character, character and character:FindFirstChildOfClass("Humanoid"))
		end
	end)

	if localPlayer.Character then
		tbl2.BindStealSurvival(localPlayer.Character)
	end

	tbl2.ClearStealHumanoidPool = function()
		local stealHumanoidPool = tbl2.StealHumanoidPool
		tbl2.StealHumanoidPool = nil

		if stealHumanoidPool and stealHumanoidPool.Clone then
			pcall(stealHumanoidPool.Clone.Destroy, stealHumanoidPool.Clone)
		end
	end

	tbl2.BeginStealHumanoid = function()
		if tbl2.ActiveStealHumanoid then
			return nil, "Steal humanoid already active"
		end
		local v3, v4, v5 = getCharacter()
		if not v3 or not v5 or v5.Health <= 0 then
			return nil, "Living character required"
		end
		local stealHumanoidPool = tbl2.StealHumanoidPool
		local clone = nil

		if stealHumanoidPool and stealHumanoidPool.Character == v3 and stealHumanoidPool.Original == v5 and stealHumanoidPool.Clone and stealHumanoidPool.Clone.Parent == nil then
			clone = stealHumanoidPool.Clone
			tbl2.StealHumanoidPool = nil
		elseif stealHumanoidPool then
			tbl2.ClearStealHumanoidPool()
		end

		if tbl.GodMode or tbl.AntiRagdoll then
			protectHumanoid(v5)
		end

		local currentCamera = Workspace.CurrentCamera

		local activeStealHumanoid = {
			Character = v3,
			Original = v5,
			Camera = currentCamera,
			CameraSubject = currentCamera and currentCamera.CameraSubject,
			Protected = tbl2.ProtectedHumanoid,
			Protection = tbl2.ProtectedHumanoidState,
			Connections = {},
			Restored = false,
			Errors = {},
			Properties = {},
		}

		for _, v6 in ipairs({
			"Health",
			"MaxHealth",
			"WalkSpeed",
			"JumpPower",
			"JumpHeight",
			"HipHeight",
			"AutoRotate",
			"PlatformStand",
			"Sit",
			"BreakJointsOnDeath",
			"RequiresNeck",
		}) do
			activeStealHumanoid.Properties[v6] = v5[v6]
		end

		activeStealHumanoid.DeadEnabled = v5:GetStateEnabled(Enum.HumanoidStateType.Dead)

		local function fn41(arg)
			arg.BreakJointsOnDeath = false
			arg.RequiresNeck = false
			arg:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
			arg.MaxHealth = math.max(1000000, arg.MaxHealth)

			if arg.Health < arg.MaxHealth then
				arg.Health = arg.MaxHealth
			end
		end

		local function fn42(arg, arg2)
			local humanoidRootPart = v3:FindFirstChild("HumanoidRootPart")

			tbl2.LastStealSurvivalEvent = {
				Kind = arg,
				At = os.clock(),
				Health = arg2.Health,
				State = tostring(arg2:GetState()),
				CarryUid = tbl2.CarryUid,
				Position = humanoidRootPart and humanoidRootPart.Position,
				Touch = UserInputService.TouchEnabled,
			}
		end

		activeStealHumanoid.Restore = function()
			if activeStealHumanoid.Restored then
				return
			end
			activeStealHumanoid.Restored = true

			local function fn43(arg)
				local ok, result = pcall(arg)

				if not ok then
					table.insert(activeStealHumanoid.Errors, tostring(result))
				end
			end

			for _, connection in ipairs(activeStealHumanoid.Connections) do
				fn43(function()
					connection:Disconnect()
				end)
			end

			table.clear(activeStealHumanoid.Connections)
			local clone2 = activeStealHumanoid.Clone
			local flag = not activeStealHumanoid.CharacterRemoving and localPlayer.Character == v3 and v3.Parent ~= nil

			if clone2 then
				fn43(function()
					clone2.Parent = nil
				end)
			end

			if flag then
				fn43(function()
					fn41(v5)
				end)

				fn43(function()
					v5.Parent = v3
				end)

				for k, property in pairs(activeStealHumanoid.Properties) do
					if k ~= "Health" and k ~= "MaxHealth" and k ~= "RequiresNeck" and k ~= "BreakJointsOnDeath" then
						fn43(function()
							v5[k] = property
						end)
					end
				end

				if not tbl.GodMode then
					fn43(function()
						v5.MaxHealth = activeStealHumanoid.Properties.MaxHealth
						v5.Health = math.min(activeStealHumanoid.Properties.Health, v5.MaxHealth)
						v5.RequiresNeck = activeStealHumanoid.Properties.RequiresNeck
						v5.BreakJointsOnDeath = activeStealHumanoid.Properties.BreakJointsOnDeath
						v5:SetStateEnabled(Enum.HumanoidStateType.Dead, activeStealHumanoid.DeadEnabled)
					end)
				end
			end

			if currentCamera and clone2 then
				fn43(function()
					if currentCamera.CameraSubject == clone2 then
						if flag then
							currentCamera.CameraSubject = activeStealHumanoid.CameraSubject or v5
						else
							local character = localPlayer.Character
							character = character and character:FindFirstChildOfClass("Humanoid")

							if character then
								currentCamera.CameraSubject = character
							end
						end
					end
				end)
			end

			if tbl2.ProtectedHumanoid == clone2 then
				tbl2.ProtectedHumanoid = flag and activeStealHumanoid.Protected or nil
				tbl2.ProtectedHumanoidState = flag and activeStealHumanoid.Protection or nil
			end

			if flag and tbl.GodMode then
				fn43(function()
					protectHumanoid(v5)
				end)
			end

			if clone2 and flag and tbl2.Alive then
				local stealHumanoidPool2 = tbl2.StealHumanoidPool

				if stealHumanoidPool2 and stealHumanoidPool2.Clone ~= clone2 then
					fn43(function()
						stealHumanoidPool2.Clone:Destroy()
					end)
				end

				tbl2.StealHumanoidPool = { Character = v3, Original = v5, Clone = clone2 }
			elseif clone2 then
				fn43(function()
					clone2:Destroy()
				end)
			end

			local flag2 = not flag

			if flag2 then
				fn43(function()
					v5:Destroy()
				end)
			end

			if tbl2.ActiveStealHumanoid == activeStealHumanoid then
				tbl2.ActiveStealHumanoid = nil
			end

			tbl2.LastStealHumanoidCleanup = {
				Restored = flag and v5.Parent == v3,
				CharacterChanged = flag2,
				Errors = activeStealHumanoid.Errors,
				OriginalHealth = flag and v5.Health or nil,
			}
		end

		tbl2.ActiveStealHumanoid = activeStealHumanoid
		local archivable = v5.Archivable

		local ok, result = xpcall(function()
			if clone then
				activeStealHumanoid.Clone = clone
				activeStealHumanoid.ReusedClone = true
			else
				v5.Archivable = true
				activeStealHumanoid.Clone = v5:Clone()
				v5.Archivable = archivable
			end

			local v6 = assert(activeStealHumanoid.Clone, "Humanoid clone failed")
			v6.Name = "Humanoid"
			v6.BreakJointsOnDeath = false
			v6.RequiresNeck = false
			v6.PlatformStand = false
			v6.Sit = false
			v6.AutoRotate = true
			v6.WalkSpeed = activeStealHumanoid.Properties.WalkSpeed
			v6.JumpPower = activeStealHumanoid.Properties.JumpPower
			v6.JumpHeight = activeStealHumanoid.Properties.JumpHeight
			v6.HipHeight = activeStealHumanoid.Properties.HipHeight
			tbl2.ProtectedHumanoid = nil
			tbl2.ProtectedHumanoidState = nil
			fn41(v5)
			fn41(v6)

			for _, v7 in ipairs({ v5, v6 }) do
				local flag = false

				table.insert(activeStealHumanoid.Connections, v7.HealthChanged:Connect(function(health)
					if activeStealHumanoid.Restored or flag or health >= v7.MaxHealth then
						return
					end
					fn42(v7 == v5 and "OriginalHealthDrop" or "CloneHealthDrop", v7)
					flag = true
					local ok, result = pcall(fn41, v7)
					flag = false

					if not ok then
						table.insert(activeStealHumanoid.Errors, tostring(result))
					end
				end))
			end

			v5.Parent = nil
			v6.Parent = v3
			protectHumanoid(v6)

			if currentCamera then
				currentCamera.CameraSubject = v6
			end

			local function fn43()
				tbl2.MoveGeneration = tbl2.MoveGeneration + 1
				activeStealHumanoid.Restore()
			end

			table.insert(activeStealHumanoid.Connections, v6.Died:Connect(function()
				fn42("CloneDied", v6)
				fn43()
			end))

			table.insert(activeStealHumanoid.Connections, localPlayer.CharacterRemoving:Connect(function(character)
				if character == v3 then
					activeStealHumanoid.CharacterRemoving = true
					fn42("CharacterRemoving", v5)
					fn43()
				end
			end))
		end, debug.traceback)

		pcall(function()
			v5.Archivable = archivable
		end)

		if not ok then
			activeStealHumanoid.Restore()
			return nil, tostring(result)
		end
		return activeStealHumanoid
	end

	tbl2.ExecuteFarmTransaction = function(arg)
		local args = arg.Args
		local pack = table.pack
		local v3 = table.pack(arg.Callback(table.unpack(args, 1, args.n)))
		arg.Result = pack(table.unpack(v3, 1, v3.n))
	end

	tbl2.RunFarmTransaction = function(arg, arg2, ...)
		if tbl2.Event.ScrambleV2 and tbl2.Event.ScrambleV2.BlocksFarm() then
			return false, "Movement busy"
		end

		if tbl2.FarmTransaction then
			return false, "Movement busy"
		end

		if tbl2.FarmCycleActionBusy and tbl2.FarmCycleActionThread ~= coroutine.running() then
			return false, "Movement busy"
		end
		local farmTransaction = { Name = arg, Thread = coroutine.running(), Callback = arg2, Args = table.pack(...) }
		tbl2.FarmTransaction = farmTransaction
		local ok, result = xpcall(tbl2.ExecuteFarmTransaction, debug.traceback, farmTransaction)
		tbl2.FarmTransaction = nil

		if not ok then
			error(result, 0)
		end

		local result2 = farmTransaction.Result
		return table.unpack(result2, 1, result2.n)
	end

	tbl2.ExecuteStealStepImpl = function(arg)
		setStealTweenPresentation(true)
		local arguments = arg.Arguments
		arg.Result = table.pack(fn40(table.unpack(arguments, 1, arguments.n)))
	end
end

local fn34

do
	local function fn35(...)
		local v3 = table.pack(...)
		tbl2.ActiveDroppedRecoveryUid = nil
		local flag = not tbl2.IsCarrying and v3[3] ~= true and type(v3[4]) ~= "string"

		if flag then
			flag = os.clock() < (tbl2.PrimerRetryAfter or 0)
		end

		if flag then
			return false, "Primer retry cooldown"
		end

		if not tbl2.IsCarrying then
			local v4, v5 = fn27()
			if not v4 then
				setStatus("Waiting: " .. tostring(v5))
				return false, v5
			end
		end

		if not tbl2.IsCarrying and type(v3[3]) ~= "string" and type(v3[4]) ~= "string" and not tbl2.CarryRequestInFlight then
			local v4, waiting = chooseEgg()

			if v4 == nil then
				waiting = waiting or "No eligible egg"
				setStatus("Waiting: " .. waiting)

				if tbl2.KaitunSimpleStatus ~= nil then
					tbl2.KaitunSimpleStatus = string.format("Steal Egg [ %s ]", waiting)
					tbl2.Status = tbl2.KaitunSimpleStatus
				end

				if waiting == "Waiting for dropped egg sync" or waiting == "Snapshot unavailable" or waiting == "Character unavailable" then
					return false, waiting
				end
				return false, "No eligible egg"
			end
		end

		if tbl2.StealInProgress then
			return false, "Steal already active"
		end
		tbl2.StealSurvivalPhase = "CloneSetup"

		if tbl.GuardBypass then
			tbl2.RefreshForestAttackProtection()
		end

		local v4 = nil

		if tbl.StealCloneHumanoid then
			local v5
			v4, v5 = tbl2.BeginStealHumanoid()
			if not v4 then
				return false, v5
			end
		end

		tbl2.StealInProgress = true
		tbl2.StealSurvivalPhase = "Steal"
		local tbl5 = { Arguments = v3 }
		local ok, result = xpcall(tbl2.ExecuteStealStepImpl, debug.traceback, tbl5)
		local result2 = tbl5.Result
		tbl2.FinishDroppedRecovery(ok and result2[1] == true, ok and result2[2] or nil)
		tbl2.StealSurvivalPhase = "Cleanup"
		tbl2.RecordStealSurvival("CleanupStart", localPlayer.Character, localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid"))
		local ok2, result3 = pcall(setStealTweenPresentation, false)
		tbl2.ClearPreparedRide()
		tbl2.ClearCarryWatch()

		if v4 then
			v4.Restore()
		end

		if tbl2.NoClipEnabled then
			pcall(setMovementNoClip, tbl2.NoClipCharacter, false)
		end

		tbl2.StealSurvivalPhase = "AfterCleanup"
		tbl2.StealSurvival.WatchUntil = os.clock() + 5
		tbl2.RecordStealSurvival("CleanupEnd", localPlayer.Character, localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid"))
		tbl2.StealInProgress = false

		if not ok then
			error(result, 0)
		end

		if not ok2 then
			error(result3, 0)
		end

		return table.unpack(result2, 1, result2.n)
	end

	tbl2.CompleteStealTransaction = function(...)
		local v3 = table.pack(...)
		local pack = table.pack
		local v4 = table.pack(fn35(table.unpack(v3, 1, v3.n)))
		local v5 = pack(table.unpack(v4, 1, v4.n))

		if v5[1] == true and tbl2.Alive and not tbl2.IsCarrying and tbl2.ServiceFarmAfterSteal then
			tbl2.ServiceFarmAfterSteal(v3[2])
		end

		return table.unpack(v5, 1, v5.n)
	end

	stealStep = function(...)
		return tbl2.RunFarmTransaction("STEAL", tbl2.CompleteStealTransaction, ...)
	end

	stealSelectedEgg = function(droppedTargetUid)
		if tbl2.FarmTransaction then
			return false, "Movement busy"
		end

		if type(droppedTargetUid) ~= "string" then
			return false, "No checker egg selected"
		end

		if tbl2.Checker.ManualBusy then
			return false, "Selected steal is already running"
		end
		tbl2.Checker.ManualBusy = true
		tbl2.MoveGeneration = tbl2.MoveGeneration + 1
		tbl2.Moving = false
		local v3
		v3, v3 = getCharacter()

		if v3 ~= nil then
			v3.AssemblyLinearVelocity = Vector3.zero
			v3.AssemblyAngularVelocity = Vector3.zero
		end

		local ok, result, result2 = xpcall(function()
			local n3 = os.clock() + 75
			local stolen = tbl2.Metrics.Stolen
			local now = nil
			local str2 = "Selected egg recovery timeout"
			local n4 = 0

			while tbl2.Alive and os.clock() < n3 do
				if tbl2.Metrics.Stolen > stolen then
					return true
				end
				local v4, v5, v6 = getCharacter()

				if v5 == nil or v6 == nil or v6.Health <= 0 then
					setStatus("Waiting for respawn to recover selected egg")
					task.wait(0.1)
					now = nil
					str2 = "Waiting for respawn"
					continue
				end

				local v7 = getAreaEggRecord(droppedTargetUid)

				if type(v7) == "table" and (v7.State == "Slot" or v7.State == "Dropped") and typeof(v7.BottomCFrame) == "CFrame" then
					tbl2.Blacklist[droppedTargetUid] = nil
					now = nil

					if v7.State == "Dropped" then
						tbl2.DroppedTargetUid = droppedTargetUid
						tbl2.DroppedTargetDeadline = os.clock() + 8
						now = nil
					end
				else
					now = now or os.clock()
					if os.clock() - now > 5 and not tbl2.IsCarrying then
						return false, "Selected egg is no longer available"
					end
				end

				local v8, v9 = stealStep(true, nil, droppedTargetUid)
				if v8 then
					return true
				end
				str2 = v9 or str2
				if v9 == "Primer released" then
					task.wait(0.05)
					continue
				end

				if v9 == "Cancelled" or v9 == "Destroyed" or v9 == "Dropped egg retry limit" then
					return false, v9
				end
				n4 += 1
				if n4 >= 3 then
					return false, string.format("Selected egg steal failed %d times: %s", 3, tostring(str2))
				end
				tbl2.MoveGeneration = tbl2.MoveGeneration + 1
				tbl2.Moving = false
				task.wait(0.05)
			end

			return false, str2
		end, debug.traceback)

		tbl2.Checker.ManualBusy = false
		tbl2.Checker.Dirty = true
		if not ok then
			return false, result
		end
		return result, result2
	end

	local function fn36()
		local v3 = get()
		local tbl5 = {}
		if type(v3) ~= "table" or type(v3.EggInventory) ~= "table" then
			return tbl5, nil
		end
		local n3 = 0

		for k, v4 in pairs(v3.EggInventory) do
			if type(k) == "string" and type(v4) == "table" then
				if v4.Placement == nil then
					table.insert(tbl5, { Uid = k, Record = v4 })
				else
					n3 += 1
				end
			end
		end

		table.sort(tbl5, function(arg, arg2)
			return arg.Uid < arg2.Uid
		end)

		return tbl5, n3
	end

	local tbl5 = { Revision = -1, CheckedAt = 0, Record = nil }

	local function fn37()
		if not tbl.AutoFarmCycle then
			if not tbl.AutoScrambleFarm then
				return nil
			end
			local snapshot = tbl2.Scramble and tbl2.Scramble.Snapshot
			local window = type(snapshot) == "table" and snapshot.Window or nil
			local num = type(window) == "table" and tonumber(window.EndsAt) or nil
			if type(window) ~= "table" or window.Active ~= true or num ~= nil and num > 0 and Workspace:GetServerTimeNow() >= num then
				return nil
			end
		end

		local findScramblePriorityEgg = tbl2.Event.FindScramblePriorityEgg
		if type(findScramblePriorityEgg) ~= "function" then
			return nil
		end
		local targetRevision = tbl2.TargetRevision or 0
		local now = os.clock()
		if tbl5.Revision == targetRevision and now - tbl5.CheckedAt < 0.12 then
			return tbl5.Record
		end
		local v3 = findScramblePriorityEgg()
		tbl5.Revision = targetRevision
		tbl5.CheckedAt = now
		tbl5.Record = v3
		return v3
	end

	local function fn38()
		if fn37() ~= nil then
			return true, "Priority egg spawned"
		end
		return false
	end

	local function fn39(arg)
		if type(arg) ~= "string" then
			return false
		end
		local v3 = string.lower(arg)
		return string.find(v3, "too many eggs placed", 1, true) ~= nil or string.find(v3, "toomanyeggsplaced", 1, true) ~= nil or string.find(v3, "egg placement limit", 1, true) ~= nil
	end

	local function fn40(arg)
		local tbl6 = {}
		local v3 = EggCmds.GetOwnerRuntimeRecords(localPlayer.UserId)

		for _, v4 in pairs(v3) do
			if v4.Placement ~= nil and typeof(v4.Placement.LocalCFrame) == "CFrame" then
				table.insert(tbl6, (arg.CenterPoint.CFrame * v4.Placement.LocalCFrame).Position)
			end
		end

		return tbl6
	end

	local function fn41(arg)
		local tbl6 = {}
		local petArea = arg.PetArea
		local n3 = math.max(0, petArea.Size.X * 0.5 - 3)
		local n4 = math.max(0, petArea.Size.Z * 0.5 - 3)
		local v3 = fn40(arg)

		for i = -n4, n4, 6 do
			for i2 = -n3, n3, 6 do
				local position = (petArea.CFrame * CFrame.new(i2, petArea.Size.Y * 0.5 + 0.25, i)).Position
				local flag = true

				for _, v4 in ipairs(v3) do
					if (v4 - position).Magnitude < 5 then
						flag = false
						break
					end
				end

				if flag then
					table.insert(tbl6, arg.CenterPoint.CFrame:ToObjectSpace(CFrame.new(position)))
				end
			end
		end

		table.sort(tbl6, function(arg2, arg3)
			return arg2.Position.Magnitude < arg3.Position.Magnitude
		end)

		return tbl6
	end

	local fn42 = nil

	local function fn43(arg, arg2)
		if tbl2.StealInProgress or tbl2.IsCarrying or tbl2.Moving or tbl2.Checker.ManualBusy then
			return false, "Movement busy"
		end

		if arg2 == nil and not arg then
			arg2 = "AutoPlace"
		end

		local v3, v4 = fn36()
		if #v3 == 0 then
			setStatus("Waiting for unplaced egg")
			return false, "No unplaced egg"
		end
		local flag = v4 ~= nil

		if flag then
			flag = v4 >= (tbl2.PlaceEggLimit or 30)
		end

		if flag then
			setStatus(string.format("Egg farm full (%d/%d); waiting for hatch", v4, tbl2.PlaceEggLimit or 30))
			return false, "Egg placement capacity reached"
		end

		if tbl.AutoFarmCycle and tbl.AutoHatch and select(1, fn42()) ~= nil then
			return false, "Ready eggs pending hatch"
		end

		if fn37() ~= nil then
			return false, "Priority egg spawned"
		end
		local v5 = PlotCmds.GetPlotData()
		if type(v5) ~= "table" or v5.PetArea == nil or v5.CenterPoint == nil then
			return false, "Plot unavailable"
		end
		local v6 = fn41(v5)
		if #v6 == 0 then
			return false, "No placement candidate"
		end
		local v7 = v3[1]
		local n3 = (v5.CenterPoint.CFrame * v6[1]).Position + Vector3.new(0, 3, 0)
		setStatus("Returning to my farm to place egg")
		local v8, v9 = moveTo(n3, arg2, fn38, nil, 3)
		if not v8 then
			return false, v9
		end

		if not tbl2.Alive then
			return false, "Destroyed"
		end

		if fn37() ~= nil then
			return false, "Priority egg spawned"
		end
		setStatus(string.format("Placing %s", v7.Uid))

		for i = 1, math.min(#v6, 30) do
			if not tbl2.Alive or arg2 ~= nil and tbl[arg2] ~= true then
				return false, "Cancelled"
			end

			if tbl.AutoFarmCycle and tbl.AutoHatch and select(1, fn42()) ~= nil then
				return false, "Ready eggs pending hatch"
			end
			local ok, result, result2 = pcall(EggCmds.RequestPlaceEgg, v7.Uid, v6[i])
			if not ok then
				return false, result
			end

			if result then
				local metrics = tbl2.Metrics
				metrics.Placed = metrics.Placed + 1
				tbl2.FarmServiceStatus = "Placed egg"
				log("PLACE", string.format("Placed %s", v7.Uid))
				return true
			end

			if fn39(result2) then
				tbl2.PlaceEggLimit = math.min(tbl2.PlaceEggLimit or 30, math.max(1, tonumber(v4) or 30))
				return false, "Egg placement capacity reached"
			end

			if type(result2) == "string" and string.find(string.lower(result2), "inventory", 1, true) then
				return false, result2
			end
			task.wait(0.25)
		end

		return false, "All placement candidates denied"
	end

	local function fn44(arg)
		local placement = arg and arg.Placement
		if type(placement) ~= "table" then
			return false
		end

		if placement.ReadyAt ~= nil then
			return true
		end
		local num = tonumber(placement.PlacedAt)
		local num2 = tonumber(placement.GrowthDuration)

		if num2 == nil then
			local ok, result = pcall(EggItemUtil.GetGrowthDuration, arg)

			if ok then
				num2 = tonumber(result)
			end
		end

		local n3 = tonumber(arg.GrowthSpeedMultiplier) or 1
		if num == nil or num2 == nil or n3 <= 0 then
			return false
		end
		local n4 = tonumber(arg.GrowthCreditSeconds) or tonumber(placement.GrowthCreditSeconds) or 0
		return (Workspace:GetServerTimeNow() - num) * n3 + n4 >= num2
	end

	fn42 = function()
		local v3 = EggCmds.GetOwnerRuntimeRecords(localPlayer.UserId)
		local isLocalEggReady = EggCmds.IsLocalEggReady

		for k, v4 in pairs(v3) do
			if v4.Placement == nil then
				continue
			end
			local ok

			if type(isLocalEggReady) == "function" then
				local result
				ok, result = pcall(isLocalEggReady, k)
				ok = ok and result == true
			else
				ok = fn44(v4)
			end

			if ok then
				return k, v4
			end
		end

		return nil, nil
	end

	local function fn45(arg, arg2)
		if tbl2.StealInProgress or tbl2.IsCarrying or tbl2.Moving or tbl2.Checker.ManualBusy then
			return false, "Movement busy"
		end

		if arg2 == nil and not arg then
			arg2 = "AutoHatch"
		end

		local v3, v4 = fn42()
		if v3 == nil then
			setStatus("Waiting for ready egg")
			return false, "No ready egg"
		end
		local v5 = PlotCmds.GetPlotData()
		if type(v5) ~= "table" or v5.CenterPoint == nil then
			return false, "Plot unavailable"
		end
		local n3 = (v5.CenterPoint.CFrame * v4.Placement.LocalCFrame).Position + Vector3.new(0, 3, 0)
		if fn37() ~= nil then
			return false, "Priority egg spawned"
		end
		local v6, v7 = moveTo(n3, arg2, fn38)
		if not v6 then
			return false, v7
		end

		if not tbl2.Alive or arg2 and tbl[arg2] ~= true then
			return false, "Cancelled"
		end

		if fn37() ~= nil then
			return false, "Priority egg spawned"
		end
		setStatus(string.format("Hatching %s", v3))
		local ok, result, result2 = pcall(EggCmds.RequestHatchEgg, v3)
		if not ok then
			return false, result
		end

		if not result then
			return false, result2 or "Hatch denied"
		end
		local ok2, result3, result4, result5 = pcall(EggCmds.RequestCompleteHatchEgg, v3)
		if not ok2 then
			return false, result3
		end

		if not result3 then
			return false, result4 or "Hatch completion denied"
		end
		local metrics = tbl2.Metrics
		metrics.Hatched = metrics.Hatched + 1
		tbl2.FarmServiceStatus = "Hatched ready egg"
		log("HATCH", string.format("Hatched %s into %s", v3, tostring(result5)))
		return true
	end

	placeStep = function(...)
		return tbl2.RunFarmTransaction("PLACE", fn43, ...)
	end

	hatchStep = function(...)
		return tbl2.RunFarmTransaction("HATCH", fn45, ...)
	end

	tbl2.ServiceFarmAfterSteal = function(arg)
		if tbl2.Checker.ManualBusy then
			return
		end
		local v3 = tbl2.Event.HasCriticalPriority()
		if v3 and arg ~= "AutoScrambleFarm" and arg ~= "AutoFarmCycle" then
			return
		end

		if tbl.AutoFarmCycle and tbl.AutoHatch and select(1, fn42()) ~= nil then
			if v3 then
				tbl2.FarmServiceStatus = "Ready eggs pending; hatch resumes after event"
				return
			end
			local ok, result, result2 = pcall(fn45, false)

			if not ok or not result then
				tbl2.FarmServiceStatus = tostring(ok and result2 or result)
			end

			return
		end

		local n3 = (v3 or tbl.AutoFarmCycle) and 1 or 20

		for i = 1, n3 do
			if not (not tbl2.Alive or not tbl.AutoPlace) then
				local ok, result, result2 = pcall(fn43, false)

				if not ok or not result then
					tbl2.FarmServiceStatus = tostring(ok and result2 or result)
					break
				else
					continue
				end
			end

			break
		end

		if v3 then
			return
		end

		for i = 1, n3 do
			if not (not tbl2.Alive or not tbl.AutoHatch) then
				local ok, result, result2 = pcall(fn45, false)

				if not ok or not result then
					tbl2.FarmServiceStatus = tostring(ok and result2 or result)
					break
				else
					continue
				end
			end

			break
		end
	end

	equipBest = function()
		setStatus("Equipping best pets")
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Backpack.EQUIP_BEST)
		if not ok then
			return false, result
		end

		if result == true then
			local metrics = tbl2.Metrics
			metrics.Equipped = metrics.Equipped + 1
			log("EQUIP", "Equip Best succeeded")
			return true
		end

		return false, result2 or "Equip Best denied"
	end

	claimIndex = function()
		setStatus("Claiming index rewards")
		local ok, result, result2, result3 = pcall(Network.Invoke, Constants.NETWORK_MAP.Index.REQUEST_CLAIM_ALL)
		if not ok then
			return false, result
		end

		if result == true then
			log("REWARD", string.format("Index claimed %s", tostring(type(result3) == "table" and #result3 or 0)))
			return true
		end
		return false, result2 or "Index claim denied"
	end

	claimOffline = function()
		setStatus("Claiming offline income")
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.OfflineAssets.REQUEST_REDEEM, { Kind = "Claim" })
		if not ok then
			return false, result
		end

		if result == true then
			log("REWARD", "Offline income claimed")
			return true
		end
		return false, result2 or "Offline claim denied"
	end

	dropHeldEgg = function()
		if not tbl2.IsCarrying then
			return true
		end
		setStatus("Dropping held egg")
		local lastDropRequest = { Uid = tbl2.CarryUid, At = os.clock(), Reason = playerRequest }
		tbl2.LastDropRequest = lastDropRequest
		local ok, result, result2 = pcall(EggCmds.RequestDropHeldAreaEgg, playerRequest)
		lastDropRequest.Accepted = ok and result == true
		if not ok then
			return false, result
		end

		if result == true then
			local metrics = tbl2.Metrics
			metrics.Dropped = metrics.Dropped + 1
			return true
		end

		return false, result2 or "Drop held egg denied"
	end

	fn34 = function(arg)
		if not arg:IsA("Tool") then
			return false
		end

		if arg:GetAttribute("IsBat") == true then
			return true
		end

		if string.find(string.lower(arg.Name), "bat", 1, true) then
			return true
		end
		local attribute = arg:GetAttribute("GearName") or arg:GetAttribute("GearId") or arg:GetAttribute("Id") or arg:GetAttribute("_id")
		local v3 = nil

		pcall(function()
			v3 = attribute and Gears.Directory[attribute] or Gears.Directory[arg.Name]
		end)

		return type(v3) == "table" and v3.BatControllerData ~= nil
	end

	equipBat = function()
		local v3, v4, v5 = getCharacter()
		if v3 == nil or v5 == nil then
			return false, "Character unavailable"
		end

		for _, child in ipairs(v3:GetChildren()) do
			if fn34(child) then
				return true
			end
		end

		local backpack = localPlayer:FindFirstChildOfClass("Backpack")

		if backpack ~= nil then
			for _, child in ipairs(backpack:GetChildren()) do
				if fn34(child) then
					v5:EquipTool(child)
					return true
				end
			end
		end

		return false, "Bat tool not found"
	end

	local function fn46(arg)
		if type(arg) ~= "table" then
			return nil
		end

		if typeof(arg.CFrame) == "CFrame" then
			return arg.CFrame.Position
		end

		if typeof(arg.Position) == "Vector3" then
			return arg.Position
		end

		if typeof(arg.Origin) == "CFrame" then
			return arg.Origin.Position
		end

		if typeof(arg.Origin) == "Vector3" then
			return arg.Origin
		end
		return nil
	end

	tbl2.Event.FindScrambleDrop = function(arg, arg2)
		local drops = type(arg) == "table" and arg.Drops or nil
		local upserts = type(drops) == "table" and (drops.Upserts or drops) or nil
		local v3, v4, v5 = pairs(type(upserts) == "table" and upserts or {})
		local huge = math.huge
		local v6 = nil
		local v7 = nil

		for _, v8 in v3, v4, v5 do
			local v9 = fn46(v8)

			if type(v8) == "table" and v8.Id ~= nil and v9 ~= nil then
				local magnitude = arg2 ~= nil and (v9 - arg2).Magnitude or 0

				if magnitude < huge then
					huge = magnitude
					v6 = v8
					v7 = v9
				end
			end
		end

		return v6, v7
	end

	tbl2.Event.FindScrambleDrone = function(arg, arg2)
		local drones = type(arg) == "table" and arg.Drones or nil
		local upserts = type(drones) == "table" and drones.Upserts or nil
		local scrambleLocalVisuals = Workspace:FindFirstChild("ScrambleLocalVisuals")
		local tbl6 = {}

		if scrambleLocalVisuals ~= nil then
			for _, v3 in ipairs(scrambleLocalVisuals:QueryDescendants("Model[$ScrambleDroneId]")) do
				if v3:IsDescendantOf(Workspace) then
					local attribute = v3:GetAttribute("ScrambleDroneId")

					if attribute ~= nil then
						local hitbox = v3:FindFirstChild("Hitbox")
						local isBasePart = hitbox ~= nil and hitbox:IsA("BasePart") and hitbox or v3.PrimaryPart or v3:FindFirstChild("RootPart")

						if isBasePart ~= nil and isBasePart:IsA("BasePart") then
							tbl6[tostring(attribute)] = {
								Position = isBasePart.Position,
								Health = hitbox ~= nil and tonumber(hitbox:GetAttribute("Health")) or nil,
							}
						end
					end
				end
			end
		end

		local tbl7 = {}
		local v3, v4, v5 = pairs(type(upserts) == "table" and upserts or {})
		local n3 = -math.huge
		local huge = math.huge
		local v6 = nil
		local v7 = nil

		for _, v8 in v3, v4, v5 do
			local flag = type(v8) == "table" and v8.Id ~= nil and tbl6[tostring(v8.Id)] or nil
			local position = flag and flag.Position or nil
			local n4 = tonumber(type(v8) == "table" and v8.Health) or 0
			local health = flag and flag.Health or n4

			if type(v8) == "table" and v8.Id ~= nil and flag ~= nil and n4 > 0 and health ~= nil and health > 0 and position ~= nil then
				tbl7[tostring(v8.Id)] = true
				local magnitude = arg2 ~= nil and (position - arg2).Magnitude or 0

				if health > n3 or health == n3 and magnitude < huge then
					n3 = health
					huge = magnitude
					v6 = v8
					v7 = position
				end
			end
		end

		local v8 = nil

		for k, v9 in pairs(tbl6) do
			if not tbl7[k] and v9.Health ~= nil and v9.Health > 0 and v9.Health > n3 then
				n3 = v9.Health
				v8 = k
			end
		end

		return v6, v7, v8
	end

	tbl2.Event.GetScrambleDroneLiveTarget = function(arg)
		if type(arg) ~= "table" or arg.Id == nil then
			return nil, nil, nil
		end
		local scrambleLocalVisuals = Workspace:FindFirstChild("ScrambleLocalVisuals")
		if scrambleLocalVisuals == nil then
			return nil, nil, nil
		end
		local str2 = tostring(arg.Id)

		for _, v3 in ipairs(scrambleLocalVisuals:QueryDescendants("Model[$ScrambleDroneId]")) do
			if tostring(v3:GetAttribute("ScrambleDroneId")) == str2 and v3:IsDescendantOf(Workspace) then
				local hitbox = v3:FindFirstChild("Hitbox")

				if hitbox ~= nil and hitbox:IsA("BasePart") then
					local position = hitbox.Position
					local v4 = table.pack(tonumber(hitbox:GetAttribute("Health")))
					return v3, position, table.unpack(v4, 1, v4.n)
				end

				local primaryPart = v3.PrimaryPart or v3:FindFirstChild("RootPart")
				if primaryPart ~= nil and primaryPart:IsA("BasePart") then
					return v3, primaryPart.Position, nil
				end
				return v3, nil, nil
			end
		end

		return nil, nil, nil
	end

	tbl2.Event.FindScrambleDroneById = function(arg, arg2)
		local drones = type(arg) == "table" and arg.Drones or nil
		local upserts = type(drones) == "table" and drones.Upserts or nil
		local str2 = tostring(arg2 or "")
		local v3 = pairs
		local tbl6 = type(upserts) == "table" and upserts or {}

		for _, v4 in v3(tbl6) do
			local flag = type(v4) == "table" and tostring(v4.Id) == str2

			if flag then
				flag = (tonumber(v4.Health) or 0) > 0
			end

			if flag then
				local v5, v6 = tbl2.Event.GetScrambleDroneLiveTarget(v4)
				if v5 ~= nil and v6 ~= nil then
					return v4, v5, v6
				end
				return nil, nil, nil
			end
		end

		return nil, nil, nil
	end

	local tbl6 = { "LostPart1", "LostPart2" }
	local vector = Vector3.new(2118, 71, -363)
	local n3 = 20
	local n4 = 2.5

	local function fn47(arg)
		if arg == nil then
			return false
		end
		local v3 = fn7()
		local areas = v3 and v3:FindFirstChild("Areas")
		areas = areas and areas:FindFirstChild("SeparationLine")
		if areas == nil or not areas:IsA("BasePart") then
			return false
		end
		local v4 = (vector - areas.Position):Dot(areas.CFrame.LookVector)
		local v5 = (arg.Position - areas.Position):Dot(areas.CFrame.LookVector)
		return v4 > 2 and v5 < -2 or v4 < -2 and v5 > 2
	end

	tbl2.Event.ResolveScrambleCombatTarget = function(arg)
		local combatTargetId = tbl2.Scramble.CombatTargetId
		if combatTargetId == nil then
			return "unlocked", nil, nil
		end
		local drones = type(arg) == "table" and arg.Drones or nil
		local upserts = type(drones) == "table" and drones.Upserts or nil
		local str2 = tostring(combatTargetId)
		local v3 = pairs
		upserts = type(upserts) == "table" and upserts or {}
		local v4 = nil

		for _, upsert in v3(upserts) do
			if type(upsert) == "table" and tostring(upsert.Id) == str2 then
				v4 = upsert
				break
			else
				v4 = nil
			end
		end

		local v5, v6, v7 = tbl2.Event.GetScrambleDroneLiveTarget({ Id = combatTargetId })
		local num = v4 ~= nil and tonumber(v4.Health) or nil

		if num ~= nil and num > 0 or v7 ~= nil and v7 > 0 then
			tbl2.Scramble.CombatTargetMissingSince = nil
			if num ~= nil and num > 0 and v5 ~= nil and v6 ~= nil and (v7 == nil or v7 > 0) then
				return "ready", v4, v6
			end
			return "waiting", nil, nil
		end

		if num ~= nil and num <= 0 and (v7 == nil or v7 <= 0) then
			tbl2.Scramble.CombatTargetId = nil
			tbl2.Scramble.CombatTargetMissingSince = nil
			return "released", nil, nil
		end

		if v4 == nil and v5 == nil and type(drones) == "table" and drones.Full == true then
			local combatTargetMissingSince = tbl2.Scramble.CombatTargetMissingSince

			if combatTargetMissingSince == nil then
				tbl2.Scramble.CombatTargetMissingSince = os.clock()
			else
				local flag = os.clock() - combatTargetMissingSince >= 1.5

				if flag then
					flag = (tbl2.Scramble.SnapshotAt or 0) > combatTargetMissingSince
				end

				if flag then
					tbl2.Scramble.CombatTargetId = nil
					tbl2.Scramble.CombatTargetMissingSince = nil
					return "released", nil, nil
				end
			end
		else
			tbl2.Scramble.CombatTargetMissingSince = nil
		end

		return "waiting", nil, nil
	end

	local function fn48()
		local character = localPlayer.Character
		return fn47(character and character.Parent and character:FindFirstChild("HumanoidRootPart") or nil)
	end

	local function fn49(arg, arg2)
		local lostParts = type(arg) == "table" and arg.LostParts or nil
		if type(lostParts) ~= "table" then
			return false
		end

		if lostParts[arg2] == true or lostParts[arg2] == 1 then
			return true
		end

		for k, lostPart in pairs(lostParts) do
			if lostPart == arg2 or k == arg2 and lostPart ~= false and lostPart ~= nil then
				return true
			end
		end

		return false
	end

	tbl2.Event.GetScrambleQuestState = function(arg)
		local state = type(arg) == "table" and arg.State or nil
		local tbl7 = type(state) == "table" and state or {}
		local n5 = 0

		for _, v3 in ipairs(tbl6) do
			if fn49(tbl7, v3) then
				n5 += 1
			end
		end

		local n6 = math.clamp(math.floor(tonumber(tbl7.DroneParts) or 0), 0, 3)
		local n7 = math.clamp(math.floor(tonumber(tbl7.TotalParts) or n5 + n6), 0, 5)

		if n5 == 0 and n7 > n6 then
			n5 = math.clamp(n7 - n6, 0, 2)
		end

		return {
			Discovered = tbl7.Discovered == true,
			Completed = tbl7.Completed == true,
			LostParts = tbl7.LostParts,
			LostPartCount = n5,
			DroneParts = n6,
			TotalParts = n7,
		}
	end

	local function fn50()
		return Workspace:FindFirstChild("DrScrambleEvent")
	end

	local function fn51()
		local escapedExperiment = fn50()
		escapedExperiment = escapedExperiment and escapedExperiment:FindFirstChild("EscapedExperiment")
		escapedExperiment = escapedExperiment and escapedExperiment:FindFirstChild("RootPart")
		escapedExperiment = escapedExperiment and escapedExperiment:FindFirstChild("InteractionPoint")
		escapedExperiment = escapedExperiment and escapedExperiment:FindFirstChild("ScrambleTalk")
		return escapedExperiment and escapedExperiment:IsA("ProximityPrompt") and escapedExperiment or nil
	end

	local function fn52(arg)
		local hitbox = fn50()
		hitbox = hitbox and hitbox:FindFirstChild(arg)
		hitbox = hitbox and hitbox:FindFirstChild("Hitbox")
		hitbox = hitbox and hitbox:FindFirstChild("ClaimLostPart")
		return hitbox and hitbox:IsA("ProximityPrompt") and hitbox or nil
	end

	local function fn53()
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
		playerGui = playerGui and playerGui:FindFirstChild("StolenVaultEventUI")
		return playerGui ~= nil and playerGui:IsA("ScreenGui") and playerGui.Enabled == true
	end

	local function fn54(arg)
		arg = arg and arg.Parent
		if arg and arg:IsA("BasePart") then
			return arg.Position
		end
		arg = arg and arg:FindFirstAncestorOfClass("Model")
		return arg and arg:GetPivot().Position or nil
	end

	tbl2.Event.FindScrambleLostPart = function(arg, arg2)
		local v3 = tbl2.Event.GetScrambleQuestState(arg)
		local huge = math.huge
		local v4 = nil
		local v5 = nil
		local v6 = nil

		for i, v7 in ipairs(tbl6) do
			local flag = not (fn49(type(arg) == "table" and arg.State or nil, v7) or type(v3.LostParts) ~= "table" and i <= v3.LostPartCount) and fn52(v7) or nil
			local v8 = flag and fn54(flag) or nil

			if flag ~= nil and flag.Enabled and v8 ~= nil then
				local magnitude = arg2 ~= nil and (v8 - arg2).Magnitude or 0

				if magnitude < huge then
					huge = magnitude
					v4 = v7
					v5 = flag
					v6 = v8
				end
			end
		end

		return v4, v5, v6
	end

	local function fn55(arg, arg2)
		if arg == nil or not arg:IsDescendantOf(Workspace) or not arg.Enabled then
			return false, tostring(arg2) .. " prompt unavailable"
		end
		local v3
		v3, v3 = getCharacter()
		if v3 == nil then
			return false, "Character unavailable"
		end
		local v4 = fn54(arg)
		if v4 == nil then
			return false, tostring(arg2) .. " position unavailable"
		end
		local n5 = math.max(3, tonumber(arg.MaxActivationDistance) or 6)

		if (v4 - v3.Position).Magnitude > n5 - 1 then
			local v5, v6 = moveTo(v4, "AutoScrambleVault", nil, tbl.ScrambleMoveSpeed, math.max(2, n5 - 2))
			if not v5 then
				return false, v6
			end
		end

		if not arg.Enabled then
			return false, tostring(arg2) .. " prompt unavailable"
		end
		tbl2.Scramble.Status = "Hold E manually to collect " .. tostring(arg2)
		return false, "Manual Lost Part interaction required"
	end

	local function fn56()
		local v3, v4 = equipBat()
		if not v3 then
			return false, v4
		end
		local character = localPlayer.Character
		local v5

		if character ~= nil then
			v5 = nil

			for _, child in ipairs(character:GetChildren()) do
				if fn34(child) then
					v5 = child
					break
				else
					v5 = nil
				end
			end
		end

		if v5 == nil then
			return false, "Equipped Bat unavailable"
		end
		local n5 = tonumber(v5:GetAttribute("CooldownEndTime")) or 0
		if Workspace:GetServerTimeNow() < n5 then
			return false, "Bat cooling down"
		end
		local trigger = v and v.BatSwing and v.BatSwing.Trigger
		if trigger == nil then
			return false, "Bat swing endpoint unavailable"
		end
		local str2 = string.format("%d:scramble:%d", localPlayer.UserId, math.floor(Workspace:GetServerTimeNow() * 1000))
		trigger:FireServer(nil, str2)
		local metrics = tbl2.Metrics
		metrics.ScrambleDroneSwings = metrics.ScrambleDroneSwings + 1
		return true
	end

	tbl2.Event.ScramblePurchaseStep = function(arg)
		if tbl2.Event.ScrambleV2 then
			tbl2.Event.ScrambleV2.RewardStep()
			return true
		end

		if not tbl.AutoScrambleShop then
			return false, "Scramble shop disabled"
		end
		local v3 = arg or tbl2.Event.FetchScrambleSnapshot(true)
		if type(v3) ~= "table" then
			return false, "Scramble snapshot unavailable"
		end
		local state = type(v3.State) == "table" and v3.State or {}
		local n5 = tonumber(state.Samples) or 0
		local n6 = math.max(1, math.floor(tonumber(tbl.ScramblePurchaseQuantity) or 1))
		local flag = false
		local flag2 = false

		for _, v4 in ipairs(tbl4) do
			if type(tbl.SelectedScrambleOffers) == "table" and tbl.SelectedScrambleOffers[v4] == true then
				local v5 = tbl3[v4]
				local v6 = tbl2.Event.GetScrambleOffer(v3, v5)
				flag = true
				if v6 == nil then
					continue
				end
				local v7 = tbl2.Event.GetScramblePurchaseCount(v3, v5)
				local num = tonumber(v6.PurchaseLimit)
				local n7 = num ~= nil and math.min(n6, num) or n6
				if not (v7 < n7) then
					continue
				end

				if n5 < (tonumber(v6.Price) or math.huge) then
					flag2 = true
					continue
				end
				local Request = fn9("Request")
				if Request == nil or not Request:IsA("RemoteFunction") then
					return false, "Scramble.Request unavailable"
				end
				local tbl7 = { Quote = v6.Quote, Sequence = tonumber(state.ShopSequence) or 0 }
				tbl2.Scramble.Status = "Buying " .. tostring(v4)
				local ok, result = pcall(Request.InvokeServer, Request, "Shop", v5, tbl7)
				if not ok then
					return false, tostring(result)
				end
				task.wait(0.15)
				tbl2.Event.InvalidateScrambleSnapshot()
				local v8 = tbl2.Event.FetchScrambleSnapshot(true)
				local flag3 = type(v8) == "table" and tbl2.Event.GetScramblePurchaseCount(v8, v5) or v7
				local num2 = type(v8) == "table" and type(v8.State) == "table" and tonumber(v8.State.Samples) or n5

				if flag3 > v7 or num2 < n5 or result == true then
					local metrics = tbl2.Metrics
					metrics.ScramblePurchases = metrics.ScramblePurchases + 1
					tbl2.Scramble.LastPurchaseId = v5
					tbl2.Scramble.LastPurchaseAt = os.clock()
					tbl2.Scramble.Status = string.format("Bought %s (%d/%d)", tostring(v4), math.max(flag3, v7 + 1), n7)
					return true
				end

				return false, "Scramble purchase was not confirmed"
			end
		end

		if not flag then
			return false, "No Scramble purchase selected"
		end

		if flag2 then
			return false, "Farming Samples for selected purchase"
		end
		return false, "Selected Scramble purchase targets reached"
	end

	tbl2.Event.ScrambleFarmStep = function(arg, arg2)
		local flag = not tbl.AutoScrambleFarm

		if flag then
			flag = not (arg2 and tbl.AutoScrambleVault)
		end

		if flag then
			return false, "Scramble farm disabled"
		end
		arg = arg or tbl2.Event.FetchScrambleSnapshot(true)
		if type(arg) ~= "table" then
			return false, "Scramble snapshot unavailable"
		end
		local window = type(arg.Window) == "table" and arg.Window or {}
		local flag2 = not arg2

		if flag2 and tbl.AutoScrambleFarm then
			local farmWindowToken = tonumber(window.EndsAt) or tonumber(window.StartsAt)

			if window.Active == true and (tbl2.Scramble.FarmWasActive ~= true or farmWindowToken ~= nil and farmWindowToken ~= tbl2.Scramble.FarmWindowToken) then
				tbl2.Scramble.FarmEntryPending = true
				tbl2.Scramble.LastScoutAt = 0
				tbl2.Scramble.CombatTargetId = nil
				tbl2.Scramble.CombatTargetMissingSince = nil
				tbl2.Scramble.HigherVisualWaitId = nil
				tbl2.Scramble.HigherVisualWaitSince = nil
			end

			tbl2.Scramble.FarmWasActive = window.Active == true

			if farmWindowToken ~= nil then
				tbl2.Scramble.FarmWindowToken = farmWindowToken
			end
		end

		if window.Active ~= true then
			if not arg2 and tbl.AutoScrambleFarm then
				tbl2.Scramble.FarmEntryPending = true
			end

			tbl2.Scramble.CombatTargetId = nil
			tbl2.Scramble.CombatTargetMissingSince = nil
			tbl2.Scramble.HigherVisualWaitId = nil
			tbl2.Scramble.HigherVisualWaitSince = nil
			tbl2.Scramble.Status = "Waiting for the next drone outbreak"
			return false, "Scramble outbreak inactive"
		end

		if flag2 and not tbl2.Scramble.FarmEntryPending then
			if fn48() then
				tbl2.Scramble.FarmEntryPending = true
				tbl2.Scramble.CombatTargetId = nil
				tbl2.Scramble.CombatTargetMissingSince = nil
				tbl2.Scramble.HigherVisualWaitId = nil
				tbl2.Scramble.HigherVisualWaitSince = nil
			end
		end

		local str2 = arg2 and "AutoScrambleVault" or "AutoScrambleFarm"
		local str3 = arg2 and "SCRAMBLE_VAULT_DRONES" or "SCRAMBLE_EVENT"

		if flag2 and tbl2.Scramble.FarmEntryPending then
			return tbl2.RunFarmTransaction(str3, function()
				local v3
				v3, v3 = getCharacter()
				if v3 == nil then
					return false, "Character unavailable"
				end
				local v4, v5 = fn27()
				if not v4 then
					tbl2.Scramble.Status = "Waiting to enter Scramble: " .. tostring(v5)
					return false, v5
				end

				local function fn57()
					if not tbl.AutoScrambleFarm then
						return true, "Cancelled"
					end
					local v6 = fn26()

					if v6 ~= nil then
						tbl2.SafeZoneBarrierClearSince = nil
						tbl2.SafeZoneBarrierReason = v6
						return true, "Safe-zone barrier active"
					end

					return false
				end

				local v6 = fn30()
				if v6 == nil then
					tbl2.Scramble.Status = "Safe-zone center unavailable"
					return false, "Safe-zone center unavailable"
				end
				tbl2.Scramble.Status = "Moving to safe-zone center before Scramble"
				local v7, v8 = moveTo(v6, str2, fn57, nil, 2)

				if not v7 then
					if v8 == "Safe-zone barrier active" then
						tbl2.Scramble.Status = "Waiting to enter Scramble: Safe-zone barrier active"
					end

					return false, v8
				end

				local v9, v10 = fn27()
				if not v9 then
					tbl2.Scramble.Status = "Waiting to enter Scramble: " .. tostring(v10)
					return false, v10
				end
				tbl2.Scramble.Status = "Entering Scramble event area"
				local v11, v12 = moveTo(Vector3.new(2118, 71, -363), str2, fn57, tbl.ScrambleMoveSpeed, 4)

				if v11 then
					tbl2.Scramble.FarmEntryPending = false
					tbl2.Scramble.Status = "Entered Scramble event area"
				elseif v12 == "Safe-zone barrier active" then
					tbl2.Scramble.Status = "Waiting to enter Scramble: Safe-zone barrier active"
				end

				return v11, v12
			end)
		end

		return tbl2.RunFarmTransaction(str3, function()
			local v3, v4 = getCharacter()
			if v4 == nil then
				return false, "Character unavailable"
			end
			local v5 = nil
			local v6 = nil

			if tbl2.Scramble.CombatTargetId ~= nil then
				local v7
				v7, v6, v5 = tbl2.Event.ResolveScrambleCombatTarget(arg)
				if v7 == "waiting" then
					tbl2.Scramble.Status = "Waiting for locked drone HP/visual sync"
					return false, "Locked drone state not confirmed"
				end
			end

			if v6 == nil then
				local now = os.clock()
				local flag3 = now - (tbl2.Scramble.SnapshotAt or 0) > 0.15

				if flag3 then
					flag3 = now - (tbl2.Scramble.LastTargetSelectionRefreshAt or 0) >= 0.4
				end

				if flag3 then
					tbl2.Scramble.LastTargetSelectionRefreshAt = now
					arg = tbl2.Event.FetchScrambleSnapshot(true) or arg
				end

				local v7
				v6, v5, v7 = tbl2.Event.FindScrambleDrone(arg, v4.Position)

				if v7 ~= nil then
					if tbl2.Scramble.HigherVisualWaitId ~= v7 then
						tbl2.Scramble.HigherVisualWaitId = v7
						tbl2.Scramble.HigherVisualWaitSince = os.clock()
					end

					if os.clock() - (tbl2.Scramble.HigherVisualWaitSince or 0) < 0.6 then
						tbl2.Scramble.Status = "Waiting for higher-HP drone sync"
						return false, "Waiting for higher-HP drone sync"
					end
				else
					tbl2.Scramble.HigherVisualWaitId = nil
					tbl2.Scramble.HigherVisualWaitSince = nil
				end

				if v6 ~= nil then
					tbl2.Scramble.CombatTargetId = v6.Id
					tbl2.Scramble.CombatTargetMissingSince = nil
					tbl2.Scramble.HigherVisualWaitId = nil
					tbl2.Scramble.HigherVisualWaitSince = nil
				end
			end

			if v6 == nil or v5 == nil then
				local v7, v8 = tbl2.Event.FindScrambleDrop(arg, v4.Position)

				if v7 ~= nil and v8 ~= nil then
					tbl2.Scramble.LastTargetId = v7.Id
					tbl2.Scramble.LastTargetLabel = "Sample drop"
					tbl2.Scramble.Status = arg2 and "Collecting Drone Parts" or "Collecting Scramble Samples"
					local v9, v10 = moveTo(v8, str2, nil, tbl.ScrambleMoveSpeed, 5)

					if v9 then
						local metrics = tbl2.Metrics
						metrics.ScrambleDropsVisited = metrics.ScrambleDropsVisited + 1
						task.wait(0.2)
						tbl2.Event.InvalidateScrambleSnapshot()
					end

					return v9, v10
				end

				local flag3 = not arg2

				if flag3 then
					flag3 = os.clock() - (tbl2.Scramble.LastScoutAt or 0) >= n4
				end

				if flag3 then
					tbl2.Event.InvalidateScrambleSnapshot()
					local v9 = tbl2.Event.FetchScrambleSnapshot(true)

					if type(v9) == "table" and type(v9.Window) == "table" and v9.Window.Active == true then
						local v10, v11, v12 = tbl2.Event.FindScrambleDrone(v9, v4.Position)
						local v13 = tbl2.Event.FindScrambleDrop(v9, v4.Position)

						if v10 == nil and v12 == nil and v13 == nil then
							local n5 = v4.Position + Vector3.new((v4.Position.X >= vector.X + 60 and -1 or 1) * n3, 0, 0)
							tbl2.Scramble.LastScoutAt = os.clock()
							tbl2.Scramble.Status = "Moving through arena to reveal drones"

							local v14, v15 = moveTo(n5, str2, function()
								if not tbl.AutoScrambleFarm then
									return true, "Cancelled"
								end
								return Workspace:GetServerTimeNow() >= (tonumber(v9.Window.EndsAt) or math.huge), "Scramble outbreak ended"
							end, math.min(tbl.ScrambleMoveSpeed, 120), 2)

							tbl2.Event.InvalidateScrambleSnapshot()
							return v14, v15
						end
					end
				end

				tbl2.Scramble.Status = "Outbreak active - waiting for a drone"
				return false, "No Scramble drone available"
			end

			tbl2.Scramble.LastTargetId = v6.Id
			tbl2.Scramble.LastTargetLabel = tostring(v6.Attributes and v6.Attributes.ScrambleTier or "Drone")
			tbl2.Scramble.Status = arg2 and "Farming Drone Parts - " .. tbl2.Scramble.LastTargetLabel or "Moving to " .. tbl2.Scramble.LastTargetLabel

			if tbl.ScrambleDroneArrivalDistance + 1 < (v5 - v4.Position).Magnitude then
				local v7, v8 = moveTo(v5, str2, nil, tbl.ScrambleMoveSpeed, tbl.ScrambleDroneArrivalDistance)
				if not v7 then
					return false, v8
				end
			end

			local character = localPlayer.Character

			if character ~= nil then
				local exitTo = nil

				for _, child in ipairs(character:GetChildren()) do
					if fn34(child) then
						exitTo = 1
						break
					end
				end

				if exitTo == 1 then
					local n5 = tonumber(t4_9:GetAttribute("CooldownEndTime")) or 0
					if Workspace:GetServerTimeNow() < n5 then
						return false, "Bat cooling down"
					end
				end
			end

			tbl2.Event.InvalidateScrambleSnapshot()
			local v7 = tbl2.Event.FetchScrambleSnapshot(true)
			local v8, v9, v10 = tbl2.Event.ResolveScrambleCombatTarget(v7)
			if v8 ~= "ready" then
				tbl2.Scramble.Status = v8 == "released" and "Drone finished before attack" or "Waiting for locked drone HP/visual sync"
				return false, tbl2.Scramble.Status
			end
			local v11
			v11, v11 = getCharacter()
			if v11 == nil then
				return false, "Character unavailable"
			end
			local magnitude = (v10 - v11.Position).Magnitude

			if tbl.ScrambleDroneArrivalDistance + 1 < magnitude then
				tbl2.Scramble.Status = "Retargeting moving drone"
				local v12, v13 = moveTo(v10, str2, nil, tbl.ScrambleMoveSpeed, tbl.ScrambleDroneArrivalDistance)
				if not v12 then
					return false, v13
				end
				tbl2.Event.InvalidateScrambleSnapshot()
				local v14 = tbl2.Event.FetchScrambleSnapshot(true)
				local v15, v16
				v15, v9, v16 = tbl2.Event.ResolveScrambleCombatTarget(v14)
				if v15 ~= "ready" then
					tbl2.Scramble.Status = v15 == "released" and "Drone finished before attack" or "Waiting for locked drone HP/visual sync"
					return false, tbl2.Scramble.Status
				end
				local v17
				v17, v17 = getCharacter()
				if v17 == nil then
					return false, "Character unavailable"
				end
				magnitude = (v16 - v17.Position).Magnitude
			end

			if magnitude > tbl.ScrambleDroneArrivalDistance + 1 then
				tbl2.Scramble.Status = "Drone moved before attack"
				return false, "Drone moved before attack"
			end
			tbl2.Scramble.LastTargetLabel = tostring(v9.Attributes and v9.Attributes.ScrambleTier or v6.Attributes and v6.Attributes.ScrambleTier or "Drone")
			tbl2.Scramble.Status = "Attacking " .. tbl2.Scramble.LastTargetLabel
			local v12, v13 = fn56()
			tbl2.Event.InvalidateScrambleSnapshot()
			return v12, v13
		end)
	end

	tbl2.Event.ScrambleVaultStep = function(arg)
		if not tbl.AutoScrambleVault then
			return false, "Scramble vault disabled"
		end
		arg = arg or tbl2.Event.FetchScrambleSnapshot(true)
		if type(arg) ~= "table" then
			return false, "Scramble snapshot unavailable"
		end
		local v3 = tbl2.Event.GetScrambleQuestState(arg)

		if not v3.Discovered then
			tbl2.Scramble.Status = "Opening Experiment Vault quest"

			return tbl2.RunFarmTransaction("SCRAMBLE_VAULT", function()
				local escapedExperiment, v4 = fn55(fn51(), "Escaped Experiment")
				if not escapedExperiment then
					return false, v4
				end
				local v5 = tbl2.Event.FetchScrambleSnapshot(true)
				if tbl2.Event.GetScrambleQuestState(v5).Discovered then
					return true
				end
				return false, "Quest discovery not confirmed"
			end)
		end

		if v3.LostPartCount < 2 then
			return tbl2.RunFarmTransaction("SCRAMBLE_VAULT", function()
				local v4
				v4, v4 = getCharacter()
				if v4 == nil then
					return false, "Character unavailable"
				end
				local v5, v6 = tbl2.Event.FindScrambleLostPart(arg, v4.Position)
				if v5 == nil or v6 == nil then
					tbl2.Scramble.Status = "Waiting for an uncollected Lost Part"
					return false, "No Lost Part available"
				end
				tbl2.Scramble.LastTargetId = v5
				tbl2.Scramble.LastTargetLabel = v5
				tbl2.Scramble.Status = "Collecting " .. v5
				local lostPartCount = v3.LostPartCount
				local v7, v8 = fn55(v6, v5)
				if not v7 then
					return false, v8
				end
				local v9 = tbl2.Event.FetchScrambleSnapshot(true)
				local n5 = math.max(0, tbl2.Event.GetScrambleQuestState(v9).LostPartCount - lostPartCount)

				if n5 > 0 then
					local metrics = tbl2.Metrics
					metrics.ScrambleLostPartsCollected = metrics.ScrambleLostPartsCollected + n5
					return true
				end

				if not v6.Enabled then
					return true
				end
				return false, "Lost Part collection not confirmed"
			end)
		end

		if v3.DroneParts < 3 then
			tbl2.Scramble.Status = string.format("Farming Drone Parts (%d/3)", v3.DroneParts)
			return tbl2.Event.ScrambleFarmStep(arg, true)
		end

		if not v3.Completed then
			if v3.TotalParts < 5 then
				tbl2.Scramble.Status = string.format("Waiting for Vault parts (%d/5)", v3.TotalParts)
				return false, "Scramble Vault parts incomplete"
			end

			if arg.VaultRewardReady ~= true then
				tbl2.Scramble.Status = "Waiting for Experiment Vault reward"
				return false, "Experiment Vault reward unavailable"
			end

			if os.clock() - (tbl2.Scramble.VaultClaimedAt or 0) < 2 then
				tbl2.Scramble.Status = "Waiting for Experiment Vault claim sync"
				return false, "Experiment Vault claim syncing"
			end
			local Request = fn9("Request")
			if Request == nil or not Request:IsA("RemoteFunction") then
				return false, "Scramble.Request unavailable"
			end
			tbl2.Scramble.Status = "Claiming Experiment Vault"
			local ok, result = pcall(Request.InvokeServer, Request, "Claim")
			if not ok then
				return false, tostring(result)
			end
			task.wait(0.25)
			tbl2.Event.InvalidateScrambleSnapshot()
			local v4 = tbl2.Event.FetchScrambleSnapshot(true)

			if tbl2.Event.GetScrambleQuestState(v4).Completed or type(result) == "table" and result.Ok == true then
				local metrics = tbl2.Metrics
				metrics.ScrambleVaultClaims = metrics.ScrambleVaultClaims + 1
				tbl2.Scramble.VaultClaimedAt = os.clock()
				tbl2.Scramble.VaultInterfaceShown = false
				tbl2.Scramble.Status = "Experiment Vault completed"
				return true
			end

			return false, "Experiment Vault claim not confirmed"
		end

		if not tbl2.Scramble.VaultInterfaceShown then
			tbl2.Scramble.Status = "Opening completed Experiment Vault"

			local scrambleVault, v4 = tbl2.RunFarmTransaction("SCRAMBLE_VAULT", function()
				return fn55(fn51(), "Escaped Experiment")
			end)

			if scrambleVault and fn53() then
				tbl2.Scramble.VaultInterfaceShown = true
				tbl2.Scramble.Status = "Experiment Vault completed and opened"
				return true
			end

			return false, v4 or "Experiment Vault interface not confirmed"
		end

		tbl2.Scramble.Status = "Experiment Vault completed and opened"
		return false, "Scramble vault completed"
	end

	tbl2.Event.ScrambleCoordinatorEnabled = function()
		local flag = tbl.AutoScrambleFarm == true
		local flag2

		if flag then
			flag2 = flag
		else
			flag2 = tbl.AutoScrambleShop == true and tbl2.Event.ScrambleV2 == nil
		end

		return flag2 or tbl.AutoScrambleVault == true
	end

	tbl2.Event.FindScramblePriorityEgg = function()
		local targetRevision = tbl2.TargetRevision or 0
		local priorityEggCache = tbl2.Scramble.PriorityEggCache

		if type(priorityEggCache) == "table" and priorityEggCache.Revision == targetRevision then
			if priorityEggCache.Uid == nil then
				if os.clock() < (priorityEggCache.RetryAt or 0) then
					return nil
				end
			else
				local v3 = getAreaEggRecord(priorityEggCache.Uid)
				if type(v3) == "table" and v3.Uid == priorityEggCache.Uid and (v3.State == "Slot" or v3.State == "Dropped") and typeof(v3.BottomCFrame) == "CFrame" and fn20(v3) > 0 and fn21(v3) and not fn24(v3.Uid) then
					return v3
				end
			end
		end

		local v3 = getSnapshot()
		if type(v3) ~= "table" or type(v3.Records) ~= "table" then
			return nil
		end
		local character = localPlayer.Character
		character = character and character:FindFirstChild("HumanoidRootPart")
		local n5 = 0
		local huge = math.huge
		local v4 = nil

		for _, record in ipairs(v3.Records) do
			if type(record) == "table" and type(record.Uid) == "string" and (record.State == "Slot" or record.State == "Dropped") and typeof(record.BottomCFrame) == "CFrame" then
				local v5 = fn20(record)

				if v5 > 0 and fn21(record) and not fn24(record.Uid) then
					local magnitude = character ~= nil and (record.BottomCFrame.Position - character.Position).Magnitude or math.huge

					if v5 > n5 or v5 == n5 and magnitude < huge then
						n5 = v5
						huge = magnitude
						v4 = record
					end
				end
			end
		end

		tbl2.Scramble.PriorityEggCache = { Revision = targetRevision, Uid = v4 and v4.Uid, RetryAt = os.clock() + 2 }
		return v4
	end

	tbl2.Event.ScrambleCoordinatorStep = function()
		if tbl2.Event.ScrambleV2 and tbl2.Event.ScrambleV2.BlocksFarm() then
			return false, "Movement busy"
		end
		local farmCycleActionBusy = tbl2.FarmTransaction ~= nil or tbl2.StealInProgress == true or tbl2.IsDeliveryCarry() or tbl2.FarmCycleActionBusy

		if not farmCycleActionBusy then
			farmCycleActionBusy = (tbl2.ControlledWorkerActions or 0) > 0
		end

		if farmCycleActionBusy then
			return false, "Movement busy"
		end
		local v3, v4 = tbl2.Event.FetchScrambleSnapshot(false)
		if v3 == nil then
			return false, v4
		end
		local farmCycleActionBusy2 = tbl2.FarmTransaction ~= nil or tbl2.FarmCycleActionBusy

		if not farmCycleActionBusy2 then
			farmCycleActionBusy2 = (tbl2.ControlledWorkerActions or 0) > 0
		end

		if farmCycleActionBusy2 then
			return false, "Movement busy"
		end

		if tbl.AutoScrambleFarm and type(v3.Window) == "table" and v3.Window.Active == true then
			local v5 = tbl2.Event.FindScramblePriorityEgg()

			if v5 ~= nil then
				local str2 = select(1, getRecordRarityId(v5)) or "Rare"
				tbl2.Scramble.LastTargetId = v5.Uid
				tbl2.Scramble.LastTargetLabel = tostring(str2) .. " Egg"
				tbl2.Scramble.Status = "Prioritizing Auto Steal: " .. tostring(str2)
				tbl2.Scramble.FarmEntryPending = true
				return stealStep(true, "AutoScrambleFarm", v5.Uid)
			end
		end

		local flag = tbl.AutoScrambleFarm and type(v3.Window) == "table" and v3.Window.Active == true
		local flag2 = false

		if flag then
			if tbl2.Scramble.FarmEntryPending or fn48() then
				if not tbl2.Scramble.FarmEntryPending then
					tbl2.Scramble.CombatTargetId = nil
					tbl2.Scramble.CombatTargetMissingSince = nil
					tbl2.Scramble.HigherVisualWaitId = nil
					tbl2.Scramble.HigherVisualWaitSince = nil
				end

				tbl2.Scramble.FarmEntryPending = true
				return tbl2.Event.ScrambleFarmStep(v3)
			end

			local upserts = type(v3.Drones) == "table" and v3.Drones.Upserts or nil
			local flag3 = tbl2.Scramble.CombatTargetId ~= nil

			if not flag3 then
				local v5 = pairs
				upserts = type(upserts) == "table" and upserts or {}

				for _, upsert in v5(upserts) do
					local flag4 = type(upsert) == "table"

					if flag4 then
						flag4 = (tonumber(upsert.Health) or 0) > 0
					end

					if flag4 then
						flag3 = true
						break
					end
				end
			end

			if not flag3 then
				local scrambleLocalVisuals = Workspace:FindFirstChild("ScrambleLocalVisuals")

				if scrambleLocalVisuals ~= nil then
					local v5 = ipairs
					local v6 = table.pack(scrambleLocalVisuals:QueryDescendants("Model[$ScrambleDroneId]"))
					v6.n = 1 + v6.n - 1
					table.move(v6, 1, v6.n, 1, v6)

					for _, v7 in v5(table.unpack(v6, 1, v6.n)) do
						local hitbox = v7:FindFirstChild("Hitbox")
						local flag4 = hitbox ~= nil
						local flag5

						if flag4 then
							flag5 = (tonumber(hitbox:GetAttribute("Health")) or 0) > 0
						else
							flag5 = flag4
						end

						if flag5 then
							flag3 = true
							break
						end
					end
				end
			end

			if flag3 then
				local v5, v6 = tbl2.Event.ScrambleFarmStep(v3)
				local flag4 = v5 or v6 ~= "No Scramble drone available"
				flag2 = true
				if flag4 then
					return v5, v6
				end
			end
		end

		local v5 = nil

		if tbl.AutoScrambleVault then
			local v6
			v6, v5 = tbl2.Event.ScrambleVaultStep(v3)
			if v6 then
				return true
			end
		end

		if tbl.AutoScrambleShop and tbl2.Event.ScrambleV2 == nil then
			local v6, v7 = tbl2.Event.ScramblePurchaseStep(v3)
			if v6 then
				return true
			end

			if v7 ~= "Farming Samples for selected purchase" and v7 ~= "Selected Scramble purchase targets reached" and v7 ~= "No Scramble purchase selected" then
				tbl2.Scramble.LastError = tostring(v7)
			end
		end

		if tbl.AutoScrambleFarm then
			if flag2 then
				return false, "No Scramble drone available"
			end
			return tbl2.Event.ScrambleFarmStep(v3)
		end

		if tbl.AutoScrambleVault then
			return false, v5
		end
		tbl2.Scramble.Status = "Scramble shop waiting"
		return false, "Scramble farm disabled"
	end

	tbl2.Event.HasCriticalPriority = function()
		if tbl2.Event.ScrambleV2 and tbl2.Event.ScrambleV2.BlocksFarm() then
			return true
		end
		local snapshot = tbl2.Scramble.Snapshot
		local window = type(snapshot) == "table" and snapshot.Window or nil
		local num = type(window) == "table" and tonumber(window.EndsAt) or nil
		local flag = tbl.AutoScrambleFarm and type(window) == "table" and window.Active == true and (num == nil or num <= 0 or Workspace:GetServerTimeNow() < num)
		local farmTransaction = tbl2.FarmTransaction
		local name = type(farmTransaction) == "table" and farmTransaction.Name or nil
		return flag or name == "SCRAMBLE_EVENT" or name == "SCRAMBLE_VAULT_DRONES" or name == "SCRAMBLE_VAULT"
	end

	batAuraStep = function()
		if tbl.AutoEquipBat then
			equipBat()
		end

		local v3, v4 = getCharacter()
		if v4 == nil then
			return false, "Character unavailable"
		end
		local auraRange = tbl.AuraRange
		local v5 = nil

		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= localPlayer then
				local character = player.Character
				local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
				character = character and character:FindFirstChildOfClass("Humanoid")

				if humanoidRootPart ~= nil and character ~= nil and character.Health > 0 then
					local magnitude = (humanoidRootPart.Position - v4.Position).Magnitude

					if magnitude <= auraRange then
						auraRange = magnitude
						v5 = player
					end
				end
			end
		end

		if v5 == nil then
			return true
		end
		local str2 = string.format("%d:hub:%d", localPlayer.UserId, math.floor(Workspace:GetServerTimeNow() * 1000))
		Network.Fire(Constants.NETWORK_MAP.Bat.ACTIVATE, v5, str2)
		local metrics = tbl2.Metrics
		metrics.BatHits = metrics.BatHits + 1
		return true
	end

	local module2 = nil

	pcall(function()
		local shared = ReplicatedStorage:FindFirstChild("Shared")
		shared = shared and shared:FindFirstChild("Modules")
		shared = shared and shared:FindFirstChild("BatController")
		local config = shared and shared:FindFirstChild("Config")

		if config then
			module2 = require(config)
		end
	end)

	local function fn57()
		local character = localPlayer.Character
		local v3 = nil

		if character then
			v3 = nil

			for _, child in ipairs(character:GetChildren()) do
				if fn34(child) then
					v3 = child
					break
				else
					v3 = nil
				end
			end
		end

		if v3 == nil then
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")

			if backpack then
				for _, child in ipairs(backpack:GetChildren()) do
					if fn34(child) then
						v3 = child
						break
					end
				end
			end
		end

		if v3 == nil then
			return nil, nil
		end
		local v4 = Gears.Directory[v3:GetAttribute("GearName") or v3.Name:gsub(" %[%w+%]$", "")]
		local n5 = tonumber(v4 and v4.BatControllerData and v4.BatControllerData.RangeBonus) or 0
		local hitRange = (tonumber(module2 and module2.Range) or 15) + n5 + (tonumber(module2 and module2.HitTolerance) or 2)
		tbl2.PlayerSteal.HitRange = hitRange
		return hitRange, v3
	end

	local function fn58(arg, arg2)
		local tbl7 = arg or {}

		if arg ~= nil then
			table.clear(tbl7)
		end

		local v3 = getSnapshot()

		if v3 then
			for _, record in pairs(v3.Records) do
				if type(record) == "table" and record.State == "Carried" and type(record.Uid) == "string" and tonumber(record.CarrierUserId) then
					tbl7[tonumber(record.CarrierUserId)] = record
				end
			end
		end

		arg2 = arg2 or Players:GetPlayers()

		for _, v4 in ipairs(arg2) do
			if v4 ~= localPlayer and tbl7[v4.UserId] == nil and v4.Character then
				for _, child in ipairs(v4.Character:GetChildren()) do
					if child:IsA("Tool") and child:GetAttribute("ItemType") == "AssetEgg" then
						local attribute = child:GetAttribute("UID")
						local flag = type(attribute) == "string" and getAreaEggRecord(attribute) or nil
						if type(flag) == "table" and flag.State == "Carried" then
							tbl7[v4.UserId] = flag
							break
						end
					end
				end
			end
		end

		return tbl7
	end

	local function fn59(arg, arg2)
		if arg == nil or arg == localPlayer or arg.Parent ~= Players then
			return nil, "Player left"
		end
		local character = arg.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		character = character and character:FindFirstChildOfClass("Humanoid")
		if humanoidRootPart == nil or character == nil or character.Health <= 0 then
			return nil, "Player character unavailable"
		end
		local flag = arg2 ~= true
		local flag2

		if flag then
			flag2 = fn29(humanoidRootPart.Position) == nil or arg:GetAttribute("InScrambleArena") == true
		else
			flag2 = flag
		end

		if flag2 then
			return nil, "Player is in Safe Zone"
		end
		return humanoidRootPart
	end

	local function fn60(arg)
		local playerStealRarities = tbl.PlayerStealRarities
		if type(playerStealRarities) ~= "table" or playerStealRarities.All == true or selectedEmpty(playerStealRarities) then
			return true
		end
		local value = select(1, getRecordRarityId(arg))
		return value ~= nil and playerStealRarities[value] == true
	end

	tbl2.PlayerSteal.ChooseTarget = function()
		if tbl2.IsCarrying or tbl2.PlayerSteal.Busy then
			return nil
		end
		local v3, v4 = getCharacter()
		if v4 == nil then
			return nil
		end
		local v5 = fn58()
		local n5 = -math.huge
		local huge = math.huge
		local v6 = nil
		local v7 = nil

		for _, player in ipairs(Players:GetPlayers()) do
			local v8 = v5[player.UserId]
			local flag = v8 and fn60(v8)

			if flag then
				flag = os.clock() >= (tbl2.PlayerSteal.RetryAt[player.UserId] or 0)
			end

			if flag then
				local v9 = fn59(player)

				if v9 then
					local v10, v11 = getRecordRarityId(v8)
					local magnitude = (v9.Position - v4.Position).Magnitude

					if v11 > n5 or v11 == n5 and magnitude < huge then
						n5 = v11
						huge = magnitude
						v6 = player
						v7 = v8
					end
				end
			end
		end

		return v6, v7
	end

	tbl2.PlayerSteal.FollowFront = function(arg, arg2, arg3, arg4)
		if tbl2.Moving then
			return false, "Movement busy"
		end
		local v3, v4, v5 = getCharacter()
		local v6, v7 = fn59(arg, true)
		if v3 == nil or v4 == nil or v5 == nil then
			return false, "Character unavailable"
		end

		if v6 == nil then
			return false, v7
		end
		local playerSteal = tbl2.PlayerSteal
		local n5 = math.max(1450, tonumber(tbl.TweenSpeed) or 650)
		local now = os.clock()
		local n6 = now + 90
		local n7 = now + 8
		local v8 = now
		local strikes = 0
		local position = v6.Position
		local frontLockAcquired = false
		tbl2.Moving = true
		tbl2.MoveGeneration = tbl2.MoveGeneration + 1
		local moveGeneration = tbl2.MoveGeneration

		tbl2.MoveTrace = {
			Mode = "PlayerPredictiveFrontLock",
			StartedAt = now,
			TargetUserId = arg.UserId,
			TargetUid = arg2,
			Speed = n5,
			Steps = 0,
			NetworkSegments = 1,
			FrontOffset = 9,
			Predictive = true,
		}

		local v9 = setStealTweenPresentation(true)

		local function fn61(arg5, arg6)
			if tbl2.MoveGeneration == moveGeneration then
				tbl2.Moving = false
			end

			if tbl.NoClipMovement then
				pcall(setMovementNoClip, v3, false)
			end

			if v4.Parent == v3 then
				v4.AssemblyLinearVelocity = Vector3.zero
				v4.AssemblyAngularVelocity = Vector3.zero
			end

			if v9 then
				pcall(setStealTweenPresentation, false)
			end

			tbl2.MoveTrace.Outcome = arg6 or arg5 and "Arrived" or "Stopped"
			tbl2.MoveTrace.Elapsed = os.clock() - now
			tbl2.MoveTrace.Strikes = strikes
			tbl2.MoveTrace.FrontLockAcquired = frontLockAcquired
			return arg5, arg6, arg4
		end

		if not v9 then
			local v10, v11, v12 = fn61(false, "Character presentation unavailable")
			return v10, v11, v12
		end
		v4.AssemblyLinearVelocity = Vector3.zero
		v4.AssemblyAngularVelocity = Vector3.zero
		local n8 = 0
		local vector2 = Vector3.zero
		local v10 = nil
		local n9 = 0
		local n10 = 0
		local v11 = nil
		local n11 = -math.huge
		local v12 = n5

		while tbl2.Alive and moveGeneration == tbl2.MoveGeneration do
			local now2 = os.clock()
			if arg3 and tbl[arg3] ~= true then
				local cancelled, v13, v14 = fn61(false, "Cancelled")
				return cancelled, v13, v14
			end

			if localPlayer.Character ~= v3 or v4.Parent ~= v3 then
				local characterChanged, v13, v14 = fn61(false, "Character changed")
				return characterChanged, v13, v14
			end

			if v5.Health <= 0 then
				local characterDied, v13, v14 = fn61(false, "Character died")
				return characterDied, v13, v14
			end

			if n6 <= now2 then
				local playerChaseTimedOut, v13, v14 = fn61(false, "Player chase timed out")
				return playerChaseTimedOut, v13, v14
			end

			if now2 - n8 >= 0.05 then
				local v13 = getAreaEggRecord(arg2)
				if type(v13) ~= "table" then
					local eggRecordDisappeared, v14, v15 = fn61(false, "Egg record disappeared")
					return eggRecordDisappeared, v14, v15
				end

				if v13.State == "Dropped" then
					local dropped, v14, v15 = fn61(true, "Dropped")
					return dropped, v14, v15
				end
				local flag = v13.State ~= "Carried"

				if not flag then
					local userId = arg.UserId
					flag = tonumber(v13.CarrierUserId) ~= userId
				end

				if flag then
					local v14, v15, v16 = fn61(false, "Player no longer carries this egg")
					return v14, v15, v16
				end
				local v14
				v6, v14 = fn59(arg, true)
				if v6 == nil then
					local v15, v16, v17 = fn61(false, v14)
					return v15, v16, v17
				end

				if arg4 ~= nil then
					if tbl2.PrimerStrikeCharacter ~= v3 then
						local v15, v16, v17 = fn61(false, "Character changed during auxiliary egg release")
						return v15, v16, v17
					end

					if tbl2.IsCarrying and tbl2.CarryUid ~= arg4 then
						local v15, v16, v17 = fn61(false, "Unexpected carry during auxiliary egg release")
						return v15, v16, v17
					end
					local v15 = getAreaEggRecord(arg4)
					local flag2 = not tbl2.IsCarrying

					if flag2 then
						flag2 = type(v15) ~= "table" or v15.State ~= "Carried"

						if not flag2 then
							local userId = localPlayer.UserId
							flag2 = tonumber(v15.CarrierUserId) ~= userId
						end
					end

					if flag2 then
						if tbl2.PrimerStrikeTrace then
							tbl2.PrimerStrikeTrace.ReleasedAt = now2
						end

						arg4 = nil
					elseif now2 >= n7 then
						local auxiliaryEggReleaseTimedOut, v16, v17 = fn61(false, "Auxiliary egg release timed out")
						return auxiliaryEggReleaseTimedOut, v16, v17
					end
				end

				n8 = now2
			end

			if v6 == nil or v6.Parent == nil then
				local playerCharacterUnavailable, v13, v14 = fn61(false, "Player character unavailable")
				return playerCharacterUnavailable, v13, v14
			end
			local n12 = math.clamp(now2 - v8, 0.0041666666666666666, 0.05)
			local assemblyLinearVelocity = v6.AssemblyLinearVelocity
			local n13 = (v6.Position - position) / n12
			position = v6.Position

			if assemblyLinearVelocity.Magnitude * 0.45 < n13.Magnitude then
				assemblyLinearVelocity = assemblyLinearVelocity * 0.55 + n13 * 0.45
			end

			vector2 += (assemblyLinearVelocity - vector2) * (1 - math.exp(-14 * n12))
			local vector3 = Vector3.new(vector2.X, 0, vector2.Z)
			local magnitude = vector3.Magnitude
			local vector4 = Vector3.new(v6.CFrame.LookVector.X, 0, v6.CFrame.LookVector.Z)

			if vector4.Magnitude <= 0.05 then
				vector4 = Vector3.new(0, 0, -1)
			end

			local unit = magnitude >= 5 and vector3.Unit or vector4.Unit
			local predictionTime = math.clamp(0.1 + magnitude / 6000 * 0.12 + Vector3.new(v6.Position.X - v4.Position.X, 0, v6.Position.Z - v4.Position.Z).Magnitude / 1200 * 0.1, 0.1, 0.34)
			local frontOffset = 9

			if v10 ~= nil then
				frontOffset = math.clamp(v10 * 0.45, 7, 11)
			end

			local n14 = v6.Position + vector3 * predictionTime + unit * frontOffset
			local vector5 = Vector3.new(n14.X, v6.Position.Y, n14.Z)
			local n15 = vector5 - v4.Position
			local magnitude2 = n15.Magnitude
			local n16 = math.clamp(math.max(n5, magnitude * 1.35 + 450, n5 + magnitude2 * 10), n5, 8000)
			v12 += (n16 - v12) * (1 - math.exp(-(n16 > v12 and 10 or 5) * n12))
			local n17

			if magnitude2 <= 16 then
				frontLockAcquired = true
				n17 = vector5
			elseif magnitude2 > 0.01 then
				local min = math.min
				local n18 = math.max(90, magnitude * n12 * 1.65 + 70)
				n17 = v4.Position + n15.Unit * min(magnitude2, v12 * n12, n18)
			else
				n17 = v4.Position
			end

			local vector6 = Vector3.new(v6.Position.X, n17.Y, v6.Position.Z)
			local cframe

			if (vector6 - n17).Magnitude > 0.1 then
				cframe = CFrame.lookAt(n17, vector6)
			else
				local rotation = v4.CFrame.Rotation
				cframe = CFrame.new(n17) * rotation
			end

			local v13 = cframe

			if tbl.NoClipMovement then
				setMovementNoClip(v3, true)
			end

			if tbl.GodMode then
				protectHumanoid(v5)
			end

			local ok, result = pcall(function()
				v4.CFrame = v13
			end)

			if not ok then
				local v14, v15, v16 = fn61(false, tostring(result))
				return v14, v15, v16
			end

			if now2 - n9 >= 0.05 then
				primeMovementIntegrity(v4, v4.Position)
				n9 = now2
			end

			tbl2.MoveTrace.Target = vector5
			tbl2.MoveTrace.Position = v4.Position
			tbl2.MoveTrace.Remaining = (vector5 - v4.Position).Magnitude
			tbl2.MoveTrace.TargetSpeed = magnitude
			tbl2.MoveTrace.ChaseSpeed = v12
			tbl2.MoveTrace.PredictionTime = predictionTime
			tbl2.MoveTrace.FrontOffset = frontOffset
			tbl2.MoveTrace.FrontLocked = magnitude2 <= 16
			local moveTrace = tbl2.MoveTrace
			moveTrace.Steps = moveTrace.Steps + 1

			if arg4 ~= nil then
				playerSteal.Status = "Front-locking " .. arg.DisplayName .. " while auxiliary egg releases"
			else
				playerSteal.Status = string.format("Front-locking %s | %.0f/%.0f studs/s", arg.DisplayName, v12, magnitude)

				if now2 - n10 >= 0.2 then
					local v14, v15 = equipBat()
					if not v14 then
						local v16, v17, v18 = fn61(false, v15)
						return v16, v17, v18
					end
					local v16
					v10, v16 = fn57()
					n10 = now2
					v11 = v16
				end

				local magnitude3 = (v6.Position - v4.Position).Magnitude
				local magnitude4 = (vector5 - v4.Position).Magnitude
				local flag = v11 ~= nil and v11.Parent == v3 and v10 ~= nil and magnitude3 <= math.max(3, v10 - 1) and magnitude4 <= math.max(10, frontOffset + 3) and v11:GetAttribute("CooldownActive") ~= true
				local flag2

				if flag then
					flag2 = now2 - n11 >= math.max(0.35, tonumber(tbl.AttackDelay) or 0.6)
				else
					flag2 = flag
				end

				if flag2 then
					local str2 = string.format("%d:hub:%d", localPlayer.UserId, math.floor(Workspace:GetServerTimeNow() * 1000))
					local ok2, result2 = pcall(Network.Fire, Constants.NETWORK_MAP.Bat.ACTIVATE, arg, str2)
					if not ok2 then
						local v14, v15, v16 = fn61(false, tostring(result2))
						return v14, v15, v16
					end
					strikes += 1
					local metrics = tbl2.Metrics
					metrics.BatHits = metrics.BatHits + 1
					playerSteal.Status = string.format("Bat strike %d on %s | front lock", strikes, arg.DisplayName)
					n11 = now2
				end
			end

			RunService.PreRender:Wait()
			v8 = now2
		end

		local v13, v14, v15 = fn61(false, tbl2.Alive and "Cancelled" or "Destroyed")
		return v13, v14, v15
	end

	tbl2.PlayerSteal.Run = function(arg, arg2, arg3)
		local manualBusy = arg3 == true
		if tbl2.FarmTransaction or tbl2.PlayerSteal.Busy then
			return false, "Movement busy"
		end

		if tbl2.IsCarrying then
			return false, "Already carrying an egg"
		end

		if not manualBusy and tbl.AutoStealFromPlayers ~= true then
			return false, "Disabled"
		end
		local str2 = manualBusy and nil or "AutoStealFromPlayers"
		local mode = manualBusy and "Manual" or "Auto"

		if not arg2 then
			arg2 = fn58()[arg and arg.UserId]
		end

		if type(arg2) ~= "table" or type(arg2.Uid) ~= "string" then
			return false, "Player is not carrying a visible egg"
		end
		local uid = arg2.Uid

		return tbl2.RunFarmTransaction("PLAYER_STEAL", function()
			local playerSteal = tbl2.PlayerSteal
			playerSteal.Busy = true
			playerSteal.ManualBusy = manualBusy
			playerSteal.AutoBusy = not manualBusy
			playerSteal.Mode = mode
			playerSteal.TargetUserId = arg.UserId
			playerSteal.Status = string.format("%s steal started for %s", mode, arg.DisplayName)

			local ok, result, result2 = xpcall(function()
				local v3 = nil

				local function fn61()
					if v3 == nil then
						return true
					end
					playerSteal.Status = "Waiting for auxiliary egg release"
					local v4, v5 = tbl2.WaitForPrimerRelease(v3, str2)
					if not v4 then
						return false, v5
					end
					v3 = nil
					return true
				end

				local v4 = getAreaEggRecord(uid)
				if type(v4) ~= "table" then
					return false, "Egg record disappeared"
				end
				local flag = v4.State == "Carried"

				if flag then
					local userId = arg.UserId
					flag = tonumber(v4.CarrierUserId) == userId
				end

				if flag then
					local v5, v6 = fn59(arg)
					if v5 == nil then
						return false, v6
					end
					local v7, v8 = fn27()
					if not v7 then
						return false, v8
					end
					local v9 = fn30()
					if v9 == nil then
						return false, "Safe-zone center unavailable"
					end
					playerSteal.Status = "Moving to safe-zone center before auxiliary egg"
					local v10, v11 = moveTo(v9, str2, nil, nil, 2)
					if not v10 then
						return false, v11
					end
					playerSteal.Status = "Taking auxiliary egg"

					local v12, v13, v14 = tbl2.BeginForestPrimerStrike(uid, str2, function()
						local v12 = getAreaEggRecord(uid)
						if type(v12) ~= "table" then
							return true, "Target egg disappeared"
						end

						if v12.State == "Dropped" then
							return false
						end
						local flag2 = v12.State ~= "Carried"
						local flag3

						if flag2 then
							flag3 = flag2
						else
							local userId = arg.UserId
							flag3 = tonumber(v12.CarrierUserId) ~= userId
						end

						if flag3 then
							return true, "Player no longer carries this egg"
						end
						return false
					end)

					if not v12 then
						return false, v13
					end
					v3 = v14
				elseif v4.State ~= "Dropped" then
					return false, "Player no longer carries this egg"
				end

				local v5 = getAreaEggRecord(uid)

				if type(v5) == "table" and v5.State == "Carried" then
					local v6, v7
					v6, v7, v3 = tbl2.PlayerSteal.FollowFront(arg, uid, str2, v3)
					if not v6 then
						return false, v7
					end
				end

				local v6 = getAreaEggRecord(uid)
				if type(v6) ~= "table" or v6.State ~= "Dropped" then
					return false, "Target egg did not remain dropped"
				end
				local v7, v8 = fn61()
				if not v7 then
					return false, v8
				end
				playerSteal.Status = "Recovering dropped egg from " .. arg.DisplayName
				return fn35(true, str2, false, uid)
			end, debug.traceback)

			playerSteal.Busy = false
			playerSteal.ManualBusy = false
			playerSteal.AutoBusy = false
			playerSteal.Mode = nil
			playerSteal.TargetUserId = nil

			if not ok then
				if tbl2.Moving then
					stopMovement()
				end

				if tbl2.StealPresentationState.Depth > 0 then
					pcall(setStealTweenPresentation, false)
				end

				playerSteal.Status = tostring(result)
				error(result, 0)
			end

			local str3 = result and "Egg delivered"
			local status

			if str3 then
				status = str3
			else
				status = tostring(result2 or "Strike failed")
			end

			playerSteal.Status = status

			if not result and arg and arg.Parent == Players then
				playerSteal.RetryAt[arg.UserId] = os.clock() + 3
			end

			return result, result2
		end)
	end

	tbl2.PlayerSteal.RunManual = function(arg, arg2)
		return tbl2.PlayerSteal.Run(arg, arg2, true)
	end

	autoStealFromPlayersStep = function()
		local v3, v4 = tbl2.PlayerSteal.ChooseTarget()
		if v3 == nil then
			tbl2.PlayerSteal.Status = "Waiting for a player carrying a matching egg in an arena"
			return true
		end
		return tbl2.PlayerSteal.Run(v3, v4, false)
	end

	treadmillTrainingStep = function(arg, arg2)
		if tbl2.Event.ScrambleV2 and tbl2.Event.ScrambleV2.BlocksFarm() then
			return false, "Movement busy"
		end
		local now = os.clock()
		local flag = not arg

		if flag and tbl2.TreadmillEquipKnown then
			local character = localPlayer.Character
			if tbl2.IsNearOwnTreadmill(character and character:FindFirstChild("HumanoidRootPart")) then
				return true
			end
			tbl2.TreadmillEquipKnown = false
		end

		if flag and now < tbl2.TreadmillTrainingRetryAt then
			return true
		end

		if tbl2.Moving or tbl2.StealInProgress or tbl2.Checker.ManualBusy then
			return false, "Movement busy"
		end
		local v3, v4, v5 = getCharacter()
		if v3 == nil or v4 == nil or v5 == nil then
			return false, "Character unavailable"
		end
		local v6 = tbl2.GetOwnTreadmillBottom()
		if v6 == nil then
			return false, "Own treadmill unavailable"
		end
		local v7 = v6.CFrame:PointToObjectSpace(v4.Position)
		local n5 = math.max(0.5, v6.Size.X * 0.5 - 0.75)
		local n6 = math.max(0.5, v6.Size.Z * 0.5 - 0.75)

		if not (math.abs(v7.X) <= n5 and math.abs(v7.Z) <= n6 and v7.Y >= 0 and v7.Y <= 8) then
			local n7 = v6.Position + v6.CFrame.UpVector * (v6.Size.Y * 0.5 + math.max(2.5, v4.Size.Y * 0.5 + v5.HipHeight))
			setStatus("Moving to treadmill")
			local v8, v9 = moveTo(n7, arg and nil or arg2 or "AutoTreadmillTraining", arg2 == "AutoFarmCycle" and fn38 or nil, tbl.TweenSpeed, 1)
			if not v8 then
				return false, v9 or "Could not reach treadmill"
			end
			local v10, v11, v12 = getCharacter()
			if v10 == nil or v11 == nil or v12 == nil then
				return false, "Character unavailable"
			end
			local v13 = v6.CFrame:PointToObjectSpace(v11.Position)
			local n8 = v6.Size.X * 0.5 + 1.5
			local flag2 = math.abs(v13.X) > n8

			if not flag2 then
				local n9 = v6.Size.Z * 0.5 + 1.5
				flag2 = math.abs(v13.Z) > n9
			end

			if flag2 or v13.Y < -1 or v13.Y > 10 then
				return false, "Could not reach treadmill"
			end
			tbl2.TreadmillGuardUntil = 0
			tbl2.RestoreTreadmillGuard()
			RunService.Heartbeat:Wait()
		end

		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Treadmills.REQUEST_EQUIP_STATIC)
		if not ok then
			return false, result
		end

		if result == true then
			tbl2.TreadmillEquipKnown = true
			tbl2.TreadmillTrainingRetryAt = os.clock() + 30
			return true
		end

		if string.find(string.lower(tostring(result2 or "")), "already", 1, true) then
			tbl2.TreadmillEquipKnown = true
			tbl2.TreadmillTrainingRetryAt = os.clock() + 30
			return true
		end

		return false, result2 or "Treadmill equip denied"
	end

	leaveTreadmill = function()
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Treadmills.REQUEST_UNEQUIP)
		if not ok then
			return false, result
		end

		if result == true then
			tbl2.TreadmillEquipKnown = false
			tbl2.TreadmillTrainingRetryAt = os.clock() + 6
		end

		return result == true, result == true and nil or result2 or "Treadmill unequip denied"
	end

	treadmillUpgradeStep = function()
		local v3 = get()
		if type(v3) ~= "table" then
			return false, "Save unavailable"
		end
		local v4 = Treadmills.GetByUpgradeLevel((tonumber(v3.TreadmillUpgradeLevel) or 0) + 1)
		if type(v4) ~= "table" then
			return true
		end

		if (tonumber(v3.Money) or 0) < (tonumber(v4.Price) or math.huge) then
			return true
		end
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Treadmills.REQUEST_UPGRADE, v4._id)
		if not ok then
			return false, result
		end

		if result == true then
			local metrics = tbl2.Metrics
			metrics.Upgrades = metrics.Upgrades + 1
			return true
		end

		return false, result2 or "Treadmill upgrade denied"
	end

	baseUpgradeStep = function()
		Network.Fire(Constants.NETWORK_MAP.Plots.REQUEST_BASE_UPGRADE)
		local metrics = tbl2.Metrics
		metrics.Upgrades = metrics.Upgrades + 1
		return true
	end

	claimFreeGifts = function()
		local v3 = get()
		if type(v3) ~= "table" then
			return false, "Save unavailable"
		end
		local freeGiftsClaimed = v3.FreeGiftsClaimed or {}
		local v4 = pairs
		local directory = FreeGifts.Directory or {}
		local n5 = 0

		for k in v4(directory) do
			if freeGiftsClaimed[tostring(k)] ~= true and freeGiftsClaimed[k] ~= true then
				local ok, result = pcall(Network.Invoke, Constants.NETWORK_MAP.FreeGifts.REQUEST_CLAIM, tostring(k))

				if ok and result == true then
					n5 += 1
				end
			end
		end

		local metrics = tbl2.Metrics
		metrics.Rewards = metrics.Rewards + n5
		return true
	end

	claimGroupReward = function()
		local v3 = get()
		if type(v3) ~= "table" or v3.ClaimedGroupReward == true then
			return true
		end
		local ok, result = pcall(localPlayer.IsInGroupAsync, localPlayer, Constants.GROUP_ID)
		if not ok or not result then
			return true
		end
		local ok2, result2, result3 = pcall(Network.Invoke, Constants.NETWORK_MAP.GroupReward.CLAIM_REWARD, true)
		if not ok2 then
			return false, result2
		end

		if result2 == true then
			local metrics = tbl2.Metrics
			metrics.Rewards = metrics.Rewards + 1
			return true
		end

		return false, result3 or "Group reward denied"
	end

	claimLimitedIndexReward = function()
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Index.REQUEST_CLAIM_LIMITED_EGG_REWARD)
		if not ok then
			return false, result
		end

		if result == true then
			local metrics = tbl2.Metrics
			metrics.Rewards = metrics.Rewards + 1
			return true
		end

		return false, result2 or "Limited index reward denied"
	end

	equipBestTrail = function()
		local v3 = get()
		if type(v3) ~= "table" then
			return false, "Save unavailable"
		end
		local v4, v5, v6 = pairs(v3.TrailInventory or {})
		local n5 = -math.huge
		local v7 = nil

		for k, v8 in v4, v5, v6 do
			v8 = v8 and Trails.Directory[k]
			local v9 = tonumber
			v8 = v8 and v8.SpeedMultiplier
			local v10 = v9(v8)

			if v10 ~= nil and v10 > n5 then
				n5 = v10
				v7 = k
			end
		end

		if v7 == nil or v3.EquippedTrail == v7 then
			return true
		end
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Trails.REQUEST_SELECT, v7)
		if not ok then
			return false, result
		end

		if result == true then
			local metrics = tbl2.Metrics
			metrics.Trails = metrics.Trails + 1
			return true
		end

		return false, result2 or "Trail equip denied"
	end

	local function fn61(arg)
		local category = type(arg) == "table" and (arg.Category or arg.AssetCategory)
		local flag = type(category) == "string" and Assets.Directory[category]
		flag = flag and flag.Rarity
		local id

		if flag then
			id = flag._id or flag.DisplayName
		else
			id = flag
		end

		return id
	end

	local function fn62(arg)
		if not fn17(tbl.SellCategories, arg.Category or arg.AssetCategory) then
			return false
		end

		if not fn17(tbl.SellRarities, fn61(arg)) then
			return false
		end

		if not selectedEmpty(tbl.SellMutations) then
			local flag = false

			for k, sellMutation in pairs(tbl.SellMutations) do
				sellMutation = sellMutation and fn18(arg, k)
				if sellMutation then
					flag = true
					break
				end
			end

			if not flag then
				return false
			end
		end

		return true
	end

	local tbl7 = {
		[""] = 1,
		K = 1000,
		M = 1000000,
		B = 1e9,
		T = 1e12,
		QA = 1e15,
		QI = 1e18,
		SX = 1e21,
		SP = 1e24,
		OC = 1e27,
		NO = 1e30,
		DC = 1e33,
	}

	tbl2.ParseCompactAmount = function(arg)
		if type(arg) == "number" then
			arg = arg >= 0 and arg
			return arg or nil
		end

		if type(arg) ~= "string" then
			return nil
		end
		local str2 = string.upper(arg):gsub("%s+", ""):gsub(",", ""):gsub("%$", ""):gsub("/S", "")
		local num = tonumber(str2)
		if num ~= nil then
			return num >= 0 and num or nil
		end
		local v3, v4 = string.match(str2, "^([%d]*%.?[%d]+)([A-Z]+)$")
		v4 = v4 and tbl7[v4] or nil
		local num2 = tonumber(v3)
		if num2 == nil or v4 == nil then
			return nil
		end
		return num2 * v4
	end

	local tbl8 = { "DC", "NO", "OC", "SP", "SX", "QI", "QA", "T", "B", "M", "K" }

	tbl2.FormatCompactAmount = function(arg)
		local v3 = tbl2.ParseCompactAmount(arg)
		if v3 == nil or v3 ~= v3 or v3 == math.huge then
			return tostring(arg)
		end

		for _, v4 in ipairs(tbl8) do
			local v5 = tbl7[v4]

			if v3 >= v5 then
				local str2 = string.format("%.15g", v3 / v5) .. v4
				if tbl2.ParseCompactAmount(str2) == v3 then
					return str2
				end
			end
		end

		return tostring(v3)
	end

	tbl2.SellAmountAllows = function(arg, arg2, arg3)
		local v3 = tbl2.ParseCompactAmount(arg2 == "Pet" and tbl.SellPetAmount or tbl.SellEggAmount)
		if v3 == nil or v3 ~= v3 or v3 <= 0 or v3 == math.huge then
			return false
		end
		local v4 = fn19(arg, arg3)
		return type(v4) == "number" and v4 == v4 and v4 >= 0 and v4 <= v3
	end

	tbl2.IsSellEligible = function(arg, arg2, arg3)
		local v3 = get()
		if type(v3) ~= "table" then
			return false
		end
		local result

		if arg2 == "Pet" then
			local flag = type(v3.Inventory) == "table" and v3.Inventory[arg]
			if type(flag) ~= "table" then
				return false
			end
			local ok
			ok, result = pcall(AssetItemSerialization.Deserialize, flag)
			if not ok or type(result) ~= "table" then
				return false
			end

			if result.InFuse == true then
				return false
			end
			local v4 = ipairs
			local equippedAssets = v3.EquippedAssets or {}

			for _, equippedAsset in v4(equippedAssets) do
				if equippedAsset == arg then
					return false
				end
			end
		else
			result = type(v3.EggInventory) == "table" and v3.EggInventory[arg]
			if type(result) ~= "table" or result.Placement ~= nil then
				return false
			end
		end

		return result.IsFavorite ~= true and tbl2.SellAmountAllows(result, arg2, v3) and (not arg3 or fn62(result))
	end

	getSellableUids = function(arg, arg2, arg3, arg4)
		local v3 = get()
		local tbl9 = { Pets = {}, Eggs = {} }
		if type(v3) ~= "table" then
			return tbl9
		end
		local tbl10 = {}
		local v4 = ipairs
		local equippedAssets = v3.EquippedAssets or {}

		for _, equippedAsset in v4(equippedAssets) do
			tbl10[equippedAsset] = true
		end

		local num = tonumber(arg2)
		local num2 = tonumber(arg3)
		local v5 = pairs
		local inventory = v3.Inventory or {}
		local n5 = 0

		for k, v6 in v5(inventory) do
			if arg4 and arg4() then
				return nil, "Sell watchdog timeout"
			end

			if type(k) == "string" and type(v6) == "table" then
				local ok, result = pcall(AssetItemSerialization.Deserialize, v6)

				if ok and type(result) == "table" and result.IsFavorite ~= true and result.InFuse ~= true and not tbl10[k] and tbl2.SellAmountAllows(result, "Pet", v3) and (not arg or fn62(result)) then
					table.insert(tbl9.Pets, k)
					if num and #tbl9.Pets >= num then
						break
					end
				end
			end

			n5 += 1

			if n5 % 24 == 0 then
				task.wait()
			end
		end

		local v6 = pairs
		local eggInventory = v3.EggInventory or {}

		for k, v7 in v6(eggInventory) do
			if arg4 and arg4() then
				return nil, "Sell watchdog timeout"
			end

			if type(k) == "string" and type(v7) == "table" and v7.IsFavorite ~= true and v7.Placement == nil and tbl2.SellAmountAllows(v7, "Egg", v3) and (not arg or fn62(v7)) then
				table.insert(tbl9.Eggs, k)
				if num2 and #tbl9.Eggs >= num2 then
					break
				end
			end

			n5 += 1

			if n5 % 24 == 0 then
				task.wait()
			end
		end

		table.sort(tbl9.Pets)
		table.sort(tbl9.Eggs)
		return tbl9
	end

	local function fn63(arg, arg2, arg3, arg4, arg5)
		local function fn64()
			return arg5 and arg5() == true
		end

		local function fn65(arg6)
			local stands = Workspace:FindFirstChild("Stands")
			local prompts = stands and stands:FindFirstChild("Prompts")
			prompts = prompts and prompts:FindFirstChild(arg6)
			if prompts == nil then
				return nil
			end

			if prompts:IsA("BasePart") then
				return prompts
			end
			return prompts:FindFirstChildWhichIsA("BasePart", true)
		end

		local function fn66(arg6, arg7)
			if fn64() then
				return false, "Sell watchdog timeout"
			end
			local v3 = fn65(arg6)
			if v3 == nil then
				return false, string.format("%s seller prompt unavailable", arg7)
			end
			local v4, v5 = getCharacter()

			for i = 1, 2 do
				if fn64() then
					return false, "Sell watchdog timeout"
				end

				if v5 == nil or (v5.Position - v3.Position).Magnitude > 7 then
					setStatus("Moving to " .. arg7 .. " seller")
					local v6, v7 = moveTo(v3.Position, nil, arg5, tbl.TweenSpeed, 4)
					if not v6 and i == 2 then
						return false, v7
					end
				end

				local n5 = os.clock() + 1.25
				local now = nil

				while true do
					if fn64() then
						return false, "Sell watchdog timeout"
					else
						local v6
						v6, v5 = getCharacter()
						if v5 == nil then
							break
						end

						if (v5.Position - v3.Position).Magnitude <= 8 then
							now = now or os.clock()
							primeMovementIntegrity(v5, v5.Position)
							v5.AssemblyLinearVelocity = Vector3.zero
							v5.AssemblyAngularVelocity = Vector3.zero
							if os.clock() - now >= 0.35 then
								return true
							end
							task.wait(0.05)
							if n5 <= os.clock() then
								break
							end
							continue
						end

						break
					end
				end
			end

			return false, arg7 .. " seller position was corrected"
		end

		local function fn67(arg6, arg7)
			local v3 = get()
			if type(v3) ~= "table" then
				return true
			end

			if arg6 == "Pet" then
				return type(v3.Inventory) == "table" and v3.Inventory[arg7] ~= nil
			end
			return type(v3.EggInventory) == "table" and v3.EggInventory[arg7] ~= nil
		end

		local function fn68(arg6, arg7, arg8)
			local n5 = os.clock() + arg8
			local tbl9 = {}

			while true do
				if fn64() then
					return 0, arg7
				else
					table.clear(tbl9)

					for _, v3 in ipairs(arg7) do
						if fn67(arg6, v3) then
							table.insert(tbl9, v3)
						end
					end

					if #tbl9 == 0 then
						break
					end
					task.wait(0.1)
					if not (n5 <= os.clock()) then
						continue
					end
					break
				end
			end

			return #arg7 - #tbl9, tbl9
		end

		local function fn69(arg6, arg7, arg8)
			if fn64() then
				return false, "Sell watchdog timeout"
			end

			for _, v3 in ipairs(arg7) do
				if not tbl2.IsSellEligible(v3, arg8, arg) then
					return false, "Item no longer below sell threshold or protected"
				end
			end

			local ok, result = pcall(Network.Fire, arg6, arg7)
			if not ok then
				return false, result
			end
			return true
		end

		local function fn70(arg6, arg7)
			local n5 = os.clock() + arg7

			while true do
				if fn64() then
					return false
				else
					local character = localPlayer.Character

					if character ~= nil then
						for _, child in ipairs(character:GetChildren()) do
							if child:IsA("Tool") and child:GetAttribute("UID") == arg6 then
								return true
							end
						end
					end

					task.wait(0.05)
					if not (n5 <= os.clock()) then
						continue
					end
					break
				end
			end

			return false
		end

		local function fn71(arg6)
			for _, v3 in ipairs({ localPlayer.Character, localPlayer:FindFirstChildOfClass("Backpack") }) do
				if v3 == nil then
					continue
				end

				for _, child in ipairs(v3:GetChildren()) do
					if child:IsA("Tool") and child:GetAttribute("ItemType") == "Asset" and child:GetAttribute("UID") == arg6 then
						return child
					end
				end
			end

			return nil
		end

		local v3, v4 = getSellableUids(arg, arg2, arg3, arg5)
		if v3 == nil then
			return false, v4
		end

		if fn64() then
			return false, "Sell watchdog timeout"
		end
		local num = tonumber(arg2)

		if num then
			for i = #v3.Pets, math.max(0, math.floor(num)) + 1, -1 do
				v3.Pets[i] = nil
			end
		end

		local num2 = tonumber(arg3)

		if num2 then
			for i = #v3.Eggs, math.max(0, math.floor(num2)) + 1, -1 do
				v3.Eggs[i] = nil
			end
		end

		local n5 = #v3.Pets
		local n6 = #v3.Eggs
		if n5 + n6 == 0 then
			return false, "No sellable item"
		end

		if tbl.AutoFarmCycle and tbl2.FarmCycleActionBusy then
			tbl2.FarmCycleStatus = string.format("Running: Auto Sell (%d pet, %d egg)", n5, n6)
		end

		setStatus(string.format("Selling %d pet(s) and %d egg(s)", n5, n6))
		local pets = v3.Pets
		local tbl9 = {}
		local n7 = 0

		if n5 > 0 then
			local SellHeldAsset, v5 = fn66("SellHeldAsset", "pet")
			if not SellHeldAsset then
				return false, v5
			end
			local tbl10 = {}
			pets = {}

			for _, pet in ipairs(v3.Pets) do
				if fn64() then
					return false, "Sell watchdog timeout"
				end
				local v6 = get()
				local flag = type(v6) == "table" and type(v6.Inventory) == "table" and v6.Inventory[pet] or nil
				local flag2 = false
				local result = nil

				if type(flag) == "table" then
					flag2, result = pcall(AssetItemSerialization.Deserialize, flag)
				end

				local v7 = ipairs
				local equippedAssets = type(v6) == "table" and v6.EquippedAssets or {}
				local flag3 = false

				for _, equippedAsset in v7(equippedAssets) do
					if equippedAsset == pet then
						flag3 = true
						break
					end
				end

				if flag2 and type(result) == "table" and result.IsFavorite ~= true and result.InFuse ~= true and not flag3 and tbl2.SellAmountAllows(result, "Pet", v6) and (not arg or fn62(result)) then
					table.insert(tbl10, pet)
				else
					table.insert(pets, pet)
					log("SELL", string.format("Pet %s skipped after threshold recheck", pet))
				end
			end

			local exitTo = nil
			local v6

			for i, v7 in ipairs(tbl10) do
				if fn64() then
					exitTo = 1
					break
				else
					setStatus(string.format("Selling pet [%d/%d]", i, #tbl10))
					local v8, v9, v10 = getCharacter()
					local v11 = fn71(v7)
					local flag = v8 ~= nil and v10 ~= nil and v11 ~= nil
					local flag2 = false

					if flag then
						v10:UnequipTools()
						task.wait(0.05)
						v10:EquipTool(v11)
						flag2 = fn70(v7, 1.5)
					end

					if not flag2 then
						exitTo = 2
						break
					else
						local pet
						pet, v6 = fn69(Constants.NETWORK_MAP.AssetInventory.SELL_ASSET, { v7 }, "Pet")
						local n8 = 0

						if pet then
							n8 = fn68("Pet", { v7 }, 2)
						end

						if n8 == 1 then
							n7 += 1

							if arg4 then
								arg4()
							end

							task.wait(0.08)
						else
							exitTo = 3
							break
						end
					end
				end
			end

			if exitTo == 1 then
				return false, "Sell watchdog timeout"
			end

			if exitTo == 2 then
				log("SELL", string.format("Pet %s tool equip was not confirmed", s12))

				for i = s11, #tbl10 do
					table.insert(pets, tbl10[i])
				end
			elseif exitTo == 3 then
				log("SELL", string.format("Pet %s request was not confirmed: %s", s12, tostring(v6)))

				for i = s11, #tbl10 do
					table.insert(pets, tbl10[i])
				end
			end

			local v7, v8, v9 = getCharacter()

			if v9 ~= nil then
				v9:UnequipTools()
			end
		end

		local n8 = 0

		if n6 > 0 then
			if fn64() then
				return false, "Sell watchdog timeout"
			end
			local SellHeldAsset, v5 = fn66("SellHeldAsset", "egg")
			if not SellHeldAsset then
				return false, v5
			end

			for _, egg in ipairs(v3.Eggs) do
				if fn64() then
					return false, "Sell watchdog timeout"
				end
				local ok, result, result2 = pcall(EggCmds.RequestEquipTool, egg)

				if ok and result == true and fn70(egg, 2) then
					local egg2, v6 = fn69(Constants.NETWORK_MAP.AssetInventory.SELL_ASSET, { egg }, "Egg")

					if egg2 then
						if fn68("Egg", { egg }, 2) == 1 then
							n8 += 1

							if arg4 then
								arg4()
							end
						else
							table.insert(tbl9, egg)
						end
					else
						table.insert(tbl9, egg)
						log("SELL", string.format("Egg %s request failed: %s", egg, tostring(v6)))
					end
				else
					table.insert(tbl9, egg)
					log("SELL", string.format("Egg %s equip failed: %s", egg, tostring(result2 or result)))
				end

				task.wait(0.08)
			end

			pcall(EggCmds.RequestUnequipTool)
		end

		local n9 = n7 + n8

		tbl2.SellTrace = {
			RequestedPets = n5,
			RequestedEggs = n6,
			ConfirmedPets = n7,
			ConfirmedEggs = n8,
			RemainingPets = #pets,
			RemainingEggs = #tbl9,
			At = os.clock(),
		}

		if n9 == 0 then
			return false, "Sell request was not confirmed"
		end
		local metrics = tbl2.Metrics
		metrics.Sold = metrics.Sold + n9
		setStatus(string.format("Sold %d/%d item(s)", n9, n5 + n6))
		return true, n9 < n5 + n6 and "Partially confirmed" or nil
	end

	autoSellSelectedStep = function()
		if selectedEmpty(tbl.SellCategories) and selectedEmpty(tbl.SellRarities) and selectedEmpty(tbl.SellMutations) then
			return false, "No sell filter selected"
		end
		return fn63(true)
	end

	autoSellAllStep = function(arg, arg2, arg3, arg4)
		return fn63(false, arg, arg2, arg3, arg4)
	end

	syncAutoSellRarities = function()
		local tbl9 = {}

		for k, v3 in pairs(tbl.AutoSellRaritiesSelection) do
			if v3 then
				tbl9[k] = true
			end
		end

		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Backpack.SET_AUTO_SELL_STATE, tbl9)
		if not ok then
			return false, result
		end

		if result == true then
			local ok2, result3 = pcall(Network.Invoke, Constants.NETWORK_MAP.Backpack.GET_AUTO_SELL_STATE)
			if not ok2 or type(result3) ~= "table" then
				result3 = result3 or "Auto-sell state unavailable"
				return false, result3
			end

			for k, v3 in pairs(tbl9) do
				v3 = v3 and result3[k] ~= true
				if v3 then
					return false, "Auto-sell rarity was not persisted: " .. tostring(k)
				end
			end

			for k, v3 in pairs(result3) do
				v3 = v3 and tbl9[k] ~= true
				if v3 then
					return false, "Unexpected auto-sell rarity persisted: " .. tostring(k)
				end
			end

			return true
		end

		return false, result2 or "Auto-sell rarity sync denied"
	end

	buyWantedTrailStep = function()
		local v3 = get()
		if type(v3) ~= "table" then
			return false, "Save unavailable"
		end
		local tbl9 = {}

		for k, wantedTrail in pairs(tbl.WantedTrails) do
			wantedTrail = wantedTrail and Trails.Directory[k]
			local flag

			if wantedTrail then
				flag = not (v3.TrailInventory or {})[k]
			else
				flag = wantedTrail
			end

			if flag then
				table.insert(tbl9, { Id = k, Price = tonumber(wantedTrail.Price) or math.huge })
			end
		end

		table.sort(tbl9, function(arg, arg2)
			return arg.Price < arg2.Price
		end)

		if #tbl9 == 0 then
			return false, "No wanted trail to buy"
		end
		local v4 = tbl9[1]
		if (tonumber(v3.Money) or 0) < v4.Price then
			return false, "Not enough money for wanted trail"
		end
		local ok, result, result2 = pcall(Network.Invoke, Constants.NETWORK_MAP.Trails.REQUEST_PURCHASE, v4.Id)
		if not ok then
			return false, result
		end

		if result == true then
			local metrics = tbl2.Metrics
			metrics.Trails = metrics.Trails + 1
			return true
		end

		return false, result2 or "Trail purchase denied"
	end

	local function fn64(arg)
		if not arg:IsA("Tool") then
			return nil, nil
		end
		local attribute = arg:GetAttribute("GearId") or arg:GetAttribute("Id") or arg:GetAttribute("_id")

		if type(attribute) ~= "string" then
			attribute = string.gsub(arg.Name, "%s*%[X%d+%]$", "")
		end

		local v3 = nil

		pcall(function()
			v3 = Gears.Directory[attribute]
		end)

		return v3, attribute
	end

	equipBestGear = function()
		local v3, v4, v5 = getCharacter()
		local backpack = localPlayer:FindFirstChildOfClass("Backpack")
		if v3 == nil or v5 == nil or backpack == nil then
			return false, "Gear container unavailable"
		end
		local tbl9 = { v3, backpack }
		local n5 = -math.huge
		local v6 = nil

		for _, v7 in ipairs(tbl9) do
			for _, child in ipairs(v7:GetChildren()) do
				local v8 = fn64(child)

				if v8 ~= nil then
					local rarity = v8.Rarity
					local flag = type(rarity) == "string" and RarityDirectory.Rarities[rarity] or rarity
					local n6 = tonumber(type(flag) == "table" and flag.RarityNumber) or 0

					if n5 < n6 then
						n5 = n6
						v6 = child
					end
				end
			end
		end

		if v6 == nil then
			return false, "No gear tool found"
		end

		if v6.Parent ~= v3 then
			v5:EquipTool(v6)
		end

		local metrics = tbl2.Metrics
		metrics.Gears = metrics.Gears + 1
		return true
	end

	local tbl9 = {
		STEAL = true,
		PLACE = true,
		HATCH = true,
		TREADMILL = true,
		SELL_SELECTED = true,
		SELL_ALL = true,
	}

	local function fn65()
		local now = os.clock()
		local n5 = 0
		local flag = false
		local flag2 = false
		local flag3 = nil
		local v3 = nil

		local thread = task.spawn(function()
			local ok, result, result2 = xpcall(autoSellAllStep, debug.traceback, 1, 1, function()
				n5 += 1
				now = os.clock()
			end, function()
				return flag2
			end)

			if not flag2 then
				flag3 = ok and result or false
				v3 = ok and result2 or result
				flag = true
			end
		end)

		while not flag and tbl2.Alive and tbl.AutoFarmCycle and os.clock() - now < 7 do
			task.wait(0.05)
		end

		if flag then
			return flag3, v3
		end
		flag2 = true
		pcall(task.cancel, thread)
		pcall(stopMovement)

		if tbl2.NoClipEnabled then
			pcall(setMovementNoClip, tbl2.NoClipCharacter, false)
		end

		local v4, v5, v6 = getCharacter()

		if v6 ~= nil then
			pcall(v6.UnequipTools, v6)
		end

		if not tbl2.Alive or not tbl.AutoFarmCycle then
			return false, "Cancelled"
		end
		return false, string.format("Sell watchdog timeout (%d confirmed)", n5)
	end

	local function fn66()
		if os.clock() < (tbl2.FarmCycleNextSellScanAt or 0) then
			return nil
		end
		tbl2.FarmCycleStatus = "Checking sell inventory"
		local v3, v4 = fn65()
		local v5 = tbl2
		local farmCycleLastSellResult = v3 and "Sold item(s)"

		if not farmCycleLastSellResult then
			farmCycleLastSellResult = tostring(v4 or "Sale not confirmed")
		end

		v5.FarmCycleLastSellResult = farmCycleLastSellResult
		if not v3 then
			tbl2.FarmCycleNextSellScanAt = os.clock() + 10
			return nil
		end
		tbl2.FarmCycleNextSellScanAt = os.clock() + (tonumber(tbl.SellDelay) or 2)
		return v3, v4
	end

	runFarmCycleStep = function()
		if tbl2.Event.ScrambleV2 and tbl2.Event.ScrambleV2.BlocksFarm() then
			return false, "Auto Farm Cycle", "Movement busy"
		end

		if tbl2.Checker.ManualBusy or tbl2.PlayerSteal.Busy or tbl2.Moving or tbl2.StealInProgress then
			return false, "Auto Farm Cycle", "Movement busy"
		end
		local droppedTargetUid = tbl2.DroppedTargetUid or tbl2.LastDroppedTargetUid
		local flag = type(droppedTargetUid) == "string" and tbl2.CanRecoverDropped(droppedTargetUid)
		local flag2 = not tbl2.IsCarrying and not flag and fn37() or nil
		local now = os.clock()
		local autoPlace = flag2 == nil and not tbl2.IsCarrying and not flag and (tbl.AutoPlace or tbl.AutoHatch)

		if autoPlace then
			autoPlace = now >= (tbl2.FarmCycleNextPlaceScanAt or 0)
		end

		if autoPlace then
			local v3 = nil
			local v4 = nil

			if tbl.AutoPlace then
				v3, v4 = fn36()
			end

			local value = tbl.AutoHatch and select(1, fn42()) or nil
			local flag3 = type(v4) == "number"

			if flag3 then
				flag3 = v4 >= (tbl2.PlaceEggLimit or 30)
			end

			if flag3 and value == nil then
				local v5 = tbl2
				local autoHatch = tbl.AutoHatch

				if autoHatch then
					autoHatch = string.format("Plot full (%d/%d); waiting for a ready egg", v4, tbl2.PlaceEggLimit or 30)
				end

				if not autoHatch then
					autoHatch = string.format("Plot full (%d/%d); enable Auto Hatch or free a slot", v4, tbl2.PlaceEggLimit or 30)
				end

				v5.FarmServiceStatus = autoHatch
			end

			local v5

			if value == nil then
				v5 = flag2
			else
				tbl2.FarmCycleStatus = flag3 and "Running: Auto Hatch Egg (freeing space)" or "Running: Auto Hatch Egg (draining ready eggs)"
				local v6, v7 = hatchStep(false, "AutoHatch")
				tbl2.FarmCycleNextPlaceScanAt = v6 and 0 or os.clock() + 2
				if v6 then
					return true, "Auto Hatch Egg"
				end
				tbl2.FarmServiceStatus = tostring(v7)

				if v7 ~= "Priority egg spawned" then
					v5 = flag2
				else
					v5 = fn37()
				end
			end

			if v5 == nil and value == nil and tbl.AutoPlace and not flag3 and type(v3) == "table" and #v3 > 0 then
				tbl2.FarmCycleStatus = "Running: Auto Place Egg"
				local v6, v7 = placeStep(false, "AutoPlace")
				tbl2.FarmCycleNextPlaceScanAt = v6 and 0 or os.clock() + 2
				tbl2.FarmCyclePlacePendingUntil = 0
				if v6 then
					return true, "Auto Place Egg"
				end
				tbl2.FarmServiceStatus = tostring(v7)
				if v7 == "Ready eggs pending hatch" then
					tbl2.FarmCycleNextPlaceScanAt = 0
					return false, "Auto Hatch Egg", v7
				end

				if v7 == "Priority egg spawned" then
					flag2 = fn37()
				else
					flag2 = v5
				end
			else
				flag2 = v5
			end

			local flag4 = flag2 == nil and tbl.AutoPlace and value == nil and type(v3) == "table" and #v3 == 0

			if flag4 then
				flag4 = now < (tbl2.FarmCyclePlacePendingUntil or 0)
			end

			if flag4 then
				tbl2.FarmCycleNextPlaceScanAt = now + 0.1
				return false, "Auto Place Egg", "Waiting for inventory sync"
			end

			if (tbl2.FarmCycleNextPlaceScanAt or 0) <= now then
				tbl2.FarmCycleNextPlaceScanAt = now + 0.5
			end
		end

		tbl2.FarmCycleStatus = flag2 ~= nil and "Prioritizing high-rarity egg" or "Running: Auto Steal Egg"
		local placed = tbl2.Metrics.Placed
		local v3, v4 = stealStep(true, "AutoFarmCycle", flag2 and flag2.Uid or nil)

		if v3 then
			if (tbl2.FarmCycleNextPlaceScanAt or 0) <= os.clock() + 0.5 then
				tbl2.FarmCycleNextPlaceScanAt = 0
			end

			if tbl.AutoPlace and tbl2.Metrics.Placed == placed then
				tbl2.FarmCyclePlacePendingUntil = os.clock() + 1.5
			end

			return true, "Auto Steal Egg"
		end

		if not tbl.AutoFarmCycle then
			return false, "Auto Steal Egg", "Disabled"
		end

		if v4 ~= "No eligible egg" then
			return false, "Auto Steal Egg", v4
		end
		local v5, v6 = fn66()
		if v5 ~= nil then
			return v5, "Auto Sell", v6
		end
		tbl2.FarmCycleStatus = "Running: Auto Treadmill"
		local v7, v8 = treadmillTrainingStep(false, "AutoFarmCycle")
		return v7, "Auto Treadmill", v8
	end

	startFarmCycleWorker = function()
		if tbl2.Workers.FARM_CYCLE then
			return
		end
		tbl2.Workers.FARM_CYCLE = true

		task.spawn(function()
			while tbl2.Alive and tbl.AutoFarmCycle do
				if tbl2.FarmTransaction then
					task.wait(0.1)
				elseif (tbl2.ControlledWorkerActions or 0) > 0 then
					task.wait(0.1)
				elseif tbl2.Event.HasCriticalPriority() then
					tbl2.FarmCycleStatus = "Paused: live event has priority"
					task.wait(0.25)
				else
					tbl2.FarmCycleActionThread = coroutine.running()
					tbl2.FarmCycleActionBusy = true
					local ok, result, running, result2 = xpcall(runFarmCycleStep, debug.traceback)
					tbl2.FarmCycleActionBusy = false
					tbl2.FarmCycleActionThread = nil

					if not ok then
						setError("FARM_CYCLE", result)
						task.wait(0.5)
					else
						tbl2.FarmCycleStatus = result and "Running: " .. running or string.format("%s: %s", running, tostring(result2))

						if result and running == "Auto Steal Egg" then
							task.wait(0.05)
						elseif result and (running == "Auto Place Egg" or running == "Auto Hatch Egg") then
							tbl2.WaitStealWorkerDelay("AutoFarmCycle", 0.3)
						elseif running == "Auto Place Egg" and result2 == "Waiting for inventory sync" then
							task.wait(0.1)
						elseif result and running == "Auto Sell" then
							tbl2.WaitStealWorkerDelay("AutoFarmCycle", tbl.SellDelay)
						else
							tbl2.WaitStealWorkerDelay("AutoFarmCycle", tbl.FarmDelay)
						end
					end
				end
			end

			tbl2.Workers.FARM_CYCLE = nil
			tbl2.FarmCycleActionBusy = false
			tbl2.FarmCycleActionThread = nil
			tbl2.FarmCycleStatus = "Disabled"

			if tbl2.Alive and tbl.AutoFarmCycle then
				startFarmCycleWorker()
			end
		end)
	end

	runAction = function(arg, arg2)
		task.spawn(function()
			local ok, result, result2 = xpcall(arg2, debug.traceback)

			if not ok then
				setError(arg, result)
			elseif not result and result2 ~= "Retarget" and result2 ~= "No eligible egg" and result2 ~= "No unplaced egg" and result2 ~= "No ready egg" and result2 ~= "Cancelled" then
				setError(arg, result2)
			else
				setStatus("Ready")
			end
		end)
	end

	startWorker = function(arg, arg2, arg3, arg4)
		if tbl2.Workers[arg] then
			return
		end
		tbl2.Workers[arg] = true
		local v3 = arg4
		local hasCriticalPriority = tbl2.Event.HasCriticalPriority
		local waitStealWorkerDelay = tbl2.WaitStealWorkerDelay
		local wait_ = task.wait
		local traceback = debug.traceback
		local flag = tbl9[arg] == true
		local flag2 = arg == "STEAL"

		task.spawn(function()
			log(arg, "Worker started")

			while tbl2.Alive and tbl[arg2] do
				if tbl2.FarmTransaction then
					wait_(0.1)
				elseif hasCriticalPriority() then
					wait_(0.25)
				elseif tbl.AutoFarmCycle and flag then
					wait_(0.25)
				else
					if flag then
						tbl2.ControlledWorkerActions = (tbl2.ControlledWorkerActions or 0) + 1
					end

					local ok, result, result2 = xpcall(v3, traceback)

					if flag then
						tbl2.ControlledWorkerActions = math.max(0, (tbl2.ControlledWorkerActions or 1) - 1)
					end

					if not ok then
						setError(arg, result)
					elseif not result and result2 ~= "Dropped egg confirmed" and result2 ~= "Pinned egg returned to nest" and result2 ~= "Primer released" and result2 ~= "Retarget" and result2 ~= "No eligible egg" and result2 ~= "Waiting for dropped egg sync" and result2 ~= "No unplaced egg" and result2 ~= "No ready egg" and result2 ~= "Egg placement capacity reached" and result2 ~= "Priority egg spawned" and result2 ~= "No sellable item" and result2 ~= "No sell filter selected" and result2 ~= "No wanted trail to buy" and result2 ~= "Not enough money for wanted trail" and result2 ~= "Disabled" and result2 ~= "Cancelled" and result2 ~= "Movement busy" then
						setError(arg, result2)
					end

					if result2 == "Dropped egg confirmed" or result2 == "Pinned egg returned to nest" or result2 == "Primer released" then
						wait_()
					elseif result2 == "Retarget" then
						wait_(0.05)
					elseif flag2 then
						waitStealWorkerDelay(arg2, tbl[arg3])
					else
						wait_(tbl[arg3])
					end
				end
			end

			tbl2.Workers[arg] = nil
			log(arg, "Worker stopped")
		end)
	end

	stopMovement = function()
		if tbl2.ActiveMoveTween then
			pcall(function()
				tbl2.ActiveMoveTween:Cancel()
			end)

			tbl2.ActiveMoveTween = nil
		end

		tbl2.MoveGeneration = tbl2.MoveGeneration + 1
		tbl2.Moving = false
		local character = localPlayer.Character
		character = character and character:FindFirstChild("HumanoidRootPart")

		if character ~= nil and character:IsA("BasePart") then
			character.AssemblyLinearVelocity = Vector3.zero
		end
	end

	clearMarkers = function()
		for k, marker in pairs(tbl2.Markers) do
			tbl2.Markers[k] = nil
			pcall(marker.Destroy, marker)
		end
	end

	getMarkerFolder = function()
		if MarkerFolder ~= nil and MarkerFolder.Parent ~= nil then
			return MarkerFolder
		end
		local eggStealHubVisuals = Workspace:FindFirstChild("EggStealHubVisuals")

		if eggStealHubVisuals ~= nil then
			eggStealHubVisuals:Destroy()
		end

		MarkerFolder = Instance.new("Folder")
		MarkerFolder.Name = "EggStealHubVisuals"
		MarkerFolder.Parent = Workspace
		return MarkerFolder
	end

	local tbl10 = {}

	updateMarkers = function()
		if not tbl.EggESP then
			clearMarkers()
			return
		end
		local v3 = getSnapshot()
		local v4
		v4, v4 = getCharacter()
		if v3 == nil or v4 == nil then
			return
		end
		local v5 = tbl10
		table.clear(tbl10)
		local position = v4.Position

		for _, record in ipairs(v3.Records) do
			if record.State == "Slot" and typeof(record.BottomCFrame) == "CFrame" then
				local position2 = record.BottomCFrame.Position
				local magnitude = (position2 - position).Magnitude

				if magnitude <= tbl.ESPDistance then
					v5[record.Uid] = true
					local part = tbl2.Markers[record.Uid]

					if part == nil or part.Parent == nil then
						part = Instance.new("Part")
						part.Name = record.Uid
						part.Size = Vector3.new(0.25, 0.25, 0.25)
						part.Transparency = 1
						part.Anchored = true
						part.CanCollide = false
						part.CanQuery = false
						part.CanTouch = false
						part.Parent = getMarkerFolder()
						local billboardGui = Instance.new("BillboardGui")
						billboardGui.Name = "Label"
						billboardGui.Size = UDim2.fromOffset(220, 54)
						billboardGui.StudsOffset = Vector3.new(0, 3.5, 0)
						billboardGui.AlwaysOnTop = true
						billboardGui.Parent = part
						local textLabel3 = Instance.new("TextLabel")
						textLabel3.Name = "Text"
						textLabel3.Size = UDim2.fromScale(1, 1)
						textLabel3.BackgroundTransparency = 1
						textLabel3.Font = Enum.Font.GothamBold
						textLabel3.TextSize = 14
						textLabel3.TextWrapped = true
						textLabel3.TextStrokeTransparency = 0.15
						textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
						textLabel3.Parent = billboardGui
						tbl2.Markers[record.Uid] = part
					end

					if part.Position ~= position2 then
						part.CFrame = CFrame.new(position2)
					end

					local str2 = type(record.Mutations) == "table" and table.concat(record.Mutations, ", ") or ""
					local str3 = str2 ~= "" and " | " .. str2 or ""
					local n5 = math.floor(magnitude + 0.5)
					local text = string.format("%s | %s%s\n%d studs", tostring(record.AssetCategory), tostring(record.AreaId), str3, n5)

					if part.Label.Text.Text ~= text then
						part.Label.Text.Text = text
					end
				end
			end
		end

		for k, marker in pairs(tbl2.Markers) do
			if not v5[k] then
				tbl2.Markers[k] = nil
				marker:Destroy()
			end
		end
	end

	tbl2.MarkTargetDirty = function()
		tbl2.TargetDirty = true
		tbl2.TargetRevision = (tbl2.TargetRevision or 0) + 1
		tbl2.TargetSnapshotCache = nil
		tbl2.TargetChoiceCache = nil
		tbl2.Checker.Dirty = true
	end

	connect(EggCmds.AreaEggSnapshotUpdated, tbl2.MarkTargetDirty)
	connect(EggCmds.AreaEggUpdated, tbl2.MarkTargetDirty)
	connect(EggCmds.AreaEggRemoved, tbl2.MarkTargetDirty)
	connect(EggCmds.AreaEggRareSpawnsRevealed, tbl2.MarkTargetDirty)

	connect(EggCmds.AreaEggCarryStateChanged, function(arg)
		local isCarrying = tbl2.IsCarrying
		local carryUid = tbl2.CarryUid
		local flag = type(carryUid) == "string" and getAreaEggRecord(carryUid) or nil

		if isCarrying and arg.IsCarrying ~= true and carryUid ~= tbl2.SuppressDroppedCarryUid then
			local character = localPlayer.Character
			local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
			character = character and character:FindFirstChildOfClass("Humanoid")
			local guard = fn28(tbl2.CarryAreaId)
			guard = guard and guard:FindFirstChild("Guard")
			local humanoidRootPart2 = guard and guard:FindFirstChild("HumanoidRootPart")
			local carryWatch = tbl2.CarryWatch
			local runBackReadyTrace = tbl2.RunBackReadyTrace
			local lastDropRequest = tbl2.LastDropRequest
			local v3 = tbl2
			local carryStartedAt = tbl2.CarryStartedAt

			local lastCarryRelease = {
				Uid = carryUid,
				At = os.clock(),
				Outcome = "Awaiting claim feedback",
				AreaId = tbl2.CarryAreaId,
				CarrySeconds = os.clock() - carryStartedAt,
				WakeDelayRequired = tbl2.CarryRunBackWakeDelayRequired,
				ChasingObservedAt = carryWatch and carryWatch.Uid == carryUid and carryWatch.ChasingAt or nil,
				GuardChanges = carryWatch and carryWatch.Uid == carryUid and carryWatch.Changes or nil,
				RunBackReadyAt = runBackReadyTrace and runBackReadyTrace.Uid == carryUid and runBackReadyTrace.ReadyAt or nil,
				ReadinessOutcome = runBackReadyTrace and runBackReadyTrace.Uid == carryUid and runBackReadyTrace.Outcome or nil,
				DropRequestAt = lastDropRequest and lastDropRequest.Uid == carryUid and lastDropRequest.At >= tbl2.CarryStartedAt and lastDropRequest.At or nil,
				AutoDropEnabled = tbl.AutoDropHeldEgg == true,
				Status = tbl2.Status,
				Moving = tbl2.Moving,
				Health = character and character.Health,
				Position = humanoidRootPart and { humanoidRootPart.Position.X, humanoidRootPart.Position.Y, humanoidRootPart.Position.Z },
				RecordState = type(flag) == "table" and flag.State or nil,
				GuardState = guard and guard:GetAttribute("GuardState"),
				GuardDistance = humanoidRootPart2 and humanoidRootPart and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude,
				GuardPosition = humanoidRootPart2 and { humanoidRootPart2.Position.X, humanoidRootPart2.Position.Y, humanoidRootPart2.Position.Z },
				WakeTarget = guard and guard:GetAttribute("WakeTargetPlayer"),
				FrameSeconds = tbl2.StealTiming.FrameSeconds,
				Move = {
					Speed = tbl2.MoveTrace.Speed,
					RequestedSpeed = tbl2.MoveTrace.RequestedSpeed,
					SegmentLength = tbl2.MoveTrace.SegmentLength,
					SegmentDuration = tbl2.MoveTrace.SegmentDuration,
					Remaining = tbl2.MoveTrace.Remaining,
					Outcome = tbl2.MoveTrace.Outcome,
				},
			}

			local deliveryTrace = tbl2.DeliveryTrace
			local delivery

			if deliveryTrace then
				delivery = {
					StartedAt = tbl2.DeliveryTrace.StartedAt,
					FirstHeartbeatAt = tbl2.DeliveryTrace.FirstHeartbeatAt,
					FirstHeartbeatDt = tbl2.DeliveryTrace.FirstHeartbeatDt,
					FirstForwardProgress = tbl2.DeliveryTrace.FirstForwardProgress,
					CarryToFirstHeartbeatSeconds = tbl2.DeliveryTrace.CarryToFirstHeartbeatSeconds,
					LastForwardProgress = tbl2.DeliveryTrace.LastForwardProgress,
					ExpectedForwardProgress = tbl2.DeliveryTrace.ExpectedForwardProgress,
					CFrameCorrections = tbl2.DeliveryTrace.CFrameCorrections,
					PoorProgressFrames = tbl2.DeliveryTrace.PoorProgressFrames,
					MotionDiagnostics = tbl2.DeliveryTrace.MotionDiagnostics,
					MotionSamples = tbl2.DeliveryTrace.MotionSamples,
					MotionSampleIndex = tbl2.DeliveryTrace.MotionSampleIndex,
					DepartureMotionSamples = tbl2.DeliveryTrace.DepartureMotionSamples,
					PhysicsDriveSteps = tbl2.CarryPhysicsDrive and tbl2.CarryPhysicsDrive.Steps or nil,
					PhysicsDriveLastDt = tbl2.CarryPhysicsDrive and tbl2.CarryPhysicsDrive.LastDt or nil,
					PhysicsDriveLastSpeed = tbl2.CarryPhysicsDrive and tbl2.CarryPhysicsDrive.LastSpeed or nil,
				}
			else
				delivery = deliveryTrace
			end

			lastCarryRelease.Delivery = delivery or nil
			v3.LastCarryRelease = lastCarryRelease
			tbl2.LastCarryReleaseSamples = {}

			for i = #tbl2.StealSurvival.Samples, 1, -1 do
				local v4 = tbl2.StealSurvival.Samples[i]

				if v4.CarryUid == carryUid and v4.At >= tbl2.CarryStartedAt then
					table.insert(tbl2.LastCarryReleaseSamples, 1, v4)
					if #tbl2.LastCarryReleaseSamples ~= 2 then
						continue
					end
				else
					continue
				end

				break
			end
		end

		tbl2.IsCarrying = arg.IsCarrying == true
		tbl2.CarryUid = arg.Uid
		tbl2.CarryRunBackWakeDelayRequired = arg.RunBackWakeDelayRequired == true
		tbl2.CarryConfirmationGeneration = tbl2.CarryConfirmationGeneration + 1

		if tbl2.IsCarrying then
			if tbl2.DroppedTargetUid == tbl2.CarryUid then
				tbl2.LastRecoveredDroppedUid = tbl2.CarryUid
				tbl2.DroppedTargetUid = nil
				tbl2.DroppedTargetDeadline = 0
			end

			if tbl2.LastDroppedTargetUid == tbl2.CarryUid then
				tbl2.LastDroppedTargetUid = nil
			end

			tbl2.CarryStartedAt = os.clock()
			tbl2.CarryConfirmedAt = tbl2.CarryStartedAt
			local primaryCarryRequestTrace = tbl2.PrimaryCarryRequestTrace

			if primaryCarryRequestTrace and primaryCarryRequestTrace.Uid == tbl2.CarryUid then
				primaryCarryRequestTrace.CarryEventAt = tbl2.CarryConfirmedAt
			end

			tbl2.CarryToolConfirmedAt = 0
			tbl2.CarryAreaId = arg.AreaId or tbl2.CarryUid == tbl2.PrimaryCarryTargetUid and tbl2.ActiveTargetAreaId or tbl2.CarryAreaId

			if tbl2.CarryUid == tbl2.PrimaryCarryTargetUid and tbl2.PostDropRouteUid ~= nil then
				tbl2.ClearPostDropRoute("Primary carry reacquired")
			end

			local flag2 = tbl2.CarryUid == tbl2.PrimaryCarryTargetUid
			local stealInProgress

			if flag2 then
				stealInProgress = tbl2.StealInProgress or tbl2.Checker.ManualBusy
			else
				stealInProgress = flag2
			end

			if stealInProgress then
				local character = localPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character and character:IsA("BasePart") then
					local vector2 = Vector3.new(516, 71, -367)
					local v3 = tbl2.PlanCarryGuardBypass(tbl2.CarryUid, tbl2.CarryAreaId or fn29(character.Position), character.Position, Vector3.new(516, 71, -367))
					local vector3 = v3 and v3.Points[1] or Vector3.new(516, 71, -367)
					local primaryCarryHeightY = vector2.Y + primaryCarryHeightOffset
					tbl2.PrimaryCarryHeightUid = tbl2.CarryUid
					tbl2.PrimaryCarryHeightY = primaryCarryHeightY

					tbl2.PrimaryCarryHeightTrace = {
						Uid = tbl2.CarryUid,
						ActivatedAt = os.clock(),
						Offset = primaryCarryHeightOffset,
						Position = character.Position,
						TargetY = primaryCarryHeightY,
						Mode = "PhysicsDrivenFixedXZCarryYPlus50",
					}

					local vector4 = Vector3.new(vector3.X, primaryCarryHeightY, vector3.Z)
					local n5 = vector4 - character.Position
					local vector5 = Vector3.new(n5.X, 0, n5.Z)

					if vector5.Magnitude > 0.05 then
						local unit = vector5.Unit
						local n6 = math.clamp(tonumber(tbl2.StealTiming.FrameSeconds) or 0.033333333333333333, 0.0041666666666666666, 0.12)
						local n7 = tonumber(tbl2.GetCarryReturnSpeed()) or 1000
						local n8 = os.clock() + 0.2
						local vector6 = Vector3.new(unit.X * n7, math.clamp(n5.Y * 12, -180, 180), unit.Z * n7)
						local assemblyLinearVelocity = character.AssemblyLinearVelocity
						character.AssemblyLinearVelocity = vector6
						character.AssemblyAngularVelocity = Vector3.zero
						tbl2.SetCarryPhysicsDrive(tbl2.CarryUid, vector4, n7, 0.1, "CarryDeparture", n7, n8)

						tbl2.PrimaryDepartureBoost = {
							Uid = tbl2.CarryUid,
							StartedAt = os.clock(),
							Until = n8,
							Speed = n7,
							Direction = unit,
							StartPosition = character.Position,
							Target = vector4,
						}

						tbl2.PrimaryDepartureEventTrace = {
							Uid = tbl2.CarryUid,
							At = os.clock(),
							VelocityBeforeBurst = assemblyLinearVelocity,
							WrittenVelocity = vector6,
							MovingFlag = tbl2.Moving,
							KnockbackCorrections = tbl2.AntiKnockbackCorrections or 0,
							Speed = n7,
							Seconds = 0.2,
							FrameSeconds = n6,
							EstimatedFps = 1 / math.max(n6, 0.0041666666666666666),
							Position = character.Position,
							Target = vector4,
							RealPlayerYOffset = primaryCarryHeightOffset,
							Mode = v3 and "PreSimulationGuardShoulder" or "PreSimulationFixedSpeedPhysicsDrive",
						}
					end
				end
			end

			if tbl2.CarryWatch and tbl2.CarryWatch.Uid ~= tbl2.CarryUid then
				tbl2.ClearCarryWatch()
			end

			tbl2.StartManualCarryLift()
			tbl2.ObserveCarryGuard()
			tbl2.QueueAntiHitCarryEscape()
		end

		if not tbl2.IsCarrying then
			tbl2.StopManualCarryLift()
			tbl2.EndAntiHitCameraHold()
			tbl2.CarryLiftApplied = nil
			tbl2.ClearCarryWatch()

			if isCarrying and type(carryUid) == "string" and carryUid ~= tbl2.PrimerCarryUid and (tbl2.PrimaryCarryTargetUid == nil or carryUid == tbl2.PrimaryCarryTargetUid) then
				tbl2.StopCarryPhysicsDrive(carryUid, "Primary carry released", false)
				tbl2.CarryGuardBypass = nil
				tbl2.PrimaryDepartureBoost = nil
				tbl2.ClearPrimaryCarryHeight("Primary carry released")
				tbl2.ClearPrimaryChaseProtection("Primary carry released")
				tbl2.ArmPostDropRoute(carryUid)
				local activeRide = tbl2.ActiveRide
				tbl2.ActiveRide = nil

				if activeRide and not activeRide.Stopped then
					pcall(activeRide.Stop)
				end

				local character = localPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character and character:IsA("BasePart") then
					character.AssemblyLinearVelocity = Vector3.zero
					character.AssemblyAngularVelocity = Vector3.zero
				end
			end

			if isCarrying and type(carryUid) == "string" and tbl2.SuppressDroppedCarryUid == carryUid then
				tbl2.SuppressDroppedCarryUid = nil
				tbl2.ForestPrimerDropInFlight = nil
				tbl2.CarryAreaId = nil
			elseif isCarrying and type(carryUid) == "string" and (tbl.AutoSteal or tbl.AutoFarmCycle or tbl2.Checker.ManualBusy) then
				tbl2.DroppedTargetUid = carryUid
				tbl2.LastDroppedTargetUid = carryUid
				tbl2.DroppedTargetDeadline = os.clock() + 8
				tbl2.Blacklist[carryUid] = nil
				tbl2.TargetDirty = true
			end

			tbl2.CarryConfirmedAt = 0
			tbl2.CarryToolConfirmedAt = 0
			tbl2.CarryAreaId = nil
		end

		local v3 = tostring
		local carryRunBackWakeDelayRequired = tbl2.CarryRunBackWakeDelayRequired
		log("CARRY", string.format("IsCarrying=%s Uid=%s WakeDelay=%s", tostring(tbl2.IsCarrying), tostring(tbl2.CarryUid), v3(carryRunBackWakeDelayRequired)))
	end)

	connect(EggCmds.AreaEggClaimed, function(arg)
		tbl2.StopManualCarryLift()
		tbl2.EndAntiHitCameraHold()
		tbl2.ClearCarryWatch()
		local lastCarryRelease = tbl2.LastCarryRelease

		if lastCarryRelease then
			local at = tbl2.LastCarryRelease.At
			lastCarryRelease = os.clock() - at < 8
		end

		if lastCarryRelease then
			tbl2.LastCarryRelease.Outcome = "Claimed"
		end

		tbl2.StopCarryPhysicsDrive(tbl2.CarryUid, "Claimed", false)
		tbl2.CarryGuardBypass = nil
		tbl2.IsCarrying = false
		tbl2.CarryUid = nil
		tbl2.PrimaryDepartureBoost = nil
		tbl2.ClearPrimaryCarryHeight("Claimed")
		tbl2.ClearPrimaryChaseProtection("Claimed")
		tbl2.ClearPostDropRoute("Claimed")
		tbl2.DroppedTargetUid = nil
		tbl2.LastDroppedTargetUid = nil
		tbl2.DroppedTargetDeadline = 0
		tbl2.RespawnRecoveryUid = nil
		tbl2.SuppressDroppedCarryUid = nil
		tbl2.ForestPrimerDropInFlight = nil
		tbl2.ForestPrimerDropError = nil
		tbl2.CarryConfirmedAt = 0
		tbl2.CarryToolConfirmedAt = 0
		local metrics = tbl2.Metrics
		metrics.Stolen = metrics.Stolen + 1
		setStatus(string.format("Claimed %s", tostring(arg.DisplayName or arg.AssetCategory)))
		log("CLAIM", string.format("Claimed %s", tostring(arg.AssetCategory)))
	end)

	connect(localPlayer.CharacterRemoving, function(arg)
		tbl2.StopManualCarryLift()
		tbl2.RespawnRecoveryUid = nil
		local carryUid = tbl2.IsCarrying and tbl2.CarryUid or tbl2.DroppedTargetUid

		if type(carryUid) == "string" and carryUid ~= tbl2.PrimerCarryUid and carryUid ~= tbl2.ActivePrimerUid and (tbl.AutoSteal or tbl.AutoFarmCycle or tbl2.Checker.ManualBusy) then
			tbl2.RespawnRecoveryUid = carryUid
			tbl2.DroppedTargetUid = carryUid
			tbl2.LastDroppedTargetUid = carryUid
			tbl2.DroppedTargetDeadline = os.clock() + 8
			tbl2.Blacklist[carryUid] = nil

			if tbl2.IsCarrying and tbl2.CarryUid == carryUid then
				tbl2.LastCarryRelease = { Uid = carryUid, At = os.clock(), Outcome = "Character removing", AreaId = tbl2.CarryAreaId }
			end
		end

		local carryRequestInFlight = tbl2.CarryRequestInFlight

		if carryRequestInFlight and carryRequestInFlight.Character == arg then
			tbl2.CarryRequestInFlight = nil
			tbl2.LastRetiredCarryRequest = { Uid = carryRequestInFlight.Uid, Reason = "Character removing", At = os.clock() }
		end

		tbl2.TargetDirty = true

		if tbl.AutoScrambleFarm then
			tbl2.Scramble.FarmEntryPending = true
		end

		tbl2.Scramble.CombatTargetId = nil
		tbl2.Scramble.CombatTargetMissingSince = nil
		tbl2.Scramble.HigherVisualWaitId = nil
		tbl2.Scramble.HigherVisualWaitSince = nil
		tbl2.StopCarryPhysicsDrive(nil, "Character removing", false)
		tbl2.TreadmillEquipKnown = false
		tbl2.TreadmillTrainingRetryAt = 0
		tbl2.ClearPrimaryCarryHeight("Character removing")
		tbl2.ClearPrimaryChaseProtection("Character removing")
		tbl2.ClearPostDropRoute("Character removing")
		tbl2.ClearCarryWatch()
		tbl2.ClearPreparedRide()

		if tbl2.ClearRideRigPool then
			tbl2.ClearRideRigPool()
		end

		tbl2.ClearStealHumanoidPool()
		tbl2.EndAntiHitCameraHold()
		stopMovement()
		clearTPWalkBarrierLock()
		tbl2.TPWalk.LastPulseAt = 0
		tbl2.TPWalk.CurrentRoot = nil
		tbl2.TPWalk.IntegrityBusy = false
		tbl2.IsCarrying = false
		tbl2.CarryUid = nil
		tbl2.FinishDroppedRecovery(false, "Character unavailable")
		tbl2.ActiveTargetUid = nil
		tbl2.ActiveTargetAreaId = nil
		tbl2.PendingTargetUid = nil
		tbl2.PrimaryCarryTargetUid = nil
		tbl2.PrimerCarryUid = nil
		tbl2.ActivePrimerUid = nil
		tbl2.PrimerRetryAfter = 0
		tbl2.SuppressDroppedCarryUid = nil
		tbl2.ForestPrimerDropInFlight = nil
		tbl2.ForestPrimerDropError = nil
		tbl2.CarryConfirmedAt = 0
		tbl2.CarryToolConfirmedAt = 0
		tbl2.IntegrityRoot = nil
		table.clear(tbl2.IntegrityStates)
		restoreProtectedHumanoid()

		if tbl2.NoClipEnabled then
			pcall(setMovementNoClip, tbl2.NoClipCharacter, false)
		end

		table.clear(tbl2.NoClipStates)
	end)

	task.spawn(function()
		while tbl2.Alive do
			local character = localPlayer.Character
			character = character and character:FindFirstChildOfClass("Humanoid")

			if (tbl.GodMode or tbl.AntiRagdoll or tbl.TPWalkEnabled) and character ~= nil then
				protectHumanoid(character, tbl.TPWalkEnabled, tbl.TPWalkEnabled)
			elseif tbl2.ProtectedHumanoid ~= nil then
				restoreProtectedHumanoid()
			end

			task.wait(0.1)
		end
	end)

	task.spawn(function()
		while tbl2.Alive do
			if tbl.GuardBypass then
				if tbl2.GuardScanComplete then
					fn12()
				else
					tbl2.GuardScanComplete = fn13()
				end
			else
				tbl2.GuardScanComplete = false

				if next(tbl2.GuardPartStates) ~= nil then
					fn14()
				end
			end

			task.wait(2)
		end
	end)

	local GuardComponent = require(ReplicatedStorage.Shared.Modules.GuardAreas.GuardComponent)
	local step = GuardComponent.Step
	local setEnabled = GuardComponent.SetEnabled
	local obj = setmetatable({}, { __mode = "k" })

	local function fn67(arg)
		return tbl2.Alive and arg._serverOwnsPhysics == false and tbl2.IsPrimaryChaseProtected(nil, arg._areaId)
	end

	local function fn68(arg)
		return tbl2.Alive and tbl.AntiHit == true and arg._areaId == "Forest" and arg._serverOwnsPhysics == false
	end

	local function fn69(arg)
		if obj[arg] == nil then
			obj[arg] = { Enabled = arg._enabled }
		end

		setEnabled(arg, false)
	end

	local function step2(arg, ...)
		if fn67(arg) then
			local primaryChaseProtectionTrace = tbl2.PrimaryChaseProtectionTrace

			if type(primaryChaseProtectionTrace) == "table" then
				primaryChaseProtectionTrace.StepBlocks = (primaryChaseProtectionTrace.StepBlocks or 0) + 1
				primaryChaseProtectionTrace.LastStepBlockAt = os.clock()
			end

			return nil
		end

		if fn68(arg) then
			fn69(arg)
			return nil
		end
		return step(arg, ...)
	end

	local function setEnabled2(arg, arg2)
		if fn68(arg) then
			obj[arg] = { Enabled = arg2 }
			return setEnabled(arg, false)
		end
		return setEnabled(arg, arg2)
	end

	GuardComponent.Step = step2
	GuardComponent.SetEnabled = setEnabled2

	tbl2.ApplyAntiHit = function()
		if tbl.AntiHit and tbl2.Alive then
			if type(filtergc) == "function" then
				local ok, result = pcall(filtergc, "table", { Keys = { "_component", "_guardModel", "_registeredStolenUids" } }, false)

				if ok then
					for _, v3 in ipairs(result) do
						if fn68(v3._component) then
							fn69(v3._component)
						end
					end
				end
			end
		else
			for k, v3 in pairs(obj) do
				pcall(setEnabled, k, v3.Enabled)
				obj[k] = nil
			end
		end
	end

	tbl2.DestroyAntiHit = function()
		tbl.AntiHit = false
		tbl2.ApplyAntiHit()

		if GuardComponent.Step == step2 then
			GuardComponent.Step = step
		end

		if GuardComponent.SetEnabled == setEnabled2 then
			GuardComponent.SetEnabled = setEnabled
		end
	end

	tbl2.ApplyAntiHit()

	Environment.EggStealInitializeInterface = function()
		tbl2.StartupTimings.UiStartedAt = os.clock()
		UserInputService = game:GetService("UserInputService")
		local eggStealHub = {}
		local result

		if type(gethui) == "function" then
			local ok, result2 = pcall(gethui)
			result = nil

			if ok then
				result = result2
			end
		else
			result = nil

			if type(get_hidden_ui) == "function" then
				local ok
				ok, result = pcall(get_hidden_ui)
				local v3 = nil

				if not ok then
					result = v3
				end
			end
		end

		if result ~= nil then
			for _, child in ipairs(result:GetChildren()) do
				if child.Name == "FluentRenewed_Egg Steal Hub" or child.Name == "FluentRenewed_Steal An Egg" or child.Name == "EggStealHubUI" or child.Name == "EggStealCheckerUI" then
					child:Destroy()
				end
			end
		end

		tbl2.StealCacheWarmup = {}

		tbl2.WarmStealCaches = function(arg)
			if not tbl2.Alive then
				return
			end

			if tbl.GuardBypass then
				local now = os.clock()
				tbl2.RefreshForestAttackProtection()
				tbl2.StealCacheWarmup.ForestSeconds = os.clock() - now
			end

			task.wait()
			if not tbl2.Alive or arg ~= localPlayer.Character then
				return
			end
			local humanoidRootPart = arg and arg:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart then
				local now = os.clock()
				fn15(humanoidRootPart)
				tbl2.StealCacheWarmup.IntegritySeconds = os.clock() - now
				tbl2.StealCacheWarmup.IntegrityMatches = tbl2.IntegrityMatches
			end
		end

		connect(localPlayer.CharacterAdded, function(arg)
			tbl2.StopManualCarryLift()
			local respawnRecoveryUid = tbl2.RespawnRecoveryUid
			tbl2.RespawnRecoveryUid = nil

			if type(respawnRecoveryUid) == "string" then
				tbl2.DroppedTargetUid = respawnRecoveryUid
				tbl2.LastDroppedTargetUid = respawnRecoveryUid
				tbl2.DroppedTargetDeadline = os.clock() + 8
				tbl2.Blacklist[respawnRecoveryUid] = nil
			end

			tbl2.MarkTargetDirty()

			if tbl.AutoScrambleFarm then
				tbl2.Scramble.FarmEntryPending = true
			end

			tbl2.Scramble.CombatTargetId = nil
			tbl2.Scramble.CombatTargetMissingSince = nil
			tbl2.Scramble.HigherVisualWaitId = nil
			tbl2.Scramble.HigherVisualWaitSince = nil

			task.defer(function()
				if tbl2.Alive then
					tbl2.RemoveRunEffect(arg)
				end

				if arg:WaitForChild("HumanoidRootPart", 10) and tbl2.Alive and arg == localPlayer.Character then
					tbl2.WarmStealCaches(arg)
				end
			end)
		end)

		task.wait()
		tbl2.RemoveRunEffect(localPlayer.Character)
		tbl2.StartupTimings.CacheWarmupStartedAt = os.clock()
		tbl2.WarmStealCaches(localPlayer.Character)
		local cacheWarmupStartedAt = tbl2.StartupTimings.CacheWarmupStartedAt
		tbl2.StartupTimings.CacheWarmupSeconds = os.clock() - cacheWarmupStartedAt
		task.wait()

		local function fn70(arg, arg2)
			local now = os.clock()
			local v3 = game:HttpGetAsync(arg2)
			tbl2.StartupTimings[arg .. "FetchSeconds"] = os.clock() - now
			local now2 = os.clock()
			local lib = loadstring(v3)()
			tbl2.StartupTimings[arg .. "InitSeconds"] = os.clock() - now2
			return lib
		end

		Library = fn70("Fluent", "https://raw.githubusercontent.com/angeryy-tvy/Fluent-Port-Vxeze/refs/heads/main/FluentCustom.luau")
		tbl2.SaveManager = fn70("SaveManager", "https://raw.githubusercontent.com/angeryy-tvy/Fluent-Port-Vxeze/refs/heads/main/Addons/SaveManager.luau")
		tbl2.InterfaceManager = fn70("InterfaceManager", "https://raw.githubusercontent.com/angeryy-tvy/Fluent-Port-Vxeze/refs/heads/main/Addons/InterfaceManager.luau")
		task.wait()

		if Library.GUI ~= nil then
			pcall(function()
				Library.GUI.AutoLocalize = false
			end)

			for _, descendant in ipairs(Library.GUI:GetDescendants()) do
				if descendant:IsA("GuiObject") then
					pcall(function()
						descendant.AutoLocalize = false
					end)
				end
			end

			connect(Library.GUI.DescendantAdded, function(arg)
				if arg:IsA("GuiObject") then
					pcall(function()
						arg.AutoLocalize = false
					end)
				end
			end)
		end

		local str2 = tostring(localPlayer.UserId)
		local str3 = "VxezeHub/EggSteal-language-" .. str2 .. ".txt"
		local eggStealLanguagePreferences = Environment.EggStealLanguagePreferences

		if type(eggStealLanguagePreferences) ~= "table" then
			eggStealLanguagePreferences = {}
			Environment.EggStealLanguagePreferences = eggStealLanguagePreferences
		end

		local function fn71(arg)
			return arg == "Vietnamese" or arg == "English"
		end

		local languagePreference = {}
		tbl2.LanguagePreference = languagePreference

		languagePreference.Save = function(lastWritten)
			if not fn71(lastWritten) then
				return false
			end
			eggStealLanguagePreferences[str2] = lastWritten
			if languagePreference.LastWritten == lastWritten then
				return true
			end

			if type(writefile) ~= "function" then
				return false
			end

			local ok, result2 = pcall(function()
				if type(makefolder) == "function" then
					if type(isfolder) ~= "function" or not isfolder("VxezeHub") then
						makefolder("VxezeHub")
					end
				end

				writefile(str3, lastWritten)
			end)

			languagePreference.LastError = not ok and tostring(result2) or nil

			if ok then
				languagePreference.LastWritten = lastWritten
			end

			return ok
		end

		local language = eggStealLanguagePreferences[str2]

		if not fn71(language) and type(readfile) == "function" then
			local ok, result2 = pcall(readfile, str3)

			if ok and type(result2) == "string" then
				local v3 = string.match(result2, "^%s*(.-)%s*$")

				if fn71(v3) then
					languagePreference.LastWritten = v3
					language = v3
				end
			end
		end

		if not fn71(language) then
			local str4 = "en-us"

			pcall(function()
				str4 = localPlayer.LocaleId
			end)

			local flag = false
			local localeId = nil

			task.spawn(function()
				local ok, result2 = pcall(function()
					return game:GetService("LocalizationService"):GetTranslatorForPlayerAsync(localPlayer)
				end)

				if ok and result2 then
					pcall(function()
						localeId = result2.LocaleId
					end)
				end

				flag = true
			end)

			local n5 = os.clock() + 2

			while not flag and os.clock() < n5 do
				task.wait(0.05)
			end

			if type(localeId) == "string" and localeId ~= "" then
				str4 = localeId
			end

			language = (type(str4) == "string" and string.lower(str4):match("^([a-z]+)") or "en") == "vi" and "Vietnamese" or "English"
		end

		tbl.Language = language
		languagePreference.Save(language)

		local tbl11 = {
			Language = "Ngôn ngữ",
			["Global Chat"] = "Trò chuyện chung",
			["Select Language"] = "Chọn ngôn ngữ",
			["Change the interface language without changing your settings."] = "Đổi ngôn ngữ giao diện mà không thay đổi cài đặt của bạn.",
			Farm = "Tự động thu thập",
			Checker = "Kiểm tra trứng",
			Event = "Sự kiện",
			Defense = "Phòng vệ",
			Movement = "Di chuyển",
			Upgrades = "Nâng cấp",
			["Pet & Egg"] = "Thú cưng & Trứng",
			["Trails & Gears"] = "Vệt sáng & Trang bị",
			Rewards = "Phần thưởng",
			Visuals = "Hiển thị",
			Settings = "Cài đặt",
			WORKSPACE = "KHU VỰC LÀM VIỆC",
			Workspace = "Khu vực làm việc",
			["Egg Checker"] = "Kiểm tra trứng",
			["Prioritize Money Per Second"] = "Hiển thị Pet bên trong trứng",
			["Show all field eggs and prefer the highest Money/s after configured priorities."] = "Hiển thị trứng trên bản đồ; ưu tiên thu nhập/giây cao nhất sau các tiêu chí đã chọn.",
			["Selected Egg"] = "Trứng đã chọn",
			["Steal Selected"] = "Lấy trứng đã chọn",
			["Refresh Checker"] = "Làm mới danh sách",
			["Select an egg first."] = "Hãy chọn một quả trứng trước.",
			["Select a pet, then press Steal Selected"] = "Chọn một quả trứng, rồi bấm Lấy trứng đã chọn",
			Refresh = "Làm mới",
			["Walk Speed"] = "Tốc độ đi bộ",
			["Walk Speed Multiplier"] = "Hệ số tốc độ đi bộ",
			["Safe Step Cap"] = "Giới hạn quãng đường mỗi bước",
			["Farm Cycle Status"] = "Trạng thái chu trình farm",
			["Mode Auto Steal Egg"] = "Chế độ Auto Steal Egg",
			["Steal Automation"] = "Tự động lấy trứng",
			["Auto Steal Egg"] = "Tự động lấy trứng",
			["Do not use with Auto Steal Egg. This feature automatically collects eggs without the boss attacking or chasing you."] = "Không dùng chung với Auto Steal Egg, Chức năng này giúp tự đi lấy egg mà không bị boss đánh và đuổi theo",
			["Steal Movement Mode"] = "Chế độ di chuyển khi lấy trứng",
			["Choose Tween or TP for the next steal attempt. Return always uses tween."] = "Chọn Tween hoặc TP cho lần lấy trứng tiếp theo. Khi mang trứng về luôn dùng tween.",
			["Return Tween Visual"] = "Hiển thị khi tween mang trứng về",
			["Choose whether to ride a visual guard clone while bringing an egg home. Mobile defaults to No Ride."] = "Chọn có hiển thị nhân vật cưỡi bản sao guard khi mang trứng về hay không. Mobile mặc định không cưỡi.",
			["No Ride"] = "Không cưỡi guard",
			["Ride Guard"] = "Cưỡi guard",
			["Steal Big Eggs Only"] = "Chỉ lấy trứng lớn",
			["Minimum Egg Size (1-20)"] = "Kích thước trứng tối thiểu (1–20)",
			["Auto Drop Held Egg"] = "Tự động thả trứng đang cầm",
			["Select Arena"] = "Chọn khu vực",
			["Steal Egg"] = "Độ hiếm trứng cần lấy",
			["No selection = highest money/s, then highest arena. Selected rarities filter targets; size and arena filters still apply."] = "Không chọn: ưu tiên tiền/s cao nhất, rồi arena cao nhất. Bộ lọc độ hiếm đã chọn, kích thước và arena vẫn áp dụng.",
			["Avoid Traps"] = "Tự động né bẫy",
			["Detour around traps on the way out and back. Wait if the route is blocked."] = "Đi vòng tránh bẫy cả khi đi lấy trứng và mang về. Chờ nếu đường bị chặn.",
			["Preempt Higher-Priority Egg"] = "Chuyển sang trứng có ưu tiên cao hơn",
			["Server Hop"] = "Chuyển máy chủ",
			["Anti AFK"] = "Chống AFK",
			["Prevent idle server hops and keep the game activity timer reset."] = "Ngăn game chuyển máy chủ khi treo và đặt lại bộ đếm AFK của game.",
			["Server Browser"] = "Danh sách máy chủ",
			["Opens a compact list of public servers with 0-1 players. You choose which server to join."] = "Mở danh sách gọn các máy chủ công khai có 0-1 người. Bạn tự chọn máy chủ để vào.",
			["Tween Speed"] = "Tốc độ di chuyển tự động",
			["Arrival Distance"] = "Khoảng cách dừng trước mục tiêu",
			["Stop Movement"] = "Dừng di chuyển",
			["Bat Aura"] = "Tự động đánh bằng gậy",
			["Bat Kill Aura"] = "Tự động đánh mục tiêu xung quanh",
			["Auto Equip Bat"] = "Tự động cầm gậy",
			["Aura Range"] = "Phạm vi tự động đánh",
			["Attack Delay (seconds)"] = "Thời gian giữa các đòn đánh (giây)",
			["Equip Bat Now"] = "Cầm gậy ngay",
			Treadmill = "Máy chạy bộ",
			["Auto Treadmill Training"] = "Tự động luyện tập trên máy chạy bộ",
			["Auto Treadmill Upgrade"] = "Tự động nâng cấp máy chạy bộ",
			["Auto Farm Cycle"] = "Chu trình farm tự động",
			["Auto Steal / Sell / Treadmill"] = "Tự lấy trứng / bán / chạy bộ",
			["Prioritize Eternal, Divine and Secret eggs. When Auto Hatch is enabled, hatch all ready eggs before Auto Place; process one hatch per turn so rare eggs can interrupt. Then place pending eggs, steal normally, sell and train."] = "Ưu tiên trứng Eternal, Divine và Secret. Khi bật Tự ấp, ấp hết trứng đã sẵn sàng trước khi Tự đặt; xử lý từng trứng mỗi lượt để có thể nhường cho trứng hiếm. Sau đó đặt trứng còn chờ, lấy trứng thường, bán và luyện tập.",
			Base = "Căn cứ",
			["Auto Base Upgrade"] = "Tự động nâng cấp căn cứ",
			["Automation Delay (seconds)"] = "Thời gian chờ giữa các thao tác (giây)",
			["Auto Equip Best Pet"] = "Tự động trang bị thú cưng tốt nhất",
			["Equip Delay (seconds)"] = "Chu kỳ trang bị thú cưng (giây)",
			["Auto Sell Pet / Egg"] = "Tự động bán thú cưng / trứng",
			["Sells only at or below the Pet/Egg thresholds; protected items and unknown rates are skipped."] = "Chỉ bán khi thu nhập không vượt ngưỡng đã đặt. Bỏ qua vật phẩm được bảo vệ hoặc chưa xác định thu nhập.",
			["Sell Pet At Most ($/s)"] = "Bán thú cưng tối đa ($/giây)",
			["Sell Egg At Most ($/s)"] = "Bán trứng tối đa ($/giây)",
			["Sell Delay (seconds)"] = "Thời gian chờ giữa các lần bán (giây)",
			Trails = "Vệt sáng",
			["Auto Equip Best Trail"] = "Tự động trang bị vệt sáng tốt nhất",
			["Auto Buy Trail"] = "Tự động mua vệt sáng",
			["Trail Wanted"] = "Vệt sáng muốn mua",
			["Equip Best Trail"] = "Trang bị vệt sáng tốt nhất",
			Gears = "Trang bị",
			["Auto Equip Best Gear"] = "Tự động dùng trang bị tốt nhất",
			["Equip Best Gear Now"] = "Dùng trang bị tốt nhất ngay",
			Claims = "Nhận thưởng",
			["Auto Claim Free Gifts"] = "Tự động nhận quà miễn phí",
			["Auto Claim Group Reward"] = "Tự động nhận thưởng nhóm",
			["Auto Claim Index Rewards"] = "Tự động nhận thưởng bộ sưu tập",
			["Boss Event Status"] = "Trạng thái sự kiện Boss",
			["Dr Scramble Boss"] = "Boss Tiến sĩ Scramble",
			["Auto Dr Scramble Boss"] = "Tự động đánh Boss Scramble",
			["Dodge Scramble Hazards"] = "Né đòn Boss Scramble",
			["Rescue Grabbed Players"] = "Cứu người chơi bị Boss bắt",
			["Scramble Attack Delay (seconds)"] = "Thời gian giữa các đòn Scramble (giây)",
			["Scramble Attack Range"] = "Khoảng cách đánh Scramble",
			["Scramble Boss Mastery"] = "Thành thạo Boss Scramble",
			["Auto Claim Scramble Mastery"] = "Tự động nhận thưởng thành thạo Scramble",
			["Auto Buy Samples Shop"] = "Tự động mua cửa hàng Samples",
			["Finishes the current farm delivery, joins the live arena, then follows Mech / Ball / Human phases. Farm resumes after leaving the arena."] = "Hoàn tất lượt farm đang chạy, giao trứng rồi vào đấu trường theo các pha Mech / Ball / Human. Tiếp tục farm sau khi rời đấu trường.",
			["Claims eligible milestones in order and verifies the server state before the next request."] = "Nhận các mốc đủ điều kiện theo thứ tự và kiểm tra trạng thái máy chủ trước yêu cầu tiếp theo.",
			["Waiting for arena state..."] = "Đang đọc trạng thái đấu trường...",
			["Reading server mastery..."] = "Đang đọc tiến trình thành thạo...",
			["Inside arena — farm paused"] = "Trong đấu trường — farm tạm dừng",
			["Outside arena"] = "Ngoài đấu trường",
			["No live arena"] = "Chưa có đấu trường đang mở",
			["Finishing farm / delivering held egg before boss"] = "Hoàn tất farm / giao trứng đang cầm trước khi vào Boss",
			["Entering Dr Scramble arena"] = "Đang vào đấu trường Scramble",
			["Waiting for server to confirm arena entry"] = "Chờ máy chủ xác nhận đã vào đấu trường",
			["Waiting for Dr Scramble arena to appear"] = "Chờ đấu trường Scramble xuất hiện",
			["Scramble boss automation disabled"] = "Tự động đánh Boss Scramble đã tắt",
			["Farm paused inside Scramble arena"] = "Farm tạm dừng trong đấu trường Scramble",
			["Waiting for arena replication"] = "Chờ đồng bộ đấu trường",
			["Waiting for authoritative Mech health"] = "Chờ đồng bộ HP Mech từ máy chủ",
			["Waiting for core health"] = "Chờ đồng bộ HP lõi",
			["Leading Ball to active coil"] = "Dẫn Ball vào cuộn điện đang sáng",
			["Waiting for targeted player to stun Ball"] = "Chờ người bị chọn làm choáng Ball",
			["Human is immune"] = "Boss dạng người đang miễn nhiễm",
			["Escaping Scramble grab"] = "Đang thoát khỏi tay Boss Scramble",
			["Waiting for throw / transition"] = "Chờ Boss ném / chuyển pha",
			["Dodging Scramble hazard"] = "Đang né đòn Scramble",
			["Hazard: waiting for a safe route"] = "Đang chờ đường né an toàn",
			["Waiting for arena floor / target position"] = "Chờ đồng bộ nền đấu trường / vị trí mục tiêu",
			["Target outside current arena position; waiting for transition"] = "Mục tiêu ngoài vị trí đấu trường hiện tại; chờ chuyển cảnh",
			["No eligible reward"] = "Chưa có thưởng đủ điều kiện",
			["Next claim:"] = "Mốc có thể nhận:",
			["Awaiting server confirmation:"] = "Đang chờ máy chủ xác nhận:",
			["(no repeat request)"] = "(không gửi yêu cầu lặp)",
			["Infinite Rewards"] = "Phần thưởng vô hạn",
			["Suitable for timed egg-claiming events. After picking up an egg, you will rise high into the air to avoid being hit."] = "Thích hợp dành cho event giành trứng theo thời gian, khi lấy egg sẽ bay lên cao để không bị đánh.",
			["Dr Scramble's Experiments"] = "Thí nghiệm của Tiến sĩ Scramble",
			["Scramble Status"] = "Trạng thái Scramble",
			["Reading outbreak, Samples and shop state..."] = "Đang đọc đợt tấn công, Mẫu vật và trạng thái cửa hàng...",
			["Auto Farm Scramble Currency"] = "Tự động thu thập tiền tệ Scramble",
			["Moves to outbreak drones, attacks with the Bat, then visits Sample drops."] = "Di chuyển tới drone trong đợt tấn công, đánh bằng gậy rồi tới nhặt Mẫu vật.",
			["Experiment Vault Assistant"] = "Hỗ trợ Kho Thí Nghiệm",
			["Starts the quest, moves to each Lost Part, then waits for a manual E hold. No synthetic input is sent."] = "Mở nhiệm vụ, di chuyển tới từng Linh kiện Thất lạc rồi chờ bạn tự giữ E. Không gửi input giả.",
			["Auto Buy Experiments / Boosters"] = "Tự động mua thí nghiệm / vật phẩm tăng cường",
			["Buys selected offers until each reaches the configured purchase count for the current shop period."] = "Mua các mục đã chọn cho tới khi từng mục đạt số lượng cài đặt trong kỳ cửa hàng hiện tại.",
			["Experiments / Boosters"] = "Thí nghiệm / Vật phẩm tăng cường",
			["Multi-select the experiments, mutation consumable and boosters to buy."] = "Chọn nhiều thí nghiệm, vật phẩm đột biến và vật phẩm tăng cường cần mua.",
			["Purchase Count Per Selected Offer"] = "Số lượng mua cho mỗi mục đã chọn",
			["Scramble Movement Speed"] = "Tốc độ di chuyển Scramble",
			["Scramble Drone Arrival Distance"] = "Khoảng cách dừng cạnh Drone Scramble",
			["Scramble Non-combat Delay (seconds)"] = "Thời gian chờ Scramble ngoài giao chiến (giây)",
			["Refresh Scramble State"] = "Làm mới trạng thái Scramble",
			State = "Trạng thái",
			Phase = "Giai đoạn",
			["Weapon power/required"] = "Sức mạnh vũ khí/yêu cầu",
			chasing = "đang truy đuổi",
			stunned = "bị choáng",
			Carrying = "Đang mang",
			Pickups = "Vật phẩm",
			Spawned = "Đã xuất hiện",
			Collected = "Đã thu thập",
			Respawned = "Đã hồi sinh",
			Hazard = "Hiểm họa",
			Mode = "Chế độ",
			["Contract gated"] = "Chờ contract xác minh",
			yes = "có",
			no = "không",
			ACTIVE = "ĐANG HOẠT ĐỘNG",
			Outbreak = "Đợt tấn công",
			Unavailable = "Không khả dụng",
			["Next in"] = "Lượt tiếp theo sau",
			["Ends in"] = "Kết thúc sau",
			Samples = "Mẫu vật",
			Drones = "Drone",
			Drops = "Vật phẩm rơi",
			Target = "Mục tiêu",
			Farm = "Thu thập",
			["Auto buy"] = "Tự động mua",
			Quantity = "Số lượng",
			Selected = "Đã chọn",
			Purchases = "Lượt mua",
			Session = "Phiên này",
			drops = "vật phẩm rơi",
			swings = "đòn đánh",
			purchases = "lượt mua",
			["Observer stopped"] = "Đã dừng theo dõi",
			["Waiting for Dr Scramble"] = "Đang chờ Tiến sĩ Scramble",
			["Waiting for the next drone outbreak"] = "Đang chờ đợt drone tiếp theo",
			["Waiting for higher-HP drone sync"] = "Đang chờ đồng bộ Drone nhiều HP hơn",
			["Moving to safe-zone center before Scramble"] = "Đang đi tới giữa khu an toàn trước khi vào Scramble",
			["Safe-zone center unavailable"] = "Không tìm thấy điểm giữa khu an toàn",
			["Entering Scramble event area"] = "Đang di chuyển vào khu vực sự kiện Scramble",
			["Entered Scramble event area"] = "Đã vào khu vực sự kiện Scramble",
			["Outbreak active - waiting for a drone"] = "Đợt tấn công đang diễn ra - chờ drone xuất hiện",
			["Collecting Scramble Samples"] = "Đang thu thập Mẫu vật Scramble",
			["Sample drop"] = "Mẫu vật rơi",
			["Moving to"] = "Đang di chuyển tới",
			Attacking = "Đang tấn công",
			Buying = "Đang mua",
			Bought = "Đã mua",
			["Farming Samples for selected purchase"] = "Đang thu thập Mẫu vật để mua mục đã chọn",
			["Selected Scramble purchase targets reached"] = "Đã đạt số lượng mua Scramble đã chọn",
			["No Scramble purchase selected"] = "Chưa chọn mục Scramble cần mua",
			["Scramble shop waiting"] = "Cửa hàng Scramble đang chờ",
			["Scramble automation disabled"] = "Tự động Scramble đã tắt",
			["Auto vault"] = "Tự động Kho",
			Quest = "Nhiệm vụ",
			Discovered = "Đã mở",
			["Lost Parts"] = "Linh kiện Thất lạc",
			["Drone Parts"] = "Linh kiện Drone",
			Vault = "Kho",
			Incomplete = "Chưa hoàn thành",
			Complete = "Đã hoàn thành",
			["Opening Experiment Vault quest"] = "Đang mở nhiệm vụ Kho Thí Nghiệm",
			["Waiting for an uncollected Lost Part"] = "Đang chờ Linh kiện Thất lạc chưa nhặt",
			["Collecting LostPart1"] = "Đang nhặt Linh kiện Thất lạc 1",
			["Collecting LostPart2"] = "Đang nhặt Linh kiện Thất lạc 2",
			["Collecting Drone Parts"] = "Đang nhặt Linh kiện Drone",
			["Farming Drone Parts"] = "Đang thu thập Linh kiện Drone",
			["Waiting for Vault parts"] = "Đang chờ đủ linh kiện Kho",
			["Claiming Experiment Vault"] = "Đang hoàn thành Kho Thí Nghiệm",
			["Waiting for Experiment Vault reward"] = "Đang chờ phần thưởng Kho Thí Nghiệm",
			["Waiting for Experiment Vault claim sync"] = "Đang chờ đồng bộ hoàn thành Kho Thí Nghiệm",
			["Experiment Vault completed"] = "Kho Thí Nghiệm đã hoàn thành",
			["Opening completed Experiment Vault"] = "Đang mở Kho Thí Nghiệm đã hoàn thành",
			["Experiment Vault completed and opened"] = "Kho Thí Nghiệm đã hoàn thành và mở",
			["Manual Lost Part interaction required"] = "Cần tự giữ E để nhặt Linh kiện Thất lạc",
			["Drone despawned before attack"] = "Drone biến mất trước khi đánh",
			["Drone moved before attack"] = "Drone di chuyển trước khi đánh lại",
			["Retargeting moving drone"] = "Đang bám lại Drone đang di chuyển",
			["lost parts"] = "linh kiện thất lạc",
			["vault claims"] = "lượt hoàn thành Kho",
			ScrapDrone = "Drone Phế liệu",
			ReactorDrone = "Drone Lò phản ứng",
			AugmentedDrone = "Drone Cường hóa",
			["Fix Lag"] = "Giảm giật lag",
			["Visual Cleanup"] = "Dọn hiệu ứng hình ảnh",
			["Removes expensive world effects and textures only after you enable it. ScrambleLocalVisuals is always protected. Turning it off stops future cleanup; removed visuals require rejoining to restore."] = "Chỉ loại bỏ hiệu ứng và texture nặng sau khi bạn bật. ScrambleLocalVisuals luôn được bảo vệ. Tắt toggle sẽ ngừng dọn các vật thể mới; cần vào lại server để khôi phục visual đã xóa.",
			["Visual Cleanup Warning"] = "Cảnh báo Dọn hiệu ứng hình ảnh",
			["Enabling Visual Cleanup may prevent Dr Scramble event robots from appearing. Please consider this risk before continuing."] = "Bật Dọn hiệu ứng hình ảnh có nguy cơ khiến robot của sự kiện Dr Scramble không hiển thị. Hãy cân nhắc trước khi tiếp tục.",
			Performance = "Hiệu năng",
			["Deep FPS Boost"] = "Tối ưu FPS nâng cao",
			["Keep world colors and geometry while removing expensive texture, surface, lighting and effect layers."] = "Giữ màu sắc và hình khối của bản đồ; giảm chi tiết bề mặt, ánh sáng và hiệu ứng để tăng FPS.",
			["Egg ESP"] = "Hiển thị vị trí trứng xuyên vật cản",
			["ESP Distance"] = "Phạm vi hiển thị vị trí trứng",
			Interface = "Giao diện",
			["Minimize Bind"] = "Phím ẩn / hiện giao diện",
			["Unload Hub"] = "Tắt và gỡ giao diện",
			Diagnostics = "Thông tin hoạt động",
			["Session Status"] = "Trạng thái phiên hiện tại",
			["Reset Session Metrics"] = "Đặt lại thống kê phiên",
			All = "Tất cả",
			None = "Chưa chọn",
			Secret = "Bí mật",
			Eternal = "Vĩnh cửu",
			Divine = "Thần thánh",
			Common = "Thông thường",
			Uncommon = "Ít gặp",
			Rare = "Hiếm",
			Epic = "Sử thi",
			Legendary = "Huyền thoại",
			Mythic = "Thần thoại",
			Cosmic = "Vũ trụ",
			Rarest = "Hiếm nhất",
			Largest = "Lớn nhất",
			["Most Mutated"] = "Nhiều đột biến nhất",
			Forest = "Rừng",
			Lake = "Hồ",
			Desert = "Sa mạc",
			Jungle = "Rừng rậm",
			Snow = "Vùng tuyết",
			Volcano = "Núi lửa",
			["Abyss Ocean"] = "Đại dương sâu thẳm",
			Prehistoric = "Tiền sử",
			["Cherry Blossom"] = "Hoa anh đào",
			["Titan Temple"] = "Đền Titan",
			Ready = "Sẵn sàng",
			Waiting = "Đang chờ",
			Enabled = "Đã bật",
			Disabled = "Đã tắt",
			Loaded = "Đã tải xong",
			Status = "Trạng thái",
			Priority = "Ưu tiên",
			Stolen = "Đã lấy",
			Placed = "Đã đặt",
			Hatched = "Đã nở",
			Equipped = "Đã trang bị",
			Sold = "Đã bán",
			Errors = "Lỗi",
			["Last Error"] = "Lỗi gần nhất",
			["No eligible egg"] = "Không có trứng phù hợp",
			["Returning carried egg"] = "Đang mang trứng về",
			["Requesting egg carry"] = "Đang yêu cầu lấy trứng",
			Search = "Tìm kiếm",
			Cancel = "Hủy",
			Confirm = "Xác nhận",
			Save = "Lưu",
			Load = "Tải",
			Delete = "Xóa",
			Configurations = "Cấu hình",
			Configuration = "Cấu hình",
			["Create config"] = "Tạo cấu hình",
			["Config name"] = "Tên cấu hình",
			["Config list"] = "Danh sách cấu hình",
			["Load config"] = "Tải cấu hình",
			["Overwrite config"] = "Ghi đè cấu hình",
			["Refresh list"] = "Làm mới danh sách",
			["Set as autoload"] = "Tự tải cấu hình này",
			["Reset autoload"] = "Tắt tự tải cấu hình",
			Theme = "Giao diện màu",
			Acrylic = "Hiệu ứng nền mờ",
			Transparency = "Độ trong suốt",
			["Minimize Keybind"] = "Phím ẩn / hiện",
			["Minimize key"] = "Phím ẩn / hiện",
			["Interface Settings"] = "Cài đặt giao diện",
		}

		local tbl12 = {}

		for k in pairs(tbl11) do
			local str4 = string.sub(k, 1, 1)
			tbl12[str4] = tbl12[str4] or {}
			table.insert(tbl12[str4], k)
		end

		for _, v3 in pairs(tbl12) do
			table.sort(v3, function(arg, arg2)
				return #arg > #arg2
			end)
		end

		local localization = {
			Language = tbl.Language,
			Entries = setmetatable({}, { __mode = "k" }),
			EnglishOptionRoots = setmetatable({}, { __mode = "k" }),
		}

		tbl2.Localization = localization

		localization.IsEnglishOption = function(arg, arg2)
			while arg do
				local v3 = localization.EnglishOptionRoots[arg]

				if v3 then
					if v3[arg2] then
						return true
					end
					local n5 = 0

					for match in string.gmatch(arg2, "[^,]+") do
						if not v3[string.match(match, "^%s*(.-)%s*$")] then
							return false
						end
						n5 += 1
					end

					return n5 > 0
				end

				arg = arg.Parent
			end

			return false
		end

		localization.KeepEnglishOptions = function(arg, arg2)
			if arg == nil then
				return
			end
			local tbl13 = {}

			for _, v3 in ipairs(arg2) do
				tbl13[v3] = true
			end

			localization.EnglishOptionRoots[arg] = tbl13

			for _, entry in pairs(localization.Entries) do
				entry.Render()
			end
		end

		localization.Translate = function(arg)
			if localization.Language ~= "Vietnamese" or arg == "English" or arg == "Vietnamese" then
				return arg
			end

			if tbl11[arg] then
				return tbl11[arg]
			end
			local tbl13 = {}
			local n5 = 1

			while n5 <= #arg do
				local v3 = ipairs
				local tbl14 = tbl12[string.sub(arg, n5, n5)] or {}
				local v4 = nil

				for _, v5 in v3(tbl14) do
					local n6 = n5 + #v5 - 1

					if string.sub(arg, n5, n6) == v5 and not string.match(string.sub(arg, n5 - 1, n5 - 1), "[%a_]") and not string.match(string.sub(arg, n6 + 1, n6 + 1), "[%a_]") then
						v4 = v5
						break
					else
						v4 = nil
					end
				end

				tbl13[#tbl13 + 1] = v4 and tbl11[v4] or string.sub(arg, n5, n5)
				n5 += v4 and #v4 or 1
			end

			return table.concat(tbl13)
		end

		localization.Bind = function(arg)
			if localization.Entries[arg] then
				return
			end

			if arg:FindFirstAncestor("GlobalChat") then
				return
			end
			local str4

			if arg:IsA("TextBox") then
				str4 = "PlaceholderText"
			else
				if not (arg:IsA("TextLabel") or arg:IsA("TextButton")) then
					return
				end
				str4 = "Text"
			end

			local tbl13 = { Property = str4, Source = arg[str4] }
			localization.Entries[arg] = tbl13

			local function render()
				tbl13.Rendered = localization.IsEnglishOption(arg, tbl13.Source) and tbl13.Source or localization.Translate(tbl13.Source)

				if arg[str4] ~= tbl13.Rendered then
					arg[str4] = tbl13.Rendered
				end
			end

			tbl13.Render = render
			local connection = nil

			local connection2 = arg:GetPropertyChangedSignal(str4):Connect(function()
				local v3 = arg[str4]
				if v3 == tbl13.Rendered then
					return
				end
				tbl13.Source = v3
				render()
			end)

			connection = arg.Destroying:Connect(function()
				localization.Entries[arg] = nil
				connection2:Disconnect()
				connection:Disconnect()
			end)

			render()
		end

		localization.Attach = function(arg)
			if arg == nil then
				return
			end
			connect(arg.DescendantAdded, localization.Bind)
			local now = os.clock()
			local n5 = 0

			for _, v3 in ipairs(arg:QueryDescendants("TextLabel, TextButton, TextBox")) do
				localization.Bind(v3)
				n5 += 1

				if tbl.ObfuscationCompatibility and (n5 >= 48 or os.clock() - now >= 0.002) then
					task.wait()
					now = os.clock()
					n5 = 0
				end
			end
		end

		localization.Set = function(language2)
			if language2 ~= "English" and language2 ~= "Vietnamese" then
				return false
			end
			local v3 = localization
			tbl.Language = language2
			v3.Language = language2
			tbl2.LanguagePreference.Save(language2)

			for _, entry in pairs(localization.Entries) do
				entry.Render()
			end

			return true
		end

		local v3 = Library:CreateWindow({
			Title = "Steal An Egg",
			SubTitle = "discord.gg/GJF5SBdp4a",
			TabWidth = 160,
			Size = UDim2.fromOffset(1280, 850),
			Resize = true,
			MinSize = Vector2.new(470, 380),
			Acrylic = false,
			Theme = "Vynixu",
			MinimizeKey = Enum.KeyCode.RightControl,
		})

		task.wait()

		pcall(function()
			local fluentRenewedStealAnEgg = (type(gethui) == "function" and gethui() or game:GetService("CoreGui")):FindFirstChild("FluentRenewed_Steal An Egg")

			if fluentRenewedStealAnEgg then
				fluentRenewedStealAnEgg.DisplayOrder = 10000
				fluentRenewedStealAnEgg.Parent = localPlayer:WaitForChild("PlayerGui")
			end
		end)

		local tbl13 = {
			Language = v3:CreateTab({ Title = "Language", Icon = "languages" }),
			GlobalChat = v3:CreateTab({ Title = "Global Chat", Icon = "message-circle" }),
			Farm = v3:CreateTab({ Title = "Farm", Icon = "route" }),
			Checker = v3:CreateTab({ Title = "Checker", Icon = "list-filter" }),
			Event = v3:CreateTab({ Title = "Event", Icon = "flower-2" }),
			Defense = v3:CreateTab({ Title = "Defense", Icon = "shield" }),
			PlayerSteal = v3:CreateTab({ Title = "Player Steal", Icon = "swords" }),
			Movement = v3:CreateTab({ Title = "Movement", Icon = "move" }),
			Upgrades = v3:CreateTab({ Title = "Upgrades", Icon = "trending-up" }),
			PetEgg = v3:CreateTab({ Title = "Pet & Egg", Icon = "backpack" }),
			TrailsGears = v3:CreateTab({ Title = "Trails & Gears", Icon = "package" }),
			Rewards = v3:CreateTab({ Title = "Rewards", Icon = "gift" }),
			Visuals = v3:CreateTab({ Title = "Visuals", Icon = "eye" }),
			Settings = v3:CreateTab({ Title = "Settings", Icon = "settings" }),
		}

		tbl2.IsTabVisible = function(arg)
			local container = arg and arg.Container

			while container ~= nil do
				if container:IsA("GuiObject") and not container.Visible then
					return false
				end

				if container:IsA("ScreenGui") and not container.Enabled then
					return false
				end
				container = container.Parent
			end

			return arg ~= nil and arg.Container ~= nil and arg.Container.Parent ~= nil
		end

		local vxezeGlobalChatApiKey = type(Environment.VxezeGlobalChatApiKey) == "string" and Environment.VxezeGlobalChatApiKey ~= "" and Environment.VxezeGlobalChatApiKey or "olwenth05dzkhoaito"

		if type(Library.CreateGlobalChat) == "function" then
			tbl2.GlobalChat = Library:CreateGlobalChat({
				Parent = tbl13.GlobalChat.Container,
				Inline = true,
				Endpoint = "https://vxezestudio.online/api/global-chat",
				ApiKey = vxezeGlobalChatApiKey,
				PollInterval = 3,
				Height = 330,
			})

			tbl2.GlobalChatRefresh = tbl2.GlobalChat.Refresh

			tbl2.GlobalChat.Refresh = function(arg, ...)
				if tbl2.IsTabVisible(tbl13.GlobalChat) then
					return tbl2.GlobalChatRefresh(arg, ...)
				end
			end
		else
			tbl13.GlobalChat:CreateParagraph("GlobalChatUnavailable", {
				Title = "Global Chat",
				Content = "The loaded Fluent.luau bundle does not include Global Chat.",
			})
		end

		setPhase("TabsReady")
		task.wait()
		Options = Library.Options
		local tbl14 = {}
		local obj2 = setmetatable({}, { __mode = "k" })

		local function fn72(arg)
			if not arg or not arg:IsA("ModuleScript") then
				return nil
			end

			if obj2[arg] then
				return obj2[arg]
			end
			local ok, result2 = pcall(require, arg)
			if ok and type(result2) == "table" then
				obj2[arg] = result2
				return result2
			end
			return nil
		end

		tbl2.ReadArenaCatalog = function()
			local data = ReplicatedStorage:FindFirstChild("Data") or ReplicatedStorage:FindFirstChild("Directory")
			local areas = data and data:FindFirstChild("Areas")
			local directory = fn72(areas)
			local tbl15 = {}
			local v4 = pairs
			directory = directory and directory.Directory or {}

			for k, v5 in v4(directory) do
				tbl15[k] = v5
			end

			areas = areas and areas:FindFirstChild("Configs")

			if areas then
				for _, child in ipairs(areas:GetChildren()) do
					local v5 = fn72(child)

					if v5 then
						tbl15[v5._id or child.Name] = v5
					end
				end
			end

			return tbl15
		end

		tbl2.SortArenaCatalog = function(arg)
			local tbl15 = {}

			for k, v4 in pairs(arg) do
				if type(k) == "string" and type(v4) == "table" then
					local rarity = v4.Rarity
					tbl15[#tbl15 + 1] = { Id = k, Order = type(rarity) == "table" and tonumber(rarity.RarityNumber) or math.huge }
				end
			end

			table.sort(tbl15, function(arg2, arg3)
				if arg2.Order ~= arg3.Order then
					return arg2.Order < arg3.Order
				end
				return arg2.Id < arg3.Id
			end)

			local tbl16 = {}
			local tbl17 = {}

			for _, v4 in ipairs(tbl15) do
				tbl16[#tbl16 + 1] = v4.Id
			end

			for i = #tbl15, 1, -1 do
				if tbl15[i].Order < math.huge then
					tbl17[#tbl17 + 1] = tbl15[i].Id
				end
			end

			for _, v4 in ipairs(tbl15) do
				if v4.Order == math.huge then
					tbl17[#tbl17 + 1] = v4.Id
				end
			end

			return tbl16, tbl17
		end

		tbl2.RefreshArenaCatalog = function()
			local v4, v5 = tbl2.SortArenaCatalog(tbl2.ReadArenaCatalog())
			if #v4 == 0 then
				return false
			end
			local flag = #v4 ~= #tbl14

			for i, v6 in ipairs(v4) do
				if tbl14[i] ~= v6 then
					flag = true
					break
				end
			end

			local flag2 = #v5 ~= #(tbl.ArenaPriority or {})

			for i, v6 in ipairs(v5) do
				if (tbl.ArenaPriority or {})[i] ~= v6 then
					flag2 = true
					break
				end
			end

			if flag2 then
				tbl.ArenaPriority = v5
			end

			if tbl.PreferredStealArena ~= v5[1] then
				tbl.PreferredStealArena = v5[1]
				flag2 = true
			end

			if flag then
				table.clear(tbl14)

				for _, v6 in ipairs(v4) do
					tbl14[#tbl14 + 1] = v6
				end

				local arenaDropdown = tbl2.ArenaDropdown

				if arenaDropdown then
					arenaDropdown:SetValues({ "All", table.unpack(tbl14) })
					tbl2.Localization.KeepEnglishOptions(arenaDropdown.Instance.Frame, arenaDropdown.Values)

					if tbl2.ArenaDropdownPopup then
						tbl2.Localization.KeepEnglishOptions(tbl2.ArenaDropdownPopup, arenaDropdown.Values)
					end
				end
			end

			if flag or flag2 then
				tbl2.MarkTargetDirty()
			end

			return flag or flag2
		end

		local arenaPriority = tbl.ArenaPriority or {}

		for i = #arenaPriority, 1, -1 do
			tbl14[#tbl14 + 1] = tbl.ArenaPriority[i]
		end

		tbl2.RefreshArenaCatalog()
		local tbl15 = {}

		for k in pairs(Assets.Directory) do
			table.insert(tbl15, k)
		end

		table.sort(tbl15)
		local tbl16 = {}
		local tbl17 = {}

		for _, v4 in pairs(Assets.Directory) do
			local rarity = v4.Rarity

			if rarity then
				rarity = rarity._id or rarity.DisplayName
			end

			if type(rarity) == "string" and not tbl17[rarity] then
				tbl17[rarity] = true
				table.insert(tbl16, rarity)
			end
		end

		table.sort(tbl16, function(arg, arg2)
			local v4 = RarityDirectory.Rarities[arg]
			local v5 = RarityDirectory.Rarities[arg2]
			local n5 = tonumber(v4 and v4.RarityNumber) or 0
			local n6 = tonumber(v5 and v5.RarityNumber) or 0
			if n5 ~= n6 then
				return n5 < n6
			end
			return arg < arg2
		end)

		local tbl18 = {}

		for k in pairs(Mutations.GetMutations()) do
			table.insert(tbl18, k)
		end

		table.sort(tbl18)
		local tbl19 = {}

		for k in pairs(Trails.Directory) do
			table.insert(tbl19, k)
		end

		table.sort(tbl19, function(arg, arg2)
			local v4 = Trails.Directory[arg]
			local v5 = Trails.Directory[arg2]
			local n5 = tonumber(v4 and v4.SpeedMultiplier) or 0
			local n6 = tonumber(v5 and v5.SpeedMultiplier) or 0
			if n5 ~= n6 then
				return n5 < n6
			end
			return arg < arg2
		end)

		task.wait()

		local function fn73(arg, arg2)
			local container = arg.Container
			local v4 = arg:CreateSection(arg2)
			arg.Container = container
			return v4
		end

		local function fn74(arg)
			local tbl20 = {}

			if type(arg) == "table" then
				for k, v4 in pairs(arg) do
					if type(k) == "number" then
						table.insert(tbl20, v4)
					elseif v4 == true then
						table.insert(tbl20, k)
					end
				end
			end

			table.sort(tbl20, function(arg2, arg3)
				return tostring(arg2) < tostring(arg3)
			end)

			return tbl20
		end

		local tbl20 = { LanguageSection = fn73(tbl13.Language, "Language") }

		tbl20.LanguageDropdown = tbl20.LanguageSection:CreateDropdown("PreferredLanguage", {
			Title = "Select Language",
			Description = "Change the interface language without changing your settings.",
			Values = { "English", "Vietnamese" },
			Multi = false,
			Default = tbl.Language,
		})

		tbl20.LanguageDropdown:OnChanged(function(arg)
			tbl2.Localization.Set(arg)
		end)

		local tbl21 = {
			BigEggOnly = "BigEggOnlyV14",
			SelectedArenas = "SelectedArenasV14",
			SelectedRarities = "SelectedRaritiesV15",
			MinEggScale = "MinEggScaleV14",
		}

		local function fn75(arg, arg2, arg3, arg4, arg5)
			local v4 = arg:CreateInput(tbl21[arg2] or arg2, {
				Title = arg3,
				Default = tostring(tbl[arg2]),
				Placeholder = string.format("%s - %s", arg4, arg5),
				Numeric = true,
				Finished = true,
			})

			v4:OnChanged(function(arg6)
				local num = tonumber(arg6)

				if num == nil or num ~= num or math.abs(num) == math.huge then
					num = tbl[arg2]
				end

				tbl[arg2] = math.clamp(num, arg4, arg5)

				if arg2 == "MinEggScale" then
					table.clear(tbl2.Blacklist)
					tbl2.TargetDirty = true
				end

				local str4 = tostring(tbl[arg2])

				if tostring(arg6) ~= str4 then
					v4:SetValue(str4)
				end
			end)

			return v4
		end

		local tbl22 = {}
		local tbl23 = {}
		local flag = false

		local function fn76(arg, arg2, arg3, arg4)
			local v4 = tbl23[arg3] or tbl2.FormatCompactAmount(tbl[arg3])
			tbl23[arg3] = v4
			local v5 = arg:CreateInput(arg2, { Title = arg4, Default = v4, Placeholder = "500K / 1M / 2.5M", Numeric = false, Finished = true })
			local tbl24 = tbl22[arg3] or {}
			tbl22[arg3] = tbl24
			tbl24[#tbl24 + 1] = v5

			v5:OnChanged(function(arg5)
				if flag then
					return
				end
				local v6 = tbl2.ParseCompactAmount(arg5)
				local flag2 = tbl23[arg3]

				if v6 ~= nil and v6 == v6 and v6 > 0 and v6 ~= math.huge then
					tbl[arg3] = v6
					tbl2.FarmCycleNextSellScanAt = 0
					flag2 = type(arg5) == "string" and arg5 or tbl2.FormatCompactAmount(v6)
					tbl23[arg3] = flag2
				end

				flag = true

				for _, v7 in ipairs(tbl24) do
					if v7 ~= v5 or tostring(arg5) ~= flag2 then
						v7:SetValue(flag2)
					end
				end

				flag = false
			end)

			return v5
		end

		local tbl24 = {
			Common = Color3.fromRGB(170, 170, 170),
			Uncommon = Color3.fromRGB(76, 205, 112),
			Rare = Color3.fromRGB(118, 77, 230),
			Epic = Color3.fromRGB(145, 66, 235),
			Legendary = Color3.fromRGB(255, 174, 50),
			Mythic = Color3.fromRGB(244, 65, 105),
			Secret = Color3.fromRGB(255, 72, 156),
			Divine = Color3.fromRGB(255, 223, 93),
			Eternal = Color3.fromRGB(84, 228, 255),
		}

		local function fn77(arg)
			local n5 = tonumber(arg) or 0

			for _, v4 in ipairs({
				{ 1e33, "Dc" },
				{ 1e30, "No" },
				{ 1e27, "Oc" },
				{ 1e24, "Sp" },
				{ 1e21, "Sx" },
				{ 1e18, "Qi" },
				{ 1e15, "Qa" },
				{ 1e12, "T" },
				{ 1e9, "B" },
				{ 1000000, "M" },
				{ 1000, "K" },
			}) do
				if v4[1] <= math.abs(n5) then
					local n6 = n5 / v4[1]
					return string.format("%." .. (n6 >= 100 and 0 or n6 >= 10 and 1 or 2) .. "f%s/s", n6, v4[2])
				end
			end

			return string.format("%.0f/s", n5)
		end

		tbl20.CheckerSection = fn73(tbl13.Checker, "Egg Checker")

		tbl20.CheckerToggle = tbl20.CheckerSection:CreateToggle("PrioritizeMoneyPerSecond", {
			Title = "Prioritize Money Per Second",
			Description = "Show all field eggs and prefer the highest Money/s after configured priorities.",
			Default = tbl.PrioritizeMoneyPerSecond,
		})

		tbl20.CheckerSelected = tbl20.CheckerSection:CreateParagraph("CheckerSelected", { Title = "Selected Egg", Content = "No egg selected" })

		tbl20.CheckerSection:CreateButton({
			Title = "Steal Selected",
			Callback = function()
				local selectedUid = tbl2.Checker.SelectedUid
				if type(selectedUid) ~= "string" then
					Library:Notify({ Title = "Egg Checker", Content = "Select an egg first.", Duration = 3 })
					return
				end

				runAction("STEAL_SELECTED", function()
					return stealSelectedEgg(selectedUid)
				end)
			end,
		})

		tbl20.CheckerSection:CreateButton({
			Title = "Refresh Checker",
			Callback = function()
				if type(tbl2.Checker.Refresh) == "function" then
					tbl2.Checker.Refresh(true)
				end
			end,
		})

		local playerGui = localPlayer:WaitForChild("PlayerGui")
		local eggStealCheckerUI = playerGui:FindFirstChild("EggStealCheckerUI")

		if eggStealCheckerUI ~= nil then
			eggStealCheckerUI:Destroy()
		end

		tbl20.CheckerGui = Instance.new("ScreenGui")
		tbl20.CheckerGui.Name = "EggStealCheckerUI"
		tbl20.CheckerGui.DisplayOrder = 999998
		tbl20.CheckerGui.IgnoreGuiInset = false
		tbl20.CheckerGui.ResetOnSpawn = false
		tbl20.CheckerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		tbl20.CheckerGui.Enabled = tbl.PrioritizeMoneyPerSecond
		tbl20.CheckerGui.Parent = playerGui
		tbl20.CheckerPanel = Instance.new("Frame")
		tbl20.CheckerPanel.Name = "EggCheckerWindow"
		tbl20.CheckerPanel.BackgroundColor3 = Color3.fromRGB(17, 17, 20)
		tbl20.CheckerPanel.BackgroundTransparency = 0.12
		tbl20.CheckerPanel.BorderSizePixel = 0
		tbl20.CheckerPanel.AnchorPoint = Vector2.new(1, 0)
		tbl20.CheckerPanel.Position = UDim2.new(1, -18, 0, 18)
		tbl20.CheckerPanel.Size = UDim2.fromOffset(410, 470)
		tbl20.CheckerPanel.Parent = tbl20.CheckerGui
		local uiCorner4 = Instance.new("UICorner")
		uiCorner4.CornerRadius = UDim.new(0, 9)
		uiCorner4.Parent = tbl20.CheckerPanel
		local uiStroke8 = Instance.new("UIStroke")
		uiStroke8.Color = Color3.fromRGB(62, 62, 70)
		uiStroke8.Transparency = 0.25
		uiStroke8.Parent = tbl20.CheckerPanel
		tbl20.CheckerHeader = Instance.new("TextButton")
		tbl20.CheckerHeader.Name = "DragHeader"
		tbl20.CheckerHeader.AutoButtonColor = false
		tbl20.CheckerHeader.BackgroundColor3 = Color3.fromRGB(25, 25, 29)
		tbl20.CheckerHeader.BorderSizePixel = 0
		tbl20.CheckerHeader.Size = UDim2.new(1, 0, 0, 44)
		tbl20.CheckerHeader.Text = ""
		tbl20.CheckerHeader.Parent = tbl20.CheckerPanel
		local uiCorner5 = Instance.new("UICorner")
		uiCorner5.CornerRadius = UDim.new(0, 9)
		uiCorner5.Parent = tbl20.CheckerHeader
		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = tbl20.CheckerHeader.BackgroundColor3
		frame2.BorderSizePixel = 0
		frame2.Position = UDim2.new(0, 0, 1, -9)
		frame2.Size = UDim2.new(1, 0, 0, 9)
		frame2.Parent = tbl20.CheckerHeader
		local textLabel3 = Instance.new("TextLabel")
		textLabel3.BackgroundTransparency = 1
		textLabel3.Font = Enum.Font.GothamBold
		textLabel3.Position = UDim2.fromOffset(14, 0)
		textLabel3.Size = UDim2.new(1, -120, 1, 0)
		textLabel3.Text = "Egg Checker"
		textLabel3.TextColor3 = Color3.fromRGB(240, 240, 244)
		textLabel3.TextSize = 16
		textLabel3.TextXAlignment = Enum.TextXAlignment.Left
		textLabel3.Parent = tbl20.CheckerHeader
		tbl20.CheckerCount = Instance.new("TextLabel")
		tbl20.CheckerCount.BackgroundTransparency = 1
		tbl20.CheckerCount.Font = Enum.Font.Gotham
		tbl20.CheckerCount.Position = UDim2.new(1, -116, 0, 0)
		tbl20.CheckerCount.Size = UDim2.fromOffset(78, 44)
		tbl20.CheckerCount.Text = "0 eggs"
		tbl20.CheckerCount.TextColor3 = Color3.fromRGB(145, 145, 155)
		tbl20.CheckerCount.TextSize = 12
		tbl20.CheckerCount.TextXAlignment = Enum.TextXAlignment.Right
		tbl20.CheckerCount.Parent = tbl20.CheckerHeader
		local textButton5 = Instance.new("TextButton")
		textButton5.Name = "Close"
		textButton5.AutoButtonColor = false
		textButton5.BackgroundTransparency = 1
		textButton5.Position = UDim2.new(1, -36, 0, 4)
		textButton5.Size = UDim2.fromOffset(32, 32)
		textButton5.Font = Enum.Font.GothamBold
		textButton5.Text = "×"
		textButton5.TextColor3 = Color3.fromRGB(190, 190, 198)
		textButton5.TextSize = 23
		textButton5.Parent = tbl20.CheckerHeader

		textButton5.Activated:Connect(function()
			tbl20.CheckerToggle:SetValue(false)
		end)

		tbl20.CheckerStandaloneSelected = Instance.new("TextLabel")
		tbl20.CheckerStandaloneSelected.Name = "SelectedEgg"
		tbl20.CheckerStandaloneSelected.BackgroundTransparency = 1
		tbl20.CheckerStandaloneSelected.Font = Enum.Font.Gotham
		tbl20.CheckerStandaloneSelected.Position = UDim2.fromOffset(12, 48)
		tbl20.CheckerStandaloneSelected.Size = UDim2.new(1, -24, 0, 24)
		tbl20.CheckerStandaloneSelected.Text = "Select a pet, then press Steal Selected"
		tbl20.CheckerStandaloneSelected.TextColor3 = Color3.fromRGB(160, 160, 170)
		tbl20.CheckerStandaloneSelected.TextSize = 12
		tbl20.CheckerStandaloneSelected.TextTruncate = Enum.TextTruncate.AtEnd
		tbl20.CheckerStandaloneSelected.TextXAlignment = Enum.TextXAlignment.Left
		tbl20.CheckerStandaloneSelected.Parent = tbl20.CheckerPanel
		tbl20.CheckerScroll = Instance.new("ScrollingFrame")
		tbl20.CheckerScroll.Name = "EggList"
		tbl20.CheckerScroll.BackgroundTransparency = 1
		tbl20.CheckerScroll.BorderSizePixel = 0
		tbl20.CheckerScroll.Position = UDim2.fromOffset(7, 75)
		tbl20.CheckerScroll.Size = UDim2.new(1, -14, 1, -126)
		tbl20.CheckerScroll.CanvasSize = UDim2.fromOffset(0, 0)
		tbl20.CheckerScroll.ScrollBarThickness = 4
		tbl20.CheckerScroll.ScrollBarImageColor3 = Color3.fromRGB(110, 110, 125)
		tbl20.CheckerScroll.Parent = tbl20.CheckerPanel
		tbl20.CheckerList = Instance.new("Frame")
		tbl20.CheckerList.Name = "Cards"
		tbl20.CheckerList.BackgroundTransparency = 1
		tbl20.CheckerList.Size = UDim2.new(1, -6, 0, 0)
		tbl20.CheckerList.AutomaticSize = Enum.AutomaticSize.Y
		tbl20.CheckerList.Parent = tbl20.CheckerScroll
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 7)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = tbl20.CheckerList

		uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			tbl20.CheckerScroll.CanvasSize = UDim2.fromOffset(0, uiListLayout.AbsoluteContentSize.Y + 4)
		end)

		local part = Instance.new("Part")
		part.Name = "CheckerSelectedEggESP"
		part.Anchored = true
		part.CanCollide = false
		part.CanQuery = false
		part.CanTouch = false
		part.CastShadow = false
		part.Size = Vector3.new(0.2, 0.2, 0.2)
		part.Transparency = 1
		part.Parent = getMarkerFolder()
		local part2 = Instance.new("Part")
		part2.Name = "SelectedRing"
		part2.Anchored = true
		part2.CanCollide = false
		part2.CanQuery = false
		part2.CanTouch = false
		part2.CastShadow = false
		part2.Shape = Enum.PartType.Cylinder
		part2.Material = Enum.Material.Neon
		part2.Color = Color3.fromRGB(255, 55, 91)
		part2.Size = Vector3.new(0.16, 7, 7)
		part2.Transparency = 0.48
		part2.Parent = getMarkerFolder()
		local part3 = Instance.new("Part")
		part3.Name = "SelectedBeam"
		part3.Anchored = true
		part3.CanCollide = false
		part3.CanQuery = false
		part3.CanTouch = false
		part3.CastShadow = false
		part3.Material = Enum.Material.Neon
		part3.Color = Color3.fromRGB(255, 55, 91)
		part3.Size = Vector3.new(0.12, 30, 0.12)
		part3.Transparency = 0.3
		part3.Parent = getMarkerFolder()
		local billboardGui = Instance.new("BillboardGui")
		billboardGui.Name = "SelectedLabel"
		billboardGui.AlwaysOnTop = true
		billboardGui.LightInfluence = 0
		billboardGui.MaxDistance = 10000
		billboardGui.Size = UDim2.fromOffset(260, 74)
		billboardGui.StudsOffset = Vector3.new(0, 5.2, 0)
		billboardGui.Enabled = false
		billboardGui.Parent = part
		local textLabel4 = Instance.new("TextLabel")
		textLabel4.Name = "Text"
		textLabel4.BackgroundColor3 = Color3.fromRGB(22, 17, 20)
		textLabel4.BackgroundTransparency = 0.15
		textLabel4.BorderSizePixel = 0
		textLabel4.Font = Enum.Font.GothamBold
		textLabel4.RichText = true
		textLabel4.Size = UDim2.fromScale(1, 1)
		textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
		textLabel4.TextSize = 14
		textLabel4.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
		textLabel4.TextStrokeTransparency = 0.25
		textLabel4.TextWrapped = true
		textLabel4.Parent = billboardGui
		local uiCorner6 = Instance.new("UICorner")
		uiCorner6.CornerRadius = UDim.new(0, 7)
		uiCorner6.Parent = textLabel4
		local uiStroke9 = Instance.new("UIStroke")
		uiStroke9.Color = Color3.fromRGB(255, 55, 91)
		uiStroke9.Thickness = 2
		uiStroke9.Transparency = 0.05
		uiStroke9.Parent = textLabel4
		tbl2.Checker.SelectedESP = { Marker = part, Ring = part2, Beam = part3, Billboard = billboardGui, Label = textLabel4 }

		local function fn78(arg)
			local selectedESPVisible = arg == true
			if tbl2.Checker.SelectedESPVisible == selectedESPVisible then
				return
			end
			tbl2.Checker.SelectedESPVisible = selectedESPVisible
			billboardGui.Enabled = selectedESPVisible
			part2.Transparency = selectedESPVisible and 0.48 or 1
			part3.Transparency = selectedESPVisible and 0.3 or 1
		end

		local function fn79(arg)
			if tbl2.Checker.Enabled ~= true or type(arg) ~= "table" then
				fn78(false)
				return false
			end
			local v4 = getAreaEggRecord(arg.Uid)
			if type(v4) ~= "table" or v4.State ~= "Slot" and v4.State ~= "Dropped" or typeof(v4.BottomCFrame) ~= "CFrame" then
				fn78(false)
				return false
			end
			local selectedESPState = tbl2.Checker.SelectedESPState
			local position = v4.BottomCFrame.Position

			if selectedESPState.Position ~= position then
				selectedESPState.Position = position
				part.CFrame = CFrame.new(position)
				part2.CFrame = CFrame.new(position + Vector3.new(0, 0.15, 0)) * CFrame.Angles(0, 0, 1.5707963267948966)
				part3.CFrame = CFrame.new(position + Vector3.new(0, 15, 0))
			end

			local v5
			v5, v5 = getCharacter()
			local distance = math.floor((v5 and (position - v5.Position).Magnitude or 0) + 0.5)

			if selectedESPState.Uid ~= arg.Uid or selectedESPState.Name ~= arg.Name or selectedESPState.AreaId ~= arg.AreaId or selectedESPState.Rate ~= arg.Rate or selectedESPState.Distance ~= distance then
				selectedESPState.Uid = arg.Uid
				selectedESPState.Name = arg.Name
				selectedESPState.AreaId = arg.AreaId
				selectedESPState.Rate = arg.Rate
				selectedESPState.Distance = distance
				textLabel4.Text = string.format("<font color=\"#FF375B\">SELECTED</font>  %s\n%s | %s | %d studs", arg.Name, arg.AreaId, fn77(arg.Rate), distance)
			end

			fn78(true)
			return true
		end

		local function fn80(parent, backgroundColor3, arg, arg2)
			parent.AutoButtonColor = false
			parent.BackgroundColor3 = backgroundColor3
			parent.BorderSizePixel = 0
			parent.AnchorPoint = Vector2.new(1, 1)
			parent.Position = UDim2.new(1, arg2, 1, -8)
			parent.Size = UDim2.fromOffset(arg, 36)
			parent.Font = Enum.Font.GothamBold
			parent.TextColor3 = Color3.fromRGB(245, 245, 248)
			parent.TextSize = 13
			parent.Parent = tbl20.CheckerPanel
			local uiCorner7 = Instance.new("UICorner")
			uiCorner7.CornerRadius = UDim.new(0, 7)
			uiCorner7.Parent = parent
		end

		tbl20.CheckerStealButton = Instance.new("TextButton")
		tbl20.CheckerStealButton.Name = "StealSelected"
		tbl20.CheckerStealButton.Text = "Steal Selected"
		fn80(tbl20.CheckerStealButton, Color3.fromRGB(215, 54, 85), 248, -8)

		tbl20.CheckerStealButton.Activated:Connect(function()
			local selectedUid = tbl2.Checker.SelectedUid
			if type(selectedUid) ~= "string" then
				Library:Notify({ Title = "Egg Checker", Content = "Select an egg first.", Duration = 3 })
				return
			end

			runAction("STEAL_SELECTED", function()
				return stealSelectedEgg(selectedUid)
			end)
		end)

		tbl20.CheckerRefreshButton = Instance.new("TextButton")
		tbl20.CheckerRefreshButton.Name = "Refresh"
		tbl20.CheckerRefreshButton.Text = "Refresh"
		fn80(tbl20.CheckerRefreshButton, Color3.fromRGB(54, 57, 66), 138, -264)

		tbl20.CheckerRefreshButton.Activated:Connect(function()
			tbl2.Checker.Refresh(true)
		end)

		local flag2 = false
		local v4 = nil
		local position = nil
		local position2 = nil

		tbl20.CheckerHeader.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				flag2 = true
				position = input.Position
				position2 = tbl20.CheckerPanel.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						flag2 = false
					end
				end)
			end
		end)

		tbl20.CheckerHeader.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				v4 = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if flag2 and input == v4 and position ~= nil and position2 ~= nil then
				local n5 = input.Position - position
				local udim2 = UDim2.new(position2.X.Scale, position2.X.Offset + n5.X, position2.Y.Scale, position2.Y.Offset + n5.Y)
				local currentCamera = Workspace.CurrentCamera
				currentCamera = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)
				local absoluteSize = tbl20.CheckerPanel.AbsoluteSize
				local n6 = udim2.X.Scale * currentCamera.X + udim2.X.Offset
				local n7 = udim2.Y.Scale * currentCamera.Y + udim2.Y.Offset
				local n8 = math.clamp(n6, absoluteSize.X + 6, math.max(absoluteSize.X + 6, currentCamera.X - 6))
				local n9 = math.clamp(n7, 6, math.max(6, currentCamera.Y - absoluteSize.Y - 6))
				tbl20.CheckerPanel.Position = UDim2.fromOffset(n8, n9)
			end
		end)

		local color = Color3.fromRGB(255, 70, 104)
		local color2 = Color3.fromRGB(52, 52, 58)
		local color3 = Color3.fromRGB(39, 29, 34)
		local color4 = Color3.fromRGB(30, 30, 34)
		local color5 = Color3.fromRGB(235, 235, 240)
		local color6 = Color3.fromRGB(160, 160, 170)

		local function fn81(arg)
			if arg ~= true and tbl2.Checker.SelectionInitialized and tbl2.Checker.LastSelectionUid == tbl2.Checker.SelectedUid then
				return
			end
			tbl2.Checker.SelectionInitialized = true
			tbl2.Checker.LastSelectionUid = tbl2.Checker.SelectedUid
			local entry = nil

			for k, card in pairs(tbl2.Checker.Cards) do
				local visible = k == tbl2.Checker.SelectedUid

				if card.Accent.Visible ~= visible then
					card.Accent.Visible = visible
				end

				local v5 = visible and color or color2
				local thickness = visible and 2 or 1
				local v6 = visible and color3 or color4

				if card.Stroke.Color ~= v5 then
					card.Stroke.Color = v5
				end

				if card.Stroke.Thickness ~= thickness then
					card.Stroke.Thickness = thickness
				end

				if card.Frame.BackgroundColor3 ~= v6 then
					card.Frame.BackgroundColor3 = v6
				end

				if visible then
					entry = card.Entry
				end
			end

			if entry ~= nil then
				local text = string.format("%s | %s | %s | %s", entry.Name, entry.Rarity, entry.AreaId, fn77(entry.Rate))
				tbl20.CheckerSelected:SetValue(text)

				if tbl20.CheckerStandaloneSelected.Text ~= text then
					tbl20.CheckerStandaloneSelected.Text = text
				end

				if tbl20.CheckerStandaloneSelected.TextColor3 ~= color5 then
					tbl20.CheckerStandaloneSelected.TextColor3 = color5
				end

				fn79(entry)
			else
				tbl2.Checker.SelectedUid = nil
				tbl2.Checker.LastSelectionUid = nil
				tbl20.CheckerSelected:SetValue("No egg selected")

				if tbl20.CheckerStandaloneSelected.Text ~= "Select a pet, then press Steal Selected" then
					tbl20.CheckerStandaloneSelected.Text = "Select a pet, then press Steal Selected"
				end

				if tbl20.CheckerStandaloneSelected.TextColor3 ~= color6 then
					tbl20.CheckerStandaloneSelected.TextColor3 = color6
				end

				fn79(nil)
			end
		end

		local function fn82(layoutOrder)
			local textButton6 = Instance.new("TextButton")
			textButton6.Name = "EggCardSlot_" .. tostring(layoutOrder)
			textButton6.AutoButtonColor = false
			textButton6.BackgroundColor3 = Color3.fromRGB(30, 30, 34)
			textButton6.BorderSizePixel = 0
			textButton6.LayoutOrder = layoutOrder
			textButton6.Size = UDim2.new(1, -2, 0, 72)
			textButton6.Text = ""
			textButton6.Visible = false
			textButton6.Parent = tbl20.CheckerList
			local uiCorner7 = Instance.new("UICorner")
			uiCorner7.CornerRadius = UDim.new(0, 8)
			uiCorner7.Parent = textButton6
			local uiStroke10 = Instance.new("UIStroke")
			uiStroke10.Color = Color3.fromRGB(52, 52, 58)
			uiStroke10.Transparency = 0.05
			uiStroke10.Parent = textButton6
			local frame3 = Instance.new("Frame")
			frame3.Name = "Selected"
			frame3.BackgroundColor3 = Color3.fromRGB(255, 70, 104)
			frame3.BorderSizePixel = 0
			frame3.Position = UDim2.new(0, 4, 0.5, 0)
			frame3.AnchorPoint = Vector2.new(0, 0.5)
			frame3.Size = UDim2.fromOffset(4, 48)
			frame3.Visible = false
			frame3.Parent = textButton6
			local uiCorner8 = Instance.new("UICorner")
			uiCorner8.CornerRadius = UDim.new(1, 0)
			uiCorner8.Parent = frame3
			local frame4 = Instance.new("Frame")
			frame4.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
			frame4.BorderSizePixel = 0
			frame4.Position = UDim2.fromOffset(13, 8)
			frame4.Size = UDim2.fromOffset(56, 56)
			frame4.Parent = textButton6
			local uiCorner9 = Instance.new("UICorner")
			uiCorner9.CornerRadius = UDim.new(0, 7)
			uiCorner9.Parent = frame4
			local imageLabel7 = Instance.new("ImageLabel")
			imageLabel7.BackgroundTransparency = 1
			imageLabel7.Position = UDim2.fromOffset(4, 4)
			imageLabel7.Size = UDim2.new(1, -8, 1, -8)
			imageLabel7.ScaleType = Enum.ScaleType.Fit
			imageLabel7.Parent = frame4
			local textLabel5 = Instance.new("TextLabel")
			textLabel5.BackgroundTransparency = 1
			textLabel5.Font = Enum.Font.GothamMedium
			textLabel5.Position = UDim2.fromOffset(81, 10)
			textLabel5.Size = UDim2.new(1, -190, 0, 24)
			textLabel5.TextColor3 = Color3.fromRGB(235, 235, 238)
			textLabel5.TextSize = 16
			textLabel5.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel5.TextXAlignment = Enum.TextXAlignment.Left
			textLabel5.Parent = textButton6
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.BackgroundTransparency = 1
			textLabel6.Font = Enum.Font.GothamBold
			textLabel6.Position = UDim2.fromOffset(81, 39)
			textLabel6.Size = UDim2.new(1, -190, 0, 18)
			textLabel6.TextSize = 12
			textLabel6.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel6.TextXAlignment = Enum.TextXAlignment.Left
			textLabel6.Parent = textButton6
			local textLabel7 = Instance.new("TextLabel")
			textLabel7.BackgroundTransparency = 1
			textLabel7.Font = Enum.Font.GothamBold
			textLabel7.Position = UDim2.new(1, -108, 0, 0)
			textLabel7.Size = UDim2.new(0, 96, 1, 0)
			textLabel7.TextColor3 = Color3.fromRGB(99, 211, 121)
			textLabel7.TextSize = 14
			textLabel7.TextXAlignment = Enum.TextXAlignment.Right
			textLabel7.Parent = textButton6

			local tbl25 = {
				Frame = textButton6,
				Accent = frame3,
				Stroke = uiStroke10,
				IconBack = frame4,
				Icon = imageLabel7,
				NameLabel = textLabel5,
				RarityLabel = textLabel6,
				RateLabel = textLabel7,
				Entry = nil,
			}

			textButton6.Activated:Connect(function()
				local entry = tbl25.Entry

				if entry ~= nil then
					tbl2.Checker.SelectedUid = entry.Uid
					fn81()
				end
			end)

			table.insert(tbl2.Checker.CardPool, tbl25)
			return tbl25
		end

		local color7 = Color3.fromRGB(170, 150, 210)

		local function fn83(arg, entry, layoutOrder)
			arg.Entry = entry

			if arg.Frame.LayoutOrder ~= layoutOrder then
				arg.Frame.LayoutOrder = layoutOrder
			end

			local visible = entry ~= nil

			if arg.Frame.Visible ~= visible then
				arg.Frame.Visible = visible
			end

			if entry == nil then
				if arg.Accent.Visible then
					arg.Accent.Visible = false
				end

				return
			end

			local name = "Egg_" .. tostring(entry.Uid)
			local icon = entry.Icon or ""
			local text = string.format("%s  •  %s", entry.Rarity, entry.AreaId)
			local v5 = tbl24[entry.Rarity] or color7
			local v6 = fn77(entry.Rate)

			if arg.Frame.Name ~= name then
				arg.Frame.Name = name
			end

			if arg.Icon.Image ~= icon then
				arg.Icon.Image = icon
			end

			if arg.NameLabel.Text ~= entry.Name then
				arg.NameLabel.Text = entry.Name
			end

			if arg.RarityLabel.Text ~= text then
				arg.RarityLabel.Text = text
			end

			if arg.RarityLabel.TextColor3 ~= v5 then
				arg.RarityLabel.TextColor3 = v5
			end

			if arg.RateLabel.Text ~= v6 then
				arg.RateLabel.Text = v6
			end

			tbl2.Checker.Cards[entry.Uid] = arg
		end

		for i = 1, 96 do
			fn82(i)
		end

		local function fn84()
			local currentCamera = Workspace.CurrentCamera
			currentCamera = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)
			local touchEnabled = UserInputService.TouchEnabled or currentCamera.X <= 700 or currentCamera.Y <= 500
			local n5 = touchEnabled and 8 or 18
			local n6 = touchEnabled and math.clamp(currentCamera.X - n5 * 2, 250, 310) or 410
			local n7 = touchEnabled and math.clamp(math.floor(currentCamera.Y * 0.38), 190, 300) or 470
			local n8 = touchEnabled and 36 or 44
			local n9 = touchEnabled and 38 or 48
			local n10 = touchEnabled and 20 or 24
			local n11 = touchEnabled and 60 or 75
			local n12 = touchEnabled and 102 or 126
			local n13 = touchEnabled and 30 or 36
			local n14 = touchEnabled and -6 or -8
			local n15 = touchEnabled and 82 or 138
			local n16 = touchEnabled and 6 or 8
			local n17 = touchEnabled and n6 - n15 - n5 * 2 - n16 or 248
			tbl20.CheckerPanel.Size = UDim2.fromOffset(n6, n7)
			tbl20.CheckerHeader.Size = UDim2.new(1, 0, 0, n8)
			textLabel3.Position = UDim2.fromOffset(touchEnabled and 10 or 14, 0)
			textLabel3.Size = UDim2.new(1, touchEnabled and -104 or -120, 1, 0)
			textLabel3.TextSize = touchEnabled and 14 or 16
			tbl20.CheckerCount.Position = UDim2.new(1, touchEnabled and -96 or -116, 0, 0)
			tbl20.CheckerCount.Size = UDim2.fromOffset(touchEnabled and 60 or 78, n8)
			tbl20.CheckerCount.TextSize = touchEnabled and 10 or 12
			textButton5.Position = UDim2.new(1, touchEnabled and -32 or -36, 0, touchEnabled and 2 or 4)
			textButton5.Size = UDim2.fromOffset(touchEnabled and 30 or 32, touchEnabled and 30 or 32)
			textButton5.TextSize = touchEnabled and 20 or 23
			tbl20.CheckerStandaloneSelected.Position = UDim2.fromOffset(touchEnabled and 9 or 12, n9)
			tbl20.CheckerStandaloneSelected.Size = UDim2.new(1, touchEnabled and -18 or -24, 0, n10)
			tbl20.CheckerStandaloneSelected.TextSize = touchEnabled and 10 or 12
			tbl20.CheckerScroll.Position = UDim2.fromOffset(touchEnabled and 5 or 7, n11)
			tbl20.CheckerScroll.Size = UDim2.new(1, touchEnabled and -10 or -14, 1, -n12)
			tbl20.CheckerScroll.ScrollBarThickness = touchEnabled and 3 or 4
			uiListLayout.Padding = UDim.new(0, touchEnabled and 5 or 7)
			tbl20.CheckerStealButton.Position = UDim2.new(1, -n5, 1, n14)
			tbl20.CheckerStealButton.Size = UDim2.fromOffset(n17, n13)
			tbl20.CheckerStealButton.TextSize = touchEnabled and 11 or 13
			tbl20.CheckerRefreshButton.Position = UDim2.new(1, -(n5 + n17 + n16), 1, n14)
			tbl20.CheckerRefreshButton.Size = UDim2.fromOffset(n15, n13)
			tbl20.CheckerRefreshButton.TextSize = touchEnabled and 11 or 13

			for _, v5 in ipairs(tbl2.Checker.CardPool) do
				v5.Frame.Size = UDim2.new(1, -2, 0, touchEnabled and 56 or 72)
				v5.Accent.Size = UDim2.fromOffset(touchEnabled and 3 or 4, touchEnabled and 38 or 48)
				v5.IconBack.Position = UDim2.fromOffset(touchEnabled and 9 or 13, touchEnabled and 7 or 8)
				v5.IconBack.Size = UDim2.fromOffset(touchEnabled and 42 or 56, touchEnabled and 42 or 56)
				v5.NameLabel.Position = UDim2.fromOffset(touchEnabled and 60 or 81, touchEnabled and 7 or 10)
				v5.NameLabel.Size = UDim2.new(1, touchEnabled and -145 or -190, 0, touchEnabled and 20 or 24)
				v5.NameLabel.TextSize = touchEnabled and 13 or 16
				v5.RarityLabel.Position = UDim2.fromOffset(touchEnabled and 60 or 81, touchEnabled and 30 or 39)
				v5.RarityLabel.Size = UDim2.new(1, touchEnabled and -145 or -190, 0, touchEnabled and 16 or 18)
				v5.RarityLabel.TextSize = touchEnabled and 10 or 12
				v5.RateLabel.Position = UDim2.new(1, touchEnabled and -82 or -108, 0, 0)
				v5.RateLabel.Size = UDim2.new(0, touchEnabled and 74 or 96, 1, 0)
				v5.RateLabel.TextSize = touchEnabled and 11 or 14
			end

			local vector2 = Vector2.new(n6, n7)
			local position3 = tbl20.CheckerPanel.Position
			local n18 = position3.X.Scale * currentCamera.X + position3.X.Offset
			local n19 = position3.Y.Scale * currentCamera.Y + position3.Y.Offset
			local n20 = math.clamp(n18, vector2.X + n5, math.max(vector2.X + n5, currentCamera.X - n5))
			local n21 = math.clamp(n19, n5, math.max(n5, currentCamera.Y - vector2.Y - n5))
			tbl20.CheckerPanel.Position = UDim2.fromOffset(n20, n21)
		end

		fn84()

		if Workspace.CurrentCamera ~= nil then
			connect(Workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), fn84)
		end

		connect(Workspace:GetPropertyChangedSignal("CurrentCamera"), function()
			task.defer(fn84)
		end)

		tbl2.Checker.Refresh = function(arg)
			if not tbl2.Checker.Enabled and arg ~= true then
				return false, "Checker disabled"
			end
			local v5 = getSnapshot()
			if v5 == nil then
				return false, "Snapshot unavailable"
			end
			local checker = tbl2.Checker
			checker.SignatureGeneration = checker.SignatureGeneration + 1
			local signatureGeneration = tbl2.Checker.SignatureGeneration
			local signatureCache = tbl2.Checker.SignatureCache
			local flag3 = arg == true
			local lastCount = 0

			for k, record in pairs(v5.Records) do
				local flag4 = type(record) == "table"

				if flag4 then
					flag4 = type(record.Uid or k) == "string"
				end

				if flag4 and (record.State == "Slot" or record.State == "Dropped") and typeof(record.BottomCFrame) == "CFrame" then
					lastCount += 1
					k = record.Uid or k
					local rate = getMoneyPerSecond(record) or 0
					local v6 = signatureCache[k]
					local tbl25

					if v6 == nil then
						tbl25 = {}
						signatureCache[k] = tbl25
						flag3 = true
					elseif v6.Version ~= record.Version or v6.State ~= record.State or v6.Rate ~= rate then
						flag3 = true
						tbl25 = v6
					else
						tbl25 = v6
					end

					tbl25.Version = record.Version
					tbl25.State = record.State
					tbl25.Rate = rate
					tbl25.Seen = signatureGeneration
				end
			end

			for k, v6 in pairs(signatureCache) do
				if v6.Seen ~= signatureGeneration then
					signatureCache[k] = nil
					flag3 = true
				end
			end

			if tbl2.Checker.LastCount ~= lastCount then
				tbl2.Checker.LastCount = lastCount
				tbl20.CheckerCount.Text = tostring(lastCount) .. " eggs"
			end

			tbl2.Checker.Dirty = false
			if not flag3 then
				fn81(false)
				return true
			end
			local v6 = table.create(lastCount)

			for k, record in pairs(v5.Records) do
				local flag4 = type(record) == "table"

				if flag4 then
					flag4 = type(record.Uid or k) == "string"
				end

				if flag4 and (record.State == "Slot" or record.State == "Dropped") and typeof(record.BottomCFrame) == "CFrame" then
					local uid = record.Uid or k
					local v7 = signatureCache[uid]
					local icon = getAssetConfig(record)
					local str4 = select(1, getRecordRarityId(record)) or "Unknown"
					local n5 = #v6 + 1

					local tbl25 = {
						Uid = uid,
						Record = record,
						Name = getEggDisplayName(record),
						Rarity = tostring(str4),
						AreaId = tostring(record.AreaId or "Unknown"),
						Rate = v7 and v7.Rate or getMoneyPerSecond(record) or 0,
					}

					if icon then
						local icon2 = icon.Icon

						if icon2 then
							icon = icon2
						else
							icon = icon.Egg and icon.Egg.Icon
						end
					end

					tbl25.Icon = icon or nil
					v6[n5] = tbl25
				end
			end

			table.sort(v6, function(arg2, arg3)
				if arg2.Rate ~= arg3.Rate then
					return arg2.Rate > arg3.Rate
				end
				local v7 = tbl2.CompareTargetPriority(arg2.Record, arg3.Record)
				if v7 ~= 0 then
					return v7 > 0
				end

				if arg2.Name ~= arg3.Name then
					return arg2.Name < arg3.Name
				end
				return arg2.Uid < arg3.Uid
			end)

			tbl2.Checker.Entries = v6
			tbl2.Checker.LastSignature = signatureGeneration
			table.clear(tbl2.Checker.Cards)
			local flag4 = false

			for i, v7 in ipairs(tbl2.Checker.CardPool) do
				local v8 = v6[i]
				fn83(v7, v8, i)

				if v8 ~= nil and v8.Uid == tbl2.Checker.SelectedUid then
					flag4 = true
				end
			end

			for i = #tbl2.Checker.CardPool + 1, #v6 do
				if v6[i].Uid == tbl2.Checker.SelectedUid then
					flag4 = true
				end
			end

			if not flag4 then
				tbl2.Checker.SelectedUid = nil
			end

			fn81(true)
			return true
		end

		tbl2.Checker.SetEnabled = function(arg)
			local enabled = arg == true
			tbl2.Checker.Enabled = enabled
			tbl20.CheckerGui.Enabled = enabled

			if not enabled then
				fn78(false)
			end

			if enabled then
				tbl2.Checker.Dirty = true

				task.defer(function()
					if tbl2.Alive and tbl2.Checker.Enabled then
						tbl2.Checker.Refresh(true)
					end
				end)
			end
		end

		tbl2.Checker.SetEnabled(tbl.PrioritizeMoneyPerSecond)

		task.spawn(function()
			task.wait(1.1)
			local n5 = os.clock() + 60

			while tbl2.Alive do
				if tbl2.Checker.Enabled then
					tbl2.Checker.Refresh(tbl2.Checker.Dirty)
				end

				local now = os.clock()

				if now >= n5 and not tbl2.IsDeliveryCarry() then
					table.clear(tbl2.TargetRateCache)

					for k, v5 in pairs(tbl2.Blacklist) do
						if v5 <= now then
							tbl2.Blacklist[k] = nil
						end
					end

					for k, v5 in pairs(tbl2.PrimerBlacklist) do
						if v5 <= now then
							tbl2.PrimerBlacklist[k] = nil
						end
					end

					for k, v5 in pairs(tbl2.PlayerSteal.RetryAt) do
						if v5 <= now then
							tbl2.PlayerSteal.RetryAt[k] = nil
						end
					end

					for k, v5 in pairs(tbl2.DroppedRecovery) do
						local flag3 = k ~= tbl2.ActiveDroppedRecoveryUid

						if flag3 then
							flag3 = now - (v5.LastAttemptAt or 0) >= 90
						end

						if flag3 then
							tbl2.DroppedRecovery[k] = nil
						end
					end

					table.clear(tbl2.PrimerFailureCounts)
					n5 = now + 60
				end

				task.wait(tbl2.Checker.Enabled and tbl.EggCheckerRefreshInterval or 5)
			end
		end)

		task.spawn(function()
			task.wait(0.04)

			while tbl2.Alive do
				if tbl2.Checker.Enabled then
					local selectedUid = tbl2.Checker.SelectedUid
					local flag3 = type(selectedUid) == "string" and tbl2.Checker.Cards[selectedUid] or nil

					if flag3 ~= nil then
						fn79(flag3.Entry)
					else
						fn78(false)
					end
				end

				task.wait(tbl2.Checker.Enabled and 0.1 or 0.5)
			end
		end)

		tbl20.TPWalkSection = fn73(tbl13.Movement, "Walk Speed")
		tbl20.TPWalkToggle = tbl20.TPWalkSection:CreateToggle("TPWalkEnabled", { Title = "Walk Speed", Default = tbl.TPWalkEnabled })

		tbl20.TPWalkSpeedInput = tbl20.TPWalkSection:CreateInput("TPWalkSpeed", {
			Title = "Walk Speed Multiplier",
			Default = tostring(tbl.TPWalkSpeed),
			Placeholder = "Nhập tốc độ...",
			Numeric = true,
		})

		tbl20.TPWalkStepCapInput = tbl20.TPWalkSection:CreateInput("TPWalkStepCap", {
			Title = "Safe Step Cap",
			Default = tostring(tbl.TPWalkStepCap),
			Placeholder = "Nhập step cap...",
			Numeric = true,
		})

		tbl20.TPWalkSection:Collapse()
		tbl20.AutoStealModeSection = fn73(tbl13.Farm, "Mode Auto Steal Egg")

		tbl20.StealMovementDropdown = tbl20.AutoStealModeSection:CreateDropdown("StealMovementMode", {
			Title = "Steal Movement Mode",
			Description = "Choose Tween or TP for the next steal attempt. Return always uses tween.",
			Values = { "Tween", "TP" },
			Multi = false,
			Default = tbl.StealMovementMode,
		})

		tbl20.StealMovementDropdown:OnChanged(function(arg)
			tbl.StealMovementMode = arg == "TP" and "TP" or "Tween"
			tbl.StealTeleportToEgg = tbl.StealMovementMode == "TP"
		end)

		tbl20.StealTweenRideDropdown = tbl20.AutoStealModeSection:CreateDropdown("StealTweenRideMode", {
			Title = "Return Tween Visual",
			Description = "Choose whether to ride a visual guard clone while bringing an egg home. Mobile defaults to No Ride.",
			Values = { "No Ride", "Ride Guard" },
			Multi = false,
			Default = tbl.StealTweenRideMode,
		})

		tbl20.StealTweenRideDropdown:OnChanged(function(arg)
			tbl.StealTweenRideMode = arg == "Ride Guard" and "Ride Guard" or "No Ride"
			tbl.StealRideVisual = tbl.StealTweenRideMode == "Ride Guard"

			if not tbl.StealRideVisual then
				tbl2.ClearPreparedRide()
				local activeRide = tbl2.ActiveRide

				if activeRide then
					activeRide.Stop()

					if tbl2.ActiveRide == activeRide then
						tbl2.ActiveRide = nil
					end
				end

				if tbl2.ClearRideRigPool then
					tbl2.ClearRideRigPool()
				end
			end
		end)

		tbl20.FarmCycleSection = fn73(tbl13.Farm, "Auto Farm Cycle")

		tbl20.FarmCycleToggle = tbl20.FarmCycleSection:CreateToggle("AutoFarmCycle", {
			Title = "Auto Steal / Sell / Treadmill",
			Description = "Prioritize Eternal, Divine and Secret eggs. When Auto Hatch is enabled, hatch all ready eggs before Auto Place; process one hatch per turn so rare eggs can interrupt. Then place pending eggs, steal normally, sell and train.",
			Default = tbl.AutoFarmCycle,
		})

		tbl20.FarmCyclePetAmountInput = fn76(tbl20.FarmCycleSection, "FarmCycleSellPetAmount", "SellPetAmount", "Sell Pet At Most ($/s)")
		tbl20.FarmCycleEggAmountInput = fn76(tbl20.FarmCycleSection, "FarmCycleSellEggAmount", "SellEggAmount", "Sell Egg At Most ($/s)")

		FarmCycleParagraph = tbl20.FarmCycleSection:CreateParagraph("FarmCycleStatus", {
			Title = "Farm Cycle Status",
			Content = [[Status: Disabled
Farm service: None

Priority:
1. Eternal / Divine / Secret
2. Hatch all ready eggs
3. Place pending eggs
4. Normal steal
5. Sell / Treadmill]],
		})

		task.wait()
		tbl20.FarmAutomation = fn73(tbl13.Farm, "Steal Automation")
		tbl20.AutoStealToggle = tbl20.FarmAutomation:CreateToggle("AutoSteal", { Title = "Auto Steal Egg", Default = tbl.AutoSteal })

		tbl20.AntiHitStealToggle = tbl20.FarmAutomation:CreateToggle("AntiHitSteal", {
			Title = "Anti-hit steal and freeze boss",
			Description = "Do not use with Auto Steal Egg. This feature automatically collects eggs without the boss attacking or chasing you.",
			Default = tbl.AntiHitSteal,
		})

		tbl20.BigEggToggle = tbl20.FarmAutomation:CreateToggle("BigEggOnlyV14", { Title = "Steal Big Eggs Only", Default = tbl.BigEggOnly })
		tbl20.MinEggScaleInput = fn75(tbl20.FarmAutomation, "MinEggScale", "Minimum Egg Size (1-20)", 1, 20)
		tbl20.AutoDropHeldToggle = tbl20.FarmAutomation:CreateToggle("AutoDropHeldEgg", { Title = "Auto Drop Held Egg", Default = tbl.AutoDropHeldEgg })

		tbl20.ArenaDropdown = tbl20.FarmAutomation:CreateDropdown("SelectedArenasV14", {
			Title = "Select Arena",
			Description = "All includes every arena; rarity and size filters still apply.",
			Values = { "All", table.unpack(tbl14) },
			Multi = true,
			Default = { "All" },
		})

		tbl2.Localization.KeepEnglishOptions(tbl20.ArenaDropdown.Instance.Frame, tbl20.ArenaDropdown.Values)
		tbl2.ArenaDropdown = tbl20.ArenaDropdown
		tbl2.ArenaDropdownPopup = Library.OpenFrames[#Library.OpenFrames]

		task.spawn(function()
			task.wait(0.65)

			while tbl2.Alive do
				task.wait(2)

				if tbl2.Alive then
					if (tbl2.IsTabVisible(tbl13.Farm) or tbl.AutoSteal or tbl.AutoFarmCycle) and not tbl2.IsDeliveryCarry() then
						local ok, result2 = pcall(tbl2.RefreshArenaCatalog)
						tbl2.ArenaCatalogError = not ok and tostring(result2) or nil
					end

					continue
				end

				break
			end
		end)

		tbl2.Localization.KeepEnglishOptions(Library.OpenFrames[#Library.OpenFrames], tbl20.ArenaDropdown.Values)

		tbl20.RarityDropdown = tbl20.FarmAutomation:CreateDropdown("SelectedRaritiesV15", {
			Title = "Steal Egg",
			Description = "No selection = Divine, Eternal, Secret; money/s and arena break rarity ties. Selected rarities filter targets.",
			Values = { "All", "Divine", "Eternal", "Secret" },
			Multi = true,
			Default = fn74(tbl.SelectedRarities),
		})

		tbl2.Localization.KeepEnglishOptions(tbl20.RarityDropdown.Instance.Frame, tbl20.RarityDropdown.Values)
		tbl2.Localization.KeepEnglishOptions(Library.OpenFrames[#Library.OpenFrames], tbl20.RarityDropdown.Values)

		tbl20.AvoidTrapsToggle = tbl20.FarmAutomation:CreateToggle("AvoidTraps", {
			Title = "Avoid Traps",
			Description = "Detour around traps on the way out and back. Wait if the route is blocked.",
			Default = tbl.AvoidTraps,
		})

		tbl20.FarmAutomation:CreateToggle("PreemptHigherPriority", { Title = "Preempt Higher-Priority Egg", Default = tbl.PreemptHigherPriority })
		task.wait()
		tbl20.AutoServerHopSection = fn73(tbl13.Farm, "Server Hop")

		tbl20.AutoServerHopToggle = tbl20.AutoServerHopSection:CreateToggle("AutoServerHop", {
			Title = "Server Browser",
			Description = "Opens a compact list of public servers with 0-1 players. You choose which server to join.",
			Default = tbl.AutoServerHop,
		})

		tbl2.ServerBrowser = { Busy = false, Generation = 0, MaxVisibleEntries = 15 }
		local playerGui2 = localPlayer:WaitForChild("PlayerGui")
		local eggStealServerBrowserUI = playerGui2:FindFirstChild("EggStealServerBrowserUI")

		if eggStealServerBrowserUI ~= nil then
			eggStealServerBrowserUI:Destroy()
		end

		tbl20.ServerBrowserGui = Instance.new("ScreenGui")
		tbl20.ServerBrowserGui.Name = "EggStealServerBrowserUI"
		tbl20.ServerBrowserGui.DisplayOrder = 999999
		tbl20.ServerBrowserGui.IgnoreGuiInset = false
		tbl20.ServerBrowserGui.ResetOnSpawn = false
		tbl20.ServerBrowserGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		tbl20.ServerBrowserGui.Enabled = false
		tbl20.ServerBrowserGui.Parent = playerGui2
		tbl20.ServerBrowserPanel = Instance.new("Frame")
		tbl20.ServerBrowserPanel.Name = "ServerBrowserWindow"
		tbl20.ServerBrowserPanel.AnchorPoint = Vector2.new(0.5, 0)
		tbl20.ServerBrowserPanel.Position = UDim2.new(0.5, 0, 0, 58)
		tbl20.ServerBrowserPanel.Size = UDim2.new(0.88, 0, 0, 360)
		tbl20.ServerBrowserPanel.BackgroundColor3 = Color3.fromRGB(17, 17, 20)
		tbl20.ServerBrowserPanel.BackgroundTransparency = 0.08
		tbl20.ServerBrowserPanel.BorderSizePixel = 0
		tbl20.ServerBrowserPanel.Parent = tbl20.ServerBrowserGui
		local uiSizeConstraint = Instance.new("UISizeConstraint")
		uiSizeConstraint.MinSize = Vector2.new(280, 280)
		uiSizeConstraint.MaxSize = Vector2.new(360, 400)
		uiSizeConstraint.Parent = tbl20.ServerBrowserPanel
		local uiCorner7 = Instance.new("UICorner")
		uiCorner7.CornerRadius = UDim.new(0, 10)
		uiCorner7.Parent = tbl20.ServerBrowserPanel
		local uiStroke10 = Instance.new("UIStroke")
		uiStroke10.Color = Color3.fromRGB(67, 67, 76)
		uiStroke10.Transparency = 0.18
		uiStroke10.Parent = tbl20.ServerBrowserPanel
		tbl20.ServerBrowserHeader = Instance.new("TextButton")
		tbl20.ServerBrowserHeader.Name = "DragHeader"
		tbl20.ServerBrowserHeader.AutoButtonColor = false
		tbl20.ServerBrowserHeader.BackgroundColor3 = Color3.fromRGB(25, 25, 29)
		tbl20.ServerBrowserHeader.BorderSizePixel = 0
		tbl20.ServerBrowserHeader.Size = UDim2.new(1, 0, 0, 42)
		tbl20.ServerBrowserHeader.Text = ""
		tbl20.ServerBrowserHeader.Parent = tbl20.ServerBrowserPanel
		local uiCorner8 = Instance.new("UICorner")
		uiCorner8.CornerRadius = UDim.new(0, 10)
		uiCorner8.Parent = tbl20.ServerBrowserHeader
		local frame3 = Instance.new("Frame")
		frame3.BackgroundColor3 = tbl20.ServerBrowserHeader.BackgroundColor3
		frame3.BorderSizePixel = 0
		frame3.Position = UDim2.new(0, 0, 1, -10)
		frame3.Size = UDim2.new(1, 0, 0, 10)
		frame3.Parent = tbl20.ServerBrowserHeader
		local textLabel5 = Instance.new("TextLabel")
		textLabel5.BackgroundTransparency = 1
		textLabel5.Position = UDim2.fromOffset(13, 0)
		textLabel5.Size = UDim2.new(1, -94, 1, 0)
		textLabel5.Font = Enum.Font.GothamBold
		textLabel5.Text = "Server Browser"
		textLabel5.TextColor3 = Color3.fromRGB(242, 242, 246)
		textLabel5.TextSize = 15
		textLabel5.TextXAlignment = Enum.TextXAlignment.Left
		textLabel5.Parent = tbl20.ServerBrowserHeader
		tbl20.ServerBrowserRefreshButton = Instance.new("TextButton")
		tbl20.ServerBrowserRefreshButton.Name = "Refresh"
		tbl20.ServerBrowserRefreshButton.AutoButtonColor = false
		tbl20.ServerBrowserRefreshButton.BackgroundColor3 = Color3.fromRGB(45, 48, 57)
		tbl20.ServerBrowserRefreshButton.BorderSizePixel = 0
		tbl20.ServerBrowserRefreshButton.Position = UDim2.new(1, -78, 0, 7)
		tbl20.ServerBrowserRefreshButton.Size = UDim2.fromOffset(44, 28)
		tbl20.ServerBrowserRefreshButton.Font = Enum.Font.GothamBold
		tbl20.ServerBrowserRefreshButton.Text = "R"
		tbl20.ServerBrowserRefreshButton.TextColor3 = Color3.fromRGB(225, 225, 232)
		tbl20.ServerBrowserRefreshButton.TextSize = 18
		tbl20.ServerBrowserRefreshButton.Parent = tbl20.ServerBrowserHeader
		local uiCorner9 = Instance.new("UICorner")
		uiCorner9.CornerRadius = UDim.new(0, 7)
		uiCorner9.Parent = tbl20.ServerBrowserRefreshButton
		local textButton6 = Instance.new("TextButton")
		textButton6.Name = "Close"
		textButton6.AutoButtonColor = false
		textButton6.BackgroundTransparency = 1
		textButton6.Position = UDim2.new(1, -34, 0, 5)
		textButton6.Size = UDim2.fromOffset(30, 30)
		textButton6.Font = Enum.Font.GothamBold
		textButton6.Text = "×"
		textButton6.TextColor3 = Color3.fromRGB(190, 190, 200)
		textButton6.TextSize = 22
		textButton6.Parent = tbl20.ServerBrowserHeader
		tbl20.ServerBrowserStatus = Instance.new("TextLabel")
		tbl20.ServerBrowserStatus.Name = "Status"
		tbl20.ServerBrowserStatus.BackgroundTransparency = 1
		tbl20.ServerBrowserStatus.Position = UDim2.fromOffset(12, 45)
		tbl20.ServerBrowserStatus.Size = UDim2.new(1, -24, 0, 25)
		tbl20.ServerBrowserStatus.Font = Enum.Font.Gotham
		tbl20.ServerBrowserStatus.Text = "Open the browser to scan servers"
		tbl20.ServerBrowserStatus.TextColor3 = Color3.fromRGB(158, 158, 170)
		tbl20.ServerBrowserStatus.TextSize = 11
		tbl20.ServerBrowserStatus.TextTruncate = Enum.TextTruncate.AtEnd
		tbl20.ServerBrowserStatus.TextXAlignment = Enum.TextXAlignment.Left
		tbl20.ServerBrowserStatus.Parent = tbl20.ServerBrowserPanel
		tbl20.ServerBrowserScroll = Instance.new("ScrollingFrame")
		tbl20.ServerBrowserScroll.Name = "ServerList"
		tbl20.ServerBrowserScroll.BackgroundTransparency = 1
		tbl20.ServerBrowserScroll.BorderSizePixel = 0
		tbl20.ServerBrowserScroll.Position = UDim2.fromOffset(7, 73)
		tbl20.ServerBrowserScroll.Size = UDim2.new(1, -14, 1, -82)
		tbl20.ServerBrowserScroll.CanvasSize = UDim2.fromOffset(0, 0)
		tbl20.ServerBrowserScroll.ScrollBarThickness = 4
		tbl20.ServerBrowserScroll.ScrollBarImageColor3 = Color3.fromRGB(105, 108, 122)
		tbl20.ServerBrowserScroll.Parent = tbl20.ServerBrowserPanel
		tbl20.ServerBrowserList = Instance.new("Frame")
		tbl20.ServerBrowserList.Name = "Rows"
		tbl20.ServerBrowserList.BackgroundTransparency = 1
		tbl20.ServerBrowserList.Size = UDim2.new(1, -6, 0, 0)
		tbl20.ServerBrowserList.AutomaticSize = Enum.AutomaticSize.Y
		tbl20.ServerBrowserList.Parent = tbl20.ServerBrowserScroll
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.Padding = UDim.new(0, 6)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = tbl20.ServerBrowserList

		uiListLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			tbl20.ServerBrowserScroll.CanvasSize = UDim2.fromOffset(0, uiListLayout2.AbsoluteContentSize.Y + 5)
		end)

		local function setStatus_(arg, arg2)
			if tbl20.ServerBrowserStatus == nil or tbl20.ServerBrowserStatus.Parent == nil then
				return
			end
			tbl20.ServerBrowserStatus.Text = tostring(arg)
			tbl20.ServerBrowserStatus.TextColor3 = arg2 and Color3.fromRGB(255, 124, 132) or Color3.fromRGB(158, 158, 170)
		end

		startScrambleEventCoordinator = function()
			if tbl2.Workers.SCRAMBLE_EVENT_COORDINATOR then
				return
			end
			tbl2.Event.StartScrambleObserver()
			tbl2.Workers.SCRAMBLE_EVENT_COORDINATOR = true

			task.spawn(function()
				log("SCRAMBLE_EVENT", "Coordinator started")

				while tbl2.Alive and tbl2.Event.ScrambleCoordinatorEnabled() do
					local ok, result2, result3 = xpcall(tbl2.Event.ScrambleCoordinatorStep, debug.traceback)

					if not ok then
						setError("SCRAMBLE_EVENT", result2)
					elseif not result2 and result3 ~= nil and result3 ~= "Scramble outbreak inactive" and result3 ~= "No Scramble drone available" and result3 ~= "Bat cooling down" and result3 ~= "Waiting for higher-HP drone sync" and result3 ~= "Farming Samples for selected purchase" and result3 ~= "Selected Scramble purchase targets reached" and result3 ~= "No Scramble purchase selected" and result3 ~= "Scramble farm disabled" and result3 ~= "Scramble vault disabled" and result3 ~= "Scramble vault completed" and result3 ~= "Scramble Vault parts incomplete" and result3 ~= "No Lost Part available" and result3 ~= "Quest discovery not confirmed" and result3 ~= "Lost Part collection not confirmed" and result3 ~= "Manual Lost Part interaction required" and result3 ~= "Experiment Vault reward unavailable" and result3 ~= "Experiment Vault claim syncing" and result3 ~= "Experiment Vault interface not confirmed" and result3 ~= "Drone despawned before attack" and result3 ~= "Drone moved before attack" and result3 ~= "Movement busy" then
						tbl2.Scramble.LastError = tostring(result3)
					end

					local n5 = math.max(0.1, tonumber(tbl.ScrambleActionDelay) or 0.5)

					if tbl.AutoScrambleFarm then
						local snapshot = tbl2.Scramble.Snapshot
						local window = type(snapshot) == "table" and snapshot.Window or nil

						if type(window) == "table" and window.Active == true then
							local flag3 = tbl2.Scramble.CombatTargetId ~= nil or tbl2.Scramble.HigherVisualWaitId ~= nil
							local upserts = type(snapshot.Drones) == "table" and snapshot.Drones.Upserts or nil

							if not flag3 then
								local v5 = pairs
								upserts = type(upserts) == "table" and upserts or {}

								for _, upsert in v5(upserts) do
									local flag4 = type(upsert) == "table"
									local flag5

									if flag4 then
										flag5 = (tonumber(upsert.Health) or 0) > 0
									else
										flag5 = flag4
									end

									if flag5 then
										flag3 = true
										break
									end
								end
							end

							if flag3 then
								n5 = math.min(n5, 0.15)
							end
						end
					end

					task.wait(n5)
				end

				tbl2.Workers.SCRAMBLE_EVENT_COORDINATOR = nil
				tbl2.Scramble.Status = "Scramble automation disabled"
				log("SCRAMBLE_EVENT", "Coordinator stopped")
			end)
		end

		tbl2.ServerBrowser.SetStatus = setStatus_

		local function fn85()
			for _, child in ipairs(tbl20.ServerBrowserList:GetChildren()) do
				if child ~= uiListLayout2 then
					child:Destroy()
				end
			end
		end

		local function fn86(arg, layoutOrder)
			local n5 = tonumber(arg.playing) or 0
			local n6 = tonumber(arg.maxPlayers) or 0
			local frame4 = Instance.new("Frame")
			frame4.Name = "Server_" .. tostring(layoutOrder)
			frame4.LayoutOrder = layoutOrder
			frame4.BackgroundColor3 = Color3.fromRGB(29, 29, 34)
			frame4.BorderSizePixel = 0
			frame4.Size = UDim2.new(1, 0, 0, 56)
			frame4.Parent = tbl20.ServerBrowserList
			local uiCorner10 = Instance.new("UICorner")
			uiCorner10.CornerRadius = UDim.new(0, 8)
			uiCorner10.Parent = frame4
			local uiStroke11 = Instance.new("UIStroke")
			uiStroke11.Color = n5 == 0 and Color3.fromRGB(70, 190, 125) or Color3.fromRGB(69, 72, 84)
			uiStroke11.Transparency = n5 == 0 and 0.35 or 0.55
			uiStroke11.Parent = frame4
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.BackgroundTransparency = 1
			textLabel6.Position = UDim2.fromOffset(11, 7)
			textLabel6.Size = UDim2.new(1, -98, 0, 21)
			textLabel6.Font = Enum.Font.GothamBold
			textLabel6.Text = string.format("%d / %s players", n5, n6 > 0 and tostring(n6) or "?")
			textLabel6.TextColor3 = n5 == 0 and Color3.fromRGB(118, 231, 164) or Color3.fromRGB(231, 231, 236)
			textLabel6.TextSize = 13
			textLabel6.TextXAlignment = Enum.TextXAlignment.Left
			textLabel6.Parent = frame4
			local textLabel7 = Instance.new("TextLabel")
			textLabel7.BackgroundTransparency = 1
			textLabel7.Position = UDim2.fromOffset(11, 29)
			textLabel7.Size = UDim2.new(1, -98, 0, 18)
			textLabel7.Font = Enum.Font.Code
			textLabel7.Text = "ID  " .. string.sub(arg.id, 1, 12) .. "…"
			textLabel7.TextColor3 = Color3.fromRGB(139, 139, 151)
			textLabel7.TextSize = 10
			textLabel7.TextXAlignment = Enum.TextXAlignment.Left
			textLabel7.Parent = frame4
			local textButton7 = Instance.new("TextButton")
			textButton7.Name = "Join"
			textButton7.AutoButtonColor = false
			textButton7.AnchorPoint = Vector2.new(1, 0.5)
			textButton7.Position = UDim2.new(1, -8, 0.5, 0)
			textButton7.Size = UDim2.fromOffset(76, 36)
			textButton7.BackgroundColor3 = Color3.fromRGB(72, 104, 225)
			textButton7.BorderSizePixel = 0
			textButton7.Font = Enum.Font.GothamBold
			textButton7.Text = "Join"
			textButton7.TextColor3 = Color3.fromRGB(248, 248, 251)
			textButton7.TextSize = 12
			textButton7.Parent = frame4
			local uiCorner11 = Instance.new("UICorner")
			uiCorner11.CornerRadius = UDim.new(0, 7)
			uiCorner11.Parent = textButton7

			textButton7.Activated:Connect(function()
				if tbl2.ServerHopPending then
					setStatus_("A teleport is already pending…", true)
					return
				end
				textButton7.Text = "Joining…"
				textButton7.Active = false
				local serverBrowser, v5 = fn33(arg, "SERVER_BROWSER")

				if not serverBrowser then
					textButton7.Text = "Join"
					textButton7.Active = true
					setStatus_(v5, true)
				end
			end)
		end

		tbl2.ServerBrowser.Refresh = function()
			local serverBrowser = tbl2.ServerBrowser
			if serverBrowser.Busy or not tbl2.Alive or tbl.AutoServerHop ~= true then
				return
			end
			serverBrowser.Busy = true
			serverBrowser.Generation = serverBrowser.Generation + 1
			local generation = serverBrowser.Generation
			tbl20.ServerBrowserRefreshButton.Active = false
			tbl20.ServerBrowserRefreshButton.Text = "…"
			setStatus_("Scanning public servers…", false)

			task.spawn(function()
				local v5, v6 = fn31(true)
				if not tbl2.Alive or generation ~= serverBrowser.Generation then
					return
				end
				fn85()

				if v5 == nil then
					setStatus_(v6, true)

					if v6 == "Server list rate limited" and tbl.AutoServerHop then
						task.delay(math.max(1, n2 - os.clock()), serverBrowser.Refresh)
					end
				else
					local n5 = math.min(#v5, serverBrowser.MaxVisibleEntries)

					for i = 1, n5 do
						fn86(v5[i], i)
					end

					setStatus_(string.format("%d server%s found • showing %d", #v5, #v5 == 1 and "" or "s", n5), false)
				end

				serverBrowser.Busy = false
				tbl20.ServerBrowserRefreshButton.Active = true
				tbl20.ServerBrowserRefreshButton.Text = "R"
			end)
		end

		tbl20.ServerBrowserRefreshButton.Activated:Connect(function()
			tbl2.ServerBrowser.Refresh()
		end)

		textButton6.Activated:Connect(function()
			tbl20.AutoServerHopToggle:SetValue(false)
		end)

		local flag3 = false
		local v5 = nil
		local position3 = nil
		local position4 = nil

		tbl20.ServerBrowserHeader.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				flag3 = true
				position3 = input.Position
				position4 = tbl20.ServerBrowserPanel.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						flag3 = false
					end
				end)
			end
		end)

		tbl20.ServerBrowserHeader.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				v5 = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if flag3 and input == v5 and position3 ~= nil and position4 ~= nil then
				local n5 = input.Position - position3
				tbl20.ServerBrowserPanel.Position = UDim2.new(position4.X.Scale, position4.X.Offset + n5.X, position4.Y.Scale, position4.Y.Offset + n5.Y)
			end
		end)

		task.wait()
		tbl20.FixLagSection = fn73(tbl13.Farm, "Fix Lag")

		tbl20.VisualCleanupToggle = tbl20.FixLagSection:CreateToggle("VisualCleanup", {
			Title = "Visual Cleanup",
			Description = "Removes expensive world effects and textures only after you enable it. ScrambleLocalVisuals is always protected. Turning it off stops future cleanup; removed visuals require rejoining to restore.",
			Default = false,
		})

		tbl20.VisualCleanupToggle:OnChanged(function(arg)
			local flag4 = arg == true

			if flag4 then
				local translate = tbl2.Localization and tbl2.Localization.Translate
				local str4 = "Visual Cleanup Warning"
				local str5 = "Enabling Visual Cleanup may prevent Dr Scramble event robots from appearing. Please consider this risk before continuing."

				if type(translate) == "function" then
					str4 = translate("Visual Cleanup Warning")
					str5 = translate("Enabling Visual Cleanup may prevent Dr Scramble event robots from appearing. Please consider this risk before continuing.")
				end

				Library:Notify({ Title = str4, Content = str5, Duration = 8 })
			end

			tbl2.SetVisualCleanup(flag4)
		end)

		tbl20.FixLagSection:Collapse()
		task.wait()
		tbl20.MovementSection = fn73(tbl13.Farm, "Movement")
		tbl20.TweenSpeedSlider = tbl20.MovementSection:CreateSlider("TweenSpeed", { Title = "Tween Speed", Default = tbl.TweenSpeed, Min = 20, Max = 1500, Rounding = 0 })
		tbl20.ArrivalSlider = tbl20.MovementSection:CreateSlider("ArrivalDistance", { Title = "Arrival Distance", Default = tbl.ArrivalDistance, Min = 1, Max = 20, Rounding = 1 })
		tbl20.MovementSection:CreateButton({ Title = "Stop Movement", Callback = stopMovement })
		task.wait()
		tbl20.AntiAfkSection = fn73(tbl13.Farm, "Anti AFK")

		tbl20.AntiAfkToggle = tbl20.AntiAfkSection:CreateToggle("AntiAFK", {
			Title = "Anti AFK",
			Description = "Prevent idle server hops and keep the game activity timer reset.",
			Default = tbl.AntiAFK,
		})

		task.wait()
		tbl20.DefenseSection = fn73(tbl13.Defense, "Bat Aura")
		tbl20.BatAuraToggle = tbl20.DefenseSection:CreateToggle("AutoBatAura", { Title = "Bat Kill Aura", Default = tbl.AutoBatAura })
		tbl20.AutoEquipBatToggle = tbl20.DefenseSection:CreateToggle("AutoEquipBat", { Title = "Auto Equip Bat", Default = tbl.AutoEquipBat })
		tbl20.AntiRagdollToggle = tbl20.DefenseSection:CreateToggle("AntiRagdoll", { Title = "Anti Ragdoll", Default = tbl.AntiRagdoll })
		tbl20.AntiHitToggle = tbl20.DefenseSection:CreateToggle("AntiHit", { Title = "Anti Hit (Forest - Keep Sleeping)", Default = tbl.AntiHit })
		tbl20.AuraRangeSlider = tbl20.DefenseSection:CreateSlider("AuraRange", { Title = "Aura Range", Default = tbl.AuraRange, Min = 5, Max = 30, Rounding = 1 })
		tbl20.AttackDelayInput = fn75(tbl20.DefenseSection, "AttackDelay", "Attack Delay (seconds)", 0.6, 3)

		tbl20.DefenseSection:CreateButton({
			Title = "Equip Bat Now",
			Callback = function()
				runAction("BAT", equipBat)
			end,
		})

		tbl20.ManualCarrySection = fn73(tbl13.Defense, "Manual Egg Carry")

		tbl20.ManualCarryLiftToggle = tbl20.ManualCarrySection:CreateToggle("ManualCarryLift", {
			Title = "Tween Up +50 and Hold Y",
			Description = "Suitable for timed egg-claiming events. After picking up an egg, you will rise high into the air to avoid being hit.",
			Default = tbl.ManualCarryLift,
		})

		task.wait()
		tbl20.PlayerStealSpecificSection = fn73(tbl13.PlayerSteal, "Steal From Specific Player (Teleport Strike)")
		tbl20.PlayerStealList = Instance.new("Frame")
		tbl20.PlayerStealList.Name = "PlayerStealList"
		tbl20.PlayerStealList.BackgroundColor3 = Color3.fromRGB(22, 22, 25)
		tbl20.PlayerStealList.BorderSizePixel = 0
		tbl20.PlayerStealList.Size = UDim2.new(1, -8, 0, 352)
		tbl20.PlayerStealList.LayoutOrder = 7
		tbl20.PlayerStealList.Parent = tbl20.PlayerStealSpecificSection.Container
		local uiCorner10 = Instance.new("UICorner")
		uiCorner10.CornerRadius = UDim.new(0, 8)
		uiCorner10.Parent = tbl20.PlayerStealList
		local uiStroke11 = Instance.new("UIStroke")
		uiStroke11.Color = Color3.fromRGB(57, 53, 47)
		uiStroke11.Parent = tbl20.PlayerStealList
		tbl20.PlayerStealCount = Instance.new("TextLabel")
		tbl20.PlayerStealCount.BackgroundTransparency = 1
		tbl20.PlayerStealCount.Font = Enum.Font.GothamMedium
		tbl20.PlayerStealCount.TextSize = 13
		tbl20.PlayerStealCount.TextColor3 = Color3.fromRGB(230, 230, 233)
		tbl20.PlayerStealCount.TextXAlignment = Enum.TextXAlignment.Left
		tbl20.PlayerStealCount.Position = UDim2.fromOffset(12, 8)
		tbl20.PlayerStealCount.Size = UDim2.new(1, -24, 0, 20)
		tbl20.PlayerStealCount.Text = "Players in this server"
		tbl20.PlayerStealCount.Parent = tbl20.PlayerStealList
		tbl20.PlayerStealCountValue = Instance.new("TextLabel")
		tbl20.PlayerStealCountValue.BackgroundTransparency = 1
		tbl20.PlayerStealCountValue.Font = Enum.Font.GothamMedium
		tbl20.PlayerStealCountValue.TextSize = 13
		tbl20.PlayerStealCountValue.TextColor3 = Color3.fromRGB(150, 150, 160)
		tbl20.PlayerStealCountValue.TextXAlignment = Enum.TextXAlignment.Right
		tbl20.PlayerStealCountValue.Position = UDim2.new(1, -52, 0, 8)
		tbl20.PlayerStealCountValue.Size = UDim2.fromOffset(40, 20)
		tbl20.PlayerStealCountValue.Text = "0"
		tbl20.PlayerStealCountValue.Parent = tbl20.PlayerStealList
		tbl20.PlayerStealScroll = Instance.new("ScrollingFrame")
		tbl20.PlayerStealScroll.BackgroundTransparency = 1
		tbl20.PlayerStealScroll.BorderSizePixel = 0
		tbl20.PlayerStealScroll.Position = UDim2.fromOffset(9, 35)
		tbl20.PlayerStealScroll.Size = UDim2.new(1, -18, 1, -44)
		tbl20.PlayerStealScroll.CanvasSize = UDim2.fromOffset(0, 0)
		tbl20.PlayerStealScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		tbl20.PlayerStealScroll.ScrollBarThickness = 4
		tbl20.PlayerStealScroll.Parent = tbl20.PlayerStealList
		local uiListLayout3 = Instance.new("UIListLayout")
		uiListLayout3.Padding = UDim.new(0, 4)
		uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout3.Parent = tbl20.PlayerStealScroll

		local function createTextLabel(parent, arg, arg2, arg3, arg4, textSize, textColor3, arg5)
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.BackgroundTransparency = 1
			textLabel6.Font = arg5 and Enum.Font.GothamBold or Enum.Font.Gotham
			textLabel6.TextSize = textSize
			textLabel6.TextColor3 = textColor3
			textLabel6.TextXAlignment = Enum.TextXAlignment.Left
			textLabel6.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel6.Position = UDim2.new(arg, 0, 0, arg2)
			textLabel6.Size = UDim2.new(arg3, 0, 0, arg4)
			textLabel6.Parent = parent
			return textLabel6
		end

		local function fn87(arg)
			local frame4 = Instance.new("Frame")
			frame4.Name = "Player_" .. tostring(arg.UserId)
			frame4.BackgroundColor3 = Color3.fromRGB(27, 27, 31)
			frame4.BorderSizePixel = 0
			frame4.Size = UDim2.new(1, -5, 0, 58)
			frame4.Parent = tbl20.PlayerStealScroll
			local uiCorner11 = Instance.new("UICorner")
			uiCorner11.CornerRadius = UDim.new(0, 7)
			uiCorner11.Parent = frame4
			local uiStroke12 = Instance.new("UIStroke")
			uiStroke12.Color = Color3.fromRGB(45, 45, 51)
			uiStroke12.Parent = frame4
			local v6 = createTextLabel(frame4, 0.02, 6, 0.33, 21, 13, Color3.fromRGB(243, 243, 245), true)
			local v7 = createTextLabel(frame4, 0.02, 29, 0.33, 18, 11, Color3.fromRGB(116, 216, 158), false)
			local v8 = createTextLabel(frame4, 0.38, 6, 0.37, 21, 12, Color3.fromRGB(226, 226, 231), false)
			local v9 = createTextLabel(frame4, 0.38, 29, 0.37, 18, 10, Color3.fromRGB(154, 154, 164), false)
			local textButton7 = Instance.new("TextButton")
			textButton7.Name = "Strike"
			textButton7.AnchorPoint = Vector2.new(1, 0.5)
			textButton7.Position = UDim2.new(1, -9, 0.5, 0)
			textButton7.Size = UDim2.fromOffset(82, 29)
			textButton7.BackgroundColor3 = Color3.fromRGB(57, 57, 65)
			textButton7.BorderSizePixel = 0
			textButton7.Font = Enum.Font.GothamBold
			textButton7.TextSize = 11
			textButton7.TextColor3 = Color3.fromRGB(207, 207, 215)
			textButton7.Text = "Locked"
			textButton7.Parent = frame4
			local uiCorner12 = Instance.new("UICorner")
			uiCorner12.CornerRadius = UDim.new(0, 7)
			uiCorner12.Parent = textButton7

			local tbl25 = {
				Frame = frame4,
				Name = v6,
				Handle = v7,
				Egg = v8,
				Detail = v9,
				Button = textButton7,
				TargetUid = nil,
				LastCarriedAt = 0,
			}

			local n5 = -math.huge

			local function fn88()
				if os.clock() - n5 < 0.3 then
					return
				end
				n5 = os.clock()

				if tbl2.PlayerSteal.Busy or tbl2.FarmTransaction then
					tbl2.PlayerSteal.Status = "Another movement is running"
					textButton7.Text = "Busy"
					return
				end

				local playerByUserId = Players:GetPlayerByUserId(arg.UserId)

				if playerByUserId == nil then
					tbl2.PlayerSteal.Status = "Player left the server"
					textButton7.Text = "Left"
					return
				end

				local userId = playerByUserId.UserId
				local v10 = fn58()[userId]
				local flag4 = v10 == nil and type(tbl25.TargetUid) == "string"

				if flag4 then
					local lastCarriedAt = tbl25.LastCarriedAt
					flag4 = os.clock() - lastCarriedAt <= 1.5
				end

				if flag4 then
					local v11 = getAreaEggRecord(tbl25.TargetUid)
					local flag5 = type(v11) == "table"

					if flag5 then
						flag5 = v11.State == "Dropped"

						if not flag5 then
							flag5 = v11.State == "Carried"

							if flag5 then
								local userId2 = playerByUserId.UserId
								flag5 = tonumber(v11.CarrierUserId) == userId2
							end
						end
					end

					if flag5 then
						v10 = v11
					end
				end

				if v10 == nil then
					tbl2.PlayerSteal.Status = playerByUserId.DisplayName .. " is not carrying a visible egg"
					textButton7.Text = "No Egg"
					return
				end

				local v11, v12 = fn59(playerByUserId)

				if v10.State ~= "Dropped" and v11 == nil then
					tbl2.PlayerSteal.Status = tostring(v12)
					textButton7.Text = "Safe Zone"
					return
				end

				tbl2.PlayerSteal.Status = "Starting auxiliary egg route for " .. playerByUserId.DisplayName
				textButton7.Text = "Starting..."

				runAction("PLAYER_STEAL_MANUAL", function()
					return tbl2.PlayerSteal.RunManual(playerByUserId, v10)
				end)
			end

			textButton7.Activated:Connect(fn88)
			textButton7.MouseButton1Click:Connect(fn88)
			return tbl25
		end

		tbl20.PlayerStealSection = fn73(tbl13.PlayerSteal, "Auto Steal")

		tbl20.PlayerStealToggle = tbl20.PlayerStealSection:CreateToggle("AutoStealFromPlayers", {
			Title = "Auto Steal From Players",
			Description = "Take an auxiliary egg, then continuously follow in front of the carrier with Bat ready.",
			Default = tbl.AutoStealFromPlayers,
		})

		tbl20.PlayerStealRarityDropdown = tbl20.PlayerStealSection:CreateDropdown("PlayerStealRarities", {
			Title = "Rarity Filter",
			Description = "Auto target filter. Manual player strikes ignore this filter.",
			Values = { "All", "Secret", "Eternal", "Divine" },
			Multi = true,
			Default = fn74(tbl.PlayerStealRarities),
		})

		tbl20.PlayerStealStatus = tbl20.PlayerStealSection:CreateParagraph("PlayerStealStatus", { Title = "Bat range and status", Content = "Reading equipped Bat range..." })
		local color8 = Color3.fromRGB(70, 114, 93)
		local color9 = Color3.fromRGB(57, 57, 65)

		tbl2.PlayerSteal.RefreshUi = function()
			local v6 = fn57()
			local lastUiRangeKey = v6 and math.floor(v6 * 100 + 0.5) or false
			local lastUiStatus = tostring(tbl2.PlayerSteal.Status)

			if tbl2.PlayerSteal.LastUiRangeKey ~= lastUiRangeKey or tbl2.PlayerSteal.LastUiStatus ~= lastUiStatus then
				tbl2.PlayerSteal.LastUiRangeKey = lastUiRangeKey
				tbl2.PlayerSteal.LastUiStatus = lastUiStatus
				tbl20.PlayerStealStatus:SetValue(string.format("Bat range: %s | Strike position: 9 studs in front\n%s", v6 and string.format("%.2f studs", v6) or "equip a Bat to measure", lastUiStatus))
			end

			local players = Players:GetPlayers()

			for i = #players, 1, -1 do
				if players[i] == localPlayer then
					table.remove(players, i)
					break
				end
			end

			local nameKeyScratch = tbl2.PlayerSteal.NameKeyScratch
			table.clear(nameKeyScratch)

			for _, player in ipairs(players) do
				nameKeyScratch[player] = string.lower(player.DisplayName)
			end

			table.sort(players, function(arg, arg2)
				return nameKeyScratch[arg] < nameKeyScratch[arg2]
			end)

			local text = tostring(#players)

			if tbl20.PlayerStealCountValue.Text ~= text then
				tbl20.PlayerStealCountValue.Text = text
			end

			local v7 = fn58(tbl2.PlayerSteal.CarrierScratch, players)
			local v8, v9 = getCharacter()
			local activeScratch = tbl2.PlayerSteal.ActiveScratch
			table.clear(activeScratch)

			for i, player in ipairs(players) do
				activeScratch[player.UserId] = true
				local v10 = tbl2.PlayerSteal.Rows[player.UserId]

				if v10 == nil then
					v10 = fn87(player)
					tbl2.PlayerSteal.Rows[player.UserId] = v10
				end

				if v10.Frame.LayoutOrder ~= i then
					v10.Frame.LayoutOrder = i
				end

				if v10.Name.Text ~= player.DisplayName then
					v10.Name.Text = player.DisplayName
				end

				local v11, v12 = fn59(player)
				local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
				local magnitude = v9 and humanoidRootPart and (v9.Position - humanoidRootPart.Position).Magnitude
				local lastZone = v11 and "Arena" or v12 == "Player is in Safe Zone" and "Safe Zone" or "Unavailable"

				if v10.LastZone ~= lastZone or v10.LastPlayerName ~= player.Name then
					v10.LastZone = lastZone
					v10.LastPlayerName = player.Name
					v10.Handle.Text = string.format("@%s  [%s]", player.Name, lastZone)
				end

				local v13 = v7[player.UserId]

				if v13 ~= nil then
					v10.TargetUid = v13.Uid
					v10.LastCarriedAt = os.clock()
				end

				local value = v13 and select(1, getRecordRarityId(v13)) or nil
				local text2 = v13 and getEggDisplayName(v13) or "No Egg Carried"

				if v10.Egg.Text ~= text2 then
					v10.Egg.Text = text2
				end

				local lastRarityText

				if v13 then
					lastRarityText = tostring(value or "Unknown")
				else
					lastRarityText = v13
				end

				lastRarityText = lastRarityText or "Idle"
				magnitude = magnitude and math.floor(magnitude + 0.5) or nil

				if v10.LastRarityText ~= lastRarityText or v10.LastDistance ~= magnitude then
					v10.LastRarityText = lastRarityText
					v10.LastDistance = magnitude
					v10.Detail.Text = string.format("%s  -  %s studs", lastRarityText, magnitude and tostring(magnitude) or "?")
				end

				local autoButtonColor = v13 ~= nil and v11 ~= nil and not tbl2.PlayerSteal.Busy and not tbl2.FarmTransaction
				local backgroundColor3 = tbl2.PlayerSteal.Busy and tbl2.PlayerSteal.TargetUserId == player.UserId
				local text3

				if backgroundColor3 then
					text3 = tbl2.PlayerSteal.Mode == "Manual" and "Manual..." or "Working..."
				else
					text3 = backgroundColor3
				end

				text3 = text3 or autoButtonColor and "Steal" or "Locked"
				backgroundColor3 = (autoButtonColor or backgroundColor3) and color8 or color9

				if v10.Button.Active ~= true then
					v10.Button.Active = true
				end

				if v10.Button.AutoButtonColor ~= autoButtonColor then
					v10.Button.AutoButtonColor = autoButtonColor
				end

				if v10.Button.Text ~= text3 then
					v10.Button.Text = text3
				end

				if v10.Button.BackgroundColor3 ~= backgroundColor3 then
					v10.Button.BackgroundColor3 = backgroundColor3
				end
			end

			for k, row in pairs(tbl2.PlayerSteal.Rows) do
				if not activeScratch[k] then
					row.Frame:Destroy()
					tbl2.PlayerSteal.Rows[k] = nil
				end
			end
		end

		task.spawn(function()
			task.wait(0.18)

			while tbl2.Alive do
				if (tbl2.IsTabVisible(tbl13.PlayerSteal) or tbl.AutoStealFromPlayers or tbl2.PlayerSteal.Busy or tbl2.PlayerSteal.ManualBusy) and not tbl2.IsDeliveryCarry() then
					local ok, result2 = xpcall(tbl2.PlayerSteal.RefreshUi, debug.traceback)

					if not ok then
						tbl2.PlayerSteal.Status = tostring(result2)
					end
				end

				task.wait(0.6)
			end
		end)

		task.wait()
		tbl20.TrainingSection = fn73(tbl13.Upgrades, "Treadmill")
		tbl20.AutoTreadmillToggle = tbl20.TrainingSection:CreateToggle("AutoTreadmillTraining", { Title = "Auto Treadmill Training", Default = tbl.AutoTreadmillTraining })
		tbl20.AutoTreadmillUpgradeToggle = tbl20.TrainingSection:CreateToggle("AutoTreadmillUpgrade", { Title = "Auto Treadmill Upgrade", Default = tbl.AutoTreadmillUpgrade })
		tbl20.BaseUpgradeSection = fn73(tbl13.Upgrades, "Base")
		tbl20.AutoBaseUpgradeToggle = tbl20.BaseUpgradeSection:CreateToggle("AutoBaseUpgrade", { Title = "Auto Base Upgrade", Default = tbl.AutoBaseUpgrade })
		tbl20.UtilityDelayInput = fn75(tbl20.BaseUpgradeSection, "UtilityDelay", "Automation Delay (seconds)", 0.5, 10)
		task.wait()
		tbl20.PlaceEggSection = fn73(tbl13.PetEgg, "Auto Place Egg")

		tbl20.AutoPlaceToggle = tbl20.PlaceEggSection:CreateToggle("AutoPlace", {
			Title = "Auto Place Egg",
			Description = "Places unplaced inventory eggs in your plot; waits while stealing.",
			Default = tbl.AutoPlace,
		})

		tbl20.PlaceDelayInput = fn75(tbl20.PlaceEggSection, "PlaceDelay", "Place Delay (seconds)", 0.5, 15)

		tbl20.AutoPlaceToggle:OnChanged(function(arg)
			tbl.AutoPlace = arg == true
			tbl2.FarmCycleNextPlaceScanAt = 0
			tbl2.FarmCyclePlacePendingUntil = 0

			if tbl.AutoPlace then
				startWorker("PLACE", "AutoPlace", "PlaceDelay", placeStep)
			end
		end)

		tbl20.HatchEggSection = fn73(tbl13.PetEgg, "Auto Hatch Egg")

		tbl20.AutoHatchToggle = tbl20.HatchEggSection:CreateToggle("AutoHatch", {
			Title = "Auto Hatch Egg",
			Description = "Hatches ready eggs in your plot; waits while stealing or carrying an egg.",
			Default = tbl.AutoHatch,
		})

		tbl20.HatchDelayInput = fn75(tbl20.HatchEggSection, "HatchDelay", "Hatch Delay (seconds)", 0.5, 15)

		tbl20.AutoHatchToggle:OnChanged(function(arg)
			tbl.AutoHatch = arg == true
			tbl2.FarmCycleNextPlaceScanAt = 0

			if tbl.AutoHatch then
				startWorker("HATCH", "AutoHatch", "HatchDelay", hatchStep)
			end
		end)

		tbl20.EquipmentSection = fn73(tbl13.PetEgg, "Pet & Egg")
		tbl20.AutoEquipToggle = tbl20.EquipmentSection:CreateToggle("AutoEquipBest", { Title = "Auto Equip Best Pet", Default = tbl.AutoEquipBest })
		tbl20.EquipDelayInput = fn75(tbl20.EquipmentSection, "EquipDelay", "Equip Delay (seconds)", 5, 30)

		tbl20.AutoSellAllToggle = tbl20.EquipmentSection:CreateToggle("AutoSellAllEligible", {
			Title = "Auto Sell Pet / Egg",
			Description = "Sells only at or below the Pet/Egg thresholds; protected items and unknown rates are skipped.",
			Default = tbl.AutoSellAllEligible,
		})

		for _, v6 in ipairs({ { "SellPetAmount", "Sell Pet At Most ($/s)" }, { "SellEggAmount", "Sell Egg At Most ($/s)" } }) do
			local v7 = v6[1]
			fn76(tbl20.EquipmentSection, v7, v7, v6[2])
		end

		tbl20.SellDelayInput = fn75(tbl20.EquipmentSection, "SellDelay", "Sell Delay (seconds)", 0.5, 30)
		task.wait()
		tbl20.TrailSection = fn73(tbl13.TrailsGears, "Trails")
		tbl20.AutoTrailToggle = tbl20.TrailSection:CreateToggle("AutoEquipBestTrail", { Title = "Auto Equip Best Trail", Default = tbl.AutoEquipBestTrail })
		tbl20.AutoBuyTrailToggle = tbl20.TrailSection:CreateToggle("AutoBuyTrail", { Title = "Auto Buy Trail", Default = tbl.AutoBuyTrail })
		tbl20.WantedTrailDropdown = tbl20.TrailSection:CreateDropdown("WantedTrails", { Title = "Trail Wanted", Values = tbl19, Multi = true, Default = fn74(tbl.WantedTrails) })

		tbl20.TrailSection:CreateButton({
			Title = "Equip Best Trail",
			Callback = function()
				runAction("TRAIL", equipBestTrail)
			end,
		})

		tbl20.GearSection = fn73(tbl13.TrailsGears, "Gears")
		tbl20.AutoEquipBestGearToggle = tbl20.GearSection:CreateToggle("AutoEquipBestGear", { Title = "Auto Equip Best Gear", Default = tbl.AutoEquipBestGear })

		tbl20.GearSection:CreateButton({
			Title = "Equip Best Gear Now",
			Callback = function()
				runAction("GEAR", equipBestGear)
			end,
		})

		task.wait()
		tbl20.RewardSection = fn73(tbl13.Rewards, "Claims")
		tbl20.AutoFreeGiftsToggle = tbl20.RewardSection:CreateToggle("AutoClaimFreeGifts", { Title = "Auto Claim Free Gifts", Default = tbl.AutoClaimFreeGifts })
		tbl20.AutoGroupRewardToggle = tbl20.RewardSection:CreateToggle("AutoClaimGroupReward", { Title = "Auto Claim Group Reward", Default = tbl.AutoClaimGroupReward })
		tbl20.AutoIndexRewardToggle = tbl20.RewardSection:CreateToggle("AutoClaimIndexRewards", { Title = "Auto Claim Index Rewards", Default = tbl.AutoClaimIndexRewards })
		task.wait()

		local function fn88()
			return function(arg)
				local config = arg.Config
				local runtime = arg.Runtime
				local workspace = arg.Workspace
				local player = arg.Player
				local tbl25 = { Waiting = true, Mech = true, Ejecting = true, Ball = true, Human = true, Final = true }

				local function fn89(arg2)
					return type(arg2) == "number" and arg2 == arg2 and math.abs(arg2) < math.huge
				end

				local function fn90(arg2, arg3, arg4)
					arg2 = arg2 and arg2[arg3]

					if arg2 and type(arg2.Get) == "function" then
						local ok, result2 = pcall(arg2.Get, arg2)
						if ok then
							return result2
						end
					end

					return arg4
				end

				local tbl26

				tbl26 = {
					Alive = true,
					Connections = {},
					Hazards = {},
					Status = "Waiting for Dr Scramble",
					SnapshotAt = -math.huge,
					LastRefresh = -math.huge,
					NextJoin = 0,
					NextReward = 0,
					LastHit = 0,
					LastEscape = 0,
					LastMove = 0,
					Generation = 0,
					InArena = function()
						return player:GetAttribute("InScrambleArena") == true
					end,
					GetArena = function()
						local scrambleArena = workspace:FindFirstChild("ScrambleArena")
						if scrambleArena and scrambleArena:IsA("Model") and scrambleArena.Parent == workspace then
							return scrambleArena
						end
					end,
					Joinable = function(arg2)
						if fn90(arg.BossFlags, "ContentEnabled", false) ~= true then
							return false
						end
						return arg2 ~= nil and tbl25[arg2:GetAttribute("Phase")] == true or arg.GetEntryPortal and arg.GetEntryPortal() ~= nil or false
					end,
					BlocksFarm = function()
						if not tbl26.Alive then
							return false
						end

						if tbl26.InArena() or tbl26.EntryMoving or tbl26.JoinUntil ~= nil or tbl26.Pending and tbl26.Pending.Key == "Join" then
							return true
						end
						local flag4 = config.AutoScrambleBoss == true and tbl26.Joinable(tbl26.GetArena()) and not runtime.IsCarrying

						if flag4 then
							flag4 = not (runtime.IsDeliveryCarry and runtime.IsDeliveryCarry())
						end

						return flag4
					end,
					StopMotion = function()
						local moveTween = tbl26.MoveTween
						local v6 = tbl26
						local v7 = tbl26
						tbl26.MoveTween = nil
						v6.MoveRoot = nil
						v7.MoveHumanoid = nil

						if moveTween then
							pcall(moveTween.Cancel, moveTween)
						end
					end,
					Wait = function(status)
						tbl26.StopMotion()
						tbl26.Status = status
					end,
					Character = function()
						local character = player.Character
						local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
						local humanoid = character and character:FindFirstChildOfClass("Humanoid")
						if humanoidRootPart and humanoid and humanoid.Health > 0 and not humanoidRootPart.Anchored then
							return character, humanoidRootPart, humanoid
						end
					end,
					Busy = function()
						local stealInProgress = runtime.FarmTransaction ~= nil or runtime.StealInProgress or runtime.FarmCycleActionBusy

						if not stealInProgress then
							stealInProgress = (runtime.ControlledWorkerActions or 0) > 0
						end

						return stealInProgress or runtime.IsCarrying or runtime.IsDeliveryCarry and runtime.IsDeliveryCarry() or runtime.Moving or runtime.PlayerSteal and runtime.PlayerSteal.Busy or runtime.Checker and runtime.Checker.ManualBusy
					end,
					Issue = function(arg2, arg3, arg4, arg5)
						if tbl26.Pending or not tbl26.Alive or not arg3 or not arg3:IsA("RemoteFunction") then
							return false
						end
						local pending = { Key = arg2, At = os.clock() }
						tbl26.Pending = pending

						task.spawn(function()
							local v6 = table.pack(pcall(arg3.InvokeServer, arg3, table.unpack(arg4)))
							if not tbl26.Alive or not runtime.Alive or tbl26.Pending ~= pending then
								return
							end
							tbl26.Pending = nil

							if not v6[1] then
								tbl26.LastError = tostring(v6[2])
							else
								tbl26.LastError = nil
							end

							local ok, result2 = pcall(arg5, table.unpack(v6, 1, v6.n))

							if not ok then
								tbl26.LastError = tostring(result2)
							end
						end)

						return true
					end,
					SnapshotReady = function(arg2)
						local flag4 = type(arg2) == "table" and arg2.Ready == true and arg2.Enabled == true and arg2.WorldReady == true and fn89(arg2.EventEndsAt)

						if flag4 then
							local eventEndsAt = arg2.EventEndsAt
							flag4 = workspace:GetServerTimeNow() < eventEndsAt
						end

						return flag4 and type(arg2.State) == "table"
					end,
					NextMilestone = function(arg2)
						if not tbl26.SnapshotReady(arg2) or not arg.Mastery then
							return nil
						end
						local state = arg2.State
						local claimedMilestoneIds = type(state.ClaimedMilestoneIds) == "table" and state.ClaimedMilestoneIds or {}
						local v6 = ipairs
						local milestones = arg.Mastery.Milestones or {}

						for _, milestone in v6(milestones) do
							if (tonumber(state.Mastery) or 0) >= milestone.Kills and claimedMilestoneIds[milestone.Id] ~= true then
								return milestone.Id
							end
						end

						if config.ScrambleClaimInfinite and type(arg.Mastery.ClaimableInfiniteCount) == "function" then
							local v7 = arg.Mastery.FinalMilestone()
							if v7 and claimedMilestoneIds[v7.Id] and arg.Mastery.ClaimableInfiniteCount(state) > 0 then
								return arg.Mastery.InfiniteMilestoneId
							end
						end
					end,
					AcceptSnapshot = function(snapshot)
						if type(snapshot) ~= "table" or type(snapshot.State) ~= "table" or type(snapshot.Shop) ~= "table" then
							return
						end
						local v6 = tbl26
						local v7 = tbl26
						local now = os.clock()
						v6.Snapshot = snapshot
						v7.SnapshotAt = now
						arg.AcceptSnapshot(snapshot)
						arg.SyncShop(snapshot.Shop)
						local unconfirmed = tbl26.Unconfirmed

						if unconfirmed then
							local state = snapshot.State
							local flag4 = unconfirmed.Kind == "Shop"

							if flag4 then
								local before = unconfirmed.Before
								flag4 = arg.PurchaseCount(snapshot, unconfirmed.Id) > before
							end

							local flag5

							if flag4 then
								flag5 = flag4
							else
								flag5 = unconfirmed.Kind == "Milestone"

								if flag5 then
									flag5 = (state.ClaimedMilestoneIds or {})[unconfirmed.Id] == true

									if not flag5 then
										flag5 = unconfirmed.Id == (arg.Mastery and arg.Mastery.InfiniteMilestoneId)

										if flag5 then
											flag5 = (tonumber(state.InfiniteRewardsClaimed) or 0) > unconfirmed.Before
										end
									end
								end
							end

							if flag5 then
								tbl26.Unconfirmed = nil
								tbl26.LastReward = unconfirmed.Kind .. ": " .. unconfirmed.Id .. " confirmed"
							else
								local at = unconfirmed.At

								if os.clock() - at > 12 then
									tbl26.LastReward = "Awaiting server confirmation: " .. unconfirmed.Id .. " (no repeat request)"
								end
							end
						end
					end,
					Refresh = function()
						local pending = tbl26.Pending

						if not pending then
							local lastRefresh = tbl26.LastRefresh
							pending = os.clock() - lastRefresh < 3
						end

						if pending then
							return
						end
						tbl26.LastRefresh = os.clock()

						tbl26.Issue("Snapshot", arg.Scramble and arg.Scramble.Request, { "Snapshot" }, function(arg2, arg3)
							if arg2 and type(arg3) == "table" then
								tbl26.AcceptSnapshot(type(arg3.Snapshot) == "table" and arg3.Snapshot or arg3)
							end
						end)
					end,
					RewardStep = function()
						local pending = tbl26.Pending or tbl26.Unconfirmed or tbl26.InArena() or tbl26.Busy()

						if not pending then
							local nextReward = tbl26.NextReward
							pending = os.clock() < nextReward
						end

						if pending then
							return
						end
						local snapshot = tbl26.Snapshot
						local flag4 = not tbl26.SnapshotReady(snapshot)
						local flag5

						if flag4 then
							flag5 = flag4
						else
							local snapshotAt = tbl26.SnapshotAt
							flag5 = os.clock() - snapshotAt > 6
						end

						if flag5 then
							return
						end
						local autoClaimScrambleMastery = config.AutoClaimScrambleMastery and tbl26.NextMilestone(snapshot)
						local n5 = nil
						local str4 = nil
						local tbl27

						if autoClaimScrambleMastery then
							str4 = "Milestone"
							tbl27 = { "Milestone", autoClaimScrambleMastery }
							n5 = tonumber(snapshot.State.InfiniteRewardsClaimed) or 0
						else
							tbl27 = nil

							if config.AutoScrambleShop then
								tbl27 = nil

								for _, v6 in ipairs(snapshot.Shop) do
									if arg.OfferSelected(v6.Id) then
										local v7 = arg.PurchaseCount(snapshot, v6.Id)
										local n6 = math.clamp(math.floor(tonumber(config.ScramblePurchaseQuantity) or 1), 1, 100)
										local n7

										if tonumber(v6.PurchaseLimit) then
											n7 = math.min(n6, v6.PurchaseLimit)
										else
											n7 = n6
										end

										local flag6 = v7 < n7 and fn89(v6.Price) and v6.Price >= 0

										if flag6 then
											flag6 = (tonumber(snapshot.State.Samples) or 0) >= v6.Price
										end

										if flag6 and type(v6.Quote) == "string" and fn89(snapshot.State.ShopSequence) then
											autoClaimScrambleMastery = v6.Id
											str4 = "Shop"
											n5 = v7
											tbl27 = { "Shop", autoClaimScrambleMastery, { Quote = v6.Quote, Sequence = snapshot.State.ShopSequence } }
											break
										else
											tbl27 = nil
										end
									else
										tbl27 = nil
									end
								end
							end
						end

						if not tbl27 then
							return
						end
						tbl26.NextReward = os.clock() + 2

						tbl26.Issue(str4, arg.Scramble and arg.Scramble.Request, tbl27, function(arg2, arg3)
							tbl26.LastRefresh = -math.huge

							if not arg2 or arg3 == false or type(arg3) == "table" and arg3.Ok == false then
								tbl26.LastReward = "Request declined: " .. tostring(autoClaimScrambleMastery)
								tbl26.NextReward = os.clock() + 5
								return
							end

							tbl26.Unconfirmed = { Kind = str4, Id = autoClaimScrambleMastery, Before = n5, At = os.clock() }
							tbl26.LastReward = "Confirming " .. str4 .. ": " .. autoClaimScrambleMastery

							if type(arg3) == "table" and type(arg3.Snapshot) == "table" then
								tbl26.AcceptSnapshot(arg3.Snapshot)
							end
						end)
					end,
				}

				local function fn91(arg2, arg3)
					if not arg2 then
						return nil
					end
					local primaryPart = arg3 and arg2:FindFirstChild(arg3) or arg2:IsA("Model") and arg2.PrimaryPart or arg2
					if primaryPart and primaryPart:IsA("BasePart") then
						return primaryPart
					end
				end

				tbl26.ResolveTarget = function(arg2)
					local attribute = arg2:GetAttribute("Phase")
					local mech = arg2:FindFirstChild("Mech")

					if attribute == "Mech" then
						local attribute2 = arg2:GetAttribute("Health")
						local attribute3 = arg2:GetAttribute("MaxHealth")
						if not fn89(attribute2) or not fn89(attribute3) or attribute3 <= 1 or attribute2 <= 0 then
							return nil, "Waiting for authoritative Mech health"
						end
						local attribute4 = arg2:GetAttribute("GrabVictim")
						if config.ScrambleBossRescue and type(attribute4) == "number" and attribute4 ~= 0 and attribute4 ~= player.UserId then
							return fn91(mech, "GrabRescue"), "Rescue"
						end
						return fn91(mech, "Torso"), "Mech"
					end

					if attribute == "Ball" then
						if arg2:GetAttribute("BallStunned") == true then
							local attribute2 = arg2:GetAttribute("CoreHealth")
							local attribute3 = arg2:GetAttribute("CoreMax")
							if not fn89(attribute2) or not fn89(attribute3) or attribute2 <= 0 or attribute3 <= 0 then
								return nil, "Waiting for core health"
							end
							return fn91(arg2:FindFirstChild("Ball")), "Core"
						end

						local userId = player.UserId

						if arg2:GetAttribute("BallTarget") == userId then
							local attribute2 = arg2:GetAttribute("BallCoil")
							local coils = arg2:FindFirstChild("Coils")
							local flag4 = type(attribute2) == "string" and attribute2 ~= "" and coils and coils:FindFirstChild(attribute2)
							return fn91(flag4, "Zone") or fn91(flag4, "Top"), "Coil"
						end

						return nil, "Waiting for targeted player to stun Ball"
					end

					if attribute == "Human" then
						local scrambleHuman = arg2:FindFirstChild("ScrambleHuman")
						if not scrambleHuman or scrambleHuman:GetAttribute("Immune") == true then
							return nil, "Human is immune"
						end
						return fn91(scrambleHuman, "HumanoidRootPart") or fn91(scrambleHuman), "Human"
					end

					return nil, "Waiting for phase: " .. tostring(attribute)
				end

				tbl26.Danger = function(arg2, arg3)
					if not arg.Hazards then
						return false
					end
					local serverTimeNow = workspace:GetServerTimeNow()

					for k, hazard in pairs(tbl26.Hazards) do
						local n5 = serverTimeNow - hazard.At
						local ok, result2 = pcall(arg.Hazards.ActiveSeconds, hazard)
						if not ok or n5 > result2 + 1 then
							tbl26.Hazards[k] = nil
							continue
						end
						local ok2, result3 = pcall(arg.Hazards.Contains, hazard, math.max(0, n5 + (arg3 or 0)), arg2, false, 1)
						result3 = ok2 and result3

						if result3 then
							result3 = n5 >= -(arg3 or 0)
						end

						if result3 then
							return true
						end
					end

					return false
				end

				tbl26.Ground = function(arg2, arg3, arg4, arg5)
					local attribute = arg2:GetAttribute("FloorY")
					if not fn89(attribute) or math.abs(arg4.Position.Y - attribute) > 60 then
						return nil
					end
					local raycastParams = RaycastParams.new()
					raycastParams.FilterType = Enum.RaycastFilterType.Include
					raycastParams.FilterDescendantsInstances = { arg2 }
					raycastParams.RespectCanCollide = true
					local hit = workspace:Raycast(Vector3.new(arg3.X, attribute + 6, arg3.Z), Vector3.new(0, -12, 0), raycastParams)
					if not hit or math.abs(hit.Position.Y - attribute) > 4 then
						return nil
					end
					return Vector3.new(arg3.X, hit.Position.Y + arg5.HipHeight + arg4.Size.Y / 2, arg3.Z)
				end

				tbl26.Move = function(arg2, moveRoot, moveHumanoid, arg3, arg4)
					local lastMove = tbl26.LastMove
					if os.clock() - lastMove < 0.12 then
						return
					end
					local vector2 = Vector3.new(arg3.X - moveRoot.Position.X, 0, arg3.Z - moveRoot.Position.Z)
					if vector2.Magnitude < 1 then
						tbl26.StopMotion()
						return
					end
					local v6 = tbl26.Ground(arg2, moveRoot.Position + vector2.Unit * math.min(vector2.Magnitude, 12), moveRoot, moveHumanoid)
					local flag4 = not v6
					local flag5

					if flag4 then
						flag5 = flag4
					else
						flag5 = not arg4 and tbl26.Danger(v6, 0.25)
					end

					if flag5 then
						tbl26.StopMotion()
						return
					end
					tbl26.StopMotion()
					local v7 = tbl26
					local v8 = tbl26
					tbl26.LastMove = os.clock()
					v7.MoveRoot = moveRoot
					v8.MoveHumanoid = moveHumanoid
					local n5 = math.max((v6 - moveRoot.Position).Magnitude / math.clamp(tonumber(config.TweenSpeed) or 650, 20, 650), 0.05)
					moveRoot.AssemblyLinearVelocity = Vector3.zero
					local rotation = moveRoot.CFrame.Rotation
					tbl26.MoveTween = arg.TweenService:Create(moveRoot, TweenInfo.new(n5, Enum.EasingStyle.Linear), { CFrame = CFrame.new(v6) * rotation })
					tbl26.MoveTween:Play()
				end

				tbl26.Dodge = function(arg2, arg3, arg4)
					if not config.ScrambleBossDodge or not tbl26.Danger(arg3.Position, 0.3) then
						return false
					end

					for i = 8, 24, 8 do
						for i2 = 0, 11 do
							local n5 = i2 * 3.1415926535897931 / 6
							local v6 = tbl26.Ground(arg2, arg3.Position + Vector3.new(math.cos(n5) * i, 0, math.sin(n5) * i), arg3, arg4)

							if v6 and not tbl26.Danger(v6, 0.35) then
								tbl26.Move(arg2, arg3, arg4, v6, true)
								arg4.Jump = true
								tbl26.Status = "Dodging Scramble hazard"
								return true
							end
						end
					end

					tbl26.StopMotion()
					arg4.Jump = true
					tbl26.Status = "Hazard: waiting for a safe route"
					return true
				end

				tbl26.Swing = function()
					local character = player.Character
					local humanoid = character and character:FindFirstChildOfClass("Humanoid")
					if not character or not humanoid or humanoid.Health <= 0 then
						return
					end
					local v6, v7 = arg.EquipBat()
					if not v6 then
						tbl26.Status = "Bat unavailable: " .. tostring(v7 or "waiting for equip")
						return
					end

					if tbl26.SwingCharacter ~= character then
						local v8 = tbl26
						tbl26.SwingCharacter = character
						v8.LastHit = -math.huge
					end

					local lastHit = tbl26.LastHit
					if os.clock() - lastHit < math.clamp(tonumber(config.ScrambleBossAttackDelay) or 0.75, 0.35, 3) then
						return
					end

					for _, child in ipairs(character:GetChildren()) do
						if arg.IsBat(child) then
							tbl26.LastHit = os.clock()
							child:Activate()
							return
						end
					end
				end

				tbl26.Combat = function(arg2)
					local v6, v7, v8 = tbl26.Character()
					if not v6 then
						tbl26.Wait("Waiting for character / respawn")
						return
					end

					if player:GetAttribute("ScrambleGrabbed") == true then
						tbl26.Wait("Escaping Scramble grab")
						local hazardHit = arg.Boss and arg.Boss.HazardHit
						local flag4

						if hazardHit then
							local lastEscape = tbl26.LastEscape
							flag4 = os.clock() - lastEscape >= 0.12
						else
							flag4 = hazardHit
						end

						if flag4 then
							tbl26.LastEscape = os.clock()
							hazardHit:FireServer(-2)
						end

						return
					end

					if player:GetAttribute("ScrambleThrown") ~= nil or v8.PlatformStand then
						tbl26.Wait("Waiting for throw / transition")
						return
					end

					if tbl26.Dodge(arg2, v7, v8) then
						return
					end
					local v9, str4 = tbl26.ResolveTarget(arg2)

					if not v9 or not v9:IsDescendantOf(arg2) then
						local wait_ = tbl26.Wait
						str4 = str4 or "Waiting for target replication"
						wait_(str4)
						return
					end

					if (v9.Position - v7.Position).Magnitude > 350 then
						tbl26.Wait("Target outside current arena position; waiting for transition")
						return
					end
					local v10 = tbl26.Ground(arg2, v9.Position, v7, v8)
					if not v10 then
						tbl26.Wait("Waiting for arena floor / target position")
						return
					end
					local magnitude = Vector3.new(v10.X - v7.Position.X, 0, v10.Z - v7.Position.Z).Magnitude

					if str4 == "Coil" then
						tbl26.Status = "Leading Ball to active coil"
						tbl26.Move(arg2, v7, v8, v10)
						return
					end

					tbl26.Status = "Fighting " .. str4

					if magnitude > 5 then
						tbl26.Move(arg2, v7, v8, v10)
					else
						tbl26.StopMotion()
					end
				end

				tbl26.Tick = function()
					local arena = tbl26.GetArena()

					if arena ~= tbl26.Arena then
						tbl26.StopMotion()
						local v6 = tbl26
						tbl26.Arena = arena
						v6.Hazards = {}
						local v7 = tbl26
						tbl26.PreparedArena = nil
						v7.EntryPrepared = nil
						tbl26.Generation = tbl26.Generation + 1
					end

					local v6 = tbl26.InArena()

					if v6 and not tbl26.WasJoined then
						arg.ReleaseProtection()
					end

					if not v6 and tbl26.WasJoined then
						tbl26.LastRefresh = -math.huge
						tbl26.StopMotion()
					end

					tbl26.WasJoined = v6

					if v6 then
						tbl26.JoinUntil = nil

						if arg.ApplyArenaProtection then
							arg.ApplyArenaProtection()
						end

						if config.AutoScrambleBoss then
							tbl26.Swing()
						end

						if config.AutoScrambleBoss and arena and not tbl26.Busy() then
							tbl26.Combat(arena)
						else
							local wait_ = tbl26.Wait
							arena = arena and "Farm paused inside Scramble arena" or "Waiting for arena replication"
							wait_(arena)
						end
					elseif tbl26.JoinUntil then
						tbl26.Wait("Waiting for server to confirm arena entry")

						if tbl26.JoinUntil < os.clock() then
							tbl26.JoinUntil = nil
							tbl26.NextJoin = os.clock() + 10
						end
					elseif config.AutoScrambleBoss and tbl26.Joinable(arena) then
						tbl26.Wait(tbl26.Busy() and "Finishing farm / delivering held egg before boss" or "Entering Dr Scramble arena")
						local flag4 = not tbl26.Busy() and not tbl26.Pending
						local flag5

						if flag4 then
							local nextJoin = tbl26.NextJoin
							flag5 = os.clock() >= nextJoin
						else
							flag5 = flag4
						end

						if flag5 then
							if not tbl26.EntryPrepared or tbl26.PreparedArena ~= arena then
								tbl26.PreparedArena = arena
								tbl26.EntryPrepared = true
								arg.PrepareEntry()
							end

							if arg.EntryReady and not arg.EntryReady() then
								tbl26.Status = "Waiting for treadmill release"
								return
							end

							if arg.ApproachEntry then
								tbl26.EntryMoving = true
								tbl26.Status = "Tweening to Dr Scramble portal"

								local ok, result2, result3 = pcall(arg.ApproachEntry, function()
									return not tbl26.Alive or not runtime.Alive or not config.AutoScrambleBoss or tbl26.InArena() or not tbl26.Joinable(tbl26.GetArena())
								end)

								tbl26.EntryMoving = nil
								if tbl26.InArena() then
									return
								end

								if not tbl26.Alive or not runtime.Alive or not config.AutoScrambleBoss then
									return
								end

								if not ok or not result2 then
									tbl26.Status = "Portal approach paused: " .. tostring(ok and result3 or result2)
									tbl26.NextJoin = os.clock() + 2
									return
								end
							end

							tbl26.NextJoin = os.clock() + 10
							tbl26.JoinUntil = os.clock() + 15

							if not tbl26.Issue("Join", arg.Boss and arg.Boss.EnterArena, {}, function(arg2, arg3)
								if not arg2 or arg3 ~= true then
									tbl26.JoinUntil = nil
									tbl26.Status = "Arena entry declined; retrying later"
								else
									tbl26.JoinUntil = os.clock() + 15
								end
							end) then
								tbl26.JoinUntil = nil
								tbl26.Status = "Scramble entry remote unavailable"
							end
						end
					else
						local v7 = tbl26
						tbl26.PreparedArena = nil
						v7.EntryPrepared = nil
						tbl26.Wait(config.AutoScrambleBoss and "Waiting for Dr Scramble arena to appear" or "Scramble boss automation disabled")
						tbl26.RewardStep()
					end

					if config.AutoScrambleShop or config.AutoClaimScrambleMastery or arg.TabVisible() then
						tbl26.Refresh()
					end

					local pending = tbl26.Pending

					if pending then
						local at = tbl26.Pending.At
						pending = os.clock() - at > 12
					end

					if pending then
						tbl26.LastError = tbl26.Pending.Key .. " response delayed; duplicate requests blocked"
					end
				end

				tbl26.Start = function()
					if tbl26.Started then
						return
					end
					tbl26.Started = true

					if arg.RunService then
						tbl26.Connections[#tbl26.Connections + 1] = arg.RunService.Heartbeat:Connect(function()
							local moveTween = tbl26.MoveTween

							if moveTween then
								local flag4 = not tbl26.Alive or not runtime.Alive or not config.AutoScrambleBoss or not tbl26.InArena()

								if not flag4 then
									local arena = tbl26.Arena
									flag4 = tbl26.GetArena() ~= arena
								end

								moveTween = flag4 or not tbl26.MoveRoot or tbl26.MoveRoot.Parent ~= player.Character or not tbl26.MoveHumanoid or tbl26.MoveHumanoid.Health <= 0 or tbl26.MoveRoot.Anchored
							end

							if moveTween then
								tbl26.StopMotion()
							end
						end)
					end

					local hazard = arg.Boss and arg.Boss.Hazard

					if hazard then
						tbl26.Connections[#tbl26.Connections + 1] = hazard.OnClientEvent:Connect(function(arg2)
							if not tbl26.Alive or not tbl26.GetArena() or type(arg2) ~= "table" or arg2.Id == nil or not fn89(arg2.At) or typeof(arg2.Origin) ~= "Vector3" then
								return
							end
							tbl26.Hazards[arg2.Id] = arg2
						end)
					end

					task.spawn(function()
						while tbl26.Alive and runtime.Alive do
							local ok, result2 = xpcall(tbl26.Tick, debug.traceback)

							if not ok then
								tbl26.LastError = tostring(result2)
								tbl26.StopMotion()
							end

							task.wait(tbl26.InArena() and 0.12 or 0.4)
						end

						tbl26.Stop()
					end)
				end

				tbl26.Stop = function()
					tbl26.Alive = false
					tbl26.StopMotion()

					for _, connection in ipairs(tbl26.Connections) do
						connection:Disconnect()
					end

					table.clear(tbl26.Connections)
					table.clear(tbl26.Hazards)
					local v6 = tbl26
					tbl26.Pending = nil
					v6.JoinUntil = nil
				end

				return tbl26
			end
		end

		local v6 = fn88()

		local function fn89(arg, arg2)
			local v7 = arg and arg:FindFirstChild(arg2)
			if not v7 or not v7:IsA("ModuleScript") then
				return nil
			end
			local ok, result2 = pcall(require, v7)
			return ok and result2 or nil
		end

		local flags = ReplicatedStorage.Shared:FindFirstChild("Flags")
		local util = ReplicatedStorage.Shared:FindFirstChild("Util")
		local v7 = table.clone(tbl3)
		local v8 = nil
		local v9 = nil
		local n5 = -math.huge

		local function fn90()
			if v9 and v9:IsDescendantOf(Workspace) then
				return v9
			end
			v9 = nil
			if os.clock() - n5 < 1 then
				return nil
			end
			n5 = os.clock()

			for _, v10 in ipairs(Workspace:QueryDescendants("TextLabel")) do
				if v10.Text:gsub("<[^>]*>", ""):upper():gsub("%s+", " ") == "DR. SCRAMBLE'S MECH" then
					local billboardGui2 = v10:FindFirstAncestorWhichIsA("BillboardGui")

					if billboardGui2 then
						billboardGui2 = billboardGui2.Adornee or billboardGui2.Parent
					end

					for i = 1, 6 do
						if not billboardGui2 or billboardGui2 == Workspace then
							break
						end

						if billboardGui2:IsA("Model") then
							if billboardGui2.Name == "ScrambleArena" or billboardGui2:FindFirstChildOfClass("Humanoid") then
								break
							end
							local boundingBox, v11 = billboardGui2:GetBoundingBox()
							if v11.X > 2 and v11.Z > 2 and v11.X < 100 and v11.Y < 100 and v11.Z < 100 then
								v9 = billboardGui2
								return billboardGui2
							end
						end

						billboardGui2 = billboardGui2.Parent
					end
				end
			end
		end

		tbl2.Event.ScrambleV2 = v6({
			Config = tbl,
			Runtime = tbl2,
			Workspace = Workspace,
			Player = localPlayer,
			TweenService = TweenService2,
			RunService = RunService,
			Boss = v and v.ScrambleBoss,
			Scramble = v and v.Scramble,
			BossFlags = fn89(flags, "ScrambleBossFlags"),
			Mastery = fn89(ReplicatedStorage.Data, "ScrambleMastery"),
			Hazards = fn89(util, "ScrambleBossHazards"),
			EquipBat = equipBat,
			IsBat = fn34,
			ReleaseProtection = function()
				restoreProtectedHumanoid()

				if localPlayer.Character then
					setMovementNoClip(localPlayer.Character, false)
				end

				tbl2.EndAntiHitCameraHold()
			end,
			ApplyArenaProtection = function()
				local character = localPlayer.Character
				character = character and character:FindFirstChildOfClass("Humanoid")

				if character then
					protectHumanoid(character)
				end
			end,
			PrepareEntry = function()
				tbl2.ClearTreadmillState("SCRAMBLE_BOSS", false)
				return not tbl2.TreadmillUnequipBusy
			end,
			EntryReady = function()
				return not tbl2.TreadmillUnequipBusy
			end,
			GetEntryPortal = fn90,
			ApproachEntry = function(arg)
				local v10 = fn90()
				if not v10 then
					return false, "Waiting for replicated Scramble portal"
				end
				local position5 = v10:GetBoundingBox().Position
				local character = localPlayer.Character

				local v11, v12 = moveTo(position5, "AutoScrambleBoss", function()
					if arg() or localPlayer.Character ~= character or not v10:IsDescendantOf(Workspace) then
						return true, "Portal entry cancelled"
					end
					return false
				end, tbl.TweenSpeed, 2)

				if not v11 then
					return false, v12
				end
				local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
				return humanoidRootPart ~= nil and (humanoidRootPart.Position - position5).Magnitude <= 8, "Waiting to reach portal"
			end,
			TabVisible = function()
				return tbl2.IsTabVisible(tbl13.Event)
			end,
			AcceptSnapshot = function(arg)
				fn10(arg, "ScrambleV2Request")
				tbl2.Event.InvalidateScrambleSnapshot()
			end,
			PurchaseCount = function(arg, arg2)
				return tbl2.Event.GetScramblePurchaseCount(arg, arg2)
			end,
			OfferSelected = function(arg)
				local v10 = pairs
				local selectedScrambleOffers = tbl.SelectedScrambleOffers or {}

				for k, selectedScrambleOffer in v10(selectedScrambleOffers) do
					if selectedScrambleOffer then
						selectedScrambleOffer = k == arg or tbl3[k] == arg or v7[k] == arg
					end

					if selectedScrambleOffer then
						return true
					end
				end

				return false
			end,
			SyncShop = function(arg)
				local tbl25 = {}
				local tbl26 = {}
				local tbl27 = {}
				local tbl28 = {}
				local v10 = pairs
				local selectedScrambleOffers = tbl.SelectedScrambleOffers or {}

				for k, selectedScrambleOffer in v10(selectedScrambleOffers) do
					if selectedScrambleOffer then
						tbl28[tbl3[k] or v7[k] or k] = true
					end
				end

				for _, v11 in ipairs(arg) do
					if type(v11.Id) == "string" then
						local str4 = tostring(v11.Label or v11.Id)

						if tbl27[str4] then
							str4 ..= " (" .. v11.Id .. ")"
						end

						tbl27[str4] = v11.Id
						tbl26[#tbl26 + 1] = str4
						tbl25[#tbl25 + 1] = v11.Id .. ":" .. str4
					end
				end

				local str4 = table.concat(tbl25, "|")
				if str4 == v8 then
					return
				end
				v8 = str4
				table.clear(tbl4)
				table.clear(tbl3)
				local selectedScrambleOffers2 = {}

				for _, v11 in ipairs(tbl26) do
					tbl4[#tbl4 + 1] = v11
					tbl3[v11] = tbl27[v11]

					if tbl28[tbl27[v11]] then
						selectedScrambleOffers2[v11] = true
					end
				end

				tbl.SelectedScrambleOffers = selectedScrambleOffers2
				local scrambleOfferDropdown = tbl2.Event.ScrambleOfferDropdown

				if scrambleOfferDropdown then
					scrambleOfferDropdown:SetValues(tbl26)
					scrambleOfferDropdown:SetValue(selectedScrambleOffers2)
					tbl2.Localization.KeepEnglishOptions(scrambleOfferDropdown.Instance.Frame, tbl26)
				end
			end,
		})

		local scrambleV2 = tbl2.Event.ScrambleV2
		local v10 = fn73(tbl13.Event, "Dr Scramble Boss ( 26/09/2026 )")
		local ScrambleBossLiveStatus = v10:CreateParagraph("ScrambleBossLiveStatus", { Title = "Dr Scramble Boss", Content = "Waiting for arena state..." })

		v10:CreateToggle("AutoScrambleBoss", {
			Title = "Auto Dr Scramble Boss",
			Description = "Finishes the current farm delivery, joins the live arena, then follows Mech / Ball / Human phases. Farm resumes after leaving the arena.",
			Default = tbl.AutoScrambleBoss,
		}):OnChanged(function(arg)
			tbl.AutoScrambleBoss = arg == true

			if not arg then
				scrambleV2.StopMotion()
			end
		end)

		v10:CreateToggle("ScrambleBossDodge", { Title = "Dodge Scramble Hazards", Default = tbl.ScrambleBossDodge }):OnChanged(function(arg)
			tbl.ScrambleBossDodge = arg == true
		end)

		v10:CreateToggle("ScrambleBossRescue", { Title = "Rescue Grabbed Players", Default = tbl.ScrambleBossRescue }):OnChanged(function(arg)
			tbl.ScrambleBossRescue = arg == true
		end)

		fn75(v10, "ScrambleBossAttackDelay", "Scramble Attack Delay (seconds)", 0.35, 3)
		fn75(v10, "ScrambleBossAttackRange", "Scramble Attack Range", 5, 20)
		local v11 = fn73(tbl13.Event, "Scramble Boss Mastery ( 26/09/2026 )")
		local ScrambleMasteryLiveStatus = v11:CreateParagraph("ScrambleMasteryLiveStatus", { Title = "Scramble Boss Mastery", Content = "Reading server mastery..." })

		v11:CreateToggle("AutoClaimScrambleMastery", {
			Title = "Auto Claim Scramble Mastery",
			Default = tbl.AutoClaimScrambleMastery,
			Description = "Claims eligible milestones in order and verifies the server state before the next request.",
		}):OnChanged(function(arg)
			tbl.AutoClaimScrambleMastery = arg == true
		end)

		v11:CreateToggle("ScrambleClaimInfinite", { Title = "Infinite Rewards", Default = tbl.ScrambleClaimInfinite }):OnChanged(function(arg)
			tbl.ScrambleClaimInfinite = arg == true
		end)

		v11:CreateButton({
			Title = "Refresh Scramble State",
			Callback = function()
				scrambleV2.LastRefresh = -math.huge
			end,
		})

		v10:Collapse()
		v11:Collapse()
		scrambleV2.Start()

		task.spawn(function()
			local v12 = nil
			local v13 = nil

			while tbl2.Alive and scrambleV2.Alive do
				if tbl2.IsTabVisible(tbl13.Event) then
					local str4 = scrambleV2.GetArena()
					local attribute = str4 and str4:GetAttribute("Phase") or "Unavailable"

					if str4 then
						str4 = string.format("HP %s/%s | Core %s/%s | Human %s/%s", tostring(str4:GetAttribute("Health") or "?"), tostring(str4:GetAttribute("MaxHealth") or "?"), tostring(str4:GetAttribute("CoreHealth") or "?"), tostring(str4:GetAttribute("CoreMax") or "?"), tostring(str4:GetAttribute("HumanHits") or "?"), tostring(str4:GetAttribute("HumanNeeded") or "?"))
					end

					str4 = str4 or "No live arena"
					local str5 = string.format("%s | %s\n%s\n%s%s", tostring(attribute), scrambleV2.InArena() and "Inside arena — farm paused" or "Outside arena", str4, scrambleV2.Status, scrambleV2.LastError and "\n" .. scrambleV2.LastError or "")

					if str5 ~= v12 then
						ScrambleBossLiveStatus:SetValue(str5)
						v12 = str5
					end

					local state = scrambleV2.Snapshot and scrambleV2.Snapshot.State or {}
					local v14 = scrambleV2.NextMilestone(scrambleV2.Snapshot)
					local str6 = string.format("Mastery: %d | Samples: %d\nNext claim: %s\n%s", tonumber(state.Mastery) or 0, tonumber(state.Samples) or 0, tostring(v14 or "No eligible reward"), scrambleV2.LastReward or "Ready")

					if str6 ~= v13 then
						ScrambleMasteryLiveStatus:SetValue(str6)
						v13 = str6
					end
				end

				task.wait(0.75)
			end
		end)

		tbl2.Event.ScrambleSection = fn73(tbl13.Event, "Dr Scramble's Experiments")
		tbl2.Event.ScrambleParagraph = tbl2.Event.ScrambleSection:CreateParagraph("ScrambleStatus", { Title = "Scramble Status", Content = "Reading outbreak, Samples and shop state..." })

		tbl2.Event.ScrambleFarmToggle = tbl2.Event.ScrambleSection:CreateToggle("AutoScrambleFarm", {
			Title = "Auto Farm Scramble Currency",
			Description = "Moves to outbreak drones, attacks with the Bat, then visits Sample drops.",
			Default = tbl.AutoScrambleFarm,
		})

		tbl2.Event.ScrambleVaultToggle = tbl2.Event.ScrambleSection:CreateToggle("AutoScrambleVault", {
			Title = "Experiment Vault Assistant",
			Description = "Starts the quest, moves to each Lost Part, then waits for a manual E hold. No synthetic input is sent.",
			Default = tbl.AutoScrambleVault,
		})

		tbl2.Event.ScrambleShopToggle = tbl2.Event.ScrambleSection:CreateToggle("AutoScrambleShop", {
			Title = "Auto Buy Samples Shop",
			Description = "Buys selected offers until each reaches the configured purchase count for the current shop period.",
			Default = tbl.AutoScrambleShop,
		})

		tbl2.Event.ScrambleOfferDropdown = tbl2.Event.ScrambleSection:CreateDropdown("SelectedScrambleOffers", {
			Title = "Experiments / Boosters",
			Description = "Multi-select the experiments, mutation consumable and boosters to buy.",
			Values = tbl4,
			Multi = true,
			Default = fn74(tbl.SelectedScrambleOffers),
		})

		tbl2.Localization.KeepEnglishOptions(tbl2.Event.ScrambleOfferDropdown.Instance.Frame, tbl2.Event.ScrambleOfferDropdown.Values)
		tbl2.Event.ScramblePurchaseInput = fn75(tbl2.Event.ScrambleSection, "ScramblePurchaseQuantity", "Purchase Count Per Selected Offer", 1, 100)
		tbl2.Event.ScrambleMoveInput = fn75(tbl2.Event.ScrambleSection, "ScrambleMoveSpeed", "Scramble Movement Speed", 50, 1500)
		tbl2.Event.ScrambleArrivalInput = fn75(tbl2.Event.ScrambleSection, "ScrambleDroneArrivalDistance", "Scramble Drone Arrival Distance", 2, 12)
		tbl2.Event.ScrambleDelayInput = fn75(tbl2.Event.ScrambleSection, "ScrambleActionDelay", "Scramble Non-combat Delay (seconds)", 0.1, 5)

		tbl2.Event.ScrambleRefreshButton = tbl2.Event.ScrambleSection:CreateButton({
			Title = "Refresh Scramble State",
			Callback = function()
				runAction("SCRAMBLE_READ", function()
					tbl2.Event.StartScrambleObserver()
					local v12, v13 = tbl2.Event.FetchScrambleSnapshot(true)
					return v12 ~= nil, v13
				end)
			end,
		})

		tbl2.Event.ScrambleFarmToggle:OnChanged(function(arg)
			tbl.AutoScrambleFarm = arg == true

			if tbl.AutoScrambleFarm then
				tbl2.Scramble.FarmEntryPending = true
				tbl2.Scramble.CombatTargetId = nil
				tbl2.Scramble.CombatTargetMissingSince = nil
				tbl2.Scramble.HigherVisualWaitId = nil
				tbl2.Scramble.HigherVisualWaitSince = nil
				tbl2.Scramble.FarmWasActive = false
				tbl2.Scramble.FarmWindowToken = nil
				startScrambleEventCoordinator()
			else
				tbl2.Scramble.FarmEntryPending = false
				tbl2.Scramble.CombatTargetId = nil
				tbl2.Scramble.CombatTargetMissingSince = nil
				tbl2.Scramble.HigherVisualWaitId = nil
				tbl2.Scramble.HigherVisualWaitSince = nil
				tbl2.Scramble.FarmWasActive = false
				tbl2.Scramble.FarmWindowToken = nil

				if tbl2.FarmTransaction and tbl2.FarmTransaction.Name == "SCRAMBLE_EVENT" then
					stopMovement()
				end
			end
		end)

		tbl2.Event.ScrambleVaultToggle:OnChanged(function(arg)
			tbl.AutoScrambleVault = arg == true

			if tbl.AutoScrambleVault then
				tbl2.Scramble.VaultInterfaceShown = false
				startScrambleEventCoordinator()
			elseif tbl2.FarmTransaction and (tbl2.FarmTransaction.Name == "SCRAMBLE_VAULT" or tbl2.FarmTransaction.Name == "SCRAMBLE_VAULT_DRONES") then
				stopMovement()
			end
		end)

		tbl2.Event.ScrambleShopToggle:OnChanged(function(arg)
			tbl.AutoScrambleShop = arg == true

			if tbl.AutoScrambleShop then
				startScrambleEventCoordinator()
			end
		end)

		tbl2.Event.ScrambleOfferDropdown:OnChanged(function(selectedScrambleOffers)
			tbl.SelectedScrambleOffers = selectedScrambleOffers
		end)

		tbl2.Event.ScrambleSection:Collapse()
		task.wait()
		tbl2.FPS.Section = fn73(tbl13.Visuals, "Performance")

		tbl2.FPS.Toggle = tbl2.FPS.Section:CreateToggle("FPSBoost", {
			Title = "Deep FPS Boost",
			Description = "Keep world colors and geometry while removing expensive texture, surface, lighting and effect layers.",
			Default = tbl.FPSBoost,
		})

		tbl2.FPS.Toggle:OnChanged(function(arg)
			tbl.FPSBoost = arg == true
			tbl2.FPS.QueueRefresh()
		end)

		tbl2.FPS.Section:Collapse()
		task.wait()
		tbl20.ESPSection = fn73(tbl13.Visuals, "Egg ESP")
		tbl20.ESPToggle = tbl20.ESPSection:CreateToggle("EggESP", { Title = "Egg ESP", Default = tbl.EggESP })
		tbl20.ESPDistanceSlider = tbl20.ESPSection:CreateSlider("ESPDistance", { Title = "ESP Distance", Default = tbl.ESPDistance, Min = 100, Max = 5000, Rounding = 0 })
		tbl20.InterfaceSection = fn73(tbl13.Settings, "Interface")
		tbl20.InterfaceSection:CreateKeybind("MinimizeBind", { Title = "Minimize Bind", Mode = "Toggle", Default = "RightControl" })

		tbl20.InterfaceSection:CreateButton({
			Title = "Unload Hub",
			Callback = function()
				if type(Environment.EggStealHub) == "table" and type(Environment.EggStealHub.Destroy) == "function" then
					Environment.EggStealHub.Destroy()
				end
			end,
		})

		tbl2.SaveManager:SetLibrary(Library)
		tbl2.InterfaceManager:SetLibrary(Library)
		tbl2.SaveManager:IgnoreThemeSettings()
		tbl2.SaveManager:SetIgnoreIndexes({ "VisualCleanup", "Language", "PreferredLanguage" })
		tbl2.InterfaceManager:SetFolder("Angeryy05Hub")
		tbl2.SaveManager:SetFolder("Angeryy05Hub/EggSteal")
		tbl2.InterfaceManager:BuildInterfaceSection(tbl13.Settings)
		tbl2.SaveManager:BuildConfigSection(tbl13.Settings)
		setPhase("ComponentsReady")
		task.wait()

		tbl20.CheckerToggle:OnChanged(function(arg)
			tbl.PrioritizeMoneyPerSecond = arg == true
			table.clear(tbl2.TargetRateCache)
			tbl2.TargetDirty = true
			tbl2.Checker.Dirty = true
			tbl2.Checker.SetEnabled(tbl.PrioritizeMoneyPerSecond)
		end)

		tbl20.FarmCycleToggle:OnChanged(function(arg)
			tbl.AutoFarmCycle = arg == true
			tbl2.FarmCycleNextSellScanAt = 0
			tbl2.FarmCycleNextPlaceScanAt = 0
			tbl2.FarmCyclePlacePendingUntil = 0
			tbl2.FarmCycleLastSellResult = "None"
			tbl2.TargetDirty = true

			if tbl.AutoFarmCycle then
				startFarmCycleWorker()
			else
				tbl2.FarmCycleStatus = "Disabled"
			end
		end)

		tbl20.TPWalkToggle:OnChanged(function(arg)
			tbl.TPWalkEnabled = arg == true
			tbl2.SetTPWalkFrameWriters(tbl.TPWalkEnabled)
			clearTPWalkBarrierLock()
			tbl2.TPWalk.CurrentRoot = nil

			if tbl.TPWalkEnabled then
				tbl2.ClearTreadmillState("TP_WALK", true)
				local v12, v13, v14 = getTPWalkCharacter()

				if v13 ~= nil then
					primeMovementIntegrity(v13, v13.Position)
				end

				if v14 ~= nil then
					protectHumanoid(v14, true, true)
				end

				if tbl.GuardBypass and tbl2.RefreshForestAttackProtection then
					tbl2.RefreshForestAttackProtection()
				end

				if v12 ~= nil and tbl.NoClipMovement then
					setMovementNoClip(v12, false)
				end
			else
				local character = localPlayer.Character

				if character ~= nil and tbl2.NoClipCharacter == character then
					setMovementNoClip(character, false)
				end

				if not tbl.GodMode and not tbl.AntiRagdoll then
					restoreProtectedHumanoid()
				end
			end
		end)

		tbl20.AntiAfkToggle:OnChanged(function(arg)
			tbl2.SetAntiAfk(arg)
		end)

		tbl20.TPWalkSpeedInput:OnChanged(function(arg)
			tbl.TPWalkSpeed = tonumber(arg) or 1
		end)

		tbl20.TPWalkStepCapInput:OnChanged(function(arg)
			tbl.TPWalkStepCap = tonumber(arg) or 2.25
		end)

		tbl20.AutoStealToggle:OnChanged(function(arg)
			tbl.AutoSteal = arg == true

			if tbl.AutoSteal then
				stopMovement()
				tbl2.TargetDirty = true
				startWorker("STEAL", "AutoSteal", "FarmDelay", stealStep)
			else
				stopMovement()

				if tbl2.NoClipEnabled then
					setMovementNoClip(tbl2.NoClipCharacter, false)
				end
			end
		end)

		tbl20.AntiHitStealToggle:OnChanged(function(arg)
			tbl.AntiHitSteal = arg == true

			if tbl.AntiHitSteal then
				tbl2.QueueAntiHitCarryEscape()
			else
				if tbl2.AntiHitSteal.Active then
					stopMovement()
				end

				tbl2.EndAntiHitCameraHold()
			end
		end)

		tbl20.AutoDropHeldToggle:OnChanged(function(arg)
			tbl.AutoDropHeldEgg = arg == true

			if tbl.AutoDropHeldEgg then
				startWorker("DROP", "AutoDropHeldEgg", "UtilityDelay", dropHeldEgg)
			end
		end)

		Options.PreemptHigherPriority:OnChanged(function(arg)
			tbl.PreemptHigherPriority = arg == true
			tbl2.TargetDirty = true
		end)

		tbl20.ArenaDropdown:OnChanged(function(arg)
			local selectedArenas = {}

			for k, v12 in pairs(arg) do
				if k ~= "All" and v12 == true then
					selectedArenas[k] = true
				end
			end

			if arg.All == true and not selectedEmpty(tbl.SelectedArenas) then
				selectedArenas = {}
			end

			tbl.SelectedArenas = selectedArenas
			local tbl25 = selectedEmpty(selectedArenas) and { All = true } or selectedArenas
			local v12, v13, v14 = pairs(arg)
			local flag4 = false

			for k, v15 in v12, v13, v14 do
				if v15 == true ~= tbl25[k] == true then
					flag4 = true
				end
			end

			for k, v15 in pairs(tbl25) do
				if v15 == true and arg[k] ~= true then
					flag4 = true
				end
			end

			if flag4 then
				tbl20.ArenaDropdown:SetValue(tbl25)
			end

			table.clear(tbl2.Blacklist)
			tbl2.TargetDirty = true
		end)

		tbl20.RarityDropdown:OnChanged(function(arg)
			local selectedRarities = {}

			for _, v12 in ipairs({ "Divine", "Eternal", "Secret" }) do
				if arg[v12] == true then
					selectedRarities[v12] = true
				end
			end

			if arg.All == true and tbl.SelectedRarities.All ~= true then
				selectedRarities = { All = true }
			elseif arg.All == true and selectedEmpty(selectedRarities) then
				selectedRarities = { All = true }
			end

			tbl.SelectedRarities = selectedRarities
			local flag4 = false

			for k, v12 in pairs(arg) do
				if v12 == true ~= selectedRarities[k] == true then
					flag4 = true
				end
			end

			for k, selectedRarity in pairs(selectedRarities) do
				if selectedRarity == true and arg[k] ~= true then
					flag4 = true
				end
			end

			if flag4 then
				tbl20.RarityDropdown:SetValue(selectedRarities)
			end

			table.clear(tbl2.Blacklist)
			tbl2.TargetDirty = true
		end)

		tbl20.AutoServerHopToggle:OnChanged(function(arg)
			tbl.AutoServerHop = arg == true
			tbl20.ServerBrowserGui.Enabled = tbl.AutoServerHop

			if tbl.AutoServerHop then
				fn32()
				tbl2.ServerBrowser.Refresh()
			else
				local serverBrowser = tbl2.ServerBrowser
				serverBrowser.Generation = serverBrowser.Generation + 1
				tbl2.ServerBrowser.Busy = false
			end
		end)

		tbl20.TweenSpeedSlider:OnChanged(function(tweenSpeed)
			tbl.TweenSpeed = tweenSpeed
		end)

		tbl20.ArrivalSlider:OnChanged(function(arrivalDistance)
			tbl.ArrivalDistance = arrivalDistance
		end)

		tbl20.BigEggToggle:OnChanged(function(arg)
			tbl.BigEggOnly = arg == true
			table.clear(tbl2.Blacklist)
			tbl2.TargetDirty = true
		end)

		tbl20.AvoidTrapsToggle:OnChanged(function(arg)
			tbl.AvoidTraps = arg == true
		end)

		tbl20.BatAuraToggle:OnChanged(function(arg)
			tbl.AutoBatAura = arg == true

			if tbl.AutoBatAura then
				startWorker("BAT_AURA", "AutoBatAura", "AttackDelay", batAuraStep)
			end
		end)

		tbl20.PlayerStealToggle:OnChanged(function(arg)
			tbl.AutoStealFromPlayers = arg == true

			if tbl.AutoStealFromPlayers then
				startWorker("PLAYER_STEAL", "AutoStealFromPlayers", "AttackDelay", autoStealFromPlayersStep)
			elseif tbl2.PlayerSteal.AutoBusy and tbl2.PlayerSteal.Mode == "Auto" and tbl2.PlayerSteal.TargetUserId then
				stopMovement()
			elseif not tbl2.PlayerSteal.ManualBusy then
				tbl2.PlayerSteal.Status = "Auto Steal From Players disabled"
			end
		end)

		tbl20.PlayerStealRarityDropdown:OnChanged(function(arg)
			local playerStealRarities = {}

			if arg.All == true then
				playerStealRarities.All = true
			else
				for _, v12 in ipairs({ "Secret", "Eternal", "Divine" }) do
					if arg[v12] == true then
						playerStealRarities[v12] = true
					end
				end
			end

			tbl.PlayerStealRarities = playerStealRarities
		end)

		tbl20.AutoEquipBatToggle:OnChanged(function(arg)
			tbl.AutoEquipBat = arg == true

			if tbl.AutoEquipBat then
				startWorker("BAT_EQUIP", "AutoEquipBat", "UtilityDelay", equipBat)
			end
		end)

		tbl20.AntiRagdollToggle:OnChanged(function(arg)
			tbl.AntiRagdoll = arg == true

			if not tbl.AntiRagdoll and not tbl.GodMode then
				restoreProtectedHumanoid()
			end
		end)

		tbl20.AntiHitToggle:OnChanged(function(arg)
			tbl.AntiHit = arg == true
			tbl2.ApplyAntiHit()
		end)

		tbl20.ManualCarryLiftToggle:OnChanged(function(arg)
			tbl.ManualCarryLift = arg == true

			if not tbl.ManualCarryLift then
				tbl2.StopManualCarryLift()
			end
		end)

		tbl20.AuraRangeSlider:OnChanged(function(auraRange)
			tbl.AuraRange = auraRange
		end)

		tbl20.AutoTreadmillToggle:OnChanged(function(arg)
			tbl.AutoTreadmillTraining = arg == true

			if tbl.AutoTreadmillTraining then
				startWorker("TREADMILL", "AutoTreadmillTraining", "UtilityDelay", treadmillTrainingStep)
			end
		end)

		tbl20.AutoTreadmillUpgradeToggle:OnChanged(function(arg)
			tbl.AutoTreadmillUpgrade = arg == true

			if tbl.AutoTreadmillUpgrade then
				startWorker("TREADMILL_UPGRADE", "AutoTreadmillUpgrade", "UtilityDelay", treadmillUpgradeStep)
			end
		end)

		tbl20.AutoBaseUpgradeToggle:OnChanged(function(arg)
			tbl.AutoBaseUpgrade = arg == true

			if tbl.AutoBaseUpgrade then
				startWorker("BASE_UPGRADE", "AutoBaseUpgrade", "UtilityDelay", baseUpgradeStep)
			end
		end)

		tbl20.AutoEquipToggle:OnChanged(function(arg)
			tbl.AutoEquipBest = arg == true

			if tbl.AutoEquipBest then
				startWorker("EQUIP", "AutoEquipBest", "EquipDelay", equipBest)
			end
		end)

		tbl20.AutoTrailToggle:OnChanged(function(arg)
			tbl.AutoEquipBestTrail = arg == true

			if tbl.AutoEquipBestTrail then
				startWorker("TRAIL", "AutoEquipBestTrail", "UtilityDelay", equipBestTrail)
			end
		end)

		tbl20.AutoBuyTrailToggle:OnChanged(function(arg)
			tbl.AutoBuyTrail = arg == true

			if tbl.AutoBuyTrail then
				startWorker("TRAIL_BUY", "AutoBuyTrail", "UtilityDelay", buyWantedTrailStep)
			end
		end)

		tbl20.WantedTrailDropdown:OnChanged(function(wantedTrails)
			tbl.WantedTrails = wantedTrails
		end)

		tbl20.AutoEquipBestGearToggle:OnChanged(function(arg)
			tbl.AutoEquipBestGear = arg == true

			if tbl.AutoEquipBestGear then
				startWorker("GEAR_EQUIP", "AutoEquipBestGear", "UtilityDelay", equipBestGear)
			end
		end)

		tbl20.AutoSellAllToggle:OnChanged(function(arg)
			tbl.AutoSellAllEligible = arg == true

			if tbl.AutoSellAllEligible then
				tbl.AutoSellSelected = false
				startWorker("SELL_ALL", "AutoSellAllEligible", "SellDelay", autoSellAllStep)
			end
		end)

		tbl20.AutoFreeGiftsToggle:OnChanged(function(arg)
			tbl.AutoClaimFreeGifts = arg == true

			if tbl.AutoClaimFreeGifts then
				startWorker("FREE_GIFTS", "AutoClaimFreeGifts", "UtilityDelay", claimFreeGifts)
			end
		end)

		tbl20.AutoGroupRewardToggle:OnChanged(function(arg)
			tbl.AutoClaimGroupReward = arg == true

			if tbl.AutoClaimGroupReward then
				startWorker("GROUP_REWARD", "AutoClaimGroupReward", "UtilityDelay", claimGroupReward)
			end
		end)

		tbl20.AutoIndexRewardToggle:OnChanged(function(arg)
			tbl.AutoClaimIndexRewards = arg == true

			if tbl.AutoClaimIndexRewards then
				startWorker("INDEX_REWARD", "AutoClaimIndexRewards", "UtilityDelay", claimIndex)
			end
		end)

		tbl20.ESPToggle:OnChanged(function(arg)
			tbl.EggESP = arg == true

			if not tbl.EggESP then
				clearMarkers()
			end
		end)

		tbl20.ESPDistanceSlider:OnChanged(function(espDistance)
			tbl.ESPDistance = espDistance
		end)

		tbl20.FarmAutomation:Collapse()
		tbl20.AutoServerHopSection:Collapse()
		tbl20.MovementSection:Collapse()
		tbl20.AntiAfkSection:Collapse()
		tbl20.DefenseSection:Collapse()
		tbl20.ManualCarrySection:Collapse()
		tbl20.TrainingSection:Collapse()
		tbl20.BaseUpgradeSection:Collapse()
		tbl20.EquipmentSection:Collapse()
		tbl20.TrailSection:Collapse()
		tbl20.GearSection:Collapse()
		tbl20.RewardSection:Collapse()
		tbl20.ESPSection:Collapse()
		tbl20.InterfaceSection:Collapse()
		tbl2.StartupTimings.LocalizationAttachStartedAt = os.clock()
		tbl2.Localization.Attach(Library.GUI)
		tbl2.Localization.Attach(tbl20.CheckerGui)
		local localizationAttachStartedAt = tbl2.StartupTimings.LocalizationAttachStartedAt
		tbl2.StartupTimings.LocalizationAttachSeconds = os.clock() - localizationAttachStartedAt
		v3:SelectTab(1)
		local obj3 = setmetatable({}, { __mode = "k" })

		local function fn91(arg, arg2)
			if arg == nil or obj3[arg] == arg2 then
				return
			end
			obj3[arg] = arg2
			arg:SetValue(arg2)
		end

		task.spawn(function()
			task.wait(0.45)

			while tbl2.Alive do
				if tbl.EggESP and not tbl2.IsDeliveryCarry() then
					local ok, result2 = pcall(updateMarkers)

					if not ok then
						setError("ESP", result2)
					end
				end

				task.wait(1.5)
			end
		end)

		task.spawn(function()
			task.wait(0.72)

			while tbl2.Alive do
				if tbl2.IsDeliveryCarry() then
					task.wait(0.25)
				else
					local v12 = tbl2.IsTabVisible(tbl13.Farm)

					if not v12 then
						task.wait(1)
					else
						if v12 and FarmCycleParagraph ~= nil then
							fn91(FarmCycleParagraph, "Status: " .. tbl2.FarmCycleStatus .. "\nFarm service: " .. tostring(tbl2.FarmServiceStatus) .. "\nLast sell: " .. tostring(tbl2.FarmCycleLastSellResult) .. [[


Priority:
1. Eternal / Divine / Secret
2. Hatch all ready eggs
3. Place pending eggs
4. Normal steal
5. Sell / Treadmill]])
						end

						task.wait(1)
					end
				end
			end
		end)

		task.spawn(function()
			task.wait(0.92)

			while tbl2.Alive do
				local v12 = tbl2.IsTabVisible(tbl13.Event)

				if v12 or tbl2.Event.ScrambleCoordinatorEnabled() then
					tbl2.Event.StartScrambleObserver()
				else
					tbl2.Event.StopScrambleObserver()
				end

				if v12 and tbl2.Event.ScrambleParagraph ~= nil and not tbl2.IsDeliveryCarry() then
					local v13 = tbl2.Event.GetScrambleStatus()
					local v14 = tbl2.Event.GetScrambleQuestState(v13.Snapshot)
					local serverTimeNow = Workspace:GetServerTimeNow()
					local n6 = math.max(0, math.floor((tonumber(v13.Active and v13.EndsAt or v13.NextAt) or serverTimeNow) - serverTimeNow))
					local tbl25 = {}
					local tbl26 = {}

					for _, v15 in ipairs(tbl4) do
						if type(tbl.SelectedScrambleOffers) == "table" and tbl.SelectedScrambleOffers[v15] == true then
							tbl25[#tbl25 + 1] = v15
							local v16 = tbl3[v15]
							local n7 = type(v13.Snapshot) == "table" and tbl2.Event.GetScramblePurchaseCount(v13.Snapshot, v16) or 0
							local flag4 = type(v13.Snapshot) == "table" and tbl2.Event.GetScrambleOffer(v13.Snapshot, v16) or nil
							local n8 = math.max(1, math.floor(tonumber(tbl.ScramblePurchaseQuantity) or 1))
							tbl26[#tbl26 + 1] = string.format("%s=%d/%d", v15, n7, type(flag4) == "table" and tonumber(flag4.PurchaseLimit) and math.min(n8, tonumber(flag4.PurchaseLimit)) or n8)
						end
					end

					fn91(tbl2.Event.ScrambleParagraph, string.format([[Outbreak: %s | %s: %ds | Samples: %d
Drones: %d | Drops: %d | Target: %s
Quest: %s | Lost Parts: %d/2 | Drone Parts: %d/3 | Vault: %s
Farm: %s | Auto buy: %s | Auto vault: %s | Arrival: %.1f | Quantity: %d
Selected: %s
Purchases: %s
Session: +%d Samples | %d drops | %d swings | %d purchases | %d lost parts | %d vault claims
Status: %s]], v13.Active and "ACTIVE" or v13.Available and "Waiting" or "Unavailable", v13.Active and "Ends in" or "Next in", n6, v13.Samples, v13.Drones, v13.Drops, tostring(tbl2.Scramble.LastTargetLabel or "-"), v14.Discovered and "Discovered" or "Waiting", v14.LostPartCount, v14.DroneParts, v14.Completed and "Complete" or "Incomplete", tbl.AutoScrambleFarm and "Enabled" or "Disabled", tbl.AutoScrambleShop and "Enabled" or "Disabled", tbl.AutoScrambleVault and "Enabled" or "Disabled", tonumber(tbl.ScrambleDroneArrivalDistance) or 4.5, math.max(1, math.floor(tonumber(tbl.ScramblePurchaseQuantity) or 1)), #tbl25 > 0 and table.concat(tbl25, ", ") or "None", #tbl26 > 0 and table.concat(tbl26, " | ") or "None", tbl2.Metrics.ScrambleSamplesEarned, tbl2.Metrics.ScrambleDropsVisited, tbl2.Metrics.ScrambleDroneSwings, tbl2.Metrics.ScramblePurchases, tbl2.Metrics.ScrambleLostPartsCollected, tbl2.Metrics.ScrambleVaultClaims, tostring(tbl2.Scramble.Status)))
				end

				task.wait(2)
			end
		end)

		eggStealHub.Build = "2026-09-25-save-reader-get-peek-v53"

		eggStealHub.Set = function(arg, arg2)
			if arg == "SellPetAmount" or arg == "SellEggAmount" then
				arg2 = tbl2.ParseCompactAmount(arg2)
				if arg2 == nil or arg2 ~= arg2 or arg2 <= 0 or arg2 == math.huge then
					return false, "Enter a positive finite amount, e.g. 1M"
				end
			end

			if tbl[arg] == nil then
				return false, "Unknown key"
			end
			local v12 = Options[tbl21[arg] or arg]

			if v12 ~= nil and type(v12.SetValue) == "function" then
				v12:SetValue(arg2)
			else
				tbl[arg] = arg2
			end

			if arg == "SelectedArenas" or arg == "SelectedCategories" or arg == "SelectedRarities" or arg == "RequiredMutations" or arg == "BigEggOnly" or arg == "MinEggScale" or arg == "SelectedTargetPriorities" or arg == "TargetPriority" or arg == "PreferredStealArena" or arg == "PrioritizeMoneyPerSecond" or arg == "PreemptHigherPriority" then
				tbl2.TargetDirty = true
				tbl2.TargetChoiceCache = nil
			end

			return true
		end

		eggStealHub.Run = function(arg)
			local v12 = ({
				Steal = function()
					return stealStep(true)
				end,
				StealSelected = function()
					return stealSelectedEgg(tbl2.Checker.SelectedUid)
				end,
				Place = function()
					return placeStep(true)
				end,
				Hatch = function()
					return hatchStep(true)
				end,
				EquipBest = equipBest,
				EquipBat = equipBat,
				BatAura = batAuraStep,
				DropHeldEgg = dropHeldEgg,
				Treadmill = function()
					return treadmillTrainingStep(true)
				end,
				LeaveTreadmill = leaveTreadmill,
				UpgradeTreadmill = treadmillUpgradeStep,
				UpgradeBase = baseUpgradeStep,
				EquipBestTrail = equipBestTrail,
				BuyWantedTrail = buyWantedTrailStep,
				EquipBestGear = equipBestGear,
				SellSelected = autoSellSelectedStep,
				SellAll = autoSellAllStep,
				SyncAutoSellRarities = syncAutoSellRarities,
				ClaimFreeGifts = claimFreeGifts,
				ClaimGroupReward = claimGroupReward,
				ClaimLimitedIndex = claimLimitedIndexReward,
				ServerHop = serverHop,
				ClaimIndex = claimIndex,
				ClaimOffline = claimOffline,
				ScrambleFarm = tbl2.Event.ScrambleFarmStep,
				ScramblePurchase = tbl2.Event.ScramblePurchaseStep,
				ScrambleVault = tbl2.Event.ScrambleVaultStep,
				RefreshScramble = function()
					return tbl2.Event.FetchScrambleSnapshot(true) ~= nil
				end,
				AntiAFK = tbl2.TriggerAntiAfk,
				ApplyFPSBoost = tbl2.FPS.Apply,
				RestoreFPSBoost = tbl2.FPS.Restore,
			})[arg]

			if v12 == nil then
				return false, "Unknown action"
			end
			runAction(string.upper(arg), v12)
			return true
		end

		eggStealHub.RunSync = function(arg)
			local v12 = ({
				Steal = function()
					return stealStep(true)
				end,
				StealSelected = function()
					return stealSelectedEgg(tbl2.Checker.SelectedUid)
				end,
				DropHeldEgg = dropHeldEgg,
				Place = function()
					return placeStep(true)
				end,
				Hatch = function()
					return hatchStep(true)
				end,
				EquipBest = equipBest,
				SellSelected = autoSellSelectedStep,
				SellAll = autoSellAllStep,
				ClaimFreeGifts = claimFreeGifts,
				ClaimGroupReward = claimGroupReward,
				ClaimIndex = claimIndex,
				ClaimLimitedIndex = claimLimitedIndexReward,
				ClaimOffline = claimOffline,
				ScrambleFarm = tbl2.Event.ScrambleFarmStep,
				ScramblePurchase = tbl2.Event.ScramblePurchaseStep,
				ScrambleVault = tbl2.Event.ScrambleVaultStep,
				RefreshScramble = function()
					return tbl2.Event.FetchScrambleSnapshot(true) ~= nil
				end,
				AntiAFK = tbl2.TriggerAntiAfk,
				ApplyFPSBoost = tbl2.FPS.Apply,
				RestoreFPSBoost = tbl2.FPS.Restore,
			})[arg]

			if v12 == nil then
				return false, "Unknown action"
			end
			local ok, result2, result3 = xpcall(v12, debug.traceback)
			if not ok then
				setError(string.upper(arg), result2)
				return false, result2
			end

			if result2 then
				setStatus("Ready")
			end

			return result2 == true, result3
		end

		eggStealHub.GetState = function()
			return tbl, tbl2
		end

		eggStealHub.PreviewTarget = function()
			local v12 = chooseEgg()
			if v12 == nil then
				return nil
			end
			local v13, v14 = getRecordRarityId(v12)

			return {
				Uid = v12.Uid,
				Arena = v12.AreaId,
				Category = v12.AssetCategory,
				Rarity = v13,
				RarityNumber = v14,
				Mutations = v12.Mutations,
				Scale = v12.AssetScale,
				MoneyPerSecond = getMoneyPerSecond(v12),
			}
		end

		eggStealHub.Destroy = function()
			if not tbl2.Alive then
				return
			end
			tbl2.Alive = false
			tbl2.SetAntiAfk(false)
			tbl2.SetTPWalkFrameWriters(false)

			for k, guardContainer in pairs(tbl2.GuardContainers) do
				tbl2.GuardContainers[k] = nil

				for _, v12 in pairs(guardContainer) do
					v12:Disconnect()
				end
			end

			if tbl2.GuardDrainConnection then
				tbl2.GuardDrainConnection:Disconnect()
				tbl2.GuardDrainConnection = nil
			end

			if tbl2.Event.ScrambleV2 then
				tbl2.Event.ScrambleV2.Stop()
			end

			if tbl2.Event.StopScrambleObserver then
				tbl2.Event.StopScrambleObserver()
			end

			tbl2.ClearPartCaches()
			tbl2.ClearCarryWatch()
			tbl2.StopManualCarryLift()
			tbl2.ClearPreparedRide()

			if tbl2.ClearRideRigPool then
				tbl2.ClearRideRigPool()
			end

			tbl2.EndAntiHitCameraHold()

			if tbl2.TrapAvoidance and tbl2.TrapAvoidance.StopTracking then
				tbl2.TrapAvoidance.StopTracking()
			end

			for _, connection in ipairs(tbl2.StealSurvival.Connections) do
				connection:Disconnect()
			end

			table.clear(tbl2.StealSurvival.Connections)

			if tbl2.RestoreForestAttackProtection then
				tbl2.RestoreForestAttackProtection()
			end

			if tbl2.DestroyAntiHit then
				tbl2.DestroyAntiHit()
			end

			if tbl2.ActiveStealHumanoid then
				tbl2.MoveGeneration = tbl2.MoveGeneration + 1
				tbl2.ActiveStealHumanoid.Restore()
			end

			tbl2.ClearStealHumanoidPool()

			if tbl2.ActiveRide then
				tbl2.ActiveRide.Stop()
				tbl2.ActiveRide = nil
			end

			tbl.AutoSteal = false
			tbl.AntiHitSteal = false
			tbl.ManualCarryLift = false
			tbl.AutoScrambleFarm = false
			tbl.AutoScrambleShop = false
			tbl.AutoScrambleVault = false
			tbl.AutoPlace = false
			tbl.AutoHatch = false
			tbl.TPWalkEnabled = false
			tbl.AutoEquipBest = false
			tbl.AutoDropHeldEgg = false
			tbl.AutoBatAura = false
			tbl.AutoStealFromPlayers = false
			tbl.AutoEquipBat = false
			tbl.AutoTreadmillTraining = false
			tbl.AutoTreadmillUpgrade = false
			tbl.AutoBaseUpgrade = false
			tbl.AutoClaimFreeGifts = false
			tbl.AutoClaimGroupReward = false
			tbl.AutoClaimIndexRewards = false
			tbl.AutoEquipBestTrail = false
			tbl.AutoBuyTrail = false
			tbl.AutoEquipBestGear = false
			tbl.AutoSellSelected = false
			tbl.AutoSellAllEligible = false
			tbl.SyncAutoSellRarities = false
			tbl.VisualCleanup = false
			tbl2.SetVisualCleanup(false)
			tbl.FPSBoost = false
			tbl.AutoFarmCycle = false
			tbl.AutoServerHop = false
			tbl.EggESP = false
			tbl2.SuppressDroppedCarryUid = nil
			tbl2.ForestPrimerDropInFlight = nil
			tbl2.ForestPrimerDropError = nil

			if tbl2.EffectCleanup ~= nil then
				pcall(tbl2.EffectCleanup.Stop)
			end

			if Environment.EggStealEffectCleanup == tbl2.EffectCleanup then
				Environment.EggStealEffectCleanup = nil
			end

			if tbl2.TextureCleanup ~= nil then
				pcall(tbl2.TextureCleanup.Stop)
			end

			if Environment.EggStealTextureCleanup == tbl2.TextureCleanup then
				Environment.EggStealTextureCleanup = nil
			end

			tbl2.FPS.Restore()

			if tbl2.NetworkFireHooked and type(hookfunction) == "function" then
				pcall(hookfunction, tbl2.NetworkFireClosure, OriginalNetworkFire)
			end

			Network.Fire = OriginalNetworkFire

			if tbl2.GuardNamecallHookState ~= nil and tbl2.GuardNamecallHookState.Runtime == tbl2 then
				tbl2.GuardNamecallHookState.Enabled = false

				if tbl2.GuardNamecallHookState.Bridge ~= nil then
					pcall(tbl2.GuardNamecallHookState.Bridge.Disable)
				end

				tbl2.GuardNamecallHookState.Remote = nil
				tbl2.GuardNamecallHookState.Runtime = nil
				tbl2.GuardNamecallHookState.Config = nil
			end

			restoreProtectedHumanoid()
			fn14()

			if tbl2.RestoreTreadmillGuard ~= nil then
				tbl2.RestoreTreadmillGuard()
			end

			local character = localPlayer.Character

			if character ~= nil then
				setMovementNoClip(character, false)
			end

			stopMovement()
			clearMarkers()

			if tbl20.CheckerGui ~= nil then
				pcall(tbl20.CheckerGui.Destroy, tbl20.CheckerGui)
			end

			if tbl20.ServerBrowserGui ~= nil then
				pcall(tbl20.ServerBrowserGui.Destroy, tbl20.ServerBrowserGui)
			end

			if tbl20.PlayerStealList ~= nil then
				pcall(tbl20.PlayerStealList.Destroy, tbl20.PlayerStealList)
			end

			if MarkerFolder ~= nil then
				pcall(MarkerFolder.Destroy, MarkerFolder)
			end

			for _, connection in ipairs(tbl2.Connections) do
				pcall(connection.Disconnect, connection)
			end

			table.clear(tbl2.Connections)

			if tbl2.GlobalChat ~= nil then
				pcall(tbl2.GlobalChat.Destroy, tbl2.GlobalChat)
				tbl2.GlobalChat = nil
			end

			if Environment.EggStealHubConnections == tbl2.Connections then
				Environment.EggStealHubConnections = nil
			end

			if Library ~= nil then
				pcall(Library.Destroy, Library)
			end

			if PhaseValue ~= nil then
				pcall(PhaseValue.Destroy, PhaseValue)
			end

			if Environment.EggStealHub == eggStealHub then
				Environment.EggStealHub = nil
			end

			log("SYSTEM", "Destroyed")
		end

		Environment.EggStealHub = eggStealHub
		setPhase("ApiReady")

		if tbl.AutoSteal then
			startWorker("STEAL", "AutoSteal", "FarmDelay", stealStep)
		end

		if tbl.AutoPlace then
			startWorker("PLACE", "AutoPlace", "PlaceDelay", placeStep)
		end

		if tbl.AutoHatch then
			startWorker("HATCH", "AutoHatch", "HatchDelay", hatchStep)
		end

		if tbl.AutoEquipBest then
			startWorker("EQUIP", "AutoEquipBest", "EquipDelay", equipBest)
		end

		if tbl.AutoDropHeldEgg then
			startWorker("DROP", "AutoDropHeldEgg", "UtilityDelay", dropHeldEgg)
		end

		if tbl.AutoBatAura then
			startWorker("BAT_AURA", "AutoBatAura", "AttackDelay", batAuraStep)
		end

		if tbl.AutoStealFromPlayers then
			startWorker("PLAYER_STEAL", "AutoStealFromPlayers", "AttackDelay", autoStealFromPlayersStep)
		end

		if tbl.AutoEquipBat then
			startWorker("BAT_EQUIP", "AutoEquipBat", "UtilityDelay", equipBat)
		end

		if tbl.AutoTreadmillTraining then
			startWorker("TREADMILL", "AutoTreadmillTraining", "UtilityDelay", treadmillTrainingStep)
		end

		if tbl.AutoTreadmillUpgrade then
			startWorker("TREADMILL_UPGRADE", "AutoTreadmillUpgrade", "UtilityDelay", treadmillUpgradeStep)
		end

		if tbl.AutoBaseUpgrade then
			startWorker("BASE_UPGRADE", "AutoBaseUpgrade", "UtilityDelay", baseUpgradeStep)
		end

		if tbl.AutoClaimFreeGifts then
			startWorker("FREE_GIFTS", "AutoClaimFreeGifts", "UtilityDelay", claimFreeGifts)
		end

		if tbl.AutoClaimGroupReward then
			startWorker("GROUP_REWARD", "AutoClaimGroupReward", "UtilityDelay", claimGroupReward)
		end

		if tbl.AutoClaimIndexRewards then
			startWorker("INDEX_REWARD", "AutoClaimIndexRewards", "UtilityDelay", claimIndex)
		end

		if tbl.AutoEquipBestTrail then
			startWorker("TRAIL", "AutoEquipBestTrail", "UtilityDelay", equipBestTrail)
		end

		if tbl.AutoBuyTrail then
			startWorker("TRAIL_BUY", "AutoBuyTrail", "UtilityDelay", buyWantedTrailStep)
		end

		if tbl.AutoEquipBestGear then
			startWorker("GEAR_EQUIP", "AutoEquipBestGear", "UtilityDelay", equipBestGear)
		end

		if tbl.AutoSellSelected then
			startWorker("SELL_SELECTED", "AutoSellSelected", "UtilityDelay", autoSellSelectedStep)
		end

		if tbl.AutoSellAllEligible then
			startWorker("SELL_ALL", "AutoSellAllEligible", "SellDelay", autoSellAllStep)
		end

		if tbl.AutoFarmCycle then
			startFarmCycleWorker()
		end

		if tbl2.Event.ScrambleCoordinatorEnabled() then
			if tbl.AutoScrambleFarm and not tbl2.Workers.SCRAMBLE_EVENT_COORDINATOR then
				tbl2.Scramble.FarmEntryPending = true
			end

			startScrambleEventCoordinator()
		end

		local v12 = tbl2
		local v13 = tbl2
		local ok, autoloadError = pcall(tbl2.SaveManager.LoadAutoloadConfig, tbl2.SaveManager)
		v12.AutoloadOk = ok
		v13.AutoloadError = autoloadError

		if not tbl2.AutoloadOk then
			setError("CONFIG", tbl2.AutoloadError)
		end

		tbl2.SetAntiAfk(tbl.AntiAFK)
		tbl2.SetTPWalkFrameWriters(tbl.TPWalkEnabled)

		if tbl2.Event.ScrambleCoordinatorEnabled() then
			if tbl.AutoScrambleFarm and not tbl2.Workers.SCRAMBLE_EVENT_COORDINATOR then
				tbl2.Scramble.FarmEntryPending = true
			end

			startScrambleEventCoordinator()
		end

		tbl20.TweenSpeedSlider:SetValue(650)
		tbl20.ArrivalSlider:SetValue(12)
		setPhase("Loaded")
		local uiStartedAt = tbl2.StartupTimings.UiStartedAt
		tbl2.StartupTimings.UiTotalSeconds = os.clock() - uiStartedAt
		tbl2.StartupTimings.MaxFrameGapSeconds = tbl2.StealTiming.MaxGap
		tbl2.StartupTimings.FrameStalls = tbl2.StealTiming.Stalls
		log("SYSTEM", "Loaded")
		Library:Notify({ Title = "Vxeze Hub", Content = "Loaded", Duration = 4 })
	end
end

Environment.EggStealInitializeInterface()
Environment.EggStealInitializeInterface = nil
