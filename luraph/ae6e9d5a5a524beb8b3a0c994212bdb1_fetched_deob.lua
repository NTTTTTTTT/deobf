-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local str = "1.0.0"

local function fn()
	LPH_CRASH()
end

local spawn = task.spawn
local v = pcall
local v2 = getgenv
local v3 = type
local v4 = rawget
local format = string.format
local time = os.time
local v5 = game
local tbl = { isfunctionhooked = isfunctionhooked, othUnhook = oth and oth.unhook }
local flag = false

if v2 then
	local flag2, v6 = v(v2)
	flag2 = flag2 and v3(v6) == "table"
	flag = false

	if flag2 then
		flag = false

		if v4(v6, "__OmenLoaderRan") then
			flag = true
		end

		v6.__OmenLoaderRan = true
	end
end

if v4(_G, "__OmenLoaderRan") then
	flag = true
end

_G.__OmenLoaderRan = true

if flag then
	fn("loader already ran once this session (re-entry guard)")
	return
end

v5:GetService("HttpService")

local function fn2()
	local function fn3(arg)
		return arg % 4294967296
	end

	error("devirt: value <luasym.LuaFunc object at 0x00000262C197DC30> in an expression (at 168:37)")
end

local v6, v7, v8, v9, v10, v11, v12 = fn2()
local v13 = nil
local tbl2 = {}

if http and http.request then
	tbl2[#tbl2 + 1] = http.request
end

if request then
	tbl2[#tbl2 + 1] = request
end

if http_request then
	tbl2[#tbl2 + 1] = http_request
end

if #tbl2 > 0 then
	v13 = tbl2[math.random(1, #tbl2)]
end

local str2 = "https://api.omenvip.dev/v1"

local function fn3(arg)
	spawn(function()
		if v13 then
			v(v13, { Url = "https://api.omenvip.dev/v1/checkpoint?tag=" .. arg, Method = "GET" })
		end
	end)
end

local function fn4(arg)
	if not v13 then
		fn("no request/http.request/http_request function found - this executor isn't supported")
	end

	return v13(arg)
end

local function fn5(arg, arg2, arg3)
	arg2["Content-Type"] = "application/json"
	local v14 = fn4({ Url = arg, Method = "POST", Headers = arg2, Body = v12.encode(arg3) })
	if not v14 or v14.StatusCode ~= 200 then
		return nil, v14
	end
	return v12.decode(v14.Body)
end

local function fn6(arg, arg2, arg3)
	local v14 = v10(arg.ivB64)
	local v15 = v10(arg.ciphertextB64)
	local v16 = v10(arg.macB64)

	if v7(arg3, v14 .. v15) ~= v16 then
		fn("payload MAC verification failed - possible tampering (or key mismatch)")
	end

	return v11.cbcDecrypt(arg2, v14, v15)
end

local function fn7()
	if gethwid then
		local v14, v15 = v(gethwid)
		if v14 and v15 then
			return v15
		end
	end

	return "none"
end

local function fn8(arg)
	if v3(arg) ~= "function" then
		return false
	end
	local v14, v15 = v(debug.getinfo, arg, "s")
	if not v14 or not v15 or v15.what ~= "C" then
		return false
	end

	if iscclosure then
		local v16, v17 = v(iscclosure, arg)
		if v16 and not v17 then
			return false
		end
	end

	return true
end

local function fn9(arg)
	if v3(arg) ~= "function" then
		return false
	end

	if tbl.isfunctionhooked ~= nil and isfunctionhooked ~= tbl.isfunctionhooked then
		fn("isfunctionhooked was replaced or removed after startup - detection tool tampered with")
	end

	if isfunctionhooked then
		local v14, v15 = v(isfunctionhooked, arg)
		if v14 and v15 then
			return true
		end
	end

	if tbl.othUnhook ~= nil and (oth == nil or oth.unhook ~= tbl.othUnhook) then
		fn("oth.unhook was replaced or removed after startup - detection tool tampered with")
	end

	if oth and oth.unhook then
		local v14, v15 = v(oth.unhook, arg)
		if v14 and v15 ~= nil then
			return true
		end
	end

	local v14, v15 = v(debug.getinfo, arg, "slanf")
	if not v14 or not v15 then
		return false
	end

	if v15.name == "" then
		return true
	end

	if v15.currentline ~= -1 then
		return true
	end

	if v15.source ~= "=[C]" then
		return true
	end
	return false
end

local function fn10(arg)
	if v3(_G) ~= "table" then
		arg[#arg + 1] = "_G_replaced"
		return
	end
	local v14 = _G

	if v4(_G, "_G") ~= v14 then
		arg[#arg + 1] = "_G_not_self_referencing"
	end

	local v15, v16 = v(getmetatable, _G)

	if v15 and v16 ~= nil then
		arg[#arg + 1] = "_G_has_metatable"
	end
end

local function fn11(arg, arg2)
	if v3(arg) ~= "table" then
		return nil
	end

	for match in arg2:gmatch("[^.]+") do
		if v3(arg) ~= "table" then
			return nil
		end
		arg = v4(arg, match)
	end

	return arg
end

local function fn12(arg, arg2, arg3, arg4, arg5)
	if arg4 ~= nil then
		if not fn8(arg4) then
			arg[#arg + 1] = arg3 .. "_hooked_plain"
		elseif fn9(arg4) then
			arg[#arg + 1] = arg3 .. "_looks_overridden_plain"
		end
	end

	for k, v14 in pairs(arg2) do
		local v15 = fn11(v14, arg5)

		if v15 ~= nil then
			if not fn8(v15) then
				arg[#arg + 1] = arg3 .. "_hooked_via_" .. k
			elseif fn9(v15) then
				arg[#arg + 1] = arg3 .. "_looks_overridden_via_" .. k
			end
		end
	end
end

local function fn13(arg)
	if v3(arg) ~= "function" then
		return true
	end

	if debug.info then
		local v14, v15 = v(debug.info, arg, "s")
		if v14 and v15 ~= "[C]" then
			return true
		end
	end

	if tbl.isfunctionhooked ~= nil and isfunctionhooked ~= tbl.isfunctionhooked then
		fn("isfunctionhooked was replaced or removed after startup - detection tool tampered with")
	end

	if isfunctionhooked then
		local v14, v15 = v(isfunctionhooked, arg)
		if v14 and v15 then
			return true
		end
	end

	local flag2 = tbl.othUnhook ~= nil
	local flag3

	if flag2 then
		flag3 = oth == nil or oth.unhook ~= tbl.othUnhook
	else
		flag3 = flag2
	end

	if flag3 then
		fn("oth.unhook was replaced or removed after startup - detection tool tampered with")
	end

	if oth and oth.unhook then
		local v14, v15 = v(oth.unhook, arg)
		if v14 and v15 ~= nil then
			return true
		end
	end

	local v14, v15 = v(debug.getinfo, arg, "slanf")

	if v14 and v15 then
		if v15.name == "" then
			return true
		end

		if v15.currentline ~= -1 then
			return true
		end

		if v15.source ~= "=[C]" then
			return true
		end
	end

	if not debug.info and not isfunctionhooked and iscclosure then
		local v16, v17 = v(iscclosure, arg)
		if v16 and not v17 then
			return true
		end
	end

	return false
end

local tbl3 = {}
local tbl4 = { "loadstring", loadstring, "loadstring" }
local tbl5 = { "setmetatable", setmetatable, "setmetatable" }
local tbl6 = { "getrawmetatable", getrawmetatable, "getrawmetatable" }
local tbl7 = { "setrawmetatable", setrawmetatable, "setrawmetatable" }
local tbl8 = { "require", require, "require" }
local tbl9 = { "getgenv", v2, "getgenv" }
local tbl10 = { "getrenv", getrenv, "getrenv" }
local tbl11 = { "newcclosure", newcclosure, "newcclosure" }
local tbl12 = { "checkcaller", checkcaller, "checkcaller" }
local tbl13 = { "iscclosure", iscclosure, "iscclosure" }
local tbl14 = { "islclosure", islclosure, "islclosure" }
local tbl15 = { "isfunctionhooked", isfunctionhooked, "isfunctionhooked" }
local tbl16 = { "hookfunction", hookfunction, "hookfunction" }
local tbl17 = { "hookmetamethod", hookmetamethod, "hookmetamethod" }
local tbl18 = { "gethwid", gethwid, "gethwid" }
local tbl19 = { "tostring", tostring, "tostring" }
local tbl20 = { "debug.getinfo", debug.getinfo, "debug.getinfo" }
local tbl21 = { "debug.info", debug.info, "debug.info" }
local tbl22 = { "string.byte", string.byte, "string.byte" }
local tbl23 = { "string.char", string.char, "string.char" }
local tbl24 = { "string.find", string.find, "string.find" }
local tbl25 = { "string.format", string.format, "string.format" }
local tbl26 = { "string.gmatch", string.gmatch, "string.gmatch" }
local tbl27 = { "string.gsub", string.gsub, "string.gsub" }
local tbl28 = { "string.len", string.len, "string.len" }
local tbl29 = { "string.lower", string.lower, "string.lower" }
local tbl30 = { "string.match", string.match, "string.match" }
local tbl31 = { "string.rep", string.rep, "string.rep" }
local tbl32 = { "string.reverse", string.reverse, "string.reverse" }
local tbl33 = { "string.split", string.split, "string.split" }
local tbl34 = { "string.sub", string.sub, "string.sub" }
local tbl35 = { "string.upper", string.upper, "string.upper" }
local tbl36 = { "math.random", math.random, "math.random" }
local tbl37 = { "math.randomseed", math.randomseed, "math.randomseed" }
local tbl38 = { "math.floor", math.floor, "math.floor" }
local tbl39 = { "math.ceil", math.ceil, "math.ceil" }
local tbl40 = { "math.abs", math.abs, "math.abs" }
local tbl41 = { "math.min", math.min, "math.min" }
local tbl42 = { "math.sqrt", math.sqrt, "math.sqrt" }
local tbl43 = { "bit32.band", bit32.band, "bit32.band" }
local tbl44 = { "bit32.bor", bit32.bor, "bit32.bor" }
local tbl45 = { "bit32.bxor", bit32.bxor, "bit32.bxor" }
local tbl46 = { "bit32.bnot", bit32.bnot, "bit32.bnot" }
local tbl47 = { "bit32.lshift", bit32.lshift, "bit32.lshift" }
local tbl48 = { "bit32.rshift", bit32.rshift, "bit32.rshift" }
local tbl49 = { "bit32.arshift", bit32.arshift, "bit32.arshift" }
local tbl50 = { "bit32.lrotate", bit32.lrotate, "bit32.lrotate" }
local tbl51 = { "bit32.rrotate", bit32.rrotate, "bit32.rrotate" }
local tbl52 = { "table.concat", table.concat, "table.concat" }
local tbl53 = { "table.insert", table.insert, "table.insert" }
local tbl54 = { "table.remove", table.remove, "table.remove" }
local tbl55 = { "table.sort", table.sort, "table.sort" }
local tbl56 = { "table.unpack", table.unpack, "table.unpack" }
local tbl57 = { "request", request, "request" }
local tbl58 = {}
local str3 = "http.request"
local request_ = http and http.request
tbl58[1] = str3
tbl58[2] = request_
tbl58[3] = "http.request"
local tbl59 = { "http_request", http_request, "http_request" }
tbl3[1] = tbl4
tbl3[2] = tbl5
tbl3[3] = tbl6
tbl3[4] = tbl7
tbl3[5] = tbl8
tbl3[6] = tbl9
tbl3[7] = tbl10
tbl3[8] = tbl11
tbl3[9] = tbl12
tbl3[10] = tbl13
tbl3[11] = tbl14
tbl3[12] = tbl15
tbl3[13] = tbl16
tbl3[14] = tbl17
tbl3[15] = tbl18
tbl3[16] = tbl19
tbl3[17] = tbl20
tbl3[18] = tbl21
tbl3[19] = tbl22
tbl3[20] = tbl23
tbl3[21] = tbl24
tbl3[22] = tbl25
tbl3[23] = tbl26
tbl3[24] = tbl27
tbl3[25] = tbl28
tbl3[26] = tbl29
tbl3[27] = tbl30
tbl3[28] = tbl31
tbl3[29] = tbl32
tbl3[30] = tbl33
tbl3[31] = tbl34
tbl3[32] = tbl35
tbl3[33] = tbl36
tbl3[34] = tbl37
tbl3[35] = tbl38
tbl3[36] = tbl39
tbl3[37] = tbl40
tbl3[38] = tbl41
tbl3[39] = tbl42
tbl3[40] = tbl43
tbl3[41] = tbl44
tbl3[42] = tbl45
tbl3[43] = tbl46
tbl3[44] = tbl47
tbl3[45] = tbl48
tbl3[46] = tbl49
tbl3[47] = tbl50
tbl3[48] = tbl51
tbl3[49] = tbl52
tbl3[50] = tbl53
tbl3[51] = tbl54
tbl3[52] = tbl55
tbl3[53] = tbl56
tbl3[54] = tbl57
tbl3[55] = tbl58
tbl3[56] = tbl59

local function fn14()
	local tbl60 = {}

	if v2 then
		local v14, v15 = v(v2)

		if v14 and v3(v15) == "table" then
			tbl60[#tbl60 + 1] = { "getgenv", v15 }
		end
	end

	if getrenv then
		local v14, v15 = v(getrenv)

		if v14 and v3(v15) == "table" then
			tbl60[#tbl60 + 1] = { "getrenv", v15 }
		end
	end

	for _, v14 in ipairs(tbl3) do
		local v15 = v14[1]
		local v16 = v14[2]
		local v17 = v14[3]
		if v16 ~= nil and fn13(v16, v15) then
			fn("hook check failed: " .. tostring(v15) .. " (plain)")
			return
		end

		for _, v18 in ipairs(tbl60) do
			local v19 = v18[1]
			local v20 = fn11(v18[2], v17)
			if v20 ~= nil and fn13(v20, v15) then
				fn("hook check failed: " .. tostring(v15) .. " (via " .. v19 .. ")")
				return
			end
		end
	end
end

local function fn15()
	local random = math.random
	local flag2 = false
	local v14 = nil
	local n = 0

	for i = 1, 100 do
		local v15 = random(1, 3569)

		if v15 < 1 or v15 > 3569 then
			flag2 = true
		end

		if v15 == v14 then
			n += 1
			v14 = v15
		else
			v14 = v15
		end
	end

	if flag2 or n > 10 then
		fn("math.random looks fake (collisions=" .. n .. ", outOfRange=" .. tostring(flag2) .. ")")
	end

	if Random and Random.new then
		local v15, v16 = v(Random.new)

		if v15 and v16 then
			local nextInteger = v16.NextInteger
			local flag3 = false
			local v17 = nil
			local n2 = 0

			for i = 1, 100 do
				local v18 = nextInteger(v16, 1, 3569)

				if v18 < 1 or v18 > 3569 then
					flag3 = true
				end

				if v18 ~= v17 then
					v17 = v18
				else
					n2 += 1
					v17 = v18
				end
			end

			if flag3 or n2 > 10 then
				fn("Random.new() looks fake (collisions=" .. n2 .. ", outOfRange=" .. tostring(flag3) .. ")")
			end
		end
	end
end

local function fn16()
	local n = 0

	for _, v14 in pairs({ [{}] = 1, [{}] = 2, [{}] = 3 }) do
		if v3(v14) == "number" then
			n += 1
		end
	end

	if n ~= 3 then
		fn("table iteration looks fake (saw " .. n .. " of 3 expected entries)")
	end
end

local function fn17()
	local v14, v15 = v(os.time)

	local v16, v17 = v(function()
		return DateTime.now().UnixTimestamp
	end)

	if v14 and v16 and math.abs(v15 - v17) > 20 then
		fn("epoch clock mismatch: os.time()=" .. tostring(v15) .. " DateTime.now().UnixTimestamp=" .. tostring(v17))
	end

	local v18, v19 = v(tick)
	local v20, v21 = v(os.clock)

	local v22, v23 = v(function()
		return workspace:GetServerTimeNow()
	end)

	task.wait(1)
	local v24, v25 = v(tick)
	local v26, v27 = v(os.clock)

	local v28, v29 = v(function()
		return workspace:GetServerTimeNow()
	end)

	if v18 and v24 and math.abs(v25 - v19 - 1) > 0.6 then
		fn("tick() rate looks fake (delta=" .. tostring(v25 - v19) .. ", expected ~" .. "1s)")
	end

	if v20 and v26 and math.abs(v27 - v21 - 1) > 0.6 then
		fn("os.clock() rate looks fake (delta=" .. tostring(v27 - v21) .. ", expected ~" .. "1s)")
	end

	if v22 and v28 and math.abs(v29 - v23 - 1) > 0.6 then
		fn("workspace:GetServerTimeNow() rate looks fake (delta=" .. tostring(v29 - v23) .. ", expected ~" .. "1s)")
	end
end

local function fn18()
	local tbl60 = {}
	fn10(tbl60)
	local tbl61 = { explicit_G = _G }

	if v2 then
		local v14, v15 = v(v2)

		if v14 and v3(v15) == "table" then
			tbl61.getgenv = v15
		end
	end

	if getrenv then
		local v14, v15 = v(getrenv)

		if v14 and v3(v15) == "table" then
			tbl61.getrenv = v15
		end
	end

	for _, v14 in ipairs(tbl3) do
		fn12(tbl60, tbl61, v14[1], v14[2], v14[3])
	end

	if v13 ~= nil then
		if not fn8(v13) then
			tbl60[#tbl60 + 1] = "network_fn_hooked"
		elseif fn9(v13) then
			tbl60[#tbl60 + 1] = "network_fn_looks_overridden"
		end
	end

	if v2 then
		local v14, v15 = v(v2)

		if v14 and v3(v15) == "table" then
			for _, v16 in ipairs({ "hookfunction", "hookmetamethod" }) do
				local v17 = v4(v15, v16)

				if v17 ~= nil and v3(v17) ~= "function" then
					tbl60[#tbl60 + 1] = v16 .. "_shadowed"
				end
			end
		end
	end

	return tbl60
end

local function fn19()
	local random = math.random
	local tbl60 = {}

	for i = 1, 16 do
		tbl60[i] = format("%02x", random(0, 255))
	end

	return table.concat(tbl60)
end

local function fn20(arg, arg2, arg3, arg4, arg5)
	return v8(v7(arg2, arg .. "." .. arg3 .. "." .. arg4 .. "." .. tostring(arg5)))
end

local function fn21(arg, arg2, arg3)
	fn14()
	fn15()
	fn17()
	fn16()
	local v14 = fn18()
	local v15 = v9(arg2)
	local v16 = fn19()
	local v17 = time()
	local v18 = fn20(arg, v15, arg3, v16, v17)
	local random = math.random
	local v19 = random(0, 1e9)
	local v20 = random(0, 1e9)
	local str4 = "Unknown"

	if identifyexecutor then
		local v21, v22 = v(identifyexecutor)

		if v21 and v3(v22) == "string" and v22 ~= "" then
			str4 = v22
		end
	end

	local v21, v22 = fn5(str2 .. "/validate", { ["X-Signature"] = v18, ["X-Client-Version"] = str }, {
		licenseId = arg,
		hwid = arg3,
		nonce = v16,
		timestamp = v17,
		tamperFlags = v14,
		rngA = v19,
		rngB = v20,
		placeId = v5.PlaceId,
		executor = str4,
	})

	if not v21 then
		fn("/validate request failed: status=" .. tostring(v22 and v22.StatusCode) .. " body=" .. tostring(v22 and v22.Body))
		return
	end
	fn14()
	fn15()
	fn17()
	fn16()
	local v23 = v7(arg .. "." .. v16 .. "." .. tostring(v17), v15)
	local v24 = v7(v23, "omen-enc-v1" .. string.char(1))
	local v25 = v7(v23, "omen-mac-v1" .. string.char(1))
	local v26 = fn6(v21.payload, v24, v25)
	local v27 = v12.decode(v26)

	local v28, v29 = luraph_runtime1(v27.funcDecKey, buffer.fromstring("d&C\186\187;B\29\6\25R\154\171\129\22\136^a\188\157\229x\247\0200\229wM\3\17\150O\248\188\135d\234?V]\245\232\150\127\2\237\19\12َ̊\205v\199\15ᤧ\165!`\184R\165G\29H\140ٱ\206\247\24\\\176\200\229˭R\189N\227sm\226x#\153\190A\250<)\20ˮ\236\182\212\21\229\143\240\22\177\174\143\229\171\29\243i/\28S^\164\178x\129ݡ=Ȁ\144\205\20>\4d\131\157)m\139\229CJh\236\29\161*\0\165u\130\4EQ\t\4\150\223\250\147\180\12\152\155\251v\19|\18i\242\238&\247\134\177\197\2414M\194K\27Bnk\28U͝\129>\233\216\241x\230\242\235jDַ\224P\217?\185\154\152t-\132\0302\189-\156\1535N\135I\215.\7k\131|\197@\255\250]GQ\6f\248VUX\246b\195\219\21\160s^)\246ty6\188j)5\196&\227\0244d\30\170\171\131\223jL\217Tl\30\194Ib\131\231\247U\223Ӥ\221\245\136\186\5\155\250%\219\192\192\149\2\225'\255x\141\132\243E\202z\8\1930C\176\174\141L\180\0316ҝA\158\193>\133\240\23u\25p\204f\12~\2215\227Mj\151\156\\9\155}\189\t\183\29\229\152\206yx\245\155Q@\193\175zOz\191\161*\221MR}\24\169\25\201R\136\145\1779\144[\251~\15\8^;\169\189\210\2_\242\246\29\198/\171\147G\237\229\229\202\204N\178\216;1{\r\227\131\5\23!\127w\133\180\199|\217\2199\19dq\6\131\158\234\192q\148\241N\171\140\n̴\14V7r\\>\240\163\246\27\r\240tࢮ\202+\2421\175\252\213?ˇ\133\191\138\145\212\242\140\211\204<\238\241+\168牵\162\3\228\146vZ\192\142\"Y\201\223\30\17\167-\134\29\207ݽ\153\3\171\0\218\194v!\184\223\232\137\197\224-\247-!\251\213e㓐\27\181\243\141\238\1697\194\198Jc-\29[\5\196%$4D\25SR\225\133\14Ic>\174!\1746-̑\230\204\216j\183\238\14\177\n\175\137\u{382}\176\"\167\136\221\1\25\251\160-U\247\162\n\28RlIyg\255B\183ÛH\151\22\172&\23\206ɋ\233\2343I\203\213.\243\8:\154U:iL\184ab;\183\15\227:%˄q4k\128\176\29\241\152\214|\150\130\233\5;\196\18Xmm\28 \198h\179\28\232tE\168\210\18\240\189\242,\255j\1#\229\3\2230\1 \204_\189\5\2\209\197\21\7\6\225=\1SN\218\255\140|\145\174~\212\236\158\20\1w\182\192:\216vo\224\ryt\217\230\229\148m\136Ι\253\227\207\252UV\179\197\209\244\144\5e\244k\189\179\251\140\2\2\0211K\n\240\1753\20\189\141\132~3\148\15\148^\230\240$\149\238\244\183\23=ӱ\216)DQ_\160enXq\2p\"\199jҭ2\193q'\29\202\237\nh\168S\194ɮ\231jޥ\23\176\3p7\159i\165\230F\229\4\3\\C#\184\0294n\236˕;\235\248\149tͩ^f\28\238\210L\251{1\200\230q\11\168\250\0u\214߫ǧ\24]uPn>\8\1618\228\237\249\183\216\225\213\222|\130$\171\201q\233\246rn.\243\251\245O&\252xXnM\235E\176߅\171\226\220\253$\176\177\158\165\20\238\1331I0\5\193Q\226C6\253<&,\184d\174\1799v\6\234\248f\24tff=\228\26\207@6\220\246ּW\176\224\253\195\31ħݻ\6\190\225\176\24O\23vN\132\239\187.U\30\172\30a\16~\128\28\201\1\2134\161\209\14[O\205\14\22\209\236\19a3\t;|{\180\24X\147K\254\237ĉ\230\164\18\184\183ڷ\225\19\27\180_\156\190\191Eͱ\134ϝ2\222\203\u{7BD}\24\166\131\173\n\233U\198X\179-\186\153\231\226|\228\29\171\138:+\251\2004i\nϒ9\150\228\163eL\222ATƫn=\2406\212Zq\155p\159\12\1970\164\20暈\1387:\189Pz\r`e\170L\2325\2316\2259\204.\180\242\149~\3\1624a\205k\249'\146ݩ\233H\12R\149\236\150\250>y\20\228ux\180s\16Z\196$x۽\229%\238\14Mf@\24\28IR8\11HU\19\130-Ձ\145\131\195\239BY\154\139\210\249\7\17aTfE\159~\250\133\1597\30=\236\151t]\137j\168h\191\151\19\28\201z\26\179~|\229\202eP\1697<\171 \141'~\164\"\166z\0280\2\141\222\19^2\210\209\210H\31\3[\141\173\236$VB\12\166\29\206Ou\15i\30\2546O0\254@\21\1\1\24\143>訠\15\196ڨ\"\238J\202\2050\152X\165Z\218\u{7B6}\194\223\250\139\144(\25B\176\168G\164\240}\168\133Ś\158\25\11Y+\214+;@\134\2C\253\2055\8vո\161\1\170B\12#ǥ\253M\233d\0$\129\201\247\25!\204\230\248h^D,\188\237\187\207\12\224\217\t\178D\2080.\145ߎXu<\31D\248r\17\197D\244IȰ\253\147=D'Z\23\247\164\227\209t-\175\150\175\204\209 |%c\14\137ϭ?%\148\135\2183\185\201(\143\134{F`\128\2\163\127\193U\159v\239\142*_\158L\190\214\247$|ӣ\177\220-\5o\231\141\237>\212\14{\t\159\252m/q\16\u{7BE}f\196kH\137\252֑\0159S\230R\192\144\191}\6䮑\31x>\193!\166\169y\225s\243f\139\149\164\5w\177!H\253\171\t\246F\241\189\186\198T9Xp\16\232\20\180#m\164\0\248?^\160\233I=4\160\249t\200\29\169\172\248\241\225Q\184xf\14O\196ݗ\255D\"\203`\165w\206\221ۮS\208\248\242\248j;\173E2m\242\167\248\1769\t\150\"@(\159\23\169\140Z\219\229)!\0\127/\194\249\227\144}w?\163\157k!\139^\186\"\150\230\127)\225\204NB\145d5S\239\200փ\246w\171$\"ˈ2\247\224\205r\8\195*\226\201^0\152\220\1w\226E\144SH\244{\3\203\226\26\17̛C\5\127\212\222T\20\u{7B3}3\2034?\184-\"њ=\178\12O`\145/[#\180\19$X\130\r\235o\22\166_\185\224\231fW\3\220R<\161\19\16\217\229*-r\147Q\18{7\1726K\140\243\224\132}<\203$\29\214\211w9t \148m=\178q\207\218s\7\190h\239Zb'm\214_\248\130\232UB\186h:\166w\132\213-\2s\t\221ua\167;\199I\235)6\161*\144\158\25\147~[;\235t\8\15\245\227\21\142\150_c\232a\n\135\171\tz\143t\153\1\150\148\177\137CQz;e*\242\29\136\132\127`\164\183`\184\22BsŜ\249\167\217?z\7\12ޫGh\225\5:|q\"\27\255\\+\146'z\140K\161\127\139\247;y>f\216[|\249\170\174лH\26\208IH\167\153\164Qp\12c|\239\186G\252^\240\2488)\252\153w\152\223\250ՠ5.\168\0\160d9\184^?Z\129\28\183C\190\240\200=ǘi\193\1565\141\254%[\150S\189s\187{T\28}\7\141\127\\\221\12\236\8D>\239>\250\170\246jH^\188\144\171\31\231\26\150\244=\213\239\154\236\246_i\252Dk\227\2uUt\153\234\222\20\22\151ʉDF\18\240J\20͑\149\202\28\215\211\199~\31\206%\213ruF\0310\239C\31\211\234\196+\16\237\18\159p8M\190S\131\179\226A@\157\224\127\11>\1\158\239\159<ǥtJ\23\246A\168\195\226u\218\27\12E\133ܸ|\151W\162\246\160\193\n>V8fL{(?\234\199Bڮ\147HN\2095\223\17\131h\170\245V\161\r\191M\250Z6\166hQ\18L\239[D*\11\253W\212u\160\24\220\241\24\191\240\0?H5j\135ȏ`^+\153g$\159\14\1365\154\162\27\31Z\236\234/\131\195\2507`w\251\132?\214;sO\134\134P\144y\214s\22\170\149\30\142d\231\1\163\139\163 \131ͪm8\190}u\18<\197,\8\174΅kY}%\253\255\158\127\182\19#\170x\r\217v\227\182\7\159\127\199t[\11\186\171\29\149(Z͢qo<\23\216<w\238\8\159\161\208I\158P'\249j\159n\229\218[\127\248\28\236\131d\205&\161\214hrٴ]N\146X!i\230\182\31*e\200@q\168\236o\178l\31\r]\0199\16\248aۛ\237\17Zh\154Q\209\18\134\159\17!LH\248\168\200\250\22\178\28\157\139%\12\191\159\220l83ᵯ˷\t\249\137\245v٧\169\128ў}\198\127\185D7@\245\12\132\2240\24\150\250\234諨\160?\0269e\1935A\206\2233\"24L~i\154\203|\204\213yS\180G\241\1\145l\149\237\244\240U\133\1\195\208\19\153\248f\25\127@\218\1s\185D\172\216\18B\245\146\1316\189\137\8\30%\0071\27c\233\8@\1908\161\153QU\20\243\210=O\172U\225\187M\254\135B\242\207\251\146\146fu\192d\134*\249$1D\15k*pC\1\r\174\223\228\25\191\165\5\182\175\207L\187\217Ԓ\153H\179\223\239̀ވK\242\144ǽ\3J۷Zd\190\16\141'!UPw\14\220\254eI\15H\159\131\171\\\3\186\157g\141-!?\26\206<P\168\131\0\163L\254\246\158\u{379}\249\234\193\170\15\146\134\247IW\24a\157\134\135(6\160pL\210\24^\145MoDz\174?\2197)Lt\r\243\211\225\170\210\218&\155\180y\129\226\145G%}'\183%\233\177\212q\225\2\174\2555q\167\227\\\171\201\195ЅF\226\18˳G\131\140\r\243=+lbZ>}\205P\26\177Q\0065o\179\157=\172β\142\2174a\188b\217\235\3\164O\197\"\222t\166\16i\8\180~\12\225\152\224^\149+\232\127\190\248Z\149,\162JR<QP\197\196\30i\179֠\158\t\162\166\r\237\210\1978\182f\\B\31\246\2343\11M$n\191\181\247epkw\29\"]%+\159tǥu\22*\193\26\176¯\6\231*\0\142@K\187B\250\195K,o\140\20#\20bD\22T\5$d\142d\"\25\238\16\252$R\199C/\201ݠ\166x\252\1998\233\4%E\217\22\129\197\194\219\2160c\179\185L\222 \247D\152\8\157%\215\17*\18\136\252*\254\5\253\137\187\187\165P0\29׃K\n(\128\141\200nĳ\226\216E\140\26Z\3\134Ѧ\199\n\25\135q\29\rÃB\195\225o\132\240\134\155\11\224\233\145;\248\2283\6\170\197R\137\145@\157u?F\212\232x\138\146\232\217\229i\237\231\7 \238\171\1\211^{S\141\158\131\1486w?\213iL5\156\138ܛ\136%o\178\u{7B7}y᷶\199\12\17\212\5Kû~\23F\222K/\127\5\210m>V\15D\249\156\0116\143dK\29\191ڸ\235r\233ቹ\146\30c\193ƛC\"=\208]\179\131\219\216gv\2\159x{\232\2357|\204g\188\169RqB#\1\243\231\185\3\8@2\15ę\150\2359\194\rJ\2169\25d@\30\237h\250Z\241%6\174\161\147{\2267=dG\220쬔f\16\189\175\205\194K\171w\17\185T%\31\153\212V+\14\8\0068\211{\14\3\148%1s\146\192\154\197xh\207\12`\133\164\7\252\230&j\246j6\186?\172\0205\205B0\0305\236\21ڔ#'L\248\151\184\14\150hV\204!l\153\216Q\18\224\205P\249\149cm\171J\250\214\2286\195d\184B2\151\181~\27<\14\172\146\164[\143\190\23\194\12\167|\12d\171\133m\31\224#\194o\2\169\153^\2\12\149\186硓pTᅱ\128\24\190F\141\157\181_\255\6\155\193\28yx\186[\tk\190S\0043\136%\142,)\176M\"\224\27\16l\148Q\162\163_Lp\t\173~ů\27\2300ɸ{\244v\2020\1510\239J2hL\160\144\255CW\164(։JN]\137\173\5M(\243d\184I\238]m\202@m@\156~\137\228\230\24)<e\227fQ\173\215Ń\130\177(0Ḃ}\187\237#\191\171c\2124\23\201\12\238ѐ\221\12\241k\127\182\171\24\189Q\152\27\189h\1358\4D\197\6\205\218A\30\r\192ۛ\146\184\250\214\255T\147\169\155\175a@\r\248\183\152h\8\130\181\182\16\151_T\16\142\195\21\231\254c\17\152\163j\250\1907\n\164\233\158{\251m\25\145\131q\177\209P@\193\15\194\n\188\161\211\193\128D\16P\15\163+\3E\nl{ν-\12h\u{9B}L^\235w\131\19\180g\28:\130\r\23\220\232?#\11\255j\163\31=\140\1557\1J\169j\187\208<C\11\246\16\219\253\182\19\\\184z\154\176^\1564\249\211rz4́Q\236\17\160\205^\220\222m\246L#U\210\235a6\189aB\22\251<4\22\236\201笄\147s\\\29\218\22\195q\135\5\215h%\23|\1807\239|\3\11\1417\181\139\2047\1521嘽\2019\239h\"\236S\250\1418\177ZW\188\163\27\226r\2035\177\170\213\30\249\147Yw\186\211\12t\214W\6z\220w\2428.\235\0201\24\254\236\"\151U\166\u{EE65}\211\28eǛnͮ\247\146x\17Z\172x\163\255U\234c\143\8T\249\216\224<\244\233\221X\148Y\184<\131U.\221\252\152\165\193Ov?t\154\225\246\5Os\244\137\243!\237{V53Vy]\250\177\\\153^\167'\205q\137\237\206\230\206S0\178\20\127.\223P\11d\216-'\134\11mJ\17\173>\150\227\n.\254\134\200>'3A\16\184\249NS\133\230tw\198\240B5\172M\161\207g\184\249\6\212\5\4\194n\n\224\24\232'\253\1533\248dn\168\183aiJ\164\227\r\155\136\179>\177\203G#\31\182n\189\162\157\24}\r\253\6\132`@y>\214\205\199ƟX\159\2344\31\5&ea\136\170r\134T\249\11/3\168'>@\155\18\222\250\237'\229\135]F\130;S\135\206~Ǐ\175\26r\166\129¼\195\7\185b\232\183J-\194\237\127\177(+\135\160ijν\232{\12?\3tX\20G\8\0025\201HĲ\167\1\177\205\215*\176\"\2299\247$\235X\4\231\239z\26\21\173\130\230\155,s\249.>]\166#?՟qnS\248\1735g\176Dr:\198a\220\26a\21\8$2\127\187RI\151\207\229\212N[\236\216\199\232\161\253\145\198\250\243\163\235]|\206\1\165\191*\157\165ń\11\131\138l\142\26\165\167\177@\254\240\8\190\t\234`uj\170\201PT\247\192\23G;\t\0287\25X\228ڂJ\164x\30\189\155@ \129\241\211p,\183\226\156\206\207\232\8\129\12SRPn\155\134\229\22\218%\219\127\6\n\6\135\151\240\191\7?\251\31\241\165\6\157\136<\215E\23\249\180\130\132e\240\133\176\241\178\160\210\241\188?v?&\27\183\150Zb=\11\130Z[c\174\176scOR\209-\17'\161\197\249\205x\225aa\166\182\175\232\25̺b\227\250\251\168i\127\26\1982_\169\249O\181\184y\183rh\18[\160\223\251\246\"\1869\133z\18\193\241_\31p\235\20\168\160k\165\170%c\144B\250\29lܝv\248\220\208}\218\205h\22\192N\140\255j\133\204\4\130\204\230\233N\169\146\211j\243C\18\152Y\141\148h\207\251\194\207\0\250\219\204\203;\148\166\5Ͼ1\12\255dq/!͖\152T\175\167\133\12\210ǫ\138\3\21\209I\138u\208\242ʖq\139dW]\156\168vs\173\176~\1815\148!\195Fg~\226\144]\29쀞\226\139Ɓe\138s\146(\129J\242\128\170\222J\185\170\189۞d6\159%\245'\21\211K\221W\226\198z9\199\11\4\166Mj\140T!\150\192$t\137\225\191{\245\nHA\131\142\135lq\235\6s\181\16\149\144r\0272\154o\226\249S`\u{94}\240\212#C\137rW{\26\\\151]\186\145\165\228\204\204\215~\154\28\3\147\157J\245fr\5\136\183P\149\186\145\170T\197\248Hvb\16B:\2166%\30\196K‿f1F\18\15c\152\3\172\225^0-\141,\235=Q\147Aim\214c\240\243t\214\250'\30Wm\17\242i\3\"\245\252~\133L<\252\132l\t\157M~.\167s\147\171mMeV\134\131\191\136R\148h\248e\216;ȍ$\231\249\209\248Tv'٦\146\147\19F\135\205\240\1412\185\143\144\28$$\161\215M\171\14&c9C=\1\246\t\175d#\26\154\252\138>&t\23\187\240\244\1657\161R<\205\245ב\246\2004\24nľƘ\168\1528\140\208\8FAq\0310rg{\0169ۼX\195\14;O\198o\160\178=J\240f 3\140\\$\212\5\136z쌞\229Y\252*\170-\31\18\214\214\2\144\nҴkE\17\226\137?M\169Ƚ\248\155OV\235𗩏\183\0076\154\172\133O\225\232H\215\28\19\236)\26! .\153\15\235\239OoD\131\185Y\141\160\217a\20XdJz̳X)AƎ\235\139\20BG\22L]\2!%a7\194\237\248\\b\230\142ƅ\203\209Sо̶\148\5\t\240\168\1620\135\145\t\u{58B}\149\2367\15ALV\183s\168\190\149Y\145\24#\162&r\187N}\232\199,\196G\t\170\232\26\179\141I\188\250v\235iܥ(\180\198\238\179=\149u\192{Ia\134\247\28A\211\r\164\246,\252b\246\238\27ۑ\149\200@4\t\169\209#\186\142\210 {7\140nx/<[p\239\188g\142$0Az\186\204<6\19.b\20\166\235\254l5( Kj2\1677]\147YƎ\0228\194s$}\226\148o\220Y\143\179\230B\175+\137\28mKR\1323\11\177\210\20\244\rZ\178R\12\232T6Z\15\130o፤\193\221\222D\27\167C%\190T\189 U\191\190\228\249\190\135\18\186\0291\222\242)X\149\155Jr\168#\202z\211V@\1\165\145\147ϯO\232BY\163\12\236RhQ?\242\159\19\23UM\186<R\255\0079Z\199n\210\193r\205\24\4\141\11\130\148\179f\150\220\24\229T\156J\134\n\161i\21g=M}\172\4\199Z[\180\8S\131\163\249H\169\16\245\127\148<%\185\241U\172\157\249r+fb_\189^\20$ē\243\235\218\\\"-N\194\233\141\210Vg\249BP\252,Q\180-\184/\224a \\\139_\24\251\178S1\157nї\195\219\31/\192,\5\n\249\166f\200Em\186\185\144ZoW\216\246v\147\193\144\151\1\161\21\2468\168p˜l\254\149+\0\26\242\192\169Χ\6J\156\162[\195\\\\\233'\165?\169\242D\134\145f\237\205\7\192\1846\r'\14\250\163) \146S\146H\t`\128\2402\165\140\174\179\207V\218j\133\229&\144\218\200ؐ>\191\181\1729\177\155),\148\1424[\186\184-({\180\16P\r\254;\20h\214\12\140\8f\241\1613od\150\141\29\160\0212\20\127\203q\15\209j\161\31\241\234\246\165\153Ve\16\184b<p\12R\198\2365\178\19\205\\\156\2\168\232Q\207'\142A\170N>\176\239~\254\\c/ݧςE\0d\143\26E\2408\174\138\138\224\200\28\11\u{99}>B\132\151\128D\148\225]\197se\24*\31\\\"\157\168jw\199\233\208MX9X\218æ\254\27\186\167\164\192\142j\6\197\195\242\12P}\129\163\17\236f\148`L\253-\223\127\151\1\173\174L\149\u{5427B}\159\153\11Ddgǘ\160\157\158\197w\183\128\221\3O\163|\29\16\5\189Sp\156'\"\12g\133\136nT]\5\139\127e\239\130\253\6\131F\175Ӕy:\160\233\218\222\5\5][F\164,\219\12\130\1\227\29\175\173\132\230\130\8C\167\237\229\188w5Am\211@\235pE\196Nl\254[8\240\20\150\12\201\207\224\175\14\27\163\151aM\161\128G\255о\207£;\16\139D\131\5sI\1501\161\214\6\24\127N\247lx\22\243\143\208{j\235\1\175\1$\163\1503q(\244\183a\140-\11\165\210$\244؟\173GN6?\8(\8e$\133\1581\161\183s\240\30j\226\8}\214L\131?\t\232\243\205\209p\17}3/\16\195\205\23\157\205`u,\132-\3i=\223\26i\n\30\0167\23p\163\29U\3V\222к\241U\187\204#rȌ\5\188P\22141\161\212\234B}z\137E`q0y\12\223j,\236\231\t\193\23\24\253\0175\234_i\247\2261\238\208\2298b\244\159^Q\179ق\211c\243\3X\246\193O\165\246aO\171[\132P\188!\141\1522w\155ZJ\185,`\189(\245#\168\159F\228\249\154ш\164\182NA\166&\31\0ĽZK[\189\243\206o\133\21\255\214/o\251\227//P\196\197̟+\20r-\180Z\14:\170`\186U@\175\144%\162\251\231\223ik\154S7_\161]\147\204\212\249V\218\233}\136\157\218\217\197N\1975{\203z\167\152\148X\219U\182:jP\219+cZ\250\139\239@\24[pwe\251n\177\246Qh\25I\22\229|\194\245Ui\195\217\243\18\30a\184\166P9&\14\152*\242\191\242\248\170ڄ\134&\231\133\19\173\255q,\255\0170{\213f\184Hp\181\24308\172D\187\136\142=\214[\217\243ev\137\209\195(\225\198\206 F\146\154NP\21O\243l\222\192\151\1826\156\243ǓeoƷR \172\190\152:\190C\191\149\164\240\171y\255\252A+\14\170wO1f\245\147~\4J\185\217\236\230\183\1c\n&<\189p\131\160Z\218m\20\216Ux\165\132^\169\153{ø&a,-t\161\190ҞΜ\187\167dU2\181\179|\11`\135r\233n\202\239Ơ\203\204\t\200Gk\149Wx-L\183\191P22\21\220σE\165\20/h+\162\162\172a\168{\192Y\234/\234\246\251\179\20\19\2422$h\237\20\183e\3\19\131,CD\155\237uҪ\143\221V\185\212^\148\5.4\24\171\172\165\187\\X\231$w\210\196\203\204\0143\164\221'\165J\1?3\208\8Ж\5\169\11\27\209%\22\131e\175\212ی\193k\205\224\147\240\175\206\240}vSO\253\244\170\251\220N7\239\248\210l \161\141z\30\174\236ۖ\160\131I\162L]\133tcW\220Y\15(\158i5\217>\139wa\n\131\151\127\228\141-\133,.,m?\245EY\226\137\15\28B2\172\146.\163*P\17[\140)ŀ#\0]\129/g\240O\"\203\2029\148g\28\193)w{o\209\227\251<\130\138\162\143/\186\225Q\131r\180\175\150\182\127\253\27\154\251\20b\184\243\128L3\171s\172+Pxު\255\202Z\25\187\139ő\238c\223\207\16\221\3\246_\rh\176\201WFp5\203\229j\193?\1659\12\216\242P\154>\168A\219\207I\234j̭\26\230w\191\140J\143\154\144\192y\210\17\136\190̅Ě\27\tl@pH\237\19\230\2 \132\139\218e\208\227\31\11\177,\157\\Jχ!\176\225\157\n\2\201w\202\245I\200j\139\163\197\224\u{58B}\4\217\2\1856N\204b0\137[\25&\130\227#\2428\172\251\182!Uj!I\245\0236c<\173\5S\30-Ơ\233\129,\0\187\211\11\1771\254j\248\235\19m\249w\154R\246\216t\7&\158s\245\\\247\147p\243{\183\150\128R&\181\221Jx,fpiC\173\193\139\12\224#\150\152_]\255lT\200\28p\8\20\180\138yB\240\244\170\217\241\7\139\18\163\7R\137p\131\25\209\2440\23\t\247\175\249\215͆\2518\245\136\232\243\159\"\ṱ\5\243i-F[Va\2-D \237\169\182\254\237\173\21{(\232*ٮc\191\249ӎ[u\219*\132\164I\201o\4|\14i\174b\157\242W<'\168r\164\153\151F_|\245\143\209\242fH\"\133y.\0015#\20\252\216\226\1387\0030\232\163\207\20݅\133ZR\131\171\18\173(\244i2Hǯ\18\213\218Tfӹ\2\194]\22u\t\205#(\244<\153\23\191n\0086E\"7\2372\19\206\239\134ա좉\4D\141\244\198{\232`\226\199E[\177c\162\203\4\194G\137\146xTK\137@.E\204\220%T(\172\29@\246\244\228k\142\172H\2147?f\239\162'\157Q\140:\214,f\15\244\253\244\248\\-4S\176\161\23+\143\171zX\170\254C\223X\2419i\240\137B\215&\241Gt\n\167\199JQ\30P`3Cw\199SD\1712\21!L/_\22w\199V\225$\216\196\251\1\185iNű\174\6|,\17vTV\nOD\151\202i\182G\1977\171^\197\212\228\225\27\201\15\1402\149ٸiD\0149\"\158\225a\230O\2199ΏJd0,\5\240\178\226\160tǭ\141^5F\8\143\7&\254\209wx\224\22\\Q\25\136ԖC\0w\239\249łھ-\198\197\236\135C\237S{O\127d5\4\27CRq\30\201\n+]\0^\2415\218\228S$=\25\202\216\2279\148瞔\175\168\183\140\3\232H\0u\135m\210\240\250/\2B:\1\24s\138\173\r8\157\176\154gܯ\0179[vڗcR]\1605SQU|\u{8A}d\204M \238{\171N\\\144\230\132\239\134x\219ၤ\220x\"\29\164\226\16\14Ŕao\202[\139\251]/\28k\156:\187\200#/#;$\168\167\172H\242I\29\169\185\229\176\232\127Z\253\136&x\30k\135\176\254o\242\17\0289\22\150\136a\156\4X\156\27\225.pg\144\142\135\12k\0\133\209>\1_\141\154\139\162\207\225E\239\192lmq/g\131\2\151\204\229fËm\159\240_݂NDg\132\167IET\198DYf\194&\29C$WKas\170\164\150r\232\254}\155R\205\12'%BMGu\240^\198Z\210|\155(S_\182l~\178\172\15cV\238\233\202K)\"e\231\246\5\158\179c(1\199c\176\238\228o9\234\135N\1\1293\168\228\239\241\25\148٪\194\r\206^:\239i\1\233\227\210\0255~\229\1\21\197!\179'K\1556GT\26\184\1\8\188\197\201MdTl\205\\\169\243|\239\19823\139M\0064bis\29sg\174!\253\r\162Y\195@#\244A\140\165\171\167\190v\130^J\172\158m\159$\1rJ\172a\241t\186m\143\198\26F\231\240\167fԫ\20\161\156\205\215ig\243U\218{w!\163M\137u\0160)p\246|\233\1\159\183q}\127\154ǉ\127\140\"\193 \158L.Dm\163\243h$\128\15\172\253\234\158\213\245\188\241\203UT\17k\"\26`7\252#'\128YuJr\248fs\203n\155\128\216\239\21\16\244.\1964\250\3\223_T\239\"-\18\230x\229&O\129\143\238I\158\214\240U\243|ƅ\186\155\162j\127\234\146\25\2488\177\187\254\152\132jrm\195\251\151\166\152y\216\219e\18\23R_g\236\r{\0306<\25\226&r\173\149\135\228\169W2F\175\0313\232a\131<\239\nA\151\231\249\245\143;ʭ=\251\11\254\246\15\132\221\21h\176\221\227\01215R\133\176\26\186u\5d\217`=\16\209AD\161u\136\133>\220W\211\246\241\204}\167>A\31`q\0bO\11<\\\144n\02645\188Ł\132\t[\254\241\164Vd\165\12G\191\242\15\168Ʊ☱\197\251p_h\4\0H\151i\201\217 \203\230ؗZ\3\137\129\216`z\159yÁ\213X\214\253\3\247R\2?m\1798\240\221\236Df\193\170\2487r\4%M\225N\148\198\215#\163\29{N\11\219\0\30W\1798['qx\150\170\189\u{5FE}I\204q!m\191\226\20?\227\132k\\\247姮Y\234MG[k3\26`:\12\170\"F\11.\224՛5\0077\205\193\239\174\0\166\1738\4~6\"$\146\228/\160n\28\23234\143t\222Ŀ[E\232\11*2s\205~/\200\25@\208\ndh\197%\1\211a\190\147\132\172\"\176\162\128\190~\169\242[\252\u{90}\198\7\0#\138\1902{/e\190\22dE\28\136\237HP\233\1272%\184\159w5Δ\233\183\229N\150\165%(\172e\221\218\18gc\150t\182\227:\233\n\195B{\223\8\238\127\223\197r\173ƭ\212~\14\156\172\18\134\5\232潶\147\227\198c\234'}\202\2385!\12͆e?u\148>ЃA\239\200\247\29\2155\150*\0086`^B\175\250\216\2066u\239\229c\255\219/j\132J<\4\182\234\14\14\199\252\150\139E9\01213,\145\0\193O\202\244\2452*/\138\1493\252\231R\161\n\242\206ӘD\15\217i?b\217\4\239甒k\150S֍Be\224\226\168w\16\2\2\241\16Y\160\154U>\131\174\205.e\224)#\u{557}\147\138Il\164:\184\177\131\129J\138\149\188\167@@\206\22\16\212\23\234^\186\183&:\241~˰\172\25\174\1632Z\137d\2513\24\249ê\249\245\1f\161i\173f\182I\225\143\n+\1\253\211\192\23\2369Pz\198\r\161\6\173ģ\140o\209'ɡ\re\230_\31\173\169l\235\188`\178\209\233\138r\239\130\202*\14\15^\137\208]\255\246\250\224\148\4\168\134\r\n\187]P,.M3f\192\201\240\161\1748h\25\210K,q{#O-\240d\1949\23\199\19\226\215\209R\"a}i\162\30\158@\135W\243B\181=!\18\11\28Zz\rz\154\12c\133\23\185\22\27\229\22\11\240U\214\198[}\160\210\19\17\208\249\178\0\128\164\147\138t\245\207\22\174S/\231\252\191\239\r\"%2k\140r\186!2\193Mˊ\130pY\248;\188[\22#\25\213\198\245\152\218(\228\1523\154\154'\155\20P\253\196\249m\127)W\211S\177\221Ґ\128\196\25\160\179\229\165Z<\171l\248\4\249@\15GQ\224\27`\202ӑO\219Ǿ\138_\22\133[\162\139\1775\142\254pW\7\229ޙ\140+\29\247A\144\253U[Ga\0282O\24\192]\nәy\199r5X\15\250\182\154*2N\196\254܌\\\173\164-B\250ɼ\172\r(\136\195}R/P:\235\27\201>F\12\20<\19\249qn\193M\"\168Ɇ\158\4\28\212\21JXiF\173\202G\184\159hϟ\215+\2086\23\14\1350\224\140fY]#\12\tv\238\138w\201p\202p\28R\142\242\201\22\2191\236\155\2189\236\7s\230\150\213\196Z\190\183ڝ\5c\253s\242-\138>0\168,\188,\151\254ܳ\253\16\30\187*\184\222j\179냥V\210:\160\188AA\138\251\252!R\2260S\242\130\u{7B9}\221\206\197m\161D\177\235U\19s\191\227\22\128C\u{E03D}\201\30#\234\202\197\250\167!`yd\140E7\144\14\231=\139\250\11B\165\232W\191\144%p\133\227\239\21!\162\181\8\130\t\243\128tp\235\160\5ĉ\253gj\25\183uj\137P\188\201\1\216C\178O3Q6K\223\254hO[\137\\\243\237\149%&^\167\140\184\245\190\177\135\245I\130\226}֛7\18\228H\160\n\246\220#\209B\n\244\162\201\199-2BX\2512q8o^Sx-\3\198]\157\250R\tψ\132\14\220\5h\154ĳ\24\164OA\219\250\144\242\242\234\20\244\127לJ\31&\144\144\202\0116\19\178\155V\130b\141\n\250\173\210\245H7ڪB\189h-\28Aφ\143\\\22#S\5s\183\14\18\250\215\15\228\0214\8\232\24\168'\152\23\24\6\218̉\184\233-k\11e\136\232\197\237\253G)\2\8\249\31\169\217\227'\173U\24\177\226؈D\181}dt\227\222ਇ/?+7\242\245\154\133ޡk\1618\u{D9FB1}\242\199\15\164B\5³/'\211\192\164\155\207n\244\244\1506\225\0261\128$rSS\191\0f\1Drf\172S\244\20\179G>~K\148\195\231\247g\16\207t\rǿ\168\16\228\163cr;\128\24\169\8\157%\136\148\150a\17hŌ\221,\231\220\225\162\22\28\172V\180\133\22\200-#\220&\178\248=Ҧ\245]\205\196u\198Ĭ^ů\127wv\166ې\17\150Y\195\18\255ׇ\t\237\249\213[h\161L\237{7\15}n\243د\232\23\u{99}\218:L\200\27\t\2196\6!\219U\245\163AD\139\r\128\t-\2502\202\21i\204Ұ\229\1570j\242Hɖ\172ێ\130\237\213x!\138}\162\217\0119\170𨟨\148\130\169Ķ4\147\242\164%\138Ҍ\149\228\237\25$\2363\225\239y\176H\2398\181\224\180O\163D\139X\143;ݓK\188\2398\165\246\1642\232\17u^\171dC1\19/\133\187\18\n\184\162\0189{\169M\169\3\236M\189\143\16Lg2\142\2508+\22\20֚\165\4Č\165\187\197\1\179z\156\146\192\149\158\0254D\171\236\31\236\177H`2\2133\176V\209ڊk\147@\223\242G\192\150\2\129\tq\150H\22Ʈ\170\2083\236\17d\190\151R\216j\217\5\175\188w\163\170\203h\210\254נ\242\1\211\246ث\141A>H$\223\210\4\197h\240\238\143h$6\1591P.Ѝb+e>\218Bg\134\209j\155d1\3H\228t}3\175͚4Y|\145`\239aa$\204\227\199\250\19\212P\239\146Zi\130\t\252\0\225\16D\184\237g}\12\145\224\181\241\7\204z\251N\28\151\143n\230(\226z=G\253?u\136\136\2321Ε\250\8V]\u{5FA}\154\154v\168OpjM\164\246\179\223\248hl\1546\245\20\226\254ʎ\133`\30Gv\133\209U\151\155\25\140\138\152T\155ПH\163\134\233F\19\247+ᾝ\175\131Kǝ\189\163)XP\210d\183\214\30\28\166\227\160\15\203\230\160\255\142\11\1707\127\251\176\2\165q\238CfK\163@\160wo|^G\17ٷ\179^b\207P \239H6\31\14\137&\188\237L\171I\254\139h&@ \167\138\17l\144\152\191\248\217\7\240x\226\129B\133\156\241SBX\rL\226\198\7\n\r\19\159\193\191\219Z֎ςF#\195\11\190\t\217(&+\245\245\245V̶3\168\142\222ڀ\180\174\252\186<U\220\212\21\156\227s^\150df\238R9\5Y\247\185\137'\172\165/\147/\187\211\19\150\185\234\247z\127\152>\210\29\182E5\163\231K\177\222\228P\168\24lq\1\1803t?s\28\7\2229\4\252D\25\136\239\248\198|,\00144\138bѰ\7\239\28.\216ș\190^\137l\202\2\198\241\215$k\229=\172\246\n\173q\150!r~2\239d\234\0274\220x\234\205\196\242\14\211\17\204\12\30O\140\185\178<\198;\228\172E8\208\2265T\193\255s \161\8\139\237\136j\127_4\218\2026\242J\236CӃ|E\206-\2246J*\202-\216\234ʰ\251z\163g\247\238\187b\228\255P\4\156\250X\227\1561\131Y\139\200\21\132\2192\24ڢ\161\249i\247\224\210\215\24`\199\197\255\231\236{\191\188\30e\137a\21@{\149//\12\t/\t~\2\180\158.\154#\17\213g\1475\233\195Z\192U\17\248CVE\194.ե\209{kyK.\236\2400E\30\144\154.\146\143\244\1417z\199[\158\215\21~\224m\176P\184}\5\244hUA\1484\181\167|\4\169\170\171\144T\27\242\162\198f]\152l\134\7\186*3\215\218'\193\135\134o\27\249mo\14\11\223\195 Y94\r\15\144\241Y[\129:AH\155:\1473\144^\22\26\129ǔA7\183w\15\253\179\2\225T~\253\239\136b\226\25\178\23\"]\17\152\151\251!\30\158\167_\180\29\143`\t\223\28\130\247Ԇ\t\u{5BC1C}\147B\169s\5\0\22*\19\\\7\235\128iG\199vP\163\199p\194c\29)\244?B\148Q\199\209\0\25%젭\n.\6h\2083\231\224\151r_\138P\133\185?\242\17x\248\12Y-\153\219\221yc\157\135Z2\22o\241+@\217r\146\184H\148v$&\242y\236\216\243\179\251;\236\3ܭb\189m\25R\137@\173\27+ϢK\r\24\1y\250\229\127\251\2324\171\18yosҖq\234\163'\246o\160\142p\223\1\253\146.\243\228\4T\137r\5`|\182\152_Py\194ᱮ\216\1920O\23\200\225\247\137\213\nR#\206~#;3]\190:L\238J|\206\228Ŀ\233=q\5O\225\211\27\17\219`~l\243\241\144\4\190\209f\190\234\1/\215~\138Q\178*>з\12\213L\179\188.\127\195!\19231\3\8c\\n\136\27Mk\206\235/\26\171\t\21@\186U\1861)\160v1\163\157;\17\172J(\168\253\163\137\181\151u2\164|HC\150\155\24\231㷕\180IJ\161\183l8\172\221-X=[\213r)\17\169Q\134\137\168`\246\157\154\157\17\164\0277\161֨K\2486\8\173\218j\1778\17缛\23~\152\246\133?\142\185~ۡ\\\rn8\184\17\172\224\16\2117\141\168o\12)\26M\27\143\31\138}h\137\2275K\249&\30\160\247Ɉ\128\252S\202\3\250s0\24\19\167\12g\29\0225G\22\147\197\222ڋ\173x7\0\180\179W\155\0222\165yT\2291\160\177t@\247\216'\211\21\144x)W\149\0\200\241ZTj\134\253\232H\178\147\2106!\20Y}b!N\175w\8\140\186~\247\206\127!\221`%X\177h\169\156\1301\137\171\163\1\176\146\175\4\251\234\221m\219n}\"\221\230\212\246+\23aQ`\160Л\142Ȍb?N\203gyS\241[fq\"\165\5H<\166\239\182\192X\1655R\225\230\30\2323(:9\133\208u\176\17\243\205!S\214ll;#\213\12Ƴ\12\167\184x\190G\178L\201\"\133\11\2\158]\2299Mq3\223 Nc\29\163\186\191\11ܺfIP'\141\146\214\193˷__l\144mu\223]a\4\166-a\169\27b\183P/\157\206x\145\162\244{i\178t\159\157\r$S\0009\138\6\253`\170\218~\26\2449\192/\252\187$\204SPR\182XjEJ\187j\251\184M\154\245\210\230-\165pg\1463:\31$\\\6\162\137?\138\3O\143\1\235x\241\24v\243\209zf\172\152^\216z\1721\176D]\174\150\189\215`\154ݦ\193dkq\1760\181\195\0054\27\215Q\234\150\"\195S\155\247\160\228\201\212\253h\168\211\r\159\28\2322\242TMo:\25\165\2390XE\165\147\23_\0o.j\220\15\20\232\194庼\141\144\235!bz\249O\0259\219;}\236Qr\2={\20߆*\161\19\238#Z\12\187E\20\177\23\\\172\130\12Wm\3\158e\222\8|叩\209&\140t\152)\185\163\2295\140\191S\212\231\17\20;\181\rD\220\195d\13716,X\221\6\182yF\181\235\27L\\_6'\5\240v\183b\181H\1279\231ĝe\195\t(\133PM\208I\148\24\185۲$\0\202Vou\140\210ђ\246ʾ\186N\199\2094H\148̀7C\246\181\210\19\206l\158\231\246kGi<;a\195\24\235\143\6\208\5\14\nj\14\2307is1\251\144\r\254\157\4;\206\255\213L\164,cTD\0072b\149Ӄ\245\198fT91\182\231\244\155\159\186\177\153\190\220kq\172\136\182O\199\21˷UH\143\248\172\249\231t\1993\14;\22\221{\t]\1945e dqV\178\236\136\6?:*\15\12\15\222\235\166yv\22u\170\173۔!\128r\136`,E\201P\221z/\26\201\8\199\222\216\18\158\251=\\\15H\212r \242ֺ\228z\"8\t_\2\22>\20mrq\170\229\26\21,\157\145\248\155}\n\181\157v$m\\\1635\25\195\242\209-m\12\rWH$j\165\145\142\12[IS\211r\7h2\138\203\220\249\207\252\252&\u{97}\22 D\181\144\161V6\215\255c/\29X\153\207&S\184\165C5\166\205\16\182\234:\243\210*\147\174\173\16`\5x?\250\7\151,\139)mm\6\\\127'\2213 \233\127\151\245\252\1\140\178\189p;y\31\203!y\146GH\189\17\25N\127\15`dɾ\251g\26\158\181\22\136<\30˖\233\1355qԼ\222hm8I\141\187m\249\214\17X\1685(e\253\171I1\7y\247\173\206C\131\170'6 \190\157\242\152^\166p\208d\242\r\186\229\u{99}@\255\12\153N\t{\230R\147\02320]\195-\181\167k\u{EE60}S\14\150iaU\133\ru\\ \250\195b0u'\204!W\213\228\0141K\3\239\165~9\148\12\219!5\30r\232\15\225\209h탿\195\28]\186\132\144\219\210\208\228ȁ\251M^\251Ҩ\167\133\218\15(\246\182k\184\18ٍ\145\5G\235\4<\181R\22\185\148\159\127\210\24Բ\225\29\14\29\138\244z\208L\1744\162\196i\31\14\152\199\244Y\253\173\129[˗\193\0s\171\199\254̰\1\199<\27\127\22\198~O\8U\231\184\254\136[\170~\30\205\4\234\16\180\2010s\155ߢ\252S\226\216!\180\253k-\2286\\\154\"\134Yr\182\248\127\195KԪ\136\162\208\2E]\185*6\184C\0059\193r\231\249\246\159\19\5\2360\127\25\127\204&D/ˌ\250\190\147\253\218\252\255UZ\12\154\5\232\243\166\225,\12\220*\249\252\251E^\2088r\223\11\1437\209%\234Պ\228V\227\254=q\225U\220\244\231*'B正*<\231\231\184g\2017\233\222%\17;\166\187\7z\24\253\232|\173\151\209'rǢ\176\246l\240x\22\245\137ͲD\198\236x\202\244S\141\131-\208N'\170Q\237\179e\3\218\196\219\21\144\164{e\1837r\193\244\155\254Lr^\244\162\244\1487\180j\177\162\189\151\151\180\187\n͕\136\t\245\245\173\254\145\21rܯ\196b\254&\t\131\208\4\168nR\183\139\191\181\226\6}\\\171\27dB\183\214\6\194\29\146\155\16\249\232/M\236;<`|\227\19\175\20\231Ż2\187\240]#\231W\4\150\150/\174\193\240!\196b++\r^\155\2365\224\193]C\162\178)D\232\185N\r\230\160 d \129\0\188z\214\243\197F\180\190\6ohɆ\227\1990Xy8?ǳ&c\0318\19Yh\228r\tГ\17<\178\1556\22\151\132\143\17\209\228=\211\193\250\167\170\245\24\175,Zr̈́\235\247k\160\202{\22\150\149\127\249\137\145\242\184W\244\2\148x\157]\22Y\178\168~@\22\229Y\159\203\229\2237\238ų\231( \25\4\188M\187ZN﨔_\217\237\24\12\158\151]_\u{557}\202t{3\21\217չ\181휻\2444\29\195m\190ǃb\20\14\15C\141|\184Pڙ\165\196\247\227c\133\155\127\133`\148\188\186\6\150\156\12\0\133\u{AD}SZn\136QKd\223\239m\0192\168\199\240\243\160\3\19\1476\159\185,\240\8$\251\252\2\185\2ℐO\144b\12Nm6\213\228\158\234\228\156ط\130F\175\249z\169;;mX\"w<Mڷ\0035>\220\247\238\232o^\164\12?<\176>\159\27^\146\225\205![e\224t\185{IL\127\141\"\189_\136\2057\1327\235!\238\7\171\231t\142\26\137\1596\186\2559\213(\217\11\2103}\213]\175z\153v\"&\tp\155\234\253\184?\239\177a\r\169\139$M:\144\226g-\3\22Ө[\136m\227\192\14\181\180\27\233\1499\254\15PT\141\158n\132j{Ϯ#\171\18F\18\202!C\192\229X\231x\17\232\128\242\178\192\0\1906\240\12\169S\135\220\215ɦ;\29\176\193@\196\226\200Ч\r\227bn٧\2444\149b\232\152\0050\205iE\175i(\251\177f\0110`T\207\217\t\154\231\150\18M\21\252/'\205*&\231\20q\143\182\14\25B\3\5\167,\153\201yU.\215\200\248f\197\2\160n<֥|-L\248\136յ\209\198'N\129?j\241\14`\245\167J\8T\187p7\204\248\216\227G\248:)\241\169\30G\148\193-3\191\0\4\183\5\196\246S\222S!2)=\193L8\252\143pƢ\247\216\23\208\245P\240\172\16\190\193\166\195\18\149 \172\21\29+1K\181\16\133ݔl\144\t\160\167D\151\n\3\243\6\r\226y\4\235\236\138oj|\255\179G֩\243|t)\141cC֕\135\138\2:e\225\132vq*۾&\134H[\179M\133=\19\146\134\182\242'\16\157\241%-\172\140\244\28\184\246\131\176l\180W\210~\148d\131\237\21$f`>'Sr\162\26\131\0'\220-!v\23\155_n\183\249\231%G\223\6\rz\186\24\140\140\183/k\154^\155\252\233\229\127\135\242\237ئ[\168\177z\12\165;p\254\189\183K\183$h-\171\145䛏\158\19\187\18s\24\158\174\146zŔ\145\185|$\127\170\149\30\129\191B\158`\202\202<Ӕv\23\0073R+He\1442\188*\127\154g\30hf#\178Vz\6\r0U5\164\215}&W\240\248\251\243\160\\ݳ\131Of\250\177\242azG\1298.,X\190}\185\rK\174#\30#\243\235\30\129\243<A\208\213\2264?^\154\223Y\173\155\138\184\233s\181\230\28\219\2238\r\177\2\241\231Q\161W\204\25\163\26\163!\179\197\216L%\181\2380\173\183\141\229\225\198N*\137C\235?\197s\231\131'U\149\134\26\236`\141\181\181\135E\136\27@\209XN\140\132\5\210\218\241<\194c\219\243U'Z\243\219\0215?\20\171;+\233\167Ë\188\4}\207qyڛ\14\211Qu3\195\6\199\n\29q\159v\175\129ár\171\173p\182\159\\\199\27\164\1306\229\183\r\173\rm\243\15îL\157~Ĩ\12\15\173\148\247o\252WB-\25\172w\19&\8\196l\129\184tis\22 `\240bO\240\31\31\227s\29i\171@\202\243\172\160\221@\222;\205\19\139Lq\167\0Pb!\129I\23\t\166=\251h\207c5\"n_#\189\235\t\136\229@\245)\222\225ĴՕ\1831[\210>\198s\192\190͌\20\239\191\234Ai\187q\0tP*\1467.U\230\245\217\255\225\221\230\190L\250a\185\153E\232\177\6\255\197\16\164\176U\199C\194]\228i\221X\203;&\252u\243P\16\14\204\6\165\151\18\229S\163\1510$\182\130t&\224vbvI\190-\21\17\245\146\185,a\187a\190!\161iq\137\3D\250\226Cϳf(5r\151\237\243\224\209jxls\\\197\0\18c\244\169\192`\250\137U[\169Y\177\137ϊַ\1681,\t+*~\253\135\142`u\198\\\137\235B\237]\251\11\212{\1t-\133D`'Cr\180\163@MI\161\7\r\175\172s+%\161\8\195\r\6\2\216\251\11yy_\247\t\186\170\162\140\147\205+\195Mc\144\26B\226\16\2420<\2;\250\5\171O\11\197]\244L'\182g\148\\k&;\220<Є\176\213h[\14.\27Q(\140\17\203\253\184͎ؐ/-\17L A\250\251\4\2378\202\251\239\23\239*M\144\250\241pYo\162\188\244\31\231C\8U\251W8\235\194\216F$\155\22;\n\149Σ\166F1S\189ޚ\243\127\172G̗[a\24\178\169\19^.\212\17/SC\"\12P\167\1540\193\172\7n,\27\238ȕWډV\219\12\248\243\204\228\253\182i\134\237\185>\219\16\30\132\167\253\158tAo\146\t\193j\139\136R\227\242\155\r=sl\250\220$\194\255\163\182P\167\223b*\1496\191\0 \145[$ݥ(\191\214\8\173HkZ\191u\158Z\15\134qE\192w\166v)\02280\193\176\2\145\245ڔX\232\141jZ&(c\254\129\210{[\188\197\206m\235|\210\231*\212\242\25\244&J\150\140\132\141&\246\159)\156A\11\133S݁<\11(eR\233\145\232\179\224\22p\240\220\17\142 \187\3\r\25K\t9F\175 \157zӐ\230\131\243\227Y\0\173\190\195t&Ͳ\233\239\221\203x\2234\131\227y\135t\143+\131\25\218q\11\166\251\177\255U?\254\255?\252\204)\11\19\25\253\245M&\251V;\186\0140\216'\11ȫ\238i\202B\148q\174\202\15=\254O\200K\215u,\175SE9@\232מ\246\233\2322\251\198`,Q@F6yDZ\232X\231\160\2\201\223Yh\252줪WM\25;k\253P\130ݝL\rpd.\144f4\190\132\16\231e\250\213(ʀ\219\nS\149\191\163\1994\215\250\149\2\247\214$ȩn\219\31\237n\239\n\197\15\188\146\28;M\141!\178\248R\172\234\190TDv\155\28\221\" \147\189\129\6>\145֭\185\185\128\191Yr3\245\138Ә#5mP\5m\146\200;X\219)\163+\143@\172\152\169(\184_\30\1999\135W{([\177z߁wBo\208Ǆ\143\232\135Y\234\177\3QM\222\192\242\223\00244\218\11&\165ן\197\209\28\186\129Y\\\6yI5?0\153\\1\11\192\132\211B\134>\160\227vVĝ\187\255\229\1533\187#\250\3q\235$i\212\216\219\"1ћ\254\156Wc\1768\196ơ\226\2066\154Y\27\198\211\243v\4\167\237=\7I\234a\194\23[\236\214\31_\1816\153\134\152\250\250\2132\27\227\251/s\197\238-\0212\254\157\183\1639\23\181\181\249\127\144\2N[K\189\150\168\142\239qya#\r\21\3>\242TT\216n\172s\136\208-e\184@\15C\133ԊV\141\245\160^\206\199\27d-2[\152\146K,k\250\253P\170Z\181\184K\177s\185c\239D\218ȓ\249\29p\246\137>_w\27\161\8a\149\144\141\2068L\247\237\7\232\189\n\186\161\146Sһ\252\164Ҡ\31\160\28\166y\167\253\226\0260\155\27\211H\243 \150\154\28\241\193\25\140k)&\17\194g\0\235\226\177\14J2\2485q\226\237f\209'o\248*7Or\177I^}b\187\160\129\249\228!]\t\142\177˖\202\238\222B~L\196\215R\137\197\29e\243\n\17\248\245ԑ\178ſ\\K\146b~\215/\145\14\131\214֘%\222,\4®$\226\199I\0248\198\213\236߶\2486A\215qi\152\211}%\204\30!:\188v\192\12\27n4~Z\245>Y!<Z\214\254\184)\162\182Y]\243,\174OG\252\185\132x\11\130J\177f*\136\23)>\28oL_\145\140\164\23ѷ\242\228\217kQi\11\25\"*\188^\161}\159 \20\140\144\220o\143Mod\237̩\149\181=\177\2[8No\195\r\250u\u{5F6}\162\27}u6\0183\129\151[\20\15\183))~\7\145\153\228\3\190W\191\197\2504\241|\175\185R\129+\179,K\4\29\194W\127l\5Muj\213\233\166\15\0001պZ\129\249'\188Vց\23\245\20661H\11\1߽\155]\160\128\228\0148\166\207\8\212\235\19\7D.\217\31<\0\162/3\147\27\0120~`\188B,\135GnR\237Zn\135gk\192w\4\239\129K\191F\23\16\245ץZ\142\235D\210\204M4E^\149\151/|\228Q8\157Q\n\148\153\199\218.\230\143(\219'Ĉak=\143\194̭B\161\23/\244\127\222\15ZƱ[\183\127m\180֢nF$\27\227\184Ŵ\140\165Oű\165\180j\174?6\175\201\253\22c1\"\212\n\230\138&[\148i\5\144\252;VH-ٲ\252\156\254@\163\139>\nm\157\176\166\178[O\254\198\250\177\170\175z\3x\24V\227\171.`M\237C\156\140\146\2538D\188\4\218\209c\222HV\207\227\202r\12`3\186`\207*:\31Lٷ\29Sv\t\162b\227\r\196\225\156v \169,\228\224'\174\166\243\12E\232R\198\203k\ni\12\226\137MU\240\158\243\233O\200j\17\231g\220\225\173\11\26\192\240\174\192\152\5\174\175%\30E+\206\249WZ$\151\129!i\162\162L+!c\222t\246j\179\181\247j\212o\14T\22\4<Z\146\224\188\20,\203j\8K\245'텓\195a\30\23W\149rA\5\195Y:.0X\222$-[x\31\4\129Č\233\234֟.\202P\212\213\193q\216D\180Bd\137^a\189\1605\129\230\143\12\135Ѡ]\31\5\138\12\16\250\237\6\16F[\5\193\11\14\30\170\133-\250\186\t\250\11\0314\1\253\146\169\248\200>\186\225\191=y&\159\176\22\247{\23܆;\176\138s\212\192\188sq\181\168Y\169|C\146*Ð~Ƞ\182Y\3\28_\244\183\24\1306\201\216F O\2432{A\165l\194\223j\200I@R4:\230E\199\21\\A\2383\248\227!\249\163\252\3\173\234l\1\163\248\166\24t\210\211\215\8;O\155\163\183y3&U\20\157\245\26ꅔ\21\249\234\149k\20=&\143\136\128\137\2\179\201\252E\137\4\253:\165\237\199{\241\135\141_\244d\189\183\214\201\20\243\145\137\2033\172\167ZCp\198T\139\246>\r\1\\\167z\162b\228\247\228<{\241Ƅ\27\244@&+5y\196\16\166hܕ\225\140X\147\181\239\204ƞ\138\225\243%tt\196\240\170\156!\140\226\237\220\23CĵД\149\193\236\149/q\166\249ϦM\252\144\154+\8O\134Ğ\20\251\155=\131\164b)\1\181\127z\224v)xs\224\r\202[ͥ\140\15.Km\r\6P\227\202:\200\25W\128\140D0j\20\8\156}\206\254\127\218r*\127\168/\7x\131\238F\162N\228世\4>\163_\220Tfڈ\157$\186\15\237\247\132\190\160 AZ`\127je3\144\163H\25\8\217\\y~\158\228L\236'\16\2322@\195;\148\246XB\21"), {
		[15] = 167,
		[12] = 124,
		[4] = 251,
		[7] = 105,
		[3] = 223,
		[14] = 191,
		[9] = 54,
		[2] = 41,
		[8] = 182,
		[13] = 8,
		202,
		[5] = 161,
		[6] = 165,
		[16] = 173,
		[10] = 199,
		[18] = 209,
		[17] = 134,
		[19] = 246,
		[11] = 240,
	}, 408)()

	local moduleSessionToken = v27.moduleSessionToken
	local moduleSessionSecretHex = v27.moduleSessionSecretHex
	local moduleEncKeyB64 = v27.moduleEncKeyB64
	local moduleMacKeyB64 = v27.moduleMacKeyB64
	fn6 = nil
	v11 = nil
	v10 = nil
	return v28, v27.execDecKey, v29, moduleSessionToken, moduleSessionSecretHex, moduleEncKeyB64, moduleMacKeyB64
end

local function fn22(arg, arg2, arg3)
	local v14 = v9(arg2)

	spawn(function()
		local v15, v16

		while true do
			task.wait(180)
			fn14()
			fn15()
			fn17()
			fn16()
			local v17 = fn18()
			local v18 = fn19()
			local v19 = time()
			v15, v16 = v(fn5, str2 .. "/heartbeat", { ["X-Signature"] = fn20(arg, v14, arg3, v18, v19), ["X-Client-Version"] = str }, { licenseId = arg, hwid = arg3, nonce = v18, timestamp = v19, tamperFlags = v17 })
			if not (not v15 or not v16 or v16.ok ~= true) then
				continue
			end
			break
		end

		fn("heartbeat failed (ok=" .. tostring(v15) .. ", resp.ok=" .. tostring(v16 and v16.ok) .. ")")
	end)
end

local license_ = license

if license_ == nil and v2 then
	local v14, v15 = v(v2)

	if v14 and v3(v15) == "table" then
		license_ = v15.license
	end
end

if v3(license_) ~= "string" then
	fn("no license key found (expected a global `license` string)")
	return
end

local match, v14 = license_:match("^([^.]+)%.(.+)$")

if not match or not v14 then
	fn("license key doesn't match the expected \"<id>.<secret>\" format")
	return
end

local v15 = fn7()
local v16, v17, v18, v19, v20, v21, v22, v23 = v(fn21, match, v14, v15)

if not v16 then
	fn("validateAndFetch failed: " .. tostring(v17))
	return
end

fn14()
fn15()
fn17()
fn16()

if 3 ~= 3 then
	fn("scopeCounter integrity check failed (got " .. tostring(3) .. ", expected 3)")
	return
end

local tbl60 = {
	[13] = 10,
	[11] = 120,
	[8] = 238,
	[17] = 63,
	[15] = 110,
	[9] = 115,
	[18] = 142,
	[16] = 113,
	[4] = 174,
	[7] = 121,
	[20] = 106,
	[21] = 255,
	[6] = 185,
	[22] = 222,
	[14] = 141,
	[12] = 229,
	[19] = 172,
	[10] = 59,
	172,
	85,
	[5] = 62,
	68,
	[23] = 89,
}

luraph_runtime1(v18, buffer.fromstring("!\136\191\0A\254炆\153\210\225\23>\153%\139I\133{\3\\ˍ>\152r\250\162\230;`Q\208\24\r\7\250^\135\198m$\230\145\12\142T%\239K\230\182?6\14\189\198g8{\151\128\163-\8\140\234\23\169\21\2017\tz\134\249\148\22\159\187\135$٘tf\137tR\2246\229p\194\29\249\207\31¯bV(V\29SdnR\203喁\165\198,8\25\180\161\143\244$N\140\251\255\236φ$\211k\189\21$k\224T2\130E\234@&\140\217u\160\200v\150c\168\163\240\213v\224\6\250\8\244\139u=\28\239v\196{??\134\208]7\135\140`'q\139P\162\190V\164\238ڠD\187pxT\240\247\1707\164;\20\147\231^\133+\190\230ʋ\195\197Nd\190\152\1779e\219N\210gi\1685\157*\192\184\164\182\6\193C;\249%\154\173\22\251\248B\175z\180\167\243\243Y\183\141\16\166]\255\22\203\196\193\22\24\213\247\227\167\0\220n\241\162:W\193\132^\235\"%\203sw\186\248L0\134ď\211\14\232\146߇\174\21\160#Ŵj}\129&\157\193\242l\144̂\146\144{9&L\151\u{EED}n~\198,\150\2429\201\252\178;\8\195\252q\237\183\204\21Q\174Yl~\252\22\16\201\12\169Vp\217 \139qԽ\247\215\204\193\199s\176\254L\240{\185\250\8\144j\21\127`ꍶ\213Q\220\253\179\203\238x\2\t\136\209W\201ǖ\176q\237\210J\161\223\12\198߹\31\165E\127\248\22\182$\187c\1882S\176M\196y`'[yą\nv\138\30,\189\219\2241\5\136\196B\253\241\254\184\n\160K\193\2\163\132-\229#\1439\ro\170&b\209\15\142\207q\131\137j?$\183?\186\tbW\137\235\138=Ŧ\19\136\18t\27\248Zҡ\193\u{7BD}\r\212>u\2\190\247\192\161c\236v\179N\228\4d\6\169\6[q\1894i\15\221\238w*\4\142\2491\239}GN\176bef\193ç|u͞5\173^_\1821\188\155\163|J\143\131\19\189\134i*\160\22\243+OI\5\136S\240:m\148\142\241{I\31\128\183\130u\250\170\190\19D\131x\166b\217J\200@3\128^3\244\22cV\179$\14\239\244OX*\176\138\14q\24\rpj\n\245\175\212u/\178+\226`\224\150\139\141\238c\129E3\172\162\175ϞWgҽF0P\206gfNCe\216\2252/m\227:\30\5\21t\\/$\1335\166Ap'\155\179\130rS%\245T\18754䋅\211f\24Q\142\30\171\21\221z\197\11\20R\2100\146.\1922\253\182\147\180d\202}\178\158\178\150\168\149\190)iMW@H\6\230س\158\161o\131\232>\245;\229\241\200\25~\232\147\2139j\22\t`\0084=\2\175ΉM\8X\239\20\208\215ȍ\137\137\171\173j\139\168\20gy?%\18m\01492)9!ޭ\160w\197\231\27\238\204R\192#bE\218+\195G\160\254\187U\150\199\6\128\246R\173\236#\151\19w\n\1SŜ\n\159j\176\152\193\246SӤ\227;%\157\244!\250\2537\223y\0236\212\8U\138\240#\180?\190\t\31\254x\143\142\158.[\166\188\149\198\211^\0\146\131A\n_)\217\200)\15\231\246\149\153\17\252N\192g\253I\181T\8\226\21]\166\228=s@\165\141]\192\179.J\7\176ݳ\218)\135\181%V\187ĕ\224\19|w\0\171\14\134GY\244|e\148\162\4Q\215\236D\179\167\159\183\180\163\247\232\182\213\"\146\140\184\0188-[\207\28Yq\15is\151,-ȍ\149\232T4\133\24%O\146\16\213wZ\249\156Ip\178\208\207\221\247\201v\169Ѧ\11\136K\203>5\215=B4\166<2\0015\r\2424#_p\178\195L\193:#8\30\154\238L\242\185~f]\209\239ܐ\180\198(\163\150DN\128a\233\248'\134&\180\2\179U\249\155f\229\251\19\151\144ꬖ1\\\222\220\127\172\235>7\n\243\153RF\29\163\129~\154\255gJ\171R\144\156\154>\251kM\132\132b\0@{0\0\202\193\168\254\248\164\129/\137\0248\6\236M\223\193:5\220x_蕫\220\199\235\218\218\209f\230Hb.j\234\242\169\204]\170l⥗\171\192\226\167z\224\18\165[C\0\191s\165\249\250\166t$\1645\127\149J\3\200M0'\137\206o\234\219S\228H\129\17\186\14:\0143\254\237\237\185\211\195Ki\143\224\2015\248O&\165\25\181\246\152\198\213?\131n\156\175\8\1\219\244k\211(\7K\144nl\143\157\154\2510\200gI\209l\228\0127\31R1Q,\244xb\228gsg\6K,-r\225\127\\\3\237\170de\239\153xY\223U\2451\140>du\16\248\20Æ\15\201\29;\187\228G\175a\215>\193\193jO\8\129 !\226`y\220f\190\168"), tbl60, 375)()
