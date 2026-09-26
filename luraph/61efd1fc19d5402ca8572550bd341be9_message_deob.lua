local tbl = {
	RipIndra = "https://discord.com/api/webhooks/1306239726927351859/mPgKaCaK9jzhsZnh-HJXAEOdU3ggA31OTmQPMpZRPh3TPfB1koW_SKnGR4v3YA_JYLxK",
	DoughKing = "https://discord.com/api/webhooks/1306239726927351859/mPgKaCaK9jzhsZnh-HJXAEOdU3ggA31OTmQPMpZRPh3TPfB1koW_SKnGR4v3YA_JYLxK",
	CursedCaptain = "https://discord.com/api/webhooks/1306239726927351859/mPgKaCaK9jzhsZnh-HJXAEOdU3ggA31OTmQPMpZRPh3TPfB1koW_SKnGR4v3YA_JYLxK",
	Darkbeard = "https://discord.com/api/webhooks/1306239726927351859/mPgKaCaK9jzhsZnh-HJXAEOdU3ggA31OTmQPMpZRPh3TPfB1koW_SKnGR4v3YA_JYLxK",
	TyrantOfTheSkies = "https://discord.com/api/webhooks/1306239726927351859/mPgKaCaK9jzhsZnh-HJXAEOdU3ggA31OTmQPMpZRPh3TPfB1koW_SKnGR4v3YA_JYLxK",
	Fullmoon = "https://discord.com/api/webhooks/1306238676623425627/3NHdgjt5EPhJ-1fZRxgsZ7h4rWmqfAXvHWATT2vATiBDpS3jii6if5OSiJdCrxkgFbgs",
	NearMoon = "https://discord.com/api/webhooks/1306238991934296094/Qy90QpLSS8MIpfG91FKxgrn_MOy1ko52Eo5eBmJ1wrjnD7N0PwoUv6DpkmZsB6T5UBWp",
	Sword = "https://discord.com/api/webhooks/1306238358565158988/yKxFEFUTFpHVeONxQD_-rXTpwFTHhNpyG9FeaCfsuUk6vElKVRZ584eeg5Hz9tG_lMJc",
	Mirage = "https://discord.com/api/webhooks/1306239184117436436/IchwaJFNyq8KG5eG1TYeRXU3SX7m-wSKdBqveS4d24I-en6I_tZZD3c0HA-_j4c4egVd",
	KitsuneIsland = "https://discord.com/api/webhooks/1306239184117436436/IchwaJFNyq8KG5eG1TYeRXU3SX7m-wSKdBqveS4d24I-en6I_tZZD3c0HA-_j4c4egVd",
	PrehistoricIsland = "https://discord.com/api/webhooks/1306239184117436436/IchwaJFNyq8KG5eG1TYeRXU3SX7m-wSKdBqveS4d24I-en6I_tZZD3c0HA-_j4c4egVd",
	Fruits = "https://discord.com/api/webhooks/1306239958847328276/StUFTz_l2bkwQ6xNFTZbQOivTJEkuTVLjHVoYZVxztO3Jq2vffeq0T3w__2gW-HxZoz4",
	HakiLegendary = "https://discord.com/api/webhooks/1306238111075926026/e-_9teEpj0snPFJr1kpA8LMqI_K5PGAbSlRajRBRzEcKuMdcjT-yfVv_mUWBPSXHt-ol",
	Berry = "https://discord.com/api/webhooks/1495449192640811210/JWWNRbC41r_6R8CVzKpp7c5xcsw-_P7Asx80QO1QfdCYamiBq3Uk6r504VCtWNCBqODn",
}

local function fn(arg, arg2, arg3, arg4)
	if not (isfunctionhooked(http.request) or isfunctionhooked(http_request) or isfunctionhooked(request)) then
		pcall(function()
			local request_ = http.request
			local tbl2 = { Url = arg, Method = "POST", Headers = { ["Content-Type"] = "application/json" } }
			local HttpService = game:GetService("HttpService")
			local jsonEncode = HttpService.JSONEncode
			local tbl3 = {}
			local embeds = {}
			local tbl4 = { author = { name = "Night Hub Webhook" } }
			local fields = {}

			local tbl5 = {
				name = "Player Count",
				value = "```yaml\n" .. tostring(#game.Players:GetPlayers()) .. "/12```",
				inline = true,
			}

			local tbl6 = { name = "World", value = "```yaml\nWorld " .. arg4 .. "```", inline = true }
			local tbl7 = { name = "Name", value = "```yaml\n" .. arg3 .. "```", inline = true }
			local tbl8 = { name = "Job Id PC Copy", value = "```yaml\n" .. arg2 .. "```" }
			local tbl9 = { name = "Job Id Mobile Copy", value = "`" .. arg2 .. "`" }
			local tbl10 = { name = "Time", value = os.date("%Y-%m-%d %H:%M:%S", os.time()) }
			fields[1] = tbl5
			fields[2] = tbl6
			fields[3] = tbl7
			fields[4] = tbl8
			fields[5] = tbl9
			fields[6] = tbl10
			tbl4.fields = fields

			tbl4.thumbnail = {
				url = "https://cdn.discordapp.com/attachments/1481159425652822117/1492901169696215111/Sparxie_Laugh.gif?ex=69e63e8f&is=69e4ed0f&hm=8713614b8ddc0704b2b23baf87fc4ebe7ae3a4089aa5546dde443010f44c609e&",
			}

			embeds[1] = tbl4
			tbl3.embeds = embeds
			tbl2.Body = jsonEncode(HttpService, tbl3)
			return request_(tbl2)
		end)

		return
	end

	while true do
	end
end

local function fn2(arg, arg2)
	local ok, result = pcall(function()
		return http_request({
			Url = arg,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = game:GetService("HttpService"):JSONEncode(arg2),
		})
	end)

	if not ok then
		warn("❌ POST Failed:", result)
	else
		local match = arg:match("/boss/(.+)$")

		local v = arg2.data[1]
		;(match and match == "CursedCaptain" and "cursed" or match):lower()

		if tbl[match] then
			print(v.JobId)
			fn(tbl[match], v.JobId, v.Name and v.Name or match, tostring(workspace:GetAttribute("MAP"):match("%d")))
		end

		print("POST!")
	end
end

local function fn3(arg)
	return arg and arg.Parent and not arg:FindFirstChild("VehicleSeat") and arg:FindFirstChild("Humanoid") and arg.Humanoid.Health > 0 and arg:FindFirstChild("HumanoidRootPart")
end

local function fn4(arg)
	for _, v in pairs({ game.Workspace.Enemies, game.ReplicatedStorage }) do
		local v2 = next
		local children, v3 = v:GetChildren()

		for _, v4 in v2, children, v3 do
			if v4:IsA("Model") and (typeof(arg) == "string" and (v4.Name == arg or string.find(arg, v4.Name)) or typeof(arg) == "table" and table.find(arg, v4.Name)) and fn3(v4) then
				return true
			end
		end
	end

	return false
end

local tbl2 = {}
local tbl3 = {}
local bxor = bit32.bxor
local band = bit32.band
local lshift = bit32.lshift
local rshift = bit32.rshift
local lrotate = bit32.lrotate
local str = "NIGHTHUB|"
local n = 8
local n2 = 4294967296
local tbl4 = { 1634760805, 857760878, 2036477234, 1797285236 }

local function fn5(arg)
	local tbl5 = {}

	for i = 1, #arg, 2 do
		tbl5[#tbl5 + 1] = tonumber(arg:sub(i, i + 1), 16)
	end

	return tbl5
end

local function fn6(arg)
	local tbl5 = {}

	for i = 1, #arg do
		tbl5[i] = arg:byte(i)
	end

	return tbl5
end

local function fn7(arg, arg2)
	return arg[arg2] + arg[arg2 + 1] * 256 + arg[arg2 + 2] * 65536 + arg[arg2 + 3] * 16777216
end

local function fn8(arg, arg2, arg3, arg4, arg5)
	arg[arg2] = (arg[arg2] + arg[arg3]) % n2
	arg[arg5] = lrotate(bxor(arg[arg5], arg[arg2]), 16)
	arg[arg4] = (arg[arg4] + arg[arg5]) % n2
	arg[arg3] = lrotate(bxor(arg[arg3], arg[arg4]), 12)
	arg[arg2] = (arg[arg2] + arg[arg3]) % n2
	arg[arg5] = lrotate(bxor(arg[arg5], arg[arg2]), 8)
	arg[arg4] = (arg[arg4] + arg[arg5]) % n2
	arg[arg3] = lrotate(bxor(arg[arg3], arg[arg4]), 7)
end

local function fn9(arg)
	for i = 1, 10 do
		fn8(arg, 1, 5, 9, 13)
		fn8(arg, 2, 6, 10, 14)
		fn8(arg, 3, 7, 11, 15)
		fn8(arg, 4, 8, 12, 16)
		fn8(arg, 1, 6, 11, 16)
		fn8(arg, 2, 7, 12, 13)
		fn8(arg, 3, 8, 9, 14)
		fn8(arg, 4, 5, 10, 15)
	end
end

local function fn10(arg, arg2, arg3)
	local tbl5 = { tbl4[1], tbl4[2], tbl4[3], tbl4[4] }

	for i = 0, 7 do
		tbl5[5 + i] = fn7(arg, 1 + 4 * i)
	end

	tbl5[13] = arg2 % n2

	for i = 0, 2 do
		tbl5[14 + i] = fn7(arg3, 1 + 4 * i)
	end

	return tbl5
end

local function fn11(arg, arg2, arg3)
	local v = fn10(arg, arg2, arg3)
	local tbl5 = {}

	for i = 1, 16 do
		tbl5[i] = v[i]
	end

	fn9(tbl5)
	local tbl6 = {}

	for i = 1, 16 do
		local n3 = (tbl5[i] + v[i]) % n2
		local n4 = (i - 1) * 4
		tbl6[n4 + 1] = band(n3, 255)
		tbl6[n4 + 2] = band(rshift(n3, 8), 255)
		tbl6[n4 + 3] = band(rshift(n3, 16), 255)
		tbl6[n4 + 4] = band(rshift(n3, 24), 255)
	end

	return tbl6
end

local function fn12(arg, arg2, arg3, arg4)
	local tbl5 = {}
	local n3 = 0

	while n3 < arg4 do
		local v = fn11(arg, arg3, arg2)

		for i = 1, 64 do
			if not (arg4 <= n3) then
				n3 += 1
				tbl5[n3] = v[i]
				continue
			end

			break
		end

		arg3 += 1
	end

	return tbl5
end

local function fn13(arg, arg2, arg3)
	local v = fn10(arg, 4294967295, arg2)
	fn9(v)
	local n3 = #arg3

	for i = 0, n3 + (16 - n3 % 16) % 16 - 1, 16 do
		for i2 = 0, 3 do
			local n4 = i + 4 * i2
			v[i2 + 1] = bxor(v[i2 + 1], (arg3[n4 + 1] or 0) + (arg3[n4 + 2] or 0) * 256 + (arg3[n4 + 3] or 0) * 65536 + (arg3[n4 + 4] or 0) * 16777216)
		end

		fn9(v)
	end

	v[1] = bxor(v[1], n3)
	fn9(v)
	local v2 = v[1]
	local tbl5 = {}
	local v3 = band(v2, 255)
	local v4 = band(rshift(v2, 8), 255)
	local v5 = band(rshift(v2, 16), 255)
	local v6 = rshift(v2, 24)
	tbl5[1] = v3
	tbl5[2] = v4
	tbl5[3] = v5

	do
		local values = table.pack(band(v6, 255))
		table.move(values, 1, values.n, 4, tbl5)
	end

	return tbl5
end

local tbl5 = {}

local function fn14(arg)
	local str2 = table.concat(arg, ",")
	if tbl5[str2] then
		return tbl5[str2]
	end
	local v = fn12(arg, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 11259375, 128)
	local tbl6 = {}

	for i = 1, 64 do
		tbl6[i] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"):sub(i, i)
	end

	for i = 64, 2, -1 do
		local n3 = i - 1
		local n4 = (v[2 * n3 + 1] * 256 + v[2 * n3 + 2]) % i + 1
		local v2 = tbl6[i]
		tbl6[i] = tbl6[n4]
		tbl6[n4] = v2
	end

	local str3 = table.concat(tbl6)
	tbl5[str2] = str3
	return str3
end

local function fn15(arg, arg2)
	local tbl6 = {}
	local n3 = #arg
	local n4 = 1

	while n4 <= n3 do
		local v = arg[n4]
		local v2 = arg[n4 + 1]
		local v3 = arg[n4 + 2]
		local v4 = rshift(v, 2)
		tbl6[#tbl6 + 1] = arg2:sub(v4 + 1, v4 + 1)
		local n5 = lshift(band(v, 3), 4) + rshift(v2 or 0, 4)
		tbl6[#tbl6 + 1] = arg2:sub(n5 + 1, n5 + 1)

		if v2 ~= nil then
			local n6 = lshift(band(v2, 15), 2) + rshift(v3 or 0, 6)
			tbl6[#tbl6 + 1] = arg2:sub(n6 + 1, n6 + 1)

			if v3 ~= nil then
				local v5 = band(v3, 63)
				tbl6[#tbl6 + 1] = arg2:sub(v5 + 1, v5 + 1)
				n4 += 3
				continue
			end
		end

		break
	end

	return table.concat(tbl6)
end

local v = fn5("8992d555ed7846a562b058523100fbd0e59b5f6f28e98003230ffb4d9db60411")
local new = Random and Random.new and Random.new() or nil

local function fn16()
	local tbl6 = {}

	for i = 1, 8 do
		tbl6[i] = new and new:NextInteger(0, 255) or math.random(0, 255)
	end

	return tbl6
end

tbl3.encode = function(arg, arg2, arg3)
	arg2 = arg2 or v
	arg3 = arg3 or fn16()
	local v2 = fn6(arg)
	local tbl6 = {}

	for i = 1, 8 do
		tbl6[i] = arg3[i]
	end

	for i = n + 1, 12 do
		tbl6[i] = 0
	end

	local v3 = fn12(arg2, tbl6, 1, #v2)
	local tbl7 = {}

	for i = 1, #v2 do
		tbl7[i] = bxor(v2[i], v3[i])
	end

	local v4 = fn13(arg2, tbl6, tbl7)
	local tbl8 = {}

	for i = 1, 8 do
		tbl8[#tbl8 + 1] = arg3[i]
	end

	for i = 1, 4 do
		tbl8[#tbl8 + 1] = v4[i]
	end

	for i = 1, #tbl7 do
		tbl8[#tbl8 + 1] = tbl7[i]
	end

	return str .. fn15(tbl8, fn14(arg2))
end

local function fn17(arg, arg2, arg3)
	if fn4(arg) then
		local flag = not tbl2[arg2]

		if not flag then
			local v2 = tbl2[arg2]
			flag = tick() - v2 >= 60
		end

		if flag then
			fn2(arg2, arg3)
			tbl2[arg2] = tick()
		end
	end
end

local function fn18(arg)
	for _, child in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do
		if child and child.Parent and child:IsA("TextLabel") and child.Text and string.find(string.lower(child.Text), arg) then
			return child
		end
	end
end

local function fn19(arg, arg2, arg3)
	if fn18(arg) then
		local flag = not tbl2[arg2]
		local flag2

		if flag then
			flag2 = flag
		else
			local v2 = tbl2[arg2]
			flag2 = tick() - v2 >= 20
		end

		if flag2 then
			fn2(arg2, arg3)
			tbl2[arg2] = tick()
		end
	end
end

local function fn20(arg, arg2)
	local flag = not tbl2[arg]
	local flag2

	if flag then
		flag2 = flag
	else
		local v2 = tbl2[arg]
		flag2 = tick() - v2 >= 20
	end

	if flag2 then
		fn2(arg, arg2)
		tbl2[arg] = tick()
	end
end

local function fn21()
	if (game.Lighting.ClockTime >= 18 or game.Lighting.ClockTime < 5) and game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
		return true
	end
	return false
end

local function fn22()
	local response, v2 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ColorsDealer", "1")

	if response and v2 then
		if v2 >= 3 then
			return {
				data = {
					{
						Name = response,
						Players = #game.Players:GetPlayers(),
						JobId = tbl3.encode(game.JobId),
						["Original JobId"] = game.JobId,
						PlaceId = game.PlaceId,
						Sea = workspace:GetAttribute("MAP"),
						Type = v2,
					},
				},
			}
		end
	end
end

local function fn23()
	return workspace:GetAttribute("MAP") == "Sea3" and game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052"
end

local function fn24(arg)
	return {
		data = {
			{
				Players = #game.Players:GetPlayers(),
				JobId = tbl3.encode(game.JobId),
				["Original JobId"] = game.JobId,
				PlaceId = game.PlaceId,
				Sea = workspace:GetAttribute("MAP"),
				Type = arg,
			},
		},
	}
end

local str2 = "http://163.223.9.144"

local tbl6 = {
	["the gorilla king"] = { "SecretBananaTree", "Jungle" },
	chef = { "SecretChefKiss", "Pirate Village" },
	yeti = { "SecretFrozenDefense", "Frozen Village" },
	["vice admiral"] = { "SecretFortressUnderFire", "Marine Fortress" },
	warden = { "SecretLeverJailbreak", "Prison" },
	["magma admiral"] = { "SecretOneLastEruption", "Magma Village" },
	["thunder god"] = { "SecretEchoes", "Upper Skylands" },
	wysper = { "SecretTyrantAwakens", "Upper Skylands" },
	["fishman lord"] = { "SecretPearlDeep", "Underwater City" },
	cyborg = { "SecretFountainWire", "Fountain City" },
}

local tbl7 = {
	jungle = "SecretBananaTree",
	["pirate village"] = "SecretChefKiss",
	["frozen village"] = "SecretFrozenDefense",
	["marine fortress"] = "SecretFortressUnderFire",
	prison = "SecretLeverJailbreak",
	["magma village"] = "SecretOneLastEruption",
	["underwater city"] = "SecretPearlDeep",
	["fountain city"] = "SecretFountainWire",
	fountain = "SecretFountainWire",
}

local v2 = nil
local n3 = 0

local function fn25()
	if workspace:GetAttribute("MAP") ~= "Sea1" or game.PlaceId ~= 2753915549 and game.PlaceId ~= 85211729168715 or tick() - n3 < 15 then
		return
	end
	n3 = tick()

	if not v2 then
		local ok, result = pcall(require, game.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net"))
		if not ok or type(result) ~= "table" then
			return
		end
		local ok2, result2 = pcall(result.RemoteFunction, result, "RequestNextRaidHint")
		if not ok2 then
			return
		end
		v2 = result2
	end

	local ok, result = pcall(v2.InvokeServer, v2)
	if not ok or type(result) ~= "table" then
		return
	end
	local boss = type(result.Boss) == "string" and result.Boss
	local island = type(result.Island) == "string" and result.Island
	local str3 = boss and tbl6[boss:lower()]
	local v3 = str3 and str3[1] or island and tbl7[island:lower()]
	if not v3 then
		return
	end
	local v4 = fn24(v3)
	local v5 = v4.data[1]
	local concat = table.concat
	local tbl8 = {}
	boss = boss or "Unknown"
	str3 = island or str3 and str3[2] or "Unknown"
	local str4 = tostring(result.State or "Unknown")
	local v6 = table.pack(tostring(math.max(0, tonumber(result.Seconds) or 0)))
	tbl8[1] = boss
	tbl8[2] = str3
	tbl8[3] = str4
	table.move(v6, 1, v6.n, 4, tbl8)
	v5.Name = concat(tbl8, "|")
	fn20(str2 .. "/boss/" .. v3, v4)
end

local function fn26()
	local tbl8 = {}
	local v3 = next
	local tagged, v4 = game:GetService("CollectionService"):GetTagged("BerryBush")

	for _, v5 in v3, tagged, v4 do
		local v6 = next
		local attributes, v7 = v5:GetAttributes()

		for k, v8 in v6, attributes, v7 do
			k = k and v8

			if k then
				table.insert(tbl8, v8)
			end
		end
	end

	if #tbl8 > 0 then
		return {
			data = {
				{
					Name = table.concat(tbl8, ", "),
					Players = #game.Players:GetPlayers(),
					JobId = tbl3.encode(game.JobId),
					["Original JobId"] = game.JobId,
					PlaceId = game.PlaceId,
					Sea = workspace:GetAttribute("MAP"),
					Type = typeapi,
				},
			},
		}
	end
end

local function fn27()
	return game.ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
end

local function fn28()
	local v3 = next
	local children, v4 = workspace:GetChildren()

	for _, v5 in v3, children, v4 do
		if (v5:IsA("Tool") or v5:IsA("Model")) and (v5.Name:find("Fruit") or v5.Name == "Fruit ") then
			return v5.Name
		end
	end
end

local function fn29(arg)
	local tbl8

	if typeof(arg) == "string" then
		tbl8 = { arg }
	else
		tbl8 = arg
	end

	for _, v3 in ipairs(tbl8) do
		local v4 = fn24(tostring(tbl8))
		v4.data[1].Name = v3
		fn17(v3, str2 .. "/boss/RareBoss", v4)
	end
end

local function fn30()
end

local thread = coroutine.create(function()
	while wait() do
		local ok, result = pcall(function()
			if #game.Players:GetPlayers() > 2 then
				if workspace:GetAttribute("MAP") == "Sea3" then
					fn17({ "Urban", "Deandre", "Diablo" }, str2 .. "/boss/Elite", fn24("Elite"))
					fn17("Dough King", str2 .. "/boss/DoughKing", fn24("DoughKing"))
					fn17({ "rip_indra", "rip_indra True Form" }, str2 .. "/boss/RipIndra", fn24("RipIndra"))
					fn17("Cake Prince", str2 .. "/boss/CakePrince", fn24("CakePrince"))
					fn17("Tyrant of the Skies", str2 .. "/boss/TyrantOfTheSkies", fn24("TyrantOfTheSkies"))
					fn19("pirates have been spotted approaching the castle!", str2 .. "/boss/CastleRaid", fn24("CastleRaid"))
					fn17("Soul Reaper", str2 .. "/boss/SoulReaper", fn24("SoulReaper"))

					if fn21() then
						fn20(str2 .. "/boss/Fullmoon", fn24("Fullmoon"))
					end

					fn29({ "Longma", "Cake Queen", "Beautiful Pirate", "Captain Elephant" })

					if fn23() then
						fn20(str2 .. "/boss/NearMoon", fn24("NearMoon"))
					end

					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						fn20(str2 .. "/boss/Mirage", fn24("Mirage"))
					end

					if game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
						fn20(str2 .. "/boss/PrehistoricIsland", fn24("PrehistoricIsland"))
					end

					if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
						fn20(str2 .. "/boss/KitsuneIsland", fn24("KitsuneIsland"))
					end
				elseif workspace:GetAttribute("MAP") == "Sea2" then
					fn17("Cursed Captain", str2 .. "/boss/CursedCaptain", fn24("CursedCaptain"))
					fn17("Darkbeard", str2 .. "/boss/Darkbeard", fn24("Darkbeard"))

					if fn27() then
						fn20(str2 .. "/boss/SwordLegendary", {
							data = {
								{
									Players = #game.Players:GetPlayers(),
									Name = fn27(),
									JobId = tbl3.encode(game.JobId),
									Sea = workspace:GetAttribute("MAP"),
									PlaceId = game.PlaceId,
									Type = "Sword",
								},
							},
						})
					end
				elseif workspace:GetAttribute("MAP") == "Sea1" then
					fn25()
					fn29({ "Saber Expert", "Thunder God", "Ice Admiral" })
				end

				if fn22() then
					fn20(str2 .. "/boss/HakiLegendary", fn22())
				end

				if fn26() then
					fn20(str2 .. "/boss/Berry", fn26())
				end

				if fn28() then
					fn20(str2 .. "/boss/Fruits", {
						data = {
							{
								Players = #game.Players:GetPlayers(),
								Name = fn28(),
								JobId = tbl3.encode(game.JobId),
								Sea = workspace:GetAttribute("MAP"),
								PlaceId = game.PlaceId,
								Type = "Fruit",
							},
						},
					})
				end
			end
		end)

		if not ok then
			print(result)
		end
	end
end)

coroutine.resume(thread)

if math.random(0, 3) == 0 then
	fn30()
end
