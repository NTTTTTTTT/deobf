if not ({
	[2753915549] = true,
	[85211729168715] = true,
	[4442272183] = true,
	[79091703265657] = true,
	[7449423635] = true,
	[100117331123089] = true,
})[game.PlaceId] then
	return
end

local str = "https://shoptrauroblox.site/api.php"
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local request_ = request or http_request or syn and syn.request or fluxus and fluxus.request or http and http.request
local localPlayer = Players.LocalPlayer

if not localPlayer.Character then
	localPlayer.CharacterAdded:Wait()
end

local str2 = "f4e4f869d342073e1fd91796b1d0f7e344f533eeada1fb9fe7c1d3a3f6d95895"
local flag = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089

local function fn(arg)
	local tbl = {}
	local n = 0

	for i = 1, #arg, 3 do
		local v, n2, n3 = arg:byte(i, i + 2)
		n2 = n2 or 0
		n3 = n3 or 0

		if #arg < i + 1 then
			n = 2
		elseif i + 2 > #arg then
			n = 1
		end

		local n4 = v * 65536 + n2 * 256 + n3
		tbl[#tbl + 1] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n4 / 262144) % 64 + 1, math.floor(n4 / 262144) % 64 + 1)
		tbl[#tbl + 1] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n4 / 4096) % 64 + 1, math.floor(n4 / 4096) % 64 + 1)
		tbl[#tbl + 1] = n >= 2 and "=" or ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n4 / 64) % 64 + 1, math.floor(n4 / 64) % 64 + 1)
		tbl[#tbl + 1] = n >= 1 and "=" or ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(n4 % 64 + 1, n4 % 64 + 1)
	end

	return table.concat(tbl)
end

local tbl = {
	1116352408,
	1899447441,
	3049323471,
	3921009573,
	961987163,
	1508970993,
	2453635748,
	2870763221,
	3624381080,
	310598401,
	607225278,
	1426881987,
	1925078388,
	2162078206,
	2614888103,
	3248222580,
	3835390401,
	4022224774,
	264347078,
	604807628,
	770255983,
	1249150122,
	1555081692,
	1996064986,
	2554220882,
	2821834349,
	2952996808,
	3210313671,
	3336571891,
	3584528711,
	113926993,
	338241895,
	666307205,
	773529912,
	1294757372,
	1396182291,
	1695183700,
	1986661051,
	2177026350,
	2456956037,
	2730485921,
	2820302411,
	3259730800,
	3345764771,
	3516065817,
	3600352804,
	4094571909,
	275423344,
	430227734,
	506948616,
	659060556,
	883997877,
	958139571,
	1322822218,
	1537002063,
	1747873779,
	1955562222,
	2024104815,
	2227730452,
	2361852424,
	2428436474,
	2756734187,
	3204031479,
	3329325298,
}

local function fn2(arg)
	local band = bit32.band
	local band2 = bit32.band
	return string.char(bit32.rshift(arg, 24), bit32.band(bit32.rshift(arg, 16), 255), band(bit32.rshift(arg, 8), 255), band2(arg, 255))
end

local function fn3(arg)
	local n = #arg * 8
	local str3 = arg .. "\128" .. string.rep("\0", (55 - #arg) % 64) .. fn2(math.floor(n / 4294967296)) .. fn2(n)
	local tbl2 = { 1779033703, 3144134277, 1013904242, 2773480762, 1359893119, 2600822924, 528734635, 1541459225 }

	for i = 1, #str3, 64 do
		local tbl3 = {}

		for i2 = 0, 15 do
			local v, v2, v3, v4 = str3:byte(i + i2 * 4, i + i2 * 4 + 3)
			tbl3[i2] = v * 16777216 + v2 * 65536 + v3 * 256 + v4
		end

		for i2 = 16, 63 do
			local v = tbl3[i2 - 15]
			local v2 = tbl3[i2 - 2]
			local rshift = bit32.rshift
			local rshift2 = bit32.rshift
			tbl3[i2] = (tbl3[i2 - 16] + bit32.bxor(bit32.rrotate(v, 7), bit32.rrotate(v, 18), rshift(v, 3)) + tbl3[i2 - 7] + bit32.bxor(bit32.rrotate(v2, 17), bit32.rrotate(v2, 19), rshift2(v2, 10))) % 4294967296
		end

		local value, v, v2, v3, v4, v5, v6, v7 = unpack(tbl2)

		for i2 = 0, 63 do
			local n2 = (v7 + bit32.bxor(bit32.rrotate(v4, 6), bit32.rrotate(v4, 11), bit32.rrotate(v4, 25)) + bit32.bxor(bit32.band(v4, v5), bit32.band(bit32.bnot(v4), v6)) + tbl[i2 + 1] + tbl3[i2]) % 4294967296
			local bxor = bit32.bxor
			local n3 = (bit32.bxor(bit32.rrotate(value, 2), bit32.rrotate(value, 13), bit32.rrotate(value, 22)) + bxor(bit32.band(value, v), bit32.band(value, v2), bit32.band(v, v2))) % 4294967296
			local n4 = (v3 + n2) % 4294967296
			v7 = v6
			v3 = v2
			v6 = v5
			v2 = v
			v5 = v4
			v = value
			v4 = n4
			value = (n2 + n3) % 4294967296
		end

		local tbl4 = { value, v, v2, v3, v4, v5, v6, v7 }

		for i2 = 1, 8 do
			tbl2[i2] = (tbl2[i2] + tbl4[i2]) % 4294967296
		end
	end

	local tbl3 = {}

	for i = 1, 8 do
		tbl3[i] = fn2(tbl2[i])
	end

	return table.concat(tbl3)
end

local function fn4(arg)
	local str3 = str2 .. string.rep("\0", 64 - #str2)
	local tbl2 = {}
	local tbl3 = {}

	for i = 1, 64 do
		tbl2[i] = string.char(bit32.bxor(str3:byte(i), 54))
		tbl3[i] = string.char(bit32.bxor(str3:byte(i), 92))
	end

	return fn3(table.concat(tbl3) .. fn3(table.concat(tbl2) .. arg))
end

local function fn5(arg)
	local str3 = tostring(arg or "")
	return tostring(#str3) .. ":" .. str3
end

local str3 = tostring(game.JobId or "")
local tbl2 = {}

local function fn6(arg)
	if not request_ then
		return
	end

	task.spawn(function()
		pcall(function()
			local str4 = tostring(os.time())

			request_({
				Url = str,
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json",
					["User-Agent"] = "Roblox/MicrosoftApp",
					["X-Auth-Time"] = str4,
					["X-Auth-Token"] = fn(fn4(fn5(str4) .. fn5(arg.jobId) .. fn5(arg.placeId) .. fn5(arg.type) .. fn5(arg.name) .. fn5(arg.deleted and 1 or 0))):gsub("%+", "-"):gsub("/", "_"):gsub("=", ""),
				},
				Body = HttpService:JSONEncode(arg),
			})
		end)
	end)
end

local function fn7(arg, arg2, arg3)
	local str4 = arg2 .. (arg3 or "")
	if tbl2[str4] then
		return
	end
	tbl2[str4] = true
	fn6({ type = arg, name = arg2, jobId = str3, placeId = game.PlaceId or 0 })
end

local function fn8(arg, arg2)
	local str4 = arg .. (arg2 or "")
	if not tbl2[str4] then
		return
	end
	tbl2[str4] = nil
	fn6({ deleted = true, name = arg, jobId = str3, placeId = game.PlaceId or 0 })
end

task.spawn(function()
	while task.wait(5) do
		pcall(function()
			local locations = Workspace:FindFirstChild("_WorldOrigin") and Workspace._WorldOrigin:FindFirstChild("Locations")
			local attribute = nil

			if locations then
				attribute = nil

				for _, child in ipairs(locations:GetChildren()) do
					attribute = child:GetAttribute("TimeIn")
					if type(attribute) ~= "number" then
						continue
					end
					break
				end
			end

			attribute = attribute and os.time() - attribute

			if attribute and attribute >= 14400 and attribute < 16200 then
				fn7("Server", "Server 4 Hours")
			else
				fn8("Server 4 Hours")
			end
		end)
	end
end)

local function fn9(arg)
	local flag2 = type(arg) == "table"
	local v = ipairs
	local children = Workspace:FindFirstChild("Enemies") and Workspace.Enemies:GetChildren() or {}

	for _, child in v(children) do
		local isModel = child:IsA("Model")
		local flag3

		if isModel then
			local v2 = flag2 and table.find(arg, child.Name)

			if v2 then
				flag3 = v2
			else
				flag3 = not flag2 and child.Name == arg
			end
		else
			flag3 = isModel
		end

		if flag3 then
			local humanoid = child:FindFirstChild("Humanoid")
			if humanoid and humanoid.Health > 0 and child:FindFirstChild("HumanoidRootPart") then
				return true
			end
		end
	end

	for _, child in ipairs(ReplicatedStorage:GetChildren()) do
		if child:IsA("Model") and (flag2 and table.find(arg, child.Name) or not flag2 and child.Name == arg) then
			local humanoid = child:FindFirstChild("Humanoid")
			if humanoid and humanoid.Health > 0 and child:FindFirstChild("HumanoidRootPart") then
				return true
			end
		end
	end

	return false
end

local tbl3 = { "Sweet Chalice", "Fist of Darkness", "God's Chalice" }

local function fn10(arg)
	for _, player in ipairs(Players:GetPlayers()) do
		local backpack = player:FindFirstChild("Backpack")
		local character = player.Character
		if backpack and backpack:FindFirstChild(arg) or character and character:FindFirstChild(arg) then
			return true
		end
	end

	return false
end

local flag2 = false
local n = 0

local tbl4 = {
	"Galley Pirate",
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
	"Swan Pirate",
}

local function fn11()
	if not flag then
		return false
	end
	local localPlayer2 = game:GetService("Players").LocalPlayer
	localPlayer2 = localPlayer2 and localPlayer2:FindFirstChild("PlayerGui")
	localPlayer2 = localPlayer2 and localPlayer2:FindFirstChild("Notifications")

	if localPlayer2 then
		for _, child in pairs(localPlayer2:GetChildren()) do
			if child:IsA("TextLabel") and child.Text then
				local v = string.lower(child.Text)

				if string.find(v, "pirates have been spotted") or string.find(v, "pirates are raiding") then
					flag2 = true
					n = os.time()
				elseif string.find(v, "stopped raiding") or string.find(v, "good job") then
					flag2 = false
				end
			end
		end
	end

	if fn9(tbl4) then
		flag2 = true
		n = os.time()
	end

	if flag2 and os.time() - n > 500 then
		flag2 = false
	end

	return flag2
end

task.spawn(function()
	while true do
		pcall(function()
			for _, v in ipairs(tbl3) do
				if fn10(v) then
					fn7("Item", v)
				else
					fn8(v)
				end
			end
		end)

		task.wait(5)
	end
end)

task.spawn(function()
	local tbl5 = {
		"Tyrant of the Skies",
		"rip_indra",
		"Dough King",
		"Diablo",
		"Deandre",
		"Urban",
		"rip_indra True Form",
		"Cake Prince",
		"Darkbeard",
		"Cursed Captain",
		"Soul Reaper",
		"Core",
		"Cake Queen",
	}

	while true do
		pcall(function()
			local worldOrigin = Workspace:FindFirstChild("_WorldOrigin")
			worldOrigin = worldOrigin and worldOrigin:FindFirstChild("Locations")
			local map = Workspace:FindFirstChild("Map")

			for _, v in ipairs({ "Mirage Island", "Prehistoric Island" }) do
				if worldOrigin and worldOrigin:FindFirstChild(v) then
					fn7("Island", v)
				else
					fn8(v)
				end
			end

			if map and map:FindFirstChild("KitsuneIsland") then
				fn7("Island", "Kitsune Island")
			else
				fn8("Kitsune Island")
			end

			for _, v in ipairs(tbl5) do
				if not ((v == "rip_indra" or v == "rip_indra True Form") and not flag) then
					if fn9(v) then
						fn7("Boss", v)
					else
						fn8(v)
					end
				end
			end

			if flag then
				if fn11() then
					fn7("Event", "Pirate Raid")
				else
					fn8("Pirate Raid")
				end

				local clockTime = Lighting.ClockTime
				local moonTextureId = Lighting.Sky.MoonTextureId
				local n2 = moonTextureId == "http://www.roblox.com/asset/?id=9709149052" and (clockTime <= 12 and 18 - clockTime or 30 - clockTime) or moonTextureId == "http://www.roblox.com/asset/?id=9709149431" and clockTime > 12 and clockTime <= 18 and 18 - clockTime
				n2 = n2 and n2 <= 6
				local flag3 = moonTextureId == "http://www.roblox.com/asset/?id=9709149431" and (clockTime <= 5 or clockTime > 18)

				if n2 then
					fn7("Event", "Near Full Moon")
					fn8("Full Moon 5/5")
				elseif flag3 then
					fn7("Event", "Full Moon 5/5")
					fn8("Near Full Moon")
				else
					fn8("Near Full Moon")
					fn8("Full Moon 5/5")
				end
			end
		end)

		task.wait(7)
	end
end)

task.spawn(function()
	local flag3 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657

	while true do
		pcall(function()
			if flag3 then
				local remotes = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
				remotes = remotes and remotes:FindFirstChild("CommF_")

				if remotes then
					local response = remotes:InvokeServer("LegendarySwordDealer", "1")

					if response == "Shizu" then
						fn7("Sword", "Shizu")
						fn8("Oroshi")
						fn8("Saishi")
					elseif response == "Oroshi" then
						fn7("Sword", "Oroshi")
						fn8("Shizu")
						fn8("Saishi")
					elseif response == "Saishi" then
						fn7("Sword", "Saishi")
						fn8("Shizu")
						fn8("Oroshi")
					else
						fn8("Shizu")
						fn8("Oroshi")
						fn8("Saishi")
					end
				end
			end
		end)

		task.wait(6)
	end
end)

task.spawn(function()
	local tbl5 = {}

	while task.wait(5) do
		pcall(function()
			local tbl6 = {}

			for _, child in ipairs(Workspace:GetChildren()) do
				if (child:IsA("Tool") or child:IsA("Model")) and string.find(child.Name, "Fruit") and not child:FindFirstChild("Humanoid") then
					if child:FindFirstChild("Handle") or child:FindFirstChildWhichIsA("BasePart") then
						tbl6[child.Name] = true
					end
				end
			end

			for k in pairs(tbl6) do
				if not tbl5[k] then
					fn7("Fruit", k)
				end
			end

			for k in pairs(tbl5) do
				if not tbl6[k] then
					fn8(k)
				end
			end

			tbl5 = tbl6
		end)
	end
end)

task.spawn(function()
	local tbl5 = { ["Pink Pig Berry"] = true, ["Red Cherry Berry"] = true, ["White Cloud Berry"] = true }

	while task.wait(7) do
		pcall(function()
			local tbl6 = {}

			for _, v in ipairs(game:GetService("CollectionService"):GetTagged("BerryBush")) do
				for _, v2 in pairs(v:GetAttributes()) do
					if tbl5[v2] then
						tbl6[v2] = true
					end
				end
			end

			for k in pairs(tbl5) do
				if tbl6[k] then
					fn7("Berries", k)
				else
					fn8(k)
				end
			end
		end)
	end
end)

task.spawn(function()
	while true do
		pcall(function()
			local commF = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes") and game:GetService("ReplicatedStorage").Remotes:FindFirstChild("CommF_")

			if commF then
				local response = commF:InvokeServer("ColorsDealer", "1")
				local tbl5 = { "Snow White", "Pure Red", "Winter Sky" }

				if table.find(tbl5, response) then
					fn7("Color", response)

					for _, v in ipairs(tbl5) do
						if v ~= response then
							fn8(v)
						end
					end
				else
					for _, v in ipairs(tbl5) do
						fn8(v)
					end
				end
			end
		end)

		task.wait(6)
	end
end)
