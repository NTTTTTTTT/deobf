getgenv().ToolNote = "mainvxeze"

if syn and syn.request or http and http.request or http_request then
end

local function fn(arg, arg2, arg3, arg4, arg5)
	local tbl = {}
	local tbl2 = {}
	local n = arg
	local n2 = arg2
	local v = arg3
	local v2 = arg4
	local v3 = arg5
	local n3 = 63
	local tbl3 = nil
	local str = nil
	local byte = nil
	local n4 = nil
	local n5 = nil
	local n6 = nil
	local n7 = nil
	local n8 = nil
	local n9 = nil
	local n10 = nil
	local str2 = nil

	while true do
		if n3 <= 31 then
			if n3 <= 15 then
				if n3 <= 7 then
					if n3 <= 3 then
						if n3 <= 1 then
							if n3 <= 0 then
								n3 = not n7 and 43 or 6
							else
								local v4 = tbl3[1]
								local v5 = tbl3[3]
								local n11 = tbl3[4] + v4
								local flag = v4 <= 0
								local flag2 = not flag
								local flag3 = n11 >= v5
								local flag4 = n11 <= v5
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl3[4] = n11

								if flag3 then
									n3 = 28
								else
									n3 = 13
								end
							end
						elseif n3 <= 2 then
							n8 += n6
							n3 = 32
						else
							local v4 = tbl3[3]
							local v5 = tbl3[2]
							local n11 = tbl3[5] + v4
							local flag = v4 <= 0
							local flag2 = not flag
							local flag3 = n11 >= v5
							local flag4 = n11 <= v5
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl3[5] = n11

							if flag3 then
								n3 = 50
								n2 = n11
							else
								n3 = 9
							end
						end
					elseif n3 <= 5 then
						if n3 <= 4 then
							local tbl4 = {}

							if n2 == 1 then
								n3 = 57
								n2 = tbl4
							else
								n3 = 53
								n4 = tbl4
							end
						else
							n8 += n6
							n3 = 62
						end
					elseif n3 <= 6 then
						n2[n4 + 1] = n[n6] * 16 + n[n7]
						n3 = 41
					else
						str2 += 65536
						n3 = 33
					end

					continue
				end

				if n3 <= 11 then
					if n3 <= 9 then
						if n3 <= 8 then
							n = n4[3]
							n2 = 4 * n4[1] % 64 + 1
							n5 = 2 * n4[2] % 128 - 1
							n3 = 18
							tbl3 = { 1, -1, nil, 255, tbl3 }
						else
							tbl3 = tbl3[1]
							n3 = 31
						end
					elseif n3 <= 10 then
						byte(str2, 1, 64)
						n3 = n10 == n9 and 30 or 46
					else
						n8 += n6
						n3 = 44
					end

					continue
				end

				if n3 <= 13 then
					if n3 <= 12 then
						return
					end
					tbl3 = tbl3[5]
					n3 = 10
					continue
				end

				if n3 <= 14 then
					n3 = 61
					n8 = 1
				else
					n[n4] = n6
					n[52] = 4
					n[99] = 12
					n[56] = 8
					n[69] = 14
					n[55] = 7
					n[65] = 10
					n[97] = 10
					n3 = 22
					n4 = 70
					n6 = 15
				end

				continue
			end

			if n3 <= 23 then
				if n3 <= 19 then
					if n3 <= 17 then
						if n3 <= 16 then
							n8 += n6
							n3 = 47
						else
							tbl[n] = str(n)
							tbl2[n] = n
							n = (n2 * n + n5) % 256
							n3 = 18
						end
					elseif n3 <= 18 then
						local v4 = tbl3[1]
						local v5 = tbl3[4]
						local n11 = tbl3[2] + v4
						local flag = v4 <= 0
						local flag2 = flag and n11 >= v5 or not flag and n11 <= v5
						tbl3[2] = n11

						if flag2 then
							n3 = 17
							n6 = n11
						else
							n3 = 37
						end
					else
						n8 += n6
						n3 = 52
					end
				elseif n3 <= 21 then
					if n3 <= 20 then
						local v4 = tbl3[3]
						local v5 = tbl3[1]
						local n11 = tbl3[5] + v4
						local flag = v4 <= 0
						local flag2 = not flag
						local flag3 = n11 >= v5
						local flag4 = n11 <= v5
						flag3 = flag and flag3
						flag3 = flag3 or flag2 and flag4
						tbl3[5] = n11

						if flag3 then
							n3 = 55
							n = n11
						else
							n3 = 21
						end
					else
						tbl3 = tbl3[4]
						n3 = 8
					end
				elseif n3 <= 22 then
					n[n4] = n6
					n[98] = 11
					n[102] = 15
					n[68] = 13
					n[53] = 5
					n[66] = 11
					n[101] = 14
					n3 = 41
					tbl3 = { -1, 1, 31, tbl3, nil }
				else
					n = (n + 1) % 256
					n2 = (n2 + tbl2[n]) % 256
					local v4 = tbl2[n]
					tbl2[n] = tbl2[n2]
					tbl2[n2] = v4
					local v5 = byte(v, n4)
					n5 = tbl2[(tbl2[n] + tbl2[n2]) % 256]
					n6 = v5 % 2
					n7 = n5 % 2

					if n6 ~= n7 then
						n3 = 14
						n4 = v5
					else
						n3 = 61
						n8 = 0
						n4 = v5
					end
				end
			elseif n3 <= 27 then
				if n3 <= 25 then
					if n3 <= 24 then
						str2 -= 65536
						n3 = 54
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 5
							n6 = 4
						else
							n3 = 62
						end
					end
				elseif n3 <= 26 then
					local v4 = tbl3[2]
					local v5 = tbl3[1]
					local n11 = tbl3[4] + v4
					local flag = v4 <= 0
					local flag2 = not flag
					local flag3 = n11 >= v5
					local flag4 = n11 <= v5
					flag3 = flag and flag3
					flag3 = flag3 or flag2 and flag4
					tbl3[4] = n11

					if flag3 then
						n3 = 23
						n4 = n11
					else
						n3 = 59
					end
				else
					local v4 = tbl3[1]
					local v5 = tbl3[4]
					local n11 = tbl3[3] + v4
					local flag = v4 <= 0
					local flag2 = not flag
					local flag3 = n11 >= v5
					local flag4 = n11 <= v5
					flag3 = flag and flag3
					flag2 = flag2 and flag4
					flag2 = flag3 or flag2
					tbl3[3] = n11

					if flag2 then
						n3 = 58
						str2 = n11
					else
						n3 = 42
					end
				end
			elseif n3 <= 29 then
				if n3 <= 28 then
					n4 = (n6 * n4 + n7) % 4294967296
					str2 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
					n3 = 1
				else
					v2[v3] = str
					n3 = 12
				end
			elseif n3 <= 30 then
				n5 = { byte(n, 1, 64) }
				n3 = 46
			else
				n3 = 26
				n = 0
				n2 = 0
				str = ""
				tbl3 = { #v + 0, 1, nil, 0, tbl3 }
			end
		else
			if n3 <= 47 then
				if n3 <= 39 then
					if n3 <= 35 then
						if n3 <= 33 then
							if n3 <= 32 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 34
									n6 = 128
								else
									n3 = 39
								end
							else
								n3 = str2 >= 65536 and 24 or 54
							end
						elseif n3 <= 34 then
							n8 += n6
							n3 = 39
						else
							n3 = 1
							str2 = ""
							tbl3 = { 1, nil, 64, 0, tbl3 }
						end
					elseif n3 <= 37 then
						if n3 <= 36 then
							n8 += n6
							n3 = 25
						else
							tbl3 = tbl3[5]
							n3 = 40
						end
					elseif n3 <= 38 then
						n3 = 27
						n2 = 3855260633060442
						n5 = 2285441029357347
						n6 = 4503599627370496
						n7 = 67108864
						n8 = 17592186044416
						n9 = 25403113
						n10 = 5378010
						tbl3 = { 1, nil, 0, 4, tbl3 }
					else
						str ..= tbl[n8]
						n3 = 26
					end

					continue
				end

				if n3 <= 43 then
					if n3 <= 41 then
						if n3 <= 40 then
							n3 = 3
							n = 0
							tbl3 = { tbl3, 255, 1, nil, -1 }
						else
							local v4 = tbl3[2]
							local v5 = tbl3[3]
							local n11 = tbl3[1] + v4
							local flag = v4 <= 0
							local flag2 = not flag
							local flag3 = n11 >= v5
							local flag4 = n11 <= v5
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl3[1] = n11

							if flag3 then
								n3 = 45
								n4 = n11
							else
								n3 = 51
							end
						end

						continue
					end

					if n3 <= 42 then
						tbl3 = tbl3[5]
						n3 = 48
						continue
					end

					return nil
				end

				if n3 <= 45 then
					if n3 <= 44 then
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 2
							n6 = 64
						else
							n3 = 32
						end
					else
						local n11 = n4 * 2 + 1
						local v4 = n5[n11]
						local v5 = n5[n11 + 1]

						if not v4 then
							n3 = 49
						else
							n3 = 0
							n6 = v4
							n7 = v5
						end
					end
				elseif n3 <= 46 then
					local v4 = tbl3[1]
					local v5 = tbl3[5]
					local n11 = tbl3[2] + v4
					local flag = v4 <= 0
					local flag2 = not flag
					local flag3 = n11 >= v5
					local flag4 = n11 <= v5
					flag = flag and flag3
					flag = flag or flag2 and flag4
					tbl3[2] = n11

					if flag then
						n3 = 35
						n10 = n11
					else
						n3 = 56
					end
				else
					n4 = (n4 - n7) / 2
					n5 = (n5 - n9) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 19
						n6 = 16
					else
						n3 = 52
					end
				end

				continue
			end

			if n3 <= 55 then
				if n3 <= 51 then
					if n3 <= 49 then
						if n3 <= 48 then
							n3 = 20
							tbl3 = { 32, nil, 1, tbl3, 0 }
							continue
						end

						break
					end

					if n3 <= 50 then
						n = (n + tbl2[n2] + n4[n2 % 32 + 1]) % 256
						local v4 = tbl2[n2]
						tbl2[n2] = tbl2[n]
						tbl2[n] = v4
						n3 = 3
					else
						tbl3 = tbl3[4]
						n3 = 8
						n4 = n2
					end

					continue
				end

				if n3 <= 53 then
					if n3 <= 52 then
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 11
							n6 = 32
						else
							n3 = 44
						end
					else
						n3 = n2 == 0 and 38 or 8
					end
				elseif n3 <= 54 then
					n = (n - str2) / 65536
					local n11 = (n2 + str2) % n6
					local n12 = n11 % n7
					n2 = ((((n11 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
					n3 = 27
				else
					local n11 = n2 % n7
					n2 = ((((n2 - n11) / n7 * n9 + n11 * n10) % n7 * n7 + n11 * n9) % n6 + n5) % n6
					n4[n] = (n2 - n2 % n8) / n8
					n3 = 20
				end

				continue
			end

			if n3 <= 59 then
				if n3 <= 57 then
					if n3 <= 56 then
						tbl3 = tbl3[4]
						n3 = 60
					else
						n5 = {}

						n8 = {
							"c",
							"a",
							"4",
							"1",
							"b",
							"7",
							"5",
							"6",
							"8",
							"2",
							"3",
							"d",
							"f",
							"9",
							"e",
							"0",
						}

						n3 = 46
						n4 = 2055292928
						n6 = 744958109
						n7 = -947723531
						n9 = 1
						tbl3 = { 1, 0, nil, tbl3, 128 }
					end
				elseif n3 <= 58 then
					str2 = n % 65536
					n3 = str2 < 0 and 7 or 33
				else
					tbl3 = tbl3[5]
					n3 = 29
				end
			elseif n3 <= 61 then
				if n3 <= 60 then
					n = { [54] = 6, [50] = 2, [48] = 0, [67] = 12, [51] = 3, [100] = 13, [57] = 9 }
					n3 = 15
					n4 = 49
					n6 = 1
				else
					n4 = (n4 - n6) / 2
					n5 = (n5 - n7) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 36
						n6 = 2
					else
						n3 = 25
					end
				end
			elseif n3 <= 62 then
				n4 = (n4 - n7) / 2
				n5 = (n5 - n9) / 2
				n7 = n4 % 2
				n9 = n5 % 2

				if n7 ~= n9 then
					n3 = 16
					n6 = 8
				else
					n3 = 47
				end
			else
				str = string.char
				byte = string.byte

				if n2 == 2 then
					n3 = 8
					n4 = n
				else
					n3 = 4
				end
			end
		end
	end

	return nil
end

fn(-3801215537181036, 0, "\233\183ߒ\164\131\203Lo[\8\180\247$Ո\241\n\217z\167\23\23\156kV\193\199\233F\\\233\240\155\137\235I 1A\132\t\228I\3\127\r\163K\168\181$\165\253\2172'ȯ@\249\171\139\250\242\8G\2ӿi\27\207ߩ\228\208M!", nil --[[ the caller's registers ]], 13)
local vector = Vector3.new(-5545.9873, 314.08023, -2964.349)
local function fn2(q)local z=q:IsA("Model")and(q:FindFirstChild("HumanoidRootPart"));return z and(z.Position- vector ).Magnitude<=1000 and not q:GetAttribute("IsBoss");end
error("devirt: value <luasym.LuaFunc object at 0x00000248080E39D0> in an expression (at 44:48)")
