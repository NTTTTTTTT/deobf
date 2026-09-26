if getgenv().RealKidHubRunning then
	warn("[RealKid] Script is already running")
	return
end

getgenv().RealKidHubRunning = true
local str = "https://webhook.trungdao2k4.workers.dev/"
local tbl = { 2, 4, 8, 12 }
local n = 5
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local request_ = syn and syn.request
local request_2

if request_ then
	request_2 = request_
else
	request_2 = http and http.request
end

request_2 = request_2 or http_request or request

if not request_2 then
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
	local flag = n2 >= 500
	local flag2

	if flag then
		flag2 = flag
	else
		local flag3 = n2 > 0

		if flag3 then
			flag2 = n2 < 200 or n2 >= 300
		else
			flag2 = flag3
		end
	end

	if flag2 then
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
	if flag2 or flag then
		return
	end
	local v = fn3(arg)
	if v == "" then
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
				local v2, v3 = fn4(v)
				return v2, v3
			end)

			flag3 = str2 and flag3
			str2 = str2 and fn3(result3) or "SERVER_TEMPORARY_ERROR"

			if flag3 and str2:sub(1, 6) == "VALID|" then
				flag2 = false
				fn6(v, arg2)
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

repeat
	wait()
until game:IsLoaded()

repeat
	wait()
until game:GetService("Players").LocalPlayer

local localPlayer2 = game:GetService("Players").LocalPlayer
local str2 = "RealKidHub/save2/" .. localPlayer2.Name .. ".json"
local v = isfile and readfile and isfile(str2)
local selectedTeam = nil

if v then
	local ok3, result3 = pcall(function()
		return game:GetService("HttpService"):JSONDecode(readfile(str2))
	end)

	ok3 = ok3 and type(result3) == "table" and (result3.selected_team == "Marines" or result3.selected_team == "Pirates")
	selectedTeam = nil

	if ok3 then
		selectedTeam = result3.selected_team
	end
end

getgenv().Team = selectedTeam or "Marines"
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

task.wait(0.4)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

ply = game:GetService("Players")
plr = ply.LocalPlayer
local character = plr.Character or plr.CharacterAdded:Wait()
local loading

repeat
	loading = plr.PlayerGui:WaitForChild("Main", 9e9):WaitForChild("Loading", 9e9)
	task.wait()
until loading

Root = character:WaitForChild("HumanoidRootPart")
Energy = character:WaitForChild("Energy").Value
replicated = game:GetService("ReplicatedStorage")
Lv = plr:WaitForChild("Data"):WaitForChild("Level").Value
TeleportService = game:GetService("TeleportService")
TW = game:GetService("TweenService")
Lighting = game:GetService("Lighting")
Enemies = workspace:WaitForChild("Enemies")
vim1 = game:GetService("VirtualInputManager")
vim2 = game:GetService("VirtualUser")
TeamSelf = plr.Team
RunSer = game:GetService("RunService")
Stats = game:GetService("Stats")
Boss = {}
BringConnections = {}
MaterialList = {}
NPCList = {}
shouldTween = false
SoulGuitar = false
KenTest = true
debug = false
Sec = 0.3
ClickState = 0
Num_self = 25

plr.CharacterAdded:Connect(function(character2)
	character = character2
	Root = character2:WaitForChild("HumanoidRootPart")
end)

World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089
Dungeons = game.PlaceId == 73902483975735

if World1 then
	Boss = {
		"The Gorilla King",
		"Chef",
		"The Saw",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Saber Expert",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Ice Admiral",
		"Greybeard",
	}
elseif World2 then
	Boss = {
		"Diamond",
		"Jeremy",
		"Orbitus",
		"Don Swan",
		"Smoke Admiral",
		"Awakened Ice Admiral",
		"Tide Keeper",
		"Darkbeard",
		"Cursed Captain",
		"Order",
	}
elseif World3 then
	Boss = {
		"Stone",
		"Hydra Leader",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"Cake Queen",
		"Longma",
		"Soul Reaper",
	}
end

if World1 then
	MaterialList = { "Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail" }
elseif World2 then
	MaterialList = {
		"Leather + Scrap Metal",
		"Radioactive Material",
		"Ectoplasm",
		"Mystic Droplet",
		"Magma Ore",
		"Vampire Fang",
	}
elseif World3 then
	MaterialList = {
		"Scrap Metal",
		"Demonic Wisp",
		"Conjured Cocoa",
		"Dragon Scale",
		"Gunpowder",
		"Fish Tail",
		"Mini Tusk",
	}
end

local tbl2 = {
	["Pirate Millionaire"] = CFrame.new(-704.59, 102.5, 5696.68),
	["Pistol Billionaire"] = CFrame.new(-218.3, 140.39, 6088.68),
	["Dragon Crew Warrior"] = CFrame.new(6729, 51.73, -1060.57),
	["Dragon Crew Archer"] = CFrame.new(6758.26, 565.17, 281.79),
	["Hydra Enforcer"] = CFrame.new(4623.86, 1002.3, 507.84),
	["Female Islander"] = CFrame.new(4692.79, 797.98, 858.85),
	["Venomous Assailant"] = CFrame.new(4674.93, 1132.46, 996.31),
	["Marine Commodore"] = CFrame.new(2388.91, 74.3, -7524.43),
	["Marine Rear Admiral"] = CFrame.new(3714.29, 124, -7171.65),
	["Fishman Raider"] = CFrame.new(-10421.25, 331.83, -8364.91),
	["Fishman Captain"] = CFrame.new(-10836.7, 331.83, -8647.97),
	["Forest Pirate"] = CFrame.new(-13473.57, 408.23, -7787.35),
	["Mythological Pirate"] = CFrame.new(-13703.03, 469.85, -7050.03),
	["Jungle Pirate"] = CFrame.new(-11823.74, 331.8, -10593.36),
	["Musketeer Pirate"] = CFrame.new(-13406.02, 391.61, -9783.03),
	["Reborn Skeleton"] = CFrame.new(-8766.81, 142.17, 6061.28),
	["Living Zombie"] = CFrame.new(-10196.96, 138.69, 5955.21),
	["Demonic Soul"] = CFrame.new(-9493.12, 172.17, 6149.69),
	["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
	["Peanut Scout"] = CFrame.new(-1948.4, 9.74, -9984.92),
	["Peanut President"] = CFrame.new(-1992.94, 38.17, -10579.06),
	["Ice Cream Chef"] = CFrame.new(-553.52, 65.88, -11056.8),
	["Ice Cream Commander"] = CFrame.new(-577.62, 65.88, -11308.41),
	["Cookie Crafter"] = CFrame.new(-2380.2, 37.86, -12148.1),
	["Cake Guard"] = CFrame.new(-1552.51, 37.86, -12462.44),
	["Baking Staff"] = CFrame.new(-1869.13, 37.86, -12945.68),
	["Head Baker"] = CFrame.new(-2323.23, 53.57, -12864.22),
	["Cocoa Warrior"] = CFrame.new(77.92, 24.8, -12247.26),
	["Chocolate Bar Battler"] = CFrame.new(717.46, 24.8, -12637.87),
	["Sweet Thief"] = CFrame.new(-140.26, 24.71, -12652.31),
	["Candy Rebel"] = CFrame.new(56.08, 24.86, -12953),
	["Candy Pirate"] = CFrame.new(-1372.53, 32.11, -14506.54),
	["Snow Demon"] = CFrame.new(-865.98, 13.21, -14589.03),
	["Island Boy"] = CFrame.new(-16736.23, 20.54, -131.72),
	["Isle Outlaw"] = CFrame.new(-16122.41, 10.64, -257.35),
	["Sun-kissed Warrior"] = CFrame.new(-16357.31, 20.64, 1005.65),
	["Isle Champion"] = CFrame.new(-16787.32, 20.64, 992.13),
	["Serpent Hunter"] = CFrame.new(-16599.71, 70.59, 1757.91),
	Ghost = CFrame.new(5255.41, 16.63, 455.98),
}

EquipWeapon = function(arg)
	if not arg then
		return
	end
	local character2 = plr.Character
	local v2 = plr.Backpack:FindFirstChild(arg)

	if character2 and character2:FindFirstChild("Humanoid") and v2 then
		character2.Humanoid:EquipTool(v2)
	end
end

weaponSc = function(arg)
	for _, child in pairs(plr.Backpack:GetChildren()) do
		if child:IsA("Tool") then
			if child.ToolTip == arg then
				EquipWeapon(child.Name)
			end
		end
	end
end

local function fn8(arg, arg2)
	local flag3 = not arg
	if flag3 and getgenv().RealKidMenuHopOpening and tick() - getgenv().RealKidMenuHopOpening < 5 then
		return
	end

	if flag3 then
		getgenv().RealKidMenuHopOpening = tick()
	end

	local HttpService2 = game:GetService("HttpService")
	local serverBrowser = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser")
	local str3 = "https://shoptrauroblox.site/api.php"
	local request_3 = request or http_request or syn and syn.request or fluxus and fluxus.request
	local request_4

	if request_3 then
		request_4 = request_3
	else
		request_4 = http and http.request
	end

	local tbl3 = {}

	local function fn9(arg3)
		local flag4 = false
		local flag5 = false
		local v2 = nil

		task.spawn(function()
			local ok3, result3 = pcall(function()
				if request_4 then
					local v3 = request_4({ Url = arg3, Method = "GET" })
					return type(v3) == "table" and v3.Body or v3
				end
				return game:HttpGet(arg3)
			end)

			flag5 = ok3
			v2 = result3
			flag4 = true
		end)

		local n2 = tick() + 5

		while true do
			task.wait()
			if not (flag4 or tick() >= n2) then
				continue
			end
			break
		end

		if not flag4 then
			return nil
		end
		return flag5 and type(v2) == "string" and v2 or nil
	end

	local function fn10(arg3)
		local str4 = tostring(arg3 or "")
		if str4:sub(1, 4) ~= "RK2." then
			return ""
		end

		if tbl3[str4] then
			return tbl3[str4]
		end
		local ok3, result3 = pcall(HttpService2.JSONDecode, HttpService2, fn9(str3 .. "?resolve=" .. HttpService2:UrlEncode(str4)) or "")
		local flag4 = ok3 and type(result3) == "table"

		if flag4 then
			flag4 = tostring(result3.jobId or "")
		end

		flag4 = flag4 or ""

		if #flag4 ~= 36 or flag4:find("[^%x%-]") or select(2, flag4:gsub("-", "")) ~= 4 then
			flag4 = ""
		end

		tbl3[str4] = flag4
		return flag4
	end

	local function fn11(arg3)
		local v2 = fn9(str3 .. "?placeId=" .. tostring(game.PlaceId) .. (arg3 and "&target=" .. HttpService2:UrlEncode(arg3) or ""))
		if not v2 then
			return {}
		end
		local ok3, result3 = pcall(HttpService2.JSONDecode, HttpService2, v2)
		return ok3 and type(result3) == "table" and result3 or {}
	end

	local function fn12(arg3)
		local tbl4 = {}
		local tbl5 = {}
		local v2 = ipairs
		arg3 = arg3 or {}

		for _, v3 in v2(arg3) do
			for _, v4 in ipairs(fn11(v3)) do
				local str4 = tostring(v4.jobId or "")
				local flag4 = v3 == "Berries"

				if flag4 then
					flag4 = ":" .. tostring(v4.name or "")
				end

				local str5 = str4 .. (flag4 or "")

				if str5 ~= "" and not tbl5[str5] then
					tbl5[str5] = true
					table.insert(tbl4, v4)
				end
			end
		end

		table.sort(tbl4, function(arg4, arg5)
			return (tonumber(arg4.updated_at) or 0) > (tonumber(arg5.updated_at) or 0)
		end)

		return tbl4
	end

	local function fn13(arg3, arg4)
		if arg3 and arg3 ~= "" and arg3 ~= game.JobId then
			if not pcall(function()
				serverBrowser:InvokeServer("teleport", arg3)
			end) then
				return false
			end

			if arg4 then
				local n2 = tick() + 5

				while true do
					task.wait(0.1)
					local robloxPromptGui = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui")
					local errorPrompt = robloxPromptGui and robloxPromptGui:FindFirstChild("promptOverlay") and robloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
					local tbl4 = {}

					if errorPrompt then
						for _, descendant in ipairs(errorPrompt:GetDescendants()) do
							if descendant:IsA("TextLabel") then
								tbl4[#tbl4 + 1] = descendant.Text
							end
						end
					end

					if errorPrompt and errorPrompt.Visible and table.concat(tbl4, " "):find("772", 1, true) then
						return false
					end

					if not (n2 <= tick()) then
						continue
					end
					break
				end

				return false
			end

			return true
		end

		return false
	end

	if arg then
		arg2 = arg2 or {}
		local v2 = ipairs
		local v3 = fn12(arg)

		for _, v4 in v2(v3) do
			local v5 = fn10(v4.jobId)

			if v5 ~= "" and v5 ~= game.JobId and not arg2[v5] then
				arg2[v5] = true
				if fn13(v5, true) then
					return true
				end
			end
		end

		if next(arg2) then
			table.clear(arg2)
		end

		return false
	end

	local v2 = getrawmetatable(game)
	local namecall = v2.__namecall
	setreadonly(v2, false)
	v2.__namecall = getgenv().RealKidOriginalNamecall

	local ok3, result3 = pcall(function()
		return loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Library/refs/heads/main/redz-V5-remake/main.luau"))()
	end)

	v2.__namecall = namecall
	setreadonly(v2, true)
	if not ok3 or not result3 then
		return
	end

	if not isfolder("realkid_hop_data") then
		makefolder("realkid_hop_data")
	end

	local str4 = "realkid_hop_data" .. "\\" .. game:GetService("Players").LocalPlayer.Name

	if not isfolder(str4) then
		makefolder(str4)
	end

	local v3 = result3:MakeWindow({ Title = "RealKid Hub", SubTitle = "Menu Hop", ScriptFolder = str4 })

	local function fn14(arg3, arg4, arg5)
		local v4 = v3:MakeTab({ Title = arg3 })
		local tbl4 = {}
		local flag4 = false
		v4:AddSection(arg4)

		v4:AddButton({
			Name = "Làm mới danh sách",
			Debounce = 5,
			Callback = function()
				if flag4 then
					return
				end
				flag4 = true

				if not pcall(function()
					v3:Notify({ Title = "Đang quét", Content = "Đang tải dữ liệu...", Duration = 2 })

					for _, v5 in ipairs(tbl4) do
						pcall(function()
							v5:Destroy()
						end)
					end

					tbl4 = {}
					local v5 = fn12(arg5)
					local n2 = 0

					if #v5 > 0 then
						table.insert(tbl4, v4:AddParagraph("Kết quả", "Tìm thấy " .. #v5 .. " server VIP"))

						for _, v6 in ipairs(v5) do
							local str5 = tostring(v6.jobId or "")

							if str5:sub(1, 4) == "RK2." then
								n2 += 1
								local str6 = v6.name == "Core" and "Nhà Máy"

								if not str6 then
									str6 = tostring(v6.name or "Không xác định")
								end

								table.insert(tbl4, v4:AddButton({
									Name = string.format("Vào Server %d: %s", n2, str6),
									Debounce = 3,
									Callback = function()
										v3:Notify({ Title = "Đang Hop", Content = "Chuẩn bị bay tới server", Duration = 3 })
										task.wait(1)
										fn13(fn10(str5))
									end,
								}))
							end
						end
					end

					if n2 == 0 then
						v3:Notify({ Title = "Trống", Content = "Hiện tại không có server nào hoạt động", Duration = 3 })
					end
				end) then
					v3:Notify({ Title = "Lỗi", Content = "Không thể tải danh sách server", Duration = 3 })
				end

				flag4 = false
			end,
		})
	end

	local tbl4 = {
		{ Name = "Fruits", Section = "Săn Trái Hop", Targets = { "AllFruits" } },
		{ Name = "Berries", Section = "Săn Berry", Targets = { "Berries" } },
		{
			Name = "Pink Pig Berry",
			Section = "Săn Berry",
			Targets = { "Pink Pig Berry" },
			HideTab = true,
		},
		{
			Name = "Red Cherry Berry",
			Section = "Săn Berry",
			Targets = { "Red Cherry Berry" },
			HideTab = true,
		},
		{
			Name = "White Cloud Berry",
			Section = "Săn Berry",
			Targets = { "White Cloud Berry" },
			HideTab = true,
		},
		{ Name = "Server 4 Hours", Section = "Server đủ 4 tiếng", Targets = { "Server 4 Hours" } },
		{ Name = "Pirate Raid", Section = "Săn Hải Tặc", Targets = { "Pirate Raid" } },
		{
			Name = "Haki Colors",
			Section = "Săn Công Thức Haki Màu",
			Targets = { "Snow White", "Pure Red", "Winter Sky" },
		},
		{
			Name = "Rip Indra",
			Section = "Rip Indra",
			Targets = { "Rip_Indra", "rip_indra", "rip_indra True Form" },
		},
		{ Name = "Dough King", Section = "Dough King", Targets = { "Dough King" } },
		{ Name = "Cake Queen", Section = "Cake Queen", Targets = { "Cake Queen" } },
		{ Name = "Cake Prince", Section = "Cake Prince", Targets = { "Cake Prince" } },
		{ Name = "Elite Hunter", Section = "Elite Hunter", Targets = { "Diablo", "Deandre", "Urban" } },
		{ Name = "Darkbeard", Section = "Darkbeard", Targets = { "Darkbeard" } },
		{ Name = "Cursed Captain", Section = "Cursed Captain", Targets = { "Cursed Captain" } },
		{
			Name = "Tyrant of Skies",
			Section = "Tyrant of the Skies",
			Targets = { "Tyrant of the Skies" },
		},
		{ Name = "Soul Reaper", Section = "Soul Reaper", Targets = { "Soul Reaper" } },
		{
			Name = "Mirage Island",
			Section = "Mirage Island",
			Targets = { "Mirage Island", "MysticIsland" },
		},
		{
			Name = "Kitsune Island",
			Section = "Kitsune Island",
			Targets = { "Kitsune Island", "KitsuneIsland" },
		},
		{
			Name = "Prehistoric Island",
			Section = "Prehistoric Island",
			Targets = { "Prehistoric Island", "PrehistoricIsland" },
		},
		{ Name = "Near Full Moon", Section = "Sắp Trăng Tròn", Targets = { "Near Full Moon" } },
		{ Name = "Full Moon", Section = "Đang Trăng Tròn", Targets = { "Full Moon 5/5" } },
		{
			Name = "Legendary Swords",
			Section = "Legendary Swords (Sea 2)",
			Targets = { "Shizu", "Oroshi", "Saishi" },
		},
		{ Name = "Factory Raid", Section = "Săn Nhà Máy", Targets = { "Core", "Factory Core" } },
		{ Name = "Sweet Chalice", Section = "Sweet Chalice", Targets = { "Sweet Chalice" } },
		{ Name = "Fist of Darkness", Section = "Fist of Darkness", Targets = { "Fist of Darkness" } },
		{ Name = "God's Chalice", Section = "God's Chalice", Targets = { "God's Chalice" } },
	}

	local tbl5 = {}
	local tbl6 = {}
	local v4 = nil
	local flag4 = false
	local n2 = 0
	local tbl7 = {}

	for _, v5 in ipairs(tbl4) do
		table.insert(tbl5, v5.Name)
		tbl6[v5.Name] = v5.Targets
	end

	local tbl8 = {
		"Galley Pirate",
		"Swan Pirate",
		"Galley Captain",
		"Raider",
		"Mercenary",
		"Vampire",
		"Zombie",
		"Snow Trooper",
		"Winter Warrior",
		"Lab Subordinate",
		"Horned Warrior",
		"Magma Ninja",
		"Lava Pirate",
		"Ship Deckhand",
		"Ship Engineer",
		"Ship Steward",
		"Ship Officer",
		"Arctic Warrior",
		"Snow Lurker",
		"Sea Soldier",
		"Water Fighter",
	}

	local function fn15(arg3)
		local tbl9

		if type(arg3) == "table" then
			tbl9 = arg3
		else
			tbl9 = { arg3 }
		end

		local v5 = replicated

		for _, v6 in ipairs({ workspace:FindFirstChild("Enemies"), v5 }) do
			if v6 then
				for _, child in ipairs(v6:GetChildren()) do
					local humanoid = child:FindFirstChild("Humanoid")
					local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
					local isModel = child:IsA("Model") and table.find(tbl9, child.Name)
					local flag5

					if isModel then
						local flag6 = v6 == replicated

						if flag6 then
							flag5 = flag6
						else
							flag5 = humanoid and humanoidRootPart and humanoid.Health > 0
						end
					else
						flag5 = isModel
					end

					if flag5 then
						return true
					end
				end
			end
		end

		return false
	end

	local tbl9 = {
		["Mirage Island"] = { "Mirage Island", "MysticIsland" },
		["Kitsune Island"] = { "Kitsune Island", "KitsuneIsland" },
		["Prehistoric Island"] = { "Prehistoric Island", "PrehistoricIsland" },
	}

	local function fn16(arg3)
		local flag5 = tbl9[arg3]
		local worldOrigin = workspace:FindFirstChild("_WorldOrigin")
		local map = workspace:FindFirstChild("Map")
		worldOrigin = worldOrigin and worldOrigin:FindFirstChild("Locations")

		if flag5 then
			flag5 = worldOrigin and worldOrigin:FindFirstChild(flag5[1]) ~= nil or map and map:FindFirstChild(flag5[2]) ~= nil
		end

		return flag5 or false
	end

	local function fn17()
		for _, child in ipairs(workspace:GetChildren()) do
			if child.Name ~= "Fruit1" and (child:IsA("Tool") or child:IsA("Model")) and string.find(child.Name, "Fruit", 1, true) and (child:FindFirstChild("Handle") or child:FindFirstChildWhichIsA("BasePart")) then
				return true
			end
		end

		return false
	end

	local tbl10 = { ["Sweet Chalice"] = true, ["Fist of Darkness"] = true, ["God's Chalice"] = true }

	local function fn18(arg3)
		local v5 = ipairs
		local Players2 = game:GetService("Players")

		for _, player in v5(Players2:GetPlayers()) do
			local backpack = player:FindFirstChild("Backpack")
			local character2 = player.Character
			if backpack and backpack:FindFirstChild(arg3) or character2 and character2:FindFirstChild(arg3) then
				return true
			end
		end

		return false
	end

	local function fn19(arg3, arg4)
		local str5 = arg3 == "Haki Colors" and "ColorsDealer"
		local str6

		if str5 then
			str6 = str5
		else
			str6 = arg3 == "Legendary Swords" and "LegendarySwordDealer"
		end

		if not str6 then
			return false
		end

		local ok4, result4 = pcall(function()
			return replicated.Remotes.CommF_:InvokeServer(str6, "1")
		end)

		return ok4 and table.find(arg4, result4) ~= nil
	end

	local function fn20(arg3)
		local ok4, result4 = pcall(function()
			if type(Getmoon) == "function" then
				return Getmoon()
			end
			local sky = Lighting:FindFirstChild("Sky") or Lighting:FindFirstChild("FantasySky")
			return sky and sky.MoonTextureId or ""
		end)

		if not ok4 then
			return false
		end
		local clockTime = Lighting.ClockTime

		if arg3 == "Full Moon" then
			local flag5 = result4 == "http://www.roblox.com/asset/?id=9709149431"
			local flag6

			if flag5 then
				flag6 = clockTime <= 5 or clockTime > 18
			else
				flag6 = flag5
			end

			return flag6
		end

		if arg3 == "Near Full Moon" then
			return result4 == "http://www.roblox.com/asset/?id=9709149052" or result4 == "http://www.roblox.com/asset/?id=9709149431" and clockTime > 12 and clockTime <= 18
		end
		return false
	end

	local function fn21(arg3, arg4)
		if arg3 == "Server 4 Hours" then
			local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")

			if locations then
				for _, child in ipairs(locations:GetChildren()) do
					local attribute = child:GetAttribute("TimeIn")
					if type(attribute) == "number" then
						local n3 = os.time() - attribute
						return n3 >= 14400 and n3 < 16200
					end
				end
			end

			return false
		end

		if arg3 == "Berries" or arg3 == "Pink Pig Berry" or arg3 == "Red Cherry Berry" or arg3 == "White Cloud Berry" then
			local tbl11 = { ["Pink Pig Berry"] = true, ["Red Cherry Berry"] = true, ["White Cloud Berry"] = true }

			for _, v5 in ipairs(game:GetService("CollectionService"):GetTagged("BerryBush")) do
				for _, v6 in pairs(v5:GetAttributes()) do
					local v7 = tbl11[v6]
					local flag5

					if v7 then
						flag5 = arg3 == "Berries" or table.find(arg4, v6)
					else
						flag5 = v7
					end

					if flag5 then
						return true
					end
				end
			end

			return false
		end

		if arg3 == "Fruits" or table.find(arg4, "AllFruits") then
			return fn17()
		end

		if tbl9[arg3] then
			return fn16(arg3)
		end

		if arg3 == "Pirate Raid" then
			return fn15(tbl8)
		end

		if tbl10[arg3] then
			return fn18(arg3)
		end

		if arg3 == "Full Moon" or arg3 == "Near Full Moon" then
			return fn20(arg3)
		end

		if arg3 == "Haki Colors" or arg3 == "Legendary Swords" then
			return fn19(arg3, arg4)
		end
		return fn15(arg4)
	end

	local function fn22(arg3, arg4, arg5, arg6)
		v3:Notify({
			Title = "Auto Hop",
			Content = "Đã tìm thấy " .. tostring(arg3) .. " trong server hiện tại",
			Duration = 4,
		})

		local now = nil

		while true do
			if flag4 and arg5 == n2 and v4 == arg3 then
				if fn21(arg3, arg4) then
					now = nil
					task.wait(1)
					continue
				else
					now = now or tick()
					if not (tick() - now >= arg6) then
						task.wait(1)
						continue
					end
				end
			end

			break
		end

		if flag4 and arg5 == n2 and v4 == arg3 then
			v3:Notify({ Title = "Auto Hop", Content = tostring(arg3) .. " đã hết, tiếp tục hop", Duration = 3 })
		end

		return false
	end

	local function fn23(arg3, arg4)
		local v5 = tbl6[arg3]

		if not v5 then
			flag4 = false
			v3:Notify({ Title = "Auto Hop", Content = "Chưa chọn sự kiện", Duration = 3 })
			return true
		end

		local n3 = (arg3 == "Fruits" or arg3 == "Pirate Raid") and 5 or 3
		local v6 = fn21(arg3, v5)

		if not v6 then
			task.wait(n3)
			if not flag4 or arg4 ~= n2 or v4 ~= arg3 then
				return true
			end
			v6 = fn21(arg3, v5)
		end

		if v6 then
			return fn22(arg3, v5, arg4, n3)
		end
		local v7 = fn12(v5)

		for _, v8 in ipairs(v7) do
			local v9 = fn10(v8.jobId)

			if v9 and v9 ~= "" and v9 ~= game.JobId and not tbl7[v9] then
				tbl7[v9] = true
				v3:Notify({ Title = "Auto Hop", Content = "Đang hop " .. tostring(arg3), Duration = 3 })
				task.wait(0.5)
				fn13(v9, true)

				v3:Notify({
					Title = "Auto Hop",
					Content = "Server đầy/lỗi dịch chuyển, thử server khác",
					Duration = 3,
				})
			end
		end

		if next(tbl7) then
			tbl7 = {}
		end

		v3:Notify({ Title = "Auto Hop", Content = "Chưa tìm thấy server cho " .. tostring(arg3), Duration = 3 })
		return false
	end

	local v5 = v3:MakeTab({ Title = "Auto Hop" })
	v5:AddSection("Auto Hop")

	v5:AddDropdown({
		Name = "Select Event",
		Options = tbl5,
		Flag = "SelectedAutoHopEvent",
		Callback = function(arg3)
			v4 = arg3
			tbl7 = {}
		end,
	})

	v5:AddToggle({
		Name = "Auto Hop Selected Event",
		Default = false,
		Flag = "AutoHopSelectedEvent",
		Callback = function(arg3)
			flag4 = arg3
			n2 += 1
			tbl7 = {}
			local v6 = n2

			if arg3 then
				task.spawn(function()
					task.wait(0.5)

					while true do
						if flag4 and v6 == n2 then
							if not fn23(v4, v6) then
								task.wait(5)
								continue
							end
						end

						break
					end
				end)
			end
		end,
	})

	for _, v6 in ipairs(tbl4) do
		if not v6.HideTab then
			fn14(v6.Name, v6.Section, v6.Targets)
		end
	end
end

local rocks = workspace:FindFirstChild("Rocks")

if rocks then
	rocks:Destroy()
end

if World1 or World2 or World3 then
	local lightingLayers = game:GetService("Lighting"):FindFirstChild("LightingLayers")

	if lightingLayers and lightingLayers:FindFirstChild("DarkFog") then
		lightingLayers.DarkFog:Destroy()
	end

	task.spawn(function()
		pcall(function()
			local waterCFrame = game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("WaterCFrame", 3)

			if waterCFrame then
				waterCFrame.Disabled = true
			end
		end)
	end)
end

local index = {}
index.__index = index

index.Alive = function(arg)
	arg = arg and arg:FindFirstChild("Humanoid")
	return arg and arg.Health > 0
end

index.Kill = function(arg, arg2, arg3, arg4)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end
	task.wait(Sec)
	EquipWeapon(_G.SelectWeapon)
	local tool = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
	local toolTip = tool and tool.ToolTip or ""
	tool = tool and tool.Name or ""
	local magicFastFruit = toolTip == "Blox Fruit" or _G.MagicFastFruit
	arg4 = arg4 or _G.FarmHeight
	local cframe = typeof(arg3) == "CFrame" and arg3 or typeof(arg3) == "Vector3" and CFrame.new(arg3) or humanoidRootPart.CFrame
	PosMon = cframe.Position

	if string.find(tool, "Gas") then
		_tp(cframe * CFrame.new(0, 0, 15))
	elseif magicFastFruit then
		_tp(cframe * CFrame.new(0, 10, 0) * CFrame.Angles(0, 1.5707963267948966, 0))
	else
		_tp(cframe * CFrame.new(0, arg4, 0) * CFrame.Angles(0, 3.1415926535897931, 0))
	end

	if RandomCFrame then
		local n2 = magicFastFruit and 20 or arg4
		local v2 = ipairs
		local tbl3 = {}
		local cframe2 = CFrame.new(0, n2, 25)
		local cframe3 = CFrame.new(25, n2, 0)
		local cframe4 = CFrame.new(-25, n2, 0)
		local cframe5 = CFrame.new(0, n2, 25)
		local cframe6 = CFrame.new
		tbl3[1] = cframe2
		tbl3[2] = cframe3
		tbl3[3] = cframe4
		tbl3[4] = cframe5

		do
			local values = table.pack(cframe6(-25, n2, 0))
			table.move(values, 1, values.n, 5, tbl3)
		end

		for _, v3 in v2(tbl3) do
			task.wait(0.5)

			if humanoid.Health > 0 then
				_tp(cframe * v3)
			end
		end
	end
end

index.SeaSkillEffects = setmetatable({}, { __mode = "k" })
index.SeaSkillDodgeUntil = 0

index.KillSea = function(arg, arg2)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	if _G.SelectWeapon and type(EquipWeapon) == "function" then
		EquipWeapon(_G.SelectWeapon)
	end

	local character2 = game.Players.LocalPlayer.Character
	local tool = character2 and character2:FindFirstChildOfClass("Tool")
	local toolTip = tool and tool.ToolTip or ""
	tool = tool and tool.Name or ""
	local magicFastFruit = toolTip == "Blox Fruit" or _G.MagicFastFruit
	local now = tick()

	if workspace:FindFirstChild("_WorldOrigin") then
		for _, child in ipairs(workspace._WorldOrigin:GetChildren()) do
			if (child.Name == "ChargeUp" or child.Name == "SpinSlash") and not index.SeaSkillEffects[child] then
				index.SeaSkillEffects[child] = true
				index.SeaSkillDodgeUntil = now + 1.25
			end
		end
	end

	local flag3 = now < index.SeaSkillDodgeUntil

	if string.find(tool, "Gas") then
		local position = humanoidRootPart.Position
		_tp(CFrame.lookAt((humanoidRootPart.CFrame * CFrame.new(0, 3, 15)).Position, position))
	elseif magicFastFruit then
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, 1.5707963267948966, 0))
	elseif flag3 then
		_tp(arg:GetPivot() * CFrame.new(0, 200, 0))
	else
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 45, 0))
	end
end

index.Sword = function(arg, arg2, arg3)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	PosMon = arg:GetAttribute("Locked").Position + Vector3.new(0, 3, 0)
	task.wait(Sec)

	if arg3 then
		EquipWeapon(arg3)
	else
		weaponSc("Sword")
	end

	if not humanoidRootPart.Parent then
		return
	end
	_tp(humanoidRootPart.CFrame * CFrame.new(0, 30, 0))

	if RandomCFrame then
		local v2 = ipairs
		local tbl3 = {}
		local cframe = CFrame.new(0, 30, 25)
		local cframe2 = CFrame.new(25, 30, 0)
		local cframe3 = CFrame.new(-25, 30, 0)
		local cframe4 = CFrame.new(0, 30, 25)
		local cframe5 = CFrame.new
		tbl3[1] = cframe
		tbl3[2] = cframe2
		tbl3[3] = cframe3
		tbl3[4] = cframe4

		do
			local values = table.pack(cframe5(-25, 30, 0))
			table.move(values, 1, values.n, 5, tbl3)
		end

		for _, v3 in v2(tbl3) do
			task.wait(Sec)
			_tp(humanoidRootPart.CFrame * v3)
		end
	end
end

index.Mas = function(arg, arg2)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	local flag3 = humanoid.Health / humanoid.MaxHealth * 100 <= _G.MasteryHealthPercent
	PosMon = arg:GetAttribute("Locked").Position + (flag3 and Vector3.new(0, 20, 0) or Vector3.new(0, 3, 0))
	task.wait(0.1)
	if not humanoidRootPart.Parent then
		return
	end

	if flag3 then
		weaponSc("Blox Fruit")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 20, 0))
		UseGlobalSkills("Blox Fruit")
	else
		weaponSc("Melee")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 30, 0))
	end
end

index.Masgun = function(arg, arg2)
	if not arg or not arg2 then
		return
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
	local humanoid = arg:FindFirstChild("Humanoid")
	if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
		return
	end

	if not arg:GetAttribute("Locked") then
		arg:SetAttribute("Locked", humanoidRootPart.CFrame)
	end

	local flag3 = humanoid.Health / humanoid.MaxHealth * 100 <= _G.MasteryHealthPercent
	PosMon = arg:GetAttribute("Locked").Position + Vector3.new(0, 3, 0)
	task.wait(0.1)
	if not humanoidRootPart.Parent then
		return
	end

	if flag3 then
		weaponSc("Gun")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 35, 8))
		UseGlobalSkills("Gun")
	else
		weaponSc("Melee")
		_tp(humanoidRootPart.CFrame * CFrame.new(0, 30, 0))
	end
end

CheckCakePrinceSkill = function()
	local character2 = plr.Character
	character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
	if not character2 then
		return false
	end

	for _, child in ipairs(workspace._WorldOrigin:GetChildren()) do
		if (child.Name == "Ring" or child.Name == "Fist") and child:IsA("BasePart") and (child.Position - character2.Position).Magnitude < 300 then
			return true
		end
	end

	return false
end

statsSetings = function(arg, arg2)
	if arg == "Melee" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Melee", arg2)
		end
	elseif arg == "Defense" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Defense", arg2)
		end
	elseif arg == "Sword" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Sword", arg2)
		end
	elseif arg == "Gun" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Gun", arg2)
		end
	elseif arg == "Devil" then
		if plr.Data.Points.Value ~= 0 then
			replicated.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", arg2)
		end
	end
end

local tbl3 = {}

if Boss then
	for i = 1, #Boss do
		tbl3[Boss[i]] = true
	end
end

local n2 = 0
local n3 = 0

BringEnemy = function(arg, arg2)
	if not _B then
		for _, child in ipairs(workspace.Enemies:GetChildren()) do
			local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")
			local dutditattach = humanoidRootPart and humanoidRootPart:FindFirstChild("dutditattach")

			if dutditattach then
				dutditattach:Destroy()
			end
		end

		return
	end

	if not index.Alive(plr.Character) then
		return
	end
	local position = arg or PosMon

	if typeof(position) == "CFrame" then
		position = position.Position
	end

	local flag3 = typeof(position) ~= "Vector3"

	if not flag3 then
		flag3 = not (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart"))
	end

	if flag3 then
		return
	end
	local now = tick()
	if now - n3 < 0.2 then
		return
	end
	n3 = now

	if sethiddenproperty and now - n2 >= 1 then
		n2 = now
		pcall(sethiddenproperty, plr, "SimulationRadius", 2000)
	end

	local bringRange = _G.BringRange or 0
	local mobM = _G.MobM or 0
	local n4 = 0

	for _, child in ipairs(workspace.Enemies:GetChildren()) do
		local humanoid = child:FindFirstChild("Humanoid")
		local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

		if humanoid and humanoidRootPart then
			local dutditattach = humanoidRootPart:FindFirstChild("dutditattach")

			if tbl3[child.Name] or arg2 and not arg2[child.Name] or humanoid.Health <= 0 or (humanoidRootPart.Position - position).Magnitude > bringRange or n4 >= mobM then
				if dutditattach then
					dutditattach:Destroy()
				end
			else
				local flag4 = humanoidRootPart.ReceiveAge == 0 and not humanoidRootPart.Anchored

				if isnetworkowner then
					local ok3, result3 = pcall(isnetworkowner, humanoidRootPart)

					if ok3 and result3 == true then
						flag4 = not humanoidRootPart.Anchored
					end
				end

				if not flag4 then
					if dutditattach then
						dutditattach:Destroy()
					end
				else
					n4 += 1

					if not dutditattach then
						local walkSpeed = humanoid.WalkSpeed
						local jumpPower = humanoid.JumpPower
						local autoRotate = humanoid.AutoRotate
						local platformStand = humanoid.PlatformStand
						local tbl4 = {}

						for _, child2 in ipairs(child:GetChildren()) do
							if child2:IsA("BasePart") then
								tbl4[child2] = child2.CanCollide
							end
						end

						dutditattach = Instance.new("Attachment")
						dutditattach.Name = "dutditattach"
						dutditattach.Parent = humanoidRootPart
						dutditattach:SetAttribute("SavedOffset", Vector3.new(math.random(-3, 3), 0, math.random(-3, 3)))

						dutditattach.Destroying:Connect(function()
							if humanoid.Parent and humanoid.Health > 0 then
								local v2 = humanoid
								local v3 = humanoid
								local v4 = humanoid
								local v5 = jumpPower
								local v6 = autoRotate
								local v7 = platformStand
								humanoid.WalkSpeed = walkSpeed
								v2.JumpPower = v5
								v3.AutoRotate = v6
								v4.PlatformStand = v7
							end

							for k, v2 in pairs(tbl4) do
								if k.Parent then
									k.CanCollide = v2
								end
							end
						end)
					end

					for _, child2 in ipairs(child:GetChildren()) do
						if child2:IsA("BasePart") and child2.CanCollide then
							child2.CanCollide = false
						end
					end

					humanoid.WalkSpeed = 0
					humanoid.JumpPower = 0
					humanoid.AutoRotate = false

					if not humanoid.PlatformStand then
						humanoid.PlatformStand = true
					end

					humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
					humanoidRootPart.AssemblyAngularVelocity = Vector3.zero

					if not dutditattach:FindFirstChild("dutditaglin") then
						local alignPosition = Instance.new("AlignPosition")
						local oneAttachment = Enum.PositionAlignmentMode.OneAttachment
						local position2 = position + dutditattach:GetAttribute("SavedOffset")
						alignPosition.Name = "dutditaglin"
						alignPosition.Attachment0 = dutditattach
						alignPosition.Mode = oneAttachment
						alignPosition.MaxForce = 1000000
						alignPosition.MaxVelocity = 350
						alignPosition.Responsiveness = 40
						alignPosition.Position = position2
						alignPosition.Parent = dutditattach
						local alignOrientation = Instance.new("AlignOrientation")
						local oneAttachment2 = Enum.OrientationAlignmentMode.OneAttachment
						local cframe = CFrame.new()
						alignOrientation.Name = "dutditorient"
						alignOrientation.Attachment0 = dutditattach
						alignOrientation.Mode = oneAttachment2
						alignOrientation.MaxTorque = 1000000
						alignOrientation.Responsiveness = 40
						alignOrientation.CFrame = cframe
						alignOrientation.Parent = dutditattach
					else
						local dutditaglin = dutditattach:FindFirstChild("dutditaglin")

						if dutditaglin then
							local position2 = position + (dutditattach:GetAttribute("SavedOffset") or Vector3.zero)

							if (dutditaglin.Position - position2).Magnitude > 0.1 then
								dutditaglin.Position = position2
							end
						end
					end
				end
			end
		end
	end
end

Useskills = function(arg, arg2)
	if ({ Melee = true, Sword = true, ["Blox Fruit"] = true, Gun = true })[arg] then
		weaponSc(arg)
		local v2 = Enum.KeyCode[arg2]

		if v2 then
			local n4 = tonumber(_G.GlobalSkillHold and _G.GlobalSkillHold[arg2]) or 0.01

			task.spawn(function()
				vim1:SendKeyEvent(true, v2, false, game)
				task.wait(n4)
				vim1:SendKeyEvent(false, v2, false, game)
			end)
		end
	elseif arg == "nil" and arg2 == "Y" then
		task.spawn(function()
			vim1:SendKeyEvent(true, Enum.KeyCode.Y, false, game)
			task.wait(0.01)
			vim1:SendKeyEvent(false, Enum.KeyCode.Y, false, game)
		end)
	end
end

local v2 = getrawmetatable(game)
local namecall = v2.__namecall

if not getgenv().RealKidOriginalNamecall then
	getgenv().RealKidOriginalNamecall = namecall
end

setreadonly(v2, false)
v2.__namecall = newcclosure(function(...)local Q,k={...},tostring((getnamecallmethod()));if k=="FireServer"then if tostring(Q[1])=="RemoteEvent"then local m=Q[2];local P=tostring(m);if P~="true"and P~="false"then if(_G.FarmMastery_G and not SoulGuitar or _G.FarmMastery_Dev or _G.FarmBlazeEM or _G.Prehis_Skills or _G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.AutoTrialRace or _G.Defeating or _G.Auto_RaceV3 or _G.AimMethod and ABmethod=="Auto Aimbots")and MousePos~=nil then local P=typeof(m);if P=="Vector3"or P=="vector"then Q[2]=MousePos;return  namecall (unpack(Q));elseif P=="table"then local P={};for c,x in pairs(m)do local m=typeof(x);if m=="Vector3"or m=="vector"then P[c]=MousePos;elseif m=="CFrame"and typeof(x.Rotation)=="CFrame"then P[c]=CFrame.new(MousePos)*x.Rotation;else P[c]=x;end;end;Q[2]=P;return  namecall (unpack(Q));end;end;end;end;elseif k=="InvokeServer"then local k=Q[1];if typeof(k)=="Instance"and k.ClassName=="RemoteFunction"and k.Name~="CommF_"then local k=tostring(Q[2]);if k=="X"or k=="Z"or k=="C"or k=="V"then if(_G.Auto_RaceV3 or _G.AimMethod and ABmethod=="Auto Aimbots")and MousePos~=nil then if k=="Z"or k=="C"or k=="V"then Q[3]=MousePos;elseif k=="X"then Q[3]=MousePos;if _G.AimTarget then Q[4]=_G.AimTarget;end;end;return  namecall (unpack(Q));end;end;end;end;return  namecall (...);end)
setreadonly(v2, true)

GetConnectionEnemies = function(arg, arg2)
	local character2 = plr.Character
	local humanoidRootPart = character2 and character2:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return nil
	end
	local position = humanoidRootPart.Position
	local flag3 = typeof(arg) == "table"
	local huge = math.huge
	local v3 = nil

	for _, child in ipairs(Enemies:GetChildren()) do
		if child:IsA("Model") then
			if flag3 and table.find(arg, child.Name) or not flag3 and child.Name == arg then
				local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
				local humanoid = child:FindFirstChild("Humanoid")

				if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
					local magnitude = (humanoidRootPart2.Position - position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v3 = child
					end
				end
			end
		end
	end

	if not v3 and not arg2 then
		for _, child in ipairs(replicated:GetChildren()) do
			if child:IsA("Model") then
				if flag3 and table.find(arg, child.Name) or not flag3 and child.Name == arg then
					local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
					local humanoid = child:FindFirstChild("Humanoid")
					if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
						return child
					end
				end
			end
		end
	end

	return v3
end

LowCpu = function()
	local v3 = workspace
	local Lighting_ = game:GetService("Lighting")
	local terrain = v3.Terrain
	terrain.WaterWaveSize = 0
	terrain.WaterWaveSpeed = 0
	terrain.WaterReflectance = 0
	terrain.WaterTransparency = 0
	Lighting_.GlobalShadows = false
	Lighting_.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"

	for _, descendant in ipairs(game:GetDescendants()) do
		if descendant:IsA("BasePart") and not descendant:IsA("Terrain") then
			descendant.Material = "Plastic"
			descendant.Reflectance = 0

			if descendant:IsA("MeshPart") then
				descendant.TextureID = 10385902758728956
			end
		elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
			descendant.Transparency = 1
		elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
			descendant.Lifetime = NumberRange.new(0)
		elseif descendant:IsA("Explosion") then
			descendant.BlastPressure = 1
			descendant.BlastRadius = 1
		elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
			descendant.Enabled = false
		end
	end

	for _, child in ipairs(Lighting_:GetChildren()) do
		if child:IsA("PostEffect") then
			child.Enabled = false
		end
	end
end

local function fn9()
	local character2 = plr.Character
	return character2 and character2:FindFirstChild("HumanoidRootPart")
end

CheckBoat = function()
	local v3 = fn9()
	if not v3 then
		return nil
	end
	local n4 = 7000
	local v4 = nil

	for _, child in pairs(workspace.Boats:GetChildren()) do
		local vehicleSeat = child:FindFirstChildWhichIsA("VehicleSeat")

		if vehicleSeat then
			local magnitude = (v3.Position - vehicleSeat.Position).Magnitude
			if not (magnitude <= 3000) then
				continue
			end

			if _G.TargetBoatOwner == "My Boat" then
				local value = child:FindFirstChild("Owner") and child.Owner.Value

				if value then
					local name = plr.Name
					value = tostring(child.Owner.Value) == name
				end

				if value then
					return child
				end
				continue
			end

			if _G.TargetBoatOwner == "Nearest Boat" then
				if magnitude < n4 then
					n4 = magnitude
					v4 = child
				end
			end
		end
	end

	if _G.TargetBoatOwner == "Nearest Boat" then
		return v4
	end
	return nil
end

CheckEnemiesBoat = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "FishBoat" and child:FindFirstChild("Health") and child.Health.Value > 0 and child:FindFirstChild("Engine") then
			if (child.Engine.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckPirateGrandBrigade = function(arg)
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if (child.Name == "PirateGrandBrigade" or child.Name == "PirateBrigade") and child:FindFirstChild("Health") and child.Health.Value > 0 and child:FindFirstChild("Engine") then
			if (child.Engine.Position - v3.Position).Magnitude <= (arg or 1200) then
				return true
			end
		end
	end

	return false
end

CheckShark = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Shark" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckTerrorShark = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Terrorshark" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1600 then
				return true
			end
		end
	end

	return false
end

CheckPiranha = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Piranha" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckFishCrew = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Fish Crew Member" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckHauntedCrew = function()
	local v3 = fn9()
	if not v3 then
		return false
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name == "Haunted Crew Member" and index.Alive(child) and child:FindFirstChild("HumanoidRootPart") then
			if (child.HumanoidRootPart.Position - v3.Position).Magnitude <= 1200 then
				return true
			end
		end
	end

	return false
end

CheckSeaBeast = function()
	local character2 = game.Players.LocalPlayer.Character
	if not character2 or not character2:FindFirstChild("HumanoidRootPart") then
		return false
	end
	local humanoidRootPart = character2.HumanoidRootPart

	for _, child in pairs(workspace.SeaBeasts:GetChildren()) do
		if child.Name == "SeaBeast1" and child:FindFirstChild("HumanoidRootPart") then
			if child:FindFirstChild("Health") and child.Health.Value > 0 then
				if (child.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude <= 1200 then
					return true
				end
			end
		end
	end

	return false
end

CheckFrozenDimension = function()
	local locations = workspace._WorldOrigin.Locations
	if locations and locations:FindFirstChild("Frozen Dimension") then
		return true
	end
	return false
end

collectFruits = function(arg)
	if arg then
		local character2 = plr.Character

		for _, child in pairs(workspace:GetChildren()) do
			if string.find(child.Name, "Fruit") then
				child.Handle.CFrame = character2.HumanoidRootPart.CFrame
			end
		end
	end
end

Getmoon = function()
	if World1 then
		return Lighting.FantasySky.MoonTextureId
	end

	if World2 then
		return Lighting.FantasySky.MoonTextureId
	end

	if World3 then
		return Lighting.Sky.MoonTextureId
	end
end

DropFruits = function()
	local v3 = next
	local children, v4 = plr.Backpack:GetChildren()

	for _, v5 in v3, children, v4 do
		if string.find(v5.Name, "Fruit") then
			EquipWeapon(v5.Name)
			task.wait(0.1)

			if plr.PlayerGui.Main.Dialogue.Visible == true then
				plr.PlayerGui.Main.Dialogue.Visible = false
			end

			EquipWeapon(v5.Name)
			plr.Character:FindFirstChild(v5.Name).EatRemote:InvokeServer("Drop")
		end
	end

	for _, child in pairs(plr.Character:GetChildren()) do
		if string.find(child.Name, "Fruit") then
			EquipWeapon(child.Name)
			task.wait(0.1)

			if plr.PlayerGui.Main.Dialogue.Visible == true then
				plr.PlayerGui.Main.Dialogue.Visible = false
			end

			EquipWeapon(child.Name)
			plr.Character:FindFirstChild(child.Name).EatRemote:InvokeServer("Drop")
		end
	end
end

GetBP = function(arg)
	return plr.Backpack:FindFirstChild(arg) or plr.Character:FindFirstChild(arg)
end

error("devirt: value <luasym.LuaFunc object at 0x000002210D06B7C0> in an expression (at 237:9967)")
