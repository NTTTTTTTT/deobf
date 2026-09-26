if getgenv().RealKidKaitunRunning then
	warn("[RealKid Kaitun] Script is already running")
	return
end

getgenv().RealKidKaitunRunning = true

if setfpscap then
	pcall(setfpscap, getgenv().Configs["FPS Limit"])
end

local str = "https://webhook.trungdao2k4.workers.dev/"
local tbl = { 2, 4, 8, 12 }
local n = 5
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local request_ = syn and syn.request or http and http.request or http_request or request
local request_2

if request_ then
	request_2 = request_
else
	request_2 = fluxus and fluxus.request
end

if not request_2 then
	localPlayer:Kick("Executor không hỗ trợ HTTP request")
	return
end

local function fn()
	return gethwid and gethwid() or ""
end

local function fn2()
	return game:GetService("RbxAnalyticsService"):GetClientId():gsub("[^a-zA-Z0-9%-]", "")
end

local function fn3(arg)
	return tostring(arg or ""):match("^%s*(.-)%s*$")
end

local function fn4(arg)
	local v = request_2({
		Url = str,
		Method = "POST",
		Headers = { ["Content-Type"] = "application/json", ["X-RealKid-Client"] = "roblox-keyed-build-v1" },
		Body = HttpService:JSONEncode({ action = "auth", hwid = fn(), hwid2 = fn2(), key = arg }),
	})

	if type(v) ~= "table" then
		return false, "SERVER_TEMPORARY_ERROR"
	end
	local n2 = tonumber(v.StatusCode or v.Status or v.status_code or 0) or 0
	local v2 = fn3(v.Body or v.body or "")
	if n2 == 429 then
		return true, "RATE_LIMITED"
	end

	if n2 == 403 then
		return true, "SERVER_CONFIG_ERROR"
	end

	if n2 >= 500 or n2 > 0 and (n2 < 200 or n2 >= 300) then
		return false, "SERVER_TEMPORARY_ERROR"
	end

	if v.Success == false and n2 == 0 then
		return false, "SERVER_TEMPORARY_ERROR"
	end

	if v2:sub(1, 6) == "VALID|" or v2 == "INVALID" or v2 == "HWID_MISMATCH" or v2 == "RATE_LIMITED" or v2 == "SERVER_CONFIG_ERROR" or v2 == "SERVER_TEMPORARY_ERROR" then
		return true, v2
	end
	return false, "SERVER_TEMPORARY_ERROR"
end

local ok, result = pcall(function()
	return game:HttpGet("https://raw.githubusercontent.com/traurobloxdeptrai/oii/refs/heads/main/uia")
end)

local ok2, result2 = pcall(function()
	return ok and loadstring(result)()
end)

if not ok2 or type(result2) ~= "table" then
	localPlayer:Kick("Không thể tải giao diện xác thực")
	return
end

result2:CreateUI({
	Title = "RealKid HUB",
	Subtitle = "Xin Chào Anh Em",
	Backend = { BaseURL = "https://realkidkey.site/", WorkerURL = str },
})

local ui = result2.UI
local flag = false
local flag2 = false

local function fn5(arg)
	pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", { Title = "RealKid Hub", Text = arg, Duration = 5 })
	end)
end

local function fn6(arg, arg2)
	if writefile then
		pcall(writefile, "TrauHub_Save.txt", arg)
	end

	ui.CheckKeyBtn.Text = "✅ THÀNH CÔNG!"
	ui.StatusLabel.Text = "🚀 Đang tải dữ liệu RealKid Hub..."

	if not arg2 then
		fn5("✅ Xác thực thành công! Key của bạn còn hạn.")
	end

	task.wait(0.8)

	if ui.ScreenGui then
		ui.ScreenGui:Destroy()
	end

	if ui.Blur then
		ui.Blur:Destroy()
	end

	flag = true
end

local function fn7(arg, arg2)
	local v = flag2
	local v2

	if flag2 then
		v2 = v
	else
		v2 = flag
	end

	if v2 then
		return
	end
	local v3 = fn3(arg)
	if v3 == "" then
		fn5("❌ Vui lòng nhập Key để vào RealKid Hub!")
		return
	end
	flag2 = true
	ui.CheckKeyBtn.Text = "⏳ Đang xác thực..."
	ui.StatusLabel.Text = arg2 and "⏳ RealKid Hub đang kiểm tra Key cũ..." or "⏳ Đang kết nối server..."

	task.spawn(function()
		local flag3 = false
		local str2 = "SERVER_TEMPORARY_ERROR"

		for i = 1, 5 do
			local result3

			str2, flag3, result3 = pcall(function()
				local v4, v5 = fn4(v3)
				return v4, v5
			end)

			flag3 = str2 and flag3
			str2 = str2 and fn3(result3) or "SERVER_TEMPORARY_ERROR"

			if flag3 and str2:sub(1, 6) == "VALID|" then
				flag2 = false
				fn6(v3, arg2)
				return
			end

			if str2 == "INVALID" or str2 == "HWID_MISMATCH" or str2 == "SERVER_CONFIG_ERROR" then
				break
			end

			if i < n then
				local n2

				if str2 == "RATE_LIMITED" then
					ui.StatusLabel.Text = "⏳ Quá nhiều lượt kiểm tra, đang chờ thử lại..."
					n2 = 15
				else
					n2 = tbl[i] or 12
					ui.StatusLabel.Text = "⏳ Server đang bận, thử lại sau " .. tostring(n2) .. " giây..."
				end

				task.wait(n2)
			end
		end

		flag2 = false

		if str2 == "HWID_MISMATCH" then
			ui.StatusLabel.Text = "❌ Key đang được dùng ở máy khác!"
			fn5("❌ Key bị khóa do HWID lệch! Vui lòng lấy key mới.")
		elseif str2 == "RATE_LIMITED" then
			ui.StatusLabel.Text = "⏳ Vui lòng đợi một phút rồi thử lại!"
		elseif str2 == "SERVER_CONFIG_ERROR" then
			ui.StatusLabel.Text = "❌ Server xác thực đang sai cấu hình!"
		elseif str2 == "SERVER_TEMPORARY_ERROR" or not flag3 then
			ui.StatusLabel.Text = "❌ Server tạm thời không khả dụng!"
		elseif str2 == "INVALID" then
			if isfile and isfile("TrauHub_Save.txt") and delfile then
				pcall(delfile, "TrauHub_Save.txt")
			end

			ui.StatusLabel.Text = "❌ Key sai, chưa tạo Key hoặc đã hết hạn!"
		else
			ui.StatusLabel.Text = "❌ Server trả về phản hồi không hợp lệ, vui lòng thử lại!"
		end

		ui.CheckKeyBtn.Text = "KIỂM TRA"
	end)
end

ui.GetKeyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://realkidkey.site/")
	end

	ui.GetKeyBtn.Text = "✅ ĐÃ COPY LINK!"
	fn5("🔗 Link lấy Key (Hạn 3 ngày) đã copy vào Clipboard!")
	task.wait(2)
	ui.GetKeyBtn.Text = "LẤY KEY"
end)

ui.CheckKeyBtn.MouseButton1Click:Connect(function()
	fn7(ui.KeyInput.Text, false)
end)

if isfile and isfile("TrauHub_Save.txt") and readfile then
	local v = fn3(readfile("TrauHub_Save.txt"))
	ui.KeyInput.Text = v
	fn7(v, true)
end

repeat
	task.wait(0.1)
until flag

getgenv().Team = "Pirates"

repeat
	wait()
until game:IsLoaded()

repeat
	wait()
until game:GetService("Players").LocalPlayer

local localPlayer2 = game:GetService("Players").LocalPlayer
local commF = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_")

while not localPlayer2.Character do
	pcall(function()
		commF:InvokeServer("SetTeam", getgenv().Team or "Pirates")
	end)

	task.wait(1)
end

while true do
	wait()
	if not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
		continue
	end
	break
end

repeat
	wait()
until workspace:FindFirstChild("Map")

require(game:GetService("ReplicatedStorage").Reparent).Unparent = function()
	return nil
end

local str2 = ""

coroutine.wrap(function()
	str2 = tostring(game.Players.LocalPlayer.UserId):sub(2, 4) .. tostring(coroutine.running()):sub(11, 15)
end)()

local localPlayer3 = game:GetService("Players").LocalPlayer
local Workspace = game:GetService("Workspace")
getgenv().WalkWater = true

task.spawn(function()
	local waterBasePlane = Workspace:WaitForChild("Map"):WaitForChild("WaterBase-Plane", 10)

	if waterBasePlane and getgenv().WalkWater then
		waterBasePlane.Size = Vector3.new(1000, 112, 1000)
	end
end)

Workspace:WaitForChild("Enemies")
game:GetService("TeleportService")
game:GetService("ReplicatedStorage")
localPlayer3:WaitForChild("Data"):WaitForChild("Level")
localPlayer3:WaitForChild("Data"):WaitForChild("Fragments")
localPlayer3:WaitForChild("Data"):WaitForChild("Beli")
local Lighting = game:GetService("Lighting")
game:service("VirtualInputManager")
game:service("VirtualUser")
game:GetService("CoreGui")

local function fn8(arg)
	pcall(function()
		if arg:IsA("ParticleEmitter") or arg:IsA("Trail") or arg:IsA("Beam") or arg:IsA("Smoke") or arg:IsA("Fire") or arg:IsA("Sparkles") or arg:IsA("Light") then
			arg.Enabled = false
		elseif arg:IsA("Decal") or arg:IsA("Texture") then
			arg.Transparency = 1
		elseif arg:IsA("PostEffect") then
			arg.Enabled = false
		elseif arg:IsA("SurfaceAppearance") or arg:IsA("Clouds") then
			arg:Destroy()
		elseif arg:IsA("MeshPart") then
			arg.TextureID = ""
			arg.CastShadow = false
		elseif arg:IsA("SpecialMesh") then
			arg.TextureId = ""
		elseif arg:IsA("BasePart") then
			if arg:IsDescendantOf(Workspace.Map) then
				arg.LocalTransparencyModifier = 1
			end

			arg.Material = Enum.Material.SmoothPlastic
			arg.Reflectance = 0
			arg.CastShadow = false
		end
	end)
end

task.spawn(function()
	if not getgenv().Configs["Boost FPS"] or getgenv().KaitunLowCpuApplied then
		return
	end
	getgenv().KaitunLowCpuApplied = true

	pcall(function()
		local terrain = Workspace.Terrain
		local terrain2 = Workspace.Terrain
		Workspace.Terrain.WaterWaveSize = 0
		terrain.WaterWaveSpeed = 0
		terrain2.WaterReflectance = 0
		Lighting.GlobalShadows = false
		settings().Rendering.QualityLevel = "Level01"
	end)

	task.spawn(function()
		for i, descendant in ipairs(game:GetDescendants()) do
			fn8(descendant)

			if i % 200 == 0 then
				task.wait()
			end
		end
	end)

	game.DescendantAdded:Connect(function(descendant)
		if getgenv().Configs["Boost FPS"] then
			fn8(descendant)
		end
	end)
end)

error("devirt: value <luasym.LuaFunc object at 0x0000026F6DBAE530> in an expression (at 88:672)")
