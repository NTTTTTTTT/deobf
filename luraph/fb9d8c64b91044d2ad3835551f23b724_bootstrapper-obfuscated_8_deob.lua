local n = nil
local n2 = 23
local tbl = nil
local activeKey = nil
local n3 = nil
local n4 = nil
local fn = nil
local n5 = nil
local n6 = nil
local n7 = nil
local n8 = nil
local n9 = nil
local n10 = nil
local n11 = nil
local n12

while true do
	if not (n2 <= 18) then
		if n2 <= 27 then
			if n2 <= 22 then
				if n2 <= 20 then
					if n2 <= 19 then
						activeKey = getgenv().Radiant.ACTIVE_KEY
						n2 = 28
					else
						local v = table.pack(bit32.band(bit32.bxor(3648882464, n8 + 266338589), 4294967295))
						local v2 = table.pack(bit32.band(v[1], 65535))
						n6 = (1 - 2 * n12) * (1 + (n6 * 67108864 + (n9 + n10 + bit32.band(60625 * v2[1] + bit32.lshift(bit32.band(60625 * bit32.rshift(v[1], 16) + 63988 * v2[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n7 - 1023)
						n2 = 27
						tbl = { 1, tbl, nil, 0, #n5 + 0 }
					end
				elseif n2 <= 21 then
					local v = bit32.bor(n8 + 1974644694, 401033289)
					local v2 = table.pack(bit32.band(n10, 4294967295))
					local v3 = table.pack(bit32.band(v, 4294967295))
					local v4 = table.pack(bit32.band(v2[1], 65535))
					local v5 = table.pack(bit32.rshift(v2[1], 16))
					local v6 = table.pack(bit32.band(v3[1], 65535))
					local n13 = bit32.band(v4[1] * v6[1] + bit32.lshift(bit32.band(v4[1] * bit32.rshift(v3[1], 16) + v5[1] * v6[1], 65535), 16), 4294967295) % 4294967296
					local v7 = table.pack(bit32.band(bit32.bxor(401033289, n8 + 1974644694), 4294967295))
					local v8 = table.pack(bit32.band(v7[1], 65535))
					local n14 = (n9 + n13 + bit32.band(14810 * v8[1] + bit32.lshift(bit32.band(14810 * bit32.rshift(v7[1], 16) + 35072 * v8[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
					n8 = n3 % 4294967296
					local v9 = table.pack(bit32.band(n8 + 4055988929, 4294967295))
					local v10 = table.pack(bit32.band(v9[1], 65535))
					n9 = 51657456 + bit32.band(10668 * v10[1] + bit32.lshift(bit32.band(10668 * bit32.rshift(v9[1], 16) + 5335 * v10[1], 65535), 16), 4294967295) % 4294967296
					local v11 = table.pack(bit32.band(bit32.band(n8 + 4055988929, 2482377524), 4294967295))
					local v12 = table.pack(bit32.band(v11[1], 65535))
					n10 = bit32.band(44200 * v12[1] + bit32.lshift(bit32.band(44200 * bit32.rshift(v11[1], 16) + 54865 * v12[1], 65535), 16), 4294967295) % 4294967296
					n2 = 36
					n11 = 3945322069
					n3 = n14
				else
					local v = bit32.bxor(3832767544, n8 + 1788240122)
					local v2 = table.pack(bit32.band(n11, 4294967295))
					local v3 = table.pack(bit32.band(v, 4294967295))
					local v4 = table.pack(bit32.band(v2[1], 65535))
					local v5 = table.pack(bit32.rshift(v2[1], 16))
					local v6 = table.pack(bit32.band(v3[1], 65535))
					n4 = (1 - 2 * fn) * (1 + (n4 * 67108864 + (n9 + n10 + bit32.band(v4[1] * v6[1] + bit32.lshift(bit32.band(v4[1] * bit32.rshift(v3[1], 16) + v5[1] * v6[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n5 - 1023)

					fn = function(...)
						error("devirt: could not lift closure: upvalue index boxproxy(12)")
					end

					n5 = LUAW_DATA[8]
					n2 = 0
					n6 = 1146639688858775
				end
			elseif n2 <= 24 then
				if n2 <= 23 then
					local v = ACTIVE_KEY

					if v then
						n2 = 28
						activeKey = v
					else
						n2 = 19
					end
				else
					local v = bit32.band(443733371, n8 + 2620013772)
					local v2 = table.pack(bit32.band(n10, 4294967295))
					local v3 = table.pack(bit32.band(v, 4294967295))
					local v4 = table.pack(bit32.band(v2[1], 65535))
					local v5 = table.pack(bit32.rshift(v2[1], 16))
					local v6 = table.pack(bit32.band(v3[1], 65535))
					local n13 = bit32.band(v4[1] * v6[1] + bit32.lshift(bit32.band(v4[1] * bit32.rshift(v3[1], 16) + v5[1] * v6[1], 65535), 16), 4294967295) % 4294967296
					local v7 = table.pack(bit32.band(bit32.bor(n8 + 2620013772, 443733371), 4294967295))
					local v8 = table.pack(bit32.band(v7[1], 65535))
					local n14 = (n9 + n13 + bit32.band(64625 * v8[1] + bit32.lshift(bit32.band(64625 * bit32.rshift(v7[1], 16) + 55464 * v8[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
					n8 = n4 % 4294967296
					local v9 = table.pack(bit32.band(n8 + 1788240122, 4294967295))
					local v10 = table.pack(bit32.band(v9[1], 65535))
					n9 = 2357875032 + bit32.band(41533 * v10[1] + bit32.lshift(bit32.band(41533 * bit32.rshift(v9[1], 16) + 13932 * v10[1], 65535), 16), 4294967295) % 4294967296
					local v11 = table.pack(bit32.band(bit32.bor(3832767544, n8 + 1788240122), 4294967295))
					local v12 = table.pack(bit32.band(v11[1], 65535))
					n10 = bit32.band(48006 * v12[1] + bit32.lshift(bit32.band(48006 * bit32.rshift(v11[1], 16) + 37670 * v12[1], 65535), 16), 4294967295) % 4294967296
					n2 = 22
					n11 = 913089086
					n4 = n14
				end
			elseif n2 <= 25 then
				n8 = 11124720446
				n9 = 8776504629
				n2 = 33
			elseif n2 <= 26 then
				local v = bit32.band(531307661, n8 + 1435185017)
				local v2 = table.pack(bit32.band(n10, 4294967295))
				local v3 = table.pack(bit32.band(v, 4294967295))
				local v4 = table.pack(bit32.band(v2[1], 65535))
				local v5 = table.pack(bit32.rshift(v2[1], 16))
				local v6 = table.pack(bit32.band(v3[1], 65535))
				local n13 = bit32.band(v4[1] * v6[1] + bit32.lshift(bit32.band(v4[1] * bit32.rshift(v3[1], 16) + v5[1] * v6[1], 65535), 16), 4294967295) % 4294967296
				local v7 = table.pack(bit32.band(bit32.bor(n8 + 1435185017, 531307661), 4294967295))
				local v8 = table.pack(bit32.band(v7[1], 65535))
				local n14 = (n9 + n13 + bit32.band(56452 * v8[1] + bit32.lshift(bit32.band(56452 * bit32.rshift(v7[1], 16) + 16188 * v8[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
				n8 = n6 % 4294967296
				local v9 = table.pack(bit32.band(n8 + 266338589, 4294967295))
				local v10 = table.pack(bit32.band(v9[1], 65535))
				n9 = 2800793088 + bit32.band(4912 * v10[1] + bit32.lshift(bit32.band(4912 * bit32.rshift(v9[1], 16) + 1547 * v10[1], 65535), 16), 4294967295) % 4294967296
				local v11 = table.pack(bit32.band(bit32.band(3648882464, n8 + 266338589), 4294967295))
				local v12 = table.pack(bit32.band(v11[1], 65535))
				n10 = bit32.band(55712 * v12[1] + bit32.lshift(bit32.band(55712 * bit32.rshift(v11[1], 16) + 62441 * v12[1], 65535), 16), 4294967295) % 4294967296
				n2 = 20
				n6 = n14
			else
				local v = tbl[1]
				local v2 = tbl[5]
				local n13 = tbl[4] + v
				local flag = v <= 0
				local flag2 = not flag
				local flag3 = n13 >= v2
				local flag4 = n13 <= v2
				flag3 = flag and flag3
				flag3 = flag3 or flag2 and flag4
				tbl[4] = n13

				if flag3 then
					n2 = 11
					n12 = n13
				else
					n2 = 14
				end
			end
		elseif n2 <= 32 then
			if n2 <= 29 then
				if n2 <= 28 then
					n2 = activeKey and 25 or 15
				else
					local v = table.pack(bit32.band(n8 + 2904437049, 4294967295))
					local v2 = table.pack(bit32.band(v[1], 65535))
					local n13 = n9 + bit32.band(50263 * v2[1] + bit32.lshift(bit32.band(50263 * bit32.rshift(v[1], 16) + 44359 * v2[1], 65535), 16), 4294967295) % 4294967296
					local v3 = table.pack(bit32.band(bit32.band(n8 + 2904437049, 1330826675), 4294967295))
					local v4 = table.pack(bit32.band(v3[1], 65535))
					local n14 = bit32.band(15272 * v4[1] + bit32.lshift(bit32.band(15272 * bit32.rshift(v3[1], 16) + 21176 * v4[1], 65535), 16), 4294967295) % 4294967296
					local v5 = table.pack(bit32.band(bit32.bor(n8 + 2904437049, 1330826675), 4294967295))
					local v6 = table.pack(bit32.band(v5[1], 65535))
					fn = (n13 + n14 + bit32.band(15274 * v6[1] + bit32.lshift(bit32.band(15274 * bit32.rshift(v5[1], 16) + 21176 * v6[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
					n8 = n3 % 4294967296
					local v7 = table.pack(bit32.band(n8 + 1974644694, 4294967295))
					local v8 = table.pack(bit32.band(v7[1], 65535))
					n9 = 3542386401 + bit32.band(14809 * v8[1] + bit32.lshift(bit32.band(14809 * bit32.rshift(v7[1], 16) + 35072 * v8[1], 65535), 16), 4294967295) % 4294967296
					n2 = 21
					n10 = 3992947790
				end
			elseif n2 <= 30 then
				local v = table.pack(bit32.band(n8 + 3848331702, 4294967295))
				local v2 = table.pack(bit32.band(v[1], 65535))
				local n13 = n9 + bit32.band(45922 * v2[1] + bit32.lshift(bit32.band(45922 * bit32.rshift(v[1], 16) + 24528 * v2[1], 65535), 16), 4294967295) % 4294967296
				local v3 = table.pack(bit32.band(bit32.band(1637736682, n8 + 3848331702), 4294967295))
				local v4 = table.pack(bit32.band(v3[1], 65535))
				local n14 = bit32.band(19613 * v4[1] + bit32.lshift(bit32.band(19613 * bit32.rshift(v3[1], 16) + 41007 * v4[1], 65535), 16), 4294967295) % 4294967296
				local v5 = table.pack(bit32.band(bit32.bor(n8 + 3848331702, 1637736682), 4294967295))
				local v6 = table.pack(bit32.band(v5[1], 65535))
				n5 = (n13 + n14 + bit32.band(19615 * v6[1] + bit32.lshift(bit32.band(19615 * bit32.rshift(v5[1], 16) + 41007 * v6[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
				n8 = n4 % 4294967296
				local v7 = table.pack(bit32.band(n8 + 2620013772, 4294967295))
				local v8 = table.pack(bit32.band(v7[1], 65535))
				n9 = 2196080176 + bit32.band(912 * v8[1] + bit32.lshift(bit32.band(912 * bit32.rshift(v7[1], 16) + 10071 * v8[1], 65535), 16), 4294967295) % 4294967296
				n2 = 24
				n10 = 3634953327
			elseif n2 <= 31 then
				activeKey = (n3 - n4) % n
				n2 = 12
			else
				local v = fn(n6 + n6 // 65536, n3)
				n2 = 5
				n3 = 0
				tbl = { nil, tbl, 1, 8, 0 }
				n4 = fn(v + v // 256, n4)
			end
		elseif n2 <= 34 then
			if n2 <= 33 then
				n3 = (n8 + n9) % 4294967296
				local n13 = n3 % 4294967296
				local v = table.pack(bit32.band(n13 + 572470687, 4294967295))
				local v2 = table.pack(bit32.band(v[1], 65535))
				local n14 = bit32.band(0 * v2[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v[1], 16) + 32768 * v2[1], 65535), 16), 4294967295) % 4294967296
				local v3 = bit32.bxor(3293826578, n13 + 572470687)
				local v4 = table.pack(bit32.band(bit32.bnot(v3), 4294967295))
				local v5 = table.pack(bit32.band(v4[1], 65535))
				n4 = (2147483647 + n14 + bit32.band(65535 * v5[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v4[1], 16) + 32767 * v5[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
				n8 = n3 % 4294967296
				n9 = 1581642709
				n2 = 29
			else
				local v = string.byte(activeKey, fn)
				fn = n3 * 16
				local flag = v < 58

				if flag then
					n2 = 6
					n3 = v
				else
					n2 = 7
					n3 = v
					n5 = flag
				end
			end
		elseif n2 <= 35 then
			n6 = (219709185 + bit32.bxor(n8, 3495817888) + bit32.bxor(n6 % 4294967296, 2933973557) + bit32.bxor(n12 % 4294967296, 2372129226) + bit32.bxor(n7 % 4294967296, 1810284895) + bit32.bxor(nil % 4294967296, 1248440564)) % 4294967296
			n8 = n6 % 4294967296
			n2 = 3
			n9 = 2906146910
			n10 = 1161470756
		elseif n2 <= 36 then
			local v = bit32.bxor(2482377524, n8 + 4055988929)
			local v2 = table.pack(bit32.band(n11, 4294967295))
			local v3 = table.pack(bit32.band(v, 4294967295))
			local v4 = table.pack(bit32.band(v2[1], 65535))
			local v5 = table.pack(bit32.rshift(v2[1], 16))
			local v6 = table.pack(bit32.band(v3[1], 65535))
			n = (1 - 2 * n4) * (1 + (n3 * 67108864 + (n9 + n10 + bit32.band(v4[1] * v6[1] + bit32.lshift(bit32.band(v4[1] * bit32.rshift(v3[1], 16) + v5[1] * v6[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (fn - 1023)
			n8 = 971607971
			n3 = 1745966847
			n4 = 806354213
			fn = 2638538931
			n5 = 494522030
			n2 = 4
		else
			local v = bit32.bor(n11, 3091979289)
			local v2 = table.pack(bit32.band(n10, 4294967295))
			local v3 = table.pack(bit32.band(v, 4294967295))
			local v4 = table.pack(bit32.band(v2[1], 65535))
			local v5 = table.pack(bit32.rshift(v2[1], 16))
			local v6 = table.pack(bit32.band(v3[1], 65535))
			local n13 = bit32.band(v4[1] * v6[1] + bit32.lshift(bit32.band(v4[1] * bit32.rshift(v3[1], 16) + v5[1] * v6[1], 65535), 16), 4294967295) % 4294967296
			local v7 = table.pack(bit32.band(bit32.bxor(3091979289, n8 + 220339568), 4294967295))
			local v8 = table.pack(bit32.band(v7[1], 65535))
			n3 = (1 - 2 * n4) * (1 + (n3 * 67108864 + (n9 + n13 + bit32.band(10860 * v8[1] + bit32.lshift(bit32.band(10860 * bit32.rshift(v7[1], 16) + 18377 * v8[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (fn - 1023)
			n4 = 971607971
			fn = 1745966847
			n2 = 16
		end

		continue
	end

	if n2 <= 8 then
		if n2 <= 3 then
			if n2 <= 1 then
				if n2 <= 0 then
					error("devirt: closure of non-proto (at 130:69)")
				end

				local v = table.pack(bit32.band(n10, 4294967295))
				local v2 = table.pack(bit32.band(n8 + n11, 4294967295))
				local v3 = table.pack(bit32.band(v[1], 65535))
				local v4 = table.pack(bit32.rshift(v[1], 16))
				local v5 = table.pack(bit32.band(v2[1], 65535))
				local n13 = n9 + bit32.band(v3[1] * v5[1] + bit32.lshift(bit32.band(v3[1] * bit32.rshift(v2[1], 16) + v4[1] * v5[1], 65535), 16), 4294967295) % 4294967296
				local v6 = table.pack(bit32.band(bit32.band(3469693979, n8 + 584469407), 4294967295))
				local v7 = table.pack(bit32.band(v6[1], 65535))
				local n14 = bit32.band(1946 * v7[1] + bit32.lshift(bit32.band(1946 * bit32.rshift(v6[1], 16) + 18805 * v7[1], 65535), 16), 4294967295) % 4294967296
				local v8 = table.pack(bit32.band(bit32.bxor(3469693979, n8 + 584469407), 4294967295))
				local v9 = table.pack(bit32.band(v8[1], 65535))
				local n15 = (n13 + n14 + bit32.band(33742 * v9[1] + bit32.lshift(bit32.band(33742 * bit32.rshift(v8[1], 16) + 42170 * v9[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
				n8 = n3 % 4294967296
				local v10 = table.pack(bit32.band(n8 + 220339568, 4294967295))
				local v11 = table.pack(bit32.band(v10[1], 65535))
				n9 = 947001459 + bit32.band(10859 * v11[1] + bit32.lshift(bit32.band(10859 * bit32.rshift(v10[1], 16) + 18377 * v11[1], 65535), 16), 4294967295) % 4294967296
				n11 = n8 + 220339568
				n2 = 37
				n10 = 1886235434
				n3 = n15
				continue
			end

			if n2 <= 2 then
				local n13 = n8 % 4294967296
				local v = table.pack(bit32.band(n13 + 1346039577, 4294967295))
				local v2 = table.pack(bit32.band(v[1], 65535))
				local n14 = 2827475500 + bit32.band(5044 * v2[1] + bit32.lshift(bit32.band(5044 * bit32.rshift(v[1], 16) + 3411 * v2[1], 65535), 16), 4294967295) % 4294967296
				local v3 = table.pack(bit32.band(bit32.band(n13 + 1346039577, 3430412887), 4294967295))
				local v4 = table.pack(bit32.band(v3[1], 65535))
				local n15 = bit32.band(60491 * v4[1] + bit32.lshift(bit32.band(60491 * bit32.rshift(v3[1], 16) + 62124 * v4[1], 65535), 16), 4294967295) % 4294967296
				local v5 = table.pack(bit32.band(bit32.bor(n13 + 1346039577, 3430412887), 4294967295))
				local v6 = table.pack(bit32.band(v5[1], 65535))
				fn = (n14 + n15 + bit32.band(60493 * v6[1] + bit32.lshift(bit32.band(60493 * bit32.rshift(v5[1], 16) + 62124 * v6[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
				n9 = 1456715668
				n2 = 30
				n4 = n8
				n8 %= 4294967296
			else
				local v = table.pack(bit32.band(n9, 4294967295))
				local v2 = table.pack(bit32.band(n10, 4294967295))
				local v3 = table.pack(bit32.band(v[1], 65535))
				local v4 = table.pack(bit32.rshift(v[1], 16))
				local v5 = table.pack(bit32.band(v2[1], 65535))
				local n13 = bit32.band(v3[1] * v5[1] + bit32.lshift(bit32.band(v3[1] * bit32.rshift(v2[1], 16) + v4[1] * v5[1], 65535), 16), 4294967295) % 4294967296
				local v6 = table.pack(bit32.band(n8 + 2086477089, 4294967295))
				local v7 = table.pack(bit32.band(v6[1], 65535))
				local n14 = n13 + bit32.band(65535 * v7[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v6[1], 16) + 65535 * v7[1], 65535), 16), 4294967295) % 4294967296
				local v8 = table.pack(bit32.band(bit32.bor(1161470756, n8 + 2086477089), 4294967295))
				local v9 = table.pack(bit32.band(v8[1], 65535))
				n12 = (n14 + bit32.band(2 * v9[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v8[1], 16) + 0 * v9[1], 65535), 16), 4294967295) % 4294967296 + 3447412132) % 4294967296
				n8 = n6 % 4294967296
				n9 = 3403703718
				n11 = n8 + 3784539109
				n2 = 17
				n10 = 4294967295
			end

			continue
		end

		if n2 <= 5 then
			if n2 <= 4 then
				local n13 = fn % 4294967296
				n8 = 4266814277 + bit32.bxor(n8 % 4294967296, 3495817888) + bit32.bxor(n3 % 4294967296, 2933973557)
				local v = bit32.bxor(n4 % 4294967296, 2372129226)
				local v2 = table.pack(bit32.band(bit32.bxor(n13, 1810284895), 4294967295))
				local v3 = table.pack(bit32.band(v2[1], 65535))
				n9 = v + bit32.band(45983 * v3[1] + bit32.lshift(bit32.band(45983 * bit32.rshift(v2[1], 16) + 3597 * v3[1], 65535), 16), 4294967295) % 4294967296
				n10 = bit32.bxor(n5 % 4294967296, 1248440564)
				local v4 = bit32.bxor(n13, 1810284895)
				local v5 = table.pack(bit32.band(bit32.bnot(v4), 4294967295))
				local v6 = table.pack(bit32.band(v5[1], 65535))
				n11 = bit32.band(45982 * v6[1] + bit32.lshift(bit32.band(45982 * bit32.rshift(v5[1], 16) + 3597 * v6[1], 65535), 16), 4294967295) % 4294967296
				n2 = 13
			else
				local v = tbl[3]
				local v2 = tbl[4]
				local n13 = tbl[5] + v
				local flag = v <= 0
				local flag2 = flag and n13 >= v2 or not flag and n13 <= v2
				tbl[5] = n13

				if flag2 then
					n2 = 34
					fn = n13
				else
					n2 = 9
				end
			end
		elseif n2 <= 6 then
			n5 = n3 - 48
			n2 = 7
		elseif n2 <= 7 then
			n2 = n5 and 18 or 8
		else
			n5 = n3 - 87
			n2 = 18
		end

		continue
	end

	if n2 <= 13 then
		if n2 <= 10 then
			if n2 <= 9 then
				tbl = tbl[2]
				n2 = 31
			else
				local n13 = n3 % 4294967296
				local v = table.pack(bit32.band(n13 + 3003917261, 4294967295))
				local v2 = table.pack(bit32.band(v[1], 65535))
				local n14 = bit32.band(0 * v2[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v[1], 16) + 32768 * v2[1], 65535), 16), 4294967295) % 4294967296
				local v3 = bit32.bxor(1595270760, n13 + 3003917261)
				local v4 = table.pack(bit32.band(bit32.bnot(v3), 4294967295))
				local v5 = table.pack(bit32.band(v4[1], 65535))
				fn = (2147483647 + n14 + bit32.band(65535 * v5[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v4[1], 16) + 32767 * v5[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
				n9 = 3830568289
				n2 = 1
				n10 = 1531280435
				n11 = 584469407
				n4 = n8
				n8 = n3 % 4294967296
			end

			continue
		end

		if n2 <= 11 then
			n6 = fn(n6 + string.byte(n5, n12), 16777619)
			n2 = 27
			continue
		end

		if n2 <= 12 then
			break
		end
		n3 = (n8 + n9 + n10 + n11) % 4294967296
		local n13 = n3 % 4294967296
		local v = table.pack(bit32.band(n13 + 4249727205, 4294967295))
		local v2 = table.pack(bit32.band(v[1], 65535))
		local n14 = 1175767852 + bit32.band(65535 * v2[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v[1], 16) + 65535 * v2[1], 65535), 16), 4294967295) % 4294967296
		local v3 = table.pack(bit32.band(bit32.bor(n13 + 4249727205, 2841079694), 4294967295))
		local v4 = table.pack(bit32.band(v3[1], 65535))
		n8 = (n14 + bit32.band(2 * v4[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v3[1], 16) + 0 * v4[1], 65535), 16), 4294967295) % 4294967296 + 4573087046) % 4294967296
		n2 = 10
		continue
	end

	if n2 <= 15 then
		if n2 <= 14 then
			tbl = tbl[2]
			n2 = 32
		else
			n2 = 25
			activeKey = ""
		end
	elseif n2 <= 16 then
		n8 = (3229088828 + bit32.bxor(n4 % 4294967296, 3495817888) + bit32.bxor(fn % 4294967296, 2933973557) + 8776504629) % 4294967296
		n2 = 2
	elseif n2 <= 17 then
		local v = table.pack(bit32.band(n10, 4294967295))
		local v2 = table.pack(bit32.band(n11, 4294967295))
		local v3 = table.pack(bit32.band(v[1], 65535))
		local v4 = table.pack(bit32.rshift(v[1], 16))
		local v5 = table.pack(bit32.band(v2[1], 65535))
		local n13 = n9 + bit32.band(v3[1] * v5[1] + bit32.lshift(bit32.band(v3[1] * bit32.rshift(v2[1], 16) + v4[1] * v5[1], 65535), 16), 4294967295) % 4294967296
		local v6 = table.pack(bit32.band(bit32.bor(2859533813, n8 + 3784539109), 4294967295))
		local v7 = table.pack(bit32.band(v6[1], 65535))
		n7 = (n13 + bit32.band(2 * v7[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v6[1], 16) + 0 * v7[1], 65535), 16), 4294967295) % 4294967296 + 6621664357) % 4294967296
		n8 = n6 % 4294967296
		local v8 = table.pack(bit32.band(n8 + 1435185017, 4294967295))
		local v9 = table.pack(bit32.band(v8[1], 65535))
		n9 = 1524316121 + bit32.band(9085 * v9[1] + bit32.lshift(bit32.band(9085 * bit32.rshift(v8[1], 16) + 49347 * v9[1], 65535), 16), 4294967295) % 4294967296
		n2 = 26
		n10 = 1060953218
	else
		n3 = fn + n5
		n2 = 5
	end
end

return activeKey
