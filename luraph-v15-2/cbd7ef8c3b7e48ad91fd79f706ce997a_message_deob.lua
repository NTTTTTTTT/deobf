-- Deobfuscated by ccjvwsod on Discord
-- Detected obfuscation: Luraph v15
-- Local names are inferred from use (the original names are not in the bytecode)

local slugID = _G.SlugID
local flag = _G.CompatibleMode == true
local pandaKrypticCfg = _G.PandaKrypticCfg or {}
local flag2 = pandaKrypticCfg.Silent == true
local flag3 = pandaKrypticCfg.WaitGame ~= false

if pandaKrypticCfg.ServiceId then
end

if pandaKrypticCfg.GetKeyUrl then
end

if not pandaKrypticCfg.KeyCheckUrl then
end

if pandaKrypticCfg.ConfigUrl then
end

if pandaKrypticCfg.ActiveUrl then
end

if not pandaKrypticCfg.OwnerTier then
end

local flag4 = _G.DebugKey == "PandaSkie2026" and not flag2
local str = "1.3.9"
local genv = _G

pcall(function()
	if type(getgenv) == "function" then
		genv = getgenv() or _G
	end
end)

local function fn(arg)
	local v = nil

	pcall(function()
		v = genv[arg]
	end)

	if v == nil then
		pcall(function()
			v = _G[arg]
		end)
	end

	return v
end

local flag5 = fn("HIDE_GUI") == true

local function fn2(...)
	if flag4 then
		local tbl = { ... }
		local tbl2 = { "[Kryptic]" }

		for i = 1, #tbl do
			tbl2[#tbl2 + 1] = tostring(tbl[i])
		end

		print(table.concat(tbl2, " "))
	end
end

local now = os.clock()

local function fn3()
	return string.format("%.2f", os.clock() - now)
end

local v = print
local v2 = warn

if flag2 then
	local function fn4()
	end

	v = fn4
	v2 = fn4
end

if type(slugID) ~= "string" or slugID == "" then
	return v2("[Kryptic] _G.SlugID is required (string)")
end

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
game:GetService("RunService")

if flag3 and not game:IsLoaded() then
	game.Loaded:Wait()
end

local str2 = "Unknown"

pcall(function()
	if type(identifyexecutor) == "function" then
		str2 = identifyexecutor() or "Unknown"
	elseif type(getexecutorname) == "function" then
		str2 = getexecutorname() or "Unknown"
	end
end)

local request_ = request or http_request or http and http.request
local request_2

if request_ then
	request_2 = request_
else
	request_2 = syn and syn.request
end

if not request_2 then
	return error("[Kryptic] No HTTP request function available")
end

if not bit32 then
	return error("[Kryptic] Executor missing bit32 (required for crypto)")
end

if not flag then
	local function fn4(arg)
		if type(arg) == "function" then
			return arg
		end

		if arg == nil then
			return nil
		end
		local connect = nil

		pcall(function()
			connect = arg.connect or arg.Connect
		end)

		if type(connect) ~= "function" then
			return nil
		end

		return function(arg2)
			local ok, result = pcall(connect, arg2)
			if ok and result then
				return result
			end
			return connect(arg, arg2)
		end
	end

	local v3 = fn4(WebSocket) or fn4(websocket) or fn4(WebSocket2)
	local v4

	if v3 then
		v4 = v3
	else
		v4 = fn4(syn and syn.websocket)
	end

	if not v4 then
		fn2("No WebSocket fn - downgrading to HTTP compat")
		flag = true
	end
end

local str3 = "none"

pcall(function()
	if type(gethwid) == "function" then
		str3 = gethwid() or "none"
	elseif type(getfingerprintid) == "function" then
		str3 = getfingerprintid() or "none"
	elseif type(getdeviceid) == "function" then
		str3 = getdeviceid() or "none"
	end
end)

tostring(game.PlaceId)
local str4 = "0"
local str5 = "Unknown"
local str6 = "Unknown"

pcall(function()
	local localPlayer = Players.LocalPlayer

	if localPlayer then
		str4 = tostring(localPlayer.UserId)
		str5 = localPlayer.DisplayName or localPlayer.Name
		str6 = localPlayer.Name
	end
end)

local function fn4(arg)
	return string.sub(tostring(arg == nil and "" or arg):gsub("[^A-Za-z0-9_%-%.]", ""), 1, 1024)
end

local str7 = "ClientID"
local Authentication_Method = fn("Authentication_Method")

if type(Authentication_Method) == "string" then
	local str8 = Authentication_Method:lower():gsub("[^%a]", "")

	if str8 == "useridonly" or str8 == "userid" then
		str7 = "UserID_Only"
	elseif str8 == "auto" then
		str7 = "Auto"
	end
end

local str8 = str4 ~= "0" and str4 ~= "" and "rbx-" .. str4 or nil
local flag6 = str3 ~= "none" and str3 ~= ""
local v3 = nil
local str9

if str7 == "UserID_Only" then
	str9 = str8 or str3

	if not str8 then
		fn2("UserID_Only requested but no LocalPlayer UserId — using HWID")
	end
elseif str7 == "Auto" then
	str9 = flag6 and str3 or str8 or str3

	if str8 and str9 ~= str8 then
		v3 = str8
	end
else
	str9 = str3
end

if str9 == nil or tostring(str9) == "" then
	str9 = "none"
end

fn2("Loader v" .. str, "Executor:", str2, "Transport:", flag and "HTTP" or "WSS")
fn2("Auth method:", str7, "| identity:", str9, v3 and "| fallback: " .. v3 or "")
local str10 = "PC"
local flag7 = false

pcall(function()
	local UserInputService = game:GetService("UserInputService")

	if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
		str10 = "Mobile"
		flag7 = true
	end
end)

local str11 = "—"

pcall(function()
	str11 = os.date("%b %d, %Y")
end)

local str12 = "Unknown"

local tbl = {
	PH = "Philippines",
	ID = "Indonesia",
	SG = "Singapore",
	MY = "Malaysia",
	VN = "Vietnam",
	TH = "Thailand",
	IN = "India",
	US = "United States",
	GB = "United Kingdom",
	CA = "Canada",
	AU = "Australia",
	BR = "Brazil",
	MX = "Mexico",
	DE = "Germany",
	FR = "France",
	NL = "Netherlands",
	RU = "Russia",
	CN = "China",
	JP = "Japan",
	KR = "South Korea",
	TW = "Taiwan",
	HK = "Hong Kong",
	PK = "Pakistan",
	BD = "Bangladesh",
	TR = "Turkey",
	EG = "Egypt",
	NG = "Nigeria",
	ZA = "South Africa",
	AR = "Argentina",
	CL = "Chile",
	CO = "Colombia",
	ES = "Spain",
	IT = "Italy",
	PL = "Poland",
	SE = "Sweden",
	UA = "Ukraine",
	SA = "Saudi Arabia",
	AE = "United Arab Emirates",
	KH = "Cambodia",
	MM = "Myanmar",
	LA = "Laos",
	NZ = "New Zealand",
	PT = "Portugal",
}

local function fn5(arg)
	if type(arg) ~= "string" or #arg ~= 2 then
		return false
	end
	local str13 = arg:upper()
	local v4 = tbl[str13]
	str12 = v4 and v4 .. " (" .. str13 .. ")" or str13
	return true
end

task.spawn(function()
	local ok, result = pcall(function()
		return game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(Players.LocalPlayer)
	end)

	if ok and fn5(result) then
		return
	end

	pcall(function()
		local data = HttpService:JSONDecode(game:HttpGet("https://api.country.is/"))

		if type(data) == "table" then
			fn5(data.country)
		end
	end)
end)

local function fn6(arg, arg2, parent)
	local instance = Instance.new(arg)

	if arg2 then
		for k, v4 in pairs(arg2) do
			instance[k] = v4
		end
	end

	if parent then
		instance.Parent = parent
	end

	return instance
end

local function fn7(arg, arg2)
	local str13 = tostring(arg)

	if (arg2 or 28) < #str13 then
		str13 = str13:sub(1, arg2 or 28) .. "…"
	end

	return str13
end

local function fn8()
	local tbl2 = {
		setStatus = function()
		end,
		setProgress = function()
		end,
		finish = function()
		end,
		fail = function()
		end,
	}

	if flag2 then
		return tbl2
	end

	if flag5 then
		local str13 = "Initializing…"
		local flag8 = false

		local function fn9(arg)
			local n = tonumber(arg) or 0

			if n ~= n then
				n = 0
			end

			local n2 = math.clamp(n, 0, 1)
			local n3 = math.floor(n2 * 20 + 0.5)
			return "[" .. string.rep("=", n3) .. string.rep(" ", 20 - n3) .. "] " .. string.format("%3d%%", math.floor(n2 * 100 + 0.5))
		end

		return {
			setStatus = function(arg)
				str13 = tostring(arg)

				pcall(function()
					v("[Panda Kryptic] " .. str13)
				end)
			end,
			setProgress = function(arg)
				pcall(function()
					local str14 = "  " .. str13
					v("[Panda Kryptic] " .. fn9(arg) .. str14)
				end)
			end,
			finish = function(arg)
				pcall(function()
					local v4 = v
					local v5 = fn9(1)
					local v6 = tostring
					local v7 = arg
					local str14

					if arg then
						str14 = v7
					else
						str14 = "Loaded"
					end

					v4("[Panda Kryptic] " .. v5 .. "  " .. v6(str14))
				end)
			end,
			fail = function(arg, arg2)
				if flag8 then
					return
				end
				flag8 = true

				pcall(function()
					v2("[Panda Kryptic] ──────────────────────────────────────")
					v2("[Panda Kryptic] FAILED: " .. tostring(arg or "Load failed"))
					v2("[Panda Kryptic] Executor    " .. tostring(str2))
					v2("[Panda Kryptic] Device      " .. tostring(str10))
					local str14 = " (" .. str7 .. ")"
					v2("[Panda Kryptic] Identity    " .. fn7(str9) .. str14)
					v2("[Panda Kryptic] Date        " .. tostring(str11))
					local v4 = v2
					local v5 = tostring
					local v6 = arg2
					local str15

					if arg2 then
						str15 = v6
					else
						str15 = "LOADER_ERROR"
					end

					v4("[Panda Kryptic] Code Detail " .. v5(str15))
					v2("[Panda Kryptic] ──────────────────────────────────────")
				end)
			end,
		}
	end

	local tbl3 = {
		setStatus = function()
		end,
		setProgress = function()
		end,
		finish = function()
		end,
		fail = function()
		end,
	}

	pcall(function()
		local TweenService = game:GetService("TweenService")
		local color = Color3.fromRGB(56, 189, 248)
		local color2 = Color3.fromRGB(70, 190, 120)
		local color3 = Color3.fromRGB(232, 86, 86)

		local ScreenGui = fn6("ScreenGui", {
			Name = HttpService:GenerateGUID(false),
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 999999,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		})

		local hui = nil

		pcall(function()
			if type(gethui) == "function" then
				hui = gethui()
			end
		end)

		if not hui then
			pcall(function()
				hui = game:GetService("CoreGui")
			end)
		end

		if type(protectgui) == "function" then
			pcall(protectgui, ScreenGui)
		end

		ScreenGui.Parent = hui or game:GetService("CoreGui")
		local udim2 = UDim2.new(0, 18, 1, -18)
		local udim22 = UDim2.new(0, -316, 1, -18)

		local Frame = fn6("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			Position = udim22,
			Size = UDim2.new(0, 276, 0, 80),
			BackgroundColor3 = Color3.fromRGB(16, 17, 21),
			BorderSizePixel = 0,
			ClipsDescendants = true,
		}, ScreenGui)

		fn6("UICorner", { CornerRadius = UDim.new(0, 12) }, Frame)
		fn6("UIStroke", { Color = Color3.fromRGB(44, 45, 54), Thickness = 1, Transparency = 0.15 }, Frame)

		local Frame2 = fn6("Frame", {
			BackgroundColor3 = color,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 13, 0, 13),
			Size = UDim2.new(0, 3, 0, 54),
		}, Frame)

		fn6("UICorner", { CornerRadius = UDim.new(1, 0) }, Frame2)

		fn6("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 28, 0, 12),
			Size = UDim2.new(1, -44, 0, 18),
			Font = Enum.Font.GothamBold,
			Text = "Panda Kryptic",
			TextColor3 = Color3.fromRGB(245, 245, 247),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame)

		local TextLabel = fn6("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 28, 0, 33),
			Size = UDim2.new(1, -44, 0, 16),
			Font = Enum.Font.Gotham,
			Text = "Initializing…",
			TextColor3 = Color3.fromRGB(176, 180, 192),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
		}, Frame)

		local Frame3 = fn6("Frame", {
			Position = UDim2.new(0, 28, 0, 62),
			Size = UDim2.new(1, -44, 0, 4),
			BackgroundColor3 = Color3.fromRGB(38, 39, 48),
			BorderSizePixel = 0,
			ClipsDescendants = true,
		}, Frame)

		fn6("UICorner", { CornerRadius = UDim.new(1, 0) }, Frame3)

		local Frame4 = fn6("Frame", {
			BackgroundColor3 = color,
			BorderSizePixel = 0,
			Position = UDim2.new(-0.4, 0, 0, 0),
			Size = UDim2.new(0.4, 0, 1, 0),
		}, Frame3)

		fn6("UICorner", { CornerRadius = UDim.new(1, 0) }, Frame4)
		local tween = nil

		pcall(function()
			tween = TweenService:Create(Frame4, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true, 0), { Position = UDim2.new(1, 0, 0, 0) })
			tween:Play()
		end)

		pcall(function()
			local tbl4 = { Position = udim2 }
			TweenService:Create(Frame, TweenInfo.new(0.32, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), tbl4):Play()
		end)

		local flag8 = false

		local function fn9(arg)
			task.spawn(function()
				local wait = task.wait
				local v4 = arg
				local n

				if arg then
					n = v4
				else
					n = 1
				end

				wait(n)
				if flag8 then
					return
				end
				flag8 = true

				pcall(function()
					if tween then
						tween:Cancel()
					end
				end)

				pcall(function()
					local tbl4 = { Position = udim22 }
					TweenService:Create(Frame, TweenInfo.new(0.26, Enum.EasingStyle.Quart, Enum.EasingDirection.In), tbl4):Play()
				end)

				task.wait(0.3)

				pcall(function()
					ScreenGui:Destroy()
				end)
			end)
		end

		tbl3.setStatus = function(arg)
			pcall(function()
				TextLabel.Text = tostring(arg)
			end)
		end

		tbl3.setProgress = function(arg)
			pcall(function()
				if tween then
					tween:Cancel()
					tween = nil
				end

				local n = math.clamp(tonumber(arg) or 0, 0, 1)
				Frame4.Position = UDim2.new(0, 0, 0, 0)
				TweenService:Create(Frame4, TweenInfo.new(0.25), { Size = UDim2.new(n, 0, 1, 0) }):Play()
			end)
		end

		tbl3.finish = function(arg)
			pcall(function()
				if tween then
					tween:Cancel()
					tween = nil
				end

				Frame2.BackgroundColor3 = color2
				Frame4.BackgroundColor3 = color2
				Frame4.Position = UDim2.new(0, 0, 0, 0)
				TweenService:Create(Frame4, TweenInfo.new(0.25), { Size = UDim2.new(1, 0, 1, 0) }):Play()
				TextLabel.Text = tostring(arg or "Loaded")
				TextLabel.TextColor3 = color2
			end)

			fn9(1.1)
		end

		local flag9 = false

		tbl3.fail = function(arg, arg2)
			if flag9 then
				return
			end
			flag9 = true

			pcall(function()
				if tween then
					tween:Cancel()
					tween = nil
				end

				Frame.Visible = false

				TweenService:Create(fn6("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0, 0, 0, 0),
					BackgroundColor3 = Color3.fromRGB(8, 9, 12),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Active = true,
					ZIndex = 50,
				}, ScreenGui), TweenInfo.new(0.3), { BackgroundTransparency = 0.06 }):Play()

				local v4

				local Frame5 = fn6("Frame", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, -48, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					ZIndex = 51,
				}, v4)

				fn6("UISizeConstraint", { MaxSize = Vector2.new(560, math.huge), MinSize = Vector2.new(0, 0) }, Frame5)

				fn6("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 8),
				}, Frame5)

				local layoutOrder = 0

				local function fn10(arg3)
					layoutOrder += 1
					arg3.LayoutOrder = layoutOrder
					arg3.ZIndex = 52
					arg3.Parent = Frame5
					return arg3
				end

				local Frame6 = fn6("Frame", { BackgroundColor3 = color3, BorderSizePixel = 0, Size = UDim2.new(0, 56, 0, 4) })
				fn10(Frame6)
				fn6("UICorner", { CornerRadius = UDim.new(1, 0) }, Frame6)

				fn10(fn6("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 36),
					Font = Enum.Font.GothamBold,
					Text = "Panda Kryptic — Failed",
					TextColor3 = Color3.fromRGB(245, 245, 247),
					TextSize = 28,
					TextXAlignment = Enum.TextXAlignment.Center,
				}))

				fn10(fn6("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					Font = Enum.Font.Gotham,
					Text = tostring(arg or "Load failed"),
					TextColor3 = color3,
					TextSize = 17,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Center,
				}))

				fn10(fn6("Frame", { BackgroundTransparency = 1, Size = UDim2.new(0, 1, 0, 12) }))
				local str13 = str7 == "ClientID" and "HWID" or "Identity"
				local v5 = fn7(str9)

				local function fn11(arg3)
					return (tostring(arg3):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
				end

				local function fn12(arg3, arg4)
					fn10(fn6("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 22),
						Font = Enum.Font.GothamMedium,
						RichText = true,
						Text = "<font color=\"#787b86\">" .. arg3 .. "</font>    <font color=\"#d6d8e0\">" .. fn11(arg4) .. "</font>",
						TextColor3 = Color3.fromRGB(214, 216, 224),
						TextSize = 16,
						TextXAlignment = Enum.TextXAlignment.Center,
					}))
				end

				fn12("Executor", str2)
				fn12("Device", str10)
				fn12("Country", str12)
				fn12(str13, v5)
				fn12("Date", str11)
				fn12("Code Detail", tostring(arg2 or "LOADER_ERROR"))
			end)
		end
	end)

	return tbl3
end

local v4 = fn8()

local function fn9(arg, arg2)
	pcall(function()
		v2(arg)
	end)

	pcall(function()
		v4.fail(arg, arg2)
	end)

	pcall(function()
		local localPlayer = Players.LocalPlayer

		if localPlayer then
			localPlayer:Kick(arg)
		end
	end)
end

local function fn10(arg)
	if type(arg) ~= "table" then
		return
	end

	if arg.fatal == "DISABLED" then
		fn9("[+] The Script has been Disabled by Administrator / Owner", "SCRIPT_DISABLED")
		error("[Kryptic] script disabled")
	elseif arg.fatal == "NOT_FOUND" then
		fn9("[-] Script is Unavailable / Not Found, Please Contact the Owner", "SCRIPT_UNAVAILABLE")
		error("[Kryptic] script unavailable")
	end
end

local function fn11(arg)
	if arg then
		pcall(function()
			local localPlayer = Players.LocalPlayer

			if localPlayer then
				localPlayer:Kick(arg)
			end
		end)
	end

	while true do
		pcall(function()
			task.wait(9e9)
		end)
	end
end

error("devirt: value <luasym.LuaFunc object at 0x000001E36AA03730> in an expression (at 143:1136)")
