if getgenv().Loaded then
	return
end

if getgenv().Debugging then
	print("Debug Is On")
end

settings().Physics.AreOwnersShown = false
local tbl = { ItemConfig = nil, ItemReplication = nil, InventoryController = nil }

local function fn()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")

	if not tbl.ItemConfig then
		pcall(function()
			local itemConfig = ReplicatedStorage:FindFirstChild("ItemConfig")

			if itemConfig and itemConfig:IsA("ModuleScript") then
				tbl.ItemConfig = require(itemConfig)
			end
		end)
	end

	if not tbl.ItemReplication then
		pcall(function()
			local util = ReplicatedStorage:FindFirstChild("Util")
			local itemReplication = util and util:FindFirstChild("ItemReplication") or ReplicatedStorage:FindFirstChild("ItemReplication")

			if itemReplication and itemReplication:IsA("ModuleScript") then
				tbl.ItemReplication = require(itemReplication)
			end
		end)
	end

	if not tbl.InventoryController then
		pcall(function()
			local controllers = ReplicatedStorage:FindFirstChild("Controllers")
			local ui = controllers and controllers:FindFirstChild("UI")
			controllers = ui and ui:FindFirstChild("Inventory") or ReplicatedStorage:FindFirstChild("InventoryController") or controllers and controllers:FindFirstChild("Inventory")

			if controllers and controllers:IsA("ModuleScript") then
				tbl.InventoryController = rawget(_G, "IC") or require(controllers)
			end
		end)
	end

	return tbl
end

local function fn2(arg, arg2)
	local itemReplication = fn().ItemReplication

	if itemReplication then
		for _, v in ipairs({ "Quantity", "Count", "Amount", "Stack" }) do
			if itemReplication[v] and typeof(itemReplication[v].readClient) == "function" then
				local ok, result = pcall(function()
					return itemReplication[v].readClient(arg, arg2)
				end)

				if ok and typeof(result) == "number" and result > 0 then
					return result
				end
			end
		end
	end

	return 1
end

local function fn3(arg, arg2)
	local itemReplication = fn().ItemReplication

	if itemReplication and itemReplication.Mastery and typeof(itemReplication.Mastery.readClient) == "function" then
		local ok, result = pcall(function()
			return itemReplication.Mastery.readClient(arg, arg2)
		end)

		if ok then
			return result
		end
	end

	return nil
end

checkItem = function(arg)
	local v = fn()
	local inventoryController = v.InventoryController
	local itemConfig = v.ItemConfig
	if not inventoryController or not itemConfig then
		return false, 0, nil
	end

	if typeof(inventoryController.GetIfInitialized) == "function" and not inventoryController:GetIfInitialized() then
		pcall(function()
			if typeof(inventoryController.Initialize) == "function" then
				inventoryController:Initialize()
			end
		end)
	end

	local ok, result = pcall(function()
		if typeof(inventoryController.GetTiles) == "function" then
			return inventoryController:GetTiles()
		end
	end)

	if not ok or type(result) ~= "table" then
		return false, 0, nil
	end
	local v2 = string.lower(tostring(arg))
	local v3 = string.gsub(v2, "%s+", "")

	for _, v4 in ipairs(result) do
		local v5 = nil

		pcall(function()
			v5 = itemConfig.match(v4.ItemId):asNullable()
		end)

		local storageKey = v5 and v5.Index and v5.Index.StorageKey
		local displayName = v5 and (v5.DisplayName or v5.Name)
		local str = storageKey or displayName or tostring(v4.ItemId)
		local v6 = string.lower(tostring(str))
		local v7 = string.gsub(v6, "%s+", "")
		local v8 = storageKey and string.lower(tostring(storageKey))
		local v9 = displayName and string.lower(tostring(displayName))

		if storageKey == arg or displayName == arg or str == arg or v6 == v2 or v7 == v3 or v8 and v8 == v2 or v9 and v9 == v2 or tostring(v4.ItemId) == arg then
			local v10 = fn2(v4.ItemId, v4.NetworkedUID)
			local v11

			if v10 <= 1 and (v4.Count or v4.Amount) then
				local num = tonumber(v4.Count or v4.Amount)

				if num and num > v10 then
					v11 = num
				else
					v11 = v10
				end
			else
				v11 = v10
			end

			return true, v11, (fn3(v4.ItemId, v4.NetworkedUID))
		end
	end

	return false, 0, nil
end

checkItemQuantity = function(arg)
	if not arg or arg == "" then
		return false, "", 0
	end
	local v, v2 = checkItem(arg)
	if v and v2 and v2 > 0 then
		return true, arg, v2
	end
	return false, arg, 0
end

hasItem = function(arg)
	local v, v2, v3 = checkItemQuantity(arg)
	return v and v3 > 0
end

getItemQuantity = function(arg)
	local v, v2, v3 = checkItemQuantity(arg)
	return v3 or 0
end

getgenv().IgnoreUi = getgenv().IgnoreUi or false
getgenv().OneClickUi = true
ListSettingableOneClick = {}
LockedFruits = { "Kitsune-Kitsune", "Dough-Dough", "Dragon-Dragon", "Leopard-Leopard" }

if not getgenv().OneClickSetting then
	getgenv().FpsBoost1 = false
	getgenv().WhiteScreen = false
	getgenv().OneClickUi = true

	getgenv().OneClickSetting = {
		Enable = true,
		UnlimitGetQuest = true,
		TripleQuest = true,
		AutoAddStats = true,
		RedeemCode = true,
		Sea2KeyHop = true,
		FruitEat = { { "", "", "" }, {} },
		EatFruitFromStorage = false,
		SnipeFruit = true,
		SnipeFruitMirage = true,
		HopIfFoundNearExploiter = true,
		HopHakiColor = false,
		HopTushita = false,
		HopValkyriehelm = false,
		HopMirrorFractal = false,
		FarmPole = false,
		FarmItems = false,
		DisableSoulGuitar = false,
		DisableRaceEvolve = false,
		DisableCDK = false,
		Mastery = false,
		SwanFruitHop = false,
	}

	getgenv().OneClickFarms = {}
end

print("Wait For Blox Fruit UI")

while true do
	task.wait()
	if not (game:IsLoaded() and game:GetService("Players") and game:GetService("Players").LocalPlayer and game.ReplicatedStorage and game.Players.LocalPlayer:FindFirstChild("PlayerGui")) then
		continue
	end
	break
end

game:GetService("StarterGui")
local tbl2 = {}
ExternalSetting = { "Team", "SlowLoadUi", "FixCrash", "FixCrash2", "ForceUseSilentAim", "AutoLoad" }
local n = 0

while game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") and n < 30 do
	task.wait(1)
	n += 1
end

if n >= 30 then
	game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", game.JobId)
end

require(game:GetService("ReplicatedStorage").Reparent).Unparent = function()
end

if game:GetService("ReplicatedStorage").MapStash:FindFirstChild("Temple of Time") then
	local map = workspace.Map
	game:GetService("ReplicatedStorage").MapStash:FindFirstChild("Temple of Time").Parent = map
end

local function fn4(...)
	local v = table.pack(...)

	if string.find(identifyexecutor(), "Wave") then
		local value = select(3, ...)

		if value == 0 then
			value = false
		elseif value == 1 then
			value = true
		end

		local tbl3 = { n = select("#", table.unpack(v, 1, v.n)), [3] = value, table.unpack(v, 1, v.n) }
		firetouchinterest(table.unpack(tbl3, 1, tbl3.n))
	else
		firetouchinterest(table.unpack({ ... }))
	end
end

TableEncodeSetting = function(arg)
	local str = "{"

	for k, v in pairs(arg) do
		local str2

		if type(v) == "boolean" then
			str2 = tostring(v)
		elseif type(v) == "string" then
			str2 = string.format("%q", v)
		else
			str2 = ""

			if type(v) == "number" then
				str2 = tostring(v)
			end
		end

		str ..= string.format("[%q]=%s,", k, str2)
	end

	return str .. "}"
end

for _, v in pairs(ExternalSetting) do
	print(v, getgenv()[v])
	tbl2[v] = getgenv()[v]
end

Decode = function(arg)
	return loadstring("return " .. arg)()
end

StringSaveSetting = TableEncodeSetting(tbl2)
print(StringSaveSetting)

local ok, result = pcall(function()
	Decode(StringSaveSetting)
end)

if result then
	print(result)
end

getgenv().Loaded = true
isfluxus = string.find(identifyexecutor(), "Fluxus") or string.find(identifyexecutor(), "ScriptWare")
local flag = true

local setThreadIdentity = syn and syn.set_thread_identity or set_thread_identity or setidentity or setthreadidentity or function()
end

if syn then
end

local v = isfluxus
getgenv().fluxus = v
fluxus = isfluxus

SupportRetard = function()
	if not fluxus then
		setThreadIdentity(8)
	end
end

SupportRetard()
virtualUser = game:GetService("VirtualUser")

if getgenv().Team ~= "Pirates" and getgenv().Team ~= "Marines" then
	getgenv().Team = "Pirates"
end

spawn(function()
	task.wait(5)
	SupportRetard()

	pcall(function()
		local effect = game:GetService("ReplicatedStorage"):FindFirstChild("Effect")
		effect = effect and effect:FindFirstChild("Container")
		effect = effect and effect:FindFirstChild("Death")

		if effect then
			local module = require(effect)

			if hookfunction then
				hookfunction(module, function()
				end)
			end
		end
	end)
end)

pcall(function()
	workspace._WorldOrigin["Foam;"]:Destroy()
	workspace._WorldOrigin.WaterSplashes:Destroy()
end)

local function fn5(arg)
	if arg and arg.Parent and arg:FindFirstChild("HumanoidRootPart") and arg:FindFirstChild("Humanoid") then
		if arg:FindFirstChild("Humanoid").Health and arg:FindFirstChild("Humanoid").Health > 0 then
			return true
		end
	end

	return false
end

ConvertPing = function(arg)
	local str = arg.Text:gsub(" ms", "")
	return tonumber(str)
end

GetPingTextPath = function()
	for _, child in ipairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
		if child:FindFirstChild("StatsMiniTextPanelClass") and child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
			return child.StatsMiniTextPanelClass.ValueLabel
		end
	end
end

GetPing = function()
	if not game.CoreGui.RobloxGui:FindFirstChild("PerformanceStats") then
		UserSettings().GameSettings.PerformanceStatsVisible = true
		return
	end
	local v2 = GetPingTextPath()
	return ConvertPing(v2)
end

task.spawn(function()
	SupportRetard()

	local tbl3 = {
		Enum.ConnectionError.DisconnectErrors.Value,
		Enum.ConnectionError.PlacelaunchOtherError.Value,
		17,
		279,
		266,
		267,
		722,
		272,
		529,
		277,
		769,
	}

	while task.wait(1) do
		local value = game:GetService("GuiService"):GetErrorCode().Value

		for _, v2 in pairs(tbl3) do
			if value == v2 then
				game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", game.JobId)
			end
		end

		if LastPing == game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() and LastPing ~= 0 then
			SamePingCount = (SamePingCount or 0) + 1
		else
			SamePingCount = 0
		end

		if SamePingCount >= 60 then
			SamePingCount = 0
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
			task.wait(10)
		end

		LastPing = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
	end
end)

if not secure_call then
	secure_call = loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/backup/refs/heads/main/secure_call.lua", true))()
end

while not game.Players.LocalPlayer.Team and task.wait(1) do
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", getgenv().Team)
end

repeat
	wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")

local tbl3 = {
	HakiPad = {
		CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, 0, -0.92718488, 0, 1, 0, 0.92718488, 0, 0.374604106),
		200,
	},
	Law = {
		CFrame.new(-5536.31396484375, 328.98834228515625, -5935.50244140625, 0.374604106, 0, -0.92718488, 0, 1, 0, 0.92718488, 0, 0.374604106),
		500,
	},
}

RenderFunc = function(arg)
	for i = 1, 25 do
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	end

	local tbl4 = { { { cf = tbl3[arg][1], distance = tbl3[arg][2], showTime = 90 } } }
	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RequestStreamAroundAsync"):FireServer(unpack(tbl4))
	game.ReplicatedStorage.Remotes:WaitForChild("RequestStreamAroundAsync").OnClientEvent:Wait()

	for i = 1, 25 do
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	end
end

if Sea2 then
	RenderFunc("Law")
end

print("Choosed Team")
local v2 = getsynasset or getcustomasset
local request_ = http_request or request or HttpPost or syn.request
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
game:GetService("ReplicatedStorage")
game:GetService("UserInputService")
game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local RunService = game:getService("RunService")
local Lighting = game:getService("Lighting")
local localPlayer = Players.LocalPlayer
local n2 = 2800
local placeId = game.PlaceId
local attribute = workspace:GetAttribute("MAP")

if attribute == "Sea1" or placeId == 85211729168715 or placeId == 2753915549 then
	Sea1 = true
	MaxLevelSea = 675
elseif attribute == "Sea2" or placeId == 79091703265657 or placeId == 4442272183 then
	Sea2 = true
	MaxLevelSea = 1450
elseif attribute == "Sea3" or placeId == 100117331123089 or placeId == 7449423635 then
	Sea3 = true
	MaxLevelSea = 2800
else
	game.Players.LocalPlayer:Kick(string.format("Unsupported game | %s", tostring(game.PlaceId)))

	while task.wait() do
	end
end

local tbl4 = {
	["2753915549"] = "2753915549",
	["4442272183"] = "4442272183",
	["79091703265657"] = "4442272183",
	["7449423635"] = "7449423635",
	["100117331123089"] = "7449423635",
}

local currentPlaceKey = nil

if Sea1 then
	currentPlaceKey = "2753915549"
elseif Sea2 then
	currentPlaceKey = "4442272183"
elseif Sea3 then
	currentPlaceKey = "7449423635"
end

getgenv().CurrentPlaceKey = currentPlaceKey
currentPlaceKey = currentPlaceKey or tbl4[tostring(game.PlaceId)]

local setting = {
	Level = { Enable = false },
	OneClick = { Enable = false },
	Katakuri = { Enable = false },
	Bone = { Enable = false },
	AcceptQuest_Bone_Katakuri = { Enable = true },
	Elite = { Enable = false },
	["Tyrant Skies"] = { Enable = false },
	SubFarming = {},
	["Pirate Raid"] = { Enable = false },
	["Kill Aura"] = { Enable = false, DistanceFromAnchor = 4000, AnchorTPBack = true },
	Factory = { Enable = false },
	Mastery = { Enable = false, ["Fruit/Gun"] = false, ["Sword/Low"] = false, Sword = false },
	SelectWeapon = "Blox Fruit",
	LocalPlayer = {
		Speed = 90,
		SpeedHack = false,
		AutoBuso = true,
		AutoEnableObservation = false,
		WaterWalker = true,
		AutoUseV4 = false,
	},
	FastAttack = {
		Enable = true,
		TimeFastAttack = 80,
		TimeToAttack = 3,
		FastAttackIfBoss = false,
		OnPlayer = true,
		OnMob = true,
		OldFastAttack = false,
	},
	Tween = { Pause = false, TimeNeedPause = 2, TimePause = 0.2, Speed = 150 },
	Pvp = { AutoShootGun = false, Method = "Nearest" },
	ESP = { Player = false, Chest = false, Boss = false, Island = false, Fruit = false },
	SeaEvents = {
		ShipSpeedModifier = false,
		ShipSpeed = 300,
		SpinDistance = 200,
		DistanceNearSeaBeast = 300,
		DistanceNearMob = 300,
		AutoEscapeRoughSea = true,
	},
	Shop = { AutoBuyBribe = false, AutoRandomFruit = false, AutoRandomBone = false },
	SkillsSet2 = { ["Blox Fruit"] = true, Gun = true, Sword = true, Melee = true },
	SkillsSettingRemake = {
		["Blox Fruit"] = { "Z", "X", "C", "V", "F" },
		Gun = { "Z", "X" },
		Sword = { "Z", "X" },
		Melee = { "Z", "X", "C" },
	},
	UseDragonStorm = false,
	FruitSkillsHold = {},
	BringMob = { Enable = true, Radius = 200 },
	Fruit = { AutoStore = false, FruitsToSnipe = {} },
	GetFruit = { Enable = false },
	["Rip Indra"] = { Enable = false },
	["Black Beard"] = { Enable = false },
	["Dough King"] = { Enable = false },
	["Cake Prince"] = { Enable = false },
	["Full Dough King"] = { Enable = false },
	FullyRaceV4_Entrance = { Enable = false },
	Material = { Enable = false, Select = "" },
	Misc = { __RemoveNotification = false, __RemoveDMGCounter = false },
	Raid = { Select = "", Enable = false, NoDelay = true },
	Bartilo = { Enable = false },
	["Race Evolve"] = { Enable = false },
	["Haki Pad"] = { Enable = false },
	["Collect Chest"] = { Enable = false, InstaTP = false },
	["Open Pad"] = { Enable = false },
	["Spawn Black Beard"] = { Enable = false },
	["Spawn Rip Indra"] = { Enable = false },
	["Mirage Snipe Fruit"] = { Enable = false },
	["Soul Guitar"] = { Enable = false },
	["Material Soul Guitar"] = { Enable = false },
	["Black Beard Hop"] = { Enable = false },
	["Tushita Hop__1"] = { Enable = false },
	["Soul Reaper"] = { Enable = false },
	["Spawn Soul Reaper"] = { Enable = false },
	Tushita = { Enable = false },
	["Hybrid Fruit Hop"] = { Enable = false },
	["Raid Fruit Hop"] = { Enable = false },
	["Fully Cyborg"] = { Enable = false },
	["Fully Ghoul"] = { Enable = false },
	Law = { Enable = false },
	CDK = { Enable = false },
	["Level Observation"] = { Enable = false },
	["Rainbow Haki"] = { Enable = false },
	__SaberHop = { Enable = false },
	["Citizen Quest"] = { Enable = false },
	__PoleHop = { Enable = false },
	["Evolve Observation"] = { Enable = false },
	SwordSwitcher = { Enable = false },
	GunSwitcher = { Enable = false },
	["Get Ghoul"] = { Enable = false },
	["Unlock Electric Claw"] = { Enable = false },
	["Elite Hop"] = { Enable = false },
	["Rip Indra Hop"] = { Enable = false },
	YoruV3 = { Enable = false, Upgrade = false, SelectedPlayer = nil },
	BossSniper = { Enable = false, SelectedBoss = {} },
	SafeMode_GetGoodItem = { Enable = true },
	__KatakuriHop = { Enable = false },
	BlackSmith = { Enable = false, WeaponType = false },
}

getgenv().SettingManager = {}

if not SettingManager then
	SettingManager = getgenv().SettingManager
end

SettingManager.SetTheme = function(arg, image)
	if image then
		UIThemeCustom.ImageTransparency = 0
		UIThemeCustom.Image = image
	end
end

SettingManager.SetAvatar = function(arg, arg2, arg3)
	pcall(function()
		local str = tostring(arg3)
		local str2 = arg.CurrentFolder .. "/Cache/Avt.png"

		if not isfile(str2) then
			writefile(str2, request_({
				Url = "https://cdn.discordapp.com/avatars/" .. str .. "/" .. arg2 .. ".png",
				Method = "GET",
				Headers = { ["Content-Type"] = "application/json" },
			}).Body)

			repeat
				wait()
			until isfile(str2)
		end

		if isfile(str2) then
			UserIcon.Image = v2(str2)
		end
	end)
end

SettingManager.SetFolder = function(arg, currentFolder)
	if not isfolder(currentFolder) then
		makefolder(currentFolder)
	end

	arg.CurrentFolder = currentFolder
	arg.Theme = arg.CurrentFolder .. "/Theme"
	arg.Cache = arg.CurrentFolder .. "/Cache"
	arg.AutoSave = arg.CurrentFolder .. "/Main"
	arg.Config = arg.CurrentFolder .. "/ConfigMain"
	arg.Global = arg.CurrentFolder .. "/Global"
	arg.AutoLoad = arg.AutoSave .. "/" .. game.Players.LocalPlayer.Name .. ".txt"
	arg.GlobalTheme = arg.Global .. "/GlobalTheme.txt"
	arg.GlobalTrans = arg.Global .. "/GlobalTrans.txt"
	arg.AutoData = arg.Config .. "/" .. game.Players.LocalPlayer.Name .. ".json"
	arg.SameAcc = arg.CurrentFolder .. "/SameAcc"
	arg.AutoConfig = arg.AutoData

	if not isfolder(arg.Theme) then
		makefolder(arg.Theme)
	end

	if not isfolder(arg.SameAcc) then
		makefolder(arg.SameAcc)
	end

	if not isfolder(arg.Cache) then
		makefolder(arg.Cache)
	end

	if not isfolder(arg.AutoSave) then
		makefolder(arg.AutoSave)
	end

	if not isfolder(arg.Config) then
		makefolder(arg.Config)
	end
end

SettingManager.SetGlobalTrans = function(arg, arg2, arg3)
	if arg2 then
		writefile(arg.GlobalTrans, HttpService:JSONEncode(arg3))
		return
	end
	return isfile(arg.GlobalTrans) and HttpService:JSONDecode(readfile(arg.GlobalTrans))
end

SettingManager.SetGlobalTheme = function(arg, arg2, arg3)
	if arg2 then
		writefile(arg.GlobalTheme, HttpService:JSONEncode(arg3))
		return
	end
	return isfile(arg.GlobalTheme) and HttpService:JSONDecode(readfile(arg.GlobalTheme))
end

SettingManager.SetSameInstance = function(arg)
	if isfolder(arg.SameAcc) then
		if isfile(arg.SameAcc .. "/Account.json") then
			local data = HttpService:JSONDecode(readfile(arg.SameAcc .. "/Account.json"))

			if not table.find(data, localPlayer.Name) then
				table.insert(data, localPlayer.Name)
				writefile(arg.SameAcc .. "/Account.json", HttpService:JSONEncode(data))
			end

			for _, player in pairs(Players:GetPlayers()) do
				if player == localPlayer then
					continue
				end

				if table.find(data, player.Name) then
					print("Checked Same: " .. player.Name)
					return true
				end
			end
		else
			writefile(arg.SameAcc .. "/Account.json", HttpService:JSONEncode({ localPlayer.Name }))
		end
	end
end

SettingManager.LoadAutoConfig = function(arg)
	if not isfile(arg.AutoLoad) then
		writefile(arg.AutoLoad, arg.Config .. "/" .. game.Players.LocalPlayer.Name .. ".json")
	else
		local v3 = readfile(arg.AutoLoad)

		if isfile(v3) then
			arg.AutoConfig = v3
			print("Auto load")
			local data = nil

			pcall(function()
				data = HttpService:JSONDecode(readfile(arg.AutoConfig))
			end)

			return data
		end
	end
end

SettingManager.SetAutoConfig = function(arg, arg2)
	writefile(arg.AutoLoad, arg2)
end

SettingManager.New = function(arg, arg2)
	writefile(arg.Config .. "/" .. arg2, HttpService:JSONEncode({}))
end

SettingManager.Save = function(arg, arg2, arg3)
	if arg2 and arg3 then
		return (pcall(function()
			writefile(arg2, HttpService:JSONEncode(arg3))
		end))
	end
	writefile(arg.AutoData, getgenv().Setting and HttpService:JSONEncode({ Setting = getgenv().Setting }) or HttpService:JSONEncode({}))
end

SettingManager.Load = function(arg, arg2)
	if isfile(arg.Config .. "/" .. arg2) then
		return HttpService:JSONDecode(readfile(arg.AutoSave .. "/" .. arg2))
	end
end

SettingManager.ListFile = function(arg, arg2)
	return listfiles(arg.CurrentFolder .. ({ Theme = "/Theme", Config = "/ConfigMain" })[arg2])
end

SettingManager:SetFolder("Oneclick")

if not getgenv().Setting then
	getgenv().Setting = {}
end

local v3 = SettingManager:LoadAutoConfig()

if v3 and v3.Setting then
	for k, v4 in pairs(v3.Setting) do
		getgenv().Setting[k] = v4
	end

	for k, v4 in pairs(setting) do
		if not getgenv().Setting[k] then
			print("Missing: " .. k, v4)
			getgenv().Setting[k] = v4
			print(getgenv().Setting[k])
		end
	end

	local tween_ = getgenv().Setting.Tween

	if tween_ then
		tween_ = not getgenv().Setting.Tween.Speed or getgenv().Setting.Tween.Speed == 195 or getgenv().Setting.Tween.Speed == 250 or getgenv().Setting.Tween.Speed == 300
	end

	if tween_ then
		getgenv().Setting.Tween.Speed = 150
	end

	print("Loaded")
else
	print("Dell load")
	getgenv().Setting = setting
	SettingManager:Save()
end

local v4 = pairs
local oneClickSetting = getgenv().OneClickSetting or {}

for k, v5 in v4(oneClickSetting) do
	getgenv().Setting.OneClick[k] = v5
end

SupportRetard()
print("Get Exteral Data")
PriorityQueue = loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/backup/refs/heads/main/PriorityQueue.lua", true))()
print("Getting Game Data")

local tbl5 = {
	MetaData = {},
	Places = {
		["2753915549"] = {
			["Pirate Start Island"] = CFrame.new(781.37255859375, 5.7767753601074, 1437.2399902344),
			["Marine Start Island"] = CFrame.new(-2606.2143554688, 6.7695031166077, 2043.04553222667),
			["Middle Town"] = CFrame.new(-655.824158, 7.88708115, 1436.67908),
			Jungle = CFrame.new(-1334.1259765625, 11.852984428406, 502.03717041016),
			["Shank's Room"] = CFrame.new(-1455.4440917969, 29.851997375488, -37.440139770508),
			["Pirate Village"] = CFrame.new(-1187.3435058594, 4.7515587806702, 3809.2456054688),
			Desert = CFrame.new(1094.14587, 6.47350502, 4192.88721),
			["Frozen Village"] = CFrame.new(1112.4229736328, 7.3036189079285, -1159.3383789062),
			["Marine Fortress"] = CFrame.new(-4817.0161132812, 20.651899337769, 4368.0639648438),
			["Mob Leader Place"] = CFrame.new(-2839.7548828125, 7.3262448310852, 5319.9428710938),
			Prison = CFrame.new(4874.8125, 5.6519904136658, 735.57012939453),
			Colosseum = CFrame.new(-1423.5014648438, 7.2882599830627, -2798.2961425781),
			Skylands = CFrame.new(-4970.21875, 717.707275, -2622.35449),
			SkyArea1 = CFrame.new(-4166.60986328125, 1092.744873046875, -347.16226196289062, 1, 5.1830135738839545e-09, -1.6339706009668026e-13, -5.1830135738839545e-09, 1, -3.6744087772433431e-09, 1.6337800524349883e-13, 3.6744087772433431e-09, 1),
			SkyArea2 = CFrame.new(-6023.57666015625, 5469.4384765625, 2203.308349609375, 1, -8.4390421761781909e-08, -2.6110152705698759e-15, 8.4390421761781909e-08, 1, 5.9774379224109e-08, -2.4333695916410733e-15, -5.9774379224109e-08, 1),
			["Sky Secret Temple"] = CFrame.new(-7390.0791015625, 5743.578125, 338.90826416015625, -0.572482109, 0, -0.819917202, 0, 1, 0, 0.819917202, 0, -0.572482109),
			["Magma Village"] = CFrame.new(-5231.75879, 8.61593437, 8467.87695),
			["Magma Cave"] = CFrame.new(-60966.09765625, 6838.58349609375, 9060.8896484375),
			["Sewer System"] = CFrame.new(-251.89410400390625, -568.750244140625, -121.50762939453125),
			["Fish Entrance Island"] = CFrame.new(3868.501953125, 5.5923495292663574, -1917.993408203125),
			["UnderWater City Gate"] = CFrame.new(3853.0385742188, 5.3731479644775, -1919.4447021484),
			["UnderWater City"] = CFrame.new(61092.36328125, 18.471633911133, 1711.1674804688),
			["Fountain City"] = CFrame.new(5053.0297851562, 1.5012743473053, 4054.8439941406),
		},
		["4442272183"] = {
			["First Spot"] = CFrame.new(-11.845784187317, 29.276727676392, 2768.9770507812),
			Cafe = CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668),
			["Swan Mansion"] = CFrame.new(-390.096313, 331.886475, 673.464966),
			["Swan Room"] = CFrame.new(2302.19019, 15.1778421, 663.811035),
			Factory = CFrame.new(430.42569, 210.019623, -432.504791),
			Colosseum = CFrame.new(-1836.58191, 44.5890656, 1360.30652),
			["Dark Arena"] = CFrame.new(3781.985107421875, 14.850649833679199, -3498.081298828125),
			["Green bit"] = CFrame.new(-2304.93359375, 72.966117858887, -2782.6965332031),
			["Graveyard Island"] = CFrame.new(-5377.3295898438, 8.9691047668457, -708.45489501953),
			["Snow Mountain"] = CFrame.new(554.47235107422, 401.42199707031, -5364.732421875),
			["Hot And Cold Island"] = CFrame.new(-5944.7875976562, 15.951756477356, -5114.8725585938),
			["Cursed Ship Gate"] = CFrame.new(-6509.4169921875, 83.187019348145, -137.39677429199801),
			["Cursed Ship"] = CFrame.new(902.059143, 124.752518, 33071.8125),
			["Ice Castle"] = CFrame.new(5662.44140625, 28.191165924072, -5982.9755859375),
			["Forgotten Island"] = CFrame.new(-3043.31543, 238.881271, -10191.5791),
			["Usoap Island"] = CFrame.new(4778.2431640625, 8.2086620330811, 2871.4936523438),
			["Minisky Island"] = CFrame.new(-260.358917, 49325.7031, -35259.3008),
			["Indra Island"] = CFrame.new(-27007.9363, 9.033, 466.6544),
		},
		["7449423635"] = {
			["Port Town"] = CFrame.new(-447.46743774414, 6.7299399375916, 5306.3686523438),
			["Hydra Island"] = CFrame.new(5335.88623046875, 1004.7794799804688, 241.50193786621094),
			["Secret Temple"] = CFrame.new(5231.6831054688, 7.3780846595764, 1102.6005859375),
			["Great Tree"] = CFrame.new(2253.0600585938, 24.144220352173, -6405.6694335938),
			["Castle on the sea"] = CFrame.new(-5026.3584, 323.515503, -2996.28442),
			["Pineapple Town"] = CFrame.new(-11363.5166, 362.381439, -10327.9727),
			Mansion = CFrame.new(-12553.0595703125, 337.38748168945312, -7471.96142578125),
			["Floating Turtle"] = CFrame.new(-12001.6152, 1707.39319, -8789.03711),
			["Beautiful Pirate Gate"] = CFrame.new(-11990.901367188, 331.80770874023, -8845.5888671875),
			["Beautiful Pirate Domain"] = CFrame.new(5310.80957, 160.446838, 129.390533),
			["Friendly Arena"] = CFrame.new(5220.28955, 72.8193436, -1500.86304),
			["Haunted Castle"] = CFrame.new(-9530.61035, 200.860657, 5763.13477),
			["Soul Reaper Raid Room"] = CFrame.new(-9522.0957, 315.89975, 6751.88818),
			["Peanut Island"] = CFrame.new(-2087.0561523438, 11.722011566162, -10002.080078125),
			["Ice Cream Island"] = CFrame.new(-851.74633789062, 65.819496154785, -10932.150390625),
			["Sea Of Treats"] = CFrame.new(-1907.1773681640625, 9.5656547546386719, -11539.8251953125),
		},
	},
}

local tripleQuest = {}
local tbl6 = {}

tbl6[0] = {
	Quest = game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name == "Marines" and "MarineQuest" or "BanditQuest1",
	QuestCFrame = game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name == "Marines" and CFrame.new(-2655.284, 30.567, 2113.724) or CFrame.new(1051.798, 11.016, 1557.743),
	{
		Requirement = 0,
		Mob = game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name == "Marines" and "Trainee [Lv. 5]" or "Bandit [Lv. 5]",
		QuestCheck = game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name == "Marines" and "Trainee" or "Bandit",
	},
}

tbl6[10] = {
	Quest = "JungleQuest",
	QuestCFrame = CFrame.new(-1679.763, 48.74, 175.64),
	{ Requirement = 10, Mob = "Monkey [Lv. 14]", QuestCheck = "Monkey" },
	{ Requirement = 15, Mob = "Gorilla [Lv. 20]", QuestCheck = "Gorilla" },
	{
		Requirement = 20,
		Boss = "The Gorilla King [Lv. 25] [Boss]",
		QuestCheck = "The Gorilla King",
		Quest = "JungleQuest",
		QuestCFrame = CFrame.new(-1679.763, 48.74, 175.64),
	},
}

tbl6[30] = {
	Quest = "BuggyQuest1",
	QuestCFrame = CFrame.new(-1151.586, 13.615, 3863.125),
	{ Requirement = 30, Mob = "Pirate [Lv. 35]", QuestCheck = "Pirate" },
	{ Requirement = 40, Mob = "Brute [Lv. 45]", QuestCheck = "Brute" },
	{
		Requirement = 55,
		Boss = "Bobby [Lv. 55] [Boss]",
		QuestCheck = "Bobby",
		Quest = "BuggyQuest1",
		QuestCFrame = CFrame.new(-1151.586, 13.615, 3863.125),
	},
}

tbl6[60] = {
	Quest = "DesertQuest",
	QuestCFrame = CFrame.new(931.378, 4.684, 4198.213),
	{ Requirement = 60, Mob = "Desert Bandit [Lv. 60]", QuestCheck = "Desert Bandit" },
	{ Requirement = 75, Mob = "Desert Officer [Lv. 75]", QuestCheck = "Desert Officer" },
}

tbl6[90] = {
	Quest = "SnowQuest",
	QuestCFrame = CFrame.new(1400.564, 77.391, -1311.285),
	{ Requirement = 90, Mob = "Snow Bandit [Lv. 90]", QuestCheck = "Snow Bandit" },
	{ Requirement = 100, Mob = "Snowman [Lv. 100]", QuestCheck = "Snowman" },
	{
		Requirement = 105,
		Boss = "Yeti [Lv. 110] [Boss]",
		QuestCheck = "Yeti",
		Quest = "SnowQuest",
		QuestCFrame = CFrame.new(1400.564, 77.391, -1311.285),
	},
}

tbl6[120] = {
	Quest = "MarineQuest2",
	QuestCFrame = CFrame.new(-4699.331, 4.741, 4227.639),
	{ Requirement = 120, Mob = "Chief Petty Officer [Lv. 120]", QuestCheck = "Chief Petty Officer" },
	[3] = {
		Requirement = 130,
		Boss = "Vice Admiral [Lv. 130] [Boss]",
		QuestCheck = "Vice Admiral",
		Quest = "MarineQuest2",
		QuestCFrame = CFrame.new(-4699.331, 4.741, 4227.639),
		Index = 2,
	},
}

tbl6[150] = {
	Quest = "SkyQuest",
	QuestCFrame = CFrame.new(-4750.18, 966.067, -748.241),
	{ Requirement = 150, Mob = "Sky Bandit [Lv. 150]", QuestCheck = "Sky Bandit" },
	{ Requirement = 175, Mob = "Dark Master [Lv. 175]", QuestCheck = "Dark Master" },
}

tbl6[190] = {
	Quest = "PrisonerQuest",
	QuestCFrame = CFrame.new(5208.339, 15.872, 736.586),
	{ Requirement = 190, Mob = "Prisoner [Lv. 190]", QuestCheck = "Prisoner" },
	{ Requirement = 210, Mob = "Dangerous Prisoner [Lv. 210]", QuestCheck = "Dangerous Prisoner" },
}

tbl6[225] = {
	Quest = "ImpelQuest",
	QuestCFrame = CFrame.new(5320.666, 18.886, 856.281),
	{ Requirement = 225, Mob = "Ruthless Prisoner [Lv. 225]", QuestCheck = "Ruthless Prisoner" },
	[3] = {
		Requirement = 230,
		Boss = "Warden [Lv. 220]",
		QuestCheck = "Warden",
		Quest = "ImpelQuest",
		QuestCFrame = CFrame.new(5320.666, 18.886, 856.281),
		Index = 2,
	},
}

tbl6[250] = {
	Quest = "ColosseumQuest",
	QuestCFrame = CFrame.new(-1342.255, 11.151, -2928.581),
	{ Requirement = 250, Mob = "Toga Warrior [Lv. 250]", QuestCheck = "Toga Warrior" },
	{ Requirement = 275, Mob = "Gladiator [Lv. 275]", QuestCheck = "Gladiator" },
}

tbl6[300] = {
	Quest = "MagmaQuest",
	QuestCFrame = CFrame.new(-5308.867, 17.035, 8482.698),
	{ Requirement = 300, Mob = "Military Soldier [Lv. 300]", QuestCheck = "Military Soldier" },
	{ Requirement = 325, Mob = "Military Spy [Lv. 325]", QuestCheck = "Military Spy" },
	{
		Requirement = 350,
		Boss = "Magma Admiral [Lv. 350] [Boss]",
		QuestCheck = "Magma Admiral",
		Quest = "MagmaQuest",
		QuestCFrame = CFrame.new(-5308.867, 17.035, 8482.698),
	},
}

tbl6[375] = {
	Quest = "FishmanQuest",
	QuestCFrame = CFrame.new(61406.195, 24.519, 1626.816),
	{ Requirement = 375, Mob = "Fishman Warrior [Lv. 375]", QuestCheck = "Fishman Warrior" },
	{ Requirement = 400, Mob = "Fishman Commando [Lv. 400]", QuestCheck = "Fishman Commando" },
	{
		Requirement = 425,
		Boss = "Fishman Lord [Lv. 425] [Boss]",
		QuestCheck = "Fishman Lord",
		Quest = "FishmanQuest",
		QuestCFrame = CFrame.new(61406.195, 24.519, 1626.816),
	},
}

tbl6[400] = {
	Quest = "FishmanQuest",
	QuestCFrame = CFrame.new(61406.195, 24.519, 1626.816),
	{ Requirement = 375, Mob = "Fishman Warrior [Lv. 375]", QuestCheck = "Fishman Warrior" },
	{ Requirement = 400, Mob = "Fishman Commando [Lv. 400]", QuestCheck = "Fishman Commando" },
	{
		Requirement = 425,
		Boss = "Fishman Lord [Lv. 425] [Boss]",
		QuestCheck = "Fishman Lord",
		Quest = "FishmanQuest",
		QuestCFrame = CFrame.new(61406.195, 24.519, 1626.816),
	},
}

tbl6[450] = {
	Quest = "SkyExp1Quest",
	QuestCFrame = CFrame.new(-4882.894, 926.177, -1031.055),
	{ Requirement = 450, Mob = "God's Guard [Lv. 450]", QuestCheck = "God's Guard" },
	{ Requirement = 475, Mob = "Shanda [Lv. 475]", QuestCheck = "Shanda" },
	{
		Requirement = 500,
		Boss = "Wysper [Lv. 500] [Boss]",
		QuestCheck = "Wysper",
		Quest = "SkyExp1Quest",
		QuestCFrame = CFrame.new(-4882.894, 926.177, -1031.055),
	},
}

tbl6[475] = {
	Quest = "SkyExp1Quest",
	QuestCFrame = CFrame.new(-4882.894, 926.177, -1031.055),
	{ Requirement = 450, Mob = "God's Guard [Lv. 450]", QuestCheck = "God's Guard" },
	{ Requirement = 475, Mob = "Shanda [Lv. 475]", QuestCheck = "Shanda" },
	{
		Requirement = 500,
		Boss = "Wysper [Lv. 500] [Boss]",
		QuestCheck = "Wysper",
		Quest = "SkyExp1Quest",
		QuestCFrame = CFrame.new(-4882.894, 926.177, -1031.055),
	},
}

tbl6[525] = {
	Quest = "SkyExp2Quest",
	QuestCFrame = CFrame.new(-7033.101, 5590.574, 1353.107),
	{ Requirement = 525, Mob = "Royal Squad [Lv. 525]", QuestCheck = "Royal Squad" },
	{ Requirement = 550, Mob = "Royal Soldier [Lv. 550]", QuestCheck = "Royal Soldier" },
	{
		Requirement = 575,
		Boss = "Thunder God [Lv. 575] [Boss]",
		QuestCheck = "Thunder God",
		Quest = "SkyExp2Quest",
		QuestCFrame = CFrame.new(-7033.101, 5590.574, 1353.107),
	},
}

tbl6[550] = {
	Quest = "SkyExp2Quest",
	QuestCFrame = CFrame.new(-7033.101, 5590.574, 1353.107),
	{ Requirement = 525, Mob = "Royal Squad [Lv. 525]", QuestCheck = "Royal Squad" },
	{ Requirement = 550, Mob = "Royal Soldier [Lv. 550]", QuestCheck = "Royal Soldier" },
	{
		Requirement = 575,
		Boss = "Thunder God [Lv. 575] [Boss]",
		QuestCheck = "Thunder God",
		Quest = "SkyExp2Quest",
		QuestCFrame = CFrame.new(-7033.101, 5590.574, 1353.107),
	},
}

tbl6[625] = {
	Quest = "FountainQuest",
	QuestCFrame = CFrame.new(5263.488, 74.908, 4087.616),
	{ Requirement = 625, Mob = "Galley Pirate [Lv. 625]", QuestCheck = "Galley Pirate" },
	{ Requirement = 650, Mob = "Galley Captain [Lv. 650]", QuestCheck = "Galley Captain" },
	{
		Requirement = 675,
		Boss = "Cyborg [Lv. 675] [Boss]",
		QuestCheck = "Cyborg",
		Quest = "FountainQuest",
		QuestCFrame = CFrame.new(5263.488, 74.908, 4087.616),
	},
}

tbl6[650] = {
	Quest = "FountainQuest",
	QuestCFrame = CFrame.new(5263.488, 74.908, 4087.616),
	{ Requirement = 625, Mob = "Galley Pirate [Lv. 625]", QuestCheck = "Galley Pirate" },
	{ Requirement = 650, Mob = "Galley Captain [Lv. 650]", QuestCheck = "Galley Captain" },
	{
		Requirement = 675,
		Boss = "Cyborg [Lv. 675] [Boss]",
		QuestCheck = "Cyborg",
		Quest = "FountainQuest",
		QuestCFrame = CFrame.new(5263.488, 74.908, 4087.616),
	},
}

tripleQuest["2753915549"] = tbl6

tripleQuest["4442272183"] = {
	[700] = {
		Quest = "Area1Quest",
		QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589),
		{ Requirement = 700, Mob = "Raider [Lv. 700]", QuestCheck = "Raider" },
		{ Requirement = 725, Mob = "Mercenary [Lv. 725]", QuestCheck = "Mercenary" },
		{
			Requirement = 750,
			Boss = "Diamond [Lv. 750] [Boss]",
			QuestCheck = "Diamond",
			Quest = "Area1Quest",
			QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589),
		},
	},
	[775] = {
		Quest = "Area2Quest",
		QuestCFrame = CFrame.new(934.597229, 73.3029785, 1250.96814),
		{ Requirement = 775, Mob = "Swan Pirate [Lv. 775]", QuestCheck = "Swan Pirate" },
		{ Requirement = 800, Mob = "Factory Staff [Lv. 800]", QuestCheck = "Factory Staff" },
		{
			Requirement = 850,
			Boss = "Jeremy [Lv. 850] [Boss]",
			QuestCheck = "Jeremy",
			Quest = "Area2Quest",
			QuestCFrame = CFrame.new(934.597229, 73.3029785, 1250.96814),
		},
	},
	[875] = {
		Quest = "MarineQuest3",
		QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523),
		{ Requirement = 875, Mob = "Marine Lieutenant [Lv. 875]", QuestCheck = "Marine Lieutenant" },
		{ Requirement = 900, Mob = "Marine Captain [Lv. 900]", QuestCheck = "Marine Captain" },
		{
			Requirement = 925,
			Boss = "Orbitus [Lv. 925] [Boss]",
			QuestCheck = "Orbitus",
			Quest = "MarineQuest3",
			QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523),
		},
	},
	[950] = {
		Quest = "ZombieQuest",
		QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571),
		{ Requirement = 950, Mob = "Zombie [Lv. 950]", QuestCheck = "Zombie" },
		{ Requirement = 975, Mob = "Vampire [Lv. 975]", QuestCheck = "Vampire" },
	},
	[1000] = {
		Quest = "SnowMountainQuest",
		QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287),
		{ Requirement = 1000, Mob = "Snow Trooper [Lv. 1000]", QuestCheck = "Snow Trooper" },
		{ Requirement = 1050, Mob = "Winter Warrior [Lv. 1050]", QuestCheck = "Winter Warrior" },
	},
	[1100] = {
		Quest = "IceSideQuest",
		QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876),
		{ Requirement = 1100, Mob = "Lab Subordinate [Lv. 1100]", QuestCheck = "Lab Subordinate" },
		{ Requirement = 1125, Mob = "Horned Warrior [Lv. 1125]", QuestCheck = "Horned Warrior" },
		{
			Requirement = 1150,
			Boss = "Smoke Admiral [Lv. 1150] [Boss]",
			QuestCheck = "Smoke Admiral",
			Quest = "IceSideQuest",
			QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876),
		},
	},
	[1175] = {
		Quest = "FireSideQuest",
		QuestCFrame = CFrame.new(-5431.09473, 15.9868021, -5296.53223),
		{ Requirement = 1175, Mob = "Magma Ninja [Lv. 1175]", QuestCheck = "Magma Ninja" },
		{ Requirement = 1200, Mob = "Lava Pirate [Lv. 1200]", QuestCheck = "Lava Pirate" },
		{
			Requirement = 1150,
			Boss = "Smoke Admiral [Lv. 1150] [Boss]",
			QuestCheck = "Smoke Admiral",
			Quest = "IceSideQuest",
			QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876),
		},
	},
	[1250] = {
		Quest = "ShipQuest1",
		QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016),
		{ Requirement = 1250, Mob = "Ship Deckhand [Lv. 1250]", QuestCheck = "Ship Deckhand" },
		{ Requirement = 1275, Mob = "Ship Engineer [Lv. 1275]", QuestCheck = "Ship Engineer" },
	},
	[1300] = {
		Quest = "ShipQuest2",
		QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125),
		{ Requirement = 1300, Mob = "Ship Steward [Lv. 1300]", QuestCheck = "Ship Steward" },
		{ Requirement = 1325, Mob = "Ship Officer [Lv. 1325]", QuestCheck = "Ship Officer" },
	},
	[1350] = {
		Quest = "FrostQuest",
		QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107),
		{ Requirement = 1350, Mob = "Arctic Warrior [Lv. 1350]", QuestCheck = "Arctic Warrior" },
		{ Requirement = 1375, Mob = "Snow Lurker [Lv. 1375]", QuestCheck = "Snow Lurker" },
		{
			Requirement = 1400,
			Boss = "Awakened Ice Admiral [Lv. 1400] [Boss]",
			QuestCheck = "Awakened Ice Admiral",
			Quest = "FrostQuest",
			QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107),
		},
	},
	[1425] = {
		Quest = "ForgottenQuest",
		QuestCFrame = CFrame.new(-3053.89648, 236.881363, -10148.2324),
		{ Requirement = 1425, Mob = "Sea Soldier [Lv. 1425]", QuestCheck = "Sea Soldier" },
		{ Requirement = 1450, Mob = "Water Fighter [Lv. 1450]", QuestCheck = "Water Fighter" },
		{
			Requirement = 1475,
			Boss = "Tide Keeper [Lv. 1475] [Boss]",
			QuestCheck = "Tide Keeper",
			Quest = "ForgottenQuest",
			QuestCFrame = CFrame.new(-3053.89648, 236.881363, -10148.2324),
		},
	},
}

tripleQuest["7449423635"] = {
	[1500] = {
		Quest = "PiratePortQuest",
		QuestCFrame = CFrame.new(-292.57437133789062, 43.793220520019531, 5583.04052734375),
		{
			Requirement = 1500,
			Mob = "Pirate Millionaire [Lv. 1500]",
			QuestCheck = "Pirate Millionaire",
		},
		{
			Requirement = 1525,
			Mob = "Pistol Billionaire [Lv. 1525]",
			QuestCheck = "Pistol Billionaire",
		},
		{
			Requirement = 1550,
			Boss = "Stone [Lv. 1550] [Boss]",
			QuestCheck = "Stone",
			Quest = "PiratePortQuest",
			QuestCFrame = CFrame.new(-292.57437133789062, 43.793220520019531, 5583.04052734375),
		},
	},
	[1575] = {
		Quest = "DragonCrewQuest",
		QuestCFrame = CFrame.new(5833.5776367188, 51.575191497803, -1102.7550048828),
		{
			Requirement = 1575,
			Mob = "Dragon Crew Warrior [Lv. 1575]",
			QuestCheck = "Dragon Crew Warrior",
		},
		{
			Requirement = 1600,
			Mob = "Dragon Crew Archer [Lv. 1600]",
			QuestCheck = "Dragon Crew Archer",
		},
	},
	[1625] = {
		Quest = "VenomCrewQuest",
		QuestCFrame = CFrame.new(5216.09521484375, 1004.1062622070312, 758.38958740234375),
		{ Requirement = 1625, Mob = "Hydra Enforcer [Lv. 1625]", QuestCheck = "Hydra Enforcer" },
		{
			Requirement = 1650,
			Mob = "Venomous Assailant [Lv. 1650]",
			QuestCheck = "Venomous Assailant",
		},
		{
			Requirement = 1675,
			Boss = "Island Empress [Lv. 1675] [Boss]",
			QuestCheck = "Island Empress",
			Quest = "VenomCrewQuest",
			QuestCFrame = CFrame.new(5216.09521484375, 1004.1062622070312, 758.38958740234375),
		},
	},
	[1700] = {
		Quest = "MarineTreeIsland",
		QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688),
		{ Requirement = 1700, Mob = "Marine Commodore [Lv. 1700]", QuestCheck = "Marine Commodore" },
		{
			Requirement = 1725,
			Mob = "Marine Rear Admiral [Lv. 1725]",
			QuestCheck = "Marine Rear Admiral",
		},
		{
			Requirement = 1750,
			Boss = "Kilo Admiral [Lv. 1750] [Boss]",
			QuestCheck = "Kilo Admiral",
			Quest = "MarineTreeIsland",
			QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688),
		},
	},
	[1775] = {
		Quest = "DeepForestIsland3",
		QuestCFrame = CFrame.new(-10580.998046875, 331.75863647461, -8758.193359375),
		{ Requirement = 1775, Mob = "Fishman Raider [Lv. 1775]", QuestCheck = "Fishman Raider" },
		{ Requirement = 1800, Mob = "Fishman Captain [Lv. 1800]", QuestCheck = "Fishman Captain" },
	},
	[1825] = {
		Quest = "DeepForestIsland",
		QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563),
		{ Requirement = 1825, Mob = "Forest Pirate [Lv. 1825]", QuestCheck = "Forest Pirate" },
		{
			Requirement = 1850,
			Mob = "Mythological Pirate [Lv. 1850]",
			QuestCheck = "Mythological Pirate",
		},
		{
			Requirement = 1875,
			Boss = "Captain Elephant [Lv. 1875] [Boss]",
			QuestCheck = "Captain Elephant",
			Quest = "DeepForestIsland",
			QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563),
		},
	},
	[1900] = {
		Quest = "DeepForestIsland2",
		QuestCFrame = CFrame.new(-12683.189453125, 390.85668945313, -9902.15625),
		{ Requirement = 1900, Mob = "Jungle Pirate [Lv. 1900]", QuestCheck = "Jungle Pirate" },
		{ Requirement = 1925, Mob = "Musketeer Pirate [Lv. 1925]", QuestCheck = "Musketeer Pirate" },
		{
			Requirement = 1950,
			Boss = "Beautiful Pirate [Lv. 1950] [Boss]",
			QuestCheck = "Beautiful Pirate",
			Quest = "DeepForestIsland2",
			QuestCFrame = CFrame.new(-12683.189453125, 390.85668945313, -9902.15625),
		},
	},
	[1975] = {
		Quest = "HauntedQuest1",
		QuestCFrame = CFrame.new(-9490.2793, 142.104858, 5565.8501),
		{ Requirement = 1975, Mob = "Reborn Skeleton [Lv. 1975]", QuestCheck = "Reborn Skeleton" },
		{ Requirement = 2000, Mob = "Living Zombie [Lv. 2000]", QuestCheck = "Living Zombie" },
	},
	[2025] = {
		Quest = "HauntedQuest2",
		QuestCFrame = CFrame.new(-9506.95313, 172.104858, 6074.63086),
		{ Requirement = 2025, Mob = "Demonic Soul [Lv. 2025]", QuestCheck = "Demonic Soul" },
		{ Requirement = 2050, Mob = "Posessed Mummy [Lv. 2050]", QuestCheck = "Posessed Mummy" },
	},
	[2075] = {
		Quest = "NutsIslandQuest",
		QuestCFrame = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875),
		{ Requirement = 2075, Mob = "Peanut Scout [Lv. 2075]", QuestCheck = "Peanut Scout" },
		{ Requirement = 2100, Mob = "Peanut President [Lv. 2100]", QuestCheck = "Peanut President" },
	},
	[2125] = {
		Quest = "IceCreamIslandQuest",
		QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438),
		{ Requirement = 2125, Mob = "Ice Cream Chef [Lv. 2125]", QuestCheck = "Ice Cream Chef" },
		{
			Requirement = 2150,
			Mob = "Ice Cream Commander [Lv. 2150]",
			QuestCheck = "Ice Cream Commander",
		},
		{
			Requirement = 2175,
			Boss = "Cake Queen [Lv. 2175] [Boss]",
			QuestCheck = "Cake Queen",
			Quest = "IceCreamIslandQuest",
			QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
		},
	},
	[2200] = {
		Quest = "CakeQuest1",
		QuestCFrame = CFrame.new(-2021.32007, 37.7982254, -12028.7295),
		{ Requirement = 2200, Mob = "Cookie Crafter [Lv. 2200]", QuestCheck = "Cookie Crafter" },
		{ Requirement = 2225, Mob = "Cake Guard [Lv. 2225]", QuestCheck = "Cake Guard" },
		{
			Requirement = 2175,
			Boss = "Cake Queen [Lv. 2175] [Boss]",
			QuestCheck = "Cake Queen",
			Quest = "IceCreamIslandQuest",
			QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
		},
	},
	[2250] = {
		Quest = "CakeQuest2",
		QuestCFrame = CFrame.new(-1927.91602, 37.7981339, -12842.5391),
		{ Requirement = 2250, Mob = "Baking Staff [Lv. 2250]", QuestCheck = "Baking Staff" },
		{ Requirement = 2275, Mob = "Head Baker [Lv. 2275]", QuestCheck = "Head Baker" },
		{
			Requirement = 2175,
			Boss = "Cake Queen [Lv. 2175] [Boss]",
			QuestCheck = "Cake Queen",
			Quest = "IceCreamIslandQuest",
			QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
		},
	},
	[2300] = {
		Quest = "ChocQuest1",
		QuestCFrame = CFrame.new(231.23222351074219, 24.734273910522461, -12195.1396484375),
		{ Requirement = 2300, Mob = "Cocoa Warrior [Lv. 2300]", QuestCheck = "Cocoa Warrior" },
		{
			Requirement = 2325,
			Mob = "Chocolate Bar Battler [Lv. 2325]",
			QuestCheck = "Chocolate Bar Battler",
		},
		{
			Requirement = 2175,
			Boss = "Cake Queen [Lv. 2175] [Boss]",
			QuestCheck = "Cake Queen",
			Quest = "IceCreamIslandQuest",
			QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
		},
	},
	[2350] = {
		Quest = "ChocQuest2",
		QuestCFrame = CFrame.new(148.080322265625, 24.793830871582031, -12775.1650390625),
		{ Requirement = 2350, Mob = "Sweet Thief [Lv. 2350]", QuestCheck = "Sweet Thief" },
		{ Requirement = 2375, Mob = "Candy Rebel [Lv. 2375]", QuestCheck = "Candy Rebel" },
		{
			Requirement = 2175,
			Boss = "Cake Queen [Lv. 2175] [Boss]",
			QuestCheck = "Cake Queen",
			Quest = "IceCreamIslandQuest",
			QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
		},
	},
	[2400] = {
		Quest = "CandyQuest1",
		QuestCFrame = CFrame.new(-1147.919677734375, 16.107261657714844, -14444.125),
		{ Requirement = 2400, Mob = "Candy Pirate [Lv. 2400]", QuestCheck = "Candy Pirate" },
		{ Requirement = 2425, Mob = "Snow Demon [Lv. 2425]", QuestCheck = "Snow Demon" },
	},
	[2450] = {
		Quest = "TikiQuest1",
		QuestCFrame = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, 0, -0.977032006, 0, 1, 0, 0.977032006, 0, 0.213092566),
		{ Requirement = 2450, Mob = "Isle Outlaw [Lv. 2450]", QuestCheck = "Isle Outlaw" },
		{ Requirement = 2475, Mob = "Island Boy [Lv. 2475]", QuestCheck = "Island Boy" },
	},
	[2500] = {
		Quest = "TikiQuest2",
		QuestCFrame = CFrame.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065, 0, -0.999156058, 0, 1, 0, 0.999156058, 0, 0.0410757065),
		{
			Requirement = 2500,
			Mob = "Sun-kissed Warrior [Lv. 2500]",
			QuestCheck = "Sun-kissed Warrior",
		},
		{ Requirement = 2525, Mob = "Isle Champion [Lv. 2525]", QuestCheck = "Isle Champion" },
	},
	[2550] = {
		Quest = "TikiQuest3",
		QuestCFrame = CFrame.new(-16665.1914, 104.596008, 1579.69397, -0.0822139978, 0, 0.996614754, 0, 1, 0, -0.996614754, 0, -0.0822139978),
		{ Requirement = 2550, Mob = "Serpent Hunter [Lv. 2550]", QuestCheck = "Serpent Hunter" },
		{ Requirement = 2575, Mob = "Skull Slayer [Lv. 2575]", QuestCheck = "Skull Slayer" },
	},
	[2600] = {
		Quest = "SubmergedQuest1",
		QuestCFrame = CFrame.new(10778.6904296875, -2087.720458984375, 9261.7314453125),
		{ Requirement = 2600, Mob = "Reef Bandit [Lv. 2600]", QuestCheck = "Reef Bandit" },
		{ Requirement = 2625, Mob = "Coral Pirate [Lv. 2625]", QuestCheck = "Coral Pirate" },
	},
	[2650] = {
		Quest = "SubmergedQuest2",
		QuestCFrame = CFrame.new(10884.7021484375, -2086.197021484375, 10031.9970703125),
		{ Requirement = 2650, Mob = "Sea Chanter [Lv. 2650]", QuestCheck = "Sea Chanter" },
		{ Requirement = 2675, Mob = "Ocean Prophet [Lv. 2675]", QuestCheck = "Ocean Prophet" },
	},
	[2675] = {
		Quest = "SubmergedQuest3",
		QuestCFrame = CFrame.new(9639.4833984375, -1992.4415283203125, 9617.130859375),
		{ Requirement = 2675, Mob = "High Disciple [Lv. 2675]", QuestCheck = "High Disciple" },
		{ Requirement = 2700, Mob = "Grand Devotee [Lv. 2700]", QuestCheck = "Grand Devotee" },
	},
}

tbl5.TripleQuest = tripleQuest

tbl5.MapPos = {
	["2753915549"] = {
		[0] = { NameIS = "Default", Pos = CFrame.new(977.038269, 16.5166149, 1420.94336) },
		[10] = { NameIS = "Jungle", Pos = CFrame.new(-1332.1394, 11.8529119, 492.35907) },
		[30] = { NameIS = "Pirate", Pos = CFrame.new(-1186.37769, 4.75154591, 3810.49243) },
		[60] = { NameIS = "Desert", Pos = CFrame.new(917.85199, 3.37914562, 4114.66895) },
		[90] = { NameIS = "Ice", Pos = CFrame.new(1107.42444, 7.3035593, -1164.79614) },
		[120] = { NameIS = "MarineBase", Pos = CFrame.new(-4922.20264, 41.2520523, 4424.44434) },
		[150] = { NameIS = "Sky", Pos = CFrame.new(-4916.79346, 717.671265, -2637.03589) },
		[190] = {
			NameIS = "Prison",
			Pos = CFrame.new(4853.1650390625, 5.6526179313659668, 746.67352294921875),
		},
		[250] = { NameIS = "Colosseum", Pos = CFrame.new(-1393.48926, 7.28934002, -2842.57324) },
		[300] = { NameIS = "Magma", Pos = CFrame.new(-5226.26416, 8.59022045, 8472.14844) },
		[375] = { NameIS = "Sky", Pos = CFrame.new(-4916.79346, 717.671265, -2637.03589) },
		[450] = { NameIS = "Sky2", Pos = CFrame.new(-7873.7959, 5545.49316, -335.85321) },
		[625] = { NameIS = "Fountain", Pos = CFrame.new(5187.77197, 38.5011406, 4141.60791) },
	},
	["4442272183"] = {
		[700] = { NameIS = "Default", Pos = CFrame.new(-32.1582031, 29.2783928, 2766.5874) },
		[775] = { NameIS = "DressTown", Pos = CFrame.new(-389.968658, 72.9961472, 1148.09241) },
		[875] = { NameIS = "Greenb", Pos = CFrame.new(-2220.05884, 72.967804, -2709.98462) },
		[950] = { NameIS = "Graveyard", Pos = CFrame.new(-5386.68799, 8.97076797, -713.903381) },
		[1000] = { NameIS = "Snowy", Pos = CFrame.new(394.089142, 401.423676, -5313.98486) },
		[1100] = { NameIS = "CircleIslandIce", Pos = CFrame.new(-5852.72803, 18.316433, -5030.0752) },
		[1250] = { NameIS = "Ship", Pos = CFrame.new(864.63134765625, 125.05711364746094, 32858.4609375) },
		[1350] = { NameIS = "IceCastle", Pos = CFrame.new(5573.96826, 28.1925011, -6111.41455) },
		[1425] = { NameIS = "ForgottenIsland", Pos = CFrame.new(-3066.82715, 236.847992, -10159.6846) },
	},
	["7449423635"] = {
		[1500] = {
			NameIS = "Default",
			Pos = CFrame.new(-346.92642211914062, 29.412704467773438, 5377.86376953125),
		},
		[1575] = { NameIS = "Hydra3", Pos = CFrame.new(4727.12988, 51.453064, -1401.72839) },
		[1625] = { NameIS = "Hydra1", Pos = CFrame.new(5264.06396, 602.526245, 353.749878) },
		[1700] = { NameIS = "GreatTree", Pos = CFrame.new(2260.66162, 25.852705, -6416.6084) },
		[1775] = { NameIS = "BigMansion", Pos = CFrame.new(-12550.4844, 337.168365, -7425.26855) },
		[1900] = { NameIS = "PineappleTown", Pos = CFrame.new(-11374.4658, 331.723297, -10390.6523) },
		[1975] = { NameIS = "HauntedCastle", Pos = CFrame.new(-9540.20898, 142.104858, 5537.26318) },
		[2075] = { NameIS = "Peanut", Pos = CFrame.new(-2074.8999023438, 38.104068756104, -10210.8320312) },
		[2150] = {
			NameIS = "IceCream",
			Pos = CFrame.new(-910.46862792969, 58.945728302002, -10889.098632812),
		},
		[2225] = {
			NameIS = "Loaf",
			Pos = CFrame.new(-1895.603271484375, 37.798137664794922, -11885.45703125),
		},
		[2300] = {
			NameIS = "Chocolate",
			Pos = CFrame.new(501.06365966796875, 24.734277725219727, -12431.494140625),
		},
		[2400] = {
			NameIS = "CandyCane",
			Pos = CFrame.new(-1060.913818359375, 16.107261657714844, -14178.02734375),
		},
		[2450] = { NameIS = "Tiki", Pos = CFrame.new(-16256.5566, 9.06057358, 430.995422) },
		[2600] = { NameIS = "Submerged", Pos = CFrame.new(10884, -2086, 10031) },
	},
}

tbl5.SpawnPosition = {}

tbl5.Items = {
	Abilities = {
		{ Name = "Geppo", Args = { "BuyHaki", "Geppo" }, Price = { Beli = 10000 } },
		{ Name = "Buso", Args = { "BuyHaki", "Buso" }, Price = { Beli = 25000 } },
		{ Name = "Soru", Args = { "BuyHaki", "Soru" }, Price = { Beli = 100000 } },
		{ Name = "Ken", Args = { "KenTalk", "Buy" }, Price = { Beli = 150000 } },
	},
	["Fighting Styles"] = {
		{ Name = "Dark Step", Args = { "BuyBlackLeg" }, Price = { Beli = 150000 } },
		{ Name = "Eletro", Args = { "BuyElectro" }, Price = { Beli = 500000 } },
		{ Name = "Water Kung Fu", Args = { "BuyFishmanKarate" }, Price = { Beli = 750000 } },
		{
			Name = "Dragon Breath",
			Args = { "BlackbeardReward", "DragonClaw", "2" },
			Price = { Fragment = 1500 },
		},
		{ Name = "Superhuman", Args = { "BuySuperhuman" }, Price = { Beli = 3000000 } },
		{
			Name = "Death Step",
			Args = { "BuyDeathStep" },
			Price = { Beli = 2500000, Fragment = 5000 },
		},
		{
			Name = "Sharkman Karate",
			Args = { "BuySharkmanKarate" },
			Price = { Beli = 2500000, Fragment = 5000 },
		},
		{
			Name = "Eletric Claw",
			Args = { "BuyElectricClaw" },
			Price = { Beli = 3000000, Fragment = 5000 },
		},
		{
			Name = "Dragon Talon",
			Args = { "BuyDragonTalon" },
			Price = { Beli = 3000000, Fragment = 5000 },
		},
		{
			Name = "God Human",
			Args = { "BuyGodhuman" },
			Price = { Beli = 5000000, Fragment = 5000 },
		},
		{
			Name = "Saguine Art",
			Args = { "BuySanguineArt" },
			Price = { Beli = 500000, Fragment = 5000 },
		},
	},
	Sword = {
		{ Name = "Katana", Args = { "BuyItem", "Katana" }, Price = { Beli = 1000 } },
		{ Name = "Cutlass", Args = { "BuyItem", "Cutlass" }, Price = { Beli = 1000 } },
		{ Name = "Dual Katana", Args = { "BuyItem", "Dual Katana" }, Price = { Beli = 12000 } },
		{ Name = "Iron Mace", Args = { "BuyItem", "Iron Mace" }, Price = { Beli = 25000 } },
		{ Name = "Triple Katana", Args = { "BuyItem", "Triple Katana" }, Price = { Beli = 60000 } },
		{ Name = "Pipe", Args = { "BuyItem", "Pipe" }, Price = { Beli = 100000 } },
		{
			Name = "Dual-Headed Blade",
			Args = { "BuyItem", "Dual-Headed Blade" },
			Price = { Beli = 400000 },
		},
		{ Name = "Bisento", Args = { "BuyItem", "Bisento" }, Price = { Beli = 1000000 } },
		{ Name = "Soul Cane", Args = { "BuyItem", "Soul Cane" }, Price = { Beli = 750000 } },
		{ Name = "Midnight Blade", Args = { "Ectoplasm", "Buy", 3 }, Price = { Ectoplasm = 100 } },
		{ Name = "True Triple Katana", Args = { "MysteriousMan", 2 }, Price = {} },
	},
	Gun = {
		{ Name = "Slingshot", Args = { "BuyItem", "Slingshot" }, Price = { Beli = 5000 } },
		{ Name = "Musket", Args = { "BuyItem", "Musket" }, Price = { Beli = 8000 } },
		{ Name = "Flintlock", Args = { "BuyItem", "Flintlock" }, Price = { Beli = 10500 } },
		{
			Name = "Refined Slingshot",
			Args = { "BuyItem", "Refined Slingshot" },
			Price = { Beli = 65000 },
		},
		{ Name = "Cannon", Args = { "BuyItem", "Cannon" }, Price = { Beli = 100000 } },
		{
			Name = "Kabucha",
			Args = { "BlackbeardReward", "Slingshot", "2" },
			Price = { Fragment = 1500 },
		},
		{ Name = "Bizarre Rifle", Args = { "Ectoplasm", "Buy", 1 }, Price = { Ectoplasm = 25 } },
	},
	Accessories = {
		{ Name = "Black Cape", Args = { "BuyItem", "Black Cape" }, Price = { Beli = 50000 } },
		{ Name = "Swordsman Hat", Args = { "BuyItem", "Swordsman Hat" }, Price = { Beli = 150000 } },
		{ Name = "Tomoe Ring", Args = { "BuyItem", "Tomoe Ring" }, Price = { Beli = 500000 } },
		{ Name = "Ghoul Mask", Args = { "Ectoplasm", "Buy", 2 }, Price = { Ectoplasm = 50 } },
	},
}

tbl5.Items = {
	{
		Abilities = {
			{ Name = "Geppo", Args = { "BuyHaki", "Geppo" }, Price = { Beli = 10000 } },
			{ Name = "Buso", Args = { "BuyHaki", "Buso" }, Price = { Beli = 25000 } },
			{ Name = "Soru", Args = { "BuyHaki", "Soru" }, Price = { Beli = 100000 } },
			{ Name = "Ken", Args = { "KenTalk", "Buy" }, Price = { Beli = 150000 } },
		},
	},
	{
		["Fighting Styles"] = {
			{ Name = "Dark Step", Args = { "BuyBlackLeg" }, Price = { Beli = 150000 } },
			{ Name = "Eletro", Args = { "BuyElectro" }, Price = { Beli = 500000 } },
			{ Name = "Water Kung Fu", Args = { "BuyFishmanKarate" }, Price = { Beli = 750000 } },
			{
				Name = "Dragon Breath",
				Args = { "BlackbeardReward", "DragonClaw", "2" },
				Price = { Fragment = 1500 },
			},
			{ Name = "Superhuman", Args = { "BuySuperhuman" }, Price = { Beli = 3000000 } },
			{
				Name = "Death Step",
				Args = { "BuyDeathStep" },
				Price = { Beli = 2500000, Fragment = 5000 },
			},
			{
				Name = "Sharkman Karate",
				Args = { "BuySharkmanKarate" },
				Price = { Beli = 2500000, Fragment = 5000 },
			},
			{
				Name = "Eletric Claw",
				Args = { "BuyElectricClaw" },
				Price = { Beli = 3000000, Fragment = 5000 },
			},
			{
				Name = "Dragon Talon",
				Args = { "BuyDragonTalon" },
				Price = { Beli = 3000000, Fragment = 5000 },
			},
			{
				Name = "God Human",
				Args = { "BuyGodhuman" },
				Price = { Beli = 5000000, Fragment = 5000 },
			},
			{
				Name = "Saguine Art",
				Args = { "BuySanguineArt" },
				Price = { Beli = 500000, Fragment = 5000 },
			},
		},
	},
	{
		Sword = {
			{ Name = "Katana", Args = { "BuyItem", "Katana" }, Price = { Beli = 1000 } },
			{ Name = "Cutlass", Args = { "BuyItem", "Cutlass" }, Price = { Beli = 1000 } },
			{ Name = "Dual Katana", Args = { "BuyItem", "Dual Katana" }, Price = { Beli = 12000 } },
			{ Name = "Iron Mace", Args = { "BuyItem", "Iron Mace" }, Price = { Beli = 25000 } },
			{
				Name = "Triple Katana",
				Args = { "BuyItem", "Triple Katana" },
				Price = { Beli = 60000 },
			},
			{ Name = "Pipe", Args = { "BuyItem", "Pipe" }, Price = { Beli = 100000 } },
			{
				Name = "Dual-Headed Blade",
				Args = { "BuyItem", "Dual-Headed Blade" },
				Price = { Beli = 400000 },
			},
			{ Name = "Bisento", Args = { "BuyItem", "Bisento" }, Price = { Beli = 1000000 } },
			{ Name = "Soul Cane", Args = { "BuyItem", "Soul Cane" }, Price = { Beli = 750000 } },
			{
				Name = "Midnight Blade",
				Args = { "Ectoplasm", "Buy", 3 },
				Price = { Ectoplasm = 100 },
			},
			{ Name = "True Triple Katana", Args = { "MysteriousMan", 2 }, Price = {} },
		},
	},
	{
		Gun = {
			{ Name = "Slingshot", Args = { "BuyItem", "Slingshot" }, Price = { Beli = 5000 } },
			{ Name = "Musket", Args = { "BuyItem", "Musket" }, Price = { Beli = 8000 } },
			{ Name = "Flintlock", Args = { "BuyItem", "Flintlock" }, Price = { Beli = 10500 } },
			{
				Name = "Refined Slingshot",
				Args = { "BuyItem", "Refined Slingshot" },
				Price = { Beli = 65000 },
			},
			{ Name = "Cannon", Args = { "BuyItem", "Cannon" }, Price = { Beli = 100000 } },
			{
				Name = "Kabucha",
				Args = { "BlackbeardReward", "Slingshot", "2" },
				Price = { Fragment = 1500 },
			},
			{ Name = "Bizarre Rifle", Args = { "Ectoplasm", "Buy", 1 }, Price = { Ectoplasm = 25 } },
		},
	},
	{
		Accessories = {
			{ Name = "Black Cape", Args = { "BuyItem", "Black Cape" }, Price = { Beli = 50000 } },
			{
				Name = "Swordsman Hat",
				Args = { "BuyItem", "Swordsman Hat" },
				Price = { Beli = 150000 },
			},
			{ Name = "Tomoe Ring", Args = { "BuyItem", "Tomoe Ring" }, Price = { Beli = 500000 } },
			{ Name = "Ghoul Mask", Args = { "Ectoplasm", "Buy", 2 }, Price = { Ectoplasm = 50 } },
		},
	},
}

tbl5.Material = {}
local materialFarm = {}
local cframe = CFrame.new

local checkMob = {
	["Magma Ore"] = {
		IsMob = function(arg)
			if Sea1 then
				if string.match(arg.Name, "Military Soldier") or string.match(arg.Name, "Military Spy") then
					return true
				end
			elseif Sea2 then
				if string.match(arg.Name, "Magma Ninja") or string.match(arg.Name, "Lava Pirate") then
					return true
				end
			end

			return false
		end,
		Pos = {
			CFrame.new(-5458.927734375, 22.050642013549805, -5419.67724609375),
			cframe(-5377.33251953125, 18.274900436401367, -5125.76416015625),
		},
	},
	Ectoplasm = {
		IsMob = function(arg)
			if string.match(arg.Name, "Ship Deckhand") or string.match(arg.Name, "Ship Engineer") or string.match(arg.Name, "Ship Steward") or string.match(arg.Name, "Ship Officer") then
				return true
			end
			return false
		end,
		Pos = CFrame.new(923.2125244140625, 126.97600555419922, 32852.83203125),
	},
	["Demonic Wisp"] = {
		IsMob = function(arg)
			if (string.match(arg.Name, "Reborn Skeleton") or string.match(arg.Name, "Living Zombie") or string.match(arg.Name, "Demonic Soul") or string.match(arg.Name, "Posessed Mummy")) and arg:FindFirstChild("HumanoidRootPart") and (arg:FindFirstChild("HumanoidRootPart").Position - Vector3.new(-8736.577, 143.10483, 6034.9375)).magnitude < 3500 then
				return true
			end
			return false
		end,
		Pos = CFrame.new(-9501.3447265625, 172.13984680175781, 6036.0341796875),
	},
	Bones = {
		IsMob = function(arg)
			if (string.match(arg.Name, "Reborn Skeleton") or string.match(arg.Name, "Living Zombie") or string.match(arg.Name, "Demonic Soul") or string.match(arg.Name, "Posessed Mummy")) and arg:FindFirstChild("HumanoidRootPart") and (arg:FindFirstChild("HumanoidRootPart").Position - Vector3.new(-8736.577, 143.10483, 6034.9375)).magnitude < 3500 then
				return true
			end
			return false
		end,
		Pos = CFrame.new(-9501.3447265625, 172.13984680175781, 6036.0341796875),
	},
}

local tbl7 = { IsMob = function(arg)
	if string.match(arg.Name, "Dragon Crew Archer") or string.match(arg.Name, "Dragon Crew Warrior") then
		return true
	end
	return false
end }

local pos = {}
local cframe2 = CFrame.new(6562.64111328125, 148.20350646972656, -712.18548583984375)
local cframe3 = CFrame.new(6525.68896484375, 378.20541381835938, 16.124660491943359)
local cframe4 = CFrame.new
pos[1] = cframe2
pos[2] = cframe3

do
	local values = table.pack(cframe4(4143.9814453125, 51.481880187988281, -1238.462890625))
	table.move(values, 1, values.n, 3, pos)
end

tbl7.Pos = pos
checkMob["Dragon Scale"] = tbl7
local cframe5 = CFrame.new

checkMob["Angel Wings"] = {
	IsMob = function(arg)
		if string.match(arg.Name, "Shanda") or string.match(arg.Name, "Royal Squad") or string.match(arg.Name, "Royal Soldier") then
			return true
		end
		return false
	end,
	Pos = {
		CFrame.new(-7640.81103515625, 5545.49169921875, -535.966064453125),
		cframe5(-7760.857421875, 5634.2216796875, -1555.6251220703125),
	},
}

checkMob["Mystic Droplet"] = {
	IsMob = function(arg)
		if string.match(arg.Name, "Sea Soldier") or string.match(arg.Name, "Water Fighter") then
			return true
		end
		return false
	end,
	Pos = CFrame.new(-3246.47509765625, 298.66448974609375, -10551.6650390625),
}

checkMob["Fish Tail"] = {
	IsMob = function(arg)
		if Sea3 then
			if string.match(arg.Name, "Fishman Raider") or string.match(arg.Name, "Fishman Captain") then
				return true
			end
		end

		return false
	end,
	Pos = CFrame.new(-10918.5673828125, 331.76263427734375, -8698.3408203125),
}

local cframe6 = CFrame.new

checkMob["Radioactive Material"] = {
	IsMob = function(arg)
		if Sea2 then
			if string.match(arg.Name, "Factory Staff") then
				return true
			end
		end

		return false
	end,
	Pos = {
		CFrame.new(-16.391239166259766, 148.9493408203125, -182.66398620605469),
		cframe6(542.0455322265625, 72.959762573242188, 22.46308708190918),
	},
}

checkMob["Vampire Fang"] = {
	IsMob = function(arg)
		if Sea2 then
			if string.match(arg.Name, "Vampire") then
				return true
			end
		end

		return false
	end,
	Pos = CFrame.new(-6022.30810546875, 6.4027113914489746, -1302.591552734375),
}

checkMob["Conjured Cocoa"] = {
	IsMob = function(arg)
		if Sea3 then
			if string.match(arg.Name, "Sweet Thief") or string.match(arg.Name, "Candy Rebel") or string.match(arg.Name, "Chocolate Bar Battler") or string.match(arg.Name, "Cocoa Warrior") then
				return true
			end
		end

		return false
	end,
	Pos = CFrame.new(233.32058715820312, 74.747642517089844, -12498.2861328125),
}

checkMob["Mini Tusk"] = {
	IsMob = function(arg)
		if Sea3 then
			if string.match(arg.Name, "Forest Pirate") or string.match(arg.Name, "Mythological Pirate") then
				return true
			end
		end

		return false
	end,
	Pos = CFrame.new(-13527.8076171875, 523.63446044921875, -7424.10693359375),
}

local tbl8 = { IsMob = function(arg)
	if Sea3 then
		if string.match(arg.Name, "Pirate Millionaire") or string.match(arg.Name, "Pistol Billionaire") then
			return true
		end
	end

	return false
end }

local pos2 = {}
local cframe7 = CFrame.new(-315.9371337890625, 73.870437622070312, 5939.98193359375)
local cframe8 = CFrame.new(-289.22113037109375, 43.854217529296875, 5574.4697265625)
local cframe9 = CFrame.new(-636.85888671875, 57.015052795410156, 5626.41748046875)
local cframe10 = CFrame.new
pos2[1] = cframe7
pos2[2] = cframe8
pos2[3] = cframe9

do
	local values = table.pack(cframe10(-807.3641357421875, 84.812889099121094, 5991.45166015625))
	table.move(values, 1, values.n, 4, pos2)
end

tbl8.Pos = pos2
checkMob["Scrap Metal"] = tbl8
local cframe11 = CFrame.new

checkMob.Leather = {
	IsMob = function(arg)
		if Sea3 then
			if string.match(arg.Name, "Pirate Millionaire") or string.match(arg.Name, "Pistol Billionaire") then
				return true
			end
		end

		return false
	end,
	Pos = {
		CFrame.new(-315.9371337890625, 73.870437622070312, 5939.98193359375),
		cframe11(-289.22113037109375, 43.854217529296875, 5574.4697265625),
	},
}

materialFarm.CheckMob = checkMob

materialFarm.CheckBoss = {
	"Meteorite",
	Meteorite = { IsBoss = function()
		if Sea2 then
			if game.Workspace.Enemies:FindFirstChild("Orbitus") or game.Workspace.Enemies:FindFirstChild("Fajita") then
				return game.Workspace.Enemies:FindFirstChild("Orbitus") or game.Workspace.Enemies:FindFirstChild("Fajita")
			end
		end

		return false
	end },
}

tbl5.MaterialFarm = materialFarm

tbl5.MaterialName = {
	"Mystic Droplet",
	"Magma Ore",
	"Fish Tail",
	"Vampire Fang",
	"Dragon Scale",
	"Radioactive Material",
	"Conjured Cocoa",
	"Ectoplasm",
	"Mini Tusk",
	"Demonic Wisp",
	"Meteorite",
	"Angel Wings",
	"Scrap Metal",
	"Leather",
}

tbl5.MaterialSeaChecker = {
	Leather = "7449423635",
	["Scrap Metal"] = "7449423635",
	["Mystic Droplet"] = "4442272183",
	["Magma Ore"] = "4442272183",
	Ectoplasm = "4442272183",
	Bones = "7449423635",
	["Demonic Wisp"] = "7449423635",
	["Fish Tail"] = "7449423635",
	["Dragon Scale"] = "7449423635",
	["Radioactive Material"] = "4442272183",
	["Mini Tusk"] = "7449423635",
	["Vampire Fang"] = "4442272183",
	Meteorite = "4442272183",
	["Conjured Cocoa"] = "7449423635",
	["Angel Wings"] = "2753915549",
}

local lib = nil
local lib2 = nil
local n3 = 0

task.spawn(function()
	lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/backup/refs/heads/main/Fluent_fixed.lua"))()
	getgenv().Fluent = lib
	n3 += 1
end)

local function fn6()
	while true do
		wait()
		if not (getgenv().LoadUi and getgenv().IslandCaller and getgenv().SettingManager and getgenv().Fluent) then
			continue
		end
		break
	end

	local fluent = getgenv().Fluent
	local options = fluent.Options
	local islandCaller = IslandCaller or getgenv().IslandCaller
	local settingManager = getgenv().SettingManager

	if not getgenv().Window then
		local createWindow = fluent.CreateWindow

		getgenv().Window = createWindow(fluent, {
			Title = "One Click",
			SubTitle = "@_teddyhub [discord.gg/YYeRQnhQH5]",
			TabWidth = 160,
			Size = UDim2.fromOffset(480, 360),
			Acrylic = false,
			Theme = "Dark",
			MinimizeKey = Enum.KeyCode.LeftControl,
		})
	end

	local window = getgenv().Window
	local tbl9 = { "Status", "Setting", "Game-Server", "One Click", "One Click Debugger" }
	local tbl10 = {}
	ElementsCollection = {}

	for _, v5 in pairs(tbl9) do
		ElementsCollection[v5] = {}
	end

	local tbl11 = {
		Status = {
			{ Mode = "Label", Title = "Client Time" },
			{ Mode = "Label", Title = "Farming Status" },
			{ Mode = "Label", Title = "Weapon Status [One Click]" },
			{ Mode = "Label", Title = "Dimension Kill" },
			{ Mode = "Label", Title = "Server Haki Color" },
			{ Mode = "Label", Title = "Elite Status" },
			{ Mode = "Label", Title = "Mirage Status" },
			{ Mode = "Label", Title = "FullMoon Status" },
			{ Mode = "Label", Title = "Eyes" },
		},
	}

	local setting2 = {}
	local tbl12 = { Mode = "Label", Title = "Tween Section" }

	local function fn7()
		local tbl13 = { 150, 180, 195, 220, 250, 275, 300, 325, 350 }

		if not table.find(tbl13, getgenv().Setting.Tween.Speed) or getgenv().Setting.Tween.Speed == 195 or getgenv().Setting.Tween.Speed == 250 or getgenv().Setting.Tween.Speed == 300 then
			getgenv().Setting.Tween.Speed = 150
		end

		return table.find(tbl13, getgenv().Setting.Tween.Speed) or 1
	end

	local tbl13 = {
		Mode = "Dropdown",
		Title = "Tween Speed",
		Args = { "Tween", "Speed" },
		Table = { 150, 180, 195, 220, 250, 275, 300, 325, 350 },
		Default = fn7(),
		OnChange = function(arg)
			getgenv().Setting.Tween.Speed = tonumber(arg)
			settingManager:Save()
		end,
	}

	local tbl14 = {
		Mode = "Toggle",
		Title = "Tween Pause",
		Description = "Prevent Security Kick",
		Args = { "Tween", "Pause" },
		OnChange = function(pause)
			getgenv().Setting.Tween.Pause = pause
			settingManager:Save()
		end,
	}

	local tbl15 = { Mode = "Label", Title = "Bring Mob Section" }

	local tbl16 = {
		Mode = "Toggle",
		Title = "Bring Mob",
		Description = "Not Recommended May Error But Works If in PS",
		Args = { "BringMob", "Enable" },
		OnChange = function(enable)
			getgenv().Setting.BringMob.Enable = enable
			settingManager:Save()
		end,
	}

	local tbl17 = {
		Mode = "Slider",
		Title = "Bring Mob Radius",
		Args = { "BringMob", "Radius" },
		Default = getgenv().Setting.BringMob.Radius or 200,
		Min = 200,
		Max = 500,
		OnChange = function(radius)
			getgenv().Setting.BringMob.Radius = radius
			settingManager:Save()
		end,
	}

	local function fn8()
		local tbl18 = {}

		for _, v5 in pairs({ "X", "Y", "Z" }) do
			table.insert(tbl18, {
				Mode = "Slider",
				Title = "Position " .. v5,
				Args = { "Mastery", v5 },
				Default = getgenv().Setting.Mastery[v5] or v5 == "Y" and 30 or 0,
				Min = 0,
				Max = 60,
				OnChange = function(arg)
					getgenv().Setting.Mastery[v5] = arg
					settingManager:Save()
				end,
			})
		end

		return tbl18
	end

	local function fn9()
		local tbl18 = {}

		for k in pairs(getgenv().Setting.SkillsSet2) do
			if type(k) == "string" then
				table.insert(tbl18, k)
			end
		end

		return tbl18
	end

	local tbl18 = {
		Mode = "Dropdown",
		Title = "Weapon For Sea Events",
		Multi = true,
		Table = { "Melee", "Blox Fruit", "Sword", "Gun" },
		Default = fn9(),
		OnChange = function(arg)
			local skillsSet2 = {}

			for k, v5 in pairs(arg) do
				if type(k) == "string" then
					skillsSet2[k] = v5
				end
			end

			getgenv().Setting.SkillsSet2 = skillsSet2
			settingManager:Save()
		end,
	}

	local tbl19 = {
		Mode = "Dropdown",
		Title = "Skills For fruit",
		Multi = true,
		Table = { "Z", "X", "C", "V", "F" },
		Default = getgenv().Setting.SkillsSettingRemake["Blox Fruit"],
		OnChange = function(arg)
			local tbl19 = {}

			for k in pairs(arg) do
				if type(k) == "string" then
					table.insert(tbl19, k)
				end
			end

			getgenv().Setting.SkillsSettingRemake["Blox Fruit"] = tbl19
			settingManager:Save()
		end,
	}

	local function fn10()
		local tbl20 = {}

		for _, v5 in pairs({ "Z", "X", "C", "V", "F" }) do
			local function fn11()
				local tbl21 = { 0, 0.25, 0.5, 1, 2, 3 }
				local n4

				if not table.find(tbl21, getgenv().Setting.FruitSkillsHold[v5]) then
					getgenv().Setting.FruitSkillsHold[v5] = 0
					n4 = 1
				else
					n4 = table.find(tbl21, getgenv().Setting.FruitSkillsHold[v5])
				end

				return n4
			end

			table.insert(tbl20, {
				Mode = "Dropdown",
				Title = "Hold Time " .. v5,
				Args = { "FruitSkillsHold", v5 },
				Table = { 0, 0.25, 0.5, 1, 2, 3 },
				Default = fn11(),
				OnChange = function(arg)
					local v6 = v5
					getgenv().Setting.FruitSkillsHold[v6] = tonumber(arg)
					settingManager:Save()
				end,
			})
		end

		return tbl20
	end

	setting2[1] = tbl12
	setting2[2] = tbl13
	setting2[3] = tbl14
	setting2[4] = tbl15
	setting2[5] = tbl16
	setting2[6] = tbl17
	setting2[7] = { Mode = "Label", Title = "Fast Attack Section" }

	setting2[8] = {
		Mode = "Toggle",
		Title = "Fast Attack",
		Args = { "FastAttack", "Enable" },
		OnChange = function(enable)
			getgenv().Setting.FastAttack.Enable = enable
			settingManager:Save()
		end,
	}

	setting2[9] = {
		Mode = "Toggle",
		Title = "On Player",
		Description = "Fast Attack On Player",
		Args = { "FastAttack", "OnPlayer" },
		OnChange = function(onPlayer)
			getgenv().Setting.FastAttack.OnPlayer = onPlayer
			settingManager:Save()
		end,
	}

	setting2[10] = {
		Mode = "Toggle",
		Title = "On Mob",
		Description = "Fast Attack On Mob",
		Args = { "FastAttack", "OnMob" },
		OnChange = function(onMob)
			getgenv().Setting.FastAttack.OnMob = onMob
			settingManager:Save()
		end,
	}

	setting2[11] = { Mode = "Label", Title = "Mastery Position" }
	setting2[12] = fn8
	setting2[13] = tbl18
	setting2[14] = { Mode = "Label", Title = "Fruit Skills Setting" }

	setting2[15] = {
		Mode = "Toggle",
		Title = "Use Dragonstorm",
		Description = "",
		Args = { "UseDragonStorm" },
		OnChange = function(useDragonStorm)
			getgenv().Setting.UseDragonStorm = useDragonStorm
			settingManager:Save()
		end,
	}

	setting2[16] = tbl19
	setting2[17] = fn10
	tbl11.Setting = setting2

	tbl11["Game-Server"] = {
		{
			Mode = "Button",
			Title = "Copy Job Id",
			Callback = function()
				setclipboard(tostring(game.JobId))
			end,
		},
		{
			Mode = "Button",
			Title = "Clear Server Code",
			Callback = function()
				local ok2, result2 = pcall(function()
					ElementsCollection["Game-Server"]["Server Code [Premium]"]:SetValue("")
				end)

				if result2 then
					print(result2)
				end
			end,
		},
		{
			Mode = "TextBox",
			Title = "Job Id",
			Callback = function(arg)
				pcall(function()
					if arg ~= "" then
						game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", arg)
					end
				end)
			end,
		},
		{
			Mode = "Button",
			Title = "Clear Job Id",
			Callback = function()
				local ok2, result2 = pcall(function()
					ElementsCollection["Game-Server"]["Job Id"]:SetValue("")
				end)

				if result2 then
					print(result2)
				end
			end,
		},
		{
			Mode = "Toggle",
			Title = "No Fog",
			Description = "For Better Vision",
			Args = { "Misc", "__NoFog" },
			OnChange = function(noFog)
				getgenv().Setting.Misc.__NoFog = noFog
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Remove Effect (Fluxus Only)",
			Description = "Disable And Rejoin To Get The Effect Back If You Want Effects",
			Args = { "Misc", "__RemoveEffects" },
			OnChange = function(removeEffects)
				getgenv().Setting.Misc.__RemoveEffects = removeEffects
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Disable 3D Render",
			Args = { "Misc", "DisableRender3D" },
			OnChange = function(disableRender3D)
				getgenv().Setting.Misc.DisableRender3D = disableRender3D
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Disable Notifications",
			Args = { "Misc", "__RemoveNotification" },
			OnChange = function(removeNotification)
				getgenv().Setting.Misc.__RemoveNotification = removeNotification
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Disable DMG Counter",
			Args = { "Misc", "__RemoveDMGCounter" },
			OnChange = function(removeDMGCounter)
				getgenv().Setting.Misc.__RemoveDMGCounter = removeDMGCounter
				settingManager:Save()
			end,
		},
		{
			Mode = "Button",
			Title = "Server Hop",
			Callback = function()
				islandCaller("TrueServerHop")
			end,
		},
		{
			Mode = "Button",
			Title = "Low Player Server Hop",
			Callback = function()
				islandCaller("TrueServerHop", 1, 3)
			end,
		},
		{
			Mode = "Button",
			Title = "Rejoin",
			Callback = function()
				game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", game.JobId)
			end,
		},
	}

	tbl11["One Click"] = {
		{
			Mode = "Toggle",
			Title = "Start One Click",
			Description = "Do Not Farm Levels Too Fast Or Enjoy Getting Reseted",
			Args = { "OneClick", "Enable" },
			OnChange = function(enable)
				getgenv().Setting.OneClick.Enable = enable
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Remove limit 1 Minute Get Quest",
			Description = "Turn This On = Farm Faster But May Get Reseted",
			Args = { "OneClick", "UnlimitGetQuest" },
			OnChange = function(unlimitGetQuest)
				getgenv().Setting.OneClick.UnlimitGetQuest = unlimitGetQuest
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Triple Quests",
			Description = "Only use this if you only farm for a while or get reseted",
			Args = { "OneClick", "TripleQuest" },
			OnChange = function(tripleQuest2)
				getgenv().Setting.OneClick.TripleQuest = tripleQuest2
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Auto Add Stats",
			Description = "Melee -> Health, The Last One You Chose",
			Args = { "OneClick", "AutoAddStats" },
			OnChange = function(autoAddStats)
				getgenv().Setting.OneClick.AutoAddStats = autoAddStats
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Disable Melees Switcher",
			Description = "Melees Switcher Is For God Human, Turn Off If You Only Want To Farm A Melee",
			Args = { "OneClick", "DisableMeleeSwitcher" },
			OnChange = function(disableMeleeSwitcher)
				getgenv().Setting.OneClick.DisableMeleeSwitcher = disableMeleeSwitcher
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Farms All Melee 600 Mastery",
			Description = "Melee -> Health, The Last One You Chose",
			Args = { "OneClick", "Melee600Mastery" },
			OnChange = function(melee600Mastery)
				getgenv().Setting.OneClick.Melee600Mastery = melee600Mastery
				settingManager:Save()
			end,
		},
		{
			Mode = "Toggle",
			Title = "Hop For Library Key / Water Key",
			Description = "",
			Args = { "OneClick", "Sea2KeyHop" },
			OnChange = function(sea2KeyHop)
				getgenv().Setting.OneClick.Sea2KeyHop = sea2KeyHop
				settingManager:Save()
			end,
		},
		{
			Mode = "Button",
			Title = "Redeem All Codes",
			Callback = function()
				islandCaller("RedeemAllCode")
			end,
		},
	}

	tbl11["One Click Debugger"] = {
		{ Mode = "Label", Title = "God Human Progress" },
		{ Mode = "Label", Title = "Raid" },
		{ Mode = "Label", Title = "Spawn Rip Indra" },
		{ Mode = "Label", Title = "Unlock Sea 2" },
		{ Mode = "Label", Title = "Unlock Sea 3" },
		{ Mode = "Label", Title = "Travel Sea 3" },
	}

	print("Building Ui")

	local function fn11(arg, arg2, arg3, arg4)
		if arg3.Mode == "Toggle" then
			local setting3 = getgenv().Setting
			local args = arg3.Args

			for i = 1, #args - 1 do
				setting3 = setting3[args[i]]
			end

			local tbl20 = { Title = arg3.Title, Default = setting3[args[#args]] }

			if arg3.Description then
				tbl20.Description = arg3.Description
			end

			ElementsCollection[arg4][arg3.Title] = arg:AddToggle(arg3.Title, tbl20)

			ElementsCollection[arg4][arg3.Title]:OnChanged(function()
				setting3[args[#args]] = options[arg3.Title].Value

				if not arg3.NoSave then
					settingManager:Save()
				end
			end)
		elseif arg3.Mode == "Label" then
			local tbl20 = { Title = arg3.Title }

			if arg3.Content then
				tbl20.Content = arg3.Content
			end

			ElementsCollection[arg4][arg3.Title] = arg:AddParagraph(tbl20)
		elseif arg3.Mode == "Button" then
			local tbl20 = { Title = arg3.Title, Callback = arg3.Callback }

			if arg3.Description then
				tbl20.Description = arg3.Description
			end

			ElementsCollection[arg4][arg3.Title] = arg:AddButton(tbl20)
		elseif arg3.Mode == "Slider" then
			local tbl20 = { Title = arg3.Title }

			if arg3.Description then
				tbl20.Description = arg3.Description
			end

			if arg3.Default then
				tbl20.Default = arg3.Default
			end

			tbl20.Min = arg3.Min
			tbl20.Max = arg3.Max
			tbl20.Rounding = 1
			ElementsCollection[arg4][arg3.Title] = arg:AddSlider(arg3.Title, tbl20)

			ElementsCollection[arg4][arg3.Title]:OnChanged(function(arg5)
				arg3.OnChange(tonumber(arg5))
			end)
		elseif arg3.Mode == "Dropdown" then
			local tbl20 = { Title = arg3.Title }

			if arg3.Description then
				tbl20.Description = arg3.Description
			end

			if arg3.Multi then
				tbl20.Multi = arg3.Multi
			end

			if arg3.Default then
				tbl20.Default = arg3.Default
			end

			tbl20.Values = arg3.Table
			ElementsCollection[arg4][arg3.Title] = arg:AddDropdown(arg3.Title, tbl20)
			ElementsCollection[arg4][arg3.Title]:OnChanged(arg3.OnChange)
		elseif arg3.Mode == "TextBox" then
			ElementsCollection[arg4][arg3.Title] = arg:AddInput(arg3.Title, { Title = arg3.Title, Callback = arg3.Callback, Finished = arg3.Finished })
		end
	end

	for _, v5 in pairs(tbl9) do
		tbl10[v5] = window:AddTab({ Title = v5, Icon = "" })
		local v6 = tbl10[v5]

		for k, v7 in pairs(tbl11[v5]) do
			if type(v7) == "function" then
				for k2, v8 in pairs(v7()) do
					fn11(v6, k2, v8, v5)
				end
			else
				fn11(v6, k, v7, v5)
			end

			if getgenv().SlowLoadUi then
				task.wait()
			end
		end
	end

	return Title, SubTitle, ElementsCollection
end

task.spawn(function()
	lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/backup/refs/heads/main/secure_call.lua", true))()
	n3 += 1
end)

repeat
	task.wait(0.1)
until n3 >= 2

print("Getting Ui")

spawn(function()
	SupportRetard()
	if getgenv().IgnoreUi then
		FinishLoadUi = true
		return
	end
	print("Loadin Ui")
	if getgenv().IgnoreUi then
		FinishLoadUi = true
		return
	end

	local ok2, result2 = pcall(function()
		local v5, v6, v7 = fn6()
		FinishLoadUi = true
		ElementsCollection = v7
		FinishLoadUi = true
	end)

	if result2 then
		print("UI Error")
		print(result2)
		print(debug.traceback())
	end
end)

print("UI Attempt Loaded")
local enemies = game:GetService("Workspace").Enemies
local cframe12 = CFrame.new

RaceEntrances = {
	Cyborg = CFrame.new(28492.52734375, 14895.9755859375, -422.60586547851562),
	Human = {
		CFrame.new(29019.9609375, 14891.1474609375, -389.439697265625),
		cframe12(29237.48828125, 14891.052734375, -204.71849060058594),
	},
	Mink = CFrame.new(29020.9492, 14890.6328, -380.407867, -0.0712743625, 8.85832776e-08, -0.997456729, -3.87927805e-08, 1, 9.15811214e-08, 0.997456729, 4.52215083e-08, -0.0712743625),
	Fishman = CFrame.new(28224.0938, 14891.2402, -212.507004, 0.0963651389, -3.22392211e-08, 0.995346069, 3.76359344e-09, 1, 3.20255857e-08, -0.995346069, 6.59927724e-10, 0.0963651389),
	Ghoul = CFrame.new(28673.8555, 14890.334, 454.733765, -0.999887466, -3.48198981e-09, 0.0150030479, -3.48583518e-09, 1, -2.30164096e-10, -0.0150030479, -2.82436352e-10, -0.999887466),
	Skypiea = CFrame.new(28967.8086, 14919.2803, 234.668045, -0.00638482161, 3.80502279e-08, -0.999979615, 6.83823131e-08, 1, 3.76143845e-08, 0.999979615, -6.8140757e-08, -0.00638482161),
}

PlacesPosition = {
	SpawnRipIndra = CFrame.new(-5564.91406, 313.950531, -2666.69287, -0.892237544, -1.03326805e-08, -0.451566368, 1.39742387e-08, 1, -5.04931776e-08, 0.451566368, -5.13622034e-08, -0.892237544),
	CenterCastle = Vector3.new(-5581.2354, 313.76556, -3064.095),
	DefaultSeaPosition = Vector3.new(0, -10010, 0),
}

LastClick = tick()
AllFruitKeys = { "Z", "X", "C", "V", "F" }
Weapon600Mas = {}

GatesInfo = {
	Castle = { CanInstaTP = true, Pos = Vector3.new(-5069.1216, 314.5155, -3000.4673) },
	Hydra = {
		CanInstaTP = true,
		Hitbox = function()
			local boatCastle = game:GetService("Workspace").Map:FindFirstChild("Boat Castle")

			if boatCastle then
				local mapTeleportB = boatCastle:FindFirstChild("MapTeleportB")
				if mapTeleportB then
					return mapTeleportB:FindFirstChild("Hitbox")
				end
			end

			return nil
		end,
		Pos = Vector3.new(5657.0947, 1013.0795, -340.00446),
	},
	Mansion = { CanInstaTP = true, Pos = Vector3.new(-12547.14, 337.16827, -7471.882) },
}

ListNpc = {}
NPCInstances = {}
BlacklistNpcName = { "Boat Dealer", "Quest Giver", "Dealer", "Set Home Point" }

for _, child in pairs(workspace.NPCs:GetChildren()) do
	IsBlacklist = false

	for _, v5 in pairs(BlacklistNpcName) do
		if string.find(child.Name, v5) then
			IsBlacklist = true
			break
		end
	end

	local defaultSeaPosition = PlacesPosition.DefaultSeaPosition

	if (child:GetAttribute("FloorPos") - defaultSeaPosition).magnitude < 100 then
		IsBlacklist = true
	end

	if not IsBlacklist then
		table.insert(ListNpc, child.Name)
		NPCInstances[child.Name] = child
	end
end

for _, child in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
	IsBlacklist = false

	for _, v5 in pairs(BlacklistNpcName) do
		if string.find(child.Name, v5) then
			IsBlacklist = true
			break
		end
	end

	local defaultSeaPosition = PlacesPosition.DefaultSeaPosition

	if (child:GetAttribute("FloorPos") - defaultSeaPosition).magnitude < 100 then
		IsBlacklist = true
	end

	if not IsBlacklist then
		table.insert(ListNpc, child.Name)
		NPCInstances[child.Name] = child
	end
end

UIInfo = {
	InCombat = localPlayer.PlayerGui.Main.BottomHUDList.InCombat,
	InCombatBottom = localPlayer.PlayerGui.Main.BottomHUDList.InCombatBottom,
}

SkillsV3Name = {
	Mink = "Agility",
	Skypiea = "Heavenly Blood",
	Ghoul = "Heightened Senses",
	Fishman = "Water Body",
	Cyborg = "Energy Core",
	Human = "Last Resort",
}

BossQuest = {
	["2753915549"] = {
		["The Gorilla King"] = {
			Quest = "JungleQuest",
			Require = 25,
			LvQuest = 3,
			Pos = CFrame.new(-1604.12012, 36.8521118, 154.23732),
		},
		Chef = {
			Quest = "BuggyQuest1",
			Require = 55,
			LvQuest = 3,
			Pos = CFrame.new(-1139.59717, 4.75205183, 3825.16211),
		},
		Bobby = {
			Quest = "BuggyQuest1",
			Require = 55,
			LvQuest = 3,
			Pos = CFrame.new(-1139.59717, 4.75205183, 3825.16211),
		},
		Yeti = {
			Quest = "SnowQuest",
			LvQuest = 3,
			Require = 110,
			Pos = CFrame.new(1384.90247, 87.3078308, -1296.6825),
		},
		["Vice Admiral"] = {
			Quest = "MarineQuest2",
			LvQuest = 2,
			Require = 130,
			Pos = CFrame.new(-5035.42285, 28.6520386, 4324.50293),
		},
		Warden = {
			Quest = "ImpelQuest",
			LvQuest = 1,
			Require = 220,
			Pos = CFrame.new(5189.8603515625, 3.5371694564819336, 689.46923828125),
		},
		["Chief Warden"] = {
			Quest = "ImpelQuest",
			LvQuest = 2,
			Require = 230,
			Pos = CFrame.new(5189.8603515625, 3.5371694564819336, 689.46923828125),
		},
		Swan = {
			Quest = "ImpelQuest",
			LvQuest = 3,
			Require = 230,
			Pos = CFrame.new(5189.8603515625, 3.5371694564819336, 689.46923828125),
		},
		["Magma Admiral"] = {
			Quest = "MagmaQuest",
			LvQuest = 3,
			Require = 350,
			Pos = CFrame.new(-5317.07666, 12.2721891, 8517.41699),
		},
		["Fishman Lord"] = {
			Quest = "FishmanQuest",
			LvQuest = 3,
			Require = 425,
			Pos = CFrame.new(61123.0859, 18.5066795, 1570.18018),
		},
		Wysper = {
			Quest = "SkyExp1Quest",
			LvQuest = 3,
			Require = 500,
			Pos = CFrame.new(-7862.94629, 5545.52832, -379.833954),
		},
		["Thunder God"] = {
			Quest = "SkyExp2Quest",
			LvQuest = 3,
			Require = 575,
			Pos = CFrame.new(-7902.78613, 5635.99902, -1411.98706),
		},
		Cyborg = {
			Quest = "FountainQuest",
			LvQuest = 3,
			Require = 675,
			Pos = CFrame.new(-5253.54834, 38.5361786, 4050.45166),
		},
	},
	["4442272183"] = {
		Diamond = {
			Quest = "Area1Quest",
			LvQuest = 3,
			Require = 750,
			Pos = CFrame.new(-424.080078, 73.0055847, 1836.91589),
		},
		Jeremy = {
			Quest = "Area2Quest",
			LvQuest = 3,
			Require = 850,
			Pos = CFrame.new(632.698608, 73.1055908, 918.666321),
		},
		Orbitus = {
			Quest = "MarineQuest3",
			LvQuest = 3,
			Require = 925,
			Pos = CFrame.new(-2442.65015, 73.0511475, -3219.11523),
		},
		Fajita = {
			Quest = "MarineQuest3",
			LvQuest = 3,
			Require = 925,
			Pos = CFrame.new(-2442.65015, 73.0511475, -3219.11523),
		},
		["Smoke Admiral"] = {
			Quest = "IceSideQuest",
			LvQuest = 3,
			Require = 1150,
			Pos = CFrame.new(-6059.96191, 15.9868021, -4904.7373),
		},
		["Awakened Ice Admiral"] = {
			Quest = "FrostQuest",
			LvQuest = 3,
			Require = 1400,
			Pos = CFrame.new(5669.33203, 28.2118053, -6481.55908),
		},
		["Tide Keeper"] = {
			Quest = "ForgottenQuest",
			LvQuest = 3,
			Require = 1475,
			Pos = CFrame.new(-3053.89648, 236.881363, -10148.2324),
		},
	},
	["7449423635"] = {
		Stone = {
			Quest = "PiratePortQuest",
			LvQuest = 3,
			Require = 1550,
			Pos = CFrame.new(-288.003815, 43.7675667, 5573.12012),
		},
		["Island Empress"] = {
			Quest = "AmazonQuest2",
			LvQuest = 3,
			Require = 1675,
			Pos = CFrame.new(5444.14355, 601.603821, 751.306763),
		},
		["Kilo Admiral"] = {
			Quest = "MarineTreeIsland",
			LvQuest = 3,
			Require = 1750,
			Pos = CFrame.new(2223.3645, 28.7049141, -6719.18408),
		},
		["Captain Elephant"] = {
			Quest = "DeepForestIsland",
			LvQuest = 3,
			Require = 1875,
			Pos = CFrame.new(-13231.1602, 333.744446, -7624.40723),
		},
		["Cake Queen"] = {
			Quest = "IceCreamIslandQuest",
			LvQuest = 3,
			Require = 1875,
			Pos = CFrame.new(-821.71612548828, 65.819519042969, -10965.169921875),
		},
	},
}

AllBoss = {
	["2753915549"] = {
		"Saber Expert",
		"The Saw",
		"Chef",
		"Bobby",
		"The Gorilla King",
		"Yeti",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
	},
	["4442272183"] = {
		"Diamond",
		"Jeremy",
		"Orbitus",
		"Fajita",
		"Smoke Admiral",
		"Awakened Ice Admiral",
		"Tide Keeper",
		"Don Swan",
		"Cursed Captain",
	},
	["7449423635"] = {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Cake Queen",
		"Beautiful Pirate",
		"Soul Reaper",
		"rip_indra True Form",
		"Cake Prince",
		"Dough King",
	},
}

local v5 = AllBoss
getgenv().AllBoss = v5

AutoBlackSmithv1 = {
	["Dark Blade"] = { ["Magma Ore"] = 10, ["Dragon Scale"] = 15, ["Dark Fragment"] = 1 },
	["Cursed Dual Katana"] = { ["Scrap Metal"] = 60, ["Mini Tusk"] = 10, ["Demonic Wisp"] = 10 },
	["Hallow Scythe"] = { ["Scrap Metal"] = 25, Bones = 800, ["Demonic Wisp"] = 8 },
	["True Triple Katana"] = { Leather = 50, ["Mystic Droplet"] = 20, ["Dragon Scale"] = 5 },
	["Spikey Trident"] = { ["Scrap Metal"] = 25, ["Conjured Cocoa"] = 8, ["Mystic Droplet"] = 5 },
	Koko = { ["Scrap Metal"] = 15, ["Vampire Fang"] = 10 },
	Tushita = { Leather = 6, ["Mini Tusk"] = 20 },
	["Pole (2nd Form)"] = { ["Scrap Metal"] = 12, ["Mystic Droplet"] = 10, ["Fish Tail"] = 15 },
	Saddi = { Leather = 10, ["Mystic Droplet"] = 8 },
	Saber = { ["Scrap Metal"] = 10, ["Radioactive Material"] = 5, ["Magma Ore"] = 10 },
	Yama = { Leather = 6, ["Mini Tusk"] = 20 },
	["Midnight Blade"] = { ["Scrap Metal"] = 15, Ectoplasm = 40 },
	["Buddy Sword"] = { Leather = 25, ["Conjured Cocoa"] = 8, ["Mystic Droplet"] = 5 },
	Shisui = { Leather = 10, ["Mystic Droplet"] = 8 },
	Bisento = { ["Scrap Metal"] = 15, ["Angel Wings"] = 12, ["Magma Ore"] = 10 },
	["Pole (1st Form)"] = { ["Scrap Metal"] = 20, ["Angel Wings"] = 10, ["Radioactive Material"] = 10 },
	Canvander = { Leather = 20, ["Dragon Scale"] = 6 },
	["Dark Dagger"] = { ["Scrap Metal"] = 10, ["Dragon Scale"] = 8, ["Dark Fragment"] = 1 },
	Rengoku = { ["Vampire Fang"] = 8, ["Scrap Metal"] = 15, ["Magma Ore"] = 20 },
	Wando = { Leather = 10, ["Mystic Droplet"] = 8 },
	Longsword = { ["Scrap Metal"] = 10, ["Radioactive Material"] = 10 },
	Pipe = { ["Scrap Metal"] = 10, ["Fish Tail"] = 12 },
	["Dragon Trident"] = { Leather = 10, ["Dragon Scale"] = 10 },
	Jitte = { ["Scrap Metal"] = 15, ["Vampire Fang"] = 10 },
	["Dual-Headed Blade"] = { ["Scrap Metal"] = 10, ["Fish Tail"] = 12 },
	["Gravity Cane"] = { ["Scrap Metal"] = 10, Meteorite = 3 },
	["Soul Cane"] = { Leather = 20, ["Radioactive Material"] = 5 },
	["Iron Mace"] = { Leather = 10, ["Angel Wings"] = 10 },
	["Shark Saw"] = { Leather = 12 },
	["Twin Hooks"] = { Leather = 20, ["Mini Tusk"] = 8, ["Fish Tail"] = 10 },
	["Triple Katana"] = { Leather = 15, ["Scrap Metal"] = 15 },
	["Skull Guitar"] = { ["Magma Ore"] = 10, ["Dragon Scale"] = 15, ["Dark Fragment"] = 1 },
	Kabucha = { Leather = 50, ["Dragon Scale"] = 15, ["Vampire Fang"] = 3 },
	["Serpent Bow"] = { Meteorite = 1, ["Scrap Metal"] = 10, ["Vampire Fang"] = 10 },
	Bazooka = { ["Magma Ore"] = 10, ["Dragon Scale"] = 15, ["Dark Fragment"] = 1 },
	Cannon = { Leather = 5, ["Fish Tail"] = 5, ["Magma Ore"] = 5 },
	["Refined Musket"] = { ["Scrap Metal"] = 10, ["Fish Tail"] = 10 },
	["Refined Slingshot"] = { ["Scrap Metal"] = 10, ["Angel Wings"] = 10 },
	["Bizarre Rifle"] = { Leather = 20, ["Angel Wings"] = 10, ["Magma Ore"] = 5 },
	Musket = { Leather = 5, ["Fish Tail"] = 5 },
	Flintlock = { Leather = 5, ["Magma Ore"] = 5 },
	["Refined Musket"] = { ["Scrap Metal"] = 10, ["Fish Tail"] = 10 },
	["Acidum Rifle"] = { Leather = 10, ["Vampire Fang"] = 8 },
}

local cframe13 = CFrame.new(0, 0, 15)

spawn(function()
	while true do
		cframe13 = CFrame.new(0, 0, 15)
		task.wait(0.5)
		cframe13 = CFrame.new(10, 0, 10)
		task.wait(0.5)
		cframe13 = CFrame.new(10, 0, -10)
		task.wait(0.5)
		cframe13 = CFrame.new(-15, 0, 0)
		task.wait(0.5)
		cframe13 = CFrame.new(-10, 0, -10)
		task.wait(0.5)
		cframe13 = CFrame.new(0, 0, -15)
		task.wait(0.5)
		cframe13 = CFrame.new(-10, 0, 10)
		task.wait(0.5)
	end
end)

local tbl9 = {
	"GAMERROBOT_YT",
	"FUDD10",
	"fudd10_v2",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2NOOBMASTER123",
	"Sub2Daigrock",
	"Axiore",
	"TantaiGaming",
	"STRAWHATMAINE",
	"Sub2OfficialNoobie",
	"UPD16",
	"SUB2GAMERROBOT_EXP1",
	"3BVISITS",
	"Enyu_is_Pro",
	"Sub2Fer999",
	"Bluxxy",
	"JCWK",
	"Magicbus",
	"Starcodeheo",
	"kittgaming",
	"ADMINGIVEAWAY",
	"GAMER_ROBOT_1M",
	"Sub2CaptainMaui",
	"15B_BESTBROTHERS",
	"DEVSCOOKING",
	"krazydares",
	"Sub2CaptainMaui",
	"DEVSCOOKING",
	"KITT_RESET",
	"Sub2UncleKizaru",
	"SUB2GAMERROBOT_RESET1",
	"NOMOREHACK",
	"BANEXPLOIT",
	"GIFTING_HOURS",
}

local tbl10 = { "18", "19", "20", "21", "22", "23", "24", "00", "01", "02", "03", "04" }

IsNight = function()
	return table.find(tbl10, tostring(game:GetService("Lighting").TimeOfDay:split(":")[1]))
end

local tbl11 = { [4] = "Near Full Moon" }

local function fn7()
	local attribute2 = game:GetService("Lighting"):GetAttribute("MoonPhase")
	local num = tonumber(string.sub(tostring(attribute2), #tostring(attribute2)))
	if tbl11[num] then
		return tbl11[num]
	end

	if attribute2 % 5 == 0 then
		return "Full Moon OMG"
	end
	return num
end

TimeRemain = function()
	if IsNight() then
		local v6 = table.find(tbl10, tostring(game:GetService("Lighting").TimeOfDay:split(":")[1]))
		if not v6 then
			return 0
		end
		local n4

		if v6 >= 6 then
			n4 = 10 - v6 + 1
		else
			n4 = 10 - v6
		end

		return n4
	end
end

spawn(function()
	while task.wait(1.5) do
		local v6 = pairs
		local ReplicatedStorage = game:GetService("ReplicatedStorage")

		for _, child in v6(ReplicatedStorage:GetChildren()) do
			if fn5(child) and child:IsA("Model") and child:FindFirstChildOfClass("Humanoid") then
				child.Parent = enemies
			end
		end

		for _, child in pairs(game:GetService("Workspace").Boats:GetChildren()) do
			if fn5(child) and child:IsA("Model") and child:FindFirstChildOfClass("Humanoid") then
				child.Parent = enemies
			end
		end
	end
end)

local function fn8()
	local players = Players:GetPlayers()
	table.remove(players, table.find(players, localPlayer))
	return players
end

local function strGetPlayers()
	local tbl12 = {}

	for _, player in pairs(Players:GetPlayers()) do
		if player ~= localPlayer then
			table.insert(tbl12, player.Name)
		end
	end

	return tbl12
end

local function fn9(arg)
	return arg:FindFirstChild("HumanoidRootPart")
end

local function fn10(arg)
	if arg and arg.Parent and fn9(arg) and arg:FindFirstChild("Humanoid") then
		if arg:FindFirstChild("Humanoid").Health and arg:FindFirstChild("Humanoid").Health > 0 then
			return true
		end
	end

	return false
end

getgenv().Alive = function()
	if localPlayer.Character then
		if fn9(localPlayer.Character) and localPlayer.Character:FindFirstChild("Humanoid") then
			if localPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
				return true
			end
		end
	end

	return false
end

Alive = getgenv().Alive
_G.Alive = getgenv().Alive

local function fn11(arg)
	if fn9(localPlayer.Character) then
		if arg then
			if not fn9(localPlayer.Character):FindFirstChild("VelocityBody") then
				local bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.Parent = fn9(localPlayer.Character)
				bodyVelocity.Name = "VelocityBody"
				bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
				bodyVelocity.Velocity = Vector3.zero
			end
		elseif fn9(localPlayer.Character):FindFirstChild("VelocityBody") then
			fn9(localPlayer.Character).VelocityBody:Destroy()
		end
	end
end

local tbl12 = {}

CreateSteppedLoop = function(arg, arg2)
	if arg2 then
		if tbl12[arg2] then
			return tbl12[arg2]
		end
	end

	local connection = RunService.Stepped:Connect(arg)

	if arg2 then
		tbl12[arg2] = connection
	end

	return connection
end

DisconnectLoop = function(arg)
	if arg then
		if type(arg) == "string" then
			if tbl12[arg] then
				tbl12[arg]:Disconnect()
			end
		elseif typeof(arg) == "RBXScriptConnection" then
			if table.find(tbl12, arg) then
				table.remove(tbl12, table.find(tbl12, arg))
			end

			arg:Disconnect()
		else
			print("DisconnectLoop", "Can't Disconnect", typeof(arg))
		end
	end
end

local function fn12()if  localPlayer .Character~=nil then for C,C in pairs( localPlayer .Character:GetDescendants())do if C:IsA("BasePart")and C.CanCollide==true and C.Name~=floatName then C.CanCollide=false;end;end;end;end

local function fn13(arg)
	if not arg then
		return nil
	end
	local kind = typeof(arg)
	if kind == "Vector3" or type(arg) == "vector" then
		return arg
	end

	if kind == "CFrame" then
		return arg.Position
	end

	if kind == "Instance" then
		if arg:IsA("BasePart") then
			return arg.Position
		end

		if arg:IsA("Model") then
			local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
			if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
				return humanoidRootPart.Position
			end

			if arg.PrimaryPart then
				return arg.PrimaryPart.Position
			end
			local head = arg:FindFirstChild("Head")
			if head and head:IsA("BasePart") then
				return head.Position
			end

			local ok2, result2 = pcall(function()
				return arg:GetPivot().Position
			end)

			if ok2 and result2 then
				return result2
			end
		elseif arg:IsA("Player") then
			local character = arg.Character

			if character then
				local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
					return humanoidRootPart.Position
				end

				if character.PrimaryPart then
					return character.PrimaryPart.Position
				end
			end
		end
	end

	return nil
end

local function fn14(arg)
	local flag2 = true

	if arg == arg then
		if arg ~= math.huge then
			flag2 = arg == -math.huge
		end
	end

	return flag2
end

ConvertStringToVector3 = function(arg)
	local match, v6, v7 = arg:match("([-0-9.]+),%s([-0-9.]+),%s([-0-9.]+)")
	local vector = Vector3.new
	local num = tonumber(match)
	local v8 = tonumber
	return vector(num, tonumber(v6), v8(v7))
end

local function fn15(arg, arg2)
	local v6 = fn13(arg)
	local v7 = fn13(arg2)
	if v6 and v7 then
		return (v6 - v7).magnitude
	end
	return 9999999
end

local function fn16(arg)
	if not Sea3 then
		return false
	end
	local v6 = fn13(arg or localPlayer.Character)
	if not v6 then
		return false
	end
	return (v6 - Vector3.new(11424.47, -2154.98, 9732.01)).magnitude < 2000
end

local function improvedTeleport(arg)
	local localPlayer2 = game:GetService("Players").LocalPlayer
	local humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return
	end

	if typeof(arg) ~= "Vector3" then
		if typeof(arg) == "CFrame" then
			arg = arg.Position
		elseif typeof(arg) == "Instance" and arg:IsA("BasePart") then
			arg = arg.Position
		else
			if not (arg and arg.Position) then
				return
			end
			arg = arg.Position
		end
	end

	local n4 = getgenv().Setting and getgenv().Setting.Tween and tonumber(getgenv().Setting.Tween.Speed) or 150

	if not n4 or n4 <= 0 then
		n4 = 150
	end

	local position = humanoidRootPart.Position
	local magnitude = (position - arg).magnitude
	if magnitude <= 1 then
		humanoidRootPart.CFrame = CFrame.new(arg)
		return
	end
	local n5 = arg - position
	local now = tick()
	local n6 = magnitude / n4
	local heartbeat = game:GetService("RunService").Heartbeat

	repeat
		heartbeat:Wait()
		if not humanoidRootPart or not humanoidRootPart.Parent or not localPlayer2.Character or not localPlayer2.Character:FindFirstChild("HumanoidRootPart") then
			return
		end
		humanoidRootPart.CFrame = CFrame.new(position + n5 * math.min((tick() - now) / n6, 1))
	until (humanoidRootPart.Position - arg).magnitude <= n4 / 2 or tick() - now > n6 + 3

	if humanoidRootPart and humanoidRootPart.Parent then
		humanoidRootPart.CFrame = CFrame.new(arg)
	end
end

getgenv().ImprovedTeleport = improvedTeleport

local function fn17(arg)
	if not Sea3 then
		return false
	end

	if not fn16() then
		return false
	end

	arg = arg or function()
		return true
	end

	local cframe14 = CFrame.new(-16269, 25, 1375)
	StatusFarming = "Exiting Submerged Island..."
	local character = localPlayer and localPlayer.Character and fn9(localPlayer.Character)
	if not character then
		return false
	end

	if (character.Position - Vector3.new(11424.47, -2154.98, 9732.01)).magnitude > 15 then
		StatusFarming = "Tweening to Submarine NPC..."

		if DoTween2 then
			DoTween2(CFrame.new(Vector3.new(11424.47, -2154.98, 9732.01)), arg)
		elseif DoTween then
			DoTween(CFrame.new(Vector3.new(11424.47, -2154.98, 9732.01)))
		end

		task.wait(0.2)
		local character2 = localPlayer and localPlayer.Character and fn9(localPlayer.Character)
		if not character2 then
			return false
		end
		character = character2
	end

	if (character.Position - Vector3.new(11424.47, -2154.98, 9732.01)).magnitude <= 15 then
		StatusFarming = "Interacting with Submarine Worker..."

		pcall(function()
			local net = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net")

			if net:FindFirstChild("RF/SubmarineTransportation") then
				net["RF/SubmarineTransportation"]:InvokeServer("InitiateTeleport", "Tiki Outpost")
			end

			if net:FindFirstChild("RF/SubmarineWorkerSpeak") then
				net["RF/SubmarineWorkerSpeak"]:InvokeServer("AskKilledTikiBoss")
				task.wait(0.3)
				net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
			end
		end)

		local now = tick()

		while true do
			task.wait(0.2)
			if not (not fn16() or tick() - now > 5) then
				continue
			end
			break
		end
	end

	if fn16() then
		StatusFarming = "Exiting Submerged (Fallback TP)..."

		if improvedTeleport then
			improvedTeleport(cframe14.Position + Vector3.new(0, 50, 0))
		elseif localPlayer and localPlayer.Character and fn9(localPlayer.Character) then
			fn9(localPlayer.Character).CFrame = cframe14 + Vector3.new(0, 50, 0)
		end

		task.wait(1)
	end

	return not fn16()
end

NewPos = function(arg, arg2)
	if Alive() and fn10(arg) then
		if arg2 == nil then
			arg2 = Vector3.zero
		end

		local y = arg2.Y
		local n4 = fn9(arg).Position.Y + y
		return CFrame.new(fn9(arg).Position.X, n4, fn9(arg).Position.Z) * CFrame.new(arg2.X, 0, arg2.Z)
	end
end

local function fn18()
	if tween then
		tween:Cancel()
		tween = nil
	end

	DisconnectLoop("NoClipTween")
end

StopTween = function()
	CancelingTween = true
	TweeningV2 = false
	fn18()
	local tweenInfo = TweenInfo.new(0, Enum.EasingStyle.Linear)
	game:service("TweenService"):Create(fn9(localPlayer.Character), tweenInfo, { CFrame = fn9(localPlayer.Character).CFrame }):Play()
	fn18()
	fn11(false)
	CancelingTween = false
end

DoTween = function(arg, arg2)
	while not Alive() do
		task.wait(1)
	end

	if arg ~= nil then
		local position = arg.Position
		local magnitude = (fn9(localPlayer.Character).Position - position).magnitude
		NewSpeed = getgenv().Setting and getgenv().Setting.Tween and tonumber(getgenv().Setting.Tween.Speed) or 150
		if fn14(arg.Position.X) then
			return
		end

		if arg.Position.Y < 0.3 then
			arg = CFrame.new(arg.Position.X, 1, arg.Position.Z)
		end

		RealSpeed = NewSpeed
		local position2 = arg.Position
		local tweenInfo = TweenInfo.new((fn9(localPlayer.Character).Position - position2).magnitude / RealSpeed, Enum.EasingStyle.Linear)

		if tween then
			tween:Cancel()
			tween = nil
		end

		tween = game:service("TweenService"):Create(fn9(localPlayer.Character), tweenInfo, { CFrame = arg })

		if CancelingTween then
			if tween then
				tween:Cancel()
				tween = nil
			end

			CancelingTween = false
			return
		end

		if Alive() then
			tween:Play()
			fn11(true)
			Tweening = true

			if Noclipping then
				if Clip then
					Noclipping:Disconnect()
					Noclipping = nil
				end
			elseif not Clip then
				Noclipping = RunService.Stepped:Connect(fn12)
			end

			localPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
				Tweening = false

				if tween then
					tween:Cancel()
				end
			end)

			if not arg2 then
				tween.Completed:wait()
			end

			tween.Completed:Connect(function()
				tween = nil
				fn11(false)
			end)

			if Noclipping then
				Noclipping:Disconnect()
				Noclipping = nil
			end

			Tweening = false
			fn11(false)
		else
			fn11(false)
			tween:Cancel()
			tween = nil

			if Noclipping then
				Noclipping:Disconnect()
				Noclipping = nil
			end

			Tweening = false
		end
	end
end

local RunService2 = game:GetService("RunService")
local localPlayer2 = game:GetService("Players").LocalPlayer
local n4 = getgenv().Setting and getgenv().Setting.Tween and tonumber(getgenv().Setting.Tween.Speed) or 150
local heartbeat = RunService2.Heartbeat

DoTween2 = function(arg, arg2, arg3, arg4)
	if arg == nil then
		return
	end

	if TweeningV2 then
		TweeningV2 = false
		task.wait()
	end

	while not Alive() do
		if arg2 and not arg2() then
			return
		end
		task.wait(1)
	end

	local ok2, result2 = pcall(function()
		local tbl13 = arg4 or {}
		local noTweenPause = tbl13.NoTweenPause
		local speed = tbl13.Speed
		local disableInstaTP = tbl13.DisableInstaTP
		local forceTweenPause = tbl13.ForceTweenPause
		local ignoreSafeY = tbl13.IgnoreSafeY
		local isBasePart = typeof(arg) == "Instance" and arg:IsA("BasePart")
		local v6 = nil

		if isBasePart then
			v6 = arg
			arg = arg.Position
		end

		if typeof(arg) == "CFrame" then
			arg = arg.p
		end

		local fn19 = arg2 or function()
			return true
		end

		if Sea3 and (Vector3.new(11256, -2138, 9888) - arg).magnitude < 2000 then
			ignoreSafeY = true
		end

		if arg.Y < 1.5 and not ignoreSafeY then
			arg = Vector3.new(arg.X, 2, arg.Z)
		end

		fn11(true)
		n4 = speed or getgenv().Setting and getgenv().Setting.Tween and tonumber(getgenv().Setting.Tween.Speed) or 150
		local v7 = CreateSteppedLoop(fn12, "NoClipTween")

		if not disableInstaTP then
			if Sea1 then
				local flag2 = arg.X > 55000 or (arg - Vector3.new(61163.85, 11.6796875, 1819.7842)).magnitude < 4000
				local position = fn9(localPlayer.Character) and fn9(localPlayer.Character).Position
				local flag3

				if position then
					flag3 = position.X > 55000 or (position - Vector3.new(61163.85, 11.6796875, 1819.7842)).magnitude < 3000
				else
					flag3 = position
				end

				if not flag3 and flag2 then
					local n5 = 0

					while true do
						task.wait(0.15)
						n5 += 1

						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.85, 11.6796875, 1819.7842))
						end)

						local v8 = fn9(localPlayer.Character)

						if v8 then
							v8.AssemblyLinearVelocity = Vector3.zero
							v8.CFrame = CFrame.new(Vector3.new(61163.85, 11.6796875, 1819.7842) + Vector3.new(0, 1.5, 0))
						end

						if not (not Alive() or fn9(localPlayer.Character) and (fn9(localPlayer.Character).Position - Vector3.new(61163.85, 11.6796875, 1819.7842)).magnitude < 2000 or n5 >= 3) then
							continue
						end
						break
					end
				end

				if arg.Y >= 4000 and (fn9(localPlayer.Character).Position - Vector3.new(-6023.5767, 5469.7197, 2203.3083)).magnitude > 3000 and (arg - Vector3.new(-6023.5767, 5469.7197, 2203.3083)).magnitude < 3500 then
					local n5 = 0

					while true do
						task.wait(0.2)
						n5 += 1

						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6023.5767, 5469.7197, 2203.3083))
						end)

						local v8 = fn9(localPlayer.Character)

						if v8 then
							v8.AssemblyLinearVelocity = Vector3.zero
							v8.CFrame = CFrame.new(Vector3.new(-6023.5767, 5469.7197, 2203.3083))
						end

						if not (not Alive() or (fn9(localPlayer.Character).Position - Vector3.new(-6023.5767, 5469.7197, 2203.3083)).magnitude < 3000 or n5 >= 3) then
							continue
						end
						break
					end
				end

				if arg.Y >= 200 and arg.Y < 4000 and (fn9(localPlayer.Character).Position - Vector3.new(-4166.61, 1093.698, -347.16226)).magnitude > 3000 and (arg - Vector3.new(-4166.61, 1093.698, -347.16226)).magnitude < 3000 then
					local n5 = 0

					while true do
						task.wait(0.2)
						n5 += 1

						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4166.61, 1093.698, -347.16226))
						end)

						local v8 = fn9(localPlayer.Character)

						if v8 then
							v8.AssemblyLinearVelocity = Vector3.zero
							v8.CFrame = CFrame.new(Vector3.new(-4166.61, 1093.698, -347.16226))
						end

						if not (not Alive() or (fn9(localPlayer.Character).Position - Vector3.new(-4166.61, 1093.698, -347.16226)).magnitude < 3000 or n5 >= 3) then
							continue
						end
						break
					end
				end

				if flag3 and not flag2 then
					local n5 = 0

					while true do
						task.wait(0.15)
						n5 += 1

						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.6885, 6.7369504, -1926.2141))
						end)

						local v8 = fn9(localPlayer.Character)

						if v8 then
							v8.AssemblyLinearVelocity = Vector3.zero
							v8.CFrame = CFrame.new(Vector3.new(3864.6885, 6.7369504, -1926.2141) + Vector3.new(0, 15, 0))
						end

						if not (not Alive() or fn9(localPlayer.Character) and (fn9(localPlayer.Character).Position - Vector3.new(3864.6885, 6.7369504, -1926.2141)).magnitude < 2000 or n5 >= 3) then
							continue
						end
						break
					end
				end
			end

			if Sea2 then
				if (fn9(localPlayer.Character).Position - Vector3.new(923.2125, 126.976006, 32852.832)).magnitude > 3000 and (arg - Vector3.new(923.2125, 126.976006, 32852.832)).magnitude < 1000 then
					local n5 = 0

					while true do
						task.wait(0.2)
						n5 += 1

						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.2125, 126.976006, 32852.832))
						end)

						if not ((fn9(localPlayer.Character).Position - Vector3.new(923.2125, 126.976006, 32852.832)).magnitude < 2000 or n5 >= 3) then
							continue
						end
						break
					end
				end

				if (fn9(localPlayer.Character).Position - Vector3.new(923.2125, 126.976006, 32852.832)).magnitude < 3000 and (arg - Vector3.new(923.2125, 126.976006, 32852.832)).magnitude > 3000 then
					local n5 = 0

					while true do
						task.wait(0.2)
						n5 += 1

						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6508.558, 89.034996, -132.83954))
						end)

						if not ((fn9(localPlayer.Character).Position - Vector3.new(923.2125, 126.976006, 32852.832)).magnitude > 2000 or n5 >= 3) then
							continue
						end
						break
					end
				end
			end

			if Sea3 then
				local position = typeof(arg) == "CFrame" and arg.Position or arg
				local v8 = fn16(localPlayer.Character)
				local v9 = fn16(position)

				if v8 and not v9 and fn15(position, Vector3.new(11256, -2138, 9888)) > 2500 then
					StatusFarming = "Auto-Exit Submerged (Target Outside)"

					if fn17(fn19) then
						task.wait(0.5)
					end
				end

				if not v8 and v9 then
					if (fn9(localPlayer.Character).Position - Vector3.new(-16274.825, 25.220568, 1375.0765)).magnitude > 12 then
						DoTween2(CFrame.new(Vector3.new(-16274.825, 25.220568, 1375.0765)), fn19, arg3, tbl13)
					end

					if (fn9(localPlayer.Character).Position - Vector3.new(-16274.825, 25.220568, 1375.0765)).magnitude <= 15 then
						pcall(function()
							local net = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net")
							net["RF/SubmarineWorkerSpeak"]:InvokeServer("AskKilledTikiBoss")
							net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
						end)

						local now = tick()

						while true do
							task.wait(0.2)
							if not (fn16() or tick() - now > 5) then
								continue
							end
							break
						end

						if not fn16() then
							improvedTeleport(Vector3.new(11256, -2138, 9888) + Vector3.new(0, 50, 0))
							task.wait(0.5)
						end
					end
				end

				if (fn9(localPlayer.Character).Position - Vector3.new(-1864.41, 4532.9707, -14661.355)).magnitude > 1500 then
				end

				if (fn9(localPlayer.Character).Position - Vector3.new(28286.355, 14896.508, 102.624695)).magnitude <= 4000 and (arg - Vector3.new(28286.355, 14896.508, 102.624695)).magnitude >= 4000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "requestEntrance", Vector3.new(-5069.1216, 314.5155, -3000.4673) }))
					task.wait(0.2)
				end
			end
		end

		local v8 = arg3
		local humanoidRootPart

		if arg3 then
			humanoidRootPart = v8
		else
			humanoidRootPart = localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart")
		end

		if not humanoidRootPart then
			return
		end
		local now = tick()
		local position = humanoidRootPart.Position
		local n5 = arg - position
		local now2 = tick()
		local n6 = (position - arg).magnitude / n4
		TweeningV2 = true
		local n7 = 0
		local exitTo2 = nil
		local exitTo, flag2, n8

		while true do
			local v9 = Alive() and fn19()
			exitTo = nil

			while true do
				local flag3 = v9 and heartbeat:Wait() and (humanoidRootPart.Position - arg).magnitude > 1 and TweeningV2
				flag2 = false

				if flag3 then
					if not arg3 then
						localPlayer.Character.Humanoid.Sit = false
					end

					n8 = math.min((tick() - now2) / n6, 1)
					humanoidRootPart.CFrame = CFrame.new(position + n5 * n8)

					pcall(function()
						humanoidRootPart.Velocity = Vector3.zero
					end)

					if forceTweenPause or not noTweenPause and getgenv().Setting and getgenv().Setting.Tween and getgenv().Setting.Tween.Pause then
						if tick() - now > 3 then
							task.wait(0.1)
							now = tick()
							n7 += 1

							if n7 >= 5 then
								exitTo = 3
								break
							elseif n8 >= 1 then
								exitTo = 4
								break
							else
								v9 = Alive() and fn19()
								continue
							end
						elseif n8 >= 1 then
							exitTo = 2
							break
						else
							v9 = Alive() and fn19()
							continue
						end
					else
						exitTo = 1
						break
					end
				end

				break
			end

			if exitTo == 1 then
				if n8 >= 1 then
					exitTo2 = 1
					break
				else
					continue
				end
			end

			break
		end

		if exitTo2 ~= 1 then
			if exitTo ~= 2 then
				if exitTo == 3 then
					flag2 = true
				elseif exitTo == 4 then
				end
			end
		end

		local flag3 = Alive() and (humanoidRootPart.Position - arg).magnitude <= 2
		local flag4 = false

		if flag3 then
			humanoidRootPart.CFrame = CFrame.new(arg)
			flag4 = true
		end

		DisconnectLoop(v7)
		TweeningV2 = false
		if flag2 then
			task.wait(0.15)
			return DoTween2(v6 or arg, fn19, arg3, tbl13)
		end

		if not flag4 then
			if not Alive() then
				fn11(false)
			end
		end
	end)

	if result2 then
		print("Tween Error", result2)
	end
end

local function fn19(arg, arg2)
	if Alive() and fn10(arg) then
		DoTween2(NewPos(arg, arg2))
		fn11(true)
	end
end

TeleportToUnderwater = function(arg)
	if not Sea1 or not Alive() then
		return false
	end
	local v6 = fn9(localPlayer.Character)
	if not v6 then
		return false
	end
	local vector = arg and Vector3.new(61163.85, 11.6796875, 1819.7842) or Vector3.new(3864.6885, 6.7369504, -1926.2141)
	local n5 = 0

	while true do
		n5 += 1

		pcall(function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", vector)
		end)

		v6.AssemblyLinearVelocity = Vector3.zero
		v6.CFrame = CFrame.new(vector + Vector3.new(0, arg and 1.5 or 15, 0))
		task.wait(0.15)
		if not (not Alive() or fn9(localPlayer.Character) and (fn9(localPlayer.Character).Position - vector).magnitude < 2000 or n5 >= 4) then
			continue
		end
		break
	end

	return true
end

FixTP = function(arg)
	if arg and Alive() then
		if Sea1 then
			local flag2 = arg == "Fishman Warrior" or arg == "Fishman Commando" or arg == "Fishman Lord" or string.find(arg, "Fishman")
			local v6 = fn9(localPlayer.Character)
			if not v6 then
				return
			end
			local flag3

			if flag2 then
				flag3 = v6.Position.X < 55000 or (v6.Position - Vector3.new(61163.85, 11.6796875, 1819.7842)).magnitude >= 3000
			else
				flag3 = flag2
			end

			if flag3 then
				TeleportToUnderwater(true)
			end

			if not flag2 and (v6.Position.X > 55000 or (v6.Position - Vector3.new(61163.85, 11.6796875, 1819.7842)).magnitude < 3000) then
				TeleportToUnderwater(false)
			end
		end
	end
end

ServerHop = function(arg, arg2, arg3)
	local HttpService2 = game:GetService("HttpService")
	local localPlayer3 = game.Players.LocalPlayer
	local TeleportService_ = game:GetService("TeleportService")
	if not arg3 and CalledServerHop then
		return
	end
	CalledServerHop = true

	if not pcall(function()
		for _, v6 in pairs(HttpService2:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if v6.maxPlayers > v6.playing then
				TeleportService_:TeleportToPlaceInstance(game.PlaceId, v6.id, localPlayer3)
			end
		end
	end) then
		ServerHop(arg, arg2, true)
	end
end

ServerHop = function(arg, arg2, arg3)
	SupportRetard()
	if not arg3 and CalledServerHop then
		return
	end
	print("Hopping")
	CalledServerHop = true
	local tbl13 = {}
	local tbl14 = { (math.random(1, 120)) }
	local response = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(tbl14))

	if response then
		for k, v6 in pairs(response) do
			for k2, v7 in pairs(v6) do
				if k2 == "Count" and v7 <= 11 and (arg and v7 >= arg or not arg) and (arg2 and v7 <= arg2 or not arg2) then
					table.insert(tbl13, k)
				end
			end
		end

		local jobId = game.JobId
		DangServerHop = true
		local tbl15 = {}

		pcall(function()
			local v6 = game

			for _, v7 in ipairs(game:GetService("HttpService"):JSONDecode(v6:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
				table.insert(tbl15, { v7.id, v7.maxPlayers, v7.playing, v7.ping })
			end
		end)

		for _, v6 in pairs(tbl15) do
			if v6[3] and v6[3] < 12 and (arg2 and v6[3] <= arg2 or not arg2) and (arg and v6[3] >= arg or not arg) then
				table.insert(tbl13, v6[1])
			end
		end

		local n5 = 0

		if #tbl13 > 0 then
			while task.wait(1) and #tbl13 > 0 and game.JobId == jobId do
				n5 += 1
				local n6 = math.random(1, #tbl13)
				game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(tbl13[n6]))
				table.remove(tbl13, n6)
			end
		end

		ServerHop(arg, arg2, true)
	else
		ServerHop(arg, arg2, true)
	end
end

TrueServerHop = function(...)
	local tbl13 = { ... }
	if CalledServerHop then
		return
	end
	ServerHop(table.unpack(tbl13))
	local now = tick()

	while task.wait() and tick() - now < 30 do
	end
end

GetCurrentTool = function(arg, arg2)
	for _, child in pairs(localPlayer.Backpack:GetChildren()) do
		if child:IsA("Tool") and child.ToolTip == arg then
			child:FindFirstChild("Level")
			arg2 = arg2 and child.Name or child
			return arg2
		end
	end

	for _, child in pairs(localPlayer.Character:GetChildren()) do
		if child:IsA("Tool") and child.ToolTip == arg then
			child:FindFirstChild("Level")
			arg2 = arg2 and child.Name
			child = arg2 or child
			return child
		end
	end

	return false
end

local env = _G or getfenv()
env.ScriptStorage = env.ScriptStorage or {}
local scriptStorage = env.ScriptStorage
scriptStorage.Backpack = scriptStorage.Backpack or {}
scriptStorage.Melees = scriptStorage.Melees or {}
scriptStorage.SwordMastery = scriptStorage.SwordMastery or {}
scriptStorage.CurrentMeleeData = scriptStorage.CurrentMeleeData or { Name = "", Mastery = 0 }
scriptStorage.Connections = scriptStorage.Connections or { MeleeConns = {}, ToolLevelConns = {} }

local function fn20()
	if rawget(env, "Remotes") and type(env.Remotes) == "table" and env.Remotes.CommF_ then
		return env.Remotes.CommF_
	end
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local remotes = ReplicatedStorage:FindFirstChild("Remotes")

	if remotes then
		local commF = remotes:FindFirstChild("CommF_")
		if commF and commF:IsA("RemoteFunction") then
			return commF
		end
	end

	local commF = ReplicatedStorage:FindFirstChild("CommF_")
	if commF and commF:IsA("RemoteFunction") then
		return commF
	end
	return nil
end

MeleeToolAliases = {
	Combat = { "Combat" },
	["Black Leg"] = { "Black Leg", "BlackLeg" },
	Electro = { "Electro" },
	["Fishman Karate"] = { "Fishman Karate", "FishmanKarate", "Water Kung Fu", "WaterKungFu" },
	["Dragon Claw"] = { "Dragon Claw", "DragonClaw", "Dragon Breath", "DragonBreath" },
	Superhuman = { "Superhuman" },
	["Death Step"] = { "Death Step", "DeathStep" },
	["Sharkman Karate"] = { "Sharkman Karate", "SharkmanKarate", "Water Kung Fu V2", "WaterKungFuV2" },
	["Electric Claw"] = { "Electric Claw", "ElectricClaw", "Electro V2", "ElectroV2" },
	["Dragon Talon"] = { "Dragon Talon", "DragonTalon", "Dragon Breath V2", "DragonBreathV2" },
	Godhuman = { "Godhuman", "God Human", "GodHuman" },
	SanguineArt = { "SanguineArt", "Sanguine Art", "Sanguine" },
}

MeleesTable = {
	"Black Leg",
	"Electro",
	"Fishman Karate",
	"Dragon Claw",
	"Superhuman",
	"Death Step",
	"Sharkman Karate",
	"Electric Claw",
	"Dragon Talon",
	"Godhuman",
	"SanguineArt",
}

MeleesId = {
	"BuyBlackLeg",
	"BuyElectro",
	"BuyFishmanKarate",
	"BlackbeardReward",
	"BuySuperhuman",
	"BuyDeathStep",
	"BuySharkmanKarate",
	"BuyElectricClaw",
	"BuyDragonTalon",
	"BuyGodhuman",
	"BuySanguineArt",
}

local tbl13 = {}

for i, v6 in ipairs(MeleesTable) do
	local v7 = MeleesId[i]

	if v7 then
		tbl13[v6] = v7
		tbl13[string.lower(v6)] = v7
		tbl13[string.gsub(string.lower(v6), "%s+", "")] = v7
		local v8 = MeleeToolAliases[v6]

		if v8 then
			for _, v9 in ipairs(v8) do
				tbl13[v9] = v7
				tbl13[string.lower(v9)] = v7
				tbl13[string.gsub(string.lower(v9), "%s+", "")] = v7
			end
		end
	end
end

local tbl14 = { ItemConfig = nil, ItemReplication = nil, InventoryController = nil }

local function fn21()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")

	if not tbl14.ItemConfig then
		pcall(function()
			local itemConfig = ReplicatedStorage:FindFirstChild("ItemConfig")

			if itemConfig and itemConfig:IsA("ModuleScript") then
				tbl14.ItemConfig = require(itemConfig)
			end
		end)
	end

	if not tbl14.ItemReplication then
		pcall(function()
			local util = ReplicatedStorage:FindFirstChild("Util")
			util = util and util:FindFirstChild("ItemReplication") or ReplicatedStorage:FindFirstChild("ItemReplication")

			if util and util:IsA("ModuleScript") then
				tbl14.ItemReplication = require(util)
			end
		end)
	end

	if not tbl14.InventoryController then
		pcall(function()
			local controllers = ReplicatedStorage:FindFirstChild("Controllers")
			controllers = controllers and controllers:FindFirstChild("UI")
			controllers = controllers and controllers:FindFirstChild("Inventory") or ReplicatedStorage:FindFirstChild("InventoryController") or ReplicatedStorage:FindFirstChild("Controllers") and ReplicatedStorage.Controllers:FindFirstChild("Inventory")

			if controllers and controllers:IsA("ModuleScript") then
				tbl14.InventoryController = rawget(env, "IC") or require(controllers)
			end
		end)
	end

	return tbl14
end

local function fn22(arg, arg2)
	local itemReplication = fn21().ItemReplication

	if itemReplication and arg and arg2 then
		local n5 = 1

		for _, v6 in ipairs({ "Quantity", "Amount", "Stack", "Count" }) do
			if itemReplication[v6] and typeof(itemReplication[v6].readClient) == "function" then
				local ok2, result2 = pcall(function()
					return itemReplication[v6].readClient(arg, arg2)
				end)

				if ok2 and typeof(result2) == "number" and result2 > n5 then
					n5 = result2
				end
			end
		end

		return n5
	end

	return 1
end

local function fn23(arg, arg2)
	local itemReplication = fn21().ItemReplication

	if itemReplication and itemReplication.Mastery and typeof(itemReplication.Mastery.readClient) == "function" and arg and arg2 then
		local ok2, result2 = pcall(function()
			return itemReplication.Mastery.readClient(arg, arg2)
		end)

		if ok2 and typeof(result2) == "number" then
			return result2
		end
	end

	return nil
end

ResolveInventoryItemConfig = function(arg)
	if not arg then
		return nil
	end
	local itemConfig = fn21().ItemConfig
	if not itemConfig then
		return nil
	end

	local ok2, result2 = pcall(function()
		return itemConfig.match(arg)
	end)

	if not ok2 or result2 == nil then
		return nil
	end
	local flag2 = type(result2) == "table"

	if flag2 then
		flag2 = result2.Name or result2.Index or result2.Display or result2.Moveset
	end

	if flag2 then
		return result2
	end

	if type(result2) == "table" and type(result2.asNullable) == "function" then
		local ok3, result3 = pcall(function()
			return result2:asNullable()
		end)

		if ok3 and result3 then
			return result3
		end
	end

	if type(result2) == "table" and type(result2.unwrap) == "function" then
		local ok3, result3 = pcall(function()
			if type(result2.isOk) == "function" then
				if result2:isOk() then
					return result2:unwrap()
				end
				return
			end

			return result2:unwrap()
		end)

		if ok3 and result3 then
			return result3
		end
	end

	return nil
end

MergeInventoryEntry = function(arg, arg2, arg3)
	if type(arg) ~= "table" or type(arg2) ~= "string" or arg2 == "" or type(arg3) ~= "table" then
		return nil
	end
	local v6 = string.lower(arg2)
	local tbl15 = arg[arg2] or arg[v6]

	if type(tbl15) ~= "table" then
		tbl15 = { Name = arg2 }
	end

	for k, v7 in pairs(arg3) do
		if v7 ~= nil then
			if k == "Count" or k == "Amount" or k == "Quantity" then
				local count = math.max(tonumber(tbl15.Count) or tonumber(tbl15.Amount) or 0, tonumber(v7) or 0)
				tbl15.Count = count
				tbl15.Amount = count
				tbl15.Quantity = count
			elseif k ~= "Name" or not tbl15.Name then
				tbl15[k] = v7
			end
		end
	end

	tbl15.Name = tbl15.Name or arg2
	arg[arg2] = tbl15
	arg[v6] = tbl15
	return tbl15
end

ReadItemFromInventoryController = function(arg, arg2)
	local backpack = arg2 or scriptStorage.Backpack
	local inventoryController = fn21().InventoryController
	local n5 = 0
	local flag2 = false

	if inventoryController then
		local ok2, result2 = pcall(function()
			return inventoryController:GetIfInitialized()
		end)

		if ok2 and result2 then
			local ok3, result3 = pcall(function()
				return inventoryController:GetTiles()
			end)

			if ok3 and type(result3) == "table" then
				local v6 = arg and string.lower(arg)
				local v7 = v6 and string.gsub(v6, "%s+", "")

				for _, v8 in ipairs(result3) do
					if type(v8) == "table" and v8.ItemId then
						local v9 = ResolveInventoryItemConfig(v8.ItemId)
						local storageKey = v9 and v9.Index and v9.Index.StorageKey
						local title = v9 and v9.Display and (v9.Display.Title or v9.Display.Name) or v9 and v9.DisplayName or v9 and v9.Name
						storageKey = storageKey or title or tostring(v8.ItemId)
						local flag3 = arg == nil

						if arg and storageKey then
							local v10 = string.lower(tostring(storageKey))
							local v11 = string.gsub(v10, "%s+", "")
							local v12 = title and string.lower(tostring(title))
							local v13 = v12 and string.gsub(v12, "%s+", "")
							local v14 = string.lower(tostring(v8.ItemId))
							flag3 = v10 == v6 or v11 == v7 or v12 and (v12 == v6 or v13 == v7) or v14 == v6
						end

						if flag3 then
							local n6 = 1

							if v8.NetworkedUID then
								n6 = fn22(v8.ItemId, v8.NetworkedUID)
							end

							if type(v8.Data) == "table" then
								local num = tonumber(v8.Data.Amount or v8.Data.Quantity or v8.Data.Count)

								if num and num > n6 then
									n6 = num
								end
							end

							local num = tonumber(v8.Amount or v8.Quantity or v8.Count)

							if num and num > n6 then
								n6 = num
							end

							if type(v8.GetAmount) == "function" then
								pcall(function()
									local num2 = tonumber(v8:GetAmount())

									if num2 and num2 > n6 then
										n6 = num2
									end
								end)
							end

							local n7 = tonumber(n6) or 1

							if n7 > 0 then
								n5 += n7

								if type(backpack) == "table" then
									MergeInventoryEntry(backpack, storageKey, {
										Name = storageKey,
										DisplayName = title or storageKey,
										ItemId = v8.ItemId,
										Count = n7,
										Amount = n7,
										Quantity = n7,
										Mastery = fn23(v8.ItemId, v8.NetworkedUID) or 0,
										Type = v9 and v9.Type or nil,
										Value = v9 and v9.Quality and tonumber(v9.Quality.MoneyPrice) or nil,
									})
								end
							end
						end
					end
				end

				flag2 = true
			end
		end
	end

	return n5, flag2
end

RefreshInventory = function()
	local backpack = {}
	local v6, v7 = ReadItemFromInventoryController(nil, backpack)
	local v8 = fn20()
	local flag2 = false

	if v8 then
		local ok2, result2 = pcall(function()
			return v8:InvokeServer("getInventory")
		end)

		if ok2 and type(result2) == "table" then
			for _, v9 in pairs(result2) do
				if type(v9) == "table" then
					local itemId = v9.ItemId and ResolveInventoryItemConfig(v9.ItemId) or nil
					local storageKey = itemId and itemId.Index and itemId.Index.StorageKey or v9.Name or itemId and itemId.Name

					if type(storageKey) == "string" and storageKey ~= "" then
						local n5 = tonumber(v9.Count or v9.Amount or v9.Quantity) or 1
						local v10 = tonumber
						local mastery = v9.Mastery
						local mastery2

						if mastery then
							mastery2 = mastery
						else
							mastery2 = v9.Data and v9.Data.Mastery
						end

						mastery2 = mastery2 or 0
						local n6 = v10(mastery2) or 0
						local title = itemId and itemId.Display and (itemId.Display.Title or itemId.Display.Name) or itemId and itemId.Name or v9.DisplayName or v9.Name or storageKey
						local num = tonumber(v9.Price or v9.TradePrice)

						if not num or num <= 0 then
							num = itemId and itemId.Quality and tonumber(itemId.Quality.MoneyPrice) or nil
						end

						if not num or num <= 0 then
							num = tonumber(v9.Value)
						end

						local v11 = MergeInventoryEntry(backpack, storageKey, {
							Name = storageKey,
							DisplayName = title,
							ItemId = v9.ItemId,
							Count = n5,
							Amount = n5,
							Quantity = n5,
							Type = v9.Type or itemId and itemId.Type,
							Value = num,
							Mastery = n6,
							MasteryRequirements = v9.MasteryRequirements or {},
						})

						if v11 and type(v9.Name) == "string" and v9.Name ~= "" and v9.Name ~= storageKey then
							backpack[v9.Name] = v11
							backpack[string.lower(v9.Name)] = v11
						end
					end
				end
			end

			flag2 = true
		end
	end

	if v7 or flag2 then
		scriptStorage.Backpack = backpack
	end

	return v7 or flag2
end

CheckSpecialMicrochip = function()
	local localPlayer3 = game:GetService("Players").LocalPlayer
	local character = localPlayer3 and localPlayer3.Character
	localPlayer3 = localPlayer3 and localPlayer3:FindFirstChild("Backpack")
	local tbl15 = { ["special microchip"] = true, specialmicrochip = true, microchip = true }

	if character then
		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Tool") then
				local v6 = string.gsub(string.lower(child.Name), "%s+", "")
				if tbl15[string.lower(child.Name)] or tbl15[v6] then
					return true
				end
			end
		end
	end

	if localPlayer3 then
		for _, child in ipairs(localPlayer3:GetChildren()) do
			if child:IsA("Tool") then
				local v6 = string.gsub(string.lower(child.Name), "%s+", "")
				if tbl15[string.lower(child.Name)] or tbl15[v6] then
					return true
				end
			end
		end
	end

	local tools = scriptStorage.Tools

	if type(tools) == "table" then
		if tools["Special Microchip"] or tools["special microchip"] or tools.Microchip then
			return true
		end
	end

	local backpack = scriptStorage.Backpack

	if type(backpack) == "table" then
		if backpack["Special Microchip"] or backpack["special microchip"] or backpack.Microchip then
			return true
		end
	end

	return false
end

HasMeleeTool = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return false
	end
	local localPlayer3 = game:GetService("Players").LocalPlayer
	local character = localPlayer3 and localPlayer3.Character
	localPlayer3 = localPlayer3 and localPlayer3:FindFirstChild("Backpack")
	local tbl15 = MeleeToolAliases[arg] or { arg }
	local tbl16 = {}

	for _, v6 in ipairs(tbl15) do
		tbl16[string.lower(v6)] = true
		tbl16[string.gsub(string.lower(v6), "%s+", "")] = true
	end

	for _, v6 in ipairs(tbl15) do
		if character and character:FindFirstChild(v6) or localPlayer3 and localPlayer3:FindFirstChild(v6) then
			return true
		end
	end

	if character then
		for _, child in ipairs(character:GetChildren()) do
			local isTool = child:IsA("Tool")

			if isTool then
				isTool = child.ToolTip == "Melee" or child:FindFirstChild("Melee") or child:FindFirstChild("Combat")
			end

			if isTool then
				local v6 = string.lower(child.Name)
				local v7 = string.gsub(v6, "%s+", "")
				if tbl16[v6] or tbl16[v7] then
					return true
				end
			end
		end
	end

	if localPlayer3 then
		for _, child in ipairs(localPlayer3:GetChildren()) do
			local isTool = child:IsA("Tool")

			if isTool then
				isTool = child.ToolTip == "Melee" or child:FindFirstChild("Melee") or child:FindFirstChild("Combat")
			end

			if isTool then
				local v6 = string.lower(child.Name)
				local v7 = string.gsub(v6, "%s+", "")
				if tbl16[v6] or tbl16[v7] then
					return true
				end
			end
		end
	end

	return false
end

GetMeleeIdByName = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return nil
	end
	return tbl13[arg] or tbl13[string.lower(arg)] or tbl13[string.gsub(string.lower(arg), "%s+", "")]
end

local tbl15 = { LastUpdate = 0, Tiles = nil, UpdateInterval = 2 }

checkMeleeMastery = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return false, "", 0
	end
	local tbl16 = MeleeToolAliases[arg] or { arg }
	local tbl17 = {}

	for _, v6 in ipairs(tbl16) do
		tbl17[string.lower(v6)] = true
		tbl17[string.gsub(string.lower(v6), "%s+", "")] = true
	end

	local v6 = fn21()
	local inventoryController = v6.InventoryController
	local itemReplication = v6.ItemReplication

	if inventoryController and v6.ItemConfig and itemReplication then
		pcall(function()
			local now = os.clock()

			if not tbl15.Tiles or now - tbl15.LastUpdate > tbl15.UpdateInterval then
				if inventoryController:GetIfInitialized() then
					tbl15.Tiles = inventoryController:GetTiles()
					tbl15.LastUpdate = now
				end
			end

			if type(tbl15.Tiles) == "table" then
				for _, tile in ipairs(tbl15.Tiles) do
					if type(tile) == "table" and tile.ItemId then
						local v7 = ResolveInventoryItemConfig(tile.ItemId)

						if (v7 and v7.Moveset and v7.Moveset.Type == "FightingStyle" or v7 and v7.Type == "Melee" or v7 and v7.Category == "Melee") and v7.Index and v7.Index.StorageKey then
							local v8 = string.lower(v7.Index.StorageKey)
							local v9 = string.gsub(v8, "%s+", "")

							if tbl17[v8] or tbl17[v9] then
								local networkedUID = itemReplication.Mastery and type(itemReplication.Mastery.readClient) == "function" and tile.NetworkedUID
								local n5 = 0

								if networkedUID then
									n5 = itemReplication.Mastery.readClient(tile.ItemId, tile.NetworkedUID) or 0
								end

								return true, arg, tonumber(n5) or 0
							end
						end
					end
				end
			end
		end)
	end

	local localPlayer3 = game:GetService("Players").LocalPlayer
	local character = localPlayer3 and localPlayer3.Character
	local backpack = localPlayer3 and localPlayer3:FindFirstChild("Backpack")
	local flag2 = false
	local n5 = 0

	local function fn24(arg2)
		if not arg2 then
			return
		end

		for _, child in ipairs(arg2:GetChildren()) do
			if child:IsA("Tool") then
				local v7 = string.lower(child.Name)
				local v8 = string.gsub(v7, "%s+", "")

				if tbl17[v7] or tbl17[v8] then
					flag2 = true
					local level = child:FindFirstChild("Level")

					if level and (level:IsA("IntValue") or level:IsA("NumberValue") or level:IsA("ValueBase")) then
						local n6 = tonumber(level.Value) or 0

						if n5 < n6 then
							n5 = n6
						end
					end
				end
			end
		end
	end

	fn24(character)
	fn24(backpack)
	localPlayer3 = localPlayer3 and localPlayer3:FindFirstChild("PlayerGui")
	localPlayer3 = localPlayer3 and localPlayer3:FindFirstChild("Main")
	local skills = localPlayer3 and localPlayer3:FindFirstChild("Skills")

	if skills then
		for _, v7 in ipairs(tbl16) do
			local v8 = skills:FindFirstChild(v7)

			if v8 then
				for _, descendant in ipairs(v8:GetDescendants()) do
					if descendant:IsA("TextLabel") and descendant.Visible and string.find(descendant.Text, "Mastery") then
						local num = tonumber(string.match(descendant.Text, "(%d+)%s*/%s*%d+") or string.match(descendant.Text, "%d+"))

						if num and num > n5 then
							n5 = num
							flag2 = true
						end
					end
				end
			end
		end
	end

	local melees = scriptStorage.Melees

	if type(melees) == "table" then
		for _, v7 in ipairs(tbl16) do
			local num = tonumber(melees[v7] or melees[string.lower(v7)])

			if num and num > n5 then
				n5 = num
				flag2 = true
			end
		end
	end

	local value = rawget(env, "Storage")

	if type(value) == "table" and type(value.Get) == "function" then
		if tbl17.godhuman and value:Get("Unlocked_Godhuman") then
			flag2 = true
		end
	end

	if flag2 or n5 > 0 then
		return true, arg, n5
	end
	return false, arg, 0
end

CheckCurrentMeleeProgress = function()
	local value = rawget(env, "MeleePrices")
	if type(value) ~= "table" then
		return nil
	end

	for _, v6 in ipairs(MeleesTable) do
		if v6 == "SanguineArt" then
			break
		end
		local v7 = value[v6]

		if type(v7) == "table" and v7.NextLevelRequirement then
			local v8, v9, v10 = checkMeleeMastery(v6)
			if v8 and v10 < v7.NextLevelRequirement then
				return { v6, v10, v7.NextLevelRequirement }
			end
		end
	end

	return nil
end

howtotrickfightmelee = function(arg)
	if not (arg and typeof(arg) == "Instance" and arg:IsA("Tool")) then
		return
	end
	local name = arg.Name
	local level = arg:FindFirstChild("Level")

	if level and (level:IsA("IntValue") or level:IsA("NumberValue") or level:IsA("ValueBase")) then
		local n5 = tonumber(level.Value) or 0
		scriptStorage.SwordMastery = scriptStorage.SwordMastery or {}
		scriptStorage.SwordMastery[name] = n5
		scriptStorage.Connections.ToolLevelConns = scriptStorage.Connections.ToolLevelConns or {}
		local v6 = scriptStorage.Connections.ToolLevelConns[name]

		if v6 and typeof(v6) == "RBXScriptConnection" and v6.Connected then
			v6:Disconnect()
		end

		local connection = level.Changed:Connect(function(arg2)
			local n6 = tonumber(arg2) or 0
			scriptStorage.SwordMastery[name] = n6
			local forceToUseSword = scriptStorage.ForceToUseSword

			if type(forceToUseSword) == "table" and forceToUseSword[1] == name then
				forceToUseSword[2] = n6

				if n6 >= 350 then
					scriptStorage.ForceToUseSword = nil
				end
			end
		end)

		scriptStorage.Connections.ToolLevelConns[name] = connection
		local connection2 = nil

		connection2 = arg.AncestryChanged:Connect(function(child, parent)
			if not parent then
				if connection and connection.Connected then
					connection:Disconnect()
				end

				if connection2 and connection2.Connected then
					connection2:Disconnect()
				end

				scriptStorage.Connections.ToolLevelConns[name] = nil
			end
		end)
	end

	if arg.ToolTip == "Melee" or arg:FindFirstChild("Melee") or arg:FindFirstChild("Combat") then
		scriptStorage.Connections.MeleeConns = scriptStorage.Connections.MeleeConns or {}
		local v6 = name
		local v7 = scriptStorage.Connections.MeleeConns[v6]

		if v7 and typeof(v7) == "RBXScriptConnection" and v7.Connected then
			v7:Disconnect()
		end

		local isIntValue

		if level then
			isIntValue = level:IsA("IntValue") or level:IsA("NumberValue") or level:IsA("ValueBase")
		else
			isIntValue = level
		end

		if isIntValue then
			local connection = level.Changed:Connect(function(arg2)
				local mastery = tonumber(arg2) or 0
				scriptStorage.Melees[v6] = mastery
				scriptStorage.CurrentMeleeData.Name = v6
				scriptStorage.CurrentMeleeData.Mastery = mastery

				if type(refreshmelee) == "function" then
					refreshmelee()
				end
			end)

			scriptStorage.Connections.MeleeConns[v6] = connection
			local mastery = tonumber(level.Value) or 0
			scriptStorage.CurrentMeleeData.Name = v6
			scriptStorage.CurrentMeleeData.Mastery = mastery
			scriptStorage.Melees[v6] = mastery

			if type(refreshmelee) == "function" then
				refreshmelee()
			end

			local connection2 = nil

			connection2 = arg.AncestryChanged:Connect(function(child, parent)
				if not parent then
					if connection and connection.Connected then
						connection:Disconnect()
					end

					if connection2 and connection2.Connected then
						connection2:Disconnect()
					end

					scriptStorage.Connections.MeleeConns[v6] = nil
				end
			end)
		else
			scriptStorage.CurrentMeleeData.Name = v6
			local v8, v9, v10 = checkMeleeMastery(v6)
			scriptStorage.CurrentMeleeData.Mastery = v10
			scriptStorage.Melees[v6] = v10

			if type(refreshmelee) == "function" then
				refreshmelee()
			end
		end
	end
end

refreshmelee = function(arg)
	local str = ""
	local melees = scriptStorage.Melees

	if type(melees) == "table" then
		for k, melee in pairs(melees) do
			str ..= tostring(k) .. ": " .. tostring(melee) .. " "
		end
	end

	if str == "" then
		str = "[0]"
	end

	if arg then
		return str
	end

	if scriptStorage.Interface and type(SetText) == "function" then
		pcall(function()
			SetText("Melees", str)
		end)
	elseif type(rawget(env, "SetText")) == "function" then
		pcall(function()
			env.SetText("Melees", str)
		end)
	end

	return str
end

env.ResolveInventoryItemConfig = ResolveInventoryItemConfig
env.MergeInventoryEntry = MergeInventoryEntry
env.ReadItemFromInventoryController = ReadItemFromInventoryController
env.RefreshInventory = RefreshInventory
env.checkItemQuantity = checkItemQuantity
env.CheckSpecialMicrochip = CheckSpecialMicrochip
env.HasMeleeTool = HasMeleeTool
env.GetMeleeIdByName = GetMeleeIdByName
env.checkMeleeMastery = checkMeleeMastery
env.CheckCurrentMeleeProgress = CheckCurrentMeleeProgress
env.howtotrickfightmelee = howtotrickfightmelee
env.refreshmelee = refreshmelee
env.MeleeToolAliases = MeleeToolAliases
env.MeleesTable = MeleesTable
env.MeleesId = MeleesId

CheckItem = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return false
	end
	local localPlayer3 = game:GetService("Players").LocalPlayer
	local character = localPlayer3 and localPlayer3.Character
	localPlayer3 = localPlayer3 and localPlayer3:FindFirstChild("Backpack")
	if character and character:FindFirstChild(arg) or localPlayer3 and localPlayer3:FindFirstChild(arg) then
		return true
	end

	if arg == "Special Microchip" or arg == "special microchip" then
		return CheckSpecialMicrochip()
	end

	if HasMeleeTool(arg) then
		return true
	end
	local v6, v7, v8 = checkItemQuantity(arg)
	if v6 and v8 > 0 then
		return true
	end
	return false
end

Equip = function(arg)
	pcall(function()
		local v6 = localPlayer.Backpack:FindFirstChild(arg)
		if localPlayer.Character:FindFirstChild("Humanoid") and v6 then
			localPlayer.Character:FindFirstChild("Humanoid"):EquipTool(v6)
			return true
		end

		if localPlayer.Character:FindFirstChild(arg) then
			return true
		end
	end)
end

ClickOnPart = function(arg)
	local VirtualInputManager2 = game:GetService("VirtualInputManager")
	local currentCamera = workspace.CurrentCamera
	local v6 = currentCamera:WorldToViewportPoint(arg.Position)
	local x = v6.X
	local y = v6.Y
	currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, arg.Position)
	VirtualInputManager2:SendMouseButtonEvent(x, y, 0, true, game, 0)
	task.wait(0.5)
	VirtualInputManager2:SendMouseButtonEvent(x, y, 0, false, game, 0)
end

getgenv().LocalPlayerInv = {}
getgenv().GetServerData = {}

task.spawn(function()
	while task.wait(1) do
		pcall(function()
			local commF = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes") and game:GetService("ReplicatedStorage").Remotes:FindFirstChild("CommF_") or game:GetService("ReplicatedStorage"):FindFirstChild("CommF_")
			if not commF then
				return
			end
			local response = commF:InvokeServer("getInventory")
			local tbl16 = {}

			pcall(function()
				tbl16 = require(game.ReplicatedStorage.Controllers.SkinController).GetInventory()
			end)

			local tbl17 = { "Gun", "Wear", "Sword" }
			local tbl18 = { "Blox Fruit", "Gun", "Wear", "Sword", "Material" }

			if response and type(response) == "table" then
				local localPlayerInv = { All = response, Weapons = {} }

				for _, v6 in pairs(response) do
					if type(v6) == "table" and v6.Type then
						if not localPlayerInv[v6.Type] then
							localPlayerInv[v6.Type] = {}
						end

						if table.find(tbl17, v6.Type) then
							table.insert(localPlayerInv.Weapons, v6)
						end

						table.insert(localPlayerInv[v6.Type], v6)
					end
				end

				if type(tbl16) == "table" then
					for _, v6 in pairs(tbl16) do
						if type(v6) == "table" and v6.Type then
							if not localPlayerInv[v6.Type] then
								localPlayerInv[v6.Type] = {}
							end

							if tonumber(v6.Count) and tonumber(v6.Count) > 0 then
								table.insert(localPlayerInv[v6.Type], v6)
							end
						end
					end
				end

				for _, v6 in pairs(tbl18) do
					if not localPlayerInv[v6] then
						localPlayerInv[v6] = {}
					end
				end

				getgenv().LocalPlayerInv = localPlayerInv
			end

			if Sea2 or Sea3 then
				pcall(function()
					getgenv().GetServerData.ColorDealer = commF:InvokeServer("ColorsDealer", "1")
				end)
			end
		end)
	end
end)

local lib3 = loadstring(game:HttpGet("https://pastefy.app/XY37yNsQ/raw"))()

MainRejoin = function()
	spawn(function()
		task.wait(60)
		game:Shutdown()
	end)

	game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", game.JobId)
end

MainTravel = function(arg, arg2, arg3)
	local ok2, result2 = pcall(function()
		return lib3:CreateScreen({ Duration = arg, Reason = arg2 })
	end)

	if not ok2 then
		print("[DEBUG] CreateScreen failed: " .. tostring(result2) .. ", traveling directly")

		while true do
			Travel(arg3)
			task.wait(5)
		end
	else
		if result2 ~= "Success" then
			task.wait(15)
			return
		end

		while true do
			Travel(arg3)
			task.wait(5)
		end
	end
end

MainServerHop = function(arg, arg2, ...)
	local tbl16 = { ... }

	local ok2, result2 = pcall(function()
		return lib3:CreateScreen({ Duration = arg, Reason = arg2 })
	end)

	if not ok2 or result2 == "Success" then
		TrueServerHop(table.unpack(tbl16))
	else
		task.wait(15)
	end
end

GetWeaponSmith = function(arg)
	local tbl16 = { ["0"] = {}, ["1"] = {}, ["2"] = {}, ["3"] = {}, ["4"] = {} }
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")

	if response then
		for _, v6 in pairs(response) do
			if v6.Type == arg and not DataSave.BlackSmith[v6.Name] then
				if tbl16[tostring(v6.Rarity)] then
					local name = v6.Name
					table.insert(tbl16[tostring(v6.Rarity)], name)
				else
					print("Errored At ", v6.Rarity)
				end
			end
		end

		for i = 4, 1, -1 do
			local v6, v7, v8 = pairs(tbl16[tostring(i)])
			local v9 = table.pack(i_2())
			if v9[1] then
				return v9[3]
			end
		end

		return
	end

	return GetWeaponSmith()
end

local places = {}

for k in pairs(tbl5.Places[currentPlaceKey]) do
	table.insert(places, k)
end

SwitchWeaponSmith = function(arg)
	local v6 = GetWeaponSmith(arg)

	if v6 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", v6)
	end
end

local function fn24(arg)
	for _, child in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
		if child.Name == arg then
			return child
		end
	end

	for _, child in pairs(workspace.NPCs:GetChildren()) do
		if child.Name == arg then
			return child
		end
	end
end

MirageFunctions = {
	GetFruitDealerNPC = function()
		return fn24("Advanced Fruit Dealer")
	end,
	GetMirageIsland = function()
		return game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
	end,
	LookAtMoon = function()
		pcall(function()
			local cframe14 = CFrame.new
			local lighting = game.Lighting
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = cframe14(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position + lighting:GetMoonDirection())
		end)

		workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
	end,
}

MirageFunctions.GetGear = function()
	if not MirageFunctions.GetMirageIsland() then
		return
	end
	CheckN = true
	local v6 = pairs
	local v7 = MirageFunctions.GetMirageIsland()

	for _, child in v6(v7:GetChildren()) do
		if child:IsA("MeshPart") and child.Name == "Part" and child.Transparency ~= 1 then
			return child
		end
	end

	CheckN = false
end

MirageFunctions.TweenGear = function()
	local v6 = MirageFunctions.GetGear()

	if v6 then
		CheckN = true

		pcall(function()
			DoTween2(v6.CFrame, function()
				return v6 and v6.Parent
			end)
		end)

		CheckN = false
	end
end

MirageFunctions.IsRendered = function()
	if not MirageFunctions.GetMirageIsland() then
		return
	end

	if #MirageFunctions.GetMirageIsland().npcspawn:GetChildren() == 0 then
		return
	end
	return true
end

MirageFunctions.GetHighestPlace = function()
	if not MirageFunctions.GetMirageIsland() then
		return
	end

	if not MirageFunctions.IsRendered() then
		return
	end
	local tbl16 = { "BiggTree" }
	local v6 = ipairs
	local v7 = MirageFunctions.GetMirageIsland()
	local n5 = 0
	local v8 = nil

	for _, descendant in v6(v7:GetDescendants()) do
		if descendant.ClassName == "Model" and not table.find(tbl16, descendant.Name) then
			local y = descendant.WorldPivot.Y

			if y > n5 then
				n5 = y
				v8 = descendant
			end
		end
	end

	return v8
end

MirageFunctions.TweenFruitDealer = function()
	local v6 = MirageFunctions.GetFruitDealerNPC()

	if v6 then
		pcall(function()
			DoTween2(v6.Head, function()
				return v6 and v6.Head
			end)
		end)
	end
end

MirageFunctions.TweenHighestPlace = function()
	if not MirageFunctions.IsRendered() then
		DoTween2(MirageFunctions.GetMirageIsland().WorldPivot.Position)
		task.wait(2)
	end

	local v6 = MirageFunctions.GetHighestPlace()

	if v6 then
		DoTween2(v6.WorldPivot + Vector3.new(0, 210, 0))
	end
end

ObservationManager = {}

ObservationManager.IsActive = function()
	if getrenv()._G then
		if getrenv()._G.OM and getrenv()._G.OM.active then
			return getrenv()._G.OM.active
		end
		return false
	end

	for _, child in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
		if child.Name == "ScreenGui" then
			if child:FindFirstChild("ImageLabel") and child:FindFirstChild("ImageLabel").BackgroundColor3 == Color3.fromRGB(255, 0, 0) then
				return true
			end
		end
	end

	return false
end

ObservationManager.SetActive = function(arg)
	if getrenv()._G then
		if getrenv()._G.OM then
			getrenv()._G.OM:setActive(arg)
			game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", arg)
		end
	elseif ObservationManager.IsActive() ~= arg then
		VirtualUser:CaptureController()
		VirtualUser:SetKeyDown("0x65")
		wait()
		VirtualUser:SetKeyUp("0x65")
	end
end

RaceV4Manager = {
	TPCurrentEntrance = function()
		local v6 = RaceEntrances[localPlayer.Data.Race.Value]

		if (fn9(localPlayer.Character).Position - Vector3.new(28286.355, 14896.508, 102.624695)).magnitude >= 4000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.355, 14896.508, 102.624695))
			task.wait(0.5)
		end

		if type(v6) == "table" then
			for _, v7 in pairs(v6) do
				fn9(localPlayer.Character).CFrame = v7
				task.wait(2)
			end
		else
			fn9(localPlayer.Character).CFrame = v6
		end
	end,
	TPAcientClock = function()
		if Alive() then
			if (fn9(localPlayer.Character).Position - Vector3.new(28286.355, 14896.508, 102.624695)).magnitude > 4000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.355, 14896.508, 102.624695))
			end

			task.wait()
			DoTween2(CFrame.new(29551.474609375, 15068.7197265625, -84.865547180175781))
		end
	end,
	TPTempleOfTime = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.355, 14896.508, 102.624695))
	end,
}

ShipController = {
	GetSitBoat = function()
	end,
	GetBoat = function()
		for _, child in pairs(game:GetService("Workspace").Boats:GetChildren()) do
			if child:FindFirstChild("Owner") and child.Owner.Value == game.Players.LocalPlayer and child:FindFirstChild("VehicleSeat") then
				return child
			end
		end

		return false
	end,
}

ShipController.TPCurrentShip = function()
	if ShipController.GetBoat() then
		local cFrame = localPlayer.Character.HumanoidRootPart.CFrame
		ShipController.GetBoat().VehicleSeat.CFrame = cFrame
	end
end

ShipController.IsValid = function(arg)
	if arg and arg.Parent and arg.VehicleSeat then
		return true
	end
end

SeaManager = {}
ItemsUiController = {}

ItemsUiController.YoruV2 = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RobotTalk")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("IndraTalk")

	for i = 1, 3 do
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoveLetter", i)
	end

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RobotTalk")
end

SkillsController = { Weapon = {}, Skills = {} }
RequirementGuitar = { Ectoplasm = 250, Bones = 500, ["1"] = false, ["2"] = false }

RequirementGod = {
	["Mystic Droplet"] = 10,
	["Magma Ore"] = 20,
	["Fish Tail"] = 20,
	["Dragon Scale"] = 10,
	["1"] = false,
	["2"] = false,
	["3"] = false,
	["4"] = false,
}

ChestCount = 0
AllSeaEvents = { "TerrorShark", "Ship", "Piranha", "SeaBeast", "Shark" }
SeaEventsController = {}
FruitTable = {}
FruitPrice = {}

CloneTable = function(arg)
	local tbl16 = {}

	for i = 1, #arg do
		tbl16[i] = arg[i]
	end

	return tbl16
end

Travel = function(arg)
	if arg == "Sea1" or arg == "2753915549" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end

	if arg == "Sea2" or arg == "4442272183" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end

	if arg == "Sea3" or arg == "7449423635" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end
end

FruitRemote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
StoreFruitTable = CloneTable(FruitRemote)

for _, v6 in pairs(StoreFruitTable) do
	FruitPrice[v6.Name] = v6.Price
end

for _, v6 in pairs(StoreFruitTable) do
	for k, v7 in pairs(v6) do
		if k == "Name" then
			table.insert(FruitTable, v7)
		end
	end
end

IslandHub = {}
IslandHub.TPCurrentEntrance = RaceV4Manager.TPCurrentEntrance
IslandHub.TPAcientClock = RaceV4Manager.TPAcientClock
IslandHub.__StrGetPlayers = strGetPlayers
IslandHub.TPCurrentShip = ShipController.TPCurrentShip
IslandHub.YoruV2 = ItemsUiController.YoruV2
IslandHub.StopTween = StopTween
IslandHub.Travel = Travel

IslandHub.TweenSelectedPlace = function()
	if getgenv().IslandVariable and getgenv().IslandVariable.SelectedPlace then
		DoTween2(tbl5.Places[currentPlaceKey][getgenv().IslandVariable.SelectedPlace])
	end
end

IslandHub.TweenSelectedNPC = function()
	if getgenv().IslandVariable and getgenv().IslandVariable.SelectedNPC then
		DoTween2(fn9(NPCInstances[getgenv().IslandVariable.SelectedNPC]).CFrame)
	end
end

IslandHub.TrueServerHop = TrueServerHop

IslandHub.RedeemAllCode = function()
	for _, v6 in pairs(tbl9) do
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v6)
	end
end

IslandHub.RemoveEnemiesStun = function()
	if fluxus then
		for _, v6 in pairs(getconnections(game.ReplicatedStorage:WaitForChild("Remotes"):FindFirstChild("BodyMover").OnClientEvent)) do
			v6:Disconnect()
		end
	end
end

IslandHub.NightAtmosphere = function()
	game:GetService("Lighting").LightingLayers.Night.Intensity.Value = game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 0 and 1 or 0
end

IslandHub.DarkAtmosphere = function()
	game:GetService("Lighting").LightingLayers.DarkFog.Intensity.Value = game:GetService("Lighting").LightingLayers.DarkFog.Intensity.Value == 0 and 1 or 0
end

IslandHub.TPTempleOfTime = RaceV4Manager.TPTempleOfTime
IslandHub.TweenGear = MirageFunctions.TweenGear
IslandHub.TweenFruitDealer = MirageFunctions.TweenFruitDealer
IslandHub.TweenHighestPlace = MirageFunctions.TweenHighestPlace
getgenv().IslandCaller = {}
getgenv().IslandVariable = {}
local materialName = tbl5.MaterialName
getgenv().IslandVariable.MaterialName = materialName
local v6 = GatePos
getgenv().IslandVariable.GatePos = v6
local v7 = AutoChip
getgenv().IslandVariable.AutoChip = v7
local items = tbl5.Items
getgenv().IslandVariable.Items = items
getgenv().IslandVariable.__Places = places
local v8 = ListNpc
getgenv().IslandVariable.__NPCs = v8

setmetatable(IslandCaller, {
	__call = function(arg, arg2, ...)
		local v9 = IslandHub[arg2]
		if type(v9) == "function" then
			return v9(...)
		end
	end,
	__index = function()
	end,
	__newindex = function()
	end,
	__metatable = "Dit Me May",
	__pairs = function()
	end,
	__ipairs = function()
	end,
})

Click = function()
	pcall(function()
		if Alive() then
			local VirtualUser2 = game:GetService("VirtualUser")
			VirtualUser2:CaptureController()
			VirtualUser2:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
		end
	end)
end

Press = function(arg, arg2)
	if not Pressing then
		local tool = localPlayer.Character:FindFirstChildOfClass("Tool")

		if tool then
			local name = tool.Name
			task.wait()

			if (function()
				if not tool.ToolTip then
					return
				end

				if name == "Summon Sea Beast" or tool.ToolTip == "Wear" then
					return
				end

				if not (localPlayer.PlayerGui.Main and localPlayer.PlayerGui.Main.Skills) then
					return
				end

				if not (localPlayer.PlayerGui.Main.Skills[name] and localPlayer.PlayerGui.Main.Skills[name]:FindFirstChild(arg)) then
					return
				end
				return true
			end)() then
				if NotCooldown(arg, name) then
					Pressing = true
					VirtualInputManager:SendKeyEvent(true, arg, false, game)

					if not (arg2 == nil or typeof(arg2) ~= "number" or arg2 == 0) then
						task.wait(arg2)
					end

					VirtualInputManager:SendKeyEvent(false, arg, false, game)
					Pressing = false
				end
			end
		end
	end
end

local module = nil

local function fn25()
	if module and module.Data and module.Data.QuestData then
		return module
	end

	pcall(function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		ReplicatedStorage = ReplicatedStorage and ReplicatedStorage:FindFirstChild("GuideModule")
		local guideData = ReplicatedStorage and ReplicatedStorage:FindFirstChild("GuideData")

		if guideData then
			module = require(guideData)
		end
	end)

	return module
end

local function cleanStr(arg)
	if not arg then
		return ""
	end
	local v9 = string.gsub(tostring(arg), "[%p%c%s]", "")
	return string.lower(v9)
end

local function normalizeMobName(arg)
	if not arg then
		return ""
	end
	local v9 = cleanStr(arg)
	local str

	if string.sub(v9, 1, 6) == "defeat" then
		str = string.sub(v9, 7)
	else
		str = v9
	end

	local v10 = string.gsub(str, "^%d+", "")
	local str2

	if string.sub(v10, 1, 3) ~= "the" then
		str2 = v10
	else
		str2 = string.sub(v10, 4)
	end

	return (string.gsub(str2, "^military", "mil"))
end

local function mobNameMatches(arg, arg2)
	if not arg or not arg2 or arg == "" or arg2 == "" then
		return false
	end
	local v9 = normalizeMobName(arg)
	local v10 = normalizeMobName(arg2)
	if v9 == "" or v10 == "" then
		return false
	end

	if v9 == v10 then
		return true
	end
	local v11 = string.gsub(v9, "s$", "")
	local v12 = string.gsub(v10, "s$", "")
	if v11 ~= "" and v11 == v12 then
		return true
	end

	if (v9 == "bobby" or v9 == "chef" or v11 == "bobby" or v11 == "chef") and (v10 == "bobby" or v10 == "chef" or v12 == "bobby" or v12 == "chef") then
		return true
	end

	if (v9 == "fajita" or v9 == "orbitus" or v11 == "fajita" or v11 == "orbitus") and (v10 == "fajita" or v10 == "orbitus" or v12 == "fajita" or v12 == "orbitus") then
		return true
	end

	if (v9 == "milsoldier" or v9 == "militarysoldier") and (v10 == "milsoldier" or v10 == "militarysoldier") then
		return true
	end

	if (v9 == "milspy" or v9 == "militaryspy") and (v10 == "milspy" or v10 == "militaryspy") then
		return true
	end
	return false
end

GetActiveQuestData = function()
	local v9 = fn25()

	if v9 and v9.Data and v9.Data.QuestData then
		local questData = v9.Data.QuestData
		local internalQuestName = questData.InternalQuestName or ""
		return true, questData.Info and (questData.Info.CustomTitle or questData.Info.Name) or internalQuestName, questData.Info and questData.Info.Name or "", internalQuestName, questData
	end

	local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")

	if playerGui then
		local trackedQuestFrame = playerGui:FindFirstChild("TrackedQuestFrame")

		if trackedQuestFrame and trackedQuestFrame.Enabled and trackedQuestFrame:FindFirstChild("Frame") and trackedQuestFrame.Frame.Visible then
			local description = trackedQuestFrame.Frame:FindFirstChild("description", true)
			description = description and description.Text or ""
			local textLabel = trackedQuestFrame.Frame:FindFirstChild("textLabel", true)
			return true, textLabel and textLabel.Text or description, description, "", nil
		end

		local quest = playerGui:FindFirstChild("Main") and playerGui.Main:FindFirstChild("Quest")

		if quest and quest.Visible then
			local title = quest:FindFirstChild("Container") and quest.Container:FindFirstChild("QuestTitle") and quest.Container.QuestTitle:FindFirstChild("Title")
			local text = title and title.Text or ""
			return true, text, text, "", nil
		end
	end

	return false, "", "", "", nil
end

HasActiveQuest = function(arg)
	local v9, v10, v11, v12 = GetActiveQuestData()
	if not v9 then
		return false
	end

	if not arg or arg == "" then
		return true
	end

	if v11 ~= "" and mobNameMatches(v11, arg) then
		return true
	end

	if v10 ~= "" and mobNameMatches(v10, arg) then
		return true
	end

	if v12 ~= "" and mobNameMatches(v12, arg) then
		return true
	end
	return false
end

FindQuest = function(arg, arg2)
	if not arg2 or arg2 == "" then
		return false
	end

	if arg and type(arg) == "string" and arg ~= "" then
		if mobNameMatches(arg, arg2) then
			return true
		end
	end

	local v9, v10, v11, v12 = GetActiveQuestData()

	if v9 then
		if v11 ~= "" and mobNameMatches(v11, arg2) then
			return true
		end

		if v10 ~= "" and mobNameMatches(v10, arg2) then
			return true
		end

		if v12 ~= "" and mobNameMatches(v12, arg2) then
			return true
		end
	end

	return false
end

if getgenv then
	getgenv().CleanStr = cleanStr
	getgenv().NormalizeMobName = normalizeMobName
	getgenv().MobNameMatches = mobNameMatches
	local v9 = GetActiveQuestData
	getgenv().GetActiveQuestData = v9
	local v10 = HasActiveQuest
	getgenv().HasActiveQuest = v10
	local v11 = FindQuest
	getgenv().FindQuest = v11
end

env.CleanStr = cleanStr
env.NormalizeMobName = normalizeMobName
env.MobNameMatches = mobNameMatches
env.GetActiveQuestData = GetActiveQuestData
env.HasActiveQuest = HasActiveQuest
env.FindQuest = FindQuest

task.spawn(function()
	pcall(function()
		local playerGui = localPlayer:WaitForChild("PlayerGui", 15)
		playerGui = playerGui and playerGui:WaitForChild("Main", 15)
		local quest = playerGui and playerGui:WaitForChild("Quest", 15)
		if not quest then
			return
		end
		local title = quest:FindFirstChild("Container") and quest.Container:FindFirstChild("QuestTitle") and quest.Container.QuestTitle:FindFirstChild("Title")

		local function fn26(arg, arg2)
			pcall(function()
				if arg then
					quest.Visible = true

					if title and arg2 and arg2 ~= "" then
						title.Text = "DEFEAT " .. string.upper(tostring(arg2))
					end
				else
					quest.Visible = false
				end
			end)
		end

		local v9, v10, v11 = GetActiveQuestData()
		fn26(v9, v11)

		pcall(function()
			local remotes = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
			remotes = remotes and remotes:FindFirstChild("QuestUpdate")

			if remotes and remotes.OnClientEvent then
				remotes.OnClientEvent:Connect(function(arg)
					if arg and type(arg) == "table" then
						fn26(true, arg.Info and arg.Info.Name or arg.InternalQuestName or "Quest")
					else
						fn26(false, "")
					end
				end)
			end
		end)

		while task.wait(0.3) do
			local v12, v13, v14 = GetActiveQuestData()

			if v12 then
				if not quest.Visible then
					fn26(true, v14)
				end
			elseif quest.Visible then
				fn26(false, "")
			end
		end
	end)
end)

IsInSafeZone = function(arg)
	for _, child in pairs(game:GetService("Workspace")._WorldOrigin.SafeZones:GetChildren()) do
		if child:IsA("Part") then
			if fn15(child, arg) <= 400 and arg.Humanoid.Health >= arg.Humanoid.MaxHealth * 80 / 100 then
				return true
			end
		end
	end
end

MakeSeaEventSkill = function()
	SkillsController.Weapon = {}

	for _, v9 in pairs({ "Melee", "Blox Fruit", "Gun", "Sword" }) do
		if getgenv().Setting.SkillsSet2[v9] then
			if not table.find(SkillsController.Weapon, v9) then
				table.insert(SkillsController.Weapon, v9)
			end
		elseif table.find(SkillsController.Weapon, v9) then
			table.remove(SkillsController.Weapon, table.find(SkillsController.Weapon, v9))
		end
	end

	SkillsController.Skills = getgenv().Setting.SkillsSettingRemake["Blox Fruit"]
end

MakeMasterySkill = function()
	SkillsController.Weapon = {}
	table.insert(SkillsController.Weapon, getgenv().Setting.Mastery["Fruit/Gun"] and "Gun" or "Blox Fruit")
	SkillsController.Skills = getgenv().Setting.SkillsSettingRemake["Blox Fruit"]
end

VoidSkillController = function()
	SkillsController.Skills = {}
	SkillsController.Weapon = {}
	SkillsController.Condition = nil
	SkillsController.Idle = nil
end

AutoChip = {
	["Flame-Flame"] = "Flame",
	["Ice-Ice"] = "Ice",
	["Sand-Sand"] = "Sand",
	["Quake-Quake"] = "Quake",
	["Light-Light"] = "Light",
	["Dark-Dark"] = "Dark",
	["String-String"] = "String",
	["Rumble-Rumble"] = "Rumble",
	["Magma-Magma"] = "Magma",
	["Human-Human: Buddha"] = "Human: Buddha",
	["Bird-Bird: Phoenix"] = "Bird: Phoenix",
	["Dough-Dough"] = "Dough",
}

CanAwakenDough = function()
	local response, v9 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({ "RaidsNpc", "Check" }))
	return v9.Dough
end

CanAwaken = function()
	if GetLevel() < n2 then
		return false, "Not Enough Level 2"
	end

	if AutoChip[localPlayer.Data.DevilFruit.Value] then
		if localPlayer.Data.DevilFruit.Value == "Dough-Dough" and (not CanAwakenDough() or not Sea3) then
			return false
		end
		local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")

		if response and type(response) == "table" then
			for _, v9 in pairs(response) do
				if not v9.Awakened and localPlayer.Data.Fragments.Value >= v9.Cost then
					return true
				end
			end
		end
	end
end

Raid = {}

FruitFunc = {
	IgnoreStoreFruit = nil,
	HaveFruitInv = function()
		local tbl16 = {}

		if localPlayer and localPlayer.Character then
			for _, child in pairs(localPlayer.Character:GetChildren()) do
				if string.find(child.Name, "Fruit") then
					table.insert(tbl16, child)
				end
			end
		end

		if localPlayer and localPlayer:FindFirstChild("Backpack") then
			for _, child in pairs(localPlayer.Backpack:GetChildren()) do
				if string.find(child.Name, "Fruit") then
					table.insert(tbl16, child)
				end
			end
		end

		return tbl16
	end,
	HaveFruitMap = function()
		local tbl16 = {}

		for _, child in pairs(game.Workspace:GetChildren()) do
			if string.find(child.Name, "Fruit") and child.Name ~= "Fruit" then
				table.insert(tbl16, child)
			end
		end

		return tbl16
	end,
	CheckHasFruit = function()
		for _, child in pairs(game.Workspace:GetChildren()) do
			if string.find(child.Name, "Fruit") then
				return true
			end

			if child:IsA("Tool") then
				return true
			end
		end

		return false
	end,
	GetFruitBelow1M = function()
		local ok2, result2 = pcall(function()
			return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTradeInventory")
		end)

		if ok2 and type(result2) == "table" and type(result2.Items) == "table" then
			local n5 = 1000000
			local v9 = nil

			for _, item in ipairs(result2.Items) do
				if type(item) == "table" and item.ItemId ~= nil then
					local flag2 = type(ResolveInventoryItemConfig) == "function" and ResolveInventoryItemConfig(item.ItemId) or nil

					if flag2 then
						local storageKey = flag2.Index and flag2.Index.StorageKey
						local title = flag2.Display and (flag2.Display.Title or flag2.Display.Name) or flag2.Name or storageKey

						if string.find(string.lower(tostring(title)), "fruit") or flag2.Name and string.find(string.lower(tostring(flag2.Name)), "fruit") or type(storageKey) == "string" and string.match(storageKey, "^([^-]+)%-(.+)$") then
							local n6 = tonumber(item.Count or item.Amount or item.Quantity) or 1
							local num = tonumber(item.Price or item.TradePrice)

							if not num or num <= 0 then
								num = flag2.Quality and tonumber(flag2.Quality.MoneyPrice) or nil
							end

							if n6 > 0 and num and num > 0 and num < n5 then
								if storageKey then
									n5 = num
									v9 = storageKey
								else
									n5 = num
									v9 = title
								end
							end
						end
					end
				end
			end

			if v9 then
				return v9
			end
		end

		local bloxFruit = getgenv().LocalPlayerInv and getgenv().LocalPlayerInv["Blox Fruit"]
		local v9 = nil

		if bloxFruit then
			local n5 = 999999999
			local name = nil

			for _, v10 in pairs(bloxFruit) do
				if v10.Value < 1000000 and v10.Value < n5 and v10.Count > 0 then
					n5 = v10.Value
					name = v10.Name
				end
			end

			v9 = name
		end

		return v9
	end,
	GetFruitAbove1M = function()
		local ok2, result2 = pcall(function()
			return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTradeInventory")
		end)

		if ok2 and type(result2) == "table" and type(result2.Items) == "table" then
			local n5 = 999999999
			local v9 = nil

			for _, item in ipairs(result2.Items) do
				if type(item) == "table" and item.ItemId ~= nil then
					local flag2 = type(ResolveInventoryItemConfig) == "function" and ResolveInventoryItemConfig(item.ItemId) or nil

					if flag2 then
						local storageKey = flag2.Index and flag2.Index.StorageKey
						local display = flag2.Display
						local title

						if display then
							title = flag2.Display.Title or flag2.Display.Name
						else
							title = display
						end

						local name = title or flag2.Name or storageKey
						local name2 = string.find(string.lower(tostring(name)), "fruit") or flag2.Name and string.find(string.lower(tostring(flag2.Name)), "fruit")
						local flag3

						if name2 then
							flag3 = name2
						else
							flag3 = type(storageKey) == "string" and string.match(storageKey, "^([^-]+)%-(.+)$")
						end

						if flag3 then
							local n6 = tonumber(item.Count or item.Amount or item.Quantity) or 1
							local num = tonumber(item.Price or item.TradePrice)

							if not num or num <= 0 then
								num = flag2.Quality and tonumber(flag2.Quality.MoneyPrice) or nil
							end

							if n6 > 0 and num and num >= 1000000 and num <= 3000000 and num < n5 then
								if storageKey then
									n5 = num
									v9 = storageKey
								else
									n5 = num
									v9 = name
								end
							end
						end
					end
				end
			end

			if v9 then
				return v9
			end
		end

		local bloxFruit = getgenv().LocalPlayerInv and getgenv().LocalPlayerInv["Blox Fruit"]
		local name = nil

		if bloxFruit then
			local n5 = 999999999
			name = nil

			for _, v9 in pairs(bloxFruit) do
				if v9.Value >= 1000000 and v9.Value < n5 and v9.Value <= 3000000 and v9.Count > 0 then
					n5 = v9.Value
					name = v9.Name
				end
			end
		end

		return name
	end,
	ReloadFruit = function(ignoreStoreFruit)
		if not ignoreStoreFruit or ignoreStoreFruit == "" then
			return nil
		end
		local tbl16 = {}

		local function fn26(arg)
			if arg then
				for _, child in ipairs(arg:GetChildren()) do
					if child:IsA("Tool") then
						tbl16[child] = true
					end
				end
			end
		end

		fn26(localPlayer.Character)
		fn26(localPlayer:FindFirstChild("Backpack"))
		FruitFunc.IgnoreStoreFruit = ignoreStoreFruit

		local ok2, result2 = pcall(function()
			return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", ignoreStoreFruit)
		end)

		print("[FruitFunc.ReloadFruit] LoadFruit:", ignoreStoreFruit, ok2, tostring(result2))
		local n5 = os.clock() + 4
		local v9

		while true do
			task.wait(0.1)

			local function fn27(arg)
				if not arg then
					return nil
				end

				for _, child in ipairs(arg:GetChildren()) do
					if child:IsA("Tool") and not tbl16[child] then
						if child:GetAttribute("OriginalName") == ignoreStoreFruit or child.Name == ignoreStoreFruit or string.find(child.Name, ignoreStoreFruit) then
							return child
						end
					end
				end

				return nil
			end

			v9 = fn27(localPlayer.Character) or fn27(localPlayer:FindFirstChild("Backpack"))
			if not (v9 or os.clock() >= n5) then
				continue
			end
			break
		end

		if v9 then
			if v9.Parent == localPlayer:FindFirstChild("Backpack") and localPlayer.Character then
				local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")

				if humanoid then
					pcall(function()
						humanoid:EquipTool(v9)
					end)

					task.wait(0.2)
				end
			end

			return v9
		end

		return nil
	end,
	CanStoreFruit = function(arg)
		if not arg or not arg:IsA("Tool") then
			return false
		end

		if not string.find(arg.Name, "Fruit") and not string.find(tostring(arg), "Fruit") then
			return false
		end
		local attribute2 = arg:GetAttribute("OriginalName") or arg:FindFirstChild("OriginalName") and arg.OriginalName.Value or arg.Name
		if FruitFunc.IgnoreStoreFruit and (attribute2 == FruitFunc.IgnoreStoreFruit or arg.Name == FruitFunc.IgnoreStoreFruit) then
			return false
		end
		local n5 = localPlayer and localPlayer:FindFirstChild("Data") and localPlayer.Data:FindFirstChild("FruitCap") and localPlayer.Data.FruitCap.Value or 1

		local function fn26(arg2)
			if not arg2 or type(arg2) ~= "string" then
				return ""
			end
			return (string.gsub(string.gsub(string.gsub(string.lower(arg2), "%s*fruit%s*", ""), "%-", ""), "%s+", ""))
		end

		local v9 = fn26(attribute2)
		local v10 = fn26(arg.Name)
		local bloxFruit = getgenv().LocalPlayerInv and getgenv().LocalPlayerInv["Blox Fruit"]

		if bloxFruit and type(bloxFruit) == "table" and #bloxFruit > 0 then
			for _, v11 in pairs(bloxFruit) do
				if type(v11) == "table" and v11.Name then
					local v12 = fn26(v11.Name)
					local flag2 = v12 == v9 or v12 == v10
					local flag3

					if flag2 then
						flag3 = flag2
					else
						flag3 = v9 ~= "" and string.find(v12, v9)
					end

					flag3 = flag3 or v12 ~= "" and string.find(v9, v12)

					if flag3 then
						if n5 <= (tonumber(v11.Count) or 1) then
							return false
						end
					end
				end
			end
		end

		local ok2, result2 = pcall(function()
			return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTradeInventory")
		end)

		if ok2 and type(result2) == "table" and type(result2.Items) == "table" then
			for _, item in ipairs(result2.Items) do
				if type(item) == "table" and item.ItemId ~= nil then
					local flag2 = type(ResolveInventoryItemConfig) == "function" and ResolveInventoryItemConfig(item.ItemId) or nil

					if flag2 then
						local storageKey = flag2.Index and flag2.Index.StorageKey
						local title = flag2.Display and (flag2.Display.Title or flag2.Display.Name) or flag2.Name or storageKey
						local v11 = fn26(storageKey)
						local v12 = fn26(title)

						if v11 == v9 or v11 == v10 or v12 == v9 or v12 == v10 then
							if n5 <= (tonumber(item.Count or item.Amount or item.Quantity) or 1) then
								return false
							end
							continue
						end
					end
				end
			end
		end

		return true
	end,
	StoreFruit = function(arg)
		if not arg or not arg:IsA("Tool") then
			return
		end

		if not string.find(arg.Name, "Fruit") and not string.find(tostring(arg), "Fruit") then
			return
		end

		if not FruitFunc.CanStoreFruit(arg) then
			return
		end

		task.spawn(function()
			local attribute2 = arg:GetAttribute("OriginalName")
			local value

			if attribute2 then
				value = attribute2
			else
				value = arg:FindFirstChild("OriginalName") and arg.OriginalName.Value
			end

			local name = value or arg.Name
			if FruitFunc.IgnoreStoreFruit and (name == FruitFunc.IgnoreStoreFruit or arg.Name == FruitFunc.IgnoreStoreFruit) then
				return
			end

			if arg.Parent == localPlayer.Backpack and localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
				pcall(function()
					localPlayer.Character.Humanoid:EquipTool(arg)
					task.wait(0.2)
				end)
			end

			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", name, arg)
			end)
		end)
	end,
	AutoStoreAll = function()
		local v9 = FruitFunc.HaveFruitInv()

		if v9 and #v9 > 0 then
			for _, v10 in pairs(v9) do
				if v10 and v10:IsA("Tool") and string.find(v10.Name, "Fruit") then
					if FruitFunc.CanStoreFruit(v10) then
						FruitFunc.StoreFruit(v10)
						task.wait(0.25)
					end
				end
			end
		end
	end,
	IsValidFruit = function(arg)
		local tbl16 = {}
		arg = arg or FruitFunc.HaveFruitInv()

		for _, v9 in pairs(arg) do
			if v9 and v9:IsA("Tool") and FruitFunc.CanStoreFruit(v9) then
				table.insert(tbl16, {
					v9:GetAttribute("OriginalName") or v9:FindFirstChild("OriginalName") and v9.OriginalName.Value or v9.Name,
					v9,
				})
			end
		end

		return tbl16
	end,
}

task.spawn(function()
	local function fn26(arg)
		if not arg then
			return
		end

		arg.ChildAdded:Connect(function(child)
			if getgenv().Setting and getgenv().Setting.Fruit and (getgenv().Setting.Fruit.AutoStore or getgenv().Setting.OneClick and getgenv().Setting.OneClick.Enable) then
				if child and child:IsA("Tool") and string.find(child.Name, "Fruit") then
					task.wait(0.1)

					if FruitFunc.CanStoreFruit(child) then
						FruitFunc.StoreFruit(child)
					end
				end
			end
		end)
	end

	if localPlayer and localPlayer:FindFirstChild("Backpack") then
		fn26(localPlayer.Backpack)
	end

	if localPlayer and localPlayer.Character then
		fn26(localPlayer.Character)
	end

	if localPlayer then
		localPlayer.CharacterAdded:Connect(function(character)
			fn26(character)
			local backpack = localPlayer:WaitForChild("Backpack", 5)

			if backpack then
				fn26(backpack)
			end
		end)
	end
end)

SwanDoor = {
	Check = function()
		if DataSave.Unlocked.SwanDoor then
			return true
		end
		local swanDoor = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "2") == 0

		if swanDoor then
			DataSave.Unlocked.SwanDoor = swanDoor
		end

		return swanDoor
	end,
	GetFruit = function()
		return FruitFunc.GetFruitAbove1M()
	end,
}

getgenv().LiteFpsBoost = function()
	error("devirt: value <luasym.LuaFunc object at 0x00000187F14B1660> in an expression (at 193:2)")
end

local function fn26()
	local tbl16 = {}

	for _, v9 in pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged")) do
		if not v9:GetAttribute("IsDisabled") then
			if v9:GetAttribute("LastCollect") and tick() - v9:GetAttribute("LastCollect") <= 120 then
				print("Last Collect Excluded")
			else
				table.insert(tbl16, v9)
			end
		end
	end

	return tbl16
end

pcall(function()
	SupportRetard()
	CamMod = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
	CamMod:Stop()
end)

LastGetQuest = 0

SafeGetQuest = function(arg, arg2, arg3, arg4, arg5)
	if arg5 and HasActiveQuest(arg5) then
		return true
	end

	if not Alive() then
		return false
	end

	if HasActiveQuest() and arg5 and not HasActiveQuest(arg5) then
		CancelQuest()
		task.wait(0.2)
	end

	local position = arg.Position

	if (fn9(localPlayer.Character).Position - position).magnitude <= 30 then
		local flag2 = not LastGetQuest

		if not flag2 then
			local v9 = LastGetQuest
			flag2 = tick() - v9 >= 0.5
		end

		if flag2 then
			LastGetQuest = tick()

			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", arg2, arg3)
			end)

			task.wait(0.3)

			if arg5 then
				if HasActiveQuest(arg5) then
					fn11(false)
					return true
				end
			elseif HasActiveQuest() then
				fn11(false)
				return true
			end
		end
	end

	return false
end

GetMaterial = function(arg)
	if not arg or arg == "" then
		return 0
	end

	local ok2, result2, result3 = pcall(function()
		return checkItem(arg)
	end)

	if ok2 and result2 and result3 and result3 > 0 then
		return result3
	end
	local all = getgenv().LocalPlayerInv and getgenv().LocalPlayerInv.All

	if type(all) == "table" then
		local v9 = string.lower(tostring(arg))
		local v10 = string.gsub(v9, "%s+", "")

		for _, v11 in pairs(all) do
			if type(v11) == "table" and type(v11.Name) == "string" then
				local v12 = string.lower(v11.Name)
				local v13 = string.gsub(v12, "%s+", "")
				if v11.Name == arg or v12 == v9 or v13 == v10 then
					return tonumber(v11.Count) or tonumber(v11.Amount) or tonumber(v11.Quantity) or 1
				end
			end
		end
	end

	return 0
end

CheckGodhumanMaterialStatus = function()
	local ok2, result2 = pcall(function()
		return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
	end)

	if not ok2 then
		return { code = nil, ready = false, owned = false, message = "Error calling remote" }
	end

	if result2 == 0 then
		return {
			code = 0,
			ready = true,
			owned = false,
			message = "Materials fully gathered – Requires 5M Beli + 5k Fragments.",
		}
	end

	if result2 == 1 then
		return { code = 1, ready = true, owned = true, message = " Already own Godhuman" }
	end
	return { code = result2, ready = false, owned = false, message = "INSUFFICIENT TOP-UP: " .. tostring(result2) }
end

CheckFlower = function()
	for _, child in pairs(localPlayer.Backpack:GetChildren()) do
		if string.find(child.Name, "Flower") then
			return true
		end
	end

	local tool = localPlayer.Character:FindFirstChildOfClass("Tool")

	if tool then
		if string.find(tool.Name, "Flower") then
			return true
		end
	end

	return false
end

CanUseGate = function()
	return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "GetUnlockables" })).DefeatedIndraTrueForm
end

GetNearestEntrance = function(arg)
	local v9 = nil

	if Sea3 then
		local huge = math.huge
		local v10 = nil

		for k, v11 in pairs(GatesInfo) do
			if (v11.Pos - arg).magnitude < huge then
				huge = (v11.Pos - arg).magnitude
				v10 = k
			end
		end

		v9 = v10
	end

	return v9, GatesInfo[v9]
end

TPToEntrance = function(arg)
	GateInfo = GatesInfo[arg]
	if not CanUseGate() then
		return
	end

	if not GateInfo.CanInstaTP and not GateInfo.Hitbox().Parent == nil then
		return
	end
	local n5 = 0

	while true do
		wait()
		n5 += 1

		if Alive() then
			StatusFarming = "Attemping To TP Gate " .. arg
			local tweenInfo = TweenInfo.new(0, Enum.EasingStyle.Linear)
			local tween_ = game:service("TweenService"):Create(fn9(localPlayer.Character), tweenInfo, { CFrame = fn9(localPlayer.Character).CFrame })
			tween_:Play()
			tween_:Cancel()

			if GateInfo.CanInstaTP then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", GateInfo.Pos)
			else
				localPlayer.Character.HumanoidRootPart.CFrame = GateInfo.Hitbox().CFrame
				fn4(fn9(localPlayer.Character), GateInfo.Hitbox(), 0)
				task.wait()
				fn4(fn9(localPlayer.Character), GateInfo.Hitbox(), 1)
				task.wait(0.5)
			end
		end

		local pos3 = GateInfo.Pos
		if not ((fn9(localPlayer.Character).Position - pos3).magnitude < 300 or n5 >= 5) then
			continue
		end
		break
	end
end

TpNearestEntrance = function(arg)
	if CanUseGate() then
		local v9, v10 = GetNearestEntrance(arg)
		Name = v9
		Info = v10
		TPToEntrance(Name)
	end
end

GetNearSpawn = function(arg)
	while not Alive() do
		task.wait()
	end

	local flag2 = #FruitFunc.HaveFruitInv() > 0 and not getgenv().Setting.OneClick.Enable or CheckItem("Hallow Essence") or CheckItem("Fist of Darkness") or CheckItem("God's Chalice") or CheckItem("Sweet Chalice") or Sea3 and CheckItem("Red Key") and not CanAwakenDough() or (Sea3 or Sea2) and CheckItem("Special Microchip") or Sea2 and CheckFlower()

	if not flag2 then
		flag2 = (Sea3 or Sea2) and CheckItem("Microchip")
	end

	if flag2 then
		return
	end
	Nearest = math.huge
	TPPos = CFrame.new(arg)

	if fn9(localPlayer.Character) then
		if (fn9(localPlayer.Character).Position - arg).magnitude < 1000 then
			return nil
		end
	end

	if Sea3 and fn16(arg) then
		return nil
	end

	if Sea3 and fn16(localPlayer.Character) and not fn16(arg) then
		return nil
	end

	if CanUseGate() then
		local v9, v10 = GetNearestEntrance(arg)

		if v10 and v10.Pos then
			if (v10.Pos - arg).magnitude < 2000 and (v10.Pos - arg).magnitude < (fn9(localPlayer.Character).Position - arg).magnitude then
				TPToEntrance(v9)
				return nil
			end
		end
	end

	return arg
end

BypassTpLocation = {}
PlayerSpawnsLot = {}

for _, child in pairs(workspace._WorldOrigin.PlayerSpawns:GetChildren()) do
	for _, child2 in pairs(child:GetChildren()) do
		table.insert(PlayerSpawnsLot, { child2.Name, child2:GetModelCFrame().p })
	end

	child.ChildAdded:Connect(function(child2)
		table.insert(PlayerSpawnsLot, { child2.Name, child2:GetModelCFrame().p })
	end)
end

for _, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
	BypassTpLocation[child.Name] = BypassTpLocation[child.Name] or {}

	for _, v9 in pairs(PlayerSpawnsLot) do
		if (v9[2] - child.Position).Magnitude <= child.Size.X * child.Mesh.Scale.X / 2 then
			table.insert(BypassTpLocation[child.Name], v9)
		end
	end
end

workspace._WorldOrigin.Locations.ChildAdded:Connect(function(child)
	task.wait(3)
	BypassTpLocation[child.Name] = BypassTpLocation[child.Name] or {}

	for _, v9 in pairs(PlayerSpawnsLot) do
		if (v9[2] - child.Position).Magnitude <= child.Size.X * child.Mesh.Scale.X / 2 then
			table.insert(BypassTpLocation[child.Name], v9)
		end
	end
end)

GetTPLocation = function(arg)
	local tbl16 = { distance = math.huge, priority = math.huge }
	local v9 = next
	local children, v10 = workspace._WorldOrigin.Locations:GetChildren()
	local huge = math.huge
	local v11 = nil

	for _, v12 in v9, children, v10 do
		local mesh = v12:FindFirstChild("Mesh")

		if mesh then
			if (arg - v12.Position).Magnitude <= mesh.Scale.X * v12.Size.X / 2 and BypassTpLocation[v12.Name] then
				for _, v13 in pairs(BypassTpLocation[v12.Name]) do
					local v14 = v13[1]
					local magnitude = (arg - v13[2]).Magnitude

					if magnitude < huge then
						huge = magnitude
						v11 = v14
					end
				end
			end
		end
	end

	local v12 = next
	local children2, v13 = workspace._WorldOrigin.EnemyRegions:GetChildren()

	for _, v14 in v12, children2, v13 do
		local mesh = v14:FindFirstChild("Mesh")

		if mesh then
			local magnitude = (arg - v14.Position).Magnitude

			if magnitude <= mesh.Scale.X * v14.Size.X / 2 and magnitude < tbl16.distance then
				tbl16 = { distance = magnitude, priority = math.huge, region = v14 }
			end
		end
	end

	return v11
end

SSS = function(arg, arg2)
	if not arg then
		return
	end

	if not (getgenv().Setting and getgenv().Setting.BypassTP and getgenv().Setting.BypassTP.Enable) then
		return
	end
	local tbl16 = {}
	local v9 = next
	local children, v10 = workspace._WorldOrigin.Locations:GetChildren()

	for _, v11 in v9, children, v10 do
		if BypassTpLocation[v11.Name] then
			for _, v12 in pairs(BypassTpLocation[v11.Name]) do
				if not table.find(tbl16, v12[1]) then
					table.insert(tbl16, v12[2])
				end
			end
		end
	end

	if #tbl16 == 0 then
		return
	end

	if #tbl16 > 1 then
		table.sort(tbl16, function(arg3, arg4)
			return fn15(arg3, arg) < fn15(arg4, arg)
		end)
	end

	local localPlayer3 = game:GetService("Players").LocalPlayer
	local character = localPlayer3.Character
	if not character or not character:FindFirstChild("LastSpawnPoint") then
		return
	end
	character.LastSpawnPoint.Disabled = true
	task.wait()

	for _, v11 in pairs(tbl16) do
		local v12 = fn15(v11, arg)
		local v13 = fn15(v11, character)

		if v12 + 500 < fn15(arg, character) and v13 >= 1000 then
			if arg2 and not arg2() then
				character.LastSpawnPoint.Disabled = false
				return
			end
			local v14 = GetTPLocation(v11)
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetLastSpawnPoint", v14)

			if localPlayer3.Data.LastSpawnPoint.Value == v14 then
				if character:FindFirstChild("Humanoid") then
					character.Humanoid.Health = 0
				end

				while not Alive() do
					if arg2 and not arg2() then
						character.LastSpawnPoint.Disabled = false
						return
					end
					task.wait()
				end

				return SSS(arg, arg2)
			end
		end
	end

	character.LastSpawnPoint.Disabled = false
end

TPKatakuriGate = function(arg)
	if fn9(localPlayer.Character) then
		local v9 = fn15(localPlayer.Character, arg)

		if fn15(localPlayer.Character, Vector3.new(-2144.967, 70.37716, -12399.752)) + 500 < v9 then
			DoTween2(CFrame.new(-2144.967041015625, 70.377159118652344, -12399.751953125), function()
				return fn10(arg)
			end)

			task.wait(3)
		end
	end
end

local getNearMob = nil

CheckEnemySpawn = function(arg)
	if not arg or arg == "" then
		return false
	end

	if enemies then
		local v9 = enemies:FindFirstChild(arg)
		if v9 and fn10(v9) then
			return true
		end

		for _, child in ipairs(enemies:GetChildren()) do
			if MobNameMatches(child.Name, arg) and fn10(child) then
				return true
			end
		end
	end

	if getNearMob then
		local v9 = getNearMob(arg)
		if fn10(v9) then
			return true
		end
	end

	local characters = workspace:FindFirstChild("Characters")

	if characters then
		local v9 = characters:FindFirstChild(arg)
		if v9 and fn10(v9) then
			return true
		end

		for _, child in ipairs(characters:GetChildren()) do
			if MobNameMatches(child.Name, arg) and fn10(child) then
				return true
			end
		end
	end

	return false
end

GetMainEnemy = function(arg)
	if not arg or arg == "" then
		return nil
	end

	if enemies then
		local v9 = enemies:FindFirstChild(arg)
		if v9 and fn10(v9) then
			return v9
		end

		for _, child in ipairs(enemies:GetChildren()) do
			if MobNameMatches(child.Name, arg) and fn10(child) then
				return child
			end
		end
	end

	if getNearMob then
		local v9 = getNearMob(arg)
		if fn10(v9) then
			return v9
		end
	end

	local function fn27()
		return not CheckEnemySpawn(arg)
	end

	local worldOrigin = game:GetService("Workspace"):FindFirstChild("_WorldOrigin") or game:GetService("Workspace"):FindFirstChild("WorldOrigin")
	worldOrigin = worldOrigin and worldOrigin:FindFirstChild("EnemySpawns")

	if worldOrigin then
		for _, child in pairs(worldOrigin:GetChildren()) do
			local match = child.Name:match("^(.-)%s*%[") or child.Name

			if child.Name == arg or MobNameMatches(match, arg) then
				SSS(GetNearSpawn(child.Position), fn27)
				DoTween2(child.CFrame + Vector3.new(0, 30, 20))
				fn11(true)
				break
			end
		end
	end

	local v9 = enemies
	local v10

	if enemies then
		v10 = enemies:FindFirstChild(arg)
	else
		v10 = v9
	end

	if not v10 and getNearMob then
		v10 = getNearMob(arg)
	end

	if not v10 and enemies then
		pcall(function()
			v10 = enemies:WaitForChild(arg, 2)
		end)
	end

	if not Alive() then
		fn11(false)
	end

	return v10
end

NotInCoolDownSize = UDim2.new(0, 0, 1, -1)

NotCooldown = function(arg, arg2)
	return localPlayer.PlayerGui.Main.Skills[arg2][arg].Cooldown.Size == NotInCoolDownSize
end

IsSkillsNotCooldown = function(arg, arg2)
	if type(arg) == "table" then
		local flag2 = false

		for _, v9 in pairs(arg) do
			flag2 = NotCooldown(v9, arg2)
			if not flag2 then
				continue
			end
			break
		end

		return flag2
	end

	return NotCooldown(arg, arg2)
end

CancelQuest = function()
	local n5 = 0

	while (HasActiveQuest() or localPlayer and localPlayer:FindFirstChild("PlayerGui") and localPlayer.PlayerGui:FindFirstChild("Main") and localPlayer.PlayerGui.Main:FindFirstChild("Quest") and localPlayer.PlayerGui.Main.Quest.Visible) and n5 < 5 do
		n5 += 1

		pcall(function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		end)

		task.wait(0.2)
	end

	pcall(function()
		if localPlayer and localPlayer:FindFirstChild("PlayerGui") and localPlayer.PlayerGui:FindFirstChild("Main") and localPlayer.PlayerGui.Main:FindFirstChild("Quest") then
			localPlayer.PlayerGui.Main.Quest.Visible = false
		end
	end)
end

IsPlayerValid = function(arg)
	local n5 = 180

	if localPlayer.Data.Level.Value < 75 then
		n5 = 80
	end

	local character = arg.Character
	if fn10(character) and math.abs(arg.Data.Level.Value - localPlayer.Data.Level.Value) < n5 and arg.Data.Level.Value > 20 and (character.HumanoidRootPart.Position - fn9(localPlayer.Character).Position).magnitude < 10000 and not string.find(arg.Data.DevilFruit.Value, "Buddha") then
		return true
	end
	return false
end

ResizeBoss = function(arg, arg2)
	if arg and fn9(arg) then
		fn9(arg).Transparency = 1

		if arg2 then
			fn9(arg).CanCollide = false
		end

		fn9(arg).Size = Vector3.new(90, 90, 90)
	end
end

LegitName = function(arg)
	return not string.find(arg, "Boss") and not string.find(arg, "Friend") and not string.find(arg, "friend")
end

GetCloseRangeAttack = function()
	if getgenv().Setting.Mastery.Sword and not getgenv().Setting.Mastery["Sword/Low"] then
		return "Sword"
	end
	return "Melee"
end

getgenv().getcallingfunction = function(arg)
	return debug.getinfo(arg + 1).func
end

local function fn27(arg)
	local attribute2 = arg:GetAttribute("EscapeKey")
	local flag2

	if attribute2 then
		flag2 = not (getgenv and getgenv().DoingEscapeQuest)
	else
		flag2 = attribute2
	end

	if flag2 then
		return false
	end

	if arg:FindFirstChild("CharacterReady") then
		return true
	end
end

pcall(function()
	setfflag("HumanoidParallelRemoveNoPhysics", "False")
	setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end)

OldSize = {}
OrginalPosition = {}
ConMob = {}
LastBringMob = tick()
BringMobCheck = {}
networkownerswitch = {}

if not isnetworkowner or string.find(identifyexecutor(), "Cryptic") then
	FakeOwnerNetWork = true

	isnetworkowner = function(arg)
		if not networkownerswitch[arg] then
			networkownerswitch[arg] = tick()
		end

		local ok2, result2 = pcall(function()
			return gethiddenproperty(arg, "NetworkOwnershipRule")
		end)

		if ok2 and result2 == Enum.NetworkOwnership.Manual then
			sethiddenproperty(arg, "NetworkOwnershipRule", Enum.NetworkOwnership.Automatic)
			networkownerswitch[arg] = tick() + 4
		end

		return networkownerswitch[arg] <= tick() and not arg:IsGrounded() and arg.AssemblyRootPart.ReceiveAge == 0
	end
end

local function fn28(arg, arg2, arg3, arg4)
	local v9 = LastBringMob
	if tick() - v9 <= 0 then
		return
	end
	LastBringMob = tick()

	for _, child in pairs(enemies:GetChildren()) do
		if fn10(child) and not Tweening and Alive() and LegitName(child.Humanoid.DisplayName) and fn27(child) then
			if arg == "Specific" and child.Name == arg2 or arg == "Near" then
				if arg == "Near" and fn10(arg2) and not BringMobCheck[arg2] then
					BringMobCheck[arg2] = tick()
					BringCFrame = fn9(arg2).CFrame
					BringPos = fn9(arg2).Position
				end

				if not OrginalPosition[child] then
					OrginalPosition[child] = fn9(child).Position
				end

				local n5 = arg4 or FakeOwnerNetWork and 250 or 350

				pcall(function()
					if BringCFrame ~= nil and BringPos ~= nil and getgenv().Setting.BringMob.Enable then
						if fn15(child, localPlayer.Character) <= n5 and (BringPos - fn9(child).Position).magnitude <= n5 and (BringPos - OrginalPosition[child]).magnitude <= n5 and isnetworkowner(fn9(child)) then
							if not getgenv()._SimRadiusSet then
								pcall(function()
									if setscriptable then
										setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
									end
								end)

								pcall(function()
									if sethiddenproperty then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 9999999)
									end
								end)

								getgenv()._SimRadiusSet = true
							end

							child.Humanoid.WalkSpeed = 0

							if not ConMob[child] then
								ConMob[child] = true
								local v10 = next
								local descendants, v11 = child:GetDescendants()

								for _, v12 in v10, descendants, v11 do
									if (v12:IsA("Part") or v12:IsA("MeshPart")) and not string.find(child.Name, "Leg") and v12.CanCollide then
										v12.CanCollide = false
									end
								end

								if child.Humanoid:FindFirstChild("Animator") then
									child.Humanoid.Animator:Destroy()
								end
							end

							local v10 = BringCFrame
							fn9(child).CFrame = v10
							local v11 = BringPos
							fn9(child).Position = v11
						end
					end
				end)
			end
		end
	end
end

GetBoat = function()
	for _, child in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if child:FindFirstChild("Owner") and child.Owner.Value == game.Players.LocalPlayer and child:FindFirstChild("VehicleSeat") then
			return child
		end
	end

	return false
end

DataSave = {
	Inventory = {
		Saber = false,
		Pole = false,
		Wando = false,
		Shisui = false,
		Saddi = false,
		Rengoku = false,
		Yama = false,
		Tushita = false,
		Dagger = false,
		["Soul Guitar"] = false,
	},
	BlackSmith = {},
	FullMas = {},
	FullSkill = {},
	LockedMas = { Tushita = false, Yama = false },
	TimerOneClick = 0,
	TTK = { Shisui = false, Wando = false, Saddi = false },
	Melee = {
		["Black Leg"] = { Have = false, Mas300 = false, Mas400 = false },
		Electro = { Have = false, Mas300 = false, Mas400 = false },
		["Fishman Karate"] = { Have = false, Mas300 = false, Mas400 = false },
		DragonClaw = { Have = false, Mas300 = false, Mas400 = false },
		Superhuman = { Have = false, Mas400 = false, Mas600 = false },
		["Sharkman Karate"] = { Have = false, Mas400 = false, Mas600 = false },
		["Death Step"] = { Have = false, Mas400 = false, Mas600 = false },
		["Electric Claw"] = { Have = false, Mas400 = false, Mas600 = false },
		["Dragon Talon"] = { Have = false, Mas400 = false, Mas600 = false },
		["God Human"] = { Have = false, Mas400 = false, Mas600 = false },
	},
	Unlocked = {
		Sleigh = false,
		Electricclaw = false,
		Dragontalon = false,
		Sharkman = false,
		Deathstep = false,
		SoulGuitar = false,
		SwanDoor = false,
	},
	Sea2Done = false,
	BartiloQuest = false,
	CitizenQuest = false,
	RainbowHaki = false,
}

GetLevel = function()
	return localPlayer.Data.Level.Value
end

ProgressChecker = {}

for _, v9 in pairs({ "Saber", "Sea2", "Sea3", "Bartilo", "RaceV2", "SoulGuitar", "Citizen Quest" }) do
	ProgressChecker[v9] = {}
end

SecondSeaProgress = function()
	if ProgressChecker.Sea2.KilledIceBoss then
		return
	end

	pcall(function()
		local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress")

		if response and typeof(response) == "table" then
			for k, v9 in pairs(response) do
				if typeof(v9) ~= "table" then
					ProgressChecker.Sea2[k] = v9
				end
			end
		end
	end)

	local door = workspace.Map:FindFirstChild("Ice") and workspace.Map.Ice:FindFirstChild("Door")

	if door then
		door = not door.CanCollide or door.Transparency == 1
	end

	if door then
		ProgressChecker.Sea2.UsedKey = true
	end
end

CitizenQuest = function()
	if ProgressChecker["Citizen Quest"].Hat then
		return
	end
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")

	if response then
		if response == 1 then
			ProgressChecker["Citizen Quest"].Bandit = true
		end

		if response == 2 then
			ProgressChecker["Citizen Quest"].Bandit = true
			ProgressChecker["Citizen Quest"].ElephantBoss = true
		end

		if response == 3 then
			ProgressChecker["Citizen Quest"].Hat = true
			ProgressChecker["Citizen Quest"].Bandit = true
			ProgressChecker["Citizen Quest"].ElephantBoss = true
		end
	end
end

RaceV2Progress = function()
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")

	if response == 0 then
		ProgressChecker.RaceV2.DoneRace = false
	elseif response == 1 then
		ProgressChecker.RaceV2.StartRace = true
	elseif response ~= nil then
		ProgressChecker.RaceV2.DoneRace = true
	end
end

RaceV3Progress = function()
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")

	if response == 0 then
		ProgressChecker.RaceV2.DoneRace = false
	elseif response == 1 then
		ProgressChecker.RaceV2.StartRace = true
	elseif response ~= nil then
		ProgressChecker.RaceV2.DoneRace = true
	end
end

GuitarProgress = function()
	if GetLevel() < 2300 then
		return false
	end
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")

	if response then
		for k, v9 in pairs(response) do
			ProgressChecker.SoulGuitar[k] = v9
		end

		if response.Trophies then
			DataSave.Unlocked.SoulGuitar = true
		end
	end
end

local function fn29()
	local tbl16 = { "CDKQuest", "Progress", "Good" }
	local response = nil

	pcall(function()
		response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(tbl16))
	end)

	if type(response) == "table" then
		return response
	end
	return { Good = 0, Evil = 0 }
end

IsRaceV3 = function()
	return CheckItem(SkillsV3Name[localPlayer.Data.Race.Value])
end

BartiloProgress = function()
	if ProgressChecker.Bartilo.DidPlates or DataSave.BartiloQuest then
		return
	end
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")

	if response then
		for k, v9 in pairs(response) do
			ProgressChecker.Bartilo[k] = v9
		end
	end

	if ProgressChecker.Bartilo.DidPlates then
		DataSave.BartiloQuest = true
	end
end

CheckBartilo = function()
	if DataSave.BartiloQuest then
		return true
	end

	if CheckInvItem("Warrior Helmet") then
		DataSave.BartiloQuest = true
		return true
	end
	return false
end

ThirdSeaProgress = function()
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Check")

	if response == 0 then
		ProgressChecker.Sea3.Doflamingo = true
	end

	if response == 1 then
		ProgressChecker.Sea3.Doflamingo = true
		ProgressChecker.Sea3.FakeRipIndra = true
	end
end

SaberProgress = function()
	if ProgressChecker.Saber.KilledShanks then
		return
	end
	CheckSaber = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "ProQuestProgress" }))

	if CheckSaber then
		for k, v9 in pairs(CheckSaber) do
			if typeof(v9) == "table" then
				Plates = 0

				for _, v10 in pairs(v9) do
					if v10 == true then
						Plates = Plates + 1
					end
				end
			end

			ProgressChecker.Saber[k] = v9
		end

		return false
	end
end

UseRaceV4 = function()
	if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
		local awakening = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening") or localPlayer.Character:FindFirstChild("Awakening")

		if awakening then
			awakening.RemoteFunction:InvokeServer(true)
		end
	end
end

AbilityCondition = {
	Mink = function()
		return true
	end,
	Skypiea = function(arg)
		local fn30 = arg or function()
			return true
		end

		if Alive() and localPlayer.Character.Humanoid.Health <= localPlayer.Character.Humanoid.MaxHealth * 80 / 100 and fn30() then
			return true
		end
	end,
	Ghoul = function(arg)
		local fn30 = arg or function()
			return true
		end

		if Alive() and fn30() then
			return true
		end
	end,
	Fishman = function(arg)
		local fn30 = arg or function()
			return true
		end

		if Alive() and localPlayer.Character.Humanoid.Health <= localPlayer.Character.Humanoid.MaxHealth * 80 / 100 and fn30() then
			return true
		end
	end,
	Cyborg = function(arg)
		local fn30 = arg or function()
			return true
		end

		if Alive() and fn30() then
			return true
		end
	end,
	Human = function(arg)
		local fn30 = arg or function()
			return true
		end

		if Alive() and fn30() and localPlayer.Character.Humanoid.Health <= localPlayer.Character.Humanoid.MaxHealth * 70 / 100 then
			return true
		end
	end,
}

LastAbilityUse = tick()

SmartAbilityUse = function(arg)
	local flag2 = AbilityCondition[localPlayer.Data.Race.Value] and AbilityCondition[localPlayer.Data.Race.Value]() or arg

	if flag2 then
		local v9 = LastAbilityUse
		flag2 = tick() - v9 > 0.5
	end

	if flag2 then
		game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
	end
end

CheckInvItem = function(arg)
	if not DataSave.Inventory[arg] then
		if Alive() then
			if localPlayer.Backpack:FindFirstChild(arg) or localPlayer.Character:FindFirstChild(arg) then
				DataSave.Inventory[arg] = true
				return true
			end
			CheckA = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")

			if CheckA then
				for _, v9 in pairs(CheckA) do
					for _, v10 in pairs(v9) do
						if string.find(v10, arg) or v10 == arg then
							DataSave.Inventory[arg] = true
							return true
						end
					end
				end
			end

			return false
		end

		print("Recursive Check Inv Item")

		repeat
			wait()
		until Alive()

		wait(1)
		return CheckInvItem(arg)
	end

	return true
end

GetSettingHopExploiter = function()
	if CheckItem("Hallow Essence") or CheckItem("Fist of Darkness") or CheckItem("God's Chalice") or CheckItem("Sweet Chalice") or Sea3 and CheckItem("Red Key") and not CanAwakenDough() or (Sea3 or Sea2) and CheckItem("Special Microchip") or Sea2 and CheckFlower() then
		return
	end
	return getgenv().OneClickSetting and getgenv().OneClickSetting.HopIfFoundNearExploiter and WorkingFarm:empty()
end

HopNearExploiter = function()
	if getgenv().IsExploiting then
		for k, v9 in getgenv().IsExploiting, nil, nil do
			Char = workspace.Characters:FindFirstChild(k)
			v9 = Char and Char:FindFirstChild("HumanoidRootPart") and v9

			if v9 then
				if fn15(localPlayer.Character, Char) < 500 then
					MainServerHop(5, "Exploiter Found Nearby", 1, 5)
				end
			end
		end
	end
end

GetMaxMastery = function(arg)
	if arg then
		local n5 = 0

		if arg:FindFirstChild("Data") then
			local Data = require(arg.Data)

			for _, v9 in pairs(AllFruitKeys) do
				if Data.Lvl[v9] then
					n5 = math.max(n5, Data.Lvl[v9])
				end
			end
		end

		return n5
	end

	return 0
end

GetMaxMasteryWeapon = function(arg)
	if arg and arg:FindFirstChild("Data") then
		return require(arg.Data).Lvl.X
	end
	return 0
end

GetCurrentWeaponSwitcher = function(arg, arg2)
	if Weapon600Mas[arg2] then
		return
	end
	PrioritySword = { ["0"] = {}, ["1"] = {}, ["2"] = {}, ["3"] = {}, ["4"] = {} }
	CheckA = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")

	if CheckA then
		for _, v9 in pairs(CheckA) do
			local flag2 = v9.Type == arg2
			local flag3

			if flag2 then
				flag3 = not (arg and DataSave.FullMas[v9.Name] or not arg and DataSave.FullSkill[v9.Name])
			else
				flag3 = flag2
			end

			if flag3 then
				if PrioritySword[tostring(v9.Rarity)] then
					local name = v9.Name
					table.insert(PrioritySword[tostring(v9.Rarity)], name)
				else
					print("Errored At ", v9.Rarity)
				end
			end
		end

		for i = 4, 1, -1 do
			local v9, v10, v11 = pairs(PrioritySword[tostring(i)])
			local v12 = table.pack(i_2())
			if v12[1] then
				return v12[3]
			end
		end
	end
end

LastCheckGear = tick()
print("Intilizing UI")
getgenv().Premium = true
CheckPremium = true
getgenv().LoadUi = true

while true do
	wait()
	if not (getgenv().LoadUi and getgenv().IslandCaller and getgenv().SettingManager) then
		continue
	end
	break
end

print("Adding Char Connection")

localPlayer.CharacterAdded:Connect(function()
	DoneBeGod = false
end)

TeleportService = game:GetService("TeleportService")

TeleportService.TeleportInitFailed:Connect(function()
end)

SupportRetard()
Animation = Instance.new("Animation")

getHits = function(arg, arg2)
	local tbl16 = {}
	local children = workspace.Enemies:GetChildren()
	local children2 = workspace.Characters:GetChildren()

	for i = 1, #children do
		local v9 = children[i]

		if getgenv().Setting.FastAttack.OnMob then
			local humanoid = v9:FindFirstChildOfClass("Humanoid")

			if humanoid and humanoid.RootPart and humanoid.Health > 0 and (not v9:GetAttribute("EscapeKey") or getgenv and getgenv().DoingEscapeQuest) and game.Players.LocalPlayer:DistanceFromCharacter(humanoid.RootPart.Position) < arg then
				table.insert(tbl16, arg2 and v9[arg2] or humanoid.RootPart)
			end
		end
	end

	for i = 1, #children2 do
		local v9 = children2[i]

		if getgenv().Setting.FastAttack.OnPlayer then
			if v9 ~= game.Players.LocalPlayer.Character then
				local humanoid = v9:FindFirstChildOfClass("Humanoid")

				if humanoid and humanoid.RootPart and humanoid.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(humanoid.RootPart.Position) < arg then
					table.insert(tbl16, arg2 and v9[arg2] or humanoid.RootPart)
				end
			end
		end
	end

	return tbl16
end

Delay = 0
LastHash = tick()
print("Attack No CD")

AttackNoCD = function()
end

local function fn30()
	local n5 = 9999999
	local v9 = nil

	for _, v10 in pairs(fn8()) do
		if v10 ~= localPlayer then
			if Alive() and fn10(v10.Character) then
				if fn15(v10.Character, localPlayer.Character) <= n5 then
					n5 = fn15(v10.Character, localPlayer.Character)
					v9 = v10
				end
			end
		end
	end

	return v9
end

print("Setting Gun Method")

BypassShootGun = function()
	local ok2, result2 = pcall(function()
		local controllers = game:GetService("ReplicatedStorage"):FindFirstChild("Controllers")
		local combatController = controllers and controllers:FindFirstChild("CombatController")
		if combatController then
			return require(combatController)
		end
	end)

	if not ok2 or not result2 or not result2.Attack then
		return
	end
	local v9 = debug.getupvalues(result2.Attack)
	v9 = v9 and v9[9]
	if not v9 then
		return
	end
	local n5 = debug.getupvalue(v9, 14)
	local v10 = debug.getupvalue(v9, 16)
	local n6 = debug.getupvalue(v9, 12)
	local v11 = debug.getupvalue(v9, 18)
	if not n5 or not v10 or not n6 or not v11 then
		return
	end
	local n7 = n6 * 798405
	local n8 = (n5 * 798405 + n6 * 727595) % v10

	calcccc = function()
		n8 = (n8 * v10 + n7) % 1099511627776
		n5 = math.floor(n8 / v10)
		n6 = n8 - n5 * v10
	end

	calcccc()
	debug.setupvalue(v9, 14, n5)
	debug.setupvalue(v9, 16, v10)
	debug.setupvalue(v9, 12, n6)
	debug.setupvalue(v9, 18, v11)
	game.ReplicatedStorage.Remotes.Validator2:FireServer(math.floor(n8 / 1099511627776 * 16777215), v11)
end

ShootGun = function(arg, arg2)
	local isModel = typeof(arg) == "Instance" and arg:IsA("Model") and Players:FindFirstChild(arg.Name)
	local head = nil
	local flag2 = nil
	local v9 = nil

	for _, child in pairs(localPlayer.Character:GetChildren()) do
		if child:IsA("Tool") then
			if child.ToolTip == "Gun" then
				v9 = child
			end
		end
	end

	if v9 then
		local v10 = fn13(arg)

		if typeof(arg) == "Instance" and arg:IsA("Model") then
			head = arg.Head
			arg:FindFirstChild("HumanoidRootPart")
		end

		if isModel then
			flag2 = arg and arg:FindFirstChild("HumanoidRootPart") and arg:FindFirstChild("Humanoid") and arg:FindFirstChild("Humanoid").Health > 0
		end

		local ok2, result2 = pcall(function()
			if Alive() then
				if isModel and flag2 or not isModel then
					if v9.Name == "Skull Guitar" then
						v9.RemoteEvent:FireServer(unpack({ "TAP", v10 }))
					else
						BypassShootGun()
						local tbl16 = { v10 }

						if v9.Name ~= "Bazooka" and v9.Name ~= "Cannon" then
							tbl16[2] = arg2 and { head } or getHits(100, "Head")
						end

						game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/ShootGunEvent"):FireServer(unpack(tbl16))
					end
				end
			end
		end)

		if result2 then
			print("Shoot Gun Err:", result2)
		end
	end
end

StartAttack = tick()
print("Adjusting Animation")
print("Last Fast attack")
local Players2 = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService3 = game:GetService("RunService")
local localPlayer3 = Players2.LocalPlayer
local enemies2 = Workspace:WaitForChild("Enemies")
local characters = Workspace:WaitForChild("Characters")
local net = ReplicatedStorage.Modules.Net
local reRegisterAttack = net["RE/RegisterAttack"]
local reRegisterHit = net["RE/RegisterHit"]
local v9 = nil
local attribute2 = nil

for _, v10 in next, { ReplicatedStorage.Util, ReplicatedStorage.Common, ReplicatedStorage.Remotes, ReplicatedStorage.Assets, ReplicatedStorage.FX }, nil do
	local v11 = next
	local children, v12 = v10:GetChildren()

	for _, v13 in v11, children, v12 do
		if v13:IsA("RemoteEvent") and v13:GetAttribute("Id") then
			v9 = v13
			attribute2 = v13:GetAttribute("Id")
		end
	end

	v10.ChildAdded:Connect(function(child)
		if child:IsA("RemoteEvent") and child:GetAttribute("Id") then
			v9 = child
			attribute2 = child:GetAttribute("Id")
		end
	end)
end

local tbl16

tbl16 = {
	Rate = 0.1,
	GetMob = function(arg, arg2, arg3)
		local position = arg2:GetPivot().Position
		local tbl17 = {}
		local v10 = next
		local children, v11 = arg3:GetChildren()

		for _, v12 in v10, children, v11 do
			local humanoid = v12:FindFirstChild("Humanoid")
			local humanoidRootPart = v12:FindFirstChild("HumanoidRootPart")

			if humanoid and humanoidRootPart and humanoid.Health > 0 and (humanoidRootPart.Position - position).Magnitude <= 60 and (not v12:GetAttribute("EscapeKey") or getgenv and getgenv().DoingEscapeQuest) then
				tbl17[#tbl17 + 1] = v12
			end
		end

		return tbl17
	end,
	Collect = function(arg, arg2)
		local tbl17 = {}
		local mob = arg:GetMob(arg2, enemies2)
		local mob2 = arg:GetMob(arg2, characters)

		for i = 1, #mob do
			tbl17[#tbl17 + 1] = mob[i]
		end

		for i = 1, #mob2 do
			tbl17[#tbl17 + 1] = mob2[i]
		end

		return tbl17
	end,
	Fast = function(arg)
		local character = localPlayer3.Character
		if not character then
			return
		end
		local v10 = arg:Collect(character)
		if #v10 < 1 then
			return
		end
		local tbl17 = {}

		for i = 1, #v10 do
			local head = v10[i]:FindFirstChild("Head") or v10[i].PrimaryPart

			if head then
				tbl17[#tbl17 + 1] = { v10[i], head }
			end
		end

		if #tbl17 < 1 then
			return
		end
		reRegisterAttack:FireServer(tbl16.Rate)
		reRegisterHit:FireServer(tbl17[1][2], tbl17)
	end,
}

local function fn31()
	local character = localPlayer3.Character
	if not character then
		return
	end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return
	end
	local tbl17 = {}

	local function fn32(arg)
		local v10 = next
		local children, v11 = arg:GetChildren()

		for _, v12 in v10, children, v11 do
			local humanoid = v12:FindFirstChild("Humanoid")
			local humanoidRootPart2 = v12:FindFirstChild("HumanoidRootPart")

			if humanoid and humanoidRootPart2 and humanoid.Health > 0 and v12 ~= character and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= 60 and (not v12:GetAttribute("EscapeKey") or getgenv and getgenv().DoingEscapeQuest) then
				local v13 = next
				local children2, v14 = v12:GetChildren()

				for _, v15 in v13, children2, v14 do
					if v15:IsA("BasePart") then
						tbl17[#tbl17 + 1] = { v12, v15 }
					end
				end
			end
		end
	end

	fn32(enemies2)
	fn32(characters)
	if #tbl17 < 1 then
		return
	end
	local response = net.seed:InvokeServer()
	reRegisterAttack:FireServer()
	local head = tbl17[1][1]:FindFirstChild("Head")
	if not head then
		return
	end
	reRegisterHit:FireServer(head, tbl17, {})

	if v9 then
		local n5 = math.floor(Workspace:GetServerTimeNow() / 10 % 10) + 1

		v9:FireServer(("RE/RegisterHit"):gsub(".", function(arg)
			return string.char(bit32.bxor(arg:byte(), n5))
		end), bit32.bxor(attribute2 + 909090, response * 2), head, tbl17)
	end
end

pcall(function()
	require(ReplicatedStorage.Util.CameraShaker):Stop()
end)

task.spawn(function()
	while task.wait(tbl16.Rate) do
		pcall(function()
			tbl16:Fast()
		end)
	end
end)

RunService3.Heartbeat:Connect(function()
	pcall(fn31)
end)

task.spawn(function()
	while task.wait() do
		local character = localPlayer3.Character

		if character then
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart then
				local str = tostring(localPlayer3.UserId):sub(2, 4) .. tostring(coroutine.running()):sub(11, 15)
				local v10 = next
				local children, v11 = enemies2:GetChildren()
				local flag2 = false

				for _, v12 in v10, children, v11 do
					local humanoidRootPart2 = v12:FindFirstChild("HumanoidRootPart")
					local humanoid = v12:FindFirstChild("Humanoid")

					if humanoidRootPart2 and humanoid and humanoid.Health > 0 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= 60 and (not v12:GetAttribute("EscapeKey") or getgenv and getgenv().DoingEscapeQuest) then
						if not flag2 then
							reRegisterAttack:FireServer()
							flag2 = true
						end

						reRegisterHit:FireServer(humanoidRootPart2, { { v12, humanoidRootPart2 } }, nil, nil, str)
					end
				end
			end
		end
	end
end)

print("SKill Controller")

task.spawn(function()
	while task.wait(0.1) do
		if not Debounce and SkillsController.Condition and SkillsController.Condition() then
			Debounce = true

			local ok2, result2 = pcall(function()
				for _, v10 in pairs(SkillsController.Weapon) do
					if SkillsController.Condition and SkillsController.Condition() then
						local v11 = GetCurrentTool(v10)

						if v11 then
							if Alive() then
								WeaponData = require(v11.Data)

								if v10 == "Blox Fruit" then
									pcall(Equip, GetCurrentTool("Blox Fruit", true))

									for _, skill in pairs(SkillsController.Skills) do
										if localPlayer.Character:FindFirstChild(v11.Name):FindFirstChild("Level") then
											if WeaponData.Lvl[skill] <= localPlayer.Character:FindFirstChild(v11.Name).Level.Value then
												local condition = SkillsController.Condition and SkillsController.Condition()

												if condition then
													condition = not (SkillsController.Idle and SkillsController.Idle())
												end

												if condition then
													Press(skill, getgenv().Setting.FruitSkillsHold[skill] or 0)
													task.wait(0.3)
												end
											end
										end
									end
								else
									local name = GetCurrentTool(v10) and GetCurrentTool(v10).Name

									if name then
										Equip(name)

										for _, v12 in pairs({ "Z", "X", "C" }) do
											if localPlayer.Character:FindFirstChild(v11.Name):FindFirstChild("Level") then
												if v10 ~= "Melee" and v12 == "C" then
													continue
												elseif SkillsController.Condition and SkillsController.Condition() then
													if WeaponData.Lvl[v12] <= localPlayer.Character:FindFirstChild(v11.Name).Level.Value then
														if not (SkillsController.Idle and SkillsController.Idle()) then
															Press(v12)
															task.wait(0.2)
														end
													end

													continue
												end
											else
												continue
											end

											break
										end
									end
								end
							end
						end

						if SkillsController.Idle and SkillsController.Idle() then
							while SkillsController.Idle and SkillsController.Idle() and SkillsController.Condition and SkillsController.Condition() do
								task.wait(0.1)
							end
						end

						continue
					end

					break
				end
			end)

			if result2 then
				print("Skill Controller: ", result2)
			end

			task.wait()
			Debounce = false
		end
	end
end)

print("Load SilentAim")

if getgenv().OneClickSetting and getgenv().OneClickSetting.Mastery or not getgenv().OneClickSetting then
	loadstring([[                if string.find(identifyexecutor(),"macsploit") then
                    return 
                end
                local gt = getrawmetatable(game)
                local namecall = gt.__namecall
                setreadonly(gt, false)
                gt.__namecall = newcclosure(function(self, ...)

                    local method = getnamecallmethod()
                    local args = {...}
                    if method == "FireServer" then 
                        if tostring(self) == "RemoteEvent" then 
                            if tostring(args[1]) ~= "true" and tostring(args[1]) ~= "false" and not getgenv().Setting.Pvp.DisableSilentAim then
                                local HookPosition = (getgenv().SilentAimPos and getgenv().PosToHook) or (getgenv().Setting.Pvp.SilentAimNear and getgenv().HitPosition)
                                if HookPosition then
                                    if  #args == 1 and typeof(args[1]) == "Vector3" then
                                        args[1] = HookPosition
                                    end
                                    if #args == 1 and typeof(args[1]) == "CFrame" then
                                        args[1] = CFrame.new(HookPosition)
                                    end
                                end 
                            end
                        end

                    end
                    if method == "InvokeServer" then 
                        
                        if self.Parent ~= nil and tostring(self.Parent) == "Humanoid" then 
                        
                            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" and type(args[2]) == "vector" and not getgenv().Setting.Pvp.DisableSilentAim then
                            --  print(tostring(self),self.Parent,self.Parent.Parent)
                            --  print(tostring(getcallingscript()))
                                local HookPosition = (getgenv().SilentAimPos and getgenv().PosToHook) or (getgenv().Setting.Pvp.SilentAimNear and getgenv().HitPosition)
                                if HookPosition then
                                    --print("hooked 2")
                                    if  typeof(args[2]) == "Vector3" then
                                        args[2] = HookPosition
                                    end
                                    if typeof(args[2]) == "CFrame" then
                                        args[2] = CFrame.new(HookPosition)
                                    end
                                end
                            end
                        end
                    end
                    if method == "GetServerTimeNow" then
                        local callingscript = getcallingscript().Name
                        local func = getgenv().getcallingfunction(3)
                        if  callingscript == "Skyjump" then
                            
                            if debug.getinfo(func).name  == "jumped" then
                                getgenv().SkyFunc = func
                            end
                        else
                            if debug.getinfo(func).name  == "handleAction" then
                                if callingscript == "Dodge" then
                                    getgenv().DodgeFunc = func
                                end
                                if callingscript == "Soru" then 
                                    getgenv().SoruFunc = func
                                end
                            end
                        end
                    end

                    return namecall(self, unpack(args))
                end)
            ]])()
end

spawn(function()
	print("Loaded LP Modifier")

	while task.wait(0.1) do
		if getgenv().Setting.LocalPlayer.SoruNoCD then
			if getgenv().SoruFunc then
				local soruFunc = getgenv().SoruFunc

				for k, v10 in pairs(debug.getconstants(soruFunc)) do
					if type(v10) == "number" and v10 > 0.03 and v10 < 0.04 then
						debug.setconstant(soruFunc, k, 0)
					end
				end

				if #debug.getconstants(soruFunc) > 50 and #debug.getupvalues(soruFunc) > 8 then
					for _, v10 in pairs(debug.getupvalues(soruFunc)) do
						if type(v10) == "table" then
							if v10.LastUse and v10.LastAfter then
								v10.LastAfter = 0
								v10.LastUse = 0
							end
						end
					end
				end
			end
		end

		if getgenv().Setting.LocalPlayer.DashNoCD then
			if getgenv().DodgeFunc then
				local dodgeFunc = getgenv().DodgeFunc
				setupvalue(dodgeFunc, 6, 0)

				if getgenv().Setting.LocalPlayer.DoDashRange and getgenv().Setting.LocalPlayer.DashRange then
					setupvalue(dodgeFunc, 10, getgenv().Setting.LocalPlayer.DashRange)
				end
			end
		end

		if getgenv().Setting.LocalPlayer.InfGeppo and getgenv().SkyFunc then
			local skyFunc = getgenv().SkyFunc
			local v10 = next
			local v11, v12 = getupvalues(skyFunc)

			for k in v10, v11, v12 do
				if tostring(k) == "9" then
					setupvalue(skyFunc, k, 0)
				end
			end
		end
	end
end)

if not getgenv().Setting.OneClick.Enable then
	loadstring([[  
                if string.find(identifyexecutor(),"macsploit") then
                    return 
                end
                print("loading [0x02]")
                local lp = game.Players.LocalPlayer
                local gt2 = getrawmetatable(lp)
                local newIndex = gt2.__newindex
                setreadonly(gt2, false)
                gt2.__newindex = newcclosure(function(self, Index, Value)
                    if getgenv().Setting.LocalPlayer.SpeedHack and tostring(Index) == "WalkSpeed" and tostring(self) == "Humanoid"  then
                        Value = getgenv().Setting.LocalPlayer.Speed or 100
                    end
                    return newIndex(self, Index, Value)
                end)
            ]])()
end

print("Load Queue")

local function fn32(arg, arg2, arg3)
	if arg3 then
		for _, v10 in pairs(arg) do
			if LegitName(v10.Name) and fn10(v10) and string.find(v10.Name, arg3) and (not v10:GetAttribute("EscapeKey") or getgenv and getgenv().DoingEscapeQuest) then
				return v10
			end
		end
	end

	local function fn33(arg4)
		if arg2 == "Level30" then
			return string.find(arg4, "Sky")
		end

		if arg2 == "Level60" then
			return not table.find(AllBoss[currentPlaceKey], arg4) and not string.find(arg4, "Royal Soldier")
		end
		return true
	end

	local v10, v11, v12 = pairs(arg)
	local n5 = 99999
	local v13 = nil

	for _, v14 in v10, v11, v12 do
		local v15 = LegitName(v14.Name) and fn10(v14) and fn33(v14.Name) and fn27(v14)
		local doingEscapeQuest

		if v15 then
			local flag2 = not v14:GetAttribute("EscapeKey")

			if flag2 then
				doingEscapeQuest = flag2
			else
				doingEscapeQuest = getgenv and getgenv().DoingEscapeQuest
			end
		else
			doingEscapeQuest = v15
		end

		if doingEscapeQuest then
			local v16 = fn15(v14, localPlayer.Character)

			if v16 < n5 then
				n5 = v16
				v13 = v14
			end
		end
	end

	return v13
end

getNearMob = function(arg, arg2)
	local handlers = {
		Katakuri = function(arg3)
			if string.match(arg3.Name, "Baking Staff") or string.match(arg3.Name, "Head Baker") or string.match(arg3.Name, "Cake Guard") or string.match(arg3.Name, "Cookie Crafter") then
				return true
			end
		end,
		Bone = function(arg3)
			if string.match(arg3.Name, "Reborn Skeleton") or string.match(arg3.Name, "Living Zombie") or string.match(arg3.Name, "Demonic Soul") or string.match(arg3.Name, "Posessed Mummy") then
				return true
			end
		end,
		Elite = function(arg3)
			if string.find(arg3.Name, "Diablo") or string.find(arg3.Name, "Deandre") or string.find(arg3.Name, "Urban") then
				return true
			end
		end,
		["Pirate Raid"] = function(arg3)
			local flag2 = fn10(arg3) and Alive()

			if flag2 then
				local centerCastle = PlacesPosition.CenterCastle
				flag2 = (fn9(arg3).Position - centerCastle).magnitude <= 1000
			end

			if flag2 and arg3.Name ~= "rip_indra True Form" then
				return true
			end
		end,
		Material = function(arg3)
			if Alive() and fn10(arg3) and tbl5.MaterialFarm.CheckMob[arg2].IsMob(arg3) then
				local flag2 = true

				if arg2 ~= "Dragon Scale" then
					if type(tbl5.MaterialFarm.CheckMob[arg2].Pos) ~= "table" then
						if (tbl5.MaterialFarm.CheckMob[arg2].Pos.Position - fn9(arg3).Position).magnitude >= 2500 then
							flag2 = false
						end
					else
						for _, v10 in pairs(tbl5.MaterialFarm.CheckMob[arg2].Pos) do
							if (v10.Position - fn9(arg3).Position).magnitude >= 3000 then
								flag2 = false
							end
						end
					end
				end

				return flag2
			end
		end,
		Factory = function(arg3)
			if arg3.Name == "Core" then
				return true
			end
		end,
	}

	local tbl17 = {}

	for _, child in pairs(enemies:GetChildren()) do
		if not child:GetAttribute("EscapeKey") or getgenv and getgenv().DoingEscapeQuest then
			if type(arg) == "string" and handlers[arg] then
				if handlers[arg](child) then
					table.insert(tbl17, child)
				end
			elseif type(arg) == "function" then
				if arg(child) and LegitName(child.Name) then
					table.insert(tbl17, child)
				end
			elseif child.Name == arg or type(arg) == "string" and MobNameMatches(child.Name, arg) or not arg then
				table.insert(tbl17, child)
			end
		end
	end

	return fn32(tbl17, nil, arg2 == "Pirate Raid" and "Tanky")
end

if getgenv then
	getgenv().GetNearMob = getNearMob
end

env.GetNearMob = getNearMob
local lastMobPosition = {}

if getgenv then
	getgenv().LastMobPosition = lastMobPosition
end

env.LastMobPosition = lastMobPosition

local tbl17 = {
	Bandit = CFrame.new(1137.2, 12.7, 1594.2),
	Trainee = CFrame.new(-2722.6, 31.8, 2090),
	Monkey = CFrame.new(-1592.6, 27.7, 137.2),
	Gorilla = CFrame.new(-1313.4, 18.2, -548.4),
	["The Gorilla King"] = CFrame.new(-1193.9, 10.7, -549.8),
	Pirate = CFrame.new(-1140.6, 22.4, 3975.8),
	Brute = CFrame.new(-1203.8, 28.4, 4369.7),
	Bobby = CFrame.new(-1120.5, 54.7, 4121.2),
	Chef = CFrame.new(-1120.5, 54.7, 4121.2),
	["Desert Bandit"] = CFrame.new(923.7, 7.6, 4514),
	["Desert Officer"] = CFrame.new(1572.9, 14.4, 4159),
	["Snow Bandit"] = CFrame.new(1418, 76.7, -1437),
	Snowman = CFrame.new(1197, 96.1, -1603),
	Yeti = CFrame.new(1185, 106, -1518),
	["Chief Petty Officer"] = CFrame.new(-4809.4, 12.6, 4302.2),
	["Vice Admiral"] = CFrame.new(-5010.8, 15.1, 4383.7),
	Greybeard = CFrame.new(-4953.1, 13.9, 4159.8),
	["Sky Bandit"] = CFrame.new(-5091.6, 280.7, -1019.2),
	["Dark Master"] = CFrame.new(-5292.5, 504.9, -350.8),
	Prisoner = CFrame.new(5271.6, 7.1, 467.9),
	["Dangerous Prisoner"] = CFrame.new(5278.3, 16.1, 875.1),
	["Ruthless Prisoner"] = CFrame.new(5330, 25, 777),
	Warden = CFrame.new(5623.2, 1.4, 733.8),
	["Chief Warden"] = CFrame.new(5230, 10, 750),
	Swan = CFrame.new(5230, 10, 750),
	["Toga Warrior"] = CFrame.new(-1745.1, 10.2, -2705),
	Gladiator = CFrame.new(-1175.4, 11.6, -3213.7),
	["Military Soldier"] = CFrame.new(-5409.1, 17.1, 8499.2),
	["Military Spy"] = CFrame.new(-5841.6, 76.9, 8772.9),
	["Magma General"] = CFrame.new(-5625.7, 55.4, 8623),
	["Magma Admiral"] = CFrame.new(-5625.7, 55.4, 8623),
	["Fishman Warrior"] = CFrame.new(60792.9, 24.2, 1361.5),
	["Fishman Commando"] = CFrame.new(61928.2, 24.6, 1331.1),
	["Fishman Lord"] = CFrame.new(61352.9, 67.2, 1029.1),
	["God's Guard"] = CFrame.new(-4240.6, 1088.9, -403.7),
	Shanda = CFrame.new(-5975.6, 5469.5, 1800),
	["Royal Squad"] = CFrame.new(-6798.3, 5551.9, 1213.8),
	["Royal Soldier"] = CFrame.new(-7064.4, 5541.1, 939.4),
	["Sky Warlord"] = CFrame.new(-6271.6, 5472.8, 1887.8),
	Wysper = CFrame.new(-6271.6, 5472.8, 1887.8),
	["Lightning God"] = CFrame.new(-7125.4, 5596.1, 111.5),
	["Thunder God"] = CFrame.new(-7125.4, 5596.1, 111.5),
	["Galley Pirate"] = CFrame.new(5571.6, 78.4, 4009.8),
	["Galley Captain"] = CFrame.new(5409.5, 77.7, 4687),
	Cyborg = CFrame.new(6252.4, 9.3, 4941.4),
	["Saber Expert"] = CFrame.new(-1527.2, 34.1, -33.2),
	["The Saw"] = CFrame.new(-690, 15, 1580),
	["Mob Boss"] = CFrame.new(-2880.7, 6.7, 5430.9),
	Raider = CFrame.new(-628, 52, 2043),
	Mercenary = CFrame.new(-853, 52, 1756),
	Diamond = CFrame.new(-1583, 198, -12),
	["Swan Pirate"] = CFrame.new(882, 121, 1216),
	["Factory Staff"] = CFrame.new(295, 73, -56),
	Jeremy = CFrame.new(2316, 449, 787),
	["Marine Lieutenant"] = CFrame.new(-2726, 73, -2982),
	["Marine Captain"] = CFrame.new(-1980, 73, -3326),
	Orbitus = CFrame.new(-2116, 73, -3173),
	Fajita = CFrame.new(-2116, 73, -3173),
	Zombie = CFrame.new(-5654, 8, -737),
	Vampire = CFrame.new(-6022, 6, -1303),
	["Snow Trooper"] = CFrame.new(530, 402, -5347),
	["Winter Warrior"] = CFrame.new(1178, 430, -5189),
	["Awakened Ice Admiral"] = CFrame.new(5662, 28, -5983),
	["Lab Subordinate"] = CFrame.new(-5829, 16, -4445),
	["Horned Warrior"] = CFrame.new(-6390, 16, -5811),
	["Smoke Admiral"] = CFrame.new(-5078, 24, -5352),
	["Magma Ninja"] = CFrame.new(-5459, 22, -5420),
	["Lava Pirate"] = CFrame.new(-5377, 18, -5126),
	["Ship Deckhand"] = CFrame.new(1198, 126, 32988),
	["Ship Engineer"] = CFrame.new(917, 44, 32785),
	["Ship Steward"] = CFrame.new(916, 130, 33418),
	["Ship Officer"] = CFrame.new(917, 181, 33355),
	["Cursed Captain"] = CFrame.new(902, 125, 33072),
	["Arctic Warrior"] = CFrame.new(6038, 28, -6231),
	["Snow Lurker"] = CFrame.new(5561, 42, -6812),
	["Sea Soldier"] = CFrame.new(-3022, 16, -9797),
	["Water Fighter"] = CFrame.new(-3385, 239, -10542),
	["Tide Keeper"] = CFrame.new(-3800, 77, -11475),
	["Don Swan"] = CFrame.new(2284, 15, 804),
	["Pirate Millionaire"] = CFrame.new(-373, 75, 5550),
	["Pistol Billionaire"] = CFrame.new(-469, 74, 5904),
	Stone = CFrame.new(-1049, 40, 6791),
	["Dragon Crew Warrior"] = CFrame.new(6526, 378, 16),
	["Dragon Crew Archer"] = CFrame.new(6563, 148, -712),
	["Island Empress"] = CFrame.new(5700, 602, 199),
	["Female Islander"] = CFrame.new(4692, 745, 800),
	["Giant Islander"] = CFrame.new(4800, 600, -200),
	["Kilo Admiral"] = CFrame.new(2889, 74, -7233),
	["Captain Elephant"] = CFrame.new(-13393, 319, -8423),
	["Beautiful Pirate"] = CFrame.new(5311, 160, 129),
	["Marine Commodore"] = CFrame.new(-4800, 330, -2700),
	["Marine Rear Admiral"] = CFrame.new(-5026, 324, -2996),
	["Fishman Raider"] = CFrame.new(-10919, 332, -8698),
	["Fishman Captain"] = CFrame.new(-10993, 332, -8940),
	["Forest Pirate"] = CFrame.new(-13274, 332, -7926),
	["Mythological Pirate"] = CFrame.new(-13545, 470, -6917),
	["Jungle Pirate"] = CFrame.new(-12107, 332, -10665),
	["Musketeer Pirate"] = CFrame.new(-13290, 397, -9763),
	["Reborn Skeleton"] = CFrame.new(-8737, 143, 6035),
	["Living Zombie"] = CFrame.new(-10150, 140, 5930),
	["Demonic Soul"] = CFrame.new(-9501, 172, 6036),
	["Posessed Mummy"] = CFrame.new(-9500, 6, 6100),
	["Soul Reaper"] = CFrame.new(-9522, 316, 6752),
	["Peanut Scout"] = CFrame.new(-2124, 38, -10194),
	["Peanut President"] = CFrame.new(-2124, 38, -10194),
	["Ice Cream Chef"] = CFrame.new(-641, 65, -10719),
	["Ice Cream Commander"] = CFrame.new(-852, 66, -10932),
	["Cookie Crafter"] = CFrame.new(-2365, 38, -12099),
	["Cake Guard"] = CFrame.new(-1591, 38, -12297),
	["Baking Staff"] = CFrame.new(-1907, 38, -12866),
	["Head Baker"] = CFrame.new(-1926, 38, -12850),
	["Cocoa Warrior"] = CFrame.new(233, 75, -12498),
	["Chocolate Bar Battler"] = CFrame.new(233, 75, -12498),
	["Sweet Thief"] = CFrame.new(71, 77, -12632),
	["Candy Rebel"] = CFrame.new(134, 77, -12795),
	["Candy Pirate"] = CFrame.new(-1345, 16, -14360),
	["Snow Demon"] = CFrame.new(-1345, 16, -14360),
	["Cake Prince"] = CFrame.new(-2103, 70, -12165),
	["Dough King"] = CFrame.new(-2103, 70, -12165),
	Rip_indra = CFrame.new(-5333, 316, -2673),
	["Isle Outlaw"] = CFrame.new(-16168, 9, 438),
	["Island Boy"] = CFrame.new(-16450, 9, 748),
	["Sun-kissed Warrior"] = CFrame.new(-16350, 9, 1000),
	["Isle Champion"] = CFrame.new(-16529, 108, 749),
}

GetMobSpawnCFrame = function(arg)
	if not arg or arg == "" then
		return nil
	end
	local match = arg:match("^(.-)%s*%[") or arg
	local match2 = match:match("^%s*(.-)%s*$") or match
	local worldOrigin = workspace:FindFirstChild("_WorldOrigin") or workspace:FindFirstChild("WorldOrigin")
	local enemySpawns = worldOrigin and worldOrigin:FindFirstChild("EnemySpawns")

	if enemySpawns then
		local tbl18 = {}

		for _, child in ipairs(enemySpawns:GetChildren()) do
			if child:IsA("BasePart") then
				local match3 = child.Name:match("^(.-)%s*%[") or child.Name
				local match4 = match3:match("^%s*(.-)%s*$") or match3

				if child.Name == arg or match4 == match2 or MobNameMatches and (MobNameMatches(match4, match2) or MobNameMatches(child.Name, arg)) then
					table.insert(tbl18, child)
				end
			end
		end

		if #tbl18 > 0 then
			if #tbl18 == 1 then
				return tbl18[1].CFrame
			end
			local n5 = 0
			local n6 = 0
			local n7 = 0

			for _, v10 in ipairs(tbl18) do
				n5 += v10.Position.X
				n6 += v10.Position.Y
				n7 += v10.Position.Z
			end

			local n8 = #tbl18
			return CFrame.new(n5 / n8, n6 / n8, n7 / n8)
		end
	end

	if worldOrigin then
		for _, child in ipairs(worldOrigin:GetChildren()) do
			if child:IsA("BasePart") then
				local str = child.Name:lower()

				if str:find("respawn") or str:find("marker") then
					local match3 = child.Name:match("^(.-)%s*Respawn%s*Marker") or child.Name:match("^(.-)%s*Marker") or child.Name
					local match4 = match3:match("^%s*(.-)%s*$") or match3
					if MobNameMatches and MobNameMatches(match4, match2) or str:find(match2:lower(), 1, true) then
						return child.CFrame
					end
				end
			end
		end
	end

	for k, v10 in pairs(tbl17) do
		if MobNameMatches and MobNameMatches(k, match2) or k:lower() == match2:lower() then
			return v10
		end
	end

	local v10 = getNearMob and getNearMob(arg)

	if v10 and fn10 and fn10(v10) and v10:FindFirstChild("HumanoidRootPart") then
		local cFrame = v10.HumanoidRootPart.CFrame
		lastMobPosition[match2] = cFrame
		lastMobPosition[arg] = cFrame
		return cFrame
	end

	if lastMobPosition[match2] then
		return lastMobPosition[match2]
	end

	if lastMobPosition[arg] then
		return lastMobPosition[arg]
	end

	for k, v11 in pairs(lastMobPosition) do
		if MobNameMatches and MobNameMatches(k, match2) then
			return v11
		end
	end

	return nil
end

GetEnemySpawns = function(arg)
	if not arg or arg == "" then
		return {}
	end
	local match = arg:match("^(.-)%s*%[") or arg
	local match2 = match:match("^%s*(.-)%s*$") or match
	local worldOrigin = workspace:FindFirstChild("_WorldOrigin") or workspace:FindFirstChild("WorldOrigin")
	local enemySpawns = worldOrigin and worldOrigin:FindFirstChild("EnemySpawns")
	local tbl18 = {}

	if enemySpawns then
		for _, child in ipairs(enemySpawns:GetChildren()) do
			if child:IsA("BasePart") then
				local match3 = child.Name:match("^(.-)%s*%[") or child.Name
				local match4 = match3:match("^%s*(.-)%s*$") or match3

				if child.Name == arg or match4 == match2 or MobNameMatches and (MobNameMatches(match4, match2) or MobNameMatches(child.Name, arg)) or string.find(string.lower(child.Name), string.lower(match2), 1, true) or string.find(string.lower(match2), string.lower(match4), 1, true) then
					table.insert(tbl18, child.CFrame)
				end
			end
		end
	end

	if #tbl18 == 0 and worldOrigin then
		for _, child in ipairs(worldOrigin:GetChildren()) do
			if child:IsA("BasePart") then
				local str = child.Name:lower()

				if str:find("respawn") or str:find("marker") then
					local match3 = child.Name:match("^(.-)%s*Respawn%s*Marker") or child.Name:match("^(.-)%s*Marker") or child.Name
					match3 = match3:match("^%s*(.-)%s*$") or match3

					if MobNameMatches and MobNameMatches(match3, match2) or str:find(match2:lower(), 1, true) then
						table.insert(tbl18, child.CFrame)
					end
				end
			end
		end
	end

	if #tbl18 == 0 and tbl17 then
		for k, v10 in pairs(tbl17) do
			if MobNameMatches and MobNameMatches(k, match2) or string.find(string.lower(k), string.lower(match2), 1, true) then
				table.insert(tbl18, v10)
			end
		end
	end

	if #tbl18 == 0 and lastMobPosition then
		local v10 = lastMobPosition[match2] or lastMobPosition[arg]

		if v10 then
			table.insert(tbl18, v10)
		end
	end

	return tbl18
end

local tbl18 = {}

TweenToMobSpawn = function(arg, arg2, arg3)
	arg2 = arg2 or 25
	if not arg or not Alive() then
		return
	end
	local v10 = GetEnemySpawns(arg)
	local v11

	if #v10 > 0 then
		local n5 = tbl18[arg] or 1

		if n5 > #v10 then
			n5 = 1
		end

		v11 = v10[n5]
		tbl18[arg] = n5 % #v10 + 1
	else
		v11 = GetMobSpawnCFrame(arg)

		if not v11 then
			v11 = lastMobPosition

			if lastMobPosition then
				v11 = lastMobPosition[arg]

				if not v11 then
					v11 = lastMobPosition[arg:match("^(.-)%s*%[") or arg]
				end
			end
		end
	end

	if v11 and Alive() then
		fn11(true)
		StatusFarming = "Tween To Mob Spawn [" .. tostring(arg) .. "]"

		DoTween2(v11 + Vector3.new(0, arg2, 0), function()
			if arg3 and not arg3() then
				return false
			end
			local v12 = getNearMob and getNearMob(arg)
			return not (v12 and fn10(v12))
		end)
	else
		if Alive() then
			fn11(true)
		else
			fn11(false)
		end

		task.wait(0.3)
	end
end

if getgenv then
	local v10 = GetMobSpawnCFrame
	getgenv().GetMobSpawnCFrame = v10
	local v11 = GetEnemySpawns
	getgenv().GetEnemySpawns = v11
	local v12 = TweenToMobSpawn
	getgenv().TweenToMobSpawn = v12
	getgenv().LastMobPosition = lastMobPosition
	local v13 = TeleportToUnderwater
	getgenv().TeleportToUnderwater = v13
	local v14 = FixTP
	getgenv().FixTP = v14
end

env.GetMobSpawnCFrame = GetMobSpawnCFrame
env.GetEnemySpawns = GetEnemySpawns
env.TweenToMobSpawn = TweenToMobSpawn
env.LastMobPosition = lastMobPosition
env.TeleportToUnderwater = TeleportToUnderwater
env.FixTP = FixTP
local now = nil
local now2 = tick()
local now3 = tick()

local function fn33(arg)
	if not (arg and Vector3.new) then
	end

	return CFrame.new(getgenv().Setting.Mastery.X or 0, getgenv().Setting.Mastery.Y or 30, getgenv().Setting.Mastery.Z or 0)
end

local function fn34()
	return false
end

local function fn35(arg, arg2, arg3, arg4, arg5, arg6, arg7)
	local fn36 = arg3 or function()
		return true
	end

	local function fn37()
		return fn36() and fn10(arg)
	end

	arg7 = arg7 or {}
	local ignoreEquip = arg7.IgnoreEquip
	local forceNotMastery = arg7.ForceNotMastery
	local farmMastery = arg7.FarmMastery
	local spin = arg7.Spin

	local ok2, result2 = pcall(function()
		if fn10(arg) and Alive() and fn36() then
			local v10 = fn9(arg)

			if v10 and arg and arg.Name and LastMobPosition then
				local match = arg.Name:match("^(.-)%s*%[") or arg.Name
				LastMobPosition[match:match("^%s*(.-)%s*$") or match] = v10.CFrame
				LastMobPosition[arg.Name] = v10.CFrame
			end

			local humanoid = arg:FindFirstChild("Humanoid")

			if not fluxus then
				pcall(function()
				end)
			end

			Mastery = getgenv().Setting.Mastery.Enable or farmMastery
			SwordMastery = getgenv().Setting.Mastery["Sword/Low"] or SelectedWeaponAlternative
			arg2 = (arg2 or SelectedWeaponAlternative or farmMastery) and not forceNotMastery
			local n5 = Mastery and getgenv().Setting.Mastery.Health and getgenv().Setting.Mastery.Health / 100 or 0.5

			if humanoid and humanoid.Health <= humanoid.MaxHealth * n5 and arg2 and (SwordMastery or Mastery) then
				if Mastery then
					if getgenv().Setting.Mastery.Camera then
						localPlayer.CameraMaxZoomDistance = 0
						local currentCamera = workspace.CurrentCamera
						currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, v10.Position)
					elseif localPlayer.CameraMaxZoomDistance <= 1 then
						localPlayer.CameraMaxZoomDistance = 200
						localPlayer.CameraMinZoomDistance = 100
						localPlayer.CameraMinZoomDistance = 0
					end

					local str

					if getgenv().Setting.UseDragonStorm then
						str = "Gun"
					elseif getgenv().Setting.OneClick.Enable then
						str = "Blox Fruit"
					else
						str = "Melee"
					end

					local position = v10.Position
					getgenv().PosToHook = position
					getgenv().SilentAimPos = true

					if getgenv().Setting.UseDragonStorm then
						if not localPlayer.Character:FindFirstChild("Dragonstorm") then
							pcall(Equip, "Dragonstorm")
							task.wait(0.1)
						end
					else
						pcall(Equip, GetCurrentTool(str, true))
					end

					local bloxFruit = str == "Gun" and { "Z", "X" } or str == "Melee" and { "Z", "X", "C" } or str == "Sword" and { "Z", "X" } or getgenv().Setting.SkillsSettingRemake["Blox Fruit"]
					local v11 = GetCurrentTool(str, true)

					if str == "Gun" then
						DoTween2(NewPos(arg, fn33(true)), fn37)
						local n6 = getgenv().Setting.UseDragonStorm and 0.2 or 0.5

						if tick() - now3 > n6 then
							now3 = tick()

							if getgenv().Setting.UseDragonStorm then
								BypassShootGun()
								local tbl19 = { v10.Position, { v10 } }
								game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/ShootGunEvent"):FireServer(unpack(tbl19))
							else
								ShootGun(v10.Parent, true)
							end
						end
					else
						local v12 = localPlayer.Character:FindFirstChild(v11)

						if v12 then
							if v12:FindFirstChild("Data") and v12:FindFirstChild("Level") then
								WeaponData = require(v12.Data)

								if WeaponData then
									local tbl19 = {}

									for _, v13 in pairs(bloxFruit) do
										if WeaponData.Lvl[v13] <= v12.Level.Value then
											table.insert(tbl19, v13)
										end
									end

									bloxFruit = tbl19
								end
							end
						end

						if IsSkillsNotCooldown(bloxFruit, v11) then
							now = nil

							if not now2 then
								now2 = tick()
							end

							if not arg4 then
								DoTween2(NewPos(arg, fn33(true)), fn37, nil, arg6)
							end
						elseif not arg4 then
							if not now then
								now = tick()
								now2 = nil
							elseif tick() - now <= 0.5 then
								DoTween2(NewPos(arg, fn33(true)), fn37, nil, arg6)
							else
								DoTween2(NewPos(arg, Vector3.new(0, 200, 0)), fn36)
							end
						end
					end
				else
					pcall(Equip, GetCurrentTool("Sword", true))

					if not arg4 then
						DoTween2(NewPos(arg, Vector3.new(0, 30, 0)), fn37, nil, arg6)
					end
				end

				fn11(true)

				if not arg5 then
					fn28("Near", arg, true)
				end
			else
				if not ignoreEquip then
					Equip(GetCurrentTool(GetCloseRangeAttack(), true))
				end

				if not arg4 then
					local flag2 = spin

					if spin then
						local position = v10.Position
						flag2 = (fn9(localPlayer.Character).Position - position).magnitude <= 200
					end

					if flag2 then
						local cframe14 = CFrame.new
						local n6 = v10.Position.Y + 30
						local z = v10.Position.Z
						fn9(localPlayer.Character).CFrame = cframe14(v10.Position.X + math.sin(math.rad(spin + 360)) * 30, n6, z + math.cos(math.rad(spin + 360)) * 30)
					else
						DoTween2(NewPos(arg, Vector3.new(0, 40, 0)) * cframe13, fn37, nil, arg6)
					end
				end

				fn11(true)

				if not arg5 then
					fn28("Near", arg)
				end
			end
		end
	end)

	if result2 then
		print(result2)
	end
end

FlagFirstExec = false

local handlers = {
	Human = function(arg)
		local tbl19 = { "Jeremy", "Diamond", "Orbitus" }
		FlagBoss = true

		for _, v10 in pairs(tbl19) do
			local fajita = enemies:FindFirstChild(v10) or v10 == "Orbitus" and enemies:FindFirstChild("Fajita")

			if not (fajita and fn10(fajita)) then
				print(v10)
				FlagBoss = false
			end
		end

		if not FlagFirstExec then
			if FlagBoss then
				FlagFirstExec = true
			elseif getgenv().Setting["Race Evolve"].Hop or arg then
				print("Sv Hop")
				MainServerHop(5, "Finding Enough Bosses For Human [Race Evolve Hop]")
			end
		end

		for _, v10 in pairs(tbl19) do
			local v11 = enemies:FindFirstChild(v10)

			if fn10(v11) then
				SSS(GetNearSpawn(fn9(v11).Position))

				while fn10(v11) and task.wait(0.1) do
					fn35(v11)
				end
			end
		end
	end,
	Skypiea = function(arg)
		for _, v10 in pairs(fn8()) do
			if v10 ~= localPlayer then
				if v10 and v10.Character then
					local team = v10.Team

					if team then
						team = not (v10.Team.Name == "Pirates" or v10.Team.Name == "Marines")
					end

					if not (team or not v10.Team) then
						if v10.Data.Race.Value == "Skypiea" then
							local character = v10.Character
							print("Found")

							if fn10(character) and not IsInSafeZone(character) then
								print("Is Alive")
								local flag2 = false

								if not racvai then
									racvai = game:GetService("ReplicatedStorage").Remotes.CommE.OnClientEvent:Connect(function(arg2, ...)
										local v11 = table.pack(...)

										if arg2 == "Notify" then
											if string.find(..., "Cannot attack players in a Safe Zone") then
												racvai:Disconnect()
												racvai = nil
												flag2 = true
											end

											if string.find(v11[1], "Player died recently") then
												racvai:Disconnect()
												racvai = nil
												flag2 = true
											end
										end
									end)
								end

								local now4 = tick()
								SSS(GetNearSpawn(fn9(character).Position))
								print("Attacking")
								local enable = getgenv().Setting.FastAttack.Enable

								local function fn36()
									return fn10(character) and not flag2 and tick() - now4 < 90
								end

								while fn36() and task.wait(0.1) do
									if localPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
										if not damopvp then
											damopvp = true
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
											wait(6)
											damopvp = false
										end
									end

									pcall(Equip, GetCurrentTool("Melee", true))
									fn11(true)
									DoTween2(fn9(character), fn36, nil, { ForceTweenPause = true })
									fn11(true)
								end

								if racvai then
									racvai:Disconnect()
									racvai = nil
								end
							end
						end
					end
				end
			end
		end

		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 2 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
		elseif getgenv().Setting["Race Evolve"].Hop or arg then
			MainServerHop(5, "Find Player For Angel Race [Race Angel Hop]", 8)
		end
	end,
	Ghoul = function()
		for _, v10 in pairs(fn8()) do
			if v10 ~= localPlayer then
				if v10 and v10.Character then
					local team = v10.Team

					if team then
						team = not (v10.Team.Name == "Pirates" or v10.Team.Name == "Marines")
					end

					if not (team or not v10.Team) then
						local character = v10.Character
						print("Found")

						if fn10(character) then
							print("Is Alive")
							local flag2 = false

							if not racvai then
								racvai = game:GetService("ReplicatedStorage").Remotes.CommE.OnClientEvent:Connect(function(arg, ...)
									local v11 = table.pack(...)

									if arg == "Notify" then
										if string.find(..., "Cannot attack players in a Safe Zone") then
											racvai:Disconnect()
											racvai = nil
											flag2 = true
										end

										if string.find(v11[1], "Player died recently") then
											racvai:Disconnect()
											racvai = nil
											flag2 = true
										end
									end
								end)
							end

							local now4 = tick()
							SSS(GetNearSpawn(fn9(character).Position))
							print("Attacking")

							local function fn36()
								return fn10(character) and not flag2 and tick() - now4 < 90
							end

							while fn36() and task.wait(0.1) do
								if localPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
									if not damopvp then
										damopvp = true
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
										wait(6)
										damopvp = false
									end
								end

								pcall(Equip, GetCurrentTool("Melee", true))
								DoTween2(fn9(character), fn36, nil, { ForceTweenPause = true })
							end

							if racvai then
								racvai:Disconnect()
								racvai = nil
							end
						end
					end
				end
			end
		end

		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 2 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
		end
	end,
	Mink = function()
		local v10 = fn26()
		ChestCount = 0

		while ChestCount < 30 and task.wait(0.2) do
			if #v10 == 0 then
				v10 = fn26()
			else
				local huge = math.huge
				local v11 = nil

				for _, v12 in pairs(v10) do
					if v12 then
						local magnitude = (v12.Position - fn9(localPlayer.Character).Position).magnitude

						if magnitude < huge then
							huge = magnitude
							v11 = v12
						end
					end
				end

				if not v11 then
					task.wait(0.1)
				else
					local now4 = nil

					while true do
						if v11 and v11.Parent and #v11:GetChildren() > 1 and task.wait() then
							if fn15(v11, localPlayer.Character) <= 10 and not now4 then
								now4 = tick()
							end

							if now4 and tick() - now4 >= 2 then
								v11:SetAttribute("LastCollect", tick())
								break
							else
								localPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
								DoTween2(v11.CFrame)
								continue
							end
						end

						break
					end

					if v11 and table.find(v10, v11) then
						table.remove(v10, table.find(v10, v11))
					end

					ChestCount = ChestCount + 1
				end
			end
		end
	end,
	Fishman = function(arg)
		local tbl19 = { "StartSeaEvents", "SeaBeast", "Ship" }

		for _, v10 in pairs(tbl19) do
			SeaEventsController[v10] = arg and "OneClick" or "Race Evolve"
		end

		print("Starting Race Evolve Shark")

		while not IsRaceV3() and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 do
			task.wait(1)
		end

		print("End Race Evolve Shark")

		for _, v10 in pairs(tbl19) do
			SeaEventsController[v10] = nil
		end
	end,
	Cyborg = function()
		if #FruitFunc.HaveFruitInv() == 0 then
			local v10 = FruitFunc.GetFruitBelow1M()

			if v10 then
				FruitFunc.ReloadFruit(v10)
			end

			task.wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
			FruitFunc.IgnoreStoreFruit = nil
		else
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
		end
	end,
}

HaveHaki = {}
HakiColors = { ["Snow White"] = "Oyster", ["Winter Sky"] = "Hot pink", ["Pure Red"] = "Really red" }
HakiFunc = {}

HakiFunc.GetColor = function()
	return getgenv().LocalPlayerInv and getgenv().LocalPlayerInv.AuraSkin or {}
end

HakiFunc.CanOpenPad = function()
	if Sea3 then
		local boatCastle = game:GetService("Workspace").Map:FindFirstChild("Boat Castle")
		if not boatCastle then
			return false
		end
		local summoner = boatCastle:FindFirstChild("Summoner")
		if not summoner then
			return false
		end
		local circle = summoner:FindFirstChild("Circle")
		if not circle then
			return false
		end
		local tbl19 = {}
		if #circle:GetChildren() < 4 then
			return false
		end

		for _, child in pairs(circle:GetChildren()) do
			if child:FindFirstChild("TouchInterest") and tostring(child:FindFirstChild("Part").BrickColor) == "Lime green" then
				tbl19[tostring(child.BrickColor)] = true
			end
		end

		local n5 = 0

		for _, v10 in pairs(HakiColors) do
			if tbl19[v10] then
				n5 += 1
			end
		end

		if HaveHaki["Snow White"] and HaveHaki["Winter Sky"] and HaveHaki["Pure Red"] then
			return { true, n5 == 3 }
		end

		for _, v10 in pairs(HakiFunc.GetColor()) do
			HaveHaki[v10.DisplayName] = true
		end

		local n6 = 0
		local n7 = 0

		for k, v10 in pairs(HakiColors) do
			if tbl19[v10] then
				n6 += 1
			end

			if tbl19[v10] or HaveHaki[k] then
				n7 += 1
			end
		end

		return { n7 == 3, n6 == 3 }
	end
end

HaveAllHaki = function()
	for _, v10 in pairs(getgenv().LocalPlayerInv.AuraSkin) do
		HaveHaki[v10.DisplayName] = true
	end

	return HaveHaki["Snow White"] and HaveHaki["Winter Sky"] and HaveHaki["Pure Red"]
end

OpenPad = function()
	print("Called ")

	if Sea3 then
		if HakiFunc.CanOpenPad() and HakiFunc.CanOpenPad()[1] and not HakiFunc.CanOpenPad()[2] then
			print("In Called Open Pad")
			local n5 = 0

			while n5 < 5 and HakiFunc.CanOpenPad() and not HakiFunc.CanOpenPad()[2] and task.wait(0.1) do
				n5 += 1

				local ok2, result2 = pcall(function()
					local boatCastle = game:GetService("Workspace").Map:FindFirstChild("Boat Castle")
					if not boatCastle then
						return
					end
					local summoner = boatCastle:FindFirstChild("Summoner")
					if not summoner then
						return
					end
					local circle = summoner:FindFirstChild("Circle")
					if not circle then
						return
					end

					for _, child in pairs(circle:GetChildren()) do
						if child:FindFirstChild("TouchInterest") and tostring(child:FindFirstChild("Part").BrickColor) ~= "Lime green" then
							local v10 = nil

							for k, v11 in pairs(HakiColors) do
								if v11 == tostring(child.BrickColor) then
									v10 = k
								end
							end

							game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/FruitCustomizerRF"):InvokeServer(unpack({ { StorageName = v10, Type = "AuraSkin", Context = "Equip" } }))
							TpNearestEntrance(child.Position)
							DoTween2(child.CFrame + Vector3.new(0, 2, 0))
							task.wait(0.5)
						end
					end
				end)

				if result2 then
					print("Errored Open pad", result2)
				end
			end
		end
	end
end

WorkingFarm = PriorityQueue.thieunangquatroi()
PriorityQueue.thieunangquatroi()

isMinuteZero = function(arg)
	if string.find(arg, ":") then
		local str = string.sub(arg, string.find(arg, ":") + 1, string.find(arg, ":", string.find(arg, ":") + 1) - 1)
		return str == "00" or str == "01"
	end
	return true
end

CanGetFlower = function()
	return game.Workspace:FindFirstChild("Flower1").Transparency ~= 1 and not CheckItem("Flower 1") or not CheckItem("Flower 2") or not CheckItem("Flower 3")
end

V3Requirement = function()
end

GetMirageSnipeFruit = function()
	local flag2 = Sea3 and MirageFunctions.GetMirageIsland() and getgenv().Setting.Fruit.EnableSnipeFruit and #getgenv().Setting.Fruit.FruitsToSnipe > 0

	if flag2 then
		local value = localPlayer.Data.DevilFruit.Value
		flag2 = not table.find(getgenv().Setting.Fruit.FruitsToSnipe, value)
	end

	if flag2 and getgenv().Setting["Mirage Snipe Fruit"].Enable then
		local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", true)

		if response then
			for _, v10 in pairs(response) do
				local onSale = v10.OnSale

				if onSale then
					local name = v10.Name
					onSale = table.find(getgenv().Setting.Fruit.FruitsToSnipe, name)
				end

				if onSale then
					return v10.Name
				end
			end
		end
	end
end

Sea2KeyHop = function()
	if getgenv().Setting.OneClick.Sea2KeyHop and Sea2 and GetLevel() >= 1500 then
		if WorkingFarm:empty() then
			if not DataSave.Unlocked.Deathstep and not CheckEnemySpawn("Awakened Ice Admiral") or not DataSave.Unlocked.Sharkman and not CheckEnemySpawn("Tide Keeper") then
				return true
			end
		end
	end
end

X2Exp = function()
	return (getrenv()._G and getrenv()._G.ServerData and getrenv()._G.ServerData.ExpBoost ~= 0 or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Exp.Text, "2x")) and GetLevel() ~= n2
end

local tbl19 = {
	Hell = function()
		return game:GetService("Workspace").Map:FindFirstChild("HellDimension") and game:GetService("Workspace").Map:FindFirstChild("HellDimension"):FindFirstChild("ActivePlayers") and game:GetService("Workspace").Map:FindFirstChild("HellDimension"):FindFirstChild("ActivePlayers"):FindFirstChild("Value") and localPlayer.Name == tostring(game:GetService("Workspace").Map:FindFirstChild("HellDimension"):FindFirstChild("ActivePlayers"):FindFirstChild("Value").Value)
	end,
	Heaven = function()
		return game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"):FindFirstChild("ActivePlayers") and game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"):FindFirstChild("ActivePlayers"):FindFirstChild("Value") and localPlayer.Name == tostring(game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"):FindFirstChild("ActivePlayers"):FindFirstChild("Value").Value)
	end,
}

local tbl20

tbl20 = {
	LastUse = tick(),
	Good = function()
		local lastUse = tbl20.LastUse

		if tick() - lastUse >= 1 then
			tbl20.LastUse = tick()
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({ "CDKQuest", "OpenDoor" }))
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
		end
	end,
	Evil = function()
		local lastUse = tbl20.LastUse

		if tick() - lastUse >= 1 then
			tbl20.LastUse = tick()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
			task.wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
		end
	end,
	GetMob = function()
		local huge = math.huge
		local v10 = nil

		for _, child in pairs(enemies:GetChildren()) do
			if fn9(child) and child:FindFirstChild("Humanoid") and child:FindFirstChild("Humanoid").Health > 0 then
				if (fn9(child).Position - fn9(localPlayer.Character).Position).magnitude <= 3000 then
					if (fn9(child).Position - fn9(localPlayer.Character).Position).magnitude < huge then
						huge = (fn9(child).Position - fn9(localPlayer.Character).Position).magnitude
						v10 = child
					end
				end
			end
		end

		return v10
	end,
	GetHaze = function()
		local huge = math.huge
		local v10 = nil

		for _, child in pairs(enemies:GetChildren()) do
			if Alive() and fn10(child) and child.Parent == enemies and child:FindFirstChild("HazeESP") then
				if (fn9(child).Position - fn9(localPlayer.Character).Position).magnitude < huge then
					huge = (fn9(child).Position - fn9(localPlayer.Character).Position).magnitude
					v10 = child
				end
			end
		end

		for _, v11 in pairs(getnilinstances()) do
			if Alive() and fn10(v11) and v11:FindFirstChild("HazeESP") then
				if (fn9(v11).Position - fn9(localPlayer.Character).Position).magnitude < huge then
					huge = (fn9(v11).Position - fn9(localPlayer.Character).Position).magnitude
					v10 = v11
				end
			end
		end

		return v10
	end,
}

local function fn36()
	if Sea3 then
		DoTween2(CFrame.new(-5026.3584, 323.515503, -2996.28442))
	elseif Sea2 then
		DoTween2(CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668))
	end
end

local function fn37(arg)
	if FruitFunc and FruitFunc.ReloadFruit then
		return FruitFunc.ReloadFruit(arg)
	end
	return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", arg)
end

local function fn38(arg)
	if arg:FindFirstChild("RootPart") then
		return arg:FindFirstChild("RootPart")
	end

	if arg:FindFirstChild("Handle") then
		return arg:FindFirstChild("Handle")
	end
end

local function fn39()
	local v10 = pairs
	local Workspace2 = game:GetService("Workspace")
	local n5 = 999999
	local v11 = nil

	for _, child in v10(Workspace2:GetChildren()) do
		if child:IsA("Tool") or string.find(child.Name, "Fruit") then
			if Alive() and child.Parent and child.Parent == game:GetService("Workspace") then
				if string.find(child.Name, "Fruit") then
					if not child:FindFirstChild("Fruit") then
						continue
					end
					child = child.Fruit
				end

				if fn38(child) then
					local character = localPlayer.Character
					local v12 = fn15(fn38(child), character)

					if v12 <= n5 then
						n5 = v12
						v11 = child
					end
				end
			end
		end
	end

	return v11
end

local function fn40(arg)
	pcall(function()
		fn37(arg)
		task.wait()
		local v10 = nil

		for _, child in pairs(localPlayer.Backpack:GetChildren()) do
			if child:GetAttribute("OriginalName") == arg then
				v10 = child
			end
		end

		for _, child in pairs(localPlayer.Character:GetChildren()) do
			if child:GetAttribute("OriginalName") == arg then
				v10 = child
			end
		end

		v10.Parent = game.Players.LocalPlayer.Character
		v10.EatRemote:InvokeServer()
	end)
end

local function fn41()
	local fruitEat = getgenv().OneClickSetting and getgenv().OneClickSetting.FruitEat or {}
	if #fruitEat == 0 then
		return false
	end
	local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)
	local response2 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", true)
	local tbl21 = {}

	for k in pairs(fruitEat) do
		table.insert(tbl21, k)
	end

	table.sort(tbl21, function(arg, arg2)
		return arg > arg2
	end)

	local flag2 = nil

	for _, v10 in pairs(tbl21) do
		for _, v11 in pairs(fruitEat[v10]) do
			if localPlayer.Data.DevilFruit.Value == v11 then
				flag2 = true
			end

			if not flag2 then
				continue
			end
			break
		end

		if flag2 then
			break
		end

		for _, v11 in pairs(fruitEat[v10]) do
			for _, v12 in pairs(response) do
				if v12.Name == v11 and v12.OnSale then
					if v12.Price <= localPlayer.Data.Beli.Value then
						return v11, "Normal"
					end
				end
			end
		end

		for _, v11 in pairs(fruitEat[v10]) do
			for _, v12 in pairs(response2) do
				if v12.Name == v11 and v12.OnSale then
					if v12.Price <= localPlayer.Data.Beli.Value then
						return v11, "Mirage"
					end
				end
			end
		end
	end

	return false
end

local function fn42()
	local fruitEat = getgenv().OneClickSetting and getgenv().OneClickSetting.FruitEat or {}
	if #fruitEat == 0 then
		return false
	end
	local bloxFruit = getgenv().LocalPlayerInv and getgenv().LocalPlayerInv["Blox Fruit"] or {}
	if not bloxFruit or type(bloxFruit) ~= "table" then
		return false
	end
	local tbl21 = {}

	for k in pairs(fruitEat) do
		table.insert(tbl21, k)
	end

	table.sort(tbl21, function(arg, arg2)
		return arg > arg2
	end)

	local flag2 = nil

	for _, v10 in pairs(tbl21) do
		for _, v11 in pairs(fruitEat[v10]) do
			if localPlayer.Data.DevilFruit.Value == v11 then
				flag2 = true
			end

			if not flag2 then
				continue
			end
			break
		end

		if flag2 then
			break
		end

		for _, v11 in pairs(fruitEat[v10]) do
			for _, v12 in pairs(bloxFruit) do
				if v12.Name == v11 then
					return v11
				end
			end
		end
	end

	return false
end

local tbl21 = {
	["Pilot Helmet"] = "Stone",
	["Serpent Bow"] = "Island Empress",
	Lei = "Kilo Admiral",
	["Twin Hook"] = "Captain Elephant",
	Canvander = "Beautiful Pirate",
	["Buddy Sword"] = "Cake Queen",
}

local tbl22 = {}
local tbl23 = { "Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Cake Queen" }

local function fn43(arg)
	for k, v10 in pairs(tbl21) do
		if v10 == arg then
			print("State Items Boss: ", arg, CheckInvItem(k))
			tbl22[arg] = CheckInvItem(k)
		end
	end

	return tbl22[arg]
end

game:GetService("TextService")
local TweenService = game:GetService("TweenService")
local getaBiThieuNang = game:GetService("CoreGui"):FindFirstChild("Geta Bi Thieu Nang")
local screenGui = Instance.new("ScreenGui")

if getaBiThieuNang then
	getaBiThieuNang:Destroy()
end

Tween = function(arg, arg2, arg3, arg4, arg5)
	return TweenService:Create(arg, TweenInfo.new(arg2, arg3, arg4), arg5)
end

screenGui.Name = "Geta Bi Thieu Nang"
screenGui.Parent = game:GetService("CoreGui")
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local frame = Instance.new("Frame")
local uiListLayout = Instance.new("UIListLayout")
frame.Name = "NotificationContainer_1"
frame.Parent = screenGui
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(1, 0, 0, 0)
frame.Size = UDim2.new(0, 0, 0.970000029, 0)
uiListLayout.Parent = frame
uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uiListLayout.Padding = UDim.new(0, 30)

Notify = function(arg)
	local tbl24

	if type(arg) ~= "string" then
		tbl24 = arg
	else
		tbl24 = { Text = arg }
	end

	if type(tbl24) ~= "table" then
		return
	end
	local title = tbl24.Title or "Notification"
	local text = tbl24.Text or tbl24.Content or ""
	local subContent = tbl24.SubContent or nil
	local n5 = tonumber(tbl24.Delay or tbl24.Duration) or 5
	local fluent = getgenv().Fluent or lib

	if fluent and typeof(fluent.Notify) == "function" then
		pcall(function()
			fluent:Notify({ Title = title, Content = text, SubContent = subContent, Duration = n5 })
		end)
	else
		pcall(function()
			game:GetService("StarterGui"):SetCore("SendNotification", { Title = title, Text = tostring(text), Duration = n5 })
		end)
	end
end

local tbl24

tbl24 = {
	["Race Evolve"] = function()
		local flag2 = Sea2 and CheckBartilo() and GetLevel() >= 850

		if flag2 then
			flag2 = not localPlayer.Data.Race:FindFirstChild("Evolved") and localPlayer.Data.Beli.Value >= 500000 and CanGetFlower()

			if not flag2 then
				flag2 = ProgressChecker.Sea3.Doflamingo and localPlayer.Data.Race:FindFirstChild("Evolved") and localPlayer.Data.Beli.Value >= 2000000 and not IsRaceV3() and handlers[localPlayer.Data.Race.Value]
			end
		end

		return flag2
	end,
	Yama = function()
		if Sea3 then
			if not CheckInvItem("Yama") then
				local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
				if response and response >= 30 then
					return true
				end
			end
		end
	end,
	["Get Ghoul"] = function()
		return not Sea2 or fn10(enemies:FindFirstChild("Cursed Captain")) or CheckItem("Hellfire Torch") or GetMaterial("Ectoplasm") < 100
	end,
	["Valkyrie Helm Hop"] = function()
		if GetLevel() < n2 then
			return
		end

		if Sea3 and not CheckItem("God's Chalice") and not CheckInvItem("Valkyrie Helm") and HaveAllHaki() and GetMaterial("Mirror Fractal") >= 1 then
			return true
		end
	end,
	["Mirror Fractal Hop"] = function()
		if GetLevel() < n2 then
			return
		end

		if Sea3 and not CheckItem("God's Chalice") and not CheckItem("Sweet Chalice") and GetMaterial("Mirror Fractal") == 0 and GetMaterial("Conjured Cocoa") >= 10 then
			return true
		end
	end,
	SnipeFruitOneClick = function()
		local v10, v11 = fn41()
		if v11 == "Normal" then
			return v10
		end

		if v11 == "Mirage" and Sea3 and MirageFunctions.GetMirageIsland() then
			return v10
		end
	end,
	["Tushita Hop"] = function()
		if Sea3 then
			if GetLevel() < 2000 then
				return
			end
			local turtle = game:GetService("Workspace").Map:FindFirstChild("Turtle")
			if not turtle or not turtle:FindFirstChild("TushitaGate") then
				return
			end

			if HaveAllHaki() then
				return true
			end
		end
	end,
	["Awaken Fruit"] = function()
		if Sea1 then
			return false, "Cant Raid In Sea 1"
		end

		if GetLevel() < 1100 then
			return false, "Not Enough Level"
		end

		if GetLevel() < n2 then
			return false, "Not Enough Level 2"
		end

		if X2Exp() then
			return false, "Not Gonna Waste X2 EXP LOL"
		end

		if CanAwaken() then
			if getgenv().Setting.OneClick.Enable and localPlayer.Data.DevilFruit.Value == "Dough-Dough" then
				return false
			end

			if CheckItem("Special Microchip") or GetValidFruitRaid() or GetRealFruitStore() then
				return true, "Activated"
			end
		end
	end,
	["Items Farm Force"] = function()
		if X2Exp() then
			return
		end

		if not DataSave.Unlocked.GodHuman then
			return
		end

		for _, v10 in pairs(tbl23) do
			if CheckEnemySpawn(v10) then
				if not tbl22[v10] then
					if not fn43(v10) then
						return true
					end
				end
			end
		end
	end,
	["Mirage Snipe Fruit"] = function()
		local flag2 = true

		if flag then
			flag2 = GetMirageSnipeFruit()
		end

		return flag2
	end,
	["Material Soul Guitar"] = function()
		if not FirstTimeCheckSoulGuitar then
			print("Checked First Time Soul Guitar")
			GuitarProgress()
			FirstTimeCheckSoulGuitar = true
		end

		if getgenv().Setting.OneClick.Enable then
			if Sea3 then
				if not DataSave.Unlocked.GodHuman and DataSave.Melee["Dragon Talon"].Mas400 then
					if not RequirementGod["3"] or not RequirementGod["4"] then
						return false
					end
				end
			end
		end

		local flag2 = DataSave.Unlocked.SoulGuitar and not CheckInvItem("Skull Guitar")

		if flag2 then
			flag2 = not RequirementGuitar["1"] or not RequirementGuitar["2"] or GetMaterial("Dark Fragment") == 0
		end

		return flag2
	end,
	["Trade Sweet Chalice Force"] = function()
		if Sea3 and CheckItem("God's Chalice") then
			local v10 = HakiFunc.CanOpenPad()
			local turtle = game:GetService("Workspace").Map:FindFirstChild("Turtle")
			if GetLevel() >= 2000 and turtle and turtle:FindFirstChild("TushitaGate") and v10[1] then
				return false
			end
			local tbl25 = { Coca = GetMaterial("Conjured Cocoa"), Mirror = GetMaterial("Mirror Fractal") }
			if (tbl25.Mirror <= 0 or not CanAwakenDough()) and tbl25.Coca >= 10 then
				return true
			end
		end

		return false
	end,
	EatFruit = function()
		return fn42()
	end,
	["Soul Guitar"] = function()
		return Sea3 and game:GetService("Lighting"):GetAttribute("MoonPhase") and game:GetService("Lighting"):GetAttribute("MoonPhase") == 5 and IsNight() and GetLevel() >= 2300 and not DataSave.Unlocked.SoulGuitar
	end,
	["Open Pad"] = function()
		if not Sea3 then
			return false
		end
		local v10 = HakiFunc.CanOpenPad()
		if type(v10) ~= "table" then
			return false
		end
		return v10[1] and not v10[2]
	end,
	Bartilo = function()
		if not FirstTimeCheckBartilo then
			CheckBartilo()
			FirstTimeCheckBartilo = true
		end

		local flag2 = Sea2 and GetLevel() >= 850 and not DataSave.BartiloQuest

		if flag2 then
			flag2 = not (not ProgressChecker.Bartilo.KilledSpring and ProgressChecker.Bartilo.KilledBandits and not enemies:FindFirstChild("Jeremy"))
		end

		return flag2
	end,
	FullyRaceV4_Entrance = function()
		if Sea3 and IsRaceV3() then
			local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
			if response >= 1 and response < 4 then
				return true
			end

			if response == 4 and MirageFunctions.GetMirageIsland() and GetMaterial("Mirror Fractal") >= 1 and CheckInvItem("Valkyrie Helm") and not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
				return true
			end
		end

		return false
	end,
	["Rip Indra"] = function()
		if Sea3 then
			for _, child in pairs(enemies:GetChildren()) do
				if child.Name == "rip_indra True Form" and fn10(child) then
					local turtle = game:GetService("Workspace").Map:FindFirstChild("Turtle")
					if GetLevel() >= 2000 and getgenv().Setting.OneClick.Enable and turtle and turtle:FindFirstChild("TushitaGate") then
						return false
					end
					return true
				end
			end
		end

		return false
	end,
	["Red Key"] = function()
		if Sea3 and CheckItem("Red Key") and not CanAwakenDough() then
			return true
		end
	end,
	["Cake Prince"] = function()
		if Sea3 then
			for _, child in pairs(enemies:GetChildren()) do
				if child.Name == "Cake Prince" and fn10(child) then
					return true
				end
			end
		end

		return false
	end,
	["Dough King"] = function()
		if Sea3 then
			for _, child in pairs(enemies:GetChildren()) do
				if child.Name == "Dough King" and fn10(child) then
					return true
				end
			end
		end

		return false
	end,
	["Spawn Rip Indra"] = function()
		if not Sea3 then
			return false, "Not In Sea 3"
		end

		if not CheckItem("God's Chalice") then
			return false, "Doesnt Have God Chalice"
		end

		if not HakiFunc.CanOpenPad() then
			return false, "Unexpected error orrured, report to the dev"
		end

		if not HakiFunc.CanOpenPad()[2] then
			return false, "Didnt Open All Haki Pad"
		end

		if not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
			local tbl25 = { Coca = GetMaterial("Conjured Cocoa"), Mirror = GetMaterial("Mirror Fractal") }
			if (tbl25.Mirror <= 0 or not CanAwakenDough()) and tbl25.Coca >= 10 then
				return false, "Need For Chocolate Cup"
			end
		end

		return true, "Activated"
	end,
	["Dough King Force"] = function()
		return Sea3 and CheckItem("Sweet Chalice")
	end,
	["Spawn Black Beard"] = function()
		return Sea2 and CheckItem("Fist of Darkness")
	end,
	["Spawn Soul Reaper"] = function()
		if not Sea3 then
			return false
		end

		if fn10(enemies:FindFirstChild("Soul Reaper")) then
			return false
		end

		if CheckItem("Hallow Essence") then
			return getgenv().Setting.OneClick.Enable and fn29().Evil >= -1 or not getgenv().Setting.OneClick.Enable
		end

		if getgenv().Setting["Spawn Soul Reaper"] and getgenv().Setting["Spawn Soul Reaper"].Enable then
			return true
		end
		return false
	end,
	["Soul Reaper"] = function()
		local v10 = fn29()
		return Sea3 and fn10(enemies:FindFirstChild("Soul Reaper")) and v10.Evil ~= -5 and v10.Evil ~= -4
	end,
	["Black Beard"] = function()
		if Sea2 then
			for _, child in pairs(enemies:GetChildren()) do
				if child.Name == "Darkbeard" and fn10(child) then
					return true
				end
			end
		end

		return false
	end,
	["Saber Puzzle"] = function()
		if Sea1 and localPlayer.Data.Level.Value >= 200 and not CheckInvItem("Saber") then
			if ProgressChecker.Saber.UsedRelic == nil then
				SaberProgress()
			end

			if not ProgressChecker.Saber.UsedRelic then
				return true
			end
		end

		return false
	end,
	["Unlock Electric Claw"] = function()
		return GetLevel() >= 2000 and not DataSave.Unlocked.Electricclaw
	end,
	["God Human Material"] = function()
		if DataSave.Unlocked.GodHuman then
			return false
		end

		if not (DataSave.Melee["Dragon Talon"] and DataSave.Melee["Dragon Talon"].Mas400) then
			return false
		end

		for i = 1, 4 do
			if not RequirementGod[tostring(i)] then
				return true
			end
		end

		return false
	end,
	Saber = function()
		if Sea1 and GetLevel() >= 200 and not CheckInvItem("Saber") then
			if ProgressChecker.Saber.UsedRelic == nil then
				SaberProgress()
			end

			if ProgressChecker.Saber.UsedRelic and not ProgressChecker.Saber.KilledShanks and CheckEnemySpawn("Saber Expert") then
				return true
			end
		end

		return false
	end,
	["Minimum Fragment"] = function()
		if Sea1 then
			return false, "Cant Raid In Sea 1"
		end

		if GetLevel() < 1300 then
			return false, "Not Enough Level"
		end

		if X2Exp() then
			return false, "Not Gonna Waste X2 EXP LOL"
		end

		if GetLevel() < 2000 then
			MinFragment = 2000
		end

		MinFragment = 5000
		if MinFragment and localPlayer.Data.Fragments.Value >= MinFragment then
			return false, "Over 10k Fragments"
		end

		if #FruitFunc.HaveFruitInv() > 0 then
			task.wait(1)
		end

		if CheckItem("Special Microchip") or #FruitFunc.HaveFruitInv() > 0 or FruitFunc.GetFruitBelow1M() then
			return true, "Activated"
		end
		return false, "Doesnt Have Fruit"
	end,
	Tushita = function()
		if Sea3 then
			if GetLevel() < 2000 then
				return
			end

			if game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
				return fn10(enemies:FindFirstChild("rip_indra True Form"))
			end
			return fn10(enemies:FindFirstChild("Longma")) and not CheckInvItem("Tushita")
		end
	end,
	["Travel Sea3"] = function(arg)
		local mas400 = DataSave.Melee["Dragon Talon"].Mas400

		if mas400 then
			mas400 = not (DataSave.Unlocked.GodHuman or RequirementGod["1"] and RequirementGod["2"])
		end

		if not Sea2 then
			return false, "Not In Sea 2"
		end

		if not ProgressChecker.Sea3.FakeRipIndra then
			return false, "Not Killed Rip Indra"
		end

		if not DataSave.Unlocked.Deathstep then
			return false, "Not Unlocked Death Step"
		end

		if not DataSave.Unlocked.Sharkman then
			return false, "Not Unlocked Death Step"
		end

		if mas400 then
			return false, "Farming God Human Material"
		end
		local flag2 = DataSave.Unlocked.SoulGuitar and not CheckInvItem("Skull Guitar") and (not RequirementGuitar["1"] or GetMaterial("Dark Fragment") == 0)

		if flag2 then
			flag2 = not (getgenv().OneClickSetting and getgenv().OneClickSetting.DisableSoulGuitar)
		end

		if flag2 then
			return false, "Farming Skull Guitar Material"
		end

		if not arg == "Status" then
			task.wait(10)
		end

		local str = ""

		local function fn44(arg2)
			str ..= arg2 .. " "
		end

		if DataSave.Melee["Dragon Talon"].Mas400 then
			fn44("[1]")
		end

		if DataSave.Unlocked.GodHuman then
			fn44("[2]")
		end

		if RequirementGod["1"] and RequirementGod["2"] then
			fn44("[3]")
		end

		if str == "" then
			str = "Traveling To Sea 3"
		end

		return true, "Activated", str
	end,
	Elite = function()
		return getNearMob("Elite")
	end,
	Factory = function()
		if Sea2 then
			return getNearMob("Core")
		end
	end,
	["Pirate Raid"] = function()
		if Sea3 then
			return getNearMob("Pirate Raid")
		end
		return false
	end,
	["Sea 2"] = function()
		if not Sea1 then
			return false, "Not Sea 1"
		end

		if localPlayer.Data.Level.Value < 700 then
			return false, "Not Enough Level"
		end

		if not CheckInvItem("Saber") then
			return false, "Doesnt Have Saber"
		end
		return true, "Activated"
	end,
	Greybeard = function()
		return false
	end,
	Pole = function()
		return GetLevel() >= 400 and fn10(enemies:FindFirstChild("Thunder God")) and not CheckInvItem("Pole (1st Form)")
	end,
	Doflamingo = function()
		if localPlayer.Data.Level.Value >= 1000 and Sea2 and SwanDoor.Check() and enemies:FindFirstChild("Don Swan") and not CheckInvItem("Swan Glasses") then
			return true
		end
		return false
	end,
	["Swan Door Hop"] = function()
		return Sea2 and localPlayer.Data.Level.Value >= 1500 and not SwanDoor.Check() and not SwanDoor.GetFruit() and getgenv().Setting.OneClick.SwanFruitHop
	end,
	["Sea 3"] = function()
		ThirdSeaProgress()
		if not Sea2 then
			return false, "Not In Sea 2"
		end

		if localPlayer.Data.Level.Value < 1500 then
			return false, "Not Enough Level"
		end

		if not DataSave.Unlocked.SwanDoor and not ProgressChecker.Sea3.Doflamingo then
			return false, "Not Unlocked Doflamingo Door"
		end

		if not ProgressChecker.Sea3.Doflamingo then
			return false, "Not Killed Flamingo"
		end

		if ProgressChecker.Sea3.FakeRipIndra then
			return false, "Already Killed Rip Indra"
		end
		return true
	end,
	BossSniper = function()
		for _, v10 in pairs(getgenv().Setting.BossSniper.SelectedBoss) do
			if fn10(game:GetService("Workspace").Enemies:FindFirstChild(v10)) then
				return true
			end
		end
	end,
	GetFruit = function()
		return fn39()
	end,
	["Library Key"] = function()
		if Sea2 and not DataSave.Unlocked.Deathstep and CheckEnemySpawn("Awakened Ice Admiral") and GetLevel() >= 850 then
			return true
		end
		return false
	end,
	["Water Key"] = function()
		if Sea2 and not DataSave.Unlocked.Sharkman and CheckEnemySpawn("Tide Keeper") and GetLevel() >= 850 then
			return true
		end
	end,
	["Sea 2 Key Hop"] = function()
		return Sea2KeyHop()
	end,
	CDK = function()
		if GetLevel() <= 2200 then
			return
		end

		if Sea3 and CheckInvItem("Tushita") and CheckInvItem("Yama") and not CheckInvItem("Cursed Dual Katana") then
			local v10 = fn29()
			if v10.Good == 4 and (v10.Evil == 3 or v10.Evil == 4) then
				return true
			end

			if not (v10.Good <= 3 and v10.Good ~= -2 and v10.Good ~= 4) then
				tbl20.Evil()
				return v10.Evil == -3 or v10.Evil == -4 or v10.Evil == -5 and game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or CheckItem("Hallow Essence") or tbl19.Hell()
			end
			tbl20.Good()
			if v10.Good == -3 then
				return true
			end

			if v10.Good == -4 and tbl24["Pirate Raid"]() then
				return true
			end

			if v10.Good == -5 then
				return true
			end
		end
	end,
}

local function fn44()
	if Sea3 then
		local turtle = game:GetService("Workspace").Map:FindFirstChild("Turtle")
		if turtle and not turtle:FindFirstChild("TushitaGate") and fn29().Evil == -5 then
			return "Bone", nil, nil
		end

		if getgenv().OneClickSetting and GetLevel() >= 2000 and getgenv().OneClickSetting.HopHakiColor then
			if not X2Exp() and getgenv().GetServerData.ColorDealer ~= 1 then
				if not HaveAllHaki() then
					if localPlayer.Data.Fragments.Value >= 7500 then
						local colorDealer = getgenv().GetServerData.ColorDealer

						if colorDealer then
							if OnlyLegendaryHaki and table.find({ "Snow White", "Pure Red", "Winter Sky" }, colorDealer) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "2")
							end
						end

						TrueServerHop(1, 6)
					end
				end
			end
		end

		if not X2Exp() then
			if not DataSave.Unlocked.Dragontalon then
				if CheckRandomBone() then
					return "Bone", function()
						return not DataSave.Unlocked.Dragontalon and not X2Exp()
					end
				end
			end
		end
	end

	if GetLevel() < 2000 then
		return "Level", nil, nil
	end

	if Sea3 and not X2Exp() then
		if not CanAwakenDough() then
			if GetMaterial("Conjured Cocoa") < 10 then
				local flag2 = nil

				local thread = task.spawn(function()
					while task.wait(1) do
						flag2 = GetMaterial("Conjured Cocoa") >= 10
					end
				end)

				return "Material", function()
					if flag2 then
						if thread then
							task.cancel(thread)
						end
					end

					return not flag2
				end, { Material = "Conjured Cocoa" }
			end
		end
	end

	if GetLevel() < n2 then
		return "Level", nil, nil
	end
	local v10 = GetCurrentTool("Blox Fruit")

	if v10 and v10:FindFirstChild("Level") and (getgenv().OneClickSetting and getgenv().OneClickSetting.Mastery or not getgenv().OneClickSetting) then
		local value = v10.Level.Value

		if GetMaxMastery(v10) > value then
			return "Katakuri", function()
				local level = v10.Parent ~= nil and v10 and v10:FindFirstChild("Level")

				if level then
					local value2 = v10.Level.Value
					level = GetMaxMastery(v10) > value2
				end

				return level
			end, { Mastery = true, FarmMastery = true }
		end
	end

	return "Katakuri", nil, nil
end

GetValidFruitRaid = function()
	local n5 = 1000000
	local n6 = 0

	if AutoChip[localPlayer.Data.DevilFruit.Value] == "Dough" then
		n5 = 10000000
		n6 = 1000000
	end

	for _, v10 in pairs(FruitFunc.HaveFruitInv()) do
		if FruitPrice[v10:GetAttributes().OriginalName] >= n6 and FruitPrice[v10:GetAttributes().OriginalName] < n5 then
			return true
		end
	end
end

GetRealFruitStore = function()
	if Sea3 and not CanAwakenDough() then
		return false
	end

	if AutoChip[localPlayer.Data.DevilFruit.Value] == "Dough" then
		return FruitFunc.GetFruitAbove1M()
	end
	return FruitFunc.GetFruitBelow1M()
end

local function fn45()
	return (HasActiveQuest() or localPlayer.PlayerGui.Main.Quest.Visible) and (not WorkingFarm or WorkingFarm:empty())
end

local handlers2

handlers2 = {
	["Saber Puzzle"] = function()
		while Sea1 and GetLevel() >= 200 and not ProgressChecker.Saber.UsedRelic and not CheckInvItem("Saber") and task.wait(0.1) do
			StatusFarming = "Doing Saber Puzzle [Starting]"
			SaberProgress()
			if DataSave.Inventory.Saber or CheckInvItem("Saber") then
				StatusFarming = "Doing Saber Puzzle [Finished]"
				return
			end

			if Plates ~= 5 then
				StatusFarming = "Doing Saber Puzzle [Start Plates]"
				local connection = RunService.Stepped:Connect(fn12)

				while true do
					task.wait(0.2)
					SaberProgress()
					local questPlates = game:GetService("Workspace").Map.Jungle:FindFirstChild("QuestPlates")

					if questPlates then
						for i = 1, 5 do
							local button = questPlates:FindFirstChild("Plate" .. tostring(i))
							button = button and button:FindFirstChild("Button")

							if button then
								fn11(true)
								DoTween2(button.CFrame)
								pcall(firetouchinterest, fn9(localPlayer.Character), button, 0)
								task.wait(0.2)
								pcall(firetouchinterest, fn9(localPlayer.Character), button, 1)
							end

							task.wait(0.3)
						end
					end

					if Plates ~= 5 then
						continue
					end
					break
				end

				if connection then
					connection:Disconnect()
				end

				StatusFarming = "Doing Saber Puzzle [End Plates]"
			end

			SaberProgress()
			task.wait(0.2)

			if Plates == 5 and not ProgressChecker.Saber.UsedTorch then
				StatusFarming = "Doing Saber Puzzle [Start Torch]"

				if not CheckItem("Torch") then
					local torch = game:GetService("Workspace").Map.Jungle:FindFirstChild("Torch")
					DoTween2(torch and torch.CFrame or CFrame.new(-1679.2634, 20.4901, 170.7659))

					if torch and fn9(localPlayer.Character) then
						pcall(firetouchinterest, fn9(localPlayer.Character), torch, 0)
						task.wait(0.1)
						pcall(firetouchinterest, fn9(localPlayer.Character), torch, 1)
					end

					task.wait(0.5)
				end

				if CheckItem("Torch") then
					Equip("Torch")
					task.wait(0.2)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "DestroyTorch")
					task.wait(0.3)
					SaberProgress()

					if not ProgressChecker.Saber.UsedTorch then
						DoTween2(CFrame.new(1121.07, 4, 4389.22))
						task.wait(0.5)
						Equip("Torch")
						task.wait(0.2)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "DestroyTorch")
						task.wait(0.5)
					end
				end

				StatusFarming = "Doing Saber Puzzle [End Torch]"
			end

			SaberProgress()
			task.wait(0.2)

			if not ProgressChecker.Saber.UsedCup and ProgressChecker.Saber.UsedTorch then
				StatusFarming = "Doing Saber Puzzle [Start Cup]"

				if not CheckItem("Cup") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
					task.wait(0.3)
				end

				if not CheckItem("Cup") then
					DoTween2(CFrame.new(1109.47, 4, 4402.89))
					task.wait(0.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
					task.wait(0.5)
				end

				if CheckItem("Cup") then
					Equip("Cup")
					task.wait(0.2)
					local cup = localPlayer.Character:FindFirstChild("Cup") or localPlayer.Backpack:FindFirstChild("Cup")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", cup)
					task.wait(0.3)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
					task.wait(0.3)
					SaberProgress()

					if not ProgressChecker.Saber.UsedCup then
						DoTween2(CFrame.new(1398, -152, -1520))
						task.wait(0.5)
						Equip("Cup")
						task.wait(0.2)
						local cup2 = localPlayer.Character:FindFirstChild("Cup") or localPlayer.Backpack:FindFirstChild("Cup")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", cup2)
						task.wait(0.5)
						DoTween2(CFrame.new(1503.4, 77.35, -1297.55))
						task.wait(0.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
						task.wait(0.5)
					end
				end

				StatusFarming = "Doing Saber Puzzle [End Cup]"
			end

			SaberProgress()
			task.wait(0.2)

			if not ProgressChecker.Saber.TalkedSon and ProgressChecker.Saber.UsedCup and ProgressChecker.Saber.UsedTorch then
				StatusFarming = "Doing Saber Puzzle [Start Talk]"
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
				task.wait(0.3)
				SaberProgress()

				if not ProgressChecker.Saber.TalkedSon then
					DoTween2(CFrame.new(-939.34, 26.03, 4114.77))
					task.wait(0.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
					task.wait(0.5)
				end

				StatusFarming = "Doing Saber Puzzle [End Talk]"
			end

			SaberProgress()
			task.wait(0.2)

			if ProgressChecker.Saber.TalkedSon and not ProgressChecker.Saber.KilledMob and ProgressChecker.Saber.UsedTorch and ProgressChecker.Saber.UsedCup then
				StatusFarming = "Doing Saber Puzzle [Start Mob Leader]"
				local cframe14 = CFrame.new(-2880.716, 10, 5430.853)
				local mobLeader = game.Workspace.Enemies:FindFirstChild("Mob Leader") or getNearMob("Mob Leader")

				if not fn10(mobLeader) then
					fn11(true)

					DoTween2(cframe14 + Vector3.new(0, 25, 0), function()
						return not fn10(game.Workspace.Enemies:FindFirstChild("Mob Leader") or getNearMob("Mob Leader"))
					end)

					mobLeader = game.Workspace.Enemies:FindFirstChild("Mob Leader") or getNearMob("Mob Leader")
				end

				if fn10(mobLeader) then
					while Alive() and fn10(mobLeader) and task.wait(0.2) do
						fn35(mobLeader, nil, function()
							return Alive() and fn10(mobLeader)
						end)
					end
				end

				StatusFarming = "Doing Saber Puzzle [End Mob Leader]"
			end

			SaberProgress()
			task.wait(0.2)

			if not ProgressChecker.Saber.UsedRelic and ProgressChecker.Saber.UsedTorch and ProgressChecker.Saber.UsedCup and ProgressChecker.Saber.KilledMob then
				StatusFarming = "Doing Saber Puzzle [Start Relic]"

				if not CheckItem("Relic") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
					task.wait(0.3)

					if not CheckItem("Relic") then
						DoTween2(CFrame.new(-939.34, 26.03, 4114.77))
						task.wait(0.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
						task.wait(0.5)
					end
				end

				if CheckItem("Relic") then
					DoTween2(CFrame.new(-1405.31445, 29.8519974, 4.34172916))
					task.wait(0.5)
					Equip("Relic")
					task.wait(0.2)

					pcall(function()
						local final = game:GetService("Workspace").Map.Jungle:FindFirstChild("Final")
						final = final and final:FindFirstChild("Invis")

						if final then
							final.CanCollide = false
							final.Size = Vector3.new(20, 20, 20)
						end
					end)

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
					task.wait(0.5)
				end

				StatusFarming = "Doing Saber Puzzle [End Relic]"
			end

			SaberProgress()
		end
	end,
	Yama = function()
		while not CheckInvItem("Yama") do
			StatusFarming = "Getting Yama"
			DoTween2(CFrame.new(5252.9560546875, 16.707324981689453, 462.70941162109375))
			fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Hitbox.ClickDetector)
			task.wait(0.5)
		end
	end,
	Bartilo = function()
		while tbl24.Bartilo() and task.wait(0.1) do
			StatusFarming = "Doing Bartilo Quest"
			BartiloProgress()

			if not ProgressChecker.Bartilo.KilledBandits and not ProgressChecker.Bartilo.KilledSpring then
				while not ProgressChecker.Bartilo.KilledBandits and tbl24.Bartilo() and task.wait(0.1) do
					if not Alive() then
						fn11(false)

						while not Alive() do
							task.wait(1)
						end

						task.wait(1.5)

						if getgenv().Setting.AutoBuso and getgenv().Setting.AutoBuso.Enable then
							pcall(function()
								if localPlayer.Character and not localPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
							end)
						end
					else
						if not (HasActiveQuest("Swan Pirate") or HasActiveQuest("Citizen") or HasActiveQuest("Bartilo") or HasActiveQuest("BartiloQuest")) then
							StatusFarming = "[Bartilo] Getting Quest"
							DoTween2(CFrame.new(-461.533203, 72.3478546, 300.311096))
							task.wait(0.2)

							pcall(function()
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
							end)

							task.wait(0.3)
						end

						StatusFarming = "[Bartilo] Farming Swan Pirates (50 Kills)"
						local swanPirate = getNearMob("Swan Pirate")

						if fn10(swanPirate) then
							SSS(GetNearSpawn(fn9(swanPirate).Position))

							while Alive() and fn10(swanPirate) and not ProgressChecker.Bartilo.KilledBandits and task.wait(0.1) do
								fn35(swanPirate)
							end

							BartiloProgress()
						else
							SSS(GetNearSpawn(Vector3.new(964.2918, 73.08502, 1278.3036)))
							fn11(true)

							DoTween2(CFrame.new(Vector3.new(964.2918, 73.08502, 1278.3036) + Vector3.new(0, 25, 0)), function()
								return not fn10(getNearMob("Swan Pirate")) and not ProgressChecker.Bartilo.KilledBandits
							end)

							task.wait(0.2)
						end
					end
				end
			end

			BartiloProgress()

			if not ProgressChecker.Bartilo.KilledSpring and ProgressChecker.Bartilo.KilledBandits then
				StatusFarming = "[Bartilo] Finding Jeremy"
				DoTween2(CFrame.new(-461.533203, 72.3478546, 300.311096))
				task.wait(0.2)

				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
				end)

				task.wait(0.3)

				if Alive() then
					local jeremy = game.Workspace.Enemies:FindFirstChild("Jeremy") or getNearMob("Jeremy")

					if fn10(jeremy) then
						StatusFarming = "[Bartilo] Killing Jeremy"
						SSS(GetNearSpawn(fn9(jeremy).Position))

						while Alive() and fn10(jeremy) and task.wait(0.1) do
							fn35(jeremy)
						end
					end
				else
					while not Alive() do
						task.wait(1)
					end
				end

				BartiloProgress()
				local killedBandits = not ProgressChecker.Bartilo.KilledSpring and ProgressChecker.Bartilo.KilledBandits

				if killedBandits then
					killedBandits = not (game.Workspace.Enemies:FindFirstChild("Jeremy") or getNearMob("Jeremy"))
				end

				if killedBandits then
					MainServerHop(5, "Finding Jeremy [Bartilo Quest]")
				end
			end

			BartiloProgress()

			if not ProgressChecker.Bartilo.DidPlates and ProgressChecker.Bartilo.KilledSpring and ProgressChecker.Bartilo.KilledBandits then
				StatusFarming = "[Bartilo] Solving Colosseum Plates"
				DoTween2(CFrame.new(-1837.6804199219, 11.032466888428, 1667.9600830078))

				for i = 1, 8 do
					local str = "Plate" .. tostring(i)
					local map = game:GetService("Workspace"):FindFirstChild("Map")
					map = map and map:FindFirstChild("Dressrosa")
					map = map and map:FindFirstChild("BartiloPlates")
					map = map and map:FindFirstChild(str)

					if map and fn9(localPlayer.Character) then
						local cFrame = map.CFrame
						fn9(localPlayer.Character).CFrame = cFrame
						task.wait(0.2)
					end
				end
			end

			BartiloProgress()
		end
	end,
	Saber = function()
		StatusFarming = "Killing Shank"

		while Sea1 and GetLevel() >= 200 and not CheckInvItem("Saber") and ProgressChecker.Saber.UsedRelic and not ProgressChecker.Saber.KilledShanks and task.wait(0.2) and CheckEnemySpawn("Saber Expert") do
			local saberExpert = enemies:FindFirstChild("Saber Expert") or getNearMob("Saber Expert")

			if not fn10(saberExpert) then
				local cframe14 = CFrame.new(-1405.31445, 29.8519974, 4.34172916)
				SSS(GetNearSpawn(cframe14.Position))
				DoTween2(cframe14 + Vector3.new(0, 10, 0))
				task.wait(0.5)
				saberExpert = enemies:FindFirstChild("Saber Expert") or getNearMob("Saber Expert")
			end

			if saberExpert and fn10(saberExpert) then
				local v10 = CreateSteppedLoop(fn12, "NoClipSaber")

				while Alive() and fn10(saberExpert) and task.wait(0.1) do
					StatusFarming = "Killing Shank"

					fn35(saberExpert, nil, function()
						return Alive() and fn10(saberExpert)
					end)
				end

				DisconnectLoop(v10)
			end

			SaberProgress()
		end
	end,
	["Sea 2"] = function()
		local cframe14 = CFrame.new(4852.28955, 5.65145, 718.5307)
		local cframe15 = CFrame.new(1212.38342, 21.3974915, -1429.6394)

		while Sea1 and task.wait(0.1) do
			SecondSeaProgress()
			local door = workspace.Map:FindFirstChild("Ice") and workspace.Map.Ice:FindFirstChild("Door")

			if door and (not door.CanCollide or door.Transparency == 1) then
				ProgressChecker.Sea2.UsedKey = true
			end

			if not ProgressChecker.Sea2.UsedKey and not CheckItem("Key") then
				StatusFarming = "Getting Key from Detective"

				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
				end)

				task.wait(0.5)
				SecondSeaProgress()

				if not CheckItem("Key") and not ProgressChecker.Sea2.UsedKey then
					StatusFarming = "Going to Detective [Prison]"
					DoTween2(cframe14)
					local position = cframe14.Position

					if (fn9(localPlayer.Character).Position - position).Magnitude < 50 then
						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
						end)

						task.wait(0.5)
						SecondSeaProgress()
					end
				end
			end

			if not ProgressChecker.Sea2.UsedKey and CheckItem("Key") and Alive() then
				StatusFarming = "Using Key on Ice Door"
				Equip("Key")
				local cFrame = door and door.CFrame or CFrame.new(1288.73328, 35.8959961, -1361.06274)
				DoTween2(cFrame)
				local character = localPlayer.Character
				local key = character and character:FindFirstChild("Key")
				key = key and key:FindFirstChild("Handle")

				if door then
					if firetouchinterest and key then
						firetouchinterest(key, door, 0)
						task.wait(0.1)
						firetouchinterest(key, door, 1)
					end

					local position = cFrame.Position

					if (fn9(character).Position - position).Magnitude < 20 then
						pcall(function()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "UseKey")
						end)
					end
				end

				task.wait(0.5)
				SecondSeaProgress()

				if door and (not door.CanCollide or door.Transparency == 1) then
					ProgressChecker.Sea2.UsedKey = true
				end
			end

			if not ProgressChecker.Sea2.KilledIceBoss and (ProgressChecker.Sea2.UsedKey or door and not door.CanCollide) then
				local iceAdmiral = enemies:FindFirstChild("Ice Admiral") or getNearMob("Ice Admiral")

				if not iceAdmiral or not fn10(iceAdmiral) then
					StatusFarming = "Moving to Ice Admiral Room"
					DoTween2(cframe15)
					task.wait(0.5)
					iceAdmiral = enemies:FindFirstChild("Ice Admiral") or getNearMob("Ice Admiral")
				end

				if iceAdmiral and fn10(iceAdmiral) then
					local v10 = CreateSteppedLoop(fn12, "NoClipIceAdmiral")

					while Alive() and fn10(iceAdmiral) and task.wait(0.1) do
						StatusFarming = "Killing Ice Admiral"

						fn35(iceAdmiral, nil, function()
							return Alive() and fn10(iceAdmiral)
						end)
					end

					DisconnectLoop(v10)
					task.wait(0.5)
					SecondSeaProgress()
				else
					StatusFarming = "Waiting for Ice Admiral..."
					task.wait(2)
					SecondSeaProgress()
					local flag2 = not ProgressChecker.Sea2.KilledIceBoss

					if flag2 then
						flag2 = not (enemies:FindFirstChild("Ice Admiral") or getNearMob("Ice Admiral"))
					end

					if flag2 then
						MainServerHop(5, "Hop Find Ice Admiral")
					end
				end
			end

			if ProgressChecker.Sea2.KilledIceBoss then
				StatusFarming = "Ice Admiral Defeated! Teleporting to Sea 2 via Remote..."

				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
				end)

				task.wait(0.2)
				MainTravel(3, "Finished Sea 1", "Sea2")
			end

			SecondSeaProgress()
		end
	end,
	SubmergedFarming = function(arg)
		local value = localPlayer.Data.Level.Value
		local n5 = 0

		for k in pairs(tbl5.TripleQuest[arg]) do
			if k >= n5 and k <= value and k ~= nil then
				n5 = k
			end
		end

		if not tbl5.TripleQuest[arg][n5] then
			return
		end
		local v10 = tbl5.TripleQuest[arg][n5]
		local questCFrame = v10.QuestCFrame
		local quest = v10.Quest
		local requirement = v10[2] and v10[2].Requirement or math.huge
		local n6 = 1

		if requirement <= value then
			n6 = 2
		end

		local questCheck = v10[n6].QuestCheck
		StatusFarming = "Submerged Farming [Lv. " .. value .. "]"

		while getgenv().Setting.OneClick.Enable and Alive() and localPlayer.Data.Level.Value <= 2800 and (not WorkingFarm or WorkingFarm:empty()) do
			if not fn16(localPlayer.Character) then
				StatusFarming = "Traveling to Submerged Island"

				if (fn9(localPlayer.Character).Position - Vector3.new(-16274.825, 25.220568, 1375.0765)).magnitude > 12 then
					DoTween2(CFrame.new(Vector3.new(-16274.825, 25.220568, 1375.0765)))
				end

				if (fn9(localPlayer.Character).Position - Vector3.new(-16274.825, 25.220568, 1375.0765)).magnitude <= 15 then
					pcall(function()
						local net2 = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net")
						net2["RF/SubmarineWorkerSpeak"]:InvokeServer("AskKilledTikiBoss")
						net2["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
					end)

					local now4 = tick()

					while true do
						task.wait(0.2)
						if not (fn16(localPlayer.Character) or tick() - now4 > 5) then
							continue
						end
						break
					end
				end

				if not fn16(localPlayer.Character) then
					if improvedTeleport then
						improvedTeleport(Vector3.new(11256, -2138, 9888) + Vector3.new(0, 50, 0))
					end

					task.wait(1)
				end
			end

			if not fn16(localPlayer.Character) then
				task.wait(0.5)
			else
				if not localPlayer.PlayerGui.Main.Quest.Visible or not FindQuest(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, questCheck) then
					if localPlayer.PlayerGui.Main.Quest.Visible then
						CancelQuest()
						task.wait(0.3)
					end

					StatusFarming = "Getting Quest [" .. questCheck .. "]"
					local position = questCFrame.Position

					if (fn9(localPlayer.Character).Position - position).magnitude > 10 then
						DoTween2(questCFrame)
					end

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest, n6)
					task.wait(0.5)
				end

				if localPlayer.PlayerGui.Main.Quest.Visible then
					local v11 = getNearMob(questCheck)

					if fn10(v11) and (fn9(v11).Position - Vector3.new(11256, -2138, 9888)).magnitude < 2500 then
						StatusFarming = "Farming [" .. questCheck .. "]"
						FixTP(v11.Name)

						while Alive() and fn10(v11) and localPlayer.PlayerGui.Main.Quest.Visible and (fn9(v11).Position - Vector3.new(11256, -2138, 9888)).magnitude < 2500 and (not WorkingFarm or WorkingFarm:empty()) and task.wait(0.2) do
							FixTP(v11.Name)
							fn35(v11, nil, fn45)
						end
					else
						StatusFarming = "Finding Mob [" .. questCheck .. "]"
						FixTP(questCheck)

						TweenToMobSpawn(questCheck, 25, function()
							return not fn10(getNearMob(questCheck)) and localPlayer.PlayerGui.Main.Quest.Visible and fn45()
						end)

						task.wait(0.2)
					end
				end

				local value2 = localPlayer.Data.Level.Value
				local n7 = 0

				for k in pairs(tbl5.TripleQuest[arg]) do
					if k >= n7 and k <= value2 and k ~= nil then
						n7 = k
					end
				end

				if n7 ~= n5 then
					local v11 = tbl5.TripleQuest[arg][n7]
					questCFrame = v11.QuestCFrame
					quest = v11.Quest

					if (v11[2] and v11[2].Requirement or math.huge) <= value2 then
						n6 = 2
					else
						n6 = 1
					end

					questCheck = v11[n6].QuestCheck
					n5 = n7
				end

				task.wait(0.1)
			end
		end
	end,
	IdleFarming = function(arg, arg2, arg3)
		local tbl25 = arg3 or {}

		local fn46 = arg2 or function()
			return true
		end

		if arg == "Level" then
			if not Increment then
				Increment = 1
			end

			local value = localPlayer.Data.Level.Value
			local n5 = 150

			if n5 <= value then
				local n6 = 0

				for k in pairs(tbl5.TripleQuest[currentPlaceKey]) do
					if k >= n6 and k <= value and k ~= nil then
						n6 = k
					end
				end

				if n6 == 0 then
					local huge = math.huge

					for k in pairs(tbl5.TripleQuest[currentPlaceKey]) do
						if type(k) == "number" and k < huge then
							huge = k
						end
					end

					if huge ~= math.huge then
						n6 = huge
					end
				end

				if Sea3 and value >= 2600 and tbl5.TripleQuest[currentPlaceKey][2600] then
					handlers2.SubmergedFarming(currentPlaceKey)
					return
				end

				if tbl5.TripleQuest[currentPlaceKey][n6] ~= nil then
					local v10 = nil

					for i = 3, 5 do
						if tbl5.TripleQuest[currentPlaceKey][n6][i] then
							if value >= tbl5.TripleQuest[currentPlaceKey][n6][i].Requirement and CheckEnemySpawn(tbl5.TripleQuest[currentPlaceKey][n6][i].QuestCheck) then
								v10 = tbl5.TripleQuest[currentPlaceKey][n6][i]
							end
						end
					end

					if v10 then
						StatusFarming = "Farming Boss (Triple Quest Method)"

						if not HasActiveQuest(v10.QuestCheck) then
							CancelQuest()
							FixTP(v10.QuestCheck)

							if not HasActiveQuest(v10.QuestCheck) then
								SSS(GetNearSpawn(v10.QuestCFrame.Position))
								DoTween2(v10.QuestCFrame)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", v10.Quest, v10.Index or 3)
								task.wait(0.3)
							end
						end

						local v11 = GetMainEnemy(v10.QuestCheck)

						if fn10(v11) then
							SSS(GetNearSpawn(fn9(v11).Position))
							FixTP(v11.Name)

							while Alive() and fn10(v11) and task.wait(0.2) do
								if Alive() and fn10(v11) then
									pcall(function()
										FixTP(v11.Name)
										pcall(Equip, GetCurrentTool("Melee", true))
										ResizeBoss(v11, true)
										fn19(v11, Vector3.new(0, 20, 20))
									end)
								end
							end
						end
					else
						if GetSettingHopExploiter() then
							HopNearExploiter()
						end

						local v11 = tbl5.TripleQuest[currentPlaceKey][n6]
						local flag2 = v11 and v11[2]

						if flag2 then
							flag2 = value >= (v11[2].Requirement or math.huge)
						end

						local n7 = 1

						if flag2 then
							n7 = 2
						end

						local questCheck = v11[n7].QuestCheck

						if HasActiveQuest() and not HasActiveQuest(questCheck) then
							CancelQuest()
							task.wait(0.2)
						end

						local v12 = questCheck

						if not HasActiveQuest(questCheck) then
							StatusFarming = "Getting Quest [" .. tostring(v12) .. "]"
							FixTP(questCheck)

							while not SafeGetQuest(v11.QuestCFrame, v11.Quest, n7, nil, questCheck) and task.wait(0.1) do
								StatusFarming = "Getting Quest [" .. tostring(v12) .. "]"
								FixTP(questCheck)
								SSS(GetNearSpawn(v11.QuestCFrame.Position))
								DoTween2(v11.QuestCFrame)
							end
						end

						StatusFarming = "Farming Lv [" .. v12 .. "]"
						local now4 = tick()

						local function fn47()
							return Alive() and getgenv().Setting.OneClick.Enable and WorkingFarm:empty() and HasActiveQuest(v12) and fn46()
						end

						while true do
							if task.wait(0.1) and HasActiveQuest(v12) and getgenv().Setting.OneClick.Enable and WorkingFarm:empty() then
								if not Alive() then
									fn11(false)

									while not Alive() do
										task.wait(1)
									end

									task.wait(1.5)

									if getgenv().Setting.AutoBuso and getgenv().Setting.AutoBuso.Enable then
										pcall(function()
											if localPlayer.Character and not localPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end)
									end

									if HasActiveQuest(v12) then
										continue
									end
								else
									if tick() - now4 >= 5 then
										if not Alive() then
											fn11(false)
										end

										now4 = tick()
									end

									local v13 = getNearMob(v12)

									if fn10(v13) then
										local v14 = fn9(v13)

										if v14 and LastMobPosition then
											LastMobPosition[v12] = v14.CFrame
											local match = v13.Name:match("^(.-)%s*%[") or v13.Name
											LastMobPosition[match:match("^%s*(.-)%s*$") or match] = v14.CFrame
										end

										FixTP(v13.Name)

										while true do
											if Alive() and fn10(v13) and fn47() and task.wait(0.2) then
												fn35(v13, nil, fn47)
												if not fn34(v13, fn47) then
													continue
												end
											end

											break
										end
									else
										pcall(Equip, GetCurrentTool("Melee", true))
										FixTP(v12)

										TweenToMobSpawn(v12, 25, function()
											return HasActiveQuest(v12) and fn47()
										end)

										task.wait(0.2)
									end

									continue
								end
							end

							break
						end

						local value2 = localPlayer.Data.Level.Value

						for k in pairs(tbl5.TripleQuest[currentPlaceKey]) do
							if k >= n6 and k <= value2 then
								n6 = k
							end
						end
					end
				else
					print("Error: Farming Highest " .. n6)
				end
			else
				local str, cframe14

				if value <= 30 then
					str = "Sky Bandit"
					cframe14 = CFrame.new(-5014.0341796875, 280.72146606445312, -972.079345703125)
				else
					str = "God's Guard"
					cframe14 = CFrame.new(-4227.2509765625, 1088, -567.60888671875)
				end

				StatusFarming = "Jump Lv Farming [" .. str .. "]"

				if Alive() then
					local function fn47()
						return Alive() and getgenv().Setting.OneClick.Enable and localPlayer.Data.Level.Value < n5
					end

					local v10 = getNearMob(str)
					local flag2 = v10 and fn10(v10)

					if flag2 then
						local position = cframe14.Position
						flag2 = (fn9(v10).Position - position).magnitude < 2500
					end

					if flag2 then
						FixTP(v10.Name)
						local position = fn9(v10).Position

						if (fn9(localPlayer.Character).Position - position).magnitude > 50 then
							DoTween2(CFrame.new(position) * CFrame.new(0, 40, 0), fn47)
						end

						while true do
							if Alive() and fn10(v10) and fn47() and task.wait(0.2) then
								fn35(v10, nil, fn47)
								if not fn34(v10, fn47) then
									continue
								end
							end

							break
						end
					else
						local v11 = GetMobSpawnCFrame(str) or cframe14
						fn11(true)

						DoTween2(v11 + Vector3.new(0, 25, 0), function()
							return fn47() and not fn10(getNearMob(str))
						end)

						task.wait(0.2)
					end
				end
			end
		else
			local function fn47()
				return fn46() and WorkingFarmEmpty()
			end

			if tbl25.Mastery then
				handlers2[arg]("OneClick", fn47, true, nil, tbl25)
			elseif arg == "Material" then
				handlers2[arg](tbl25.Material, "OneClick", fn47)
			else
				handlers2[arg]("OneClick", fn47)
			end
		end
	end,
	["Race Evolve"] = function(arg)
		Type = "Race Evolve"
		StatusFarming = "Ready To Evolve Race"

		if not localPlayer.Data.Race:FindFirstChild("Evolved") then
			if ProgressChecker.RaceV2.DoneRace == nil then
				RaceV2Progress()
			end

			if not ProgressChecker.RaceV2.DoneRace then
				RaceV2Progress()

				if not StartRace then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "Alchemist", "2" }))
				end

				if not CheckItem("Flower 2") then
					local n5 = 0

					while true do
						if not CheckItem("Flower 2") and task.wait(0.1) then
							StatusFarming = "Getting Flower 2"
							DoTween2(game.Workspace:FindFirstChild("Flower2").CFrame)
							n5 += 1
							task.wait(2)
							if not (n5 >= 5) then
								continue
							end
						end

						break
					end

					if n5 >= 5 and not CheckItem("Flower 2") then
						MainServerHop(5, "Error Flower 2 [Race Evolve]")
					end
				end

				if not CheckItem("Flower 1") and game.Workspace:FindFirstChild("Flower1").Transparency ~= 1 then
					local n5 = 0

					while true do
						if not CheckItem("Flower 1") and game.Workspace:FindFirstChild("Flower1").Transparency ~= 1 and task.wait(0.1) then
							StatusFarming = "Getting Flower 1"
							DoTween2(game.Workspace:FindFirstChild("Flower1").CFrame)
							n5 += 1
							task.wait(2)
							if not (n5 >= 5) then
								continue
							end
						end

						break
					end

					if n5 >= 5 and not CheckItem("Flower 1") then
						MainServerHop(5, "Error Flower 1 [Race Evolve]")
					end
				end

				if not CheckItem("Flower 3") then
					local function fn46()
						local flag2 = not CheckItem("Flower 3")

						if flag2 then
							flag2 = not (not CheckItem("Flower 1") and game.Workspace:FindFirstChild("Flower1").Transparency ~= 1)
						end

						return flag2
					end

					while fn46() and task.wait(0.1) do
						handlers2.Material("Ectoplasm", arg or Type, fn46)
					end
				end

				if CheckItem("Flower 3") and CheckItem("Flower 2") and CheckItem("Flower 1") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "Alchemist", "3" }))
				end
			end
		else
			while tbl24["Race Evolve"]() and task.wait(0.1) do
				local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")

				if response == 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
				end

				if response == 1 and handlers[localPlayer.Data.Race.Value] then
					print("Calling")
					handlers[localPlayer.Data.Race.Value](arg == "OneClick")
				end

				if response == 2 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
				end
			end
		end
	end,
	Doflamingo = function()
		local donSwan = game.Workspace.Enemies:FindFirstChild("Don Swan")

		if fn10(donSwan) and SwanDoor.Check() then
			SSS(GetNearSpawn(fn9(donSwan).Position))

			while fn10(donSwan) and task.wait(0.1) do
				StatusFarming = "Farming Doflamingo"
				fn35(donSwan, nil)
			end
		end
	end,
	["Red Key"] = function()
		while Alive() and CheckItem("Red Key") and not CanAwakenDough() and wait(0.5) do
			pcall(function()
				Equip("Red Key")

				pcall(function()
					workspace.Map.CakeLoaf.RedDoor.Part.Size = Vector3.new(20, 20, 20)
				end)

				pcall(function()
					workspace.Map.CakeLoaf.RedDoor.Size = Vector3.new(20, 20, 20)
				end)

				DoTween2(CFrame.new(-2681.85522, 64.5855331, -12851.9971, 0.0693147331, -8.22019004e-08, 0.997594833, -4.90588299e-08, 1, 8.58087859e-08, -0.997594833, -5.48886518e-08, 0.0693147331))
			end)
		end
	end,
	["Sea 3"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "ZQuestProgress", "Begin" }))
		wait(3)
		ThirdSeaProgress()
		local ripIndra = game.Workspace.Enemies:FindFirstChild("rip_indra")

		if fn10(ripIndra) and not ProgressChecker.Sea3.FakeRipIndra then
			StatusFarming = "Attacking Rip Indra"

			local thread = task.spawn(function()
				while task.wait(1) do
					ThirdSeaProgress()
				end
			end)

			local function fn46()
				return fn15(ripIndra, localPlayer.Character) <= 1000 and not ProgressChecker.Sea3.FakeRipIndra
			end

			while fn10(ripIndra) and Alive() and task.wait(0.1) and fn46() do
				fn35(ripIndra, nil, fn46)
			end

			if thread then
				task.cancel(thread)
			end
		end

		ThirdSeaProgress()
	end,
	["Awaken Fruit"] = function()
		if getgenv().Setting.OneClick.Enable and WorkingFarmEmpty() then
			handlers2.Raid("OneClick")
		end
	end,
	["Minimum Fragment"] = function()
		while MinFragment and localPlayer.Data.Fragments.Value < MinFragment and (FruitFunc.GetFruitBelow1M() or #FruitFunc.HaveFruitInv() >= 1) and task.wait() and getgenv().Setting.OneClick.Enable and WorkingFarmEmpty() do
			handlers2.Raid("OneClick")
		end
	end,
	["Spawn Rip Indra"] = function()
		if HakiFunc.CanOpenPad() and HakiFunc.CanOpenPad()[2] then
			StatusFarming = "Spawning Rip Indra [Equip]"
			Equip("God's Chalice")
			StatusFarming = "Spawning Rip Indra [TP]"
			pcall(TpNearestEntrance, PlacesPosition.CenterCastle)
			task.wait(0.2)
			DoTween2(PlacesPosition.SpawnRipIndra)
			StatusFarming = "Spawning Rip Indra [Fire]"
			local boatCastle = game:GetService("Workspace").Map:FindFirstChild("Boat Castle")

			if boatCastle then
				local summoner = boatCastle:FindFirstChild("Summoner")

				if summoner then
					local detection = summoner:FindFirstChild("Detection")

					if detection then
						fn4(fn9(localPlayer.Character), detection, 0)
						task.wait()
						fn4(fn9(localPlayer.Character), detection, 1)
					end
				end
			end

			task.wait(4)
		end
	end,
	["Spawn Black Beard"] = function()
		local darkbeard = game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
		if fn10(darkbeard) then
			return
		end

		if CheckItem("Fist of Darkness") then
			StatusFarming = "Spawning Black Beard"

			if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
				localPlayer.Character.Humanoid.Sit = false
			end

			local cframe14 = CFrame.new(3777.22266, 13.319315, -3496.96118, 0.19671461, -0.00182435918, 0.980459094, -5.4860313e-05, 0.999998271, 0.00187172298, -0.980460763, -0.000421983568, 0.196714163)
			SSS(GetNearSpawn(Vector3.new(3777.2227, 13.319315, -3496.9612)))

			while Alive() and (fn9(localPlayer.Character).Position - Vector3.new(3777.2227, 13.319315, -3496.9612)).magnitude >= 10 and task.wait(0.1) do
				pcall(function()
					DoTween2(cframe14)
				end)
			end

			if Alive() then
				fn9(localPlayer.Character).CFrame = cframe14
			end

			Equip("Fist of Darkness")
			task.wait(0.8)

			pcall(function()
				local detection = nil

				pcall(function()
					detection = game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection
				end)

				if not detection then
					local darkbeardArena = workspace.Map:FindFirstChild("DarkbeardArena")

					if darkbeardArena and darkbeardArena:FindFirstChild("Summoner") then
						detection = darkbeardArena.Summoner:FindFirstChild("Detection")
					end
				end

				if detection then
					pcall(function()
						fn4(fn9(localPlayer.Character), detection, 0)
						task.wait(0.1)
						fn4(fn9(localPlayer.Character), detection, 1)
					end)

					task.wait(0.2)

					if localPlayer.Character and localPlayer.Character:FindFirstChild("Fist of Darkness") and localPlayer.Character["Fist of Darkness"]:FindFirstChild("Handle") then
						pcall(function()
							fn4(localPlayer.Character["Fist of Darkness"].Handle, detection, 0)
							task.wait(0.1)
							fn4(localPlayer.Character["Fist of Darkness"].Handle, detection, 1)
						end)
					end
				end
			end)

			local n5 = 0

			while n5 < 10 and not fn10(game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")) and Alive() do
				StatusFarming = "Waiting for Darkbeard animation..."
				task.wait(0.5)
				n5 += 0.5
			end
		end
	end,
	["Black Beard"] = function(arg, arg2)
		local str = "Black Beard"

		local fn46 = arg2 or function()
			return true
		end

		local function fn47()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and fn46() then
				return true
			end

			return false
		end

		local darkbeard = game.Workspace.Enemies:FindFirstChild("Darkbeard")

		if fn10(darkbeard) then
			while fn10(darkbeard) and task.wait(0.1) and fn47() do
				StatusFarming = "Attacking Black Beard"
				fn35(darkbeard, nil)
			end
		end

		fn11(false)
	end,
	YoruV3 = function(arg, arg2)
		local str = "YoruV3"

		arg2 = arg2 or function()
			return true
		end

		local function fn46()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and arg2() then
				return true
			end

			return false
		end

		local tbl25 = { "StartSeaEvents", "SeaBeast", "Ship" }

		for _, v10 in pairs(tbl25) do
			SeaEventsController[v10] = "Race Evolve"
		end

		while arg2() and not CheckItem("Fist of Darkness") do
			task.wait(1)
		end

		for _, v10 in pairs(tbl25) do
			SeaEventsController[v10] = nil
		end

		if CheckItem("Fist of Darkness") and arg2() then
			DoTween2(CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668))
		end

		while CheckItem("Fist of Darkness") and arg2() and task.wait(0.1) do
			if getgenv().Setting.YoruV3.Upgrade then
				local v10 = game.Players:FindFirstChild(getgenv().Setting.YoruV3.SelectedPlayer)

				if v10 then
					local flag2 = false

					for _, child in pairs(v10.Backpack:GetChildren()) do
						if child.Name == "Fist of Darkness" then
							flag2 = true
						end
					end

					for _, child in pairs(v10.Character:GetChildren()) do
						if child.Name == "Fist of Darkness" then
							flag2 = true
						end
					end

					if flag2 then
						DoTween2(CFrame.new(-5725.2001953125, 48.480113983154297, -771.59503173828125))
					end

					if game.Workspace.Enemies:FindFirstChild("Darkbeard") then
						fireclickdetector(game:GetService("Workspace").Map.GraveIsland.Mountain.Rocks.Button.ClickDetector)
					end
				end
			else
				local v10 = game.Players:FindFirstChild(getgenv().Setting.YoruV3.SelectedPlayer)

				if v10 then
					local flag2 = false

					for _, child in pairs(v10.Backpack:GetChildren()) do
						if child.Name == "Fist of Darkness" then
							flag2 = true
						end
					end

					for _, child in pairs(v10.Character:GetChildren()) do
						if child.Name == "Fist of Darkness" then
							flag2 = true
						end
					end

					if flag2 and fn15(v10.Character, Vector3.new(-5725.2, 48.480114, -771.59503)) <= 100 then
						handlers2["Spawn Black Beard"](arg or "YoruV3", fn46)
					end
				end
			end
		end
	end,
	Tushita = function(arg, arg2)
		local str = "Tushita"

		arg2 = arg2 or function()
			return true
		end

		local function fn46()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and arg2() then
				return true
			end

			return false
		end

		local function fn47()
			return fn10(game.Workspace.Enemies:FindFirstChild("rip_indra True Form")) and fn46()
		end

		if game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
			if fn47() then
				StatusFarming = "Doing Tushita Quest"

				repeat
					wait()
					StatusFarming = "Doing Tushita Quest [Wait Alive]"
				until Alive()

				for i = 1, 10 do
					pcall(function()
						localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5712.98681640625, 18.041336059570312, 253.65997314453125)
					end)

					task.wait()
				end

				while true do
					wait()
					StatusFarming = "Doing Tushita Quest [Tweening To Door]"

					pcall(function()
						SSS(GetNearSpawn(Vector3.new(5712.987, 18.041336, 253.65997)))
						DoTween2(Vector3.new(5712.987, 18.041336, 253.65997))
					end)

					if not (CheckItem("Holy Torch") or not fn47()) then
						continue
					end
					break
				end

				if CheckItem("Holy Torch") then
					while true do
						wait()
						StatusFarming = "Doing Tushita Quest [Equipping]"

						pcall(function()
							Equip("Holy Torch")
						end)

						if not (localPlayer.Character and localPlayer.Character:FindFirstChild("Holy Torch") and CheckItem("Holy Torch")) then
							continue
						end
						break
					end

					while true do
						wait()
						StatusFarming = "Doing Tushita Quest [Doing Quest Torhces]"

						for k, v10 in game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("TushitaProgress").Torches, nil, nil do
							if not v10 then
								task.spawn(function()
									game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("TushitaProgress", "Torch", k)
								end)
							end
						end

						if not (not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") or not CheckItem("Holy Torch") or not fn47()) then
							continue
						end
						break
					end

					game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate"):Destroy()
				end
			end
		elseif not CheckInvItem("Tushita") then
			local longma = game.Workspace.Enemies:FindFirstChild("Longma")

			if fn10(longma) then
				StatusFarming = "Killing Longma"
				SSS(GetNearSpawn(fn9(longma).Position))

				while fn10(longma) and task.wait(0.1) and fn46() do
					fn35(longma, nil)
				end

				task.wait(2)
			end
		end
	end,
	["Tushita Hop__1"] = function(arg, arg2)
		local str = "Tushita Hop__1"

		arg2 = arg2 or function()
			return true
		end

		local function fn46()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and arg2() then
				return true
			end

			return false
		end

		if not Sea3 then
			Travel("Sea3")
		end

		if game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
			local function fn47()
				return not fn10(game.Workspace.Enemies:FindFirstChild("rip_indra True Form")) and fn46()
			end

			handlers2.Elite(arg or "Tushita Hop__1")
			handlers2["Collect Chest"](arg or "Tushita Hop__1", fn47, true)

			if CheckItem("God's Chalice") then
				handlers2["Open Pad"](arg or "Tushita Hop__1", fn47)
				handlers2["Spawn Rip Indra"](arg or "Tushita Hop__1", fn47)
				task.wait(1)
			end
		end

		local tushita = handlers2.Tushita
		arg = arg or "Tushita Hop__1"
		tushita(arg, fn46)
		task.wait(0.5)

		if not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") and not fn10(game.Workspace.Enemies:FindFirstChild("Longma")) then
			MainServerHop(5, "Find New Server [Tushita Hop 1]")
		end
	end,
	["Black Beard Hop"] = function(arg, arg2)
		local str = "Black Beard Hop"

		local fn46 = arg2 or function()
			return true
		end

		local function fn47()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and fn46() then
				return true
			end

			return false
		end

		if not Sea2 then
			Travel("Sea2")
		end

		local function fn48()
			return not fn10(game.Workspace.Enemies:FindFirstChild("Darkbeard")) and fn47()
		end

		handlers2["Collect Chest"](arg or "Black Beard Hop", fn48, true)

		if CheckItem("Fist of Darkness") then
			handlers2["Spawn Black Beard"](arg or "Black Beard Hop", fn47)
			task.wait(1)
		end

		handlers2["Black Beard"](arg or "Black Beard Hop", fn47)

		if fn48() then
			MainServerHop(5, "Find New Server [Black Beard Hop]")
		end
	end,
	["Rip Indra"] = function(arg, arg2)
		local str = "Rip Indra"
		StatusFarming = "Killing Rip Indra"

		local fn46 = arg2 or function()
			return true
		end

		local function fn47()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and fn46() then
				return true
			end

			return false
		end

		local ripIndraTrueForm = game.Workspace.Enemies:FindFirstChild("rip_indra True Form")

		if fn10(ripIndraTrueForm) then
			pcall(TpNearestEntrance, PlacesPosition.CenterCastle)

			while fn10(ripIndraTrueForm) and task.wait(0.1) and fn47() do
				fn35(ripIndraTrueForm, nil)
			end
		end
	end,
	["Rip Indra Hop"] = function(arg, arg2)
		local str = "Rip Indra Hop"

		local fn46 = arg2 or function()
			return true
		end

		local function fn47()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and fn46() then
				return true
			end

			return false
		end

		if not Sea3 then
			Travel("Sea3")
		end

		local function fn48()
			return not fn10(game.Workspace.Enemies:FindFirstChild("rip_indra True Form")) and fn47()
		end

		handlers2.Elite(arg or "Rip Indra Hop")
		local collectChest = handlers2["Collect Chest"]
		local str2 = "Rip Indra Hop"
		collectChest(arg or str2, fn48, true)
		handlers2.Elite(arg or "Rip Indra Hop")

		if CheckItem("God's Chalice") then
			handlers2["Open Pad"](arg or str2, fn47)
			handlers2["Spawn Rip Indra"](arg or str2, fn47)
			task.wait(1)
		end

		local ripIndra = handlers2["Rip Indra"]
		arg = arg or "Rip Indra Hop"
		ripIndra(arg, fn47)

		if fn48() then
			MainServerHop(5, "Find New Server [Rip Indra Hop]")
		end
	end,
	["Tushita Hop"] = function()
		handlers2["Tushita Hop__1"]("OneClick")
	end,
	GetFruit = function(arg, arg2)
		local str = "GetFruit"
		print("Condition:", arg)

		local fn46 = arg2 or function()
			return true
		end

		local function fn47()
			if not arg then
				if getgenv().Setting[str].Enable then
					return true
				end
			elseif getgenv().Setting[arg].Enable and fn46() then
				return true
			end

			return false
		end

		local ok2, result2 = pcall(function()
			local tbl25 = {}

			while task.wait(0.1) and fn47() and fn39() do
				local v10 = fn39()

				if v10 then
					StatusFarming = "Getting Fruit"
					Notify({ Text = "Getting Fruit", Type2 = nil, Delay = 5 })

					local function fn48()
						if not (fn47() and v10 and v10.Parent ~= nil) then
							return false
						end
						local flag2 = v10.Parent == game:GetService("Workspace") or v10.Parent.Parent and v10.Parent.Parent == game:GetService("Workspace")
						local character = localPlayer.Character and v10:IsDescendantOf(localPlayer.Character)
						local backpack = localPlayer:FindFirstChild("Backpack") and v10:IsDescendantOf(localPlayer.Backpack)

						if flag2 then
							flag2 = not (character or backpack)
						end

						return flag2
					end

					if not tbl25[v10] then
						tbl25[v10] = 0
					end

					local v11 = fn38(v10)

					if fn48() and v11 then
						if tbl25[v10] then
							tbl25[v10] = tbl25[v10] + 1
						end

						if not (Sea3 and (fn16(v11.Position) or fn16(localPlayer.Character))) then
							SSS(GetNearSpawn(v11.Position))
						end

						DoTween2(v11.CFrame, fn48, nil, { IgnoreSafeY = true })
						task.wait(2)
						StopTween()
						fn11(false)

						if tbl25[v10] >= 5 then
							v10:Destroy()
						end
					end
				end
			end
		end)

		pcall(function()
			if FruitFunc and FruitFunc.AutoStoreAll then
				FruitFunc.AutoStoreAll()
			end
		end)

		if getgenv().Setting and getgenv().Setting.OneClick and getgenv().Setting.OneClick.Enable then
			StatusFarming = "Checking Next Farm..."
		else
			StatusFarming = "Idle"
		end

		print("End Getting Fruit")

		if result2 then
			print(result2)
		end
	end,
}

local tbl25 = {}
local tbl26 = {}

for _, child in pairs(workspace._WorldOrigin.PlayerSpawns.Pirates:GetChildren()) do
	tbl25[child.Name] = child:GetChildren()[1]
	tbl26[child.Name] = 0
end

error("devirt: value <luasym.LuaFunc object at 0x00000187FD1A2950> in an expression (at 7:270)")
