local RunService = not game and game.GetService and game:GetService("RunService") or game.ClassName ~= "DataModel" or typeof and typeof(game.Players) ~= "Instance"

if not RunService then
	RunService = not (getmetatable and setmetatable and type and pcall and rawget and rawset)
end

if not RunService then
	local tbl = {}
	local tbl2 = { Notification = {} }
	local modules = { Notify = tbl2.Notification }

	local function fn(arg)
		local ok, result = pcall(game.GetService, game, arg)
		return ok and result or nil
	end

	local Players = fn("Players") or game:GetService("Players")
	local UserInputService = fn("UserInputService") or game:GetService("UserInputService")
	local TweenService = fn("TweenService") or game:GetService("TweenService")
	local TextService = fn("TextService") or game:GetService("TextService")
	local HttpService = fn("HttpService") or game:GetService("HttpService")
	local localPlayer = Players.LocalPlayer

	if not localPlayer then
		pcall(function()
			localPlayer = Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		end)

		localPlayer = localPlayer or Players.LocalPlayer
	end

	local mouse = localPlayer and localPlayer:GetMouse() or { X = 0, Y = 0 }
	local hui = gethui and gethui() or fn("CoreGui") or game:GetService("CoreGui")
	modules.Services = { Players = Players, UIS = UserInputService, Tween = TweenService, Text = TextService, Http = HttpService, LocalPlayer = localPlayer, Mouse = mouse }
	modules.ENV = getgenv and getgenv() or _G
	modules.CoreGui = hui
	local notify = modules.Notify
	local tweenInfo = TweenInfo.new
	local env = modules.ENV
	tbl2._CurrentGui = nil

	modules.Save = {
		FolderName = "Quantum Onyx Hub",
		Settings = {},
		_Keys = {},
		RegisteredControls = {},
		ActiveProfile = "[Auto]",
	}

	local save = modules.Save

	save.RegisterKey = function(arg, arg2)
		arg._Keys[arg2] = true
	end

	save.RegisterControl = function(arg, arg2, arg3)
		if not arg2 then
			return
		end
		arg._Keys[arg2] = true
		arg.RegisteredControls[arg2] = arg3
	end

	save.PruneStaleKeys = function(arg)
		if not next(arg._Keys) then
			return
		end
		local flag = false

		for k in pairs(arg.Settings) do
			if k:sub(1, 1) ~= "_" and not arg._Keys[k] then
				arg.Settings[k] = nil
				flag = true
			end
		end

		local saveSlots = arg:Get("_saveSlots", {})
		local flag2 = false

		for _, saveSlot in ipairs(saveSlots) do
			if saveSlot.data then
				for k in pairs(saveSlot.data) do
					if not arg._Keys[k] then
						saveSlot.data[k] = nil
						flag2 = true
					end
				end
			end
		end

		if flag then
			arg:Save()
		end

		if flag2 then
			arg:Save("_saveSlots", saveSlots)
		end
	end

	JsonEncode = function(arg)
		return HttpService:JSONEncode(arg)
	end

	JsonDecode = function(arg)
		return HttpService:JSONDecode(arg)
	end

	local str = nil

	save.GetPlayerName = function()
		local localPlayer2 = localPlayer or Players and Players.LocalPlayer

		if not localPlayer2 then
			pcall(function()
				localPlayer2 = game:GetService("Players").LocalPlayer
			end)
		end

		local name = localPlayer2 and localPlayer2.Name

		if not name or name == "" then
			name = "User_" .. tostring(localPlayer2 and localPlayer2.UserId or "0")
		end

		return name:gsub("[^%w]", "")
	end

	save.GetGameId = function()
		local n = 0

		pcall(function()
			n = game.GameId
		end)

		if not n or n == 0 then
			pcall(function()
				n = game.PlaceId
			end)
		end

		return tostring(n or 0)
	end

	save.GetFileName = function(arg, arg2)
		local playerName = arg:GetPlayerName()
		local gameId = arg:GetGameId()
		if arg2 and type(arg2) == "string" and arg2 ~= "" then
			return playerName .. "-" .. arg2:gsub("[^%w%s]", ""):gsub("%s+", "_") .. "-" .. gameId .. ".json"
		end

		if not str then
			local ok, result = pcall(function()
				return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
			end)

			str = playerName .. "-" .. (ok and result and result:gsub("[^%w%s]", ""):gsub("%s+", "_") or gameId) .. "-" .. gameId .. ".json"
		end

		return str
	end

	save.Save = function(arg, arg2, arg3)
		if arg2 ~= nil then
			arg.Settings[arg2] = arg3
		end

		if not isfolder(arg.FolderName) then
			pcall(makefolder, arg.FolderName)
		end

		local v = JsonEncode
		local settings = arg.Settings
		pcall(writefile, arg.FolderName .. "/" .. arg:GetFileName(), v(settings))
	end

	save.Load = function(arg)
		if not isfolder(arg.FolderName) then
			pcall(makefolder, arg.FolderName)
		end

		local ok, result = pcall(readfile, arg.FolderName .. "/" .. arg:GetFileName())

		if not ok or not result then
			local playerName = arg:GetPlayerName()
			local str2 = arg.FolderName .. "/" .. playerName .. ".json"

			for _, v in ipairs({ arg.FolderName .. "/" .. playerName .. "-" .. arg:GetGameId() .. ".json", str2 }) do
				local ok2, result2 = pcall(readfile, v)

				if ok2 and result2 then
					result = result2
					ok = true
					break
				end
			end
		end

		if ok and result then
			local v = nil

			pcall(function()
				v = JsonDecode(result)
			end)

			if type(v) == "table" then
				arg.Settings = v
				return v
			end
		end

		arg:Save()
		return {}
	end

	save.Get = function(arg, arg2, arg3)
		local v = arg.Settings[arg2]
		return v ~= nil and v or arg3
	end

	save.GetSnapshot = function(arg)
		local tbl3 = {}

		for k, setting in pairs(arg.Settings) do
			if k:sub(1, 1) ~= "_" and arg._Keys[k] then
				tbl3[k] = setting
			end
		end

		for k, registeredControl in pairs(arg.RegisteredControls) do
			if tbl3[k] == nil and registeredControl.Get then
				local ok, result = pcall(registeredControl.Get)

				if ok and result ~= nil then
					tbl3[k] = result
				end
			end
		end

		return tbl3
	end

	save.ApplySnapshot = function(arg, arg2, arg3)
		if type(arg2) ~= "table" then
			return false
		end
		local flag = arg3 ~= false

		for k, v in pairs(arg2) do
			if k:sub(1, 1) ~= "_" then
				arg.Settings[k] = v
				local v2 = arg.RegisteredControls[k]

				if v2 and v2.Set then
					pcall(v2.Set, v, flag)
				end
			end
		end

		arg:Save()
		return true
	end

	save.ResetToDefaults = function(arg, arg2)
		local flag = arg2 ~= false

		for k, registeredControl in pairs(arg.RegisteredControls) do
			if registeredControl and registeredControl.Default ~= nil and registeredControl.Set then
				arg.Settings[k] = registeredControl.Default
				pcall(registeredControl.Set, registeredControl.Default, flag)
			end
		end

		arg:Save()
	end

	save.ElementSave = function(arg, arg2, arg3)
		local optAutoSave

		if arg.IsAutoSave then
			optAutoSave = arg:IsAutoSave()
		else
			optAutoSave = arg:Get("_opt_AutoSave", true)
		end

		if not optAutoSave then
			return
		end
		arg:Save(arg2, arg3)
		local saveSlots = arg:Get("_saveSlots", {})
		local v = nil

		for i, saveSlot in ipairs(saveSlots) do
			if saveSlot.name == "[Auto]" then
				v = i
				break
			else
				v = nil
			end
		end

		local snapshot = arg:GetSnapshot()

		if v then
			saveSlots[v].data = snapshot
			saveSlots[v].updated = os.date("%Y-%m-%d %H:%M")
		else
			table.insert(saveSlots, 1, {
				name = "[Auto]",
				data = snapshot,
				created = os.date("%Y-%m-%d %H:%M"),
				updated = os.date("%Y-%m-%d %H:%M"),
			})
		end

		arg:Save("_saveSlots", saveSlots)
	end

	save.ClearAll = function(arg)
		arg.Settings = {}

		if isfolder(arg.FolderName) then
			pcall(writefile, arg.FolderName .. "/" .. arg:GetFileName(), "{}")
		end
	end

	tbl2.SaveSystem = save
	tbl2.Modules = modules
	modules.Util = {}
	modules.Tween = {}
	modules.Media = {}
	modules.Theme = {}
	modules.UI = {}
	local util = modules.Util
	local tween = modules.Tween
	local media = modules.Media
	local theme = modules.Theme

	util.Set = function(arg, arg2, arg3)
		arg[arg2] = arg3
	end

	util.Protect = function(arg)
		if env.HIDEUI then
			arg.Parent = env.HIDEUI
		elseif gethui then
			arg.Parent = gethui()
		elseif syn and syn.protect_gui then
			pcall(syn.protect_gui, arg)
			arg.Parent = hui
		else
			arg.Parent = hui
		end
	end

	local str2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

	util.RandomName = function()
		local tbl3 = {}

		for i = 1, 16 do
			local n = math.random(1, #str2)
			tbl3[i] = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"):sub(n, n)
		end

		return table.concat(tbl3)
	end

	util.Create = function(arg, arg2, parent)
		local instance = Instance.new(arg)

		if arg2 then
			for k, v in pairs(arg2) do
				if k ~= "Children" and k ~= "Parent" then
					pcall(util.Set, instance, k, v)
				end
			end

			local children = arg2.Children

			if children then
				for i = 1, #children do
					local v = children[i]

					if v then
						v.Parent = instance
					end
				end
			end

			if arg2.Parent then
				instance.Parent = arg2.Parent
			elseif parent then
				instance.Parent = parent
			end
		elseif parent then
			instance.Parent = parent
		end

		return instance
	end

	util.GuiCenterLocal = function(arg, arg2, arg3)
		arg3 = arg3 and arg3 ~= 0 and arg3 or 1
		arg2 = arg2 and arg2.AbsolutePosition or Vector2.zero
		local n = arg.AbsolutePosition + arg.AbsoluteSize * 0.5
		return (n.X - arg2.X) / arg3, (n.Y - arg2.Y) / arg3
	end

	util.PinAbsToOffset = function(arg, arg2, arg3)
		arg3 = arg3 and arg3 ~= 0 and arg3 or 1
		arg2 = arg2 and arg2.AbsolutePosition or Vector2.zero
		local absolutePosition = arg.AbsolutePosition
		arg.Position = UDim2.fromOffset((absolutePosition.X - arg2.X) / arg3, (absolutePosition.Y - arg2.Y) / arg3)
		return arg.Position
	end

	util.MakeDraggable = function(arg, arg2)
		local v = nil
		local vector = Vector3.zero
		local udim2 = UDim2.new()

		arg.InputBegan:Connect(function(input)
			if v ~= nil then
				return
			end

			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				v = input
				vector = input.Position
				udim2 = arg2.Position
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if not v then
				return
			end

			if input == v or v.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputType == Enum.UserInputType.MouseMovement then
				local scale = MainUIScale and MainUIScale.Scale > 0 and MainUIScale.Scale or 1
				local n = input.Position - vector
				arg2.Position = UDim2.new(udim2.X.Scale, udim2.X.Offset + n.X / scale, udim2.Y.Scale, udim2.Y.Offset + n.Y / scale)
			end
		end)

		UserInputService.InputEnded:Connect(function(input)
			if input == v then
				v = nil
			end
		end)
	end

	util.BindHover = function(arg, arg2, arg3, arg4, arg5, arg6)
		arg.MouseEnter:Connect(function()
			tween.Play(arg, arg2, 0.15, Enum.EasingStyle.Quint)

			if arg6 and arg4 then
				tween.Play(arg6, arg4, 0.15)
			end
		end)

		arg.MouseLeave:Connect(function()
			tween.Play(arg, arg3, 0.2, Enum.EasingStyle.Quint)

			if arg6 and arg5 then
				tween.Play(arg6, arg5, 0.2)
			end
		end)
	end

	util.Trim = function(arg)
		if type(arg) ~= "string" then
			return ""
		end
		return arg:gsub("^%s+", ""):gsub("%s+$", ""):gsub("[ \t]+", " "):gsub("\n[ \t]+", "\n"):gsub("[ \t]+\n", "\n")
	end

	local tbl3 = {}

	util.TextHeight = function(arg, arg2, arg3, arg4)
		if not arg or arg == "" then
			return 0
		end
		arg2 = arg2 or Enum.Font.Gotham
		arg3 = arg3 or 11
		arg4 = arg4 or 150
		local name = typeof(arg2) == "EnumItem" and arg2.Name or tostring(arg2)
		local str3 = tostring(arg) .. "\0" .. name .. "\0" .. tostring(arg3) .. "\0" .. tostring(arg4)
		local v = tbl3[str3]
		if v then
			return v
		end
		local str4 = tostring(arg):gsub("<[^>]->", "")
		local n = 0

		for match in str4:gmatch("\n") do
			n += 1
		end

		local n2 = TextService:GetTextSize(str4, arg3, arg2, Vector2.new(arg4, 10000)).Y + n * 4 + 2
		tbl3[str3] = n2
		return n2
	end

	util.WrapText = function(arg)
		if type(arg) ~= "string" or arg == "" then
			return ""
		end
		return arg
	end

	util.DescMetrics = function(arg, arg2, arg3, arg4)
		arg2 = arg2 or Enum.Font.Gotham
		arg3 = arg3 or 11
		arg4 = arg4 or 150
		if typeof(arg) ~= "string" or arg == "" then
			return "", 0
		end
		return arg, math.max(util.TextHeight(arg, arg2, arg3, arg4), 14)
	end

	tween.Info = function(arg, arg2, arg3, arg4, arg5, arg6)
		return tweenInfo(arg, arg2 or Enum.EasingStyle.Cubic, arg3 or Enum.EasingDirection.Out, arg4 or 0, arg5 or false, arg6 or 0)
	end

	tween.Play = function(arg, arg2, arg3, arg4, arg5, arg6)
		if not arg then
			return nil
		end

		if typeof(arg3) == "number" and arg3 == 0 then
			for k, v in pairs(arg2) do
				pcall(util.Set, arg, k, v)
			end

			if typeof(arg6) == "function" then
				arg6()
			end

			return nil
		end

		local flag = typeof(arg3) == "TweenInfo" and arg3

		if not flag then
			flag = tween.Info(arg3 or 0.25, arg4, arg5)
		end

		local tween2 = TweenService:Create(arg, flag, arg2)

		if typeof(arg6) == "function" then
			local connection = nil

			connection = tween2.Completed:Connect(function(playbackState)
				if connection then
					connection:Disconnect()
				end

				if playbackState == Enum.PlaybackState.Completed then
					arg6()
				end
			end)
		end

		tween2:Play()
		return tween2
	end

	tween.Group = function()
		local tbl4 = {}

		return {
			Play = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
				local v = tween.Play(arg2, arg3, arg4, arg5, arg6, arg7)

				if v then
					tbl4[#tbl4 + 1] = v
				end

				return v
			end,
			Cancel = function()
				for i = 1, #tbl4 do
					local v = tbl4[i]

					if v then
						pcall(function()
							v:Cancel()
						end)
					end
				end

				table.clear(tbl4)
			end,
		}
	end

	media.PathToAsset = function(arg)
		if type(arg) ~= "string" or arg == "" then
			return nil
		end
		local str3 = arg:gsub("^%s+", ""):gsub("%s+$", "")
		if str3 == "" then
			return nil
		end

		if str3:match("^%d+$") then
			return "rbxassetid://" .. str3
		end

		if str3:find("^rbxassetid://") or str3:find("^rbxasset://") or str3:find("^http://") or str3:find("^https://") then
			return str3
		end
		local getcustomasset_ = getcustomasset or getgenv and getgenv().getcustomasset or getsynasset or getgenv and getgenv().getsynasset

		if getcustomasset_ then
			local ok, result = pcall(getcustomasset_, str3)
			if ok and type(result) == "string" and result ~= "" then
				return result
			end

			if save and save.FolderName then
				local ok2, result2 = pcall(getcustomasset_, save.FolderName .. "/" .. str3)
				if ok2 and type(result2) == "string" and result2 ~= "" then
					return result2
				end
				local ok3, result3 = pcall(getcustomasset_, save.FolderName .. "\\" .. str3)
				if ok3 and type(result3) == "string" and result3 ~= "" then
					return result3
				end
			end

			local ok2, result2 = pcall(function()
				return getcustomasset_(str3, true)
			end)

			if ok2 and type(result2) == "string" and result2 ~= "" then
				return result2
			end
		end

		return str3
	end

	media.ListImages = function(arg)
		local tbl4 = {}
		if not (isfolder and listfiles and isfolder(arg)) then
			return tbl4
		end
		local ok, result = pcall(listfiles, arg)
		if not ok or not result then
			return tbl4
		end

		for _, v in ipairs(result) do
			local v2 = string.lower(v)

			if v2:find("%.png") or v2:find("%.jpe?g") or v2:find("%.webp") or v2:find("%.gif") or v2:find("%.bmp") then
				table.insert(tbl4, v)
			end
		end

		table.sort(tbl4)
		return tbl4
	end

	media.ListVideos = function(arg)
		local tbl4 = {}
		if not (isfolder and listfiles and isfolder(arg)) then
			return tbl4
		end
		local ok, result = pcall(listfiles, arg)
		if not ok or not result then
			return tbl4
		end

		for _, v in ipairs(result) do
			local v2 = string.lower(v)

			if v2:find("%.webm") or v2:find("%.mp4") or v2:find("%.mov") or v2:find("%.mkv") or v2:find("%.avi") then
				table.insert(tbl4, v)
			end
		end

		table.sort(tbl4)
		return tbl4
	end

	media.IsVideo = function(arg)
		if type(arg) ~= "string" then
			return false
		end
		local str3 = string.lower(arg):gsub("%s+$", "")
		return str3:find("%.webm") ~= nil or str3:find("%.mp4") ~= nil or str3:find("%.mov") ~= nil or str3:find("%.mkv") ~= nil or str3:find("%.avi") ~= nil or str3:find("%[vid%]") ~= nil
	end

	local create = util.Create
	local protect = util.Protect
	local randomName = util.RandomName
	local textHeight = util.TextHeight
	local wrapText = util.WrapText
	local pathToAsset = media.PathToAsset
	local listImages = media.ListImages
	local listVideos = media.ListVideos
	local isVideo = media.IsVideo

	tbl.Tween = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
		return tween.Play(arg2, arg3, arg4, arg5, arg6, arg7)
	end

	tbl2.DestroyGui = function(arg)
		if arg._CurrentGui and arg._CurrentGui.Parent then
			arg._CurrentGui:Destroy()
			arg._CurrentGui = nil
		end
	end

	CircleClick = function(arg, arg2, arg3)
		task.spawn(function()
			arg.ClipsDescendants = true
			local n = arg2 - arg.AbsolutePosition.X
			local n2 = arg3 - arg.AbsolutePosition.Y
			local n3 = math.max(arg.AbsoluteSize.X, arg.AbsoluteSize.Y) * 1.5

			local ImageLabel = create("ImageLabel", {
				Name = "Circle",
				Image = "rbxassetid://266543268",
				ImageColor3 = Color3.fromRGB(80, 80, 80),
				ImageTransparency = 0.8,
				BackgroundTransparency = 1,
				ZIndex = 10,
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.new(0, n, 0, n2),
			}, arg)

			tween.Play(ImageLabel, { Size = UDim2.new(0, n3, 0, n3), Position = UDim2.new(0.5, -n3 / 2, 0.5, -n3 / 2) }, 0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

			tween.Play(ImageLabel, { ImageTransparency = 1 }, 0.45, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, function()
				ImageLabel:Destroy()
			end)
		end)
	end

	local quantumThemeManager = env.QuantumThemeManager

	if not quantumThemeManager then
		quantumThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Util/LibraryModule/Themes.lua"))()
		env.QuantumThemeManager = quantumThemeManager
	end

	theme.Manager = quantumThemeManager

	theme.Color = function(arg)
		if quantumThemeManager.Current and quantumThemeManager.Current[arg] then
			return quantumThemeManager.Current[arg]
		end
		return Color3.fromRGB(255, 0, 255)
	end

	ThemeColor = function(arg)
		return theme.Color(arg)
	end

	notify.Init = function(arg)
		if not arg.GUI then
			local screenGui = Instance.new("ScreenGui", hui)
			screenGui.Name = randomName()
			screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
			screenGui.ResetOnSpawn = false
			screenGui.IgnoreGuiInset = true
			protect(screenGui)

			arg.GUI = create("Frame", {
				Name = "STX_Notification",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -20, 1, -52),
				Position = UDim2.new(1, -10, 0, 10),
				AnchorPoint = Vector2.new(1, 0),
				ClipsDescendants = false,
				ZIndex = 999,
				Parent = screenGui,
				Children = {
					create("UIListLayout", {
						Name = "STX_NotificationUIListLayout",
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						Padding = UDim.new(0, 6),
					}),
				},
			})
		end
	end

	notify.ActiveMessages = notify.ActiveMessages or {}
	notify.ActiveById = notify.ActiveById or {}

	notify.Notify = function(arg, arg2, arg3)
		assert(arg.GUI, "Notification GUI not initialized. Call :Init(parent) first.")
		arg2 = arg2 or {}
		arg3 = arg3 or {}
		local title = arg2.Title or "Notification"
		local description = arg2.Description or ""
		local time = arg3.Time or 3
		local gotham = Enum.Font.Gotham

		if arg2.Id then
			local v = notify.ActiveById[arg2.Id]

			if v and v.Host and v.Host.Parent and not v.isDismissed then
				if v.TitleLabel and v.TitleLabel.Parent then
					v.TitleLabel.Text = title
				end

				if v.DescLabel and v.DescLabel.Parent then
					v.DescLabel.Text = wrapText(description, gotham, 12, 176)
				end

				if v.ResetTimer then
					v.ResetTimer(time)
				end

				return v
			end
		end

		local str3 = title .. "||" .. description
		if notify.ActiveMessages[str3] then
			return
		end
		notify.ActiveMessages[str3] = true
		local buttons = arg2.Buttons or arg2.Button or arg2.Actions or arg2.Options or arg3.Buttons or arg3.Actions
		local tbl4 = {}

		if type(buttons) == "string" then
			table.insert(tbl4, { Text = buttons, Callback = arg2.Callback })
		elseif type(buttons) == "table" then
			if buttons.Text or buttons.Name or buttons.Title then
				table.insert(tbl4, {
					Text = buttons.Text or buttons.Name or buttons.Title or "Okay",
					Callback = buttons.Callback or buttons.OnClick or buttons.Function,
					Primary = buttons.Primary or buttons.IsPrimary,
				})
			elseif #buttons > 0 then
				for _, button in ipairs(buttons) do
					if type(button) == "string" then
						table.insert(tbl4, { Text = button })
					elseif type(button) == "table" then
						table.insert(tbl4, {
							Text = button.Text or button.Name or button.Title or "Button",
							Callback = button.Callback or button.OnClick or button.Function,
							Primary = button.Primary or button.IsPrimary,
						})
					end
				end
			else
				for k, button in pairs(buttons) do
					table.insert(tbl4, {
						Text = tostring(k),
						Callback = type(button) == "function" and button or type(button) == "table" and (button.Callback or button.OnClick or button.Function),
						Primary = type(button) == "table" and (button.Primary or button.IsPrimary),
					})
				end
			end
		end

		local flag = #tbl4 > 0
		local n = flag and 30 or 0
		local v = wrapText(description, gotham, 12, 176)
		local v2 = textHeight(v, gotham, 12, 176)
		local n2 = 28 + v2 + n + 14

		local Frame = create("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(1, -10, 0, 10),
			Size = UDim2.new(0, 46, 0, 0),
			ClipsDescendants = false,
			ZIndex = 1000,
		}, arg.GUI)

		local TextLabel = create("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 8, 0, 2),
			Size = UDim2.new(1, -16, 0, 18),
			ZIndex = 1002,
			Font = Enum.Font.FredokaOne,
			Text = title,
			TextColor3 = Color3.fromRGB(220, 220, 220),
			TextSize = 12,
			TextTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
		})

		local TextLabel2 = create("TextLabel", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -8, 0, 2),
			Size = UDim2.new(0, 40, 0, 18),
			ZIndex = 1002,
			Font = Enum.Font.Gotham,
			Text = "(" .. time .. "s)",
			TextColor3 = Color3.fromRGB(180, 180, 180),
			TextSize = 11,
			TextTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Right,
		})

		local TextLabel3 = create("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 8, 0, 22),
			Size = UDim2.new(0, 184, 0, v2),
			ZIndex = 1002,
			Font = gotham,
			Text = v,
			TextColor3 = Color3.fromRGB(180, 180, 180),
			TextSize = 12,
			TextTransparency = 1,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		})

		local ImageLabel = create("ImageLabel", {
			Name = "PillLogo",
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 0, 0, 0),
			Image = "rbxassetid://87383580130479",
			ImageTransparency = 1,
			ScaleType = Enum.ScaleType.Fit,
			ZIndex = 1002,
		})

		local TextLabel4 = create("TextLabel", {
			Name = "DoneLabel",
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -8, 1, 0),
			ZIndex = 1002,
			Font = Enum.Font.GothamBold,
			Text = "Done",
			TextColor3 = Color3.fromRGB(220, 220, 220),
			TextSize = 11,
			TextTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		})

		local tbl5 = {
			Name = "ProgressBarBackground",
			BackgroundColor3 = Color3.fromRGB(40, 40, 40),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 8, 1, -10),
			Size = UDim2.new(1, -16, 0, 4),
			ZIndex = 1002,
		}

		local children = {}
		local UICorner = create("UICorner", { CornerRadius = UDim.new(1, 0) })

		local tbl6 = {
			Name = "ProgressBarFill",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 1003,
		}

		local children2 = {}
		local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })
		local tbl7 = { Color = ThemeColor("Lit"), Rotation = 0 }
		children2[1] = UICorner2

		do
			local values = table.pack(create("UIGradient", tbl7))
			table.move(values, 1, values.n, 2, children2)
		end

		tbl6.Children = children2
		children[1] = UICorner

		do
			local values = table.pack(create("Frame", tbl6))
			table.move(values, 1, values.n, 2, children)
		end

		tbl5.Children = children
		local Frame2 = create("Frame", tbl5)
		local tbl8 = {}
		local Frame3 = nil

		if flag then
			Frame3 = create("Frame", {
				Name = "ButtonContainer",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 8, 0, 22 + v2 + 6),
				Size = UDim2.new(1, -16, 0, 22),
				ZIndex = 1002,
				Children = {
					create("UIListLayout", {
						Name = "ButtonsLayout",
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 6),
					}),
				},
			})

			local n3 = #tbl4
			local n4 = 1 / n3
			local n5 = -math.floor((n3 - 1) * 6 / n3)

			for i, v3 in ipairs(tbl4) do
				local text = v3.Text or "Button"
				local primary = v3.Primary

				if primary == nil then
					local v4 = string.lower(text)

					if n3 == 1 or v4 == "okay" or v4 == "ok" or v4 == "yes" or v4 == "confirm" or v4 == "accept" or v4 == "apply" then
						primary = true
					else
						primary = false
					end
				end

				local color = primary and Color3.fromRGB(38, 38, 38) or Color3.fromRGB(28, 28, 28)
				local color2 = primary and Color3.fromRGB(52, 52, 52) or Color3.fromRGB(40, 40, 40)
				local color3 = primary and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)

				local UIStroke = create("UIStroke", {
					Color = primary and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(48, 48, 48),
					Transparency = 1,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})

				table.insert(tbl8, {
					Instance = create("TextButton", {
						Name = "Button_" .. tostring(i),
						BackgroundColor3 = color,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(n4, n5, 1, 0),
						LayoutOrder = i,
						ZIndex = 1003,
						AutoButtonColor = false,
						Font = Enum.Font.GothamMedium,
						Text = text,
						TextColor3 = color3,
						TextSize = 11,
						TextTransparency = 1,
						Parent = Frame3,
						Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }), UIStroke },
					}),
					Stroke = UIStroke,
					DefaultBg = color,
					HoverBg = color2,
					IsPrimary = primary,
					Data = v3,
				})
			end
		end

		local tbl9 = { create("UICorner", { CornerRadius = UDim.new(0, 13) }), ImageLabel, TextLabel4, TextLabel, TextLabel2, TextLabel3, Frame2 }

		if Frame3 then
			table.insert(tbl9, Frame3)
		end

		create("Frame", {
			BackgroundColor3 = Color3.fromRGB(25, 25, 25),
			BorderSizePixel = 0,
			ClipsDescendants = true,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 1001,
			Children = tbl9,
		}, Frame)

		local progressBarFill = Frame2.ProgressBarFill
		local flag2 = false

		local function fn2()
			if flag2 then
				return
			end
			flag2 = true
			tbl:Tween(TextLabel, { TextTransparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
			tbl:Tween(TextLabel2, { TextTransparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
			tbl:Tween(TextLabel3, { TextTransparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
			tbl:Tween(Frame2, { BackgroundTransparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
			tbl:Tween(progressBarFill, { BackgroundTransparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

			for _, v3 in ipairs(tbl8) do
				tbl:Tween(v3.Instance, { BackgroundTransparency = 1, TextTransparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

				if v3.Stroke then
					tbl:Tween(v3.Stroke, { Transparency = 1 }, 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
				end
			end

			task.wait(0.2)
			tbl:Tween(Frame, { Size = UDim2.new(0, 46, 0, 26) }, 0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
			task.wait(0.28)
			tbl:Tween(TextLabel4, { TextTransparency = 0 }, 0.18, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			task.wait(0.35)
			tbl:Tween(Frame, { Size = UDim2.new(0, 0, 0, 0) }, 0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
			tbl:Tween(TextLabel4, { TextTransparency = 1 }, 0.12, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
			task.wait(0.18)

			if Frame and Frame.Parent then
				Frame:Destroy()
			end

			notify.ActiveMessages[str3] = nil

			if arg2.Id then
				notify.ActiveById[arg2.Id] = nil
			end
		end

		for _, v3 in ipairs(tbl8) do
			local instance = v3.Instance
			local stroke = v3.Stroke
			local data = v3.Data

			instance.MouseEnter:Connect(function()
				if not flag2 then
					tween.Play(instance, { BackgroundColor3 = v3.HoverBg }, 0.15, Enum.EasingStyle.Quint)

					if stroke then
						tween.Play(stroke, { Transparency = 0.5 }, 0.15)
					end
				end
			end)

			instance.MouseLeave:Connect(function()
				if not flag2 then
					tween.Play(instance, { BackgroundColor3 = v3.DefaultBg }, 0.15, Enum.EasingStyle.Quint)

					if stroke then
						tween.Play(stroke, { Transparency = 0.8 }, 0.15)
					end
				end
			end)

			instance.MouseButton1Click:Connect(function()
				if flag2 then
					return
				end
				CircleClick(instance, mouse.X, mouse.Y)

				if type(data.Callback) == "function" then
					task.spawn(function()
						local ok, result = pcall(data.Callback)

						if not ok then
							warn("[Notification Callback Error]: " .. tostring(result))
						end
					end)
				end

				task.spawn(fn2)
			end)
		end

		tween.Play(Frame, { Size = UDim2.new(0, 200, 0, n2) }, 0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

		task.delay(0.12, function()
			tween.Play(TextLabel, { TextTransparency = 0 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			tween.Play(TextLabel2, { TextTransparency = 0 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			tween.Play(TextLabel3, { TextTransparency = 0 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			tween.Play(Frame2, { BackgroundTransparency = 0 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			tween.Play(progressBarFill, { BackgroundTransparency = 0 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

			for _, v3 in ipairs(tbl8) do
				tween.Play(v3.Instance, { BackgroundTransparency = 0, TextTransparency = 0 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

				if v3.Stroke then
					tween.Play(v3.Stroke, { Transparency = 0.8 }, 0.22, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
				end
			end

			tween.Play(progressBarFill, { Size = UDim2.new(0, 0, 1, 0) }, time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
		end)

		local v3 = time

		task.spawn(function()
			while v3 > 0 and not flag2 do
				if TextLabel2 and TextLabel2.Parent then
					TextLabel2.Text = "(" .. v3 .. "s)"
				end

				task.wait(1)
				v3 -= 1
			end

			if not flag2 then
				fn2()
			end
		end)

		local tbl10 = {
			Host = Frame,
			TitleLabel = TextLabel,
			DescLabel = TextLabel3,
			CooldownLabel = TextLabel2,
			ResetTimer = function(arg4)
				v3 = arg4 or time

				if TextLabel2 and TextLabel2.Parent then
					TextLabel2.Text = "(" .. v3 .. "s)"
				end
			end,
			Dismiss = fn2,
			isDismissed = false,
		}

		if arg2.Id then
			notify.ActiveById[arg2.Id] = tbl10
		end

		return tbl10
	end

	local tbl4 = {
		Languages = {
			English = "en",
			Filipino = "fil",
			Indonesian = "id",
			Spanish = "es",
			French = "fr",
			German = "de",
			Japanese = "ja",
			Korean = "ko",
			Vietnamese = "vi",
			Thai = "th",
			Russian = "ru",
			Portuguese = "pt",
			Turkish = "tr",
			Hindi = "hi",
			["Chinese Simplified"] = "zh-cn",
			["Chinese Traditional"] = "zh-tw",
			Arabic = "ar",
			Italian = "it",
			Polish = "pl",
			Dutch = "nl",
			Ukrainian = "uk",
			Malay = "ms",
			Bengali = "bn",
			Urdu = "ur",
			Persian = "fa",
			Romanian = "ro",
			Czech = "cs",
			Greek = "el",
			Swedish = "sv",
			Hungarian = "hu",
			Danish = "da",
			Finnish = "fi",
			Norwegian = "no",
			Hebrew = "he",
			Slovak = "sk",
			Bulgarian = "bg",
			Croatian = "hr",
			Serbian = "sr",
			Lithuanian = "lt",
			Latvian = "lv",
			Slovenian = "sl",
		},
		RegisteredElements = {},
		Cache = {},
	}

	TranslateText = function(arg, arg2)
		if not arg2 or arg2 == "" then
			arg2 = arg2 or ""
			return arg2
		end
		local str3 = arg .. ":" .. arg2
		if tbl4.Cache[str3] then
			return tbl4.Cache[str3]
		end

		local ok, result = pcall(function()
			local response = game:HttpGet("https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. arg .. "&dt=t&q=" .. HttpService:UrlEncode(arg2))
			local data = HttpService:JSONDecode(response)
			local v = data and data[1]
			local str4 = ""

			if v then
				for _, v2 in ipairs(data[1]) do
					if v2[1] then
						str4 ..= v2[1]
					end
				end
			end

			return str4
		end)

		if ok and result and result ~= "" then
			tbl4.Cache[str3] = result
			return result
		end
		return arg2
	end

	RegisterTranslatable = function(arg, arg2)
		if not arg or not arg2 or arg2 == "" then
			return
		end
		tbl4.RegisteredElements[arg] = { original = arg2 }
	end

	ApplyTranslation = function(pending)
		if tbl4._busy then
			tbl4._pending = pending
			return
		end
		tbl4._busy = true
		tbl4._pending = nil

		local function fn2()
			tbl4._busy = false

			if tbl4._pending and tbl4._pending ~= pending then
				local pending2 = tbl4._pending
				tbl4._pending = nil
				task.defer(ApplyTranslation, pending2)
			end
		end

		if pending == "en" then
			for k, registeredElement in pairs(tbl4.RegisteredElements) do
				if k and k.Parent then
					pcall(function()
						k.Text = registeredElement.original
					end)
				end
			end

			fn2()
			return
		end

		task.spawn(function()
			local tbl5 = {}
			local tbl6 = {}

			for k, registeredElement in pairs(tbl4.RegisteredElements) do
				k = k and k.Parent

				if k then
					local original = registeredElement.original

					if not tbl6[original] then
						tbl6[original] = true
						table.insert(tbl5, original)
					end
				end
			end

			local function fn3(arg, text)
				for k, registeredElement in pairs(tbl4.RegisteredElements) do
					if k and k.Parent and registeredElement.original == arg then
						pcall(function()
							k.Text = text
						end)
					end
				end
			end

			for _, v in ipairs(tbl5) do
				local str3 = pending .. ":" .. v
				local v2 = tbl4.Cache[str3]
				local flag = v2 ~= nil

				if not v2 then
					v2 = TranslateText(pending, v)
					tbl4.Cache[str3] = v2
				end

				fn3(v, v2 or v)

				if not flag then
					task.wait()
				end
			end

			Finish()
		end)
	end

	tbl2.CreateWindow = function(arg, arg2)
		local v
		v = arg
		local title, subtitle, version, theme2, credits, tbl5, v2, v3, tbl6, Frame
		local flag, flag2, v4, tbl7, Frame2, favorites, ScreenGui, flag3, n, n2
		local UIScale, flag4, Frame3, ImageLabel, Frame4, videoFrame

		do
			local v5 = arg2
			title = typeof(v5) == "string" and v5 or v5.Title or "Hub"

			if v5.SaveFile and type(v5.SaveFile) == "string" and v5.SaveFile ~= "" then
				str = save:GetFileName(v5.SaveFile)
				save.Settings = {}
				save:Load()
			elseif not str then
				str = save:GetFileName()
				save:Load()
			end

			subtitle = v5.Subtitle or "Untitled"
			version = v5.Version or "v1.0"
			theme2 = v5.Theme or "Purple"
			credits = v5.Credits or {}

			tbl5 = { IsDeveloperBuild = function()
				local v6 = string.lower(tostring(version))
				return v6 == "developer" or v6 == "v.developer" or string.find(v6, "developer", 1, true) ~= nil
			end }

			quantumThemeManager.Current = quantumThemeManager.Themes[theme2] or quantumThemeManager.Themes.Purple

			ParseKeySetting = function(arg3)
				if arg3 == true then
					return true, nil
				end

				if type(arg3) ~= "table" then
					return false, nil
				end
				local flag5 = false
				local v6 = nil

				for _, v7 in ipairs(arg3) do
					if v7 == true then
						flag5 = true
					elseif type(v7) == "string" then
						v6 = v7
					end
				end

				return flag5, v6
			end

			v2, v3 = ParseKeySetting(v5.Key)
			local flag5 = v3 == "Full"
			local tbl8 = {}
			tbl6 = {}
			Frame = nil
			local flag6 = false
			flag = false
			local flag7 = v5.Intro ~= false

			LoadKeyValid = function()
				local str3 = save.FolderName .. "/Key.json"
				if not isfolder(save.FolderName) or not isfile(str3) then
					return false
				end

				local ok, result = pcall(function()
					return JsonDecode(readfile(str3))
				end)

				if not ok or type(result) ~= "table" then
					return false
				end

				if type(result.key) ~= "string" or result.key == "" then
					return false
				end
				return result.verified == true
			end

			flag2 = v2 and LoadKeyValid() or false

			tbl5.HasKeyAccess = function()
				if not v2 then
					return true
				end
				return flag2
			end

			tbl5.CreateDummy = function()
				local tbl9 = {}

				setmetatable(tbl9, { __index = function()
					return function()
						return tbl9
					end
				end })

				return tbl9
			end

			v4 = tbl5.CreateDummy()

			checkCondition = function(arg3)
				if arg3 == nil then
					return true
				end

				if type(arg3) == "function" then
					local ok, result = pcall(arg3)
					return ok and result
				end

				if type(arg3) == "table" and type(arg3.fn) == "function" then
					local ok, result = pcall(arg3.fn)
					if not (ok and result) then
						return false
					end
					return true
				end

				return not not arg3
			end

			IsFullLocked = function()
				return v2 and flag5 and not flag2 and not flag
			end

			RefreshKeyLock = function()
				if not flag2 then
					flag6 = false
					return
				end

				if flag6 then
					return
				end
				flag6 = true

				if flag5 and Frame then
					Frame.Visible = false
				end

				for _, v6 in ipairs(tbl8) do
					local frame = v6.frame

					if frame and frame.Parent then
						local blocker = v6.blocker

						if blocker and blocker.Parent then
							blocker:Destroy()
						end

						for _, child in ipairs(frame:GetChildren()) do
							if child:IsA("ImageLabel") and child.Image == "rbxassetid://7733992528" then
								child:Destroy()
							end
						end

						frame.BackgroundTransparency = 0.4
						local accentBar = frame:FindFirstChild("AccentBar")

						if accentBar then
							accentBar.BackgroundTransparency = 0
						end
					end
				end

				task.defer(function()
					for i, v6 in ipairs(tbl6) do
						pcall(function()
							if v6.saveKey then
								local v7 = save:Get(v6.saveKey, nil)

								if v7 ~= nil then
									save.Settings[v6.saveKey] = v7
								end
							end

							if v6.UpdateFn then
								v6.UpdateFn()
							end
						end)

						if i % 12 == 0 then
							task.wait()
						end
					end
				end)
			end

			RegisterKeyLocked = function(arg3, arg4)
				if not v2 or not arg4 then
					return
				end

				if tbl5.HasKeyAccess() then
					return
				end
				arg3.BackgroundTransparency = 0.55
				local accentBar = arg3:FindFirstChild("AccentBar")

				if accentBar then
					accentBar.BackgroundTransparency = 0.8
				end

				for _, descendant in ipairs(arg3:GetDescendants()) do
					if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
						if descendant.Name == "ButtonLabel" or descendant.Name == "ToggleTitle" or descendant.Name == "SliderTitle" then
							descendant.TextColor3 = Color3.fromRGB(130, 110, 160)
						end
					end
				end

				create("ImageLabel", {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, -6, 0, 6),
					Size = UDim2.new(0, 11, 0, 11),
					Image = "rbxassetid://7733992528",
					ImageColor3 = Color3.fromRGB(140, 110, 190),
					ImageTransparency = 0.3,
					ZIndex = 10,
				}, arg3)

				local TextButton = create("TextButton", {
					Name = "_KeyBlocker",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Text = "",
					ZIndex = 10,
					AutoButtonColor = false,
				}, arg3)

				TextButton.Activated:Connect(function()
					tbl2.Notification:Notify({
						Title = "Key Required",
						Description = "Verify your key in the Key System panel to unlock this feature.",
					}, { Time = 3 })
				end)

				table.insert(tbl8, { frame = arg3, blocker = TextButton })
			end

			local tbl9 = { body = nil, accentElements = {}, litGradients = {}, buttonGradients = {} }
			tbl7 = nil
			Frame2 = nil
			favorites = { List = save:Get("_favorites", {}), Entries = {}, Refresh = nil }

			ApplyTheme = function(arg3)
				local v6 = quantumThemeManager.Themes[arg3]
				if not v6 then
					return
				end
				quantumThemeManager.Current = v6
				save:Save("_activeTheme", arg3)

				if tbl9.body then
					tbl:Tween(tbl9.body, { BackgroundColor3 = v6.Body }, 0.28, Enum.EasingStyle.Quint)
				end

				for _, accentElement in ipairs(tbl9.accentElements) do
					local v7 = accentElement[1]
					local v8 = accentElement[2]
					local accent = v6[accentElement[3]] or v6.Accent

					if v7 and v7.Parent then
						tbl:Tween(v7, { [v8] = accent }, 0.28, Enum.EasingStyle.Quint)
					end
				end

				for _, litGradient in ipairs(tbl9.litGradients) do
					if litGradient and litGradient.Parent then
						litGradient.Color = v6.Lit
					end
				end

				for _, buttonGradient in ipairs(tbl9.buttonGradients) do
					if buttonGradient and buttonGradient.Parent then
						local new = ColorSequenceKeypoint.new
						local accentDark = v6.AccentDark
						buttonGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, v6.AccentLight), new(1, accentDark) })
					end
				end

				pcall(function()
					if Frame2 then
						local uiStroke = Frame2:FindFirstChildOfClass("UIStroke")

						if uiStroke then
							uiStroke.Color = v6.Accent
						end
					end

					local v7 = ipairs
					local tbl10 = tbl7 or {}

					for _, v8 in v7(tbl10) do
						if v8.tabUnderline then
							v8.tabUnderline.BackgroundColor3 = v6.Accent
						end
					end
				end)
			end

			RegisterThemeElement = function(arg3, arg4, arg5)
				local insert = table.insert
				local accentElements = tbl9.accentElements
				local tbl10 = {}
				arg5 = arg5 or "Accent"
				tbl10[1] = arg3
				tbl10[2] = arg4
				tbl10[3] = arg5
				insert(accentElements, tbl10)
			end

			RegisterLitGradient = function(arg3)
				table.insert(tbl9.litGradients, arg3)
			end

			RegisterButtonGradient = function(arg3)
				table.insert(tbl9.buttonGradients, arg3)
			end

			CreateAccentBar = function(arg3, arg4)
				local tbl10 = arg4 or {}

				local tbl11 = {
					Name = "AccentBar",
					BackgroundColor3 = ThemeColor("Accent") or tbl10.Color or Color3.fromRGB(192, 132, 252),
					BackgroundTransparency = tbl10.Transparency or 0,
					BorderSizePixel = 0,
				}

				tbl11.AnchorPoint = Vector2.new(0, 0.5)
				tbl11.Position = UDim2.new(0, 0, 0.5, 0)
				tbl11.Size = tbl10.Size or UDim2.new(0, 2, 0, 14)
				tbl11.ZIndex = 3
				tbl11.Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) }
				local Frame5 = create("Frame", tbl11, arg3)

				if tbl10.Gradient then
					local tbl12 = {}
					local colorSequence = ColorSequence.new
					local tbl13 = {}
					local v6 = ColorSequenceKeypoint.new(0, ThemeColor("AccentLight") or Color3.fromRGB(216, 180, 254))
					local new = ColorSequenceKeypoint.new
					local AccentDark = ThemeColor("AccentDark") or Color3.fromRGB(139, 92, 246)
					local v7 = table.pack(new(1, AccentDark))
					tbl13[1] = v6

					do
						local values = table.pack(table.unpack(v7, 1, v7.n))
						table.move(values, 1, values.n, 2, tbl13)
					end

					tbl12.Color = colorSequence(tbl13)
					tbl12.Rotation = tbl10.Gradient and tbl10.Gradient.Rotation or 90
					local UIGradient = create("UIGradient", tbl12, Frame5)
					RegisterButtonGradient(UIGradient)
				end

				RegisterThemeElement(Frame5, "BackgroundColor3", "Accent")
				return Frame5
			end

			ScreenGui = create("ScreenGui", { Name = randomName(), ZIndexBehavior = Enum.ZIndexBehavior.Sibling }, hui)
			flag3 = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
			n = flag3 and 0.45 or 0.5
			n2 = flag3 and 0.7 or 1
			UIScale = create("UIScale", { Name = "LibraryUIScale", Scale = n2 }, ScreenGui)
			local tbl10 = {}

			UnscaledLayout = function(arg3)
				local scale = UIScale.Scale
				if scale == 0 then
					return arg3
				end
				return arg3 / scale
			end

			FitScrollCanvas = function(arg3, arg4, arg5, arg6)
				if not arg3 or not arg4 then
					return
				end
				arg6 = arg6 or 4
				arg5 = arg5 or "Y"
				local x = arg5 == "X" and arg4.AbsoluteContentSize.X or arg4.AbsoluteContentSize.Y
				local x2 = arg5 == "X" and arg3.AbsoluteSize.X or arg3.AbsoluteSize.Y

				if x2 < 2 then
					x2 = arg5 == "X" and arg3.Size.X.Offset or arg3.Size.Y.Offset
				end

				local v6 = UnscaledLayout(x)
				local v7 = UnscaledLayout(math.max(x2, 0))

				if v6 > 0 then
					v6 += arg6
				end

				local n3 = math.max(v6, 0)
				local flag8 = v6 > v7 + 1

				if arg5 == "X" then
					arg3.CanvasSize = UDim2.new(0, n3, 0, 0)

					if not flag8 then
						arg3.CanvasPosition = Vector2.new(0, arg3.CanvasPosition.Y)
					end
				else
					arg3.CanvasSize = UDim2.new(0, 0, 0, n3)

					if not flag8 then
						arg3.CanvasPosition = Vector2.new(arg3.CanvasPosition.X, 0)
					end
				end

				arg3.ScrollingEnabled = true

				pcall(function()
					arg3.ElasticBehavior = flag8 and Enum.ElasticBehavior.WhenScrollable or Enum.ElasticBehavior.Never
				end)
			end

			local tbl11 = {}
			local flag8 = false

			DebouncedFitScrollCanvas = function(arg3, arg4, arg5, arg6)
				if not arg3 or not arg4 then
					return
				end
				tbl11[arg3] = { layout = arg4, axis = arg5 or "Y", pad = arg6 or 2 }

				if not flag8 then
					flag8 = true

					task.defer(function()
						flag8 = false

						for k, v6 in pairs(tbl11) do
							tbl11[k] = nil
							FitScrollCanvas(k, v6.layout, v6.axis, v6.pad)
						end
					end)
				end
			end

			RegisterLayoutRefresh = function(arg3)
				table.insert(tbl10, arg3)
			end

			ScaledFontSize = function(arg3)
				local scale = UIScale.Scale

				if scale <= 0 then
					scale = 1
				end

				if scale < 1 then
					return math.max(math.floor(arg3 * scale), 4), 1
				end
				return math.min(arg3 + math.min(math.floor((scale - 1) * 10 + 0.5), 6), 18), 1
			end

			MakeTextConstraint = function(arg3, arg4)
				local UITextSizeConstraint = create("UITextSizeConstraint", { MaxTextSize = select(1, ScaledFontSize(arg3, arg4)), MinTextSize = 1 })

				RegisterLayoutRefresh(function()
					UITextSizeConstraint.MaxTextSize = select(1, ScaledFontSize(arg3, arg4))
					UITextSizeConstraint.MinTextSize = 1
				end)

				return UITextSizeConstraint
			end

			BindScaledText = function(arg3, arg4)
				RegisterLayoutRefresh(function()
					arg3.TextSize = select(1, ScaledFontSize(arg4))
				end)
			end

			local flag9 = false

			RefreshAllLayouts = function()
				for _, v6 in ipairs(tbl10) do
					pcall(v6)
				end
			end

			ScheduleRefreshAllLayouts = function()
				if flag9 then
					return
				end
				flag9 = true

				task.defer(function()
					flag9 = false
					RefreshAllLayouts()
				end)
			end

			tbl5.SetUIScalePreview = function(arg3)
				local scale = math.clamp(arg3, n, 1.8)
				UIScale.Scale = scale
				local parent = tbl2.Notification.GUI and tbl2.Notification.GUI.Parent

				if parent then
					(parent:FindFirstChildOfClass("UIScale") or create("UIScale", { Name = "LibraryUIScale" }, parent)).Scale = scale
				end

				return scale
			end

			tbl5.ApplyUIScale = function(arg3)
				local v6 = tbl5.SetUIScalePreview(arg3)
				ScheduleRefreshAllLayouts()
				return v6
			end

			local flag10 = true
			local v6 = n2

			local function fn2()
				if not flag10 then
					return
				end
				local currentCamera = workspace.CurrentCamera
				if not currentCamera then
					return
				end
				local viewportSize = currentCamera.ViewportSize
				if viewportSize.X < 50 or viewportSize.Y < 50 then
					return
				end
				local n3 = math.clamp(v6 * math.min(viewportSize.X / (flag3 and 800 or 1000), viewportSize.Y / (flag3 and 460 or 600), 1), n, 1.8)
				tbl5.SetUIScalePreview(n3)
				ScheduleRefreshAllLayouts()
			end

			local currentCamera = workspace.CurrentCamera

			if currentCamera then
				currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fn2)
				task.defer(fn2)
			end

			local applyUIScale = tbl5.ApplyUIScale

			tbl5.ApplyUIScale = function(arg3)
				v6 = arg3
				return applyUIScale(arg3)
			end

			flag4 = not flag7

			Frame3 = create("Frame", {
				BackgroundColor3 = ThemeColor("Body"),
				BackgroundTransparency = 0.05,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, 510, 0, 330),
				Visible = flag4,
				Active = true,
				ClipsDescendants = true,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 10) }) },
			}, ScreenGui)

			ImageLabel = create("ImageLabel", {
				Name = "BodyBackground",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Image = "",
				ImageTransparency = 0.88,
				ScaleType = Enum.ScaleType.Crop,
				ZIndex = 0,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 10) }) },
			}, Frame3)

			Frame4 = create("Frame", {
				Name = "BodyVideoHolder",
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Visible = false,
				ClipsDescendants = true,
				ZIndex = 0,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 10) }) },
			}, Frame3)

			videoFrame = nil

			pcall(function()
				videoFrame = Instance.new("VideoFrame")
				videoFrame.Name = "BodyVideo"
				videoFrame.BackgroundTransparency = 1
				videoFrame.BorderSizePixel = 0
				videoFrame.Size = UDim2.new(1, 0, 1, 0)
				videoFrame.Visible = true
				videoFrame.Looped = true
				videoFrame.Volume = 0
				videoFrame.ZIndex = 0
				videoFrame.Parent = Frame4
			end)

			ClearBackgroundMedia = function()
				ImageLabel.Image = ""
				ImageLabel.Visible = false

				if Frame4 then
					Frame4.Visible = false
				end

				if videoFrame then
					pcall(function()
						videoFrame.Playing = false
					end)

					pcall(function()
						videoFrame:Pause()
					end)

					pcall(function()
						videoFrame.Video = ""
					end)
				end
			end

			local thread = nil

			ApplyBackgroundImage = function(arg3, arg4)
				local optBgImageTransparency = arg4 or save:Get("_opt_BgImageTransparency", 0.88)

				if type(arg3) ~= "string" or arg3 == "" then
					ClearBackgroundMedia()
					save:Save("_opt_BgImage", "")
					return
				end

				if isVideo(arg3) then
					ImageLabel.Image = ""
					ImageLabel.Visible = false
					local v7 = pathToAsset(arg3)

					if not v7 then
						tbl2.Notification:Notify({
							Title = "Video BG",
							Description = "Could not load video asset. File not found or unsupported.",
						}, { Time = 3 })

						ClearBackgroundMedia()
						return
					end

					if not videoFrame or not videoFrame.Parent then
						pcall(function()
							if videoFrame then
								videoFrame:Destroy()
							end

							videoFrame = Instance.new("VideoFrame")
							videoFrame.Name = "BodyVideo"
							videoFrame.BackgroundTransparency = 1
							videoFrame.BorderSizePixel = 0
							videoFrame.Size = UDim2.new(1, 0, 1, 0)
							videoFrame.Visible = true
							videoFrame.Looped = true
							videoFrame.Volume = 0
							videoFrame.ZIndex = 0
							videoFrame.Parent = Frame4
						end)
					end

					if Frame4 then
						Frame4.Visible = true
					end

					if videoFrame then
						pcall(function()
							videoFrame.Visible = true
							videoFrame.Looped = true
							videoFrame.Volume = 0
							videoFrame.Video = v7
							videoFrame.Playing = true
							videoFrame:Play()
						end)

						task.spawn(function()
							task.wait(0.08)

							pcall(function()
								videoFrame.Playing = true
								videoFrame:Play()
							end)

							local now = tick()

							while tick() - now < 5 do
								local flag11 = false

								pcall(function()
									flag11 = videoFrame.IsLoaded
								end)

								if flag11 then
									pcall(function()
										videoFrame.Playing = true
										videoFrame:Play()
									end)

									break
								else
									task.wait(0.2)
								end
							end
						end)

						if not thread then
							thread = task.spawn(function()
								while true do
									task.wait(1.5)

									if Frame4 and Frame4.Visible and videoFrame and videoFrame.Parent then
										local flag11 = false

										pcall(function()
											flag11 = videoFrame.Playing
										end)

										if not flag11 then
											pcall(function()
												videoFrame.Playing = true
												videoFrame:Play()
											end)
										end
									end
								end
							end)
						end
					end

					save:Save("_opt_BgImage", arg3)
				else
					local v7 = pathToAsset(arg3)
					if not v7 then
						return
					end
					ClearBackgroundMedia()
					ImageLabel.Visible = true
					ImageLabel.Image = v7
					ImageLabel.ImageTransparency = optBgImageTransparency
					save:Save("_opt_BgImage", arg3)
				end
			end

			local optBgImage = save:Get("_opt_BgImage", "")

			if optBgImage ~= "" then
				task.defer(function()
					ApplyBackgroundImage(optBgImage)
				end)
			end

			ImageLabel.ImageTransparency = save:Get("_opt_BgImageTransparency", 0.88)
			Frame3.BackgroundTransparency = save:Get("_opt_UITransparency", 0.05)
			tbl9.body = Frame3
		end

		protect(ScreenGui)
		v:DestroyGui()
		v._CurrentGui = ScreenGui
		tbl2.Notification:Init(Frame3)

		do
			local tbl8 = {
				Name = "FullLockOverlay",
				BackgroundColor3 = Color3.fromRGB(6, 4, 12),
				BackgroundTransparency = 0.08,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Visible = false,
				ZIndex = 1003,
				Active = true,
			}

			local children = {}

			local TextButton = create("TextButton", {
				Name = "ClickBlocker",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Text = "",
				AutoButtonColor = false,
				ZIndex = 1004,
				Active = true,
			})

			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 10) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(140, 80, 220),
				Transparency = 0.55,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local ImageLabel2 = create("ImageLabel", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.38, 0),
				Size = UDim2.new(0, 28, 0, 28),
				Image = "rbxassetid://7733992528",
				ImageColor3 = Color3.fromRGB(160, 100, 240),
				ImageTransparency = 0.1,
				ZIndex = 1004,
			})

			local TextLabel = create("TextLabel", {
				Name = "LockTitle",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.52, 0),
				Size = UDim2.new(0.85, 0, 0, 22),
				Font = Enum.Font.FredokaOne,
				Text = "Premium Privilege Only",
				TextColor3 = Color3.fromRGB(210, 160, 255),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 1004,
			})

			local TextLabel2 = create("TextLabel", {
				Name = "LockDesc",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.66, 0),
				Size = UDim2.new(0.88, 0, 0, 36),
				Font = Enum.Font.Gotham,
				RichText = true,
				Text = "Premium features require a valid key.\n<font color=\"#34D399\">Freemium</font> is still available below.",
				TextColor3 = Color3.fromRGB(180, 160, 210),
				TextSize = 10,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 1004,
			})

			local tbl9 = {
				Name = "FreemiumBtn",
				BackgroundColor3 = Color3.fromRGB(30, 18, 52),
				BackgroundTransparency = 0.15,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.82, 0),
				Size = UDim2.new(0.62, 0, 0, 26),
				Font = Enum.Font.GothamBold,
				Text = "Continue Freemium",
				TextColor3 = Color3.fromRGB(130, 230, 180),
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 1005,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl10 = {
				Color = Color3.fromRGB(80, 200, 140),
				Transparency = 0.45,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIStroke", tbl10))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl9.Children = children2
			local TextButton2 = create("TextButton", tbl9)

			local tbl11 = {
				BackgroundColor3 = Color3.fromRGB(140, 80, 220),
				BackgroundTransparency = 0.7,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.44, 0),
				Size = UDim2.new(0.55, 0, 0, 1),
				ZIndex = 1004,
			}

			local children3 = {}
			local tbl12 = {}
			local numberSequence = NumberSequence.new
			local tbl13 = {}
			local v5 = NumberSequenceKeypoint.new(0, 1)
			local v6 = NumberSequenceKeypoint.new(0.2, 0)
			local v7 = NumberSequenceKeypoint.new(0.8, 0)
			local new = NumberSequenceKeypoint.new
			tbl13[1] = v5
			tbl13[2] = v6
			tbl13[3] = v7

			do
				local values = table.pack(new(1, 1))
				table.move(values, 1, values.n, 4, tbl13)
			end

			tbl12.Transparency = numberSequence(tbl13)

			do
				local values = table.pack(create("UIGradient", tbl12))
				table.move(values, 1, values.n, 1, children3)
			end

			tbl11.Children = children3
			children[1] = TextButton
			children[2] = UICorner
			children[3] = UIStroke
			children[4] = ImageLabel2
			children[5] = TextLabel
			children[6] = TextLabel2
			children[7] = TextButton2

			do
				local values = table.pack(create("Frame", tbl11))
				table.move(values, 1, values.n, 8, children)
			end

			tbl8.Children = children
			Frame = create("Frame", tbl8, Frame3)
		end

		if IsFullLocked() then
			Frame.Visible = true
		end

		local Frame5

		Frame5 = create("Frame", {
			BackgroundColor3 = ThemeColor("Body"),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 0, 32),
			ZIndex = 1005,
			Active = true,
			ClipsDescendants = true,
			Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
		}, Frame3)

		local TextLabel

		TextLabel = create("TextLabel", {
			Name = "TitleHub",
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 12, 0, 2),
			Size = UDim2.new(1, -255, 0, 16),
			Font = Enum.Font.FredokaOne,
			Text = title .. " Project",
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 13,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame5)

		local TextLabel2

		TextLabel2 = create("TextLabel", {
			Name = "SubtitleHub",
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 12, 0, 18),
			Size = UDim2.new(1, -255, 0, 12),
			Font = Enum.Font.Gotham,
			RichText = true,
			Text = string.format("<font color=\"#C084FC\">%s</font> • <font color=\"#FF9E9E\">%s</font>", subtitle, os.date("%A")),
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 10,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame5)

		tbl5.SetSubtitleTier = function()
			if tbl5.IsDeveloperBuild() then
				TextLabel2.Text = string.format("<font color=\"#C084FC\">%s</font> • <font color=\"#7286FF\">v.Developer</font> • <font color=\"#FF9E9E\">%s</font>", subtitle, os.date("%A"))
			elseif tbl5.HasKeyAccess() then
				TextLabel2.Text = string.format("<font color=\"#C084FC\">%s</font> • <font color=\"#FFD700\">v.Premium</font> • <font color=\"#FF9E9E\">%s</font>", subtitle, os.date("%A"))
			elseif v2 then
				TextLabel2.Text = string.format("<font color=\"#C084FC\">%s</font> • <font color=\"#34D399\">v.Freemium</font> • <font color=\"#FF9E9E\">%s</font>", subtitle, os.date("%A"))
			else
				TextLabel2.Text = string.format("<font color=\"#C084FC\">%s</font> • <font color=\"#34D399\">%s</font> • <font color=\"#FF9E9E\">%s</font>", subtitle, version, os.date("%A"))
			end
		end

		SetSubtitlePremium = function()
			tbl5.SetSubtitleTier()
		end

		tbl5.SetSubtitleTier()
		local freemiumBtn = Frame and Frame:FindFirstChild("FreemiumBtn", true)

		if freemiumBtn then
			freemiumBtn.MouseButton1Click:Connect(function()
				flag = true
				Frame.Visible = false
				tbl5.SetSubtitleTier()
			end)
		end

		tbl5.SyncKeyAccess = function()
			if v2 then
				flag2 = LoadKeyValid()
			end

			if flag2 then
				RefreshKeyLock()
			end

			tbl5.SetSubtitleTier()
		end

		local rightControl
		rightControl = Enum.KeyCode.RightControl
		local flag5
		flag5 = false
		local TextLabel3
		TextLabel3 = nil
		local toggleUI
		local visible = true
		save:RegisterKey("_opt_UIKeybind")
		rightControl = Enum.KeyCode[save:Get("_opt_UIKeybind", "RightControl")] or rightControl

		toggleUI = function()
			visible = not visible
			Frame3.Visible = visible
		end

		local ImageButton

		ImageButton = create("ImageButton", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -34, 0, 16),
			Size = UDim2.new(0, 20, 0, 20),
			ZIndex = 1005,
			Image = "rbxassetid://92966930061759",
		}, Frame3)

		local ImageButton2

		ImageButton2 = create("ImageButton", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -8, 0, 16),
			Size = UDim2.new(0, 20, 0, 20),
			ZIndex = 1005,
			Image = "rbxassetid://79324227570635",
		}, Frame3)

		local TextButton

		do
			local tbl8 = {
				Name = "CreditsBtn",
				BackgroundColor3 = Color3.fromRGB(14, 10, 22),
				BackgroundTransparency = 0,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -62, 0, 16),
				Size = UDim2.new(0, 83, 0, 23),
				Text = "",
				AutoButtonColor = false,
				ZIndex = 1005,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(160, 100, 240),
				Transparency = 0.72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(160, 100, 240),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0.5, -7),
				Size = UDim2.new(0, 2, 0, 14),
				ZIndex = 1006,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

			local tbl10 = {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 160, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 60, 220)),
				}),
				Rotation = 90,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIGradient", tbl10))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl9.Children = children2
			local Frame6 = create("Frame", tbl9)

			local ImageLabel2 = create("ImageLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 8, 0.5, -7),
				Size = UDim2.new(0, 14, 0, 14),
				Image = "rbxassetid://83474083071373",
				ImageColor3 = Color3.fromRGB(185, 140, 255),
				ZIndex = 1006,
			})

			local tbl11 = {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 27, 0, 0),
				Size = UDim2.new(1, -30, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "Credits",
				TextColor3 = Color3.fromRGB(195, 155, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 1006,
			}

			children[1] = UICorner
			children[2] = UIStroke
			children[3] = Frame6
			children[4] = ImageLabel2

			do
				local values = table.pack(create("TextLabel", tbl11))
				table.move(values, 1, values.n, 5, children)
			end

			tbl8.Children = children
			TextButton = create("TextButton", tbl8, Frame3)
		end

		local uiStroke = TextButton:FindFirstChildOfClass("UIStroke")
		util.BindHover(TextButton, { BackgroundColor3 = Color3.fromRGB(22, 14, 38) }, { BackgroundColor3 = Color3.fromRGB(14, 10, 22) }, { Transparency = 0.38 }, { Transparency = 0.72 }, uiStroke)
		local TextButton2

		do
			local tbl8 = {
				Name = "SettingsBtn",
				BackgroundColor3 = Color3.fromRGB(14, 10, 22),
				BackgroundTransparency = 0,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -153, 0, 16),
				Size = UDim2.new(0, 83, 0, 23),
				Text = "",
				AutoButtonColor = false,
				ZIndex = 1005,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(160, 100, 240),
				Transparency = 0.72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(160, 100, 240),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0.5, -7),
				Size = UDim2.new(0, 2, 0, 14),
				ZIndex = 1006,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

			local tbl10 = {
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 160, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 60, 220)),
				}),
				Rotation = 90,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIGradient", tbl10))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl9.Children = children2
			local Frame6 = create("Frame", tbl9)

			local ImageLabel2 = create("ImageLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 8, 0.5, -7),
				Size = UDim2.new(0, 14, 0, 14),
				Image = "rbxassetid://81151604784579",
				ImageColor3 = Color3.fromRGB(185, 140, 255),
				ZIndex = 1006,
			})

			local tbl11 = {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 27, 0, 0),
				Size = UDim2.new(1, -30, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "Settings",
				TextColor3 = Color3.fromRGB(195, 155, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 1006,
			}

			children[1] = UICorner
			children[2] = UIStroke
			children[3] = Frame6
			children[4] = ImageLabel2

			do
				local values = table.pack(create("TextLabel", tbl11))
				table.move(values, 1, values.n, 5, children)
			end

			tbl8.Children = children
			TextButton2 = create("TextButton", tbl8, Frame3)
		end

		local uiStroke2 = TextButton2:FindFirstChildOfClass("UIStroke")
		util.BindHover(TextButton2, { BackgroundColor3 = Color3.fromRGB(22, 14, 38) }, { BackgroundColor3 = Color3.fromRGB(14, 10, 22) }, { Transparency = 0.38 }, { Transparency = 0.72 }, uiStroke2)
		local v5, v6, v7, v8, fn2, v9, v10, v11, fn3, v12

		do
			local flag6 = false

			tbl5.MakeOverlay = function(arg3, arg4, arg5, arg6, arg7)
				local Frame6 = create("Frame", {
					Visible = false,
					Active = true,
					BackgroundTransparency = 0.5,
					BackgroundColor3 = Color3.fromRGB(4, 2, 10),
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 20,
				}, Frame3)

				local tbl8 = {
					Visible = false,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundColor3 = Color3.fromRGB(11, 8, 18),
					BackgroundTransparency = 0,
					Size = UDim2.new(0, arg5, 0, arg6),
					ZIndex = 2000,
				}

				local children = {}
				local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 12) })

				local UIStroke = create("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220),
					Transparency = 0.6,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})

				local tbl9 = {
					BackgroundColor3 = Color3.fromRGB(80, 40, 160),
					BackgroundTransparency = 0.92,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0.45, 0),
					Position = UDim2.new(0, 0, 0, 0),
					ZIndex = 21,
				}

				local children2 = {}
				local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 12) })

				local tbl10 = {
					Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1) }),
					Rotation = 90,
				}

				children2[1] = UICorner2

				do
					local values = table.pack(create("UIGradient", tbl10))
					table.move(values, 1, values.n, 2, children2)
				end

				tbl9.Children = children2
				local Frame7 = create("Frame", tbl9)

				local ImageLabel2 = create("ImageLabel", {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 14),
					Size = UDim2.new(0, 20, 0, 20),
					Image = arg4,
					ImageColor3 = Color3.fromRGB(190, 140, 255),
					ZIndex = 22,
				})

				local TextLabel4 = create("TextLabel", {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 38),
					Size = UDim2.new(1, -24, 0, 16),
					Font = Enum.Font.FredokaOne,
					Text = arg3,
					TextColor3 = Color3.fromRGB(210, 175, 255),
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 22,
				})

				local tbl11 = {
					BackgroundColor3 = Color3.fromRGB(160, 100, 255),
					BackgroundTransparency = 0.72,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 57),
					Size = UDim2.new(0.65, 0, 0, 1),
					ZIndex = 22,
				}

				local children3 = {}
				local tbl12 = {}
				local numberSequence = NumberSequence.new
				local tbl13 = {}
				local v13 = NumberSequenceKeypoint.new(0, 1)
				local v14 = NumberSequenceKeypoint.new(0.2, 0)
				local v15 = NumberSequenceKeypoint.new(0.8, 0)
				tbl13[1] = v13
				tbl13[2] = v14
				tbl13[3] = v15

				do
					local values = table.pack(NumberSequenceKeypoint.new(1, 1))
					table.move(values, 1, values.n, 4, tbl13)
				end

				tbl12.Transparency = numberSequence(tbl13)

				do
					local values = table.pack(create("UIGradient", tbl12))
					table.move(values, 1, values.n, 1, children3)
				end

				tbl11.Children = children3
				children[1] = UICorner
				children[2] = UIStroke
				children[3] = Frame7
				children[4] = ImageLabel2
				children[5] = TextLabel4

				do
					local values = table.pack(create("Frame", tbl11))
					table.move(values, 1, values.n, 6, children)
				end

				tbl8.Children = children
				local Frame8 = create("Frame", tbl8, Frame3)

				local tbl14 = {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 64),
					Size = UDim2.new(1, -16, 1, -100),
					Active = true,
					ScrollBarThickness = 0,
					ScrollBarImageTransparency = 1,
					ScrollingDirection = Enum.ScrollingDirection.Y,
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
					CanvasSize = UDim2.new(0, 0, 0, 0),
					ZIndex = 22,
				}

				local children4 = {}

				local UIListLayout = create("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
				})

				local tbl15 = {
					PaddingTop = UDim.new(0, 3),
					PaddingBottom = UDim.new(0, 3),
					PaddingLeft = UDim.new(0, 2),
					PaddingRight = UDim.new(0, 2),
				}

				children4[1] = UIListLayout

				do
					local values = table.pack(create("UIPadding", tbl15))
					table.move(values, 1, values.n, 2, children4)
				end

				tbl14.Children = children4
				local ScrollingFrame = create("ScrollingFrame", tbl14, Frame8)

				local tbl16 = {
					Name = "CloseBtn",
					BackgroundColor3 = Color3.fromRGB(30, 18, 52),
					BackgroundTransparency = 0,
					AnchorPoint = Vector2.new(0.5, 1),
					Size = UDim2.new(0.52, 0, 0, 24),
					Position = UDim2.new(0.5, 0, 1, -9),
					Text = "Close",
					TextColor3 = Color3.fromRGB(180, 135, 255),
					Font = Enum.Font.GothamBold,
					TextSize = 11,
					AutoButtonColor = false,
					ZIndex = 22,
				}

				local children5 = {}
				local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

				local tbl17 = {
					Color = Color3.fromRGB(140, 90, 220),
					Transparency = 0.65,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}

				children5[1] = UICorner3

				do
					local values = table.pack(create("UIStroke", tbl17))
					table.move(values, 1, values.n, 2, children5)
				end

				tbl16.Children = children5
				local TextButton3 = create("TextButton", tbl16, Frame8)

				TextButton3.MouseEnter:Connect(function()
					tbl:Tween(TextButton3, { BackgroundColor3 = Color3.fromRGB(50, 28, 85) }, 0.15, Enum.EasingStyle.Quint)
				end)

				TextButton3.MouseLeave:Connect(function()
					tbl:Tween(TextButton3, { BackgroundColor3 = Color3.fromRGB(30, 18, 52) }, 0.2, Enum.EasingStyle.Quint)
				end)

				local flag7 = false

				local function fn4()
					flag7 = true
					Frame6.Visible = true
					Frame8.Visible = true
					Frame8.Size = UDim2.new(0, arg5 * 0.5, 0, arg6 * 0.5)
					Frame8.BackgroundTransparency = 0.6
					tbl:Tween(Frame8, { Size = UDim2.new(0, arg5, 0, arg6), BackgroundTransparency = 0 }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				end

				local function fn5()
					if not flag7 then
						return
					end
					flag7 = false

					tbl:Tween(Frame8, { Size = UDim2.new(0, arg5 * 0.5, 0, arg6 * 0.5), BackgroundTransparency = 0.6 }, 0.22, Enum.EasingStyle.Quint, Enum.EasingDirection.In, function()
						Frame8.Visible = false
						Frame6.Visible = false
						Frame8.Size = UDim2.new(0, arg5, 0, arg6)
						Frame8.BackgroundTransparency = 0

						if arg7 then
							arg7()
						end
					end)
				end

				local function fn6()
					return flag7
				end

				TextButton3.MouseButton1Click:Connect(fn5)

				Frame6.InputBegan:Connect(function(input)
					if flag6 then
						return
					end

					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						fn5()
					end
				end)

				return Frame8, ScrollingFrame, Frame6, fn4, fn5, fn6
			end

			local Credits, v13, v14, v15
			Credits, v13, v14, v15, v5, v6 = tbl5.MakeOverlay("Credits", "rbxassetid://83474083071373", 270, 270, nil)

			local tbl8 = {
				ServerOwner = Color3.fromRGB(255, 200, 80),
				MainDeveloper = Color3.fromRGB(175, 115, 255),
				WebDesigner = Color3.fromRGB(100, 200, 255),
				Tester = Color3.fromRGB(80, 225, 160),
			}

			if #credits > 0 then
				create("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 14),
					Font = Enum.Font.GothamBold,
					Text = "TEAM",
					TextColor3 = Color3.fromRGB(130, 90, 200),
					TextSize = 9,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 23,
				}, v13)
			end

			for _, credit in ipairs(credits) do
				local role = credit.Role or "Developer"
				local name = credit.Name or "Unknown"
				local url = credit.Url or ""
				local urlIcon = credit.UrlIcon or "rbxassetid://83474083071373"
				local urlTag = credit.UrlTag or "View Profile"
				local color = tbl8[role] or Color3.fromRGB(175, 115, 255)
				local r = color.R
				local g = color.G
				local b = color.B
				local n3 = url ~= "" and 80 or 60

				local Frame6 = create("Frame", {
					BackgroundColor3 = Color3.fromRGB(10, 7, 18),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, n3),
					ZIndex = 23,
					ClipsDescendants = true,
					Children = { create("UICorner", { CornerRadius = UDim.new(0, 12) }) },
				}, v13)

				local tbl9 = {
					BackgroundColor3 = color,
					BackgroundTransparency = 0.86,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 23,
				}

				local children = {}
				local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 12) })
				local new = ColorSequenceKeypoint.new
				local color2 = Color3.fromRGB

				local tbl10 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(r * 0.5, g * 0.5, b * 0.5)),
						new(1, color2(6, 4, 12)),
					}),
					Rotation = 135,
				}

				children[1] = UICorner

				do
					local values = table.pack(create("UIGradient", tbl10))
					table.move(values, 1, values.n, 2, children)
				end

				tbl9.Children = children
				create("Frame", tbl9, Frame6)

				local UIStroke = create("UIStroke", {
					Color = color,
					Transparency = 0.65,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}, Frame6)

				local tbl11 = {
					BackgroundColor3 = color,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 8),
					Size = UDim2.new(0, 3, 1, -16),
					ZIndex = 25,
				}

				local children2 = {}
				local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })
				local new2 = ColorSequenceKeypoint.new

				local tbl12 = {
					Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), new2(1, color) }),
					Rotation = 90,
				}

				children2[1] = UICorner2

				do
					local values = table.pack(create("UIGradient", tbl12))
					table.move(values, 1, values.n, 2, children2)
				end

				tbl11.Children = children2
				create("Frame", tbl11, Frame6)

				local tbl13 = {
					BackgroundColor3 = Color3.new(r * 0.18, g * 0.18, b * 0.18),
					BorderSizePixel = 0,
					Position = UDim2.new(0, 12, 0, 10),
					Size = UDim2.new(0, 36, 0, 36),
					ZIndex = 25,
				}

				local children3 = {}
				local UICorner3 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local UIStroke2 = create("UIStroke", {
					Color = color,
					Transparency = 0.4,
					Thickness = 1.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})

				local tbl14 = {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Font = Enum.Font.FredokaOne,
					Text = string.upper(string.sub(name, 1, 1)),
					TextColor3 = color,
					TextSize = 18,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 26,
				}

				children3[1] = UICorner3
				children3[2] = UIStroke2

				do
					local values = table.pack(create("TextLabel", tbl14))
					table.move(values, 1, values.n, 3, children3)
				end

				tbl13.Children = children3
				local Frame7 = create("Frame", tbl13, Frame6)

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 58, 0, 10),
					Size = UDim2.new(1, -148, 0, 16),
					Font = Enum.Font.FredokaOne,
					Text = name,
					TextColor3 = Color3.fromRGB(242, 235, 255),
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
				}, Frame6)

				local tbl15 = {
					AnchorPoint = Vector2.new(1, 0),
					BackgroundColor3 = Color3.new(r * 0.12, g * 0.12, b * 0.12),
					BorderSizePixel = 0,
					Position = UDim2.new(1, -8, 0, 10),
					Size = UDim2.new(0, 76, 0, 20),
					ZIndex = 25,
				}

				local children4 = {}
				local UICorner4 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

				local UIStroke3 = create("UIStroke", {
					Color = color,
					Transparency = 0.5,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})

				local new3 = ColorSequenceKeypoint.new
				local color3 = Color3.new

				local UIGradient = create("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(r * 0.24, g * 0.24, b * 0.24)),
						new3(1, color3(r * 0.08, g * 0.08, b * 0.08)),
					}),
					Rotation = 90,
				})

				local tbl16 = {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Font = Enum.Font.GothamBold,
					Text = role,
					TextColor3 = color,
					TextSize = 9,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 26,
				}

				children4[1] = UICorner4
				children4[2] = UIStroke3
				children4[3] = UIGradient

				do
					local values = table.pack(create("TextLabel", tbl16))
					table.move(values, 1, values.n, 4, children4)
				end

				tbl15.Children = children4
				create("Frame", tbl15, Frame6)

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 58, 0, 28),
					Size = UDim2.new(1, -148, 0, 12),
					Font = Enum.Font.Gotham,
					Text = string.lower(role),
					TextColor3 = Color3.new(r * 0.82, g * 0.82, b * 0.82),
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
				}, Frame6)

				if url ~= "" then
					local tbl17 = {
						BackgroundColor3 = color,
						BackgroundTransparency = 0.78,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 10, 0, 52),
						Size = UDim2.new(1, -20, 0, 1),
						ZIndex = 25,
					}

					local children5 = {}
					local tbl18 = {}
					local numberSequence = NumberSequence.new
					local tbl19 = {}
					local v16 = NumberSequenceKeypoint.new(0, 1)
					local v17 = NumberSequenceKeypoint.new(0.15, 0)
					local v18 = NumberSequenceKeypoint.new(0.85, 0)
					local new4 = NumberSequenceKeypoint.new
					tbl19[1] = v16
					tbl19[2] = v17
					tbl19[3] = v18

					do
						local values = table.pack(new4(1, 1))
						table.move(values, 1, values.n, 4, tbl19)
					end

					tbl18.Transparency = numberSequence(tbl19)

					do
						local values = table.pack(create("UIGradient", tbl18))
						table.move(values, 1, values.n, 1, children5)
					end

					tbl17.Children = children5
					create("Frame", tbl17, Frame6)

					create("ImageLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 14, 0, 57),
						Size = UDim2.new(0, 13, 0, 13),
						Image = urlIcon,
						ImageColor3 = Color3.new(r * 0.8, g * 0.8, b * 0.8),
						ZIndex = 26,
					}, Frame6)

					create("TextLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 32, 0, 56),
						Size = UDim2.new(1, -140, 0, 14),
						Font = Enum.Font.Gotham,
						Text = urlTag,
						TextColor3 = Color3.new(r * 0.75, g * 0.75, b * 0.75),
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 26,
					}, Frame6)

					local tbl20 = {
						AnchorPoint = Vector2.new(1, 0),
						BackgroundColor3 = Color3.new(r * 0.12, g * 0.12, b * 0.12),
						BackgroundTransparency = 0,
						BorderSizePixel = 0,
						Position = UDim2.new(1, -8, 0, 55),
						Size = UDim2.new(0, 68, 0, 20),
						AutoButtonColor = false,
						Text = "",
						ZIndex = 26,
					}

					local children6 = {}
					local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

					local UIStroke4 = create("UIStroke", {
						Color = color,
						Transparency = 0.5,
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					})

					local new5 = ColorSequenceKeypoint.new
					local color4 = Color3.new

					local tbl21 = {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.new(r * 0.26, g * 0.26, b * 0.26)),
							new5(1, color4(r * 0.08, g * 0.08, b * 0.08)),
						}),
						Rotation = 90,
					}

					children6[1] = UICorner5
					children6[2] = UIStroke4

					do
						local values = table.pack(create("UIGradient", tbl21))
						table.move(values, 1, values.n, 3, children6)
					end

					tbl20.Children = children6
					local TextButton3 = create("TextButton", tbl20, Frame6)

					local TextLabel4 = create("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						Font = Enum.Font.GothamBold,
						Text = "COPY LINK",
						TextColor3 = color,
						TextSize = 9,
						TextXAlignment = Enum.TextXAlignment.Center,
						ZIndex = 27,
					}, TextButton3)

					local uiStroke3 = TextButton3:FindFirstChildOfClass("UIStroke")

					TextButton3.MouseEnter:Connect(function()
						tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.28, g * 0.28, b * 0.28) }, 0.12, Enum.EasingStyle.Quint)
						tbl:Tween(uiStroke3, { Transparency = 0.15 }, 0.12)
					end)

					TextButton3.MouseLeave:Connect(function()
						tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.12, g * 0.12, b * 0.12) }, 0.18, Enum.EasingStyle.Quint)
						tbl:Tween(uiStroke3, { Transparency = 0.5 }, 0.18)
					end)

					local v19 = url
					local v20 = name

					TextButton3.MouseButton1Click:Connect(function()
						CircleClick(TextButton3, mouse.X, mouse.Y)

						pcall(function()
							(setclipboard or toclipboard)(v19)
						end)

						TextLabel4.Text = "COPIED"
						TextLabel4.TextColor3 = Color3.fromRGB(100, 255, 160)
						tbl:Tween(TextButton3, { BackgroundColor3 = Color3.fromRGB(14, 60, 32) }, 0.12, Enum.EasingStyle.Quint)

						task.delay(1.4, function()
							TextLabel4.Text = "COPY LINK"
							TextLabel4.TextColor3 = color
							tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.12, g * 0.12, b * 0.12) }, 0.25, Enum.EasingStyle.Quint)
						end)

						tbl2.Notification:Notify({ Title = v20, Description = "Profile link copied to clipboard!" }, { Time = 2 })
					end)
				end

				local TextButton3 = create("TextButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, url ~= "" and 54 or n3),
					Text = "",
					ZIndex = 28,
					AutoButtonColor = false,
				}, Frame6)

				TextButton3.MouseEnter:Connect(function()
					tbl:Tween(Frame6, { BackgroundColor3 = Color3.new(r * 0.06, g * 0.04, b * 0.11) }, 0.14, Enum.EasingStyle.Quint)
					tbl:Tween(UIStroke, { Transparency = 0.28 }, 0.14)
					tbl:Tween(Frame7, { Size = UDim2.new(0, 39, 0, 39), Position = UDim2.new(0, 11, 0, 9) }, 0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				end)

				TextButton3.MouseLeave:Connect(function()
					tbl:Tween(Frame6, { BackgroundColor3 = Color3.fromRGB(10, 7, 18) }, 0.2, Enum.EasingStyle.Quint)
					tbl:Tween(UIStroke, { Transparency = 0.65 }, 0.2)
					tbl:Tween(Frame7, { Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 12, 0, 10) }, 0.2, Enum.EasingStyle.Quint)
				end)
			end

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(140, 90, 220),
				BackgroundTransparency = 0.78,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
				ZIndex = 23,
			}

			local children = {}
			local tbl10 = {}
			local numberSequence = NumberSequence.new
			local tbl11 = {}
			local v16 = NumberSequenceKeypoint.new(0, 1)
			local v17 = NumberSequenceKeypoint.new(0.12, 0)
			local v18 = NumberSequenceKeypoint.new(0.88, 0)
			local new = NumberSequenceKeypoint.new
			tbl11[1] = v16
			tbl11[2] = v17
			tbl11[3] = v18

			do
				local values = table.pack(new(1, 1))
				table.move(values, 1, values.n, 4, tbl11)
			end

			tbl10.Transparency = numberSequence(tbl11)

			do
				local values = table.pack(create("UIGradient", tbl10))
				table.move(values, 1, values.n, 1, children)
			end

			tbl9.Children = children
			create("Frame", tbl9, v13)
			local Frame6 = create("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 22), ZIndex = 23 }, v13)

			create("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 4),
				Size = UDim2.new(1, 0, 0, 14),
				Font = Enum.Font.GothamBold,
				Text = "COMMUNITY",
				TextColor3 = Color3.fromRGB(130, 90, 200),
				TextSize = 9,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 24,
			}, Frame6)

			tbl5.MakePremiumSocialCard = function(arg3, arg4)
				local accentColor = arg4.AccentColor
				local r = accentColor.R
				local g = accentColor.G
				local b = accentColor.B

				local Frame7 = create("Frame", {
					BackgroundColor3 = Color3.fromRGB(10, 7, 18),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 72),
					ZIndex = 23,
					ClipsDescendants = true,
					Children = { create("UICorner", { CornerRadius = UDim.new(0, 12) }) },
				}, arg3)

				local tbl12 = {
					BackgroundColor3 = accentColor,
					BackgroundTransparency = 0.88,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 23,
				}

				local children2 = {}
				local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 12) })

				local tbl13 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(r * 0.6, g * 0.6, b * 0.6)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 4, 12)),
					}),
					Rotation = 135,
				}

				children2[1] = UICorner

				do
					local values = table.pack(create("UIGradient", tbl13))
					table.move(values, 1, values.n, 2, children2)
				end

				tbl12.Children = children2
				create("Frame", tbl12, Frame7)
				create("UIStroke", { Color = accentColor, Transparency = 0.65, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, Frame7)

				local tbl14 = {
					BackgroundColor3 = accentColor,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 10),
					Size = UDim2.new(0, 3, 1, -20),
					ZIndex = 25,
				}

				local children3 = {}
				local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local tbl15 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
						ColorSequenceKeypoint.new(1, accentColor),
					}),
					Rotation = 90,
				}

				children3[1] = UICorner2

				do
					local values = table.pack(create("UIGradient", tbl15))
					table.move(values, 1, values.n, 2, children3)
				end

				tbl14.Children = children3
				create("Frame", tbl14, Frame7)

				local tbl16 = {
					BackgroundColor3 = Color3.new(r * 0.18, g * 0.18, b * 0.18),
					BorderSizePixel = 0,
					Position = UDim2.new(0, 14, 0.5, -20),
					Size = UDim2.new(0, 40, 0, 40),
					ZIndex = 25,
				}

				local children4 = {}
				local UICorner3 = create("UICorner", { CornerRadius = UDim.new(1, 0) })
				local UIStroke = create("UIStroke", { Color = accentColor, Transparency = 0.4, Thickness = 1.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })

				local tbl17 = {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 20, 0, 20),
					Image = arg4.IconImg,
					ImageColor3 = accentColor,
					ZIndex = 26,
				}

				children4[1] = UICorner3
				children4[2] = UIStroke

				do
					local values = table.pack(create("ImageLabel", tbl17))
					table.move(values, 1, values.n, 3, children4)
				end

				tbl16.Children = children4
				local Frame8 = create("Frame", tbl16, Frame7)

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 64, 0, 14),
					Size = UDim2.new(1, -160, 0, 18),
					Font = Enum.Font.FredokaOne,
					Text = arg4.Label,
					TextColor3 = Color3.fromRGB(240, 235, 255),
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
				}, Frame7)

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 64, 0, 34),
					Size = UDim2.new(1, -160, 0, 12),
					Font = Enum.Font.Gotham,
					Text = arg4.SubLabel,
					TextColor3 = Color3.new(r * 0.8, g * 0.8, b * 0.8),
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
				}, Frame7)

				local tbl18 = {
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = Color3.new(r * 0.14, g * 0.14, b * 0.14),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Position = UDim2.new(1, -10, 0.5, 0),
					Size = UDim2.new(0, 68, 0, 28),
					AutoButtonColor = false,
					Text = "",
					ZIndex = 26,
				}

				local children5 = {}
				local UICorner4 = create("UICorner", { CornerRadius = UDim.new(0, 8) })
				local UIStroke2 = create("UIStroke", { Color = accentColor, Transparency = 0.45, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })

				local tbl19 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(r * 0.28, g * 0.28, b * 0.28)),
						ColorSequenceKeypoint.new(1, Color3.new(r * 0.1, g * 0.1, b * 0.1)),
					}),
					Rotation = 90,
				}

				children5[1] = UICorner4
				children5[2] = UIStroke2

				do
					local values = table.pack(create("UIGradient", tbl19))
					table.move(values, 1, values.n, 3, children5)
				end

				tbl18.Children = children5
				local TextButton3 = create("TextButton", tbl18, Frame7)

				local TextLabel4 = create("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Font = Enum.Font.GothamBold,
					Text = arg4.BadgeText or "COPY",
					TextColor3 = accentColor,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 27,
				}, TextButton3)

				local uiStroke3 = TextButton3:FindFirstChildOfClass("UIStroke")
				local uiStroke4 = Frame7:FindFirstChildOfClass("UIStroke")

				local TextButton4 = create("TextButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Text = "",
					ZIndex = 28,
					AutoButtonColor = false,
				}, Frame7)

				TextButton4.MouseEnter:Connect(function()
					tbl:Tween(Frame7, { BackgroundColor3 = Color3.new(r * 0.07, g * 0.04, b * 0.12) }, 0.14, Enum.EasingStyle.Quint)
					tbl:Tween(uiStroke4, { Transparency = 0.3 }, 0.14)
					tbl:Tween(Frame8, { Size = UDim2.new(0, 43, 0, 43), Position = UDim2.new(0, 12, 0.5, -21) }, 0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				end)

				TextButton4.MouseLeave:Connect(function()
					tbl:Tween(Frame7, { BackgroundColor3 = Color3.fromRGB(10, 7, 18) }, 0.2, Enum.EasingStyle.Quint)
					tbl:Tween(uiStroke4, { Transparency = 0.65 }, 0.2)
					tbl:Tween(Frame8, { Size = UDim2.new(0, 40, 0, 40), Position = UDim2.new(0, 14, 0.5, -20) }, 0.2, Enum.EasingStyle.Quint)
				end)

				TextButton3.MouseEnter:Connect(function()
					tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.28, g * 0.28, b * 0.28) }, 0.12, Enum.EasingStyle.Quint)
					tbl:Tween(uiStroke3, { Transparency = 0.15 }, 0.12)
				end)

				TextButton3.MouseLeave:Connect(function()
					tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.14, g * 0.14, b * 0.14) }, 0.18, Enum.EasingStyle.Quint)
					tbl:Tween(uiStroke3, { Transparency = 0.45 }, 0.18)
				end)

				local function fn4()
					CircleClick(TextButton3, mouse.X, mouse.Y)

					pcall(function()
						(setclipboard or toclipboard)(arg4.CopyText)
					end)

					TextLabel4.Text = "COPIED"
					TextLabel4.TextColor3 = Color3.fromRGB(100, 255, 160)
					tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.1, g * 0.4, b * 0.25) }, 0.12, Enum.EasingStyle.Quint)
					tbl:Tween(uiStroke3, { Transparency = 0 }, 0.12)
					tbl:Tween(uiStroke4, { Transparency = 0.15 }, 0.12)

					task.delay(1.4, function()
						TextLabel4.Text = arg4.BadgeText or "COPY"
						TextLabel4.TextColor3 = accentColor
						tbl:Tween(TextButton3, { BackgroundColor3 = Color3.new(r * 0.14, g * 0.14, b * 0.14) }, 0.35, Enum.EasingStyle.Quint)
						tbl:Tween(uiStroke3, { Transparency = 0.45 }, 0.35)
						tbl:Tween(uiStroke4, { Transparency = 0.65 }, 0.35)
					end)

					if arg4.OnClick then
						arg4.OnClick(arg4.CopyText)
					end
				end

				TextButton3.MouseButton1Click:Connect(fn4)
				TextButton4.MouseButton1Click:Connect(fn4)
				return Frame7
			end

			tbl5.MakePremiumSocialCard(v13, {
				Label = "TikTok",
				SubLabel = "@trustmenotcondom",
				IconImg = "http://www.roblox.com/asset/?id=14620084334",
				AccentColor = Color3.fromRGB(210, 145, 255),
				BadgeText = "COPY",
				CopyText = "https://www.tiktok.com/@trustmenotcondom?_t=ZS-8syewdU3Bxq&_r=1",
				OnClick = function()
					tbl2.Notification:Notify({ Title = "TikTok", Description = "TikTok link copied to clipboard." }, { Time = 2 })
				end,
			})

			tbl5.MakePremiumSocialCard(v13, {
				Label = "Discord",
				SubLabel = "discord.gg/YEvpu5St2Z",
				IconImg = "rbxassetid://129297846250682",
				AccentColor = Color3.fromRGB(114, 137, 255),
				BadgeText = "COPY",
				CopyText = "https://discord.gg/YEvpu5St2Z",
				OnClick = function()
					tbl2.Notification:Notify({ Title = "Discord", Description = "Discord invite copied to clipboard." }, { Time = 3 })
				end,
			})

			local Settings, v19
			Settings, v7, v19, v8, fn2, v9 = tbl5.MakeOverlay("Settings", "rbxassetid://81151604784579", 270, 270, nil)
			local v20, v21
			v20, v10, v21, v11, fn3, v12 = tbl5.MakeOverlay("Save Manager", "rbxassetid://7733715400", 270, 270, nil)

			TextButton.MouseButton1Click:Connect(function()
				CircleClick(TextButton, mouse.X, mouse.Y)

				if v9 and v9() then
					fn2()
				end

				if v12 and v12() then
					fn3()
				end

				v15()
			end)

			CloseFullLock = function()
				if IsFullLocked() and Frame then
					Frame.Visible = true
				end
			end

			tbl5.MakeMiniToggle = function(arg3, arg4, arg5, arg6, arg7, arg8, arg9)
				arg7 = arg7 or 23
				local flag7 = arg8 and not tbl5.HasKeyAccess()

				if flag7 then
					save:Save(arg5, false)
				end

				local flag8 = save:Get(arg5, arg6)

				if flag7 then
					flag8 = false
				end

				local Frame7 = create("Frame", {
					BackgroundColor3 = Color3.fromRGB(18, 12, 30),
					BackgroundTransparency = 0.2,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 34),
					ZIndex = arg7,
					Children = { create("UICorner", { CornerRadius = UDim.new(0, 8) }) },
				}, arg3)

				local UIStroke = create("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220),
					Transparency = flag8 and not flag7 and 0.45 or 0.82,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}, Frame7)

				local tbl12 = {
					BackgroundColor3 = Color3.fromRGB(160, 100, 255),
					BackgroundTransparency = flag8 and not flag7 and 0 or 0.8,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, -10),
					Size = UDim2.new(0, 3, 0, 20),
					ZIndex = arg7 + 1,
				}

				local children2 = {}
				local UICorner = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local tbl13 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 170, 255)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 55, 210)),
					}),
					Rotation = 90,
				}

				children2[1] = UICorner

				do
					local values = table.pack(create("UIGradient", tbl13))
					table.move(values, 1, values.n, 2, children2)
				end

				tbl12.Children = children2
				local Frame8 = create("Frame", tbl12, Frame7)

				local TextLabel4 = create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 14, 0, 0),
					Size = UDim2.new(1, -70, 1, 0),
					Font = Enum.Font.GothamBold,
					Text = arg4 .. (flag7 and " (Premium)" or ""),
					TextColor3 = flag8 and not flag7 and Color3.fromRGB(215, 185, 255) or Color3.fromRGB(155, 130, 195),
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = arg7 + 1,
				}, Frame7)

				if flag7 then
					create("ImageLabel", {
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(1, -54, 0.5, 0),
						Size = UDim2.new(0, 12, 0, 12),
						Image = "rbxassetid://7733992528",
						ImageColor3 = Color3.fromRGB(140, 110, 190),
						ZIndex = arg7 + 3,
					}, Frame7)
				end

				local tbl14 = { BackgroundColor3 = flag8 and not flag7 and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26) }
				tbl14.AnchorPoint = Vector2.new(1, 0.5)
				tbl14.Position = UDim2.new(1, -10, 0.5, 0)
				tbl14.Size = UDim2.new(0, 38, 0, 20)
				tbl14.BorderSizePixel = 0
				tbl14.ZIndex = arg7 + 2
				tbl14.Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) }
				local Frame9 = create("Frame", tbl14, Frame7)

				local UIStroke2 = create("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220),
					Transparency = flag8 and not flag7 and 0.4 or 0.72,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}, Frame9)

				local tbl15 = {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = flag8 and not flag7 and UDim2.new(0, 20, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
					Size = UDim2.new(0, 14, 0, 14),
					BorderSizePixel = 0,
					ZIndex = arg7 + 3,
				}

				local children3 = {}
				local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })
				local tbl16 = {}
				local colorSequence = ColorSequence.new
				local tbl17 = {}
				local v22 = ColorSequenceKeypoint.new(0, flag8 and not flag7 and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(120, 100, 150))
				local new2 = ColorSequenceKeypoint.new
				local color = flag8 and not flag7 and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(60, 50, 90)
				local v23 = table.pack(new2(1, color))
				tbl17[1] = v22

				do
					local values = table.pack(table.unpack(v23, 1, v23.n))
					table.move(values, 1, values.n, 2, tbl17)
				end

				tbl16.Color = colorSequence(tbl17)
				tbl16.Rotation = 135
				local v24 = table.pack(create("UIGradient", tbl16))
				children3[1] = UICorner2

				do
					local values = table.pack(table.unpack(v24, 1, v24.n))
					table.move(values, 1, values.n, 2, children3)
				end

				tbl15.Children = children3
				local Frame10 = create("Frame", tbl15, Frame9)
				local uiGradient = Frame10:FindFirstChildOfClass("UIGradient")
				local TextButton3 = create("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "", ZIndex = arg7 + 4 }, Frame7)
				local flag9 = flag8

				TextButton3.MouseButton1Click:Connect(function()
					if flag7 then
						tbl2.Notification:Notify({ Title = "Premium Only", Description = "This feature requires a premium key." }, { Time = 3 })
						return
					end
					flag9 = not flag9
					tbl:Tween(Frame10, { Position = flag9 and UDim2.new(0, 20, 0.5, 0) or UDim2.new(0, 3, 0.5, 0) }, 0.22, Enum.EasingStyle.Back)
					tbl:Tween(Frame9, { BackgroundColor3 = flag9 and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26) }, 0.2, Enum.EasingStyle.Quint)
					tbl:Tween(UIStroke2, { Transparency = flag9 and 0.4 or 0.72 }, 0.2)
					tbl:Tween(UIStroke, { Transparency = flag9 and 0.45 or 0.82 }, 0.2)
					tbl:Tween(Frame8, { BackgroundTransparency = flag9 and 0 or 0.8 }, 0.2)
					tbl:Tween(TextLabel4, { TextColor3 = flag9 and Color3.fromRGB(215, 185, 255) or Color3.fromRGB(155, 130, 195) }, 0.2)

					if uiGradient then
						local v25 = uiGradient
						local colorSequence2 = ColorSequence.new
						local tbl18 = {}
						local v26 = ColorSequenceKeypoint.new(0, flag9 and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(120, 100, 150))
						local new3 = ColorSequenceKeypoint.new
						local color2 = flag9 and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(60, 50, 90)
						local v27 = table.pack(new3(1, color2))
						tbl18[1] = v26

						do
							local values = table.pack(table.unpack(v27, 1, v27.n))
							table.move(values, 1, values.n, 2, tbl18)
						end

						v25.Color = colorSequence2(tbl18)
					end

					save:Save(arg5, flag9)

					if typeof(arg9) == "function" then
						pcall(arg9, flag9)
					end
				end)

				return function()
					return flag9
				end
			end

			tbl5.MakeMiniSlider = function(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
				arg11 = arg11 or 23
				arg9 = arg9 or 0.05
				local flag7 = arg12 == true
				save:RegisterKey(arg5)
				local v22 = save:Get(arg5, arg8)

				if v22 == nil then
					v22 = arg8
				end

				local n3 = math.clamp(v22, arg6, arg7)
				local n4 = flag3 and 16 or 12
				local n5 = flag3 and 20 or 14

				local function fn4(arg13)
					return math.floor(arg13 / arg9 + 0.5) * arg9
				end

				local function fn5(arg13)
					return math.floor(arg13 * 100 + 0.5) .. "%"
				end

				local v23 = nil
				local parent = arg3

				while parent do
					if parent:IsA("ScrollingFrame") then
						v23 = parent
						break
					else
						parent = parent.Parent
					end
				end

				local Frame7 = create("Frame", {
					BackgroundColor3 = Color3.fromRGB(18, 12, 30),
					BackgroundTransparency = 0.2,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, flag3 and 52 or 48),
					Active = true,
					ZIndex = arg11,
					Children = { create("UICorner", { CornerRadius = UDim.new(0, 8) }) },
				}, arg3)

				create("UIStroke", {
					Color = Color3.fromRGB(140, 90, 220),
					Transparency = 0.7,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}, Frame7)

				local tbl12 = {
					BackgroundColor3 = Color3.fromRGB(160, 100, 255),
					BackgroundTransparency = 0.15,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, -12),
					Size = UDim2.new(0, 3, 0, 24),
					ZIndex = arg11 + 1,
				}

				local children2 = {}
				local UICorner = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local tbl13 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 170, 255)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 55, 210)),
					}),
					Rotation = 90,
				}

				children2[1] = UICorner

				do
					local values = table.pack(create("UIGradient", tbl13))
					table.move(values, 1, values.n, 2, children2)
				end

				tbl12.Children = children2
				create("Frame", tbl12, Frame7)

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 14, 0, 6),
					Size = UDim2.new(1, -70, 0, 14),
					Font = Enum.Font.GothamBold,
					Text = arg4,
					TextColor3 = Color3.fromRGB(215, 185, 255),
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = arg11 + 1,
				}, Frame7)

				local TextLabel4 = create("TextLabel", {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, -10, 0, 6),
					Size = UDim2.new(0, 44, 0, 14),
					Font = Enum.Font.GothamBold,
					Text = fn5(n3),
					TextColor3 = Color3.fromRGB(192, 132, 252),
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Right,
					ZIndex = arg11 + 1,
				}, Frame7)

				local tbl14 = {
					BackgroundColor3 = Color3.fromRGB(10, 10, 16),
					BackgroundTransparency = 0.1,
					Position = UDim2.new(0, 12, 0, flag3 and 30 or 28),
					Size = UDim2.new(1, -24, 0, flag3 and 14 or 10),
					Active = true,
					ZIndex = arg11 + 2,
				}

				local children3 = {}
				local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local tbl15 = {
					Color = Color3.fromRGB(140, 90, 220),
					Transparency = 0.72,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}

				children3[1] = UICorner2

				do
					local values = table.pack(create("UIStroke", tbl15))
					table.move(values, 1, values.n, 2, children3)
				end

				tbl14.Children = children3
				local Frame8 = create("Frame", tbl14, Frame7)

				local tbl16 = {
					BackgroundColor3 = Color3.fromRGB(160, 100, 255),
					BackgroundTransparency = 0,
					Size = UDim2.new((n3 - arg6) / (arg7 - arg6), 0, 1, 0),
					ZIndex = arg11 + 3,
				}

				local children4 = {}
				local UICorner3 = create("UICorner", { CornerRadius = UDim.new(1, 0) })
				local new2 = ColorSequenceKeypoint.new
				local color = Color3.fromRGB

				local tbl17 = {
					Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 92, 246)), new2(1, color(216, 180, 254)) }),
				}

				children4[1] = UICorner3

				do
					local values = table.pack(create("UIGradient", tbl17))
					table.move(values, 1, values.n, 2, children4)
				end

				tbl16.Children = children4
				local Frame9 = create("Frame", tbl16, Frame8)

				local tbl18 = {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new((n3 - arg6) / (arg7 - arg6), 0, 0.5, 0),
					Size = UDim2.new(0, n4, 0, n4),
					Active = true,
					ZIndex = arg11 + 4,
				}

				local children5 = {}
				local UICorner4 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local tbl19 = {
					Color = Color3.fromRGB(192, 132, 252),
					Transparency = 0.3,
					Thickness = 1.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}

				children5[1] = UICorner4

				do
					local values = table.pack(create("UIStroke", tbl19))
					table.move(values, 1, values.n, 2, children5)
				end

				tbl18.Children = children5
				local Frame10 = create("Frame", tbl18, Frame8)
				local max = math.max

				create("TextButton", {
					Name = "TouchHitbox",
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, math.max(n4 + 14, 28), 0, max(n4 + 14, 28)),
					Text = "",
					ZIndex = arg11 + 5,
				}, Frame10)

				local v24 = n3
				local flag8 = false
				local userInputType = nil

				local function fn6(arg13, arg14)
					if not arg10 then
						return
					end

					if flag7 then
						arg10(arg13, arg14)
					elseif arg14 then
						arg10(arg13, true)
					end
				end

				local function fn7(arg13, arg14)
					local flag9 = arg14 ~= false
					local v25 = fn4(math.clamp(arg13, arg6, arg7))
					v24 = v25
					local n6 = (v25 - arg6) / (arg7 - arg6)
					local udim2 = UDim2.new(n6, 0, 1, 0)
					local udim22 = UDim2.new(n6, 0, 0.5, 0)

					if flag9 then
						tbl:Tween(Frame9, { Size = udim2 }, 0.12, Enum.EasingStyle.Quint)
						tbl:Tween(Frame10, { Position = udim22 }, 0.12, Enum.EasingStyle.Quint)
					else
						Frame9.Size = udim2
						Frame10.Position = udim22
					end

					TextLabel4.Text = fn5(v25)

					if flag9 then
						save:Save(arg5, v25)
					end

					fn6(v25, flag9)
				end

				local function fn8(arg13)
					fn7(arg6 + (arg7 - arg6) * math.clamp((arg13 - Frame8.AbsolutePosition.X) / Frame8.AbsoluteSize.X, 0, 1), false)
				end

				local v25 = nil

				local function fn9(arg13)
					if not flag8 then
						return
					end

					if arg13 ~= v25 then
						return
					end
					flag8 = false
					v25 = nil
					userInputType = nil
					flag6 = false

					if v23 then
						v23.ScrollingEnabled = true
					end

					tbl:Tween(Frame10, { Size = UDim2.new(0, n4, 0, n4) }, 0.15, Enum.EasingStyle.Quint)
					save:Save(arg5, v24)
					fn6(v24, true)
				end

				local function fn10(input)
					if v25 ~= nil then
						return
					end

					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						flag8 = true
						v25 = input
						userInputType = input.UserInputType
						flag6 = true

						if v23 then
							v23.ScrollingEnabled = false
						end

						fn8(input.Position.X)
						tbl:Tween(Frame10, { Size = UDim2.new(0, n5, 0, n5) }, 0.12, Enum.EasingStyle.Back)
					end
				end

				Frame8.InputBegan:Connect(fn10)
				Frame10.InputBegan:Connect(fn10)
				local touchHitbox = Frame10:FindFirstChild("TouchHitbox")

				if touchHitbox then
					touchHitbox.InputBegan:Connect(fn10)
				end

				Frame7.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						if input.Position.Y - Frame7.AbsolutePosition.Y >= (flag3 and 26 or 24) then
							fn10(input)
						end
					end
				end)

				UserInputService.InputChanged:Connect(function(input)
					if not flag8 or not v25 then
						return
					end

					if input == v25 or v25.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputType == Enum.UserInputType.MouseMovement then
						fn8(input.Position.X)
					end
				end)

				UserInputService.InputEnded:Connect(function(input)
					if input == v25 then
						fn9(input)
					end
				end)

				fn7(n3, true)

				return function()
					return v24
				end
			end
		end

		tbl5.MakeKeybindRow = function(arg3, arg4)
			local Frame6 = create("Frame", {
				BackgroundColor3 = Color3.fromRGB(18, 12, 30),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 34),
				ZIndex = 23,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 8) }) },
			}, arg3)

			create("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.7,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}, Frame6)

			create("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 14, 0, 0),
				Size = UDim2.new(1, -90, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = arg4,
				TextColor3 = Color3.fromRGB(215, 185, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}, Frame6)

			TextLabel3 = create("TextLabel", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 72, 0, 14),
				Font = Enum.Font.GothamBold,
				Text = rightControl.Name,
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 10,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 24,
			}, Frame6)

			create("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "", ZIndex = 25 }, Frame6).MouseButton1Click:Connect(function()
				flag5 = true
				TextLabel3.Text = "..."
			end)
		end

		do
			local v13 = tbl5.MakeMiniToggle(v7, "Auto Save changes", "_opt_AutoSave", true)
			local v14 = tbl5.MakeMiniToggle(v7, "Auto Translate UI", "_opt_AutoTranslate", false)

			tbl5.MakeMiniSlider(v7, "UI Scale", "_opt_UIScale", n, 1.8, n2, 0.05, function(arg3, arg4)
				if arg4 then
					tbl5.ApplyUIScale(arg3)
				else
					tbl5.SetUIScalePreview(arg3)
				end
			end, nil, true)

			tbl5.MakeKeybindRow(v7, "UI Keybind", "_opt_UIKeybind", "RightControl")

			local tbl8 = {
				"English",
				"Filipino",
				"Hindi",
				"Turkish",
				"Indonesian",
				"Spanish",
				"French",
				"German",
				"Japanese",
				"Korean",
				"Vietnamese",
				"Thai",
				"Russian",
				"Portuguese",
				"Chinese Simplified",
				"Chinese Traditional",
				"Arabic",
				"Italian",
				"Polish",
				"Dutch",
				"Ukrainian",
				"Malay",
				"Bengali",
				"Urdu",
				"Persian",
				"Romanian",
				"Czech",
				"Greek",
				"Swedish",
				"Hungarian",
				"Danish",
				"Finnish",
				"Norwegian",
				"Hebrew",
				"Slovak",
				"Bulgarian",
				"Croatian",
				"Serbian",
				"Lithuanian",
				"Latvian",
				"Slovenian",
			}

			local n3 = 26
			local n4 = 3
			local n5 = 8
			local n6 = 30
			local n7 = 6
			local n8 = 10
			local str3 = ""
			local visible2 = false

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(14, 10, 24),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 34),
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 7) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.7,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl10 = {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 14, 0, 0),
				Size = UDim2.new(0.45, 0, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "Language",
				TextColor3 = Color3.fromRGB(155, 130, 195),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}

			children[1] = UICorner
			children[2] = UIStroke

			do
				local values = table.pack(create("TextLabel", tbl10))
				table.move(values, 1, values.n, 3, children)
			end

			tbl9.Children = children
			local Frame6 = create("Frame", tbl9, v7)
			local optLanguage = save:Get("_opt_Language", "English")

			local TextLabel4 = create("TextLabel", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -30, 0.5, 0),
				Size = UDim2.new(0, 130, 0, 20),
				Font = Enum.Font.GothamBold,
				Text = optLanguage,
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 24,
			}, Frame6)

			create("TextLabel", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 14, 0, 14),
				Font = Enum.Font.GothamBold,
				Text = "›",
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 14,
				ZIndex = 24,
			}, Frame6)

			local Frame7 = create("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, -(n8 * 2), 0, 0),
				ClipsDescendants = true,
				ZIndex = 24,
			}, v7)

			local tbl11 = {
				BackgroundColor3 = Color3.fromRGB(18, 13, 30),
				BackgroundTransparency = 0.1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0, 30),
				Font = Enum.Font.GothamBold,
				PlaceholderText = "Search language...",
				Text = "",
				TextColor3 = Color3.fromRGB(230, 230, 230),
				PlaceholderColor3 = Color3.fromRGB(120, 110, 145),
				TextSize = 11,
				ClearTextOnFocus = false,
				Visible = false,
				ZIndex = 30,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 7) })
			local tbl12 = { PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10) }
			children2[1] = UICorner2

			do
				local values = table.pack(create("UIPadding", tbl12))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl11.Children = children2
			local TextBox = create("TextBox", tbl11, Frame7)

			local tbl13 = {
				BackgroundColor3 = Color3.fromRGB(14, 10, 20),
				BackgroundTransparency = 0.05,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0, n6 + n7),
				Size = UDim2.new(1, 0, 0, 0),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollBarImageTransparency = 1,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				AutomaticCanvasSize = Enum.AutomaticSize.None,
				ClipsDescendants = true,
				ZIndex = 24,
			}

			local children3 = {}
			local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 7) })

			local tbl14 = {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.55,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children3[1] = UICorner3

			do
				local values = table.pack(create("UIStroke", tbl14))
				table.move(values, 1, values.n, 2, children3)
			end

			tbl13.Children = children3
			local ScrollingFrame = create("ScrollingFrame", tbl13, Frame7)
			create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 3) }, ScrollingFrame)

			create("UIPadding", {
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 4),
				PaddingLeft = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 4),
			}, ScrollingFrame)

			tbl5.GetFilteredLanguages = function()
				if str3 == "" then
					return table.clone(tbl8)
				end
				local v15 = string.lower(str3)
				local tbl15 = {}

				for _, v16 in ipairs(tbl8) do
					if string.find(string.lower(v16), v15, 1, true) then
						table.insert(tbl15, v16)
					end
				end

				return tbl15
			end

			tbl5.CalcListHeight = function(arg3)
				local n9 = math.min(arg3, 4)
				if n9 == 0 then
					return 0
				end
				return n5 + n9 * n3 + (n9 - 1) * n4
			end

			tbl5.SetCanvasHeight = function(arg3)
				local n9 = n5 + arg3 * n3 + math.max(arg3 - 1, 0) * n4
				local scrollingEnabled = n9 > UnscaledLayout(ScrollingFrame.AbsoluteSize.Y) + 1
				ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, scrollingEnabled and n9 or 0)
				ScrollingFrame.ScrollingEnabled = scrollingEnabled
				ScrollingFrame.ElasticBehavior = Enum.ElasticBehavior.Never

				if not scrollingEnabled then
					ScrollingFrame.CanvasPosition = Vector2.new(0, 0)
				end
			end

			tbl5.BuildLangItems = function()
				for _, child in ipairs(ScrollingFrame:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end

				local optLanguage2 = save:Get("_opt_Language", "English")
				local v15 = tbl5.GetFilteredLanguages()

				for i, v16 in ipairs(v15) do
					local flag6 = v16 == optLanguage2

					local tbl15 = {
						BackgroundColor3 = flag6 and Color3.fromRGB(30, 18, 52) or Color3.fromRGB(18, 13, 30),
						BackgroundTransparency = flag6 and 0.2 or 0.5,
						BorderSizePixel = 0,
						Size = UDim2.new(1, -2, 0, 26),
						LayoutOrder = i,
						Text = "",
						AutoButtonColor = false,
						ZIndex = 25,
					}

					local children4 = {}
					local UICorner4 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

					local UIStroke2 = create("UIStroke", {
						Color = Color3.fromRGB(140, 90, 220),
						Transparency = flag6 and 0.42 or 0.82,
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					})

					local Frame8 = create("Frame", {
						BackgroundColor3 = Color3.fromRGB(160, 100, 255),
						BackgroundTransparency = flag6 and 0 or 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, 0.5, -9),
						Size = UDim2.new(0, 3, 0, 18),
						ZIndex = 26,
						Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
					})

					local tbl16 = {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 12, 0, 0),
						Size = UDim2.new(1, -24, 1, 0),
						Font = Enum.Font.GothamBold,
						Text = v16,
						TextColor3 = flag6 and Color3.fromRGB(215, 185, 255) or Color3.fromRGB(175, 155, 210),
						TextSize = 11,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 26,
					}

					local v17 = table.pack(create("TextLabel", tbl16))
					children4[1] = UICorner4
					children4[2] = UIStroke2
					children4[3] = Frame8

					do
						local values = table.pack(table.unpack(v17, 1, v17.n))
						table.move(values, 1, values.n, 4, children4)
					end

					tbl15.Children = children4

					create("TextButton", tbl15, ScrollingFrame).MouseButton1Click:Connect(function()
						save:Save("_opt_Language", v16)
						TextLabel4.Text = v16
						visible2 = false
						str3 = ""
						TextBox.Text = ""
						TextBox.Visible = false
						tbl5.BuildLangItems()
						local v18 = tbl5.CalcListHeight(#tbl5.GetFilteredLanguages())
						ScrollingFrame.Size = UDim2.new(1, 0, 0, v18)
						tbl:Tween(Frame7, { Size = UDim2.new(1, -(n8 * 2), 0, 0) }, 0.22, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
						tbl:Tween(ScrollingFrame, { Size = UDim2.new(1, 0, 0, 0) }, 0.22, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

						if v14() then
							local v19 = tbl4.Languages[v16]

							if v19 then
								task.spawn(ApplyTranslation, v19)
							end
						end
					end)
				end

				tbl5.SetCanvasHeight(#v15)
			end

			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				str3 = TextBox.Text
				tbl5.BuildLangItems()

				if visible2 then
					local v15 = tbl5.CalcListHeight(#tbl5.GetFilteredLanguages())
					ScrollingFrame.Size = UDim2.new(1, 0, 0, v15)
					Frame7.Size = UDim2.new(1, -(n8 * 2), 0, n6 + n7 + v15)
				end
			end)

			tbl5.BuildLangItems()

			create("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "", ZIndex = 25 }, Frame6).MouseButton1Click:Connect(function()
				visible2 = not visible2
				str3 = ""
				TextBox.Text = ""
				TextBox.Visible = visible2
				tbl5.BuildLangItems()
				local v15 = tbl5.CalcListHeight(#tbl5.GetFilteredLanguages())
				local n9 = visible2 and n6 + n7 + v15 or 0
				local out = visible2 and Enum.EasingDirection.Out or Enum.EasingDirection.In
				tbl:Tween(Frame7, { Size = UDim2.new(1, -(n8 * 2), 0, n9) }, 0.25, Enum.EasingStyle.Quint, out)
				tbl:Tween(ScrollingFrame, { Size = UDim2.new(1, 0, 0, v15) }, 0.25, Enum.EasingStyle.Quint, out)
			end)

			local optAutoTranslate = save:Get("_opt_AutoTranslate", false)
			local optLanguage2 = save:Get("_opt_Language", "English")

			task.spawn(function()
				while true do
					task.wait(0.45)
					local v15 = v14()
					local optLanguage3 = save:Get("_opt_Language", "English")

					if v15 ~= optAutoTranslate or v15 and optLanguage3 ~= optLanguage2 then
						optAutoTranslate = v15
						optLanguage2 = optLanguage3
						local v16 = tbl4.Languages[optLanguage3]
						if v15 and v16 and v16 ~= "en" then
							ApplyTranslation(v16)
							continue
						end

						if not v15 then
							ApplyTranslation("en")
						end
					end
				end
			end)

			task.defer(function()
				if save:Get("_opt_AutoTranslate", false) then
					local v15 = tbl4.Languages[save:Get("_opt_Language", "English")]

					if v15 and v15 ~= "en" then
						ApplyTranslation(v15)
					end
				end
			end)

			local tbl15 = {
				BackgroundColor3 = Color3.fromRGB(100, 60, 180),
				BackgroundTransparency = 0.82,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
				ZIndex = 23,
			}

			local children4 = {}
			local tbl16 = {}
			local numberSequence = NumberSequence.new
			local tbl17 = {}
			local v15 = NumberSequenceKeypoint.new(0, 1)
			local v16 = NumberSequenceKeypoint.new(0.15, 0)
			local v17 = NumberSequenceKeypoint.new(0.85, 0)
			local new = NumberSequenceKeypoint.new
			tbl17[1] = v15
			tbl17[2] = v16
			tbl17[3] = v17

			do
				local values = table.pack(new(1, 1))
				table.move(values, 1, values.n, 4, tbl17)
			end

			tbl16.Transparency = numberSequence(tbl17)

			do
				local values = table.pack(create("UIGradient", tbl16))
				table.move(values, 1, values.n, 1, children4)
			end

			tbl15.Children = children4
			create("Frame", tbl15, v7)
			save.IsAutoSave = v13
		end

		do
			local tbl8 = {
				BackgroundColor3 = Color3.fromRGB(22, 14, 38),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 36),
				Text = "",
				AutoButtonColor = false,
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 8) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.55,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local TextLabel4 = create("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 12, 0, 0),
				Size = UDim2.new(1, -40, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "Open Save Manager",
				TextColor3 = Color3.fromRGB(210, 180, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			})

			local tbl9 = {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Font = Enum.Font.GothamBold,
				Text = "›",
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 14,
				ZIndex = 24,
			}

			children[1] = UICorner
			children[2] = UIStroke
			children[3] = TextLabel4

			do
				local values = table.pack(create("TextLabel", tbl9))
				table.move(values, 1, values.n, 4, children)
			end

			tbl8.Children = children
			local TextButton3 = create("TextButton", tbl8, v7)

			TextButton3.MouseEnter:Connect(function()
				tbl:Tween(TextButton3, { BackgroundColor3 = Color3.fromRGB(30, 18, 52) }, 0.15, Enum.EasingStyle.Quint)
			end)

			TextButton3.MouseLeave:Connect(function()
				tbl:Tween(TextButton3, { BackgroundColor3 = Color3.fromRGB(22, 14, 38) }, 0.2, Enum.EasingStyle.Quint)
			end)

			TextButton3.MouseButton1Click:Connect(function()
				CircleClick(TextButton3, mouse.X, mouse.Y)
				fn2()
				v11()
			end)
		end

		create("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 28),
			Font = Enum.Font.Gotham,
			Text = "Saves are stored per Roblox account",
			TextColor3 = Color3.fromRGB(130, 110, 170),
			TextSize = 9,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			ZIndex = 23,
		}, v7)

		local saveSlots
		saveSlots = save:Get("_saveSlots", {})
		local tbl8
		tbl8 = {}
		local v13
		v13 = nil
		local flag6
		flag6 = false
		local str3
		str3 = ""
		local TextLabel4

		do
			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(18, 12, 30),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 52),
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 8) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.65,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local new = ColorSequenceKeypoint.new
			local color = Color3.fromRGB

			local tbl10 = {
				Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(28, 18, 48)), new(1, color(14, 10, 24)) }),
				Rotation = 135,
			}

			children[1] = UICorner
			children[2] = UIStroke

			do
				local values = table.pack(create("UIGradient", tbl10))
				table.move(values, 1, values.n, 3, children)
			end

			tbl9.Children = children
			local Frame6 = create("Frame", tbl9, v10)

			create("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 7),
				Size = UDim2.new(1, -20, 0, 16),
				Font = Enum.Font.GothamBold,
				RichText = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Text = string.format("Account: <font color=\"#C084FC\"><b>%s</b></font>", save:GetPlayerName()),
				TextColor3 = Color3.fromRGB(225, 200, 255),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}, Frame6)

			TextLabel4 = create("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 26),
				Size = UDim2.new(1, -20, 0, 16),
				Font = Enum.Font.Gotham,
				RichText = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Text = string.format("Profile: <font color=\"#C084FC\"><b>%s</b></font>  •  ID: <font color=\"#34D399\">%s</font>", save.ActiveProfile or "[Auto]", save:GetGameId()),
				TextColor3 = Color3.fromRGB(165, 140, 205),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}, Frame6)
		end

		do
			local Frame6 = create("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 28),
				ZIndex = 23,
				Children = {
					create("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 4),
					}),
				},
			}, v10)

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(70, 35, 150),
				BackgroundTransparency = 0.35,
				BorderSizePixel = 0,
				Size = UDim2.new(0.32, 0, 1, 0),
				Text = "Quick Save",
				TextColor3 = Color3.fromRGB(215, 185, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				LayoutOrder = 1,
				ZIndex = 24,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl10 = {
				Color = Color3.fromRGB(150, 100, 235),
				Transparency = 0.6,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children[1] = UICorner

			do
				local values = table.pack(create("UIStroke", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			local TextButton3 = create("TextButton", tbl9, Frame6)

			local tbl11 = {
				BackgroundColor3 = Color3.fromRGB(80, 50, 25),
				BackgroundTransparency = 0.4,
				BorderSizePixel = 0,
				Size = UDim2.new(0.32, 0, 1, 0),
				Text = "Reset All",
				TextColor3 = Color3.fromRGB(255, 190, 110),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				LayoutOrder = 2,
				ZIndex = 24,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl12 = {
				Color = Color3.fromRGB(255, 170, 80),
				Transparency = 0.65,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIStroke", tbl12))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl11.Children = children2
			local TextButton4 = create("TextButton", tbl11, Frame6)

			local tbl13 = {
				BackgroundColor3 = Color3.fromRGB(110, 18, 36),
				BackgroundTransparency = 0.4,
				BorderSizePixel = 0,
				Size = UDim2.new(0.33, 0, 1, 0),
				Text = "Clear All",
				TextColor3 = Color3.fromRGB(255, 110, 130),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				LayoutOrder = 3,
				ZIndex = 24,
			}

			local children3 = {}
			local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl14 = {
				Color = Color3.fromRGB(255, 95, 120),
				Transparency = 0.65,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children3[1] = UICorner3

			do
				local values = table.pack(create("UIStroke", tbl14))
				table.move(values, 1, values.n, 2, children3)
			end

			tbl13.Children = children3
			local TextButton5 = create("TextButton", tbl13, Frame6)

			TextButton3.MouseEnter:Connect(function()
				tbl:Tween(TextButton3, { BackgroundTransparency = 0.15 }, 0.12)
			end)

			TextButton3.MouseLeave:Connect(function()
				tbl:Tween(TextButton3, { BackgroundTransparency = 0.35 }, 0.18)
			end)

			TextButton4.MouseEnter:Connect(function()
				tbl:Tween(TextButton4, { BackgroundTransparency = 0.2 }, 0.12)
			end)

			TextButton4.MouseLeave:Connect(function()
				tbl:Tween(TextButton4, { BackgroundTransparency = 0.4 }, 0.18)
			end)

			TextButton5.MouseEnter:Connect(function()
				tbl:Tween(TextButton5, { BackgroundTransparency = 0.2 }, 0.12)
			end)

			TextButton5.MouseLeave:Connect(function()
				tbl:Tween(TextButton5, { BackgroundTransparency = 0.4 }, 0.18)
			end)

			TextButton3.MouseButton1Click:Connect(function()
				CircleClick(TextButton3, mouse.X, mouse.Y)
				local snapshot = save:GetSnapshot()
				local saveSlots2 = save:Get("_saveSlots", {})
				local activeProfile = save.ActiveProfile or "[Auto]"
				local flag7 = false

				for _, v14 in ipairs(saveSlots2) do
					if v14.name == activeProfile then
						v14.data = snapshot
						v14.updated = os.date("%Y-%m-%d %H:%M")
						flag7 = true
						break
					end
				end

				if not flag7 then
					table.insert(saveSlots2, {
						name = activeProfile,
						data = snapshot,
						created = os.date("%Y-%m-%d %H:%M"),
						updated = os.date("%Y-%m-%d %H:%M"),
					})
				end

				save:Save("_saveSlots", saveSlots2)
				tbl2.Notification:Notify({ Title = "Save Manager", Description = "Saved state to \"" .. activeProfile .. "\"." }, { Time = 2 })
				RefreshSlots()
			end)

			TextButton4.MouseButton1Click:Connect(function()
				CircleClick(TextButton4, mouse.X, mouse.Y)
				save:ResetToDefaults(true)
				tbl2.Notification:Notify({ Title = "Save Manager", Description = "All controls have been reset to default values." }, { Time = 3 })
			end)

			TextButton5.MouseButton1Click:Connect(function()
				CircleClick(TextButton5, mouse.X, mouse.Y)
				save:ClearAll()
				save:Save("_saveSlots", {})
				save:Save("_autoLoadTarget", nil)
				save.ActiveProfile = "[Auto]"

				if TextLabel4 then
					TextLabel4.Text = "Active Profile: <font color=\"#C084FC\"><b>[Auto]</b></font>"
				end

				RefreshSlots()
				tbl2.Notification:Notify({ Title = "Save Manager", Description = "All saved profiles and data have been cleared." }, { Time = 3 })
			end)
		end

		local Frame6

		do
			local tbl9 = {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 22,
			}

			local children = {}

			local UIListLayout = create("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 4),
			})

			local tbl10 = { PaddingTop = UDim.new(0, 2), PaddingBottom = UDim.new(0, 4) }
			children[1] = UIListLayout

			do
				local values = table.pack(create("UIPadding", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			Frame6 = create("Frame", tbl9, v10)
		end

		local Frame7

		Frame7 = create("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Visible = false,
			ZIndex = 22,
			Children = {
				create("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
				}),
			},
		}, v10)

		local TextButton3

		do
			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(20, 14, 34),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 26),
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = 1,
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.6,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local TextLabel5 = create("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 8, 0, 0),
				Size = UDim2.new(0, 16, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "‹",
				TextColor3 = Color3.fromRGB(192, 132, 252),
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 24,
			})

			local tbl10 = {
				Name = "BackLabel",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 28, 0, 0),
				Size = UDim2.new(1, -34, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "Back to Profiles",
				TextColor3 = Color3.fromRGB(210, 180, 255),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}

			children[1] = UICorner
			children[2] = UIStroke
			children[3] = TextLabel5

			do
				local values = table.pack(create("TextLabel", tbl10))
				table.move(values, 1, values.n, 4, children)
			end

			tbl9.Children = children
			TextButton3 = create("TextButton", tbl9, Frame7)
		end

		local Frame8

		do
			local tbl9 = {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
				ZIndex = 23,
			}

			local children = {}

			local UIListLayout = create("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 4),
			})

			local tbl10 = { PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4) }
			children[1] = UIListLayout

			do
				local values = table.pack(create("UIPadding", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			Frame8 = create("Frame", tbl9, Frame7)
		end

		tbl5.SectionLabel = function(arg3, arg4)
			return create("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 13),
				LayoutOrder = arg4,
				Font = Enum.Font.GothamBold,
				Text = arg3,
				TextColor3 = Color3.fromRGB(140, 105, 200),
				TextSize = 9,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}, Frame8)
		end

		tbl5.SectionLabel("PROFILE NAME", 1)
		local TextBox, TextButton4

		do
			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(16, 11, 26),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 28),
				LayoutOrder = 2,
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl10 = {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = 0.68,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children[1] = UICorner

			do
				local values = table.pack(create("UIStroke", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			local Frame9 = create("Frame", tbl9, Frame8)

			TextBox = create("TextBox", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -70, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "",
				TextColor3 = Color3.fromRGB(220, 200, 255),
				PlaceholderText = "Enter profile name...",
				PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 24,
			}, Frame9)

			local tbl11 = {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(80, 45, 160),
				BackgroundTransparency = 0.3,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -4, 0.5, 0),
				Size = UDim2.new(0, 54, 0, 20),
				Text = "Rename",
				TextColor3 = Color3.fromRGB(220, 190, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				Visible = false,
				ZIndex = 25,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

			local tbl12 = {
				Color = Color3.fromRGB(150, 100, 230),
				Transparency = 0.5,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIStroke", tbl12))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl11.Children = children2
			TextButton4 = create("TextButton", tbl11, Frame9)
		end

		tbl5.SectionLabel("AUTO LOAD SETTING", 3)
		local Frame9, Frame10, TextButton5

		do
			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(16, 11, 26),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 30),
				LayoutOrder = 4,
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = 0.68,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl10 = {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -60, 1, 0),
				Font = Enum.Font.GothamBold,
				Text = "Auto Load this Profile on Game Start",
				TextColor3 = Color3.fromRGB(200, 175, 240),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}

			children[1] = UICorner
			children[2] = UIStroke

			do
				local values = table.pack(create("TextLabel", tbl10))
				table.move(values, 1, values.n, 3, children)
			end

			tbl9.Children = children
			local Frame11 = create("Frame", tbl9, Frame8)

			local tbl11 = {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(14, 9, 26),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -8, 0.5, 0),
				Size = UDim2.new(0, 36, 0, 18),
				ZIndex = 24,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

			local tbl12 = {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = 0.7,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIStroke", tbl12))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl11.Children = children2
			Frame9 = create("Frame", tbl11, Frame11)

			local tbl13 = {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 3, 0.5, 0),
				Size = UDim2.new(0, 12, 0, 12),
				BorderSizePixel = 0,
				ZIndex = 25,
			}

			local children3 = {}
			local UICorner3 = create("UICorner", { CornerRadius = UDim.new(1, 0) })
			local new = ColorSequenceKeypoint.new
			local color = Color3.fromRGB

			local tbl14 = {
				Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(110, 90, 140)), new(1, color(55, 45, 85)) }),
				Rotation = 135,
			}

			children3[1] = UICorner3

			do
				local values = table.pack(create("UIGradient", tbl14))
				table.move(values, 1, values.n, 2, children3)
			end

			tbl13.Children = children3
			Frame10 = create("Frame", tbl13, Frame9)
			TextButton5 = create("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "", ZIndex = 26 }, Frame11)
		end

		tbl5.SectionLabel("DATA INSPECTOR & PREVIEW", 5)
		local TextBox2

		do
			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(10, 8, 16),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 22),
				LayoutOrder = 6,
				Font = Enum.Font.Gotham,
				PlaceholderText = "Search saved keys...",
				PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
				Text = "",
				TextColor3 = Color3.fromRGB(215, 190, 255),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 24,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 5) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(120, 75, 200),
				Transparency = 0.75,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl10 = { PaddingLeft = UDim.new(0, 8) }
			children[1] = UICorner
			children[2] = UIStroke

			do
				local values = table.pack(create("UIPadding", tbl10))
				table.move(values, 1, values.n, 3, children)
			end

			tbl9.Children = children
			TextBox2 = create("TextBox", tbl9, Frame8)
		end

		local ScrollingFrame

		do
			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(9, 6, 16),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 74),
				LayoutOrder = 7,
				ScrollBarThickness = 0,
				ScrollBarImageTransparency = 1,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ZIndex = 23,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(120, 75, 200),
				Transparency = 0.72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local UIListLayout = create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2) })

			local tbl10 = {
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 6),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
			}

			children[1] = UICorner
			children[2] = UIStroke
			children[3] = UIListLayout

			do
				local values = table.pack(create("UIPadding", tbl10))
				table.move(values, 1, values.n, 4, children)
			end

			tbl9.Children = children
			ScrollingFrame = create("ScrollingFrame", tbl9, Frame8)
		end

		tbl5.SectionLabel("ACTIONS", 8)
		local TextButton6, TextButton7

		do
			local Frame11 = create("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 26),
				LayoutOrder = 9,
				ZIndex = 23,
				Children = {
					create("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 4),
					}),
				},
			}, Frame8)

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(80, 40, 170),
				BackgroundTransparency = 0.25,
				BorderSizePixel = 0,
				Size = UDim2.new(0.48, 0, 1, 0),
				LayoutOrder = 1,
				Text = "Load & Apply",
				TextColor3 = Color3.fromRGB(230, 205, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl10 = {
				Color = Color3.fromRGB(190, 150, 255),
				Transparency = 0.5,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children[1] = UICorner

			do
				local values = table.pack(create("UIStroke", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			TextButton6 = create("TextButton", tbl9, Frame11)

			local tbl11 = {
				BackgroundColor3 = Color3.fromRGB(40, 80, 140),
				BackgroundTransparency = 0.25,
				BorderSizePixel = 0,
				Size = UDim2.new(0.48, 0, 1, 0),
				LayoutOrder = 2,
				Text = "Overwrite Current",
				TextColor3 = Color3.fromRGB(180, 220, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl12 = {
				Color = Color3.fromRGB(140, 190, 255),
				Transparency = 0.5,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIStroke", tbl12))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl11.Children = children2
			TextButton7 = create("TextButton", tbl11, Frame11)
		end

		local TextButton8, TextButton9, TextLabel5, Frame11

		do
			local Frame12 = create("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 26),
				LayoutOrder = 10,
				ZIndex = 23,
				Children = {
					create("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 4),
					}),
				},
			}, Frame8)

			local tbl9 = {
				BackgroundColor3 = Color3.fromRGB(24, 18, 40),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				Size = UDim2.new(0.32, 0, 1, 0),
				LayoutOrder = 1,
				Text = "Clone",
				TextColor3 = Color3.fromRGB(205, 180, 245),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl10 = {
				Color = Color3.fromRGB(130, 90, 210),
				Transparency = 0.65,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children[1] = UICorner

			do
				local values = table.pack(create("UIStroke", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			TextButton8 = create("TextButton", tbl9, Frame12)

			local tbl11 = {
				BackgroundColor3 = Color3.fromRGB(20, 75, 35),
				BackgroundTransparency = 0.25,
				BorderSizePixel = 0,
				Size = UDim2.new(0.32, 0, 1, 0),
				LayoutOrder = 2,
				Text = "Export Code",
				TextColor3 = Color3.fromRGB(120, 240, 160),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl12 = {
				Color = Color3.fromRGB(90, 220, 130),
				Transparency = 0.6,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children2[1] = UICorner2

			do
				local values = table.pack(create("UIStroke", tbl12))
				table.move(values, 1, values.n, 2, children2)
			end

			tbl11.Children = children2
			TextButton9 = create("TextButton", tbl11, Frame12)

			local tbl13 = {
				BackgroundColor3 = Color3.fromRGB(110, 18, 36),
				BackgroundTransparency = 0.25,
				BorderSizePixel = 0,
				Size = UDim2.new(0.32, 0, 1, 0),
				LayoutOrder = 3,
				Text = "Delete",
				TextColor3 = Color3.fromRGB(255, 110, 130),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children3 = {}
			local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

			local tbl14 = {
				Color = Color3.fromRGB(255, 95, 120),
				Transparency = 0.6,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			children3[1] = UICorner3

			do
				local values = table.pack(create("UIStroke", tbl14))
				table.move(values, 1, values.n, 2, children3)
			end

			tbl13.Children = children3
			local TextButton10 = create("TextButton", tbl13, Frame12)

			TextLabel5 = create("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 16),
				LayoutOrder = 9,
				Font = Enum.Font.GothamBold,
				Text = "PROFILES & SLOTS",
				TextColor3 = Color3.fromRGB(150, 115, 215),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 23,
			}, Frame6)

			Frame11 = create("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 10,
				ZIndex = 23,
				Children = {
					create("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 4),
					}),
				},
			}, Frame6)

			local tbl15 = {
				BackgroundColor3 = Color3.fromRGB(14, 10, 24),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 34),
				LayoutOrder = 11,
				ZIndex = 23,
			}

			local children4 = {}
			local UICorner4 = create("UICorner", { CornerRadius = UDim.new(0, 7) })

			local UIStroke = create("UIStroke", {
				Color = Color3.fromRGB(140, 90, 220),
				Transparency = 0.7,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local new = ColorSequenceKeypoint.new
			local color = Color3.fromRGB

			local tbl16 = {
				Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 18, 55)), new(1, color(14, 10, 24)) }),
				Rotation = 135,
			}

			children4[1] = UICorner4
			children4[2] = UIStroke

			do
				local values = table.pack(create("UIGradient", tbl16))
				table.move(values, 1, values.n, 3, children4)
			end

			tbl15.Children = children4
			local Frame13 = create("Frame", tbl15, Frame6)

			local tbl17 = {
				BackgroundColor3 = Color3.fromRGB(8, 6, 14),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				ClearTextOnFocus = false,
				Position = UDim2.new(0, 8, 0.5, -10),
				Size = UDim2.new(1, -82, 0, 20),
				PlaceholderText = "New profile name...",
				PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
				Text = "",
				TextColor3 = Color3.fromRGB(220, 200, 255),
				Font = Enum.Font.Gotham,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}

			local children5 = {}
			local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

			local UIStroke2 = create("UIStroke", {
				Color = Color3.fromRGB(130, 80, 210),
				Transparency = 0.72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl18 = { PaddingLeft = UDim.new(0, 6) }
			children5[1] = UICorner5
			children5[2] = UIStroke2

			do
				local values = table.pack(create("UIPadding", tbl18))
				table.move(values, 1, values.n, 3, children5)
			end

			tbl17.Children = children5
			local TextBox3 = create("TextBox", tbl17, Frame13)

			local tbl19 = {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(80, 40, 160),
				BackgroundTransparency = 0.25,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -6, 0.5, 0),
				Size = UDim2.new(0, 62, 0, 22),
				Text = "+ Create",
				TextColor3 = Color3.fromRGB(220, 195, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children6 = {}
			local UICorner6 = create("UICorner", { CornerRadius = UDim.new(0, 6) })
			local new2 = ColorSequenceKeypoint.new
			local color2 = Color3.fromRGB

			local tbl20 = {
				Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 80, 255)), new2(1, color2(70, 35, 150)) }),
				Rotation = 90,
			}

			children6[1] = UICorner6

			do
				local values = table.pack(create("UIGradient", tbl20))
				table.move(values, 1, values.n, 2, children6)
			end

			tbl19.Children = children6
			local TextButton11 = create("TextButton", tbl19, Frame13)

			local tbl21 = {
				BackgroundColor3 = Color3.fromRGB(12, 9, 22),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 34),
				LayoutOrder = 12,
				ZIndex = 23,
			}

			local children7 = {}
			local UICorner7 = create("UICorner", { CornerRadius = UDim.new(0, 7) })

			local UIStroke3 = create("UIStroke", {
				Color = Color3.fromRGB(80, 180, 120),
				Transparency = 0.7,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local new3 = ColorSequenceKeypoint.new
			local color3 = Color3.fromRGB

			local tbl22 = {
				Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 38, 28)), new3(1, color3(12, 9, 22)) }),
				Rotation = 135,
			}

			children7[1] = UICorner7
			children7[2] = UIStroke3

			do
				local values = table.pack(create("UIGradient", tbl22))
				table.move(values, 1, values.n, 3, children7)
			end

			tbl21.Children = children7
			local Frame14 = create("Frame", tbl21, Frame6)

			local tbl23 = {
				BackgroundColor3 = Color3.fromRGB(8, 6, 14),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				ClearTextOnFocus = false,
				Position = UDim2.new(0, 8, 0.5, -10),
				Size = UDim2.new(1, -82, 0, 20),
				PlaceholderText = "Paste share code...",
				PlaceholderColor3 = Color3.fromRGB(80, 130, 100),
				Text = "",
				TextColor3 = Color3.fromRGB(160, 240, 200),
				Font = Enum.Font.Gotham,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 24,
			}

			local children8 = {}
			local UICorner8 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

			local UIStroke4 = create("UIStroke", {
				Color = Color3.fromRGB(80, 180, 120),
				Transparency = 0.72,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			})

			local tbl24 = { PaddingLeft = UDim.new(0, 6) }
			children8[1] = UICorner8
			children8[2] = UIStroke4

			do
				local values = table.pack(create("UIPadding", tbl24))
				table.move(values, 1, values.n, 3, children8)
			end

			tbl23.Children = children8
			local TextBox4 = create("TextBox", tbl23, Frame14)

			local tbl25 = {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(30, 120, 70),
				BackgroundTransparency = 0.3,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -6, 0.5, 0),
				Size = UDim2.new(0, 62, 0, 22),
				Text = "Import",
				TextColor3 = Color3.fromRGB(160, 250, 195),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				AutoButtonColor = false,
				ZIndex = 24,
			}

			local children9 = {}
			local UICorner9 = create("UICorner", { CornerRadius = UDim.new(0, 6) })
			local new4 = ColorSequenceKeypoint.new
			local color4 = Color3.fromRGB

			local tbl26 = {
				Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 200, 120)), new4(1, color4(20, 100, 60)) }),
				Rotation = 90,
			}

			children9[1] = UICorner9

			do
				local values = table.pack(create("UIGradient", tbl26))
				table.move(values, 1, values.n, 2, children9)
			end

			tbl25.Children = children9
			local TextButton12 = create("TextButton", tbl25, Frame14)

			tbl5.ShowSettingsPage = function()
				Frame7.Visible = false
				Frame6.Visible = true
				v10.CanvasPosition = Vector2.new(0, 0)
			end

			tbl5.ShowSlotPage = function(arg3)
				Frame6.Visible = false
				Frame7.Visible = true
				v10.CanvasPosition = Vector2.new(0, 0)
				local v14 = save:Get("_saveSlots", {})[arg3]
				local backLabel = TextButton3:FindFirstChild("BackLabel")

				if backLabel and v14 then
					backLabel.Text = v14.name or "Slot " .. arg3
				end
			end

			tbl5.EncodeShareCode = function(arg3)
				local ok, result = pcall(function()
					return JsonEncode(arg3)
				end)

				if ok and result then
					return "QH-SAVE:" .. result
				end
				return nil
			end

			tbl5.DecodeShareCode = function(arg3)
				if not arg3 then
					return nil
				end
				local str4 = arg3:gsub("^%s+", ""):gsub("%s+$", "")

				if str4:match("^QH%-SAVE:") then
					str4 = str4:sub(9)
				end

				local ok, result = pcall(function()
					return JsonDecode(str4)
				end)

				if ok and type(result) == "table" then
					return result
				end
				return nil
			end

			tbl5.UpdatePreview = function(arg3, arg4)
				for _, child in ipairs(ScrollingFrame:GetChildren()) do
					if child:IsA("TextLabel") or child:IsA("Frame") then
						child:Destroy()
					end
				end

				if not arg3 or not arg3.data then
					create("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 16),
						Font = Enum.Font.Gotham,
						Text = "(empty slot)",
						TextColor3 = Color3.fromRGB(110, 85, 140),
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 24,
					}, ScrollingFrame)

					return
				end

				arg4 = arg4 and string.lower(arg4) or ""
				local n3 = 0

				for k, v14 in pairs(arg3.data) do
					if arg4 == "" or string.find(string.lower(tostring(k)), arg4, 1, true) or string.find(string.lower(tostring(v14)), arg4, 1, true) then
						n3 += 1

						if n3 > 40 then
							create("TextLabel", {
								BackgroundTransparency = 1,
								LayoutOrder = n3,
								Size = UDim2.new(1, 0, 0, 14),
								Font = Enum.Font.Gotham,
								Text = "… + more items",
								TextColor3 = Color3.fromRGB(130, 95, 170),
								TextSize = 9,
								ZIndex = 24,
							}, ScrollingFrame)

							break
						else
							local str4 = tostring(v14)

							if type(v14) == "table" then
								local ok
								ok, str4 = pcall(JsonEncode, v14)
								str4 = ok and str4 or "[table]"
							end

							if #str4 > 32 then
								str4 = str4:sub(1, 30) .. "…"
							end

							if type(v14) == "boolean" then
								v14 = v14 and "#34D399" or "#F87171"
							elseif type(v14) == "number" then
								v14 = "#60A5FA"
							else
								local flag7 = type(v14) == "table"
								v14 = "#88bb99"

								if flag7 then
									v14 = "#FBBF24"
								end
							end

							create("TextLabel", {
								BackgroundTransparency = 1,
								LayoutOrder = n3,
								Size = UDim2.new(1, 0, 0, 14),
								Font = Enum.Font.Gotham,
								RichText = true,
								Text = string.format("<font color=\"#C084FC\">%s</font> <font color=\"#6B7280\">=</font> <font color=\"%s\">%s</font>", tostring(k), v14, str4),
								TextSize = 10,
								TextXAlignment = Enum.TextXAlignment.Left,
								ZIndex = 24,
							}, ScrollingFrame)
						end
					end
				end

				if n3 == 0 then
					create("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 16),
						Font = Enum.Font.Gotham,
						Text = arg4 ~= "" and "(no matching keys)" or "(no data keys saved)",
						TextColor3 = Color3.fromRGB(110, 85, 140),
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 24,
					}, ScrollingFrame)
				end
			end

			TextBox2:GetPropertyChangedSignal("Text"):Connect(function()
				str3 = TextBox2.Text

				if v13 then
					local v14 = save:Get("_saveSlots", {})[v13]

					if v14 then
						tbl5.UpdatePreview(v14, str3)
					end
				end
			end)

			tbl5.OpenSlotPanel = function(arg3)
				v13 = arg3
				flag6 = true
				local v14 = save:Get("_saveSlots", {})[arg3]
				if not v14 then
					return
				end
				TextBox.Text = v14.name or "Slot " .. arg3
				TextButton4.Visible = false
				TextBox2.Text = ""
				str3 = ""
				local name = v14.name
				local flag7 = save:Get("_autoLoadTarget", nil) == name
				Frame9.BackgroundColor3 = flag7 and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26)
				Frame10.Position = flag7 and UDim2.new(0, 21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)
				local uiGradient = Frame10:FindFirstChildOfClass("UIGradient")

				if uiGradient then
					local colorSequence = ColorSequence.new
					local tbl27 = {}
					local v15 = ColorSequenceKeypoint.new(0, flag7 and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(110, 90, 140))
					local new5 = ColorSequenceKeypoint.new
					flag7 = flag7 and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(55, 45, 85)
					local v16 = table.pack(new5(1, flag7))
					tbl27[1] = v15

					do
						local values = table.pack(table.unpack(v16, 1, v16.n))
						table.move(values, 1, values.n, 2, tbl27)
					end

					uiGradient.Color = colorSequence(tbl27)
				end

				tbl5.UpdatePreview(v14)
				tbl5.ShowSlotPage(arg3)
			end

			tbl5.CloseSlotPanel = function()
				flag6 = false
				v13 = nil
				tbl5.ShowSettingsPage()
				RefreshSlots()
			end

			TextButton3.MouseButton1Click:Connect(function()
				CircleClick(TextButton3, mouse.X, mouse.Y)
				tbl5.CloseSlotPanel()
			end)

			TextButton11.MouseButton1Click:Connect(function()
				CircleClick(TextButton11, mouse.X, mouse.Y)
				local saveSlots2 = save:Get("_saveSlots", {})
				if #saveSlots2 >= 10 then
					tbl2.Notification:Notify({ Title = "Save Manager", Description = "Maximum 10 profiles reached." }, { Time = 2 })
					return
				end
				local text = TextBox3.Text ~= "" and TextBox3.Text or "Profile " .. #saveSlots2 + 1

				table.insert(saveSlots2, {
					name = text,
					data = save:GetSnapshot(),
					created = os.date("%Y-%m-%d %H:%M"),
					updated = os.date("%Y-%m-%d %H:%M"),
				})

				save:Save("_saveSlots", saveSlots2)
				TextBox3.Text = ""
				tbl2.Notification:Notify({ Title = "Save Manager", Description = "Created profile \"" .. text .. "\"." }, { Time = 2 })
				RefreshSlots()
			end)

			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				if not v13 then
					return
				end
				local v14 = save:Get("_saveSlots", {})[v13]

				if v14 then
					TextButton4.Visible = TextBox.Text ~= v14.name and TextBox.Text ~= ""
				end
			end)

			TextButton4.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				local saveSlots2 = save:Get("_saveSlots", {})
				local v14 = saveSlots2[v13]
				if not v14 then
					return
				end
				local name = v14.name
				local text = TextBox.Text ~= "" and TextBox.Text or name
				saveSlots2[v13].name = text

				if save:Get("_autoLoadTarget", nil) == name then
					save:Save("_autoLoadTarget", text)
				end

				if save.ActiveProfile == name then
					save.ActiveProfile = text

					if TextLabel4 then
						TextLabel4.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", text)
					end
				end

				save:Save("_saveSlots", saveSlots2)
				TextButton4.Visible = false
				local backLabel = TextButton3:FindFirstChild("BackLabel")

				if backLabel then
					backLabel.Text = text
				end

				tbl2.Notification:Notify({ Title = "Save Manager", Description = "Renamed to \"" .. text .. "\"." }, { Time = 2 })
				RefreshSlots()
			end)

			TextButton5.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				local v14 = save:Get("_saveSlots", {})[v13]
				if not v14 then
					return
				end
				local name = v14.name
				local flag7 = not (save:Get("_autoLoadTarget", nil) == name)
				save:Save("_autoLoadTarget", flag7 and v14.name or nil)
				tbl:Tween(Frame10, { Position = flag7 and UDim2.new(0, 21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0) }, 0.22, Enum.EasingStyle.Back)
				tbl:Tween(Frame9, { BackgroundColor3 = flag7 and Color3.fromRGB(90, 45, 170) or Color3.fromRGB(14, 9, 26) }, 0.2, Enum.EasingStyle.Quint)
				local uiGradient = Frame10:FindFirstChildOfClass("UIGradient")

				if uiGradient then
					local colorSequence = ColorSequence.new
					local tbl27 = {}
					local v15 = ColorSequenceKeypoint.new(0, flag7 and Color3.fromRGB(235, 205, 255) or Color3.fromRGB(110, 90, 140))
					local new5 = ColorSequenceKeypoint.new
					local color5 = flag7 and Color3.fromRGB(170, 105, 255) or Color3.fromRGB(55, 45, 85)
					local v16 = table.pack(new5(1, color5))
					tbl27[1] = v15

					do
						local values = table.pack(table.unpack(v16, 1, v16.n))
						table.move(values, 1, values.n, 2, tbl27)
					end

					uiGradient.Color = colorSequence(tbl27)
				end

				tbl2.Notification:Notify({
					Title = "Auto Load",
					Description = flag7 and "\"" .. v14.name .. "\" set as default auto-load profile." or "Auto Load disabled.",
				}, { Time = 2 })

				RefreshSlots()
			end)

			TextButton6.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				CircleClick(TextButton6, mouse.X, mouse.Y)
				local v14 = save:Get("_saveSlots", {})[v13]

				if v14 and v14.data then
					save:ApplySnapshot(v14.data, true)
					save.ActiveProfile = v14.name or "Slot " .. v13

					if TextLabel4 then
						TextLabel4.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", save.ActiveProfile)
					end

					tbl2.Notification:Notify({
						Title = "Save Manager",
						Description = "Applied profile \"" .. (v14.name or "Slot") .. "\" to all controls.",
					}, { Time = 3 })

					RefreshSlots()
				end
			end)

			TextButton7.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				CircleClick(TextButton7, mouse.X, mouse.Y)
				local saveSlots2 = save:Get("_saveSlots", {})
				local v14 = saveSlots2[v13]

				if v14 then
					v14.data = save:GetSnapshot()
					v14.updated = os.date("%Y-%m-%d %H:%M")
					save:Save("_saveSlots", saveSlots2)
					tbl5.UpdatePreview(v14, str3)

					tbl2.Notification:Notify({
						Title = "Save Manager",
						Description = "Overwrote \"" .. (v14.name or "profile") .. "\" with current state.",
					}, { Time = 2 })

					RefreshSlots()
				end
			end)

			TextButton8.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				CircleClick(TextButton8, mouse.X, mouse.Y)
				local saveSlots2 = save:Get("_saveSlots", {})
				if #saveSlots2 >= 10 then
					tbl2.Notification:Notify({ Title = "Save Manager", Description = "Maximum 10 profiles reached." }, { Time = 2 })
					return
				end
				local v14 = saveSlots2[v13]

				if v14 then
					local tbl27 = {}
					local v15 = pairs
					local data = v14.data or {}

					for k, v16 in v15(data) do
						tbl27[k] = v16
					end

					table.insert(saveSlots2, {
						name = (v14.name or "Profile") .. " (Copy)",
						data = tbl27,
						created = os.date("%Y-%m-%d %H:%M"),
						updated = os.date("%Y-%m-%d %H:%M"),
					})

					save:Save("_saveSlots", saveSlots2)
					tbl2.Notification:Notify({ Title = "Save Manager", Description = "Cloned \"" .. (v14.name or "profile") .. "\"." }, { Time = 2 })
					RefreshSlots()
				end
			end)

			TextButton10.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				CircleClick(TextButton10, mouse.X, mouse.Y)
				local saveSlots2 = save:Get("_saveSlots", {})
				local name = saveSlots2[v13] and saveSlots2[v13].name
				table.remove(saveSlots2, v13)
				save:Save("_saveSlots", saveSlots2)

				if name and save:Get("_autoLoadTarget", nil) == name then
					save:Save("_autoLoadTarget", nil)
				end

				if name and save.ActiveProfile == name then
					save.ActiveProfile = "[Auto]"

					if TextLabel4 then
						TextLabel4.Text = "Active Profile: <font color=\"#C084FC\"><b>[Auto]</b></font>"
					end
				end

				tbl2.Notification:Notify({ Title = "Save Manager", Description = "Profile deleted." }, { Time = 2 })
				tbl5.CloseSlotPanel()
			end)

			TextButton9.MouseButton1Click:Connect(function()
				if not v13 then
					return
				end
				CircleClick(TextButton9, mouse.X, mouse.Y)
				local v14 = save:Get("_saveSlots", {})[v13]
				if not v14 then
					return
				end
				local v15 = tbl5.EncodeShareCode({ name = v14.name, data = v14.data })

				if v15 then
					local setclipboard_ = setclipboard or toclipboard or getgenv and getgenv().setclipboard

					if setclipboard_ then
						pcall(setclipboard_, v15)
					end

					tbl2.Notification:Notify({ Title = "Share Saved", Description = "Share code copied to clipboard!" }, { Time = 3 })
				else
					tbl2.Notification:Notify({ Title = "Share Saved", Description = "Failed to encode save." }, { Time = 2 })
				end
			end)

			TextButton12.MouseButton1Click:Connect(function()
				CircleClick(TextButton12, mouse.X, mouse.Y)
				local str4 = TextBox4.Text:gsub("`", "")
				if str4 == "" then
					return
				end
				local v14 = tbl5.DecodeShareCode(str4)
				if not v14 then
					tbl2.Notification:Notify({ Title = "Import", Description = "Invalid share code format." }, { Time = 2 })
					return
				end
				local saveSlots2 = save:Get("_saveSlots", {})
				if #saveSlots2 >= 10 then
					tbl2.Notification:Notify({ Title = "Import", Description = "Maximum 10 profiles reached." }, { Time = 2 })
					return
				end
				local str5 = (v14.name or "Imported") .. " (imported)"

				table.insert(saveSlots2, {
					name = str5,
					data = v14.data or {},
					created = os.date("%Y-%m-%d %H:%M"),
					updated = os.date("%Y-%m-%d %H:%M"),
				})

				save:Save("_saveSlots", saveSlots2)
				TextBox4.Text = ""
				tbl2.Notification:Notify({ Title = "Import", Description = "Imported profile \"" .. str5 .. "\"." }, { Time = 3 })
				RefreshSlots()
			end)
		end

		local v14 = fn2

		fn2 = function()
			if flag6 then
				flag6 = false
				v13 = nil
				tbl5.ShowSettingsPage()
			end

			v14()
		end

		local v15 = fn3

		fn3 = function()
			if flag6 then
				flag6 = false
				v13 = nil
				tbl5.ShowSettingsPage()
			end

			v15()
		end

		RefreshSlots = function()
			for _, v16 in ipairs(tbl8) do
				v16:Destroy()
			end

			tbl8 = {}
			saveSlots = save:Get("_saveSlots", {})
			local autoLoadTarget = save:Get("_autoLoadTarget", nil)

			if TextLabel5 then
				TextLabel5.Text = string.format("PROFILES & SLOTS (%d/10)", #saveSlots)
			end

			if #saveSlots == 0 then
				local TextLabel6 = create("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 24),
					Font = Enum.Font.Gotham,
					Text = "No saved profiles. Create or Quick Save above!",
					TextColor3 = Color3.fromRGB(130, 105, 160),
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 23,
				}, Frame11)

				table.insert(tbl8, TextLabel6)
			end

			for i, saveSlot in ipairs(saveSlots) do
				local flag7 = autoLoadTarget == saveSlot.name
				local flag8 = save.ActiveProfile == saveSlot.name
				local flag9 = v13 == i and flag6

				local tbl9 = {
					BackgroundColor3 = flag9 and Color3.fromRGB(24, 16, 42) or Color3.fromRGB(15, 10, 26),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 42),
					LayoutOrder = i,
					ZIndex = 23,
				}

				local children = {}
				local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 7) })

				local tbl10 = {
					Color = flag9 and Color3.fromRGB(190, 130, 255) or flag7 and Color3.fromRGB(160, 105, 240) or Color3.fromRGB(90, 60, 150),
					Transparency = flag9 and 0.2 or flag7 and 0.4 or 0.75,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}

				local v16 = table.pack(create("UIStroke", tbl10))
				children[1] = UICorner

				do
					local values = table.pack(table.unpack(v16, 1, v16.n))
					table.move(values, 1, values.n, 2, children)
				end

				tbl9.Children = children
				local Frame12 = create("Frame", tbl9, Frame11)

				create("Frame", {
					BackgroundColor3 = flag7 and Color3.fromRGB(190, 140, 255) or Color3.fromRGB(120, 70, 200),
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 6),
					Size = UDim2.new(0, 3, 1, -12),
					ZIndex = 24,
					Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
				}, Frame12)

				local tbl11 = {
					BackgroundColor3 = Color3.fromRGB(38, 22, 70),
					BackgroundTransparency = 0.2,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 10, 0.5, -10),
					Size = UDim2.new(0, 20, 0, 20),
					ZIndex = 24,
				}

				local children2 = {}
				local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

				local tbl12 = {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Font = Enum.Font.GothamBold,
					Text = tostring(i),
					TextColor3 = Color3.fromRGB(200, 160, 255),
					TextSize = 10,
					TextXAlignment = Enum.TextXAlignment.Center,
					ZIndex = 25,
				}

				children2[1] = UICorner2

				do
					local values = table.pack(create("TextLabel", tbl12))
					table.move(values, 1, values.n, 2, children2)
				end

				tbl11.Children = children2
				create("Frame", tbl11, Frame12)
				local n3 = 0

				if saveSlot.data then
					for k in pairs(saveSlot.data) do
						n3 += 1
					end
				end

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 36, 0, 6),
					Size = UDim2.new(1, -105, 0, 15),
					Font = Enum.Font.GothamBold,
					Text = saveSlot.name or "Profile " .. i,
					TextColor3 = flag9 and Color3.fromRGB(240, 220, 255) or flag8 and Color3.fromRGB(225, 195, 255) or Color3.fromRGB(190, 170, 230),
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
					ZIndex = 24,
				}, Frame12)

				local str4 = string.format("%d keys", n3)

				if flag7 then
					str4 ..= "  •  auto load"
				elseif flag8 then
					str4 ..= "  •  active"
				end

				create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 36, 0, 22),
					Size = UDim2.new(1, -105, 0, 13),
					Font = Enum.Font.Gotham,
					Text = str4,
					TextColor3 = flag7 and Color3.fromRGB(180, 130, 255) or flag8 and Color3.fromRGB(140, 220, 170) or Color3.fromRGB(135, 115, 165),
					TextSize = 9,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 24,
				}, Frame12)

				local tbl13 = {
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = Color3.fromRGB(70, 35, 140),
					BackgroundTransparency = 0.35,
					BorderSizePixel = 0,
					Position = UDim2.new(1, -8, 0.5, 0),
					Size = UDim2.new(0, 48, 0, 22),
					Text = "Load",
					TextColor3 = Color3.fromRGB(215, 185, 255),
					Font = Enum.Font.GothamBold,
					TextSize = 10,
					AutoButtonColor = false,
					ZIndex = 25,
				}

				local children3 = {}
				local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

				local tbl14 = {
					Color = Color3.fromRGB(150, 100, 230),
					Transparency = 0.6,
					Thickness = 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}

				children3[1] = UICorner3

				do
					local values = table.pack(create("UIStroke", tbl14))
					table.move(values, 1, values.n, 2, children3)
				end

				tbl13.Children = children3
				local TextButton10 = create("TextButton", tbl13, Frame12)

				TextButton10.MouseEnter:Connect(function()
					tbl:Tween(TextButton10, { BackgroundTransparency = 0.15 }, 0.12)
				end)

				TextButton10.MouseLeave:Connect(function()
					tbl:Tween(TextButton10, { BackgroundTransparency = 0.35 }, 0.18)
				end)

				local v17 = i
				local v18 = saveSlot

				TextButton10.MouseButton1Click:Connect(function()
					CircleClick(TextButton10, mouse.X, mouse.Y)

					if v18 and v18.data then
						save:ApplySnapshot(v18.data, true)
						save.ActiveProfile = v18.name or "Slot " .. v17

						if TextLabel4 then
							TextLabel4.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", save.ActiveProfile)
						end

						tbl2.Notification:Notify({ Title = "Save Manager", Description = "Loaded profile \"" .. (v18.name or "Slot") .. "\"." }, { Time = 2 })
						RefreshSlots()
					end
				end)

				local TextButton11 = create("TextButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -62, 1, 0),
					Position = UDim2.new(0, 0, 0, 0),
					Text = "",
					ZIndex = 24,
				}, Frame12)

				TextButton11.MouseEnter:Connect(function()
					if not flag9 then
						tbl:Tween(Frame12, { BackgroundColor3 = Color3.fromRGB(22, 14, 38) }, 0.12)
					end
				end)

				TextButton11.MouseLeave:Connect(function()
					tbl:Tween(Frame12, { BackgroundColor3 = flag9 and Color3.fromRGB(24, 16, 42) or Color3.fromRGB(15, 10, 26) }, 0.18)
				end)

				TextButton11.MouseButton1Click:Connect(function()
					CircleClick(TextButton11, mouse.X, mouse.Y)

					if flag6 and v13 == v17 then
						tbl5.CloseSlotPanel()
					else
						tbl5.OpenSlotPanel(v17)
						RefreshSlots()
					end
				end)

				table.insert(tbl8, Frame12)
			end
		end

		RefreshSlots()

		task.defer(function()
			local autoLoadTarget = save:Get("_autoLoadTarget", nil)

			if autoLoadTarget then
				local saveSlots2 = save:Get("_saveSlots", {})

				for _, v16 in ipairs(saveSlots2) do
					if v16.name == autoLoadTarget and v16.data then
						save:ApplySnapshot(v16.data, true)
						save.ActiveProfile = v16.name

						if TextLabel4 then
							TextLabel4.Text = string.format("Active Profile: <font color=\"#C084FC\"><b>%s</b></font>", v16.name)
						end

						break
					end
				end
			end
		end)

		create("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 16),
			Font = Enum.Font.GothamBold,
			Text = "Theme Manager",
			TextColor3 = Color3.fromRGB(150, 105, 220),
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Center,
			ZIndex = 23,
		}, v7)

		do
			local Frame12 = create("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 23,
				Children = {
					create("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 5),
					}),
				},
			}, v7)

			local tbl9 = {}
			local activeTheme = save:Get("_activeTheme", theme2)

			if quantumThemeManager.Themes[activeTheme] then
				quantumThemeManager.Current = quantumThemeManager.Themes[activeTheme]
				Frame3.BackgroundColor3 = quantumThemeManager.Current.Body
			end

			tbl5.BuildThemeCards = function()
				for _, v16 in ipairs(tbl9) do
					v16:Destroy()
				end

				tbl9 = {}

				for _, v16 in ipairs({ "Purple", "Crimson", "Ocean", "Emerald", "Sunset" }) do
					local v17 = quantumThemeManager.Themes[v16]
					local flag7 = activeTheme == v16
					local accent = v17.Accent
					local accentDark = v17.AccentDark
					local previewColors = v17.PreviewColors

					local TextButton10 = create("TextButton", {
						BackgroundColor3 = flag7 and Color3.fromRGB(20, 13, 36) or Color3.fromRGB(14, 10, 22),
						BackgroundTransparency = 0,
						BorderSizePixel = 0,
						Size = UDim2.new(1, 0, 0, 44),
						Text = "",
						AutoButtonColor = false,
						ZIndex = 23,
						Children = { create("UICorner", { CornerRadius = UDim.new(0, 9) }) },
					}, Frame12)

					local UIStroke = create("UIStroke", {
						Color = flag7 and accent or Color3.fromRGB(90, 60, 140),
						Transparency = flag7 and 0.3 or 0.78,
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					}, TextButton10)

					local tbl10 = {
						BackgroundColor3 = accent,
						BackgroundTransparency = flag7 and 0 or 0.5,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, 0, 7),
						Size = UDim2.new(0, 3, 1, -14),
						ZIndex = 24,
					}

					local children = {}
					local UICorner = create("UICorner", { CornerRadius = UDim.new(1, 0) })

					local tbl11 = {
						Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, v17.AccentLight), ColorSequenceKeypoint.new(1, accentDark) }),
						Rotation = 90,
					}

					children[1] = UICorner

					do
						local values = table.pack(create("UIGradient", tbl11))
						table.move(values, 1, values.n, 2, children)
					end

					tbl10.Children = children
					create("Frame", tbl10, TextButton10)
					local n3 = 12

					for _, previewColor in ipairs(previewColors) do
						local tbl12 = {
							BackgroundColor3 = previewColor,
							BorderSizePixel = 0,
							Position = UDim2.new(0, n3, 0.5, -10),
							Size = UDim2.new(0, 20, 0, 20),
							ZIndex = 24,
						}

						local children2 = {}
						local UICorner2 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

						local tbl13 = {
							Color = Color3.fromRGB(255, 255, 255),
							Transparency = 0.85,
							Thickness = 1,
							ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
						}

						children2[1] = UICorner2

						do
							local values = table.pack(create("UIStroke", tbl13))
							table.move(values, 1, values.n, 2, children2)
						end

						tbl12.Children = children2
						create("Frame", tbl12, TextButton10)
						n3 += 16
					end

					create("TextLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 72, 0, 0),
						Size = UDim2.new(1, -130, 1, 0),
						Font = Enum.Font.GothamBold,
						Text = v17.DisplayName,
						TextColor3 = flag7 and v17.AccentLight or Color3.fromRGB(185, 165, 215),
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 24,
					}, TextButton10)

					local tbl12 = {
						AnchorPoint = Vector2.new(1, 0.5),
						BackgroundColor3 = flag7 and Color3.new(accentDark.R * 0.5, accentDark.G * 0.5, accentDark.B * 0.5) or Color3.fromRGB(18, 12, 28),
						BackgroundTransparency = 0,
						BorderSizePixel = 0,
						Position = UDim2.new(1, -8, 0.5, 0),
						Size = UDim2.new(0, 62, 0, 22),
						ZIndex = 24,
					}

					local children2 = {}
					local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

					local UIStroke2 = create("UIStroke", {
						Color = flag7 and accent or Color3.fromRGB(90, 65, 130),
						Transparency = flag7 and 0.35 or 0.72,
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					})

					local tbl13 = {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						Font = Enum.Font.GothamBold,
						Text = flag7 and "Active" or "Apply",
						TextColor3 = flag7 and v17.AccentLight or Color3.fromRGB(160, 130, 200),
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment.Center,
						ZIndex = 25,
					}

					local v18 = table.pack(create("TextLabel", tbl13))
					children2[1] = UICorner2
					children2[2] = UIStroke2

					do
						local values = table.pack(table.unpack(v18, 1, v18.n))
						table.move(values, 1, values.n, 3, children2)
					end

					tbl12.Children = children2
					create("Frame", tbl12, TextButton10)
					table.insert(tbl9, TextButton10)
					local v19 = v16

					TextButton10.MouseEnter:Connect(function()
						if activeTheme ~= v19 then
							tbl:Tween(TextButton10, { BackgroundColor3 = Color3.fromRGB(18, 13, 30) }, 0.15, Enum.EasingStyle.Quint)
							tbl:Tween(UIStroke, { Transparency = 0.55 }, 0.15)
						end
					end)

					TextButton10.MouseLeave:Connect(function()
						if activeTheme ~= v19 then
							tbl:Tween(TextButton10, { BackgroundColor3 = Color3.fromRGB(14, 10, 22) }, 0.2, Enum.EasingStyle.Quint)
							tbl:Tween(UIStroke, { Transparency = 0.78 }, 0.2)
						end
					end)

					TextButton10.MouseButton1Click:Connect(function()
						if activeTheme == v19 then
							return
						end
						CircleClick(TextButton10, mouse.X, mouse.Y)
						activeTheme = v19
						ApplyTheme(v19)
						tbl5.BuildThemeCards()
						tbl2.Notification:Notify({ Title = "Theme Manager", Description = v19 .. " theme applied." }, { Time = 2 })
					end)
				end
			end
		end

		tbl5.BuildThemeCards()

		create("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 16),
			Font = Enum.Font.GothamBold,
			Text = "Background Media",
			TextColor3 = Color3.fromRGB(150, 105, 220),
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Center,
			ZIndex = 23,
		}, v7)

		create("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 28),
			Font = Enum.Font.Gotham,
			Text = "Drop .png/.jpg/.webm/.mp4 into Quantum Onyx Hub folder",
			TextColor3 = Color3.fromRGB(130, 110, 170),
			TextSize = 9,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			ZIndex = 23,
		}, v7)

		do
			local tbl9 = {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 72),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollBarImageTransparency = 1,
				ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
				ScrollingEnabled = true,
				ZIndex = 23,
			}

			local children = {}
			local UIListLayout = create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 4) })
			local tbl10 = { PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4) }
			children[1] = UIListLayout

			do
				local values = table.pack(create("UIPadding", tbl10))
				table.move(values, 1, values.n, 2, children)
			end

			tbl9.Children = children
			local ScrollingFrame2 = create("ScrollingFrame", tbl9, v7)

			tbl5.BuildBgImageCards = function()
				for _, child in ipairs(ScrollingFrame2:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end

				local v16 = listImages(save.FolderName)
				local v17 = listVideos(save.FolderName)
				local tbl11 = {}

				for _, v18 in ipairs(v16) do
					table.insert(tbl11, v18)
				end

				for _, v18 in ipairs(v17) do
					table.insert(tbl11, v18)
				end

				create("TextButton", {
					BackgroundColor3 = save:Get("_opt_BgImage", "") == "" and Color3.fromRGB(22, 14, 38) or Color3.fromRGB(14, 10, 22),
					BorderSizePixel = 0,
					Size = UDim2.new(1, -8, 0, 28),
					Font = Enum.Font.GothamBold,
					Text = "None (theme default)",
					TextColor3 = Color3.fromRGB(185, 165, 215),
					TextSize = 10,
					ZIndex = 24,
					LayoutOrder = 0,
					Children = { create("UICorner", { CornerRadius = UDim.new(0, 7) }) },
				}, ScrollingFrame2).MouseButton1Click:Connect(function()
					ApplyBackgroundImage("")
					save:Save("_opt_BgImage", "")
					tbl5.BuildBgImageCards()
				end)

				local v18

				for i, v19 in ipairs(tbl11) do
					local match = v19:match("([^/\\]+)$") or v19
					local v20 = isVideo(v19)
					local flag7 = v18 == v19

					local tbl12 = {
						BackgroundColor3 = flag7 and Color3.fromRGB(22, 14, 38) or Color3.fromRGB(14, 10, 22),
						BorderSizePixel = 0,
						Size = UDim2.new(1, -8, 0, 28),
						Font = Enum.Font.GothamBold,
						Text = (flag7 and "✓ " or "") .. (v20 and "[VID] " or "") .. match,
						TextColor3 = flag7 and Color3.fromRGB(210, 180, 255) or Color3.fromRGB(160, 140, 200),
						TextSize = 10,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 24,
						LayoutOrder = i,
					}

					local children2 = {}
					local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 7) })
					local tbl13 = { PaddingLeft = UDim.new(0, 10) }
					children2[1] = UICorner

					do
						local values = table.pack(create("UIPadding", tbl13))
						table.move(values, 1, values.n, 2, children2)
					end

					tbl12.Children = children2
					local v21 = v19

					create("TextButton", tbl12, ScrollingFrame2).MouseButton1Click:Connect(function()
						ApplyBackgroundImage(v21)
						tbl5.BuildBgImageCards()
						tbl2.Notification:Notify({ Title = "Background", Description = "Applied " .. match }, { Time = 2 })
					end)
				end

				local uiListLayout = ScrollingFrame2:FindFirstChildOfClass("UIListLayout")

				if uiListLayout then
					FitScrollCanvas(ScrollingFrame2, uiListLayout, "Y", 4)
				end
			end
		end

		tbl5.BuildBgImageCards()

		tbl5.MakeMiniSlider(v7, "BG Image Fade", "_opt_BgImageTransparency", 0.5, 1, save:Get("_opt_BgImageTransparency", 0.88), 0.02, function(imageTransparency, arg3)
			if ImageLabel then
				ImageLabel.ImageTransparency = imageTransparency
			end

			if arg3 then
				save:Save("_opt_BgImageTransparency", imageTransparency)
			end
		end, nil, true)

		do
			local tbl9 = {
				{
					Name = "Default",
					Regular = Enum.Font.Gotham,
					Bold = Enum.Font.GothamBold,
					Display = Enum.Font.FredokaOne,
				},
				{
					Name = "Gotham",
					Regular = Enum.Font.Gotham,
					Bold = Enum.Font.GothamBold,
					Display = Enum.Font.FredokaOne,
				},
				{
					Name = "Source Sans",
					Regular = Enum.Font.SourceSans,
					Bold = Enum.Font.SourceSansBold,
					Display = Enum.Font.SourceSansBold,
				},
				{
					Name = "Nunito",
					Regular = Enum.Font.Nunito,
					Bold = Enum.Font.Nunito,
					Display = Enum.Font.Nunito,
				},
				{
					Name = "Oswald",
					Regular = Enum.Font.Oswald,
					Bold = Enum.Font.Oswald,
					Display = Enum.Font.Oswald,
				},
				{
					Name = "Ubuntu",
					Regular = Enum.Font.Ubuntu,
					Bold = Enum.Font.Ubuntu,
					Display = Enum.Font.Ubuntu,
				},
				{
					Name = "Roboto",
					Regular = Enum.Font.Roboto,
					Bold = Enum.Font.Roboto,
					Display = Enum.Font.RobotoCondensed,
				},
				{
					Name = "Arcade",
					Regular = Enum.Font.Arcade,
					Bold = Enum.Font.Arcade,
					Display = Enum.Font.Arcade,
				},
				{ Name = "Code", Regular = Enum.Font.Code, Bold = Enum.Font.Code, Display = Enum.Font.Code },
			}

			local tbl10 = {
				[Enum.Font.Gotham] = "Regular",
				[Enum.Font.SourceSans] = "Regular",
				[Enum.Font.Nunito] = "Regular",
				[Enum.Font.Oswald] = "Regular",
				[Enum.Font.Ubuntu] = "Regular",
				[Enum.Font.Roboto] = "Regular",
				[Enum.Font.Arcade] = "Regular",
				[Enum.Font.Code] = "Regular",
				[Enum.Font.GothamBold] = "Bold",
				[Enum.Font.GothamSemibold] = "Bold",
				[Enum.Font.SourceSansBold] = "Bold",
				[Enum.Font.FredokaOne] = "Display",
				[Enum.Font.RobotoCondensed] = "Display",
			}

			tbl5.ResolveFontPreset = function(arg3)
				for _, v16 in ipairs(tbl9) do
					if v16.Name == arg3 then
						return v16
					end
				end

				return tbl9[1]
			end

			tbl5.ApplyUIFont = function(arg3)
				local v16 = tbl5.ResolveFontPreset(arg3)
				save:Save("_opt_UIFont", v16.Name)
				local tbl11 = { Regular = v16.Regular, Bold = v16.Bold, Display = v16.Display }

				for _, descendant in ipairs(Frame3:GetDescendants()) do
					if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
						local str4 = tbl10[descendant.Font] or "Regular"

						pcall(function()
							descendant.Font = tbl11[str4] or v16.Regular
						end)
					end
				end
			end

			create("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 16),
				Font = Enum.Font.GothamBold,
				Text = "UI Font",
				TextColor3 = Color3.fromRGB(150, 105, 220),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 23,
			}, v7)

			local tbl11 = {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 90),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollBarImageTransparency = 1,
				ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
				ScrollingEnabled = true,
				ZIndex = 23,
			}

			local children = {}
			local UIListLayout = create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 4) })
			local tbl12 = { PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4) }
			children[1] = UIListLayout

			do
				local values = table.pack(create("UIPadding", tbl12))
				table.move(values, 1, values.n, 2, children)
			end

			tbl11.Children = children
			local ScrollingFrame2 = create("ScrollingFrame", tbl11, v7)

			tbl5.BuildFontCards = function()
				for _, child in ipairs(ScrollingFrame2:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end

				local optUIFont = save:Get("_opt_UIFont", "Gotham")

				for i, v16 in ipairs(tbl9) do
					local flag7 = optUIFont == v16.Name

					local tbl13 = {
						BackgroundColor3 = flag7 and Color3.fromRGB(22, 14, 38) or Color3.fromRGB(14, 10, 22),
						BorderSizePixel = 0,
						Size = UDim2.new(1, -8, 0, 26),
						Font = v16.Bold,
						Text = (flag7 and "✓ " or "") .. v16.Name,
						TextColor3 = flag7 and Color3.fromRGB(210, 180, 255) or Color3.fromRGB(160, 140, 200),
						TextSize = 11,
						ZIndex = 24,
						LayoutOrder = i,
						Children = { create("UICorner", { CornerRadius = UDim.new(0, 7) }) },
					}

					local name = v16.Name

					create("TextButton", tbl13, ScrollingFrame2).MouseButton1Click:Connect(function()
						tbl5.ApplyUIFont(name)
						tbl5.BuildFontCards()
						tbl2.Notification:Notify({ Title = "Font", Description = "Applied " .. name }, { Time = 2 })
					end)
				end

				local uiListLayout = ScrollingFrame2:FindFirstChildOfClass("UIListLayout")

				if uiListLayout then
					FitScrollCanvas(ScrollingFrame2, uiListLayout, "Y", 4)
				end
			end
		end

		tbl5.BuildFontCards()

		task.defer(function()
			local optUIFont = save:Get("_opt_UIFont", "Default")

			if optUIFont and optUIFont ~= "Default" and optUIFont ~= "Gotham" then
				tbl5.ApplyUIFont(optUIFont)
			end
		end)

		tbl5.MakeMiniSlider(v7, "UI Transparency", "_opt_UITransparency", 0, 0.55, save:Get("_opt_UITransparency", 0.05), 0.01, function(backgroundTransparency, arg3)
			if Frame3 then
				Frame3.BackgroundTransparency = backgroundTransparency
			end

			if arg3 then
				save:Save("_opt_UITransparency", backgroundTransparency)
			end
		end, nil, true)

		TextButton2.MouseButton1Click:Connect(function()
			CircleClick(TextButton2, mouse.X, mouse.Y)

			if v6 and v6() then
				v5()
			end

			if v12 and v12() then
				fn3()
			end

			if tbl5.BuildBgImageCards then
				tbl5.BuildBgImageCards()
			end

			v8()
		end)

		local Frame12

		Frame12 = create("Frame", {
			BackgroundColor3 = Color3.fromRGB(60, 60, 60),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.0160791595, 0, 0.219451368, 0),
			Size = UDim2.new(0, 60, 0, 60),
			Visible = flag4,
			Active = true,
			Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
		}, ScreenGui)

		do
			local ImageButton3 = create("ImageButton", {
				Name = "ToggleLogo",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Image = "rbxassetid://87383580130479",
				Active = true,
				Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
			}, Frame12)

			local tbl9 = { on = false, moved = false, start = nil, origin = nil, input = nil }

			tbl5.PinToggleToOffset = function()
				util.PinAbsToOffset(Frame12, ScreenGui, UIScale.Scale)
			end

			local n3 = flag3 and 12 or 5

			local function fn4(input)
				if tbl9.on then
					return
				end

				if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
					return
				end
				tbl9.on = true
				tbl9.input = input
				tbl9.moved = false
				tbl9.start = input.Position
				tbl5.PinToggleToOffset()
				tbl9.origin = Frame12.Position
			end

			Frame12.InputBegan:Connect(fn4)
			ImageButton3.InputBegan:Connect(fn4)

			UserInputService.InputChanged:Connect(function(input)
				if not tbl9.on or not tbl9.start or not tbl9.origin or not tbl9.input then
					return
				end

				if input == tbl9.input or tbl9.input.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputType == Enum.UserInputType.MouseMovement then
					local n4 = (input.Position - tbl9.start) / (UIScale and UIScale.Scale > 0 and UIScale.Scale or 1)

					if n3 < n4.Magnitude then
						tbl9.moved = true
						Frame12.Position = UDim2.fromOffset(tbl9.origin.X.Offset + n4.X, tbl9.origin.Y.Offset + n4.Y)
					end
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if not tbl9.on then
					return
				end

				if input == tbl9.input then
					tbl9.on = false
					tbl9.input = nil
					tbl9.start = nil
					tbl9.origin = nil

					task.delay(0.08, function()
						tbl9.moved = false
					end)
				end
			end)

			local flag7 = false

			local function fn5()
				if not flag7 then
					return
				end
				local position = Frame3.Position
				Frame3.Position = UDim2.new(position.X.Scale, position.X.Offset + 150, position.Y.Scale, position.Y.Offset + 149)
				Frame3.Size = UDim2.new(0, 510, 0, 330)
				TextLabel.Size = UDim2.new(1, -255, 0, 16)
				TextLabel2.Size = UDim2.new(1, -255, 0, 12)
				ImageButton.Image = "rbxassetid://92966930061759"
				ImageButton.Position = UDim2.new(1, -34, 0, 16)
				ImageButton2.Position = UDim2.new(1, -8, 0, 16)
				Frame5.BackgroundTransparency = 1

				if TabContainer then
					TabContainer.Visible = true
				end

				if MainContainer then
					MainContainer.Visible = true
				end

				if TextButton then
					TextButton.Visible = true
				end

				if TextButton2 then
					TextButton2.Visible = true
				end

				if ImageButton2 then
					ImageButton2.Visible = true
				end

				if videoFrame and Frame4 and Frame4.Visible then
					pcall(function()
						videoFrame.Playing = true
						videoFrame:Play()
					end)
				end

				flag7 = false
			end

			local function fn6()
				if flag7 then
					return
				end

				if v6 and v6() then
					v5()
				end

				if v9 and v9() then
					fn2()
				end

				if v12 and v12() then
					fn3()
				end

				if TabContainer then
					TabContainer.Visible = false
				end

				if MainContainer then
					MainContainer.Visible = false
				end

				if TextButton then
					TextButton.Visible = false
				end

				if TextButton2 then
					TextButton2.Visible = false
				end

				ImageButton.Position = UDim2.new(1, -34, 0, 16)
				ImageButton2.Position = UDim2.new(1, -8, 0, 16)
				ImageButton.Image = "rbxassetid://124967485209478"
				Frame5.BackgroundTransparency = 0
				TextLabel.Size = UDim2.new(1, -65, 0, 16)
				TextLabel2.Size = UDim2.new(1, -65, 0, 12)
				local position = Frame3.Position
				Frame3.Position = UDim2.new(position.X.Scale, position.X.Offset - 150, position.Y.Scale, position.Y.Offset - 149)
				Frame3.Size = UDim2.new(0, 210, 0, 32)
				flag7 = true
			end

			ImageButton.MouseButton1Click:Connect(function()
				if flag7 then
					fn5()
				else
					fn6()
				end
			end)

			local tbl10 = {
				Name = "BlurOverlay",
				BackgroundColor3 = Color3.fromRGB(8, 6, 12),
				BackgroundTransparency = 0.35,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Visible = false,
				Active = true,
				ZIndex = 4000,
			}

			local children = {}
			local UICorner = create("UICorner", { CornerRadius = UDim.new(0, 10) })

			local tbl11 = {
				Name = "ClickBlocker",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 4000,
			}

			children[1] = UICorner

			do
				local values = table.pack(create("TextButton", tbl11))
				table.move(values, 1, values.n, 2, children)
			end

			tbl10.Children = children
			local Frame13 = create("Frame", tbl10, Frame3)

			local Frame14 = create("Frame", {
				Name = "ComfirmDialog",
				BackgroundColor3 = Color3.fromRGB(18, 14, 26),
				BackgroundTransparency = 0.02,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, 240, 0, 112),
				Visible = false,
				Active = true,
				ZIndex = 4001,
				ClipsDescendants = true,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 10) }) },
			}, Frame13)

			create("TextLabel", {
				Name = "DialogTitle",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 16),
				Size = UDim2.new(1, -24, 0, 18),
				Text = "Are you sure?",
				TextColor3 = Color3.fromRGB(250, 245, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 4002,
			}, Frame14)

			create("TextLabel", {
				Name = "DialogSubtitle",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 36),
				Size = UDim2.new(1, -24, 0, 16),
				Text = "Close and destroy interface?",
				TextColor3 = Color3.fromRGB(165, 150, 190),
				Font = Enum.Font.Gotham,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 4002,
			}, Frame14)

			local TextButton10 = create("TextButton", {
				BackgroundColor3 = Color3.fromRGB(225, 45, 75),
				BackgroundTransparency = 0.05,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 16, 1, -14),
				Size = UDim2.new(0, 96, 0, 28),
				Text = "Yes",
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				Active = true,
				ZIndex = 4002,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
			}, Frame14)

			local TextButton11 = create("TextButton", {
				Name = "CancelButton",
				BackgroundColor3 = Color3.fromRGB(28, 22, 38),
				BackgroundTransparency = 0.05,
				TextColor3 = Color3.fromRGB(200, 190, 225),
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.new(1, -16, 1, -14),
				Size = UDim2.new(0, 96, 0, 28),
				Text = "No",
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				Active = true,
				ZIndex = 4002,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
			}, Frame14)

			local flag8 = false

			ImageButton2.MouseButton1Click:Connect(function()
				if flag7 then
					fn5()
				end

				if v6 and v6() then
					v5()
				end

				if v9 and v9() then
					fn2()
				end

				if v12 and v12() then
					fn3()
				end

				Frame13.Visible = true
				Frame14.Visible = true
			end)

			TextButton10.MouseButton1Click:Connect(function()
				Frame13.Visible = false
				Frame14.Visible = false
				v:DestroyGui()
			end)

			TextButton11.MouseButton1Click:Connect(function()
				Frame13.Visible = false
				Frame14.Visible = false

				if flag8 then
					CloseFullLock()
				end
			end)

			UserInputService.InputBegan:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.Keyboard then
					return
				end

				if input.KeyCode == Enum.KeyCode.Unknown then
					return
				end

				if flag5 then
					rightControl = input.KeyCode
					save:Save("_opt_UIKeybind", input.KeyCode.Name)
					flag5 = false

					if TextLabel3 then
						TextLabel3.Text = input.KeyCode.Name
					end

					return
				end

				if UserInputService:GetFocusedTextBox() then
					return
				end

				if input.KeyCode == rightControl then
					toggleUI()
				end
			end)

			local flag9 = true

			toggleUI = function(visible2)
				if visible2 == nil then
					visible2 = not flag9
				end

				if visible2 == flag9 then
					return
				end
				flag9 = visible2
				Frame3.Visible = visible2
				Frame12.Visible = true
				ImageButton3.Visible = true

				if visible2 then
					Frame3.BackgroundTransparency = save:Get("_opt_UITransparency", 0.05)

					if videoFrame and Frame4 and Frame4.Visible then
						pcall(function()
							videoFrame.Playing = true
							videoFrame:Play()
						end)
					end
				end
			end

			local n4 = 0

			ImageButton3.Activated:Connect(function()
				if tbl9.moved then
					return
				end
				local now = tick()
				if now - n4 < 0.2 then
					return
				end
				n4 = now
				toggleUI()
			end)

			tbl5.MakeDraggable = util.MakeDraggable
			util.MakeDraggable(Frame5, Frame3)

			local Frame15 = create("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 40),
				Position = UDim2.new(0, 0, 0, 36),
				ClipsDescendants = false,
			}, Frame3)

			Frame2 = create("Frame", {
				Name = "SearchBarFrame",
				BackgroundColor3 = Color3.fromRGB(22, 17, 34),
				BackgroundTransparency = 0.4,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 8, 0, 1),
				Size = UDim2.new(0, 126, 0, 22),
				ZIndex = 6,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
			}, Frame15)

			create("ImageLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 6, 0.5, -6),
				Size = UDim2.new(0, 12, 0, 12),
				Image = "rbxassetid://3926305904",
				ImageRectOffset = Vector2.new(964, 324),
				ImageRectSize = Vector2.new(36, 36),
				ImageColor3 = Color3.fromRGB(175, 140, 230),
				ZIndex = 7,
			}, Frame2)

			local TextBox3 = create("TextBox", {
				Name = "SearchBox",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 21, 0, 0),
				Size = UDim2.new(1, -36, 1, 0),
				Font = Enum.Font.Gotham,
				PlaceholderText = "Search...",
				PlaceholderColor3 = Color3.fromRGB(135, 120, 165),
				Text = "",
				TextColor3 = Color3.fromRGB(235, 230, 250),
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 7,
			}, Frame2)

			local TextButton12 = create("TextButton", {
				Name = "SearchClear",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -3, 0.5, 0),
				Size = UDim2.new(0, 14, 0, 14),
				Font = Enum.Font.GothamBold,
				Text = "×",
				TextColor3 = Color3.fromRGB(175, 145, 215),
				TextSize = 12,
				Visible = false,
				ZIndex = 8,
				AutoButtonColor = false,
			}, Frame2)

			local TextLabel6 = create("TextLabel", {
				Name = "SearchCount",
				BackgroundColor3 = Color3.fromRGB(110, 60, 190),
				BackgroundTransparency = 0.2,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -2, 0, -6),
				Size = UDim2.new(0, 22, 0, 13),
				Font = Enum.Font.GothamBold,
				Text = "0",
				TextColor3 = Color3.fromRGB(240, 225, 255),
				TextSize = 9,
				Visible = false,
				ZIndex = 9,
				Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
			}, Frame2)

			local ScrollingFrame2 = create("ScrollingFrame", {
				Active = true,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 140, 0, -3),
				Size = UDim2.new(1, -148, 0, 30),
				CanvasPosition = Vector2.new(0, 0),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollBarImageTransparency = 1,
				ScrollingDirection = Enum.ScrollingDirection.X,
				ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
				Children = { create("UICorner", { CornerRadius = UDim.new(0, 7) }) },
			}, Frame15)

			local UIListLayout = create("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5),
			}, ScrollingFrame2)

			tbl5.RefreshTabScrollCanvas = function()
				DebouncedFitScrollCanvas(ScrollingFrame2, UIListLayout, "X", 4)
			end

			RegisterLayoutRefresh(function()
				FitScrollCanvas(ScrollingFrame2, UIListLayout, "X", 4)
			end)

			UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(tbl5.RefreshTabScrollCanvas)
			ScrollingFrame2:GetPropertyChangedSignal("AbsoluteSize"):Connect(tbl5.RefreshTabScrollCanvas)
			ScrollingFrame2.ChildAdded:Connect(tbl5.RefreshTabScrollCanvas)

			local Frame16 = create("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 590, 0, 400),
				Position = UDim2.new(0, 5, 0, 70),
			}, Frame3)

			local Folder = create("Folder", { Name = "Container" }, Frame16)
			local tbl12 = {}
			tbl7 = {}
			local flag10 = false
			local v16 = nil
			local v17 = nil
			local flag11 = false
			local tbl13 = {}

			tbl5.ActivateScroll = function(arg3, arg4, arg5, arg6)
				local flag12 = not arg6
				if flag12 and flag11 then
					return
				end

				if flag12 and v16 == arg3 then
					return
				end
				local n5 = 1
				local n6 = 1

				for i, v18 in ipairs(tbl7) do
					if v18.scrollFrame == v16 then
						n5 = i
					end

					if v18.scrollFrame == arg3 then
						n6 = i
					end
				end

				local n7 = n6 > n5 and 1 or -1

				for _, v18 in ipairs(tbl7) do
					tbl:Tween(v18.tabButton, { TextColor3 = Color3.fromRGB(130, 120, 155) }, 0.2, Enum.EasingStyle.Quint)

					if v18.tabUnderline.Visible then
						tbl:Tween(v18.tabUnderline, { Size = UDim2.new(0, 0, 0, 3) }, 0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.In, function()
							v18.tabUnderline.Visible = false
							v18.tabUnderline.Size = UDim2.new(0.5, 0, 0, 3)
						end)
					end

					if v18.scrollFrame.Visible and v18.scrollFrame ~= arg3 then
						local scrollFrame = v18.scrollFrame

						if not arg6 then
							flag11 = true
							tbl:Tween(scrollFrame, { Position = UDim2.new(-0.04 * n7, 0, 0, 0) }, 0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

							task.delay(0.2, function()
								scrollFrame.Visible = false
								scrollFrame.Position = UDim2.new(0, 0, 0, 0)
							end)
						else
							scrollFrame.Visible = false
							scrollFrame.Position = UDim2.new(0, 0, 0, 0)
						end
					end
				end

				if flag12 then
					task.delay(0.15, function()
						arg3.Position = UDim2.new(0.04 * n7, 0, 0, 0)
						arg3.Visible = true
						tbl:Tween(arg3, { Position = UDim2.new(0, 0, 0, 0) }, 0.28, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

						task.delay(0.28, function()
							flag11 = false
						end)
					end)
				else
					arg3.Position = UDim2.new(0, 0, 0, 0)
					arg3.Visible = true
					flag11 = false
				end

				tbl:Tween(arg4, { TextColor3 = Color3.fromRGB(255, 255, 255) }, 0.22, Enum.EasingStyle.Quint)
				arg5.Size = UDim2.new(0, 0, 0, 3)
				arg5.Visible = true
				tbl:Tween(arg5, { Size = UDim2.new(0.5, 0, 0, 3) }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				v16 = arg3
			end

			tbl5.RefreshSectionVisibility = function()
				local tbl14 = {}
				local tbl15 = {}

				for _, v18 in ipairs(tbl12) do
					if not tbl15[v18.sectionScroll] then
						tbl15[v18.sectionScroll] = true
						table.insert(tbl14, v18.sectionScroll)
					end
				end

				for _, v18 in ipairs(tbl14) do
					local visible2 = false

					for _, child in ipairs(v18:GetChildren()) do
						if child.Name == "Section" then
							local visible3 = false

							for _, v19 in ipairs(tbl12) do
								if v19.sectionScroll == v18 and v19.sectionFrame == child and v19.elementFrame.Visible then
									visible3 = true
									break
								end
							end

							child.Visible = visible3

							if visible3 then
								visible2 = true
							end
						end
					end

					v18.Visible = visible2
				end

				local tbl16 = {}
				local tbl17 = {}

				for _, v18 in ipairs(tbl12) do
					if not tbl16[v18.scrollFrame] then
						tbl16[v18.scrollFrame] = true
						tbl17[v18.scrollFrame] = {}
					end
				end

				for _, v18 in ipairs(tbl12) do
					local v19 = tbl17[v18.scrollFrame]
					local flag12 = false

					for _, v20 in ipairs(v19) do
						if v20 == v18.sectionScroll then
							flag12 = true
							break
						end
					end

					if not flag12 then
						table.insert(v19, v18.sectionScroll)
					end
				end

				for _, v18 in pairs(tbl17) do
					for _, v19 in ipairs(v18) do
						if v19.Visible then
							v19.Size = UDim2.new(0, 240, 0, 260)
						end
					end
				end
			end

			local tbl14 = {
				Name = "SearchHistoryFrame",
				BackgroundColor3 = Color3.fromRGB(16, 12, 24),
				BackgroundTransparency = 0.08,
				Position = UDim2.new(0, 8, 0, 26),
				Size = UDim2.new(0, 220, 0, 0),
				Visible = false,
				ZIndex = 50,
				ClipsDescendants = true,
			}

			local children2 = {}
			local UICorner2 = create("UICorner", { CornerRadius = UDim.new(0, 8) })
			local UIListLayout2 = create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2) })

			local tbl15 = {
				PaddingTop = UDim.new(0, 6),
				PaddingBottom = UDim.new(0, 6),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
			}

			children2[1] = UICorner2
			children2[2] = UIListLayout2

			do
				local values = table.pack(create("UIPadding", tbl15))
				table.move(values, 1, values.n, 3, children2)
			end

			tbl14.Children = children2
			local Frame17 = create("Frame", tbl14, Frame3)

			local ScrollingFrame3 = create("ScrollingFrame", {
				Name = "SearchTreeScroll",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, -8, 0, 0),
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollBarImageTransparency = 1,
				ZIndex = 51,
				Visible = false,
				AutomaticCanvasSize = Enum.AutomaticSize.None,
				ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
				ScrollingEnabled = true,
				Children = {
					create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2) }),
				},
			}, Frame17)

			local function fn7()
				Frame17.Visible = false
				Frame17.Size = UDim2.new(0, 220, 0, 0)
				ScrollingFrame3.Visible = false
				ScrollingFrame3.Size = UDim2.new(1, -8, 0, 0)
				ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
			end

			tbl5.fuzzyMatch = function(arg3, arg4)
				local str4 = arg3:lower()
				local str5 = arg4:lower()
				local n5 = 1
				local n6 = 1

				while n5 <= #str5 and n6 <= #str4 do
					if str5:sub(n5, n5) == str4:sub(n6, n6) then
						n5 += 1
					end

					n6 += 1
				end

				return n5 > #str5
			end

			tbl5.SplitWords = function(arg3)
				local tbl16 = {}

				for match in string.gmatch(string.lower(arg3), "%S+") do
					table.insert(tbl16, match)
				end

				return tbl16
			end

			tbl5.ScoreSearchEntry = function(arg3, arg4)
				local str4 = arg4:lower()
				local str5 = (arg3.title or ""):lower()
				local str6 = (arg3.menuTitle or ""):lower()
				local str7 = (arg3.tabTitle or ""):lower()
				local str8 = str7 .. " " .. str6 .. " " .. str5
				if str5 == str4 then
					return 200
				end
				local n5 = 0

				if str5:sub(1, #str4) == str4 then
					n5 = 160
				end

				local n6

				if str5:find(str4, 1, true) then
					n6 = math.max(n5, 120)
				else
					n6 = n5
				end

				local n7

				if str6:find(str4, 1, true) then
					n7 = math.max(n6, 90)
				else
					n7 = n6
				end

				local n8

				if str7:find(str4, 1, true) then
					n8 = math.max(n7, 70)
				else
					n8 = n7
				end

				local v18 = tbl5.SplitWords(str4)

				if #v18 > 1 then
					local n9 = 0
					local flag12 = true

					for _, v19 in ipairs(v18) do
						if str8:find(v19, 1, true) then
							n9 += 25
						else
							flag12 = false
						end
					end

					if flag12 then
						n8 = math.max(n8, 100 + n9)
					end
				end

				local n9

				if tbl5.fuzzyMatch(str5, arg4) then
					n9 = math.max(n8, 45)
				else
					n9 = n8
				end

				local n10

				if tbl5.fuzzyMatch(str8, arg4) then
					n10 = math.max(n9, 35)
				else
					n10 = n9
				end

				return n10
			end

			local optSearchHistory = save:Get("_opt_SearchHistory", {})

			tbl5.SaveSearchToHistory = function(arg3)
				local str4 = arg3:gsub("^%s+", ""):gsub("%s+$", "")
				if str4 == "" or #str4 < 2 then
					return
				end

				for i = #optSearchHistory, 1, -1 do
					if optSearchHistory[i] == str4 then
						table.remove(optSearchHistory, i)
					end
				end

				table.insert(optSearchHistory, 1, str4)

				if #optSearchHistory > 8 then
					table.remove(optSearchHistory, 9)
				end

				save:Save("_opt_SearchHistory", optSearchHistory)
			end

			tbl5.NavigateToSearchEntry = function(arg3)
				if not arg3 then
					return
				end

				for _, v18 in ipairs(tbl7) do
					if v18.scrollFrame == arg3.scrollFrame then
						tbl5.ActivateScroll(v18.scrollFrame, v18.tabButton, v18.tabUnderline, true)
						break
					end
				end

				arg3.elementFrame.Visible = true
				arg3.sectionFrame.Visible = true
				arg3.sectionScroll.Visible = true
				tbl5.RefreshSectionVisibility()

				task.defer(function()
					local elementFrame = arg3.elementFrame
					local sectionScroll = arg3.sectionScroll
					if not (elementFrame and elementFrame.Parent and sectionScroll and sectionScroll.Parent) then
						return
					end
					local n5 = math.max(0, elementFrame.AbsolutePosition.Y - sectionScroll.AbsolutePosition.Y + sectionScroll.CanvasPosition.Y - 40)
					tbl:Tween(sectionScroll, { CanvasPosition = Vector2.new(0, n5) }, 0.28, Enum.EasingStyle.Quint)

					local Frame18 = create("Frame", {
						BackgroundColor3 = ThemeColor("Accent") or Color3.fromRGB(180, 120, 255),
						BackgroundTransparency = 0.35,
						BorderSizePixel = 0,
						Size = UDim2.new(1, 0, 1, 0),
						ZIndex = 50,
						Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
					}, elementFrame)

					tbl:Tween(Frame18, { BackgroundTransparency = 1 }, 0.65, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, function()
						if Frame18 then
							Frame18:Destroy()
						end
					end)

					local uiStroke3 = elementFrame:FindFirstChildOfClass("UIStroke")

					if not uiStroke3 then
						local UIStroke = create("UIStroke", {
							Color = ThemeColor("Accent") or Color3.fromRGB(180, 120, 255),
							Transparency = 0.2,
							Thickness = 1.5,
							ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
						}, elementFrame)

						task.delay(0.8, function()
							if UIStroke and UIStroke.Parent then
								UIStroke:Destroy()
							end
						end)
					else
						local transparency = uiStroke3.Transparency
						uiStroke3.Transparency = 0.15

						task.delay(0.8, function()
							if uiStroke3 and uiStroke3.Parent then
								uiStroke3.Transparency = transparency
							end
						end)
					end
				end)
			end

			tbl5.UpdateSearchTreeUI = function(arg3, arg4)
				for _, child in ipairs(ScrollingFrame3:GetChildren()) do
					if child:IsA("GuiObject") then
						child:Destroy()
					end
				end

				if arg4 == "" or not arg3 or #arg3 == 0 then
					ScrollingFrame3.Visible = false
					ScrollingFrame3.Size = UDim2.new(1, -8, 0, 0)
					ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
					return 0
				end

				local tbl16 = {}

				for _, v18 in ipairs(arg3) do
					local tabTitle = v18.tabTitle or "Tab"
					tbl16[tabTitle] = tbl16[tabTitle] or {}
					local menuTitle = v18.menuTitle or "Section"
					tbl16[tabTitle][menuTitle] = tbl16[tabTitle][menuTitle] or {}
					table.insert(tbl16[tabTitle][menuTitle], v18)
				end

				local n5 = 0
				local n6 = 0

				for k, v18 in pairs(tbl16) do
					n5 += 1
					n6 = n6 + 16 + 2

					create("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 16),
						Font = Enum.Font.GothamBold,
						Text = "" .. k,
						TextColor3 = Color3.fromRGB(192, 132, 252),
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment.Left,
						LayoutOrder = n5,
						ZIndex = 10001,
					}, ScrollingFrame3)

					for k2, v19 in pairs(v18) do
						n5 += 1
						n6 = n6 + 14 + 2

						create("TextLabel", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, -8, 0, 14),
							Font = Enum.Font.GothamSemibold,
							Text = "  └ " .. k2,
							TextColor3 = Color3.fromRGB(160, 130, 200),
							TextSize = 9,
							TextXAlignment = Enum.TextXAlignment.Left,
							LayoutOrder = n5,
							ZIndex = 10001,
						}, ScrollingFrame3)

						for _, v20 in ipairs(v19) do
							n5 += 1
							n6 = n6 + 20 + 2

							create("TextButton", {
								BackgroundColor3 = Color3.fromRGB(22, 20, 28),
								BackgroundTransparency = 0.35,
								Size = UDim2.new(1, -12, 0, 20),
								Font = Enum.Font.Gotham,
								Text = "      • " .. (v20.title or ""),
								TextColor3 = Color3.fromRGB(210, 195, 230),
								TextSize = 9,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTruncate = Enum.TextTruncate.AtEnd,
								LayoutOrder = n5,
								ZIndex = 10001,
								Children = { create("UICorner", { CornerRadius = UDim.new(0, 4) }) },
							}, ScrollingFrame3).MouseButton1Click:Connect(function()
								tbl5.NavigateToSearchEntry(v20)
								fn7()
							end)
						end
					end
				end

				if n5 <= 0 or n6 <= 0 then
					ScrollingFrame3.Visible = false
					ScrollingFrame3.Size = UDim2.new(1, -8, 0, 0)
					ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
					ScrollingFrame3.ScrollingEnabled = false
					return 0
				end

				local scrollingEnabled = n6 > math.max(UnscaledLayout(ScrollingFrame3.AbsoluteSize.Y), 1) + 1
				ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, scrollingEnabled and n6 or 0)
				ScrollingFrame3.ScrollingEnabled = scrollingEnabled
				ScrollingFrame3.ElasticBehavior = Enum.ElasticBehavior.Never
				ScrollingFrame3.Visible = true
				return n6
			end

			tbl5.UpdateHistoryUI = function(arg3)
				for _, child in ipairs(Frame17:GetChildren()) do
					if child:IsA("TextButton") or child:IsA("TextLabel") then
						if child.Name ~= "SearchTreeScroll" and child ~= ScrollingFrame3 then
							child:Destroy()
						end
					end
				end

				local n5

				if arg3 then
					local n6 = 0

					if ScrollingFrame3.Visible then
						n6 = ScrollingFrame3.CanvasSize.Y.Offset
					end

					if n6 <= 0 then
						fn7()
						return
					end
					local n7 = math.min(n6, 180)
					ScrollingFrame3.Size = UDim2.new(1, -8, 0, n7)
					n5 = n7 + 12
				else
					ScrollingFrame3.Visible = false
					ScrollingFrame3.Size = UDim2.new(1, -8, 0, 0)
					if #optSearchHistory <= 0 then
						fn7()
						return
					end

					create("TextLabel", {
						Name = "HistoryHeader",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 14),
						Font = Enum.Font.GothamBold,
						Text = "Recent",
						TextColor3 = Color3.fromRGB(140, 110, 190),
						TextSize = 9,
						TextXAlignment = Enum.TextXAlignment.Left,
						LayoutOrder = 1,
						ZIndex = 10000,
					}, Frame17)

					for i, v18 in ipairs(optSearchHistory) do
						create("TextButton", {
							BackgroundColor3 = Color3.fromRGB(22, 20, 28),
							BackgroundTransparency = 0.5,
							Size = UDim2.new(1, 0, 0, 20),
							Font = Enum.Font.Gotham,
							Text = "  " .. v18,
							TextColor3 = Color3.fromRGB(180, 160, 200),
							TextSize = 10,
							TextXAlignment = Enum.TextXAlignment.Left,
							LayoutOrder = i + 1,
							ZIndex = 10000,
							Children = { create("UICorner", { CornerRadius = UDim.new(0, 4) }) },
						}, Frame17).MouseButton1Click:Connect(function()
							TextBox3.Text = v18
							DoSearch(v18)
							fn7()
						end)
					end

					n5 = (#optSearchHistory + 1) * 22 + 12
				end

				if n5 <= 0 then
					fn7()
					return
				end
				Frame17.Size = UDim2.new(0, 220, 0, n5)
				Frame17.Visible = true
			end

			DoSearch = function(arg3)
				local str4 = arg3:lower():gsub("^%s+", ""):gsub("%s+$", "")
				TextButton12.Visible = str4 ~= ""

				if str4 == "" then
					flag10 = false
					tbl13 = {}
					TextLabel6.Visible = false
					tbl5.UpdateSearchTreeUI({}, "")
					fn7()

					for _, v18 in ipairs(tbl12) do
						v18.elementFrame.Visible = true
						v18.sectionFrame.Visible = true
						v18.sectionScroll.Visible = true
						v18.sectionScroll.Size = UDim2.new(0, 240, 0, 260)
					end

					for _, v18 in ipairs(tbl7) do
						v18.tabButton.Visible = true
					end

					if v17 then
						for _, v18 in ipairs(tbl7) do
							if v18.scrollFrame == v17 then
								tbl5.ActivateScroll(v18.scrollFrame, v18.tabButton, v18.tabUnderline, true)
								break
							end
						end

						v17 = nil
					elseif #tbl7 > 0 then
						local v18 = tbl7[1]
						tbl5.ActivateScroll(v18.scrollFrame, v18.tabButton, v18.tabUnderline)
					end

					return
				end

				if not flag10 then
					flag10 = true
					v17 = v16
				end

				for _, v18 in ipairs(tbl12) do
					v18.elementFrame.Visible = false
				end

				for _, v18 in ipairs(tbl7) do
					v18.tabButton.Visible = false
					v18.scrollFrame.Visible = false
					v18.tabButton.TextColor3 = Color3.fromRGB(200, 200, 200)
					v18.tabUnderline.Visible = false
				end

				local tbl16 = {}
				local tbl17 = {}
				local tbl18 = {}

				for _, v18 in ipairs(tbl12) do
					local v19 = tbl5.ScoreSearchEntry(v18, str4)

					if v19 > 0 then
						table.insert(tbl18, { entry = v18, score = v19 })
					end
				end

				table.sort(tbl18, function(arg4, arg5)
					return arg4.score > arg5.score
				end)

				tbl13 = {}

				for _, v18 in ipairs(tbl18) do
					local entry = v18.entry
					table.insert(tbl13, entry)
					entry.elementFrame.Visible = true

					if not tbl17[entry.scrollFrame] then
						tbl17[entry.scrollFrame] = true
						table.insert(tbl16, entry.scrollFrame)
					end

					for _, v19 in ipairs(tbl7) do
						if v19.scrollFrame == entry.scrollFrame then
							v19.tabButton.Visible = true
							break
						end
					end
				end

				local n5 = #tbl13
				TextLabel6.Visible = n5 > 0
				TextLabel6.Text = tostring(n5)
				TextLabel6.Size = UDim2.new(0, math.max(22, #tostring(n5) * 8 + 10), 0, 14)

				if tbl5.UpdateSearchTreeUI(tbl13, str4) <= 0 then
					fn7()
				else
					tbl5.UpdateHistoryUI(true)
				end

				if #tbl16 == 0 then
					return
				end
				tbl5.RefreshSectionVisibility()

				for _, v18 in ipairs(tbl7) do
					if v18.scrollFrame == tbl16[1] then
						tbl5.ActivateScroll(v18.scrollFrame, v18.tabButton, v18.tabUnderline, true)
						break
					end
				end
			end

			local n5 = 0

			TextBox3:GetPropertyChangedSignal("Text"):Connect(function()
				local text = TextBox3.Text
				TextButton12.Visible = text ~= ""
				n5 += 1
				local v18 = n5

				task.delay(0.08, function()
					if v18 ~= n5 then
						return
					end
					DoSearch(text)

					if text == "" then
						fn7()
					end
				end)
			end)

			TextButton12.MouseButton1Click:Connect(function()
				TextBox3.Text = ""
				DoSearch("")
				fn7()
				TextBox3:CaptureFocus()
			end)

			TextBox3.Focused:Connect(function()
				tbl:Tween(Frame2, { BackgroundTransparency = 0.2 }, 0.15)
				local str4 = TextBox3.Text:gsub("^%s+", ""):gsub("%s+$", "")

				if str4 ~= "" and #tbl13 > 0 then
					tbl5.UpdateSearchTreeUI(tbl13, str4)
					tbl5.UpdateHistoryUI(true)
				elseif str4 == "" and #optSearchHistory > 0 then
					tbl5.UpdateHistoryUI(false)
				else
					fn7()
				end
			end)

			TextBox3.FocusLost:Connect(function(enterPressed)
				tbl:Tween(Frame2, { BackgroundTransparency = 0.4 }, 0.2)

				if enterPressed then
					tbl5.SaveSearchToHistory(TextBox3.Text)
				end

				task.delay(0.25, function()
					if not TextBox3:IsFocused() then
						fn7()
					end
				end)
			end)

			local flag12 = true

			local tbl16 = { AddTab = function(arg3, arg4, arg5, arg6)
				if not checkCondition(arg6) then
					return v4
				end
				local n6 = 16
				local n7 = 6
				local n8 = 12

				local tbl16 = {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AutoButtonColor = false,
					Font = Enum.Font.FredokaOne,
					TextColor3 = Color3.fromRGB(200, 200, 200),
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Right,
					Text = arg4,
					ClipsDescendants = false,
				}

				local children3 = {}
				local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 7) })

				local tbl17 = {
					Name = "TabIcon",
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0, 0.5),
					Size = UDim2.new(0, 16, 0, 16),
					Position = UDim2.new(0, 5, 0.5, 0),
					Image = ({
						["cat-quantum"] = "rbxassetid://82115431450716",
						["home-quantum"] = "rbxassetid://130439434919073",
						["swords-quantum"] = "rbxassetid://88173691221304",
						["rabbit-quantum"] = "rbxassetid://138575837887336",
						["ship-quantum"] = "rbxassetid://115481449706054",
						["visual-quantum"] = "rbxassetid://102173201308116",
						["info-quantum"] = "rbxassetid://88050097561287",
						["misc-quantum"] = "rbxassetid://137985950260873",
						["cart-quantum"] = "rbxassetid://137995400175306",
						["cherry-quantum"] = "rbxassetid://122029349593217",
						["map-quantum"] = "rbxassetid://125480398387209",
						["raid-quantum"] = "rbxassetid://104575804564229",
						["user-quantum"] = "rbxassetid://83474083071373",
						["settings-quantum"] = "rbxassetid://81151604784579",
						["bio-quantum"] = "rbxassetid://132316362727024",
						["craft-quantum"] = "rbxassetid://118197342073112",
					})[arg5] or "",
					ScaleType = Enum.ScaleType.Fit,
				}

				local v18 = table.pack(create("ImageLabel", tbl17))
				children3[1] = UICorner3

				do
					local values = table.pack(table.unpack(v18, 1, v18.n))
					table.move(values, 1, values.n, 2, children3)
				end

				tbl16.Children = children3
				local TextButton13 = create("TextButton", tbl16, nil)

				local function fn8()
					TextButton13.Size = UDim2.new(0, n7 + n6 + n8 + TextService:GetTextSize(arg4, 14, Enum.Font.FredokaOne, Vector2.new(4096, 24)).X, 0, 24)
				end

				RegisterLayoutRefresh(fn8)
				fn8()

				local tbl18 = {
					Name = "Tab_Underline",
					BackgroundColor3 = Color3.fromRGB(110, 55, 190),
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0.5, 0),
					Size = UDim2.new(0.5, 0, 0, 3),
					Position = UDim2.new(0.5, 0, 1, 1),
					Visible = false,
				}

				local children4 = {}
				local UICorner4 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

				local tbl19 = {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 40, 180)),
					}),
					Rotation = 0,
				}

				children4[1] = UICorner4

				do
					local values = table.pack(create("UIGradient", tbl19))
					table.move(values, 1, values.n, 2, children4)
				end

				tbl18.Children = children4
				local Frame18 = create("Frame", tbl18, TextButton13)
				TextButton13.Parent = ScrollingFrame2

				local ScrollingFrame4 = create("ScrollingFrame", {
					Name = "ScrollingFrame",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					CanvasSize = UDim2.new(0, 0, 0, 0),
					ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
					ScrollBarThickness = 0,
					ScrollBarImageTransparency = 1,
					ScrollingDirection = Enum.ScrollingDirection.X,
					ElasticBehavior = Enum.ElasticBehavior.Never,
					ScrollingEnabled = false,
					Visible = false,
					ClipsDescendants = true,
				}, Folder)

				local UIListLayout3 = create("UIListLayout", {
					Name = "Scrolling_Layout",
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 19),
				}, ScrollingFrame4)

				local function fn9()
					DebouncedFitScrollCanvas(ScrollingFrame4, UIListLayout3, "X", 4)
				end

				RegisterLayoutRefresh(function()
					FitScrollCanvas(ScrollingFrame4, UIListLayout3, "X", 4)
				end)

				UIListLayout3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fn9)
				ScrollingFrame4:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn9)
				ScrollingFrame4.ChildAdded:Connect(fn9)
				ScrollingFrame4.ChildRemoved:Connect(fn9)
				table.insert(tbl7, { tabButton = TextButton13, tabUnderline = Frame18, scrollFrame = ScrollingFrame4 })

				if flag12 then
					flag12 = false
					tbl5.ActivateScroll(ScrollingFrame4, TextButton13, Frame18)
				end

				TextButton13.MouseButton1Click:Connect(function()
					if flag10 then
						tbl5.ActivateScroll(ScrollingFrame4, TextButton13, Frame18)
						tbl5.RefreshSectionVisibility()
					else
						if TextBox3.Text ~= "" then
							TextBox3.Text = ""
						end

						tbl5.ActivateScroll(ScrollingFrame4, TextButton13, Frame18)
					end
				end)

				local tbl20 = { addSection = function(arg7, arg8)
					if not checkCondition(arg8) then
						return v4
					end

					local ScrollingFrame5 = create("ScrollingFrame", {
						Name = "SectionScroll",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0, 240, 0, 260),
						ScrollBarThickness = 0,
						ScrollBarImageTransparency = 1,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						Active = true,
						ClipsDescendants = true,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
						ScrollingEnabled = true,
						Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
					}, ScrollingFrame4)

					local UIListLayout4 = create("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 7),
					}, ScrollingFrame5)

					local function fn10()
						DebouncedFitScrollCanvas(ScrollingFrame5, UIListLayout4, "Y", 4)
					end

					RegisterLayoutRefresh(function()
						FitScrollCanvas(ScrollingFrame5, UIListLayout4, "Y", 4)
					end)

					UIListLayout4:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fn10)
					ScrollingFrame5:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn10)
					ScrollingFrame5.ChildAdded:Connect(fn10)
					ScrollingFrame5.ChildRemoved:Connect(fn10)

					local tbl20 = { addMenu = function(arg9, arg10, arg11)
						if not checkCondition(arg11) then
							return v4
						end

						local Frame19 = create("Frame", {
							Name = "Section",
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Size = UDim2.new(0.48, 0, 0, 20),
							ClipsDescendants = false,
						}, ScrollingFrame5)

						local Frame20 = create("Frame", {
							Name = "InnerSection",
							BackgroundColor3 = Color3.fromRGB(25, 25, 25),
							BackgroundTransparency = 0.3,
							BorderSizePixel = 0,
							Position = UDim2.new(0, 5, 0, 0),
							Size = UDim2.new(1, -5, 0, 25),
							Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
						}, Frame19)

						local UIListLayout5 = create("UIListLayout", {
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 3),
						}, Frame20)

						local Frame21 = create("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, 22),
							Children = {
								create("TextLabel", {
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Size = UDim2.new(0.6, 0, 1, 0),
									Position = UDim2.new(0.2, 0, 0, 0),
									Font = Enum.Font.FredokaOne,
									Text = arg10,
									TextColor3 = Color3.fromRGB(255, 255, 255),
									TextSize = 15,
									TextTruncate = Enum.TextTruncate.AtEnd,
									TextXAlignment = Enum.TextXAlignment.Center,
									ZIndex = 3,
								}),
							},
						}, Frame20)

						local UIGradient = create("UIGradient", { Color = ThemeColor("Lit"), Rotation = 60 })
						local UIGradient2 = create("UIGradient", { Color = ThemeColor("Lit"), Rotation = 60 })
						RegisterLitGradient(UIGradient)
						RegisterLitGradient(UIGradient2)

						local Frame22 = create("Frame", {
							BackgroundColor3 = ThemeColor("Accent") or Color3.fromRGB(150, 100, 255),
							BorderSizePixel = 0,
							Size = UDim2.new(0.2, 0, 0, 10),
							Position = UDim2.new(0, 0, 0.5, -1),
							ZIndex = 2,
							Children = { create("UICorner", { CornerRadius = UDim.new(0.5) }), UIGradient },
						}, Frame21)

						local Frame23 = create("Frame", {
							BackgroundColor3 = ThemeColor("Accent") or Color3.fromRGB(150, 100, 255),
							BorderSizePixel = 0,
							Size = UDim2.new(0.2, 0, 0, 10),
							Position = UDim2.new(0.8, 0, 0.5, -1),
							ZIndex = 2,
							Children = { create("UICorner", { CornerRadius = UDim.new(0.5) }), UIGradient2 },
						}, Frame21)

						RegisterThemeElement(Frame22, "BackgroundColor3", "Accent")
						RegisterThemeElement(Frame23, "BackgroundColor3", "Accent")

						local function fn11()
							local n9 = math.max(UnscaledLayout(UIListLayout5.AbsoluteContentSize.Y) + 4, 22)
							Frame19.Size = UDim2.new(1, 0, 0, n9)
							Frame20.Size = UDim2.new(1, -10, 0, n9)
						end

						RegisterLayoutRefresh(fn11)
						UIListLayout5:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fn11)
						fn11()

						local function fn12(arg12, arg13)
							arg12:SetAttribute("STX_SearchElement", true)

							local tbl20 = {
								tabButton = TextButton13,
								scrollFrame = ScrollingFrame4,
								sectionScroll = ScrollingFrame5,
								sectionFrame = Frame19,
								elementFrame = arg12,
								tabTitle = arg4,
								menuTitle = arg10,
								title = arg13 or "",
								favKey = (arg4 or "") .. "|" .. (arg10 or "") .. "|" .. (arg13 or ""),
							}

							table.insert(tbl12, tbl20)
							favorites.Entries[tbl20.favKey] = tbl20

							local function fn13()
								for _, v19 in ipairs(favorites.List) do
									if v19 == tbl20.favKey then
										return true
									end
								end

								return false
							end

							local function fn14()
								local list = favorites.List
								local v19, v20, v21 = ipairs(list)
								local v22 = nil

								for k, v23 in v19, v20, v21 do
									if v23 == tbl20.favKey then
										v22 = k
										break
									else
										v22 = nil
									end
								end

								if v22 then
									table.remove(list, v22)
									tbl2.Notification:Notify({ Title = "Favorites", Description = "Removed " .. (tbl20.title or "") }, { Time = 2 })
								else
									table.insert(list, tbl20.favKey)
									tbl2.Notification:Notify({ Title = "Favorites", Description = "Pinned " .. (tbl20.title or "") }, { Time = 2 })
								end

								save:Save("_favorites", list)

								if favorites.Refresh then
									favorites.Refresh()
								end

								local Frame24 = create("Frame", {
									BackgroundColor3 = Color3.fromRGB(255, 200, 80),
									BackgroundTransparency = 0.4,
									Size = UDim2.new(1, 0, 1, 0),
									ZIndex = 40,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
								}, arg12)

								tbl:Tween(Frame24, { BackgroundTransparency = 1 }, 0.4, Enum.EasingStyle.Quad, nil, function()
									if Frame24 then
										Frame24:Destroy()
									end
								end)
							end

							local function fn15()
								local favStar = arg12:FindFirstChild("_FavStar")

								if favStar then
									favStar:Destroy()
								end

								local v19 = fn13()

								local TextButton14 = create("TextButton", {
									Name = "_FavStar",
									AnchorPoint = Vector2.new(1, 0.5),
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Position = UDim2.new(1, -6, 0.5, 0),
									Size = UDim2.new(0, 22, 0, 22),
									Font = Enum.Font.GothamBold,
									Text = v19 and "★" or "☆",
									TextColor3 = v19 and Color3.fromRGB(255, 210, 90) or Color3.fromRGB(210, 180, 255),
									TextSize = 16,
									ZIndex = 60,
									AutoButtonColor = false,
								}, arg12)

								TextButton14.MouseButton1Click:Connect(function()
									fn14()

									if TextButton14 and TextButton14.Parent then
										TextButton14:Destroy()
									end
								end)

								task.delay(3.5, function()
									if TextButton14 and TextButton14.Parent then
										TextButton14:Destroy()
									end
								end)
							end

							local n9 = 0
							local vector2 = Vector2.zero

							arg12.InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton2 then
									fn15()
									return
								end

								if input.UserInputType == Enum.UserInputType.Touch then
									local now = os.clock()
									local vector22 = Vector2.new(input.Position.X, input.Position.Y)

									if now - n9 <= 0.35 and (vector22 - vector2).Magnitude < 40 then
										n9 = 0
										fn14()
									else
										n9 = now
										vector2 = vector22
									end
								end
							end)
						end

						local tbl20 = {
							addButton = function(arg12, arg13, arg14, arg15, arg16)
								if not checkCondition(arg16) then
									return v4
								end

								arg14 = arg14 or function()
								end

								local tbl20 = {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									BorderSizePixel = 0,
									Size = UDim2.new(1, -25, 0, 32),
									AutoButtonColor = false,
									Text = "",
									ClipsDescendants = true,
								}

								local children5 = {}
								local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

								local TextLabel7 = create("TextLabel", {
									Name = "ButtonLabel",
									BackgroundTransparency = 1,
									Position = UDim2.new(0, 12, 0, 0),
									Size = UDim2.new(1, -36, 1, 0),
									Font = Enum.Font.GothamBold,
									Text = arg13,
									TextColor3 = Color3.fromRGB(210, 210, 220),
									TextXAlignment = Enum.TextXAlignment.Left,
									TextWrapped = false,
									TextScaled = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
									ZIndex = 3,
									Children = { MakeTextConstraint(15, 8) },
								})

								local tbl21 = {
									Name = "Arrow",
									BackgroundTransparency = 1,
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -12, 0.5, 0),
									Size = UDim2.new(0, 14, 0, 14),
									Font = Enum.Font.GothamBold,
									Text = "›",
									TextColor3 = Color3.fromRGB(192, 132, 252),
									TextScaled = true,
									ZIndex = 3,
								}

								children5[1] = UICorner5
								children5[2] = TextLabel7

								do
									local values = table.pack(create("TextLabel", tbl21))
									table.move(values, 1, values.n, 3, children5)
								end

								tbl20.Children = children5
								local TextButton14 = create("TextButton", tbl20, Frame20)
								fn12(TextButton14, arg13)
								local arrow = TextButton14:FindFirstChild("Arrow")
								local buttonLabel = TextButton14:FindFirstChild("ButtonLabel")
								RegisterTranslatable(buttonLabel, arg13)

								TextButton14.MouseEnter:Connect(function()
									tbl:Tween(TextButton14, { BackgroundTransparency = 0.28 }, 0.2, Enum.EasingStyle.Quint)
									tbl:Tween(buttonLabel, { TextColor3 = Color3.fromRGB(235, 235, 245) }, 0.2)
									tbl:Tween(arrow, { Position = UDim2.new(1, -9, 0.5, 0), TextColor3 = Color3.fromRGB(216, 180, 254) }, 0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
								end)

								TextButton14.MouseLeave:Connect(function()
									tbl:Tween(TextButton14, { BackgroundTransparency = 0.4 }, 0.25, Enum.EasingStyle.Quint)
									tbl:Tween(buttonLabel, { TextColor3 = Color3.fromRGB(210, 210, 220) }, 0.25)
									tbl:Tween(arrow, { Position = UDim2.new(1, -12, 0.5, 0), TextColor3 = Color3.fromRGB(192, 132, 252) }, 0.25, Enum.EasingStyle.Quint)
								end)

								TextButton14.MouseButton1Click:Connect(function()
									CircleClick(TextButton14, mouse.X, mouse.Y)
									tbl:Tween(arrow, { Position = UDim2.new(1, -6, 0.5, 0) }, 0.1, Enum.EasingStyle.Quart)

									task.delay(0.1, function()
										tbl:Tween(arrow, { Position = UDim2.new(1, -9, 0.5, 0) }, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
									end)

									arg14()
								end)

								RegisterKeyLocked(TextButton14, arg15)
							end,
							addToggle = function(arg12, arg13, enabled, arg14, arg15, arg16, arg17, arg18, arg19)
								if not checkCondition(arg18) then
									return v4
								end

								arg14 = arg14 or function()
								end

								enabled = enabled or false

								if arg17 then
									save:RegisterKey(arg17)
								end

								if arg17 then
									if (not arg15 or tbl5.HasKeyAccess()) and not IsFullLocked() then
										local v19 = save:Get(arg17, nil)

										if v19 ~= nil then
											enabled = v19
										end
									end
								end

								local v19, v20 = util.DescMetrics(arg16, Enum.Font.Gotham, 11, 150)
								local n9 = v20 > 0 and 28 + v20 or 32

								local TextButton14 = create("TextButton", {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									Size = UDim2.new(1, -25, 0, n9),
									Position = UDim2.new(0, 0, 0, 0),
									BorderSizePixel = 0,
									AutoButtonColor = false,
									Text = "",
									ClipsDescendants = true,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
								}, Frame20)

								fn12(TextButton14, arg13)

								local tbl20 = {
									BackgroundColor3 = Color3.fromRGB(15, 15, 15),
									Position = UDim2.new(1, -50, 0.5, -9),
									Size = UDim2.new(0, 36, 0, 18),
									BorderSizePixel = 0,
								}

								local children5 = {}
								local UICorner5 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

								local tbl21 = {
									Color = Color3.fromRGB(100, 100, 100),
									Transparency = 0.8,
									Thickness = 2,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}

								children5[1] = UICorner5

								do
									local values = table.pack(create("UIStroke", tbl21))
									table.move(values, 1, values.n, 2, children5)
								end

								tbl20.Children = children5
								local Frame24 = create("Frame", tbl20, TextButton14)

								local ImageLabel2 = create("ImageLabel", {
									AnchorPoint = Vector2.new(0, 0.5),
									Size = UDim2.fromOffset(14, 14),
									Position = enabled and UDim2.new(0, 19, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
									Image = "http://www.roblox.com/asset/?id=12266946128",
									ImageTransparency = enabled and 0 or 0.5,
									BackgroundTransparency = 1,
									ImageColor3 = Color3.fromRGB(255, 255, 255),
								}, Frame24)

								local UIGradient3 = create("UIGradient", { Color = ThemeColor("Lit"), Rotation = 90 }, ImageLabel2)
								UIGradient3.Enabled = enabled
								RegisterLitGradient(UIGradient3)

								local TextLabel7 = create("TextLabel", {
									BackgroundTransparency = 1,
									Position = UDim2.new(0, 10, 0, 4),
									Size = UDim2.new(1, -66, 0, 20),
									Font = Enum.Font.GothamBold,
									Text = arg13,
									TextColor3 = enabled and Color3.fromRGB(220, 220, 220) or Color3.fromRGB(180, 180, 180),
									TextXAlignment = Enum.TextXAlignment.Left,
									TextWrapped = false,
									TextScaled = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
									Children = { MakeTextConstraint(14, 8) },
								}, TextButton14)

								RegisterTranslatable(TextLabel7, arg13)

								if v20 > 0 then
									RegisterTranslatable(create("TextLabel", {
										Name = "DescLabel",
										BackgroundTransparency = 1,
										Position = UDim2.new(0, 10, 0, 22),
										Size = UDim2.new(1, -60, 0, v20),
										Font = Enum.Font.Gotham,
										Text = v19,
										TextColor3 = Color3.fromRGB(130, 130, 145),
										TextXAlignment = Enum.TextXAlignment.Left,
										TextYAlignment = Enum.TextYAlignment.Top,
										TextWrapped = true,
										TextSize = 11,
										ZIndex = 2,
									}, TextButton14), arg16)
								end

								if arg15 and not tbl5.HasKeyAccess() then
								end

								local visible2 = enabled
								local tbl22 = {}

								local function fn13()
									for _, v21 in ipairs(tbl22) do
										if v21.Optional then
											v21.Frame.Visible = visible2
										end

										if v21.SetInteractable then
											v21.SetInteractable(visible2)
										end
									end
								end

								local function fn14()
									tbl:Tween(ImageLabel2, {
										Position = visible2 and UDim2.new(0, 19, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
										ImageTransparency = visible2 and 0 or 0.5,
										ImageColor3 = Color3.fromRGB(255, 255, 255),
									}, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

									UIGradient3.Enabled = visible2
									tbl:Tween(TextLabel7, { TextColor3 = visible2 and Color3.fromRGB(230, 230, 230) or Color3.fromRGB(120, 120, 120) }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

									if arg17 and (not arg15 or tbl5.HasKeyAccess()) then
										save:ElementSave(arg17, visible2)
									end

									arg14(visible2)
									fn13()
								end

								if arg17 then
									save:RegisterControl(arg17, {
										Type = "Toggle",
										Default = enabled,
										Set = function(arg20, arg21)
											visible2 = arg20 == true

											tbl:Tween(ImageLabel2, {
												Position = visible2 and UDim2.new(0, 19, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
												ImageTransparency = visible2 and 0 or 0.5,
												ImageColor3 = Color3.fromRGB(255, 255, 255),
											}, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

											UIGradient3.Enabled = visible2
											tbl:Tween(TextLabel7, { TextColor3 = visible2 and Color3.fromRGB(230, 230, 230) or Color3.fromRGB(120, 120, 120) }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
											fn13()

											if arg21 ~= false then
												pcall(arg14, visible2)
											end
										end,
										Get = function()
											return visible2
										end,
									})
								end

								fn14()

								TextButton14.Activated:Connect(function()
									CircleClick(TextButton14, mouse.X, mouse.Y)
									visible2 = not visible2
									fn14()
								end)

								if arg15 and arg17 then
									table.insert(tbl6, {
										saveKey = arg17,
										UpdateFn = function()
											if tbl5.HasKeyAccess() then
												local v21 = save:Get(arg17, nil)
												visible2 = v21 ~= nil and v21 or enabled
												fn14()
											end
										end,
									})
								end

								RegisterKeyLocked(TextButton14, arg15)

								if type(arg19) == "table" then
									arg17 = arg17 or arg13:lower():gsub("%s+", "")

									for i, v21 in ipairs(arg19) do
										local title2 = v21.Title or v21[1] or "Sub Toggle"
										local default = v21.Default or v21[2] or false

										local callback = v21.Callback or v21[3] or function()
										end

										local saveKey = v21.SaveKey or v21.savekey or arg17 .. "_sub" .. i
										local flag13 = v21.Optional == true
										save:RegisterKey(saveKey)

										if (not arg15 or tbl5.HasKeyAccess()) and not IsFullLocked() then
											local v22 = save:Get(saveKey, nil)

											if v22 ~= nil then
												default = v22
											end
										end

										local TextButton15 = create("TextButton", {
											BackgroundColor3 = ThemeColor("Primary"),
											BackgroundTransparency = 0.48,
											Size = UDim2.new(1, -38, 0, 28),
											BorderSizePixel = 0,
											AutoButtonColor = false,
											Text = "",
											Active = visible2,
											Visible = not flag13 or visible2,
											ClipsDescendants = true,
											Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
										}, Frame20)

										fn12(TextButton15, title2 .. " (" .. arg13 .. ")")

										local tbl23 = {
											BackgroundColor3 = Color3.fromRGB(12, 12, 12),
											Position = UDim2.new(1, -40, 0.5, -8),
											Size = UDim2.new(0, 30, 0, 16),
											BorderSizePixel = 0,
										}

										local children6 = {}
										local UICorner6 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

										local tbl24 = {
											Color = Color3.fromRGB(100, 100, 100),
											Transparency = 0.8,
											Thickness = 2,
											ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
										}

										children6[1] = UICorner6

										do
											local values = table.pack(create("UIStroke", tbl24))
											table.move(values, 1, values.n, 2, children6)
										end

										tbl23.Children = children6
										local Frame25 = create("Frame", tbl23, TextButton15)
										local uiStroke3 = Frame25.UIStroke

										local ImageLabel3 = create("ImageLabel", {
											AnchorPoint = Vector2.new(0, 0.5),
											Size = UDim2.fromOffset(12, 12),
											Position = default and UDim2.new(0, 16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
											Image = "http://www.roblox.com/asset/?id=12266946128",
											ImageTransparency = default and 0 or 0.5,
											BackgroundTransparency = 1,
											ImageColor3 = Color3.fromRGB(255, 255, 255),
										}, Frame25)

										local UIGradient4 = create("UIGradient", { Color = ThemeColor("Lit"), Rotation = 90 }, ImageLabel3)
										UIGradient4.Enabled = default
										RegisterLitGradient(UIGradient4)

										local TextLabel8 = create("TextLabel", {
											BackgroundTransparency = 1,
											Position = UDim2.new(0, 12, 0, 0),
											Size = UDim2.new(1, -54, 1, 0),
											Font = Enum.Font.GothamBold,
											Text = title2,
											TextColor3 = default and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150),
											TextXAlignment = Enum.TextXAlignment.Left,
											TextWrapped = false,
											TextScaled = true,
											TextTruncate = Enum.TextTruncate.AtEnd,
											Children = { MakeTextConstraint(13, 8) },
										}, TextButton15)

										RegisterTranslatable(TextLabel8, title2)
										local enabled2 = default

										local function fn15()
											tbl:Tween(ImageLabel3, {
												Position = enabled2 and UDim2.new(0, 16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
												ImageTransparency = enabled2 and 0 or 0.5,
											}, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

											UIGradient4.Enabled = enabled2
											tbl:Tween(TextLabel8, { TextColor3 = enabled2 and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150) }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
											tbl:Tween(TextButton15, { BackgroundTransparency = enabled2 and 0.35 or 0.48 }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

											if not arg15 or tbl5.HasKeyAccess() then
												save:ElementSave(saveKey, enabled2)
											end

											callback(enabled2)
										end

										if saveKey then
											save:RegisterControl(saveKey, {
												Type = "SubToggle",
												Default = v21.Default or v21[2] or false,
												Set = function(arg20, arg21)
													enabled2 = arg20 == true

													tbl:Tween(ImageLabel3, {
														Position = enabled2 and UDim2.new(0, 16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
														ImageTransparency = enabled2 and 0 or 0.5,
													}, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

													UIGradient4.Enabled = enabled2
													tbl:Tween(TextLabel8, { TextColor3 = enabled2 and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150) }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
													tbl:Tween(TextButton15, { BackgroundTransparency = enabled2 and 0.35 or 0.48 }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

													if arg21 ~= false then
														pcall(callback, enabled2)
													end
												end,
												Get = function()
													return enabled2
												end,
											})
										end

										local function fn16(active)
											TextButton15.Active = active
											tbl:Tween(TextButton15, { BackgroundTransparency = active and (enabled2 and 0.35 or 0.48) or 0.75 }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

											tbl:Tween(TextLabel8, {
												TextTransparency = active and 0 or 0.6,
												TextColor3 = active and (enabled2 and Color3.fromRGB(205, 205, 210) or Color3.fromRGB(145, 145, 150)) or Color3.fromRGB(100, 100, 105),
											}, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

											tbl:Tween(Frame25, { BackgroundTransparency = active and 0 or 0.65 }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
											tbl:Tween(ImageLabel3, { ImageTransparency = active and (enabled2 and 0 or 0.5) or 0.75 }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
											tbl:Tween(uiStroke3, { Transparency = active and 0.8 or 0.9 }, 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
										end

										TextButton15.Activated:Connect(function()
											if not visible2 then
												return
											end
											CircleClick(TextButton15, mouse.X, mouse.Y)
											enabled2 = not enabled2
											fn15()
										end)

										fn15()
										fn16(visible2)
										table.insert(tbl22, { Frame = TextButton15, Optional = flag13, SetInteractable = fn16 })
									end
								end

								return {
									Update = function(arg20)
										visible2 = arg20
										fn14()
									end,
									Get = function()
										return visible2
									end,
									Frame = TextButton14,
								}
							end,
							addSlider = function(arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21)
								if not checkCondition(arg21) then
									return v4
								end

								arg17 = arg17 or function()
								end

								arg14 = arg14 or 0
								arg15 = arg15 or 100
								arg19 = arg19 or 1

								if arg20 then
									save:RegisterKey(arg20)
								end

								if arg20 then
									if not arg18 or tbl5.HasKeyAccess() then
										local v19 = save:Get(arg20, nil)

										if v19 ~= nil then
											arg16 = v19
										end
									end
								end

								local n9 = math.clamp(arg16 or arg14, arg14, arg15)
								local str4 = "%." .. (select(2, tostring(arg19):find("%.")) and #tostring(arg19) - tostring(arg19):find("%.") or 0) .. "f"

								local function fn13(arg22)
									return math.floor(arg22 / arg19 + 0.5) * arg19
								end

								local Frame24 = create("Frame", {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									Size = UDim2.new(1, -25, 0, 54),
									Position = UDim2.new(0, 0, 0, 0),
									BorderSizePixel = 0,
									ClipsDescendants = true,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
								}, Frame20)

								local UIStroke = create("UIStroke", {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 1,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}, Frame24)

								RegisterTranslatable(create("TextLabel", {
									BackgroundTransparency = 1,
									Size = UDim2.new(1, -70, 0, 18),
									Position = UDim2.new(0, 12, 0, 8),
									Font = Enum.Font.GothamBold,
									Text = arg13,
									TextSize = 13,
									TextColor3 = Color3.fromRGB(220, 220, 230),
									TextXAlignment = Enum.TextXAlignment.Left,
									TextWrapped = false,
									TextScaled = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
									ZIndex = 3,
									Children = { MakeTextConstraint(15, 8) },
								}, Frame24), arg13)

								fn12(Frame24, arg13)

								local tbl20 = {
									BackgroundColor3 = Color3.fromRGB(12, 12, 18),
									BackgroundTransparency = 0.2,
									Position = UDim2.new(1, -56, 0, 6),
									Size = UDim2.new(0, 46, 0, 20),
									Font = Enum.Font.GothamBold,
									Text = string.format(str4, n9),
									TextSize = 12,
									TextColor3 = Color3.fromRGB(192, 132, 252),
									TextXAlignment = Enum.TextXAlignment.Center,
									TextTruncate = Enum.TextTruncate.AtEnd,
									ClipsDescendants = true,
									ClearTextOnFocus = false,
									ZIndex = 3,
								}

								local children5 = {}
								local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

								local tbl21 = {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 0.72,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}

								children5[1] = UICorner5

								do
									local values = table.pack(create("UIStroke", tbl21))
									table.move(values, 1, values.n, 2, children5)
								end

								tbl20.Children = children5
								local TextBox4 = create("TextBox", tbl20, Frame24)

								local tbl22 = {
									BackgroundColor3 = Color3.fromRGB(10, 10, 16),
									BackgroundTransparency = 0.1,
									Position = UDim2.new(0, 12, 0, 34),
									Size = UDim2.new(1, -24, 0, 10),
									ZIndex = 2,
								}

								local children6 = {}
								local UICorner6 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

								local tbl23 = {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 0.82,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}

								children6[1] = UICorner6

								do
									local values = table.pack(create("UIStroke", tbl23))
									table.move(values, 1, values.n, 2, children6)
								end

								tbl22.Children = children6
								local Frame25 = create("Frame", tbl22, Frame24)
								local new = ColorSequenceKeypoint.new
								local color = Color3.fromRGB

								local UIGradient3 = create("UIGradient", {
									Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 92, 246)), new(1, color(216, 180, 254)) }),
									Rotation = 0,
								})

								RegisterButtonGradient(UIGradient3)

								local Frame26 = create("Frame", {
									BackgroundTransparency = 0,
									Size = UDim2.new((n9 - arg14) / (arg15 - arg14), 0, 1, 0),
									ZIndex = 3,
									Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }), UIGradient3 },
								}, Frame25)

								local tbl24 = {
									Name = "Thumb",
									BackgroundColor3 = Color3.fromRGB(255, 255, 255),
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.new((n9 - arg14) / (arg15 - arg14), 0, 0.5, 0),
									Size = UDim2.new(0, 13, 0, 13),
									ZIndex = 5,
								}

								local children7 = {}
								local UICorner7 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

								local UIStroke2 = create("UIStroke", {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 0.3,
									Thickness = 1.5,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								})

								local tbl25 = {
									BackgroundColor3 = Color3.fromRGB(192, 132, 252),
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.new(0.5, 0, 0.5, 0),
									Size = UDim2.new(0, 5, 0, 5),
									ZIndex = 6,
									Children = { create("UICorner", { CornerRadius = UDim.new(1, 0) }) },
								}

								children7[1] = UICorner7
								children7[2] = UIStroke2

								do
									local values = table.pack(create("Frame", tbl25))
									table.move(values, 1, values.n, 3, children7)
								end

								tbl24.Children = children7
								local Frame27 = create("Frame", tbl24, Frame25)
								local flag13 = false

								local function fn14(arg22)
									local n10 = (arg22 - arg14) / (arg15 - arg14)
									local out = Enum.EasingDirection.Out
									local quint = Enum.EasingStyle.Quint
									Frame26:TweenSize(UDim2.new(n10, 0, 1, 0), out, quint, 0.15, true)
									tbl:Tween(Frame27, { Position = UDim2.new(n10, 0, 0.5, 0) }, 0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
									TextBox4.Text = string.format(str4, arg22)

									if arg20 and (not arg18 or tbl5.HasKeyAccess()) then
										save:ElementSave(arg20, arg22)
									end

									arg17(arg22)
								end

								local function fn15(arg22)
									fn14(fn13(arg14 + (arg15 - arg14) * math.clamp((arg22 - Frame25.AbsolutePosition.X) / Frame25.AbsoluteSize.X, 0, 1)))
								end

								fn14(n9)
								local v19 = nil

								local function fn16(input)
									if v19 ~= nil then
										return
									end

									if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
										flag13 = true
										v19 = input
										fn15(input.Position.X)
										tbl:Tween(UIStroke, { Transparency = 0.45 }, 0.15)
										tbl:Tween(Frame27, { Size = UDim2.new(0, 15, 0, 15) }, 0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
									end
								end

								Frame25.InputBegan:Connect(fn16)
								Frame27.InputBegan:Connect(fn16)

								Frame24.InputBegan:Connect(function(input)
									if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
										if input.Position.Y - Frame24.AbsolutePosition.Y >= 28 then
											fn16(input)
										end
									end
								end)

								UserInputService.InputChanged:Connect(function(input)
									if not flag13 or not v19 then
										return
									end

									if input == v19 or v19.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputType == Enum.UserInputType.MouseMovement then
										fn15(input.Position.X)
									end
								end)

								UserInputService.InputEnded:Connect(function(input)
									if input == v19 then
										flag13 = false
										v19 = nil
										tbl:Tween(UIStroke, { Transparency = 1 }, 0.3)
										tbl:Tween(Frame27, { Size = UDim2.new(0, 13, 0, 13) }, 0.2, Enum.EasingStyle.Quint)
									end
								end)

								TextBox4.FocusLost:Connect(function()
									local num = tonumber(TextBox4.Text)

									if num then
										local v20 = fn14
										local v21 = table.pack(fn13(math.clamp(num, arg14, arg15)))
										v20(table.unpack(v21, 1, v21.n))
									else
										fn14(n9)
									end
								end)

								if arg20 then
									save:RegisterControl(arg20, {
										Type = "Slider",
										Default = n9,
										Set = function(arg22, arg23)
											local n10 = math.clamp(tonumber(arg22) or n9, arg14, arg15)
											local n11 = (n10 - arg14) / (arg15 - arg14)
											local out = Enum.EasingDirection.Out
											local quint = Enum.EasingStyle.Quint
											Frame26:TweenSize(UDim2.new(n11, 0, 1, 0), out, quint, 0.15, true)
											tbl:Tween(Frame27, { Position = UDim2.new(n11, 0, 0.5, 0) }, 0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
											TextBox4.Text = string.format(str4, n10)

											if arg23 ~= false then
												pcall(arg17, n10)
											end
										end,
										Get = function()
											return tonumber(TextBox4.Text) or n9
										end,
									})
								end

								if arg18 and arg20 then
									table.insert(tbl6, {
										saveKey = arg20,
										UpdateFn = function()
											if tbl5.HasKeyAccess() then
												local v20 = save:Get(arg20, nil)
												fn14(math.clamp(v20 ~= nil and v20 or n9, arg14, arg15))
											else
												fn14(n9)
											end
										end,
									})
								end

								RegisterKeyLocked(Frame24, arg18)
							end,
							addDropdown = function(arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20)
								if not checkCondition(arg20) then
									return v4
								end
								arg14 = arg14 or 1
								arg15 = arg15 or {}

								arg16 = arg16 or function()
								end

								if arg19 then
									save:RegisterKey(arg19)
								end

								if arg19 then
									if not arg17 or tbl5.HasKeyAccess() then
										local v19 = save:Get(arg19, nil)

										if v19 ~= nil then
											arg14 = v19
										end
									end
								end

								local tbl20 = {}
								local tbl21 = {}

								local function fn13(arg21)
									if not table.find(tbl20, arg21) then
										table.insert(tbl20, arg21)
									end
								end

								local function fn14(arg21)
									for i, v19 in ipairs(tbl20) do
										if v19 == arg21 then
											table.remove(tbl20, i)
											return
										end
									end
								end

								local function fn15()
									local tbl22 = {}

									for _, v19 in ipairs(tbl20) do
										tbl22[#tbl22 + 1] = arg15[v19]
									end

									return tbl22
								end

								local function fn16(arg21, arg22)
									local n9 = arg22 or 2
									if #arg21 == 0 then
										return "None"
									end

									if #arg21 <= n9 then
										return table.concat(arg21, ", ")
									end
									local tbl22 = {}

									for i = 1, n9 do
										tbl22[i] = arg21[i]
									end

									return table.concat(tbl22, ", ") .. "  +" .. #arg21 - n9
								end

								local function fn17()
									local function fn18(arg21)
										if #arg15 < 1 then
											return
										end
										local flag13 = type(arg21) == "number" and math.clamp(arg21, 1, #arg15) or type(arg21) == "string" and table.find(arg15, arg21)

										if flag13 then
											fn13(flag13)
										end
									end

									if arg18 then
										if typeof(arg14) == "table" then
											for _, v19 in ipairs(arg14) do
												fn18(v19)
											end
										else
											fn18(arg14)
										end

										if #tbl20 == 0 and #arg15 > 0 then
											fn13(1)
										end
									else
										fn18(arg14)

										if #tbl20 == 0 and #arg15 > 0 then
											fn13(1)
										end
									end
								end

								fn17()

								local Frame24 = create("Frame", {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									BorderSizePixel = 0,
									Size = UDim2.new(1, -25, 0, 32),
									ClipsDescendants = true,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
								}, Frame20)

								local UIStroke = create("UIStroke", {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 1,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}, Frame24)

								fn12(Frame24, arg13)

								local TextLabel7 = create("TextLabel", {
									BackgroundTransparency = 1,
									Position = UDim2.new(0, 12, 0, 0),
									Size = UDim2.new(1, -95, 1, 0),
									Font = Enum.Font.GothamBold,
									TextColor3 = Color3.fromRGB(220, 220, 230),
									TextXAlignment = Enum.TextXAlignment.Left,
									Text = arg13,
									TextWrapped = false,
									TextScaled = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
									ZIndex = 3,
									Children = { MakeTextConstraint(15, 8) },
								}, Frame24)

								local tbl22 = {
									BackgroundColor3 = Color3.fromRGB(12, 12, 18),
									BackgroundTransparency = 0.15,
									BorderSizePixel = 0,
									Position = UDim2.new(1, -90, 0.5, -11),
									Size = UDim2.new(0, 68, 0, 22),
									ZIndex = 3,
								}

								local children5 = {}
								local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

								local tbl23 = {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 0.75,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}

								children5[1] = UICorner5

								do
									local values = table.pack(create("UIStroke", tbl23))
									table.move(values, 1, values.n, 2, children5)
								end

								tbl22.Children = children5
								local Frame25 = create("Frame", tbl22, Frame24)

								local TextLabel8 = create("TextLabel", {
									BackgroundTransparency = 1,
									Size = UDim2.new(1, -8, 1, 0),
									Position = UDim2.new(0, 6, 0, 0),
									Font = Enum.Font.GothamBold,
									TextColor3 = Color3.fromRGB(192, 132, 252),
									TextScaled = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
									TextXAlignment = Enum.TextXAlignment.Left,
									Text = arg18 and fn16(fn15(), 2) or arg15[tbl20[1]] or "None",
									ZIndex = 4,
									Children = { MakeTextConstraint(13, 10) },
								}, Frame25)

								local ImageButton4 = create("ImageButton", {
									BackgroundTransparency = 1,
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -8, 0.5, 0),
									Size = UDim2.new(0, 16, 0, 16),
									Image = "rbxassetid://95968409641902",
									ImageColor3 = Color3.fromRGB(192, 132, 252),
									ZIndex = 3,
								}, Frame24)

								local Frame26 = create("Frame", {
									Visible = false,
									Active = true,
									BackgroundTransparency = 0.6,
									BackgroundColor3 = Color3.fromRGB(0, 0, 0),
									Size = UDim2.new(1, 0, 1, 0),
									ZIndex = 9,
								}, Frame3)

								local tbl24 = {
									Visible = false,
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.new(0.5, 0, 0.5, 0),
									BackgroundTransparency = 0.18,
									Size = UDim2.new(0, 250, 0, 0),
									BackgroundColor3 = Color3.fromRGB(14, 14, 20),
									ZIndex = 10,
								}

								local children6 = {}
								local UICorner6 = create("UICorner", { CornerRadius = UDim.new(0, 10) })
								local tbl25 = { Color = Color3.fromRGB(192, 132, 252), Transparency = 0.72, Thickness = 1 }
								children6[1] = UICorner6

								do
									local values = table.pack(create("UIStroke", tbl25))
									table.move(values, 1, values.n, 2, children6)
								end

								tbl24.Children = children6
								local Frame27 = create("Frame", tbl24, Frame3)

								create("TextLabel", {
									Size = UDim2.new(1, -40, 0, 20),
									Position = UDim2.new(0, 12, 0, 8),
									BackgroundTransparency = 1,
									Text = arg13,
									Font = Enum.Font.GothamBold,
									TextSize = 13,
									TextColor3 = Color3.fromRGB(220, 220, 230),
									TextXAlignment = Enum.TextXAlignment.Left,
									ZIndex = 11,
								}, Frame27)

								local TextButton14 = create("TextButton", {
									Text = "×",
									TextColor3 = Color3.fromRGB(192, 132, 252),
									TextSize = 18,
									Font = Enum.Font.GothamBold,
									Size = UDim2.new(0, 22, 0, 22),
									Position = UDim2.new(1, -28, 0, 5),
									BackgroundColor3 = Color3.fromRGB(192, 132, 252),
									BackgroundTransparency = 0.88,
									AutoButtonColor = false,
									ZIndex = 12,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 5) }) },
								}, Frame27)

								local tbl26 = {
									Text = "",
									PlaceholderText = "Search options...",
									PlaceholderColor3 = Color3.fromRGB(120, 100, 150),
									Size = UDim2.new(1, -16, 0, 26),
									Position = UDim2.new(0, 8, 0, 34),
									TextSize = 12,
									Font = Enum.Font.Gotham,
									TextColor3 = Color3.fromRGB(220, 220, 230),
									TextXAlignment = Enum.TextXAlignment.Left,
									BackgroundColor3 = Color3.fromRGB(10, 10, 16),
									BackgroundTransparency = 0.1,
									ClearTextOnFocus = true,
									ZIndex = 11,
								}

								local children7 = {}
								local UICorner7 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

								local UIStroke2 = create("UIStroke", {
									Color = Color3.fromRGB(192, 132, 252),
									Transparency = 0.78,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								})

								local tbl27 = { PaddingLeft = UDim.new(0, 8) }
								children7[1] = UICorner7
								children7[2] = UIStroke2

								do
									local values = table.pack(create("UIPadding", tbl27))
									table.move(values, 1, values.n, 3, children7)
								end

								tbl26.Children = children7
								local TextBox4 = create("TextBox", tbl26, Frame27)

								local tbl28 = {
									Size = UDim2.new(1, -8, 1, -70),
									Position = UDim2.new(0, 4, 0, 66),
									CanvasSize = UDim2.new(0, 0, 0, 0),
									ScrollBarThickness = 0,
									ScrollBarImageTransparency = 1,
									AutomaticCanvasSize = Enum.AutomaticSize.Y,
									ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
									BackgroundTransparency = 1,
									Active = true,
									ZIndex = 11,
								}

								local children8 = {}
								local UIListLayout6 = create("UIListLayout", { Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder })

								local tbl29 = {
									PaddingLeft = UDim.new(0, 2),
									PaddingRight = UDim.new(0, 2),
									PaddingTop = UDim.new(0, 2),
									PaddingBottom = UDim.new(0, 4),
								}

								children8[1] = UIListLayout6

								do
									local values = table.pack(create("UIPadding", tbl29))
									table.move(values, 1, values.n, 2, children8)
								end

								tbl28.Children = children8
								local ScrollingFrame6 = create("ScrollingFrame", tbl28, Frame27)
								local udim2 = UDim2.new(0, 250, 0, 230)

								local function fn18(arg21, arg22)
									local absolutePosition = arg21.AbsolutePosition
									local absolutePosition2 = arg22.AbsolutePosition
									return UDim2.new(0, absolutePosition.X - absolutePosition2.X, 0, absolutePosition.Y - absolutePosition2.Y)
								end

								local function fn19()
									local absoluteSize = ImageButton4.AbsoluteSize
									tbl:Tween(Frame27, { Position = fn18(ImageButton4, Frame3), Size = UDim2.new(0, absoluteSize.X, 0, absoluteSize.Y) }, 0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
									tbl:Tween(ImageButton4, { Rotation = 0 }, 0.25, Enum.EasingStyle.Quint)
									tbl:Tween(UIStroke, { Transparency = 1 }, 0.3)

									task.delay(0.25, function()
										Frame27.Visible = false
										Frame26.Visible = false
									end)
								end

								local function fn20(arg21)
									for _, child in ipairs(ScrollingFrame6:GetChildren()) do
										if child:IsA("Frame") then
											child:Destroy()
										end
									end

									tbl21 = {}

									for i, v19 in ipairs(arg15) do
										if not arg21 or arg21 == "" or string.find(string.lower(v19), string.lower(arg21), 1, true) then
											table.insert(tbl21, { index = i, value = v19 })
										end
									end

									for i, v19 in ipairs(tbl21) do
										local index = v19.index
										local value = v19.value
										local flag13 = table.find(tbl20, index) ~= nil

										local tbl30 = {
											Name = "Item_" .. index,
											BackgroundColor3 = Color3.fromRGB(22, 22, 32),
											BackgroundTransparency = flag13 and 0.3 or 0.55,
											BorderSizePixel = 0,
											Size = UDim2.new(1, 0, 0, 30),
											LayoutOrder = i,
											ZIndex = 12,
										}

										local children9 = {}
										local UICorner8 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

										local tbl31 = {
											Color = Color3.fromRGB(192, 132, 252),
											Transparency = flag13 and 0.55 or 0.9,
											Thickness = 1,
											ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
										}

										local v20 = table.pack(create("UIStroke", tbl31))
										children9[1] = UICorner8

										do
											local values = table.pack(table.unpack(v20, 1, v20.n))
											table.move(values, 1, values.n, 2, children9)
										end

										tbl30.Children = children9
										local Frame28 = create("Frame", tbl30, ScrollingFrame6)
										local tbl32 = { BackgroundColor3 = Color3.fromRGB(192, 132, 252), BackgroundTransparency = flag13 and 0 or 1 }
										tbl32.AnchorPoint = Vector2.new(0, 0.5)
										tbl32.Position = UDim2.new(0, 6, 0.5, 0)
										tbl32.Size = UDim2.new(0, 3, 0, 14)
										tbl32.ZIndex = 13
										local children10 = {}
										local UICorner9 = create("UICorner", { CornerRadius = UDim.new(1, 0) })

										local tbl33 = {
											Color = ColorSequence.new({
												ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 180, 254)),
												ColorSequenceKeypoint.new(1, Color3.fromRGB(139, 92, 246)),
											}),
											Rotation = 90,
										}

										children10[1] = UICorner9

										do
											local values = table.pack(create("UIGradient", tbl33))
											table.move(values, 1, values.n, 2, children10)
										end

										tbl32.Children = children10
										local Frame29 = create("Frame", tbl32, Frame28)

										local TextLabel9 = create("TextLabel", {
											BackgroundTransparency = 1,
											Position = UDim2.new(0, 16, 0, 0),
											Size = UDim2.new(1, -24, 1, 0),
											Font = Enum.Font.GothamBold,
											Text = value,
											TextSize = 12,
											TextColor3 = flag13 and Color3.fromRGB(216, 180, 254) or Color3.fromRGB(190, 190, 205),
											TextXAlignment = Enum.TextXAlignment.Left,
											ZIndex = 13,
										}, Frame28)

										local TextLabel10 = nil

										if arg18 then
											TextLabel10 = create("TextLabel", {
												BackgroundTransparency = 1,
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(1, -8, 0.5, 0),
												Size = UDim2.new(0, 14, 0, 14),
												Font = Enum.Font.GothamBold,
												Text = flag13 and "★" or "",
												TextSize = 11,
												TextColor3 = Color3.fromRGB(192, 132, 252),
												ZIndex = 13,
											}, Frame28)
										end

										local TextButton15 = create("TextButton", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "", ZIndex = 14 }, Frame28)

										TextButton15.MouseEnter:Connect(function()
											tbl:Tween(Frame28, { BackgroundTransparency = 0.35 }, 0.15)
											tbl:Tween(TextLabel9, { TextColor3 = Color3.fromRGB(230, 220, 255) }, 0.15)
										end)

										TextButton15.MouseLeave:Connect(function()
											local flag14 = table.find(tbl20, index) ~= nil
											tbl:Tween(Frame28, { BackgroundTransparency = flag14 and 0.3 or 0.55 }, 0.15)
											tbl:Tween(TextLabel9, { TextColor3 = flag14 and Color3.fromRGB(216, 180, 254) or Color3.fromRGB(190, 190, 205) }, 0.15)
										end)

										TextButton15.MouseButton1Click:Connect(function()
											CircleClick(Frame28, mouse.X, mouse.Y)

											if arg18 then
												local flag14

												if table.find(tbl20, index) then
													fn14(index)
													flag14 = false
												else
													fn13(index)
													flag14 = true
												end

												local v21 = tbl
												local tween2 = v21.Tween
												local tbl34 = {}

												if flag14 then
												end

												tbl34.BackgroundTransparency = 1
												tween2(v21, Frame29, tbl34, 0.2)
												tbl:Tween(Frame28, { BackgroundTransparency = flag14 and 0.3 or 0.55 }, 0.2)
												tbl:Tween(TextLabel9, { TextColor3 = flag14 and Color3.fromRGB(216, 180, 254) or Color3.fromRGB(190, 190, 205) }, 0.2)

												if TextLabel10 then
													TextLabel10.Text = flag14 and "✓" or ""
												end

												local v22 = fn15()
												TextLabel8.Text = fn16(v22, 2)

												if arg19 and (not arg17 or tbl5.HasKeyAccess()) then
													save:ElementSave(arg19, v22)
												end

												arg16(v22)
											else
												table.clear(tbl20)
												table.insert(tbl20, index)
												TextLabel8.Text = arg15[index]

												if arg19 and (not arg17 or tbl5.HasKeyAccess()) then
													save:ElementSave(arg19, arg15[index])
												end

												arg16(arg15[index])
												fn19()
											end
										end)
									end

									if arg18 then
										TextLabel8.Text = fn16(fn15(), 2)
									else
										TextLabel8.Text = arg15[tbl20[1]] or "None"
									end
								end

								local function fn21()
									TextBox4.Text = ""
									fn20()
									local absoluteSize = ImageButton4.AbsoluteSize
									Frame27.Position = fn18(ImageButton4, Frame3)
									Frame27.Size = UDim2.new(0, absoluteSize.X, 0, absoluteSize.Y)
									Frame27.Visible = true
									Frame26.Visible = true
									tbl:Tween(Frame27, { Position = UDim2.new(0.5, 0, 0.5, 0), Size = udim2 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
									tbl:Tween(ImageButton4, { Rotation = 180 }, 0.25, Enum.EasingStyle.Quint)
									tbl:Tween(UIStroke, { Transparency = 0.4 }, 0.2)
								end

								TextBox4:GetPropertyChangedSignal("Text"):Connect(function()
									fn20(TextBox4.Text)
								end)

								ImageButton4.MouseButton1Click:Connect(fn21)
								TextButton14.MouseButton1Click:Connect(fn19)

								Frame26.InputBegan:Connect(function(input)
									if input.UserInputType == Enum.UserInputType.MouseButton1 then
										fn19()
									end
								end)

								arg16(arg18 and fn15() or arg15[tbl20[1]] or "None")

								if arg17 and arg19 then
									table.insert(tbl6, {
										saveKey = arg19,
										UpdateFn = function()
											table.clear(tbl20)

											local function fn22(arg21)
												if #arg15 < 1 then
													return
												end
												local flag13 = type(arg21) == "number" and math.clamp(arg21, 1, #arg15) or type(arg21) == "string" and table.find(arg15, arg21)

												if flag13 then
													fn13(flag13)
												end
											end

											if tbl5.HasKeyAccess() then
												local v19 = save:Get(arg19, nil)

												if arg18 then
													if typeof(v19) == "table" then
														for _, v20 in ipairs(v19) do
															fn22(v20)
														end
													end

													if #tbl20 == 0 and #arg15 > 0 then
														fn13(1)
													end

													TextLabel8.Text = fn16(fn15(), 2)
													arg16(fn15())
												else
													local v20 = v19 and table.find(arg15, v19)

													if v20 then
														fn13(v20)
													else
														fn22(arg14)
													end

													if #tbl20 == 0 and #arg15 > 0 then
														fn13(1)
													end

													TextLabel8.Text = arg15[tbl20[1]] or "None"
													arg16(arg15[tbl20[1]] or "None")
												end
											elseif arg18 then
												if typeof(arg14) == "table" then
													for _, v19 in ipairs(arg14) do
														fn22(v19)
													end
												else
													fn22(arg14)
												end

												if #tbl20 == 0 and #arg15 > 0 then
													fn13(1)
												end

												TextLabel8.Text = fn16(fn15(), 2)
												arg16(fn15())
											else
												fn22(arg14)

												if #tbl20 == 0 and #arg15 > 0 then
													fn13(1)
												end

												TextLabel8.Text = arg15[tbl20[1]] or "None"
												arg16(arg15[tbl20[1]] or "None")
											end
										end,
									})
								end

								if arg19 then
									save:RegisterControl(arg19, {
										Type = "Dropdown",
										Default = arg14,
										Set = function(arg21, arg22)
											if arg18 then
												table.clear(tbl20)

												if type(arg21) == "table" then
													for _, v19 in ipairs(arg21) do
														local v20 = table.find(arg15, v19)

														if v20 then
															fn13(v20)
														end
													end
												end

												TextLabel8.Text = fn16(fn15(), 2)

												if arg22 ~= false then
													pcall(arg16, fn15())
												end
											else
												table.clear(tbl20)
												local flag13 = type(arg21) == "string" and table.find(arg15, arg21) or type(arg21) == "number" and arg21

												if flag13 and arg15[flag13] then
													table.insert(tbl20, flag13)
													TextLabel8.Text = arg15[flag13]

													if arg22 ~= false then
														pcall(arg16, arg15[flag13])
													end
												end
											end
										end,
										Get = function()
											return arg18 and fn15() or arg15[tbl20[1]] or "None"
										end,
									})
								end

								RegisterKeyLocked(Frame24, arg17)
								RegisterTranslatable(TextLabel7, arg13)

								return {
									Clear = function()
										for _, child in ipairs(ScrollingFrame6:GetChildren()) do
											if child:IsA("Frame") then
												child:Destroy()
											end
										end

										tbl20 = {}
										tbl21 = {}
										TextLabel8.Text = "None"
										arg16(arg18 and {} or "None")
									end,
									Refresh = function(arg21, arg22)
										arg15 = arg22 or {}
										local v19 = fn15()
										table.clear(tbl20)

										local function fn22(arg23)
											if arg23 then
												local v20 = table.find(arg15, arg23)

												if v20 then
													fn13(v20)
												end
											end
										end

										if arg18 then
											for _, v20 in ipairs(v19) do
												fn22(v20)
											end

											if #tbl20 == 0 and #arg15 > 0 then
												fn13(1)
											end
										else
											fn22(v19[1])

											if #tbl20 == 0 and #arg15 > 0 then
												fn13(1)
											end
										end

										TextLabel8.Text = arg18 and fn16(fn15(), 2) or arg15[tbl20[1]] or "None"
										fn20(TextBox4.Text)
									end,
								}
							end,
							addTextbox = function(arg12, arg13, arg14, arg15, arg16, arg17)
								if not checkCondition(arg17) then
									return v4
								end

								arg14 = arg14 or function()
								end

								if arg16 then
									save:RegisterKey(arg16)
								end

								local str4 = arg16 and save:Get(arg16, "") or ""

								local Frame24 = create("Frame", {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									BorderSizePixel = 0,
									Size = UDim2.new(1, -25, 0, 96),
									ClipsDescendants = true,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 8) }) },
								}, Frame20)

								fn12(Frame24, arg13 or "Textbox")

								create("TextLabel", {
									BackgroundTransparency = 1,
									Position = UDim2.new(0, 10, 0, 6),
									Size = UDim2.new(1, -20, 0, 20),
									Font = Enum.Font.GothamBold,
									TextColor3 = Color3.fromRGB(220, 220, 230),
									TextXAlignment = Enum.TextXAlignment.Left,
									Text = arg13 or "Textbox",
									TextWrapped = false,
									TextScaled = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
									ZIndex = 3,
									Children = { MakeTextConstraint(15, 8) },
								}, Frame24)

								create("Frame", {
									BackgroundColor3 = Color3.fromRGB(110, 55, 190),
									BackgroundTransparency = 0.82,
									BorderSizePixel = 0,
									Position = UDim2.new(0, 10, 0, 30),
									Size = UDim2.new(1, -20, 0, 1),
									ZIndex = 3,
								}, Frame24)

								local Frame25 = create("Frame", {
									BackgroundColor3 = Color3.fromRGB(10, 10, 16),
									BackgroundTransparency = 0.1,
									BorderSizePixel = 0,
									Position = UDim2.new(0, 10, 0, 38),
									Size = UDim2.new(1, -20, 0, 24),
									ClipsDescendants = true,
									ZIndex = 3,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
								}, Frame24)

								local UIStroke = create("UIStroke", {
									Color = Color3.fromRGB(110, 55, 190),
									Transparency = 0.78,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}, Frame25)

								local TextBox4 = create("TextBox", {
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Position = UDim2.new(0, 10, 0, 0),
									Size = UDim2.new(1, -18, 1, 0),
									Font = Enum.Font.GothamSemibold,
									TextColor3 = Color3.fromRGB(210, 195, 255),
									PlaceholderColor3 = Color3.fromRGB(110, 85, 150),
									PlaceholderText = arg13 or "Enter here...",
									TextSize = 12,
									TextXAlignment = Enum.TextXAlignment.Left,
									TextTruncate = Enum.TextTruncate.AtEnd,
									Text = str4,
									ClearTextOnFocus = false,
									ZIndex = 4,
								}, Frame25)

								local Frame26 = create("Frame", {
									BackgroundTransparency = 1,
									Position = UDim2.new(0, 10, 0, 70),
									Size = UDim2.new(1, -20, 0, 20),
									ZIndex = 3,
									Children = {
										create("UIListLayout", {
											FillDirection = Enum.FillDirection.Horizontal,
											Padding = UDim.new(0, 6),
											HorizontalAlignment = Enum.HorizontalAlignment.Right,
											VerticalAlignment = Enum.VerticalAlignment.Center,
											SortOrder = Enum.SortOrder.LayoutOrder,
										}),
									},
								}, Frame24)

								local tbl20 = {
									BackgroundColor3 = Color3.fromRGB(110, 55, 190),
									BackgroundTransparency = 0.84,
									BorderSizePixel = 0,
									LayoutOrder = 1,
									Size = UDim2.new(0, 54, 0, 20),
									Text = "Clear",
									TextColor3 = Color3.fromRGB(170, 120, 240),
									Font = Enum.Font.GothamBold,
									TextSize = 11,
									AutoButtonColor = false,
									ZIndex = 3,
								}

								local children5 = {}
								local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

								local tbl21 = {
									Color = Color3.fromRGB(110, 55, 190),
									Transparency = 0.72,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}

								children5[1] = UICorner5

								do
									local values = table.pack(create("UIStroke", tbl21))
									table.move(values, 1, values.n, 2, children5)
								end

								tbl20.Children = children5
								local TextButton14 = create("TextButton", tbl20, Frame26)

								local tbl22 = {
									BackgroundColor3 = Color3.fromRGB(110, 55, 190),
									BackgroundTransparency = 0.45,
									BorderSizePixel = 0,
									LayoutOrder = 2,
									Size = UDim2.new(0, 60, 0, 20),
									Text = arg15 or "Confirm",
									TextColor3 = Color3.fromRGB(200, 170, 255),
									Font = Enum.Font.GothamBold,
									TextSize = 11,
									AutoButtonColor = false,
									ZIndex = 3,
								}

								local children6 = {}
								local UICorner6 = create("UICorner", { CornerRadius = UDim.new(0, 5) })

								local tbl23 = {
									Color = Color3.fromRGB(110, 55, 190),
									Transparency = 0.6,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								}

								children6[1] = UICorner6

								do
									local values = table.pack(create("UIStroke", tbl23))
									table.move(values, 1, values.n, 2, children6)
								end

								tbl22.Children = children6
								local TextButton15 = create("TextButton", tbl22, Frame26)

								TextBox4.Focused:Connect(function()
									tbl:Tween(UIStroke, { Transparency = 0.42 }, 0.2)
									tbl:Tween(Frame25, { BackgroundTransparency = 0 }, 0.2)
								end)

								TextBox4.FocusLost:Connect(function()
									tbl:Tween(UIStroke, { Transparency = 0.78 }, 0.28)
									tbl:Tween(Frame25, { BackgroundTransparency = 0.1 }, 0.28)
								end)

								TextButton14.MouseEnter:Connect(function()
									tbl:Tween(TextButton14, { BackgroundTransparency = 0.6 }, 0.15)
								end)

								TextButton14.MouseLeave:Connect(function()
									tbl:Tween(TextButton14, { BackgroundTransparency = 0.84 }, 0.2)
								end)

								TextButton15.MouseEnter:Connect(function()
									tbl:Tween(TextButton15, { BackgroundTransparency = 0.25 }, 0.15)
								end)

								TextButton15.MouseLeave:Connect(function()
									tbl:Tween(TextButton15, { BackgroundTransparency = 0.45 }, 0.2)
								end)

								TextButton14.MouseButton1Click:Connect(function()
									CircleClick(TextButton14, mouse.X, mouse.Y)
									TextBox4.Text = ""

									if arg16 then
										save:ElementSave(arg16, "")
									end

									TextBox4:CaptureFocus()
								end)

								TextButton15.MouseButton1Click:Connect(function()
									CircleClick(TextButton15, mouse.X, mouse.Y)

									if TextBox4.Text ~= "" then
										if arg16 then
											save:ElementSave(arg16, TextBox4.Text)
										end

										arg14(TextBox4.Text)
									end
								end)

								TextBox4.FocusLost:Connect(function(enterPressed)
									if enterPressed and TextBox4.Text ~= "" then
										if arg16 then
											save:ElementSave(arg16, TextBox4.Text)
										end

										arg14(TextBox4.Text)
									end
								end)

								if str4 ~= "" then
									task.defer(function()
										arg14(str4)
									end)
								end

								if arg16 then
									save:RegisterControl(arg16, {
										Type = "Textbox",
										Default = "",
										Set = function(arg18, arg19)
											local text = tostring(arg18 or "")
											TextBox4.Text = text

											if arg19 ~= false then
												pcall(arg14, text)
											end
										end,
										Get = function()
											return TextBox4.Text
										end,
									})
								end

								return {
									TextBox = TextBox4,
									Clear = TextButton14,
									Join = TextButton15,
									Frame = Frame24,
									SetText = function(arg18, text)
										TextBox4.Text = text or ""
									end,
									GetText = function()
										return TextBox4.Text
									end,
								}
							end,
							addLabel = function(arg12, arg13, arg14, arg15)
								local tbl20 = {}
								local gothamBold = Enum.Font.GothamBold
								local gotham = Enum.Font.Gotham

								local tbl21 = {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									BorderSizePixel = 0,
									Size = UDim2.new(1, -24, 0, 0),
									AutomaticSize = Enum.AutomaticSize.Y,
									ClipsDescendants = false,
								}

								local children5 = {}
								local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

								local UIStroke = create("UIStroke", {
									Color = Color3.fromRGB(110, 55, 190),
									Transparency = 0.88,
									Thickness = 1,
									ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
								})

								local UIPadding = create("UIPadding", {
									PaddingTop = UDim.new(0, 10),
									PaddingBottom = UDim.new(0, 10),
									PaddingLeft = UDim.new(0, 14),
									PaddingRight = UDim.new(0, 14),
								})

								local tbl22 = { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 6) }
								children5[1] = UICorner5
								children5[2] = UIStroke
								children5[3] = UIPadding

								do
									local values = table.pack(create("UIListLayout", tbl22))
									table.move(values, 1, values.n, 4, children5)
								end

								tbl21.Children = children5
								local Frame24 = create("Frame", tbl21, Frame20)
								RegisterKeyLocked(Frame24, arg15)

								local TextLabel7 = create("TextLabel", {
									Name = "TitleLabel",
									BackgroundTransparency = 1,
									Size = UDim2.new(1, 0, 0, 0),
									AutomaticSize = Enum.AutomaticSize.Y,
									LayoutOrder = 1,
									Font = gothamBold,
									TextColor3 = Color3.fromRGB(230, 230, 240),
									TextSize = 13,
									TextWrapped = true,
									RichText = true,
									TextXAlignment = Enum.TextXAlignment.Left,
									TextYAlignment = Enum.TextYAlignment.Top,
									Text = arg13 or "Default Title",
									ZIndex = 3,
								}, Frame24)

								local flag13 = arg14 and arg14 ~= ""

								local tbl23 = {
									Name = "Divider",
									BackgroundColor3 = Color3.fromRGB(110, 55, 190),
									BackgroundTransparency = 0.78,
									BorderSizePixel = 0,
									Size = UDim2.new(1, 0, 0, 1),
									LayoutOrder = 2,
									Visible = flag13,
									ZIndex = 3,
								}

								local children6 = {}
								local tbl24 = {}
								local numberSequence = NumberSequence.new
								local tbl25 = {}
								local v19 = NumberSequenceKeypoint.new(0, 0)
								local v20 = NumberSequenceKeypoint.new(0.7, 0)
								local new = NumberSequenceKeypoint.new
								tbl25[1] = v19
								tbl25[2] = v20

								do
									local values = table.pack(new(1, 1))
									table.move(values, 1, values.n, 3, tbl25)
								end

								tbl24.Transparency = numberSequence(tbl25)

								do
									local values = table.pack(create("UIGradient", tbl24))
									table.move(values, 1, values.n, 1, children6)
								end

								tbl23.Children = children6
								local Frame25 = create("Frame", tbl23, Frame24)

								local TextLabel8 = create("TextLabel", {
									Name = "DescLabel",
									BackgroundTransparency = 1,
									Size = UDim2.new(1, 0, 0, 0),
									AutomaticSize = Enum.AutomaticSize.Y,
									LayoutOrder = 3,
									Font = gotham,
									TextColor3 = Color3.fromRGB(165, 165, 185),
									TextSize = 11,
									TextWrapped = true,
									RichText = true,
									TextXAlignment = Enum.TextXAlignment.Left,
									TextYAlignment = Enum.TextYAlignment.Top,
									Text = arg14 or "",
									Visible = flag13,
									ZIndex = 3,
								}, Frame24)

								RegisterTranslatable(TextLabel7, arg13)
								RegisterTranslatable(TextLabel8, arg14)

								tbl20.RefreshTitle = function(arg16, text)
									arg13 = text
									TextLabel7.Text = text or ""
								end

								tbl20.RefreshDesc = function(arg16, text)
									arg14 = text
									TextLabel8.Text = text or ""
									text = text and text ~= ""
									Frame25.Visible = text
									TextLabel8.Visible = text
								end

								return tbl20
							end,
							addButtonGrid = function(arg12, arg13, arg14)
								local tbl20 = arg14 or {}
								local v19 = math.ceil(#tbl20 / 3)
								local n9 = 8 + (arg13 and arg13 ~= "" and 26 or 0) + v19 * 26 + math.max(v19 - 1, 0) * 4 + 8

								local Frame24 = create("Frame", {
									BackgroundColor3 = ThemeColor("Primary"),
									BackgroundTransparency = 0.4,
									BorderSizePixel = 0,
									Size = UDim2.new(1, -25, 0, n9),
									ClipsDescendants = true,
									Children = { create("UICorner", { CornerRadius = UDim.new(0, 6) }) },
								}, Frame20)

								fn12(Frame24, arg13 or "ButtonGrid")

								if arg13 and arg13 ~= "" then
									create("TextLabel", {
										BackgroundTransparency = 1,
										Position = UDim2.new(0, 12, 0, 8),
										Size = UDim2.new(1, -20, 0, 20),
										Font = Enum.Font.GothamBold,
										Text = arg13,
										TextColor3 = Color3.fromRGB(210, 200, 230),
										TextSize = 12,
										TextXAlignment = Enum.TextXAlignment.Left,
										ZIndex = 3,
									}, Frame24)
								end

								for i, v20 in ipairs(tbl20) do
									local n10 = (i - 1) % 3
									local n11 = math.floor((i - 1) / 3)
									local flag13 = v20.Locked == true

									local tbl21 = {
										BackgroundColor3 = flag13 and Color3.fromRGB(30, 18, 50) or Color3.fromRGB(55, 28, 100),
										BackgroundTransparency = flag13 and 0.55 or 0.3,
										BorderSizePixel = 0,
										Position = UDim2.new(n10 / 3, n10 == 0 and 10 or 2, 0, 8 + (arg13 and arg13 ~= "" and 26 or 0) + n11 * 30),
										Size = UDim2.new(0.33333333333333331, n10 == 0 and -12 or n10 == 2 and -12 or -4, 0, 26),
										AutoButtonColor = false,
										ClipsDescendants = true,
										Text = "",
										ZIndex = 3,
									}

									local children5 = {}
									local UICorner5 = create("UICorner", { CornerRadius = UDim.new(0, 3) })

									local tbl22 = {
										Name = "BtnLabel",
										BackgroundTransparency = 1,
										Size = UDim2.new(1, flag13 and -18 or -4, 1, 0),
										Position = UDim2.new(0, 2, 0, 0),
										Font = Enum.Font.GothamBold,
										Text = v20.Label or "Button " .. i,
										TextColor3 = flag13 and Color3.fromRGB(130, 110, 160) or Color3.fromRGB(210, 185, 255),
										TextScaled = true,
										TextTruncate = Enum.TextTruncate.AtEnd,
										ZIndex = 4,
										Children = { MakeTextConstraint(12, 8) },
									}

									local v21 = table.pack(create("TextLabel", tbl22))
									children5[1] = UICorner5

									do
										local values = table.pack(table.unpack(v21, 1, v21.n))
										table.move(values, 1, values.n, 2, children5)
									end

									tbl21.Children = children5
									local TextButton14 = create("TextButton", tbl21, Frame24)

									if flag13 then
										create("ImageLabel", {
											BackgroundTransparency = 1,
											AnchorPoint = Vector2.new(1, 0.5),
											Position = UDim2.new(1, -4, 0.5, 0),
											Size = UDim2.new(0, 10, 0, 10),
											Image = "rbxassetid://7733992528",
											ImageColor3 = Color3.fromRGB(140, 110, 190),
											ImageTransparency = 0.3,
											ZIndex = 5,
										}, TextButton14)
									end

									local btnLabel = TextButton14:FindFirstChild("BtnLabel")

									if flag13 then
										TextButton14.MouseButton1Click:Connect(function()
											CircleClick(TextButton14, mouse.X, mouse.Y)

											if typeof(v20.LockedCallback) == "function" then
												v20.LockedCallback()
											else
												tbl2.Notification:Notify({ Title = "Locked", Description = (v20.Label or "This button") .. " is currently locked." }, { Time = 2 })
											end
										end)
									else
										TextButton14.MouseEnter:Connect(function()
											tbl:Tween(TextButton14, { BackgroundTransparency = 0.1 }, 0.15, Enum.EasingStyle.Quint)

											if btnLabel then
												tbl:Tween(btnLabel, { TextColor3 = Color3.fromRGB(235, 220, 255) }, 0.15)
											end
										end)

										TextButton14.MouseLeave:Connect(function()
											tbl:Tween(TextButton14, { BackgroundTransparency = 0.3 }, 0.2, Enum.EasingStyle.Quint)

											if btnLabel then
												tbl:Tween(btnLabel, { TextColor3 = Color3.fromRGB(210, 185, 255) }, 0.2)
											end
										end)

										TextButton14.MouseButton1Click:Connect(function()
											CircleClick(TextButton14, mouse.X, mouse.Y)

											if typeof(v20.Callback) == "function" then
												v20.Callback()
											end
										end)
									end
								end

								return Frame24
							end,
						}

						tbl20.AddButton = tbl20.addButton
						tbl20.AddToggle = tbl20.addToggle
						tbl20.AddSlider = tbl20.addSlider
						tbl20.AddDropdown = tbl20.addDropdown
						tbl20.AddTextBox = tbl20.addTextbox
						tbl20.AddTextbox = tbl20.addTextbox
						tbl20.AddLabel = tbl20.addLabel
						tbl20.AddKeybind = tbl20.addKeybind
						tbl20.AddLine = tbl20.addLine
						tbl20.AddParagraph = tbl20.addParagraph
						tbl20.AddButtonGrid = tbl20.addButtonGrid
						return tbl20
					end }

					tbl20.AddMenu = tbl20.addMenu
					return tbl20
				end }

				tbl20.AddSection = tbl20.addSection
				return tbl20
			end }

			tbl16.addTab = tbl16.AddTab
			local str4

			if tbl5.IsDeveloperBuild() then
				str4 = "Developer"
			elseif tbl5.HasKeyAccess() then
				str4 = "Premium"
			else
				str4 = "Standard"

				if v2 then
					str4 = "Freemium"
				end
			end

			local str5 = "Not required"

			if v2 then
				str5 = tbl5.HasKeyAccess() and "Verified" or "Not verified"
			end

			local Main = tbl16:AddTab("Main", "info-quantum")
			local v18 = Main:addSection()
			local v19 = Main:addSection()
			v18:addMenu("Information"):addLabel("Script Information", string.format("Hub: %s Project\nGame: %s\nAccount: %s\nStatus: %s", title, tostring(subtitle), localPlayer and localPlayer.Name or "Unknown", str4))
			local v20

			v20:addLabel("Key Information", string.format([[Key Status: %s
Key Mode: %s
Expires: —
Plan: —
HWID: —
Note: Key details will appear here later.]], str5, tostring(v3 or v2 and "Optional" or "None")))

			v19:addMenu("Favorites / Pinned"):addLabel("Tip", "PC: right-click a function, then tap ★\nMobile: double-tap to pin")
			local innerSection = nil

			task.defer(function()
				for _, v21 in ipairs(tbl12) do
					if v21.tabTitle == "Main" and v21.menuTitle == "Favorites / Pinned" then
						innerSection = v21.sectionFrame and v21.sectionFrame:FindFirstChild("InnerSection")
						if not innerSection then
							continue
						end
					else
						continue
					end

					break
				end

				if not innerSection then
					local exitTo = nil

					for _, v21 in ipairs(tbl7) do
						if v21.tabButton and v21.tabButton.Text == "Main" and v21.scrollFrame then
							exitTo = 1
							break
						end
					end

					if exitTo == 1 then
						local tbl17 = {}

						for _, child in ipairs(t8.scrollFrame:GetChildren()) do
							if child.Name == "SectionScroll" then
								table.insert(tbl17, child)
							end
						end

						local v21 = tbl17[2] or tbl17[1]

						if v21 then
							innerSection = create("Frame", {
								Name = "FavHost",
								BackgroundTransparency = 1,
								Size = UDim2.new(1, -10, 0, 0),
								AutomaticSize = Enum.AutomaticSize.Y,
								Children = {
									create("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 4) }),
								},
							}, v21)
						end
					end
				end

				if favorites.Refresh then
					favorites.Refresh()
				end

				task.delay(1.5, function()
					if favorites.Refresh then
						favorites.Refresh()
					end
				end)
			end)

			favorites.Refresh = function()
				if not innerSection or not innerSection.Parent then
					return
				end

				for _, child in ipairs(innerSection:GetChildren()) do
					if child:IsA("TextButton") or child:IsA("TextLabel") and child.Text == "No favorites yet" then
						child:Destroy()
					end
				end

				local list = favorites.List

				if #list == 0 then
					create("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -8, 0, 18),
						Font = Enum.Font.Gotham,
						Text = "No favorites yet",
						TextColor3 = Color3.fromRGB(140, 120, 170),
						TextSize = 10,
						TextXAlignment = Enum.TextXAlignment.Left,
					}, innerSection)

					return
				end

				for i, v21 in ipairs(list) do
					local v22 = favorites.Entries[v21]
					local title2 = v22 and v22.title or v21:match("([^|]+)$") or v21
					local str6

					if v22 then
						str6 = (v22.tabTitle or "") .. " › " .. (v22.menuTitle or "")
					else
						str6 = v22
					end

					str6 = str6 or ""

					local tbl17 = {
						BackgroundColor3 = ThemeColor("Primary"),
						BackgroundTransparency = 0.35,
						Size = UDim2.new(1, -8, 0, 36),
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = i,
					}

					local children3 = {}
					local UICorner3 = create("UICorner", { CornerRadius = UDim.new(0, 6) })

					local TextLabel7 = create("TextLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 10, 0, 2),
						Size = UDim2.new(1, -20, 0, 16),
						Font = Enum.Font.GothamBold,
						Text = "★  " .. title2,
						TextColor3 = Color3.fromRGB(255, 220, 140),
						TextSize = 11,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
					})

					local tbl18 = {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 10, 0, 18),
						Size = UDim2.new(1, -20, 0, 14),
						Font = Enum.Font.Gotham,
						Text = str6,
						TextColor3 = Color3.fromRGB(160, 140, 190),
						TextSize = 9,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}

					children3[1] = UICorner3
					children3[2] = TextLabel7

					do
						local values = table.pack(create("TextLabel", tbl18))
						table.move(values, 1, values.n, 3, children3)
					end

					tbl17.Children = children3

					create("TextButton", tbl17, innerSection).MouseButton1Click:Connect(function()
						if v22 then
							tbl5.NavigateToSearchEntry(v22)
						end
					end)
				end
			end

			task.defer(function()
				pcall(tbl5.SyncKeyAccess)
			end)

			ScheduleRefreshAllLayouts()
			Frame3.Visible = true
			Frame12.Visible = true
			flag9 = true
			ScheduleRefreshAllLayouts()
			tbl16.IsDeveloper = tbl5.IsDeveloperBuild
			tbl16.IsPremium = tbl5.HasKeyAccess
			tbl16.ToggleUI = toggleUI
			tbl16.Favorites = favorites

			tbl16.Destroy = function()
				tbl2:DestroyGui()
			end

			return tbl16
		end
	end

	tbl2.CreateWindow = tbl2.CreateWindow
	tbl2.createWindow = tbl2.CreateWindow
	tbl2.DestroyGui = tbl2.DestroyGui
	tbl2.destroyGui = tbl2.DestroyGui
	return tbl2
end

while true do
	task.wait()
	warn("stop skidding - flazhy")
end
