local TweenService
TweenService = game:GetService("TweenService")
local Players
Players = game:GetService("Players")
local UserInputService
UserInputService = game:GetService("UserInputService")
local RunService
RunService = game:GetService("RunService")
local TextService
TextService = game:GetService("TextService")
local HttpService, GuiService, localPlayer, playerGui, flag, index, fn, index2, restoreIdentity, fn2
local fn3, fn4, v2, fn5, fn6, fn7, fn8, fn9, flag2, fn10
local fn11

do
	local Lighting = game:GetService("Lighting")
	HttpService = game:GetService("HttpService")
	GuiService = game:GetService("GuiService")
	localPlayer = Players.LocalPlayer
	playerGui = localPlayer:WaitForChild("PlayerGui")
	flag = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
	index = {}
	index.__index = index
	index.Version = "4.0.0"
	index.Flags = {}
	index._Windows = {}

	fn = function()
		local ok, result = pcall(function()
			if getgenv then
				return getgenv()
			end
			return _G
		end)

		return ok and result or _G
	end

	local v3 = fn()
	local nullUIUnload = v3.__NullUI_Unload
	v3.__NullUI_Unload = nil

	if type(nullUIUnload) == "function" then
		pcall(nullUIUnload)
	end

	index2 = {}
	index2.__index = index2

	index2.new = function()
		return setmetatable({ _items = {}, _dead = false }, index2)
	end

	index2.Add = function(arg, arg2)
		if arg._dead then
			if typeof(arg2) == "RBXScriptConnection" then
				arg2:Disconnect()
			elseif typeof(arg2) == "Instance" then
				arg2:Destroy()
			end

			return arg2
		end

		table.insert(arg._items, arg2)
		return arg2
	end

	index2.Destroy = function(arg)
		if arg._dead then
			return
		end
		arg._dead = true

		for i = #arg._items, 1, -1 do
			local v = arg._items[i]
			arg._items[i] = nil
			local kind = typeof(v)

			if kind == "RBXScriptConnection" then
				pcall(function()
					v:Disconnect()
				end)
			elseif kind == "Instance" then
				pcall(function()
					v:Destroy()
				end)
			elseif kind == "function" then
				pcall(v)
			elseif kind == "table" and type(v.Destroy) == "function" then
				pcall(function()
					v:Destroy()
				end)
			elseif kind == "table" and type(v.Disconnect) == "function" then
				pcall(function()
					v:Disconnect()
				end)
			end
		end
	end

	local function fn12()
		local ok, result = pcall(function()
			local genv = getgenv and getgenv() or _G or {}
			return genv.setthreadidentity or genv.set_thread_identity or genv.setidentity
		end)

		if ok and type(result) == "function" then
			return result
		end
		return nil
	end

	local v4 = fn12()

	restoreIdentity = function()
		if v4 then
			pcall(v4, 8)
		end
	end

	fn2 = function(arg, ...)
		return task.spawn(function(...)
			restoreIdentity()
			return arg(...)
		end, ...)
	end

	fn3 = function(arg, ...)
		return task.defer(function(...)
			restoreIdentity()
			return arg(...)
		end, ...)
	end

	fn4 = function(arg, arg2, ...)
		local delay = task.delay

		local function fn13(...)
			restoreIdentity()
			return arg2(...)
		end

		local v = table.pack(...)
		v.n = 3 + v.n - 1
		table.move(v, 1, v.n, 3, v)
		v[1] = arg
		v[2] = fn13
		return delay(table.unpack(v, 1, v.n))
	end

	v2 = index2.new()

	fn5 = function()
		local tbl = {}

		return {
			Fire = function(...)
				local v = table.pack(...)
				local v5, v6, v7 = ipairs(table.clone(tbl))
				local v8 = table.pack(J_1())

				if v8[1] then
					fn2(v8[3], ...)

					while true do
						local v9 = table.pack(J_1())

						if v9[1] then
							fn2(v9[3], table.unpack(v, 1, v.n))
						else
							break
						end
					end
				end
			end,
			Connect = function(arg)
				table.insert(tbl, arg)

				return { Disconnect = function()
					local v = table.find(tbl, arg)

					if v then
						table.remove(tbl, v)
					end
				end }
			end,
			Clear = function()
				table.clear(tbl)
			end,
		}
	end

	fn6 = function(o,v,P)if P<v then return v;end;return math.clamp(o,v,P);end
	fn7 = function(o,v,P)local U=P-v;if U==0 then return 0;end;return math.clamp((o-v)/U,0,1);end
	fn8 = function(o,v,P,U)U=if U<=0 then 1 else U;local i=math.floor((o-v)/U+0.5)*U+v;i=math.clamp(i,v,P);v,o=0,U;while v<6 and math.abs(o-math.floor(o+0.5))>1.0E-9 do o*=10;v+=1;end;o=10^v;return math.floor(i*o+(i>=0 and 0.5 or-0.5))/o;end
	fn9 = function(o)if math.abs(o-math.floor(o+0.5))<1.0E-9 then return tostring(math.floor(o+0.5));end;return string.format("%.4g",o);end
	local name = "NullUI_AcrylicDOF"
	local n = 0.001
	local v = nil
	local tbl = {}
	local tbl2 = {}
	flag2 = false
	index.Config = { Blur = true, MaxNotifications = 5, LiquidGlass = false }

	local function fn13()
		for i = #tbl2, 1, -1 do
			tbl2[i]:Disconnect()
			tbl2[i] = nil
		end
	end

	local function createDepthOfFieldEffect()
		if v and v.Parent then
			return v
		end
		local nullUIAcrylicDOF = Lighting:FindFirstChild("NullUI_AcrylicDOF")

		if nullUIAcrylicDOF then
			nullUIAcrylicDOF:Destroy()
		end

		local depthOfFieldEffect = Instance.new("DepthOfFieldEffect")
		depthOfFieldEffect.Name = name
		depthOfFieldEffect.FarIntensity = 0
		depthOfFieldEffect.FocusDistance = 0.05
		depthOfFieldEffect.InFocusRadius = 0.1
		depthOfFieldEffect.NearIntensity = 1
		depthOfFieldEffect.Enabled = false
		depthOfFieldEffect.Parent = Lighting
		v = depthOfFieldEffect
		v2:Add(depthOfFieldEffect)
		return depthOfFieldEffect
	end

	local function fn14()
		if flag2 then
			return
		end
		local v5 = createDepthOfFieldEffect()
		local enabled = false

		if index.Config.Blur ~= false then
			for i = 1, #tbl do
				if tbl[i]._vis then
					enabled = true
					break
				end
			end
		end

		if v5.Enabled ~= enabled then
			v5.Enabled = enabled
		end
	end

	local function fn15()
		for i = 1, #tbl do
			if tbl[i]._vis then
				return true
			end
		end

		return false
	end

	local function fn16()
		for i = #tbl, 1, -1 do
			local v5 = tbl[i]

			if v5.Destroyed then
				table.remove(tbl, i)
			else
				v5:Update()
			end
		end
	end

	local flag3 = false

	local function fn17()
		if not flag3 then
			return
		end
		flag3 = false

		pcall(function()
			RunService:UnbindFromRenderStep("NullUI_AcrylicFollow")
		end)
	end

	local function fn18()
		if flag3 or flag2 then
			return
		end
		flag3 = true

		RunService:BindToRenderStep("NullUI_AcrylicFollow", Enum.RenderPriority.Camera.Value + 1, function()
			if index.Config.Blur == false or not fn15() then
				return
			end
			fn16()
		end)
	end

	local function fn19(arg)
		fn13()
		if not arg then
			fn17()
			return
		end
		table.insert(tbl2, arg:GetPropertyChangedSignal("ViewportSize"):Connect(fn16))
		fn18()
		fn16()
	end

	fn10 = function(arg)
		local folder = Instance.new("Folder")
		folder.Name = "NullUI_AcrylicWindow"
		local part = Instance.new("Part")
		part.Name = "Glass"
		part.Anchored = true
		part.CanCollide = false
		part.CanQuery = false
		part.CanTouch = false
		part.CastShadow = false
		part.Locked = true
		part.Material = Enum.Material.Glass
		part.Color = Color3.new(0, 0, 0)
		part.Reflectance = 0
		part.Size = Vector3.new(1, 1, 0.001)
		part.Transparency = 1
		part.Parent = folder
		local specialMesh = Instance.new("SpecialMesh")
		specialMesh.Name = "AcrylicMesh"
		specialMesh.MeshType = Enum.MeshType.Brick
		specialMesh.Offset = Vector3.new(0, 0, -1e-06)
		specialMesh.Scale = Vector3.new(1, 1, 0.001)
		specialMesh.Parent = part

		local tbl3 = {
			Gui = arg,
			Folder = folder,
			Part = part,
			Mesh = specialMesh,
			Connections = {},
			Destroyed = false,
			Update = function(arg2)
				if arg2.Destroyed then
					return
				end
				local currentCamera = workspace.CurrentCamera
				local gui = arg2.Gui

				if not currentCamera or not gui or not gui.Parent then
					if arg2._vis ~= false then
						arg2._vis = false
						arg2.Part.Transparency = 1
						fn14()
					end

					return
				end

				if arg2.Folder.Parent ~= currentCamera then
					arg2.Folder.Parent = currentCamera
				end

				local absoluteSize = gui.AbsoluteSize
				local vis = index.Config.Blur ~= false and gui.Visible and absoluteSize.X > 2 and absoluteSize.Y > 2 and true or false

				if arg2._vis ~= vis then
					arg2._vis = vis
					arg2.Part.Transparency = vis and 0.98 or 1
					fn14()
				end

				if not vis then
					return
				end
				local renderCFrame = currentCamera:GetRenderCFrame()
				local absolutePosition = gui.AbsolutePosition
				local fieldOfView = currentCamera.FieldOfView
				if arg2._cCF == renderCFrame and arg2._cFov == fieldOfView and arg2._cPos == absolutePosition and arg2._cSize == absoluteSize then
					return
				end
				arg2._cCF = renderCFrame
				arg2._cFov = fieldOfView
				arg2._cPos = absolutePosition
				arg2._cSize = absoluteSize
				local n2 = math.clamp(currentCamera.ViewportSize.Y * 0.012, 8, 18)
				local n3 = gui.AbsolutePosition + Vector2.new(n2, n2)
				local vector2 = Vector2.new(math.max(1, absoluteSize.X - n2 * 2), math.max(1, absoluteSize.Y - n2 * 2))

				local function fn20(arg3)
					local v5 = currentCamera:ScreenPointToRay(arg3.X, arg3.Y)
					return v5.Origin + v5.Direction * n
				end

				local v5 = fn20(n3)
				local v6 = fn20(n3 + Vector2.new(vector2.X, 0))
				local v7 = fn20(n3 + vector2)
				local magnitude = (v6 - v5).Magnitude
				local magnitude2 = (v7 - v6).Magnitude
				arg2.Part.CFrame = CFrame.fromMatrix((v5 + v7) / 2, renderCFrame.XVector, renderCFrame.YVector, renderCFrame.ZVector)
				arg2.Mesh.Scale = Vector3.new(magnitude, magnitude2, 0.001)
			end,
			Destroy = function(arg2)
				if arg2.Destroyed then
					return
				end
				arg2.Destroyed = true

				for _, connection in ipairs(arg2.Connections) do
					connection:Disconnect()
				end

				table.clear(arg2.Connections)
				local v5 = table.find(tbl, arg2)

				if v5 then
					table.remove(tbl, v5)
				end

				if arg2.Folder then
					arg2.Folder:Destroy()
				end

				fn14()
			end,
		}

		for _, v5 in ipairs({ "AbsolutePosition", "AbsoluteSize", "Visible" }) do
			table.insert(tbl3.Connections, arg:GetPropertyChangedSignal(v5):Connect(function()
				tbl3:Update()
			end))
		end

		table.insert(tbl3.Connections, arg.AncestryChanged:Connect(function()
			if not arg.Parent then
				tbl3:Destroy()
			end
		end))

		table.insert(tbl, tbl3)
		fn14()
		tbl3:Update()
		return tbl3
	end

	fn19(workspace.CurrentCamera)

	v2:Add(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		fn19(workspace.CurrentCamera)
	end))

	v2:Add(function()
		fn13()
	end)

	index.SetBlurEnabled = function(arg, arg2)
		index.Config.Blur = arg2 and true or false
		fn14()
		fn16()
	end

	local function fn20()
		fn17()
		fn13()
	end

	fn11 = function()
		fn20()

		for i = #tbl, 1, -1 do
			tbl[i]:Destroy()
		end

		table.clear(tbl)
	end
end

local str
str = "NullUI/Assets"
local fn12

fn12 = function(arg)
	local ok, result = pcall(function()
		if getgenv then
			local v = getgenv()[arg]
			if type(v) == "function" then
				return v
			end
		end

		if getfenv then
			local v = getfenv(1)[arg]
			if type(v) == "function" then
				return v
			end
		end

		return _G[arg]
	end)

	if ok and type(result) == "function" then
		return result
	end
	return nil
end

local isfolder_
isfolder_ = fn12("isfolder")
local makefolder_
makefolder_ = fn12("makefolder")
local isfile_
isfile_ = fn12("isfile")
local writefile_
writefile_ = fn12("writefile")
local readfile_
readfile_ = fn12("readfile")
local delfile
delfile = fn12("delfile")
local listfiles
listfiles = fn12("listfiles")
local getcustomasset
getcustomasset = fn12("getcustomasset") or fn12("getsynasset")
local fn13

fn13 = function()
	if not (isfolder_ and makefolder_) then
		return false
	end

	return (pcall(function()
		if not isfolder_("NullUI") then
			makefolder_("NullUI")
		end

		if not isfolder_("NullUI/Assets") then
			makefolder_("NullUI/Assets")
		end
	end))
end

local fn14

fn14 = function()
	local txt = isfile_ and readfile_ and isfile_("NullUI/RunCount.txt")
	local n = 1

	if txt then
		local ok, result = pcall(readfile_, "NullUI/RunCount.txt")
		ok = ok and tonumber(result)

		if ok then
			n = math.floor(ok) + 1
		end
	end

	if writefile_ then
		fn13()
		pcall(writefile_, "NullUI/RunCount.txt", tostring(n))
	end

	return n
end

local fn15

fn15 = function()
	local ok, result, result2 = pcall(function()
		if identifyexecutor then
			return identifyexecutor()
		end

		if getexecutorname then
			return getexecutorname()
		end

		if syn and syn.get_executor_name then
			return syn.get_executor_name()
		end
		return nil
	end)

	if ok and result and result ~= "" then
		return result2 and result2 ~= "" and tostring(result) .. " " .. tostring(result2) or tostring(result)
	end
	return "Unknown"
end

local fn16

fn16 = function(arg)
	local n = arg or 0
	local n2 = math.floor(n / 60) % 24
	local n3 = math.floor(n % 60)
	local str2 = n2 >= 12 and "PM" or "AM"
	local n4 = n2 % 12

	if n4 == 0 then
		n4 = 12
	end

	return string.format("%02d:%02d %s", n4, n3, str2)
end

do
	local function fn17(arg)
		if type(arg) ~= "string" or #arg < 4096 then
			return false
		end
		local str2 = arg:sub(1, 4)
		return str2 == "\0\1\0\0" or str2 == "OTTO" or str2 == "true" or str2 == "ttcf" or str2 == "wOFF" or str2 == "wOF2"
	end

	local function fn18(arg, arg2)
		if not (isfile_ and writefile_) then
			return false
		end
		local v = isfile_(arg) and readfile_
		local result = nil

		if v then
			local ok
			ok, result = pcall(readfile_, arg)
			if ok and fn17(result) then
				return true
			end
			result = ok and result or nil
		end

		if result ~= nil and delfile then
			pcall(delfile, arg)
		end

		local ok, result2 = pcall(function()
			return game:HttpGet(arg2)
		end)

		if not ok or not fn17(result2) then
			return false
		end
		return (pcall(writefile_, arg, result2))
	end

	local function fn19()
		if not (getcustomasset and writefile_) then
			return nil
		end

		if not fn13() then
			return nil
		end
		local str2 = "https://raw.githubusercontent.com/Skinny-yz/NullUI-Assets/main/fonts/"
		local str3 = str .. "/Figtree-SemiBold.ttf"
		local str4 = str .. "/Figtree-Medium.ttf"
		if not fn18(str3, str2 .. "Figtree-SemiBold.ttf") then
			return nil
		end

		if not fn18(str4, str2 .. "Figtree-Medium.ttf") then
			str4 = str3
		end

		local tbl = nil

		pcall(function()
			local tbl2 = { name = "Figtree" }
			local faces = {}
			local tbl3 = { name = "Regular", weight = 400, style = "normal", assetId = getcustomasset(str4) }
			local tbl4 = { name = "SemiBold", weight = 600, style = "normal", assetId = getcustomasset(str3) }
			faces[1] = tbl3
			faces[2] = tbl4
			tbl2.faces = faces
			local str5 = str .. "/Figtree.font"
			writefile_(str5, HttpService:JSONEncode(tbl2))
			local v = getcustomasset(str5)

			tbl = {
				Regular = Font.new(v, Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				SemiBold = Font.new(v, Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
			}
		end)

		return tbl
	end

	local function fn20()
		local v = fn19()
		if v and v.Regular and v.SemiBold then
			return v
		end

		local ok, result = pcall(function()
			return {
				Regular = Font.new("rbxasset://fonts/families/Figtree.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				SemiBold = Font.new("rbxasset://fonts/families/Figtree.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
			}
		end)

		if ok and result then
			return result
		end
		return { Regular = Font.fromEnum(Enum.Font.Gotham), SemiBold = Font.fromEnum(Enum.Font.GothamSemibold) }
	end

	local v = fn20()

	index.Theme = {
		Background = Color3.fromRGB(16, 16, 16),
		Surface = Color3.fromRGB(24, 24, 24),
		Text = Color3.fromRGB(240, 240, 240),
		TextDim = Color3.fromRGB(150, 150, 155),
		Accent = Color3.fromRGB(255, 255, 255),
		Danger = Color3.fromRGB(205, 205, 210),
		Font = v.SemiBold,
		FontRegular = v.Regular,
		MeasureFont = Enum.Font.GothamSemibold,
		CornerRadius = 16,
		CornerRadiusSm = 8,
		Margin = 14,
		AnimFast = 0.15,
		AnimSlow = 0.32,
	}
end

do
	local tbl = {
		Dark = {
			Background = Color3.fromRGB(16, 16, 16),
			Surface = Color3.fromRGB(24, 24, 24),
			Text = Color3.fromRGB(240, 240, 240),
			TextDim = Color3.fromRGB(150, 150, 155),
		},
		Darker = {
			Background = Color3.fromRGB(8, 8, 9),
			Surface = Color3.fromRGB(15, 15, 17),
			Text = Color3.fromRGB(236, 236, 240),
			TextDim = Color3.fromRGB(132, 132, 140),
		},
		Slate = {
			Background = Color3.fromRGB(18, 20, 25),
			Surface = Color3.fromRGB(26, 29, 36),
			Text = Color3.fromRGB(232, 236, 244),
			TextDim = Color3.fromRGB(140, 148, 162),
		},
	}

	local tbl2 = {}
	local tbl3 = { "Aqua", "Darker", Color3.fromRGB(0, 255, 255) }
	local tbl4 = { "Sky", "Darker", Color3.fromRGB(88, 166, 255) }
	local tbl5 = { "Ocean", "Slate", Color3.fromRGB(64, 200, 224) }
	local tbl6 = { "Midnight", "Slate", Color3.fromRGB(96, 150, 255) }
	local tbl7 = { "Indigo", "Darker", Color3.fromRGB(120, 130, 255) }
	local tbl8 = { "Amethyst", "Darker", Color3.fromRGB(176, 128, 255) }
	local tbl9 = { "Orchid", "Dark", Color3.fromRGB(214, 130, 255) }
	local tbl10 = { "Rose", "Darker", Color3.fromRGB(255, 118, 160) }
	local tbl11 = { "Sakura", "Dark", Color3.fromRGB(255, 160, 190) }
	local tbl12 = { "Crimson", "Darker", Color3.fromRGB(255, 92, 92) }
	local tbl13 = { "Ember", "Dark", Color3.fromRGB(255, 122, 66) }
	local tbl14 = { "Amber", "Darker", Color3.fromRGB(255, 176, 66) }
	local tbl15 = { "Gold", "Dark", Color3.fromRGB(240, 205, 96) }
	local tbl16 = { "Lime", "Darker", Color3.fromRGB(164, 230, 84) }
	local tbl17 = { "Emerald", "Darker", Color3.fromRGB(72, 217, 150) }
	local tbl18 = { "Mint", "Slate", Color3.fromRGB(128, 240, 200) }
	local tbl19 = { "Teal", "Slate", Color3.fromRGB(64, 210, 196) }
	local tbl20 = { "Coral", "Dark", Color3.fromRGB(255, 127, 110) }
	local tbl21 = { "Peach", "Dark", Color3.fromRGB(255, 184, 140) }
	local tbl22 = { "Tangerine", "Darker", Color3.fromRGB(255, 149, 0) }
	local tbl23 = { "Lemon", "Dark", Color3.fromRGB(248, 236, 96) }
	local tbl24 = { "Forest", "Slate", Color3.fromRGB(96, 200, 110) }
	local tbl25 = { "Jade", "Darker", Color3.fromRGB(0, 200, 140) }
	local tbl26 = { "Azure", "Slate", Color3.fromRGB(0, 160, 255) }
	local tbl27 = { "Cobalt", "Slate", Color3.fromRGB(70, 110, 255) }
	local tbl28 = { "Violet", "Darker", Color3.fromRGB(150, 90, 255) }
	local tbl29 = { "Magenta", "Darker", Color3.fromRGB(255, 70, 200) }
	local tbl30 = { "Ruby", "Darker", Color3.fromRGB(230, 40, 80) }
	local tbl31 = { "Ice", "Slate", Color3.fromRGB(190, 235, 255) }
	local tbl32 = { "Mono", "Dark", Color3.fromRGB(255, 255, 255) }
	local tbl33 = { "Graphite", "Darker", Color3.fromRGB(190, 195, 205) }
	tbl2[1] = tbl3
	tbl2[2] = tbl4
	tbl2[3] = tbl5
	tbl2[4] = tbl6
	tbl2[5] = tbl7
	tbl2[6] = tbl8
	tbl2[7] = tbl9
	tbl2[8] = tbl10
	tbl2[9] = tbl11
	tbl2[10] = tbl12
	tbl2[11] = tbl13
	tbl2[12] = tbl14
	tbl2[13] = tbl15
	tbl2[14] = tbl16
	tbl2[15] = tbl17
	tbl2[16] = tbl18
	tbl2[17] = tbl19
	tbl2[18] = tbl20
	tbl2[19] = tbl21
	tbl2[20] = tbl22
	tbl2[21] = tbl23
	tbl2[22] = tbl24
	tbl2[23] = tbl25
	tbl2[24] = tbl26
	tbl2[25] = tbl27
	tbl2[26] = tbl28
	tbl2[27] = tbl29
	tbl2[28] = tbl30
	tbl2[29] = tbl31
	tbl2[30] = tbl32
	tbl2[31] = tbl33
	index.Themes = {}

	for _, v in ipairs(tbl2) do
		local v3 = v[3]
		local v4 = tbl[v[2]]

		index.Themes[v[1]] = {
			Background = v4.Background,
			Surface = v4.Surface,
			Text = v4.Text,
			TextDim = v4.TextDim,
			Accent = v3,
			Glass = Color3.new(v3.R * 0.16 + 0.84, v3.G * 0.16 + 0.84, v3.B * 0.16 + 0.84),
			Danger = Color3.fromRGB(235, 120, 120),
		}
	end
end

for k, v in pairs(index.Themes.Aqua) do
	index.Theme[k] = v
end

index.ThemeName = "Aqua"
local tbl

tbl = {
	Glass = 0,
	Window = 1,
	Content = 2,
	Backdrop = 390,
	Popup = 400,
	PopupTop = 410,
	Toast = 600,
	Modal = 800,
	ModalTop = 810,
}

local tbl2

tbl2 = {
	Instant = 0.08,
	Fast = 0.12,
	Normal = 0.18,
	Slow = 0.26,
	Surface = 0.32,
	Style = Enum.EasingStyle.Quint,
	Direction = Enum.EasingDirection.Out,
	EnterStyle = Enum.EasingStyle.Back,
	ExitStyle = Enum.EasingStyle.Quad,
}

local fn17
local obj = setmetatable({}, { __mode = "k" })
fn17 = function(v,P,U,i,K)local u= obj [v];if not u then u={}; obj [v]=u;end;for E in pairs(P)do local Q=u[E];if Q then if Q.PlaybackState==Enum.PlaybackState.Playing then pcall(Q.Cancel,Q);end;u[E]=nil;end;end;local E= TweenService :Create(v,TweenInfo.new(math.max(U or 0.25,0),i or Enum.EasingStyle.Quint,K or Enum.EasingDirection.Out),P);for o in pairs(P)do u[o]=E;end;E.Completed:Once(function()for o,v in pairs(u)do if v==E then u[o]=nil;end;end;end);E:Play();return E;end
local obj2, flag3, fn18, createUICorner, createUIStroke, createFrame

do
	local tbl3 = { "Background", "Surface", "Text", "TextDim", "Accent", "Glass", "Danger" }
	local v3 = nil
	obj2 = setmetatable({}, { __mode = "k" })
	local obj3 = setmetatable({}, { __mode = "k" })
	flag3 = true

	fn18 = function(arg, arg2)
		if arg then
			arg:SetAttribute("NullUIRole", arg2)
			obj2[arg] = arg2

			if arg2 == "Glass" and index.Config.LiquidGlass and v3 then
				pcall(v3, arg, true)
			end
		end

		return arg
	end

	local function fn19(arg, arg2)
		local v = index.Theme[arg2]
		if not v then
			return
		end

		if arg:IsA("UIStroke") then
			arg.Color = v
		elseif arg:IsA("TextLabel") or arg:IsA("TextButton") or arg:IsA("TextBox") then
			arg.TextColor3 = v
		elseif arg:IsA("ImageLabel") or arg:IsA("ImageButton") then
			arg.ImageColor3 = v
		elseif arg:IsA("GuiObject") then
			arg.BackgroundColor3 = v
		end
	end

	local function fn20(arg, arg2)
		if typeof(arg) ~= "Color3" or typeof(arg2) ~= "Color3" then
			return false
		end
		return math.abs(arg.R - arg2.R) < 0.004 and math.abs(arg.G - arg2.G) < 0.004 and math.abs(arg.B - arg2.B) < 0.004
	end

	index.ThemeChanged = fn5()
	index.Unloaded = fn5()

	index.GetThemeNames = function()
		local tbl4 = {}

		for k in pairs(index.Themes) do
			table.insert(tbl4, k)
		end

		table.sort(tbl4)
		return tbl4
	end

	index.ApplyPalette = function(arg, arg2, arg3)
		if type(arg2) ~= "table" then
			return false, "palette must be a table"
		end
		local tbl4 = {}

		for _, v in ipairs(tbl3) do
			tbl4[v] = index.Theme[v]
		end

		local tbl5 = {}

		for _, v in ipairs(tbl3) do
			local v4 = arg2[v]

			if typeof(v4) == "Color3" and not fn20(v4, tbl4[v]) then
				table.insert(tbl5, { key = v, from = tbl4[v], to = v4 })
				index.Theme[v] = v4
			end
		end

		if #tbl5 == 0 then
			return true
		end
		local root = index._Root

		if root then
			local n = arg3 and 0 or 0.22
			local tbl6 = {}

			local function fn21(arg4)
				return math.round(arg4.R * 255) * 65536 + math.round(arg4.G * 255) * 256 + math.round(arg4.B * 255)
			end

			for _, v in ipairs(tbl5) do
				tbl6[fn21(v.from)] = v
			end

			local tbl7 = { Text = true, TextDim = true, Accent = true, Danger = true }

			local function fn22(arg4, arg5)
				local v = arg4[arg5]
				if typeof(v) ~= "Color3" then
					return
				end
				local v4 = tbl6[fn21(v)]
				if not v4 then
					return
				end

				if arg4:GetAttribute("NullUINoTheme") then
					return
				end

				if obj2[arg4] then
					return
				end
				local flag4 = arg4:GetAttribute("NullUIAccent") == true or arg4.Parent and arg4.Parent:GetAttribute("NullUIAccent") == true
				if v4.key == "Accent" and not flag4 and arg5 ~= "ImageColor3" then
					return
				end

				if v4.key == "Glass" and flag4 then
					return
				end

				if arg5 == "ImageColor3" then
					if not tbl7[v4.key] then
						return
					end
					local str2 = tostring(arg4.Image or "")
					if str2 == "" or string.find(str2, "rbxthumb", 1, true) or string.find(str2, "http", 1, true) then
						return
					end
				end

				local tbl8 = obj3[arg4]

				if not tbl8 then
					tbl8 = {}
					obj3[arg4] = tbl8
				end

				tbl8[arg5] = v4.key

				if n <= 0 then
					arg4[arg5] = v4.to
				else
					fn17(arg4, { [arg5] = v4.to }, n)
				end
			end

			for k, v in pairs(obj2) do
				if k.Parent then
					fn19(k, v)
				else
					obj2[k] = nil
				end
			end

			for k, v in pairs(obj3) do
				if k.Parent then
					for k2, v4 in pairs(v) do
						local v5 = index.Theme[v4]

						if v5 then
							if n <= 0 then
								k[k2] = v5
							else
								fn17(k, { [k2] = v5 }, n)
							end
						end
					end
				else
					obj3[k] = nil
				end
			end

			if flag3 then
				flag3 = false

				for _, descendant in ipairs(root:GetDescendants()) do
					if not obj2[descendant] and not obj3[descendant] then
						local attribute = descendant:GetAttribute("NullUIRole")

						if attribute then
							fn19(descendant, attribute)
						elseif descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
							fn22(descendant, "BackgroundColor3")
							fn22(descendant, "TextColor3")
						elseif descendant:IsA("TextBox") then
							fn22(descendant, "BackgroundColor3")
							fn22(descendant, "TextColor3")
							fn22(descendant, "PlaceholderColor3")
						elseif descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
							fn22(descendant, "BackgroundColor3")
							fn22(descendant, "ImageColor3")
						elseif descendant:IsA("UIStroke") then
							fn22(descendant, "Color")
						elseif descendant:IsA("GuiObject") then
							fn22(descendant, "BackgroundColor3")
						end
					end
				end
			end
		end

		index.ThemeChanged.Fire(index.Theme)
		return true
	end

	index.AccentOverride = nil

	index.SetTheme = function(arg, themeName, arg2, arg3)
		if type(themeName) == "string" then
			local v = index.Themes[themeName]
			if not v then
				return false, "unknown theme \"" .. themeName .. "\""
			end
			index.ThemeName = themeName
			themeName = v
		else
			index.ThemeName = "Custom"
		end

		if arg3 == false then
			index.AccentOverride = nil
		end

		local v, v4 = index:ApplyPalette(themeName, arg2)

		if v and index.AccentOverride then
			index:ApplyPalette({ Accent = index.AccentOverride }, arg2)
		end

		return v, v4
	end

	index.ResetAccent = function(arg, arg2)
		index.AccentOverride = nil
		local v = index.Themes[index.ThemeName]
		if not v then
			return false, "current theme has no palette"
		end
		return index:ApplyPalette({ Accent = v.Accent }, arg2)
	end

	index.GetThemeAccent = function(arg, arg2)
		local v = index.Themes[arg2 or index.ThemeName]
		return v and v.Accent or index.Theme.Accent
	end

	index._Locks = {}

	index.CreateLock = function(arg, arg2)
		local tbl4 = arg2 or {}
		local tbl5

		tbl5 = {
			Name = tbl4.Name or "Lock",
			Reason = tbl4.Reason or "This feature is locked.",
			UnlockedReason = tbl4.UnlockedReason,
			_unlocked = tbl4.Unlocked == true,
			_listeners = {},
			_alive = true,
			IsUnlocked = function(arg3)
				return arg3._unlocked
			end,
			GetReason = function(arg3)
				return arg3._unlocked and (arg3.UnlockedReason or arg3.Name) or arg3.Reason
			end,
			Subscribe = function(arg3, arg4)
				if type(arg4) ~= "function" then
					return { Disconnect = function()
					end }
				end
				table.insert(arg3._listeners, arg4)

				return { Disconnect = function()
					for i, listener in ipairs(tbl5._listeners) do
						if listener == arg4 then
							table.remove(tbl5._listeners, i)
							break
						end
					end
				end }
			end,
			Set = function(arg3, unlocked, reason)
				unlocked = unlocked and true or false

				if reason then
					arg3.Reason = reason
				end

				if arg3._unlocked == unlocked then
					return arg3
				end
				arg3._unlocked = unlocked

				for _, v in ipairs(table.clone(arg3._listeners)) do
					fn2(v, unlocked, arg3:GetReason())
				end

				if tbl4.Notify ~= false then
					index:Notify({
						Title = arg3.Name,
						Text = unlocked and (arg3.UnlockedReason or "Unlocked.") or arg3.Reason,
						Type = unlocked and "success" or "warning",
						Icon = unlocked and "lock-open" or "lock",
						Duration = 3,
					})
				end

				return arg3
			end,
			Unlock = function(arg3, arg4)
				return arg3:Set(true, arg4)
			end,
			Lock = function(arg3, arg4)
				return arg3:Set(false, arg4)
			end,
			Try = function(arg3, arg4)
				if type(tbl4.Unlocker) == "function" then
					local v, v4 = tbl4.Unlocker(arg4)
					if v then
						arg3:Unlock()
						return true
					end
					return false, v4 or arg3.Reason
				end

				if tbl4.Key ~= nil then
					if tostring(arg4) == tostring(tbl4.Key) then
						arg3:Unlock()
						return true
					end
					return false, tbl4.WrongKeyReason or "Wrong key."
				end

				return false, arg3.Reason
			end,
			Destroy = function(arg3)
				arg3._alive = false
				table.clear(arg3._listeners)
			end,
		}

		if type(tbl4.Check) == "function" then
			local n = math.max(tonumber(tbl4.Interval) or 2, 0.25)

			fn2(function()
				while tbl5._alive do
					local ok, result, result2 = pcall(tbl4.Check)

					if ok then
						tbl5:Set(result and true or false, type(result2) == "string" and result2 or nil)
					end

					task.wait(n)
				end
			end)
		end

		index._Locks[tbl5.Name] = tbl5
		return tbl5
	end

	index.GetLock = function(arg, arg2)
		return index._Locks[arg2]
	end

	index.SetAccent = function(arg, accentOverride, arg2)
		if typeof(accentOverride) ~= "Color3" then
			return false, "accent must be a Color3"
		end
		index.AccentOverride = accentOverride
		return index:ApplyPalette({ Accent = accentOverride }, arg2)
	end

	createUICorner = function(v,P)local U=Instance.new("UICorner");U.CornerRadius=UDim.new(0,P or  index .Theme.CornerRadius);U.Parent=v;return U;end

	createUIStroke = function(parent, color, thickness, transparency)
		local uiStroke = Instance.new("UIStroke")
		uiStroke.Color = color or Color3.new(1, 1, 1)
		uiStroke.Thickness = thickness or 1
		uiStroke.Transparency = transparency or 0.9
		uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		uiStroke.Parent = parent
		return uiStroke
	end

	local obj4 = setmetatable({}, { __mode = "k" })

	local function fn21(parent, arg)
		local liquidSheen = parent:FindFirstChild("LiquidSheen")
		local liquidRim = parent:FindFirstChild("LiquidRim")
		local liquidStreak = parent:FindFirstChild("LiquidStreak")
		local attribute = parent:GetAttribute("BaseTransparency")

		if attribute == nil then
			attribute = parent.BackgroundTransparency
			parent:SetAttribute("BaseTransparency", attribute)
		end

		if not arg then
			if liquidSheen then
				liquidSheen.Enabled = false
			end

			if liquidRim then
				liquidRim.Enabled = false
			end

			if liquidStreak then
				liquidStreak.Visible = false
			end

			parent.BackgroundColor3 = Color3.new(1, 1, 1)
			parent.BackgroundTransparency = attribute
			return
		end

		local flag4 = parent.AbsoluteSize.Y >= 90 or attribute <= 0.9
		parent.BackgroundColor3 = Color3.new(1, 1, 1)
		parent.BackgroundTransparency = math.clamp(attribute - (flag4 and 0.05 or 0.015), 0.78, 0.995)

		if not liquidSheen then
			liquidSheen = Instance.new("UIGradient")
			liquidSheen.Name = "LiquidSheen"
			liquidSheen.Rotation = 90
			liquidSheen.Parent = parent
		end

		liquidSheen.Color = ColorSequence.new(Color3.new(1, 1, 1))
		local numberSequence = NumberSequence.new
		local tbl4 = {}
		local v = NumberSequenceKeypoint.new(0, flag4 and 0.35 or 0.55)
		local v4 = NumberSequenceKeypoint.new(0.45, 0.88)
		local v5 = table.pack(NumberSequenceKeypoint.new(1, 1))
		tbl4[1] = v
		tbl4[2] = v4

		do
			local values = table.pack(table.unpack(v5, 1, v5.n))
			table.move(values, 1, values.n, 3, tbl4)
		end

		liquidSheen.Transparency = numberSequence(tbl4)
		liquidSheen.Enabled = true

		if flag4 then
			if not liquidStreak then
				liquidStreak = Instance.new("Frame")
				liquidStreak.Name = "LiquidStreak"
				liquidStreak.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				liquidStreak.BorderSizePixel = 0
				liquidStreak.AnchorPoint = Vector2.new(0.5, 0)
				liquidStreak.Position = UDim2.new(0.5, 0, 0, 0)
				liquidStreak.Size = UDim2.new(1, -24, 0, 1)
				liquidStreak.ZIndex = parent.ZIndex + 1
				liquidStreak.Parent = parent
				local uiGradient = Instance.new("UIGradient")
				local numberSequence2 = NumberSequence.new
				local tbl5 = {}
				local v6 = NumberSequenceKeypoint.new(0, 1)
				local v7 = NumberSequenceKeypoint.new(0.5, 0.45)
				local new = NumberSequenceKeypoint.new
				tbl5[1] = v6
				tbl5[2] = v7

				do
					local values = table.pack(new(1, 1))
					table.move(values, 1, values.n, 3, tbl5)
				end

				uiGradient.Transparency = numberSequence2(tbl5)
				uiGradient.Parent = liquidStreak
			end

			liquidStreak.BackgroundTransparency = 0.72
			liquidStreak.Visible = true
		elseif liquidStreak then
			liquidStreak.Visible = false
		end

		if liquidRim then
			liquidRim.Enabled = false
		end
	end

	createFrame = function(parent, arg, backgroundTransparency)
		local frame = Instance.new("Frame")
		frame.Name = "Glass"
		frame.Size = UDim2.fromScale(1, 1)
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = backgroundTransparency or 0.985
		frame.BorderSizePixel = 0
		frame.ZIndex = tbl.Glass
		frame.Parent = parent
		fn18(frame, "Glass")
		createUICorner(frame, arg)
		obj4[frame] = true

		if index.Config.LiquidGlass then
			fn21(frame, true)
		end

		return frame
	end

	v3 = fn21

	index.SetLiquidGlass = function(arg, arg2)
		local liquidGlass = arg2 and true or false
		index.Config.LiquidGlass = liquidGlass
		local tbl4 = {}

		for k in pairs(obj4) do
			if k.Parent then
				tbl4[k] = true
				pcall(fn21, k, liquidGlass)
			else
				obj4[k] = nil
			end
		end

		local root = index._Root

		if root then
			for _, descendant in ipairs(root:GetDescendants()) do
				if not tbl4[descendant] and descendant:IsA("GuiObject") and descendant:GetAttribute("NullUIRole") == "Glass" then
					pcall(fn21, descendant, liquidGlass)
				end
			end
		end

		return true
	end
end

local fn19

fn19 = function(arg)
	arg.ScrollBarThickness = 0
	arg.ScrollBarImageTransparency = 1
	arg.VerticalScrollBarInset = Enum.ScrollBarInset.None
	arg.HorizontalScrollBarInset = Enum.ScrollBarInset.None
end

local createFrame2

createFrame2 = function(arg, arg2, parent, arg3)
	local frame = Instance.new("Frame")
	frame.Name = "ContentScrollThumb"
	frame.BackgroundColor3 = index.Theme.TextDim
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.AnchorPoint = Vector2.new(1, 0)
	frame.Size = UDim2.new(0, 3, 0, 40)
	frame.Visible = false
	frame.ZIndex = (arg.ZIndex or 0) + 6
	frame.Parent = parent
	createUICorner(frame, 2)
	fn18(frame, "TextDim")

	local function fn20()
	end

	local n = 4
	local function fn21()if not  parent .Visible then  frame .Visible=false;return;end;local v,P= arg .AbsoluteWindowSize.Y, arg .AbsoluteCanvasSize.Y;local U=P-v;if U<=8 or v<=0 then  frame .Visible=false;return;end;local i=v- n *2;if i<=0 then  frame .Visible=false;return;end;local K,u= parent .AbsolutePosition, parent .AbsoluteSize;if u.X<=0 or u.Y<=0 then  frame .Visible=false;return;end;local E=math.min(i,math.max(30,i*(v/P)));P,v=i-E,math.clamp( arg .CanvasPosition.Y/U,0,1);U,i= arg .AbsolutePosition.Y-K.Y+ n +P*v, arg .AbsolutePosition.X+ arg .AbsoluteSize.X-K.X- n ; frame .Visible=false; frame .Size=UDim2.new(0,3,E/u.Y,0); frame .Position=UDim2.new(i/u.X,0,U/u.Y,0);end
	local flag4 = false

	local function fn22()
		if flag4 then
			return
		end
		flag4 = true

		fn3(function()
			flag4 = false

			if frame.Parent then
				fn21()
			end
		end)
	end

	arg3:Add(arg:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		fn22()
		fn20()
	end))

	arg3:Add(arg:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(fn22))
	arg3:Add(arg:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(fn22))
	arg3:Add(arg:GetPropertyChangedSignal("AbsolutePosition"):Connect(fn22))
	arg3:Add(parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn22))
	arg3:Add(parent:GetPropertyChangedSignal("Visible"):Connect(fn22))
	fn22()
	return frame
end

local fn20

do
	local n = 1.06
	local tbl3 = {}
	fn20 = function(v,P,U)v=tostring(v or"");U=U or 10000;local i=v.."\1"..P.."\1"..math.floor(U);local K= tbl3 [i];if K then return K.X,K.Y;end;local K,u=pcall(function()return  TextService :GetTextSize(v,P, index .Theme.MeasureFont,Vector2.new(U,100000));end);local U,E;if K and u then U,E=(math.ceil(u.X* n )),(math.ceil(u.Y));else U,E=(math.ceil(#v*P*0.55)),P+2;end; tbl3 [i]=Vector2.new(U,E);return U,E;end
end

local fn21

do
	local tbl3 = {
		Material = "https://raw.githubusercontent.com/Skinny-yz/NullUI-Assets/main/icons/MaterialIcons.luau",
		Lucide = "https://raw.githubusercontent.com/Skinny-yz/NullUI-Assets/main/icons/LucideIcons.luau",
		Phosphor = "https://raw.githubusercontent.com/Skinny-yz/NullUI-Assets/main/icons/Phosphor.luau",
		["Phosphor-Filled"] = "https://raw.githubusercontent.com/Skinny-yz/NullUI-Assets/main/icons/Phosphor%20Filled.luau",
		SF = "https://raw.githubusercontent.com/Skinny-yz/NullUI-Assets/main/icons/SFSymbols.luau",
	}

	local tbl4 = {}
	local tbl5 = {}

	local function fn22(arg)
		if tbl4[arg] ~= nil then
			return tbl4[arg] or nil
		end

		if tbl5[arg] then
			local now = os.clock()

			while tbl5[arg] and os.clock() - now < 10 do
				task.wait()
			end

			return tbl4[arg] or nil
		end

		local v = tbl3[arg]
		if not v then
			tbl4[arg] = false
			return nil
		end
		tbl5[arg] = true

		local ok, result = pcall(function()
			return loadstring(game:HttpGet(v))()
		end)

		tbl5[arg] = nil
		if ok and type(result) == "table" then
			tbl4[arg] = result
			return result
		end
		tbl4[arg] = false
		return nil
	end

	index.GetIcon = function(arg, arg2, arg3)
		local v = fn22(arg3 or "Lucide")
		v = v and v[arg2]
		if not v then
			return ""
		end
		return "rbxassetid://" .. tostring(v)
	end

	fn21 = function(arg)
		if arg == nil or arg == "" then
			return ""
		end

		if type(arg) ~= "string" then
			return arg
		end

		if arg:match("^%a[%w%+%-%.]*://") then
			return arg
		end

		if arg:match("^%d+$") then
			return "rbxassetid://" .. arg
		end
		local match, v = arg:match("^(%a[%w%-]*):(.+)$")
		if match and v then
			return index:GetIcon(v, match)
		end
		return index:GetIcon(arg, "Lucide")
	end

	index.PreloadIcons = function(arg, arg2)
		local v = ipairs
		local tbl6 = arg2 or { "Lucide" }

		for _, v3 in v(tbl6) do
			fn2(fn22, v3)
		end
	end
end

index.RestoreIdentity = restoreIdentity

local function createScreenGui()
	restoreIdentity()
	local v = playerGui

	if index.UseHiddenGui then
		local gethui = fn12("gethui")

		if gethui then
			local ok, result = pcall(gethui)

			if ok and result then
				v = result
			end
		end
	end

	local nullUI = v:FindFirstChild("NullUI")

	if nullUI then
		pcall(function()
			nullUI:Destroy()
		end)
	end

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "NullUI"
	screenGui.ResetOnSpawn = false
	screenGui.IgnoreGuiInset = false
	screenGui.DisplayOrder = 9999
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	if not pcall(function()
		screenGui.Parent = v
	end) or not screenGui.Parent then
		screenGui.Parent = playerGui
	end

	local protectGui = fn12("protect_gui") or fn12("protectgui")

	if protectGui and screenGui.Parent ~= playerGui then
		pcall(protectGui, screenGui)
	end

	return screenGui
end

index._Root = createScreenGui()
local fn22
fn22 = function()local v= index ._Root;if v and v.AbsoluteSize.X>0 then return v.AbsoluteSize;end;v=workspace.CurrentCamera;return v and v.ViewportSize or(Vector2.new(1280,720));end
local fn23, fn24, fn25, fn26, createTextButton, flag4, createFrame3, fn27, fn28, index3

do
	local n = flag and 380 or 880
	local n2 = flag and 1 or 0.85
	local n3 = flag and 1.5 or 1.25
	local flag5 = false
	local n4 = flag and 0.9 or 0.65
	local n5 = flag and 1.5 or 1.6

	local function fn29()
		if flag5 then
			local n6 = fn22().Y / n

			if not flag then
				local v = ipairs
				local windows = index._Windows or {}

				for _, window in v(windows) do
					if window._fullscreen and window._state ~= "closed" then
						local v3 = fn22()
						n6 = math.max(n6, math.min(math.min(v3.X * 0.94 / 640, v3.Y * 0.9 / 430), 1.7))
						break
					end
				end
			end

			return fn6(n6, n4, n5)
		end

		return fn6(fn22().Y / n, n2, n3)
	end

	local uiScale = Instance.new("UIScale")
	uiScale.Name = "GlobalScale"
	uiScale.Scale = fn29()
	uiScale.Parent = index._Root

	index._Root.DescendantAdded:Connect(function()
		flag3 = true
	end)

	fn23 = function()return  uiScale .Scale;end
	local n6 = 1
	local tween = nil

	local function fn30()
	end

	local function fn31(arg)
		local v = fn6(fn29() * (flag5 and 1 or n6), 0.4, 3)
		if math.abs(uiScale.Scale - v) < 0.001 then
			return
		end

		if tween then
			pcall(function()
				tween:Cancel()
			end)

			tween = nil
		end

		if arg then
			uiScale.Scale = v
			return
		end
		tween = TweenService:Create(uiScale, TweenInfo.new(0.12, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Scale = v })
		tween:Play()
	end

	local n7 = 0

	local function fn32()
		n7 += 1
		local v = n7

		fn4(0.25, function()
			if v ~= n7 then
				return
			end
			fn31()
			fn4(0.16, fn30)
		end)
	end

	local function fn33(arg)
		if not arg then
			return
		end
		v2:Add(arg:GetPropertyChangedSignal("ViewportSize"):Connect(fn32))
	end

	fn33(workspace.CurrentCamera)

	v2:Add(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		fn33(workspace.CurrentCamera)
		fn32()
	end))

	if index._Root then
		v2:Add(index._Root:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn32))
	end

	index.SetScaleRange = function(arg, arg2, arg3)
		n2 = arg2 or n2
		n3 = arg3 or n3
		fn31()
	end

	index.SetUIScale = function(arg, arg2, arg3)
		local num = tonumber(arg2)
		if not num then
			return false, "scale must be a number"
		end
		n6 = fn6(num, 0.5, 2)
		fn31(arg3)
		return true
	end

	index.GetUIScaleMultiplier = function()
		return n6
	end

	index.SetAutoScale = function(arg, arg2)
		flag5 = arg2 ~= false
		fn31()
		fn4(0.16, fn30)
		return flag5
	end

	index.GetAutoScale = function()
		return flag5
	end

	local v3 = nil

	fn24 = function(arg)
		if v3 and v3 ~= arg then
			local v = v3
			v3 = nil
			v()
		end

		v3 = arg
	end

	fn25 = function(arg)
		if v3 == arg then
			v3 = nil
		end
	end

	fn26 = function()
		if v3 then
			local v = v3
			v3 = nil
			v()
		end
	end

	createTextButton = function(arg)
		local textButton = Instance.new("TextButton")
		textButton.Name = "PopupBackdrop"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Backdrop
		textButton.Parent = index._Root

		textButton.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				arg()
			end
		end)

		return textButton
	end

	v2:Add(UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return
		end

		if input.KeyCode == Enum.KeyCode.Escape and v3 then
			fn26()
		end
	end))

	flag4 = false
	local tbl3 = {}

	local function fn34()
		local root = index._Root
		local notificationHolder = root:FindFirstChild("NotificationHolder")
		if notificationHolder then
			return notificationHolder
		end
		local frame = Instance.new("Frame")
		frame.Name = "NotificationHolder"
		frame.AnchorPoint = Vector2.new(1, 1)
		frame.Position = UDim2.new(1, -20, 1, -20)
		frame.Size = UDim2.new(0, 280, 1, -40)
		frame.BackgroundTransparency = 1
		frame.ZIndex = tbl.Toast
		frame.Parent = root
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		uiListLayout.Padding = UDim.new(0, 10)
		uiListLayout.Parent = frame
		frame.ClipsDescendants = true
		error("devirt: value <luasym.LuaFunc object at 0x0000018086C97010> in an expression (at 48:33)")
	end

	index._NotifyCounter = 0
	local tbl4 = { info = "info", success = "check", warning = "triangle-alert", error = "circle-x" }

	local tbl5 = {
		info = Color3.fromRGB(120, 170, 255),
		success = Color3.fromRGB(110, 220, 140),
		warning = Color3.fromRGB(255, 190, 90),
		error = Color3.fromRGB(255, 105, 105),
	}

	index.Notify = function(arg, arg2)
		local tbl6 = arg2 or {}
		local title = tbl6.Title or "Notification"
		local text = tbl6.Text or ""
		local duration = tbl6.Duration or 4
		local type_ = tbl6.Type or "info"
		local color = tbl6.Color or tbl5[type_] or index.Theme.Accent
		local icon = tbl6.Icon or tbl4[type_] or tbl4.info
		local v = fn34()
		index._NotifyCounter = index._NotifyCounter + 1
		local fn35 = nil
		local frame = Instance.new("Frame")
		frame.Name = "Notification"
		frame.BackgroundColor3 = index.Theme.Surface
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.ClipsDescendants = true
		frame.AutomaticSize = Enum.AutomaticSize.Y
		frame.Size = UDim2.new(1, 0, 0, 0)
		frame.LayoutOrder = index._NotifyCounter
		frame.ZIndex = tbl.Toast
		frame.Visible = false
		frame.Parent = v
		createUICorner(frame, 12)
		local v4 = createUIStroke(frame, Color3.new(1, 1, 1), 1, 1)
		local v5 = nil
		local uiScale2 = Instance.new("UIScale")
		uiScale2.Scale = 0.88
		uiScale2.Parent = frame
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 10)
		uiPadding.PaddingBottom = UDim.new(0, 10)
		uiPadding.PaddingLeft = UDim.new(0, 10)
		uiPadding.PaddingRight = UDim.new(0, 10)
		uiPadding.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 6)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame
		local frame2 = Instance.new("Frame")
		frame2.BackgroundTransparency = 1
		frame2.AutomaticSize = Enum.AutomaticSize.XY
		frame2.Size = UDim2.new(0, 0, 0, 0)
		frame2.LayoutOrder = 1
		frame2.ZIndex = tbl.Toast + 1
		frame2.Parent = frame
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout2.Padding = UDim.new(0, 7)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = frame2
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(icon)
		imageLabel.ImageColor3 = color
		imageLabel.ImageTransparency = 1
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.LayoutOrder = 1
		imageLabel.ZIndex = tbl.Toast + 1
		imageLabel.Parent = frame2
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextTransparency = 1
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.AutomaticSize = Enum.AutomaticSize.XY
		textLabel.Size = UDim2.fromOffset(0, 14)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = tbl.Toast + 1
		textLabel.Parent = frame2
		local textLabel2 = nil

		if text ~= "" then
			textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = text
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextTransparency = 1
			textLabel2.TextSize = 12
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.AutomaticSize = Enum.AutomaticSize.Y
			textLabel2.LayoutOrder = 2
			textLabel2.Size = UDim2.new(1, 0, 0, 14)
			textLabel2.ZIndex = tbl.Toast + 1
			textLabel2.Parent = frame
		end

		local tbl7 = {}

		if type(tbl6.Actions) == "table" and #tbl6.Actions > 0 then
			local frame3 = Instance.new("Frame")
			frame3.Name = "Actions"
			frame3.BackgroundTransparency = 1
			frame3.AutomaticSize = Enum.AutomaticSize.Y
			frame3.Size = UDim2.new(1, 0, 0, 0)
			frame3.LayoutOrder = 3
			frame3.ZIndex = tbl.Toast + 1
			frame3.Parent = frame
			local uiListLayout3 = Instance.new("UIListLayout")
			uiListLayout3.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout3.Padding = UDim.new(0, 6)
			uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout3.Parent = frame3

			for i, action in ipairs(tbl6.Actions) do
				local textButton = Instance.new("TextButton")
				textButton.AutoButtonColor = false
				textButton.BackgroundColor3 = color
				textButton.BackgroundTransparency = 1
				textButton.BorderSizePixel = 0
				textButton.Text = ""
				textButton.AutomaticSize = Enum.AutomaticSize.X
				textButton.Size = UDim2.fromOffset(0, 22)
				textButton.LayoutOrder = i
				textButton.ZIndex = tbl.Toast + 1
				textButton.Parent = frame3
				createUICorner(textButton, 6)
				local v6 = createUIStroke(textButton, color, 1, 1)
				local uiPadding2 = Instance.new("UIPadding")
				uiPadding2.PaddingLeft = UDim.new(0, 8)
				uiPadding2.PaddingRight = UDim.new(0, 8)
				uiPadding2.Parent = textButton
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.Font
				textLabel3.Text = action.Text or "Action"
				textLabel3.TextColor3 = color
				textLabel3.TextTransparency = 1
				textLabel3.TextSize = 12
				textLabel3.AutomaticSize = Enum.AutomaticSize.X
				textLabel3.Size = UDim2.fromOffset(0, 22)
				textLabel3.ZIndex = tbl.Toast + 2
				textLabel3.Parent = textButton
				fn17(textButton, { BackgroundTransparency = 0.85 }, 0.26)
				fn17(v6, { Transparency = 0.6 }, 0.26)
				fn17(textLabel3, { TextTransparency = 0 }, 0.26)

				textButton.MouseEnter:Connect(function()
					fn17(textButton, { BackgroundTransparency = 0.7 }, 0.12)
				end)

				textButton.MouseLeave:Connect(function()
					fn17(textButton, { BackgroundTransparency = 0.85 }, 0.12)
				end)

				textButton.MouseButton1Click:Connect(function()
					if action.Callback then
						fn2(action.Callback)
					end

					if action.DismissOnClick ~= false then
						fn35()
					end
				end)

				table.insert(tbl7, { Button = textButton, Stroke = v6, Label = textLabel3 })
			end
		end

		local frame3 = Instance.new("Frame")
		frame3.BackgroundColor3 = Color3.new(1, 1, 1)
		frame3.BackgroundTransparency = 1
		frame3.BorderSizePixel = 0
		frame3.Size = UDim2.new(1, 0, 0, 3)
		frame3.LayoutOrder = 4
		frame3.ZIndex = tbl.Toast + 1
		frame3.Parent = frame
		createUICorner(frame3, 2)
		local frame4 = Instance.new("Frame")
		frame4.BackgroundColor3 = color
		frame4.BackgroundTransparency = 1
		frame4.BorderSizePixel = 0
		frame4.AnchorPoint = Vector2.new(0, 0.5)
		frame4.Position = UDim2.new(0, 0, 0.5, 0)
		frame4.Size = UDim2.fromScale(1, 1)
		frame4.ZIndex = tbl.Toast + 2
		frame4.Parent = frame3
		createUICorner(frame4, 2)
		local uiGradient = Instance.new("UIGradient")
		local new = ColorSequenceKeypoint.new
		uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, color:Lerp(Color3.new(1, 1, 1), 0.4)), new(1, color) })
		uiGradient.Parent = frame4
		local flag6 = false

		fn35 = function()
			if flag6 or not frame.Parent then
				return
			end
			flag6 = true
			if not frame.Visible then
				frame:Destroy()
				return
			end
			local n8 = frame.AbsoluteSize.Y / fn23()
			frame.AutomaticSize = Enum.AutomaticSize.None
			frame.Size = UDim2.new(1, 0, 0, n8)
			fn17(frame, { BackgroundTransparency = 1 }, 0.18)
			fn17(v4, { Transparency = 1 }, 0.18)
			fn17(uiScale2, { Scale = 0.9 }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
			fn17(imageLabel, { ImageTransparency = 1 }, 0.18)
			fn17(textLabel, { TextTransparency = 1 }, 0.18)

			if textLabel2 then
				fn17(textLabel2, { TextTransparency = 1 }, 0.18)
			end

			fn4(0.1, function()
				if frame and frame.Parent then
					fn17(frame, { Size = UDim2.new(1, 0, 0, 0) }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
				end
			end)

			fn4(0.34, function()
				if v5 then
					v5:Destroy()
					v5 = nil
				end

				if frame then
					frame:Destroy()
				end
			end)
		end

		table.insert(tbl3, {
			Card = frame,
			Start = function()
				if flag6 or not frame.Parent then
					return
				end
				frame.Visible = true
				v5 = fn10(frame)
				fn17(frame, { BackgroundTransparency = 0.25 }, 0.26)
				fn17(v4, { Transparency = 0.82 }, 0.26)
				fn17(uiScale2, { Scale = 1 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				fn17(imageLabel, { ImageTransparency = 0 }, 0.26)
				fn17(textLabel, { TextTransparency = 0 }, 0.26)
				fn17(frame3, { BackgroundTransparency = 0.88 }, 0.26)
				fn17(frame4, { BackgroundTransparency = 0 }, 0.26)

				if textLabel2 then
					fn17(textLabel2, { TextTransparency = 0 }, 0.26)
				end

				fn4(0.05, function()
					if frame4 and frame4.Parent then
						fn17(frame4, { Size = UDim2.new(0, 0, 1, 0) }, duration - 0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
					end
				end)

				fn4(duration, fn35)
			end,
		})

		return { Instance = frame, Dismiss = fn35 }
	end

	local function fn35(arg)
		local v = fn22()
		if not arg or arg.AbsoluteSize.X <= 0 then
			return v.X / 2, v.Y / 2
		end
		local absolutePosition = arg.AbsolutePosition
		local absoluteSize = arg.AbsoluteSize
		local n8 = absolutePosition.Y + absoluteSize.Y / 2
		return fn6(absolutePosition.X + absoluteSize.X / 2, 190, math.max(190, v.X - 190)), (fn6(n8, 110, math.max(110, v.Y - 110)))
	end

	index.Confirm = function(arg, arg2)
		local tbl6 = arg2 or {}
		local title = tbl6.Title or "Confirm"
		local text = tbl6.Text or ""
		local confirmText = tbl6.ConfirmText or "Confirm"
		local cancelText = tbl6.CancelText or "Cancel"
		local flag6 = tbl6.Danger == true
		local window = tbl6.Window

		if type(window) == "table" then
			window = window._gui
		end

		local root = index._Root
		local v = index2.new()
		local textButton = Instance.new("TextButton")
		textButton.Name = "ConfirmBackdrop"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Modal
		textButton.Parent = root
		local frame = Instance.new("Frame")
		frame.Name = "ConfirmDialog"
		frame.AnchorPoint = Vector2.new(0.5, 0.5)
		local v4, v5 = fn35(window)
		local v6 = fn23()
		frame.Position = UDim2.fromOffset(math.round(v4 / v6), math.round(v5 / v6))
		frame.BackgroundColor3 = index.Theme.Surface
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.Active = true
		frame.ClipsDescendants = true
		frame.AutomaticSize = Enum.AutomaticSize.Y
		frame.Size = UDim2.new(0, 340, 0, 0)
		frame.ZIndex = tbl.ModalTop
		frame.Parent = textButton
		createUICorner(frame, 16)
		local v7 = createUIStroke(frame, Color3.new(1, 1, 1), 1, 1)
		local uiScale2 = Instance.new("UIScale")
		uiScale2.Scale = 0.9
		uiScale2.Parent = frame
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 20)
		uiPadding.PaddingBottom = UDim.new(0, 18)
		uiPadding.PaddingLeft = UDim.new(0, 20)
		uiPadding.PaddingRight = UDim.new(0, 20)
		uiPadding.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 10)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = flag6 and index.Theme.Danger or index.Theme.Text
		textLabel.TextTransparency = 1
		textLabel.TextSize = 18
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextWrapped = true
		textLabel.AutomaticSize = Enum.AutomaticSize.Y
		textLabel.Size = UDim2.new(1, 0, 0, 20)
		textLabel.LayoutOrder = 1
		textLabel.ZIndex = tbl.ModalTop + 1
		textLabel.Parent = frame
		local textLabel2 = nil

		if text ~= "" then
			textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = text
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextTransparency = 1
			textLabel2.TextSize = 14
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.LineHeight = 1.25
			textLabel2.AutomaticSize = Enum.AutomaticSize.Y
			textLabel2.Size = UDim2.new(1, 0, 0, 14)
			textLabel2.LayoutOrder = 2
			textLabel2.ZIndex = tbl.ModalTop + 1
			textLabel2.Parent = frame
		end

		local frame2 = Instance.new("Frame")
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.new(1, 0, 0, 38)
		frame2.LayoutOrder = 3
		frame2.ZIndex = tbl.ModalTop + 1
		frame2.Parent = frame
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.PaddingTop = UDim.new(0, 6)
		uiPadding2.Parent = frame2
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout2.Padding = UDim.new(0, 8)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = frame2

		local function createTextButton2(text2, layoutOrder, arg3)
			local danger = arg3 and flag6 and index.Theme.Danger or Color3.new(1, 1, 1)
			local textButton2 = Instance.new("TextButton")
			textButton2.Text = ""
			textButton2.AutoButtonColor = false
			textButton2.BackgroundColor3 = danger
			textButton2.BackgroundTransparency = arg3 and (flag6 and 0.55 or 0.82) or 1
			textButton2.BorderSizePixel = 0
			textButton2.Size = UDim2.new(0.5, -4, 1, 0)
			textButton2.LayoutOrder = layoutOrder
			textButton2.ZIndex = tbl.ModalTop + 1
			textButton2.Parent = frame2
			createUICorner(textButton2, 10)
			local v8 = createUIStroke(textButton2, danger, 1, arg3 and 0.7 or 0.85)
			local textLabel3 = Instance.new("TextLabel")
			textLabel3.BackgroundTransparency = 1
			textLabel3.FontFace = index.Theme.Font
			textLabel3.Text = text2
			textLabel3.TextColor3 = arg3 and flag6 and index.Theme.Danger or index.Theme.Text
			textLabel3.TextSize = 14
			textLabel3.Size = UDim2.fromScale(1, 1)
			textLabel3.ZIndex = tbl.ModalTop + 2
			textLabel3.Parent = textButton2
			local backgroundTransparency = textButton2.BackgroundTransparency
			local transparency = v8.Transparency

			v:Add(textButton2.MouseEnter:Connect(function()
				fn17(textButton2, { BackgroundTransparency = math.max(backgroundTransparency - 0.1, 0) }, 0.12)
				fn17(v8, { Transparency = math.max(transparency - 0.15, 0) }, 0.12)
			end))

			v:Add(textButton2.MouseLeave:Connect(function()
				fn17(textButton2, { BackgroundTransparency = backgroundTransparency }, 0.12)
				fn17(v8, { Transparency = transparency }, 0.12)
			end))

			return textButton2
		end

		local v8 = createTextButton2(cancelText, 1, false)
		local v9 = createTextButton2(confirmText, 2, true)
		local flag7 = false

		local function fn36(arg3)
			if flag7 then
				return
			end
			flag7 = true
			fn17(uiScale2, { Scale = 0.94 }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
			fn17(frame, { BackgroundTransparency = 1 }, 0.18)
			fn17(v7, { Transparency = 1 }, 0.18)
			fn17(textButton, { BackgroundTransparency = 1 }, 0.18)
			fn17(textLabel, { TextTransparency = 1 }, 0.12)

			if textLabel2 then
				fn17(textLabel2, { TextTransparency = 1 }, 0.12)
			end

			fn4(0.18, function()
				v:Destroy()

				if textButton then
					textButton:Destroy()
				end
			end)

			if tbl6.Callback then
				fn2(tbl6.Callback, arg3)
			end
		end

		v:Add(textButton.MouseButton1Click:Connect(function()
			fn36(false)
		end))

		v:Add(v8.MouseButton1Click:Connect(function()
			fn36(false)
		end))

		v:Add(v9.MouseButton1Click:Connect(function()
			fn36(true)
		end))

		v:Add(UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed or flag7 then
				return
			end

			if input.KeyCode == Enum.KeyCode.Return or input.KeyCode == Enum.KeyCode.KeypadEnter then
				fn36(true)
			elseif input.KeyCode == Enum.KeyCode.Escape then
				fn36(false)
			end
		end))

		fn17(textButton, { BackgroundTransparency = 0.5 }, 0.18)
		fn17(frame, { BackgroundTransparency = 0 }, 0.18)
		fn17(v7, { Transparency = 0.8 }, 0.18)
		fn17(textLabel, { TextTransparency = 0 }, 0.18)

		if textLabel2 then
			fn17(textLabel2, { TextTransparency = 0 }, 0.18)
		end

		fn17(uiScale2, { Scale = 1 }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		return { Close = fn36 }
	end

	index.Modal = function(arg, arg2)
		local tbl6 = arg2 or {}
		local title = tbl6.Title or "Modal"
		local text = tbl6.Text or ""
		local confirmText = tbl6.ConfirmText or "Confirm"
		local cancelText = tbl6.CancelText or "Cancel"
		local flag6 = tbl6.Danger == true
		local fields = tbl6.Fields or {}
		local window = tbl6.Window

		if type(window) == "table" then
			window = window._gui
		end

		local root = index._Root
		local v = index2.new()
		local textButton = Instance.new("TextButton")
		textButton.Name = "ModalBackdrop"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Modal
		textButton.Parent = root
		local frame = Instance.new("Frame")
		frame.Name = "ModalDialog"
		frame.AnchorPoint = Vector2.new(0.5, 0.5)
		local v4, v5 = fn35(window)
		local v6 = fn23()
		frame.Position = UDim2.fromOffset(math.round(v4 / v6), math.round(v5 / v6))
		frame.BackgroundColor3 = index.Theme.Surface
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.Active = true
		frame.ClipsDescendants = true
		frame.AutomaticSize = Enum.AutomaticSize.Y
		frame.Size = UDim2.new(0, 360, 0, 0)
		frame.ZIndex = tbl.ModalTop
		frame.Parent = textButton
		createUICorner(frame, 16)
		local v7 = createUIStroke(frame, Color3.new(1, 1, 1), 1, 1)
		local uiScale2 = Instance.new("UIScale")
		uiScale2.Scale = 0.9
		uiScale2.Parent = frame
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 20)
		uiPadding.PaddingBottom = UDim.new(0, 18)
		uiPadding.PaddingLeft = UDim.new(0, 20)
		uiPadding.PaddingRight = UDim.new(0, 20)
		uiPadding.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 14)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = flag6 and index.Theme.Danger or index.Theme.Text
		textLabel.TextTransparency = 1
		textLabel.TextSize = 18
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextWrapped = true
		textLabel.AutomaticSize = Enum.AutomaticSize.Y
		textLabel.Size = UDim2.new(1, 0, 0, 20)
		textLabel.LayoutOrder = 1
		textLabel.ZIndex = tbl.ModalTop + 1
		textLabel.Parent = frame
		local textLabel2 = nil

		if text ~= "" then
			textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = text
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextTransparency = 1
			textLabel2.TextSize = 13
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.LineHeight = 1.25
			textLabel2.AutomaticSize = Enum.AutomaticSize.Y
			textLabel2.Size = UDim2.new(1, 0, 0, 14)
			textLabel2.LayoutOrder = 2
			textLabel2.ZIndex = tbl.ModalTop + 1
			textLabel2.Parent = frame
		end

		local frame2 = Instance.new("Frame")
		frame2.BackgroundTransparency = 1
		frame2.AutomaticSize = Enum.AutomaticSize.Y
		frame2.Size = UDim2.new(1, 0, 0, 0)
		frame2.LayoutOrder = 3
		frame2.ZIndex = tbl.ModalTop + 1
		frame2.Parent = frame
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.Padding = UDim.new(0, 10)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = frame2
		local tbl7 = {}
		local tbl8 = {}

		for i, field in ipairs(fields) do
			local multiLine = field.Type == "textarea"
			local n8 = field.Label and field.Label ~= "" and 16 or 0
			local n9 = multiLine and 60 or 34
			local frame3 = Instance.new("Frame")
			frame3.BackgroundTransparency = 1
			frame3.AutomaticSize = Enum.AutomaticSize.Y
			frame3.Size = UDim2.new(1, 0, 0, 0)
			frame3.LayoutOrder = i
			frame3.ZIndex = tbl.ModalTop + 1
			frame3.Parent = frame2
			local uiListLayout3 = Instance.new("UIListLayout")
			uiListLayout3.Padding = UDim.new(0, 4)
			uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout3.Parent = frame3

			if n8 > 0 then
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.FontRegular
				textLabel3.Text = string.upper(field.Label)
				textLabel3.TextColor3 = flag6 and index.Theme.Danger or index.Theme.TextDim
				textLabel3.TextSize = 11
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.Size = UDim2.new(1, 0, 0, n8)
				textLabel3.LayoutOrder = 1
				textLabel3.ZIndex = tbl.ModalTop + 2
				textLabel3.Parent = frame3
			end

			local frame4 = Instance.new("Frame")
			frame4.BackgroundColor3 = Color3.new(1, 1, 1)
			frame4.BackgroundTransparency = 0.93
			frame4.BorderSizePixel = 0
			frame4.Size = UDim2.new(1, 0, 0, n9)
			frame4.LayoutOrder = 2
			frame4.ZIndex = tbl.ModalTop + 2
			frame4.Parent = frame3
			createUICorner(frame4, 9)
			local v8 = createUIStroke(frame4, Color3.new(1, 1, 1), 1, 0.88)
			local uiPadding2 = Instance.new("UIPadding")
			uiPadding2.PaddingLeft = UDim.new(0, 10)
			uiPadding2.PaddingRight = UDim.new(0, 10)
			uiPadding2.PaddingTop = UDim.new(0, multiLine and 8 or 0)
			uiPadding2.Parent = frame4
			local textBox = Instance.new("TextBox")
			textBox.ClearTextOnFocus = false
			textBox.MultiLine = multiLine
			textBox.FontFace = index.Theme.FontRegular
			textBox.PlaceholderText = field.Placeholder or ""
			textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 122)
			textBox.Text = tostring(field.Default or "")
			textBox.TextColor3 = index.Theme.Text
			fn18(textBox, "Text")
			textBox.TextSize = 13
			textBox.TextXAlignment = Enum.TextXAlignment.Left
			textBox.TextYAlignment = multiLine and Enum.TextYAlignment.Top or Enum.TextYAlignment.Center
			textBox.TextWrapped = multiLine
			textBox.ClipsDescendants = true
			textBox.BackgroundTransparency = 1
			textBox.Size = UDim2.fromScale(1, 1)
			textBox.ZIndex = tbl.ModalTop + 3
			textBox.Parent = frame4

			if field.MaxLength then
				v:Add(textBox:GetPropertyChangedSignal("Text"):Connect(function()
					local flag7 = utf8.len(textBox.Text)

					if flag7 then
						local maxLength = field.MaxLength
						flag7 = utf8.len(textBox.Text) > maxLength
					end

					if flag7 then
						textBox.Text = string.sub(textBox.Text, 1, field.MaxLength)
					end
				end))
			end

			v:Add(textBox.Focused:Connect(function()
				fn17(v8, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
				fn17(frame4, { BackgroundTransparency = 0.85 }, 0.18)
			end))

			v:Add(textBox.FocusLost:Connect(function()
				fn17(v8, { Color = Color3.new(1, 1, 1), Transparency = 0.88 }, 0.18)
				fn17(frame4, { BackgroundTransparency = 0.93 }, 0.18)
			end))

			local tbl9 = { Type = field.Type, Box = textBox, Multiline = multiLine }
			tbl7[field.Key or i] = tbl9
			table.insert(tbl8, tbl9)
		end

		local frame3 = Instance.new("Frame")
		frame3.BackgroundTransparency = 1
		frame3.Size = UDim2.new(1, 0, 0, 38)
		frame3.LayoutOrder = 4
		frame3.ZIndex = tbl.ModalTop + 1
		frame3.Parent = frame
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.PaddingTop = UDim.new(0, 4)
		uiPadding2.Parent = frame3
		local uiListLayout3 = Instance.new("UIListLayout")
		uiListLayout3.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout3.Padding = UDim.new(0, 8)
		uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout3.Parent = frame3

		local function createTextButton2(text2, layoutOrder, arg3)
			local danger = arg3 and flag6 and index.Theme.Danger or Color3.new(1, 1, 1)
			local textButton2 = Instance.new("TextButton")
			textButton2.Text = ""
			textButton2.AutoButtonColor = false
			textButton2.BackgroundColor3 = danger
			textButton2.BackgroundTransparency = arg3 and (flag6 and 0.55 or 0.82) or 1
			textButton2.BorderSizePixel = 0
			textButton2.Size = UDim2.new(0.5, -4, 1, 0)
			textButton2.LayoutOrder = layoutOrder
			textButton2.ZIndex = tbl.ModalTop + 1
			textButton2.Parent = frame3
			createUICorner(textButton2, 10)
			local v8 = createUIStroke(textButton2, danger, 1, arg3 and 0.7 or 0.85)
			local textLabel3 = Instance.new("TextLabel")
			textLabel3.BackgroundTransparency = 1
			textLabel3.FontFace = index.Theme.Font
			textLabel3.Text = text2
			textLabel3.TextColor3 = arg3 and flag6 and index.Theme.Danger or index.Theme.Text
			textLabel3.TextSize = 14
			textLabel3.Size = UDim2.fromScale(1, 1)
			textLabel3.ZIndex = tbl.ModalTop + 2
			textLabel3.Parent = textButton2
			local backgroundTransparency = textButton2.BackgroundTransparency
			local transparency = v8.Transparency

			v:Add(textButton2.MouseEnter:Connect(function()
				fn17(textButton2, { BackgroundTransparency = math.max(backgroundTransparency - 0.1, 0) }, 0.12)
				fn17(v8, { Transparency = math.max(transparency - 0.15, 0) }, 0.12)
			end))

			v:Add(textButton2.MouseLeave:Connect(function()
				fn17(textButton2, { BackgroundTransparency = backgroundTransparency }, 0.12)
				fn17(v8, { Transparency = transparency }, 0.12)
			end))

			return textButton2
		end

		local v8 = createTextButton2(cancelText, 1, false)
		local v9 = createTextButton2(confirmText, 2, true)

		local function fn36()
			local tbl9 = {}

			for k, v10 in pairs(tbl7) do
				if v10.Type == "tags" then
					local tbl10 = {}

					for match in string.gmatch(v10.Box.Text, "[^,]+") do
						local str2 = match:gsub("^%s+", ""):gsub("%s+$", "")

						if str2 ~= "" then
							table.insert(tbl10, str2)
						end
					end

					tbl9[k] = tbl10
				else
					tbl9[k] = v10.Box.Text
				end
			end

			return tbl9
		end

		local flag7 = false

		local function fn37(arg3)
			if flag7 then
				return
			end
			flag7 = true
			fn17(uiScale2, { Scale = 0.94 }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
			fn17(frame, { BackgroundTransparency = 1 }, 0.18)
			fn17(v7, { Transparency = 1 }, 0.18)
			fn17(textButton, { BackgroundTransparency = 1 }, 0.18)
			fn17(textLabel, { TextTransparency = 1 }, 0.12)

			if textLabel2 then
				fn17(textLabel2, { TextTransparency = 1 }, 0.12)
			end

			fn4(0.18, function()
				v:Destroy()

				if textButton then
					textButton:Destroy()
				end
			end)

			if tbl6.Callback then
				fn2(tbl6.Callback, arg3, arg3 and fn36() or nil)
			end
		end

		v:Add(textButton.MouseButton1Click:Connect(function()
			fn37(false)
		end))

		v:Add(v8.MouseButton1Click:Connect(function()
			fn37(false)
		end))

		v:Add(v9.MouseButton1Click:Connect(function()
			fn37(true)
		end))

		v:Add(UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed or flag7 then
				return
			end

			if input.KeyCode == Enum.KeyCode.Escape then
				fn37(false)
			end
		end))

		fn17(textButton, { BackgroundTransparency = 0.5 }, 0.18)
		fn17(frame, { BackgroundTransparency = 0 }, 0.18)
		fn17(v7, { Transparency = 0.8 }, 0.18)
		fn17(textLabel, { TextTransparency = 0 }, 0.18)

		if textLabel2 then
			fn17(textLabel2, { TextTransparency = 0 }, 0.18)
		end

		fn17(uiScale2, { Scale = 1 }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

		if tbl8[1] and tbl6.AutoFocus ~= false then
			fn3(function()
				if not flag7 and tbl8[1].Box and tbl8[1].Box.Parent then
					tbl8[1].Box:CaptureFocus()
				end
			end)
		end

		for i, v10 in ipairs(tbl8) do
			if v10.Box and not v10.Multiline then
				v:Add(v10.Box.FocusLost:Connect(function(enterPressed)
					if not enterPressed or flag7 then
						return
					end
					local v11 = tbl8[i + 1]

					if v11 and v11.Box and v11.Box.Parent then
						v11.Box:CaptureFocus()
					else
						fn37(true)
					end
				end))
			end
		end

		return { Close = fn37 }
	end

	local n8 = 22

	local function fn36(arg, arg2, arg3, arg4)
		local v = arg2 or arg
		local uiDragDetector = v:FindFirstChildWhichIsA("UIDragDetector")

		if uiDragDetector then
			uiDragDetector.Enabled = false
		end

		local flag6 = false
		local flag7 = false
		local vector2 = Vector2.zero
		local v4 = nil

		local function fn37()
			local position = arg.Position
			local absoluteSize = fn22()

			if arg.Parent and arg.Parent:IsA("GuiObject") and arg.Parent.AbsoluteSize.X > 0 then
				absoluteSize = arg.Parent.AbsoluteSize
			end

			local v5 = fn23()
			return Vector2.new(position.X.Scale * absoluteSize.X + position.X.Offset * v5, position.Y.Scale * absoluteSize.Y + position.Y.Offset * v5)
		end

		local v5 = fn37()
		local v6 = v5

		local function fn38(arg5)
			local v7 = fn22()
			local absoluteSize = arg.AbsoluteSize
			local anchorPoint = arg.AnchorPoint
			local n9 = arg5.Y - absoluteSize.Y * anchorPoint.Y
			local v8 = fn6(arg5.X - absoluteSize.X * anchorPoint.X, -absoluteSize.X + 60, v7.X - 60)
			local n10 = v7.Y - 60
			return Vector2.new(v8 + absoluteSize.X * anchorPoint.X, fn6(n9, -GuiService:GetGuiInset().Y, n10) + absoluteSize.Y * anchorPoint.Y)
		end

		local tbl6 = { Sync = function()
			v5 = fn37()
			v6 = v5
			flag7 = false
		end }

		local function fn39(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
				return
			end

			if flag6 then
				return
			end
			flag6 = true
			flag7 = true
			v4 = input
			v5 = fn37()
			v6 = v5
			vector2 = Vector2.new(input.Position.X, input.Position.Y) - v5
		end

		arg3:Add(v.InputBegan:Connect(fn39))
		local v7 = ipairs
		arg4 = arg4 or {}

		for _, v8 in v7(arg4) do
			arg3:Add(v8.InputBegan:Connect(fn39))
		end

		error("devirt: value <luasym.LuaFunc object at 0x00000180871D4910> in an expression (at 207:50)")
	end

	local function fn37(arg, arg2, arg3, arg4)
		if not (arg4 or {}).MinSize then
		end

		local flag6 = false
		local absoluteSize = nil
		local absolutePosition = nil
		local vector2 = nil
		local v = nil

		arg3:Add(arg2.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
				return
			end

			if flag6 then
				return
			end
			flag6 = true
			v = input
			absoluteSize = arg.AbsoluteSize
			absolutePosition = arg.AbsolutePosition
			vector2 = Vector2.new(input.Position.X, input.Position.Y)
		end))

		error("devirt: value <luasym.LuaFunc object at 0x0000018086C955D0> in an expression (at 207:36)")
	end

	local n9 = 6

	createFrame3 = function(parent, arg)
		local frame = Instance.new("Frame")
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.96
		frame.BorderSizePixel = 0
		frame.Size = UDim2.new(1, 0, 0, arg or 44)
		frame.ZIndex = tbl.Content
		frame.Parent = parent
		fn18(frame, "Glass")
		createUICorner(frame, index.Theme.CornerRadiusSm)
		local v = createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.95)
		local uiGradient = Instance.new("UIGradient")
		uiGradient.Rotation = 90
		local new = NumberSequenceKeypoint.new
		uiGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), new(1, 0.5) })
		uiGradient.Parent = frame

		frame.MouseEnter:Connect(function()
			fn17(frame, { BackgroundTransparency = 0.93 }, 0.12)
			fn17(v, { Transparency = 0.88 }, 0.12)
		end)

		frame.MouseLeave:Connect(function()
			fn17(frame, { BackgroundTransparency = 0.96 }, 0.18)
			fn17(v, { Transparency = 0.95 }, 0.18)
		end)

		return frame
	end

	fn27 = function(parent, image)
		image = image and fn21(image) or ""
		if image == "" then
			return 14, nil
		end
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.Name = "LeadingIcon"
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = image
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(16, 16)
		imageLabel.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel.Position = UDim2.new(0, 14, 0.5, 0)
		imageLabel.ZIndex = tbl.Content + 1
		imageLabel.Parent = parent
		fn18(imageLabel, "TextDim")
		return 40, imageLabel
	end

	fn28 = function(parent, arg, arg2, text, text2, arg3, arg4)
		local n10 = arg4 or 0
		local flag6 = text2 ~= nil and text2 ~= ""
		local n11 = 15
		local n12 = 2
		local textLabel = Instance.new("TextLabel")
		textLabel.Name = "Title"
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = text
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 13
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextYAlignment = Enum.TextYAlignment.Center
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Size = UDim2.new(1, -(arg + (type(arg2) == "function" and arg2() or arg2)), 0, 15)
		textLabel.Position = UDim2.fromOffset(arg, 0)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = parent
		local textLabel2 = nil

		if flag6 then
			textLabel2 = Instance.new("TextLabel")
			textLabel2.Name = "Description"
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = text2
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextSize = 12
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Top
			textLabel2.Size = UDim2.new(1, -(arg + (type(arg2) == "function" and arg2() or arg2)), 0, 14)
			textLabel2.Position = UDim2.fromOffset(arg, n11 + n12)
			textLabel2.ZIndex = tbl.Content + 1
			textLabel2.Parent = parent
		end

		local n13 = -1
		local n14 = -1

		local function fn38()
			local n15 = parent.AbsoluteSize.X / fn23()
			if n15 <= 0 then
				return
			end
			local flag7 = type(arg2) == "function" and arg2() or arg2
			if math.abs(n15 - n13) < 1 and flag7 == n14 then
				return
			end
			n14 = flag7
			textLabel.Size = UDim2.new(1, -(arg + flag7), 0, 15)
			n13 = n15
			local n16 = math.max(n15 - arg - flag7, 1)
			local n17 = 14

			if flag6 then
				local v, v4 = fn20(text2, 12, n16)
				n17 = math.max(14, v4)
				textLabel2.Size = UDim2.new(1, -(arg + (type(arg2) == "function" and arg2() or arg2)), 0, n17)
			end

			local n18 = flag6 and n11 + n12 + n17 or 15
			local n19 = math.max(arg3, n18 + 16)
			parent.Size = UDim2.new(1, 0, 0, n19 + n10)
			local n20 = math.floor((n19 - n18) / 2)
			textLabel.Position = UDim2.fromOffset(arg, n20)

			if flag6 then
				textLabel2.Position = UDim2.fromOffset(arg, n20 + n11 + n12)
			end
		end

		parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn38)
		fn3(fn38)
		return textLabel, textLabel2, fn38
	end

	local function createFrame4(arg, parent, arg2)
		local frame = Instance.new("Frame")
		frame.Name = "EmptyState"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.fromScale(1, 1)
		frame.ZIndex = (arg.ZIndex or 0) + 5
		frame.Parent = parent
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Vertical
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 6)
		uiListLayout.Parent = frame
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21("frown")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(26, 26)
		imageLabel.LayoutOrder = 1
		imageLabel.ZIndex = frame.ZIndex + 1
		imageLabel.Parent = frame
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = "There's nothing here yet"
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 13
		textLabel.AutomaticSize = Enum.AutomaticSize.XY
		textLabel.Size = UDim2.fromOffset(0, 16)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = frame.ZIndex + 1
		textLabel.Parent = frame

		local function fn38()
			local flag6 = false

			for _, child in ipairs(arg:GetChildren()) do
				local className = child.ClassName
				if className ~= "UIListLayout" and className ~= "UIPadding" then
					flag6 = true
					break
				end
			end

			frame.Visible = not flag6
		end

		arg2:Add(arg.ChildAdded:Connect(fn38))
		arg2:Add(arg.ChildRemoved:Connect(fn38))
		fn38()
		return frame
	end

	local index4 = {}
	index4.__index = index4
	index3 = {}
	index3.__index = index3

	local function fn38(arg, arg2)
		local v = fn22()
		local v4 = fn23()
		local n10 = v.X / v4
		local n11 = v.Y / v4

		if flag then
			local n12 = math.floor(n10 * (n10 < n11 and 0.94 or 0.7))
			local floor = math.floor
			local n13 = n10 < n11 and 0.72 or 0.94
			arg = n12
			arg2 = floor(n11 * n13)
		end

		local max = math.max
		local n12 = math.floor(math.clamp(arg, math.min(320, n10 - 16), max(280, n10 - 16)))
		local max2 = math.max
		return n12, (math.floor(math.clamp(arg2, math.min(240, n11 - 16), max2(220, n11 - 16))))
	end

	index.CreateWindow = function(arg, arg2)
		local tbl6 = arg2 or {}
		local size = tbl6.Size or UDim2.fromOffset(605, 405)
		local offset = size.X.Offset
		local offset2 = size.Y.Offset
		local v, v4 = fn38(offset, offset2)
		local udim2 = UDim2.fromOffset(v, v4)
		local margin = index.Theme.Margin
		local root = index._Root
		local v5 = index2.new()
		local frame = Instance.new("Frame")
		frame.Name = "Window"
		frame.AnchorPoint = Vector2.new(0.5, 0.5)
		frame.Position = UDim2.fromScale(0.5, flag and 0.5 or 0.55)
		frame.Size = udim2
		frame.BackgroundColor3 = index.Theme.Background
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.ClipsDescendants = true
		frame.ZIndex = tbl.Window
		frame.Parent = root
		createUICorner(frame, index.Theme.CornerRadius)
		createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.92)
		createFrame(frame, index.Theme.CornerRadius, 0.985)
		local frame2 = Instance.new("Frame")
		frame2.Name = "TopBar"
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.new(1, 0, 0, 52)
		frame2.ZIndex = tbl.Content
		frame2.Parent = frame
		local frame3 = Instance.new("Frame")
		frame3.Name = "AccentLine"
		frame3.BackgroundColor3 = index.Theme.Accent
		frame3.BackgroundTransparency = 0.25
		frame3.BorderSizePixel = 0
		frame3.AnchorPoint = Vector2.new(0, 1)
		frame3.Position = UDim2.new(0, 0, 1, 0)
		frame3.Size = UDim2.new(1, 0, 0, 1)
		frame3.ZIndex = tbl.Content
		frame3.Parent = frame2
		frame3:SetAttribute("NullUIAccent", true)
		fn18(frame3, "Accent")
		local uiGradient = Instance.new("UIGradient")
		local numberSequence = NumberSequence.new
		local tbl7 = {}
		local v6 = NumberSequenceKeypoint.new(0, 1)
		local v7 = NumberSequenceKeypoint.new(0.18, 0.25)
		local v8 = NumberSequenceKeypoint.new(0.55, 0.6)
		local new = NumberSequenceKeypoint.new
		tbl7[1] = v6
		tbl7[2] = v7
		tbl7[3] = v8

		do
			local values = table.pack(new(1, 1))
			table.move(values, 1, values.n, 4, tbl7)
		end

		uiGradient.Transparency = numberSequence(tbl7)
		uiGradient.Parent = frame3
		local frame4 = Instance.new("Frame")
		frame4.Name = "WindowControls"
		frame4.AnchorPoint = Vector2.new(1, 0.5)
		frame4.Position = UDim2.new(1, -margin, 0.5, 0)
		frame4.Size = UDim2.fromOffset(120, 26)
		frame4.BackgroundTransparency = 1
		frame4.ZIndex = tbl.Content + 1
		frame4.Parent = frame2
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		uiListLayout.Padding = UDim.new(0, 4)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame4

		local function createTextButton2(arg3, name, layoutOrder, arg4)
			local textButton = Instance.new("TextButton")
			textButton.Name = name
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = Color3.new(1, 1, 1)
			textButton.BackgroundTransparency = 1
			textButton.BorderSizePixel = 0
			textButton.Size = UDim2.fromOffset(26, 26)
			textButton.LayoutOrder = layoutOrder
			textButton.ZIndex = tbl.Content + 1
			textButton.Parent = frame4
			createUICorner(textButton, 8)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21(arg3)
			imageLabel.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel, "TextDim")
			imageLabel.Size = UDim2.fromOffset(14, 14)
			imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel.ZIndex = tbl.Content + 2
			imageLabel.Parent = textButton

			v5:Add(textButton.MouseEnter:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
				local v9 = fn17
				local tbl8 = {}
				local v10 = arg4
				local text

				if arg4 then
					text = v10
				else
					text = index.Theme.Text
				end

				tbl8.ImageColor3 = text
				v9(imageLabel, tbl8, 0.12)
			end))

			v5:Add(textButton.MouseLeave:Connect(function()
				fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
				fn17(imageLabel, { ImageColor3 = index.Theme.TextDim }, 0.12)
			end))

			return textButton
		end

		local search = createTextButton2("search", "SearchButton", 1)
		local minus = createTextButton2("minus", "MinimizeButton", 2)
		local maximize = createTextButton2("maximize", "FullscreenButton", 3)
		local v9 = createTextButton2("x", "CloseButton", 4)
		local n10 = margin + 5

		if tbl6.Icon and tbl6.Icon ~= "" then
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "WindowIcon"
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21(tbl6.Icon)
			imageLabel.ImageColor3 = index.Theme.Text
			fn18(imageLabel, "Text")
			imageLabel.Size = UDim2.fromOffset(20, 20)
			imageLabel.AnchorPoint = Vector2.new(0, 0.5)
			imageLabel.Position = UDim2.new(0, n10, 0.5, 0)
			imageLabel.ZIndex = tbl.Content
			imageLabel.Parent = frame2
			n10 += 28
		end

		local textLabel = Instance.new("TextLabel")
		textLabel.Name = "Title"
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = tbl6.Title or "Window"
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 16
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextYAlignment = Enum.TextYAlignment.Center
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Position = UDim2.fromOffset(n10, tbl6.Subtitle and 8 or 0)
		textLabel.Size = UDim2.new(1, -n10 - 146, 0, 20)
		textLabel.ZIndex = tbl.Content
		textLabel.Parent = frame2
		local textLabel2 = nil

		if tbl6.Subtitle then
			textLabel2 = Instance.new("TextLabel")
			textLabel2.Name = "Subtitle"
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = tbl6.Subtitle
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextSize = 13
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Center
			textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel2.Position = UDim2.fromOffset(n10, 28)
			textLabel2.Size = UDim2.new(1, -n10 - 146, 0, 14)
			textLabel2.ZIndex = tbl.Content
			textLabel2.Parent = frame2
		end

		local n11 = math.clamp(tonumber(tbl6.TabWidth) or 130, 90, 260)
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Name = "TabBar"
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(margin, 58)
		scrollingFrame.Size = UDim2.new(0, n11, 1, -(58 + margin))
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = tbl.Content
		scrollingFrame.Parent = frame
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.Padding = UDim.new(0, 4)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = scrollingFrame
		fn19(scrollingFrame)
		scrollingFrame.ScrollingEnabled = true
		scrollingFrame.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		createFrame2(scrollingFrame, uiListLayout2, frame, v5)
		local frame5 = Instance.new("Frame")
		frame5.Name = "TabIndicatorLayer"
		frame5.BackgroundTransparency = 1
		frame5.ClipsDescendants = true
		frame5.ZIndex = tbl.Window
		frame5.Position = scrollingFrame.Position
		frame5.Size = scrollingFrame.Size
		frame5.Parent = frame
		local frame6 = Instance.new("Frame")
		frame6.Name = "Indicator"
		frame6.BackgroundColor3 = Color3.new(1, 1, 1)
		frame6.BackgroundTransparency = 1
		frame6.BorderSizePixel = 0
		frame6.ZIndex = tbl.Window
		frame6.Size = UDim2.new(1, 0, 0, 34)
		frame6.Position = UDim2.new(0, 0, 0, 0)
		frame6.Parent = frame5
		createUICorner(frame6, 10)
		local uiGradient2 = Instance.new("UIGradient")
		local new2 = NumberSequenceKeypoint.new
		uiGradient2.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), new2(1, 0.65) })
		uiGradient2.Parent = frame6
		local frame7 = Instance.new("Frame")
		frame7.Name = "AccentBar"
		frame7.BackgroundColor3 = index.Theme.Accent
		frame7.BackgroundTransparency = 0.15
		frame7.BorderSizePixel = 0
		frame7.AnchorPoint = Vector2.new(0, 0.5)
		frame7.Position = UDim2.new(0, 0, 0.5, 0)
		frame7.Size = UDim2.new(0, 3, 0, 18)
		frame7.ZIndex = frame6.ZIndex + 1
		frame7.Parent = frame6
		frame7:SetAttribute("NullUIAccent", true)
		fn18(frame7, "Accent")
		createUICorner(frame7, 2)
		local frame8 = Instance.new("Frame")
		frame8.Name = "Divider"
		frame8.BackgroundColor3 = Color3.new(1, 1, 1)
		frame8.BackgroundTransparency = 0.94
		frame8.BorderSizePixel = 0
		frame8.Position = UDim2.new(0, margin + n11 + 14, 0, 58)
		frame8.Size = UDim2.new(0, 1, 1, -(58 + margin))
		frame8.ZIndex = tbl.Content
		frame8.Parent = frame
		local n12 = margin + n11 + 30
		local frame9 = Instance.new("Frame")
		frame9.Name = "Content"
		frame9.BackgroundTransparency = 1
		frame9.Position = UDim2.new(0, n12, 0, 58)
		frame9.Size = UDim2.new(1, -n12 - margin, 1, -(58 + margin))
		frame9.ZIndex = tbl.Content
		frame9.Parent = frame
		local frame10 = Instance.new("Frame")
		frame10.Name = "WindowEdge"
		frame10.BackgroundTransparency = 1
		frame10.AnchorPoint = frame.AnchorPoint
		frame10.Position = frame.Position
		frame10.Size = frame.Size
		frame10.Visible = false
		frame10.ZIndex = tbl.Content + 4
		frame10.Parent = root
		v5:Add(frame10)

		local function fn39()
			frame10.Position = frame.Position
			frame10.Size = frame.Size
		end

		v5:Add(frame:GetPropertyChangedSignal("Position"):Connect(fn39))
		v5:Add(frame:GetPropertyChangedSignal("Size"):Connect(fn39))

		v5:Add(frame:GetPropertyChangedSignal("Visible"):Connect(function()
			frame10.Visible = frame.Visible
		end))

		local n13 = flag and 0.2 or 0.35
		local imageButton = Instance.new("ImageButton")
		imageButton.Name = "ResizeHandle"
		imageButton.BackgroundTransparency = 1
		imageButton.AutoButtonColor = false
		imageButton.Image = ""
		imageButton.AnchorPoint = Vector2.new(0, 0)
		imageButton.Position = UDim2.new(1, flag and -26 or -20, 1, flag and -26 or -20)
		imageButton.Size = flag and UDim2.fromOffset(52, 52) or UDim2.fromOffset(40, 40)
		imageButton.ZIndex = tbl.Content + 4
		imageButton.Parent = frame10
		local frame11 = Instance.new("Frame")
		frame11.Name = "ArcClip"
		frame11.BackgroundTransparency = 1
		frame11.ClipsDescendants = true
		frame11.Position = UDim2.fromOffset(flag and 10 or 4, flag and 10 or 4)
		frame11.Size = UDim2.fromOffset(22, 22)
		frame11.ZIndex = tbl.Content + 4
		frame11.Parent = imageButton
		local frame12 = Instance.new("Frame")
		frame12.Name = "Arc"
		frame12.BackgroundTransparency = 1
		frame12.Position = UDim2.fromOffset(-18, -18)
		frame12.Size = UDim2.fromOffset(36, 36)
		frame12.ZIndex = tbl.Content + 4
		frame12.Parent = frame11
		createUICorner(frame12, 18)
		local v10 = createUIStroke(frame12, index.Theme.TextDim, 2.5, 1)
		fn18(v10, "TextDim")
		local frame13 = Instance.new("Frame")
		frame13.Name = "GripHandle"
		frame13.BackgroundTransparency = 1
		frame13.Active = true
		frame13.AnchorPoint = Vector2.new(0.5, 0)
		frame13.Position = UDim2.new(0.5, 0, 1, 0)
		frame13.Size = flag and UDim2.fromOffset(160, 30) or UDim2.fromOffset(130, 22)
		frame13.ZIndex = tbl.Content + 4
		frame13.Parent = frame10
		local frame14 = Instance.new("Frame")
		frame14.Name = "Pill"
		frame14.BackgroundColor3 = index.Theme.TextDim
		frame14.BackgroundTransparency = 1
		frame14.BorderSizePixel = 0
		frame14.AnchorPoint = Vector2.new(0.5, 0)
		frame14.Position = UDim2.new(0.5, 0, 0, flag and 6 or 4)
		frame14.Size = UDim2.fromOffset(flag and 120 or 100, flag and 5 or 4)
		frame14.ZIndex = tbl.Content + 4
		frame14.Parent = frame13
		createUICorner(frame14, 3)
		fn18(frame14, "TextDim")
		local flag6 = false
		local n14 = 0
		local n15 = 0

		local function fn40(arg3)
			fn17(v10, { Transparency = arg3 }, 0.18)
			fn17(frame14, { BackgroundTransparency = arg3 }, 0.18)
		end

		local function fn41(arg3)
			n14 += 1
			flag6 = true
			fn40(arg3 and 0 or n13)
		end

		local function fn42(arg3)
			n14 += 1
			local v11 = n14

			fn4(arg3 or 1.2, function()
				if v11 == n14 and n15 <= 0 then
					flag6 = false
					fn40(1)
				end
			end)
		end

		for _, v11 in ipairs({ imageButton, frame13 }) do
			v5:Add(v11.MouseEnter:Connect(function()
				fn41(true)
			end))

			v5:Add(v11.MouseLeave:Connect(function()
				fn41(false)
				fn42(1)
			end))

			v5:Add(v11.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					n15 += 1
					fn41(true)
					local connection = nil

					connection = input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							connection:Disconnect()
							n15 = math.max(n15 - 1, 0)
							fn42(flag and 2 or 1)
						end
					end)
				end
			end))
		end

		v5:Add(frame.MouseEnter:Connect(function()
			if not flag then
				fn41(false)
			end
		end))

		v5:Add(frame.MouseLeave:Connect(function()
			fn42(0.8)
		end))

		v5:Add(frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.Touch then
				fn41(false)
				fn42(2.5)
			end
		end))

		frame10.Visible = true
		fn17(frame, { BackgroundTransparency = 0.15 }, 0.6, Enum.EasingStyle.Exponential)

		local obj3 = setmetatable({
			_gui = frame,
			_content = frame9,
			_tabBar = scrollingFrame,
			_tabWidth = n11,
			_tabIndicatorLayer = frame5,
			_tabIndicator = frame6,
			_divider = frame8,
			_resizeHandle = imageButton,
			_gripHandle = frame13,
			_titleLabel = textLabel,
			_subLabel = textLabel2,
			_tabs = {},
			_currentTab = nil,
			_normalSize = udim2,
			_requestedSize = Vector2.new(offset, offset2),
			_userSized = false,
			_fullscreen = false,
			_janitor = v5,
			_state = "open",
			_busy = false,
			_destroyed = false,
			_onClose = tbl6.OnClose,
			_autoUnload = tbl6.AutoUnload,
			Closed = fn5(),
			_searchIndex = {},
			_useBlur = tbl6.UseBlur ~= false,
			_defaultTabName = tbl6.DefaultTab,
			_tabChangeListeners = {},
		}, index4)

		table.insert(index._Windows, obj3)

		if tbl6.Draggable ~= false then
			obj3._drag = fn36(frame, frame2, v5, { frame13 })
		end

		if tbl6.Resizable ~= false then
			fn37(frame, imageButton, v5, {
				MinSize = Vector2.new(math.min((tbl6.MinSize or Vector2.new(420, 300)).X, udim2.X.Offset), math.min((tbl6.MinSize or Vector2.new(420, 300)).Y, udim2.Y.Offset)),
				OnResize = function(normalSize, arg3)
					if obj3._fullscreen then
						return
					end

					if arg3 then
						obj3._normalSize = normalSize
						obj3._sizeBeforeMinimize = normalSize
						obj3._userSized = true
					end
				end,
			})
		else
			imageButton.Visible = false
		end

		if obj3._useBlur then
			obj3._acrylic = fn10(frame)
			v5:Add(obj3._acrylic)
		end

		v5:Add(v9.MouseButton1Click:Connect(function()
			index:Confirm({
				Title = "Close Window",
				Text = "This unloads the interface completely: every panel, button and background task is removed and you will have to run the script again. To just hide it, use the minimize button.",
				ConfirmText = "Close & Unload",
				CancelText = "Cancel",
				Danger = true,
				Window = obj3,
				Callback = function(arg3)
					if arg3 then
						obj3:Destroy()
					end
				end,
			})
		end))

		v5:Add(minus.MouseButton1Click:Connect(function()
			if obj3._state == "collapsed" then
				obj3:Expand()
			else
				obj3:Collapse()
			end
		end))

		v5:Add(maximize.MouseButton1Click:Connect(function()
			obj3:ToggleFullscreen()
		end))

		v5:Add(search.MouseButton1Click:Connect(function()
			obj3:_OpenSearch()
		end))

		v5:Add(UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed or flag4 then
				return
			end

			if obj3._state ~= "open" then
				return
			end

			if (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl) or UserInputService:IsKeyDown(Enum.KeyCode.LeftMeta) or UserInputService:IsKeyDown(Enum.KeyCode.RightMeta)) and input.KeyCode == Enum.KeyCode.K then
				obj3:_OpenSearch()
			end
		end))

		local toggleKeybind = tbl6.ToggleKeybind

		if toggleKeybind == nil then
			toggleKeybind = Enum.KeyCode.RightShift
		end

		obj3._toggleKey = toggleKeybind

		v5:Add(UserInputService.InputBegan:Connect(function(input)
			if flag4 or not obj3._toggleKey then
				return
			end

			if UserInputService:GetFocusedTextBox() then
				return
			end

			if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == obj3._toggleKey then
				obj3:ToggleVisibility()
			end
		end))

		if flag then
			local imageButton2 = Instance.new("ImageButton")
			imageButton2.Name = "MobileToggleButton"
			imageButton2.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
			imageButton2.BackgroundTransparency = 1
			imageButton2.BorderSizePixel = 0
			local y = GuiService:GetGuiInset().Y
			local n16 = -(y / fn23()) + (y / fn23() - 45) / 2
			imageButton2.AnchorPoint = Vector2.new(0, 0)
			imageButton2.Position = tbl6.TogglePosition or UDim2.fromOffset(300, math.floor(n16))
			imageButton2.Size = UDim2.fromOffset(45, 45)
			imageButton2.Image = "rbxassetid://136834285051667"
			imageButton2.ZIndex = tbl.Toast
			imageButton2.Parent = root
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(1, 0)
			uiCorner.Parent = imageButton2
			local v11 = nil
			local position = nil
			local position2 = nil
			local flag7 = nil

			v5:Add(imageButton2.InputBegan:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.Touch and input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end

				if v11 then
					return
				end
				v11 = input
				position = input.Position
				position2 = imageButton2.Position
				flag7 = false
			end))

			error("devirt: value <luasym.LuaFunc object at 0x000001808BBD9540> in an expression (at 207:431)")
		end

		if toggleKeybind then
			index:Notify({
				Title = "Minimize Keybind",
				Text = "Press " .. toggleKeybind.Name .. " to minimize or open this panel.",
				Type = "info",
				Duration = 15,
			})
		end

		return obj3
	end

	index4.SetTitle = function(arg, text, text2)
		if arg._titleLabel then
			arg._titleLabel.Text = text or arg._titleLabel.Text
		end

		if text2 and arg._subLabel then
			arg._subLabel.Text = text2
		end
	end

	index4.IsOpen = function(arg)
		return arg._state == "open"
	end

	index4.Destroy = function(arg)
		if arg._destroyed then
			return
		end
		arg._destroyed = true
		local v = table.find(index._Windows, arg)

		if v then
			table.remove(index._Windows, v)
		end

		fn26()
		local gui = arg._gui
		fn17(gui, { Size = UDim2.new(gui.Size.X.Scale, gui.Size.X.Offset, 0, 0) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
		fn17(gui, { BackgroundTransparency = 1 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

		fn4(0.34, function()
			arg._janitor:Destroy()

			if gui then
				gui:Destroy()
			end

			if arg.Closed then
				arg.Closed.Fire(arg)
			end

			if type(arg._onClose) == "function" then
				fn2(arg._onClose, arg)
			end

			if #index._Windows == 0 and arg._autoUnload ~= false then
				fn3(function()
					if #index._Windows == 0 then
						index:Unload()
					end
				end)
			end
		end)
	end

	index4.Toggle = function(arg)
		if arg._destroyed or arg._busy then
			return
		end

		if arg._state == "open" then
			arg:Collapse()
		elseif arg._state == "collapsed" then
			arg:Close()
		else
			arg:Open()
		end
	end

	index4.SetToggleKey = function(arg, toggleKey)
		if typeof(toggleKey) == "EnumItem" and toggleKey.EnumType == Enum.KeyCode then
			arg._toggleKey = toggleKey
		elseif toggleKey == nil or toggleKey == false then
			arg._toggleKey = nil
		end

		return arg._toggleKey
	end

	index4.GetToggleKey = function(arg)
		return arg._toggleKey
	end

	index4.ToggleVisibility = function(arg)
		if arg._destroyed or arg._busy then
			return
		end

		if arg._state == "closed" then
			arg:Open()
		else
			arg:Close()
		end
	end

	index4.GetWindowScale = function(arg)
		local windowFxScale = arg._gui:FindFirstChild("WindowFxScale")
		if windowFxScale then
			return windowFxScale
		end
		local uiScale2 = Instance.new("UIScale")
		uiScale2.Name = "WindowFxScale"
		uiScale2.Scale = 1
		uiScale2.Parent = arg._gui
		return uiScale2
	end

	index4.SetChromeVisible = function(arg, visible)
		for _, v in ipairs({ "_tabBar", "_tabIndicatorLayer", "_divider", "_dock", "_resizeHandle", "_gripHandle" }) do
			local v4 = arg[v]

			if v4 then
				v4.Visible = visible
			end
		end
	end

	index4.Collapse = function(arg)
		if arg._destroyed or arg._busy or arg._state ~= "open" then
			return
		end
		arg._busy = true
		arg._state = "collapsed"
		fn26()
		local gui = arg._gui
		arg._sizeBeforeMinimize = arg._fullscreen and UDim2.new(0.94, 0, 0.9, 0) or arg._normalSize or gui.Size
		arg:SetChromeVisible(false)

		if arg._content then
			arg._content.Visible = false
		end

		fn17(gui, { Size = UDim2.new(gui.Size.X.Scale, gui.Size.X.Offset, 0, 52) }, tbl2.Slow, tbl2.Style, tbl2.Direction)

		fn4(tbl2.Slow + 0.02, function()
			arg._busy = false
		end)
	end

	index4.Expand = function(arg)
		if arg._destroyed or arg._busy or arg._state ~= "collapsed" then
			return
		end
		arg._busy = true
		arg._state = "open"
		fn17(arg._gui, { Size = arg._sizeBeforeMinimize or arg._normalSize }, tbl2.Surface, tbl2.Style, tbl2.Direction)

		fn4(tbl2.Fast, function()
			if arg._destroyed or arg._state ~= "open" then
				return
			end
			arg:SetChromeVisible(true)

			if arg._content then
				arg._content.Visible = true
			end
		end)

		fn4(tbl2.Surface + 0.02, function()
			arg._busy = false

			if arg._drag then
				arg._drag.Sync()
			end
		end)
	end

	index4.Close = function(arg)
		local destroyed = arg._destroyed or arg._busy
		local flag6

		if destroyed then
			flag6 = destroyed
		else
			flag6 = arg._state ~= "open" and arg._state ~= "collapsed"
		end

		if flag6 then
			return
		end
		local flag7 = arg._state == "collapsed"
		arg._busy = true
		arg._state = "closed"
		fn26()
		local gui = arg._gui

		if not flag7 then
			arg._sizeBeforeMinimize = arg._fullscreen and UDim2.new(0.94, 0, 0.9, 0) or arg._normalSize or gui.Size
		end

		fn17(arg:GetWindowScale(), { Scale = 0.92 }, tbl2.Slow, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		fn17(gui, { BackgroundTransparency = 1 }, tbl2.Slow, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

		fn4(tbl2.Slow + 0.02, function()
			if arg._destroyed then
				return
			end

			if arg._state == "closed" and gui and gui.Parent then
				gui.Visible = false
				gui.Size = arg._sizeBeforeMinimize or gui.Size
			end

			arg._busy = false
		end)
	end

	index4.Open = function(arg)
		if arg._destroyed or arg._busy or arg._state ~= "closed" then
			return
		end
		arg._busy = true
		arg._state = "open"
		local gui = arg._gui
		gui.Visible = true
		arg:SetChromeVisible(true)

		if arg._content then
			arg._content.Visible = true
		end

		gui.Size = arg._sizeBeforeMinimize or arg._normalSize
		local windowScale = arg:GetWindowScale()
		windowScale.Scale = 0.92
		fn17(windowScale, { Scale = 1 }, tbl2.Surface, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		fn17(gui, { BackgroundTransparency = 0.15 }, tbl2.Normal, tbl2.Style, tbl2.Direction)

		fn4(tbl2.Surface + 0.02, function()
			arg._busy = false

			if arg._drag then
				arg._drag.Sync()
			end
		end)
	end

	index4.ToggleFullscreen = function(arg)
		if arg._destroyed or arg._state ~= "open" then
			return
		end
		local gui = arg._gui
		arg._fullscreen = not arg._fullscreen
		fn26()
		fn31()

		if arg._fullscreen then
			arg._preFullscreenPosition = gui.Position
			fn17(gui, { Size = UDim2.new(0.94, 0, 0.9, 0), Position = UDim2.fromScale(0.5, 0.5) }, 0.32, Enum.EasingStyle.Quint)
		else
			fn17(gui, { Size = arg._normalSize, Position = arg._preFullscreenPosition or UDim2.fromScale(0.5, 0.55) }, 0.32, Enum.EasingStyle.Quint)
		end

		fn4(0.36, function()
			if arg._drag then
				arg._drag.Sync()
			end
		end)
	end

	index4.Refit = function(arg)
		if arg._destroyed or not arg._gui or not arg._gui.Parent then
			return
		end
		local v = fn22()
		local v4 = fn23()
		local n10 = v.X / v4
		local n11 = v.Y / v4
		local normalSize = arg._normalSize
		local n12, n13

		if arg._userSized then
			local n14 = math.min(normalSize.X.Offset, n10 - 16)
			local n15 = math.min(normalSize.Y.Offset, n11 - 16)
			n12 = math.max(n14, math.min(320, n10 - 16))
			n13 = math.max(n15, math.min(240, n11 - 16))
		else
			n12, n13 = fn38(arg._requestedSize.X, arg._requestedSize.Y)
		end

		local floor = math.floor
		local udim2 = UDim2.fromOffset(math.floor(n12), floor(n13))
		if udim2 == normalSize then
			return
		end
		arg._normalSize = udim2
		if arg._fullscreen then
			arg._sizeBeforeMinimize = UDim2.new(0.94, 0, 0.9, 0)
			return
		end
		arg._sizeBeforeMinimize = udim2

		if arg._state == "open" then
			fn17(arg._gui, { Size = udim2 }, tbl2.Surface, tbl2.Style, tbl2.Direction)
		elseif arg._state == "collapsed" then
			arg._gui.Size = UDim2.new(0, udim2.X.Offset, 0, 52)
		else
			arg._gui.Size = udim2
		end

		fn4(tbl2.Surface + 0.05, function()
			if not arg._destroyed and arg._drag then
				arg._drag.Sync()
			end
		end)
	end

	fn30 = function()
		for _, window in ipairs(index._Windows) do
			pcall(window.Refit, window)
		end
	end

	index4.AddTabLine = function(arg)
		local frame = Instance.new("Frame")
		frame.Name = "TabLine"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, 9)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._tabBar
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0, 0.5)
		frame2.Position = UDim2.new(0, 4, 0.5, 0)
		frame2.Size = UDim2.new(1, -8, 0, 1)
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.92
		frame2.BorderSizePixel = 0
		frame2.ZIndex = tbl.Content
		frame2.Parent = frame
		return frame
	end

	local n10 = 34

	index4.AddDockButton = function(arg, arg2)
		local tbl6 = arg2 or {}
		local janitor = arg._janitor
		local margin = index.Theme.Margin

		if not arg._dock then
			local udim2 = UDim2.new(0, arg._tabWidth or 130, 1, -(58 + margin + n10 + 10))
			arg._tabBar.Size = udim2
			arg._tabIndicatorLayer.Size = udim2
			local frame = Instance.new("Frame")
			frame.Name = "Dock"
			frame.BackgroundTransparency = 1
			frame.AnchorPoint = Vector2.new(0, 1)
			frame.Position = UDim2.new(0, margin, 1, -margin)
			frame.Size = UDim2.new(0, arg._tabWidth or 130, 0, 34)
			frame.ZIndex = tbl.Content
			frame.Parent = arg._gui
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout.Padding = UDim.new(0, 6)
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Parent = frame
			arg._dock = frame
		end

		local textButton = Instance.new("TextButton")
		textButton.Name = tbl6.Name or "DockButton"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 0.95
		textButton.BorderSizePixel = 0
		textButton.Size = UDim2.fromOffset(28, 28)
		textButton.LayoutOrder = #arg._dock:GetChildren()
		textButton.ZIndex = tbl.Content + 1
		textButton.Parent = arg._dock
		createUICorner(textButton, 8)
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = tbl6.Icon and fn21(tbl6.Icon) or ""
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(15, 15)
		imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel.ZIndex = tbl.Content + 2
		imageLabel.Parent = textButton
		local flag6 = false

		janitor:Add(textButton.MouseEnter:Connect(function()
			if flag6 then
				return
			end
			fn17(textButton, { BackgroundTransparency = 0.85 }, 0.12)
			fn17(imageLabel, { ImageColor3 = index.Theme.Text }, 0.12)
		end))

		janitor:Add(textButton.MouseLeave:Connect(function()
			if flag6 then
				return
			end
			fn17(textButton, { BackgroundTransparency = 0.95 }, 0.12)
			fn17(imageLabel, { ImageColor3 = index.Theme.TextDim }, 0.12)
		end))

		janitor:Add(textButton.MouseButton1Click:Connect(function()
			if tbl6.Callback then
				fn2(tbl6.Callback)
			end
		end))

		return {
			Instance = textButton,
			Icon = imageLabel,
			SetActive = function(arg3, arg4)
				flag6 = arg4 and true or false
				fn17(textButton, { BackgroundTransparency = flag6 and 0.8 or 0.95 }, 0.12)
				fn17(imageLabel, { ImageColor3 = flag6 and index.Theme.Text or index.Theme.TextDim }, 0.12)
			end,
		}
	end

	local str2 = "rbxasset://fonts/families/RobotoMono.json"

	local function fn39(arg)
		return (arg:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
	end

	local function fn40(arg)
		return (fn39(arg):gsub("`([^`\n]+)`", "<font family=\"" .. str2 .. "\">%1</font>"):gsub("%*%*(.-)%*%*", "<b>%1</b>"):gsub("__(.-)__", "<b>%1</b>"):gsub("%*([^%s*][^*]-)%*", "<i>%1</i>"):gsub("_([^%s_][^_]-)_", "<i>%1</i>"))
	end

	local function fn41(arg)
		local tbl6 = {}
		local n11 = 1

		while true do
			local pos, v, v4, v5 = arg:find("```(%w*)\n?(.-)```", n11)

			if not pos then
				break
			else
				if n11 < pos then
					local str3 = arg:sub(n11, pos - 1)

					if str3:match("%S") then
						table.insert(tbl6, { kind = "text", content = str3 })
					end
				end

				table.insert(tbl6, {
					kind = "code",
					lang = v4 ~= "" and v4 or "lua",
					content = v5:gsub("^%s+", ""):gsub("%s+$", ""),
				})

				n11 = v + 1
			end
		end

		local str3 = arg:sub(n11)

		if str3 ~= "" then
			table.insert(tbl6, { kind = "text", content = str3 })
		end

		if #tbl6 == 0 then
			table.insert(tbl6, { kind = "text", content = arg })
		end

		return tbl6
	end

	local tbl6 = {
		["and"] = true,
		["break"] = true,
		["do"] = true,
		["else"] = true,
		["elseif"] = true,
		["end"] = true,
		["false"] = true,
		["for"] = true,
		["function"] = true,
		["if"] = true,
		["in"] = true,
		["local"] = true,
		["nil"] = true,
		["not"] = true,
		["or"] = true,
		["repeat"] = true,
		["return"] = true,
		["then"] = true,
		["true"] = true,
		["until"] = true,
		["while"] = true,
		["continue"] = true,
	}

	local function fn42(arg)
		local tbl7 = {}
		local n11 = #arg
		local n12 = 1

		while n12 <= n11 do
			local str3 = arg:sub(n12, n12)

			if arg:sub(n12, n12 + 3) == "--[[" then
				local value = select(2, arg:find("%]%]", n12 + 4)) or n11
				tbl7[#tbl7 + 1] = "<font color=\"#6A9955\">" .. arg:sub(n12, value) .. "</font>"
				n12 = value + 1
			elseif arg:sub(n12, n12 + 1) == "--" then
				local n13 = (arg:find("\n", n12, true) or n11 + 1) - 1
				tbl7[#tbl7 + 1] = "<font color=\"#6A9955\">" .. arg:sub(n12, n13) .. "</font>"
				n12 = n13 + 1
			elseif str3 == "\"" or str3 == "'" then
				local n13 = n12 + 1

				while n13 <= n11 do
					local str4 = arg:sub(n13, n13)

					if str4 == "\\" then
						n13 += 2
						continue
					elseif not (str4 == str3 or str4 == "\n") then
						n13 += 1
						continue
					end

					break
				end

				local n14 = math.min(n13, n11)
				tbl7[#tbl7 + 1] = "<font color=\"#CE9178\">" .. arg:sub(n12, n14) .. "</font>"
				n12 = n14 + 1
			elseif str3:match("%a") or str3 == "_" then
				local v = n12

				while v <= n11 and arg:sub(v, v):match("[%w_]") do
					v += 1
				end

				local str4 = arg:sub(n12, v - 1)
				tbl7[#tbl7 + 1] = tbl6[str4] and "<font color=\"#C586C0\">" .. str4 .. "</font>" or str4
				n12 = v
			elseif str3:match("%d") then
				local v = n12

				while v <= n11 and arg:sub(v, v):match("[%d%.]") do
					v += 1
				end

				tbl7[#tbl7 + 1] = "<font color=\"#B5CEA8\">" .. arg:sub(n12, v - 1) .. "</font>"
				n12 = v
			else
				tbl7[#tbl7 + 1] = str3
				n12 += 1
			end
		end

		return table.concat(tbl7)
	end

	index4.AddPanelTab = function(arg, arg2)
		local tbl7 = arg2 or {}
		local v = arg
		local v4 = arg:AddTab({ Name = tbl7.Name, Icon = tbl7.Icon, Hidden = tbl7.Hidden ~= false })
		v4._page.Visible = tbl7.UseElements == true
		local emptyState = v4._group:FindFirstChild("EmptyState")

		if emptyState then
			emptyState.Visible = false
		end

		if tbl7.OnToggle then
			table.insert(arg._tabChangeListeners, function(arg3)
				fn2(tbl7.OnToggle, arg3 == v4)
			end)
		end

		local currentTab = nil

		local function fn43()
			if v._currentTab == v4 then
				return
			end

			if v._currentTab and not v._currentTab.Hidden then
				currentTab = v._currentTab
			end

			v4._select()
		end

		local function fn44()
			if v._currentTab ~= v4 then
				return
			end

			if currentTab and not currentTab.Hidden then
				currentTab._select()
			elseif v._tabs[1] and v._tabs[1] ~= v4 then
				v._tabs[1]._select()
			end
		end

		return {
			Instance = v4._group,
			Tab = v4,
			Open = fn43,
			Close = fn44,
			Toggle = function()
				if v._currentTab == v4 then
					fn44()
				else
					fn43()
				end
			end,
			IsOpen = function()
				return v._currentTab == v4
			end,
		}
	end

	local n11 = 36

	index4.AddDefaultCreditsPanel = function(arg, arg2)
		local tbl7 = arg2 or {}
		local janitor = arg._janitor
		local v = nil
		local title = tbl7.Title or "Credits"

		local v4 = arg:AddPanelTab({
			Name = tbl7.Name or title,
			Icon = tbl7.Icon or "Lucide:heart-handshake",
			OnToggle = function(arg3)
				if v then
					v:SetActive(arg3)
				end
			end,
		})

		local credits = tbl7.Credits

		if type(credits) ~= "table" or #credits == 0 then
			credits = { { Name = "_nguoitinhcuae", Text = "Rewrite Full GUI" } }
		end

		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, 38)
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v4.Instance
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 14)
		uiPadding.PaddingRight = UDim.new(0, 8)
		uiPadding.Parent = frame
		local frame2 = Instance.new("Frame")
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.new(1, -40, 1, 0)
		frame2.ZIndex = tbl.Content + 2
		frame2.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 7)
		uiListLayout.Parent = frame2
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(tbl7.Icon or "heart-handshake")
		imageLabel.ImageColor3 = index.Theme.Text
		fn18(imageLabel, "Text")
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.LayoutOrder = 1
		imageLabel.ZIndex = tbl.Content + 3
		imageLabel.Parent = frame2
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.AutomaticSize = Enum.AutomaticSize.X
		textLabel.Size = UDim2.fromOffset(0, 14)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = tbl.Content + 3
		textLabel.Parent = frame2
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.AnchorPoint = Vector2.new(1, 0.5)
		textButton.Position = UDim2.new(1, 0, 0.5, 0)
		textButton.Size = UDim2.fromOffset(26, 26)
		textButton.ZIndex = tbl.Content + 2
		textButton.Parent = frame
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.Image = fn21("x")
		imageLabel2.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel2, "TextDim")
		imageLabel2.Size = UDim2.fromOffset(13, 13)
		imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel2.ZIndex = tbl.Content + 3
		imageLabel2.Parent = textButton

		textButton.MouseEnter:Connect(function()
			imageLabel2.ImageColor3 = index.Theme.Text
			fn18(imageLabel2, "Text")
		end)

		textButton.MouseLeave:Connect(function()
			imageLabel2.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel2, "TextDim")
		end)

		textButton.MouseButton1Click:Connect(function()
			v4.Close()
		end)

		local frame3 = Instance.new("Frame")
		frame3.BackgroundColor3 = Color3.new(1, 1, 1)
		frame3.BackgroundTransparency = 0.94
		frame3.BorderSizePixel = 0
		frame3.Position = UDim2.fromOffset(0, 38)
		frame3.Size = UDim2.new(1, 0, 0, 1)
		frame3.ZIndex = tbl.Content + 1
		frame3.Parent = v4.Instance
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(0, 39)
		scrollingFrame.Size = UDim2.new(1, 0, 1, -39)
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = tbl.Content + 1
		scrollingFrame.Parent = v4.Instance
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.PaddingTop = UDim.new(0, 12)
		uiPadding2.PaddingBottom = UDim.new(0, 12)
		uiPadding2.PaddingLeft = UDim.new(0, 14)
		uiPadding2.PaddingRight = UDim.new(0, 14)
		uiPadding2.Parent = scrollingFrame
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.Padding = UDim.new(0, 8)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = scrollingFrame
		fn19(scrollingFrame)
		createFrame2(scrollingFrame, uiListLayout2, v4.Instance, janitor)

		for i, credit in ipairs(credits) do
			local frame4 = Instance.new("Frame")
			frame4.Name = credit.Name or "Credit" .. i
			frame4.BackgroundColor3 = Color3.new(1, 1, 1)
			frame4.BackgroundTransparency = 0.96
			frame4.BorderSizePixel = 0
			frame4.LayoutOrder = i
			frame4.Size = UDim2.new(1, 0, 0, 56)
			frame4.ZIndex = tbl.Content + 2
			frame4.Parent = scrollingFrame
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(0, 10)
			uiCorner.Parent = frame4
			local uiStroke = Instance.new("UIStroke")
			uiStroke.Color = Color3.new(1, 1, 1)
			uiStroke.Transparency = 0.94
			uiStroke.Thickness = 1
			uiStroke.Parent = frame4

			frame4.MouseEnter:Connect(function()
				frame4.BackgroundTransparency = 0.92
			end)

			frame4.MouseLeave:Connect(function()
				frame4.BackgroundTransparency = 0.96
			end)

			local frame5 = Instance.new("Frame")
			frame5.Name = "Avatar"
			frame5.AnchorPoint = Vector2.new(0, 0.5)
			frame5.Position = UDim2.new(0, 14, 0.5, 0)
			frame5.Size = UDim2.fromOffset(36, 36)
			frame5.BackgroundColor3 = index.Theme.Accent
			frame5:SetAttribute("NullUIAccent", true)
			fn18(frame5, "Accent")
			frame5.BackgroundTransparency = 0.82
			frame5.BorderSizePixel = 0
			frame5.ZIndex = tbl.Content + 2
			frame5.Parent = frame4
			local uiCorner2 = Instance.new("UICorner")
			uiCorner2.CornerRadius = UDim.new(1, 0)
			uiCorner2.Parent = frame5
			local uiStroke2 = Instance.new("UIStroke")
			uiStroke2.Color = index.Theme.Accent
			uiStroke2:SetAttribute("NullUIAccent", true)
			fn18(uiStroke2, "Accent")
			uiStroke2.Transparency = 0.55
			uiStroke2.Thickness = 1
			uiStroke2.Parent = frame5

			janitor:Add(index.ThemeChanged.Connect(function(arg3)
				frame5.BackgroundColor3 = arg3.Accent
				uiStroke2.Color = arg3.Accent
			end))

			local imageLabel3 = Instance.new("ImageLabel")
			imageLabel3.Name = "Image"
			imageLabel3.BackgroundTransparency = 1
			imageLabel3.Image = fn21(credit.Image or "rbxassetid://87167480222237")
			imageLabel3:SetAttribute("NullUINoTheme", true)
			imageLabel3.ScaleType = Enum.ScaleType.Crop
			imageLabel3.Size = UDim2.fromScale(1, 1)
			imageLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel3.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel3.ZIndex = tbl.Content + 3
			imageLabel3.Parent = frame5
			local uiCorner3 = Instance.new("UICorner")
			uiCorner3.CornerRadius = UDim.new(1, 0)
			uiCorner3.Parent = imageLabel3
			local n12 = 14 + n11 + 12
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.Name = "Name"
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.Font
			textLabel2.Text = credit.Name or ""
			textLabel2.TextColor3 = index.Theme.Text
			fn18(textLabel2, "Text")
			textLabel2.TextSize = 13.5
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Bottom
			textLabel2.AnchorPoint = Vector2.new(0, 1)
			textLabel2.Position = UDim2.new(0, n12, 0.5, -4)
			textLabel2.Size = UDim2.new(1, -(n12 + 14), 0, 17)
			textLabel2.ZIndex = tbl.Content + 2
			textLabel2.Parent = frame4
			local textLabel3 = Instance.new("TextLabel")
			textLabel3.Name = "Text"
			textLabel3.BackgroundTransparency = 1
			textLabel3.FontFace = index.Theme.FontRegular
			textLabel3.Text = credit.Text or ""
			textLabel3.TextColor3 = index.Theme.TextDim
			fn18(textLabel3, "TextDim")
			textLabel3.TextSize = 11.5
			textLabel3.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel3.TextXAlignment = Enum.TextXAlignment.Left
			textLabel3.TextYAlignment = Enum.TextYAlignment.Top
			textLabel3.Position = UDim2.new(0, n12, 0.5, 4)
			textLabel3.Size = UDim2.new(1, -(n12 + 14), 0, 16)
			textLabel3.ZIndex = tbl.Content + 2
			textLabel3.Parent = frame4
		end

		v = arg:AddDockButton({
			Icon = "Lucide:heart-handshake",
			Callback = function()
				v4.Toggle()
			end,
		})

		return v4
	end

	index4.AddSpotifyPanel = function(arg, arg2)
		local tbl7 = arg2 or {}
		local janitor = arg._janitor
		local v = nil
		local v4 = nil
		local flag6 = false

		local v5 = arg:AddPanelTab({
			Name = tbl7.Name or "Spotify",
			Icon = tbl7.Icon or "Lucide:music-2",
			OnToggle = function(arg3)
				if v then
					v:SetActive(arg3)
				end

				if arg3 and not flag6 then
					flag6 = true

					if tbl7.AutoConnect == true and tbl7.BridgeUrl ~= "" then
						fn3(function()
							if v4 then
								v4()
							end
						end)
					end
				end

				if tbl7.OnToggle then
					fn2(tbl7.OnToggle, arg3)
				end
			end,
		})

		local function fn43()
			local tbl8 = {}

			pcall(function()
				if WebSocket and type(WebSocket.connect) == "function" then
					table.insert(tbl8, WebSocket.connect)
				end
			end)

			pcall(function()
				if websocket and type(websocket.connect) == "function" then
					table.insert(tbl8, websocket.connect)
				end
			end)

			pcall(function()
				if syn and syn.websocket and type(syn.websocket.connect) == "function" then
					table.insert(tbl8, syn.websocket.connect)
				end
			end)

			return tbl8[1]
		end

		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, 0)
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v5.Instance
		frame.Visible = false
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 14)
		uiPadding.PaddingRight = UDim.new(0, 8)
		uiPadding.Parent = frame
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(tbl7.Icon or "Lucide:music-2")
		imageLabel.ImageColor3 = Color3.fromRGB(30, 215, 96)
		imageLabel.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel.Position = UDim2.new(0, 0, 0.5, 0)
		imageLabel.Size = UDim2.fromOffset(15, 15)
		imageLabel.ZIndex = tbl.Content + 2
		imageLabel.Parent = frame
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = tbl7.Title or "Spotify Player"
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.AnchorPoint = Vector2.new(0, 0.5)
		textLabel.Position = UDim2.new(0, 22, 0.5, 0)
		textLabel.Size = UDim2.new(1, -62, 0, 18)
		textLabel.ZIndex = tbl.Content + 2
		textLabel.Parent = frame
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.AnchorPoint = Vector2.new(1, 0.5)
		textButton.Position = UDim2.new(1, 0, 0.5, 0)
		textButton.Size = UDim2.fromOffset(26, 26)
		textButton.ZIndex = tbl.Content + 2
		textButton.Parent = frame
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.Image = fn21("x")
		imageLabel2.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel2, "TextDim")
		imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel2.Size = UDim2.fromOffset(13, 13)
		imageLabel2.ZIndex = tbl.Content + 3
		imageLabel2.Parent = textButton

		janitor:Add(textButton.MouseButton1Click:Connect(function()
			v5.Close()
		end))

		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.94
		frame2.BorderSizePixel = 0
		frame2.Position = UDim2.fromOffset(0, 0)
		frame2.Size = UDim2.new(1, 0, 0, 1)
		frame2.ZIndex = tbl.Content + 1
		frame2.Parent = v5.Instance
		frame2.Visible = false
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Name = "SpotifySubTabs"
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(0, 0)
		scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.ZIndex = tbl.Content + 1
		scrollingFrame.Parent = v5.Instance
		local obj3 = setmetatable({ Name = "Spotify Player", _page = scrollingFrame, _window = arg, _janitor = janitor, _group = v5.Instance }, index3)
		local v6 = obj3:AddSubTab({ Name = "Spotify Player", Icon = "Lucide:music-2" })
		local v7 = obj3:AddSubTab({ Name = "Favorites", Icon = "Lucide:heart" })
		local page = v6._page
		page:FindFirstChild("PageLayout")
		local pagePadding = page:FindFirstChild("PagePadding")

		if pagePadding then
			pagePadding.PaddingTop = UDim.new(0, 0)
			pagePadding.PaddingLeft = UDim.new(0, 0)
			pagePadding.PaddingRight = UDim.new(0, 12)
			pagePadding.PaddingBottom = UDim.new(0, 6)
		end

		local pagePadding2 = v7._page:FindFirstChild("PagePadding")

		if pagePadding2 then
			pagePadding2.PaddingTop = UDim.new(0, 0)
			pagePadding2.PaddingLeft = UDim.new(0, 0)
			pagePadding2.PaddingRight = UDim.new(0, 12)
			pagePadding2.PaddingBottom = UDim.new(0, 6)
		end

		local function createFrame5(arg3, layoutOrder, parent)
			local frame3 = Instance.new("Frame")
			frame3.BackgroundColor3 = Color3.new(1, 1, 1)
			frame3.BackgroundTransparency = 0.96
			frame3.BorderSizePixel = 0
			frame3.Size = UDim2.new(1, 0, 0, arg3)
			frame3.LayoutOrder = layoutOrder
			frame3.ZIndex = tbl.Content + 2
			frame3.Parent = parent or page
			createUICorner(frame3, 10)
			createUIStroke(frame3, Color3.new(1, 1, 1), 1, 0.94)
			return frame3
		end

		v6:AddParagraph({
			Title = "Quick setup",
			Icon = "Lucide:link-2",
			Text = "Copy the player link, keep it open in your browser, load a playlist and press Play once.",
		}).Instance.LayoutOrder = 1

		local v8 = createFrame5(30, 6)
		local frame3 = Instance.new("Frame")
		frame3.BackgroundColor3 = Color3.fromRGB(125, 130, 128)
		frame3.BorderSizePixel = 0
		frame3.AnchorPoint = Vector2.new(0, 0.5)
		frame3.Position = UDim2.new(0, 11, 0.5, 0)
		frame3.Size = UDim2.fromOffset(7, 7)
		frame3.ZIndex = tbl.Content + 3
		frame3.Parent = v8
		createUICorner(frame3, 4)
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.FontRegular
		textLabel2.Text = "Bridge disconnected"
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 12
		textLabel2.TextXAlignment = Enum.TextXAlignment.Left
		textLabel2.Position = UDim2.fromOffset(27, 0)
		textLabel2.Size = UDim2.new(1, -38, 1, 0)
		textLabel2.ZIndex = tbl.Content + 3
		textLabel2.Parent = v8
		local v9 = createFrame5(164, 7)
		v9.ClipsDescendants = true
		local imageLabel3 = Instance.new("ImageLabel")
		imageLabel3.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
		imageLabel3.BackgroundTransparency = 0.84
		imageLabel3.BorderSizePixel = 0
		imageLabel3.Image = ""
		imageLabel3.ImageColor3 = Color3.new(1, 1, 1)
		imageLabel3.ScaleType = Enum.ScaleType.Crop
		imageLabel3.AnchorPoint = Vector2.new(0, 0)
		imageLabel3.Position = UDim2.fromOffset(0, 12)
		imageLabel3.Size = UDim2.fromOffset(88, 88)
		imageLabel3.ZIndex = tbl.Content + 3
		imageLabel3.Parent = v9
		createUICorner(imageLabel3, 12)
		createUIStroke(imageLabel3, Color3.new(1, 1, 1), 1, 0.9)
		local imageLabel4 = Instance.new("ImageLabel")
		imageLabel4.BackgroundTransparency = 1
		imageLabel4.Image = fn21("music-2")
		imageLabel4.ImageColor3 = Color3.fromRGB(30, 215, 96)
		imageLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel4.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel4.Size = UDim2.fromOffset(28, 28)
		imageLabel4.ZIndex = tbl.Content + 4
		imageLabel4.Parent = imageLabel3
		local n12 = 0
		local tbl8 = {}

		local function fn44(arg3)
			n12 += 1
			local v10 = n12
			local str3 = type(arg3) == "string" and arg3 or ""

			if str3 == "" then
				imageLabel3.BackgroundTransparency = 0.84
				imageLabel3.Image = ""
				imageLabel4.Visible = true
				imageLabel4.Image = fn21("music-2")
				imageLabel4.ImageColor3 = Color3.fromRGB(30, 215, 96)
				imageLabel4.BackgroundTransparency = 1
				imageLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel4.Size = UDim2.fromOffset(28, 28)
				imageLabel4.Position = UDim2.fromScale(0.5, 0.5)
				return
			end

			fn2(function()
				local v11 = tbl8[str3]

				if not v11 and getcustomasset and writefile_ and fn13() then
					local n13 = 7

					for i = 1, #str3 do
						n13 = (n13 * 31 + str3:byte(i)) % 2147483647
					end

					local str4 = str .. "/spotify-cover-" .. tostring(n13) .. ".jpg"

					if not (isfile_ and isfile_(str4)) then
						local ok, result = pcall(function()
							return game:HttpGet(str3)
						end)

						if ok and type(result) == "string" and #result > 256 then
							pcall(writefile_, str4, result)
						end
					end

					if not isfile_ or isfile_(str4) then
						local ok, result = pcall(getcustomasset, str4)

						if ok then
							tbl8[str3] = result
							v11 = result
						end
					end
				end

				if v10 ~= n12 or not v11 then
					return
				end
				imageLabel3.BackgroundTransparency = 1
				imageLabel3.Image = v11
				imageLabel4.Visible = false
			end)
		end

		local textLabel3 = Instance.new("TextLabel")
		textLabel3.BackgroundTransparency = 1
		textLabel3.FontFace = index.Theme.Font
		textLabel3.Text = "NOW PLAYING"
		textLabel3.TextColor3 = Color3.fromRGB(30, 215, 96)
		textLabel3.TextSize = 9
		textLabel3.TextXAlignment = Enum.TextXAlignment.Left
		textLabel3.Position = UDim2.fromOffset(100, 9)
		textLabel3.Size = UDim2.new(1, -100, 0, 12)
		textLabel3.ZIndex = tbl.Content + 3
		textLabel3.Parent = v9
		local textLabel4 = Instance.new("TextLabel")
		textLabel4.BackgroundTransparency = 1
		textLabel4.FontFace = index.Theme.Font
		textLabel4.Text = "Nothing playing"
		textLabel4.TextColor3 = index.Theme.Text
		fn18(textLabel4, "Text")
		textLabel4.TextSize = 15
		textLabel4.TextXAlignment = Enum.TextXAlignment.Left
		textLabel4.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel4.Position = UDim2.fromOffset(100, 25)
		textLabel4.Size = UDim2.new(1, -100, 0, 20)
		textLabel4.ZIndex = tbl.Content + 3
		textLabel4.Parent = v9
		local textLabel5 = Instance.new("TextLabel")
		textLabel5.BackgroundTransparency = 1
		textLabel5.FontFace = index.Theme.FontRegular
		textLabel5.Text = "Connect your Spotify bridge"
		textLabel5.TextColor3 = index.Theme.TextDim
		fn18(textLabel5, "TextDim")
		textLabel5.TextSize = 12
		textLabel5.TextXAlignment = Enum.TextXAlignment.Left
		textLabel5.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel5.Position = UDim2.fromOffset(100, 47)
		textLabel5.Size = UDim2.new(1, -100, 0, 16)
		textLabel5.ZIndex = tbl.Content + 3
		textLabel5.Parent = v9
		local frame4 = Instance.new("Frame")
		frame4.BackgroundColor3 = Color3.fromRGB(95, 100, 98)
		frame4.BackgroundTransparency = 0.45
		frame4.BorderSizePixel = 0
		frame4.Position = UDim2.fromOffset(100, 76)
		frame4.Size = UDim2.new(1, -100, 0, 5)
		frame4.ZIndex = tbl.Content + 3
		frame4.Parent = v9
		createUICorner(frame4, 2)
		local frame5 = Instance.new("Frame")
		frame5.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
		frame5.BorderSizePixel = 0
		frame5.Size = UDim2.new(0, 0, 1, 0)
		frame5.ZIndex = tbl.Content + 4
		frame5.Parent = frame4
		createUICorner(frame5, 2)
		local frame6 = Instance.new("Frame")
		frame6.BackgroundColor3 = Color3.fromRGB(235, 239, 237)
		frame6.BorderSizePixel = 0
		frame6.AnchorPoint = Vector2.new(0.5, 0.5)
		frame6.Position = UDim2.new(0, 0, 0.5, 0)
		frame6.Size = UDim2.fromOffset(9, 9)
		frame6.ZIndex = tbl.Content + 6
		frame6.Parent = frame4
		createUICorner(frame6, 5)
		local frame7 = Instance.new("Frame")
		frame7.BackgroundColor3 = Color3.fromRGB(21, 26, 24)
		frame7.BackgroundTransparency = 0.04
		frame7.BorderSizePixel = 0
		frame7.AnchorPoint = Vector2.new(0.5, 1)
		frame7.Position = UDim2.new(0, 0, 0, -8)
		frame7.Size = UDim2.fromOffset(48, 25)
		frame7.Visible = false
		frame7.ZIndex = tbl.Content + 8
		frame7.Parent = frame4
		createUICorner(frame7, 7)
		createUIStroke(frame7, Color3.new(1, 1, 1), 1, 0.9)
		local textLabel6 = Instance.new("TextLabel")
		textLabel6.BackgroundTransparency = 1
		textLabel6.FontFace = index.Theme.Font
		textLabel6.Text = "0:00"
		textLabel6.TextColor3 = index.Theme.Text
		fn18(textLabel6, "Text")
		textLabel6.TextSize = 10
		textLabel6.Size = UDim2.fromScale(1, 1)
		textLabel6.ZIndex = tbl.Content + 9
		textLabel6.Parent = frame7
		local textButton2 = Instance.new("TextButton")
		textButton2.Text = ""
		textButton2.AutoButtonColor = false
		textButton2.BackgroundTransparency = 1
		textButton2.BorderSizePixel = 0
		textButton2.Position = UDim2.fromOffset(100, 68)
		textButton2.Size = UDim2.new(1, -100, 0, 21)
		textButton2.ZIndex = tbl.Content + 7
		textButton2.Parent = v9
		local textLabel7 = Instance.new("TextLabel")
		textLabel7.BackgroundTransparency = 1
		textLabel7.FontFace = index.Theme.FontRegular
		textLabel7.Text = "0:00"
		textLabel7.TextColor3 = index.Theme.TextDim
		fn18(textLabel7, "TextDim")
		textLabel7.TextSize = 10
		textLabel7.TextXAlignment = Enum.TextXAlignment.Left
		textLabel7.Position = UDim2.fromOffset(100, 87)
		textLabel7.Size = UDim2.new(0.5, -50, 0, 14)
		textLabel7.ZIndex = tbl.Content + 3
		textLabel7.Parent = v9
		local textLabel8 = Instance.new("TextLabel")
		textLabel8.BackgroundTransparency = 1
		textLabel8.FontFace = index.Theme.FontRegular
		textLabel8.Text = "0:00"
		textLabel8.TextColor3 = index.Theme.TextDim
		fn18(textLabel8, "TextDim")
		textLabel8.TextSize = 10
		textLabel8.TextXAlignment = Enum.TextXAlignment.Right
		textLabel8.Position = UDim2.new(0.5, 50, 0, 87)
		textLabel8.Size = UDim2.new(0.5, -50, 0, 14)
		textLabel8.ZIndex = tbl.Content + 3
		textLabel8.Parent = v9
		local frame8 = Instance.new("Frame")
		frame8.BackgroundColor3 = Color3.new(1, 1, 1)
		frame8.BackgroundTransparency = 0.93
		frame8.BorderSizePixel = 0
		frame8.Position = UDim2.fromOffset(0, 111)
		frame8.Size = UDim2.new(1, 0, 0, 1)
		frame8.ZIndex = tbl.Content + 3
		frame8.Parent = v9
		local frame9 = Instance.new("Frame")
		frame9.BackgroundTransparency = 1
		frame9.BorderSizePixel = 0
		frame9.Position = UDim2.fromOffset(0, 114)
		frame9.Size = UDim2.new(1, 0, 0, 44)
		frame9.ZIndex = tbl.Content + 3
		frame9.Parent = v9
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 12)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame9
		local tbl9 = {}

		local function createTextButton2(name, arg3, layoutOrder, arg4)
			local textButton3 = Instance.new("TextButton")
			textButton3.Name = name
			textButton3.Text = ""
			textButton3.AutoButtonColor = false
			textButton3.BackgroundColor3 = arg4 and Color3.fromRGB(30, 215, 96) or Color3.new(1, 1, 1)
			textButton3.BackgroundTransparency = arg4 and 0.05 or 0.94
			textButton3.BorderSizePixel = 0
			textButton3.Size = UDim2.fromOffset(arg4 and 36 or 32, arg4 and 36 or 32)
			textButton3.LayoutOrder = layoutOrder
			textButton3.ZIndex = tbl.Content + 3
			textButton3.Parent = frame9
			createUICorner(textButton3, arg4 and 18 or 10)
			local imageLabel5 = Instance.new("ImageLabel")
			imageLabel5.BackgroundTransparency = 1
			imageLabel5.Image = fn21(arg3)
			imageLabel5.ImageColor3 = arg4 and Color3.fromRGB(12, 28, 18) or index.Theme.TextDim
			imageLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel5.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel5.Size = UDim2.fromOffset(arg4 and 17 or 15, arg4 and 17 or 15)
			imageLabel5.ZIndex = tbl.Content + 4
			imageLabel5.Parent = textButton3
			tbl9[name] = { Button = textButton3, Icon = imageLabel5 }
			return textButton3
		end

		createTextButton2("Shuffle", "shuffle", 1, false)
		createTextButton2("Previous", "skip-back", 2, false)
		createTextButton2("PlayPause", "play", 3, true)
		createTextButton2("Next", "skip-forward", 4, false)
		createTextButton2("Repeat", "repeat", 5, false)

		local function fn45(arg3, text, placeholderText, arg4)
			local v10 = createFrame5(66, arg3)
			local textLabel9 = Instance.new("TextLabel")
			textLabel9.BackgroundTransparency = 1
			textLabel9.FontFace = index.Theme.Font
			textLabel9.Text = text
			textLabel9.TextColor3 = index.Theme.Text
			fn18(textLabel9, "Text")
			textLabel9.TextSize = 12
			textLabel9.TextXAlignment = Enum.TextXAlignment.Left
			textLabel9.Position = UDim2.fromOffset(11, 6)
			textLabel9.Size = UDim2.new(1, -22, 0, 16)
			textLabel9.ZIndex = tbl.Content + 3
			textLabel9.Parent = v10
			local frame10 = Instance.new("Frame")
			frame10.BackgroundColor3 = Color3.new(1, 1, 1)
			frame10.BackgroundTransparency = 0.94
			frame10.BorderSizePixel = 0
			frame10.Position = UDim2.fromOffset(10, 27)
			frame10.Size = UDim2.new(1, -20, 0, 30)
			frame10.ZIndex = tbl.Content + 3
			frame10.Parent = v10
			createUICorner(frame10, 8)
			local textButton3 = Instance.new("TextButton")
			textButton3.Text = ""
			textButton3.AutoButtonColor = false
			textButton3.BackgroundColor3 = Color3.new(1, 1, 1)
			textButton3.BackgroundTransparency = 0.91
			textButton3.BorderSizePixel = 0
			textButton3.AnchorPoint = Vector2.new(1, 0)
			textButton3.Position = UDim2.new(1, -3, 0, 3)
			textButton3.Size = UDim2.fromOffset(34, 24)
			textButton3.ZIndex = tbl.Content + 5
			textButton3.Parent = frame10
			createUICorner(textButton3, 7)
			createUIStroke(textButton3, Color3.new(1, 1, 1), 1, 0.94)
			local imageLabel5 = Instance.new("ImageLabel")
			imageLabel5.BackgroundTransparency = 1
			imageLabel5.Image = fn21(arg4)
			imageLabel5.ImageColor3 = index.Theme.Text
			fn18(imageLabel5, "Text")
			imageLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel5.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel5.Size = UDim2.fromOffset(14, 14)
			imageLabel5.ZIndex = tbl.Content + 6
			imageLabel5.Parent = textButton3
			local textBox = Instance.new("TextBox")
			textBox.ClearTextOnFocus = false
			textBox.FontFace = index.Theme.FontRegular
			textBox.PlaceholderText = placeholderText
			textBox.PlaceholderColor3 = Color3.fromRGB(115, 120, 118)
			textBox.Text = ""
			textBox.TextColor3 = index.Theme.Text
			fn18(textBox, "Text")
			textBox.TextSize = 11
			textBox.TextXAlignment = Enum.TextXAlignment.Left
			textBox.BackgroundTransparency = 1
			textBox.Position = UDim2.fromOffset(9, 0)
			textBox.Size = UDim2.new(1, -52, 1, 0)
			textBox.ZIndex = tbl.Content + 4
			textBox.Parent = frame10
			return textBox, textButton3, v10, textLabel9, frame10
		end

		local v10, v11, v12, v13, v14 = fn45(3, "", "Search this playlist...", "search")
		local spotifyConnect, v15 = fn45(3, "Spotify Connect", "Pairing code", "link-2")
		v15:FindFirstChildOfClass("ImageLabel")
		spotifyConnect.TextEditable = false
		spotifyConnect.Text = HttpService:GenerateGUID(false):gsub("%-", ""):sub(1, 8):upper()
		local v16, v17, v18, v19, v20 = fn45(4, "", "Paste a Spotify playlist link...", "play")
		v6:AddLineText("Spotify Connect").Instance.LayoutOrder = 2
		v6:AddLineText("Player").Instance.LayoutOrder = 4
		local v21 = createFrame5(286, 5)

		local function fn46(arg3, arg4, arg5)
			arg3.Parent = v21
			arg3.BackgroundTransparency = 1
			arg3.Position = UDim2.fromOffset(12, arg4)
			arg3.Size = UDim2.new(1, -24, 0, arg5)

			for _, child in ipairs(arg3:GetChildren()) do
				if child:IsA("UIStroke") then
					child.Transparency = 1
				end
			end
		end

		fn46(v12, 12, 40)
		v13.Visible = false
		v14.Position = UDim2.fromOffset(0, 0)
		v14.Size = UDim2.fromScale(1, 1)
		v14.BackgroundTransparency = 0.92
		v11.AnchorPoint = Vector2.zero
		v11.Position = UDim2.fromOffset(4, 4)
		v11.Size = UDim2.fromOffset(32, 32)
		v11.BackgroundTransparency = 1

		for _, child in ipairs(v11:GetChildren()) do
			if child:IsA("UIStroke") then
				child.Transparency = 1
			end
		end

		v10.Position = UDim2.fromOffset(38, 0)
		v10.Size = UDim2.new(1, -46, 1, 0)
		v10.TextSize = 13
		fn46(v18, 60, 40)
		v19.Visible = false
		v20.Position = UDim2.fromOffset(0, 0)
		v20.Size = UDim2.fromScale(1, 1)
		v20.BackgroundTransparency = 0.92
		v17.Position = UDim2.new(1, -4, 0, 4)
		v17.Size = UDim2.fromOffset(32, 32)
		v16.Position = UDim2.fromOffset(12, 0)
		v16.Size = UDim2.new(1, -56, 1, 0)
		v8.Parent = v21
		v8.Position = UDim2.fromOffset(12, 108)
		v8.Size = UDim2.new(1, -24, 0, 30)
		v8.Visible = false
		v9.Parent = v21
		v9.Position = UDim2.fromOffset(12, 108)
		v9.Size = UDim2.new(1, -24, 0, 164)
		v9.BackgroundTransparency = 1

		for _, child in ipairs(v9:GetChildren()) do
			if child:IsA("UIStroke") then
				child.Transparency = 1
			end
		end

		v7:AddLineText("Saved Playlists").Instance.LayoutOrder = 1
		local v22 = createFrame5(137, 2, v7._page)
		local textLabel9 = Instance.new("TextLabel")
		textLabel9.BackgroundTransparency = 1
		textLabel9.FontFace = index.Theme.Font
		textLabel9.Text = "Favorite playlists"
		textLabel9.TextColor3 = index.Theme.Text
		fn18(textLabel9, "Text")
		textLabel9.TextSize = 14
		textLabel9.TextXAlignment = Enum.TextXAlignment.Left
		textLabel9.Position = UDim2.fromOffset(12, 8)
		textLabel9.Size = UDim2.new(1, -112, 0, 20)
		textLabel9.ZIndex = tbl.Content + 3
		textLabel9.Parent = v22
		textLabel9.Visible = false
		local textLabel10 = Instance.new("TextLabel")
		textLabel10.BackgroundTransparency = 1
		textLabel10.FontFace = index.Theme.FontRegular
		textLabel10.Text = "Save and load your playlists with one tap"
		textLabel10.TextColor3 = index.Theme.TextDim
		fn18(textLabel10, "TextDim")
		textLabel10.TextSize = 10
		textLabel10.TextXAlignment = Enum.TextXAlignment.Left
		textLabel10.Position = UDim2.fromOffset(12, 29)
		textLabel10.Size = UDim2.new(1, -112, 0, 16)
		textLabel10.ZIndex = tbl.Content + 3
		textLabel10.Parent = v22
		textLabel10.Visible = false
		local frame10 = Instance.new("Frame")
		frame10.BackgroundColor3 = Color3.new(1, 1, 1)
		frame10.BackgroundTransparency = 0.94
		frame10.BorderSizePixel = 0
		frame10.Position = UDim2.fromOffset(8, 7)
		frame10.Size = UDim2.new(1, -16, 0, 36)
		frame10.ZIndex = tbl.Content + 3
		frame10.Parent = v22
		createUICorner(frame10, 9)
		local imageLabel5 = Instance.new("ImageLabel")
		imageLabel5.BackgroundTransparency = 1
		imageLabel5.Image = fn21("search")
		imageLabel5.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel5, "TextDim")
		imageLabel5.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel5.Position = UDim2.new(0, 11, 0.5, 0)
		imageLabel5.Size = UDim2.fromOffset(15, 15)
		imageLabel5.ZIndex = tbl.Content + 4
		imageLabel5.Parent = frame10
		local textBox = Instance.new("TextBox")
		textBox.BackgroundTransparency = 1
		textBox.ClearTextOnFocus = false
		textBox.FontFace = index.Theme.FontRegular
		textBox.PlaceholderText = "Search favorite playlists..."
		textBox.PlaceholderColor3 = Color3.fromRGB(115, 120, 118)
		textBox.Text = ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.TextSize = 11
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		textBox.Position = UDim2.fromOffset(36, 0)
		textBox.Size = UDim2.new(1, -44, 1, 0)
		textBox.ZIndex = tbl.Content + 4
		textBox.Parent = frame10
		local textButton3 = Instance.new("TextButton")
		textButton3.Text = ""
		textButton3.AutoButtonColor = false
		textButton3.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton3.BackgroundTransparency = 0.96
		textButton3.BorderSizePixel = 0
		textButton3.Position = UDim2.fromOffset(8, 113)
		textButton3.Size = UDim2.new(1, -16, 0, 56)
		textButton3.ZIndex = tbl.Content + 4
		textButton3.Parent = v22
		createUICorner(textButton3, 10)
		createUIStroke(textButton3, Color3.new(1, 1, 1), 1, 0.94)
		local imageLabel6 = Instance.new("ImageLabel")
		imageLabel6.BackgroundTransparency = 1
		imageLabel6.Image = fn21("heart-plus")
		imageLabel6.ImageColor3 = index.Theme.Text
		fn18(imageLabel6, "Text")
		imageLabel6.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel6.Position = UDim2.new(0, 16, 0.5, 0)
		imageLabel6.Size = UDim2.fromOffset(17, 17)
		imageLabel6.ZIndex = tbl.Content + 5
		imageLabel6.Parent = textButton3
		local textLabel11 = Instance.new("TextLabel")
		textLabel11.BackgroundTransparency = 1
		textLabel11.FontFace = index.Theme.Font
		textLabel11.Text = "Save current playlist"
		textLabel11.TextColor3 = index.Theme.Text
		fn18(textLabel11, "Text")
		textLabel11.TextSize = 12
		textLabel11.TextXAlignment = Enum.TextXAlignment.Left
		textLabel11.Position = UDim2.fromOffset(44, 7)
		textLabel11.Size = UDim2.new(1, -84, 0, 20)
		textLabel11.ZIndex = tbl.Content + 5
		textLabel11.Parent = textButton3
		local textLabel12 = Instance.new("TextLabel")
		textLabel12.BackgroundTransparency = 1
		textLabel12.FontFace = index.Theme.FontRegular
		textLabel12.Text = "Add the playlist loaded in the player to Favorites"
		textLabel12.TextColor3 = index.Theme.TextDim
		fn18(textLabel12, "TextDim")
		textLabel12.TextSize = 9
		textLabel12.TextXAlignment = Enum.TextXAlignment.Left
		textLabel12.Position = UDim2.fromOffset(44, 27)
		textLabel12.Size = UDim2.new(1, -84, 0, 17)
		textLabel12.ZIndex = tbl.Content + 5
		textLabel12.Parent = textButton3
		local imageLabel7 = Instance.new("ImageLabel")
		imageLabel7.BackgroundTransparency = 1
		imageLabel7.Image = fn21("chevron-right")
		imageLabel7.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel7, "TextDim")
		imageLabel7.AnchorPoint = Vector2.new(1, 0.5)
		imageLabel7.Position = UDim2.new(1, -16, 0.5, 0)
		imageLabel7.Size = UDim2.fromOffset(14, 14)
		imageLabel7.ZIndex = tbl.Content + 5
		imageLabel7.Parent = textButton3
		local frame11 = Instance.new("Frame")
		frame11.BackgroundColor3 = Color3.new(1, 1, 1)
		frame11.BackgroundTransparency = 0.92
		frame11.BorderSizePixel = 0
		frame11.Position = UDim2.fromOffset(8, 103)
		frame11.Size = UDim2.new(1, -16, 0, 1)
		frame11.ZIndex = tbl.Content + 3
		frame11.Parent = v22
		local frame12 = Instance.new("Frame")
		frame12.BackgroundTransparency = 1
		frame12.BorderSizePixel = 0
		frame12.Position = UDim2.fromOffset(8, 51)
		frame12.Size = UDim2.new(1, -16, 0, 78)
		frame12.ZIndex = tbl.Content + 2
		frame12.Parent = v22
		local tbl10 = {}
		local str3 = str .. "/spotify-favorites.json"

		if readfile_ and isfile_ and isfile_(str3) then
			pcall(function()
				local data = HttpService:JSONDecode(readfile_(str3))

				if type(data) == "table" then
					tbl10 = data
				end
			end)
		end

		local function fn47()
			if not (writefile_ and fn13()) then
				return
			end
			pcall(writefile_, str3, HttpService:JSONEncode(tbl10))
		end

		os.clock()

		local function fn48(arg3, backgroundColor3)
			textLabel2.Text = tostring(arg3 or "")
			frame3.BackgroundColor3 = backgroundColor3 or Color3.fromRGB(125, 130, 128)
		end

		local tbl11 = {}

		local function fn49(arg3, arg4, arg5, arg6, arg7, arg8, arg9)
			if not v5.IsOpen() then
				return
			end
			local now = os.clock()
			if tbl11[arg3] and now - tbl11[arg3] < 2.5 then
				return
			end
			tbl11[arg3] = now
			index:Notify({ Title = arg4, Text = arg5, Type = arg6 or "info", Icon = arg7, Duration = arg8 or 5, Actions = arg9 })
		end

		local function fn50(arg3)
			local n13 = math.max(0, math.floor((tonumber(arg3) or 0) / 1000))
			return string.format("%d:%02d", math.floor(n13 / 60), n13 % 60)
		end

		error("devirt: value <luasym.LuaFunc object at 0x00000180871D55A0> in an expression (at 207:2287)")
	end

	index4._BuildDefaultChatTools = function(arg)
		return {
			{
				Name = "list_ui_elements",
				Description = "Lists every UI element that has a Flag, with its kind and current value.",
				Parameters = { type = "object", properties = {}, required = {} },
				Handler = function()
					return index:ListUIElements()
				end,
			},
			{
				Name = "set_ui_element_value",
				Description = "Sets a UI element's value by its flag name. Use list_ui_elements first to find valid flags.",
				Parameters = {
					type = "object",
					properties = {
						flag = { type = "string", description = "The Flag of the UI element to change." },
						value = {
							description = "The new value: true/false for a Toggle, a number for a Slider, a string for a Textbox/Dropdown.",
						},
					},
					required = { "flag", "value" },
				},
				Handler = function(arg2)
					local v, v4 = index:SetUIElementValue(arg2.flag, arg2.value)

					if not v then
						error(v4, 0)
					end

					return true
				end,
			},
			{
				Name = "select_tab",
				Description = "Switches the panel to one of its top-level sidebar tabs.",
				Parameters = {
					type = "object",
					properties = { tab = { type = "string", description = "The tab's name." } },
					required = { "tab" },
				},
				Handler = function(arg2)
					local v = arg:SelectTab(arg2.tab)

					if not v then
						error("No tab named '" .. tostring(arg2.tab) .. "'", 0)
					end

					return "Switched to " .. v.Name
				end,
			},
			{
				Name = "select_subtab",
				Description = "Switches to a sub-tab nested under one of the top-level tabs. Selects the parent tab first automatically -- no need to call select_tab beforehand.",
				Parameters = {
					type = "object",
					properties = {
						tab = { type = "string", description = "The top-level tab that contains the sub-tab." },
						subtab = { type = "string", description = "The sub-tab's name." },
					},
					required = { "tab", "subtab" },
				},
				Handler = function(arg2)
					local v = arg:SelectTab(arg2.tab)

					if not v then
						error("No tab named '" .. tostring(arg2.tab) .. "'", 0)
					end

					local v4 = v:SelectSubTabByName(arg2.subtab)

					if not v4 then
						local str3 = "' under " .. v.Name
						error("No sub-tab named '" .. tostring(arg2.subtab) .. str3, 0)
					end

					return "Switched to " .. v.Name .. " > " .. v4.Name
				end,
			},
			{
				Name = "find_and_highlight_element",
				Description = "Finds a UI element (button, toggle, card, slider, etc.) by its visible label, jumps to whichever tab or sub-tab it lives on, scrolls to it, and flashes a highlight on it -- the same thing Ctrl+K search does when you click a result.",
				Parameters = {
					type = "object",
					properties = {
						query = {
							type = "string",
							description = "The element's visible text. Partial matches are fine.",
						},
					},
					required = { "query" },
				},
				Handler = function(arg2)
					local v, highlighted = arg:JumpToElement(arg2.query)

					if not v then
						error(highlighted, 0)
					end

					return "Highlighted: " .. highlighted
				end,
			},
		}
	end

	index4._BuildDefaultSystemPrompt = function(arg)
		local tbl7 = {}

		for _, tab in ipairs(arg._tabs) do
			if not tab.Hidden then
				table.insert(tbl7, tab.Name)
			end
		end

		return "You are a helpful assistant embedded in a Roblox UI panel built with NullUI. Your tools " .. "only affect THIS PANEL -- they inspect/adjust the panel's own toggles/sliders/etc, switch " .. "between its top-level tabs (" .. table.concat(tbl7, ", ") .. "), switch to a specific sub-tab within one of those, and jump to/highlight a specific UI element on the panel by its visible label. Only use select_tab, select_subtab, or find_and_highlight_element when the user is asking to be taken somewhere IN THIS PANEL, or to interact with a control that's actually on it. If the user asks you to write a script, explain something, or anything else that isn't about navigating this panel, just answer directly in chat -- do not call a tool just because the message happens to mention a word that sounds like a setting. When you write a Luau script for the user, put it in a normal ```lua fenced block -- the panel automatically adds a Run button to it that the user can click themselves, so you don't need to explain how to run it or tell them you can't execute code; you're just not the one who decides to run it -- they click Run after reading it. Keep answers short and to the point. None of your tools execute anything outside this panel, and you have no way to trigger the Run button yourself."
	end

	index4.AddChatPanel = function(arg, arg2)
		local tbl7 = arg2 or {}
		tbl7.Tools = tbl7.Tools or arg:_BuildDefaultChatTools()
		local janitor = arg._janitor
		local v = arg:AddTab({ Name = tbl7.Name or "Assistant", Icon = tbl7.Icon or "bot", Hidden = true })
		v._page.Visible = false
		local emptyState = v._group:FindFirstChild("EmptyState")

		if emptyState then
			emptyState.Visible = false
		end

		local tbl8 = {}
		local v4 = ipairs
		local tools = tbl7.Tools or {}

		for _, tool in v4(tools) do
			if tool.Name then
				tbl8[tool.Name] = tool
			end
		end

		local frame = Instance.new("Frame")
		frame.Name = "ChatPanel"
		frame.BackgroundTransparency = 1
		frame.ClipsDescendants = true
		frame.Size = UDim2.fromScale(1, 1)
		frame.ZIndex = tbl.Content
		frame.Parent = v._group
		local zIndex = frame.ZIndex + 1
		local frame2 = Instance.new("Frame")
		frame2.Name = "Content"
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.fromScale(1, 1)
		frame2.ZIndex = frame.ZIndex
		frame2.Parent = frame
		local frame3 = Instance.new("Frame")
		frame3.BackgroundTransparency = 1
		frame3.Active = true
		frame3.Size = UDim2.new(1, 0, 0, 38)
		frame3.ZIndex = zIndex
		frame3.Parent = frame2
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 14)
		uiPadding.PaddingRight = UDim.new(0, 8)
		uiPadding.Parent = frame3
		local frame4 = Instance.new("Frame")
		frame4.BackgroundTransparency = 1
		frame4.Size = UDim2.new(1, -84, 1, 0)
		frame4.ZIndex = zIndex + 1
		frame4.Parent = frame3
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 7)
		uiListLayout.Parent = frame4
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(tbl7.Icon or "bot")
		imageLabel.ImageColor3 = index.Theme.Text
		fn18(imageLabel, "Text")
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.LayoutOrder = 1
		imageLabel.ZIndex = zIndex + 2
		imageLabel.Parent = frame4
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = tbl7.Title or "Assistant"
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.AutomaticSize = Enum.AutomaticSize.X
		textLabel.Size = UDim2.fromOffset(0, 16)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = zIndex + 2
		textLabel.Parent = frame4
		local frame5 = Instance.new("Frame")
		frame5.BackgroundTransparency = 1
		frame5.AnchorPoint = Vector2.new(1, 0.5)
		frame5.Position = UDim2.new(1, 0, 0.5, 0)
		frame5.Size = UDim2.fromOffset(100, 22)
		frame5.ZIndex = zIndex + 1
		frame5.Parent = frame3
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
		uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout2.Padding = UDim.new(0, 4)
		uiListLayout2.Parent = frame5

		local function fn43(arg3, layoutOrder)
			local textButton = Instance.new("TextButton")
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = Color3.new(1, 1, 1)
			textButton.BackgroundTransparency = 1
			textButton.BorderSizePixel = 0
			textButton.Size = UDim2.fromOffset(22, 22)
			textButton.LayoutOrder = layoutOrder
			textButton.ZIndex = zIndex + 1
			textButton.Parent = frame5
			createUICorner(textButton, 6)
			local imageLabel2 = Instance.new("ImageLabel")
			imageLabel2.BackgroundTransparency = 1
			imageLabel2.Image = fn21(arg3)
			imageLabel2.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel2, "TextDim")
			imageLabel2.Size = UDim2.fromOffset(13, 13)
			imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel2.ZIndex = zIndex + 2
			imageLabel2.Parent = textButton

			janitor:Add(textButton.MouseEnter:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
				fn17(imageLabel2, { ImageColor3 = index.Theme.Text }, 0.12)
			end))

			janitor:Add(textButton.MouseLeave:Connect(function()
				fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
				fn17(imageLabel2, { ImageColor3 = index.Theme.TextDim }, 0.12)
			end))

			return textButton, imageLabel2
		end

		local copy, v5 = fn43("copy", 1)
		local v6, v7 = fn43("refresh-cw", 2)
		fn43("trash-2", 3)
		fn43("x", 4)
		local frame6 = Instance.new("Frame")
		frame6.BackgroundColor3 = Color3.new(1, 1, 1)
		frame6.BackgroundTransparency = 0.94
		frame6.BorderSizePixel = 0
		frame6.Position = UDim2.fromOffset(0, 38)
		frame6.Size = UDim2.new(1, 0, 0, 1)
		frame6.ZIndex = zIndex
		frame6.Parent = frame2
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.PaddingLeft = UDim.new(0, 14)
		uiPadding2.PaddingRight = UDim.new(0, 14)
		uiPadding2.PaddingBottom = UDim.new(0, 12)
		uiPadding2.Parent = frame2
		local frame7 = Instance.new("Frame")
		frame7.BackgroundTransparency = 1
		frame7.Active = true
		frame7.AnchorPoint = Vector2.new(0, 1)
		frame7.Position = UDim2.new(0, 0, 1, 0)
		frame7.Size = UDim2.new(1, 0, 0, 38)
		frame7.ZIndex = zIndex
		frame7.Parent = frame2
		local frame8 = Instance.new("Frame")
		frame8.BackgroundColor3 = Color3.new(1, 1, 1)
		frame8.BackgroundTransparency = 0.95
		frame8.BorderSizePixel = 0
		frame8.Size = UDim2.new(1, -44, 1, 0)
		frame8.ZIndex = zIndex + 1
		frame8.Parent = frame7
		createUICorner(frame8, 9)
		local v8 = createUIStroke(frame8, Color3.new(1, 1, 1), 1, 0.9)
		local uiPadding3 = Instance.new("UIPadding")
		uiPadding3.PaddingLeft = UDim.new(0, 10)
		uiPadding3.PaddingRight = UDim.new(0, 10)
		uiPadding3.Parent = frame8
		local textBox = Instance.new("TextBox")
		textBox.BackgroundTransparency = 1
		textBox.ClearTextOnFocus = false
		textBox.FontFace = index.Theme.FontRegular
		textBox.PlaceholderText = tbl7.Placeholder or "Ask me anything..."
		textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 122)
		textBox.Text = ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.TextSize = 13
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		textBox.TextYAlignment = Enum.TextYAlignment.Center
		textBox.ClipsDescendants = true
		textBox.Size = UDim2.fromScale(1, 1)
		textBox.ZIndex = zIndex + 2
		textBox.Parent = frame8

		janitor:Add(textBox.Focused:Connect(function()
			fn17(v8, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
		end))

		janitor:Add(textBox.FocusLost:Connect(function()
			fn17(v8, { Color = Color3.new(1, 1, 1), Transparency = 0.9 }, 0.18)
		end))

		local textButton = Instance.new("TextButton")
		textButton.Name = "Send"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 0.9
		textButton.BorderSizePixel = 0
		textButton.AnchorPoint = Vector2.new(1, 0)
		textButton.Position = UDim2.new(1, 0, 0, 0)
		textButton.Size = UDim2.fromOffset(38, 38)
		textButton.ZIndex = zIndex + 1
		textButton.Parent = frame7
		createUICorner(textButton, 9)
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.Image = fn21("send")
		imageLabel2.ImageColor3 = index.Theme.Text
		fn18(imageLabel2, "Text")
		imageLabel2.Size = UDim2.fromOffset(14, 14)
		imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel2.ZIndex = zIndex + 2
		imageLabel2.Parent = textButton

		janitor:Add(textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.8 }, 0.12)
		end))

		janitor:Add(textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
		end))

		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(0, 47)
		scrollingFrame.Size = UDim2.new(1, 0, 1, -95)
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = zIndex
		scrollingFrame.Parent = frame2
		local uiPadding4 = Instance.new("UIPadding")
		uiPadding4.PaddingRight = UDim.new(0, 18)
		uiPadding4.Parent = scrollingFrame
		local uiListLayout3 = Instance.new("UIListLayout")
		uiListLayout3.Padding = UDim.new(0, 8)
		uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout3.Parent = scrollingFrame
		fn19(scrollingFrame)
		createFrame2(scrollingFrame, uiListLayout3, frame, janitor)
		local flag6 = true

		janitor:Add(scrollingFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
			if flag6 then
				scrollingFrame.CanvasPosition = Vector2.new(0, scrollingFrame.AbsoluteCanvasSize.Y)
			end
		end))

		local connect = scrollingFrame:GetPropertyChangedSignal("CanvasPosition").Connect
		error("devirt: value <luasym.LuaFunc object at 0x000001808419F2E0> in an expression (at 207:510)")
	end

	index4.AddCloudPanel = function(arg, arg2)
		local tbl7 = arg2 or {}
		local service = tbl7.Service
		local v = arg:AddTab({ Name = tbl7.Name or "Cloud", Icon = tbl7.Icon or "cloud", Hidden = tbl7.Hidden ~= false })

		table.insert(arg._tabChangeListeners, function(arg3)
			if tbl7.OnToggle then
				fn2(tbl7.OnToggle, arg3 == v)
			end
		end)

		local v4 = nil
		local v5 = nil
		local v6 = nil

		local function fn43(arg3)
			local n12 = math.max(0, os.time() - tonumber(arg3 or os.time()))
			if n12 < 60 then
				return "updated just now"
			end

			if n12 < 3600 then
				return "updated " .. math.floor(n12 / 60) .. "m ago"
			end

			if n12 < 86400 then
				return "updated " .. math.floor(n12 / 3600) .. "h ago"
			end
			return "updated " .. math.floor(n12 / 86400) .. "d ago"
		end

		local tbl8 = {
			Local = v:AddSubTab({ Name = "Local Configs", Icon = "Lucide:hard-drive" }),
			Mine = v:AddSubTab({ Name = "Publish Public Config", Icon = "Lucide:cloud-cog" }),
			Explore = v:AddSubTab({ Name = "Public Configs", Icon = "Lucide:cloud" }),
		}

		tbl8.Local:AddParagraph({
			Title = "Local Library",
			Icon = "Lucide:hard-drive",
			Text = "Private presets saved only on this device. Load, create and manage them without uploading anything.",
		})

		tbl8.Local:AddSection("Quick Actions", "Lucide:zap")

		tbl8.Local:AddButton({
			Text = "Save Current Settings Locally",
			Description = "Stays on this device only",
			Icon = "Lucide:save",
			Callback = function()
				index:Modal({
					Title = "Save Config Locally",
					Text = "Stays only on this device -- never sent anywhere.",
					ConfirmText = "Save",
					CancelText = "Cancel",
					Window = arg,
					Fields = {
						{ Key = "Name", Label = "Name", Placeholder = "Enter a name...", MaxLength = 60 },
						{
							Key = "Description",
							Label = "Description (optional)",
							Type = "textarea",
							Placeholder = "What's different about this one?",
							MaxLength = 280,
						},
					},
					Callback = function(arg3, arg4)
						if not arg3 then
							return
						end

						if not arg4.Name or arg4.Name:gsub("%s+", "") == "" then
							index:Notify({ Title = "Local Save", Text = "Name can't be empty.", Type = "warning", Duration = 3 })
							return
						end

						local function fn44()
							local v7, v8 = index:SaveConfig(arg4.Name, { Description = arg4.Description })

							index:Notify({
								Title = v7 and "Saved" or "Could not save",
								Text = v7 and "Saved locally." or tostring(v8),
								Type = v7 and "success" or "error",
								Duration = 3,
							})

							if v7 and v6 then
								v6.Refresh()
							end
						end

						if index:GetConfigMeta(arg4.Name) then
							index:Confirm({
								Title = "Overwrite \"" .. tostring(arg4.Name) .. "\"?",
								Text = "A local config already uses this name.",
								ConfirmText = "Overwrite",
								CancelText = "Cancel",
								Danger = true,
								Window = arg,
								Callback = function(arg5)
									if arg5 then
										fn44()
									end
								end,
							})
						else
							fn44()
						end
					end,
				})
			end,
		})

		v6 = tbl8.Local:AddCardGrid({
			Title = "Local Configs",
			Height = 224,
			FixedHeight = true,
			Search = true,
			SearchPlaceholder = "Search local configs...",
			CardHeight = 68,
			AutoCardHeight = false,
			CardMinWidth = 180,
			Columns = 2,
			MaxColumns = 2,
			OuterPadding = 12,
			CardPadding = 8,
			ShowScrollbar = true,
			EmptyText = "No local configs saved yet.",
			ErrorText = "Your executor doesn't support local file access.",
			Fetch = function(arg3)
				local v7, v8 = index:ListConfigs()
				if v8 and #v7 == 0 then
					return nil, v8
				end
				local v9 = string.lower(tostring(arg3 and arg3.Query or ""))
				local tbl9 = {}

				for _, v10 in ipairs(v7) do
					local lower = string.lower
					local concat = table.concat
					local tbl10 = {}
					local str3 = tostring(v10.Name or "")
					local str4 = tostring(v10.Description or "")
					local concat2 = table.concat
					local tags = v10.Tags or {}
					local v11 = table.pack(concat2(tags, " "))
					tbl10[1] = str3
					tbl10[2] = str4

					do
						local values = table.pack(table.unpack(v11, 1, v11.n))
						table.move(values, 1, values.n, 3, tbl10)
					end

					local v12 = lower(concat(tbl10, " "))

					if not (v9 ~= "" and not string.find(v12, v9, 1, true)) then
						local function fn44()
							index:Confirm({
								Title = "Load \"" .. tostring(v10.Name) .. "\"?",
								Text = "This overwrites your current settings. A snapshot is kept for instant undo.",
								ConfirmText = "Load",
								CancelText = "Cancel",
								Window = arg,
								Callback = function(arg4)
									if not arg4 then
										return
									end
									local v13 = index:CreateSnapshot()
									local v14, v15 = index:LoadConfig(v10.Name, false)
									if not v14 then
										index:Notify({ Title = "Could not load", Text = tostring(v15), Type = "error", Duration = 4 })
										return
									end

									index:Notify({
										Title = "Loaded",
										Text = tostring(v10.Name) .. " is now active.",
										Type = "success",
										Duration = 6,
										Actions = {
											{
												Text = "Undo",
												Callback = function()
													index:RestoreSnapshot(v13, false)
												end,
											},
										},
									})
								end,
							})
						end

						local function fn45()
							index:Confirm({
								Title = "Delete \"" .. tostring(v10.Name) .. "\"?",
								Text = "This local config will be permanently removed.",
								ConfirmText = "Delete",
								CancelText = "Cancel",
								Danger = true,
								Window = arg,
								Callback = function(arg4)
									if not arg4 then
										return
									end
									local v13, v14 = index:DeleteConfig(v10.Name)

									index:Notify({
										Title = v13 and "Deleted" or "Could not delete",
										Text = v13 and "Config removed." or tostring(v14),
										Type = v13 and "success" or "error",
										Duration = 3,
									})

									if v13 and v6 then
										v6.Refresh()
									end
								end,
							})
						end

						table.insert(tbl9, {
							Title = v10.Name,
							Description = v10.Description,
							Byline = fn43(v10.CreatedAt) .. (v10.Tags and #v10.Tags > 0 and "  ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢  " .. table.concat(v10.Tags, ", ") or ""),
							Icon = "Lucide:file-text",
							ActionIcon = "download",
							Callback = fn44,
							SecondaryIcon = "trash-2",
							SecondaryCallback = fn45,
							SecondaryDanger = true,
						})
					end
				end

				return tbl9
			end,
		})

		local function fn44()
			if not service then
				index:Notify({ Title = "Cloud", Text = "No cloud service configured.", Type = "warning", Duration = 3 })
				return
			end

			index:Modal({
				Title = "New Config",
				ConfirmText = "Publish",
				CancelText = "Cancel",
				Window = arg,
				Fields = {
					{ Key = "Name", Label = "Name", Placeholder = "Enter profile name...", MaxLength = 60 },
					{
						Key = "Description",
						Label = "Description",
						Type = "textarea",
						Placeholder = "Enter profile's description...",
						MaxLength = 280,
					},
					{
						Key = "Tags",
						Label = "Tags (optional)",
						Type = "tags",
						Placeholder = "Enter tags separated by commas...",
					},
				},
				Callback = function(arg3, arg4)
					if not arg3 then
						return
					end
					local v7, v8 = service:Publish({ Name = arg4.Name, Description = arg4.Description, Tags = arg4.Tags })

					index:Notify({
						Title = v7 and "Published" or "Could not publish",
						Text = v7 and "Your config is now public." or tostring(v8),
						Type = v7 and "success" or "error",
						Duration = 4,
					})

					if v7 then
						if v4 then
							v4.Refresh()
						end

						if v5 then
							v5.Refresh()
						end
					end
				end,
			})
		end

		tbl8.Mine:AddParagraph({
			Title = "My Cloud Library",
			Icon = "Lucide:cloud",
			Text = "Publish your current setup, review what you shared and remove old uploads from one place.",
		})

		tbl8.Mine:AddSection("Publishing", "Lucide:upload-cloud")

		tbl8.Mine:AddButton({
			Text = "Publish Current Settings",
			Description = "Share your current config publicly",
			Icon = "Lucide:upload-cloud",
			Callback = fn44,
		})

		v4 = tbl8.Mine:AddCardGrid({
			Title = "Your Configs",
			Height = 210,
			FixedHeight = true,
			Search = false,
			CardHeight = 104,
			AutoCardHeight = false,
			DescriptionHeight = 24,
			CardMinWidth = 180,
			Columns = 2,
			MaxColumns = 2,
			OuterPadding = 12,
			CardPadding = 8,
			ShowScrollbar = true,
			EmptyText = service and "You haven't published anything yet." or "No cloud service configured.",
			ErrorText = "Couldn't load your configs.",
			Fetch = function()
				if not service then
					return {}, nil
				end
				local v7, v8 = service:ListMine()
				if not v7 then
					return nil, v8
				end
				local tbl9 = {}

				for _, v9 in ipairs(v7) do
					local function fn45()
						index:Confirm({
							Title = "Delete \"" .. tostring(v9.Name) .. "\"?",
							Text = "This removes it from the public library. This cannot be undone.",
							ConfirmText = "Delete",
							CancelText = "Cancel",
							Danger = true,
							Window = arg,
							Callback = function(arg3)
								if not arg3 then
									return
								end
								local v10, v11 = service:Delete(v9.Id)

								index:Notify({
									Title = v10 and "Deleted" or "Could not delete",
									Text = v10 and "Config removed." or tostring(v11),
									Type = v10 and "success" or "error",
									Duration = 3,
								})

								if v10 then
									if v4 then
										v4.Refresh()
									end

									if v5 then
										v5.Refresh()
									end
								end
							end,
						})
					end

					local insert = table.insert

					local tbl10 = {
						Title = v9.Name,
						Description = v9.Description,
						Byline = v9.CreatedAtText or "",
						Icon = "Lucide:cloud",
					}

					local stats = {}
					local tbl11 = { Icon = "thumbs-up", Text = tostring(v9.Likes or 0) }
					local tbl12 = { Icon = "download", Text = tostring(v9.Downloads or 0) }
					stats[1] = tbl11
					stats[2] = tbl12
					tbl10.Stats = stats
					tbl10.Menu = { { Text = "Delete publication", Icon = "trash-2", Danger = true, Callback = fn45 } }
					insert(tbl9, tbl10)
				end

				return tbl9
			end,
		})

		tbl8.Explore:AddParagraph({
			Title = "Community Library",
			Icon = "Lucide:compass",
			Text = "Discover public configs, compare popularity and apply a setup with an instant undo snapshot.",
		})

		tbl8.Explore:AddSection("Browse Configs", "Lucide:layout-grid")
		local tbl9 = { ["Top Rated"] = "top", ["Most Downloaded"] = "downloads", Newest = "new" }

		v5 = tbl8.Explore:AddCardGrid({
			Title = "Public Configs",
			Height = 230,
			FixedHeight = true,
			Sorts = { "Top Rated", "Most Downloaded", "Newest" },
			SearchPlaceholder = "Search config by name / tags...",
			CardHeight = 112,
			AutoCardHeight = false,
			DescriptionHeight = 24,
			CardMinWidth = 180,
			Columns = 2,
			MaxColumns = 2,
			OuterPadding = 12,
			CardPadding = 8,
			ShowScrollbar = true,
			EmptyText = "No public configs match your search.",
			ErrorText = "Couldn't reach the cloud service.",
			Fetch = function(arg3)
				if not service then
					return nil, "No cloud service configured."
				end
				local v7, v8 = service:List({ Query = arg3.Query, Sort = tbl9[arg3.Sort] or "top", PageSize = arg3.PageSize })
				if not v7 then
					return nil, v8
				end
				local tbl10 = {}

				for _, v9 in ipairs(v7) do
					local ownerName = v9.OwnerName or "anonymous"

					if v9.CreatedAtText then
						ownerName ..= " • " .. v9.CreatedAtText
					end

					local insert = table.insert

					local tbl11 = {
						Title = v9.Name,
						Description = v9.Description,
						Byline = ownerName,
						Icon = "Lucide:cloud-download",
						ActionIcon = "download",
					}

					local stats = {}

					local tbl12 = {
						Icon = "thumbs-up",
						Text = tostring(v9.Likes or 0),
						Callback = function()
							local v10, v11 = service:Like(v9.Id)
							if not v10 then
								index:Notify({ Title = "Could not like", Text = tostring(v11), Type = "error", Duration = 3 })
								return
							end

							if v5 then
								v5.Refresh()
							end
						end,
					}

					local tbl13 = { Icon = "download", Text = tostring(v9.Downloads or 0) }
					stats[1] = tbl12
					stats[2] = tbl13
					tbl11.Stats = stats

					tbl11.Callback = function()
						index:Confirm({
							Title = "Apply \"" .. tostring(v9.Name) .. "\"?",
							Text = "This overwrites your current settings. A snapshot of what you have now is kept so you can undo it right after.",
							ConfirmText = "Apply",
							CancelText = "Cancel",
							Window = arg,
							Callback = function(arg4)
								if not arg4 then
									return
								end
								local v10, v11 = service:Download(v9.Id)
								if not v10 or not v10.Data then
									index:Notify({ Title = "Could not apply", Text = tostring(v11), Type = "error", Duration = 4 })
									return
								end
								local v12 = index:CreateSnapshot()
								index:SetConfig(v10.Data, false)

								index:Notify({
									Title = "Applied",
									Text = tostring(v9.Name) .. " is now active.",
									Type = "success",
									Duration = 6,
									Actions = {
										{
											Text = "Undo",
											Callback = function()
												index:RestoreSnapshot(v12, false)
												index:Notify({ Title = "Reverted", Text = "Your previous settings are back.", Type = "info", Duration = 3 })
											end,
										},
									},
								})

								if v5 then
									v5.Refresh()
								end

								if tbl7.OnApplied then
									fn2(tbl7.OnApplied, v9)
								end
							end,
						})
					end

					insert(tbl10, tbl11)
				end

				return tbl10
			end,
		})

		local currentTab = nil

		local function fn45()
			if arg._currentTab == v then
				return
			end

			if arg._currentTab and not arg._currentTab.Hidden then
				currentTab = arg._currentTab
			end

			v._select()
		end

		local function fn46()
			if arg._currentTab ~= v then
				return
			end

			if currentTab and not currentTab.Hidden then
				currentTab._select()
			elseif arg._tabs[1] and arg._tabs[1] ~= v then
				arg._tabs[1]._select()
			end
		end

		return {
			Instance = v._group,
			Tab = v,
			Open = fn45,
			Close = fn46,
			Toggle = function()
				if arg._currentTab == v then
					fn46()
				else
					fn45()
				end
			end,
			IsOpen = function()
				return arg._currentTab == v
			end,
			RefreshMine = function()
				if v4 then
					v4.Refresh()
				end
			end,
			RefreshPublic = function()
				if v5 then
					v5.Refresh()
				end
			end,
		}
	end

	index4.AddGlobalChatPanel = function(arg, arg2)
		local tbl7 = arg2 or {}
		local service = tbl7.Service
		local janitor = arg._janitor
		local v = arg:AddTab({ Name = tbl7.Name or "Chat", Icon = tbl7.Icon or "messages-square", Hidden = tbl7.Hidden ~= false })
		v._page.Visible = false
		local emptyState = v._group:FindFirstChild("EmptyState")

		if emptyState then
			emptyState.Visible = false
		end

		table.insert(arg._tabChangeListeners, function(arg3)
			if tbl7.OnToggle then
				fn2(tbl7.OnToggle, arg3 == v)
			end
		end)

		local n12 = 38
		local frame = Instance.new("Frame")
		frame.Name = "GlobalChatPanel"
		frame.BackgroundTransparency = 1
		frame.ClipsDescendants = true
		frame.Size = UDim2.fromScale(1, 1)
		frame.ZIndex = tbl.Content
		frame.Parent = v._group
		local zIndex = frame.ZIndex + 1
		local frame2 = Instance.new("Frame")
		frame2.Name = "Content"
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.fromScale(1, 1)
		frame2.ZIndex = frame.ZIndex
		frame2.Parent = frame
		local frame3 = Instance.new("Frame")
		frame3.BackgroundTransparency = 1
		frame3.Active = true
		frame3.Size = UDim2.new(1, 0, 0, 38)
		frame3.ZIndex = zIndex
		frame3.Parent = frame2
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 14)
		uiPadding.PaddingRight = UDim.new(0, 8)
		uiPadding.Parent = frame3
		local frame4 = Instance.new("Frame")
		frame4.BackgroundTransparency = 1
		frame4.Size = UDim2.new(1, -136, 1, 0)
		frame4.ZIndex = zIndex + 1
		frame4.Parent = frame3
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 7)
		uiListLayout.Parent = frame4
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(tbl7.Icon or "messages-square")
		imageLabel.ImageColor3 = index.Theme.Text
		fn18(imageLabel, "Text")
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.LayoutOrder = 1
		imageLabel.ZIndex = zIndex + 2
		imageLabel.Parent = frame4
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = tbl7.Title or "Chat"
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.AutomaticSize = Enum.AutomaticSize.X
		textLabel.Size = UDim2.fromOffset(0, 16)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = zIndex + 2
		textLabel.Parent = frame4
		local frame5 = Instance.new("Frame")
		frame5.BackgroundTransparency = 1
		frame5.AnchorPoint = Vector2.new(1, 0.5)
		frame5.Position = UDim2.new(1, 0, 0.5, 0)
		frame5.Size = UDim2.fromOffset(126, 22)
		frame5.ZIndex = zIndex + 1
		frame5.Parent = frame3
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
		uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout2.Padding = UDim.new(0, 4)
		uiListLayout2.Parent = frame5

		local function fn43(arg3, layoutOrder)
			local textButton = Instance.new("TextButton")
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = Color3.new(1, 1, 1)
			textButton.BackgroundTransparency = 1
			textButton.BorderSizePixel = 0
			textButton.Size = UDim2.fromOffset(22, 22)
			textButton.LayoutOrder = layoutOrder
			textButton.ZIndex = zIndex + 1
			textButton.Parent = frame5
			createUICorner(textButton, 6)
			local imageLabel2 = Instance.new("ImageLabel")
			imageLabel2.BackgroundTransparency = 1
			imageLabel2.Image = fn21(arg3)
			imageLabel2.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel2, "TextDim")
			imageLabel2.Size = UDim2.fromOffset(13, 13)
			imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
			imageLabel2.ZIndex = zIndex + 2
			imageLabel2.Parent = textButton

			janitor:Add(textButton.MouseEnter:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
				fn17(imageLabel2, { ImageColor3 = index.Theme.Text }, 0.12)
			end))

			janitor:Add(textButton.MouseLeave:Connect(function()
				fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
				fn17(imageLabel2, { ImageColor3 = index.Theme.TextDim }, 0.12)
			end))

			return textButton, imageLabel2
		end

		local flag6 = tbl7.AnonymousByDefault ~= false

		if tbl7.PollInterval then
		end

		local copy, v4 = fn43("copy", 1)
		local v5, v6 = fn43(flag6 and "eye-off" or "eye", 2)
		fn43("trash-2", 3)
		fn43("settings", 4)
		fn43("x", 5)
		local frame6 = Instance.new("Frame")
		frame6.BackgroundColor3 = Color3.new(1, 1, 1)
		frame6.BackgroundTransparency = 0.94
		frame6.BorderSizePixel = 0
		frame6.Position = UDim2.fromOffset(0, 38)
		frame6.Size = UDim2.new(1, 0, 0, 1)
		frame6.ZIndex = zIndex
		frame6.Parent = frame2
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.PaddingLeft = UDim.new(0, 14)
		uiPadding2.PaddingRight = UDim.new(0, 14)
		uiPadding2.PaddingBottom = UDim.new(0, 12)
		uiPadding2.Parent = frame2
		local frame7 = Instance.new("Frame")
		frame7.BackgroundTransparency = 1
		frame7.Active = true
		frame7.AnchorPoint = Vector2.new(0, 1)
		frame7.Position = UDim2.new(0, 0, 1, 0)
		frame7.Size = UDim2.new(1, 0, 0, 38)
		frame7.ZIndex = zIndex
		frame7.Parent = frame2
		local frame8 = Instance.new("Frame")
		frame8.BackgroundColor3 = Color3.new(1, 1, 1)
		frame8.BackgroundTransparency = 0.95
		frame8.BorderSizePixel = 0
		frame8.Size = UDim2.new(1, -44, 1, 0)
		frame8.ZIndex = zIndex + 1
		frame8.Parent = frame7
		createUICorner(frame8, 9)
		local v7 = createUIStroke(frame8, Color3.new(1, 1, 1), 1, 0.9)
		local uiPadding3 = Instance.new("UIPadding")
		uiPadding3.PaddingLeft = UDim.new(0, 10)
		uiPadding3.PaddingRight = UDim.new(0, 10)
		uiPadding3.Parent = frame8
		local textBox = Instance.new("TextBox")
		textBox.BackgroundTransparency = 1
		textBox.ClearTextOnFocus = false
		textBox.FontFace = index.Theme.FontRegular
		textBox.PlaceholderText = tbl7.Placeholder or "Message everyone using this script..."
		textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 122)
		textBox.Text = ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.TextSize = 13
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		textBox.TextYAlignment = Enum.TextYAlignment.Center
		textBox.ClipsDescendants = true
		textBox.Size = UDim2.fromScale(1, 1)
		textBox.ZIndex = zIndex + 2
		textBox.Parent = frame8

		janitor:Add(textBox.Focused:Connect(function()
			fn17(v7, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
		end))

		janitor:Add(textBox.FocusLost:Connect(function()
			fn17(v7, { Color = Color3.new(1, 1, 1), Transparency = 0.9 }, 0.18)
		end))

		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 0.9
		textButton.BorderSizePixel = 0
		textButton.AnchorPoint = Vector2.new(1, 0)
		textButton.Position = UDim2.new(1, 0, 0, 0)
		textButton.Size = UDim2.fromOffset(38, 38)
		textButton.ZIndex = zIndex + 1
		textButton.Parent = frame7
		createUICorner(textButton, 9)
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.Image = fn21("send")
		imageLabel2.ImageColor3 = index.Theme.Text
		fn18(imageLabel2, "Text")
		imageLabel2.Size = UDim2.fromOffset(14, 14)
		imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel2.ZIndex = zIndex + 2
		imageLabel2.Parent = textButton

		janitor:Add(textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.8 }, 0.12)
		end))

		janitor:Add(textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
		end))

		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(0, n12 + 9)
		scrollingFrame.Size = UDim2.new(1, 0, 1, -(n12 + 9 + 38 + 10))
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = zIndex
		scrollingFrame.Parent = frame2
		local uiPadding4 = Instance.new("UIPadding")
		uiPadding4.PaddingRight = UDim.new(0, 18)
		uiPadding4.Parent = scrollingFrame
		local uiListLayout3 = Instance.new("UIListLayout")
		uiListLayout3.Padding = UDim.new(0, 8)
		uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout3.Parent = scrollingFrame
		fn19(scrollingFrame)
		createFrame2(scrollingFrame, uiListLayout3, frame, janitor)
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.Name = "ChatEmptyState"
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.Font
		textLabel2.Text = service and "No messages yet. Say hello!" or "Global chat is not configured by the script owner."
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 13
		textLabel2.TextWrapped = true
		textLabel2.TextXAlignment = Enum.TextXAlignment.Center
		textLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		textLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
		textLabel2.Size = UDim2.new(1, -60, 0, 40)
		textLabel2.ZIndex = zIndex + 1
		textLabel2.Parent = frame2

		if not service then
			textBox.PlaceholderText = "Chat unavailable"
			textBox.TextEditable = false
		end

		local flag7 = true

		janitor:Add(scrollingFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
			if flag7 then
				scrollingFrame.CanvasPosition = Vector2.new(0, scrollingFrame.AbsoluteCanvasSize.Y)
			end
		end))

		local connect = scrollingFrame:GetPropertyChangedSignal("CanvasPosition").Connect
		error("devirt: value <luasym.LuaFunc object at 0x000001808D4BE080> in an expression (at 207:630)")
	end

	index4.AddTab = function(arg, arg2)
		local tbl7 = type(arg2) == "table" and arg2 or { Name = arg2 }
		local name = tbl7.Name or tbl7.Title or "Tab"
		local icon = tbl7.Icon and fn21(tbl7.Icon) or nil
		local flag6 = icon ~= nil and icon ~= ""
		local janitor = arg._janitor
		local hidden = tbl7.Hidden == true
		local textButton = Instance.new("TextButton")
		textButton.Name = name
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.Size = UDim2.new(1, 0, 0, 34)
		textButton.ZIndex = tbl.Content
		local flag7 = not hidden

		if flag7 then
			textButton.Parent = arg._tabBar
		end

		createUICorner(textButton, 10)
		local frame = Instance.new("Frame")
		frame.Name = "Row"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.fromScale(1, 1)
		frame.ZIndex = tbl.Content
		frame.Parent = textButton
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 12)
		uiPadding.PaddingRight = UDim.new(0, 12)
		uiPadding.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 10)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame
		local imageLabel = nil

		if flag6 then
			imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "Icon"
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = icon
			imageLabel.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel, "TextDim")
			imageLabel.Size = UDim2.fromOffset(16, 16)
			imageLabel.LayoutOrder = 1
			imageLabel.ZIndex = tbl.Content + 1
			imageLabel.Parent = frame
		end

		local textLabel = Instance.new("TextLabel")
		textLabel.Name = "Label"
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = name
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Size = UDim2.new(1, flag6 and -26 or 0, 1, 0)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = frame
		local canvasGroup = Instance.new("CanvasGroup")
		canvasGroup.Name = name .. "Group"
		canvasGroup.BackgroundTransparency = 1
		canvasGroup.Size = UDim2.fromScale(1, 1)
		canvasGroup.GroupTransparency = 0
		canvasGroup.Visible = false
		canvasGroup.ZIndex = tbl.Content
		canvasGroup.Parent = arg._content
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Name = name .. "Page"
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Size = UDim2.fromScale(1, 1)
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = tbl.Content
		scrollingFrame.Parent = canvasGroup
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.Name = "PagePadding"
		uiPadding2.PaddingRight = UDim.new(0, 12)
		uiPadding2.PaddingBottom = UDim.new(0, 6)
		uiPadding2.Parent = scrollingFrame
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.Name = "PageLayout"
		uiListLayout2.Padding = UDim.new(0, 5)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = scrollingFrame
		fn19(scrollingFrame)
		createFrame2(scrollingFrame, uiListLayout2, canvasGroup, janitor)
		createFrame4(scrollingFrame, canvasGroup, janitor)

		local currentTab = setmetatable({
			Name = name,
			_page = scrollingFrame,
			_group = canvasGroup,
			_button = textButton,
			_icon = imageLabel,
			_label = textLabel,
			_window = arg,
			_janitor = janitor,
		}, index3)

		local currentIndex = #arg._tabs + 1

		local function fn43()
			return (textButton.AbsolutePosition.Y - arg._tabBar.AbsolutePosition.Y) / fn23()
		end

		currentTab._select = function()
			if arg._currentTab == currentTab then
				return
			end
			arg._tabSwitchToken = (arg._tabSwitchToken or 0) + 1
			local tabSwitchToken = arg._tabSwitchToken
			local n12 = 0

			if arg._currentIndex then
				n12 = currentIndex > arg._currentIndex and 1 or -1
			end

			arg._currentIndex = currentIndex
			local currentTab2 = arg._currentTab
			arg._currentTab = currentTab

			for _, tabChangeListener in ipairs(arg._tabChangeListeners) do
				fn2(tabChangeListener, currentTab)
			end

			for _, tab in pairs(arg._tabs) do
				local flag8 = tab == currentTab
				fn17(tab._label, { TextColor3 = flag8 and index.Theme.Text or index.Theme.TextDim }, 0.26)

				if tab._icon then
					fn17(tab._icon, { ImageColor3 = flag8 and index.Theme.Text or index.Theme.TextDim }, 0.26)
				end

				if not flag8 then
					fn17(tab._button, { BackgroundTransparency = 1 }, 0.18)
				end
			end

			if hidden then
				fn17(arg._tabIndicator, { BackgroundTransparency = 1 }, 0.18)
			else
				fn17(arg._tabIndicator, { Position = UDim2.new(0, 0, 0, fn43()), BackgroundTransparency = 0.88 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
			end

			for _, tab in pairs(arg._tabs) do
				if tab ~= currentTab and tab ~= currentTab2 and tab._group.Visible then
					tab._group.Visible = false
				end
			end

			local function fn44()
				if arg._tabSwitchToken ~= tabSwitchToken then
					return
				end
				canvasGroup.Visible = true
				canvasGroup.GroupTransparency = 1
				canvasGroup.Position = UDim2.fromOffset(n12 * 20, 0)
				fn17(canvasGroup, { GroupTransparency = 0, Position = UDim2.fromOffset(0, 0) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
			end

			if currentTab2 and currentTab2._group.Visible then
				local group = currentTab2._group
				fn17(group, { GroupTransparency = 1, Position = UDim2.fromOffset(-n12 * 20, 0) }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

				fn4(0.18, function()
					if group then
						group.Visible = false
					end

					fn4(0.08, fn44)
				end)
			else
				fn44()
			end
		end

		currentTab.Hidden = hidden

		if flag7 then
			local connect = textButton:GetPropertyChangedSignal("AbsolutePosition").Connect
			error("devirt: value <luasym.LuaFunc object at 0x000001808D658DF0> in an expression (at 207:195)")
		end

		table.insert(arg._tabs, currentTab)
		return currentTab
	end

	index4.SelectTab = function(arg, arg2)
		fn26()

		if type(arg2) == "number" then
			local v = arg._tabs[arg2]

			if v then
				v._select()
			end

			return v
		end

		for _, tab in ipairs(arg._tabs) do
			if tab.Name == arg2 then
				tab._select()
				return tab
			end
		end

		return nil
	end

	index4._RegisterSearchable = function(arg, arg2, arg3, arg4)
		if not arg3 or arg3 == "" or not arg4 then
			return
		end
		table.insert(arg._searchIndex, { title = arg3, instance = arg4, tabObj = arg2 })
	end

	local function fn43(arg)
		if not arg then
			return ""
		end

		if arg._parentTabName then
			return arg._parentTabName .. " › " .. arg.Name
		end
		return arg.Name or ""
	end

	index4._JumpToSearchable = function(arg, arg2)
		local tabObj = arg2.tabObj
		local instance = arg2.instance
		if not tabObj or not instance or not instance.Parent then
			return
		end

		if tabObj._parentTab then
			tabObj._parentTab._select()
			tabObj._parentTab:SelectSubTab(tabObj._subTabIdx)
		elseif tabObj._select then
			tabObj._select()
		end

		fn4(0.6, function()
			if not instance.Parent then
				return
			end
			local page = tabObj._page
			if not page then
				return
			end
			local n12 = math.max(0, instance.AbsolutePosition.Y - page.AbsolutePosition.Y + page.CanvasPosition.Y - 40)
			page.CanvasPosition = Vector2.new(page.CanvasPosition.X, n12)
			local backgroundColor3 = instance.BackgroundColor3
			local backgroundTransparency = instance.BackgroundTransparency
			instance.BackgroundColor3 = index.Theme.Accent
			fn17(instance, { BackgroundTransparency = 0.85 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

			fn4(0.5, function()
				if not instance.Parent then
					return
				end
				fn17(instance, { BackgroundTransparency = backgroundTransparency }, 0.7, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)

				fn4(0.7, function()
					if instance.Parent then
						instance.BackgroundColor3 = backgroundColor3
					end
				end)
			end)
		end)
	end

	index4.JumpToElement = function(arg, arg2)
		local str3 = tostring(arg2 or "")
		if str3 == "" then
			return false, "No element name given"
		end
		local str4 = str3:lower()
		local v = nil
		local n12 = 0

		for _, v4 in ipairs(arg._searchIndex) do
			local str5 = tostring(v4.title or ""):lower()

			if str5 == str4 then
				v = v4
				break
			elseif str5:find(str4, 1, true) then
				local n13 = 1000 - math.abs(#str5 - #str4)

				if n12 < n13 then
					v = v4
					n12 = n13
				end
			end
		end

		if not v then
			return false, "No element found matching '" .. str3 .. "'"
		end
		arg:_JumpToSearchable(v)
		return true, v.title
	end

	index4._OpenSearch = function(arg)
		local root = index._Root
		local n12 = math.min(440, fn22().X / fn23() - 40)
		local n13 = 50
		local n14 = 40
		local flag6 = true
		local v = nil
		local canvasGroup = nil
		local v4 = nil
		local connection = nil
		local connection2 = nil
		local tbl7 = {}
		local fn44 = nil

		fn44 = function()
			if not flag6 then
				return
			end
			flag6 = false
			fn25(fn44)

			if v4 then
				v4:Disconnect()
				v4 = nil
			end

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			local v5 = v
			local v6 = canvasGroup
			v = nil
			canvasGroup = nil

			if v6 then
				fn17(v6, { Size = UDim2.new(v6.Size.X.Scale, v6.Size.X.Offset, 0, 0) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
				fn17(v6, { GroupTransparency = 1 }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
			end

			if v5 then
				fn17(v5, { BackgroundTransparency = 1 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
			end

			fn4(0.32, function()
				if v5 then
					v5:Destroy()
				end

				if v6 then
					v6:Destroy()
				end
			end)
		end

		fn24(fn44)
		v = createTextButton(fn44)
		v.BackgroundColor3 = Color3.new(0, 0, 0)
		fn17(v, { BackgroundTransparency = 0.4 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		canvasGroup = Instance.new("CanvasGroup")
		canvasGroup.Name = "SearchPalette"
		canvasGroup.AnchorPoint = Vector2.new(0.5, 0.5)
		local v5, v6 = fn35(arg._gui)
		local v7 = fn23()
		local v8 = math.round(v5 / v7)
		local v9 = math.round(v6 / v7)
		canvasGroup.Position = UDim2.fromOffset(v8, v9 - 18)
		canvasGroup.Size = UDim2.new(0, n12, 0, 50)
		canvasGroup.BackgroundColor3 = index.Theme.Background
		canvasGroup.BackgroundTransparency = 0.05
		canvasGroup.GroupTransparency = 1
		canvasGroup.BorderSizePixel = 0
		canvasGroup.ClipsDescendants = true
		canvasGroup.ZIndex = tbl.Modal
		canvasGroup.Parent = root
		createUICorner(canvasGroup, 14)
		createUIStroke(canvasGroup, Color3.new(1, 1, 1), 1, 0.8)
		createFrame(canvasGroup, 14, 0.985)
		local uiScale2 = Instance.new("UIScale")
		uiScale2.Scale = 0.94
		uiScale2.Parent = canvasGroup
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21("search")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(16, 16)
		imageLabel.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel.Position = UDim2.new(0, 16, 0, n13 / 2)
		imageLabel.ZIndex = tbl.Modal + 2
		imageLabel.Parent = canvasGroup
		local textButton = Instance.new("TextButton")
		textButton.Name = "CloseButton"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.AnchorPoint = Vector2.new(1, 0.5)
		textButton.Size = UDim2.fromOffset(24, 24)
		textButton.Position = UDim2.new(1, -10, 0, n13 / 2)
		textButton.ZIndex = tbl.Modal + 2
		textButton.Parent = canvasGroup
		createUICorner(textButton, 7)
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.Image = fn21("x")
		imageLabel2.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel2, "TextDim")
		imageLabel2.Size = UDim2.fromOffset(12, 12)
		imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel2.ZIndex = tbl.Modal + 3
		imageLabel2.Parent = textButton

		textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
			fn17(imageLabel2, { ImageColor3 = index.Theme.Text }, 0.12)
		end)

		textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
			fn17(imageLabel2, { ImageColor3 = index.Theme.TextDim }, 0.12)
		end)

		textButton.MouseButton1Click:Connect(fn44)
		local textBox = Instance.new("TextBox")
		textBox.Name = "SearchBox"
		textBox.BackgroundTransparency = 1
		textBox.FontFace = index.Theme.FontRegular
		textBox.PlaceholderText = "Search everything..."
		textBox.Text = ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.PlaceholderColor3 = index.Theme.TextDim
		textBox.TextSize = 15
		textBox.ClearTextOnFocus = false
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		textBox.Position = UDim2.new(0, 40, 0, 0)
		textBox.Size = UDim2.new(1, -78, 0, 50)
		textBox.ZIndex = tbl.Modal + 2
		textBox.Parent = canvasGroup
		local frame = Instance.new("Frame")
		frame.Name = "Divider"
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.92
		frame.BorderSizePixel = 0
		frame.Position = UDim2.new(0, 0, 0, 50)
		frame.Size = UDim2.new(1, 0, 0, 1)
		frame.Visible = false
		frame.ZIndex = tbl.Modal + 1
		frame.Parent = canvasGroup
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Name = "Results"
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.new(0, 0, 0, n13 + 1)
		scrollingFrame.Size = UDim2.new(1, 0, 0, 0)
		scrollingFrame.Visible = false
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = tbl.Modal + 1
		scrollingFrame.Parent = canvasGroup
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 6)
		uiPadding.PaddingBottom = UDim.new(0, 6)
		uiPadding.PaddingLeft = UDim.new(0, 6)
		uiPadding.PaddingRight = UDim.new(0, 16)
		uiPadding.Parent = scrollingFrame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 2)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = scrollingFrame
		fn19(scrollingFrame)

		createFrame2(scrollingFrame, uiListLayout, canvasGroup, { Add = function(arg2, arg3)
			v4 = arg3
		end })

		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = "No results"
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 13
		textLabel.Visible = false
		textLabel.Position = UDim2.new(0, 0, 0, n13 + 9)
		textLabel.Size = UDim2.new(1, 0, 0, 26)
		textLabel.ZIndex = tbl.Modal + 1
		textLabel.Parent = canvasGroup

		local function fn45(arg2)
			fn44()
			arg:_JumpToSearchable(arg2)
		end

		local function fn46(arg2)
			for _, child in ipairs(scrollingFrame:GetChildren()) do
				if child:IsA("TextButton") then
					child:Destroy()
				end
			end

			local match = arg2:lower():match("^%s*(.-)%s*$")
			local tbl8 = {}

			for _, v10 in ipairs(arg._searchIndex) do
				if v10.instance and v10.instance.Parent then
					if match == "" or v10.title:lower():find(match, 1, true) then
						table.insert(tbl8, v10)
						if not (#tbl8 >= 15) then
							continue
						end
					else
						continue
					end
				else
					continue
				end

				break
			end

			tbl7 = tbl8
			local visible = #tbl8 == 0 and match ~= ""
			textLabel.Visible = visible
			scrollingFrame.Visible = #tbl8 > 0
			frame.Visible = #tbl8 > 0 or visible

			for i, v10 in ipairs(tbl8) do
				local textButton2 = Instance.new("TextButton")
				textButton2.Text = ""
				textButton2.AutoButtonColor = false
				textButton2.BackgroundColor3 = Color3.new(1, 1, 1)
				textButton2.BackgroundTransparency = 1
				textButton2.BorderSizePixel = 0
				textButton2.Size = UDim2.new(1, 0, 0, 40)
				textButton2.LayoutOrder = i
				textButton2.ZIndex = tbl.Modal + 2
				textButton2.Parent = scrollingFrame
				createUICorner(textButton2, 8)
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.BackgroundTransparency = 1
				textLabel2.FontFace = index.Theme.Font
				textLabel2.Text = v10.title
				textLabel2.TextColor3 = index.Theme.Text
				fn18(textLabel2, "Text")
				textLabel2.TextSize = 13
				textLabel2.TextXAlignment = Enum.TextXAlignment.Left
				textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel2.Position = UDim2.fromOffset(12, 5)
				textLabel2.Size = UDim2.new(1, -24, 0, 16)
				textLabel2.ZIndex = tbl.Modal + 3
				textLabel2.Parent = textButton2
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.FontRegular
				textLabel3.Text = fn43(v10.tabObj)
				textLabel3.TextColor3 = index.Theme.TextDim
				fn18(textLabel3, "TextDim")
				textLabel3.TextSize = 11
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel3.Position = UDim2.fromOffset(12, 21)
				textLabel3.Size = UDim2.new(1, -24, 0, 12)
				textLabel3.ZIndex = tbl.Modal + 3
				textLabel3.Parent = textButton2

				textButton2.MouseEnter:Connect(function()
					fn17(textButton2, { BackgroundTransparency = 0.92 }, 0.12)
				end)

				textButton2.MouseLeave:Connect(function()
					fn17(textButton2, { BackgroundTransparency = 1 }, 0.12)
				end)

				textButton2.MouseButton1Click:Connect(function()
					fn45(v10)
				end)
			end

			local n15 = math.min(#tbl8 * (n14 + 2), 280)
			local n16

			if n15 > 0 then
				n16 = n15 + 1
			else
				n16 = 0

				if visible then
					n16 = 36
				end
			end

			fn17(scrollingFrame, { Size = UDim2.new(1, 0, 0, n15) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
			fn17(canvasGroup, { Size = UDim2.new(0, n12, 0, n13 + n16) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
		end

		local n15 = 0

		connection = textBox:GetPropertyChangedSignal("Text"):Connect(function()
			n15 += 1
			local v10 = n15
			local text = textBox.Text

			fn4(0.12, function()
				if n15 == v10 and textBox.Parent then
					fn46(text)
				end
			end)
		end)

		connection2 = textBox.FocusLost:Connect(function(enterPressed)
			if enterPressed and tbl7[1] then
				fn45(tbl7[1])
			end
		end)

		fn46("")
		uiScale2.Scale = 0.94
		fn17(canvasGroup, { GroupTransparency = 0, Position = UDim2.fromOffset(canvasGroup.Position.X.Offset, v9) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		fn17(uiScale2, { Scale = 1 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

		fn3(function()
			if textBox.Parent then
				textBox:CaptureFocus()
			end
		end)
	end

	index3.AddSubTab = function(arg, arg2)
		local tbl7 = type(arg2) == "table" and arg2 or { Name = arg2 }
		local name = tbl7.Name or "SubTab"
		local icon = tbl7.Icon and fn21(tbl7.Icon) or nil
		local janitor = arg._janitor
		arg._subTabCount = (arg._subTabCount or 0) + 1
		local subTabCount = arg._subTabCount

		if not arg._subTabHolder then
			local page = arg._page
			page.ScrollingEnabled = false
			page.AutomaticCanvasSize = Enum.AutomaticSize.None
			page.CanvasSize = UDim2.new(0, 0, 0, 0)
			local uiListLayout = page:FindFirstChildOfClass("UIListLayout")

			if uiListLayout then
				uiListLayout:Destroy()
			end

			local uiPadding = page:FindFirstChildOfClass("UIPadding")

			if uiPadding then
				uiPadding:Destroy()
			end

			local scrollTrack = page:FindFirstChild("ScrollTrack")

			if scrollTrack then
				scrollTrack:Destroy()
			end

			arg._subTabHolder = Instance.new("ScrollingFrame")
			arg._subTabHolder.Name = "SubTabBar"
			arg._subTabHolder.Size = UDim2.new(1, -12, 0, 40)
			arg._subTabHolder.Position = UDim2.fromOffset(2, 6)
			arg._subTabHolder.BackgroundTransparency = 1
			arg._subTabHolder.BorderSizePixel = 0
			arg._subTabHolder.ScrollingDirection = Enum.ScrollingDirection.X
			arg._subTabHolder.ScrollBarThickness = 0
			arg._subTabHolder.AutomaticCanvasSize = Enum.AutomaticSize.X
			arg._subTabHolder.CanvasSize = UDim2.new(0, 0, 0, 40)
			arg._subTabHolder.ZIndex = tbl.Content
			arg._subTabHolder.Parent = page
			fn19(arg._subTabHolder)
			arg._subTabIndicatorLayer = Instance.new("Frame")
			arg._subTabIndicatorLayer.Name = "SubTabIndicatorLayer"
			arg._subTabIndicatorLayer.BackgroundTransparency = 1
			arg._subTabIndicatorLayer.ClipsDescendants = true
			arg._subTabIndicatorLayer.ZIndex = tbl.Window
			arg._subTabIndicatorLayer.Position = arg._subTabHolder.Position
			arg._subTabIndicatorLayer.Size = arg._subTabHolder.Size
			arg._subTabIndicatorLayer.Parent = page
			arg._subTabIndicator = Instance.new("Frame")
			arg._subTabIndicator.Name = "Indicator"
			arg._subTabIndicator.BackgroundColor3 = Color3.new(1, 1, 1)
			arg._subTabIndicator.BackgroundTransparency = 1
			arg._subTabIndicator.BorderSizePixel = 0
			arg._subTabIndicator.ZIndex = tbl.Window
			arg._subTabIndicator.Size = UDim2.fromOffset(0, 32)
			arg._subTabIndicator.Position = UDim2.fromOffset(0, 4)
			arg._subTabIndicator.Parent = arg._subTabIndicatorLayer
			createUICorner(arg._subTabIndicator, 8)
			local uiListLayout2 = Instance.new("UIListLayout")
			uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
			uiListLayout2.Padding = UDim.new(0, 6)
			uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout2.Parent = arg._subTabHolder
			arg._subTabBody = Instance.new("Frame")
			arg._subTabBody.Name = "SubTabBody"
			arg._subTabBody.Size = UDim2.new(1, -4, 1, -62)
			arg._subTabBody.Position = UDim2.fromOffset(2, 56)
			arg._subTabBody.BackgroundTransparency = 1
			arg._subTabBody.BorderSizePixel = 0
			arg._subTabBody.ClipsDescendants = true
			arg._subTabBody.ZIndex = tbl.Content
			arg._subTabBody.Parent = page
			arg._subTabScrollTrack = Instance.new("Frame")
			arg._subTabScrollTrack.Name = "SubTabScrollTrack"
			arg._subTabScrollTrack.BackgroundColor3 = index.Theme.TextDim
			arg._subTabScrollTrack.BackgroundTransparency = 1
			arg._subTabScrollTrack.BorderSizePixel = 0
			arg._subTabScrollTrack.Position = UDim2.new(0, 2, 0, 48)
			arg._subTabScrollTrack.Size = UDim2.new(1, -12, 0, 3)
			arg._subTabScrollTrack.Visible = false
			arg._subTabScrollTrack.ZIndex = tbl.Content
			arg._subTabScrollTrack.Parent = page
			createUICorner(arg._subTabScrollTrack, 2)
			arg._subTabScrollThumb = Instance.new("Frame")
			arg._subTabScrollThumb.Name = "Thumb"
			arg._subTabScrollThumb.BackgroundColor3 = index.Theme.TextDim
			arg._subTabScrollThumb.BackgroundTransparency = 1
			arg._subTabScrollThumb.BorderSizePixel = 0
			arg._subTabScrollThumb.Size = UDim2.new(0, 40, 1, 0)
			arg._subTabScrollThumb.ZIndex = tbl.Content + 1
			arg._subTabScrollThumb.Parent = arg._subTabScrollTrack
			createUICorner(arg._subTabScrollThumb, 2)
			arg._updateSubTabScrollbar = function()local v,P= arg ._subTabHolder, arg ._subTabScrollTrack;if not v or not P then return;end;if not  arg ._group or not  arg ._group.Visible then P.Visible=false;return;end;local U,i=v.AbsoluteWindowSize.X,v.AbsoluteCanvasSize.X;local K=i-U;if K<=1 or U<=0 then P.Visible=false;return;end;P.Visible=false;local u=P.AbsoluteSize.X;if u<=0 then return;end;P=math.min(u,math.max(30,u*(U/i)));U,i=u-P,math.clamp(v.CanvasPosition.X/K,0,1); arg ._subTabScrollThumb.Size=UDim2.new(P/u,0,1,0); arg ._subTabScrollThumb.Position=UDim2.new(U/u*i,0,0,0);end
			local subTabHolder = arg._subTabHolder
			local flag6 = false

			local function fn44()
				if flag6 then
					return
				end
				flag6 = true

				fn3(function()
					flag6 = false

					if arg._updateSubTabScrollbar then
						arg._updateSubTabScrollbar()
					end
				end)
			end

			janitor:Add(subTabHolder:GetPropertyChangedSignal("CanvasPosition"):Connect(fn44))
			janitor:Add(subTabHolder:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(fn44))
			janitor:Add(subTabHolder:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(fn44))
			janitor:Add(arg._subTabScrollTrack:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn44))

			if arg._group then
				janitor:Add(arg._group:GetPropertyChangedSignal("Visible"):Connect(fn44))
			end

			fn44()
			arg._subTabs = {}

			arg._syncSubIndicator = function(arg3)
				local subTabs = arg._subTabs and arg._subTabs[arg.SelectedSubTab]
				if not subTabs or not subTabs.Button.Parent then
					return
				end
				local subTabHolder2 = arg._subTabHolder
				local v = fn23()
				local n12 = (subTabs.Button.AbsolutePosition.X - subTabHolder2.AbsolutePosition.X) / v
				local n13 = subTabs.Button.AbsoluteSize.X / v
				if n13 <= 0 then
					return
				end

				local tbl8 = {
					Position = UDim2.fromOffset(math.round(n12), 4),
					Size = UDim2.fromOffset(math.round(n13), 32),
					BackgroundTransparency = 0.86,
				}

				if arg3 then
					fn17(arg._subTabIndicator, tbl8, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				else
					arg._subTabIndicator.Position = tbl8.Position
					arg._subTabIndicator.Size = tbl8.Size
					arg._subTabIndicator.BackgroundTransparency = tbl8.BackgroundTransparency
				end
			end

			janitor:Add(arg._subTabHolder:GetPropertyChangedSignal("CanvasPosition"):Connect(function() arg ._syncSubIndicator(false); arg ._updateSubTabScrollbar();end))
		end

		local textButton = Instance.new("TextButton")
		textButton.Name = "SubTab_" .. name:gsub("%s", "")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.AutomaticSize = Enum.AutomaticSize.X
		textButton.Size = UDim2.fromOffset(0, 32)
		textButton.LayoutOrder = subTabCount
		textButton.ZIndex = tbl.Content
		textButton.Parent = arg._subTabHolder
		createUICorner(textButton, 8)
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Padding = UDim.new(0, 6)
		uiListLayout.Parent = textButton
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 12)
		uiPadding.PaddingRight = UDim.new(0, 12)
		uiPadding.Parent = textButton
		local flag6 = icon and icon ~= ""
		local imageLabel = nil

		if flag6 then
			imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = icon
			imageLabel.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel, "TextDim")
			imageLabel.Size = UDim2.fromOffset(16, 16)
			imageLabel.LayoutOrder = 1
			imageLabel.ZIndex = tbl.Content + 1
			imageLabel.Parent = textButton
		end

		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = name
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 13
		textLabel.TextXAlignment = Enum.TextXAlignment.Center
		textLabel.TextYAlignment = Enum.TextYAlignment.Center
		textLabel.Size = UDim2.new(0, 0, 0, 32)
		textLabel.AutomaticSize = Enum.AutomaticSize.X
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = textButton
		local frame = Instance.new("Frame")
		frame.Name = name .. "Group"
		frame.Size = UDim2.fromScale(1, 1)
		frame.BackgroundTransparency = 1
		frame.Visible = false
		frame.ZIndex = tbl.Content
		frame.Parent = arg._subTabBody
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Name = name .. "Page"
		scrollingFrame.Size = UDim2.fromScale(1, 1)
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollBarThickness = 0
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = tbl.Content
		scrollingFrame.Parent = frame
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.Name = "PagePadding"
		uiPadding2.PaddingRight = UDim.new(0, 12)
		uiPadding2.PaddingBottom = UDim.new(0, 6)
		uiPadding2.Parent = scrollingFrame
		local uiListLayout2 = Instance.new("UIListLayout")
		uiListLayout2.Name = "PageLayout"
		uiListLayout2.Padding = UDim.new(0, 8)
		uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout2.Parent = scrollingFrame
		fn19(scrollingFrame)
		createFrame2(scrollingFrame, uiListLayout2, frame, janitor)
		createFrame4(scrollingFrame, frame, janitor)

		local obj3 = setmetatable({
			Name = name,
			_page = scrollingFrame,
			_window = arg._window,
			_janitor = janitor,
			_parentTab = arg,
			_parentTabName = arg.Name,
			_subTabIdx = subTabCount,
			Button = textButton,
			Label = textLabel,
			Icon = imageLabel,
			Container = scrollingFrame,
			Group = frame,
			Selected = false,
		}, index3)

		arg._subTabs[subTabCount] = obj3
		janitor:Add(textButton:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()if  arg .SelectedSubTab== subTabCount then  arg ._syncSubIndicator(false);end;end))
		janitor:Add(textButton:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()if  arg .SelectedSubTab== subTabCount then  arg ._syncSubIndicator(false);end;end))

		janitor:Add(textButton.MouseEnter:Connect(function()
			if subTabCount ~= arg.SelectedSubTab then
				fn17(textButton, { BackgroundTransparency = 0.94 }, 0.18)
			end
		end))

		janitor:Add(textButton.MouseLeave:Connect(function()
			if subTabCount ~= arg.SelectedSubTab then
				fn17(textButton, { BackgroundTransparency = 1 }, 0.18)
			end
		end))

		local position = nil

		janitor:Add(textButton.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				position = input.Position
			end
		end))

		janitor:Add(textButton.InputEnded:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and position then
				if (input.Position - position).Magnitude < n9 then
					arg:SelectSubTab(subTabCount)
				end

				position = nil
			end
		end))

		if not arg.SelectedSubTab then
			arg:SelectSubTab(subTabCount)
		end

		return obj3
	end
end

index3.SelectSubTab = function(arg, selectedSubTab)
	if not arg._subTabs then
		return
	end
	local selectedSubTab2 = arg.SelectedSubTab
	if selectedSubTab2 == selectedSubTab then
		return
	end
	arg._subTabSwitchToken = (arg._subTabSwitchToken or 0) + 1
	local subTabSwitchToken = arg._subTabSwitchToken
	local n = 0

	if selectedSubTab2 then
		n = selectedSubTab > selectedSubTab2 and 1 or -1
	end

	arg.SelectedSubTab = selectedSubTab
	local v = arg._subTabs[selectedSubTab]
	local v3 = selectedSubTab2 and arg._subTabs[selectedSubTab2]
	if not v then
		return
	end
	arg._syncSubIndicator(selectedSubTab2 ~= nil)

	for k, subTab in pairs(arg._subTabs) do
		local selected = k == selectedSubTab
		subTab.Selected = selected

		if not selected then
			fn17(subTab.Button, { BackgroundTransparency = 1 }, 0.18)
		end

		fn17(subTab.Label, { TextColor3 = selected and index.Theme.Text or index.Theme.TextDim }, 0.26)

		if subTab.Icon then
			fn17(subTab.Icon, { ImageColor3 = selected and index.Theme.Text or index.Theme.TextDim }, 0.26)
		end
	end

	for _, subTab in pairs(arg._subTabs) do
		if subTab ~= v and subTab ~= v3 and subTab.Group.Visible then
			subTab.Group.Visible = false
		end
	end

	local function fn29()
		if arg._subTabSwitchToken ~= subTabSwitchToken then
			return
		end
		v.Group.Visible = true
		v.Group.Position = UDim2.fromOffset(n * 20, 0)
		fn17(v.Group, { Position = UDim2.fromOffset(0, 0) }, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	end

	if v3 and v3.Group.Visible then
		local group = v3.Group
		fn17(group, { Position = UDim2.fromOffset(-n * 20, 0) }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

		fn4(0.18, function()
			if group then
				group.Visible = false
			end

			fn4(0.08, fn29)
		end)
	else
		fn29()
	end
end

index3.SelectSubTabByName = function(arg, arg2)
	if not arg._subTabs then
		return nil
	end

	for k, subTab in pairs(arg._subTabs) do
		if subTab.Name == arg2 then
			arg:SelectSubTab(k)
			return subTab
		end
	end

	return nil
end

do
	local function fn29(arg, arg2)
		local instance = arg.Instance
		if not instance or not instance:IsA("GuiObject") then
			return arg
		end
		local lockState = { locked = false, reason = nil, overlay = nil, badge = nil, lock = nil, conn = nil }
		arg._lockState = lockState

		local function fn30()
			if lockState.overlay then
				return
			end
			local textButton = Instance.new("TextButton")
			textButton.Name = "LockOverlay"
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = index.Theme.Background
			textButton.BackgroundTransparency = 0.45
			textButton.BorderSizePixel = 0
			textButton.Size = UDim2.fromScale(1, 1)
			textButton.ZIndex = (instance.ZIndex or 0) + 20
			textButton.Parent = instance
			createUICorner(textButton, index.Theme.CornerRadiusSm)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "LockBadge"
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21("lock")
			imageLabel.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel, "TextDim")
			imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			imageLabel.Size = UDim2.fromOffset(17, 17)
			imageLabel.ZIndex = textButton.ZIndex + 1
			imageLabel.Parent = textButton

			textButton.MouseButton1Click:Connect(function()
				index:Notify({
					Title = arg.Label or "Locked",
					Text = lockState.reason or "This feature is locked.",
					Type = "warning",
					Icon = "lock",
					Duration = 3,
				})

				local offset = instance.Position.X.Offset

				for i, v in ipairs({ 4, -3, 2, 0 }) do
					fn4(i * 0.05, function()
						if textButton.Parent then
							fn17(instance, {
								Position = UDim2.new(instance.Position.X.Scale, offset + v, instance.Position.Y.Scale, instance.Position.Y.Offset),
							}, 0.08)
						end
					end)
				end
			end)

			textButton.MouseEnter:Connect(function()
				fn17(imageLabel, { ImageColor3 = index.Theme.Text }, 0.12)
			end)

			textButton.MouseLeave:Connect(function()
				fn17(imageLabel, { ImageColor3 = index.Theme.TextDim }, 0.12)
			end)

			lockState.overlay = textButton
			lockState.badge = imageLabel
		end

		arg.SetLocked = function(arg3, locked, reason)
			locked = locked and true or false
			lockState.reason = reason or lockState.reason

			if lockState.locked == locked then
				if lockState.overlay and locked then
					lockState.overlay.Visible = true
				end

				return arg3
			end

			lockState.locked = locked

			if locked then
				fn30()
				lockState.overlay.Visible = true
				lockState.overlay.BackgroundTransparency = 1
				fn17(lockState.overlay, { BackgroundTransparency = 0.45 }, 0.18)
			elseif lockState.overlay then
				local overlay = lockState.overlay
				fn17(overlay, { BackgroundTransparency = 1 }, 0.18)

				fn4(0.18, function()
					if overlay.Parent and not lockState.locked then
						overlay.Visible = false
					end
				end)
			end

			return arg3
		end

		arg.Lock = function(arg3, arg4)
			return arg3:SetLocked(true, arg4)
		end

		arg.Unlock = function(arg3)
			return arg3:SetLocked(false)
		end

		arg.IsLocked = function()
			return lockState.locked
		end

		arg.BindLock = function(arg3, lock)
			if type(lock) ~= "table" or type(lock.Subscribe) ~= "function" then
				return arg3
			end

			if lockState.conn then
				pcall(function()
					lockState.conn:Disconnect()
				end)
			end

			lockState.lock = lock

			lockState.conn = lock:Subscribe(function(arg4, arg5)
				arg:SetLocked(not arg4, arg5)
			end)

			local getReason = lock.GetReason
			arg:SetLocked(not lock:IsUnlocked(), getReason(lock))
			return arg3
		end

		if arg2 then
			if arg2.Lock then
				arg:BindLock(arg2.Lock)
			elseif arg2.Locked then
				arg:Lock(arg2.LockReason)
			end
		end

		return arg
	end

	local function fn30(arg, arg2, kind)
		if arg.Flag then
			index.Flags[arg.Flag] = arg2
			arg2.Flag = arg.Flag
			arg2.Kind = kind
			arg2.Label = arg.Text or arg.Label or arg.Flag
		end

		fn29(arg2, arg)
		return arg2
	end

	index3.AddLabel = function(arg, text)
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = text
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 13
		textLabel.TextWrapped = true
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.AutomaticSize = Enum.AutomaticSize.Y
		textLabel.Size = UDim2.new(1, 0, 0, 16)
		textLabel.ZIndex = tbl.Content
		textLabel.Parent = arg._page

		return {
			Instance = textLabel,
			Set = function(arg2, text2)
				textLabel.Text = text2
			end,
			Get = function()
				return textLabel.Text
			end,
			Destroy = function()
				textLabel:Destroy()
			end,
		}
	end

	index3.AddSection = function(arg, arg2, arg3)
		local tbl3 = type(arg2) == "table" and arg2 or { Text = arg2, Icon = arg3 }
		local text = tostring(tbl3.Text or "Section")
		local icon = tbl3.Icon and fn21(tbl3.Icon) or ""
		local frame = Instance.new("Frame")
		frame.Name = "Section"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, 34)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._page
		local frame2 = Instance.new("Frame")
		frame2.Name = "Row"
		frame2.BackgroundTransparency = 1
		frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		frame2.Position = UDim2.fromScale(0.5, 0.5)
		frame2.AutomaticSize = Enum.AutomaticSize.X
		frame2.Size = UDim2.fromOffset(0, 22)
		frame2.ZIndex = tbl.Content
		frame2.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Padding = UDim.new(0, 8)
		uiListLayout.Parent = frame2

		local function createFrame4(name, layoutOrder, arg4)
			local frame3 = Instance.new("Frame")
			frame3.Name = name
			frame3.LayoutOrder = layoutOrder
			frame3.BackgroundColor3 = index.Theme.Accent
			frame3.BackgroundTransparency = 0
			frame3.BorderSizePixel = 0
			frame3.Size = UDim2.fromOffset(28, 2)
			frame3.ZIndex = tbl.Content
			frame3.Parent = frame2
			fn18(frame3, "Accent")
			createUICorner(frame3, 1)
			local uiGradient = Instance.new("UIGradient")
			local numberSequence = NumberSequence.new

			if arg4 then
				local new = NumberSequenceKeypoint.new
				arg4 = { NumberSequenceKeypoint.new(0, 0.85), new(1, 0.15) }
			end

			local tbl4

			if arg4 then
				tbl4 = arg4
			else
				local new = NumberSequenceKeypoint.new
				tbl4 = { NumberSequenceKeypoint.new(0, 0.15), new(1, 0.85) }
			end

			uiGradient.Transparency = numberSequence(tbl4)
			uiGradient.Parent = frame3
			return frame3
		end

		createFrame4("LineLeft", 1, true)

		if icon ~= "" then
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "Icon"
			imageLabel.LayoutOrder = 2
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = icon
			imageLabel.ImageColor3 = index.Theme.Accent
			fn18(imageLabel, "Accent")
			imageLabel.Size = UDim2.fromOffset(16, 16)
			imageLabel.ZIndex = tbl.Content + 1
			imageLabel.Parent = frame2
		end

		local textLabel = Instance.new("TextLabel")
		textLabel.Name = "Label"
		textLabel.LayoutOrder = 3
		textLabel.BackgroundTransparency = 1
		local ok, result = pcall(Font.fromName, "Nunito", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		textLabel.FontFace = ok and result or index.Theme.Font
		textLabel.Text = text
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 15
		textLabel.AutomaticSize = Enum.AutomaticSize.X
		textLabel.Size = UDim2.fromOffset(0, 20)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = frame2
		createFrame4("LineRight", 4, false)

		return {
			Instance = frame,
			Set = function(arg4, arg5)
				textLabel.Text = tostring(arg5)
			end,
			Destroy = function()
				frame:Destroy()
			end,
		}
	end

	index3.AddDivider = function(arg)
		local frame = Instance.new("Frame")
		frame.Name = "Divider"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, 13)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._page
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0, 0.5)
		frame2.Position = UDim2.new(0, 0, 0.5, 0)
		frame2.Size = UDim2.new(1, 0, 0, 1)
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.92
		frame2.BorderSizePixel = 0
		frame2.ZIndex = tbl.Content
		frame2.Parent = frame

		return {
			Instance = frame,
			Destroy = function()
				frame:Destroy()
			end,
		}
	end

	index3.AddLine = index3.AddDivider

	index3.AddLineText = function(arg, arg2)
		local text = tostring(arg2 or "")
		local frame = Instance.new("Frame")
		frame.Name = "LineText"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, 20)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._page
		local frame2 = Instance.new("Frame")
		frame2.Name = "Left"
		frame2.AnchorPoint = Vector2.new(0, 0.5)
		frame2.Position = UDim2.fromScale(0, 0.5)
		frame2.Size = UDim2.new(0.5, -10, 0, 1)
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.92
		frame2.BorderSizePixel = 0
		frame2.ZIndex = tbl.Content
		frame2.Parent = frame
		local frame3 = Instance.new("Frame")
		frame3.Name = "Right"
		frame3.AnchorPoint = Vector2.new(1, 0.5)
		frame3.Position = UDim2.fromScale(1, 0.5)
		frame3.Size = UDim2.new(0.5, -10, 0, 1)
		frame3.BackgroundColor3 = Color3.new(1, 1, 1)
		frame3.BackgroundTransparency = 0.92
		frame3.BorderSizePixel = 0
		frame3.ZIndex = tbl.Content
		frame3.Parent = frame
		local textLabel = Instance.new("TextLabel")
		textLabel.Name = "Label"
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = text
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 12
		textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		textLabel.Position = UDim2.fromScale(0.5, 0.5)
		textLabel.AutomaticSize = Enum.AutomaticSize.XY
		textLabel.Size = UDim2.fromOffset(0, 16)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = frame
		local n = 10
		local n2 = -1

		local function fn31()
			local n3 = frame.AbsoluteSize.X / fn23()
			if n3 <= 0 or math.abs(n3 - n2) < 1 then
				return
			end
			n2 = n3
			local n4 = math.max((n3 - fn20(text, 12, n3)) / 2 - n, 6)
			frame2.Size = UDim2.new(0, n4, 0, 1)
			frame3.Size = UDim2.new(0, n4, 0, 1)
		end

		frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn31)
		fn3(fn31)

		return {
			Instance = frame,
			Set = function(arg3, arg4)
				text = tostring(arg4 or "")
				textLabel.Text = text
				n2 = -1
				fn31()
			end,
			Destroy = function()
				frame:Destroy()
			end,
		}
	end

	index3.AddParagraph = function(arg, arg2)
		local tbl3 = arg2 or {}
		local v = createFrame3(arg._page, 10)
		v.AutomaticSize = Enum.AutomaticSize.Y
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 12)
		uiPadding.PaddingBottom = UDim.new(0, 12)
		uiPadding.PaddingLeft = UDim.new(0, 14)
		uiPadding.PaddingRight = UDim.new(0, 14)
		uiPadding.Parent = v
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 4)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = v
		local textLabel = nil

		if tbl3.Title then
			local frame = Instance.new("Frame")
			frame.BackgroundTransparency = 1
			frame.Size = UDim2.new(1, 0, 0, 18)
			frame.AutomaticSize = Enum.AutomaticSize.Y
			frame.LayoutOrder = 1
			frame.ZIndex = tbl.Content + 1
			frame.Parent = v
			local uiListLayout2 = Instance.new("UIListLayout")
			uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
			uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout2.Padding = UDim.new(0, 7)
			uiListLayout2.Parent = frame
			local icon = tbl3.Icon and fn21(tbl3.Icon) or ""

			if icon ~= "" then
				local imageLabel = Instance.new("ImageLabel")
				imageLabel.BackgroundTransparency = 1
				imageLabel.Image = icon
				imageLabel.ImageColor3 = index.Theme.Text
				fn18(imageLabel, "Text")
				imageLabel.Size = UDim2.fromOffset(15, 15)
				imageLabel.LayoutOrder = 1
				imageLabel.ZIndex = tbl.Content + 2
				imageLabel.Parent = frame
			end

			textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = index.Theme.Font
			textLabel.Text = tbl3.Title
			textLabel.TextColor3 = index.Theme.Text
			fn18(textLabel, "Text")
			textLabel.TextSize = 14
			textLabel.TextXAlignment = Enum.TextXAlignment.Left
			textLabel.TextYAlignment = Enum.TextYAlignment.Center
			textLabel.AutomaticSize = Enum.AutomaticSize.X
			textLabel.Size = UDim2.fromOffset(0, 18)
			textLabel.LayoutOrder = 2
			textLabel.ZIndex = tbl.Content + 2
			textLabel.Parent = frame
			local uiPadding2 = Instance.new("UIPadding")
			uiPadding2.PaddingTop = UDim.new(0, 2)
			uiPadding2.Parent = textLabel
		end

		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.FontRegular
		textLabel2.Text = tbl3.Text or ""
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 13
		textLabel2.TextWrapped = true
		textLabel2.TextXAlignment = Enum.TextXAlignment.Left
		textLabel2.AutomaticSize = Enum.AutomaticSize.Y
		textLabel2.Size = UDim2.new(1, 0, 0, 16)
		textLabel2.LayoutOrder = 2
		textLabel2.ZIndex = tbl.Content + 1
		textLabel2.Parent = v

		return {
			Instance = v,
			Set = function(arg3, text)
				textLabel2.Text = text
			end,
			Get = function()
				return textLabel2.Text
			end,
			SetTitle = function(arg3, text)
				if textLabel then
					textLabel.Text = text
				end
			end,
			Destroy = function()
				v:Destroy()
			end,
		}
	end

	local function fn31(parent, layoutOrder, arg, arg2, arg3, arg4)
		local star = fn21("Phosphor:star")
		local star2 = fn21("Material:star")
		local frame = Instance.new("Frame")
		frame.Name = "Stars"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, arg3)
		frame.LayoutOrder = layoutOrder
		frame.ZIndex = tbl.Content + 1
		frame.Parent = parent
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 8)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame
		local tbl3 = {}
		local n = math.clamp(arg4 or 0, 0, arg)

		local function fn32(arg5)
			local v = arg5 or n

			for i, v3 in ipairs(tbl3) do
				local flag5 = i <= v
				v3.Image = flag5 and star2 or star
				fn17(v3, { ImageColor3 = flag5 and arg2 or index.Theme.TextDim }, 0.12)
			end
		end

		for i = 1, arg do
			local imageButton = Instance.new("ImageButton")
			imageButton.Name = "Star" .. i
			imageButton.BackgroundTransparency = 1
			imageButton.AutoButtonColor = false
			imageButton.Image = star
			imageButton.ImageColor3 = index.Theme.TextDim
			fn18(imageButton, "TextDim")
			imageButton.Size = UDim2.fromOffset(arg3, arg3)
			imageButton.LayoutOrder = i
			imageButton.ZIndex = tbl.Content + 2
			imageButton.Parent = frame

			imageButton.MouseEnter:Connect(function()
				fn32(i)
			end)

			imageButton.MouseLeave:Connect(function()
				fn32()
			end)

			imageButton.MouseButton1Click:Connect(function()
				n = i
				fn32()
			end)

			tbl3[i] = imageButton
		end

		fn32()

		return {
			Row = frame,
			Get = function()
				return n
			end,
			Set = function(arg5)
				n = math.clamp(arg5 or 0, 0, arg)
				fn32()
			end,
			Nudge = function()
				for _, v in ipairs(tbl3) do
					fn17(v, { Rotation = 8 }, 0.08)
				end

				fn4(0.06, function()
					for _, v in ipairs(tbl3) do
						fn17(v, { Rotation = 0 }, 0.12)
					end
				end)
			end,
		}
	end

	local function fn32(arg)
		for k, v in pairs({ ["\u{200B}"] = "", ["\u{200E}"] = "", ["\u{200F}"] = "", ["\u{FEFF}"] = "", ["\u{AD}"] = "" }) do
			arg = arg:gsub(k, v)
		end

		return (arg:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", ""))
	end

	local tbl3 = {
		{ pattern = "d%s*i%s*s%s*c%s*o%s*r%s*d", name = "discord" },
		{ pattern = "t%s*e%s*l%s*e%s*g%s*r%s*a%s*m", name = "telegram" },
		{ pattern = "w%s*h%s*a%s*t%s*s%s*a%s*p%s*p", name = "whatsapp" },
		{ pattern = "h%s*t%s*t%s*p", name = "http" },
		{ pattern = "h%s*t%s*t%s*p%s*s", name = "https" },
		{ pattern = "w%s*w%s*w", name = "www" },
		{ pattern = "c%s*o%s*m", name = "com" },
		{ pattern = "o%s*r%s*g", name = "org" },
		{ pattern = "n%s*e%s*t", name = "net" },
		{ pattern = ".%s*g%s*g", name = ".gg" },
		{ pattern = ".%s*c%s*o%s*m", name = ".com" },
		{ pattern = "/%s*i%s*n%s*v%s*i%s*t%s*e", name = "/invite" },
		{ pattern = "d%s*o%s*t%s*%s*c%s*o%s*m", name = "dot com" },
		{ pattern = "a%s*t%s*%s*%s*h%s*e%s*r%s*e", name = "@here" },
		{ pattern = "a%s*t%s*%s*%s*e%s*v%s*e%s*r%s*y%s*o%s*n%s*e", name = "@everyone" },
	}

	local function fn33(arg)
		for _, v in ipairs(tbl3) do
			if arg:match(v.pattern) then
				return true, v.name
			end
		end

		local n = 0
		local n2 = 0

		for i = 1, #arg do
			local str2 = arg:sub(i, i)

			if str2 == "." then
				n += 1
			end

			if str2 == "/" then
				n2 += 1
			end
		end

		if n >= 3 or n2 >= 3 then
			return true, "suspicious link/invite"
		end
		return false, nil
	end

	local tbl4 = {
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡"] = "a",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{A0}"] = "a",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£"] = "a",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢"] = "a",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¤"] = "a",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{81}"] = "A",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬"] = "A",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¾ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢"] = "A",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡"] = "A",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¾"] = "A",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©"] = "e",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¨"] = "e",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âª"] = "e",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â«"] = "e",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â°"] = "E",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¹ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{A0}"] = "E",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{A0}"] = "E",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¹"] = "E",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{AD}"] = "i",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬"] = "i",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â®"] = "i",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¯"] = "i",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{8D}"] = "I",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¾ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢"] = "I",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â½"] = "I",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{8F}"] = "I",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³"] = "o",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â²"] = "o",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âµ"] = "o",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â´"] = "o",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¶"] = "o",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œ"] = "O",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¾ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢"] = "O",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢"] = "O",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â\u{9D}"] = "O",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã¢â‚¬Å“"] = "O",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âº"] = "u",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¹"] = "u",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â»"] = "u",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¼"] = "u",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡"] = "U",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¾ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢"] = "U",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âº"] = "U",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã¢â‚¬Å“"] = "U",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§"] = "c",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡"] = "C",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â±"] = "n",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â\u{A0}ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¹ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã¢â‚¬Å“"] = "N",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â°"] = " ",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âº"] = " ",
		["ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â\u{A0}ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â\u{A0}ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€\u{A0}Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âª"] = " ",
	}

	local function fn34(arg)
		if not arg or arg == "" then
			return "_No message_"
		end
		local v = fn32(arg)
		local v3, v4 = fn33(v)
		if v3 then
			return "[Message blocked - " .. v4 .. "]"
		end
		local str2 = v:gsub("@everyone", "@\u{200B}everyone"):gsub("@here", "@\u{200B}here"):gsub("<@!?(%d+)>", "[user]"):gsub("<@&(%d+)>", "[role]"):gsub("d[iI][sS][cC][oO][rR][dD]%.?[gG][gG]%s*/?%s*[%w%-_]+", "[invite removed]"):gsub("d[iI][sS][cC][oO][rR][dD]%.?[cC][oO][mM]%s*/?%s*[iI][nN][vV][iI][tT][eE]%s*/?%s*[%w%-_]+", "[invite removed]"):gsub("https?%s*:%s*//%s*[%w%-%.]+%s*%.%s*[%w]+[%w%-%./?=&%%]*", "[link removed]"):gsub("www%s*%.%s*[%w%-]+%s*%.%s*[%w]+", "[link removed]"):gsub("t[eE][lL][eE][gG][rR][aA][mM]%.?%s*[mM][eE]%s*/%s*[%w%-_]+", "[invite removed]")

		for k, v5 in pairs(tbl4) do
			str2 = str2:gsub(k, v5)
		end

		local str3 = ""

		for i = 1, #str2 do
			local str4 = str2:sub(i, i)

			if ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 .,!?;:()[]{}@#%&*+-=/_\"'"):find(str4, 1, true) then
				str3 ..= str4
			else
				str3 ..= " "
			end
		end

		local str4 = str3:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
		if fn33(str4) then
			return "[Message blocked - suspicious content]"
		end

		if #str4 > 500 then
			str4 = str4:sub(1, 500) .. "..."
		end

		return str4
	end

	index.SanitizeText = function(arg, arg2, arg3)
		local maxLength = (arg3 or {}).MaxLength or 500
		if not arg2 or arg2 == "" then
			return "", false, nil
		end
		local v = fn32(tostring(arg2))
		local v3, v4 = fn33(v)
		if v3 then
			return "", true, v4
		end
		local str2 = fn34(arg2)
		if str2 == "_No message_" then
			return "", false, nil
		end

		if str2:find("^%[Message blocked") then
			return "", true, "blocked content"
		end

		if #str2 > maxLength then
			str2 = str2:sub(1, maxLength)
		end

		return str2, false, nil
	end

	local n = 30
	local n2 = 0

	index.SendFeedbackWebhook = function(arg, arg2, arg3, arg4, arg5)
		local tbl5 = arg5 or {}
		local n3 = math.clamp(math.floor((arg3 or 0) + 0.5), 0, 5)
		local now = os.clock()

		if now - n2 < n then
			arg:Notify({
				Title = "Feedback",
				Text = string.format("Please wait %ds before sending more feedback.", math.ceil(n - now - n2)),
				Type = "warning",
				Duration = 3,
			})

			return false
		end

		if not arg2 or arg2 == "" then
			arg:Notify({ Title = "Feedback", Text = "No webhook configured.", Type = "warning", Duration = 4 })
			return false
		end
		local request_ = syn and syn.request or http_request or request

		if not request_ then
			arg:Notify({
				Title = "Feedback",
				Text = "Your executor doesn't support HTTP requests.",
				Type = "error",
				Duration = 4,
			})

			return false
		end

		local v = fn32(arg4 or "")
		local v3 = fn33(v)
		local v4 = fn34(arg4)

		if v3 or v4:find("blocked") then
			n2 = now
			arg:Notify({ Title = "Blocked", Text = "Unallowed content detected.", Type = "error", Duration = 4 })
			return false
		end

		n2 = now

		local json = HttpService:JSONEncode({
			allowed_mentions = { parse = {} },
			embeds = {
				{
					title = tbl5.Title or "New UI Feedback",
					description = (string.rep("★", n3) .. string.rep("☆", 5 - n3)) .. "  (" .. n3 .. "/5)",
					color = tbl5.Color or 16761920,
					fields = { { name = "Message", value = v4, inline = false } },
					footer = {
						text = (v4:find("%[invite removed%]") or v4:find("%[link removed%]")) and "Invites removed" or "Submitted anonymously",
					},
					timestamp = DateTime.now():ToIsoDate(),
				},
			},
		})

		fn2(function()
			local ok, result = pcall(request_, { Url = arg2, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })

			arg:Notify({
				Title = ok and "Feedback Sent" or "Failed to Send",
				Text = ok and "Thanks for rating the UI!" or tostring(result),
				Type = ok and "success" or "error",
				Duration = 3,
			})
		end)

		return true
	end

	local function fn35(parent, layoutOrder, arg, placeholderText, arg2)
		local frame = Instance.new("Frame")
		frame.Name = "Feedback"
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 0, arg)
		frame.LayoutOrder = layoutOrder
		frame.ZIndex = tbl.Content + 1
		frame.Parent = parent
		local frame2 = Instance.new("Frame")
		frame2.Name = "Pill"
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.95
		frame2.BorderSizePixel = 0
		frame2.Size = UDim2.new(1, -(arg + 6), 1, 0)
		frame2.ZIndex = tbl.Content + 1
		frame2.Parent = frame
		createUICorner(frame2, 9)
		local v = createUIStroke(frame2, Color3.new(1, 1, 1), 1, 0.9)
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingLeft = UDim.new(0, 10)
		uiPadding.PaddingRight = UDim.new(0, 10)
		uiPadding.Parent = frame2
		local textBox = Instance.new("TextBox")
		textBox.BackgroundTransparency = 1
		textBox.ClearTextOnFocus = false
		textBox.FontFace = index.Theme.FontRegular
		textBox.PlaceholderText = placeholderText or "Give us some feedback!"
		textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 122)
		textBox.Text = ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.TextSize = 13
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		textBox.TextYAlignment = Enum.TextYAlignment.Center
		textBox.TextTruncate = Enum.TextTruncate.AtEnd
		textBox.ClipsDescendants = true
		textBox.Size = UDim2.fromScale(1, 1)
		textBox.ZIndex = tbl.Content + 2
		textBox.Parent = frame2

		textBox.Focused:Connect(function()
			fn17(v, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
		end)

		textBox.FocusLost:Connect(function()
			fn17(v, { Color = Color3.new(1, 1, 1), Transparency = 0.9 }, 0.18)
		end)

		local textButton = Instance.new("TextButton")
		textButton.Name = "Send"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 0.9
		textButton.BorderSizePixel = 0
		textButton.AnchorPoint = Vector2.new(1, 0)
		textButton.Position = UDim2.new(1, 0, 0, 0)
		textButton.Size = UDim2.fromOffset(arg, arg)
		textButton.ZIndex = tbl.Content + 1
		textButton.Parent = frame
		createUICorner(textButton, 9)
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(arg2 or "send")
		imageLabel.ImageColor3 = index.Theme.Text
		fn18(imageLabel, "Text")
		imageLabel.Size = UDim2.fromOffset(12, 12)
		imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel.ZIndex = tbl.Content + 2
		imageLabel.Parent = textButton

		textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.8 }, 0.12)
		end)

		textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
		end)

		return { Row = frame, Box = textBox, SendBtn = textButton }
	end

	index3.AddRating = function(arg, arg2)
		local tbl5 = arg2 or {}
		local n3 = math.max(1, tbl5.MaxStars or 5)
		local starColor = tbl5.StarColor or Color3.fromRGB(255, 196, 64)
		local flag5 = tbl5.Title and tbl5.Title ~= ""
		local v = createFrame3(arg._page, 10)
		v.AutomaticSize = Enum.AutomaticSize.Y
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 10)
		uiPadding.PaddingBottom = UDim.new(0, 10)
		uiPadding.PaddingLeft = UDim.new(0, 14)
		uiPadding.PaddingRight = UDim.new(0, 14)
		uiPadding.Parent = v
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 8)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = v

		if flag5 then
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = index.Theme.Font
			textLabel.Text = tbl5.Title
			textLabel.TextColor3 = index.Theme.Text
			fn18(textLabel, "Text")
			textLabel.TextSize = 14
			textLabel.TextXAlignment = Enum.TextXAlignment.Left
			textLabel.Size = UDim2.new(1, 0, 0, 16)
			textLabel.LayoutOrder = 1
			textLabel.ZIndex = tbl.Content + 1
			textLabel.Parent = v
			arg._window:_RegisterSearchable(arg, tbl5.Title, v)
		end

		local v3 = fn31(v, 2, n3, starColor, 20, tbl5.Default)
		local v4 = fn35(v, 3, 26, tbl5.Placeholder, tbl5.ButtonIcon)
		local flag6 = tbl5.ClearOnSubmit ~= false

		v4.SendBtn.MouseButton1Click:Connect(function()
			local v5 = v3.Get()
			if v5 <= 0 then
				v3.Nudge()
				return
			end

			if tbl5.Callback then
				fn2(tbl5.Callback, v5, v4.Box.Text)
			end

			if tbl5.WebhookUrl then
				fn2(function()
					index:SendFeedbackWebhook(tbl5.WebhookUrl, v5, v4.Box.Text, tbl5.WebhookOptions)
				end)
			end

			if flag6 then
				v4.Box.Text = ""
				v3.Set(tbl5.Default or 0)
			end
		end)

		return {
			Instance = v,
			Get = function()
				local text = v4.Box.Text
				return v3.Get(), text
			end,
			Set = function(arg3, arg4, text)
				v3.Set(arg4)

				if text ~= nil then
					v4.Box.Text = text
				end
			end,
			Destroy = function()
				v:Destroy()
			end,
		}
	end

	index3.AddButton = function(arg, arg2)
		local tbl5 = arg2 or {}
		local n3 = tbl5.Description and tbl5.Description ~= "" and 54 or 40
		local v = createFrame3(arg._page, n3)
		fn28(v, fn27(v, tbl5.Icon, n3), 44, tbl5.Text or "Button", tbl5.Description, n3)
		arg._window:_RegisterSearchable(arg, tbl5.Text or "Button", v)
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21("chevron-right")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.AnchorPoint = Vector2.new(1, 0.5)
		imageLabel.Position = UDim2.new(1, -16, 0.5, 0)
		imageLabel.ZIndex = tbl.Content + 1
		imageLabel.Parent = v
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Content + 3
		textButton.Parent = v

		textButton.MouseEnter:Connect(function()
			fn17(v, { BackgroundTransparency = 0.9 }, 0.18)
			fn17(imageLabel, { ImageColor3 = index.Theme.Text, Position = UDim2.new(1, -12, 0.5, 0) }, 0.18)
		end)

		textButton.MouseLeave:Connect(function()
			fn17(v, { BackgroundTransparency = 0.96 }, 0.18)
			fn17(imageLabel, { ImageColor3 = index.Theme.TextDim, Position = UDim2.new(1, -16, 0.5, 0) }, 0.18)
		end)

		textButton.MouseButton1Click:Connect(function()
			fn17(v, { BackgroundTransparency = 0.8 }, 0.08)
			fn17(imageLabel, { ImageColor3 = index.Theme.Accent }, 0.08)

			fn4(0.08, function()
				if not v.Parent then
					return
				end
				fn17(v, { BackgroundTransparency = 0.9 }, 0.18)
				fn17(imageLabel, { ImageColor3 = index.Theme.Text }, 0.18)
			end)

			if tbl5.Callback then
				fn2(tbl5.Callback)
			end
		end)

		return {
			Instance = v,
			Destroy = function()
				v:Destroy()
			end,
		}
	end

	index3.AddCard = function(arg, arg2)
		local tbl5 = arg2 or {}
		local flag5 = tbl5.Description and tbl5.Description ~= ""
		local flag6 = tbl5.Image and tbl5.Image ~= "" or tbl5.UserId ~= nil
		local flag7 = tbl5.ButtonText ~= nil and tbl5.ButtonText ~= ""
		local n3 = flag7 and 42 or 0
		local flag8 = type(tbl5.Rating) == "table"
		local flag9 = flag8 and tbl5.Rating.Title and tbl5.Rating.Title ~= ""
		local n4 = 0

		if flag8 then
			n4 = 10 + (flag9 and 20 or 0) + 20 + 6 + 26 + 8
		end

		local n5 = n3 + n4
		flag5 = flag5 and 54 or 40
		local v = createFrame3(arg._page, flag5 + n5)
		local n6 = 14

		if flag6 then
			local frame = Instance.new("Frame")
			frame.Name = "Image"
			frame.AnchorPoint = Vector2.new(0, 0.5)
			frame.Position = UDim2.fromOffset(10, flag5 / 2)
			frame.Size = UDim2.fromOffset(34, 34)
			frame.BackgroundTransparency = 1
			frame.BorderSizePixel = 0
			frame.ClipsDescendants = true
			frame.ZIndex = tbl.Content + 1
			frame.Parent = v
			createUICorner(frame, index.Theme.CornerRadiusSm)
			createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.85)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.ScaleType = Enum.ScaleType.Crop
			imageLabel.Size = UDim2.fromScale(1, 1)
			imageLabel.ZIndex = tbl.Content + 2
			imageLabel.Parent = frame
			createUICorner(imageLabel, index.Theme.CornerRadiusSm)

			if tbl5.UserId then
				fn2(function()
					local ok, image = pcall(Players.GetUserThumbnailAsync, Players, tbl5.UserId, tbl5.ThumbnailType or Enum.ThumbnailType.HeadShot, tbl5.ThumbnailSize or Enum.ThumbnailSize.Size100x100)

					if ok and image and imageLabel.Parent then
						imageLabel.Image = image
					end
				end)
			else
				imageLabel.Image = fn21(tbl5.Image)
			end

			n6 = 54
		end

		fn28(v, n6, tbl5.Callback and 44 or 14, tbl5.Title or "Card", tbl5.Description, flag5, n5)
		arg._window:_RegisterSearchable(arg, tbl5.Title or "Card", v)

		if tbl5.Callback then
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21("chevron-right")
			imageLabel.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel, "TextDim")
			imageLabel.Size = UDim2.fromOffset(14, 14)
			imageLabel.AnchorPoint = Vector2.new(1, 0.5)
			imageLabel.Position = UDim2.new(1, -16, 0.5, 0)
			imageLabel.ZIndex = tbl.Content + 1
			imageLabel.Parent = v
			local textButton = Instance.new("TextButton")
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundTransparency = 1
			textButton.Size = UDim2.fromScale(1, 1)
			textButton.ZIndex = tbl.Content + 3
			textButton.Parent = v

			textButton.MouseEnter:Connect(function()
				fn17(v, { BackgroundTransparency = 0.9 }, 0.18)
				fn17(imageLabel, { ImageColor3 = index.Theme.Text, Position = UDim2.new(1, -12, 0.5, 0) }, 0.18)
			end)

			textButton.MouseLeave:Connect(function()
				fn17(v, { BackgroundTransparency = 0.96 }, 0.18)
				fn17(imageLabel, { ImageColor3 = index.Theme.TextDim, Position = UDim2.new(1, -16, 0.5, 0) }, 0.18)
			end)

			textButton.MouseButton1Click:Connect(function()
				fn17(v, { BackgroundTransparency = 0.8 }, 0.08)

				fn4(0.08, function()
					if v.Parent then
						fn17(v, { BackgroundTransparency = 0.9 }, 0.18)
					end
				end)

				fn2(tbl5.Callback)
			end)
		end

		if flag7 then
			local textButton = Instance.new("TextButton")
			textButton.Name = "FooterButton"
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = Color3.new(1, 1, 1)
			textButton.BackgroundTransparency = 0.85
			textButton.BorderSizePixel = 0
			textButton.Position = UDim2.new(0, 10, 1, -36)
			textButton.Size = UDim2.new(1, -20, 0, 32)
			textButton.ZIndex = tbl.Content + 1
			textButton.Parent = v
			createUICorner(textButton, 8)
			local v3 = createUIStroke(textButton, Color3.new(1, 1, 1), 1, 0.85)
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = index.Theme.Font
			textLabel.Text = tbl5.ButtonText
			textLabel.TextColor3 = index.Theme.Text
			fn18(textLabel, "Text")
			textLabel.TextSize = 13
			textLabel.Size = UDim2.fromScale(1, 1)
			textLabel.ZIndex = tbl.Content + 2
			textLabel.Parent = textButton

			textButton.MouseEnter:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.7 }, 0.12)
				fn17(v3, { Transparency = 0.7 }, 0.12)
			end)

			textButton.MouseLeave:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.85 }, 0.12)
				fn17(v3, { Transparency = 0.85 }, 0.12)
			end)

			textButton.MouseButton1Click:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.55 }, 0.08)

				fn4(0.08, function()
					if textButton.Parent then
						fn17(textButton, { BackgroundTransparency = 0.7 }, 0.18)
					end
				end)

				if tbl5.ButtonCallback then
					fn2(tbl5.ButtonCallback)
				end
			end)
		end

		local tbl6 = nil

		if flag8 then
			local rating = tbl5.Rating
			local frame = Instance.new("Frame")
			frame.Name = "Rating"
			frame.BackgroundTransparency = 1
			frame.Position = UDim2.new(0, 10, 1, -(n4 + n3))
			frame.Size = UDim2.new(1, -20, 0, n4 - 8)
			frame.ZIndex = tbl.Content + 1
			frame.Parent = v
			local frame2 = Instance.new("Frame")
			frame2.Name = "Divider"
			frame2.BackgroundColor3 = Color3.new(1, 1, 1)
			frame2.BackgroundTransparency = 0.94
			frame2.BorderSizePixel = 0
			frame2.Size = UDim2.new(1, 0, 0, 1)
			frame2.ZIndex = tbl.Content + 1
			frame2.Parent = frame
			local frame3 = Instance.new("Frame")
			frame3.BackgroundTransparency = 1
			frame3.Position = UDim2.new(0, 0, 0, 10)
			frame3.Size = UDim2.new(1, 0, 1, -10)
			frame3.ZIndex = tbl.Content + 1
			frame3.Parent = frame
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.Padding = UDim.new(0, 6)
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Parent = frame3

			if flag9 then
				local textLabel = Instance.new("TextLabel")
				textLabel.BackgroundTransparency = 1
				textLabel.FontFace = index.Theme.Font
				textLabel.Text = rating.Title
				textLabel.TextColor3 = index.Theme.Text
				fn18(textLabel, "Text")
				textLabel.TextSize = 13
				textLabel.TextXAlignment = Enum.TextXAlignment.Left
				textLabel.Size = UDim2.new(1, 0, 0, 14)
				textLabel.LayoutOrder = 1
				textLabel.ZIndex = tbl.Content + 1
				textLabel.Parent = frame3
			end

			local v3 = fn31(frame3, 2, math.max(1, rating.MaxStars or 5), rating.StarColor or Color3.fromRGB(255, 196, 64), 20, rating.Default)
			local v4 = fn35(frame3, 3, 26, rating.Placeholder, rating.ButtonIcon)
			local flag10 = rating.ClearOnSubmit ~= false

			v4.SendBtn.MouseButton1Click:Connect(function()
				local v5 = v3.Get()
				if v5 <= 0 then
					v3.Nudge()
					return
				end

				if rating.Callback then
					fn2(rating.Callback, v5, v4.Box.Text)
				end

				if rating.WebhookUrl then
					fn2(function()
						index:SendFeedbackWebhook(rating.WebhookUrl, v5, v4.Box.Text, rating.WebhookOptions)
					end)
				end

				if flag10 then
					v4.Box.Text = ""
					v3.Set(rating.Default or 0)
				end
			end)

			tbl6 = {
				Get = function()
					local text = v4.Box.Text
					return v3.Get(), text
				end,
				Set = function(arg3, text)
					v3.Set(arg3)

					if text ~= nil then
						v4.Box.Text = text
					end
				end,
			}
		end

		return {
			Instance = v,
			Rating = tbl6,
			Destroy = function()
				v:Destroy()
			end,
		}
	end

	local tbl5 = {
		Added = { Color = Color3.fromRGB(120, 210, 140), Icon = "plus" },
		Fixed = { Color = Color3.fromRGB(120, 170, 255), Icon = "wrench" },
		Changed = { Color = Color3.fromRGB(255, 190, 90), Icon = "refresh-cw" },
		Removed = { Color = Color3.fromRGB(230, 120, 120), Icon = "minus" },
	}

	index3.AddChangelogEntry = function(arg, arg2)
		local tbl6 = arg2 or {}
		local version = tbl6.Version or "Update"
		local date = tbl6.Date
		local changes = tbl6.Changes or {}
		local v = createFrame3(arg._page, 42 + (#changes > 0 and 8 or 0))
		v.AutomaticSize = Enum.AutomaticSize.Y
		arg._window:_RegisterSearchable(arg, version, v)
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 12)
		uiPadding.PaddingBottom = UDim.new(0, 12)
		uiPadding.PaddingLeft = UDim.new(0, 12)
		uiPadding.PaddingRight = UDim.new(0, 12)
		uiPadding.Parent = v
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = version
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Size = UDim2.new(1, date and -90 or 0, 0, 18)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = v

		if date then
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = date
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextSize = 12
			textLabel2.TextXAlignment = Enum.TextXAlignment.Right
			textLabel2.AnchorPoint = Vector2.new(1, 0)
			textLabel2.Position = UDim2.new(1, 0, 0, 2)
			textLabel2.Size = UDim2.fromOffset(90, 18)
			textLabel2.ZIndex = tbl.Content + 1
			textLabel2.Parent = v
		end

		local frame = Instance.new("Frame")
		frame.Name = "Rows"
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.fromOffset(0, 26)
		frame.Size = UDim2.new(1, 0, 0, 0)
		frame.AutomaticSize = Enum.AutomaticSize.Y
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Vertical
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Padding = UDim.new(0, 2)
		uiListLayout.Parent = frame

		for i, change in ipairs(changes) do
			local type_ = tbl5[change.Type] and change.Type or "Changed"
			local v3 = tbl5[type_]
			local frame2 = Instance.new("Frame")
			frame2.Name = "Row" .. i
			frame2.BackgroundTransparency = 1
			frame2.Size = UDim2.new(1, 0, 0, 22)
			frame2.AutomaticSize = Enum.AutomaticSize.Y
			frame2.LayoutOrder = i * 2 - 1
			frame2.ZIndex = tbl.Content + 1
			frame2.Parent = frame
			local frame3 = Instance.new("Frame")
			frame3.BackgroundColor3 = v3.Color
			frame3.BackgroundTransparency = 0.85
			frame3.BorderSizePixel = 0
			frame3.AnchorPoint = Vector2.zero
			frame3.Position = UDim2.fromOffset(0, 1)
			frame3.Size = UDim2.fromOffset(66, 18)
			frame3.ZIndex = tbl.Content + 2
			frame3.Parent = frame2
			createUICorner(frame3, 5)
			local uiListLayout2 = Instance.new("UIListLayout")
			uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
			uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			uiListLayout2.Padding = UDim.new(0, 3)
			uiListLayout2.Parent = frame3
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21(v3.Icon)
			imageLabel.ImageColor3 = v3.Color
			imageLabel.Size = UDim2.fromOffset(9, 9)
			imageLabel.LayoutOrder = 1
			imageLabel.ZIndex = tbl.Content + 3
			imageLabel.Parent = frame3
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.Font
			textLabel2.Text = string.upper(type_)
			textLabel2.TextColor3 = v3.Color
			textLabel2.TextSize = 9
			textLabel2.AutomaticSize = Enum.AutomaticSize.X
			textLabel2.Size = UDim2.fromOffset(0, 12)
			textLabel2.LayoutOrder = 2
			textLabel2.ZIndex = tbl.Content + 3
			textLabel2.Parent = frame3
			local textLabel3 = Instance.new("TextLabel")
			textLabel3.BackgroundTransparency = 1
			textLabel3.FontFace = index.Theme.FontRegular
			textLabel3.Text = tostring(change.Text or "")
			textLabel3.TextColor3 = index.Theme.TextDim
			fn18(textLabel3, "TextDim")
			textLabel3.TextSize = 12
			textLabel3.TextXAlignment = Enum.TextXAlignment.Left
			textLabel3.TextYAlignment = Enum.TextYAlignment.Top
			textLabel3.TextWrapped = true
			textLabel3.TextTruncate = Enum.TextTruncate.None
			textLabel3.AutomaticSize = Enum.AutomaticSize.Y
			textLabel3.Position = UDim2.fromOffset(76, 0)
			textLabel3.Size = UDim2.new(1, -76, 0, 22)
			textLabel3.ZIndex = tbl.Content + 2
			textLabel3.Parent = frame2

			local function fn36()
				if textLabel3.TextBounds.Y > 18 then
					frame3.AnchorPoint = Vector2.zero
					frame3.Position = UDim2.fromOffset(0, 1)
					textLabel3.TextYAlignment = Enum.TextYAlignment.Top
				else
					frame3.AnchorPoint = Vector2.new(0, 0.5)
					frame3.Position = UDim2.new(0, 0, 0.5, 0)
					textLabel3.TextYAlignment = Enum.TextYAlignment.Center
				end
			end

			textLabel3:GetPropertyChangedSignal("TextBounds"):Connect(fn36)
			fn3(fn36)

			if i < #changes then
				local frame4 = Instance.new("Frame")
				frame4.Name = "Separator" .. i
				frame4.BackgroundColor3 = Color3.new(1, 1, 1)
				frame4.BackgroundTransparency = 0.93
				frame4.BorderSizePixel = 0
				frame4.Size = UDim2.new(1, 0, 0, 1)
				frame4.LayoutOrder = i * 2
				frame4.ZIndex = tbl.Content + 1
				frame4.Parent = frame
			end
		end

		return {
			Instance = v,
			Destroy = function()
				v:Destroy()
			end,
		}
	end

	index3.AddLoadoutGroup = function(arg, arg2)
		local tbl6 = arg2 or {}
		local title = tbl6.Title or "Loadout"
		local color = tbl6.Color or index.Theme.Accent
		local icons = tbl6.Icons or {}
		local buttonText = tbl6.ButtonText or "Equip"
		local v = createFrame3(arg._page, 132)
		arg._window:_RegisterSearchable(arg, title, v)
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 12)
		uiPadding.PaddingBottom = UDim.new(0, 12)
		uiPadding.PaddingLeft = UDim.new(0, 12)
		uiPadding.PaddingRight = UDim.new(0, 12)
		uiPadding.Parent = v
		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.fromOffset(0, 0)
		frame.Size = UDim2.new(1, 0, 0, 16)
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0, 0.5)
		frame2.Position = UDim2.new(0, 1, 0.5, 0)
		frame2.Size = UDim2.fromOffset(6, 6)
		frame2.BackgroundColor3 = color
		frame2.BorderSizePixel = 0
		frame2.ZIndex = tbl.Content + 2
		frame2.Parent = frame
		createUICorner(frame2, 3)
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = string.upper(title)
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 12
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.Position = UDim2.fromOffset(15, 0)
		textLabel.Size = UDim2.new(1, -15, 1, 0)
		textLabel.ZIndex = tbl.Content + 2
		textLabel.Parent = frame
		local frame3 = Instance.new("Frame")
		frame3.Name = "Icons"
		frame3.BackgroundTransparency = 1
		frame3.Position = UDim2.fromOffset(0, 24)
		frame3.Size = UDim2.new(1, 0, 0, 44)
		frame3.ZIndex = tbl.Content + 1
		frame3.Parent = v
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.Padding = UDim.new(0, 8)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame3

		for i, icon in ipairs(icons) do
			local frame4 = Instance.new("Frame")
			frame4.Name = "Slot" .. i
			frame4.BackgroundColor3 = Color3.new(1, 1, 1)
			frame4.BackgroundTransparency = 0.95
			frame4.BorderSizePixel = 0
			frame4.ClipsDescendants = true
			frame4.Size = UDim2.new(0.33333333333333331, -5.333333333333333, 1, 0)
			frame4.LayoutOrder = i
			frame4.ZIndex = tbl.Content + 2
			frame4.Parent = frame3
			createUICorner(frame4, index.Theme.CornerRadiusSm)
			createUIStroke(frame4, Color3.new(1, 1, 1), 1, 0.94)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21(icon)
			imageLabel.ImageColor3 = color
			imageLabel.ScaleType = Enum.ScaleType.Fit
			imageLabel.Position = UDim2.fromOffset(8, 8)
			imageLabel.Size = UDim2.new(1, -16, 1, -16)
			imageLabel.ZIndex = tbl.Content + 3
			imageLabel.Parent = frame4
		end

		local textButton = Instance.new("TextButton")
		textButton.Name = "EquipButton"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 0.92
		textButton.BorderSizePixel = 0
		textButton.Position = UDim2.fromOffset(0, 78)
		textButton.Size = UDim2.new(1, 0, 0, 30)
		textButton.ZIndex = tbl.Content + 1
		textButton.Parent = v
		createUICorner(textButton, 8)
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.Font
		textLabel2.Text = buttonText
		textLabel2.TextColor3 = index.Theme.Text
		fn18(textLabel2, "Text")
		textLabel2.TextSize = 12
		textLabel2.Size = UDim2.fromScale(1, 1)
		textLabel2.ZIndex = tbl.Content + 2
		textLabel2.Parent = textButton

		textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.85 }, 0.12)
		end)

		textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.92 }, 0.12)
		end)

		textButton.MouseButton1Click:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.7 }, 0.08)

			fn4(0.08, function()
				if textButton.Parent then
					fn17(textButton, { BackgroundTransparency = 0.85 }, 0.18)
				end
			end)

			if tbl6.Callback then
				fn2(tbl6.Callback)
			end
		end)

		return {
			Instance = v,
			Destroy = function()
				v:Destroy()
			end,
		}
	end

	index3.AddInfoGrid = function(arg, arg2)
		local tbl6 = arg2 or {}
		local title = tbl6.Title or "Info"
		local flag5 = tbl6.Description and tbl6.Description ~= ""
		local items = tbl6.Items or {}
		local color = tbl6.Color
		local columns = tbl6.Columns or 2
		local n3 = flag5 and 32 or 16
		local n4 = 8
		local v = math.ceil(#items / columns)
		local n5 = v > 0 and v * 38 + (v - 1) * n4 or 0
		local v3 = createFrame3(arg._page, 24 + n3 + (v > 0 and 10 + n5 or 0))
		arg._window:_RegisterSearchable(arg, title, v3)
		local n6 = 0

		if color then
			local frame = Instance.new("Frame")
			frame.Name = "Accent"
			frame.BackgroundColor3 = color
			frame.BorderSizePixel = 0
			frame.Size = UDim2.new(0, 3, 1, -12)
			frame.Position = UDim2.fromOffset(0, 6)
			frame.ZIndex = tbl.Content + 1
			frame.Parent = v3
			createUICorner(frame, 1.5)
			n6 = 6
		end

		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, 12)
		uiPadding.PaddingBottom = UDim.new(0, 12)
		uiPadding.PaddingLeft = UDim.new(0, 12 + n6)
		uiPadding.PaddingRight = UDim.new(0, 12)
		uiPadding.Parent = v3
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Position = UDim2.fromOffset(0, 0)
		textLabel.Size = UDim2.new(1, 0, 0, 16)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = v3

		if flag5 then
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = tbl6.Description
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextSize = 12
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Top
			textLabel2.Position = UDim2.fromOffset(0, 18)
			textLabel2.Size = UDim2.new(1, 0, 0, 14)
			textLabel2.ZIndex = tbl.Content + 1
			textLabel2.Parent = v3
		end

		local tbl7 = {}

		if v > 0 then
			local frame = Instance.new("Frame")
			frame.Name = "Grid"
			frame.BackgroundTransparency = 1
			frame.Position = UDim2.fromOffset(0, n3 + 10)
			frame.Size = UDim2.new(1, 0, 0, n5)
			frame.ZIndex = tbl.Content + 1
			frame.Parent = v3
			local uiGridLayout = Instance.new("UIGridLayout")
			uiGridLayout.CellPadding = UDim2.fromOffset(8, 8)
			uiGridLayout.FillDirectionMaxCells = columns
			uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiGridLayout.Parent = frame

			local function fn36()
				local n7 = frame.AbsoluteSize.X / fn23()
				if n7 <= 0 then
					return
				end
				uiGridLayout.CellSize = UDim2.fromOffset((n7 - n4 * (columns - 1)) / columns, 38)
			end

			frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn36)
			fn3(fn36)

			for i, item in ipairs(items) do
				local frame2 = Instance.new("Frame")
				frame2.Name = "Chip" .. i
				frame2.BackgroundColor3 = Color3.new(1, 1, 1)
				frame2.BackgroundTransparency = 0.95
				frame2.BorderSizePixel = 0
				frame2.LayoutOrder = i
				frame2.ZIndex = tbl.Content + 2
				frame2.Parent = frame
				createUICorner(frame2, 6)
				local uiPadding2 = Instance.new("UIPadding")
				uiPadding2.PaddingTop = UDim.new(0, 6)
				uiPadding2.PaddingLeft = UDim.new(0, 8)
				uiPadding2.PaddingRight = UDim.new(0, 8)
				uiPadding2.Parent = frame2
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.BackgroundTransparency = 1
				textLabel2.FontFace = index.Theme.Font
				textLabel2.Text = tostring(item.Label or "")
				textLabel2.TextColor3 = index.Theme.Text
				fn18(textLabel2, "Text")
				textLabel2.TextSize = 12
				textLabel2.TextXAlignment = Enum.TextXAlignment.Left
				textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel2.Size = UDim2.new(1, 0, 0, 15)
				textLabel2.ZIndex = tbl.Content + 3
				textLabel2.Parent = frame2
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.Name = "Value"
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.FontRegular
				textLabel3.Text = tostring(item.Value or "")
				textLabel3.TextColor3 = index.Theme.TextDim
				fn18(textLabel3, "TextDim")
				textLabel3.TextSize = 11
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel3.Position = UDim2.fromOffset(0, 15)
				textLabel3.Size = UDim2.new(1, 0, 0, 12)
				textLabel3.ZIndex = tbl.Content + 3
				textLabel3.Parent = frame2

				if item.Label then
					tbl7[item.Label] = textLabel3
				end
			end
		end

		return {
			Instance = v3,
			SetValue = function(arg3, arg4, arg5)
				local v4 = tbl7[arg4]

				if v4 then
					v4.Text = tostring(arg5)
				end
			end,
			Destroy = function()
				v3:Destroy()
			end,
		}
	end

	index3.AddSystemInfoGrid = function(arg, arg2)
		local tbl6 = arg2 or {}
		game:GetService("Stats")
		local v = fn14()
		local v3 = arg
		local addInfoGrid = v3.AddInfoGrid

		local tbl7 = {
			Title = tbl6.Title or "System Info",
			Description = tbl6.Description,
			Color = tbl6.Color,
			Columns = tbl6.Columns or 2,
		}

		local items = {}
		local tbl8 = { Label = "Executor", Value = fn15() }
		local tbl9 = { Label = "Executions", Value = tostring(v) }
		items[1] = { Label = "FPS", Value = "--" }
		items[2] = { Label = "Ping", Value = "-- ms" }
		items[3] = tbl8
		items[4] = tbl9
		items[5] = { Label = "Server Region", Value = "Unknown" }
		items[6] = { Label = "Time of Day", Value = "--:--" }
		tbl7.Items = items
		addInfoGrid(v3, tbl7)
		os.clock()
		local janitor = arg._janitor
		error("devirt: value <luasym.LuaFunc object at 0x000001808419EB60> in an expression (at 207:123)")
	end

	index3.AddActiveUsersGrid = function(arg, arg2)
		local tbl6 = arg2 or {}
		local service = tbl6.Service
		local interval = tbl6.Interval or 30

		local v = arg:AddInfoGrid({
			Title = tbl6.Title or "Active Users",
			Description = tbl6.Description,
			Color = tbl6.Color,
			Columns = 1,
			Items = { { Label = "Active Now", Value = "--" } },
		})

		if not service then
			v:SetValue("Active Now", "No Service configured")
			return v
		end
		local flag5 = true

		arg._janitor:Add(function()
			flag5 = false
		end)

		fn2(function()
			while flag5 and v.Instance.Parent do
				service:Heartbeat()
				local activeCount, v3 = service:GetActiveCount()

				if flag5 and v.Instance.Parent then
					v:SetValue("Active Now", activeCount and tostring(activeCount) or "Error: " .. tostring(v3))
				end

				task.wait(interval)
			end
		end)

		return v
	end

	index3.AddLeaderboard = function(arg, arg2)
		local tbl6 = arg2 or {}
		local janitor = arg._janitor
		local service = tbl6.Service
		local interval = tbl6.Interval or 30
		local n3 = math.clamp(tbl6.Limit or 5, 1, 50)
		local title = tbl6.Title or "Leaderboard"
		local flag5 = tbl6.Description and tbl6.Description ~= ""
		local n4 = flag5 and 32 or 16
		local n5 = 12 + n4 + 12
		local n6 = n3 * 44 + (n3 - 1) * 6
		local frame = Instance.new("Frame")
		frame.Name = "Leaderboard"
		frame.BackgroundColor3 = index.Theme.Surface
		frame.BackgroundTransparency = 0.35
		frame.BorderSizePixel = 0
		frame.ClipsDescendants = true
		frame.Size = UDim2.new(1, 0, 0, n5 + n6 + 12)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._page
		createUICorner(frame, index.Theme.CornerRadiusSm)
		createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.92)
		arg._window:_RegisterSearchable(arg, title, frame)
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Position = UDim2.fromOffset(12, 12)
		textLabel.Size = UDim2.new(1, -56, 0, 16)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = frame

		if flag5 then
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = tbl6.Description
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextSize = 12
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Top
			textLabel2.Position = UDim2.fromOffset(12, 30)
			textLabel2.Size = UDim2.new(1, -56, 0, 14)
			textLabel2.ZIndex = tbl.Content + 1
			textLabel2.Parent = frame
		end

		local flag6 = tbl6.RevealByDefault == true
		local textButton = Instance.new("TextButton")
		textButton.Name = "RevealToggle"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.AnchorPoint = Vector2.new(1, 0)
		textButton.Position = UDim2.new(1, -12, 0, 8)
		textButton.Size = UDim2.fromOffset(24, 24)
		textButton.ZIndex = tbl.Content + 2
		textButton.Parent = frame
		createUICorner(textButton, 7)
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21(flag6 and "eye" or "eye-off")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel.ZIndex = tbl.Content + 3
		imageLabel.Parent = textButton

		janitor:Add(textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
			fn17(imageLabel, { ImageColor3 = index.Theme.Text }, 0.12)
		end))

		janitor:Add(textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
			fn17(imageLabel, { ImageColor3 = index.Theme.TextDim }, 0.12)
		end))

		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.92
		frame2.BorderSizePixel = 0
		frame2.Position = UDim2.fromOffset(0, 12 + n4 + 8)
		frame2.Size = UDim2.new(1, 0, 0, 1)
		frame2.ZIndex = tbl.Content + 1
		frame2.Parent = frame
		local frame3 = Instance.new("Frame")
		frame3.Name = "Rows"
		frame3.BackgroundTransparency = 1
		frame3.Position = UDim2.fromOffset(12, n5)
		frame3.Size = UDim2.new(1, -24, 0, n6)
		frame3.ZIndex = tbl.Content + 1
		frame3.Parent = frame
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Padding = UDim.new(0, 6)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.Parent = frame3
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.FontRegular
		textLabel2.Text = "No one's run this yet"
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 12
		textLabel2.Position = UDim2.fromOffset(12, n5 + 10)
		textLabel2.Size = UDim2.new(1, -24, 0, 16)
		textLabel2.Visible = false
		textLabel2.ZIndex = tbl.Content + 1
		textLabel2.Parent = frame
		local tbl7 = { Color3.fromRGB(255, 196, 64), Color3.fromRGB(203, 209, 217), (Color3.fromRGB(205, 141, 92)) }
		local tbl8 = { "crown", "medal", "medal" }

		local function fn36(arg3)
			local n7 = math.floor(arg3 or 0)
			local n8 = math.floor(n7 / 3600)
			local n9 = math.floor(n7 % 3600 / 60)
			if n8 > 0 then
				return string.format("%dh %dm", n8, n9)
			end

			if n9 > 0 then
				return string.format("%dm", n9)
			end
			return string.format("%ds", n7)
		end

		local function fn37(arg3)
			local str2 = (arg3 or ""):gsub("-", ""):sub(1, 4):upper()
			return "Player-" .. (str2 ~= "" and str2 or "????")
		end

		local tbl9 = {}

		local function fn38()
			for _, v in ipairs(tbl9) do
				v:Destroy()
			end

			table.clear(tbl9)
		end

		local function createFrame4(layoutOrder, arg3)
			local v = tbl7[layoutOrder]
			local frame4 = Instance.new("Frame")
			frame4.Name = "Row" .. layoutOrder
			frame4.Active = true
			frame4.BackgroundColor3 = Color3.new(1, 1, 1)
			frame4.BackgroundTransparency = arg3.IsYou and 0.9 or 0.96
			frame4.BorderSizePixel = 0
			frame4.LayoutOrder = layoutOrder
			frame4.Size = UDim2.new(1, 0, 0, 44)
			frame4.ZIndex = tbl.Content + 2
			frame4.Parent = frame3
			createUICorner(frame4, index.Theme.CornerRadiusSm)
			createUIStroke(frame4, Color3.new(1, 1, 1), 1, arg3.IsYou and 0.88 or 0.94)
			local backgroundTransparency = frame4.BackgroundTransparency

			frame4.MouseEnter:Connect(function()
				fn17(frame4, { BackgroundTransparency = backgroundTransparency - 0.05 }, 0.12)
			end)

			frame4.MouseLeave:Connect(function()
				fn17(frame4, { BackgroundTransparency = backgroundTransparency }, 0.12)
			end)

			local uiPadding = Instance.new("UIPadding")
			uiPadding.PaddingLeft = UDim.new(0, 10)
			uiPadding.PaddingRight = UDim.new(0, 10)
			uiPadding.Parent = frame4
			local frame5 = Instance.new("Frame")
			frame5.AnchorPoint = Vector2.new(0, 0.5)
			frame5.Position = UDim2.new(0, 0, 0.5, 0)
			frame5.Size = UDim2.fromOffset(28, 28)
			frame5.BackgroundColor3 = Color3.new(1, 1, 1)
			frame5.BackgroundTransparency = 0.94
			frame5.BorderSizePixel = 0
			frame5.ZIndex = tbl.Content + 3
			frame5.Parent = frame4
			createUICorner(frame5, 14)
			createUIStroke(frame5, Color3.new(1, 1, 1), 1, 0.9)

			if v then
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21(tbl8[layoutOrder])
				imageLabel2.ImageColor3 = v
				imageLabel2.Size = UDim2.fromOffset(15, 15)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
				imageLabel2.ZIndex = tbl.Content + 4
				imageLabel2.Parent = frame5
			else
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.Font
				textLabel3.Text = "#" .. tostring(layoutOrder)
				textLabel3.TextColor3 = index.Theme.TextDim
				fn18(textLabel3, "TextDim")
				textLabel3.TextSize = 11
				textLabel3.Size = UDim2.fromScale(1, 1)
				textLabel3.ZIndex = tbl.Content + 4
				textLabel3.Parent = frame5
			end

			local frame6 = Instance.new("Frame")
			frame6.AnchorPoint = Vector2.new(0, 0.5)
			frame6.Position = UDim2.new(0, 34, 0.5, 0)
			frame6.Size = UDim2.fromOffset(28, 28)
			frame6.BackgroundColor3 = Color3.new(1, 1, 1)
			frame6.BackgroundTransparency = 0.94
			frame6.BorderSizePixel = 0
			frame6.ClipsDescendants = true
			frame6.ZIndex = tbl.Content + 3
			frame6.Parent = frame4
			createUICorner(frame6, 14)
			createUIStroke(frame6, Color3.new(1, 1, 1), 1, 0.85)

			if arg3.UserId and arg3.UserId ~= 0 then
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.ScaleType = Enum.ScaleType.Crop
				imageLabel2.Size = UDim2.fromScale(1, 1)
				imageLabel2.ZIndex = tbl.Content + 4
				imageLabel2.Parent = frame6

				fn2(function()
					local ok, image = pcall(Players.GetUserThumbnailAsync, Players, arg3.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)

					if ok and image and imageLabel2.Parent then
						imageLabel2.Image = image
					end
				end)
			else
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21("user")
				imageLabel2.ImageColor3 = index.Theme.TextDim
				fn18(imageLabel2, "TextDim")
				imageLabel2.Size = UDim2.fromOffset(14, 14)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
				imageLabel2.ZIndex = tbl.Content + 4
				imageLabel2.Parent = frame6
			end

			local textLabel3 = Instance.new("TextLabel")
			textLabel3.BackgroundTransparency = 1
			textLabel3.FontFace = index.Theme.Font
			textLabel3.Text = (arg3.NamePreview and arg3.NamePreview ~= "" and arg3.NamePreview or fn37(arg3.Identity)) .. (arg3.IsYou and "  (You)" or "")
			textLabel3.TextColor3 = index.Theme.Text
			fn18(textLabel3, "Text")
			textLabel3.TextSize = 13
			textLabel3.TextXAlignment = Enum.TextXAlignment.Left
			textLabel3.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel3.Position = UDim2.fromOffset(70, 0)
			textLabel3.Size = UDim2.new(1, -138, 1, 0)
			textLabel3.ZIndex = tbl.Content + 3
			textLabel3.Parent = frame4
			local textLabel4 = Instance.new("TextLabel")
			textLabel4.BackgroundTransparency = 1
			textLabel4.FontFace = index.Theme.FontRegular
			textLabel4.Text = fn36(arg3.Seconds)
			textLabel4.TextColor3 = index.Theme.TextDim
			fn18(textLabel4, "TextDim")
			textLabel4.TextSize = 12
			textLabel4.TextXAlignment = Enum.TextXAlignment.Right
			textLabel4.AnchorPoint = Vector2.new(1, 0)
			textLabel4.Position = UDim2.new(1, 0, 0, 0)
			textLabel4.Size = UDim2.fromOffset(60, 44)
			textLabel4.ZIndex = tbl.Content + 3
			textLabel4.Parent = frame4
			return frame4
		end

		local function fn39(arg3)
			fn38()
			textLabel2.Visible = #arg3 == 0

			for i, v in ipairs(arg3) do
				if not (i > n3) then
					table.insert(tbl9, createFrame4(i, v))
					continue
				end
				break
			end
		end

		fn39({})
		if not service then
			return { Instance = frame }
		end

		local function fn40(arg3, arg4)
			return (localPlayer.Name or ""):sub(1, arg3) .. arg4
		end

		janitor:Add(textButton.MouseButton1Click:Connect(function()
			flag6 = not flag6
			imageLabel.Image = fn21(flag6 and "eye" or "eye-off")

			index:Notify({
				Title = "Leaderboard",
				Text = flag6 and "Your avatar and more of your name will show on the leaderboard." or "Back to anonymous -- only 2 letters of your name will show.",
				Type = "info",
				Duration = 3,
			})
		end))

		local flag7 = true

		janitor:Add(function()
			flag7 = false
		end)

		fn2(function()
			while flag7 and frame.Parent do
				service:Heartbeat(flag6 and { UserId = localPlayer.UserId, NamePreview = fn40(4, "*******") } or { UserId = 0, NamePreview = fn40(2, "********") })
				local leaderboard = service:GetLeaderboard(n3)

				if flag7 and frame.Parent and leaderboard then
					for _, v in ipairs(leaderboard) do
						v.IsYou = v.Identity == service.Identity
					end

					fn39(leaderboard)
				end

				task.wait(interval)
			end
		end)

		return { Instance = frame }
	end

	index3.AddGradientCard = function(arg, arg2)
		local tbl6 = arg2 or {}
		local title = tbl6.Title or "Card"
		local flag5 = tbl6.Description and tbl6.Description ~= ""
		local colorA = tbl6.ColorA or Color3.fromRGB(88, 101, 242)
		local colorB = tbl6.ColorB or Color3.fromRGB(52, 58, 138)
		local n3 = flag5 and 54 or 40
		local frame = Instance.new("Frame")
		frame.Name = title .. "GradientCard"
		frame.BackgroundColor3 = colorA
		frame.BorderSizePixel = 0
		frame.Size = UDim2.new(1, 0, 0, n3)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._page
		createUICorner(frame, index.Theme.CornerRadiusSm)
		local uiGradient = Instance.new("UIGradient")
		uiGradient.Color = ColorSequence.new(colorA, colorB)
		uiGradient.Rotation = 100
		uiGradient.Parent = frame
		arg._window:_RegisterSearchable(arg, title, frame)
		local n4 = tbl6.Callback and 32
		n4 = n4 or 14
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = title
		textLabel.TextColor3 = Color3.new(1, 1, 1)
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Position = UDim2.fromOffset(14, flag5 and 9 or 0)
		textLabel.Size = UDim2.new(1, -(14 + n4), 0, 18)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = frame

		if flag5 then
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = tbl6.Description
			textLabel2.TextColor3 = Color3.new(1, 1, 1)
			textLabel2.TextTransparency = 0.3
			textLabel2.TextSize = 12
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel2.Position = UDim2.fromOffset(14, 29)
			textLabel2.Size = UDim2.new(1, -(14 + n4), 0, 14)
			textLabel2.ZIndex = tbl.Content + 1
			textLabel2.Parent = frame
		end

		if tbl6.Callback then
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21("chevron-right")
			imageLabel.ImageColor3 = Color3.new(1, 1, 1)
			imageLabel.ImageTransparency = 0.2
			imageLabel.Size = UDim2.fromOffset(14, 14)
			imageLabel.AnchorPoint = Vector2.new(1, 0.5)
			imageLabel.Position = UDim2.new(1, -14, 0.5, 0)
			imageLabel.ZIndex = tbl.Content + 1
			imageLabel.Parent = frame
			local frame2 = Instance.new("Frame")
			frame2.Name = "HoverVeil"
			frame2.BackgroundColor3 = Color3.new(1, 1, 1)
			frame2.BackgroundTransparency = 1
			frame2.BorderSizePixel = 0
			frame2.Size = UDim2.fromScale(1, 1)
			frame2.ZIndex = tbl.Content + 2
			frame2.Parent = frame
			createUICorner(frame2, index.Theme.CornerRadiusSm)
			local textButton = Instance.new("TextButton")
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundTransparency = 1
			textButton.Size = UDim2.fromScale(1, 1)
			textButton.ZIndex = tbl.Content + 3
			textButton.Parent = frame

			textButton.MouseEnter:Connect(function()
				fn17(frame2, { BackgroundTransparency = 0.9 }, 0.18)
				fn17(imageLabel, { Position = UDim2.new(1, -10, 0.5, 0) }, 0.18)
			end)

			textButton.MouseLeave:Connect(function()
				fn17(frame2, { BackgroundTransparency = 1 }, 0.18)
				fn17(imageLabel, { Position = UDim2.new(1, -14, 0.5, 0) }, 0.18)
			end)

			textButton.MouseButton1Click:Connect(function()
				fn17(frame2, { BackgroundTransparency = 0.8 }, 0.08)

				fn4(0.08, function()
					if frame2.Parent then
						fn17(frame2, { BackgroundTransparency = 0.9 }, 0.18)
					end
				end)

				fn2(tbl6.Callback)
			end)
		end

		return {
			Instance = frame,
			Destroy = function()
				frame:Destroy()
			end,
		}
	end

	index3.AddToggle = function(arg, arg2)
		local tbl6 = arg2 or {}
		local flag5 = tbl6.Default == true
		local n3 = tbl6.Description and tbl6.Description ~= "" and 54 or 40
		local v = createFrame3(arg._page, n3)
		fn28(v, fn27(v, tbl6.Icon, n3), 66, tbl6.Text or "Toggle", tbl6.Description, n3)
		arg._window:_RegisterSearchable(arg, tbl6.Text or "Toggle", v)
		local frame = Instance.new("Frame")
		frame.AnchorPoint = Vector2.new(1, 0.5)
		frame.Position = UDim2.new(1, -14, 0.5, 0)
		frame.Size = UDim2.fromOffset(36, 18)
		frame.BackgroundColor3 = flag5 and index.Theme.Accent or Color3.fromRGB(46, 50, 49)
		frame.BackgroundTransparency = flag5 and 0 or 0.32
		frame.BorderSizePixel = 0
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v
		frame:SetAttribute("NullUIAccent", true)
		createUICorner(frame, 11)
		local v3 = createUIStroke(frame, flag5 and index.Theme.Accent or Color3.fromRGB(205, 212, 209), 1, flag5 and 0.88 or 0.72)
		local uiGradient = Instance.new("UIGradient")
		uiGradient.Rotation = 90
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), new(1, color(190, 198, 194)) })
		local numberSequence = NumberSequence.new
		local tbl7 = {}
		local v4 = NumberSequenceKeypoint.new(0, flag5 and 0 or 0.76)
		local new2 = NumberSequenceKeypoint.new
		local n4 = flag5 and 0 or 0.94
		local v5 = table.pack(new2(1, n4))
		tbl7[1] = v4

		do
			local values = table.pack(table.unpack(v5, 1, v5.n))
			table.move(values, 1, values.n, 2, tbl7)
		end

		uiGradient.Transparency = numberSequence(tbl7)
		uiGradient.Parent = frame
		local uiScale = Instance.new("UIScale")
		uiScale.Scale = 1
		uiScale.Parent = frame
		local frame2 = Instance.new("Frame")
		frame2.Size = UDim2.fromOffset(14, 14)
		frame2.Position = flag5 and UDim2.new(1, -16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
		frame2.AnchorPoint = Vector2.new(0, 0.5)
		frame2.BackgroundColor3 = flag5 and Color3.fromRGB(18, 18, 18) or Color3.fromRGB(226, 230, 228)
		frame2.BackgroundTransparency = flag5 and 0 or 0.06
		frame2.BorderSizePixel = 0
		frame2.ZIndex = tbl.Content + 2
		frame2.Parent = frame
		createUICorner(frame2, 8)
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Content + 3
		textButton.Parent = v

		local function fn36()
			local quint = Enum.EasingStyle.Quint
			local inOut = Enum.EasingDirection.InOut
			local str2 = flag5 and "Accent" or nil
			frame:SetAttribute("NullUIRole", str2)
			v3:SetAttribute("NullUIRole", str2)
			obj2[frame] = str2
			obj2[v3] = str2

			fn17(frame, {
				BackgroundColor3 = flag5 and index.Theme.Accent or Color3.fromRGB(46, 50, 49),
				BackgroundTransparency = flag5 and 0 or 0.32,
			}, 0.28, quint, inOut)

			fn17(v3, {
				Color = flag5 and index.Theme.Accent or Color3.fromRGB(205, 212, 209),
				Transparency = flag5 and 0.88 or 0.72,
			}, 0.28, quint, inOut)

			local v6 = uiGradient
			local numberSequence2 = NumberSequence.new
			local tbl8 = {}
			local v7 = NumberSequenceKeypoint.new(0, flag5 and 0 or 0.76)
			local new3 = NumberSequenceKeypoint.new
			local n5 = flag5 and 0 or 0.94
			local v8 = table.pack(new3(1, n5))
			tbl8[1] = v7

			do
				local values = table.pack(table.unpack(v8, 1, v8.n))
				table.move(values, 1, values.n, 2, tbl8)
			end

			v6.Transparency = numberSequence2(tbl8)

			fn17(frame2, {
				BackgroundColor3 = flag5 and Color3.fromRGB(18, 18, 18) or Color3.fromRGB(226, 230, 228),
				BackgroundTransparency = flag5 and 0 or 0.06,
				Position = flag5 and UDim2.new(1, -16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
			}, 0.28, quint, inOut)
		end

		local v6 = fn5()

		local function fn37(arg3)
			if tbl6.Callback then
				fn2(tbl6.Callback, arg3)
			end

			v6.Fire(arg3)
		end

		local flag6 = tbl6.Locked == true

		textButton.MouseButton1Click:Connect(function()
			if flag6 then
				return
			end
			fn17(uiScale, { Scale = 0.91 }, 0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

			fn4(0.08, function()
				if uiScale.Parent then
					fn17(uiScale, { Scale = 1 }, 0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				end
			end)

			flag5 = not flag5
			fn36()
			fn37(flag5)
		end)

		v.MouseEnter:Connect(function()
			if not flag6 then
				fn17(v, { BackgroundTransparency = 0.93 }, 0.18)

				if not flag5 then
					fn17(v3, { Transparency = 0.55 }, 0.18)
					fn17(frame, { BackgroundTransparency = 0.24 }, 0.18)
				end
			end
		end)

		v.MouseLeave:Connect(function()
			fn17(v, { BackgroundTransparency = 0.96 }, 0.18)

			if not flag5 then
				fn17(v3, { Transparency = 0.72 }, 0.18)
				fn17(frame, { BackgroundTransparency = 0.32 }, 0.18)
			end
		end)

		return fn30(tbl6, {
			Instance = v,
			Set = function(arg3, arg4, arg5)
				flag5 = arg4 == true
				fn36()

				if not arg5 then
					fn37(flag5)
				end
			end,
			Get = function()
				return flag5
			end,
			SetLocked = function(arg3, arg4)
				flag6 = arg4 == true
				v.BackgroundTransparency = flag6 and 0.98 or 0.96
			end,
			OnChanged = function(arg3, arg4)
				return v6.Connect(arg4)
			end,
			Destroy = function()
				v6.Clear()
				v:Destroy()
			end,
		}, "Toggle")
	end

	local v = nil

	index3.AddSlider = function(arg, arg2)
		local tbl6 = arg2 or {}
		local n3 = tonumber(tbl6.Min) or 0
		local n4 = tonumber(tbl6.Max) or 100
		local v3

		if n4 < n3 then
			v3 = n4
			n4 = n3
		else
			v3 = n3
		end

		local n5 = tonumber(tbl6.Increment) or 1
		local n6 = math.clamp(tonumber(tbl6.Default) or v3, v3, n4)
		local flag5 = tbl6.Description and tbl6.Description ~= ""
		local janitor = arg._janitor
		local v4 = createFrame3(arg._page, flag5 and 72 or 52)
		local v5 = fn27(v4, tbl6.Icon, 24)
		local leadingIcon = v4:FindFirstChild("LeadingIcon")

		if leadingIcon then
			leadingIcon.AnchorPoint = Vector2.new(0, 0)
			leadingIcon.Position = UDim2.fromOffset(14, 9)
		end

		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.Font
		textLabel.Text = tbl6.Text or "Slider"
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 14
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Position = UDim2.fromOffset(v5, 8)
		textLabel.Size = UDim2.new(1, -(v5 + 76), 0, 18)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = v4
		arg._window:_RegisterSearchable(arg, tbl6.Text or "Slider", v4)

		if flag5 then
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.FontRegular
			textLabel2.Text = tbl6.Description
			textLabel2.TextColor3 = index.Theme.TextDim
			fn18(textLabel2, "TextDim")
			textLabel2.TextSize = 12
			textLabel2.TextWrapped = true
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Top
			textLabel2.AutomaticSize = Enum.AutomaticSize.Y
			textLabel2.Position = UDim2.fromOffset(v5, 26)
			textLabel2.Size = UDim2.new(1, -(v5 + 14), 0, 14)
			textLabel2.ZIndex = tbl.Content + 1
			textLabel2.Parent = v4
		end

		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.FontRegular
		textLabel2.Text = fn9(n6) .. (tbl6.Suffix or "")
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 13
		textLabel2.TextXAlignment = Enum.TextXAlignment.Right
		textLabel2.AnchorPoint = Vector2.new(1, 0)
		textLabel2.Position = UDim2.new(1, -14, 0, 8)
		textLabel2.Size = UDim2.fromOffset(62, 18)
		textLabel2.ZIndex = tbl.Content + 1
		textLabel2.Parent = v4
		local frame = Instance.new("Frame")
		frame.Position = UDim2.new(0, 14, 1, -20)
		frame.Size = UDim2.new(1, -28, 0, 6)
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.91
		frame.BorderSizePixel = 0
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v4
		createUICorner(frame, 3)
		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = index.Theme.Accent
		frame2.BackgroundTransparency = 0
		frame2.BorderSizePixel = 0
		frame2.Size = UDim2.new(fn7(n6, v3, n4), 0, 1, 0)
		frame2.ZIndex = tbl.Content + 2
		frame2.Parent = frame
		frame2:SetAttribute("NullUIAccent", true)
		fn18(frame2, "Accent")
		createUICorner(frame2, 3)
		local frame3 = Instance.new("Frame")
		frame3.AnchorPoint = Vector2.new(0.5, 0.5)
		frame3.Position = UDim2.new(fn7(n6, v3, n4), 0, 0.5, 0)
		frame3.Size = UDim2.fromOffset(12, 12)
		frame3.BackgroundColor3 = index.Theme.Accent
		frame3.BackgroundTransparency = 0
		frame3.BorderSizePixel = 0
		frame3.ZIndex = tbl.Content + 3
		frame3.Parent = frame
		frame3:SetAttribute("NullUIAccent", true)
		fn18(frame3, "Accent")
		createUICorner(frame3, 6)
		createUIStroke(frame3, Color3.fromRGB(16, 16, 16), 2, 0)

		if flag5 then
			local n7 = -1

			local function fn36()
				local n8 = v4.AbsoluteSize.X / fn23()
				if n8 <= 0 or math.abs(n8 - n7) < 1 then
					return
				end
				n7 = n8
				local v6, v7 = fn20(tbl6.Description, 12, math.max(n8 - v5 - 14, 40))
				v4.Size = UDim2.new(1, 0, 0, math.max(76, 26 + v7 + 8 + 20))
			end

			v4:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn36)
			fn3(fn36)
		end

		local function fn36(arg3, arg4, arg5)
			if arg4 then
				fn17(frame2, { Size = UDim2.new(arg3, 0, 1, 0) }, arg5 or 0.16)
				fn17(frame3, { Position = UDim2.new(arg3, 0, 0.5, 0) }, arg5 or 0.16)
			else
				frame2.Size = UDim2.new(arg3, 0, 1, 0)
				frame3.Position = UDim2.new(arg3, 0, 0.5, 0)
			end
		end

		local v6 = fn7(n6, v3, n4)
		local v7 = v6
		local v8 = fn5()

		local function fn37(arg3)
			if tbl6.Callback then
				fn2(tbl6.Callback, arg3)
			end

			v8.Fire(arg3)
		end

		local function fn38()
			textLabel2.Text = fn9(n6) .. (tbl6.Suffix or "")
		end

		local fn39 = nil

		if not flag and tbl6.ValueInput ~= false then
			local textBox = Instance.new("TextBox")
			textBox.Name = "ValueInput"
			textBox.BackgroundColor3 = index.Theme.Glass
			textBox.BackgroundTransparency = 0.92
			textBox.BorderSizePixel = 0
			textBox.ClearTextOnFocus = false
			textBox.FontFace = index.Theme.FontRegular
			textBox.Text = ""
			textBox.PlaceholderText = ""
			textBox.TextColor3 = index.Theme.Text
			fn18(textBox, "Text")
			textBox.TextSize = 13
			textBox.TextXAlignment = Enum.TextXAlignment.Center
			textBox.AnchorPoint = Vector2.new(1, 0)
			textBox.Position = UDim2.new(1, -12, 0, 6)
			textBox.Size = UDim2.fromOffset(54, 22)
			textBox.Visible = false
			textBox.ZIndex = textLabel2.ZIndex + 2
			textBox.Parent = v4
			createUICorner(textBox, 6)
			local v9 = createUIStroke(textBox, index.Theme.Accent, 1, 0.4)
			local textButton = Instance.new("TextButton")
			textButton.Name = "ValueClick"
			textButton.Text = ""
			textButton.AutoButtonColor = false
			textButton.BackgroundColor3 = index.Theme.Glass
			textButton.BackgroundTransparency = 1
			textButton.BorderSizePixel = 0
			textButton.AnchorPoint = textBox.AnchorPoint
			textButton.Position = textBox.Position
			textButton.Size = textBox.Size
			textButton.ZIndex = textLabel2.ZIndex + 1
			textButton.Parent = v4
			createUICorner(textButton, 6)
			textLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
			textLabel2.Position = UDim2.new(1, -39, 0, 17)
			textLabel2.Size = UDim2.fromOffset(54, 22)
			textLabel2.TextXAlignment = Enum.TextXAlignment.Center

			local function fn40(arg3)
				if not textBox.Visible then
					return
				end
				local v10 = tonumber
				local str2 = textBox.Text:gsub("[^%-%d%.]", "")
				local v11 = v10(str2)
				textBox.Visible = false
				textButton.Visible = true
				textLabel2.Visible = true

				if arg3 and v11 then
					fn39(v11, true)
					fn37(n6)
				end
			end

			janitor:Add(textButton.MouseButton1Click:Connect(function()
				if textBox.Visible or tbl6.ReadOnly then
					return
				end
				textLabel2.Visible = false
				textButton.Visible = false
				textBox.Visible = true
				textBox.Text = fn9(n6)
				v9.Color = index.Theme.Accent
				textBox:CaptureFocus()
				textBox.CursorPosition = #textBox.Text + 1
				textBox.SelectionStart = 1
			end))

			janitor:Add(textButton.MouseEnter:Connect(function()
				fn17(textButton, { BackgroundTransparency = 0.93 }, tbl2.Fast)
				fn17(textLabel2, { TextColor3 = index.Theme.Text }, tbl2.Fast)
			end))

			janitor:Add(textButton.MouseLeave:Connect(function()
				fn17(textButton, { BackgroundTransparency = 1 }, tbl2.Fast)
				fn17(textLabel2, { TextColor3 = index.Theme.TextDim }, tbl2.Fast)
			end))

			janitor:Add(textBox.FocusLost:Connect(function(enterPressed)
				fn40(enterPressed ~= false)
			end))
		end

		fn39 = function(arg3, arg4)
			n6 = math.clamp(arg3, v3, n4)

			if n5 and n5 > 0 then
				n6 = math.clamp(v3 + math.floor((n6 - v3) / n5 + 0.5) * n5, v3, n4)
			end

			local v9 = fn7(n6, v3, n4)
			v6 = v9
			v7 = v9
			fn38()
			fn36(v9, arg4 ~= false, 0.18)
		end

		error("devirt: value <luasym.LuaFunc object at 0x000001808E0ECA60> in an expression (at 207:739)")
	end

	local function fn36(arg, arg2, arg3, arg4, arg5)
		local v3 = fn23()
		local n3 = arg3 * v3
		local n4 = arg4 * v3
		local v4 = fn22()
		local absolutePosition = arg5 and arg5.AbsolutePosition or arg.AbsolutePosition
		arg5 = arg5 and arg5.AbsoluteSize or arg.AbsoluteSize
		local absolutePosition2 = arg2.AbsolutePosition
		local absoluteSize = arg2.AbsoluteSize
		local n5 = 8 * v3
		local n6 = absolutePosition.X + n5
		local n7 = absolutePosition.X + arg5.X - n3 - n5
		local n8

		if n7 < n6 then
			n8 = absolutePosition.X + (arg5.X - n3) / 2
		else
			n8 = fn6(absolutePosition2.X + absoluteSize.X - n3 + 2 * v3, n6, n7)
		end

		local n9 = absolutePosition.Y + n5
		local n10 = absolutePosition.Y + arg5.Y - n5
		local n11 = absolutePosition2.Y + absoluteSize.Y / 2 - n4 / 2

		if n11 < n9 then
			n11 = n9
		end

		if n10 < n11 + n4 then
			n11 = n10 - n4
		end

		if not (n11 < n9) then
			n9 = n11
		end

		local v5 = fn6(n8, 8, math.max(8, v4.X - n3 - 8))
		local v6 = fn6(n9, 8, math.max(8, v4.Y - n4 - 8))
		return math.round(v5 / v3), math.round(v6 / v3)
	end

	index3.AddDropdown = function(arg, arg2)
		local tbl6 = arg2 or {}
		local v3 = arg
		local options = tbl6.Options or {}
		local flag5 = tbl6.MultiSelect == true
		local n3 = tbl6.Description and tbl6.Description ~= "" and 54 or 40
		local janitor = arg._janitor
		local tbl7

		if flag5 then
			tbl7 = {}

			if type(tbl6.Default) == "table" then
				for _, v4 in ipairs(tbl6.Default) do
					tbl7[v4] = true
				end
			end
		else
			tbl7 = tbl6.Default or options[1]
		end

		local v4 = fn5()

		local function fn37(arg3)
			if tbl6.Callback then
				fn2(tbl6.Callback, arg3)
			end

			v4.Fire(arg3)
		end

		local function fn38()
			local tbl8 = {}

			for _, option in ipairs(options) do
				if flag5 and tbl7[option] then
					table.insert(tbl8, option)
				end
			end

			return tbl8
		end

		local function fn39(arg3)
			if flag5 then
				return tbl7[arg3] == true
			end
			return arg3 == tbl7
		end

		local function fn40()
			if flag5 then
				local v5 = fn38()
				if #v5 == 0 then
					return "None"
				end

				if #v5 == 1 then
					return v5[1]
				end
				return #v5 .. " selected"
			end

			return tostring(tbl7 or "None")
		end

		local v5 = createFrame3(arg._page, n3)
		fn28(v5, fn27(v5, tbl6.Icon, n3), 166, tbl6.Text or "Dropdown", tbl6.Description, n3)
		arg._window:_RegisterSearchable(arg, tbl6.Text or "Dropdown", v5)
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = fn40()
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 13
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.TextXAlignment = Enum.TextXAlignment.Right
		textLabel.AnchorPoint = Vector2.new(1, 0.5)
		textLabel.Position = UDim2.new(1, -34, 0.5, 0)
		textLabel.Size = UDim2.fromOffset(120, n3)
		textLabel.ZIndex = tbl.Content + 1
		textLabel.Parent = v5
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21("chevron-down")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(14, 14)
		imageLabel.AnchorPoint = Vector2.new(1, 0.5)
		imageLabel.Position = UDim2.new(1, -14, 0.5, 0)
		imageLabel.ZIndex = tbl.Content + 1
		imageLabel.Parent = v5
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Content + 3
		textButton.Parent = v5
		local flag6 = false
		local canvasGroup = nil
		local v6 = nil
		local v7 = nil
		local v8 = nil
		local tbl8 = {}
		local fn41 = nil

		fn41 = function()
			if not flag6 then
				return
			end
			flag6 = false
			fn25(fn41)
			fn17(imageLabel, { Rotation = 0 }, 0.18)

			if v7 then
				v7:Disconnect()
				v7 = nil
			end

			if v8 then
				v8:Disconnect()
				v8 = nil
			end

			table.clear(tbl8)

			if v6 then
				v6:Destroy()
				v6 = nil
			end

			if canvasGroup then
				local v9 = canvasGroup
				canvasGroup = nil
				fn17(v9, { Size = UDim2.new(0, v9.Size.X.Offset, 0, 0) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
				fn17(v9, { BackgroundTransparency = 1 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

				fn4(0.4, function()
					if v9 then
						v9:Destroy()
					end
				end)
			end
		end

		local function fn42(arg3)
			local v9 = tbl8[arg3]
			if not v9 then
				return
			end
			local v10 = fn39(arg3)
			fn17(v9.button, { BackgroundTransparency = v10 and 0.9 or 1 }, 0.12)
			fn17(v9.label, { TextColor3 = v10 and index.Theme.Text or index.Theme.TextDim }, 0.12)

			if v9.check then
				v9.check:SetAttribute("NullUIRole", v10 and "Accent" or nil)
				obj2[v9.check] = v10 and "Accent" or nil

				fn17(v9.check, {
					BackgroundColor3 = v10 and index.Theme.Accent or Color3.new(1, 1, 1),
					BackgroundTransparency = v10 and 0 or 0.9,
				}, 0.12)
			end

			if v9.checkIcon then
				fn17(v9.checkIcon, { ImageTransparency = v10 and 0 or 1 }, 0.12)
			end
		end

		local function fn43()
			if flag6 then
				return
			end
			flag6 = true
			fn24(fn41)
			fn17(imageLabel, { Rotation = 180 }, 0.18)
			local root = index._Root
			local gui = arg._window and arg._window._gui or root
			local content = arg._window and arg._window._content
			local n4 = (content and content.AbsoluteSize.Y or gui.AbsoluteSize.Y) / fn23()
			local n5 = (content and content.AbsoluteSize.X or gui.AbsoluteSize.X) / fn23()
			local n6 = flag and 34 or 30
			local n7 = #options * n6 + math.max(#options - 1, 0) * 2 + 12
			local n8 = math.max(n6 * 3 + 12, n4 * (flag and 0.58 or 0.78))
			local n9 = math.min(n7, flag and 190 or 220, math.max(1, (fn22().Y - 16) / fn23()), n8)
			local n10 = flag5 and 44 or 34
			local n11 = flag and 150 or 132

			for _, option in ipairs(options) do
				n11 = math.max(n11, fn20(tostring(option), 13, 1000) + n10 + 22)
			end

			local n12 = math.min(n11, fn22().X / fn23() - 24, math.max(132, n5 - 8))
			v6 = createTextButton(fn41)
			canvasGroup = Instance.new("CanvasGroup")
			canvasGroup.Name = "DropdownPopup"
			canvasGroup.Active = true
			canvasGroup.BackgroundColor3 = index.Theme.Surface
			canvasGroup.BackgroundTransparency = 1
			canvasGroup.BorderSizePixel = 0
			canvasGroup.ZIndex = tbl.Popup
			canvasGroup.Size = UDim2.new(0, n12, 0, 0)
			canvasGroup.Parent = root
			createUICorner(canvasGroup, 10)
			local v9 = createUIStroke(canvasGroup, index.Theme.Glass, 1, 0.86)
			createFrame(canvasGroup, 10, 0.96)
			local v10, v11 = fn36(gui, v5, n12, n9, arg._window and arg._window._content)
			canvasGroup.Position = UDim2.fromOffset(v10, v11)
			local scrollingFrame = Instance.new("ScrollingFrame")
			scrollingFrame.Name = "Options"
			scrollingFrame.BackgroundTransparency = 1
			scrollingFrame.BorderSizePixel = 0
			scrollingFrame.Size = UDim2.fromScale(1, 1)
			scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
			scrollingFrame.ScrollBarThickness = 0
			scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
			scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
			scrollingFrame.ZIndex = tbl.Popup + 1
			scrollingFrame.Parent = canvasGroup
			local uiPadding = Instance.new("UIPadding")
			uiPadding.PaddingTop = UDim.new(0, 6)
			uiPadding.PaddingBottom = UDim.new(0, 6)
			uiPadding.PaddingLeft = UDim.new(0, 6)
			uiPadding.PaddingRight = UDim.new(0, 16)
			uiPadding.Parent = scrollingFrame
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.Padding = UDim.new(0, 2)
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Parent = scrollingFrame
			fn19(scrollingFrame)

			createFrame2(scrollingFrame, uiListLayout, canvasGroup, { Add = function(arg3, arg4)
				v8 = arg4
			end })

			for i, option in ipairs(options) do
				local textButton2 = Instance.new("TextButton")
				textButton2.Text = ""
				textButton2.AutoButtonColor = false
				textButton2.BackgroundColor3 = Color3.new(1, 1, 1)
				textButton2.BackgroundTransparency = fn39(option) and 0.9 or 1
				textButton2.BorderSizePixel = 0
				textButton2.Size = UDim2.new(1, 0, 0, n6)
				textButton2.LayoutOrder = i
				textButton2.ZIndex = tbl.Popup + 2
				textButton2.Parent = scrollingFrame
				createUICorner(textButton2, 8)
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.BackgroundTransparency = 1
				textLabel2.FontFace = index.Theme.FontRegular
				textLabel2.Text = tostring(option)
				textLabel2.TextColor3 = fn39(option) and index.Theme.Text or index.Theme.TextDim
				textLabel2.TextSize = 13
				textLabel2.TextXAlignment = Enum.TextXAlignment.Left
				textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel2.Position = UDim2.fromOffset(10, 0)
				textLabel2.Size = UDim2.new(1, -(flag5 and 44 or 34), 1, 0)
				textLabel2.ZIndex = tbl.Popup + 3
				textLabel2.Parent = textButton2
				local tbl9 = { button = textButton2, label = textLabel2 }

				if flag5 then
					local frame = Instance.new("Frame")
					frame.Name = "Check"
					frame.AnchorPoint = Vector2.new(1, 0.5)
					frame.Position = UDim2.new(1, -10, 0.5, 0)
					frame.Size = UDim2.fromOffset(14, 14)
					frame.BackgroundColor3 = fn39(option) and index.Theme.Accent or Color3.new(1, 1, 1)
					frame.BackgroundTransparency = fn39(option) and 0 or 0.9
					frame:SetAttribute("NullUIAccent", true)
					frame.BorderSizePixel = 0
					frame.ZIndex = tbl.Popup + 3
					frame.Parent = textButton2
					createUICorner(frame, 4)
					createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.75)
					local imageLabel2 = Instance.new("ImageLabel")
					imageLabel2.Name = "Icon"
					imageLabel2.BackgroundTransparency = 1
					imageLabel2.Image = fn21("check")
					imageLabel2.ImageColor3 = index.Theme.Background
					fn18(imageLabel2, "Background")
					imageLabel2.ImageTransparency = fn39(option) and 0 or 1
					imageLabel2.Size = UDim2.fromOffset(10, 10)
					imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
					imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
					imageLabel2.ZIndex = tbl.Popup + 4
					imageLabel2.Parent = frame
					tbl9.check = frame
					tbl9.checkIcon = imageLabel2
				elseif fn39(option) then
					local imageLabel2 = Instance.new("ImageLabel")
					imageLabel2.Name = "SingleCheck"
					imageLabel2.BackgroundTransparency = 1
					imageLabel2.Image = fn21("check")
					imageLabel2.ImageColor3 = index.Theme.Text
					fn18(imageLabel2, "Text")
					imageLabel2.Size = UDim2.fromOffset(14, 14)
					imageLabel2.AnchorPoint = Vector2.new(1, 0.5)
					imageLabel2.Position = UDim2.new(1, -10, 0.5, 0)
					imageLabel2.ZIndex = tbl.Popup + 3
					imageLabel2.Parent = textButton2
				end

				tbl8[option] = tbl9

				textButton2.MouseEnter:Connect(function()
					if not fn39(option) then
						fn17(textButton2, { BackgroundTransparency = 0.85 }, 0.12)
					end
				end)

				textButton2.MouseLeave:Connect(function()
					if not fn39(option) then
						fn17(textButton2, { BackgroundTransparency = 1 }, 0.12)
					end
				end)

				textButton2.MouseButton1Click:Connect(function()
					if flag5 then
						tbl7[option] = not tbl7[option] or nil
						fn42(option)
						textLabel.Text = fn40()
						fn37(fn38())
					else
						tbl7 = option
						textLabel.Text = fn40()
						fn37(option)
						fn41()
					end
				end)
			end

			fn17(canvasGroup, { Size = UDim2.new(0, n12, 0, n9), BackgroundTransparency = 0.06 }, tbl2.Slow, tbl2.Style, tbl2.Direction)
			fn17(v9, { Transparency = 0.7 }, tbl2.Normal, tbl2.Style, tbl2.Direction)
			error("devirt: value <luasym.LuaFunc object at 0x000001808D14AB90> in an expression (at 207:489)")
		end

		textButton.MouseButton1Click:Connect(function()
			if flag6 then
				fn41()
			else
				fn43()
			end
		end)

		v5.MouseEnter:Connect(function()
			fn17(v5, { BackgroundTransparency = 0.93 }, 0.18)
		end)

		v5.MouseLeave:Connect(function()
			fn17(v5, { BackgroundTransparency = 0.96 }, 0.18)
		end)

		return fn30(tbl6, {
			Instance = v5,
			Set = function(arg3, arg4, arg5)
				if flag5 then
					tbl7 = {}

					if type(arg4) == "table" then
						for _, v9 in ipairs(arg4) do
							tbl7[v9] = true
						end
					end
				else
					tbl7 = arg4
				end

				textLabel.Text = fn40()

				for k in pairs(tbl8) do
					fn42(k)
				end

				if not arg5 then
					fn37(flag5 and fn38() or tbl7)
				end
			end,
			Get = function()
				if flag5 then
					return fn38()
				end
				return tbl7
			end,
			SetOptions = function(arg3, arg4)
				options = arg4 or {}
				fn41()
				textLabel.Text = fn40()
			end,
			Refresh = function(arg3, arg4)
				options = arg4 or options
				fn41()
				textLabel.Text = fn40()
			end,
			OnChanged = function(arg3, arg4)
				return v4.Connect(arg4)
			end,
			Destroy = function()
				fn41()
				v4.Clear()
				v5:Destroy()
			end,
		}, "Dropdown")
	end

	index3.AddTextbox = function(arg, arg2)
		local tbl6 = arg2 or {}
		local n3 = tbl6.Description and tbl6.Description ~= "" and 54 or 40
		local v3 = createFrame3(arg._page, n3)
		local v4 = fn27(v3, tbl6.Icon, n3)
		local n4 = 29
		local n5 = 12
		local n6 = 116
		local v5 = fn28

		local function fn37()
			return n6
		end

		local v6, v7, v8 = v5(v3, v4, fn37, tbl6.Text or "Textbox", tbl6.Description, n3)
		arg._window:_RegisterSearchable(arg, tbl6.Text or "Textbox", v3)
		local frame = Instance.new("Frame")
		frame.AnchorPoint = Vector2.new(1, 0.5)
		frame.Position = UDim2.new(1, -14, 0.5, 0)
		frame.Size = UDim2.fromOffset(90, 26)
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.9
		frame.BorderSizePixel = 0
		frame.ZIndex = tbl.Content + 2
		frame.Parent = v3
		createUICorner(frame, 8)
		local v9 = createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.88)
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21("pencil")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(13, 13)
		imageLabel.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel.Position = UDim2.new(0, 10, 0.5, 0)
		imageLabel.ZIndex = tbl.Content + 3
		imageLabel.Parent = frame
		local textBox = Instance.new("TextBox")
		textBox.ClearTextOnFocus = false
		textBox.FontFace = index.Theme.FontRegular
		textBox.PlaceholderText = tbl6.Placeholder or ""
		textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 122)
		textBox.Text = tbl6.Default or ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.TextSize = 13
		textBox.TextXAlignment = Enum.TextXAlignment.Left
		textBox.TextYAlignment = Enum.TextYAlignment.Center
		textBox.TextTruncate = Enum.TextTruncate.AtEnd
		textBox.ClipsDescendants = true
		textBox.BackgroundTransparency = 1
		textBox.Position = UDim2.fromOffset(29, 0)
		textBox.Size = UDim2.new(1, -(n4 + 10), 1, 0)
		textBox.ZIndex = tbl.Content + 3
		textBox.Parent = frame
		local n7 = 90

		local function fn38(arg3)
			local n8 = n4 + fn20(textBox.Text ~= "" and textBox.Text or textBox.PlaceholderText, 13, 2000) + n5
			local n9 = math.max(90, math.floor((v3.AbsoluteSize.X > 0 and v3.AbsoluteSize.X or 400) / fn23() * 0.5))
			local n10 = math.clamp(n8, 90, n9)
			if math.abs(n10 - n7) < 1 then
				return
			end
			n7 = n10
			n6 = n10 + 26
			v8()

			if arg3 == false then
				frame.Size = UDim2.fromOffset(n10, 26)
			else
				fn17(frame, { Size = UDim2.fromOffset(n10, 26) }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
			end
		end

		textBox:GetPropertyChangedSignal("Text"):Connect(function()
			fn38(true)
		end)

		v3:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			fn38(false)
		end)

		fn3(function()
			fn38(false)
		end)

		local textButton = Instance.new("TextButton")
		textButton.Name = "CardFocus"
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Content + 1
		textButton.Parent = v3

		arg._janitor:Add(textButton.MouseButton1Click:Connect(function()
			if textBox.Parent then
				textBox:CaptureFocus()
			end
		end))

		arg._janitor:Add(textBox.Focused:Connect(function()
			fn17(v9, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
			fn17(frame, { BackgroundTransparency = 0.82 }, 0.18)
		end))

		local v10 = fn5()

		local function fn39(arg3, arg4)
			if tbl6.Callback then
				fn2(tbl6.Callback, arg3, arg4)
			end

			v10.Fire(arg3, arg4)
		end

		arg._janitor:Add(textBox.FocusLost:Connect(function(enterPressed)
			fn17(v9, { Color = Color3.new(1, 1, 1), Transparency = 0.88 }, 0.18)
			fn17(frame, { BackgroundTransparency = 0.9 }, 0.18)
			fn39(textBox.Text, enterPressed)
		end))

		return fn30(tbl6, {
			Instance = v3,
			Set = function(arg3, arg4, arg5)
				textBox.Text = tostring(arg4 or "")
				fn38()

				if not arg5 then
					fn39(textBox.Text, false)
				end
			end,
			Get = function()
				return textBox.Text
			end,
			OnChanged = function(arg3, arg4)
				return v10.Connect(arg4)
			end,
			Destroy = function()
				v10.Clear()
				v3:Destroy()
			end,
		}, "Textbox")
	end

	local function fn37(parent, text, arg, arg2)
		local popup = arg2 or tbl.Popup
		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.fromOffset(arg, 36)
		frame.ZIndex = popup + 1
		frame.Parent = parent
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = text
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 11
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.Size = UDim2.new(1, 0, 0, 12)
		textLabel.ZIndex = popup + 2
		textLabel.Parent = frame
		local frame2 = Instance.new("Frame")
		frame2.Position = UDim2.fromOffset(0, 12)
		frame2.Size = UDim2.new(1, 0, 0, 24)
		frame2.BackgroundColor3 = Color3.new(1, 1, 1)
		frame2.BackgroundTransparency = 0.92
		frame2.BorderSizePixel = 0
		frame2.ZIndex = popup + 2
		frame2.Parent = frame
		createUICorner(frame2, 7)
		local v3 = createUIStroke(frame2, Color3.new(1, 1, 1), 1, 0.88)
		local textBox = Instance.new("TextBox")
		textBox.ClearTextOnFocus = false
		textBox.FontFace = index.Theme.FontRegular
		textBox.Text = ""
		textBox.TextColor3 = index.Theme.Text
		fn18(textBox, "Text")
		textBox.TextSize = 13
		textBox.TextXAlignment = Enum.TextXAlignment.Center
		textBox.TextYAlignment = Enum.TextYAlignment.Center
		textBox.BackgroundTransparency = 1
		textBox.Size = UDim2.fromScale(1, 1)
		textBox.ZIndex = popup + 3
		textBox.Parent = frame2

		textBox.Focused:Connect(function()
			fn17(v3, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
			fn17(frame2, { BackgroundTransparency = 0.84 }, 0.18)
		end)

		textBox.FocusLost:Connect(function()
			fn17(v3, { Color = Color3.new(1, 1, 1), Transparency = 0.88 }, 0.18)
			fn17(frame2, { BackgroundTransparency = 0.92 }, 0.18)
		end)

		return frame, textBox
	end

	index3.AddColorPicker = function(arg, arg2)
		local tbl6 = arg2 or {}
		local n3 = tbl6.Description and tbl6.Description ~= "" and 54 or 40
		local v3 = createFrame3(arg._page, n3)
		fn28(v3, fn27(v3, tbl6.Icon, n3), 52, tbl6.Text or "Color", tbl6.Description, n3)
		arg._window:_RegisterSearchable(arg, tbl6.Text or "Color", v3)
		local default = tbl6.Default or Color3.fromRGB(255, 255, 255)
		local color, v4, v5 = Color3.toHSV(default)
		local frame = Instance.new("Frame")
		frame.AnchorPoint = Vector2.new(1, 0.5)
		frame.Position = UDim2.new(1, -14, 0.5, 0)
		frame.Size = UDim2.fromOffset(24, 24)
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.9
		frame.BorderSizePixel = 0
		frame.ZIndex = tbl.Content + 1
		frame.Parent = v3
		createUICorner(frame, 6)
		local v6 = createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.85)
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		frame2.Position = UDim2.fromScale(0.5, 0.5)
		frame2.Size = UDim2.fromOffset(16, 16)
		frame2.BackgroundColor3 = default
		frame2.BorderSizePixel = 0
		frame2.ZIndex = tbl.Content + 2
		frame2.Parent = frame
		createUICorner(frame2, 4)
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Content + 3
		textButton.Parent = v3
		local flag5 = false
		local v7 = nil
		local v8 = nil
		local v9 = nil
		local v10 = nil
		local v11 = nil
		local v12 = nil
		local v13 = nil
		local v14 = nil
		local v15 = nil
		local v16 = nil
		local v17 = nil
		local v18 = nil
		local flag6 = false
		local flag7 = false
		local v19 = nil

		local function fn38()
			return Color3.fromHSV(color, v4, v5)
		end

		local function fn39()
			if v10 then
				v10.Position = UDim2.new(v4, 0, 1 - v5, 0)
			end

			if v11 then
				v11.Position = UDim2.new(color, 0, 0.5, 0)
			end

			if v12 then
				v12.BackgroundColor3 = Color3.new(1, 1, 1)
			end

			if v14 then
				local color2 = Color3.fromHSV
				v14.Color = ColorSequence.new(Color3.new(1, 1, 1), color2(color, 1, 1))
			end

			local v20 = fn38()
			local n4 = math.floor(v20.R * 255 + 0.5)
			local n5 = math.floor(v20.G * 255 + 0.5)
			local n6 = math.floor(v20.B * 255 + 0.5)

			if v15 and not v15:IsFocused() then
				v15.Text = "#" .. v20:ToHex():upper()
			end

			if v16 and not v16:IsFocused() then
				v16.Text = tostring(n4)
			end

			if v17 and not v17:IsFocused() then
				v17.Text = tostring(n5)
			end

			if v18 and not v18:IsFocused() then
				v18.Text = tostring(n6)
			end
		end

		local v20 = fn5()
		local v21 = nil

		local function fn40(arg3, arg4)
			if arg3 == nil or arg4 == nil then
				return false
			end
			return math.abs(arg3.R - arg4.R) < 0.001 and math.abs(arg3.G - arg4.G) < 0.001 and math.abs(arg3.B - arg4.B) < 0.001
		end

		local function fn41(arg3)
			local v22 = fn38()
			frame2.BackgroundColor3 = v22
			fn39()

			if arg3 then
				if not fn40(v22, v21) then
					v21 = v22

					if tbl6.Callback then
						fn2(tbl6.Callback, v22)
					end

					v20.Fire(v22)
				end
			end
		end

		local fn42 = nil

		fn42 = function()
			if not flag5 then
				return
			end
			flag5 = false
			flag6 = false
			flag7 = false
			v19 = nil
			fn25(fn42)
			fn17(v6, { Color = Color3.new(1, 1, 1), Transparency = 0.85 }, 0.18)

			if v9 then
				v9:Disconnect()
				v9 = nil
			end

			if v8 then
				v8:Destroy()
				v8 = nil
			end

			if v7 then
				local v22 = v7
				v7 = nil
				v10 = nil
				v11 = nil
				v12 = nil
				v13 = nil
				v14 = nil
				v15 = nil
				v16 = nil
				v17 = nil
				v18 = nil
				fn17(v22, { Size = UDim2.new(0, v22.Size.X.Offset, 0, 0) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
				fn17(v22, { BackgroundTransparency = 1 }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

				fn4(0.4, function()
					if v22 then
						v22:Destroy()
					end
				end)
			end
		end

		error("devirt: value <luasym.LuaFunc object at 0x0000018082F6B280> in an expression (at 207:157)")
	end

	index3.AddKeybind = function(arg, arg2)
		local tbl6 = arg2 or {}
		local n3 = tbl6.Description and tbl6.Description ~= "" and 54 or 40
		local janitor = arg._janitor
		local v3 = createFrame3(arg._page, n3)
		fn28(v3, fn27(v3, tbl6.Icon, n3), 128, tbl6.Text or "Keybind", tbl6.Description, n3)
		arg._window:_RegisterSearchable(arg, tbl6.Text or "Keybind", v3)
		local default = tbl6.Default
		local frame = Instance.new("Frame")
		frame.AnchorPoint = Vector2.new(1, 0.5)
		frame.Position = UDim2.new(1, -14, 0.5, 0)
		frame.Size = UDim2.fromOffset(104, 26)
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.9
		frame.BorderSizePixel = 0
		frame.ZIndex = tbl.Content + 2
		frame.Parent = v3
		createUICorner(frame, 8)
		local v4 = createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.88)
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = fn21("keyboard")
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(13, 13)
		imageLabel.AnchorPoint = Vector2.new(0, 0.5)
		imageLabel.Position = UDim2.new(0, 10, 0.5, 0)
		imageLabel.ZIndex = tbl.Content + 3
		imageLabel.Parent = frame
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.Text = default and default.Name or "None"
		textLabel.TextColor3 = index.Theme.Text
		fn18(textLabel, "Text")
		textLabel.TextSize = 13
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.Position = UDim2.fromOffset(29, 0)
		textLabel.Size = UDim2.new(1, -37, 1, 0)
		textLabel.ZIndex = tbl.Content + 3
		textLabel.Parent = frame
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Size = UDim2.fromScale(1, 1)
		textButton.ZIndex = tbl.Content + 4
		textButton.Parent = frame
		local flag5 = false
		local connection = nil
		local v5 = fn5()

		local function fn38(arg3)
			v5.Fire(arg3)
		end

		local function fn39()
			flag5 = false
			flag4 = false

			if connection then
				connection:Disconnect()
				connection = nil
			end

			fn17(v4, { Color = Color3.new(1, 1, 1), Transparency = 0.88 }, 0.18)
			fn17(frame, { BackgroundTransparency = 0.9 }, 0.18)
			textLabel.Text = default and default.Name or "None"
		end

		textButton.MouseButton1Click:Connect(function()
			if flag5 then
				return
			end
			flag5 = true
			flag4 = true
			textLabel.Text = "..."
			fn17(v4, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
			fn17(frame, { BackgroundTransparency = 0.82 }, 0.18)

			connection = UserInputService.InputBegan:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.Keyboard then
					return
				end

				if input.KeyCode == Enum.KeyCode.Escape then
					fn39()
					return
				end

				if input.KeyCode == Enum.KeyCode.Backspace or input.KeyCode == Enum.KeyCode.Delete then
					default = nil
					fn39()
					fn38(nil)
					return
				end

				default = input.KeyCode
				fn39()

				if tbl6.Callback then
					fn2(tbl6.Callback, default, "bind")
				end

				fn38(default)
			end)

			janitor:Add(connection)
		end)

		janitor:Add(UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if flag5 or flag4 or gameProcessed then
				return
			end

			if UserInputService:GetFocusedTextBox() then
				return
			end

			if default and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == default then
				if tbl6.Callback then
					fn2(tbl6.Callback, default, "press")
				end
			end
		end))

		v3.MouseEnter:Connect(function()
			fn17(v3, { BackgroundTransparency = 0.93 }, 0.18)
		end)

		v3.MouseLeave:Connect(function()
			fn17(v3, { BackgroundTransparency = 0.96 }, 0.18)
		end)

		return fn30(tbl6, {
			Instance = v3,
			Set = function(arg3, arg4, arg5)
				default = arg4
				textLabel.Text = arg4 and arg4.Name or "None"

				if not arg5 then
					fn38(arg4)
				end
			end,
			Get = function()
				return default
			end,
			OnChanged = function(arg3, arg4)
				return v5.Connect(arg4)
			end,
			Destroy = function()
				fn39()
				v5.Clear()
				v3:Destroy()
			end,
		}, "Keybind")
	end
end

local tbl3 = {
	[Enum.MessageType.MessageInfo] = Color3.fromRGB(120, 170, 255),
	[Enum.MessageType.MessageWarning] = Color3.fromRGB(255, 190, 90),
	[Enum.MessageType.MessageError] = Color3.fromRGB(255, 105, 105),
	[Enum.MessageType.MessageOutput] = nil,
}

index3.AddConsole = function(arg, arg2)
	local tbl4 = arg2 or {}
	local height = tbl4.Height or 200
	local maxLogs = tbl4.MaxLogs or 300
	local janitor = arg._janitor
	local frame = Instance.new("Frame")
	frame.Name = "Console"
	frame.BackgroundColor3 = index.Theme.Surface
	frame.BackgroundTransparency = 0.35
	frame.BorderSizePixel = 0
	frame.ClipsDescendants = true
	frame.Size = UDim2.new(1, 0, 0, height)
	frame.ZIndex = tbl.Content
	frame.Parent = arg._page
	createUICorner(frame, index.Theme.CornerRadiusSm)
	createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.92)
	local frame2 = Instance.new("Frame")
	frame2.Name = "Header"
	frame2.BackgroundTransparency = 1
	frame2.Size = UDim2.new(1, 0, 0, 34)
	frame2.ZIndex = tbl.Content + 1
	frame2.Parent = frame
	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingLeft = UDim.new(0, 12)
	uiPadding.PaddingRight = UDim.new(0, 8)
	uiPadding.Parent = frame2
	local frame3 = Instance.new("Frame")
	frame3.BackgroundTransparency = 1
	frame3.Size = UDim2.new(1, -70, 1, 0)
	frame3.ZIndex = tbl.Content + 2
	frame3.Parent = frame2
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.FillDirection = Enum.FillDirection.Horizontal
	uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uiListLayout.Padding = UDim.new(0, 7)
	uiListLayout.Parent = frame3
	local imageLabel = Instance.new("ImageLabel")
	imageLabel.BackgroundTransparency = 1
	imageLabel.Image = fn21("terminal")
	imageLabel.ImageColor3 = index.Theme.TextDim
	fn18(imageLabel, "TextDim")
	imageLabel.Size = UDim2.fromOffset(14, 14)
	imageLabel.LayoutOrder = 1
	imageLabel.ZIndex = tbl.Content + 3
	imageLabel.Parent = frame3
	local textLabel = Instance.new("TextLabel")
	textLabel.BackgroundTransparency = 1
	textLabel.FontFace = index.Theme.Font
	textLabel.Text = tbl4.Title or "Debug Console"
	textLabel.TextColor3 = index.Theme.Text
	fn18(textLabel, "Text")
	textLabel.TextSize = 13
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextTruncate = Enum.TextTruncate.AtEnd
	textLabel.AutomaticSize = Enum.AutomaticSize.X
	textLabel.Size = UDim2.fromOffset(0, 14)
	textLabel.LayoutOrder = 2
	textLabel.ZIndex = tbl.Content + 3
	textLabel.Parent = frame3
	local frame4 = Instance.new("Frame")
	frame4.BackgroundTransparency = 1
	frame4.AnchorPoint = Vector2.new(1, 0.5)
	frame4.Position = UDim2.new(1, 0, 0.5, 0)
	frame4.Size = UDim2.fromOffset(58, 24)
	frame4.ZIndex = tbl.Content + 2
	frame4.Parent = frame2
	local uiListLayout2 = Instance.new("UIListLayout")
	uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
	uiListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
	uiListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
	uiListLayout2.Padding = UDim.new(0, 4)
	uiListLayout2.Parent = frame4

	local function fn29(arg3, layoutOrder)
		local textButton = Instance.new("TextButton")
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundColor3 = Color3.new(1, 1, 1)
		textButton.BackgroundTransparency = 1
		textButton.BorderSizePixel = 0
		textButton.Size = UDim2.fromOffset(24, 24)
		textButton.LayoutOrder = layoutOrder
		textButton.ZIndex = tbl.Content + 3
		textButton.Parent = frame4
		createUICorner(textButton, 7)
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.Image = fn21(arg3)
		imageLabel2.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel2, "TextDim")
		imageLabel2.Size = UDim2.fromOffset(13, 13)
		imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
		imageLabel2.ZIndex = tbl.Content + 4
		imageLabel2.Parent = textButton

		janitor:Add(textButton.MouseEnter:Connect(function()
			fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
			fn17(imageLabel2, { ImageColor3 = index.Theme.Text }, 0.12)
		end))

		janitor:Add(textButton.MouseLeave:Connect(function()
			fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
			fn17(imageLabel2, { ImageColor3 = index.Theme.TextDim }, 0.12)
		end))

		return textButton, imageLabel2
	end

	local copy, v = fn29("copy", 1)
	fn29("trash-2", 2)
	local frame5 = Instance.new("Frame")
	frame5.BackgroundColor3 = Color3.new(1, 1, 1)
	frame5.BackgroundTransparency = 0.92
	frame5.BorderSizePixel = 0
	frame5.Size = UDim2.new(1, 0, 0, 1)
	frame5.Position = UDim2.fromOffset(0, 34)
	frame5.ZIndex = tbl.Content + 1
	frame5.Parent = frame
	local scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.Name = "Logs"
	scrollingFrame.BackgroundTransparency = 1
	scrollingFrame.BorderSizePixel = 0
	scrollingFrame.Position = UDim2.fromOffset(0, 35)
	scrollingFrame.Size = UDim2.new(1, 0, 1, -35)
	scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
	scrollingFrame.ScrollBarThickness = 0
	scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	scrollingFrame.ZIndex = tbl.Content + 1
	scrollingFrame.Parent = frame
	local uiPadding2 = Instance.new("UIPadding")
	uiPadding2.PaddingTop = UDim.new(0, 8)
	uiPadding2.PaddingBottom = UDim.new(0, 8)
	uiPadding2.PaddingLeft = UDim.new(0, 10)
	uiPadding2.PaddingRight = UDim.new(0, 10)
	uiPadding2.Parent = scrollingFrame
	local uiListLayout3 = Instance.new("UIListLayout")
	uiListLayout3.Padding = UDim.new(0, 4)
	uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout3.Parent = scrollingFrame
	fn19(scrollingFrame)
	createFrame2(scrollingFrame, uiListLayout3, frame, janitor)
	local frame6 = Instance.new("Frame")
	frame6.Name = "EmptyState"
	frame6.BackgroundTransparency = 1
	frame6.Position = UDim2.fromOffset(0, 35)
	frame6.Size = UDim2.new(1, 0, 1, -35)
	frame6.ZIndex = tbl.Content + 2
	frame6.Parent = frame
	local uiListLayout4 = Instance.new("UIListLayout")
	uiListLayout4.FillDirection = Enum.FillDirection.Vertical
	uiListLayout4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uiListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center
	uiListLayout4.Padding = UDim.new(0, 6)
	uiListLayout4.Parent = frame6
	local imageLabel2 = Instance.new("ImageLabel")
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.Image = fn21("frown")
	imageLabel2.ImageColor3 = index.Theme.TextDim
	fn18(imageLabel2, "TextDim")
	imageLabel2.Size = UDim2.fromOffset(22, 22)
	imageLabel2.LayoutOrder = 1
	imageLabel2.ZIndex = tbl.Content + 3
	imageLabel2.Parent = frame6
	local textLabel2 = Instance.new("TextLabel")
	textLabel2.BackgroundTransparency = 1
	textLabel2.FontFace = index.Theme.FontRegular
	textLabel2.Text = "No logs at the moment"
	textLabel2.TextColor3 = index.Theme.TextDim
	fn18(textLabel2, "TextDim")
	textLabel2.TextSize = 12
	textLabel2.AutomaticSize = Enum.AutomaticSize.XY
	textLabel2.Size = UDim2.fromOffset(0, 14)
	textLabel2.LayoutOrder = 2
	textLabel2.ZIndex = tbl.Content + 3
	textLabel2.Parent = frame6
	local tbl5 = {}
	local n = 0
	local layoutOrder = 0
	local flag5 = true

	local function fn30()
		while n > maxLogs do
			local v3 = table.remove(tbl5, 1)

			if v3 then
				v3:Destroy()
				n -= 1
				continue
			end

			break
		end
	end

	local function fn31(arg3)
		return (arg3:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
	end

	local function fn32(arg3, arg4)
		local str2 = tostring(arg3 or "")
		if str2 == "" then
			return
		end
		fn30()
		layoutOrder += 1
		local text = tbl3[arg4] or index.Theme.Text
		local textLabel3 = Instance.new("TextLabel")
		textLabel3.Name = "Entry"
		textLabel3.BackgroundTransparency = 1
		textLabel3.RichText = true
		textLabel3.FontFace = index.Theme.FontRegular
		textLabel3.TextSize = 12
		textLabel3.TextWrapped = true
		textLabel3.TextXAlignment = Enum.TextXAlignment.Left
		textLabel3.TextYAlignment = Enum.TextYAlignment.Top
		textLabel3.LineHeight = 1.25
		textLabel3.AutomaticSize = Enum.AutomaticSize.Y
		textLabel3.Size = UDim2.new(1, 0, 0, 14)
		textLabel3.LayoutOrder = layoutOrder
		textLabel3.ZIndex = tbl.Content + 2
		textLabel3.Text = string.format("<font color=\"#%s\" transparency=\"0.45\">[%s]</font> <font color=\"#%s\">%s</font>", index.Theme.TextDim:ToHex(), os.date("%H:%M:%S"), text:ToHex(), fn31(str2))
		textLabel3.Parent = scrollingFrame
		table.insert(tbl5, textLabel3)
		n += 1
		frame6.Visible = false

		if flag5 then
			fn3(function()
				scrollingFrame.CanvasPosition = Vector2.new(0, scrollingFrame.AbsoluteCanvasSize.Y)
			end)
		end
	end

	local connect = scrollingFrame:GetPropertyChangedSignal("CanvasPosition").Connect
	error("devirt: value <luasym.LuaFunc object at 0x000001808E3F3880> in an expression (at 207:303)")
end

index3.AddTable = function(arg, arg2)
	local tbl4 = arg2 or {}
	local janitor = arg._janitor
	local title = tbl4.Title or "Table"
	local flag5 = tbl4.Description and tbl4.Description ~= ""
	local columns = tbl4.Columns or {}
	local rowHeight = tbl4.RowHeight or 30
	local height = tbl4.Height or 200
	local flag6 = tbl4.Sortable ~= false
	local flag7 = tbl4.Striped ~= false
	local n = 0

	for _, column in ipairs(columns) do
		column.Weight = column.Weight or 1
		n += column.Weight
	end

	if n <= 0 then
		n = 1
	end

	local function fn29(arg3)
		if arg3.Align == "Right" then
			return Enum.TextXAlignment.Right
		end

		if arg3.Align == "Center" then
			return Enum.TextXAlignment.Center
		end
		return Enum.TextXAlignment.Left
	end

	local function fn30(arg3)
		local n2 = 0

		for i = 1, arg3 - 1 do
			n2 += columns[i].Weight
		end

		return n2 / n
	end

	local n2 = 12 + (flag5 and 32 or 16) + 10
	local n3 = n2 + 26 + 6
	local frame = Instance.new("Frame")
	frame.Name = "Table"
	frame.BackgroundColor3 = index.Theme.Surface
	frame.BackgroundTransparency = 0.35
	frame.BorderSizePixel = 0
	frame.ClipsDescendants = true
	frame.Size = UDim2.new(1, 0, 0, n3 + height + 12)
	frame.ZIndex = tbl.Content
	frame.Parent = arg._page
	createUICorner(frame, index.Theme.CornerRadiusSm)
	createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.92)
	arg._window:_RegisterSearchable(arg, title, frame)
	local textLabel = Instance.new("TextLabel")
	textLabel.BackgroundTransparency = 1
	textLabel.FontFace = index.Theme.Font
	textLabel.Text = title
	textLabel.TextColor3 = index.Theme.Text
	fn18(textLabel, "Text")
	textLabel.TextSize = 14
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextTruncate = Enum.TextTruncate.AtEnd
	textLabel.Position = UDim2.fromOffset(12, 12)
	textLabel.Size = UDim2.new(1, -24, 0, 16)
	textLabel.ZIndex = tbl.Content + 1
	textLabel.Parent = frame

	if flag5 then
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.FontRegular
		textLabel2.Text = tbl4.Description
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 12
		textLabel2.TextWrapped = true
		textLabel2.TextXAlignment = Enum.TextXAlignment.Left
		textLabel2.TextYAlignment = Enum.TextYAlignment.Top
		textLabel2.Position = UDim2.fromOffset(12, 30)
		textLabel2.Size = UDim2.new(1, -24, 0, 14)
		textLabel2.ZIndex = tbl.Content + 1
		textLabel2.Parent = frame
	end

	local frame2 = Instance.new("Frame")
	frame2.Name = "ColumnHeader"
	frame2.BackgroundTransparency = 1
	frame2.Position = UDim2.fromOffset(12, n2)
	frame2.Size = UDim2.new(1, -24, 0, 26)
	frame2.ZIndex = tbl.Content + 1
	frame2.Parent = frame
	local tbl5 = { Key = nil, Asc = true }
	local tbl6 = {}

	for i, column in ipairs(columns) do
		local v = fn30(i)
		local n4 = column.Weight / n
		local textButton = Instance.new("TextButton")
		textButton.Name = "Col" .. i
		textButton.Text = ""
		textButton.AutoButtonColor = false
		textButton.BackgroundTransparency = 1
		textButton.Position = UDim2.new(v, i > 1 and 4 or 0, 0, 0)
		textButton.Size = UDim2.new(n4, i > 1 and -4 or 0, 1, 0)
		textButton.ZIndex = tbl.Content + 2
		textButton.Parent = frame2
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.FontFace = index.Theme.Font
		textLabel2.Text = tostring(column.Label or column.Key or "")
		textLabel2.TextColor3 = index.Theme.TextDim
		fn18(textLabel2, "TextDim")
		textLabel2.TextSize = 12
		textLabel2.TextXAlignment = fn29(column)
		textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel2.Size = UDim2.new(1, 0, 1, 0)
		textLabel2.ZIndex = tbl.Content + 3
		textLabel2.Parent = textButton
		tbl6[column.Key] = { Lbl = textLabel2, Text = tostring(column.Label or column.Key or "") }

		if flag6 then
			textButton.MouseEnter:Connect(function()
				if tbl5.Key ~= column.Key then
					fn17(textLabel2, { TextColor3 = index.Theme.Text }, 0.12)
				end
			end)

			textButton.MouseLeave:Connect(function()
				if tbl5.Key ~= column.Key then
					fn17(textLabel2, { TextColor3 = index.Theme.TextDim }, 0.12)
				end
			end)
		end
	end

	local frame3 = Instance.new("Frame")
	frame3.BackgroundColor3 = Color3.new(1, 1, 1)
	frame3.BackgroundTransparency = 0.92
	frame3.BorderSizePixel = 0
	frame3.Position = UDim2.fromOffset(0, n2 + 26)
	frame3.Size = UDim2.new(1, 0, 0, 1)
	frame3.ZIndex = tbl.Content + 1
	frame3.Parent = frame
	local scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.Name = "Rows"
	scrollingFrame.BackgroundTransparency = 1
	scrollingFrame.BorderSizePixel = 0
	scrollingFrame.Position = UDim2.fromOffset(0, n3)
	scrollingFrame.Size = UDim2.new(1, 0, 0, height)
	scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
	scrollingFrame.ScrollBarThickness = 0
	scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	scrollingFrame.ZIndex = tbl.Content + 1
	scrollingFrame.Parent = frame
	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingLeft = UDim.new(0, 12)
	uiPadding.PaddingRight = UDim.new(0, 12)
	uiPadding.Parent = scrollingFrame
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Parent = scrollingFrame
	fn19(scrollingFrame)
	createFrame2(scrollingFrame, uiListLayout, frame, janitor)
	local textLabel2 = Instance.new("TextLabel")
	textLabel2.BackgroundTransparency = 1
	textLabel2.FontFace = index.Theme.FontRegular
	textLabel2.Text = "No rows"
	textLabel2.TextColor3 = index.Theme.TextDim
	fn18(textLabel2, "TextDim")
	textLabel2.TextSize = 12
	textLabel2.Position = UDim2.fromOffset(12, n3 + 10)
	textLabel2.Size = UDim2.new(1, -24, 0, 16)
	textLabel2.Visible = false
	textLabel2.ZIndex = tbl.Content + 1
	textLabel2.Parent = frame
	local tbl7 = {}
	local tbl8 = {}

	local function fn31()
		for _, v in ipairs(tbl8) do
			v:Destroy()
		end

		table.clear(tbl8)
	end

	local function fn32()
		fn31()
		textLabel2.Visible = #tbl7 == 0

		for i, v in ipairs(tbl7) do
			local frame4 = Instance.new("Frame")
			frame4.Name = "Row" .. i
			frame4.BackgroundColor3 = Color3.new(1, 1, 1)
			frame4.BackgroundTransparency = flag7 and i % 2 == 0 and 0.97 or 1
			frame4.BorderSizePixel = 0
			frame4.LayoutOrder = i
			frame4.Size = UDim2.new(1, 0, 0, rowHeight)
			frame4.ZIndex = tbl.Content + 2
			frame4.Parent = scrollingFrame

			for i2, column in ipairs(columns) do
				local v3 = fn30(i2)
				local n4 = column.Weight / n
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.Name = "Cell" .. i2
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.FontRegular
				textLabel3.Text = tostring(v[column.Key] == nil and "" or v[column.Key])
				textLabel3.TextColor3 = index.Theme.Text
				fn18(textLabel3, "Text")
				textLabel3.TextSize = 12
				textLabel3.TextXAlignment = fn29(column)
				textLabel3.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel3.Position = UDim2.new(v3, i2 > 1 and 4 or 0, 0, 0)
				textLabel3.Size = UDim2.new(n4, i2 > 1 and -4 or 0, 1, 0)
				textLabel3.ZIndex = tbl.Content + 3
				textLabel3.Parent = frame4
			end

			table.insert(tbl8, frame4)
		end
	end

	local function fn33(arg3, arg4)
		local num = tonumber(arg3)
		local num2 = tonumber(arg4)

		if num and num2 then
			if num == num2 then
				return 0
			end
			return num < num2 and -1 or 1
		end

		local str2 = tostring(arg3 or "")
		local str3 = tostring(arg4 or "")
		if str2 == str3 then
			return 0
		end
		return str2 < str3 and -1 or 1
	end

	local function fn34()
		if not tbl5.Key then
			return
		end

		table.sort(tbl7, function(arg3, arg4)
			local v = fn33(arg3[tbl5.Key], arg4[tbl5.Key])
			if tbl5.Asc then
				return v < 0
			end
			return v > 0
		end)

		fn32()
	end

	if flag6 then
		for i, column in ipairs(columns) do
			local v = frame2:FindFirstChild("Col" .. i)

			if v then
				v.MouseButton1Click:Connect(function()
					if tbl5.Key == column.Key then
						tbl5.Asc = not tbl5.Asc
					else
						tbl5.Key = column.Key
						tbl5.Asc = true
					end

					for k, v3 in pairs(tbl6) do
						local str2 = ""

						if k == tbl5.Key then
							str2 = tbl5.Asc and "  ▲" or "  ▼"
						end

						v3.Lbl.Text = v3.Text .. str2
						v3.Lbl.TextColor3 = k == tbl5.Key and index.Theme.Text or index.Theme.TextDim
					end

					fn34()
				end)
			end
		end
	end
	;({
		Instance = frame,
		SetRows = function(arg3, arg4)
			tbl7 = arg4 or {}

			if tbl5.Key then
				fn34()
			else
				fn32()
			end
		end,
		GetRows = function()
			return tbl7
		end,
		Destroy = function()
			frame:Destroy()
		end,
	}):SetRows(tbl4.Rows or {})

	local v
	return v
end

do
	local fn29 = nil

	fn29 = function(arg)
		local kind = typeof(arg)
		if kind == "Color3" then
			return { __t = "Color3", r = arg.R, g = arg.G, b = arg.B }
		end

		if kind == "EnumItem" then
			return { __t = "Enum", v = tostring(arg) }
		end

		if kind == "table" then
			local tbl4 = {}

			for i, v in ipairs(arg) do
				tbl4[i] = fn29(v)
			end

			return tbl4
		end

		return arg
	end

	local fn30 = nil

	fn30 = function(arg)
		if type(arg) ~= "table" then
			return arg
		end

		if arg.__t == "Color3" then
			return Color3.new(arg.r, arg.g, arg.b)
		end

		if arg.__t == "Enum" then
			local v = string.split(arg.v, ".")

			local ok, result = pcall(function()
				return Enum[v[2]][v[3]]
			end)

			return ok and result or nil
		end

		local tbl4 = {}

		for i, v in ipairs(arg) do
			tbl4[i] = fn30(v)
		end

		return tbl4
	end

	index3.AddCardGrid = function(arg, arg2)
		local tbl4 = arg2 or {}
		local height = tbl4.Height or 380
		local sorts = tbl4.Sorts or {}
		local pageSize = tbl4.PageSize or 20
		local flag5 = tbl4.Search ~= false
		local descriptionHeight = tbl4.DescriptionHeight or 28
		local flag6 = tbl4.ShowScrollbar == true
		local cardPadding = tbl4.CardPadding or 10
		local frame = Instance.new("Frame")
		frame.Name = "CardGrid"
		frame.BackgroundColor3 = Color3.new(1, 1, 1)
		frame.BackgroundTransparency = 0.97
		frame.BorderSizePixel = 0
		frame.Size = UDim2.new(1, 0, 0, height)
		frame.ZIndex = tbl.Content
		frame.Parent = arg._page
		createUICorner(frame, index.Theme.CornerRadiusSm)
		createUIStroke(frame, Color3.new(1, 1, 1), 1, 0.95)
		arg._window:_RegisterSearchable(arg, tbl4.Title or "Cards", frame)
		local frame2 = Instance.new("Frame")
		frame2.Name = "Content"
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.fromScale(1, 1)
		frame2.ZIndex = tbl.Content + 1
		frame2.Parent = frame
		local outerPadding = tbl4.OuterPadding or 18
		local uiPadding = Instance.new("UIPadding")
		uiPadding.PaddingTop = UDim.new(0, outerPadding)
		uiPadding.PaddingBottom = UDim.new(0, outerPadding)
		uiPadding.PaddingLeft = UDim.new(0, 12)
		uiPadding.PaddingRight = UDim.new(0, 12)
		uiPadding.Parent = frame2
		local n = 0

		if flag5 then
			n += 32
		end

		if #sorts > 1 then
			if n > 0 then
				n += 8
			end

			n += 28
		end

		if n > 0 then
			n += 10
		end

		local textBox = nil

		if flag5 then
			local frame3 = Instance.new("Frame")
			frame3.BackgroundColor3 = Color3.new(1, 1, 1)
			frame3.BackgroundTransparency = 0.92
			frame3.BorderSizePixel = 0
			frame3.Size = UDim2.new(1, 0, 0, 32)
			frame3.ZIndex = tbl.Content + 1
			frame3.Parent = frame2
			createUICorner(frame3, 9)
			local v = createUIStroke(frame3, Color3.new(1, 1, 1), 1, 0.88)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = fn21("search")
			imageLabel.ImageColor3 = index.Theme.TextDim
			fn18(imageLabel, "TextDim")
			imageLabel.Size = UDim2.fromOffset(13, 13)
			imageLabel.AnchorPoint = Vector2.new(0, 0.5)
			imageLabel.Position = UDim2.new(0, 10, 0.5, 0)
			imageLabel.ZIndex = tbl.Content + 2
			imageLabel.Parent = frame3
			textBox = Instance.new("TextBox")
			textBox.ClearTextOnFocus = false
			textBox.FontFace = index.Theme.FontRegular
			textBox.PlaceholderText = tbl4.SearchPlaceholder or "Search by name / tags..."
			textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 122)
			textBox.Text = ""
			textBox.TextColor3 = index.Theme.Text
			fn18(textBox, "Text")
			textBox.TextSize = 13
			textBox.TextXAlignment = Enum.TextXAlignment.Left
			textBox.TextYAlignment = Enum.TextYAlignment.Center
			textBox.BackgroundTransparency = 1
			textBox.ClipsDescendants = true
			textBox.Position = UDim2.fromOffset(30, 0)
			textBox.Size = UDim2.new(1, -40, 1, 0)
			textBox.ZIndex = tbl.Content + 2
			textBox.Parent = frame3

			textBox.Focused:Connect(function()
				fn17(v, { Color = index.Theme.Accent, Transparency = 0.3 }, 0.18)
			end)

			textBox.FocusLost:Connect(function()
				fn17(v, { Color = Color3.new(1, 1, 1), Transparency = 0.88 }, 0.18)
			end)
		end

		local defaultSort = tbl4.DefaultSort or sorts[1]
		local tbl5 = {}

		if #sorts > 1 then
			local frame3 = Instance.new("Frame")
			frame3.BackgroundTransparency = 1
			frame3.Position = UDim2.fromOffset(0, flag5 and 40 or 0)
			frame3.Size = UDim2.new(1, 0, 0, 28)
			frame3.ZIndex = tbl.Content + 1
			frame3.Parent = frame2
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout.Padding = UDim.new(0, 6)
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Parent = frame3

			for i, sort in ipairs(sorts) do
				local textButton = Instance.new("TextButton")
				textButton.AutoButtonColor = false
				textButton.Text = ""
				textButton.BackgroundColor3 = Color3.new(1, 1, 1)
				textButton.BackgroundTransparency = sort == defaultSort and 0.85 or 1
				textButton.BorderSizePixel = 0
				textButton.AutomaticSize = Enum.AutomaticSize.X
				textButton.Size = UDim2.fromOffset(0, 28)
				textButton.LayoutOrder = i
				textButton.ZIndex = tbl.Content + 1
				textButton.Parent = frame3
				createUICorner(textButton, 7)
				local uiPadding2 = Instance.new("UIPadding")
				uiPadding2.PaddingLeft = UDim.new(0, 10)
				uiPadding2.PaddingRight = UDim.new(0, 10)
				uiPadding2.Parent = textButton
				local textLabel = Instance.new("TextLabel")
				textLabel.BackgroundTransparency = 1
				textLabel.FontFace = index.Theme.Font
				textLabel.Text = string.upper(sort)
				textLabel.TextColor3 = sort == defaultSort and index.Theme.Text or index.Theme.TextDim
				textLabel.TextSize = 11
				textLabel.AutomaticSize = Enum.AutomaticSize.X
				textLabel.Size = UDim2.fromOffset(0, 28)
				textLabel.ZIndex = tbl.Content + 2
				textLabel.Parent = textButton
				tbl5[sort] = { Button = textButton, Label = textLabel }
			end
		end

		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.BackgroundTransparency = 1
		scrollingFrame.BorderSizePixel = 0
		scrollingFrame.Position = UDim2.fromOffset(0, n)
		scrollingFrame.Size = UDim2.new(1, 0, 1, -n)
		scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
		scrollingFrame.ScrollingEnabled = true
		scrollingFrame.Active = true
		scrollingFrame.ElasticBehavior = Enum.ElasticBehavior.Never
		scrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
		scrollingFrame.ScrollBarThickness = flag6 and (tbl4.ScrollBarThickness or 4) or 0
		scrollingFrame.ScrollBarImageColor3 = index.Theme.TextDim
		scrollingFrame.ScrollBarImageTransparency = 1
		scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.None
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		scrollingFrame.ZIndex = tbl.Content + 1
		scrollingFrame.Parent = frame2
		local n2 = scrollingFrame.ScrollBarThickness > 0 and scrollingFrame.ScrollBarThickness + 6 or 16
		local n3 = 8
		local n4 = 8
		local uiPadding2 = Instance.new("UIPadding")
		uiPadding2.PaddingTop = UDim.new(0, 8)
		uiPadding2.PaddingRight = UDim.new(0, n2)
		uiPadding2.Parent = scrollingFrame
		local cardMinWidth = tbl4.CardMinWidth or tbl4.CardWidth or 190
		local columns = tbl4.Columns
		local maxColumns = tbl4.MaxColumns
		local cardHeight = tbl4.CardHeight or 88
		local n5 = 8
		local uiGridLayout = Instance.new("UIGridLayout")
		uiGridLayout.CellPadding = UDim2.fromOffset(8, 8)
		uiGridLayout.CellSize = UDim2.fromOffset(cardMinWidth, cardHeight)
		uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiGridLayout.Parent = scrollingFrame

		local function fn31()
			scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, math.max(0, uiGridLayout.AbsoluteContentSize.Y / fn23() + n3 + n4))
		end

		uiGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fn31)
		fn3(fn31)
		local n6 = 4
		local n7 = 1

		local function fn32()
			local n8 = scrollingFrame.AbsoluteSize.X / fn23() - n2 - n6
			if n8 <= 0 then
				return
			end
			local n9 = columns and math.max(1, columns) or math.max(1, math.floor((n8 + n5) / (cardMinWidth + n5)))
			local n10

			if not columns and maxColumns then
				n10 = math.min(n9, math.max(1, maxColumns))
			else
				n10 = n9
			end

			local n11 = math.floor((n8 - (n10 - 1) * n5) / n10)
			n7 = n10
			uiGridLayout.CellSize = UDim2.fromOffset(math.max(1, n11), cardHeight)
		end

		scrollingFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn32)
		fn3(fn32)

		if not flag6 then
			fn19(scrollingFrame)
			createFrame2(scrollingFrame, uiGridLayout, frame, arg._janitor)
		end

		local height2 = tbl4.Height or 300
		local flag7 = false

		local function fn33(arg3)
			fn17(frame, { Size = UDim2.new(1, 0, 0, arg3) }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		end

		local n8 = 220

		local function fn34()
			flag7 = false
			if tbl4.FixedHeight then
				fn33(height2)
				return
			end
			fn33(math.min(n + outerPadding + n8 + outerPadding, height2))
		end

		local function fn35()
			if not flag7 then
				return
			end

			if tbl4.FixedHeight then
				fn33(height2)
				return
			end
			local y = uiGridLayout.AbsoluteContentSize.Y
			if y <= 0 then
				return
			end
			local n9 = math.min(n + outerPadding + y + outerPadding, height2)
			fn33(n9)
		end

		uiGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fn35)
		local frame3 = Instance.new("Frame")
		frame3.BackgroundTransparency = 1
		frame3.Position = UDim2.fromOffset(0, n)
		frame3.Size = UDim2.new(1, 0, 1, -n)
		frame3.Visible = false
		frame3.ZIndex = tbl.Content + 2
		frame3.Parent = frame2
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Vertical
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 6)
		uiListLayout.Parent = frame3
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.BackgroundTransparency = 1
		imageLabel.ImageColor3 = index.Theme.TextDim
		fn18(imageLabel, "TextDim")
		imageLabel.Size = UDim2.fromOffset(24, 24)
		imageLabel.LayoutOrder = 1
		imageLabel.Visible = false
		imageLabel.ZIndex = tbl.Content + 3
		imageLabel.Parent = frame3
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.FontFace = index.Theme.FontRegular
		textLabel.TextColor3 = index.Theme.TextDim
		fn18(textLabel, "TextDim")
		textLabel.TextSize = 12
		textLabel.TextWrapped = true
		textLabel.TextXAlignment = Enum.TextXAlignment.Center
		textLabel.AutomaticSize = Enum.AutomaticSize.Y
		textLabel.Size = UDim2.new(1, -20, 0, 16)
		textLabel.LayoutOrder = 2
		textLabel.ZIndex = tbl.Content + 3
		textLabel.Parent = frame3
		local tbl6 = { loading = "loader-circle", empty = "frown", error = "triangle-alert" }

		local function fn36(arg3, arg4)
			if type(arg4) ~= "table" or #arg4 == 0 then
				return
			end
			local canvasGroup = nil
			local v = nil
			local fn37 = nil

			fn37 = function()
				fn25(fn37)

				if v then
					v:Destroy()
					v = nil
				end

				if canvasGroup then
					canvasGroup:Destroy()
					canvasGroup = nil
				end
			end

			fn24(fn37)
			v = createTextButton(fn37)
			local n9 = 16 + #arg4 * 32 + math.max(0, #arg4 - 1) * 2
			local v3 = fn23()
			local v4 = fn22()
			local absolutePosition = arg3.AbsolutePosition
			local absoluteSize = arg3.AbsoluteSize
			local n10 = (absolutePosition.X + absoluteSize.X) / v3 - 190
			local n11 = (absolutePosition.Y + absoluteSize.Y) / v3 + 5
			local v5 = fn6(n10, 8, v4.X / v3 - 190 - 8)
			local v6 = fn6(n11, 8, v4.Y / v3 - n9 - 8)
			canvasGroup = Instance.new("CanvasGroup")
			canvasGroup.Name = "CardActionsPopup"
			canvasGroup.Active = true
			canvasGroup.BackgroundColor3 = index.Theme.Background
			canvasGroup.BackgroundTransparency = 0.04
			canvasGroup.BorderSizePixel = 0
			local round = math.round
			canvasGroup.Position = UDim2.fromOffset(math.round(v5), round(v6))
			canvasGroup.Size = UDim2.fromOffset(190, n9)
			canvasGroup.ZIndex = tbl.Popup
			canvasGroup.Parent = index._Root
			createUICorner(canvasGroup, 10)
			createUIStroke(canvasGroup, Color3.new(1, 1, 1), 1, 0.9)
			createFrame(canvasGroup, 10, 0.985)
			local frame4 = Instance.new("Frame")
			frame4.Name = "Actions"
			frame4.BackgroundTransparency = 1
			frame4.Size = UDim2.fromScale(1, 1)
			frame4.ZIndex = tbl.Popup + 1
			frame4.Parent = canvasGroup
			local uiPadding3 = Instance.new("UIPadding")
			uiPadding3.PaddingTop = UDim.new(0, 8)
			uiPadding3.PaddingBottom = UDim.new(0, 8)
			uiPadding3.PaddingLeft = UDim.new(0, 8)
			uiPadding3.PaddingRight = UDim.new(0, 8)
			uiPadding3.Parent = frame4
			local uiListLayout2 = Instance.new("UIListLayout")
			uiListLayout2.Padding = UDim.new(0, 2)
			uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout2.Parent = frame4

			for i, v7 in ipairs(arg4) do
				local textButton = Instance.new("TextButton")
				textButton.Name = "Action" .. i
				textButton.Text = ""
				textButton.AutoButtonColor = false
				textButton.BackgroundColor3 = Color3.new(1, 1, 1)
				textButton.BackgroundTransparency = 1
				textButton.BorderSizePixel = 0
				textButton.Size = UDim2.new(1, 0, 0, 32)
				textButton.LayoutOrder = i
				textButton.ZIndex = tbl.Popup + 1
				textButton.Parent = frame4
				createUICorner(textButton, 7)
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21(v7.Icon or "circle")
				imageLabel2.ImageColor3 = v7.Danger and index.Theme.Danger or index.Theme.TextDim
				imageLabel2.Size = UDim2.fromOffset(14, 14)
				imageLabel2.AnchorPoint = Vector2.new(0, 0.5)
				imageLabel2.Position = UDim2.new(0, 9, 0.5, 0)
				imageLabel2.ZIndex = tbl.Popup + 2
				imageLabel2.Parent = textButton
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.BackgroundTransparency = 1
				textLabel2.FontFace = index.Theme.FontRegular
				textLabel2.Text = tostring(v7.Text or "Action")
				textLabel2.TextColor3 = v7.Danger and index.Theme.Danger or index.Theme.Text
				textLabel2.TextSize = 12
				textLabel2.TextXAlignment = Enum.TextXAlignment.Left
				textLabel2.Position = UDim2.fromOffset(31, 0)
				textLabel2.Size = UDim2.new(1, -39, 1, 0)
				textLabel2.ZIndex = tbl.Popup + 2
				textLabel2.Parent = textButton

				textButton.MouseEnter:Connect(function()
					fn17(textButton, { BackgroundTransparency = 0.9 }, 0.12)
				end)

				textButton.MouseLeave:Connect(function()
					fn17(textButton, { BackgroundTransparency = 1 }, 0.12)
				end)

				textButton.MouseButton1Click:Connect(function()
					fn37()

					if v7.Callback then
						fn2(v7.Callback)
					end
				end)
			end
		end

		local function createFrame4(arg3, arg4)
			local frame4 = Instance.new("Frame")
			frame4.Name = "GridCard"
			frame4.BackgroundColor3 = Color3.new(1, 1, 1)
			frame4.BackgroundTransparency = 1
			frame4.BorderSizePixel = 0
			frame4.ClipsDescendants = true
			frame4.ZIndex = tbl.Content + 2
			frame4.Parent = scrollingFrame
			createUICorner(frame4, index.Theme.CornerRadiusSm)
			local v = createUIStroke(frame4, Color3.new(1, 1, 1), 1, 1)
			local uiScale = Instance.new("UIScale")
			uiScale.Scale = 0.9
			uiScale.Parent = frame4

			fn4(arg4 or 0, function()
				if not frame4.Parent then
					return
				end
				fn17(frame4, { BackgroundTransparency = 0.94 }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				fn17(v, { Transparency = 0.9 }, 0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				fn17(uiScale, { Scale = 1 }, 0.26, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
			end)

			local uiPadding3 = Instance.new("UIPadding")
			uiPadding3.PaddingTop = UDim.new(0, cardPadding)
			uiPadding3.PaddingBottom = UDim.new(0, cardPadding)
			uiPadding3.PaddingLeft = UDim.new(0, cardPadding)
			uiPadding3.PaddingRight = UDim.new(0, cardPadding)
			uiPadding3.Parent = frame4
			local n9 = 0

			if arg3.Icon then
				local frame5 = Instance.new("Frame")
				frame5.BackgroundColor3 = Color3.new(1, 1, 1)
				frame5.BackgroundTransparency = 0.9
				frame5.BorderSizePixel = 0
				frame5.Size = UDim2.fromOffset(24, 24)
				frame5.ZIndex = tbl.Content + 3
				frame5.Parent = frame4
				createUICorner(frame5, 7)
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21(arg3.Icon)
				imageLabel2.ImageColor3 = index.Theme.Accent
				imageLabel2.Size = UDim2.fromOffset(13, 13)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
				imageLabel2.ZIndex = tbl.Content + 4
				imageLabel2.Parent = frame5
				n9 = 32
			end

			local flag8 = arg3.Callback ~= nil
			local flag9 = arg3.SecondaryCallback ~= nil
			local flag10 = arg3.Menu and #arg3.Menu > 0
			local n10 = (flag8 and 26 or 0) + (flag9 and 30 or 0) + (flag10 and 30 or 0)

			if flag8 then
				local frame5 = Instance.new("Frame")
				frame5.Name = "LoadBadge"
				frame5.BackgroundColor3 = index.Theme.Accent
				frame5.BackgroundTransparency = 0.8
				frame5.BorderSizePixel = 0
				frame5.AnchorPoint = Vector2.new(1, 0)
				frame5.Position = UDim2.new(1, 0, 0, 0)
				frame5.Size = UDim2.fromOffset(22, 22)
				frame5.ZIndex = tbl.Content + 6
				frame5.Parent = frame4
				createUICorner(frame5, 7)
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21(arg3.ActionIcon or "download")
				imageLabel2.ImageColor3 = index.Theme.Accent
				imageLabel2.Size = UDim2.fromOffset(12, 12)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
				imageLabel2.ZIndex = tbl.Content + 7
				imageLabel2.Parent = frame5
				local textButton = Instance.new("TextButton")
				textButton.Text = ""
				textButton.AutoButtonColor = false
				textButton.BackgroundTransparency = 1
				textButton.Size = UDim2.fromScale(1, 1)
				textButton.ZIndex = tbl.Content + 8
				textButton.Parent = frame5

				textButton.MouseButton1Click:Connect(function()
					arg3.Callback()
				end)
			end

			if flag9 then
				local frame5 = Instance.new("Frame")
				frame5.Name = "SecondaryActionBadge"
				frame5.BackgroundColor3 = arg3.SecondaryDanger and Color3.fromRGB(225, 76, 88) or index.Theme.Accent
				frame5.BackgroundTransparency = arg3.SecondaryDanger and 0.82 or 0.8
				frame5.BorderSizePixel = 0
				frame5.AnchorPoint = Vector2.new(1, 0)
				frame5.Position = UDim2.new(1, flag8 and -30 or 0, 0, 0)
				frame5.Size = UDim2.fromOffset(22, 22)
				frame5.ZIndex = tbl.Content + 6
				frame5.Parent = frame4
				createUICorner(frame5, 7)
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21(arg3.SecondaryIcon or "trash-2")
				imageLabel2.ImageColor3 = arg3.SecondaryDanger and Color3.fromRGB(255, 125, 135) or index.Theme.Accent
				imageLabel2.Size = UDim2.fromOffset(12, 12)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
				imageLabel2.ZIndex = tbl.Content + 7
				imageLabel2.Parent = frame5
				local textButton = Instance.new("TextButton")
				textButton.Text = ""
				textButton.AutoButtonColor = false
				textButton.BackgroundTransparency = 1
				textButton.Size = UDim2.fromScale(1, 1)
				textButton.ZIndex = tbl.Content + 8
				textButton.Parent = frame5

				textButton.MouseButton1Click:Connect(function()
					arg3.SecondaryCallback()
				end)
			end

			if flag10 then
				local frame5 = Instance.new("Frame")
				frame5.Name = "MenuBadge"
				frame5.BackgroundColor3 = index.Theme.Accent
				frame5.BackgroundTransparency = 0.8
				frame5.BorderSizePixel = 0
				frame5.AnchorPoint = Vector2.new(1, 0)
				frame5.Position = UDim2.new(1, -((flag8 and 30 or 0) + (flag9 and 30 or 0)), 0, 0)
				frame5.Size = UDim2.fromOffset(22, 22)
				frame5.ZIndex = tbl.Content + 6
				frame5.Parent = frame4
				createUICorner(frame5, 7)
				local imageLabel2 = Instance.new("ImageLabel")
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = fn21("Lucide:settings")
				imageLabel2.ImageColor3 = index.Theme.Accent
				imageLabel2.Size = UDim2.fromOffset(12, 12)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.fromScale(0.5, 0.5)
				imageLabel2.ZIndex = tbl.Content + 7
				imageLabel2.Parent = frame5
				local textButton = Instance.new("TextButton")
				textButton.Text = ""
				textButton.AutoButtonColor = false
				textButton.BackgroundTransparency = 1
				textButton.Size = UDim2.fromScale(1, 1)
				textButton.ZIndex = tbl.Content + 8
				textButton.Parent = frame5

				textButton.MouseButton1Click:Connect(function()
					fn36(frame5, arg3.Menu)
				end)
			end

			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = index.Theme.Font
			textLabel2.Text = arg3.Title or "Untitled"
			textLabel2.TextColor3 = index.Theme.Text
			fn18(textLabel2, "Text")
			textLabel2.TextSize = 13
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Center
			textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel2.Position = UDim2.fromOffset(n9, arg3.Icon and 4 or 0)
			textLabel2.Size = UDim2.new(1, -(n9 + n10), 0, arg3.Icon and 24 or 16)
			textLabel2.ZIndex = tbl.Content + 3
			textLabel2.Parent = frame4
			local n11 = math.max(arg3.Icon and 30 or 0, 19)

			if arg3.Description and arg3.Description ~= "" then
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.FontRegular
				textLabel3.Text = arg3.Description
				textLabel3.TextColor3 = index.Theme.TextDim
				fn18(textLabel3, "TextDim")
				textLabel3.TextSize = 11
				textLabel3.TextWrapped = true
				textLabel3.TextTruncate = Enum.TextTruncate.None
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.TextYAlignment = Enum.TextYAlignment.Top
				textLabel3.Position = UDim2.fromOffset(0, n11)
				textLabel3.Size = UDim2.new(1, -n10, 0, descriptionHeight)
				textLabel3.ZIndex = tbl.Content + 3
				textLabel3.Parent = frame4
				n11 = n11 + descriptionHeight + 3
			end

			if arg3.Byline and arg3.Byline ~= "" then
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.FontFace = index.Theme.FontRegular
				textLabel3.Text = arg3.Byline
				textLabel3.TextColor3 = index.Theme.TextDim
				fn18(textLabel3, "TextDim")
				textLabel3.TextTransparency = 0.25
				textLabel3.TextSize = 10
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel3.Position = UDim2.fromOffset(0, n11)
				textLabel3.Size = UDim2.new(1, -n10, 0, 12)
				textLabel3.ZIndex = tbl.Content + 3
				textLabel3.Parent = frame4
			end

			if arg3.Stats and #arg3.Stats > 0 then
				local frame5 = Instance.new("Frame")
				frame5.BackgroundTransparency = 1
				frame5.AnchorPoint = Vector2.new(0, 1)
				frame5.Position = UDim2.new(0, 0, 1, 0)
				frame5.Size = UDim2.new(1, 0, 0, 16)
				frame5.ZIndex = tbl.Content + 3
				frame5.Parent = frame4
				local uiListLayout2 = Instance.new("UIListLayout")
				uiListLayout2.FillDirection = Enum.FillDirection.Horizontal
				uiListLayout2.Padding = UDim.new(0, 10)
				uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
				uiListLayout2.Parent = frame5

				for i, stat in ipairs(arg3.Stats) do
					local instance = Instance.new(stat.Callback and "TextButton" or "Frame")
					instance.BackgroundTransparency = 1
					instance.AutomaticSize = Enum.AutomaticSize.X
					instance.Size = UDim2.fromOffset(0, 14)
					instance.LayoutOrder = i
					instance.ZIndex = tbl.Content + 3
					instance.Parent = frame5

					if stat.Callback then
						instance.Text = ""
						instance.AutoButtonColor = false
					end

					local uiListLayout3 = Instance.new("UIListLayout")
					uiListLayout3.FillDirection = Enum.FillDirection.Horizontal
					uiListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
					uiListLayout3.Padding = UDim.new(0, 3)
					uiListLayout3.Parent = instance
					local imageLabel2 = Instance.new("ImageLabel")
					imageLabel2.BackgroundTransparency = 1
					imageLabel2.Image = fn21(stat.Icon or "circle")
					imageLabel2.ImageColor3 = index.Theme.TextDim
					fn18(imageLabel2, "TextDim")
					imageLabel2.Size = UDim2.fromOffset(11, 11)
					imageLabel2.LayoutOrder = 1
					imageLabel2.ZIndex = tbl.Content + 4
					imageLabel2.Parent = instance
					local textLabel3 = Instance.new("TextLabel")
					textLabel3.BackgroundTransparency = 1
					textLabel3.FontFace = index.Theme.FontRegular
					textLabel3.Text = tostring(stat.Text or "")
					textLabel3.TextColor3 = index.Theme.TextDim
					fn18(textLabel3, "TextDim")
					textLabel3.TextSize = 10
					textLabel3.AutomaticSize = Enum.AutomaticSize.X
					textLabel3.Size = UDim2.fromOffset(0, 12)
					textLabel3.LayoutOrder = 2
					textLabel3.ZIndex = tbl.Content + 4
					textLabel3.Parent = instance

					if stat.Callback then
						instance.MouseEnter:Connect(function()
							fn17(imageLabel2, { ImageColor3 = index.Theme.Accent }, 0.12)
							fn17(textLabel3, { TextColor3 = index.Theme.Accent }, 0.12)
						end)

						instance.MouseLeave:Connect(function()
							fn17(imageLabel2, { ImageColor3 = index.Theme.TextDim }, 0.12)
							fn17(textLabel3, { TextColor3 = index.Theme.TextDim }, 0.12)
						end)

						instance.MouseButton1Click:Connect(function()
							fn2(stat.Callback)
						end)
					end
				end
			end

			if arg3.Callback then
				local flag11 = false

				if arg3.Stats then
					for _, stat in ipairs(arg3.Stats) do
						if stat.Callback then
							flag11 = true
						end
					end
				end

				local textButton = Instance.new("TextButton")
				textButton.Text = ""
				textButton.AutoButtonColor = false
				textButton.BackgroundTransparency = 1
				textButton.Size = flag11 and UDim2.new(1, 0, 1, -20) or UDim2.fromScale(1, 1)
				textButton.ZIndex = tbl.Content + 5
				textButton.Parent = frame4

				textButton.MouseEnter:Connect(function()
					fn17(frame4, { BackgroundTransparency = 0.88 }, 0.12)
					fn17(v, { Transparency = 0.8 }, 0.12)
				end)

				textButton.MouseLeave:Connect(function()
					fn17(frame4, { BackgroundTransparency = 0.94 }, 0.12)
					fn17(v, { Transparency = 0.9 }, 0.12)
				end)

				textButton.MouseButton1Click:Connect(function()
					fn2(arg3.Callback)
				end)
			end

			return frame4
		end

		local text = ""
		local n9 = 0

		local function fn37()
			for _, child in ipairs(scrollingFrame:GetChildren()) do
				if child.Name == "GridCard" then
					child:Destroy()
				end
			end
		end

		local function fn38(text2, arg3)
			local visible = text2 ~= nil and text2 ~= ""
			textLabel.Text = text2 or ""
			frame3.Visible = visible
			visible = visible and tbl6[arg3]
			imageLabel.Visible = visible ~= nil

			if visible then
				imageLabel.Image = fn21(visible)
			end
		end

		local function fn39(arg3)
			local flag8 = false
			local flag9 = false
			local flag10 = false
			local flag11 = false

			for _, v in ipairs(arg3) do
				if v.Icon then
					flag8 = true
				end

				if v.Description and v.Description ~= "" then
					flag9 = true
				end

				if v.Byline and v.Byline ~= "" then
					flag10 = true
				end

				if v.Stats and #v.Stats > 0 then
					flag11 = true
				end
			end

			local n10 = 20 + (flag8 and 24 or 16) + 3

			if flag9 then
				n10 = n10 + descriptionHeight + 3
			end

			if flag10 then
				n10 += 12
			end

			if flag11 then
				n10 = n10 + 16 + 4
			end

			return n10
		end

		local function fn40()
			if not tbl4.Fetch then
				return
			end
			n9 += 1
			local v = n9
			fn37()
			fn38(tbl4.LoadingText or "Loading...", "loading")
			fn34()

			fn2(function()
				local ok, result, result2 = pcall(tbl4.Fetch, { Query = text, Sort = defaultSort, PageSize = pageSize })
				if v ~= n9 then
					return
				end

				if not ok then
					fn38(tbl4.ErrorText or tostring(result), "error")
					fn34()
					return
				end

				if result2 then
					fn38(tbl4.ErrorText or tostring(result2), "error")
					fn34()
					return
				end

				result = result or {}

				if #result == 0 then
					fn38(tbl4.EmptyText or "Nothing here yet.", "empty")
					fn34()
					return
				end

				fn38(nil)

				if tbl4.AutoCardHeight ~= false then
					cardHeight = math.max(fn39(result), tbl4.MinCardHeight or 0)
					uiGridLayout.CellSize = UDim2.new(uiGridLayout.CellSize.X.Scale, uiGridLayout.CellSize.X.Offset, 0, cardHeight)
				end

				flag7 = true

				for i, v3 in ipairs(result) do
					createFrame4(v3, math.min(i - 1, 8) * 0.035)
				end

				fn2(function()
					RunService.Heartbeat:Wait()
					RunService.Heartbeat:Wait()

					if v == n9 then
						fn35()
					end
				end)
			end)
		end

		if textBox then
			local n10 = 0

			textBox:GetPropertyChangedSignal("Text"):Connect(function()
				text = textBox.Text
				n10 += 1
				local v = n10

				fn4(0.35, function()
					if v == n10 then
						fn40()
					end
				end)
			end)
		end

		for k, v in pairs(tbl5) do
			v.Button.MouseButton1Click:Connect(function()
				if defaultSort == k then
					return
				end
				defaultSort = k

				for k2, v3 in pairs(tbl5) do
					local flag8 = k2 == defaultSort
					fn17(v3.Button, { BackgroundTransparency = flag8 and 0.85 or 1 }, 0.12)
					fn17(v3.Label, { TextColor3 = flag8 and index.Theme.Text or index.Theme.TextDim }, 0.12)
				end

				fn40()
			end)
		end

		if tbl4.AutoLoad ~= false and tbl4.Fetch then
			fn3(fn40)
		end

		return {
			Instance = frame,
			Refresh = fn40,
			SetQuery = function(arg3, arg4)
				text = arg4 or ""

				if textBox then
					textBox.Text = text
				end

				fn40()
			end,
			SetSort = function(arg3, arg4)
				defaultSort = arg4
				fn40()
			end,
			Destroy = function()
				frame:Destroy()
			end,
		}
	end

	index.GetConfig = function()
		local tbl4 = {}

		for k, flag5 in pairs(index.Flags) do
			if flag5.Get then
				local ok, result = pcall(flag5.Get)

				if ok then
					tbl4[k] = fn29(result)
				end
			end
		end

		return tbl4
	end

	index.SetConfig = function(arg, arg2, arg3)
		if type(arg2) ~= "table" then
			return false
		end

		for k, v in pairs(arg2) do
			local v3 = index.Flags[k]

			if v3 and v3.Set then
				pcall(v3.Set, v3, fn30(v), arg3 ~= false)
			end
		end

		return true
	end
end

index.ListUIElements = function()
	local tbl4 = {}

	for k, flag5 in pairs(index.Flags) do
		local ok, result = pcall(flag5.Get)
		table.insert(tbl4, { Flag = k, Kind = flag5.Kind, Label = flag5.Label, Value = ok and result or nil })
	end

	table.sort(tbl4, function(arg, arg2)
		return arg.Flag < arg2.Flag
	end)

	return tbl4
end

index.SetUIElementValue = function(arg, arg2, arg3, arg4)
	local v = index.Flags[arg2]
	if not v or not v.Set then
		return false, "Unknown UI element: " .. tostring(arg2)
	end
	local ok, result = pcall(v.Set, v, arg3, arg4 ~= false)
	if not ok then
		return false, tostring(result)
	end
	return true
end

do
	local str2 = "NullUI/Configs"

	local function fn29()
		if not (isfolder_ and makefolder_) then
			return false
		end

		return (pcall(function()
			if not isfolder_("NullUI") then
				makefolder_("NullUI")
			end

			if not isfolder_("NullUI/Configs") then
				makefolder_("NullUI/Configs")
			end
		end))
	end

	local function fn30(arg)
		local str3 = tostring(arg or "config"):gsub("[^%w_%- ]", "_"):gsub("^%s+", ""):gsub("%s+$", "")

		if str3 == "" then
			str3 = "config"
		end

		return str3
	end

	local function fn31(arg)
		return str2 .. "/" .. fn30(arg) .. ".json"
	end

	local function fn32(arg)
		return "NullUI/" .. fn30(arg) .. ".json"
	end

	local function fn33(arg, arg2, arg3)
		local tbl4 = arg3 or {}

		return {
			Schema = 1,
			Name = arg,
			Description = tbl4.Description or "",
			Tags = tbl4.Tags or {},
			CreatedAt = tbl4.CreatedAt or os.time(),
			Data = arg2,
		}
	end

	local function fn34(arg)
		if not (isfile_ and readfile_) then
			return nil, "readfile unavailable"
		end
		local ok, result = pcall(isfile_, arg)
		if not ok or not result then
			return nil, "config does not exist"
		end
		local ok2, result2 = pcall(readfile_, arg)
		if not ok2 then
			return nil, result2
		end

		local ok3, result3 = pcall(function()
			return HttpService:JSONDecode(result2)
		end)

		if not ok3 then
			return nil, "failed to decode config"
		end

		if type(result3) ~= "table" then
			return nil, "malformed config"
		end

		if result3.Data == nil then
			return fn33(nil, result3, {}), nil
		end
		return result3, nil
	end

	index.SaveConfig = function(arg, arg2, arg3)
		if not writefile_ then
			return false, "writefile unavailable"
		end
		arg3 = arg3 or {}
		fn29()
		arg2 = arg2 or "config"
		local v = fn33(arg2, index:GetConfig(), arg3)

		local ok, result = pcall(function()
			local jsonEncode = HttpService.JSONEncode
			writefile_(fn31(arg2), jsonEncode(HttpService, v))
		end)

		return ok, result
	end

	index.LoadConfig = function(arg, arg2, arg3)
		local str3 = arg2 or "config"
		local v, v3 = fn34(fn31(str3))

		if not v then
			v, v3 = fn34(fn32(str3))
		end

		if not v then
			return false, v3
		end
		return index:SetConfig(v.Data, arg3)
	end

	index.GetConfigMeta = function(arg, arg2)
		local v, v3 = fn34(fn31(arg2))
		if not v then
			return nil, v3
		end

		return {
			Name = v.Name or arg2,
			Description = v.Description or "",
			Tags = v.Tags or {},
			CreatedAt = v.CreatedAt,
		}
	end

	index.GetSavedConfig = function(arg, arg2)
		local v, v3 = fn34(fn31(arg2))
		if not v then
			return nil, v3
		end
		return v, nil
	end

	index.ListConfigs = function()
		if not listfiles then
			return {}, "listfiles unavailable"
		end
		fn29()
		local ok, result = pcall(listfiles, "NullUI/Configs")
		if not ok or type(result) ~= "table" then
			return {}, "failed to list configs"
		end
		local tbl4 = {}

		for _, v in ipairs(result) do
			if tostring(v):match("%.json$") then
				local v3 = fn34(v)

				if v3 then
					local match = tostring(v):match("([^/\\]+)%.json$") or v3.Name

					table.insert(tbl4, {
						Name = v3.Name or match,
						FileName = match,
						Description = v3.Description or "",
						Tags = v3.Tags or {},
						CreatedAt = v3.CreatedAt or 0,
					})
				end
			end
		end

		table.sort(tbl4, function(arg, arg2)
			return (arg.CreatedAt or 0) > (arg2.CreatedAt or 0)
		end)

		return tbl4, nil
	end

	index.DeleteConfig = function(arg, arg2)
		if not (isfile_ and delfile) then
			return false, "delfile unavailable"
		end
		local v = fn31(arg2)
		local ok, result = pcall(isfile_, v)
		if not ok or not result then
			return false, "config does not exist"
		end
		local ok2, result2 = pcall(delfile, v)
		return ok2, result2
	end

	index.RenameConfig = function(arg, arg2, name)
		local v, v3 = fn34(fn31(arg2))
		if not v then
			return false, v3
		end
		v.Name = name

		local ok, result = pcall(function()
			fn29()
			local jsonEncode = HttpService.JSONEncode
			writefile_(fn31(name), jsonEncode(HttpService, v))
		end)

		if not ok then
			return false, result
		end

		if fn31(arg2) ~= fn31(name) then
			pcall(delfile, fn31(arg2))
		end

		return true
	end

	index.CreateSnapshot = function()
		return { Data = index:GetConfig(), CreatedAt = os.time() }
	end

	index.RestoreSnapshot = function(arg, arg2, arg3)
		if type(arg2) ~= "table" or type(arg2.Data) ~= "table" then
			return false, "invalid snapshot"
		end
		return index:SetConfig(arg2.Data, arg3)
	end

	local function fn35()
		if isfile_ and readfile_ then
			local ok, result = pcall(isfile_, "NullUI/cloud_identity.json")

			if ok and result then
				local ok2, result2 = pcall(readfile_, "NullUI/cloud_identity.json")

				if ok2 then
					local ok3, result3 = pcall(function()
						return HttpService:JSONDecode(result2)
					end)

					if ok3 and type(result3) == "table" and result3.Id then
						result3.Tokens = result3.Tokens or {}
						return result3
					end
				end
			end
		end

		return nil
	end

	local function fn36(arg)
		if not writefile_ then
			return
		end
		fn13()
		pcall(writefile_, "NullUI/cloud_identity.json", HttpService:JSONEncode(arg))
	end

	local function fn37()
		local v = fn35()
		if v then
			return v
		end
		local tbl4 = { Id = HttpService:GenerateGUID(false), Tokens = {} }
		fn36(tbl4)
		return tbl4
	end

	local n = 15
	local n2 = 0

	index.CloudService = function(arg, arg2)
		local tbl4 = arg2 or {}
		local baseUrl = tbl4.BaseUrl
		if type(baseUrl) ~= "string" or baseUrl:gsub("%s", "") == "" then
			return nil, "No cloud BaseUrl configured -- point CloudService's BaseUrl at your own backend."
		end

		if not baseUrl:match("^https?://") then
			return nil, "Cloud BaseUrl must start with http:// or https://"
		end
		local str3 = baseUrl:gsub("/+$", "")
		local script = tbl4.Script or "default"
		local v = fn37()
		local request_ = syn and syn.request or http_request or request

		local function fn38(arg3, arg4, arg5, arg6)
			if not request_ then
				return nil, "Your executor doesn't support HTTP requests."
			end

			if not str3 or str3 == "" then
				return nil, "No cloud BaseUrl configured -- point CloudService's BaseUrl at your own backend."
			end

			local tbl5 = {
				["Content-Type"] = "application/json",
				["X-NullUI-Identity"] = v.Id,
				["X-NullUI-Script"] = script,
			}

			if arg6 then
				for k, v3 in pairs(arg6) do
					tbl5[k] = v3
				end
			end

			local ok, result = pcall(request_, { Url = str3 .. arg4, Method = arg3, Headers = tbl5, Body = arg5 and HttpService:JSONEncode(arg5) or nil })
			if not ok then
				return nil, tostring(result)
			end

			if result.StatusCode and (result.StatusCode < 200 or result.StatusCode >= 300) then
				local body = result.Body

				local ok2, result2 = pcall(function()
					return HttpService:JSONDecode(result.Body)
				end)

				if ok2 and type(result2) == "table" and result2.error then
					body = tostring(result2.error)
				end

				return nil, "HTTP " .. tostring(result.StatusCode) .. ": " .. tostring(body)
			end

			if result.Body == nil or result.Body == "" then
				return {}, nil
			end

			local ok2, result2 = pcall(function()
				return HttpService:JSONDecode(result.Body)
			end)

			if not ok2 then
				return nil, "Failed to decode response."
			end
			return result2, nil
		end

		return {
			Identity = v.Id,
			List = function(arg3, arg4)
				local tbl5 = arg4 or {}
				local str4 = "?sort=" .. HttpService:UrlEncode(tbl5.Sort or "top")

				if tbl5.Query and tbl5.Query ~= "" then
					str4 ..= "&q=" .. HttpService:UrlEncode(tbl5.Query)
				end

				if tbl5.Cursor then
					str4 ..= "&cursor=" .. HttpService:UrlEncode(tostring(tbl5.Cursor))
				end

				local get, v3 = fn38("GET", "/configs" .. str4 .. "&limit=" .. tostring(tbl5.PageSize or 20))
				if not get then
					return nil, v3
				end
				return get.Items or {}, get.NextCursor
			end,
			ListMine = function()
				local get, v3 = fn38("GET", "/configs/mine")
				if not get then
					return nil, v3
				end
				return get.Items or {}
			end,
			GetByShareCode = function(arg3, arg4)
				return fn38("GET", "/configs/code/" .. HttpService:UrlEncode(tostring(arg4)))
			end,
			Publish = function(arg3, arg4, arg5)
				arg4 = arg4 or {}
				local now = os.clock()
				if now - n2 < n then
					return nil, string.format("Please wait %ds before publishing again.", math.ceil(n - now - n2))
				end
				local v3, v4 = index:SanitizeText(arg4.Name, { MaxLength = 60 })
				if v4 or v3 == "" then
					return nil, "Name was empty or blocked by the content filter."
				end
				local v5, v6 = index:SanitizeText(arg4.Description or "", { MaxLength = 280 })
				if v6 then
					return nil, "Description was blocked by the content filter."
				end
				local tbl5 = {}
				local v7 = ipairs
				local tags = arg4.Tags or {}

				for _, tag in v7(tags) do
					local v8 = index:SanitizeText(tag, { MaxLength = 24 })

					if v8 ~= "" then
						table.insert(tbl5, v8)
					end

					if not (#tbl5 >= 8) then
						continue
					end
					break
				end

				n2 = now
				local post, v8 = fn38("POST", "/configs", { Name = v3, Description = v5, Tags = tbl5, Data = arg5 or index:GetConfig() })
				if not post then
					return nil, v8
				end

				if post.Id and post.OwnerToken then
					v.Tokens[post.Id] = post.OwnerToken
					fn36(v)
				end

				return post
			end,
			Delete = function(arg3, arg4)
				local v3 = v.Tokens[arg4]
				if not v3 then
					return false, "You don't have publish rights for this config on this device."
				end
				local delete, v4 = fn38("DELETE", "/configs/" .. arg4, nil, { ["X-NullUI-Owner-Token"] = v3 })
				if not delete then
					return false, v4
				end
				v.Tokens[arg4] = nil
				fn36(v)
				return true
			end,
			Like = function(arg3, arg4)
				local post, v3 = fn38("POST", "/configs/" .. arg4 .. "/like")
				if not post then
					return false, v3
				end
				return true
			end,
			Download = function(arg3, arg4)
				return fn38("POST", "/configs/" .. arg4 .. "/download")
			end,
			SendChatMessage = function(arg3, arg4, arg5)
				return fn38("POST", "/chat/send", { UserId = arg4, Text = arg5 })
			end,
			PollChatMessages = function(arg3, arg4)
				local get, v3 = fn38("GET", "/chat?since=" .. tostring(arg4 or 0))
				if not get then
					return nil, v3
				end
				return get.Messages or {}
			end,
			ReportChatMessage = function(arg3, arg4)
				local post, v3 = fn38("POST", "/chat/" .. tostring(arg4) .. "/report")
				if not post then
					return false, v3
				end
				return true
			end,
			Heartbeat = function(arg3, arg4)
				local post, v3 = fn38("POST", "/presence/heartbeat", arg4)
				if not post then
					return false, v3
				end
				return true
			end,
			GetActiveCount = function()
				local get, v3 = fn38("GET", "/presence/count")
				if not get then
					return nil, v3
				end
				return get.Count or 0
			end,
			GetLeaderboard = function(arg3, arg4)
				local get, v3 = fn38("GET", "/presence/leaderboard?limit=" .. tostring(arg4 or 10))
				if not get then
					return nil, v3
				end
				return get.Items or {}
			end,
		}
	end

	index.CreateAIAssistant = function(arg, arg2)
		local tbl4 = arg2 or {}
		local providers = tbl4.Providers or {}
		local tools = tbl4.Tools or tbl4.Window and tbl4.Window:_BuildDefaultChatTools() or {}
		local systemPrompt = tbl4.SystemPrompt or tbl4.Window and tbl4.Window:_BuildDefaultSystemPrompt() or "You are a helpful assistant."
		local maxRounds = tbl4.MaxRounds or 6
		local maxTokens = tbl4.MaxTokens or 2048
		local request_ = syn and syn.request or http_request or request

		local function fn38()
			local tbl5 = {}

			for _, tool in ipairs(tools) do
				table.insert(tbl5, {
					type = "function",
					["function"] = { name = tool.Name, description = tool.Description, parameters = tool.Parameters },
				})
			end

			return tbl5
		end

		local str3 = nil

		if tbl4.Persist then
			str3 = str .. "/" .. fn30(tostring(tbl4.Persist)) .. ".chat.json"
		end

		local function fn39()
			if not (str3 and isfile_ and readfile_) then
				return nil
			end
			local ok, result = pcall(isfile_, str3)
			if not ok or not result then
				return nil
			end
			local ok2, result2 = pcall(readfile_, str3)
			if not ok2 then
				return nil
			end

			local ok3, result3 = pcall(function()
				return HttpService:JSONDecode(result2)
			end)

			if ok3 and type(result3) == "table" then
				return result3
			end
			return nil
		end

		local tbl5 = fn39() or { { role = "system", content = systemPrompt } }

		local function fn40()
			if not (str3 and writefile_) then
				return
			end
			fn13()
			pcall(writefile_, str3, HttpService:JSONEncode(tbl5))
		end

		local function fn41(arg3, arg4)
			local json = HttpService:JSONEncode({ model = arg3.Model, messages = arg4, tools = fn38(), max_tokens = maxTokens })

			local ok, result = pcall(request_, {
				Url = arg3.Endpoint,
				Method = "POST",
				Headers = { Authorization = "Bearer " .. tostring(arg3.ApiKey), ["Content-Type"] = "application/json" },
				Body = json,
			})

			if not ok then
				return nil, tostring(result), false
			end

			if result.StatusCode and result.StatusCode ~= 200 then
				local body = result.Body

				local ok2, result2 = pcall(function()
					return HttpService:JSONDecode(result.Body)
				end)

				local error_

				if ok2 and type(result2) == "table" then
					error_ = result2.error

					if type(error_) == "table" and error_.message then
						error_ = tostring(error_.message)
					elseif type(error_) ~= "string" then
						error_ = body
					end
				else
					error_ = body
				end

				local flag5 = result.StatusCode == 429

				if flag5 then
					error_ ..= " (daily free-tier limit)"
				end

				return nil, arg3.Name .. " API error " .. tostring(result.StatusCode) .. ": " .. error_, flag5
			end

			local ok2, result2 = pcall(function()
				return HttpService:JSONDecode(result.Body)
			end)

			if not ok2 then
				return nil, arg3.Name .. ": failed to decode API response.", false
			end
			return result2, nil, false
		end

		local function fn42(arg3)
			if not request_ then
				return nil, "Your executor doesn't support HTTP requests."
			end
			local str4 = "No AI provider configured -- add at least one entry with an ApiKey to Providers."

			for _, provider in ipairs(providers) do
				if provider.ApiKey and provider.ApiKey ~= "" then
					local v, v3
					v, str4, v3 = fn41(provider, arg3)
					if v then
						return v
					end

					if not v3 then
						return nil, str4
					end
				end
			end

			return nil, str4
		end

		local flag5 = false
		local flag6 = false

		return {
			Stop = function()
				flag5 = true
			end,
			IsBusy = function()
				return flag6
			end,
			GetHistory = function()
				return tbl5
			end,
			Reset = function()
				table.clear(tbl5)
				table.insert(tbl5, { role = "system", content = systemPrompt })
				fn40()
			end,
			Ask = function(arg3, arg4, arg5)
				table.insert(tbl5, { role = "user", content = arg5 })
				arg4:ShowTyping()
				flag5 = false
				flag6 = true

				for i = 1, maxRounds do
					if flag5 then
						flag6 = false
						arg4:HideTyping()
						arg4:AddMessage("assistant", "(stopped)")
						fn40()
						return
					end

					local v, v3 = fn42(tbl5)

					if not v then
						flag6 = false
						arg4:HideTyping()
						arg4:AddMessage("assistant", "Error: " .. tostring(v3))
						fn40()
						return
					end

					local choices = v.choices and v.choices[1]
					local message = choices and choices.message

					if not message then
						flag6 = false
						arg4:HideTyping()
						arg4:AddMessage("assistant", "Error: empty response from API.")
						fn40()
						return
					end

					table.insert(tbl5, message)
					local toolCalls = message.tool_calls
					local flag7 = toolCalls and #toolCalls > 0
					local str4, v4 = (message.content or ""):gsub("```", "")
					local flag8 = choices.finish_reason == "length" or v4 % 2 == 1

					if message.content and message.content ~= "" then
						if not flag7 and not flag8 then
							arg4:HideTyping()
						end

						arg4:AddMessage("assistant", message.content)
					end

					if flag7 then
						for _, toolCall in ipairs(toolCalls) do
							local ok, result = pcall(function()
								return HttpService:JSONDecode(toolCall["function"].arguments)
							end)

							local v5 = arg4:HandleToolCall(toolCall["function"].name, ok and result or {})

							table.insert(tbl5, {
								role = "tool",
								tool_call_id = toolCall.id,
								content = HttpService:JSONEncode(v5 == nil and {} or v5),
							})
						end

						continue
					end

					if flag8 then
						table.insert(tbl5, {
							role = "user",
							content = "You got cut off. Continue exactly where you left off -- don't repeat anything, don't restart the explanation.",
						})

						continue
					end

					flag6 = false
					arg4:HideTyping()
					fn40()
					return
				end

				flag6 = false
				arg4:HideTyping()
				arg4:AddMessage("assistant", "(stopped after several rounds of tool calls/continuations -- ask me to continue if you need to)")
				fn40()
			end,
		}
	end
end

local function fn29()
	for _, window in ipairs(index._Windows) do
		window._destroyed = true

		if window._janitor then
			window._janitor:Destroy()
		end
	end

	table.clear(index._Windows)
end

index._Root.Destroying:Connect(function()
	flag2 = true
	fn29()
	fn11()
	v2:Destroy()
end)

index.Unload = function()
	if index._Unloaded then
		return
	end
	index._Unloaded = true

	pcall(function()
		index.Unloaded.Fire()
	end)

	pcall(fn26)
	flag2 = true
	pcall(fn29)
	pcall(fn11)

	pcall(function()
		v2:Destroy()
	end)

	if index._Root then
		pcall(function()
			index._Root:Destroy()
		end)

		index._Root = nil
	end

	index._Windows = {}
	index.Flags = {}
	local v = fn()

	if v.__NullUI_Unload then
		v.__NullUI_Unload = nil
	end
end

do
	local tbl4 = {
		enabled = true,
		lang = nil,
		cache = {},
		queue = {},
		queued = {},
		waiting = {},
		source = setmetatable({}, { __mode = "k" }),
		applied = setmetatable({}, { __mode = "k" }),
		running = false,
		dirty = false,
	}

	local function fn30()
		local robloxLocaleId = nil

		pcall(function()
			robloxLocaleId = game:GetService("LocalizationService").RobloxLocaleId
		end)

		if type(robloxLocaleId) ~= "string" or robloxLocaleId == "" then
			pcall(function()
				robloxLocaleId = localPlayer.LocaleId
			end)
		end

		robloxLocaleId = type(robloxLocaleId) == "string" and robloxLocaleId:lower() or "en-us"
		local match = robloxLocaleId:match("^(%a+)") or "en"

		if match == "zh" then
			if robloxLocaleId:find("tw") or robloxLocaleId:find("hk") then
				return "zh-TW"
			end
			return "zh-CN"
		end

		return match
	end

	local function fn31()
		return "NullUI/translate_" .. tbl4.lang .. ".json"
	end

	local function fn32()
		if type(readfile) ~= "function" or type(isfile) ~= "function" then
			return
		end

		pcall(function()
			if isfile(fn31()) then
				local HttpService2 = game:GetService("HttpService")
				local jsonDecode = HttpService2.JSONDecode
				local v = table.pack(readfile(fn31()))
				v.n = 2 + v.n - 1
				table.move(v, 1, v.n, 2, v)
				v[1] = HttpService2
				local v3 = jsonDecode(table.unpack(v, 1, v.n))

				if type(v3) == "table" then
					tbl4.cache = v3
				end
			end
		end)
	end

	local function fn33()
		if not tbl4.dirty or type(writefile) ~= "function" then
			return
		end
		tbl4.dirty = false

		pcall(function()
			if type(isfolder) == "function" and type(makefolder) == "function" and not isfolder("NullUI") then
				makefolder("NullUI")
			end

			writefile(fn31(), game:GetService("HttpService"):JSONEncode(tbl4.cache))
		end)
	end

	local function fn34(v,P)if not v.Parent or not  tbl4 .enabled then return;end; tbl4 .applied[v]=P;v.Text=P;end

	local function fn35(arg)
		local HttpService2 = game:GetService("HttpService")
		local v = HttpService2:UrlEncode(arg)
		local ok, result = pcall(game.HttpGetAsync, game, "https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=en&tl=" .. tbl4.lang .. "&q=" .. v)

		if ok and type(result) == "string" then
			local ok2, result2 = pcall(HttpService2.JSONDecode, HttpService2, result)

			if ok2 and type(result2) == "table" then
				local v3 = result2[1]

				if type(v3) == "table" then
					v3 = v3[1]
				end

				if type(v3) == "string" then
					return v3
				end
			end
		end

		local ok2, result2 = pcall(game.HttpGetAsync, game, "https://api.mymemory.translated.net/get?langpair=en|" .. tbl4.lang .. "&q=" .. v)

		if ok2 and type(result2) == "string" then
			local ok3, result3 = pcall(HttpService2.JSONDecode, HttpService2, result2)

			if ok3 and type(result3) == "table" and type(result3.responseData) == "table" then
				local translatedText = result3.responseData.translatedText
				if type(translatedText) == "string" then
					return translatedText
				end
			end
		end

		return nil
	end

	local function fn36(arg)
		local v = fn35(table.concat(arg, "\n"))
		if not v then
			return nil
		end
		local tbl5 = {}

		for match in (v .. "\n"):gmatch("(.-)\n") do
			table.insert(tbl5, match)
		end

		if #tbl5 ~= #arg then
			return nil
		end
		return tbl5
	end

	local function fn37()
		if tbl4.running then
			return
		end
		tbl4.running = true

		fn2(function()
			while #tbl4.queue > 0 and tbl4.enabled do
				local tbl5 = {}
				local n = 0

				while #tbl4.queue > 0 and #tbl5 < 25 and n < 1500 do
					local v = table.remove(tbl4.queue, 1)
					table.insert(tbl5, v)
					n += #v
				end

				local tbl6 = fn36(tbl5)

				if not tbl6 and #tbl5 > 1 then
					tbl6 = {}

					for _, v in ipairs(tbl5) do
						local v3 = fn36({ v })
						table.insert(tbl6, v3 and v3[1] or v)
						task.wait(0.4)
					end
				end

				for i, v in ipairs(tbl5) do
					local v3 = tbl6 and tbl6[i]

					if type(v3) ~= "string" or v3 == "" then
						v3 = v
					end

					tbl4.cache[v] = v3
					tbl4.queued[v] = nil
					tbl4.dirty = true
					local tbl7 = tbl4.waiting[v]
					tbl4.waiting[v] = nil
					local v4 = ipairs
					tbl7 = tbl7 or {}

					for _, v5 in v4(tbl7) do
						if tbl4.source[v5] == v then
							fn34(v5, v3)
						end
					end
				end

				fn33()
				task.wait(1.2)
			end

			tbl4.running = false
		end)
	end
end

error("devirt: value <luasym.LuaFunc object at 0x000001808419C1C0> in an expression (at 207:1207)")
