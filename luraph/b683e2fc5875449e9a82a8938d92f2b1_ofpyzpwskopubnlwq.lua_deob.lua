if getgenv().__BF_LOADED then
	return getgenv().__BF_RESULT
end

Settings = {}
HttpService = game:GetService("HttpService")
FolderName = "Banana Cat Hub"
SaveFileNameGame = "-BloxFruitBNNC.json"
SaveFileName = game.Players.LocalPlayer.Name .. SaveFileNameGame

local tbl = {
	["Start Farm"] = true,
	["Farm Mastery"] = true,
	["Farm Material"] = true,
	["Auto Farm Material"] = true,
	["Auto Farm Mastery"] = true,
	["Auto Farm Mastery 600 Melees"] = true,
	["Auto Farm Mastery 600 Sword In Inventory"] = true,
	["Auto Farm Gun Mastery"] = true,
	["Auto Farm Fruit Mastery"] = true,
	["Auto Farm Sword Mastery"] = true,
	["Auto Kill All Mob"] = true,
	["Auto Kill Boss"] = true,
	["Kill Boss"] = true,
	["Kill Mob"] = true,
	["Kill All Boss"] = true,
	["Auto Attack All Mob and Boss"] = true,
	["Auto Bartilo Quest"] = true,
	["Auto Sea Event"] = true,
	["Auto Sea Event With Friend"] = true,
	["Auto Attack Leviathan"] = true,
	["Auto Find Leviathan"] = true,
	["Multi Find Leviathan"] = true,
	["Auto Start Leviathan"] = true,
	["Drive Boat To Hydra"] = true,
	["Drive Boat To Tiki"] = true,
	["Tween Boat To Frozen Dimension"] = true,
	["Auto Tween To Event Fishing Spot"] = true,
	["Auto Raid"] = true,
	["Auto Multi Raid"] = true,
	["Auto Pirate Raid"] = true,
	["Auto Factory"] = true,
	["Auto Attack Dungeon"] = true,
	["Auto Join Dungeon"] = true,
	["Attack Rip Indra"] = true,
	["Auto Summon Rip Indra"] = true,
	["Attack Soul Reaper"] = true,
	["Summon Soul Reaper"] = true,
	["Attack Dough King"] = true,
	["Summon Dough King"] = true,
	["Attack Darkbeard"] = true,
	["Summon Darkbeard"] = true,
	["Auto Buy Chip and Attack Law"] = true,
	["Auto Rip Commander"] = true,
	["Auto Celestial Soldier"] = true,
	["Auto Elite Hunter"] = true,
	["Hop Server Elite Hunter"] = true,
	["Auto Chest"] = true,
	["Auto Chest Hop"] = true,
	["Auto Open Chest"] = true,
	["Auto Fishing"] = true,
	["Teleport To Fruit"] = true,
	["Teleport To Fruit [ Hop Server ]"] = true,
	["Teleport Mirage"] = true,
	["Teleport To Island"] = true,
	["Teleport To Npc"] = true,
	["Teleport Prehistoric Island"] = true,
	["Teleport Player"] = true,
	["Teleport Frozen Dimension"] = true,
	["Teleport To Kitsune Island"] = true,
	["Auto World"] = true,
	["Auto New World"] = true,
	["Auto Third World"] = true,
	["Auto CDK"] = true,
	["Auto Trial"] = true,
	["Auto Trial Draco"] = true,
	["Fully Trial Draco"] = true,
	["Auto Saber"] = true,
	["Auto Pole"] = true,
	["Auto Yama"] = true,
	["Auto Tushita"] = true,
	["Auto Rainbow Haki"] = true,
	["Auto Get Rainbow Haki"] = true,
	["Auto UP Observation V2"] = true,
	["Auto Observation V2"] = true,
	["Auto Get Ghoul"] = true,
	["Auto Get Cyborg"] = true,
	["Auto Get Fully Cyborg"] = true,
	["Auto Pull Lever"] = true,
	["Auto Soul Guitar"] = true,
	["Auto TTK"] = true,
	["Auto Yoru Mini"] = true,
	["Auto Yoru Mini (Hop Server)"] = true,
	["Auto Finish Train Quest"] = true,
	["Auto Finish Train Draco Quest"] = true,
	["Auto Upgrade Race V2-V3"] = true,
	["Auto Upgrade Race V2-V3 Draco"] = true,
	["Auto Spawn Kitsune Island"] = true,
	["Auto Touch Pad Haki"] = true,
	["Auto Event Halloween"] = true,
	["Auto Present Event"] = true,
	["Auto Find Mirage"] = true,
	["Auto Find Prehistoric Island"] = true,
	["Auto Event Prehistoric Island"] = true,
	["Fully Event Prehistoric Island"] = true,
	["Collect Chest When Server Spawn God's Chalice or Fist of Darkness"] = true,
	["Auto Collect Bone"] = true,
	["Auto Collect Soul Ember"] = true,
	["Auto Collect Berry"] = true,
	["Auto Collect Egg"] = true,
	["Auto Collect Egg Easter"] = true,
	["Auto Slap Battle"] = true,
	["Farm Observation"] = true,
	["Farm Observation [ Hop Server ]"] = true,
	["Auto Crafting Volcanic Magnet"] = true,
}

local tbl2 = {
	["Ignore Attack Katakuri"] = true,
	["Hop Find Katakuri"] = true,
	["Auto Quest [Katakuri/Bone/Tyrant]"] = true,
	["Auto Click"] = true,
	["Auto Click Fast"] = true,
	["Bring Mob"] = true,
	["Fast Attack"] = true,
	["Use skill fast dont hold"] = true,
	["Use M1 Fruit"] = true,
	["Auto Turn On Buso"] = true,
	["Auto Turn On Ken"] = true,
	["Auto Dodge Skill Mobs"] = true,
	["Auto Rejoin Disconnect"] = true,
	["Auto rejoin Disconnect"] = true,
	["Anti Report"] = true,
	["Auto Rejoin If Kick"] = true,
	["Auto Rejoin Kick"] = true,
	["Safe Mode"] = true,
	["Auto Teleport Bypass"] = true,
	["Hold Skill"] = true,
	["Auto Mastery Fruit If Max Level"] = true,
	["Farm Mastery [Gun/Fruit] Near Mob"] = true,
	["Fast Attack Material"] = true,
	["Auto Attack Bone"] = true,
	["Hop Server Katakuri [Mirror Fractal]"] = true,
	["Auto Turn On V3"] = true,
	["Auto Turn On V4"] = true,
	["Hop Server Rip Indra [Valkyrie Helm]"] = true,
	["Auto Attack Frozen Dimension"] = true,
	["Dodge Mobs Sea"] = true,
	["Auto Equip Weapon Sea Event"] = true,
	["Auto Turn On Ken Sea Event"] = true,
	["Auto Turn On Buso Sea Event"] = true,
	["Auto Use Skill V4 Sea Event"] = true,
	["Auto Use Skill Race V3 Sea Event"] = true,
	["Auto Dodge Skill Sea Event"] = true,
	["Auto Rejoin If Admin Join"] = true,
	["Ignore Leviathan"] = true,
	["Ignore Shark"] = true,
	["Ignore Terror Shark"] = true,
	["Ignore Piranha"] = true,
	["Ignore Fish Crew Member"] = true,
	["Ignore Ghost Ship"] = true,
	["Ignore Sea Beast"] = true,
	["Ignore Ship"] = true,
	["Auto Hop Server [Low Player]"] = true,
	["White Screen"] = true,
	["Black Screen"] = true,
	["Boost Fps"] = true,
	["Show Health Mob"] = true,
	["Show Distance Mob"] = true,
	["Show Distance Player"] = true,
	["Show Health Player"] = true,
	["Webhook Setting"] = true,
	["Notify Player Join"] = true,
	["Notify Player Left"] = true,
	["Auto Send Message In Server"] = true,
	["Auto Chat When Admin Join"] = true,
	["Show Canvas"] = true,
	["Show Target Name"] = true,
	["Show Weapon Target"] = true,
	["Show Distance Target"] = true,
	["Show Target Health"] = true,
	["Show Target Box"] = true,
	["Show Target Tracer"] = true,
	["Lock Camera"] = true,
	["Show Aim Point"] = true,
	["Look At Target"] = true,
	["Auto Turn On Ken PVP"] = true,
	["Auto Turn On Buso PVP"] = true,
	["Auto Turn On V3 PVP"] = true,
	["Auto Turn On V4 PVP"] = true,
	["Auto Translate"] = true,
	["Auto Stats"] = true,
	["Ignore Defense"] = true,
	["Anti AFK"] = true,
	Noclip = true,
}

SaveSettings = function(lastCancelledSetting, arg, arg2)
	if arg2 ~= nil then
		Settings[lastCancelledSetting] = Settings[lastCancelledSetting] or {}
		Settings[lastCancelledSetting][arg] = arg2
	elseif lastCancelledSetting ~= nil then
		Settings[lastCancelledSetting] = arg
	end

	if not isfolder(FolderName) then
		makefolder(FolderName)
	end

	writefile(FolderName .. "/" .. SaveFileName, HttpService:JSONEncode(Settings))

	if arg2 == nil and arg == false and type(lastCancelledSetting) == "string" then
		if tbl[lastCancelledSetting] and not tbl2[lastCancelledSetting] then
			getgenv().LastToggleCancelTime = tick()
			getgenv().LastCancelledSetting = lastCancelledSetting
			local tweenManager = getgenv().TweenManager or TweenManager

			if tweenManager and tweenManager.CancelCurrent then
				tweenManager.CancelCurrent()
			end

			if getgenv().TweenBoat then
				pcall(function()
					getgenv().TweenBoat:Cancel()
				end)

				getgenv().TweenBoat = nil
			end

			if getgenv().TweenBoatToFrozen then
				pcall(function()
					getgenv().TweenBoatToFrozen:Cancel()
				end)

				getgenv().TweenBoatToFrozen = nil
			end

			if getgenv().TweenBoatBack then
				pcall(function()
					getgenv().TweenBoatBack:Cancel()
				end)

				getgenv().TweenBoatBack = nil
			end

			if type(CancelTweenBoat) == "function" then
				pcall(CancelTweenBoat)
			end
		end
	end
end

if getgenv().Config then
	Settings = getgenv().Config
	SaveSettings()
end

ReadSetting = function()
	local ok, result = pcall(function()
		if not isfolder(FolderName) then
			makefolder(FolderName)
		end

		return HttpService:JSONDecode(readfile(FolderName .. "/" .. SaveFileName))
	end)

	if ok then
		return result
	end
	SaveSettings()
	return ReadSetting()
end

Settings = ReadSetting()
local v = Settings
getgenv().Settings = v

PrepareMultiSelectList = function(arg, arg2, arg3)
	local tbl3 = {}

	for k in pairs(arg) do
		local v2 = arg2 and arg2[k]

		if v2 == nil then
			tbl3[k] = arg3 and true or false
		else
			tbl3[k] = v2
		end
	end

	return tbl3
end

EnsureAllTrueDefaults = function(arg, arg2)
	if type(Settings[arg]) ~= "table" then
		Settings[arg] = {}
	end

	local flag = false

	for _, v2 in ipairs(arg2) do
		if Settings[arg][v2] == nil then
			Settings[arg][v2] = true
			flag = true
		end
	end

	if flag then
		for k, v2 in pairs(Settings[arg]) do
			SaveSettings(arg, k, v2)
		end
	end
end

repeat
	wait()
until game:FindFirstChild("CoreGui")

repeat
	wait()
until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")

while true do
	wait()
	if not (game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("DataLoaded")) then
		continue
	end
	break
end

FireButton = function(selectedObject)
	selectedObject.Selectable = true
	game:GetService("GuiService").SelectedObject = selectedObject
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "Return", false, selectedObject)
	game:GetService("VirtualInputManager"):SendKeyEvent(false, "Return", false, selectedObject)

	selectedObject.Activated:Connect(function()
		game:GetService("GuiService").SelectedObject = nil
	end)
end

while true do
	wait()
	if not (game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")) then
		continue
	end
	break
end

local mainMinimal = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")

repeat
	wait()
until mainMinimal:FindFirstChild("ChooseTeam")

while true do
	task.wait()

	pcall(function()
		if Settings["Select Team"] == "Pirate" then
			FireButton(game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container.Pirates.Frame.TextButton)
			wait(1)
		else
			FireButton(game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container.Marines.Frame.TextButton)
			wait(1)
		end
	end)

	if not (game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") and game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:FindFirstChild("ChooseTeam") and not game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:WaitForChild("ChooseTeam").Visible or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main") and game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and not game:GetService("Players").LocalPlayer.PlayerGui.Main:WaitForChild("ChooseTeam").Visible) then
		continue
	end
	break
end

game:GetService("GuiService").SelectedObject = nil

while true do
	wait()
	if not (game:IsLoaded() and game.Players.LocalPlayer) then
		continue
	end
	break
end

while true do
	wait()
	if not (game:FindFirstChild("CoreGui") or game:GetService("Players").LocalPlayer) then
		continue
	end
	break
end

if not getgenv().getnilinstances then
	getgenv().getnilinstances = function()
		return {}
	end
end

if not getgenv().firetouchinterest then
	getgenv().firetouchinterest = function(arg, arg2, arg3)
		if arg and arg2 and arg3 == 0 then
			pcall(function()
				arg.CFrame = arg2.CFrame
			end)
		end
	end
end

if not getgenv().fireclickdetector then
	getgenv().fireclickdetector = function(arg)
		if arg and arg:IsA("ClickDetector") then
			pcall(function()
				arg.MaxActivationDistance = math.huge
			end)
		end
	end
end

if not getgenv().getconnections then
	getgenv().getconnections = function()
		return {}
	end
end

if not getgenv().fireproximityprompt then
	getgenv().fireproximityprompt = function(arg)
		if arg and arg:IsA("ProximityPrompt") then
			pcall(function()
				arg.HoldDuration = 0
				arg:InputHoldBegin()
				task.wait(0.05)
				arg:InputHoldEnd()
			end)
		end
	end
end

if not getgenv().setclipboard then
	getgenv().setclipboard = function(arg)
		pcall(function()
			toclipboard(arg)
		end)
	end
end

if not getgenv().sethiddenproperty then
	getgenv().sethiddenproperty = function(arg, arg2, arg3)
		pcall(function()
			arg[arg2] = arg3
		end)
	end
end

if not getgenv().getupvalues then
	getgenv().getupvalues = debug and debug.getupvalues or function()
		return {}
	end
end

if not getgenv().getupvalue then
	getgenv().getupvalue = debug and debug.getupvalue or function()
		return nil
	end
end

local v2 = require
local require_ = type(getrenv) == "function" and getrenv().require or nil
local v3 = setthreadidentity or setidentity or set_thread_identity or set_thread_context
local v4 = getthreadidentity or getidentity or get_thread_identity or get_thread_context
local obj = nil

obj = setmetatable({}, {
	__index = function()
		return obj
	end,
	__call = function()
		return nil
	end,
	__tostring = function()
		return ""
	end,
})

local function require_2(arg)
	if not arg then
		return obj
	end

	if require_ and require_ ~= v2 then
		local ok, result = pcall(require_, arg)
		if ok and result ~= nil then
			return result
		end
	end

	if v3 and v4 then
		local v5 = nil

		pcall(function()
			v5 = v4()
		end)

		pcall(function()
			v3(2)
		end)

		local ok, result = pcall(v2, arg)

		if not ok and require_ then
			ok, result = pcall(require_, arg)
		end

		if v5 then
			pcall(function()
				v3(v5)
			end)
		end

		if ok and result ~= nil then
			return result
		end
	end

	local ok, result = pcall(v2, arg)
	if ok and result ~= nil then
		return result
	end
	return obj
end

local v5 = require_2

pcall(function()
	getgenv().require = require_2
end)

local request_ = syn and syn.request or type(request) == "function" and request or type(http_request) == "function" and http_request or http and type(http.request) == "function" and http.request

if not request_ then
	request_ = fluxus and type(fluxus.request) == "function" and fluxus.request
end

request_ = request_ or type(requests) == "function" and requests
getgenv().ExploitReq = request_

if getgenv().LoadScript then
	return print("Double UI")
end

getgenv().CheckPlaceId = game.PlaceId == 100117331123089 and 100117331123089 or 7449423635
getgenv().CheckPlaceId2 = game.PlaceId == 4442272183 and 4442272183 or 79091703265657
getgenv().CheckPlaceId3 = game.PlaceId == 2753915549 and 2753915549 or 85211729168715
getgenv().LoadScript = true
local localPlayer = game.Players.LocalPlayer
local getupvalue = debug.getupvalue
getgenv().getupvalue = getupvalue
local getupvalues = debug.getupvalues
getgenv().getupvalues = getupvalues
wOrigin = game.workspace._WorldOrigin
local commF = nil

local function fn()
	if commF and commF.Parent then
		return commF
	end

	pcall(function()
		local remotes = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
		commF = remotes and remotes:FindFirstChild("CommF_")
	end)

	return commF
end

CommF = setmetatable({}, { __index = function(arg, arg2)
	local v6 = fn()

	if v6 then
		local v7 = v6[arg2]
		if type(v7) == "function" then
			return function(...)
				return v7(v6, select(2, ...))
			end
		end
		return v7
	end

	return function()
	end
end })

vu = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/teddyhubdev/diepvy/refs/heads/main/zzz"))()
Main = lib.CreateMain({ Title = "Blox Fruit", Desc = " - Blox Fruit" })
PageShop = Main.CreatePage({ Page_Name = "Shop", Page_Title = "Shop" })
local options = lib.Options
getgenv().Options = options
SectionShopMisc = PageShop.CreateSection("Misc Shop")

Remote = function(arg, arg2, arg3)
	if not arg and arg3 then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer(arg2, true)
	else
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer(arg, arg2, arg3)
	end
end

getgenv().tablefruitausea3 = {}
whitelistedfruit = {}
TableDevilFruit = {}
local v6 = next
local tbl3 = {}
local v7 = nil

pcall(function()
	local v8 = next
	local response, v9 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)
	v6 = v8
	tbl3 = response
	v7 = v9
end)

if type(tbl3) ~= "table" then
	tbl3 = {}
end

for _, v8 in v6, tbl3, v7 do
	if v8.Price >= 1000000 then
		table.insert(whitelistedfruit, string.split(v8.Name, "-")[1] .. " Fruit")
		local name = v8.Name
		local price = v8.Price
		getgenv().tablefruitausea3[name] = price
	end

	TableDevilFruit[v8.Name] = false
end

getgenv().tablefruitausea3["Dragon (East)-Dragon (East)"] = 15000000
getgenv().tablefruitausea3["Dragon (West)-Dragon (West)"] = 15000000

pcall(function()
	ItemId = v5(game.ReplicatedStorage.Economy.ItemId)
end)

CheckFruitReal = function(arg)
	local v8 = next
	local response, v9 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)

	for _, v10 in v8, response, v9 do
		if v10.Name == arg then
			return v10
		end
	end
end

SkinFruit = {}

NameWorldMaterials = {
	Ectoplasm = { [getgenv().CheckPlaceId2] = "TravelDressrosa" },
	["Magma Ore"] = { [getgenv().CheckPlaceId2] = "TravelDressrosa" },
	Leather = { [getgenv().CheckPlaceId] = "TravelZou" },
	["Scrap Metal"] = { [getgenv().CheckPlaceId] = "TravelZou" },
	["Angel Wings"] = { [getgenv().CheckPlaceId3] = "TravelMain" },
	["Fish Tail"] = { [getgenv().CheckPlaceId] = "TravelZou" },
	["Radioactive Material"] = { [getgenv().CheckPlaceId2] = "TravelDressrosa" },
	["Vampire Fang"] = { [getgenv().CheckPlaceId2] = "TravelDressrosa" },
	["Mystic Droplet"] = { [getgenv().CheckPlaceId2] = "TravelDressrosa" },
	["Mini Tusk"] = { [getgenv().CheckPlaceId] = "TravelZou" },
	Gunpowder = { [getgenv().CheckPlaceId] = "TravelZou" },
	["Demonic Wisp"] = { [getgenv().CheckPlaceId] = "TravelZou" },
	["Dragon Scale"] = { [getgenv().CheckPlaceId] = "TravelZou" },
	["Conjured Cocoa"] = { [getgenv().CheckPlaceId] = "TravelZou" },
	Bones = { [getgenv().CheckPlaceId] = "TravelZou" },
}

NameMaterials = {
	Ectoplasm = { "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer", "Cursed Captain" },
	["Magma Ore"] = { "Lava Pirate", "Magma Ninja" },
	Leather = { "Jungle Pirate", "Musketeer Pirate" },
	["Scrap Metal"] = { "Jungle Pirate" },
	["Angel Wings"] = { "God's Guard", "Shanda", "Royal Squad", "Royal Soldier" },
	["Fish Tail"] = { "Fishman Raider", "Fishman Captain" },
	["Radioactive Material"] = { "Factory Staff" },
	["Vampire Fang"] = { "Vampire" },
	["Mystic Droplet"] = { "Sea Soldier", "Water Fighter" },
	["Mini Tusk"] = { "Mythological Pirate" },
	Gunpowder = { "Pistol Billionaire" },
	["Demonic Wisp"] = { "Demonic Soul" },
	["Dragon Scale"] = { "Dragon Crew Archer", "Dragon Crew Warrior" },
	["Conjured Cocoa"] = { "Cocoa Warrior", "Chocolate Bar Battler" },
	Bones = { "Reborn Skeleton", "Demonic Soul", "Living Zombie", "Posessed Mummy" },
}

TableMaterials = {}

for k in next, NameMaterials, nil do
	table.insert(TableMaterials, k)
end

REDEEM_CODES = {
	"EASTEREXP",
	"BANEXPLOIT",
	"NOMOREHACKS",
	"WildDares",
	"BossBuild",
	"GetPranked",
	"EARN_FRUITS",
	"Sub2UncleKizaru",
	"FIGHT4FRUIT",
	"kittgaming",
	"TRIPLEABUSE",
	"Sub2CaptainMaui",
	"Sub2Fer999",
	"Enyu_is_Pro",
	"Magicbus",
	"JCWK",
	"Starcodeheo",
	"Bluxxy",
	"SUB2GAMERROBOT_EXP1",
	"Sub2NoobMaster123",
	"Sub2Daigrock",
	"Axiore",
	"TantaiGaming",
	"StrawHatMaine",
	"Sub2OfficialNoobie",
	"TheGreatAce",
	"SEATROLLIN",
	"24NOADMIN",
	"ADMIN_TROLL",
	"NEWTROLL",
	"SECRET_ADMIN",
	"staffbattle",
	"NOEXPLOIT",
	"NOOB2ADMIN",
	"CODESLIDE",
	"fruitconcepts",
}

SectionShopMisc.CreateButton({ Title = "Redeem Code" }, function()
	for _, v8 in REDEEM_CODES, nil, nil do
		game.ReplicatedStorage.Remotes.Redeem:InvokeServer(v8)
	end
end)

SectionShopMisc.CreateButton({ Title = "Teleport Old World" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "TravelMain" }))
end)

SectionShopMisc.CreateButton({ Title = "Teleport New World" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "TravelDressrosa" }))
end)

SectionShopMisc.CreateButton({ Title = "Teleport Thid Sea" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "TravelZou" }))
end)

SectionShopMisc.CreateButton({ Title = "Buy Dual Flintlock" }, function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Dual Flintlock")
end)

SectionShopMisc.CreateButton({ Title = "Reroll Race" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
end)

SectionShopMisc.CreateButton({ Title = "Reset Stats" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
end)

SectionShopMisc.CreateButton({ Title = "Buy Race Cyborg" }, function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
end)

SectionShopMisc.CreateButton({ Title = "Buy Race Ghoul" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4)
end)

SectionShopFighting = PageShop.CreateSection("Fighting Shop")
local notsave = {}
getgenv().notsave = notsave

local tbl4 = {
	BuyBlackLeg = "Dark Step Teacher",
	BuySuperhuman = "Martial Arts Master",
	BuySharkmanKarate = "Sharkman Teacher",
	DragonClaw = "Sabi",
	BuyDragonTalon = "Uzoth",
	BuyElectro = "Mad Scientist",
	BuyFishmanKarate = "Water Kung-fu Teacher",
	BuyDeathStep = "Phoeyu, the Reformed",
	BuyGodhuman = "Ancient Monk",
	BuyElectricClaw = "Previous Hero",
	BuySanguineArt = "Shafi",
}

NPCManager = nil

pcall(function()
	NPCManager = v5(game:GetService("ReplicatedStorage").NPCManager)
end)

DetectNpc = function(arg)
	local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return
	end
	local v8 = next
	local tbl5 = {}
	local npCs = workspace:FindFirstChild("NPCs")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local findFirstChild = ReplicatedStorage.FindFirstChild
	tbl5[1] = npCs

	do
		local values = table.pack(findFirstChild(ReplicatedStorage, "NPCs"))
		table.move(values, 1, values.n, 2, tbl5)
	end

	local huge = math.huge
	local v9 = nil

	for _, v10 in v8, tbl5, nil do
		if v10 then
			local v11 = next
			local children, v12 = v10:GetChildren()

			for _, v13 in v11, children, v12 do
				if v13:GetAttribute("NPCLoaded") and v13:GetAttribute("NPCReady") and v13.Name == arg and v13:FindFirstChild("HumanoidRootPart") then
					local magnitude = (humanoidRootPart.Position - v13.HumanoidRootPart.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v9 = v13
					end
				end
			end
		end
	end

	if not v9 and NPCManager and NPCManager.getNPCsByName then
		local ok, result = pcall(function()
			local v10 = NPCManager.getNPCsByName(arg)
			v10 = v10 and v10[1]
			if v10 and v10._modelState then
				return v10._modelState._instance
			end
		end)

		if ok then
			v9 = result
		end
	end

	return v9, huge
end

SectionShopFighting.CreateToggle({ Title = "Black Leg", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Black Leg"] and task.wait() do
				local ok, result = pcall(function()
					local v8 = DetectNpc(tbl4.BuyBlackLeg)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBlackLeg")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)

				if result then
					print(result)
				end
			end
		end)
	end

	notsave["Black Leg"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Fishman Karate", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Fishman Karate"] and task.wait() do
				local ok, result = pcall(function()
					local v8 = DetectNpc(tbl4.BuyFishmanKarate)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)

				if result then
					print(result)
				end
			end
		end)
	end

	notsave["Fishman Karate"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Electro", Desc = nil, Default = false }, function(electro)
	if electro then
		spawn(function()
			while notsave.Electro and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuyElectro)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectro")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave.Electro = electro

	if not electro then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Dragon Breath", Desc = nil, Default = false }, function(dragonClaw)
	if dragonClaw then
		spawn(function()
			while notsave.DragonClaw and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.DragonClaw)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave.DragonClaw = dragonClaw

	if not dragonClaw then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "SuperHuman", Desc = nil, Default = false }, function(superHuman)
	if superHuman then
		spawn(function()
			while notsave.SuperHuman and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuySuperhuman)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuySuperhuman")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave.SuperHuman = superHuman

	if not superHuman then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Death Step", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Death Step"] and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuyDeathStep)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuyDeathStep")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave["Death Step"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Sharkman Karate", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Sharkman Karate"] and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuySharkmanKarate)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuySharkmanKarate")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave["Sharkman Karate"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Electric Claw", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Electric Claw"] and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuyElectricClaw)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuyElectricClaw")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave["Electric Claw"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Dragon Talon", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Dragon Talon"] and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuyDragonTalon)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuyDragonTalon")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave["Dragon Talon"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "God Human", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["God Human"] and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuyGodhuman)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuyGodhuman")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave["God Human"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopFighting.CreateToggle({ Title = "Sanguine Art", Desc = nil, Default = false }, function(arg)
	if arg then
		spawn(function()
			while notsave["Sanguine Art"] and task.wait() do
				pcall(function()
					local v8 = DetectNpc(tbl4.BuySanguineArt)
					if not v8 or not v8:FindFirstChild("HumanoidRootPart") then
						return
					end

					if localPlayer:DistanceFromCharacter(v8.HumanoidRootPart.Position) < 8 then
						Remote("BuySanguineArt")
					end

					local cFrame = v8.HumanoidRootPart.CFrame
					getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
				end)
			end
		end)
	end

	notsave["Sanguine Art"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionShopAbilities = PageShop.CreateSection("Abilities Shop")

SectionShopAbilities.CreateButton({ Title = "Skyjump [ $10,000 Beli ]" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
end)

SectionShopAbilities.CreateButton({ Title = "Buso Haki [ $25,000 Beli ]" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
end)

SectionShopAbilities.CreateButton({ Title = "Observation haki [ $750,000 Beli ]" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
end)

SectionShopAbilities.CreateButton({ Title = "Soru [ $100,000 Beli ]" }, function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
end)

PageStatusAndServer = Main.CreatePage({ Page_Name = "Status And Server", Page_Title = "Status And Server" })
SectionStatus = PageStatusAndServer.CreateSection("Status")
TimerLabel = SectionStatus.CreateLabel({ Title = "Timer" })
TimerServerLabel = SectionStatus.CreateLabel({ Title = "Timer Server" })
NextTimerServerLabel = SectionStatus.CreateLabel({ Title = "Next Time Spawn Fist of Darkness or God's Chalice" })
StatusEliteHunter = SectionStatus.CreateLabel({ Title = "Elite" })
StatusTyrant = SectionStatus.CreateLabel({ Title = "Eyes Summon Tyrant" })
StatusKatakuri = SectionStatus.CreateLabel({ Title = "Summon Katakuri" })
Statusspy = SectionStatus.CreateLabel({ Title = "Status SPY" })
StatusMirage = SectionStatus.CreateLabel({ Title = "Mirage" })
StatusPrehistoricIsland = SectionStatus.CreateLabel({ Title = "Prehistoric Island" })
StatusFrozenDimension = SectionStatus.CreateLabel({ Title = "Frozen Dimension" })
StatusMoon = SectionStatus.CreateLabel({ Title = "Moon" })
StatusGear = SectionStatus.CreateLabel({ Title = "Acient One Status" })
SectionServer = PageStatusAndServer.CreateSection("Server")

SectionServer.CreateButton({ Title = "Open Gui Server Browser (Low Player and Ping)" }, function()
	local HttpService_ = game:GetService("HttpService")
	game:GetService("TeleportService")
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local placeId = game.PlaceId
	local request_2 = syn and syn.request or http_request or request
	if not request_2 then
		warn("[ServerBrowser] Executor does not support http_request")
		return
	end

	if game.CoreGui:FindFirstChild("SB_UI") then
		game.CoreGui.SB_UI:Destroy()
	end

	local tbl5 = { servers = {}, cursor = nil, finished = false, lastUpdate = 0, pages = 0 }

	local tbl6 = {
		CACHE_TIME = 60,
		MAX_SHOW = 50,
		PAGE_DELAY = 5,
		RETRY_MAX = 4,
		RETRY_BASE = 2,
		RETRY_JITTER = 5,
		RATE_COOLDOWN = 30,
	}

	local tbl7 = {
		BG = Color3.fromRGB(10, 11, 16),
		SURFACE = Color3.fromRGB(13, 14, 20),
		ROW = Color3.fromRGB(16, 17, 26),
		ROW_HOVER = Color3.fromRGB(20, 22, 35),
		ROW_TOP = Color3.fromRGB(10, 22, 34),
		BORDER = Color3.fromRGB(28, 31, 48),
		BORDER_HOV = Color3.fromRGB(0, 80, 120),
		CYAN = Color3.fromRGB(0, 212, 255),
		CYAN_DIM = Color3.fromRGB(0, 80, 120),
		GREEN = Color3.fromRGB(0, 204, 102),
		GREEN_GLOW = Color3.fromRGB(0, 255, 136),
		AMBER = Color3.fromRGB(255, 170, 0),
		RED = Color3.fromRGB(255, 68, 85),
		TEXT_PRI = Color3.fromRGB(232, 234, 240),
		TEXT_SEC = Color3.fromRGB(80, 90, 120),
		TEXT_DIM = Color3.fromRGB(45, 52, 82),
	}

	local function fn2(arg, arg2, parent)
		local instance = Instance.new(arg)
		local v8 = pairs
		arg2 = arg2 or {}

		for k, v9 in v8(arg2) do
			instance[k] = v9
		end

		if parent then
			instance.Parent = parent
		end

		return instance
	end

	local function fn3(arg, arg2)
		return fn2("UICorner", { CornerRadius = UDim.new(0, arg) }, arg2)
	end

	local function fn4(arg, arg2, arg3, arg4)
		return fn2("UIStroke", { Thickness = arg, Color = arg2, Transparency = arg3 or 0 }, arg4)
	end

	local function fn5(arg, arg2, arg3, arg4, arg5)
		TweenService:Create(arg, TweenInfo.new(arg3 or 0.15, arg4 or Enum.EasingStyle.Quad, arg5 or Enum.EasingDirection.Out), arg2):Play()
	end

	local function fn6(arg, arg2, arg3)
		arg.MouseEnter:Connect(function()
			fn5(arg, { BackgroundColor3 = arg3 })
		end)

		arg.MouseLeave:Connect(function()
			fn5(arg, { BackgroundColor3 = arg2 })
		end)
	end

	local function fn7()
		local retryJitter = tbl6.RETRY_JITTER
		return math.random() * retryJitter
	end

	local ScreenGui = fn2("ScreenGui", {
		Name = "SB_UI",
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		IgnoreGuiInset = true,
	}, game.CoreGui)

	local Frame = fn2("Frame", {
		Name = "Window",
		Size = UDim2.new(0, 580, 0, 500),
		Position = UDim2.new(0.5, -290, 0.5, -250),
		BackgroundColor3 = tbl7.SURFACE,
		BorderSizePixel = 0,
		ClipsDescendants = true,
	}, ScreenGui)

	fn3(4, Frame)
	fn4(1, tbl7.BORDER, 0, Frame)
	local flag = nil
	local position = nil
	local position2 = nil

	Frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			flag = true
			position = input.Position
			position2 = Frame.Position
		end
	end)

	Frame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			flag = false
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if flag and input.UserInputType == Enum.UserInputType.MouseMovement then
			local n = input.Position - position
			Frame.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X, position2.Y.Scale, position2.Y.Offset + n.Y)
		end
	end)

	local Frame2 = fn2("Frame", { Size = UDim2.new(1, 0, 0, 52), BackgroundColor3 = tbl7.BG, BorderSizePixel = 0 }, Frame)

	fn2("TextLabel", {
		Size = UDim2.new(0, 300, 0, 18),
		Position = UDim2.new(0, 18, 0, 9),
		BackgroundTransparency = 1,
		Text = "SERVER BROWSER",
		TextColor3 = tbl7.TEXT_PRI,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, Frame2)

	fn2("TextLabel", {
		Size = UDim2.new(0, 360, 0, 14),
		Position = UDim2.new(0, 18, 0, 30),
		BackgroundTransparency = 1,
		Text = "CACHE PAGE · LOAD MORE · LOWEST PLAYER / PING",
		TextColor3 = tbl7.TEXT_DIM,
		Font = Enum.Font.Gotham,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, Frame2)

	local TextButton = fn2("TextButton", {
		Size = UDim2.new(0, 28, 0, 28),
		Position = UDim2.new(1, -42, 0, 12),
		BackgroundColor3 = Color3.fromRGB(26, 13, 13),
		BorderSizePixel = 0,
		Text = "X",
		TextColor3 = tbl7.RED,
		Font = Enum.Font.GothamBold,
		TextSize = 11,
	}, Frame2)

	fn3(3, TextButton)
	local color = Color3.fromRGB
	fn6(TextButton, Color3.fromRGB(26, 13, 13), color(60, 20, 20))

	TextButton.MouseButton1Click:Connect(function()
		ScreenGui:Destroy()
	end)

	local Frame3 = fn2("Frame", {
		Size = UDim2.new(1, 0, 0, 42),
		Position = UDim2.new(0, 0, 0, 52),
		BackgroundColor3 = Color3.fromRGB(11, 12, 17),
		BorderSizePixel = 0,
	}, Frame)

	local Frame4 = fn2("Frame", {
		Size = UDim2.new(0, 6, 0, 6),
		Position = UDim2.new(0, 14, 0.5, -3),
		BackgroundColor3 = tbl7.TEXT_DIM,
		BorderSizePixel = 0,
	}, Frame3)

	fn3(99, Frame4)

	local TextLabel = fn2("TextLabel", {
		Size = UDim2.new(1, -300, 1, 0),
		Position = UDim2.new(0, 26, 0, 0),
		BackgroundTransparency = 1,
		Text = "READY",
		TextColor3 = tbl7.TEXT_SEC,
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, Frame3)

	local TextButton2 = fn2("TextButton", {
		Size = UDim2.new(0, 82, 0, 26),
		Position = UDim2.new(1, -270, 0.5, -13),
		BackgroundColor3 = Color3.fromRGB(14, 22, 40),
		BorderSizePixel = 0,
		Text = "REFRESH",
		TextColor3 = Color3.fromRGB(100, 140, 200),
		Font = Enum.Font.GothamBold,
		TextSize = 10,
	}, Frame3)

	fn3(3, TextButton2)
	local color2 = Color3.fromRGB
	fn6(TextButton2, Color3.fromRGB(14, 22, 40), color2(10, 30, 55))

	local TextButton3 = fn2("TextButton", {
		Size = UDim2.new(0, 82, 0, 26),
		Position = UDim2.new(1, -182, 0.5, -13),
		BackgroundColor3 = Color3.fromRGB(16, 32, 24),
		BorderSizePixel = 0,
		Text = "LOAD MORE",
		TextColor3 = tbl7.GREEN,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
	}, Frame3)

	fn3(3, TextButton3)
	local color3 = Color3.fromRGB
	fn6(TextButton3, Color3.fromRGB(16, 32, 24), color3(10, 48, 28))

	local TextButton4 = fn2("TextButton", {
		Size = UDim2.new(0, 82, 0, 26),
		Position = UDim2.new(1, -94, 0.5, -13),
		BackgroundColor3 = Color3.fromRGB(38, 18, 18),
		BorderSizePixel = 0,
		Text = "RESET",
		TextColor3 = tbl7.RED,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
	}, Frame3)

	fn3(3, TextButton4)
	local color4 = Color3.fromRGB
	fn6(TextButton4, Color3.fromRGB(38, 18, 18), color4(60, 20, 20))

	local Frame5 = fn2("Frame", {
		Size = UDim2.new(1, 0, 0, 24),
		Position = UDim2.new(0, 0, 0, 94),
		BackgroundColor3 = Color3.fromRGB(11, 12, 17),
		BorderSizePixel = 0,
	}, Frame)

	local function fn8(arg, arg2, arg3)
		fn2("TextLabel", {
			Size = UDim2.new(0, arg3, 1, 0),
			Position = UDim2.new(0, arg2, 0, 0),
			BackgroundTransparency = 1,
			Text = arg,
			TextColor3 = tbl7.TEXT_DIM,
			Font = Enum.Font.GothamBold,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame5)
	end

	fn8("#", 14, 28)
	fn8("JOB ID", 42, 170)
	fn8("PLAYERS", 220, 80)
	fn8("PING", 310, 60)

	local ScrollingFrame = fn2("ScrollingFrame", {
		Size = UDim2.new(1, -8, 1, -172),
		Position = UDim2.new(0, 4, 0, 118),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = tbl7.CYAN_DIM,
		CanvasSize = UDim2.new(0, 0, 0, 0),
	}, Frame)

	local UIListLayout = fn2("UIListLayout", { Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder }, ScrollingFrame)

	fn2("UIPadding", {
		PaddingTop = UDim.new(0, 6),
		PaddingLeft = UDim.new(0, 4),
		PaddingRight = UDim.new(0, 4),
		PaddingBottom = UDim.new(0, 6),
	}, ScrollingFrame)

	local Frame6 = fn2("Frame", {
		Size = UDim2.new(1, 0, 0, 30),
		Position = UDim2.new(0, 0, 1, -30),
		BackgroundColor3 = Color3.fromRGB(10, 11, 15),
		BorderSizePixel = 0,
	}, Frame)

	local TextLabel2 = fn2("TextLabel", {
		Size = UDim2.new(0.5, 0, 1, 0),
		Position = UDim2.new(0, 14, 0, 0),
		BackgroundTransparency = 1,
		Text = "PLACE · " .. tostring(placeId),
		TextColor3 = tbl7.TEXT_DIM,
		Font = Enum.Font.Gotham,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, Frame6)

	local TextLabel3 = fn2("TextLabel", {
		Size = UDim2.new(0.5, -14, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		BackgroundTransparency = 1,
		Text = "SHOWING 0 / 0",
		TextColor3 = tbl7.TEXT_DIM,
		Font = Enum.Font.Gotham,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Right,
	}, Frame6)

	local Frame7 = fn2("Frame", {
		Size = UDim2.new(1, 0, 1, -52),
		Position = UDim2.new(0, 0, 0, 52),
		BackgroundColor3 = tbl7.SURFACE,
		BackgroundTransparency = 0.05,
		ZIndex = 20,
		Visible = false,
	}, Frame)

	local TextLabel4 = fn2("TextLabel", {
		Size = UDim2.new(1, -20, 0, 36),
		Position = UDim2.new(0, 10, 0.5, 10),
		BackgroundTransparency = 1,
		Text = "SCANNING SERVERS...",
		TextColor3 = tbl7.CYAN,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextWrapped = true,
		ZIndex = 21,
	}, Frame7)

	local Frame8 = fn2("Frame", {
		Size = UDim2.new(1, -8, 0, 28),
		Position = UDim2.new(0, 4, 0, 118),
		BackgroundColor3 = Color3.fromRGB(38, 24, 6),
		BorderSizePixel = 0,
		ZIndex = 15,
		Visible = false,
	}, Frame)

	fn3(3, Frame8)
	fn4(1, tbl7.AMBER, 0.4, Frame8)

	local TextLabel5 = fn2("TextLabel", {
		Size = UDim2.new(1, -12, 1, 0),
		Position = UDim2.new(0, 6, 0, 0),
		BackgroundTransparency = 1,
		Text = "⏳ 429 RATE LIMITED — WAITING...",
		TextColor3 = tbl7.AMBER,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Center,
		ZIndex = 16,
	}, Frame8)

	local function fn9(text)
		TextLabel5.Text = text
		Frame8.Visible = true
		ScrollingFrame.Position = UDim2.new(0, 4, 0, 150)
		ScrollingFrame.Size = UDim2.new(1, -8, 1, -204)
	end

	local function fn10()
		Frame8.Visible = false
		ScrollingFrame.Position = UDim2.new(0, 4, 0, 118)
		ScrollingFrame.Size = UDim2.new(1, -8, 1, -172)
	end

	local Frame9 = fn2("Frame", {
		Size = UDim2.new(0, 360, 0, 36),
		Position = UDim2.new(0.5, -180, 1, -50),
		BackgroundColor3 = Color3.fromRGB(10, 26, 40),
		BorderSizePixel = 0,
		ZIndex = 30,
		Visible = false,
	}, Frame)

	fn3(3, Frame9)

	local TextLabel6 = fn2("TextLabel", {
		Size = UDim2.new(1, -12, 1, 0),
		Position = UDim2.new(0, 6, 0, 0),
		BackgroundTransparency = 1,
		Text = "READY",
		TextColor3 = tbl7.CYAN,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextWrapped = true,
		ZIndex = 31,
	}, Frame9)

	local thread = nil

	local function fn11(text, textColor3)
		if thread then
			task.cancel(thread)
		end

		TextLabel6.Text = text
		TextLabel6.TextColor3 = textColor3 or tbl7.CYAN
		Frame9.Visible = true

		thread = task.delay(3.5, function()
			Frame9.Visible = false
		end)
	end

	local function fn12(text, backgroundColor3)
		TextLabel.Text = text
		Frame4.BackgroundColor3 = backgroundColor3 or tbl7.TEXT_DIM
	end

	local function fn13(arg)
		return ({
			RATE_LIMIT = "429 RATE LIMITED — TOO MANY REQUESTS",
			FORBIDDEN = "403 FORBIDDEN — ACCESS BLOCKED",
			UNAUTHORIZED = "401 UNAUTHORIZED",
			SERVER_ERROR = "5xx ROBLOX SERVER ERROR",
			NETWORK_ERROR = "NETWORK / EXECUTOR ERROR",
			INVALID_JSON = "INVALID JSON RESPONSE",
			EMPTY_BODY = "EMPTY RESPONSE BODY",
		})[arg] or "REQUEST FAILED: " .. tostring(arg)
	end

	local function fn14(arg, arg2)
		local n = 0

		for i = 0, tbl6.RETRY_MAX do
			local ok, result = pcall(function()
				return request_2({
					Url = arg,
					Method = "GET",
					Headers = { ["User-Agent"] = "Mozilla/5.0", Accept = "application/json" },
				})
			end)

			if not ok or not result then
				return nil, "NETWORK_ERROR"
			end
			local statusCode = result.StatusCode or result.Status or 0

			if statusCode == 429 then
				n += 1
				if tbl6.RETRY_MAX <= i then
					return nil, "RATE_LIMIT"
				end
				local n2

				if n >= 2 then
					n2 = tbl6.RATE_COOLDOWN + fn7()
				else
					n2 = math.pow(tbl6.RETRY_BASE, i + 1) + fn7()
				end

				local text = string.format("⏳ 429 RATE LIMITED — WAITING %.0fs THEN RETRYING (%d/%d)", n2, i + 1, tbl6.RETRY_MAX)

				if arg2 then
					fn9(text)
					Frame7.Visible = false
				else
					Frame7.Visible = true
					TextLabel4.Text = text
				end

				local amber = tbl7.AMBER
				fn12("RATE LIMITED — WAITING " .. math.floor(n2) .. "s", amber)
				local amber2 = tbl7.AMBER
				fn11(string.format("⏳ 429 — RETRYING IN %.0fs", n2), amber2)
				warn(string.format("[ServerBrowser] 429 — waiting %.1fs (attempt %d/%d)", n2, i + 1, tbl6.RETRY_MAX))
				local n3 = math.floor(n2)

				task.spawn(function()
					while n3 > 0 do
						task.wait(1)
						n3 -= 1
						local text2 = string.format("⏳ 429 RATE LIMITED — %.0fs REMAINING (%d/%d)", n3, i + 1, tbl6.RETRY_MAX)

						if arg2 then
							if Frame8.Visible then
								TextLabel5.Text = text2
							end
						elseif Frame7.Visible then
							TextLabel4.Text = text2
						end
					end
				end)

				task.wait(n2)

				if arg2 then
					fn10()
				end

				continue
			end

			if statusCode == 403 then
				return nil, "FORBIDDEN"
			end

			if statusCode == 401 then
				return nil, "UNAUTHORIZED"
			end

			if statusCode >= 500 then
				return nil, "SERVER_ERROR"
			end

			if statusCode ~= 200 and statusCode ~= 0 then
				return nil, "HTTP_" .. tostring(statusCode)
			end

			if not result.Body or result.Body == "" then
				return nil, "EMPTY_BODY"
			end
			local ok2, result2 = pcall(HttpService_.JSONDecode, HttpService_, result.Body)
			if not ok2 or not result2 then
				return nil, "INVALID_JSON"
			end
			return result2, nil
		end

		return nil, "RATE_LIMIT"
	end

	local function fn15()
		for _, child in ipairs(ScrollingFrame:GetChildren()) do
			if child:IsA("Frame") then
				child:Destroy()
			end
		end
	end

	local function fn16()
		table.sort(tbl5.servers, function(arg, arg2)
			local playing = arg.playing or 999
			local playing2 = arg2.playing or 999
			if playing ~= playing2 then
				return playing < playing2
			end
			return (arg.ping or 999) < (arg2.ping or 999)
		end)
	end

	local function fn17(arg)
		if arg < 100 then
			return tbl7.GREEN_GLOW
		end

		if arg < 200 then
			return tbl7.AMBER
		end
		return tbl7.RED
	end

	local function fn18(arg)
		if arg > 0.8 then
			return tbl7.RED
		end

		if arg > 0.5 then
			return tbl7.AMBER
		end
		return tbl7.CYAN
	end

	local function fn19(arg, arg2)
		local flag2 = arg2 == 1
		local rowTop = flag2 and tbl7.ROW_TOP or tbl7.ROW
		local Frame10 = fn2("Frame", { Size = UDim2.new(1, 0, 0, 48), BackgroundColor3 = rowTop, BorderSizePixel = 0, LayoutOrder = arg2 }, ScrollingFrame)
		fn3(3, Frame10)
		local v8 = fn4(1, flag2 and tbl7.CYAN_DIM or tbl7.BORDER, 0, Frame10)

		Frame10.MouseEnter:Connect(function()
			fn5(Frame10, { BackgroundColor3 = tbl7.ROW_HOVER })
			fn5(v8, { Color = tbl7.BORDER_HOV })
		end)

		Frame10.MouseLeave:Connect(function()
			fn5(Frame10, { BackgroundColor3 = rowTop })
			fn5(v8, { Color = flag2 and tbl7.CYAN_DIM or tbl7.BORDER })
		end)

		fn2("TextLabel", {
			Size = UDim2.new(0, 28, 1, 0),
			Position = UDim2.new(0, 10, 0, 0),
			BackgroundTransparency = 1,
			Text = string.format("%02d", arg2),
			TextColor3 = flag2 and tbl7.CYAN or tbl7.TEXT_DIM,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame10)

		fn2("TextLabel", {
			Size = UDim2.new(0, 160, 0, 14),
			Position = UDim2.new(0, 44, 0, 8),
			BackgroundTransparency = 1,
			Text = tostring(arg.id):sub(1, 18) .. "...",
			TextColor3 = Color3.fromRGB(60, 75, 110),
			Font = Enum.Font.Code,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame10)

		local playing = arg.playing or 0
		local maxPlayers = arg.maxPlayers or 20
		local n = playing / math.max(maxPlayers, 1)

		fn2("TextLabel", {
			Size = UDim2.new(0, 80, 0, 14),
			Position = UDim2.new(0, 44, 0, 26),
			BackgroundTransparency = 1,
			Text = playing .. "/" .. maxPlayers .. " players",
			TextColor3 = tbl7.TEXT_DIM,
			Font = Enum.Font.Gotham,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame10)

		fn2("TextLabel", {
			Size = UDim2.new(0, 50, 0, 20),
			Position = UDim2.new(0, 210, 0, 4),
			BackgroundTransparency = 1,
			Text = tostring(playing),
			TextColor3 = tbl7.TEXT_PRI,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame10)

		local Frame11 = fn2("Frame", {
			Size = UDim2.new(0, 50, 0, 2),
			Position = UDim2.new(0, 210, 0, 28),
			BackgroundColor3 = Color3.fromRGB(22, 24, 36),
			BorderSizePixel = 0,
		}, Frame10)

		fn3(1, Frame11)

		fn3(1, fn2("Frame", {
			Size = UDim2.new(math.clamp(n, 0, 1), 0, 1, 0),
			BackgroundColor3 = fn18(n),
			BorderSizePixel = 0,
		}, Frame11))

		local ping = arg.ping or 999

		fn2("TextLabel", {
			Size = UDim2.new(0, 55, 1, 0),
			Position = UDim2.new(0, 278, 0, 0),
			BackgroundTransparency = 1,
			Text = ping .. "ms",
			TextColor3 = fn17(ping),
			Font = Enum.Font.GothamBold,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, Frame10)

		local TextButton5 = fn2("TextButton", {
			Size = UDim2.new(0, 72, 0, 28),
			Position = UDim2.new(1, -82, 0.5, -14),
			BackgroundColor3 = Color3.fromRGB(10, 30, 18),
			BorderSizePixel = 0,
			Text = "JOIN",
			TextColor3 = tbl7.GREEN,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
		}, Frame10)

		fn3(3, TextButton5)
		local color5 = Color3.fromRGB
		fn6(TextButton5, Color3.fromRGB(10, 30, 18), color5(8, 44, 24))

		TextButton5.MouseButton1Click:Connect(function()
			fn11("TELEPORTING TO " .. tostring(arg.id):sub(1, 16) .. "...", tbl7.CYAN)

			local ok, result = pcall(function()
				game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", arg.id)
			end)

			if not ok then
				local red = tbl7.RED
				fn11("TELEPORT FAILED: " .. tostring(result), red)
				fn12("TELEPORT FAILED", tbl7.RED)
			end
		end)
	end

	local function fn20()
		fn15()
		fn16()
		local n = #tbl5.servers
		local n2 = math.min(n, tbl6.MAX_SHOW)

		for i = 1, n2 do
			fn19(tbl5.servers[i], i)
		end

		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 16)
		TextLabel3.Text = "SHOWING " .. n2 .. " / " .. n
		TextLabel2.Text = "PLACE · " .. tostring(placeId) .. " · PAGE " .. tostring(tbl5.pages)

		if tbl5.finished then
			fn12("CACHE DONE — " .. n .. " SERVERS", tbl7.GREEN_GLOW)
		else
			fn12("CACHE SAVED — " .. n .. " SERVERS — PAGE " .. tbl5.pages, tbl7.CYAN)
		end
	end

	local function fn21()
		tbl5.servers = {}
		tbl5.cursor = nil
		tbl5.finished = false
		tbl5.lastUpdate = 0
		tbl5.pages = 0
		fn10()
		fn15()
		TextLabel3.Text = "SHOWING 0 / 0"
		TextLabel2.Text = "PLACE · " .. tostring(placeId)
		fn12("CACHE RESET", tbl7.RED)
		fn11("CACHE RESET", tbl7.RED)
	end

	local flag2 = false

	local function fn22(arg, arg2)
		if flag2 then
			return
		end
		flag2 = true

		if arg2 then
			fn21()
		end

		TextButton2.Active = false
		TextButton3.Active = false
		TextButton4.Active = false
		TextButton2.Text = "LOADING"
		TextButton3.Text = "WAIT"
		local n = 0
		local v8

		while true do
			v8 = nil

			if tbl5.finished then
				break
			else
				n += 1
				tbl5.pages = tbl5.pages + 1
				arg2 = #tbl5.servers > 0

				if arg2 then
					Frame7.Visible = false
				else
					Frame7.Visible = true
					TextLabel4.Text = "SCANNING PAGE " .. tbl5.pages .. "…"
				end

				fn12("PAGE " .. tbl5.pages .. " — " .. #tbl5.servers .. " FOUND", tbl7.AMBER)
				local str = ("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100"):format(placeId)
				local v9 = fn14
				local str2

				if tbl5.cursor then
					str2 = str .. "&cursor=" .. HttpService_:UrlEncode(tbl5.cursor)
				else
					str2 = str
				end

				local v10, v11 = v9(str2, arg2)

				if not v10 then
					local v12 = fn13(v11)

					if not arg2 then
						TextLabel4.Text = v12
					end

					fn12(v12, tbl7.RED)
					fn11(v12, tbl7.RED)
					warn("[ServerBrowser] " .. v12 .. " | Page: " .. tbl5.pages)
					v8 = v11
					break
				end

				local v12 = ipairs
				local data = v10.data or {}

				for _, v13 in v12(data) do
					if v13.id and v13.id ~= game.JobId then
						local playing = v13.playing or 0
						local maxPlayers = v13.maxPlayers or 0

						if maxPlayers == 0 or playing < maxPlayers then
							table.insert(tbl5.servers, v13)
						end
					end
				end

				tbl5.cursor = v10.nextPageCursor
				tbl5.lastUpdate = tick()

				if not tbl5.cursor or tbl5.cursor == "" then
					tbl5.finished = true
					tbl5.cursor = nil
				end

				if not tbl5.finished and n < arg then
					local text = string.format("PAGE %d DONE — WAITING %.1fs…", tbl5.pages, tbl6.PAGE_DELAY)

					if #tbl5.servers > 0 then
						fn20()
						fn9(text)
					else
						TextLabel4.Text = text
					end

					fn12(text, tbl7.CYAN)
					task.wait(tbl6.PAGE_DELAY)
					fn10()
				end

				local v13 = nil
				if n >= arg then
					v8 = v13
					break
				end
			end
		end

		Frame7.Visible = false
		fn10()
		fn20()

		if v8 then
			if #tbl5.servers > 0 then
				local str = " — SHOWING " .. #tbl5.servers .. " CACHED"
				fn11(fn13(v8) .. str, tbl7.AMBER)
				local str2 = " | PARTIAL " .. #tbl5.servers
				fn12(fn13(v8) .. str2, tbl7.AMBER)
			else
				local red = tbl7.RED
				fn12(fn13(v8), red)
			end
		elseif tbl5.finished then
			fn12("FULL SCAN DONE — " .. #tbl5.servers .. " SERVERS", tbl7.GREEN_GLOW)
			fn11("SCAN COMPLETE — " .. #tbl5.servers .. " SERVERS", tbl7.GREEN_GLOW)
		else
			fn12("PAGE SAVED — CLICK LOAD MORE TO CONTINUE", tbl7.CYAN)
		end

		TextButton2.Active = true
		TextButton3.Active = true
		TextButton4.Active = true
		TextButton2.Text = "REFRESH"
		TextButton3.Text = "LOAD MORE"
		flag2 = false
	end

	TextButton2.MouseButton1Click:Connect(function()
		task.spawn(function()
			local lastUpdate = tbl5.lastUpdate
			local n = tick() - lastUpdate

			if #tbl5.servers > 0 and n <= tbl6.CACHE_TIME then
				fn20()
				local cyan = tbl7.CYAN
				fn11("CACHE STILL FRESH (" .. math.floor(tbl6.CACHE_TIME - n) .. "s) — RESET TO RELOAD", cyan)
				return
			end

			fn22(2, true)
		end)
	end)

	TextButton3.MouseButton1Click:Connect(function()
		task.spawn(function()
			if tbl5.finished then
				fn11("ALL PAGES LOADED — NO MORE SERVERS", tbl7.AMBER)
				fn12("NO MORE PAGES", tbl7.AMBER)
				return
			end

			fn22(2, false)
		end)
	end)

	TextButton4.MouseButton1Click:Connect(function()
		if not flag2 then
			fn21()
		end
	end)

	task.spawn(function()
		fn22(2, true)
	end)
end)

StatusPlaceId = SectionServer.CreateLabel({ Title = "PlaceId: " .. game.PlaceId })
local str = ""

SectionServer.CreateBox({
	Title = "Input JobId Normal And JobId BananaCat",
	Placeholder = "Type here",
	Number = false,
	Default = nil,
}, function(arg)
	str = arg
end)

SectionServer.CreateToggle({ Title = "Spam Join", Desc = nil, Default = Settings["Spam Join"] or false }, function(arg)
	SaveSettings("Spam Join", arg)
end)

if not (bit32 or bit) then
	local tbl5 = { bxor = function(arg, arg2)
		local n = 0
		local n2 = 1

		while arg > 0 or arg2 > 0 do
			local n3 = arg % 2
			local n4 = arg2 % 2
			arg = (arg - n3) / 2
			arg2 = (arg2 - n4) / 2

			if n3 ~= n4 then
				n += n2
			end

			n2 *= 2
		end

		return n
	end }
end

local chunk = loadstring([[local function EQ(a, r)
 local b, c = nil, nil
 local success = pcall(function()
 b, c = a, r
 end)

 if not success or b == nil or c == nil then
 return false
 end

 if type(b) ~= type(c) then
 return false
 end

 local d = { c, b, c, b }
 if d[1] ~= d[1] then
 return false
 end
 if d[1] ~= d[2] then
 return false
 end
 if d[2] ~= d[1] then
 return false
 end

 local e, f, g = 1 and 2, 2 and nil, true == not not true

 if type(b) == "number" and type(c) == "number" then
 if e and g and not f then
 return b == c
 end
 elseif type(b) == "string" and type(c) == "string" then
 if e and g then
 return b == c
 end
 else
 return b == c
 end

 return false
end

local function _vrf()
 local x = os.time and os.time() or 12345
 if tostring(print):find("function") == nil then
 while true do
 end
 end
 if tostring(type):find("function") == nil then
 while true do
 end
 end
 if (x * x + x) % 2 ~= 0 then
 while true do
 end
 end
 if not EQ(x, x) then
 while true do
 end
 end
end

local function _gct()
 _vrf()
 local s, p1, p2, p3 = 17, {}, {}, {}
 local _m = { [17] = 23, [23] = 41, [41] = 999 }

 while true do
 if s == 17 then
 for i = 0, 255 do
 local c = ("%c"):format(i)
 p1[i] = c
 p2[c] = i
 end
 s = _m[17]
 elseif s == 23 then
 for i = 0, 255 do
 p3[i] = p1[i]
 end
 s = _m[23]
 elseif s == 41 then
 if EQ(s, 41) then
 return p3, p2
 else
 while true do
 end
 end
 else
 while true do
 end
 end
 end
end

local _CT, _BT = _gct()

local _sp = (function()
 local _xk = { 0x61, 0x9A, 0x43, 0xF1, 0x27, 0xBC, 0x58, 0x0D, 0xE7, 0x33 }

 local _enc = {
 { 0x9A, 0x71, 0x24, 0xEF, 0x38, 0x4C },
 { 0x7D, 0xA1, 0x55, 0x92, 0xB7, 0x44, 0x18 },
 { 0x2F, 0xC3, 0x89, 0x11, 0xD4, 0x67 },
 { 0xA8, 0x3E, 0xD1, 0x5B },
 { 0x44, 0xE2, 0x71, 0x9C, 0x0A, 0xD8, 0x61, 0xF4 },
 { 0x1E, 0x7B, 0xC0, 0x35, 0x92, 0xAF, 0x4D, 0x28 },
 { 0xF3, 0x60, 0x1A, 0x87, 0xCE, 0x39, 0x54 },
 { 0x88, 0x2D, 0xB6, 0x41, 0xFA, 0x73, 0x19, 0xCC, 0x05 },
 }

 local function _dec(data, seed)
 local result = ""
 local state = seed or 0x53

 for i = 1, #data do
 local byte = data[i]
 local keyIdx = ((i - 1) % #_xk) + 1
 local key = _xk[keyIdx]

 byte = bit32.bxor(byte, key)
 byte = (byte - state + 256) % 256
 byte = bit32.bxor(byte, (i * 23) % 256)
 state = (state + i + key + 17) % 256

 result = result .. _CT[byte]
 end

 return result
 end

 local _d = {}
 for i = 1, #_enc do
 _d[i] = _dec(_enc[i], (i * 0x29) % 256)
 end

 return _d
end)()

local function _gb(str, pos)
 _vrf()
 local c, s = 0, 5
 local _states = { [5] = 7, [7] = 11, [11] = 999 }

 while true do
 if s == 5 then
 for ch in str:gmatch(".") do
 c = c + 1
 if c == pos then
 s = _states[5]
 break
 end
 end
 if s ~= 7 then
 s = _states[11]
 end
 elseif s == 7 then
 local ch = ""
 local cnt = 0
 for c2 in str:gmatch(".") do
 cnt = cnt + 1
 if cnt == pos then
 ch = c2
 break
 end
 end
 if EQ(_BT[ch] or 0, _BT[ch] or 0) then
 return _BT[ch] or 0
 end
 elseif s == 11 then
 return 0
 end
 end
end

local function _tc(num)
 if EQ(num, num) then
 return _CT[num % 256]
 end
 while true do
 end
end

local function _js(tbl)
 local r, s = "", 3
 local _sm = { [3] = 8, [8] = 999 }

 while true do
 if s == 3 then
 for i = 1, #tbl do
 r = r .. tbl[i]
 end
 s = _sm[3]
 elseif s == 8 then
 if EQ(r, r) then
 return r
 end
 end
 end
end

local function _gl(str)
 _vrf()
 local c = 0
 for _ in str:gmatch(".") do
 c = c + 1
 end
 if EQ(c, c) then
 return c
 end
 return 0
end

local function _rp(str, pat, rep)
 _vrf()
 local r, pl, m = "", _gl(pat), true

 for i = 1, pl do
 if _gb(str, i) ~= _gb(pat, i) then
 m = false
 break
 end
 end

 if m and EQ(m, true) then
 r = rep
 for i = pl + 1, _gl(str) do
 local ch = ""
 local cnt = 0
 for c in str:gmatch(".") do
 cnt = cnt + 1
 if cnt == i then
 ch = c
 break
 end
 end
 r = r .. ch
 end
 return r
 end

 return str
end

local function _cs(...)
 local args, r = { ... }, ""
 for i = 1, #args do
 r = r .. args[i]
 end
 if EQ(r, r) then
 return r
 end
 return ""
end

local function _gks(key, len)
 _vrf()
 local ks, kl, st = {}, _gl(key), 0

 for i = 1, len do
 local kp = ((i - 1) % kl) + 1
 local kb = _gb(key, kp)
 st = (st + kb + i + ((i * 11) % 256)) % 256
 ks[i] = (kb + st + (i * 17) + ((kb * 3) % 256)) % 256
 end

 if EQ(#ks, len) then
 return ks
 end
 return {}
end

local function _mix_key_material(key, salt)
 _vrf()
 local rev = key:reverse()
 local out = {}
 local src = _cs(key, salt, rev, _tc(_gl(key) % 256), _tc(_gl(salt) % 256))

 for i = 1, _gl(src) do
 local b = _gb(src, i)
 b = bit32.bxor(b, (i * 29) % 256)
 b = (b + ((i * 7) % 256)) % 256
 out[i] = _tc(b)
 end

 return _js(out)
end

local function _derive_stream(key, salt, len)
 _vrf()
 local km = _mix_key_material(key, salt)
 return _gks(km, len)
end

local function _randb()
 return math.random(0, 255)
end

local function _gensalt128()
 _vrf()
 local t = {}
 for i = 1, 16 do
 t[i] = _tc(_randb())
 end
 return _js(t)
end

local function _secure_round_enc(key, data, salt, round_idx)
 _vrf()
 local dl = _gl(data)
 local ks = _derive_stream(_cs(key, _tc(48 + round_idx)), salt, dl)
 local r = {}
 local st = (_gl(key) + _gl(salt) + round_idx * 37 + 91) % 256

 for i = 1, dl do
 local db = _gb(data, i)
 local sb = _gb(salt, ((i + round_idx - 2) % 16) + 1)
 local kk = ks[i]

 st = (st + kk + sb + i + round_idx) % 256

 local enc = db
 enc = bit32.bxor(enc, kk)
 enc = (enc + st + sb) % 256
 enc = bit32.bxor(enc, ((i * 31) + sb + round_idx * 9) % 256)
 enc = (enc + ((kk * 5) % 256)) % 256

 r[i] = _tc(enc)
 end

 return _js(r)
end

local function _secure_round_dec(key, data, salt, round_idx)
 _vrf()
 local dl = _gl(data)
 local ks = _derive_stream(_cs(key, _tc(48 + round_idx)), salt, dl)
 local r = {}
 local st = (_gl(key) + _gl(salt) + round_idx * 37 + 91) % 256

 for i = 1, dl do
 local sb = _gb(salt, ((i + round_idx - 2) % 16) + 1)
 local kk = ks[i]

 st = (st + kk + sb + i + round_idx) % 256

 local eb = _gb(data, i)

 local db = eb
 db = (db - ((kk * 5) % 256) + 256) % 256
 db = bit32.bxor(db, ((i * 31) + sb + round_idx * 9) % 256)
 db = (db - st - sb + 512) % 256
 db = bit32.bxor(db, kk)

 r[i] = _tc(db)
 end

 return _js(r)
end

local function _ae(key, data, salt, rnd)
 _vrf()
 rnd = rnd or 3
 local r = data

 for rd = 1, rnd do
 r = _secure_round_enc(key, r, salt, rd)
 if not EQ(r, r) then
 while true do
 end
 end
 end

 return r
end

local function _ad(key, data, salt, rnd)
 _vrf()
 rnd = rnd or 3
 local r = data

 for rd = rnd, 1, -1 do
 r = _secure_round_dec(key, r, salt, rd)
 if not EQ(r, r) then
 while true do
 end
 end
 end

 return r
end

local _b64 = (function()
 local chs = string.char(
 65,
 66,
 67,
 68,
 69,
 70,
 71,
 72,
 73,
 74,
 75,
 76,
 77,
 78,
 79,
 80,
 81,
 82,
 83,
 84,
 85,
 86,
 87,
 88,
 89,
 90,
 97,
 98,
 99,
 100,
 101,
 102,
 103,
 104,
 105,
 106,
 107,
 108,
 109,
 110,
 111,
 112,
 113,
 114,
 115,
 116,
 117,
 118,
 119,
 120,
 121,
 122,
 48,
 49,
 50,
 51,
 52,
 53,
 54,
 55,
 56,
 57,
 43,
 47
 )

 local function enc(data)
 _vrf()
 local r, dl = {}, _gl(data)
 local i = 1

 while i <= dl do
 local b1 = _gb(data, i)
 local b2 = i + 1 <= dl and _gb(data, i + 1) or 0
 local b3 = i + 2 <= dl and _gb(data, i + 2) or 0

 local n = b1 * 65536 + b2 * 256 + b3

 local c1 = (n // 262144) % 64 + 1
 local c2 = (n // 4096) % 64 + 1
 local c3 = (n // 64) % 64 + 1
 local c4 = n % 64 + 1

 r[#r + 1] = _gb(chs, c1)
 r[#r + 1] = _gb(chs, c2)
 r[#r + 1] = i + 1 <= dl and _gb(chs, c3) or 61
 r[#r + 1] = i + 2 <= dl and _gb(chs, c4) or 61

 i = i + 3
 end

 local out = {}
 for idx = 1, #r do
 out[idx] = _tc(r[idx])
 end

 if EQ(_js(out), _js(out)) then
 return _js(out)
 end
 return ""
 end

 local function dec(data)
 _vrf()
 local r, dl = {}, _gl(data)
 local i = 1

 while i <= dl do
 local c1 = _gb(data, i)
 local c2 = _gb(data, i + 1)
 local c3 = _gb(data, i + 2)
 local c4 = _gb(data, i + 3)

 local function fp(byte)
 if byte == 61 then
 return 0
 end
 for p = 1, 64 do
 if _gb(chs, p) == byte then
 return p - 1
 end
 end
 return 0
 end

 local n1, n2, n3, n4 = fp(c1), fp(c2), fp(c3), fp(c4)
 local n = n1 * 262144 + n2 * 4096 + n3 * 64 + n4

 r[#r + 1] = _tc((n // 65536) % 256)
 if c3 ~= 61 then
 r[#r + 1] = _tc((n // 256) % 256)
 end
 if c4 ~= 61 then
 r[#r + 1] = _tc(n % 256)
 end

 i = i + 4
 end

 if EQ(_js(r), _js(r)) then
 return _js(r)
 end
 return ""
 end

 return { encode = enc, decode = dec }
end)()

local function _seed_rng()
 local seed = (os.time and os.time() or 12345)
 + math.floor((os.clock and os.clock() or 0) * 100000)
 + math.random(1, 999999)

 math.randomseed(seed)
 math.random()
 math.random()
 math.random()
end

_seed_rng()

local function ebgzqifrwa(plaintext)
 _vrf()
 local k = _cs(_sp[5], _sp[6], _sp[7], _sp[8])
 if not EQ(k, k) then
 while true do
 end
 end

 local salt = _gensalt128()
 local enc = _ae(k, plaintext, salt, 3)
 local payload = _cs(salt, enc)
 local b64 = _b64.encode(payload)

 if EQ(b64, b64) then
 return _cs("BananaCat-", b64)
 end
 return ""
end

local function lebidlyjyf(encrypted)
 _vrf()
 local k = _cs(_sp[5], _sp[6], _sp[7], _sp[8])
 if not EQ(k, k) then
 while true do
 end
 end

 local ed = _rp(encrypted, "BananaCat-", "")
 local dc = _b64.decode(ed)

 if _gl(dc) < 16 then
 return ""
 end

 local salt_tbl = {}
 local data_tbl = {}

 for i = 1, 16 do
 salt_tbl[#salt_tbl + 1] = _tc(_gb(dc, i))
 end

 for i = 17, _gl(dc) do
 data_tbl[#data_tbl + 1] = _tc(_gb(dc, i))
 end

 local salt = _js(salt_tbl)
 local data = _js(data_tbl)

 if EQ(data, data) then
 return _ad(k, data, salt, 3)
 end
 return ""
end
return ebgzqifrwa, lebidlyjyf
]])

Realm = nil

pcall(function()
	Realm = v5(game:GetService("ReplicatedStorage").Util.Realm)
end)

tryTeleport = function(arg, arg2, arg3)
	local ok, result = pcall(function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(arg, arg2, localPlayer)
	end)

	if ok then
		arg3.done = true
	else
		warn("Teleport thất bại:", arg, result)
	end
end

teleportSmart = function(arg)
	local v8 = Realm.safeGetCurrentSeaAsync()
	local tbl5 = {}
	local tbl6 = { done = false }
	local v9 = ipairs

	if v8 == "Sea1" then
		tbl5 = { 2753915549, 85211729168715 }
	elseif v8 == "Sea2" then
		tbl5 = { 4442272183, 79091703265657 }
	elseif v8 == "Sea3" then
		tbl5 = { 7449423635, 100117331123089 }
	end

	for _, v10 in v9(tbl5) do
		task.spawn(function()
			if not tbl6.done then
				tryTeleport(v10, arg, tbl6)
			end
		end)
	end
end

SectionServer.CreateButton({ Title = "Join JobId" }, function()
	if Settings["Spam Join"] then
		while task.wait() do
			local v8 = str
			local v9, v10 = chunk()
			local find = string.find
			local serverBrowser = game:GetService("ReplicatedStorage").__ServerBrowser
			local invokeServer = serverBrowser.InvokeServer

			if find(str, "BananaCat-") then
				v8 = v10(str)
			end

			invokeServer(serverBrowser, "teleport", v8)
		end
	else
		local v8 = str
		local v9, v10 = chunk()
		local find = string.find
		local serverBrowser = game:GetService("ReplicatedStorage").__ServerBrowser
		local invokeServer = serverBrowser.InvokeServer

		if find(str, "BananaCat-") then
			v8 = v10(str)
		end

		invokeServer(serverBrowser, "teleport", v8)
	end
end)

SectionServer.CreateButton({ Title = "Copy JobId" }, function()
	setclipboard(tostring(game.JobId))
end)

local tbl5 = {}

if not pcall(function()
	readfile("Banana Cat Hub/Jobid.json")
end) then
	writefile("Banana Cat Hub/Jobid.json", game:GetService("HttpService"):JSONEncode(tbl5))
end

if not pcall(function()
	readfile("Banana Cat Hub/NotSameServers.json")
end) then
	writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(tbl5))
end

CheckJobIdServer = function()
	local tbl6 = {}

	pcall(function()
		if not isfolder("Banana Cat Hub") then
			makefolder("Banana Cat Hub")
		end

		if isfile("Banana Cat Hub/Jobid.json") then
			local json = readfile("Banana Cat Hub/Jobid.json")
			local data = game:GetService("HttpService"):JSONDecode(json)

			if data and type(data) == "table" then
				for k in pairs(data) do
					table.insert(tbl6, k)
				end
			end
		end
	end)

	return tbl6
end

HopServer = function(arg)
	local timeHopServer = arg or Settings["Time Hop Server"] or 5

	pcall(function()
		v5(game:GetService("ReplicatedStorage").Notification).new("<Color=Red>Banana Cat Hub : Wait " .. timeHopServer .. "s [Hop Server]<Color=/>"):Display()
	end)

	local function fn2()
		local flag = false

		pcall(function()
			local v8 = CheckJobIdServer()

			for i = 1, 100 do
				local response = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i)

				if response and type(response) == "table" then
					for k in pairs(response) do
						if k ~= game.JobId and not table.find(v8, k) then
							game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)

							pcall(function()
								local tbl6 = {}

								for _, v9 in ipairs(v8) do
									tbl6[v9] = true
								end

								tbl6[k] = true
								writefile("Banana Cat Hub/Jobid.json", game:GetService("HttpService"):JSONEncode(tbl6))
							end)

							if getgenv().limit_type then
								getgenv().limit_type("clearAll")
							end

							flag = true
							return
						end
					end
				end
			end
		end)

		if not flag then
			pcall(function()
				local HttpService_ = game:GetService("HttpService")
				local TeleportService = game:GetService("TeleportService")
				local placeId = game.PlaceId
				local response = game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100")

				if response then
					local data = HttpService_:JSONDecode(response)

					if data and data.data then
						for _, v8 in pairs(data.data) do
							if v8.playing and v8.maxPlayers and v8.playing < v8.maxPlayers and v8.id ~= game.JobId then
								TeleportService:TeleportToPlaceInstance(placeId, v8.id, game.Players.LocalPlayer)
								return
							end
						end
					end
				end
			end)
		end
	end

	while wait(timeHopServer) do
		pcall(function()
			v5(game:GetService("ReplicatedStorage").Notification).new("<Color=Red>Banana Cat Hub : Hop Server<Color=/>"):Display()
		end)

		fn2()
	end
end

SectionServer.CreateButton({ Title = "Hop Server" }, function()
	HopServer()
end)

HopLessAll = function()
	v5(game:GetService("ReplicatedStorage").Notification).new("<Color=Red>Banana Hub : Hop Server<Color=/>"):Display()
	local placeId = game.PlaceId
	local tbl6 = {}
	local str2 = ""
	local hour = os.date("!*t").hour

	if not pcall(function()
		tbl6 = game:GetService("HttpService"):JSONDecode(readfile("Banana Cat Hub/NotSameServers.json"))
	end) then
		table.insert(tbl6, hour)
		writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(tbl6))
	end

	HopServerLess = function()
		local data

		if str2 == "" then
			data = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"))
		else
			data = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. str2))
		end

		if data.nextPageCursor and data.nextPageCursor ~= "null" and data.nextPageCursor ~= nil then
			str2 = data.nextPageCursor
		end

		local n = 0

		for _, v8 in pairs(data.data) do
			local str3 = tostring(v8.id)

			if tonumber(v8.maxPlayers) > tonumber(v8.playing) and tonumber(v8.playing) <= 3 then
				local flag = true

				for _, v9 in pairs(tbl6) do
					if n ~= 0 then
						if str3 == tostring(v9) then
							flag = false
						end
					elseif tonumber(hour) ~= tonumber(v9) then
						pcall(function()
							delfile("Banana Cat Hub/NotSameServers.json")
							tbl6 = {}
							table.insert(tbl6, hour)
						end)
					end

					n += 1
				end

				if flag == true then
					table.insert(tbl6, str3)
					wait()

					pcall(function()
						writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(tbl6))
						wait()
						game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", str3)

						if getgenv().limit_type then
							getgenv().limit_type("clearAll")
						end
					end)

					wait(4)
				end
			end
		end
	end

	while wait() do
		HopServerLess()
	end
end

SectionServer.CreateButton({ Title = "Hop Server Less People" }, function()
	HopLessAll()
end)

MoonTextureId = function()
	local Lighting = game:GetService("Lighting")
	local fantasySky

	if game.PlaceId == getgenv().CheckPlaceId2 then
		fantasySky = Lighting:FindFirstChild("FantasySky")
	else
		fantasySky = Lighting:FindFirstChild("Sky")
	end

	if fantasySky and fantasySky:IsA("Sky") then
		return fantasySky.MoonTextureId
	end

	for _, child in ipairs(Lighting:GetChildren()) do
		if child:IsA("Sky") then
			return child.MoonTextureId
		end
	end

	return nil
end

CheckMoon = function()
	local v8 = MoonTextureId()
	local flag = v8 == "http://www.roblox.com/asset/?id=9709149431" or v8 == "http://www.roblox.com/asset/?id=9709149052"
	local str2 = "Bad Moon"

	if flag then
		if v8 == "http://www.roblox.com/asset/?id=9709149431" then
			str2 = "Full Moon"
		elseif v8 == "http://www.roblox.com/asset/?id=9709149052" then
			str2 = "Next Night"
		end
	end

	return str2
end

function6 = function()
	return math.floor(game.Lighting.ClockTime)
end

getServerTime = function()
	RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
	RealTime = tostring(game.Lighting.ClockTime)
	RealTimeTable = RealTime:split(".")
	local v8 = RealTimeTable[1]
	local n = tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
	Minute = v8
	Second = n
	return Minute, Second
end

function8 = function()
	local clockTime = game.Lighting.ClockTime
	if CheckMoon() == "Full Moon" and clockTime <= 5 then
		return tostring(function6()) .. " ( Will End Moon In " .. math.floor(5 - clockTime) .. " Minutes )"
	end

	if CheckMoon() == "Full Moon" and clockTime > 5 and clockTime < 12 then
		return tostring(function6()) .. " ( Fake Moon )"
	end

	if CheckMoon() == "Full Moon" and clockTime > 12 and clockTime < 18 then
		return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - clockTime) .. " Minutes )"
	end

	if CheckMoon() == "Full Moon" and clockTime > 18 and clockTime <= 24 then
		return tostring(function6()) .. " ( Will End Moon In " .. math.floor(30 - clockTime) .. " Minutes )"
	end

	if CheckMoon() == "Next Night" and clockTime < 12 then
		return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - clockTime) .. " Minutes )"
	end

	if CheckMoon() == "Next Night" and clockTime > 12 then
		return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(30 - clockTime) .. " Minutes )"
	end
	return tostring(function6())
end

CheckAcientOneDracoStatus = function()
	local localPlayer2 = game.Players.LocalPlayer
	localPlayer2 = localPlayer2 and localPlayer2.Character

	if not localPlayer2 or not localPlayer2:FindFirstChild("RaceTransformed") then
		if game.PlaceId == getgenv().CheckPlaceId then
			local response = nil

			pcall(function()
				local hydraIslandClient = game.workspace:FindFirstChild("HydraIslandClient")
				hydraIslandClient = hydraIslandClient and hydraIslandClient:FindFirstChild("RemoteFunction")

				if hydraIslandClient then
					response = hydraIslandClient:InvokeServer("Interacted")
				end
			end)

			if response == 1 or response == 2 or response == 3 or response == 4 then
				return "Ready For Trial"
			end
		end

		return "You have yet to achieve greatness"
	end

	local v8 = nil
	local v9 = nil
	local v10 = nil

	pcall(function()
		local response, v11, v12 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check", 2)
		v8 = response
		v9 = v11
		v10 = v12
	end)

	if v8 == 1 then
		return "Required Train More"
	end

	if v8 == 2 or v8 == 4 or v8 == 7 then
		return "Can Buy Gear With " .. tostring(v10 or 0) .. " Fragments"
	end

	if v8 == 3 then
		return "Required Train More"
	end

	if v8 == 5 then
		return "You Are Done Your Race."
	end

	if v8 == 6 then
		return "Upgrades completed: " .. tostring((v9 or 2) - 2) .. "/3, Need Trains More"
	end

	if v8 ~= 8 then
		if v8 == 0 then
			return "Ready For Trial"
		end
		return "You have yet to achieve greatness"
	end

	return "Remaining " .. tostring(10 - (v9 or 0)) .. " training sessions."
end

local function fn2()
	local localPlayer2 = game.Players.LocalPlayer
	localPlayer2 = localPlayer2 and localPlayer2.Character
	if not localPlayer2 or not localPlayer2:FindFirstChild("RaceTransformed") then
		return "You have yet to achieve greatness"
	end
	local v8 = nil
	local v9 = nil
	local v10 = nil

	pcall(function()
		local response, v11, v12 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
		v8 = response
		v9 = v11
		v10 = v12
	end)

	if v8 == 1 then
		return "Required Train More"
	end

	if v8 == 2 or v8 == 4 or v8 == 7 then
		return "Can Buy Gear With " .. tostring(v10 or 0) .. " Fragments"
	end

	if v8 == 3 then
		return "Required Train More"
	end

	if v8 == 5 then
		return "You Are Done Your Race."
	end

	if v8 == 6 then
		return "Upgrades completed: " .. tostring((v9 or 2) - 2) .. "/3, Need Trains More"
	end

	if v8 ~= 8 then
		if v8 == 0 then
			return "Ready For Trial"
		end
		return "You have yet to achieve greatness"
	end

	return "Remaining " .. tostring(10 - (v9 or 0)) .. " training sessions."
end

local v8 = nil
local n = 0

CheckAcientOneStatus = function()
	if v8 and tick() - n < 1 then
		return v8
	end
	v8 = fn2()
	n = tick()
	return v8
end

ResetRaceStatus = function()
	v8 = nil
end

CheckGoTrain = function()
	local v9 = CheckAcientOneStatus()
	if string.find(v9, "Upgrades completed") or v9 == "Required Train More" or string.find(v9, "training sessions.") or string.find(v9, "Can Buy Gear") then
		return true
	end
end

CheckClockTime = function()
	local clockTime = game.Lighting.ClockTime
	local str2

	if clockTime >= 18 or clockTime < 5 then
		str2 = "Night"
	else
		str2 = "Day"
	end

	return str2
end

StatusCheckLeviathan = function()
	if game.PlaceId == getgenv().CheckPlaceId then
		if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("InfoLeviathan", "1") ~= -1 then
			if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("InfoLeviathan", "1") == 5 then
				return "You can find leviathan now"
			end
			return "Buy Find leviathan"
		end

		return "I DONT KNOW"
	end

	return "..."
end

IsMobAlive = function(arg)
	if not (arg and arg.Parent) then
		return false
	end
	local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart", true) or arg:IsA("Model") and arg.PrimaryPart
	local humanoid = arg:FindFirstChildWhichIsA("Humanoid", true) or arg:FindFirstChild("Humanoid")
	if humanoidRootPart and humanoid and humanoid.Health and humanoid.Health > 0 then
		return true
	end
	return false
end

local tbl6 = { "Deandre", "Urban", "Diablo" }
CFrame.new(-5418.51904, 312.803192, -2828.00854)
local tbl7 = {}
local port = {}
local cframe = CFrame.new(-447.467438, 6.72994, 5306.368652)
local cframe2 = CFrame.new(-285.5, 44.2, 5556.1)
local cframe3 = CFrame.new
port[1] = cframe
port[2] = cframe2

do
	local values = table.pack(cframe3(-822.3, 65.8, 5972.5))
	table.move(values, 1, values.n, 3, port)
end

tbl7.port = port
local hydra = {}
local cframe4 = CFrame.new(5335.88623, 1004.77948, 241.501938)
local cframe5 = CFrame.new(5750.2, 610.5, 240.1)
local cframe6 = CFrame.new
hydra[1] = cframe4
hydra[2] = cframe5

do
	local values = table.pack(cframe6(5228.4, 605.2, 1014.3))
	table.move(values, 1, values.n, 3, hydra)
end

tbl7.hydra = hydra
local turtle = {}
local cframe7 = CFrame.new(-12548, 337.2, -7481)
local cframe8 = CFrame.new(-12001.6152, 1707.39319, -8789.03711)
local cframe9 = CFrame.new(-13274.5, 396.1, -7814.2)
local cframe10 = CFrame.new
turtle[1] = cframe7
turtle[2] = cframe8
turtle[3] = cframe9

do
	local values = table.pack(cframe10(-10526.3, 332, -8753.8))
	table.move(values, 1, values.n, 4, turtle)
end

tbl7.turtle = turtle
local tree = {}
local cframe11 = CFrame.new(2253.060059, 24.14422, -6405.669434)
local cframe12 = CFrame.new(2847.2, 73.5, -7231)
local cframe13 = CFrame.new
tree[1] = cframe11
tree[2] = cframe12

do
	local values = table.pack(cframe13(2300, 450, -6800))
	table.move(values, 1, values.n, 3, tree)
end

tbl7.tree = tree

local tbl8 = {
	port = tbl7.port[1],
	hydra = tbl7.hydra[1],
	hydar = tbl7.hydra[1],
	turtle = tbl7.turtle[1],
	mansion = tbl7.turtle[1],
	tree = tbl7.tree[1],
}

IsEliteName = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return false
	end
	local v9 = string.lower(arg)
	if string.find(v9, "elite hunter", 1, true) or v9 == "elite" then
		return false
	end

	for _, v10 in ipairs(tbl6) do
		local v11 = string.lower(v10)
		if v9 == v11 or string.find(v9, v11, 1, true) then
			return true
		end
	end

	return false
end

ResolveIslandKeyFromText = function(arg)
	if type(arg) ~= "string" or arg == "" then
		return nil
	end
	local v9 = string.lower(arg)
	if string.find(v9, "port", 1, true) or string.find(v9, "town", 1, true) then
		return "port"
	end

	if string.find(v9, "hydra", 1, true) or string.find(v9, "hydar", 1, true) then
		return "hydra"
	end

	if string.find(v9, "turtle", 1, true) or string.find(v9, "mansion", 1, true) or string.find(v9, "floating", 1, true) then
		return "turtle"
	end

	if string.find(v9, "tree", 1, true) or string.find(v9, "great", 1, true) then
		return "tree"
	end
	return nil
end

ResolveIslandFromText = function(arg)
	local v9 = ResolveIslandKeyFromText(arg)
	return v9 and tbl8[v9] or nil
end

GetEliteMob = function(arg)
	local function fn3(arg2)
		if not arg2 then
			return nil
		end

		for _, child in ipairs(arg2:GetChildren()) do
			if (child:IsA("Model") or child:FindFirstChild("HumanoidRootPart")) and IsEliteName(child.Name) then
				if not arg or string.find(string.lower(child.Name), string.lower(arg), 1, true) then
					local humanoidRootPart = child:FindFirstChild("HumanoidRootPart", true) or child.PrimaryPart
					local humanoid = child:FindFirstChildWhichIsA("Humanoid", true) or child:FindFirstChild("Humanoid")
					if humanoidRootPart and humanoid and humanoid.Health and humanoid.Health > 0 then
						return child
					end
				end
			end
		end

		return nil
	end

	local v9 = fn3(workspace:FindFirstChild("Enemies"))
	if v9 then
		return v9
	end
	local v10 = fn3(workspace:FindFirstChild("Characters"))
	if v10 then
		return v10
	end
	local worldOrigin = workspace:FindFirstChild("_WorldOrigin")

	if worldOrigin then
		local v11 = fn3(worldOrigin:FindFirstChild("Enemies"))
		if v11 then
			return v11
		end
	end

	for _, child in ipairs(workspace:GetChildren()) do
		if child:IsA("Model") and IsEliteName(child.Name) then
			if not arg or string.find(string.lower(child.Name), string.lower(arg), 1, true) then
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart", true) or child.PrimaryPart
				local humanoid = child:FindFirstChildWhichIsA("Humanoid", true) or child:FindFirstChild("Humanoid")
				if humanoidRootPart and humanoid and humanoid.Health and humanoid.Health > 0 then
					return child
				end
			end
		end
	end

	return nil
end

GetEliteMobFromReplicated = function(arg)
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	if not ReplicatedStorage then
		return nil
	end

	for _, child in ipairs(ReplicatedStorage:GetChildren()) do
		if child:IsA("Model") and IsEliteName(child.Name) then
			if not arg or string.find(string.lower(child.Name), string.lower(arg), 1, true) then
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart", true) or child.PrimaryPart
				if humanoidRootPart and humanoidRootPart.Position.Magnitude > 100 then
					return child, humanoidRootPart.CFrame
				end
			end
		end
	end

	return nil
end

local v9 = nil

local function fn3()
	if v9 then
		return v9
	end

	pcall(function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		ReplicatedStorage = ReplicatedStorage and ReplicatedStorage:FindFirstChild("GuideModule")

		if ReplicatedStorage then
			v9 = v5(ReplicatedStorage)
		end
	end)

	return v9
end

HasEliteQuest = function(arg)
	local v10 = fn3()

	if v10 and v10.Data and v10.Data.QuestData then
		local questData = v10.Data.QuestData
		local v11 = string.lower(tostring(questData.QuestName or ""))
		local v12 = string.lower(tostring(questData.Task or ""))
		local v13 = string.lower(tostring(questData.Description or ""))
		if string.find(v11, "elite", 1, true) or IsEliteName(v11) or IsEliteName(v12) or IsEliteName(v13) or arg and (string.find(v11, string.lower(arg), 1, true) or string.find(v12, string.lower(arg), 1, true)) then
			return true
		end

		if type(questData.Task) == "table" then
			for k in pairs(questData.Task) do
				local v14 = string.lower(tostring(k))
				if IsEliteName(v14) or arg and string.find(v14, string.lower(arg), 1, true) then
					return true
				end
			end
		end
	end

	if HasQuestUI and HasQuestUI() and GetNameDoubleQuest then
		local v11 = GetNameDoubleQuest()
		local v12

		if v11 then
			v12 = IsEliteName(v11) or string.find(string.lower(tostring(v11)), "elite", 1, true)
		else
			v12 = v11
		end

		if v12 then
			return true
		end
	end

	local playerGui = game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

	if playerGui then
		local trackedQuestFrame = playerGui:FindFirstChild("TrackedQuestFrame")

		if trackedQuestFrame and trackedQuestFrame.Enabled and trackedQuestFrame:FindFirstChild("Frame") and trackedQuestFrame.Frame.Visible then
			local description = trackedQuestFrame.Frame:FindFirstChild("description", true)
			local v11 = string.lower(description and description.Text or "")
			local title = trackedQuestFrame.Frame:FindFirstChild("title", true)
			local v12 = string.lower(title and title.Text or "")
			if string.find(v11, "elite", 1, true) or string.find(v12, "elite", 1, true) or IsEliteName(v11) or IsEliteName(v12) or arg and (string.find(v11, string.lower(arg), 1, true) or string.find(v12, string.lower(arg), 1, true)) then
				return true
			end
		end

		local quest = playerGui:FindFirstChild("Main") and playerGui.Main:FindFirstChild("Quest")

		if quest and quest.Visible then
			local title = quest:FindFirstChild("Container") and quest.Container:FindFirstChild("QuestTitle") and quest.Container.QuestTitle:FindFirstChild("Title")
			local v11 = string.lower(title and title.Text or "")
			if string.find(v11, "elite", 1, true) or IsEliteName(v11) or arg and string.find(v11, string.lower(arg), 1, true) then
				return true
			end

			for _, descendant in ipairs(quest:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Text ~= "" then
					local v12 = string.lower(descendant.Text)
					if IsEliteName(v12) or string.find(v12, "elite", 1, true) then
						return true
					end
				end
			end
		end
	end

	return false
end

GetCurrentEliteMobName = function()
	local v10 = GetEliteMob()

	if v10 then
		for _, v11 in ipairs(tbl6) do
			if string.find(string.lower(v10.Name), string.lower(v11), 1, true) then
				return v11
			end
		end
	end

	local playerGui = game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

	if playerGui then
		local quest = playerGui:FindFirstChild("Main") and playerGui.Main:FindFirstChild("Quest")

		if quest and quest.Visible then
			for _, descendant in ipairs(quest:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Text ~= "" then
					for _, v11 in ipairs(tbl6) do
						if string.find(string.lower(descendant.Text), string.lower(v11), 1, true) then
							return v11
						end
					end
				end
			end
		end

		local trackedQuestFrame = playerGui:FindFirstChild("TrackedQuestFrame")

		if trackedQuestFrame and trackedQuestFrame.Enabled and trackedQuestFrame:FindFirstChild("Frame") and trackedQuestFrame.Frame.Visible then
			for _, descendant in ipairs(trackedQuestFrame.Frame:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Text ~= "" then
					for _, v11 in ipairs(tbl6) do
						if string.find(string.lower(descendant.Text), string.lower(v11), 1, true) then
							return v11
						end
					end
				end
			end
		end
	end

	local v11 = fn3()

	if v11 and v11.Data and v11.Data.QuestData then
		local questData = v11.Data.QuestData
		local v12 = string.lower(tostring(questData.QuestName or "") .. " " .. tostring(questData.Task or ""))

		for _, v13 in ipairs(tbl6) do
			if string.find(v12, string.lower(v13), 1, true) then
				return v13
			end
		end

		if type(questData.Task) == "table" then
			for k in pairs(questData.Task) do
				for _, v13 in ipairs(tbl6) do
					if string.find(string.lower(tostring(k)), string.lower(v13), 1, true) then
						return v13
					end
				end
			end
		end
	end

	local ReplicatedStorage = game:GetService("ReplicatedStorage")

	if ReplicatedStorage then
		for _, v12 in ipairs(tbl6) do
			local v13 = ReplicatedStorage:FindFirstChild(v12)

			if v13 and v13:IsA("Model") then
				local humanoidRootPart = v13:FindFirstChild("HumanoidRootPart", true) or v13.PrimaryPart
				if humanoidRootPart and humanoidRootPart.Position.Magnitude > 100 then
					return v12
				end
			end
		end
	end

	local enemies = workspace:FindFirstChild("Enemies")

	if enemies then
		for _, child in ipairs(enemies:GetChildren()) do
			if child:IsA("Model") and IsEliteName(child.Name) then
				for _, v12 in ipairs(tbl6) do
					if string.find(string.lower(child.Name), string.lower(v12), 1, true) then
						return v12
					end
				end
			end
		end
	end

	return nil
end

GetEliteIslandKeyFromUI = function()
	local playerGui = game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	if not playerGui then
		return nil
	end
	local main = playerGui:FindFirstChild("Main")
	local dialogue = main and main:FindFirstChild("Dialogue")

	if dialogue then
		for _, descendant in ipairs(dialogue:GetDescendants()) do
			if descendant:IsA("TextLabel") and descendant.Text ~= "" then
				local v10 = ResolveIslandKeyFromText(descendant.Text)
				if v10 then
					return v10
				end
			end
		end
	end

	main = main and main:FindFirstChild("Quest")

	if main and main.Visible then
		for _, descendant in ipairs(main:GetDescendants()) do
			if descendant:IsA("TextLabel") and descendant.Text ~= "" then
				local v10 = ResolveIslandKeyFromText(descendant.Text)
				if v10 then
					return v10
				end
			end
		end
	end

	local trackedQuestFrame = playerGui:FindFirstChild("TrackedQuestFrame")

	if trackedQuestFrame and trackedQuestFrame.Enabled then
		for _, descendant in ipairs(trackedQuestFrame:GetDescendants()) do
			if descendant:IsA("TextLabel") and descendant.Text ~= "" then
				local v10 = ResolveIslandKeyFromText(descendant.Text)
				if v10 then
					return v10
				end
			end
		end
	end

	local v10 = fn3()

	if v10 and v10.Data and v10.Data.QuestData then
		local questData = v10.Data.QuestData
		local v11 = ResolveIslandKeyFromText(tostring(questData.QuestName or "") .. " " .. tostring(questData.Task or "") .. " " .. tostring(questData.Description or ""))
		if v11 then
			return v11
		end
	end

	return nil
end

GetEliteIslandFromUI = function()
	local v10 = GetEliteIslandKeyFromUI()
	return v10 and tbl8[v10] or nil
end

local v10 = nil
local n2 = 0
local n3 = 1
local n4 = 0
local n5 = 1
local n6 = 0
local tbl9 = { tbl8.turtle, tbl8.hydra, tbl8.port, tbl8.tree }

GetNextElitePatrolCFrame = function()
	local now = tick()
	local humanoidRootPart = localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
	local v11 = tbl9[n5]

	if humanoidRootPart and v11 then
		if (humanoidRootPart.Position - v11.Position).Magnitude < 350 or now - n6 > 25 then
			n5 = n5 % #tbl9 + 1
			n6 = now
		end
	elseif now - n6 > 25 then
		n5 = n5 % #tbl9 + 1
		n6 = now
	end

	return tbl9[n5]
end

GetEliteTargetCFrame = function(arg)
	local v11 = arg or GetCurrentEliteMobName()
	local v12 = GetEliteMob(v11)

	if v12 and IsMobAlive(v12) then
		local humanoidRootPart = v12:FindFirstChild("HumanoidRootPart", true) or v12.PrimaryPart
		if humanoidRootPart then
			return humanoidRootPart.CFrame
		end
	end

	local v13, v14 = GetEliteMobFromReplicated(v11)
	if v14 then
		return v14
	end
	local v15 = v10 or GetEliteIslandKeyFromUI()

	if v15 and tbl7[v15] then
		v10 = v15
		local v16 = tbl7[v15]
		local humanoidRootPart = localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
		local v17 = v16[n3] or v16[1]
		local now = tick()

		if humanoidRootPart and v17 then
			if (humanoidRootPart.Position - v17.Position).Magnitude < 200 or now - n4 > 10 then
				n3 = n3 % #v16 + 1
				n4 = now
			end
		elseif now - n4 > 10 then
			n3 = n3 % #v16 + 1
			n4 = now
		end

		return v16[n3] or v16[1]
	end

	return GetNextElitePatrolCFrame()
end

DetectEliteHunter = function(arg)
	local v11 = GetEliteMob()
	if v11 and IsMobAlive(v11) then
		return v11
	end

	if arg then
		if HasEliteQuest() then
			return true
		end
		local ReplicatedStorage = game:GetService("ReplicatedStorage")

		if ReplicatedStorage then
			for _, child in ipairs(ReplicatedStorage:GetChildren()) do
				if child:IsA("Model") and IsEliteName(child.Name) then
					local humanoidRootPart = child:FindFirstChild("HumanoidRootPart", true) or child.PrimaryPart
					if humanoidRootPart and humanoidRootPart.Position.Magnitude > 100 then
						return child
					end
				end
			end
		end
	end

	return nil
end

EnsureEliteQuest = function(arg)
	if HasEliteQuest(arg) then
		if not v10 then
			pcall(function()
				local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")

				if type(response) == "string" then
					local v11 = ResolveIslandKeyFromText(response)

					if v11 then
						v10 = v11
						n3 = 1
						n4 = tick()
					end
				end
			end)
		end

		return true
	end

	if tick() - n2 < 1.5 then
		return false
	end
	n2 = tick()
	local playerGui = game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	local quest = playerGui and playerGui:FindFirstChild("Main") and playerGui.Main:FindFirstChild("Quest")

	if quest and quest.Visible and not HasEliteQuest() then
		local flag = false

		for _, descendant in ipairs(quest:GetDescendants()) do
			if descendant:IsA("TextLabel") and descendant.Text ~= "" then
				local v11 = string.lower(descendant.Text)
				if string.find(v11, "elite", 1, true) or IsEliteName(v11) then
					flag = true
					break
				end
			end
		end

		if not flag then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			end)

			task.wait(0.2)
		end
	end

	local response = nil

	pcall(function()
		response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
	end)

	if type(response) == "string" then
		local v11 = ResolveIslandKeyFromText(response)

		if v11 then
			v10 = v11
			n3 = 1
			n4 = tick()
		end
	end

	task.wait(0.2)

	if not HasEliteQuest(arg) then
		pcall(function()
			local response2 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")

			if type(response2) == "string" and not v10 then
				local v11 = ResolveIslandKeyFromText(response2)

				if v11 then
					v10 = v11
					n3 = 1
					n4 = tick()
				end
			end
		end)
	end

	pcall(function()
		local dialogue = playerGui and playerGui:FindFirstChild("Main") and playerGui.Main:FindFirstChild("Dialogue")

		if dialogue then
			for _, descendant in ipairs(dialogue:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Text ~= "" then
					local v11 = ResolveIslandKeyFromText(descendant.Text)

					if v11 then
						v10 = v11
						n3 = 1
						n4 = tick()
						break
					end
				end
			end

			dialogue.Visible = false
		end
	end)

	local character = localPlayer and localPlayer.Character
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

	if humanoidRootPart and humanoidRootPart.Anchored then
		pcall(function()
			humanoidRootPart.Anchored = false
		end)
	end

	return HasEliteQuest(arg)
end

local n7 = 0
lastCheckTime = tick()

GetOldestLocation = function()
	local huge = math.huge
	local v11 = nil

	for _, child in ipairs(workspace._WorldOrigin.Locations:GetChildren()) do
		local attribute = child:GetAttribute("TimeIn")

		if attribute and attribute < huge then
			huge = attribute
			v11 = child
		end
	end

	return v11
end

spawn(function()
	while wait(0.25) do
		local ok, result = pcall(function()
			local distributedGameTime = game.workspace.DistributedGameTime
			local n8 = math.floor(distributedGameTime / 60 % 60)
			TimerLabel.SetText(string.format("Timer: %.0fh %.0fm %.0fs", math.floor(distributedGameTime / 3600), n8, distributedGameTime % 60))
			local v11 = GetOldestLocation()

			if v11 then
				local attribute = v11:GetAttribute("TimeIn")
				local n9 = tick() - 25200 - attribute
				math.floor(n9 / 14400)
				local n10 = 14400 - n9 % 14400
				local n11 = math.floor(n10 / 3600)
				local n12 = math.floor(n10 % 3600 / 60)
				local n13 = math.floor(n10 % 60)
				local n14 = math.floor(n9 / 3600)
				local n15 = math.floor(n9 % 3600 / 60)
				local n16 = math.floor(n9 % 60)
				TimerServerLabel.SetText(string.format("Server Timer: %.0fh %.0fm %.0fs", n14, n15, n16))
				NextTimerServerLabel.SetText(string.format("Next Time Spawn Fist of Darkness or God's Chalice: %.0fh %.0fm %.0fs", n11, n12, n13))

				if tonumber(n11) == 0 and tonumber(n12) == 0 and tonumber(n13) <= 5 then
					getgenv().GoCollectChest = true
				end
			end

			if DetectEliteHunter(true) then
				StatusEliteHunter.SetText("Elite Hunter: ✅")
			else
				StatusEliteHunter.SetText("Elite Hunter: ❌")
			end

			if game.PlaceId == getgenv().CheckPlaceId then
				n7 = 0
				local islandModel = workspace.Map:FindFirstChild("TikiOutpost") and workspace.Map.TikiOutpost.IslandModel

				if islandModel then
					local tbl10 = {}

					for i = 1, 4 do
						local v12 = islandModel:FindFirstChild("Eye" .. i, true)

						if v12 then
							table.insert(tbl10, v12)
						end
					end

					for _, v12 in ipairs(tbl10) do
						if v12.Transparency == 1 and n7 < 4 then
							n7 += 1
						end
					end
				end
			end

			StatusTyrant.SetText("Tyrant Eyes: " .. tostring(n7) .. " Eyes")
			local response = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true) or ""

			if response:find("open the portal now") then
				game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
			end

			StatusKatakuri.SetText("Cake Prince: " .. string.gsub(response, "%D", "") .. " Mobs")
			Statusspy.SetText("Leviathan: " .. StatusCheckLeviathan())

			if workspace.Map:FindFirstChild("MysticIsland") then
				StatusMirage.SetText("Mirage Island: ✅")
			else
				StatusMirage.SetText("Mirage Island: ❌")
			end

			if not workspace.Map:FindFirstChild("PrehistoricIsland") then
				StatusPrehistoricIsland.SetText("Prehistoric Island: ❌")
			else
				StatusPrehistoricIsland.SetText("Prehistoric Island: ✅")
			end

			if not workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
				StatusFrozenDimension.SetText("Frozen Dimension: ❌")
			else
				StatusFrozenDimension.SetText("Frozen Dimension: ✅")
			end

			StatusGear.SetText("Ancient One: " .. CheckAcientOneStatus())

			if getgenv().StatusGearDraco then
				getgenv().StatusGearDraco.SetText("Draco: " .. CheckAcientOneDracoStatus())
			end

			StatusMoon.SetText("Moon Phase: " .. CheckMoon() .. " | " .. function8())
		end)

		if result then
			print(result)
		end
	end
end)

LocalPlayerMain = Main.CreatePage({ Page_Name = "LocalPlayer", Page_Title = "LocalPlayer" })
SectionLocalPlayerMain = LocalPlayerMain.CreateSection("Local Player")

SectionLocalPlayerMain.CreateToggle({
	Title = "Auto Translate",
	Desc = "It may take a bit longer to translate the first time.",
	Default = Settings["Auto Translate"] or false,
}, function(arg)
	SaveSettings("Auto Translate", arg)
end)

SectionLocalPlayerMain.CreateButton({ Title = "Stop Tween" }, function()
	getgenv().noclip = false
	TweenManager.CancelCurrent()
end)

SectionLocalPlayerMain.CreateButton({ Title = "Fix UI Button Game" }, function()
	v5(game:GetService("ReplicatedStorage").Modules.LastInput).IsMobile = function()
		return true
	end

	wait(0.5)
	localPlayer.Character.Humanoid.Health = 0
end)

SectionLocalPlayerMain.CreateButton({ Title = "Load config in Web" }, function()
	local HttpService_ = game:GetService("HttpService")
	game:GetService("RunService")
	local key = getgenv().Key
	local name = game.Players.LocalPlayer.Name

	ApplyConfigFromWeb = function(arg)
		for _, v11 in pairs(arg) do
			if v11.name then
				local v12 = Options[v11.name]

				if v12 and v11 then
					if v11.value ~= nil and v12.type ~= "slider_dropdown" and v12.type ~= "priority_dropdown" then
						if v12.FunctionCreate and v12.FunctionCreate.SetValue then
							if v12.type == "box" then
								v12.FunctionCreate.SetValue(tostring(v11.value))
							elseif v12.type == "dropdown" then
								v12.FunctionCreate.SetValue(v11.value)
							elseif v12.type == "slider" then
								v12.FunctionCreate.SetValue(v11.value)
							else
								v12.FunctionCreate:SetValue(v11.value)
							end
						elseif v12.FunctionCreate and v12.FunctionCreate.SetStage then
							v12.FunctionCreate.SetStage(v11.value)
						end
					end

					if v12.type == "priority_dropdown" and v11.selected then
						if v12.FunctionCreate and v12.FunctionCreate.SetValue then
							v12.FunctionCreate.SetValue(v11.selected)
						end
					end

					if v12.type == "slider_dropdown" and v11.values then
						for k, value in pairs(v11.values) do
							if v12.FunctionCreate and v12.FunctionCreate.SetSubValue then
								v12.FunctionCreate:SetSubValue(k, value)
							end
						end
					end
				end
			end
		end
	end

	local ok, result = pcall(function()
		local urlEncode = HttpService_.UrlEncode

		return request({
			Url = string.format("%s/config/get?authId=%s&userId=%s&roblox=true", "https://cfg.banana-hub.xyz", HttpService_:UrlEncode(key), urlEncode(HttpService_, name)),
			Method = "GET",
		})
	end)

	if ok and result.StatusCode == 200 then
		local v11 = ApplyConfigFromWeb
		local data = HttpService_:JSONDecode(result.Body)
		v11(data)
	end
end)

SectionLocalPlayerMain.CreateButton({ Title = "Push Data To Web ( just push when join game,if push again plz rejoin )" }, function()
	local HttpService_ = game:GetService("HttpService")

	BuildSchema = function()
		local tbl10 = {}
		local n8 = 1

		for k, v11 in pairs(Options) do
			local pageName = v11.Page_Name or "Default Page"
			local sectionName = v11.Section_Name or "Default Section"
			local str2 = tostring(n8)

			if v11.type == "toggle" then
				tbl10[str2] = { name = k, type = "toggle", value = v11.value, page = pageName, section = sectionName }
			elseif v11.type == "button" then
				tbl10[str2] = { name = k, type = "button", value = k, text = k, page = pageName, section = sectionName }
			elseif v11.type == "textlabel" then
				local getText = v11.FunctionCreate and v11.FunctionCreate.GetText and v11.FunctionCreate.GetText() or v11.text or k

				tbl10[str2] = {
					name = k,
					type = "label",
					value = getText,
					text = getText,
					color = v11.color or "#B8B8B8",
					size = v11.size or "14px",
					bold = v11.bold or false,
					page = pageName,
					section = sectionName,
				}
			elseif v11.type == "box" then
				tbl10[str2] = { name = k, type = "box", value = v11.value or "", page = pageName, section = sectionName }
			elseif v11.type == "slider" then
				tbl10[str2] = {
					name = k,
					type = "slider",
					min = v11.min or 0,
					max = v11.max or 100,
					step = v11.step or 1,
					value = v11.value or v11.min or 0,
					page = pageName,
					section = sectionName,
				}
			elseif v11.type == "dropdown" then
				tbl10[str2] = {
					name = k,
					type = "dropdown",
					options = table.clone(v11.list or {}),
					value = v11.value or v11.list and v11.list[1] or "",
					page = pageName,
					section = sectionName,
				}
			elseif v11.type == "priority_dropdown" then
				local v12 = table.clone(v11.value or {})

				tbl10[str2] = {
					name = k,
					type = "priority_dropdown",
					options = table.clone(v11.list or {}),
					selected = v12,
					value = v12,
					page = pageName,
					section = sectionName,
				}
			elseif v11.type == "multi_toggle" then
				tbl10[str2] = {
					name = k,
					type = "multi_toggle",
					options = table.clone(v11.list or {}),
					value = table.clone(v11.value or {}),
					page = pageName,
					section = sectionName,
				}
			elseif v11.type == "slider_dropdown" then
				local tbl11 = {}
				local tbl12 = {}
				local v12 = pairs
				local list = v11.list or {}

				for k2, v13 in v12(list) do
					tbl11[k2] = { min = v13.min or 0, max = v13.max or 100, step = v13.step or 1 }
					tbl12[k2] = v11.value and v11.value[k2] or v13.Default or v13.min or 0
				end

				tbl10[str2] = {
					name = k,
					type = "slider_dropdown",
					sliders = tbl11,
					values = tbl12,
					page = pageName,
					section = sectionName,
				}
			end

			n8 += 1
		end

		return tbl10
	end

	UploadSchemaToWeb = function(arg, arg2)
		if not arg or not arg2 then
			warn("❌ Missing authId or userId for schema upload")
			return false
		end
		local v11 = BuildSchema()

		local ok, result = pcall(function()
			local urlEncode = HttpService_.UrlEncode

			return request({
				Url = string.format("%s/schema/init?authId=%s&userId=%s", "https://cfg.banana-hub.xyz", HttpService_:UrlEncode(arg), urlEncode(HttpService_, arg2)),
				Method = "POST",
				Headers = { ["Content-Type"] = "application/json" },
				Body = HttpService_:JSONEncode(v11),
			})
		end)

		if ok and result.StatusCode == 200 then
			print("✅ Schema initialized (first time)")
			return true
		end

		if ok and result.StatusCode == 409 then
			print("ℹ️ Schema already exists, skipping upload")
			return true
		end
		warn("❌ Schema upload failed")

		if ok then
			warn("Status:", result.StatusCode)
			warn("Body:", result.Body)
		end

		return false
	end

	PushSchemaToWebupdate = function(arg, arg2)
		if not arg or not arg2 then
			return
		end
		local v11 = BuildSchema()

		local ok, result = pcall(function()
			local urlEncode = HttpService_.UrlEncode

			return request({
				Url = string.format("%s/schema/update?authId=%s&userId=%s", "https://cfg.banana-hub.xyz", HttpService_:UrlEncode(arg), urlEncode(HttpService_, arg2)),
				Method = "POST",
				Headers = { ["Content-Type"] = "application/json" },
				Body = HttpService_:JSONEncode(v11),
			})
		end)

		if ok and result.StatusCode == 200 then
			print("✅ Schema UPDATED → web will reload")
		else
			warn("❌ Push schema failed")

			if ok then
				warn("Status:", result.StatusCode)
				warn("Body:", result.Body)
			end
		end
	end

	local key = getgenv().Key
	local name = game.Players.LocalPlayer.Name

	request({
		Url = "https://cfg.banana-hub.xyz/config/get?authId=" .. key .. "&userId=" .. name .. "&roblox=true",
		Method = "GET",
	})

	ForceResetSchema = function(arg, arg2)
		pcall(function()
			local urlEncode = HttpService_.UrlEncode

			request({
				Url = string.format("%s/schema/delete?authId=%s&userId=%s", "https://cfg.banana-hub.xyz", HttpService_:UrlEncode(arg), urlEncode(HttpService_, arg2)),
				Method = "DELETE",
			})
		end)

		wait(0.5)
		return UploadSchemaToWeb(arg, arg2)
	end

	ForceResetSchema(key, name)
end)

local v11 = nil

pcall(function()
	v11 = v5(game.ReplicatedStorage:WaitForChild("Controllers", 5):WaitForChild("UI", 5):WaitForChild("Inventory", 5))
end)

SectionLocalPlayerMain.CreateButton({ Title = "Show Item" }, function()
	if not v11 then
		return
	end

	if not game:GetService("CoreGui").ExperienceChat.bubbleChat:FindFirstChild("Right") then
		local localPlayer2 = game.Players.LocalPlayer
		local CoreGui = game:GetService("CoreGui")
		local ReplicatedStorage = game:GetService("ReplicatedStorage")

		if not v11.IsOpen then
			v11:Open()
			task.wait(2)
		end

		local inventory = localPlayer2.PlayerGui:FindFirstChild("Inventory")
		if not inventory then
			return
		end
		local frame = inventory:FindFirstChild("Frame") or inventory:WaitForChild("Frame", 3)
		if not frame then
			return
		end
		local main = frame:FindFirstChild("Main")
		main = main and main:FindFirstChild("PageContent")
		main = main and main:FindFirstChild("Inner")
		local tileGrid = main and main:FindFirstChild("TileGrid")
		tileGrid = tileGrid and tileGrid:FindFirstChild("Inner")
		tileGrid = tileGrid and tileGrid:FindFirstChild("Container")
		if not tileGrid or not tileGrid:IsA("ScrollingFrame") then
			return
		end
		local tbl10 = {}
		local tbl11 = {}
		tileGrid.CanvasPosition = Vector2.new(0, 0)
		local n8 = tileGrid.CanvasSize.Y.Offset - tileGrid.AbsoluteWindowSize.Y
		local n9 = 0

		while tileGrid.CanvasPosition.Y < n8 and task.wait(0.1) do
			tileGrid.CanvasPosition = Vector2.new(0, n9)

			for _, child in pairs(tileGrid:GetChildren()) do
				if child:FindFirstChild("Details") and child.Details:FindFirstChild("Line-1") then
					local str2 = child.Details["Line-1"].ContentText .. (child.Details:FindFirstChild("Line-2") and child.Details["Line-2"].ContentText or "")

					if not tbl10[str2] then
						tbl10[str2] = true
						table.insert(tbl11, child:Clone())
					end
				end
			end

			n9 += 20
		end

		for _, v12 in ipairs({ "Left", "Right" }) do
			local v13 = CoreGui.ExperienceChat.bubbleChat:FindFirstChild(v12)

			if v13 then
				v13:Destroy()
			end
		end

		local frame2 = Instance.new("Frame", CoreGui.ExperienceChat.bubbleChat)
		frame2.Name = "Left"
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.new(0.5, 0, 1, 0)
		local frame3 = Instance.new("Frame", CoreGui.ExperienceChat.bubbleChat)
		frame3.Name = "Right"
		frame3.BackgroundTransparency = 1
		frame3.Position = UDim2.new(0.5, 0, 0, 0)
		frame3.Size = UDim2.new(0.5, 0, 1, 0)

		local function createUIListLayout(arg)
			local uiListLayout = Instance.new("UIListLayout", arg)
			uiListLayout.FillDirection = Enum.FillDirection.Vertical
			uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Padding = UDim.new(0, 10)
			return uiListLayout
		end

		createUIListLayout(frame2)
		createUIListLayout(frame3)

		local function createUIGridLayout(arg)
			local uiGridLayout = Instance.new("UIGridLayout", arg)
			uiGridLayout.CellPadding = UDim2.new(0, 8, 0, 8)
			uiGridLayout.CellSize = UDim2.new(0, 70, 0, 70)
			uiGridLayout.FillDirectionMaxCells = 8
			uiGridLayout.FillDirection = Enum.FillDirection.Horizontal
			uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			return uiGridLayout
		end

		local frame4 = Instance.new("Frame", frame2)
		frame4.BackgroundTransparency = 1
		frame4.Size = UDim2.new(1, 0, 0, 0)
		frame4.AutomaticSize = Enum.AutomaticSize.Y
		frame4.LayoutOrder = 1
		createUIGridLayout(frame4)
		local frame5 = Instance.new("Frame", frame3)
		frame5.BackgroundTransparency = 1
		frame5.Size = UDim2.new(1, 0, 0, 0)
		frame5.AutomaticSize = Enum.AutomaticSize.Y
		frame5.LayoutOrder = 1
		createUIGridLayout(frame5)
		local tbl12 = { Vector2.new(218, 225), Vector2.new(436, 225) }

		for _, v12 in ipairs(tbl11) do
			local contentText = v12.Details.Category.ContentText

			if contentText == "Blox Fruit" and table.find(tbl12, v12.ImageRectOffset) then
				v12.Parent = frame5
			elseif contentText ~= "Blox Fruit" then
				v12.Parent = frame4
			end
		end

		local frame6 = Instance.new("Frame", frame3)
		frame6.BackgroundTransparency = 1
		frame6.Size = UDim2.new(1, 0, 0, 0)
		frame6.AutomaticSize = Enum.AutomaticSize.Y
		frame6.LayoutOrder = 100
		createUIGridLayout(frame6)
		local tbl13 = {}
		local tbl14 = {}

		for k, v12 in pairs({
			Superhuman = Vector2.new(3, 2),
			DeathStep = Vector2.new(4, 3),
			ElectricClaw = Vector2.new(2, 0),
			SharkmanKarate = Vector2.new(0, 0),
			DragonTalon = Vector2.new(1, 5),
			Godhuman = "rbxassetid://10338473987",
		}) do
			if ReplicatedStorage.Remotes.CommF_:InvokeServer("Buy" .. k, true) == 1 then
				local imageLabel = Instance.new("ImageLabel", frame6)
				imageLabel.BackgroundTransparency = 1

				if type(v12) == "string" then
					imageLabel.Image = v12
				else
					imageLabel.Image = "rbxassetid://9945562382"
					imageLabel.ImageRectSize = Vector2.new(100, 100)
					imageLabel.ImageRectOffset = v12 * 100
				end

				tbl14[k] = imageLabel
				table.insert(tbl13, k)
			end
		end

		local function createTextLabel()
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
			textLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			textLabel.Font = Enum.Font.GothamBold
			textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel.TextSize = 10
			textLabel.TextXAlignment = Enum.TextXAlignment.Right
			textLabel.TextYAlignment = Enum.TextYAlignment.Bottom
			textLabel.ZIndex = 5
			return textLabel
		end

		local function fn4(arg)
			for _, child in pairs(localPlayer2.Backpack:GetChildren()) do
				if child.Name:gsub(" ", "") == arg then
					return child
				end
			end
		end

		spawn(function()
			local n10 = #tbl13
			local n11 = 0

			while n11 < n10 do
				for k, v12 in pairs(tbl14) do
					if not v12:FindFirstChild("Ditme") then
						ReplicatedStorage.Remotes.CommF_:InvokeServer("Buy" .. k)
						task.wait(0.1)
						local v13 = fn4(k)

						if v13 then
							v13:WaitForChild("Level")
							local v14 = createTextLabel()
							v14.Name = "Ditme"
							v14.Text = v13.Level.Value
							v14.Parent = v12
							n11 += 1
						end
					end
				end

				task.wait()
			end
		end)

		task.wait(2)
		localPlayer2.PlayerGui.Main.AwakeningToggler.Visible = true
		local clone = localPlayer2.PlayerGui.Main.AwakeningToggler:Clone()
		clone.LayoutOrder = 101
		localPlayer2.PlayerGui.Main.AwakeningToggler.Visible = false
		clone.Parent = frame3
		clone.Size = UDim2.new(1, 0, 0.3, 0)

		local function fn5(arg)
			return tostring(arg):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end

		local clone2 = localPlayer2.PlayerGui.Main.Fragments:Clone()
		clone2.Parent = CoreGui.ExperienceChat.bubbleChat
		clone2.Position = UDim2.new(0, 6, 0.85799, 0)
		clone2.Text = "ƒ" .. fn5(localPlayer2.Data.Fragments.Value)
		wait(2)

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
		end)

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
		end)

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
		end)

		for _, child in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
			if child:IsA("ImageButton") then
				child.Visible = false
			end
		end

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
		end)

		v11:Close()
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = true
		end)

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = true
		end)

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = true
		end)

		for _, child in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
			if child:IsA("ImageButton") then
				child.Visible = true
			end
		end

		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = true
		end)

		for _, child in pairs(game:GetService("CoreGui").ExperienceChat.bubbleChat:GetChildren()) do
			if child.Name == "Left" or child.Name == "Right" or child.Name == "Fragments" then
				child:Destroy()
			end
		end
	end
end)

SectionLocalPlayerMain.CreateButton({ Title = "Open Devil Fruit Shop" }, function()
	local v12 = v5(game.ReplicatedStorage.Controllers.UI.FruitShop)
	v12.init()
	v12:Open()
end)

SectionLocalPlayerMain.CreateButton({ Title = "Open Devil Fruit Shop Mirage" }, function()
	local v12 = v5(game.ReplicatedStorage.Controllers.UI.FruitShop)
	v12.init()
	v12:Open("AdvancedFruitDealer")
end)

SectionLocalPlayerMain.CreateButton({ Title = "Open Title" }, function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Titles.Visible = true
end)

SectionLocalPlayerMain.CreateButton({ Title = "Open Color" }, function()
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Colors.Visible = true
end)

SectionLocalPlayerMain.CreateDropdown({
	Title = "Select Stats",
	List = PrepareMultiSelectList({ Melee = false, Defense = false, Sword = false, Gun = false, ["Demon Fruit"] = false }, Settings["Select Stats"]),
	Search = true,
	Selected = true,
	Default = Settings["Select Stats"] or nil,
}, function(arg, arg2)
	SaveSettings("Select Stats", arg, arg2)
end)

SectionLocalPlayerMain.CreateToggle({ Title = "Auto Stats", Desc = nil, Default = Settings["Auto Stats"] or false }, function(arg)
	spawn(function()
		while Settings["Auto Stats"] and task.wait(0.3) do
			pcall(function()
				for k, v12 in next, Settings["Select Stats"], nil do
					v12 = v12 and game.Players.localPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats[k].Level.Value < 2800

					if v12 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", k, 9999)
						wait(3)
					end
				end
			end)
		end
	end)

	SaveSettings("Auto Stats", arg)
end)

SectionLocalPlayerMain.CreateDropdown({
	Title = "Select Team",
	List = { "Pirate", "Marine" },
	Search = true,
	Selected = false,
	Default = Settings["Select Team"] or nil,
}, function(arg)
	SaveSettings("Select Team", arg)
end)

SectionLocalPlayerMain.CreateDropdown({
	Title = "Change Team",
	List = { "Pirates", "Marines" },
	Search = true,
	Selected = false,
	Default = nil,
}, function(arg)
	if arg then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "SetTeam", arg }))
	end
end)

SectionLocalPlayerMain.CreateToggle({ Title = "Noclip", Desc = nil, Default = Settings.Noclip or false }, function(arg)
	SaveSettings("Noclip", arg)
end)

local imageLabel = nil

SetRobloxGUI = function(enabled)
	game.CoreGui.RobloxGui.Enabled = enabled
end

spawn(function()
	local now = tick()

	while true do
		wait(1)

		if tick() - now > 179 then
			game:Shutdown()
			wait(10)
		end

		if not (game:FindFirstChild("CoreGui") and game.Players.LocalPlayer and game.Players.LocalPlayer.Character) then
			continue
		end
		break
	end

	local now2 = tick()

	while true do
		wait(1)

		if tick() - now2 > 169 then
			game:Shutdown()
			wait(10)
		end

		if not (game.Players.LocalPlayer:FindFirstChild("Backpack") and game.Players.LocalPlayer:GetMouse()) then
			continue
		end
		break
	end

	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	screenGui.ResetOnSpawn = false
	getgenv().SCGUI = screenGui

	repeat
		wait(1)
	until SCGUI

	imageLabel = Instance.new("ImageLabel", SCGUI)
	imageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel.Position = UDim2.new(0, 0, 0, -50)
	imageLabel.Size = UDim2.new(1, 0, 1, 50)
	imageLabel.Visible = false
	imageLabel.Name = "Black Screen"
	getgenv().BS_Text = Instance.new("TextLabel", imageLabel)
	BS_Text.TextSize = 30
	BS_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	BS_Text.AnchorPoint = Vector2.new(0.5, 0)
	BS_Text.Position = UDim2.new(0.5, 0, 0.6, 0)
	BS_Text.Font = Enum.Font.SourceSansBold
	BS_Text.RichText = true
	BS_Default = "\n<font color=\"rgb(45, 45, 45)\"><font size=\"20\">Black Screen</font></font>"

	getgenv().UpdateBlackScreenText = function(arg)
		BS_Text.Text = arg .. BS_Default
	end

	UpdateBlackScreenText("")
	getgenv().DisableBlackScreen = false
end)

local tbl10 = {}
local tbl11 = {}

for _, child in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
	if not string.find(child.Name, "Boat") and not string.find(child.Name, "Set Home") then
		table.insert(tbl10, child.Name)
		table.insert(tbl11, child)
	end
end

for _, child in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
	if not string.find(child.Name, "Boat") and not string.find(child.Name, "Set Home") then
		table.insert(tbl10, child.Name)
		table.insert(tbl11, child)
	end
end

local tbl12 = {}

if game.PlaceId == getgenv().CheckPlaceId3 then
	tbl12 = {
		["Start Island"] = CFrame.new(1071.2832, 16.3085976, 1426.86792),
		["Marine Start"] = CFrame.new(-2573.3374, 6.88881969, 2046.99817),
		["Middle Town"] = CFrame.new(-655.824158, 7.88708115, 1436.67908),
		Jungle = CFrame.new(-1249.77222, 11.8870859, 341.356476),
		["Pirate Village"] = CFrame.new(-1122.34998, 4.78708982, 3855.91992),
		Desert = CFrame.new(1094.14587, 6.47350502, 4192.88721),
		["Frozen Village"] = CFrame.new(1198.00928, 27.0074959, -1211.73376),
		MarineFord = CFrame.new(-4505.375, 20.687294, 4260.55908),
		Colosseum = CFrame.new(-1428.35474, 7.38933945, -3014.37305),
		["Sky 1st Floor"] = CFrame.new(-4970.21875, 717.707275, -2622.35449),
		["Sky 2st Floor"] = CFrame.new(-4813.0249, 903.708557, -1912.69055),
		["Sky 3st Floor"] = CFrame.new(-7952.31006, 5545.52832, -320.704956),
		Prison = CFrame.new(4854.16455, 5.68742752, 740.194641),
		["Magma Village"] = CFrame.new(-5231.75879, 8.61593437, 8467.87695),
		["UndeyWater City"] = CFrame.new(61163.8516, 11.7796879, 1819.78418),
		["Fountain City"] = CFrame.new(5132.7124, 4.53632832, 4037.8562),
		["House Cyborg's"] = CFrame.new(6262.72559, 71.3003616, 3998.23047),
		["Shank's Room"] = CFrame.new(-1442.16553, 29.8788261, -28.3547478),
		["Mob Island"] = CFrame.new(-2850.20068, 7.39224768, 5354.99268),
	}
elseif game.PlaceId == getgenv().CheckPlaceId2 then
	tbl12 = {
		["First Spot"] = CFrame.new(82.9490662, 18.0710983, 2834.98779),
		["Kingdom of Rose"] = game.Workspace._WorldOrigin.Locations["Kingdom of Rose"].CFrame,
		["Dark Ares"] = game.Workspace._WorldOrigin.Locations["Dark Arena"].CFrame,
		["Flamingo Mansion"] = CFrame.new(-390.096313, 331.886475, 673.464966),
		["Flamingo Room"] = CFrame.new(2302.19019, 15.1778421, 663.811035),
		["Green bit"] = CFrame.new(-2372.14697, 72.9919434, -3166.51416),
		Cafe = CFrame.new(-385.250916, 73.0458984, 297.388397),
		Factroy = CFrame.new(430.42569, 210.019623, -432.504791),
		Colosseum = CFrame.new(-1836.58191, 44.5890656, 1360.30652),
		["Ghost Island"] = CFrame.new(-5571.84424, 195.182297, -795.432922),
		["Ghost Island 2nd"] = CFrame.new(-5931.77979, 5.19706631, -1189.6908),
		["Snow Mountain"] = CFrame.new(1384.68298, 453.569031, -4990.09766),
		["Hot and Cold"] = CFrame.new(-6026.96484, 14.7461271, -5071.96338),
		["Magma Side"] = CFrame.new(-5478.39209, 15.9775667, -5246.9126),
		["Cursed Ship"] = CFrame.new(902.059143, 124.752518, 33071.8125),
		["Frosted Island"] = CFrame.new(5400.40381, 28.21698, -6236.99219),
		["Forgotten Island"] = CFrame.new(-3043.31543, 238.881271, -10191.5791),
		["Usoapp Island"] = CFrame.new(4748.78857, 8.35370827, 2849.57959),
		["Raids Low"] = CFrame.new(-5554.95313, 329.075623, -5930.31396),
		Minisky = CFrame.new(-260.358917, 49325.7031, -35259.3008),
	}
elseif game.PlaceId == getgenv().CheckPlaceId then
	tbl12 = {
		["Port Town"] = CFrame.new(-287, 30, 5388),
		["Hydar Island"] = CFrame.new(3399.32227, 72.4142914, 1572.99963, -0.809679806, -4.48284467e-08, 0.586871922, 2.42332163e-08, 1, 1.09818842e-07, -0.586871922, 1.0313989e-07, -0.809679806),
		["Room Enma/Yama & Secret Temple"] = CFrame.new(5247, 7, 1097),
		["House Hydar Island"] = CFrame.new(5245, 602, 251),
		["Great Tree"] = CFrame.new(2443, 36, -6573),
		["Castle on the sea"] = CFrame.new(-5500, 314, -2855),
		Mansion = CFrame.new(-12548, 337, -7481),
		["Floating Turtle"] = CFrame.new(-10016, 332, -8326),
		["Haunted Castle"] = CFrame.new(-9509.34961, 142.130661, 5535.16309),
		["Peanut Island"] = CFrame.new(-2131, 38, -10106),
		["Ice Cream Island"] = CFrame.new(-950, 59, -10907),
		CakeLoaf = CFrame.new(-1762, 38, -11878),
		Tiki = CFrame.new(-16204.0810546875, 9.0863618850708, 479.2259521484375),
	}
end

local tbl13 = {}

for k in next, tbl12, nil do
	table.insert(tbl13, k)
end

SectionLocalPlayerMain.CreateDropdown({ Title = "Select Npc", List = tbl10, Search = true, Selected = false, Default = nil }, function(arg)
	notsave["Select Npc"] = arg
end)

SectionLocalPlayerMain.CreateToggle({ Title = "Teleport To Npc", Desc = nil, Default = false }, function(arg)
	notsave["Teleport To Npc"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionLocalPlayerMain.CreateDropdown({ Title = "Select Island", List = tbl13, Search = true, Selected = false, Default = nil }, function(arg)
	notsave["Select Island"] = arg
end)

SectionLocalPlayerMain.CreateToggle({ Title = "Teleport To Island", Desc = nil, Default = false }, function(arg)
	notsave["Teleport To Island"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionLocalPlayerMain.CreateToggle({ Title = "Teleport Mirage", Desc = nil, Default = false }, function(arg)
	notsave["Teleport Mirage"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

SectionLocalPlayerMain.CreateToggle({ Title = "Teleport Prehistoric Island", Desc = nil, Default = false }, function(arg)
	notsave["Teleport Prehistoric Island"] = arg

	if not arg then
		getgenv().LastToggleCancelTime = tick()
		local tweenManager = getgenv().TweenManager or TweenManager

		if tweenManager and tweenManager.CancelCurrent then
			tweenManager.CancelCurrent()
		end
	end
end)

DetectPrehistoricIsland = function()
	local v12 = next
	local children, v13 = workspace._WorldOrigin.Locations:GetChildren()

	for _, v14 in v12, children, v13 do
		if v14.Name == "Prehistoric Island" and v14:GetAttribute("CFrame") then
			return v14
		end
	end
end

SetNoClip = function(noclip)
	getgenv().noclip = noclip
	local character = localPlayer.Character
	if not character then
		return
	end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not noclip then
		for _, descendant in ipairs(character:GetDescendants()) do
			if descendant:IsA("BasePart") then
				descendant.CanCollide = true
			end
		end

		if humanoid then
			humanoid.PlatformStand = false
		end

		if humanoidRootPart and humanoidRootPart:FindFirstChild("FloatForce") and not ToggleNoclip() then
			humanoidRootPart.FloatForce:Destroy()
		end
	end
end

ToggleNoclip = function()
	if Settings["Start Farm"] or Settings["Auto Present Event"] or Settings["Auto Celestial Soldier"] or Settings["Auto Rip Commander"] or Settings["Auto Event Halloween"] or Settings["Auto Attack Dungeon"] or Settings["Auto Fishing"] or Settings["Teleport To Fruit"] or Settings["Auto Factory"] or Settings["Auto Pirate Raid"] or Settings["Auto Elite Hunter"] or Settings["Hop Server Elite Hunter"] or Settings["Auto Touch Pad Haki"] or Settings["Auto Summon Rip Indra"] or Settings["Attack Rip Indra"] or Settings["Attack Soul Reaper"] or Settings["Summon Soul Reaper"] or Settings["Attack Dough King"] or Settings["Attack Darkbeard"] or Settings["Auto Raid"] or Settings["Auto Sea Event"] or Settings["Auto Shipwright"] or Settings["Teleport Acient Clock"] or Settings["Auto Upgrade Race V2-V3"] or Settings["Auto Trial"] or Settings["Auto Get Ghoul"] or Settings["Auto Get Cyborg"] or Settings["Auto Pull Lever"] or notsave["Teleport Mirage"] or notsave["Teleport To Island"] or notsave["Teleport To Npc"] or notsave["Teleport Prehistoric Island"] or notsave["Sanguine Art"] or notsave["God Human"] or notsave["Dragon Talon"] or notsave["Electric Claw"] or notsave["Sharkman Karate"] or notsave["Death Step"] or notsave.SuperHuman or notsave.DragonClaw or notsave.Electro or notsave["Fishman Karate"] or notsave["Black Leg"] or Settings["Teleport To Kitsune Island"] or Settings["Auto Spawn Kitsune Island"] or Settings["Auto Collect Soul Ember"] or Settings["Auto Summon Soul Ember"] or Settings["Auto Attack Leviathan"] or Settings["Auto Soul Guitar"] or Settings["Auto CDK"] or Settings["Auto Yama"] or Settings["Auto Tushita"] or Settings["Auto Upgrade Sword Inventory"] or Settings["Teleport Player"] or Settings["Auto Chest"] or Settings["Farm Observation"] or Settings["Auto Upgrade Gun Inventory"] or Settings["Kill Boss"] or Settings["Kill Mob"] or Settings["Auto UP Observation V2"] or Settings["Auto New World"] or Settings["Auto Third World"] or Settings["Tween Safe if have Items"] or Settings["Teleport Frozen Dimension"] or Settings["Auto Yoru Mini"] or Settings["Auto Quest Dojo Trainer"] or Settings["Auto Quest Dragon Hunter"] or Settings["Auto Crafting Volcanic Magnet"] or Settings["Auto Find Prehistoric Island"] or Settings["Auto Find Mirage"] or Settings["Auto Event Prehistoric Island"] or Settings["Auto Collect Bone"] or Settings["Auto Collect Berry"] or Settings["Auto Upgrade Race V2-V3 Draco"] or Settings["Auto Trial Draco"] or Settings["Auto Get Rainbow Haki"] or Settings["Follow Player Select"] or Settings["Auto Tween To Prehistoric Island"] or Settings["Auto Kill Golem"] or Settings["Auto Fix Volcano"] or Settings["Multi Find Leviathan"] or Settings["Fully Event Prehistoric Island"] or Settings["Auto Multi Raid"] or Settings["Auto Fire Shoot Heart Leviathan"] or Settings["Auto Buy Chip and Attack Law"] or Settings["Fully Trial Draco"] or Settings["Auto Finish Train Quest"] or Settings["Auto Destroy IDK"] or Settings["Auto Finish Train Draco Quest"] or Settings["Auto TTK"] or Settings["Auto Attack All Mob and Boss"] or Settings["Auto Collect Egg"] or Settings["Collect Chest When Server Spawn God's Chalice or Fist of Darkness"] then
		return true
	end
end

local TweenService = game:GetService("TweenService")

getgenv().TweenManager = {
	currentTween = nil,
	currentPart = nil,
	currentGoal = nil,
	TweenRunning = false,
	CancelTweenOnly = function()
		local currentTween = TweenManager.currentTween
		local tween = getgenv().Tween

		if currentTween then
			pcall(function()
				currentTween:Cancel()
				currentTween:Destroy()
			end)
		end

		if tween and tween ~= currentTween then
			pcall(function()
				tween:Cancel()
				tween:Destroy()
			end)
		end

		TweenManager.currentTween = nil
		TweenManager.currentPart = nil
		TweenManager.currentGoal = nil
		TweenManager.TweenRunning = false
		getgenv().Tween = nil
	end,
	PlayTween = function(currentPart, arg, arg2, arg3)
		if not currentPart or not arg or not arg2 or not arg2.CFrame then
			return
		end

		if TweenManager.currentTween and TweenManager.currentPart == currentPart and TweenManager.currentGoal and ((arg3 or {}).TargetEpsilon or 12) >= (TweenManager.currentGoal.Position - arg2.CFrame.Position).Magnitude then
			return TweenManager.currentTween
		end
		TweenManager.CancelTweenOnly()
		local tween = TweenService:Create(currentPart, arg, arg2)
		TweenManager.currentTween = tween
		TweenManager.currentPart = currentPart
		TweenManager.currentGoal = arg2.CFrame
		TweenManager.TweenRunning = true
		getgenv().Tween = tween

		tween.Completed:Connect(function()
			if TweenManager.currentTween == tween then
				TweenManager.currentTween = nil
				TweenManager.currentPart = nil
				TweenManager.currentGoal = nil
				TweenManager.TweenRunning = false
				getgenv().Tween = nil

				pcall(function()
					tween:Destroy()
				end)
			end
		end)

		tween:Play()
		return tween
	end,
	CancelCurrent = function()
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		TweenManager.CancelTweenOnly()

		pcall(function()
			if not character then
				return
			end

			for _, descendant in ipairs(character:GetDescendants()) do
				if descendant:IsA("BasePart") then
					descendant.CanCollide = true
				end
			end

			local humanoid = character:FindFirstChildOfClass("Humanoid")

			if humanoid then
				humanoid.PlatformStand = false
			end

			if humanoidRootPart then
				if humanoidRootPart:FindFirstChild("FloatForce") then
					humanoidRootPart.FloatForce:Destroy()
				end

				humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
				humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
			end
		end)

		if getgenv().TweenBoat then
			pcall(function()
				getgenv().TweenBoat:Cancel()
			end)

			getgenv().TweenBoat = nil
		end

		if getgenv().TweenBoatToFrozen then
			pcall(function()
				getgenv().TweenBoatToFrozen:Cancel()
			end)

			getgenv().TweenBoatToFrozen = nil
		end

		if getgenv().TweenBoatBack then
			pcall(function()
				getgenv().TweenBoatBack:Cancel()
			end)

			getgenv().TweenBoatBack = nil
		end

		if type(CancelTweenBoat) == "function" then
			pcall(CancelTweenBoat)
		end
	end,
}

TweenManager = getgenv().TweenManager
local tbl14 = {}
local CollectionService = game:GetService("CollectionService")
local n8 = 0
local flag = false

local function fn4()
	n8 = tick() + 1.5

	if not CollectionService:HasTag(localPlayer, "Teleporting") then
		CollectionService:AddTag(localPlayer, "Teleporting")
		flag = true
	end
end

task.spawn(function()
	while task.wait(0.1) do
		if flag and tick() >= n8 then
			CollectionService:RemoveTag(localPlayer, "Teleporting")
			flag = false
		end
	end
end)

spawn(function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables")
	local response

	repeat
		task.wait()
		response = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables")
	until response

	if response.DefeatedIndraTrueForm and game.PlaceId == getgenv().CheckPlaceId then
		tbl14["Caslte On The Sea"] = Vector3.new(-4967.6826, 314.8824, -3157.0984)
		tbl14.Hydra = Vector3.new(5661.5303, 1013.4113, -334.9619)
		tbl14.Mansion = Vector3.new(-12463.874, 374.91446, -7523.774)
	end

	if game.PlaceId == getgenv().CheckPlaceId then
		tbl14["Temple Clock"] = Vector3.new(28282.57, 14896.851, 105.10427)
	end

	if game.PlaceId == getgenv().CheckPlaceId2 then
		tbl14["122"] = Vector3.new(923.2125, 126.976006, 32852.832)
		tbl14["3032"] = Vector3.new(-6508.558, 89.034996, -132.83954)
	end

	if response.FlamingoAccess and game.PlaceId == getgenv().CheckPlaceId2 then
		tbl14.Mansion = Vector3.new(-288.46246, 306.1306, 597.99884)
		tbl14.Flamingo = Vector3.new(2284.912, 15.152046, 905.4829)
	end

	if game.PlaceId == getgenv().CheckPlaceId3 then
		tbl14 = {
			["1"] = Vector3.new(-7894.62, 5545.4917, -380.24673),
			["2"] = Vector3.new(-4607.8228, 872.5423, -1667.5569),
			["3"] = Vector3.new(61163.85, 11.759522, 1819.7842),
			["4"] = Vector3.new(3876.2805, 35.10614, -1939.3202),
		}
	end
end)

game:GetService("Players")
game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")

local function fn5()
	local devilFruit = localPlayer.Data:FindFirstChild("DevilFruit")
	if not devilFruit or devilFruit.Value ~= "Portal-Portal" then
		return false
	end
	local skills = localPlayer and localPlayer:FindFirstChild("PlayerGui") and localPlayer.PlayerGui:FindFirstChild("Main") and localPlayer.PlayerGui.Main:FindFirstChild("Skills")
	skills = skills and skills:FindFirstChild(devilFruit.Value)
	local c = skills and skills:FindFirstChild("C")

	if not c or not c:IsA("Frame") then
		local portalPortal = localPlayer.Character:FindFirstChild("Portal-Portal") or localPlayer.Backpack:FindFirstChild("Portal-Portal")
		if not portalPortal then
			return false
		end
		local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			humanoid:EquipTool(portalPortal)
		end

		return false
	end

	local cooldown = c:FindFirstChild("Cooldown")
	return c.Title.TextColor3 == Color3.new(1, 1, 1) and (cooldown.Size == UDim2.new(0, 0, 1, -1) or cooldown.Size == UDim2.new(1, 0, 1, -1))
end

local function fn6(arg)
	local portalPortal = localPlayer.Character:FindFirstChild("Portal-Portal") or localPlayer.Backpack:FindFirstChild("Portal-Portal")
	if not portalPortal then
		return false
	end
	local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		humanoid:EquipTool(portalPortal)
	end

	local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")
	local gateway = playerGui and playerGui:FindFirstChild("Main") and playerGui.Main:FindFirstChild("Gateway")
	if not gateway then
		return false
	end
	VirtualInputManager:SendKeyEvent(true, "C", false, game)
	VirtualInputManager:SendKeyEvent(false, "C", false, game)
	local n9 = tick() + 3

	while true do
		task.wait(0.1)
		if not (gateway.Visible or tick() > n9) then
			continue
		end
		break
	end

	if not gateway.Visible then
		return false
	end
	local mainContent = gateway:FindFirstChild("MainContent")
	if not mainContent then
		return false
	end
	local v12 = mainContent.ScrollingFrame:FindFirstChild(tostring(arg))

	if v12 and v12.MouseButton1Click then
		for _, v13 in pairs(getconnections(v12.MouseButton1Click)) do
			pcall(function()
				v13.Function()
			end)
		end

		return true
	end

	return false
end

local vector = Vector3.new(28282.57, 14896.851, 105.10427)

local function fn7()
	local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
	return humanoidRootPart ~= nil and (humanoidRootPart.Position - vector).Magnitude < 1000
end

BorrowTempleOfTime = function()
	local templeOfTime = game.ReplicatedStorage.MapStash:FindFirstChild("Temple of Time")
	if not templeOfTime then
		return
	end
	templeOfTime:SetAttribute("ClientBorrowed", true)
	templeOfTime.Parent = workspace.Map

	task.spawn(function()
		local n9 = tick() + 30

		while true do
			task.wait(0.25)
			if not (templeOfTime.Parent ~= workspace.Map or fn7() or tick() > n9) then
				continue
			end
			break
		end

		templeOfTime:SetAttribute("ClientBorrowed", nil)

		if not fn7() and templeOfTime.Parent == workspace.Map then
			templeOfTime.Parent = game.ReplicatedStorage.MapStash
		end
	end)
end

GetTempleOfTime = function()
	local templeOfTime = workspace.Map:FindFirstChild("Temple of Time")
	if templeOfTime and not templeOfTime:GetAttribute("ClientBorrowed") then
		return templeOfTime
	end
end

local flag2 = false

getgenv().IsPlayerDead = function()
	if not localPlayer.Character or not localPlayer.Character:FindFirstChild("Humanoid") or localPlayer.Character.Humanoid.Health == 0 then
		return true
	end
end

CS = game:GetService("CollectionService")
cam = workspace.CurrentCamera

LoadIslandByFakePoint = function(arg)
	local part = Instance.new("Part")
	part.Transparency = 1
	part.CanCollide = false
	part.Anchored = true
	part.Size = Vector3.zero
	part.CFrame = CFrame.new(arg:GetPivot().Position)
	CS:AddTag(part, "LoDPosition")
	part.Parent = cam
	return part
end

spawn(function()
	pcall(function()
		for _, child in ipairs(workspace:GetChildren()) do
			if child:IsA("Model") and child:GetAttribute("LevelOfDetailDiameter") then
				LoadIslandByFakePoint(child)
			end
		end

		for _, child in ipairs(workspace.Map:GetChildren()) do
			if child:IsA("Model") then
				LoadIslandByFakePoint(child)
			end
		end

		for _, child in ipairs(game:GetService("ReplicatedStorage").FakeIslands:GetChildren()) do
			if child:IsA("Model") then
				LoadIslandByFakePoint(child)
			end
		end
	end)
end)

getgenv().TweenGuidePart = nil
getgenv().TweenConnection = nil
getgenv().TweenInProgress = false
getgenv().lastTarget = nil

local function fn8(arg)
	if not arg then
		return nil
	end
	local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
	if not locations then
		return nil
	end
	local v12 = nil
	local v13 = nil

	for _, child in ipairs(locations:GetChildren()) do
		if child:IsA("BasePart") and not child:GetAttribute("IgnoreInTracking") then
			local magnitude = (child.Position - arg).Magnitude

			if not v12 or magnitude < v12 then
				v12 = magnitude
				v13 = child
			end
		end
	end

	return v13
end

local function fn9(arg)
	if not arg then
		return nil
	end
	local v12 = fn8(arg)
	if not v12 then
		return nil
	end
	local mesh = v12:FindFirstChild("Mesh")

	if mesh then
		if (v12.Position - arg).Magnitude <= mesh.Scale.X / 2 then
			return v12
		end
		return nil
	end

	return v12
end

DetectNpcOni = function()
	local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return
	end
	local v12 = next
	local tbl15 = {}
	local npCs = workspace.NPCs
	local npCs2 = game:GetService("ReplicatedStorage").NPCs
	tbl15[1] = npCs
	tbl15[2] = npCs2
	local huge = math.huge
	local v13 = nil

	for _, v14 in v12, tbl15, nil do
		local v15 = next
		local children, v16 = v14:GetChildren()

		for _, v17 in v15, children, v16 do
			if v17:GetAttribute("NPCLoaded") and v17:GetAttribute("NPCReady") and v17:GetAttribute("DisplayName") == "Celestial Member" and v17:FindFirstChild("HumanoidRootPart") then
				local magnitude = (humanoidRootPart.Position - v17.HumanoidRootPart.Position).Magnitude

				if magnitude < huge then
					huge = magnitude
					v13 = v17
				end
			end
		end
	end

	return v13, huge
end

CelestialDomainController = nil

pcall(function()
	CelestialDomainController = v5(game:GetService("ReplicatedStorage").Controllers.MapServices.CelestialDomainController)
end)

LocalPlayer = localPlayer
game:GetService("ReplicatedStorage")
WorldOrigin = workspace:WaitForChild("_WorldOrigin", 10)
travelFunctions = {}
PlayerSpawnsLot = {}
BypassTpLocation = {}
PlrData = game:GetService("Players").LocalPlayer.Data
localPlayerFunctions = {}

localPlayerFunctions.IsAlive = function()
	local character = LocalPlayer.Character
	if not character then
		return false
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return false
	end
	return humanoid.Health > 0
end

getHRP = function()
	local character = LocalPlayer.Character
	if not character then
		return nil
	end
	return character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso")
end

travelFunctions.GetDistance = function(arg, arg2)
	if not localPlayerFunctions.IsAlive() then
		return math.huge
	end

	if not arg2 then
		local v12 = getHRP()
		if not v12 then
			return math.huge
		end
		arg2 = v12.Position
	end

	return (arg - arg2).Magnitude
end

travelFunctions.LoadBypassTPLocation = function()
	table.clear(PlayerSpawnsLot)
	table.clear(BypassTpLocation)
	local playerSpawns = WorldOrigin:FindFirstChild("PlayerSpawns")
	local locations = WorldOrigin:FindFirstChild("Locations")
	if not playerSpawns or not locations then
		return
	end

	for _, child in ipairs(playerSpawns:GetChildren()) do
		for _, child2 in ipairs(child:GetChildren()) do
			if child2:IsA("Model") then
				table.insert(PlayerSpawnsLot, { child2.Name, child2:GetModelCFrame() })
			end
		end

		child.ChildAdded:Connect(function(child2)
			task.wait()

			if child2:IsA("Model") then
				table.insert(PlayerSpawnsLot, { child2.Name, child2:GetModelCFrame() })
			end
		end)
	end

	local function fn10(arg)
		if not arg:IsA("BasePart") then
			return
		end
		BypassTpLocation[arg.Name] = {}
		local specialMesh = arg:FindFirstChildWhichIsA("SpecialMesh")
		local n9 = arg.Size.X * (specialMesh and specialMesh.Scale.X or 1) / 2

		for _, v12 in ipairs(PlayerSpawnsLot) do
			if (v12[2].Position - arg.Position).Magnitude <= n9 then
				table.insert(BypassTpLocation[arg.Name], v12)
			end
		end
	end

	for _, child in ipairs(locations:GetChildren()) do
		fn10(child)
	end

	locations.ChildAdded:Connect(function(child)
		task.wait(3)
		fn10(child)
	end)
end

travelFunctions.GetTPLocation = function(arg)
	local locations = WorldOrigin:FindFirstChild("Locations")
	if not locations then
		return nil
	end
	local huge = math.huge
	local v12 = nil

	for _, child in ipairs(locations:GetChildren()) do
		local v13 = BypassTpLocation[child.Name]

		if v13 then
			local specialMesh = child:FindFirstChildWhichIsA("SpecialMesh")

			if child.Size.X * (specialMesh and specialMesh.Scale.X or 1) / 2 >= travelFunctions.GetDistance(arg, child.Position) then
				for _, v14 in ipairs(v13) do
					local v15 = travelFunctions.GetDistance(arg, v14[2].Position)

					if v15 < huge then
						v12 = v14[1]
						huge = v15
					end
				end
			end
		end
	end

	return v12
end

travelFunctions.TweenBypass = function(arg, arg2)
	local n9 = arg2 or 0
	if n9 >= 5 then
		return
	end

	local ok, result = pcall(function()
		if not arg then
			return
		end

		if not next(BypassTpLocation) then
			travelFunctions.LoadBypassTPLocation()
		end

		local character = LocalPlayer.Character
		if not character then
			return
		end

		if not getHRP() then
			return
		end
		local tbl15 = {}

		for _, v12 in pairs(BypassTpLocation) do
			for _, v13 in ipairs(v12) do
				if not table.find(tbl15, v13[2]) then
					table.insert(tbl15, v13[2])
				end
			end
		end

		if #tbl15 == 0 then
			return
		end

		table.sort(tbl15, function(arg3, arg4)
			local position = arg4.Position
			return travelFunctions.GetDistance(arg3.Position, arg.Position) < travelFunctions.GetDistance(position, arg.Position)
		end)

		local lastSpawnPoint = character:FindFirstChild("LastSpawnPoint")

		if lastSpawnPoint then
			lastSpawnPoint.Disabled = true
		end

		task.wait()

		for _, v12 in ipairs(tbl15) do
			local v13 = travelFunctions.GetTPLocation(v12.Position)

			if v13 then
				local v14 = travelFunctions.GetDistance(v12.Position, arg.Position)

				if travelFunctions.GetDistance(arg.Position) > v14 + 500 and travelFunctions.GetDistance(v12.Position) >= 1000 then
					CommF:InvokeServer("SetLastSpawnPoint", v13)

					if PlrData.LastSpawnPoint.Value == v13 then
						character.Humanoid.Health = 0

						repeat
							task.wait()
						until localPlayerFunctions.IsAlive()

						if lastSpawnPoint then
							lastSpawnPoint.Disabled = false
						end

						travelFunctions.TweenBypass(arg, n9 + 1)
						return true
					end
				end
			end
		end

		if lastSpawnPoint then
			lastSpawnPoint.Disabled = false
		end
	end)

	if not ok then
		warn("[TweenBypass ERROR]:", result)
	end

	return false
end

ShouldResetTeleportSmart = function(arg)
	if not Settings["Reset Teleport"] then
		return false
	end

	if flag2 or ReadyToDodge then
		return false
	end
	local v12 = getHRP()
	if not v12 then
		return false
	end
	local v13 = fn9(arg.Position)
	local v14 = fn9(v12.Position)
	if not v13 then
		return true
	end

	if v14 and v13 and v14.Name == v13.Name then
		return false
	end
	return true
end

task.spawn(function()
	travelFunctions.LoadBypassTPLocation()
end)

BypassTp = travelFunctions

local function fn10(parent)
	if not parent or parent:FindFirstChild("FloatForce") then
		return
	end
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.Name = "FloatForce"
	bodyVelocity.Velocity = Vector3.zero
	bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
	bodyVelocity.P = 10000
	bodyVelocity.Parent = parent
end

local RunService = game:GetService("RunService")
local tbl15 = { LastTP = 0, LastCF = nil, ActiveConnection = nil, LastCall = 0 }
local n9 = 40

local function fn11()
	local charSpeed = getgenv().CharSpeed

	if not charSpeed then
		charSpeed = { cap = 1000, nextRaise = 0 }
		getgenv().CharSpeed = charSpeed
	end

	return charSpeed
end

local function fn12(currentPart, lastCF, arg, arg2)
	if tick() - (getgenv().LastToggleCancelTime or 0) < 0.8 then
		return
	end

	if not currentPart or typeof(lastCF) ~= "CFrame" then
		return
	end
	local character = localPlayer.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not character or currentPart.Parent ~= character or not humanoid or humanoid.Health <= 0 then
		return
	end

	if currentPart.Anchored then
		pcall(function()
			currentPart.Anchored = false
		end)
	end

	local lastTP = tbl15.LastTP
	if tick() - lastTP < 1 and lastCF == tbl15.LastCF then
		return
	end
	TweenManager.CancelTweenOnly()

	if tbl15.ActiveConnection and coroutine.status(tbl15.ActiveConnection) == "suspended" then
		pcall(coroutine.close, tbl15.ActiveConnection)
	end

	local n10 = math.max(tonumber(arg) or 350, 1)
	local n11 = tonumber(arg2) or 2.5
	tbl15.LastTP = tick()
	tbl15.LastCF = lastCF
	local flag3 = false
	local thread = nil
	local currentTween = {}

	local function fn13()
		if tbl15.ActiveConnection == thread then
			tbl15.ActiveConnection = nil
		end

		if TweenManager.currentTween == currentTween then
			TweenManager.currentTween = nil
			TweenManager.currentPart = nil
			TweenManager.currentGoal = nil
			TweenManager.TweenRunning = false
		end

		if getgenv().Tween == currentTween then
			getgenv().Tween = nil
		end
	end

	currentTween.Pause = function()
		flag3 = true

		if thread and coroutine.status(thread) == "suspended" then
			pcall(coroutine.close, thread)
		end
	end

	currentTween.Cancel = function(arg3)
		arg3:Pause()
		fn13()
	end

	currentTween.Destroy = function(arg3)
		arg3:Cancel()
	end

	thread = coroutine.create(function()
		local position = currentPart.Position
		local position2 = lastCF.Position
		local magnitude = (position2 - position).Magnitude
		local now = tick()
		local huge = math.huge
		local flag4 = true
		local n12 = nil
		local v12

		while not flag3 do
			local character2 = localPlayer.Character
			local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")

			if not (character2 ~= character or currentPart.Parent ~= character2 or not humanoid2 or humanoid2.Health <= 0 or currentPart.Anchored or magnitude <= n11) then
				local result = RunService.Heartbeat:Wait()
				local v13 = fn11()
				local position3 = currentPart.Position
				local magnitude2 = (position2 - position3).Magnitude

				if magnitude2 < huge - 5 then
					now = tick()
					huge = magnitude2
				elseif tick() - now > 2.5 then
					flag4 = false
				end

				if flag4 and n12 and v12 and magnitude2 > v12 + n9 then
					v13.cap = math.max(v13.cap * 0.7, 120)
					v13.nextRaise = tick() + 3
				elseif not (flag4 and n12 and (position3 - n12).Magnitude > n9) then
					position3 = position
				end

				local n13 = position2 - position3
				local magnitude3 = n13.Magnitude
				local n14 = math.min(math.min(n10, v13.cap) * result, 18)
				local flag5 = magnitude3 > n14

				if flag5 then
					local nextRaise = v13.nextRaise
					flag5 = tick() >= nextRaise
				end

				if flag5 then
					v13.cap = math.min(v13.cap * 1.08, n10)
					v13.nextRaise = tick() + 1.5
				end

				if magnitude3 <= n14 or magnitude3 <= 0.05 then
					n12 = position2
				else
					n12 = position3 + n13 / magnitude3 * n14
				end

				magnitude = (position2 - n12).Magnitude
				fn4()
				getgenv().noclip = true
				currentPart.CFrame = CFrame.new(n12)
				currentPart.AssemblyLinearVelocity = Vector3.zero
				currentPart.AssemblyAngularVelocity = Vector3.zero
				v12 = magnitude2
				position = n12
				continue
			end

			break
		end

		if not flag3 and currentPart.Parent == localPlayer.Character and (position2 - currentPart.Position).Magnitude <= n11 then
			currentPart.CFrame = lastCF
			currentPart.AssemblyLinearVelocity = Vector3.zero
			currentPart.AssemblyAngularVelocity = Vector3.zero
		end

		fn13()
	end)

	tbl15.ActiveConnection = thread
	TweenManager.currentTween = currentTween
	TweenManager.currentPart = currentPart
	TweenManager.currentGoal = lastCF
	TweenManager.TweenRunning = true
	getgenv().Tween = currentTween
	if not coroutine.resume(thread) then
		currentTween:Cancel()
		return
	end
	return currentTween
end

error("devirt: value <luasym.LuaFunc object at 0x000002C76E051F00> in an expression (at 213:4546)")
