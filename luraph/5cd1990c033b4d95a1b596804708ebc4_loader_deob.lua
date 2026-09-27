repeat
	task.wait()
until game:IsLoaded()

if getgenv().valid ~= "vps" and getgenv().valid ~= "github" then
	game:GetService("Players").LocalPlayer:Kick("Script corrupted")
	return
end

local str = "http://132.243.222.170:7000/"
local str2 = "http://132.243.222.170:5000"
local tbl = { "https://raw.githubusercontent.com/Roma77799/Secrethub/refs/heads/main/" }
local workspaceFile = "SNPWARE/Loader_Debug.log"
local n = 5242880
local tbl2 = {}
local flag = false

local function fn()
	if type(makefolder) ~= "function" then
		return
	end
	pcall(makefolder, "SNPWARE")
end

local function fn2()
	if type(writefile) ~= "function" or type(readfile) ~= "function" then
		return
	end

	pcall(function()
		if type(isfile) == "function" then
			local ok, result = pcall(isfile, "SNPWARE/Loader_Debug.log")
			if not (ok and result) then
				return
			end
		end

		local ok, result = pcall(readfile, "SNPWARE/Loader_Debug.log")
		if not ok or type(result) ~= "string" or #result <= n then
			return
		end
		local str3 = string.sub(result, -math.floor(n * 0.4))
		local v = string.find(str3, "\n", 1, true)
		local str4

		if v then
			str4 = string.sub(str3, v + 1)
		else
			str4 = str3
		end

		writefile("SNPWARE/Loader_Debug.log", string.format("[LOADER] rotated %s was=%dB kept=%dB\n", os.date("%X"), #result, #str4) .. str4)
	end)
end

local function fn3()
	local n2 = 0

	for i = 1, #tbl2 do
		n2 = n2 + #tostring(tbl2[i]) + 1
	end

	if n2 <= n then
		return
	end
	local n3 = math.floor(n * 0.4)
	local n4 = #tbl2
	local n5 = 0

	while n4 > 1 and n5 < n3 do
		n5 = n5 + #tostring(tbl2[n4]) + 1
		n4 -= 1
	end

	local tbl3 = {}

	for i = n4, #tbl2 do
		tbl3[#tbl3 + 1] = tbl2[i]
	end

	for i = #tbl2, 1, -1 do
		tbl2[i] = nil
	end

	tbl2[1] = string.format("[LOADER] %s buffer trimmed kept~%dB", os.date("%X"), n5)

	for i = 1, #tbl3 do
		tbl2[i + 1] = tbl3[i]
	end
end

local function fn4()
	if not writefile then
		return
	end

	pcall(function()
		fn()
		writefile("SNPWARE/Loader_Debug.log", string.format("[LOADER] session %s\n", os.date("%X")))
	end)
end

local function snpFlushLoadLog()
	if not writefile or #tbl2 == 0 then
		return
	end

	pcall(function()
		fn()
		fn3()
		writefile("SNPWARE/Loader_Debug.log", table.concat(tbl2, "\n") .. "\n")
		fn2()
	end)
end

local function snpLoadLog(...)
	local v = table.pack(...)
	local tbl3 = { "[LOADER]", os.date("%X") }

	for i = 1, select("#", ...) do
		tbl3[#tbl3 + 1] = tostring(select(i, table.unpack(v, 1, v.n)))
	end

	local str3 = table.concat(tbl3, " ")
	if not writefile then
		return
	end
	table.insert(tbl2, str3)

	if not flag then
		flag = true

		task.defer(function()
			flag = false
			snpFlushLoadLog()
		end)
	end
end

getgenv().SNP_loadLog = snpLoadLog
getgenv().SNP_flushLoadLog = snpFlushLoadLog
fn4()

local function fn5(arg)
	local str3 = tostring(arg or "")
	return str3:find("Timedout", 1, true) or str3:find("ConnectFail", 1, true) or str3:find("DnsResolve", 1, true) or str3:find("Connection refused", 1, true)
end

local function fn6(arg)
	if not getgenv()._SNP_VPS_BLOCKED and fn5(arg) then
		getgenv()._SNP_VPS_BLOCKED = true
		snpLoadLog("vps_blocked", tostring(arg), "github-only for rest of session")
		snpFlushLoadLog()
	end
end

local function fn7()
	return getgenv()._SNP_VPS_BLOCKED == true
end

snpLoadLog("boot", "game loaded")

snpLoadLog("executor", "request=" .. tostring(type(request) == "function"), "syn.request=" .. tostring(type(syn) == "table" and type(syn.request) == "function"), "http.request=" .. tostring(type(http) == "table" and type(http.request) == "function"), "HttpGet=" .. tostring(pcall(function()
	return game.HttpGet
end) and type(game.HttpGet) == "function"), "writefile=" .. tostring(type(writefile) == "function"))

snpLoadLog("policy", "order: VPS proxy -> GitHub raw fallback")

local function fn8(arg, arg2, arg3)
	if type(arg2) == arg then
		return arg2
	end
	return arg3
end

local function fn9(arg)
	return str .. "hub/" .. tostring(arg or ""):gsub("^/+", "")
end

local function fn10()
	local crypt_ = syn and syn.crypt
	if fn8("table", crypt_, nil) then
		return crypt_
	end
	return fn8("table", crypt, nil)
end

local function fn11()
	local flag2 = fn8("table", fn10(), nil) ~= nil

	if flag2 then
		flag2 = fn8("function", bit32 and bit32.bxor, nil) ~= nil
	end

	return flag2
end

local function fn12(arg, arg2)
	local v = fn8("function", arg and arg.base64encode, nil)

	if not v then
		v = fn8("function", arg and arg.base64_encode, nil)
	end

	if not v then
		v = fn8("function", arg and arg.encode, nil)
	end

	if v then
		return v(arg2)
	end
	return nil
end

local function fn13(arg)
	return arg % 4294967296
end

local function fn14(arg, arg2)
	local n2 = arg % 4294967296
	return fn13(bit32.lshift(n2, arg2) + bit32.rshift(n2, 32 - arg2))
end

local function fn15(arg, arg2, arg3, arg4, arg5)
	arg[arg2] = fn13(arg[arg2] + arg[arg3])
	arg[arg5] = fn14(bit32.bxor(arg[arg5], arg[arg2]), 16)
	arg[arg4] = fn13(arg[arg4] + arg[arg5])
	arg[arg3] = fn14(bit32.bxor(arg[arg3], arg[arg4]), 12)
	arg[arg2] = fn13(arg[arg2] + arg[arg3])
	arg[arg5] = fn14(bit32.bxor(arg[arg5], arg[arg2]), 8)
	arg[arg4] = fn13(arg[arg4] + arg[arg5])
	arg[arg3] = fn14(bit32.bxor(arg[arg3], arg[arg4]), 7)
end

local function fn16(arg, arg2)
	local n2 = arg2 or 1
	local v, v2, v3, v4 = string.byte(arg, n2, n2 + 3)
	return v + v2 * 256 + v3 * 65536 + v4 * 16777216
end

local function fn17(arg)
	return string.char(arg % 256, math.floor(arg / 256) % 256, math.floor(arg / 65536) % 256, math.floor(arg / 16777216) % 256)
end

local function fn18(arg)
	local v = table.create(16)

	for i = 1, 16 do
		v[i] = arg[i]
	end

	for i = 1, 20 do
		if i % 2 == 1 then
			fn15(v, 1, 5, 9, 13)
			fn15(v, 2, 6, 10, 14)
			fn15(v, 3, 7, 11, 15)
			fn15(v, 4, 8, 12, 16)
		else
			fn15(v, 1, 6, 11, 16)
			fn15(v, 2, 7, 12, 13)
			fn15(v, 3, 8, 9, 14)
			fn15(v, 4, 5, 10, 15)
		end
	end

	for i = 1, 16 do
		arg[i] = fn13(arg[i] + v[i])
	end
end

local function fn19(arg, arg2, arg3, arg4)
	if #arg == 0 then
		return ""
	end
	local str3 = #arg2 == 32 and "expand 32-byte k" or "expand 16-byte k"
	local v = table.create(#arg)
	local n2 = 1
	arg4 = arg4 or 1

	while n2 <= #arg do
		local v2 = table.create(16, 0)

		for i = 0, 3 do
			v2[i + 1] = fn16(str3, i * 4 + 1)
		end

		for i = 0, 3 do
			v2[5 + i] = fn16(arg2, i * 4 + 1)
		end

		if #arg2 == 32 then
			for i = 0, 3 do
				v2[9 + i] = fn16(arg2, 16 + i * 4 + 1)
			end
		else
			for i = 0, 3 do
				v2[9 + i] = fn16(arg2, i * 4 + 1)
			end
		end

		v2[13] = arg4

		for i = 0, 2 do
			v2[14 + i] = fn16(arg3, i * 4 + 1)
		end

		fn18(v2)
		local tbl3 = {}

		for i = 1, 16 do
			tbl3[i] = fn17(v2[i])
		end

		local str4 = table.concat(tbl3)
		local n3 = math.min(64, #arg - n2 + 1)

		for i = 0, n3 - 1 do
			local n4 = n2 + i
			local byte = string.byte
			v[n4] = string.char(bit32.bxor(string.byte(arg, n2 + i), byte(str4, i + 1)))
		end

		n2 += n3
		arg4 += 1
	end

	return table.concat(v)
end

local function fn20(arg, arg2)
	if not fn11() then
		return nil
	end
	local v = fn10()
	local v2 = fn19(arg, "U;+2X4y9c9_ERN%M#O*doq=VnJSF~J2W", arg2, 1)
	return fn12(v, v2)
end

local function fn21(arg)
	local str3 = arg:sub(#str + 1)
	if str3 == "" or not fn11() then
		return nil
	end
	local str4 = game:GetService("HttpService"):GenerateGUID(false):gsub("-", ""):sub(1, 12)
	local v = fn20(game:GetService("HttpService"):JSONEncode({ m = "GET", path = str3, rid = str4 }), str4)
	if not v then
		return nil
	end
	return { ["X-SNP-Enc"] = "1", ["X-SNP-Nonce"] = str4, ["X-SNP-Auth"] = v }
end

local function fn22(arg, headers, timeout)
	local function fn23()
		local tbl3 = { Url = arg, Method = "GET" }

		if headers and next(headers) ~= nil then
			tbl3.Headers = headers
		end

		if timeout and timeout > 0 then
			tbl3.Timeout = timeout
		end

		return tbl3
	end

	local result, str3

	if type(request) == "function" then
		local ok

		ok, result = pcall(function()
			return request(fn23())
		end)

		str3 = "request"
		if not ok then
			return false, nil, nil, "request", result
		end
	elseif type(syn) == "table" and type(syn.request) == "function" then
		local ok

		ok, result = pcall(function()
			return syn.request(fn23())
		end)

		str3 = "syn.request"
		if not ok then
			return false, nil, nil, "syn.request", result
		end
	else
		if not (type(http) == "table" and type(http.request) == "function") then
			if headers then
				return false, nil, nil, "blocked", "auth headers need request/syn/http"
			end

			local ok, result2 = pcall(function()
				return game:HttpGet(arg, true)
			end)

			if ok and type(result2) == "string" and result2 ~= "" then
				return true, result2, 200, "game:HttpGet", nil
			end
			return false, nil, nil, "game:HttpGet", result2 or "HttpGet failed"
		end

		local ok

		ok, result = pcall(function()
			return http.request(fn23())
		end)

		str3 = "http.request"
		if not ok then
			return false, nil, nil, "http.request", result
		end
	end

	if not result then
		return false, nil, nil, str3, "empty response object"
	end
	local statusCode = result.StatusCode
	local body = result.Body
	if statusCode == 404 then
		body = type(body) == "string" and body ~= "" and body or "404: Not Found"
		return true, body, 404, str3, nil
	end

	if statusCode == 401 or statusCode == 403 or statusCode == 429 or statusCode == 502 then
		return false, body, statusCode, str3, "http " .. tostring(statusCode)
	end

	if statusCode and statusCode >= 200 and statusCode < 300 and type(body) == "string" and body ~= "" then
		return true, body, statusCode, str3, nil
	end
	return false, body, statusCode, str3, "bad response"
end

local function fn23(arg)
	if type(arg) ~= "string" or arg == "" then
		return false, "empty response"
	end

	if arg:find("<!DOCTYPE", 1, true) or arg:find("<html", 1, true) then
		return false, "HTML error page (blocked or 404)"
	end
	return true, arg
end

local function fn24(arg, arg2)
	local str3 = tostring(arg or ""):gsub("^/+", "")
	arg2 = arg2 or str3

	for i, v in ipairs(tbl) do
		local str4 = v .. str3
		local now = tick()
		snpLoadLog("github_try", arg2, "mirror=" .. i, str4)
		local v2, v3, v4, v5, v6 = fn22(str4, nil)
		local n2 = math.floor((tick() - now) * 1000)
		local n3 = type(v3) == "string" and #v3 or 0
		snpLoadLog("github_result", arg2, "mirror=" .. i, "ok=" .. tostring(v2), "code=" .. tostring(v4), "transport=" .. tostring(v5), "ms=" .. tostring(n2), "bytes=" .. tostring(n3), "err=" .. tostring(v6))

		if v2 then
			local v7, v8 = fn23(v3)
			if v7 then
				snpLoadLog("github_ok", arg2, "mirror=" .. i, "bytes=" .. #v8)
				return true, v8, "github#" .. i, v5
			end
			snpLoadLog("github_invalid", arg2, "mirror=" .. i, v8)
		end
	end

	return false, "all GitHub mirrors failed", nil, nil
end

local function fn25(arg, arg2)
	local v = arg2 or arg
	local str3 = tostring(arg or ""):gsub("^/+", "")

	if not fn7() then
		local v2 = fn9(str3)
		local exitTo = nil
		local v3, v4, v5, str4

		for i = 1, 2 do
			local now = tick()

			if i == 1 then
				snpLoadLog("vps_try", v, v2, "timeout=" .. tostring(4) .. "s")
			else
				snpLoadLog("vps_retry_nonce", v, "try=" .. i, "new one-shot nonce after 401")
			end

			local v6
			v6, v3, v4, v5, str4 = fn22(v2, fn21(v2), 4)
			local n2 = math.floor((tick() - now) * 1000)
			local n3 = type(v3) == "string" and #v3 or 0
			snpLoadLog("vps_result", v, "ok=" .. tostring(v6), "code=" .. tostring(v4), "transport=" .. tostring(v5), "ms=" .. tostring(n2), "bytes=" .. tostring(n3), "err=" .. tostring(str4))

			if v6 and v4 == 404 then
				exitTo = 1
				break
			elseif v6 then
				exitTo = 2
				break
			elseif not (v4 == 401 and i < 2) then
				exitTo = 3
				break
			end
		end

		if exitTo == 1 then
			snpLoadLog("vps_fail", v, "404 Not Found", "-> github fallback")
		elseif exitTo == 2 then
			local v6, v7 = fn23(v3)

			if v6 then
				getgenv()._SNP_LOAD_SOURCE = "vps"
				snpLoadLog("vps_ok", v, "bytes=" .. #v7)
				return true, v7, "vps", v5
			end

			snpLoadLog("vps_invalid", v, v7, "-> github fallback")
		elseif exitTo == 3 then
			str4 = str4 or "empty response"

			if v4 then
				str4 ..= " (http " .. tostring(v4) .. ")"
			end

			if fn5(str4) then
				fn6(str4)
			end

			snpLoadLog("vps_fail", v, str4, "-> github fallback")
		end
	else
		snpLoadLog("vps_skip", v, "blocked host — github only")
	end

	local v2, v3, v4, v5 = fn24(str3, v)

	if v2 then
		getgenv()._SNP_LOAD_SOURCE = v4
		snpLoadLog("load_source", v, v4)
		return true, v3, v4, v5
	end

	snpLoadLog("all_failed", v, "vps blocked/failed;", tostring(v3))
	return false, tostring(v3), nil, nil
end

local tbl3 = { ["windui/testconfigs.lua"] = true, ["OtherSCRIPTS/newvoting"] = true }

local function fn26(arg)
	return tostring(arg or ""):gsub("^/+", "")
end

local function fn27(arg)
	return tbl3[fn26(arg)] == true
end

local function fn28(arg)
	if type(arg) ~= "string" or arg == "" then
		return false
	end
	local str3 = arg:sub(1, 16384)
	if str3:find("Luraph Obfuscator v1[45]%.", 1) then
		return true
	end

	if str3:find("protected using Luraph", 1, true) then
		return true
	end

	if str3:find("https://lura%.ph/", 1) then
		return true
	end
	return false
end

local function fn29()
	error("SNPWARE: script init failed (E-4821)")
end

local function fn30(arg)
	return tostring(arg or ""):find("bytecode", 1, true) ~= nil
end

local function fn31()
	return type(writefile) == "function" and type(loadfile) == "function" and type(isfile) == "function" and type(delfile) == "function"
end

local function fn32(arg, arg2)
	local str3 = ("SNPWARE/_hub_%s_%s.lua"):format(fn26(arg2):gsub("[^%w]+", "_"):sub(1, 48), tostring(os.time()):sub(-6))

	if type(makefolder) == "function" then
		pcall(makefolder, "SNPWARE")
	end

	local ok, result = pcall(writefile, str3, arg)

	if not ok then
		error("hub tempfile write failed: " .. tostring(result))
	end

	local ok2, result2 = pcall(function()
		return loadfile(str3)()
	end)

	pcall(delfile, str3)

	if not ok2 then
		error(result2)
	end

	return result2
end

local function fn33(arg)
	return "@hub/" .. fn26(arg)
end

local function fn34(arg)
	local v = loadstring
	if type(v) ~= "function" then
		return function()
		end
	end
	local flag2 = type(load) == "function" and load or nil
	local loadstring_ = getgenv().loadstring

	getgenv().loadstring = function(arg2, arg3)
		local v2 = arg3 or arg
		local v3, v4 = v(arg2, v2)
		if v3 then
			return v3
		end
		local str3 = tostring(v4 or "")

		if flag2 and (str3:find("bytecode", 1, true) or type(arg2) == "string" and arg2:byte(1) == 27) then
			local v5
			v5, v4 = flag2(arg2, v2)
			if v5 then
				return v5
			end
		end

		return nil, v4
	end

	return function()
		getgenv().loadstring = loadstring_
	end
end

local function fn35(arg, arg2, arg3)
	local v = fn27(arg2)

	if v and not fn28(arg) then
		fn29()
	end

	local v2 = fn33(arg2)
	local v3 = fn34(v2)

	local ok, result = pcall(function()
		local chunk, v4 = loadstring(arg, v2)

		if not chunk then
			error(v4 or "compile failed")
		end

		return chunk()
	end)

	v3()
	if ok then
		return result, "loadstring"
	end

	if fn30(result) and fn31() then
		if v and not fn28(arg) then
			fn29()
		end

		local v4 = tostring
		snpLoadLog("script_exec_fallback", fn26(arg2), "loadfile", v4(arg3))
		return fn32(arg, arg2), "loadfile"
	end

	error(result)
end

local function fn36(arg, arg2, arg3)
	arg2 = arg2 or arg
	local n2 = fn7() and 2 or arg3 or 5
	snpLoadLog("script_begin", arg2, arg, "attempts=" .. tostring(n2))
	local result = nil

	for i = 1, n2 do
		snpLoadLog("script_attempt", arg2, i .. "/" .. n2)
		local ok

		ok, result = pcall(function()
			local v, v2, v3, v4 = fn25(arg, arg2)

			if not v then
				error(v2 or "download failed")
			end

			snpLoadLog("script_compile", arg2, "source=" .. tostring(v3), "transport=" .. tostring(v4), "bytes=" .. tostring(#v2))

			if typeof(DetectPlatform) == "function" then
				local v5 = DetectPlatform()

				if v5 then
					getgenv().R3TH_Device = v5
				end
			end

			if getgenv().confordevice then
				pcall(function()
					getgenv().confordevice:Disconnect()
				end)

				getgenv().confordevice = nil
			end

			local v5, v6 = fn35(v2, arg, v4)
			snpLoadLog("script_exec mode=" .. tostring(v6), arg2)
			return v5
		end)

		if ok then
			snpLoadLog("script_ok", arg2, "attempt=" .. i)
			return true, result
		end
		snpLoadLog("script_fail", arg2, "attempt=" .. i, tostring(result))

		if i < n2 then
			task.wait(1 + i * 0.75)
		end
	end

	snpLoadLog("script_giveup", arg2, tostring(result))
	snpFlushLoadLog()
	return false, result
end

if not game:GetService("CoreGui"):FindFirstChild("STX_Nofitication") then
	local screenGui = Instance.new("ScreenGui")
	local uiListLayout = Instance.new("UIListLayout")
	screenGui.Name = "STX_Nofitication"
	screenGui.Parent = game.CoreGui
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false
	uiListLayout.Name = "STX_NofiticationUIListLayout"
	uiListLayout.Parent = screenGui
	uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
end

local tbl4 = {}
local stxNofitication = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")

tbl4.Notify = function(arg, arg2, arg3, arg4)
	local v = string.lower(tostring(arg3.Type))
	local imageLabel = Instance.new("ImageLabel")
	local frame = Instance.new("Frame")
	local frame2 = Instance.new("Frame")
	local textLabel = Instance.new("TextLabel")
	local textLabel2 = Instance.new("TextLabel")
	imageLabel.Name = "ambientShadow"
	imageLabel.Parent = stxNofitication
	imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	imageLabel.BackgroundTransparency = 1
	imageLabel.BorderSizePixel = 0
	imageLabel.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
	imageLabel.Size = UDim2.new(0, 0, 0, 0)
	imageLabel.Image = "rbxassetid://1316045217"
	imageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel.ImageTransparency = 0.4
	imageLabel.ScaleType = Enum.ScaleType.Slice
	imageLabel.SliceCenter = Rect.new(10, 10, 118, 118)
	frame.Name = "Window"
	frame.Parent = imageLabel
	frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0, 5, 0, 5)
	frame.Size = UDim2.new(0, 230, 0, 80)
	frame.ZIndex = 2
	frame2.Name = "Outline_A"
	frame2.Parent = frame
	frame2.BackgroundColor3 = arg3.OutlineColor
	frame2.BorderSizePixel = 0
	frame2.Position = UDim2.new(0, 0, 0, 25)
	frame2.Size = UDim2.new(0, 230, 0, 2)
	frame2.ZIndex = 5
	textLabel.Name = "WindowTitle"
	textLabel.Parent = frame
	textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
	textLabel.BorderSizePixel = 0
	textLabel.Position = UDim2.new(0, 8, 0, 2)
	textLabel.Size = UDim2.new(0, 222, 0, 22)
	textLabel.ZIndex = 4
	textLabel.Font = Enum.Font.GothamSemibold
	textLabel.Text = arg2.Title
	textLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
	textLabel.TextSize = 12
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.Name = "WindowDescription"
	textLabel2.Parent = frame
	textLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textLabel2.BackgroundTransparency = 1
	textLabel2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	textLabel2.BorderSizePixel = 0
	textLabel2.Position = UDim2.new(0, 8, 0, 34)
	textLabel2.Size = UDim2.new(0, 216, 0, 40)
	textLabel2.ZIndex = 4
	textLabel2.Font = Enum.Font.GothamSemibold
	textLabel2.Text = arg2.Description
	textLabel2.TextColor3 = Color3.fromRGB(180, 180, 180)
	textLabel2.TextSize = 12
	textLabel2.TextWrapped = true
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.TextYAlignment = Enum.TextYAlignment.Top

	if v == "default" then
		local function fn37()
			Instance.new("LocalScript", imageLabel)
			imageLabel:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
			frame.Size = UDim2.new(0, 230, 0, 80)
			local time = arg3.Time
			frame2:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", time)
			wait(arg3.Time)
			imageLabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
			wait(0.2)
			imageLabel:Destroy()
		end

		coroutine.wrap(fn37)()
	elseif v == "image" then
		imageLabel:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
		frame.Size = UDim2.new(0, 230, 0, 80)
		textLabel.Position = UDim2.new(0, 24, 0, 2)
		local imageButton = Instance.new("ImageButton")
		imageButton.Parent = frame
		imageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		imageButton.BackgroundTransparency = 1
		imageButton.BorderSizePixel = 0
		imageButton.Position = UDim2.new(0, 4, 0, 4)
		imageButton.Size = UDim2.new(0, 18, 0, 18)
		imageButton.ZIndex = 5
		imageButton.AutoButtonColor = false
		imageButton.Image = arg4.Image
		imageButton.ImageColor3 = arg4.ImageColor

		local function fn37()
			Instance.new("LocalScript", imageLabel)
			local time = arg3.Time
			frame2:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", time)
			wait(arg3.Time)
			imageLabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
			wait(0.2)
			imageLabel:Destroy()
		end

		coroutine.wrap(fn37)()
	elseif v == "option" then
		imageLabel:TweenSize(UDim2.new(0, 240, 0, 110), "Out", "Linear", 0.2)
		frame.Size = UDim2.new(0, 230, 0, 100)
		local imageButton = Instance.new("ImageButton")
		local imageButton2 = Instance.new("ImageButton")
		imageButton.Name = "Uncheck"
		imageButton.Parent = frame
		imageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		imageButton.BackgroundTransparency = 1
		imageButton.BorderSizePixel = 0
		imageButton.Position = UDim2.new(0, 7, 0, 76)
		imageButton.Size = UDim2.new(0, 18, 0, 18)
		imageButton.ZIndex = 5
		imageButton.AutoButtonColor = false
		imageButton.Image = "http://www.roblox.com/asset/?id=6031094678"
		imageButton.ImageColor3 = Color3.fromRGB(255, 84, 84)
		imageButton2.Name = "Check"
		imageButton2.Parent = frame
		imageButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		imageButton2.BackgroundTransparency = 1
		imageButton2.BorderSizePixel = 0
		imageButton2.Position = UDim2.new(0, 28, 0, 76)
		imageButton2.Size = UDim2.new(0, 18, 0, 18)
		imageButton2.ZIndex = 5
		imageButton2.AutoButtonColor = false
		imageButton2.Image = "http://www.roblox.com/asset/?id=6031094667"
		imageButton2.ImageColor3 = Color3.fromRGB(83, 230, 50)

		local function fn37()
			Instance.new("LocalScript", imageLabel)
			local flag2 = true

			local function fn38()
				pcall(function()
					arg4.Callback(false)
				end)

				imageLabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
				wait(0.2)
				imageLabel:Destroy()
				flag2 = false
			end

			local function fn39()
				pcall(function()
					arg4.Callback(true)
				end)

				imageLabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
				wait(0.2)
				imageLabel:Destroy()
				flag2 = false
			end

			imageButton.MouseButton1Click:Connect(fn38)
			imageButton2.MouseButton1Click:Connect(fn39)
			local time = arg3.Time
			frame2:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", time)
			wait(arg3.Time)

			if flag2 == true then
				imageLabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
				wait(0.2)
				imageLabel:Destroy()
			end
		end

		coroutine.wrap(fn37)()
	end
end

local v = tbl4

sendnotification = function(arg, arg2)
	if arg2 == false or arg2 == nil then
		print("[ SNPWARE HUB ]: " .. arg)
	end

	if arg2 == true or arg2 == nil then
		local ok, result = pcall(function()
			v:Notify({ Title = "SNPWARE", Description = arg }, { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 7, Type = "default" })
		end)

		if not ok then
			warn("Notification error: " .. tostring(result))
		end
	end
end

local flag2 = getgenv().SNP_rejoinPendingRestore ~= nil

if getgenv().r3thexecuted then
	if not getgenv().readySNPWARE then
		if flag2 then
			return
		end
		sendnotification("Script already executed", nil)
		return
	end

	if not flag2 then
		return
	end
	getgenv().readySNPWARE = nil
end

getgenv().r3thexecuted = true
snpLoadLog("log_ready", writefile and "workspace file: " .. workspaceFile or "writefile unavailable")

local tbl5 = {
	VertexNull = "еблан",
	TxxJeo = "fatal error",
	["3boodkwtkingg"] = "Dolbaeb and pidor",
	polly_Bafy6 = "Dolbaeb and pidor",
	BartaNeDen1 = "Dolbaeb and pidor",
	MOJ_2215 = "Dolbaeb and pidor",
	gabi_gol7951 = "Dolbaeb and pidor",
	T_1X0Z = "error 404",
	Roladuro90 = "rasism",
	cobainevermind = "error1488",
	Yousskka = "idiot",
	lenivayzopakofdsfta4 = "Dolbaeb and pidor",
	Sefexss = "Флуд",
	Kylan_Rich = "Dolbaeb and pidor",
	Aligator1027 = "Оск разраба?",
}

local function fn37()
	local request_ = syn and syn.request or http and http.request or request
	if not request_ then
		snpLoadLog("banned_users_fallback", "no_http")
		return tbl5, "fallback"
	end

	for i = 1, 3 do
		local ok, result = pcall(request_, { Url = str2 .. "/getbanned", Method = "GET", Timeout = 4 })

		if ok and result then
			local statusCode = result.StatusCode or result.status or result.Status
			local str3 = tostring(result.Body or result.body or result.Data or result.data or "")

			if statusCode == 200 and str3 ~= "" then
				local ok2, result2 = pcall(function()
					return game:GetService("HttpService"):JSONDecode(str3)
				end)

				if ok2 and type(result2) == "table" then
					local n2 = 0

					for k in pairs(result2) do
						n2 += 1
					end

					snpLoadLog("banned_users_ok", "source=server", "count=" .. tostring(n2))
					return result2, "server"
				end
			end
		end

		if i < 3 then
			task.wait(0.5 * i)
		end
	end

	snpLoadLog("banned_users_fallback", "server_unavailable")
	return tbl5, "fallback"
end

local function fn38(arg, arg2)
	if type(arg) ~= "table" then
		return nil
	end
	local v2 = arg[arg2]
	if v2 then
		return tostring(v2)
	end
	local v3 = string.lower(arg2)

	for k, v4 in pairs(arg) do
		if string.lower(tostring(k)) == v3 then
			return tostring(v4)
		end
	end

	return nil
end

local v2, v3 = fn37()
snpLoadLog("banned_users_source", tostring(v3))
local v4 = fn38(v2, game.Players.LocalPlayer.Name)

if v4 then
	game.Players.LocalPlayer:Kick("SNPWARE HUB - You are banned. Reason: " .. v4)
	return
end

local function fn39(arg)
	return tonumber(arg) or arg
end

local v5 = fn39(game.PlaceId)
local flag3 = v5 == 142823291

local flag4 = ({
	[97598239454123] = true,
	[133438856880402] = true,
	[77085202503540] = true,
	[95204935687527] = true,
})[v5] == true

if not flag3 and not flag4 then
	game.Players.LocalPlayer:Kick(string.format("Unsupported game (PlaceId: %s)", tostring(v5)))
	return
end

local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local localPlayer = game:GetService("Players").LocalPlayer

DetectPlatform = function()
	if GuiService:IsTenFootInterface() then
		localPlayer:Kick("Console's not supported")
		return nil
	end

	if UserInputService.TouchEnabled then
		return "Mobile"
	end
	return "PC"
end

getgenv().R3TH_Device = DetectPlatform()
local lastInputTypeChanged = UserInputService.LastInputTypeChanged

getgenv().confordevice = lastInputTypeChanged:Connect(function(arg)
	if arg == Enum.UserInputType.Touch then
		getgenv().R3TH_Device = "Mobile"
		print("Mobile")
	elseif string.find(arg.Name, "Gamepad") then
		getgenv().R3TH_Device = nil
		print("Unknown")
	elseif arg == Enum.UserInputType.Keyboard or string.find(arg.Name, "Mouse") then
		getgenv().R3TH_Device = "PC"
		print("PC")
	end
end)

sendnotification("Loading... pls be patient", nil)
task.wait(3)
sendnotification(getgenv().R3TH_Device .. " detected.", false)

local function fn40()
	local path, str3

	if flag3 then
		path = "windui/testconfigs.lua"
		str3 = "MM2 configs"
	else
		if not flag4 then
			return false
		end
		path = "windui/growagarden2"
		str3 = "GaG2"
	end

	local v6 = tostring
	snpLoadLog("hub_load", str3, "path=" .. path, "PlaceId=" .. tostring(v5), "device=" .. v6(getgenv().R3TH_Device))
	local v7, v8 = fn36(path, str3)

	if not v7 then
		local str4 = "log=" .. workspaceFile
		snpLoadLog("hub_kick", str3, tostring(v8), str4)
		snpFlushLoadLog()
		local str5 = tostring(v8)

		if str5:find("E%-4821", 1) then
			game.Players.LocalPlayer:Kick("SNPWARE: script init failed (E-4821)")
		else
			sendnotification("Failed to load script. Try again in a few seconds.", nil)
			game.Players.LocalPlayer:Kick("SNPWARE: failed to load script (" .. str5 .. "). Details: workspace/" .. workspaceFile)
		end
	else
		snpLoadLog("hub_ok", str3, "source=" .. tostring(getgenv()._SNP_LOAD_SOURCE))
		snpFlushLoadLog()
	end

	return v7
end

local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local flag5 = false

if type(readfile) == "function" and type(writefile) == "function" then
	if type(makefolder) == "function" then
		pcall(makefolder, "SNPWARE")
	end

	if pcall(writefile, "SNPWARE/_write_probe.tmp", "1") then
		flag5 = true

		if type(delfile) == "function" then
			pcall(delfile, "SNPWARE/_write_probe.tmp")
		end
	end
end

local str3 = "en"

local function fn41(arg)
	if arg == "ru" or arg == "en" or arg == "es" or arg == "pt" or arg == "de" or arg == "ar" or arg == "fil" then
		return arg
	end
	local str4 = tostring(arg or "en"):lower()
	if str4 == "русский" or str4 == "russian" or str4 == "ru" then
		return "ru"
	end

	if str4 == "english" or str4 == "en" then
		return "en"
	end

	if str4 == "español" or str4 == "espanol" or str4 == "spanish" or str4 == "es" then
		return "es"
	end

	if str4 == "português" or str4 == "portugues" or str4 == "portuguese" or str4 == "pt" or str4 == "pt-br" or str4 == "pt_br" then
		return "pt"
	end

	if str4 == "deutsch" or str4 == "german" or str4 == "de" then
		return "de"
	end

	if str4 == "العربية" or str4 == "arabic" or str4 == "ar" then
		return "ar"
	end

	if str4 == "filipino" or str4 == "tagalog" or str4 == "philippines" or str4 == "fil" or str4 == "ph" then
		return "fil"
	end
	return "en"
end

local flag6

if getgenv().SNP_skipLoaderGui == true then
	str3 = fn41(getgenv().choice or str3)
	local valuecontrol1 = getgenv().valuecontrol1

	if valuecontrol1 == "inputbox" or valuecontrol1 == "slider" then
	end

	getgenv().SNP_skipLoaderGui = nil
	flag6 = false
elseif flag5 and (syn and isfile("configlanguage.json") or isfile and isfile("configlanguage.json")) then
	local json = readfile("configlanguage.json")

	local ok, result = pcall(function()
		return HttpService:JSONDecode(json)
	end)

	ok = ok and result
	flag6 = true

	if ok then
		if result.choice == true then
			str3 = fn41(result.language)

			if result.valueControl == "inputbox" or result.valueControl == "slider" then
			end

			flag6 = false
		end
	end
else
	flag6 = true

	if not flag5 then
		if getgenv().confordevice then
			getgenv().confordevice:Disconnect()
			getgenv().confordevice = nil
		end

		fn40()
	end
end

local tbl6 = {
	ru = {
		Title = "Выберите язык ~",
		Toggle = "Запомнить мой выбор",
		Load = "ПОДТВЕРДИТЬ",
		Confirm = "ВЫ УВЕРЕНЫ?",
		Slider = "Слайдер",
		Input = "Ввод",
	},
	en = {
		Title = "Select language ~",
		Toggle = "Remember my choice",
		Load = "LOAD",
		Confirm = "ARE YOU SURE?",
		Slider = "Slider",
		Input = "Input",
	},
	es = {
		Title = "Elige idioma ~",
		Toggle = "Recordar mi elección",
		Load = "CONFIRMAR",
		Confirm = "¿ESTÁS SEGURO?",
		Slider = "Deslizador",
		Input = "Entrada",
	},
	pt = {
		Title = "Escolha o idioma ~",
		Toggle = "Lembrar minha escolha",
		Load = "CONFIRMAR",
		Confirm = "TEM CERTEZA?",
		Slider = "Controle",
		Input = "Entrada",
	},
	de = {
		Title = "Sprache wählen ~",
		Toggle = "Auswahl merken",
		Load = "BESTÄTIGEN",
		Confirm = "BIST DU SICHER?",
		Slider = "Schieberegler",
		Input = "Eingabe",
	},
	ar = {
		Title = "اختر اللغة ~",
		Toggle = "تذكر اختياري",
		Load = "تأكيد",
		Confirm = "هل أنت متأكد؟",
		Slider = "شريط",
		Input = "إدخال",
	},
	fil = {
		Title = "Pumili ng wika ~",
		Toggle = "Tandaan ang pagpili",
		Load = "KUMPIRMAHIN",
		Confirm = "SIGURADO KA BA?",
		Slider = "Slider",
		Input = "Input",
	},
}

local choice = fn41(str3)

if not tbl6[choice] then
	choice = "en"
end

if CoreGui:FindFirstChild("LanguageSelector") then
	CoreGui.LanguageSelector:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LanguageSelector"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local n2 = 420
local n3 = 98
local n4 = 28
local n5 = n3 + n4
local n6 = 310

local function fn42(arg)
	return arg / n6
end

local frame = Instance.new("Frame")
frame.Name = "WindowHolder"
frame.Parent = screenGui
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundTransparency = 1
frame.Size = UDim2.fromOffset(420, n6)
local frame2 = Instance.new("Frame")
frame2.Name = "ModernV2"
frame2.Parent = frame
frame2.Size = UDim2.fromScale(1, 1)
frame2.Position = UDim2.fromOffset(0, 0)
frame2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame2.BackgroundTransparency = 0.25
frame2.BorderColor3 = Color3.fromRGB(27, 42, 53)
frame2.Active = true
local connection = nil

local function fn43()
	local currentCamera = workspace.CurrentCamera
	if not currentCamera then
		return false
	end
	local viewportSize = currentCamera.ViewportSize
	if viewportSize.X < 32 or viewportSize.Y < 32 then
		return false
	end
	local guiInset = GuiService:GetGuiInset()
	local flag7 = getgenv().R3TH_Device == "Mobile"
	local n7 = flag7 and math.max(8, viewportSize.X * 0.03) or 20
	local n8 = flag7 and math.max(8, viewportSize.Y * 0.03) or 20
	local n9 = viewportSize.X - n7 * 2
	local n10 = viewportSize.Y - guiInset.Y - n8 * 2
	if n9 < 64 or n10 < 64 then
		return false
	end
	local n11 = math.min(math.min(n9 / n2, n10 / n6), 1.1)
	local n12 = math.floor(n2 * n11 + 0.5)
	local n13 = math.floor(n6 * n11 + 0.5)
	frame.Size = UDim2.fromOffset(n12, n13)
	local uiCorner = frame2:FindFirstChildOfClass("UICorner")

	if uiCorner then
		uiCorner.CornerRadius = UDim.new(0, math.max(3, math.floor(6 * n11 + 0.5)))
	end

	local langScroll = frame2:FindFirstChild("LangScroll")

	if langScroll then
		langScroll.ScrollBarThickness = math.max(3, math.floor(5 * n11 + 0.5))
	end

	return true
end

local function fn44()
	if connection then
		connection:Disconnect()
		connection = nil
	end

	local currentCamera = workspace.CurrentCamera
	if not currentCamera then
		return
	end
	connection = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fn43)
	fn43()
end

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	fn44()
end)

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 6)
uiCorner.Parent = frame2
local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 1
uiStroke.Color = Color3.fromRGB(132, 132, 132)
uiStroke.Parent = frame2
local textLabel = Instance.new("TextLabel")
textLabel.Name = "Title"
textLabel.Parent = frame2
textLabel.BackgroundTransparency = 1
textLabel.Position = UDim2.new(0.05, 0, fn42(8), 0)
textLabel.Size = UDim2.new(0.9, 0, fn42(26), 0)
textLabel.Font = Enum.Font.Montserrat
textLabel.Text = tbl6[choice].Title
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextSize = 18
textLabel.TextScaled = true
local uiTextSizeConstraint = Instance.new("UITextSizeConstraint")
uiTextSizeConstraint.MaxTextSize = 22
uiTextSizeConstraint.MinTextSize = 14
uiTextSizeConstraint.Parent = textLabel
textLabel.Active = true
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "LangScroll"
scrollingFrame.Parent = frame2
scrollingFrame.AnchorPoint = Vector2.new(0.5, 0)
scrollingFrame.Position = UDim2.new(0.5, 0, fn42(38), 0)
scrollingFrame.Size = UDim2.new(0.9, 0, fn42(170), 0)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ScrollingEnabled = true
scrollingFrame.ScrollBarThickness = 5
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 120)
scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
scrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
local uiPadding = Instance.new("UIPadding")
uiPadding.Parent = scrollingFrame
uiPadding.PaddingTop = UDim.new(0, 4)
uiPadding.PaddingBottom = UDim.new(0, 10)
uiPadding.PaddingLeft = UDim.new(0, 4)
uiPadding.PaddingRight = UDim.new(0, 8)
local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = scrollingFrame
uiListLayout.FillDirection = Enum.FillDirection.Vertical
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Padding = UDim.new(0, 6)

local function createImageButton(parent, arg, name, image, arg2)
	local imageButton = Instance.new("ImageButton")
	imageButton.Name = name
	imageButton.Parent = parent
	imageButton.AnchorPoint = Vector2.new(0.5, 0)
	imageButton.Position = UDim2.new(arg, 0, 0, 0)
	imageButton.Size = UDim2.new(0.42, 0, n3 / n5, 0)
	imageButton.Image = image
	imageButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	imageButton.BackgroundTransparency = 1
	imageButton.ImageTransparency = 0.5
	imageButton.AutoButtonColor = not arg2

	if arg2 then
		imageButton.Active = false
		imageButton.Selectable = false
	end

	local uiCorner2 = Instance.new("UICorner")
	uiCorner2.CornerRadius = UDim.new(0, 6)
	uiCorner2.Parent = imageButton
	local uiStroke2 = Instance.new("UIStroke")
	uiStroke2.Thickness = 1
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Color = Color3.fromRGB(70, 70, 70)
	uiStroke2.Parent = imageButton

	if arg2 then
		local frame3 = Instance.new("Frame")
		frame3.Name = "SoonOverlay"
		frame3.Parent = imageButton
		frame3.AnchorPoint = Vector2.new(0.5, 0.5)
		frame3.Position = UDim2.new(0.5, 0, 0.5, 0)
		frame3.Size = UDim2.new(0.9, 0, 0.35, 0)
		frame3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		frame3.BackgroundTransparency = 0.15
		frame3.BorderSizePixel = 0
		frame3.ZIndex = 2
		local uiCorner3 = Instance.new("UICorner")
		uiCorner3.CornerRadius = UDim.new(0, 4)
		uiCorner3.Parent = frame3
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.Parent = frame3
		textLabel2.BackgroundTransparency = 1
		textLabel2.Size = UDim2.new(1, 0, 1, 0)
		textLabel2.Font = Enum.Font.Montserrat
		textLabel2.Text = "Soon..."
		textLabel2.TextColor3 = Color3.fromRGB(140, 140, 140)
		textLabel2.TextScaled = true
		local uiTextSizeConstraint2 = Instance.new("UITextSizeConstraint")
		uiTextSizeConstraint2.MaxTextSize = 12
		uiTextSizeConstraint2.MinTextSize = 9
		uiTextSizeConstraint2.Parent = textLabel2
	end

	return imageButton
end

local function createTextLabel(parent, arg, name, text)
	local textLabel2 = Instance.new("TextLabel")
	textLabel2.Name = name
	textLabel2.Parent = parent
	textLabel2.BackgroundTransparency = 1
	textLabel2.AnchorPoint = Vector2.new(0.5, 0)
	textLabel2.Position = UDim2.new(arg, 0, n3 / n5, 0)
	textLabel2.Size = UDim2.new(0.42, 0, n4 / n5, 0)
	textLabel2.Font = Enum.Font.Montserrat
	textLabel2.Text = text
	textLabel2.TextColor3 = Color3.fromRGB(120, 120, 120)
	textLabel2.TextScaled = true
	local uiTextSizeConstraint2 = Instance.new("UITextSizeConstraint")
	uiTextSizeConstraint2.MaxTextSize = 14
	uiTextSizeConstraint2.MinTextSize = 10
	uiTextSizeConstraint2.Parent = textLabel2
	return textLabel2
end

local frame3 = Instance.new("Frame")
frame3.Name = "LangRow1"
frame3.Parent = scrollingFrame
frame3.BackgroundTransparency = 1
frame3.Size = UDim2.new(1, 0, 0, n5)
frame3.LayoutOrder = 1
local ruBtn = createImageButton(frame3, 0.26, "RU_btn", "rbxassetid://123561869", false)
local enBtn = createImageButton(frame3, 0.74, "EN_btn", "rbxassetid://16237279076", false)
createTextLabel(frame3, 0.28, "RussianLabel", "Russian —")
createTextLabel(frame3, 0.72, "EnglishLabel", "English —")
local frame4 = Instance.new("Frame")
frame4.Name = "LangRow2"
frame4.Parent = scrollingFrame
frame4.BackgroundTransparency = 1
frame4.Size = UDim2.new(1, 0, 0, n5)
frame4.LayoutOrder = 2
local esBtn = createImageButton(frame4, 0.26, "ES_btn", "rbxassetid://82021687917209", false)
local phBtn = createImageButton(frame4, 0.74, "PH_btn", "rbxassetid://97480031296631", false)
createTextLabel(frame4, 0.28, "SpanishLabel", "Spanish —")
createTextLabel(frame4, 0.72, "PhilippinesLabel", "Filipino —")
local frame5 = Instance.new("Frame")
frame5.Name = "LangRow3"
frame5.Parent = scrollingFrame
frame5.BackgroundTransparency = 1
frame5.Size = UDim2.new(1, 0, 0, n5)
frame5.LayoutOrder = 3
local ptBtn = createImageButton(frame5, 0.26, "PT_btn", "rbxassetid://13721042005", false)
local deBtn = createImageButton(frame5, 0.74, "DE_btn", "rbxassetid://75578232404418", false)
createTextLabel(frame5, 0.28, "PortugueseLabel", "Portuguese —")
createTextLabel(frame5, 0.72, "GermanLabel", "German —")
local frame6 = Instance.new("Frame")
frame6.Name = "LangRow4"
frame6.Parent = scrollingFrame
frame6.BackgroundTransparency = 1
frame6.Size = UDim2.new(1, 0, 0, n5)
frame6.LayoutOrder = 4
local arBtn = createImageButton(frame6, 0.26, "AR_btn", "rbxassetid://7311600453", false)
createTextLabel(frame6, 0.28, "ArabicLabel", "Arabic —")

local function fn45()
	scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y + uiPadding.PaddingTop.Offset + uiPadding.PaddingBottom.Offset)
end

uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fn45)
task.defer(fn45)

local function fn46(name, arg, arg2)
	local textButton = Instance.new("TextButton")
	textButton.Name = name
	textButton.Parent = frame2
	textButton.AnchorPoint = Vector2.new(0.5, 0)
	textButton.Position = UDim2.new(arg, 0, fn42(arg2), 0)
	textButton.Size = UDim2.new(0.34, 0, fn42(26), 0)
	textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	textButton.BackgroundTransparency = 0
	textButton.AutoButtonColor = true
	textButton.Font = Enum.Font.Montserrat
	textButton.TextColor3 = Color3.fromRGB(165, 165, 165)
	textButton.TextScaled = true
	local uiTextSizeConstraint2 = Instance.new("UITextSizeConstraint")
	uiTextSizeConstraint2.MaxTextSize = 14
	uiTextSizeConstraint2.MinTextSize = 10
	uiTextSizeConstraint2.Parent = textButton
	local uiCorner2 = Instance.new("UICorner")
	uiCorner2.CornerRadius = UDim.new(0, 6)
	uiCorner2.Parent = textButton
	local uiStroke2 = Instance.new("UIStroke")
	uiStroke2.Thickness = 1
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Color = Color3.fromRGB(165, 165, 165)
	uiStroke2.Parent = textButton
	return textButton, uiStroke2
end

local Slider_btn, v6 = fn46("Slider_btn", 0.31, 214)
local Input_btn, v7 = fn46("Input_btn", 0.69, 214)
local valuecontrol1 = "slider"
Slider_btn.Text = tbl6[choice].Slider
Input_btn.Text = tbl6[choice].Input
v6.Color = Color3.fromRGB(0, 255, 150)
v7.Color = Color3.fromRGB(165, 165, 165)
Slider_btn.TextColor3 = Color3.fromRGB(0, 255, 150)
Input_btn.TextColor3 = Color3.fromRGB(165, 165, 165)
local textButton = Instance.new("TextButton")
textButton.Name = "Selector"
textButton.Parent = frame2
textButton.AnchorPoint = Vector2.new(0.5, 0)
textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
textButton.Font = Enum.Font.Montserrat
textButton.TextColor3 = Color3.fromRGB(165, 165, 165)
textButton.TextScaled = true
textButton.AutoButtonColor = true
textButton.Size = UDim2.new(0.8, 0, fn42(28), 0)
textButton.Position = UDim2.new(0.5, 0, fn42(246), 0)
local uiTextSizeConstraint2 = Instance.new("UITextSizeConstraint")
uiTextSizeConstraint2.MaxTextSize = 14
uiTextSizeConstraint2.MinTextSize = 10
uiTextSizeConstraint2.Parent = textButton
local uiCorner2 = Instance.new("UICorner")
uiCorner2.CornerRadius = UDim.new(0, 6)
uiCorner2.Parent = textButton
local uiStroke2 = Instance.new("UIStroke")
uiStroke2.Thickness = 1
uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke2.Color = Color3.fromRGB(165, 165, 165)
uiStroke2.Parent = textButton
local textButton2 = Instance.new("TextButton")
textButton2.Name = "Load"
textButton2.Parent = frame2
textButton2.AnchorPoint = Vector2.new(0.5, 0)
textButton2.Position = UDim2.new(0.5, 0, fn42(280), 0)
textButton2.Size = UDim2.new(0.9, 0, fn42(24), 0)
textButton2.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
textButton2.BackgroundTransparency = 0.7
textButton2.Font = Enum.Font.MontserratBold
textButton2.TextColor3 = Color3.fromRGB(165, 165, 165)
textButton2.TextScaled = true
textButton2.AutoButtonColor = false
local uiTextSizeConstraint3 = Instance.new("UITextSizeConstraint")
uiTextSizeConstraint3.MaxTextSize = 16
uiTextSizeConstraint3.MinTextSize = 11
uiTextSizeConstraint3.Parent = textButton2
local uiCorner3 = Instance.new("UICorner")
uiCorner3.CornerRadius = UDim.new(0, 4)
uiCorner3.Parent = textButton2
local uiStroke3 = Instance.new("UIStroke")
uiStroke3.Thickness = 1
uiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke3.Color = Color3.fromRGB(165, 165, 165)
uiStroke3.Parent = textButton2
local flag7 = false
local v8 = nil
local position = nil
local absolutePosition = nil

local function fn47(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		flag7 = true
		v8 = input
		position = input.Position
		absolutePosition = frame.AbsolutePosition
	end
end

textLabel.InputBegan:Connect(fn47)
frame.InputBegan:Connect(fn47)
frame2.InputBegan:Connect(fn47)

UserInputService.InputChanged:Connect(function(input)
	if not flag7 then
		return
	end

	if not (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch and input == v8) then
		return
	end
	local n7 = input.Position - position
	local viewportSize = workspace.CurrentCamera.ViewportSize
	local absoluteSize = frame.AbsoluteSize
	frame.AnchorPoint = Vector2.new(0, 0)
	local n8 = absolutePosition.Y + n7.Y
	frame.Position = UDim2.fromOffset(math.clamp(absolutePosition.X + n7.X, 0, viewportSize.X - absoluteSize.X), math.clamp(n8, 0, viewportSize.Y - absoluteSize.Y))
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		flag7 = false
		v8 = nil
	end
end)

local flag8 = false

local function fn48(arg)
	local color = Color3.fromRGB(0, 255, 150)
	local color2 = Color3.fromRGB(165, 165, 165)
	v6.Color = arg == "slider" and color or color2
	v7.Color = arg == "inputbox" and color or color2
	Slider_btn.TextColor3 = arg == "slider" and color or Color3.fromRGB(165, 165, 165)
	Input_btn.TextColor3 = arg == "inputbox" and color or Color3.fromRGB(165, 165, 165)
	Slider_btn.Text = tbl6[choice].Slider
	Input_btn.Text = tbl6[choice].Input
end

local flag9 = false
local n7 = 0

local function fn49()
	local en = tbl6[choice] or tbl6.en

	if flag9 then
		textButton2.Text = en.Confirm or "ARE YOU SURE?"
	else
		textButton2.Text = en.Load or "LOAD"
	end
end

local function fn50()
	n7 += 1
	flag9 = false
	fn49()
end

local function fn51(arg)
	local str4 = fn41(arg)

	if not tbl6[str4] then
		str4 = "en"
	end

	choice = str4
	textLabel.Text = tbl6[str4].Title
	fn49()
	textButton.Text = (flag8 and "✅ " or "❌ ") .. tbl6[str4].Toggle
	fn48(valuecontrol1)
end

local function fn52(arg)
	local color = Color3.fromRGB(0, 255, 150)
	local color2 = Color3.fromRGB(70, 70, 70)

	for k, v9 in pairs({ ru = ruBtn, en = enBtn, es = esBtn, fil = phBtn, pt = ptBtn, de = deBtn, ar = arBtn }) do
		v9 = v9 and v9:FindFirstChild("UIStroke")

		if v9 then
			v9.Color = arg == k and color or color2
		end
	end
end

local function fn53()
	task.spawn(function()
		local sound = Instance.new("Sound", game:GetService("SoundService"))
		sound.SoundId = "rbxassetid://122274686053302"
		sound:Play()
		sound.Ended:Wait()
		sound:Destroy()
	end)
end

local function fn54(arg)
	fn53()
	choice = arg
	fn50()
	fn52(arg)
	fn51(arg)
end

textButton.MouseButton1Click:Connect(function()
	flag8 = not flag8
	fn50()
	fn51(choice)
end)

ruBtn.MouseButton1Click:Connect(function()
	fn54("ru")
end)

enBtn.MouseButton1Click:Connect(function()
	fn54("en")
end)

esBtn.MouseButton1Click:Connect(function()
	fn54("es")
end)

phBtn.MouseButton1Click:Connect(function()
	fn54("fil")
end)

ptBtn.MouseButton1Click:Connect(function()
	fn54("pt")
end)

deBtn.MouseButton1Click:Connect(function()
	fn54("de")
end)

arBtn.MouseButton1Click:Connect(function()
	fn54("ar")
end)

Slider_btn.MouseButton1Click:Connect(function()
	valuecontrol1 = "slider"
	fn50()
	fn48("slider")
end)

Input_btn.MouseButton1Click:Connect(function()
	valuecontrol1 = "inputbox"
	fn50()
	fn48("inputbox")
end)

local flag10 = false
local n8 = 0
local n9 = 0.08
local connection2 = nil

connection2 = textButton2.MouseButton1Click:Connect(function()
	if flag10 then
		return
	end

	if not flag9 then
		n7 += 1
		local v9 = n7
		flag9 = true
		n8 = os.clock()
		fn49()

		task.delay(6, function()
			if not flag10 and v9 == n7 then
				fn50()
			end
		end)

		return
	end

	if os.clock() - n8 < n9 then
		return
	end
	flag10 = true
	textButton2.Active = false

	if connection2 then
		connection2:Disconnect()
		connection2 = nil
	end

	task.spawn(function()
		local sound = Instance.new("Sound", game:GetService("SoundService"))
		sound.SoundId = "rbxassetid://117649901456711"
		sound:Play()
		sound.Ended:Wait()
		sound:Destroy()
	end)

	if flag5 then
		local ok, result = pcall(writefile, "configlanguage.json", HttpService:JSONEncode({ language = choice, choice = flag8, valueControl = valuecontrol1 }))

		if not ok then
			warn("[SNPWARE] configlanguage save skipped: " .. tostring(result))
		end
	end

	getgenv().choice = choice
	getgenv().valuecontrol1 = valuecontrol1
	screenGui:Destroy()

	if getgenv().confordevice then
		getgenv().confordevice:Disconnect()
		getgenv().confordevice = nil
	end

	fn40()
end)

if flag6 then
	valuecontrol1 = "slider"
	fn51(choice)
	fn52(choice)
	fn44()
	task.defer(fn43)
	task.delay(0.15, fn43)
	task.delay(0.5, fn43)
else
	getgenv().choice = choice
	getgenv().valuecontrol1 = valuecontrol1
	screenGui:Destroy()

	if getgenv().confordevice then
		getgenv().confordevice:Disconnect()
		getgenv().confordevice = nil
	end

	fn40()
end
