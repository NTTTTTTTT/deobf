PrintLastAt = {}

PrintOnce = function(arg)
	local str = tostring(arg)
	if tick() - (PrintLastAt[str] or 0) < 10 then
		return
	end
	PrintLastAt[str] = tick()
	warn(str)
end

__VxezeHubMain = function()
	if getgenv().__VXEZE_LOADED then
		local flag = false

		pcall(function()
			local vxezeUI = getgenv().VxezeUI
			local root = vxezeUI and vxezeUI.Library and vxezeUI.Library._Root
			flag = root ~= nil and root.Parent ~= nil and vxezeUI.Window ~= nil
		end)

		if flag then
			return getgenv().__VXEZE_RESULT
		end

		if getgenv().__NullUI_Unload then
			pcall(getgenv().__NullUI_Unload)
		end

		getgenv().__VXEZE_LOADED = nil
		getgenv().__VXEZE_RESULT = nil
	end

	Settings = {}
	HttpService = game:GetService("HttpService")
	FolderName = "Vxeze Hub"
	SaveFileNameGame = "-BloxFruitVxeze.json"
	SaveFileName = game.Players.LocalPlayer.Name .. SaveFileNameGame

	SaveSettings = function(arg, arg2, arg3)
		if arg3 ~= nil then
			Settings[arg] = Settings[arg] or {}
			Settings[arg][arg2] = arg3
		elseif arg ~= nil then
			Settings[arg] = arg2
		end

		if not isfolder(FolderName) then
			makefolder(FolderName)
		end

		writefile(FolderName .. "/" .. SaveFileName, HttpService:JSONEncode(Settings))
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
		local tbl = {}

		for k in pairs(arg) do
			local v2 = arg2 and arg2[k]

			if v2 == nil then
				tbl[k] = arg3 and true or false
			else
				tbl[k] = v2
			end
		end

		return tbl
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
		task.wait()
	until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")

	while true do
		task.wait()
		if not (game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("DataLoaded")) then
			continue
		end
		break
	end

	FireButton = function(selectedObject)
		selectedObject.Selectable = true
		game:GetService("GuiService").SelectedObject = selectedObject

		pcall(function()
			game:GetService("VirtualInputManager"):SendKeyEvent(true, "Return", false, selectedObject)
		end)

		pcall(function()
			game:GetService("VirtualInputManager"):SendKeyEvent(false, "Return", false, selectedObject)
		end)

		selectedObject.Activated:Connect(function()
			game:GetService("GuiService").SelectedObject = nil
		end)
	end

	while true do
		task.wait()
		if not (game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")) then
			continue
		end
		break
	end

	local mainMinimal = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")

	repeat
		task.wait()
	until mainMinimal:FindFirstChild("ChooseTeam")

	IsTeamChosen = function()
		local chooseTeam = mainMinimal:FindFirstChild("ChooseTeam")
		local flag = game.Players.LocalPlayer.Team ~= nil
		local flag2

		if flag then
			flag2 = not (chooseTeam and chooseTeam.Visible)
		else
			flag2 = flag
		end

		return flag2
	end

	while not IsTeamChosen() do
		pcall(function()
			FireButton(mainMinimal.ChooseTeam.Container[Settings["Select Team"] == "Pirate" and "Pirates" or "Marines"].Frame.TextButton)
		end)

		task.wait(0.5)
	end

	game:GetService("GuiService").SelectedObject = nil

	while true do
		task.wait()
		if not (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
			continue
		end
		break
	end

	getgenv().ExploitReq = request or http_request or syn and syn.request or http and http.request or requests
	Place_Id = {}

	Place_Id.sea1 = function()
		return workspace:GetAttribute("MAP") == "Sea1"
	end

	Place_Id.sea2 = function()
		return workspace:GetAttribute("MAP") == "Sea2"
	end

	Place_Id.sea3 = function()
		return workspace:GetAttribute("MAP") == "Sea3"
	end

	local localPlayer = game.Players.LocalPlayer
	local getupvalue = debug.getupvalue
	getgenv().getupvalue = getupvalue
	local getupvalues = debug.getupvalues
	getgenv().getupvalues = getupvalues
	wOrigin = game.workspace._WorldOrigin
	CommF = game.ReplicatedStorage.Remotes.CommF_
	vu = game:GetService("VirtualUser")

	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	end)

	local tbl = { Library = nil, Window = nil, SettingTab = nil, ElementCount = 0, RecentNotify = {}, Errors = {} }

	local function fn(arg, arg2, arg3, arg4, arg5)
		local tbl2 = {}
		local tbl3 = {}
		local n = arg
		local n2 = arg2
		local v2 = arg3
		local v3 = arg4
		local v4 = arg5
		local n3 = 1
		local tbl4 = nil
		local v5 = nil
		local char = nil
		local byte = nil
		local n4 = nil
		local n5 = nil
		local n6 = nil
		local n7 = nil
		local n8 = nil
		local n9 = nil
		local n10 = nil
		local n11 = nil

		while true do
			if n3 <= 31 then
				if n3 <= 15 then
					if n3 <= 7 then
						if n3 <= 3 then
							if n3 <= 1 then
								if n3 <= 0 then
									tbl4 = tbl4[5]
									n3 = 38
								else
									char = string.char
									byte = string.byte

									if n2 == 2 then
										n3 = 36
										n4 = n
									else
										n3 = 57
									end
								end
							elseif n3 <= 2 then
								tbl4 = tbl4[1]
								n3 = 32
							else
								n3 = 24
								n2 = 4225628066614523
								n5 = 1640726024911297
								n6 = 4503599627370496
								n7 = 67108864
								n8 = 17592186044416
								n9 = 66262169
								n10 = 66419657
								tbl4 = { tbl4, 4, 1, 0, nil }
							end
						elseif n3 <= 5 then
							if n3 <= 4 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 11
									n6 = 4
								else
									n3 = 7
								end
							else
								tbl4 = tbl4[1]
								n3 = 27
							end
						elseif n3 <= 6 then
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 12
								n6 = 128
							else
								n3 = 35
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 18
								n6 = 8
							else
								n3 = 55
							end
						end
					elseif n3 <= 11 then
						if n3 <= 9 then
							if n3 <= 8 then
								local n12 = n4 * 2 + 1
								local v6 = n5[n12]
								local v7 = n5[n12 + 1]

								if not v6 then
									n3 = 40
								else
									n3 = 37
									n6 = v6
									n7 = v7
								end
							else
								local v6 = tbl4[3]
								local v7 = tbl4[5]
								local n12 = tbl4[2] + v6
								local flag = v6 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v7
								local flag4 = n12 <= v7
								flag = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag or flag2
								tbl4[2] = n12

								if flag2 then
									n3 = 56
									n6 = n12
								else
									n3 = 54
								end
							end
						elseif n3 <= 10 then
							n8 += n6
							n3 = 6
						else
							n8 += n6
							n3 = 7
						end
					elseif n3 <= 13 then
						if n3 <= 12 then
							n8 += n6
							n3 = 35
						else
							local v6 = tbl4[5]
							local v7 = tbl4[4]
							local n12 = tbl4[2] + v6
							local flag = v6 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v7
							local flag4 = n12 <= v7
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl4[2] = n12

							if flag3 then
								n3 = 16
							else
								n3 = 2
							end
						end
					elseif n3 <= 14 then
						tbl4 = tbl4[2]
						n3 = 36
					else
						n8 += n6
						n3 = 63
					end

					continue
				end

				if n3 <= 23 then
					if n3 <= 19 then
						if n3 <= 17 then
							if n3 <= 16 then
								n4 = (n6 * n4 + n7) % 4294967296
								n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
								n3 = 13
								continue
							end

							return nil
						end

						if n3 <= 18 then
							n8 += n6
							n3 = 55
						else
							n = (n + tbl3[n2] + n4[n2 % 32 + 1]) % 256
							local v6 = tbl3[n2]
							tbl3[n2] = tbl3[n]
							tbl3[n] = v6
							n3 = 25
						end

						continue
					end

					if n3 <= 21 then
						if n3 <= 20 then
							local v6 = tbl4[1]
							local v7 = tbl4[5]
							local n12 = tbl4[4] + v6
							local flag = v6 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v7
							local flag4 = n12 <= v7
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl4[4] = n12

							if flag3 then
								n3 = 8
								n4 = n12
							else
								n3 = 59
							end
						else
							n3 = 25
							n = 0
							tbl4 = { 1, 255, nil, -1, tbl4 }
						end
					elseif n3 <= 22 then
						n[n4] = n6
						n[52] = 4
						n[99] = 12
						n[51] = 3
						n[65] = 10
						n[48] = 0
						n[101] = 14
						n[54] = 6
						n3 = 28
						n4 = 49
						n6 = 1
					else
						n = (n - n11) / 65536
						local n12 = (n2 + n11) % n6
						local n13 = n12 % n7
						n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
						n3 = 24
					end

					continue
				end

				if n3 <= 27 then
					if n3 <= 25 then
						if n3 <= 24 then
							local v6 = tbl4[3]
							local v7 = tbl4[2]
							local n12 = tbl4[4] + v6
							local flag = v6 <= 0
							local flag2 = flag and n12 >= v7 or not flag and n12 <= v7
							tbl4[4] = n12

							if flag2 then
								n3 = 31
								n11 = n12
							else
								n3 = 5
							end
						else
							local v6 = tbl4[1]
							local v7 = tbl4[2]
							local n12 = tbl4[4] + v6
							local flag = v6 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v7
							local flag4 = n12 <= v7
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl4[4] = n12

							if flag3 then
								n3 = 19
								n2 = n12
							else
								n3 = 51
							end
						end
					elseif n3 <= 26 then
						n5 = {}
						n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
						n3 = 58
						n4 = 870728320
						n6 = 493413649
						n7 = -405362667
						n9 = 1
						tbl4 = { 0, 1, nil, 128, tbl4 }
					else
						n3 = 49
						tbl4 = { nil, tbl4, 1, 32, 0 }
					end
				elseif n3 <= 29 then
					if n3 <= 28 then
						n[n4] = n6
						n[100] = 13
						n[56] = 8
						n[97] = 10
						n[69] = 14
						n[66] = 11
						n[57] = 9
						n3 = 20
						tbl4 = { 1, tbl4, nil, -1, 31 }
					else
						n8 += n6
						n3 = 4
					end
				elseif n3 <= 30 then
					n2[n4 + 1] = n[n6] * 16 + n[n7]
					n3 = 20
				else
					n11 = n % 65536
					n3 = n11 < 0 and 53 or 45
				end
			else
				if n3 <= 47 then
					if n3 <= 39 then
						if n3 <= 35 then
							if n3 <= 33 then
								if n3 <= 32 then
									byte(n11, 1, 64)
									n3 = n10 == n9 and 34 or 58
								else
									local n12 = n2 % n7
									n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
									n4[n] = (n2 - n2 % n8) / n8
									n3 = 49
								end
							elseif n3 <= 34 then
								n5 = { byte(n, 1, 64) }
								n3 = 58
							else
								char ..= tbl2[n8]
								n3 = 62
							end
						elseif n3 <= 37 then
							if n3 <= 36 then
								n = n4[3]
								n2 = 4 * n4[1] % 64 + 1
								n5 = 2 * n4[2] % 128 - 1
								n3 = 9
								tbl4 = { nil, -1, 1, tbl4, 255 }
							else
								n3 = not n7 and 17 or 30
							end
						elseif n3 <= 38 then
							n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
							n3 = 22
							n4 = 98
							n6 = 11
						else
							n3 = 13
							n11 = ""
							tbl4 = { tbl4, 0, nil, 64, 1 }
						end

						continue
					end

					if n3 <= 43 then
						if n3 <= 41 then
							if n3 <= 40 then
								return nil
							end
							v3[v4] = char
							n3 = 44
							continue
						end

						if n3 <= 42 then
							n11 -= 65536
							n3 = 23
						else
							n4 = (n4 - n6) / 2
							n5 = (n5 - n7) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 29
								n6 = 2
							else
								n3 = 4
							end
						end

						continue
					end

					if n3 <= 45 then
						if n3 <= 44 then
							break
						end
						n3 = n11 >= 65536 and 42 or 23
						continue
					end

					if n3 <= 46 then
						n = (n + 1) % 256
						n2 = (n2 + tbl3[n]) % 256
						local v6 = tbl3[n]
						tbl3[n] = tbl3[n2]
						tbl3[n2] = v6
						local v7 = byte(v2, n4)
						n5 = tbl3[(tbl3[n] + tbl3[n2]) % 256]
						n6 = v7 % 2
						n7 = n5 % 2

						if n6 ~= n7 then
							n3 = 48
							n4 = v7
						else
							n3 = 43
							n8 = 0
							n4 = v7
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 15
							n6 = 32
						else
							n3 = 63
						end
					end

					continue
				end

				if n3 <= 55 then
					if n3 <= 51 then
						if n3 <= 49 then
							if n3 <= 48 then
								n3 = 43
								n8 = 1
							else
								local v6 = tbl4[3]
								local v7 = tbl4[4]
								local n12 = tbl4[5] + v6
								local flag = v6 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v7
								local flag4 = n12 <= v7
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl4[5] = n12

								if flag3 then
									n3 = 33
									n = n12
								else
									n3 = 14
								end
							end
						elseif n3 <= 50 then
							tbl4 = tbl4[3]
							n3 = 41
						else
							tbl4 = tbl4[5]
							n3 = 61
						end
					elseif n3 <= 53 then
						if n3 <= 52 then
							n8 += n6
							n3 = 47
						else
							n11 += 65536
							n3 = 45
						end
					elseif n3 <= 54 then
						tbl4 = tbl4[4]
						n3 = 21
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 52
							n6 = 16
						else
							n3 = 47
						end
					end
				elseif n3 <= 59 then
					if n3 <= 57 then
						if n3 <= 56 then
							tbl2[n] = char(n)
							tbl3[n] = n
							n = (n2 * n + n5) % 256
							n3 = 9
						else
							local tbl5 = {}

							if n2 == 1 then
								n3 = 26
								n2 = tbl5
							else
								n3 = 60
								n4 = tbl5
							end
						end
					elseif n3 <= 58 then
						local v6 = tbl4[2]
						local v7 = tbl4[4]
						local n12 = tbl4[1] + v6
						local flag = v6 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v7
						local flag4 = n12 <= v7
						flag3 = flag and flag3
						flag2 = flag2 and flag4
						flag2 = flag3 or flag2
						tbl4[1] = n12

						if flag2 then
							n3 = 39
							n10 = n12
						else
							n3 = 0
						end
					else
						tbl4 = tbl4[2]
						n3 = 36
						n4 = n2
					end
				elseif n3 <= 61 then
					if n3 <= 60 then
						n3 = n2 == 0 and 3 or 36
					else
						n3 = 62
						n = 0
						n2 = 0
						char = ""
						tbl4 = { #v2 + 0, 0, tbl4, 1, nil }
					end
				elseif n3 <= 62 then
					local v6 = tbl4[4]
					local v7 = tbl4[1]
					local n12 = tbl4[2] + v6
					local flag = v6 <= 0
					local flag2 = not flag
					local flag3 = n12 >= v7
					local flag4 = n12 <= v7
					flag3 = flag and flag3
					flag3 = flag3 or flag2 and flag4
					tbl4[2] = n12

					if flag3 then
						n3 = 46
						n4 = n12
					else
						n3 = 50
					end
				else
					n4 = (n4 - n7) / 2
					n5 = (n5 - n9) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 10
						n6 = 64
					else
						n3 = 6
					end
				end
			end
		end
	end

	fn(-3037147829324948, 0, "\255L\189\193\155L\223O\236\166}\30d\12\186.\222$A\212H'-\1810o~\140Kc\16K\244\219|!\205\24\191|\163$\240\n+tձ\244\27\192\29\249\225C\237\243I\150\175\137L\169\166\15\172\206e!\232\234\167\195\18\134[\224ؿ\4%j#", nil --[[ the caller's registers ]], 55)
	tbl.SourceUrl = "\255L\189\193\155L\223O\236\166}\30d\12\186.\222$A\212H'-\1810o~\140Kc\16K\244\219|!\205\24\191|\163$\240\n+tձ\244\27\192\29\249\225C\237\243I\150\175\137L\169\166\15\172\206e!\232\234\167\195\18\134[\224ؿ\4%j#"

	local function fn2(arg, arg2, arg3, arg4, arg5)
		local tbl2 = {}
		local tbl3 = {}
		local n = arg
		local n2 = arg2
		local v2 = arg3
		local v3 = arg4
		local v4 = arg5
		local n3 = 1
		local tbl4 = nil
		local v5 = nil
		local char = nil
		local byte = nil
		local n4 = nil
		local n5 = nil
		local n6 = nil
		local n7 = nil
		local n8 = nil
		local n9 = nil
		local n10 = nil
		local n11 = nil

		while true do
			if n3 <= 31 then
				if n3 <= 15 then
					if n3 <= 7 then
						if n3 <= 3 then
							if n3 <= 1 then
								if n3 <= 0 then
									tbl4 = tbl4[5]
									n3 = 38
								else
									char = string.char
									byte = string.byte

									if n2 == 2 then
										n3 = 36
										n4 = n
									else
										n3 = 57
									end
								end
							elseif n3 <= 2 then
								tbl4 = tbl4[1]
								n3 = 32
							else
								n3 = 24
								n2 = 4225628066614523
								n5 = 1640726024911297
								n6 = 4503599627370496
								n7 = 67108864
								n8 = 17592186044416
								n9 = 66262169
								n10 = 66419657
								tbl4 = { tbl4, 4, 1, 0, nil }
							end
						elseif n3 <= 5 then
							if n3 <= 4 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 11
									n6 = 4
								else
									n3 = 7
								end
							else
								tbl4 = tbl4[1]
								n3 = 27
							end
						elseif n3 <= 6 then
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 12
								n6 = 128
							else
								n3 = 35
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 18
								n6 = 8
							else
								n3 = 55
							end
						end
					elseif n3 <= 11 then
						if n3 <= 9 then
							if n3 <= 8 then
								local n12 = n4 * 2 + 1
								local v6 = n5[n12]
								local v7 = n5[n12 + 1]

								if not v6 then
									n3 = 40
								else
									n3 = 37
									n6 = v6
									n7 = v7
								end
							else
								local v6 = tbl4[3]
								local v7 = tbl4[5]
								local n12 = tbl4[2] + v6
								local flag = v6 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v7
								local flag4 = n12 <= v7
								flag = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag or flag2
								tbl4[2] = n12

								if flag2 then
									n3 = 56
									n6 = n12
								else
									n3 = 54
								end
							end
						elseif n3 <= 10 then
							n8 += n6
							n3 = 6
						else
							n8 += n6
							n3 = 7
						end
					elseif n3 <= 13 then
						if n3 <= 12 then
							n8 += n6
							n3 = 35
						else
							local v6 = tbl4[5]
							local v7 = tbl4[4]
							local n12 = tbl4[2] + v6
							local flag = v6 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v7
							local flag4 = n12 <= v7
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl4[2] = n12

							if flag3 then
								n3 = 16
							else
								n3 = 2
							end
						end
					elseif n3 <= 14 then
						tbl4 = tbl4[2]
						n3 = 36
					else
						n8 += n6
						n3 = 63
					end

					continue
				end

				if n3 <= 23 then
					if n3 <= 19 then
						if n3 <= 17 then
							if n3 <= 16 then
								n4 = (n6 * n4 + n7) % 4294967296
								n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
								n3 = 13
								continue
							end

							return nil
						end

						if n3 <= 18 then
							n8 += n6
							n3 = 55
						else
							n = (n + tbl3[n2] + n4[n2 % 32 + 1]) % 256
							local v6 = tbl3[n2]
							tbl3[n2] = tbl3[n]
							tbl3[n] = v6
							n3 = 25
						end

						continue
					end

					if n3 <= 21 then
						if n3 <= 20 then
							local v6 = tbl4[1]
							local v7 = tbl4[5]
							local n12 = tbl4[4] + v6
							local flag = v6 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v7
							local flag4 = n12 <= v7
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl4[4] = n12

							if flag3 then
								n3 = 8
								n4 = n12
							else
								n3 = 59
							end
						else
							n3 = 25
							n = 0
							tbl4 = { 1, 255, nil, -1, tbl4 }
						end
					elseif n3 <= 22 then
						n[n4] = n6
						n[52] = 4
						n[99] = 12
						n[51] = 3
						n[65] = 10
						n[48] = 0
						n[101] = 14
						n[54] = 6
						n3 = 28
						n4 = 49
						n6 = 1
					else
						n = (n - n11) / 65536
						local n12 = (n2 + n11) % n6
						local n13 = n12 % n7
						n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
						n3 = 24
					end

					continue
				end

				if n3 <= 27 then
					if n3 <= 25 then
						if n3 <= 24 then
							local v6 = tbl4[3]
							local v7 = tbl4[2]
							local n12 = tbl4[4] + v6
							local flag = v6 <= 0
							local flag2 = flag and n12 >= v7 or not flag and n12 <= v7
							tbl4[4] = n12

							if flag2 then
								n3 = 31
								n11 = n12
							else
								n3 = 5
							end
						else
							local v6 = tbl4[1]
							local v7 = tbl4[2]
							local n12 = tbl4[4] + v6
							local flag = v6 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v7
							local flag4 = n12 <= v7
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl4[4] = n12

							if flag3 then
								n3 = 19
								n2 = n12
							else
								n3 = 51
							end
						end
					elseif n3 <= 26 then
						n5 = {}
						n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
						n3 = 58
						n4 = 870728320
						n6 = 493413649
						n7 = -405362667
						n9 = 1
						tbl4 = { 0, 1, nil, 128, tbl4 }
					else
						n3 = 49
						tbl4 = { nil, tbl4, 1, 32, 0 }
					end
				elseif n3 <= 29 then
					if n3 <= 28 then
						n[n4] = n6
						n[100] = 13
						n[56] = 8
						n[97] = 10
						n[69] = 14
						n[66] = 11
						n[57] = 9
						n3 = 20
						tbl4 = { 1, tbl4, nil, -1, 31 }
					else
						n8 += n6
						n3 = 4
					end
				elseif n3 <= 30 then
					n2[n4 + 1] = n[n6] * 16 + n[n7]
					n3 = 20
				else
					n11 = n % 65536
					n3 = n11 < 0 and 53 or 45
				end
			else
				if n3 <= 47 then
					if n3 <= 39 then
						if n3 <= 35 then
							if n3 <= 33 then
								if n3 <= 32 then
									byte(n11, 1, 64)
									n3 = n10 == n9 and 34 or 58
								else
									local n12 = n2 % n7
									n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
									n4[n] = (n2 - n2 % n8) / n8
									n3 = 49
								end
							elseif n3 <= 34 then
								n5 = { byte(n, 1, 64) }
								n3 = 58
							else
								char ..= tbl2[n8]
								n3 = 62
							end
						elseif n3 <= 37 then
							if n3 <= 36 then
								n = n4[3]
								n2 = 4 * n4[1] % 64 + 1
								n5 = 2 * n4[2] % 128 - 1
								n3 = 9
								tbl4 = { nil, -1, 1, tbl4, 255 }
							else
								n3 = not n7 and 17 or 30
							end
						elseif n3 <= 38 then
							n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
							n3 = 22
							n4 = 98
							n6 = 11
						else
							n3 = 13
							n11 = ""
							tbl4 = { tbl4, 0, nil, 64, 1 }
						end

						continue
					end

					if n3 <= 43 then
						if n3 <= 41 then
							if n3 <= 40 then
								return nil
							end
							v3[v4] = char
							n3 = 44
							continue
						end

						if n3 <= 42 then
							n11 -= 65536
							n3 = 23
						else
							n4 = (n4 - n6) / 2
							n5 = (n5 - n7) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 29
								n6 = 2
							else
								n3 = 4
							end
						end

						continue
					end

					if n3 <= 45 then
						if n3 <= 44 then
							break
						end
						n3 = n11 >= 65536 and 42 or 23
						continue
					end

					if n3 <= 46 then
						n = (n + 1) % 256
						n2 = (n2 + tbl3[n]) % 256
						local v6 = tbl3[n]
						tbl3[n] = tbl3[n2]
						tbl3[n2] = v6
						local v7 = byte(v2, n4)
						n5 = tbl3[(tbl3[n] + tbl3[n2]) % 256]
						n6 = v7 % 2
						n7 = n5 % 2

						if n6 ~= n7 then
							n3 = 48
							n4 = v7
						else
							n3 = 43
							n8 = 0
							n4 = v7
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 15
							n6 = 32
						else
							n3 = 63
						end
					end

					continue
				end

				if n3 <= 55 then
					if n3 <= 51 then
						if n3 <= 49 then
							if n3 <= 48 then
								n3 = 43
								n8 = 1
							else
								local v6 = tbl4[3]
								local v7 = tbl4[4]
								local n12 = tbl4[5] + v6
								local flag = v6 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v7
								local flag4 = n12 <= v7
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl4[5] = n12

								if flag3 then
									n3 = 33
									n = n12
								else
									n3 = 14
								end
							end
						elseif n3 <= 50 then
							tbl4 = tbl4[3]
							n3 = 41
						else
							tbl4 = tbl4[5]
							n3 = 61
						end
					elseif n3 <= 53 then
						if n3 <= 52 then
							n8 += n6
							n3 = 47
						else
							n11 += 65536
							n3 = 45
						end
					elseif n3 <= 54 then
						tbl4 = tbl4[4]
						n3 = 21
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 52
							n6 = 16
						else
							n3 = 47
						end
					end
				elseif n3 <= 59 then
					if n3 <= 57 then
						if n3 <= 56 then
							tbl2[n] = char(n)
							tbl3[n] = n
							n = (n2 * n + n5) % 256
							n3 = 9
						else
							local tbl5 = {}

							if n2 == 1 then
								n3 = 26
								n2 = tbl5
							else
								n3 = 60
								n4 = tbl5
							end
						end
					elseif n3 <= 58 then
						local v6 = tbl4[2]
						local v7 = tbl4[4]
						local n12 = tbl4[1] + v6
						local flag = v6 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v7
						local flag4 = n12 <= v7
						flag3 = flag and flag3
						flag2 = flag2 and flag4
						flag2 = flag3 or flag2
						tbl4[1] = n12

						if flag2 then
							n3 = 39
							n10 = n12
						else
							n3 = 0
						end
					else
						tbl4 = tbl4[2]
						n3 = 36
						n4 = n2
					end
				elseif n3 <= 61 then
					if n3 <= 60 then
						n3 = n2 == 0 and 3 or 36
					else
						n3 = 62
						n = 0
						n2 = 0
						char = ""
						tbl4 = { #v2 + 0, 0, tbl4, 1, nil }
					end
				elseif n3 <= 62 then
					local v6 = tbl4[4]
					local v7 = tbl4[1]
					local n12 = tbl4[2] + v6
					local flag = v6 <= 0
					local flag2 = not flag
					local flag3 = n12 >= v7
					local flag4 = n12 <= v7
					flag3 = flag and flag3
					flag3 = flag3 or flag2 and flag4
					tbl4[2] = n12

					if flag3 then
						n3 = 46
						n4 = n12
					else
						n3 = 50
					end
				else
					n4 = (n4 - n7) / 2
					n5 = (n5 - n9) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 10
						n6 = 64
					else
						n3 = 6
					end
				end
			end
		end
	end

	fn2(-4566195987090404, 0, "\182\189\"r\131\2\193\154\169:F]\196<\30\20\31\28t\255\216\28\158\13333\215}\183\185\153\21\222؎\143@8\177\27\222W>\242z\251[\219܊\30\227XJ\252\7݂f\229bݯB\22N", nil --[[ the caller's registers ]], 55)
	tbl.SourceMirror = "\182\189\"r\131\2\193\154\169:F]\196<\30\20\31\28t\255\216\28\158\13333\215}\183\185\153\21\222؎\143@8\177\27\222W>\242z\251[\219܊\30\227XJ\252\7݂f\229bݯB\22N"
	tbl.ButtonImage = "rbxassetid://87167480222237"

	tbl.Groups = {
		{ Name = "Main", Icon = "gauge" },
		{ Name = "Farm", Icon = "target" },
		{ Name = "World", Icon = "globe" },
		{ Name = "Shop", Icon = "shopping-cart" },
		{ Name = "Visual", Icon = "monitor" },
		{ Line = true },
		{ Name = "Webhook", Icon = "webhook" },
		{ Name = "Setting", Icon = "settings" },
	}

	tbl.PageGroups = {
		["Status And Server"] = { "Main", "Status", "activity" },
		LocalPlayer = { "Main", "Local Player", "user-round" },
		["Setting Farm"] = { "Farm", "Setting", "sliders-horizontal" },
		["Hold and Select Skill"] = { "Farm", "Skills", "keyboard" },
		Farming = { "Farm", "Farming", "swords" },
		["Stack Farming"] = { "Farm", "Stack", "layers" },
		["Farming Other"] = { "Farm", "Other", "sparkles" },
		["Sea Event"] = { "World", "Sea", "waves" },
		["Fruit and Raid, Dungeon"] = { "World", "Raid", "shield" },
		["Volcano Event"] = { "World", "Volcano", "flame" },
		["Upgrade Race"] = { "World", "Race", "dna" },
		["Get and Upgrade Items"] = { "World", "Items", "package" },
		Shop = { "Shop", "Shop", "shopping-bag" },
		ESP = { "Visual", "ESP", "eye" },
		PVP = { "Visual", "PVP", "crosshair" },
		Webhook = { "Webhook", "Webhook", "send" },
		Setting = { "Setting", "Setting", "wrench" },
	}

	tbl.SectionRoutes = {
		["Status And Server/Server"] = { "Main", "Server", "server" },
		["Farming Other/Secret Quest"] = { "Farm", "Stack", "star" },
		["Farming Other/Mob Farm"] = { "Farm", "Farming", "swords" },
		["Farming Other/Boss Farm"] = { "Farm", "Boss", "skull" },
		["Stack Farming/Elite Hunter"] = { "Farm", "Boss", "skull" },
		["Stack Farming/Rip Indra"] = { "Farm", "Boss", "skull" },
		["Stack Farming/Soul Reaper"] = { "Farm", "Boss", "skull" },
		["Stack Farming/Dough King"] = { "Farm", "Boss", "skull" },
		["Stack Farming/Darkbeard"] = { "Farm", "Boss", "skull" },
		["Fruit and Raid, Dungeon/Join Dungeon"] = { "World", "Dungeon", "door-open" },
		["Fruit and Raid, Dungeon/Dungeon"] = { "World", "Dungeon", "door-open" },
		["Farming Other/Raid Law"] = { "World", "Raid", "shield" },
		["Sea Event/Boat Setting"] = { "World", "Boat", "sailboat" },
	}

	tbl.SubTabOrder = {
		Main = { "Status", "Server", "Local Player" },
		Farm = { "Setting", "Skills", "Farming", "Stack", "Boss", "Other" },
		World = { "Sea", "Boat", "Raid", "Dungeon", "Volcano", "Race", "Items" },
		Shop = { "Shop" },
		Visual = { "ESP", "PVP" },
		Webhook = { "Webhook" },
		Setting = { "Setting" },
	}

	tbl.ConfirmButtons = {
		["Reset Stats"] = "Reset all your stat points?",
		["Reroll Race"] = "Reroll your race? This costs Fragments.",
		["Buy Race Cyborg"] = "Buy Cyborg race?",
		["Buy Race Ghoul"] = "Buy Ghoul race?",
		["Buy Race Draco"] = "Change to Draco race? The Dragon Wizard needs a Dragon Egg.",
		["Teleport To Dungeon Sea [ Dungeon Hub ]"] = "Travel to the Dungeon Hub?",
		["Teleport To First Sea [ Sea 1 ]"] = "Travel to the First Sea?",
		["Teleport To Second Sea [ Sea 2 ]"] = "Travel to the Second Sea?",
		["Teleport To Third Sea [ Sea 3 ]"] = "Travel to the Third Sea?",
		["Reset Config"] = "Turn off every feature and reset all settings to default?",
	}

	VxezeUI = tbl

	VxezeReportError = function(arg, arg2)
		local str = tostring(arg) .. ": " .. tostring(arg2)
		if VxezeUI.Errors[str] then
			return
		end
		VxezeUI.Errors[str] = true
		print("[Vxeze Hub] " .. str)
	end

	VxezeSafe = function(arg, arg2)
		if type(arg2) ~= "function" then
			return nil
		end

		return function(...)
			local ok, result = pcall(arg2, ...)

			if not ok then
				VxezeReportError(arg, result)
			end
		end
	end

	VxezeFetchText = function(arg, arg2)
		local flag = nil
		local v2 = nil

		task.spawn(function()
			local ok, result = pcall(game.HttpGetAsync, game, arg)
			v2 = ok and result or nil
			flag = true
		end)

		local now = tick()

		while true do
			task.wait(0.2)
			local flag2

			if flag then
				flag2 = flag
			else
				flag2 = tick() - now > (arg2 or 15)
			end

			if not flag2 then
				continue
			end
			break
		end

		if type(v2) ~= "string" then
			error("request timed out")
		end

		return v2
	end

	FetchSource = function(arg, arg2)
		local flag = nil
		local v2 = nil

		task.spawn(function()
			local ok, result = pcall(game.HttpGetAsync, game, arg)
			v2 = ok and result or nil
			flag = true
		end)

		local now = tick()

		while true do
			task.wait(0.2)
			local flag2

			if flag then
				flag2 = flag
			else
				flag2 = tick() - now > (arg2 or 20)
			end

			if not flag2 then
				continue
			end
			break
		end

		if type(v2) == "string" and #v2 > 100000 then
			return v2
		end
	end

	VxezeCachePath = "Vxeze Hub/VindUI.luau"

	VxezeReadCache = function()
		if type(isfile) ~= "function" or type(readfile) ~= "function" then
			return nil
		end

		local ok, result = pcall(function()
			if isfile(VxezeCachePath) then
				return readfile(VxezeCachePath)
			end
		end)

		if ok and type(result) == "string" and #result > 100000 then
			return result
		end
	end

	VxezeWriteCache = function(arg)
		if type(writefile) ~= "function" or type(arg) ~= "string" or #arg < 100000 then
			return
		end

		pcall(function()
			if type(isfolder) == "function" and type(makefolder) == "function" and not isfolder("Vxeze Hub") then
				makefolder("Vxeze Hub")
			end

			writefile(VxezeCachePath, arg)
		end)
	end

	VxezeRefreshCacheLater = function()
		task.delay(5, function()
			for _, v2 in ipairs({ VxezeUI.SourceUrl, VxezeUI.SourceMirror }) do
				local v3 = FetchSource(v2, 20)
				if v3 then
					VxezeWriteCache(v3)
					return
				end
			end
		end)
	end

	VxezeLoadUI = function()
		local v2 = VxezeReadCache()

		if v2 then
			local ok, result = pcall(loadstring(v2))
			if ok and result then
				VxezeRefreshCacheLater()
				return result
			end
		end

		local v3 = nil

		for _, v4 in ipairs({ VxezeUI.SourceUrl, VxezeUI.SourceMirror }) do
			v3 = FetchSource(v4, 20)
			if v3 then
				VxezeWriteCache(v3)
				break
			end
		end

		if not v3 then
			require(game:GetService("ReplicatedStorage").Notification).new("<Color=Red>Vxeze Hub : cannot download the interface, check your connection<Color=/>"):Display()
			error("Vxeze Hub could not download its interface")
		end

		return loadstring(v3)()
	end

	VxezeNextId = function(arg)
		local v2 = VxezeUI
		v2.ElementCount = v2.ElementCount + 1
		local str = tostring(arg or "Element")
		local str2 = "_" .. VxezeUI.ElementCount
		return str:gsub("[^%w]", "") .. str2
	end

	VxezeLogLines = {}

	VxezeLog = function(arg, arg2)
		local str = tostring(arg) .. ": " .. tostring(arg2)
		table.insert(VxezeLogLines, os.date("[%H:%M:%S] ") .. str)

		if #VxezeLogLines > 200 then
			table.remove(VxezeLogLines, 1)
		end

		if VxezeUI.Console then
			pcall(function()
				VxezeUI.Console:Log(str)
			end)
		end
	end

	VxezeNotifyIcons = {
		info = "info",
		success = "circle-check",
		warning = "clock",
		error = "circle-x",
		start = "play",
		stop = "square",
		found = "search",
		reward = "gift",
		travel = "map-pin",
	}

	VxezeNotify = function(arg, arg2, arg3, arg4)
		arg3 = arg3 or "info"
		local str

		if arg3 == "start" or arg3 == "found" or arg3 == "travel" then
			str = "info"
		elseif arg3 == "reward" or arg3 == "success" then
			str = "success"
		elseif arg3 ~= "stop" then
			str = arg3
		else
			str = "warning"
		end

		arg4 = arg4 or {}
		VxezeLog(arg, arg2)
		if not VxezeUI.Interface then
			return
		end

		VxezeUI.Interface.CreateNoti({
			Title = "BF - Notification!",
			Desc = tostring(arg) .. ": " .. tostring(arg2),
			SubContent = arg4.SubContent,
			ShowTime = arg4.Duration or 5,
			Repeat = arg4.Repeat,
			Key = arg4.Key or arg .. "|" .. arg2,
			Type = str,
			Icon = arg4.Icon or VxezeNotifyIcons[arg3],
			Color = arg4.Color,
			Actions = arg4.Actions,
		})
	end

	VxezeReadList = function(arg, arg2)
		local tbl2 = {}
		local tbl3 = {}
		if type(arg) ~= "table" then
			return tbl2, tbl3
		end

		if #arg > 0 then
			for _, v2 in ipairs(arg) do
				table.insert(tbl2, v2)
			end

			return tbl2, tbl3
		end

		for k, v2 in pairs(arg) do
			table.insert(tbl2, k)

			if arg2 and v2 == true then
				table.insert(tbl3, k)
			end
		end

		table.sort(tbl2, function(arg3, arg4)
			return tostring(arg3) < tostring(arg4)
		end)

		return tbl2, tbl3
	end

	VxezeSplitStatus = function(arg)
		local str = tostring(arg or "")
		local match, v2 = str:match("^(.-)%s+:%s+(.*)$")

		if not match then
			match, v2 = str:match("^([^:]-):%s+(.*)$")
		end

		if match and match ~= "" then
			return match, v2
		end
		return str, ""
	end

	VxezeConfirm = function(arg, arg2, arg3)
		VxezeUI.Library:Confirm({
			Title = arg,
			Text = arg2,
			ConfirmText = "Confirm",
			CancelText = "Cancel",
			Window = VxezeUI.Window,
			Callback = function(arg4)
				if arg4 and arg3 then
					arg3()
				end
			end,
		})
	end

	ReleaseTweenPhysics = function()pcall(function()if ComputeNoclip and(ComputeNoclip())then return;end;if TweenRecentlyRequested and(TweenRecentlyRequested())then return;end;if SetNoClip then SetNoClip(false);end;local c=game.Players.LocalPlayer.Character;local n=c and(c:FindFirstChild("HumanoidRootPart"));if n then n.Anchored=false;c=n:FindFirstChild("FloatForce");if c then c:Destroy();end;end;end);end
	VxezeHardStopTween = function()pcall(function()if TweenManager then TweenManager.PauseUntil=math.max(TweenManager.PauseUntil or 0,tick()+0.35);end;if StopTweenNow then StopTweenNow();end;if TweenManager and TweenManager.CancelCurrent then TweenManager.CancelCurrent();end;local c=game.Players.LocalPlayer.Character and(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));if c then c.AssemblyLinearVelocity=Vector3.new(0.0,0.0,0.0);c.AssemblyAngularVelocity=Vector3.new(0.0,0.0,0.0);end;end);end

	VxezeQueue = function(arg, arg2)
		if arg.Built and not arg.Building then
			local ok, result = pcall(arg2)

			if not ok then
				VxezeReportError(arg.Name, result)
			end
		else
			table.insert(arg.Queue, arg2)
		end
	end

	VxezeBuildPage = function(arg, arg2)
		if arg.Built or arg.Building then
			return
		end
		arg.Building = true
		local n = 1
		local n2 = 0

		while n <= #arg.Queue do
			local v2 = arg.Queue[n]
			n += 1
			local ok, result = pcall(v2)

			if not ok then
				VxezeReportError(arg.Name, result)
			end

			n2 += 1

			if arg2 and n2 % arg2 == 0 then
				task.wait()
			end
		end

		arg.Built = true
		arg.Building = false
		table.clear(arg.Queue)
	end

	VxezeBuildAllPages = function()
		for _, page in ipairs(VxezeUI.Pages) do
			if not page.Built then
				VxezeBuildPage(page, 24)
				task.wait()
			end
		end
	end

	VxezePane = function(arg, arg2, lucide)
		local str = arg .. "/" .. arg2
		local v2 = VxezeUI.Panes[str]
		if v2 then
			return v2
		end

		local tbl2 = {
			Name = str,
			Queue = {},
			Built = false,
			Group = arg,
			Tab = (VxezeUI.Tabs[arg] or VxezeUI.Tabs.Main):AddSubTab({ Name = arg2, Icon = "Lucide:" .. lucide }),
		}

		pcall(function()
			tbl2.Tab.Button.MouseButton1Click:Connect(function()
				VxezeBuildPage(tbl2)
			end)
		end)

		VxezeUI.Panes[str] = tbl2
		table.insert(VxezeUI.Pages, tbl2)
		return tbl2
	end

	VxezeSectionIcons = {
		["Teleport World"] = "navigation",
		["Misc Shop"] = "shopping-bag",
		["Gun Shop"] = "circle-dot",
		["Sword Shop"] = "slash",
		["Fighting Shop"] = "sword",
		["Abilities Shop"] = "sparkles",
		["Script Check"] = "cpu",
		Status = "activity",
		Server = "server",
		["Local Player"] = "user",
		["Setting Farm"] = "sliders-horizontal",
		["Select Skills"] = "mouse-pointer-click",
		["Hold Skills"] = "hand",
		["Method Farm"] = "route",
		["Mastery Farm"] = "graduation-cap",
		["Material Farm"] = "package",
		["World Unlock"] = "lock-open",
		["Collect Fruits / Chests / Berries"] = "apple",
		["Event Time"] = "timer",
		["Elite Hunter"] = "crosshair",
		["Rip Indra"] = "crown",
		["Soul Reaper"] = "ghost",
		["Dough King"] = "cookie",
		Darkbeard = "skull",
		["Secret Quest"] = "scroll",
		["Magnet Event"] = "magnet",
		Fishing = "fish",
		["Quest Dojo Trainer / Dragon Hunter"] = "flame",
		["Raid Law"] = "scale",
		["Quest Observation"] = "eye",
		["Mob Farm"] = "bug",
		["Boss Farm"] = "shield-alert",
		["Devil Fruit"] = "cherry",
		Raids = "door-open",
		["Multi Raid"] = "layers",
		["Join Dungeon"] = "log-in",
		Dungeon = "castle",
		Setting = "settings-2",
		Farming = "sprout",
		["Kitsune Event"] = "moon",
		["Leviathan Event"] = "waves",
		["Boat Setting"] = "sailboat",
		["Race Draco"] = "feather",
		["Race Normal"] = "users",
		["Race V4"] = "zap",
		["Kill Trial"] = "target",
		["Get Items"] = "gift",
		["Mastery Weapon"] = "medal",
		["Upgrade Weapon"] = "hammer",
		["Settings Volcano"] = "mountain",
		["Farming Volcano"] = "mountain-snow",
		["Fully Volcano"] = "flame-kindling",
		ESP = "scan-eye",
		PVP = "swords",
		["MISC PVP"] = "shield",
		Webhook = "link-2",
		Settings = "cog",
	}

	VxezeBuildSection = function(arg, arg2)
		local v2 = VxezeUI.SectionRoutes[arg.Name .. "/" .. arg2]
		local pane = v2 and VxezePane(v2[1], v2[2], v2[3]) or arg.Pane
		local tbl2 = {}

		VxezeQueue(pane, function()
			local lucide = VxezeSectionIcons[arg2]
			pane.Tab:AddSection(arg2, lucide and "Lucide:" .. lucide or nil)
			tbl2.Section = pane.Tab
		end)

		local tbl3

		tbl3 = {
			CreateToggle = function(arg3, arg4)
				local v3 = VxezeSafe(arg3.Title, arg4)
				local flag = arg3.Default and true or false

				local function fn3(arg5, ...)
					local flag2 = flag and not arg5 and ComputeNoclip
					local flag3 = false

					if flag2 then
						local result
						flag3, result = pcall(ComputeNoclip)
						flag3 = flag3 and result == true
					end

					if v3 then
						v3(arg5, ...)
					end

					local flag4 = flag and not arg5
					flag = arg5 and true or false

					if flag4 and flag3 then
						local ok, result = pcall(ComputeNoclip)

						if not (ok and result) then
							VxezeHardStopTween()
							task.delay(0.5, ReleaseTweenPhysics)
						end
					end
				end

				local tbl4 = { value = arg3.Default and true or false }

				local tbl5 = {
					State = tbl4,
					SetStage = function(arg5, arg6)
						local value = arg6 and true or false

						if tbl4.toggle then
							tbl4.toggle:Set(value)
						else
							tbl4.value = value

							if fn3 then
								task.spawn(fn3, value)
							end
						end
					end,
				}

				table.insert(VxezeUI.Toggles, tbl5)

				if fn3 then
					task.spawn(fn3, tbl4.value)
				end

				VxezeQueue(pane, function()
					local flag2 = false

					tbl4.toggle = tbl2.Section:AddToggle({
						Flag = VxezeNextId(arg3.Title),
						Text = arg3.Title,
						Description = arg3.Desc,
						Default = tbl4.value,
						Callback = function(value)
							if flag2 then
								tbl4.value = value

								if fn3 then
									fn3(value)
								end
							end
						end,
					})

					flag2 = true
				end)

				return tbl5
			end,
			CreateButton = function(arg3, arg4)
				local v3 = VxezeSafe(arg3.Title, arg4)
				local v4 = VxezeUI.ConfirmButtons[arg3.Title]

				VxezeQueue(pane, function()
					tbl2.Section:AddButton({
						Text = arg3.Title,
						Description = arg3.Desc,
						Callback = function()
							if not v3 then
								return
							end

							if v4 then
								VxezeConfirm(arg3.Title, v4, v3)
							else
								v3()
							end
						end,
					})
				end)
			end,
			CreateLabel = function(arg3)
				local tbl4 = {}
				tbl4.text = tostring(arg3.Title or "")

				VxezeQueue(pane, function()
					local v3, v4 = VxezeSplitStatus(tbl4.text)
					local v5 = tbl4
					tbl4.title = v3
					v5.content = v4
					tbl4.paragraph = tbl2.Section:AddParagraph({ Title = v3, Text = v4 })
				end)

				return { SetText = function(arg4)
					local text = tostring(arg4)
					if text == tbl4.text then
						return
					end
					tbl4.text = text
					local paragraph = tbl4.paragraph
					if not paragraph then
						return
					end
					local v3, v4 = VxezeSplitStatus(text)

					if v3 ~= tbl4.title then
						tbl4.title = v3
						paragraph:SetTitle(v3)
					end

					if v4 ~= tbl4.content then
						tbl4.content = v4
						paragraph:Set(v4)
					end
				end }
			end,
			CreateBox = function(arg3, arg4)
				local v3 = VxezeSafe(arg3.Title, arg4)
				local tbl4 = {}
				tbl4.value = arg3.Default ~= nil and tostring(arg3.Default) or ""

				VxezeQueue(pane, function()
					tbl2.Section:AddTextbox({
						Flag = VxezeNextId(arg3.Title),
						Text = arg3.Title,
						Description = arg3.Desc,
						Default = tbl4.value,
						Placeholder = arg3.Placeholder,
						Numeric = arg3.Number == true,
						Callback = function(value)
							tbl4.value = value

							if v3 then
								v3(value)
							end
						end,
					})
				end)
			end,
			CreateSlider = function(arg3, arg4)
				local v3 = VxezeSafe(arg3.Title, arg4)
				local min = arg3.Min or 0
				local max = arg3.Max or 100
				local n = 10 ^ (arg3.Precise and max - min <= 10 and 1 or 0)
				local tbl4 = {}
				tbl4.value = math.floor(math.clamp(tonumber(arg3.Default) or min, min, max) * n + 0.5) / n

				local tbl5 = {
					State = tbl4,
					SetValue = function(arg5, arg6)
						local value = math.floor(math.clamp(tonumber(arg6) or min, min, max) * n + 0.5) / n

						if tbl4.slider then
							tbl4.slider:Set(value)
						else
							tbl4.value = value

							if v3 then
								task.spawn(v3, value)
							end
						end
					end,
					Get = function()
						return tbl4.value
					end,
				}

				if v3 then
					task.spawn(v3, tbl4.value)
				end

				VxezeQueue(pane, function()
					tbl4.slider = tbl2.Section:AddSlider({
						Flag = VxezeNextId(arg3.Title),
						Text = arg3.Title,
						Description = arg3.Desc,
						Min = min,
						Max = max,
						Default = tbl4.value,
						Increment = 1 / n,
						Callback = function(value)
							if value ~= tbl4.value then
								tbl4.value = value

								if v3 then
									v3(value)
								end
							end
						end,
					})
				end)

				return tbl5
			end,
			CreateDropdown = function(arg3, arg4)
				local v3 = VxezeSafe(arg3.Title, arg4)

				if arg3.Slider then
					local v4 = ipairs
					local v5 = VxezeReadList(arg3.List)

					for _, v6 in v4(v5) do
						local v7 = arg3.List[v6]

						tbl3.CreateSlider({
							Title = arg3.Title .. " - " .. tostring(v7.Title),
							Min = v7.Min,
							Max = v7.Max,
							Default = v7.Default,
							Precise = v7.Precise,
						}, function(default)
							v7.Default = default

							if v3 then
								v3(nil, v7)
							end
						end)
					end

					return {}
				end

				local flag = arg3.Selected == true
				local v4, v5 = VxezeReadList(arg3.List, flag)
				local tbl4 = { values = v4, selected = {}, value = arg3.Default }

				for _, v6 in ipairs(v5) do
					tbl4.selected[v6] = true
				end

				VxezeQueue(pane, function()
					local tbl5

					if flag then
						tbl5 = {}

						for _, value in ipairs(tbl4.values) do
							if tbl4.selected[value] then
								table.insert(tbl5, value)
							end
						end
					else
						tbl5 = tbl4.value
					end

					tbl4.dropdown = tbl2.Section:AddDropdown({
						Flag = VxezeNextId(arg3.Title),
						Text = arg3.Title,
						Description = arg3.Desc,
						Options = tbl4.values,
						MultiSelect = flag,
						Searchable = arg3.Search == true or #tbl4.values > 12,
						Default = tbl5,
						Callback = function(value)
							if not flag then
								tbl4.value = value

								if v3 then
									v3(value)
								end

								return
							end

							local tbl6 = {}

							if type(value) == "table" then
								for k, v6 in pairs(value) do
									if v6 == true then
										tbl6[k] = true
									elseif type(v6) == "string" then
										tbl6[v6] = true
									end
								end
							end

							for _, value2 in ipairs(tbl4.values) do
								local flag2 = tbl6[value2] == true

								if tbl4.selected[value2] == true ~= flag2 then
									tbl4.selected[value2] = flag2 or nil

									if v3 then
										v3(value2, flag2)
									end
								end
							end
						end,
					})
				end)

				return {
					State = tbl4,
					SetValue = function(arg5, value)
						tbl4.value = value

						if tbl4.dropdown then
							tbl4.dropdown:Set(value)
						elseif v3 then
							task.spawn(v3, value)
						end
					end,
					GetNewList = function(arg5, arg6)
						local v6 = tbl4
						local v7, v8 = VxezeReadList(arg6, flag)
						v6.values = v7

						for _, v9 in ipairs(v8) do
							tbl4.selected[v9] = true
						end

						local dropdown = tbl4.dropdown
						if not dropdown then
							return
						end
						dropdown:SetOptions(tbl4.values)

						if flag then
							local tbl5 = {}

							for _, value in ipairs(tbl4.values) do
								if tbl4.selected[value] then
									table.insert(tbl5, value)
								end
							end

							dropdown:Set(tbl5, true)
						end
					end,
				}
			end,
		}

		return tbl3
	end

	VxezeResetConfig = function()
		for _, toggle in ipairs(VxezeUI.Toggles) do
			if toggle.State.value then
				toggle:SetStage(false)
			end
		end

		task.wait(0.5)
		table.clear(Settings)

		pcall(function()
			if not isfolder(FolderName) then
				makefolder(FolderName)
			end

			writefile(FolderName .. "/" .. SaveFileName, "{}")
		end)
	end

	VxezeCreateFloatingButton = function()
		local CoreGui = game:GetService("CoreGui")

		pcall(function()
			CoreGui = gethui() or CoreGui
		end)

		local vxezeHubButton = CoreGui:FindFirstChild("Vxeze Hub Button")

		if vxezeHubButton then
			vxezeHubButton:Destroy()
		end

		local accent = VxezeUI.Library.Theme.Accent
		local TweenService = game:GetService("TweenService")
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "Vxeze Hub Button"
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true
		screenGui.DisplayOrder = 999
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		local frame = Instance.new("Frame")
		frame.Name = "Ring"
		frame.Size = UDim2.fromOffset(46, 46)
		frame.Position = UDim2.fromOffset(tonumber(Settings["Interface Button X"]) or 40, tonumber(Settings["Interface Button Y"]) or 160)
		frame.BackgroundColor3 = accent
		frame.BorderSizePixel = 0
		frame.Parent = screenGui
		local uiCorner = Instance.new("UICorner")
		uiCorner.CornerRadius = UDim.new(1, 0)
		uiCorner.Parent = frame
		local imageButton = Instance.new("ImageButton")
		imageButton.Name = "Button"
		imageButton.Size = UDim2.new(1, -2, 1, -2)
		imageButton.Position = UDim2.fromScale(0.5, 0.5)
		imageButton.AnchorPoint = Vector2.new(0.5, 0.5)
		imageButton.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
		imageButton.BackgroundTransparency = 0.1
		imageButton.Image = VxezeUI.ButtonImage
		imageButton.AutoButtonColor = false
		imageButton.Parent = frame
		local uiCorner2 = Instance.new("UICorner")
		uiCorner2.CornerRadius = UDim.new(1, 0)
		uiCorner2.Parent = imageButton
		local uiStroke = Instance.new("UIStroke")
		uiStroke.Thickness = 1
		uiStroke.Color = accent
		uiStroke.Transparency = 0.35
		uiStroke.Parent = frame
		screenGui.Parent = CoreGui
		VxezeUI.FloatingButton = { Gui = screenGui, Frame = frame, Icon = imageButton, Stroke = uiStroke }

		VxezeUI.Library.ThemeChanged.Connect(function(arg)
			local tbl2 = { BackgroundColor3 = arg.Accent }
			TweenService:Create(frame, TweenInfo.new(0.18), tbl2):Play()
			local tbl3 = { Color = arg.Accent }
			TweenService:Create(uiStroke, TweenInfo.new(0.18), tbl3):Play()
		end)

		local UserInputService = game:GetService("UserInputService")
		local v2 = nil
		local position = nil
		local position2 = nil
		local flag = false

		imageButton.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
				return
			end
			v2 = input
			position = input.Position
			position2 = frame.Position
			flag = false
		end)

		error("devirt: value <luasym.LuaFunc object at 0x000001BED6708DC0> in an expression (at 234:103)")
	end

	VxezeBindToggleKey = function(toggleKey)
		VxezeUI.ToggleKey = toggleKey or Enum.KeyCode.LeftControl
		if VxezeUI.ToggleConnection then
			return
		end
		local UserInputService = game:GetService("UserInputService")
		VxezeUI.ToggleConnection = UserInputService.InputBegan:Connect(function(n)if n.UserInputType~=Enum.UserInputType.Keyboard then return;end;if n.KeyCode~=VxezeUI.ToggleKey or( UserInputService :GetFocusedTextBox())then return;end;if tick()-(VxezeUI.ToggleAt or 0)<0.35 then return;end;VxezeUI.ToggleAt=tick();if VxezeUI.Window then VxezeUI.Window:ToggleVisibility();end;end)
	end

	VxezeShowWindow = function()
		local window = VxezeUI.Window

		if window and not VxezeUI.Shown then
			VxezeUI.Shown = true
			window:Open()
		end
	end

	VxezeBuildInterfaceSection = function()
		local library = VxezeUI.Library
		local tab = VxezeUI.SettingPage.Tab
		tab:AddSection("Interface", "Lucide:palette")

		tab:AddDropdown({
			Flag = "InterfaceTheme",
			Text = "Theme",
			Description = "Change the interface theme",
			Options = library:GetThemeNames(),
			Default = Settings["Interface Theme"] or library.ThemeName,
			Callback = function(arg)
				if arg then
					library:SetTheme(arg)
					SaveSettings("Interface Theme", arg)
				end
			end,
		})

		tab:AddToggle({
			Flag = "InterfaceAcrylic",
			Text = "Acrylic",
			Description = "Blur background, needs graphics quality 8+",
			Default = Settings["Interface Acrylic"] ~= false,
			Callback = function(arg)
				library:SetBlurEnabled(arg)
				SaveSettings("Interface Acrylic", arg)
			end,
		})

		tab:AddToggle({
			Flag = "InterfaceTransparency",
			Text = "Liquid Glass",
			Description = "Frosted surfaces instead of flat ones",
			Default = Settings["Interface Transparency"] ~= false,
			Callback = function(arg)
				library:SetLiquidGlass(arg)
				SaveSettings("Interface Transparency", arg)
			end,
		})

		if library.SetAutoScale then
			tab:AddToggle({
				Flag = "InterfaceAutoScale",
				Text = "Interface Scale [ Scan ]",
				Description = "Measures your screen: fits the menu to a small or maximised game window, grows it in full tab and suits phones. Turn off to use the slider",
				Default = Settings["Interface Auto Scale"] ~= false,
				Callback = function(arg)
					library:SetAutoScale(arg)
					SaveSettings("Interface Auto Scale", arg)
				end,
			})
		end

		tab:AddSlider({
			Flag = "InterfaceScale",
			Text = "Interface Scale",
			Description = "Size of the whole menu (used when Auto Interface Scale is off)",
			Min = 70,
			Max = 140,
			Increment = 5,
			Suffix = " %",
			Default = tonumber(Settings["Interface Scale"]) or 100,
			Callback = function(arg)
				library:SetUIScale(arg / 100)
				SaveSettings("Interface Scale", arg)
			end,
		})

		tab:AddToggle({
			Flag = "InterfaceFloatingButton",
			Text = "Floating Button",
			Description = "Show the round button to open / close the menu",
			Default = Settings["Interface Floating Button"] ~= false,
			Callback = function(enabled)
				SaveSettings("Interface Floating Button", enabled)
				local floatingButton = VxezeUI.FloatingButton

				if floatingButton and floatingButton.Gui.Parent then
					floatingButton.Gui.Enabled = enabled
				end
			end,
		})

		tab:AddKeybind({
			Flag = "InterfaceMinimize",
			Text = "Minimize Bind",
			Description = "Key to open / close the menu",
			Default = Enum.KeyCode[Settings["Interface Minimize Key"] or "LeftControl"] or Enum.KeyCode.LeftControl,
			Callback = function(arg, arg2)
				if arg and arg2 ~= "press" then
					VxezeBindToggleKey(arg)
					SaveSettings("Interface Minimize Key", arg.Name)
				end
			end,
		})

		tab:AddDivider()
		tab:AddSection("Config Files", "Lucide:folder")
		local str = ""
		local v2 = nil

		local function fn3()
			local v3 = library:ListConfigs()

			if v2 then
				v2:SetOptions(v3)
			end

			return v3
		end

		tab:AddTextbox({
			Flag = "ConfigName",
			Text = "Config name",
			Description = "Name used when saving",
			Placeholder = "my-setup",
			Callback = function(arg)
				str = arg
			end,
		})

		v2 = tab:AddDropdown({
			Flag = "ConfigPick",
			Text = "Saved configs",
			Description = "Pick one to load or delete",
			Options = library:ListConfigs(),
		})

		tab:AddButton({
			Text = "Save config",
			Description = "Writes every control's value under that name",
			Icon = "Lucide:save",
			Callback = function()
				local str2 = str ~= "" and str or "config-" .. os.date("%d%m-%H%M")
				local v3, v4 = library:SaveConfig(str2)
				VxezeLog("Config", v3 and "saved " .. str2 or "save failed: " .. tostring(v4))
				fn3()
			end,
		})

		tab:AddButton({
			Text = "Load config",
			Description = "Applies the selected file",
			Icon = "Lucide:folder-open",
			Callback = function()
				local v3 = v2:Get()
				if not v3 or v3 == "" then
					return
				end
				local v4, v5 = library:LoadConfig(v3)
				VxezeLog("Config", v4 and "loaded " .. v3 or "load failed: " .. tostring(v5))
			end,
		})

		tab:AddButton({
			Text = "Delete config",
			Description = "Removes the selected file",
			Icon = "Lucide:trash-2",
			Callback = function()
				local v3 = v2:Get()
				if not v3 or v3 == "" then
					return
				end
				library:DeleteConfig(v3)
				VxezeLog("Config", "deleted " .. v3)
				fn3()
			end,
		})

		tab:AddDivider()
		tab:AddSection("Activity Log", "Lucide:terminal")
		VxezeUI.Console = tab:AddConsole({ Height = 190, MaxLogs = 200, AutoCapture = false, Title = "Hub Log" })

		for _, v3 in ipairs(VxezeLogLines) do
			pcall(function()
				local console = VxezeUI.Console
				local log = console.Log
				local v4 = console
				local str2 = v3:gsub("^%[%d+:%d+:%d+%] ", "")
				log(v4, str2)
			end)
		end

		tab:AddButton({
			Text = "Clear log",
			Icon = "Lucide:eraser",
			Callback = function()
				table.clear(VxezeLogLines)
				VxezeUI.Console:Clear()
			end,
		})

		tab:AddButton({
			Text = "Copy log",
			Description = "Puts the whole log on the clipboard",
			Icon = "Lucide:clipboard",
			Callback = function()
				if setclipboard then
					setclipboard(table.concat(VxezeLogLines, "\n"))
					VxezeLog("Config", "log copied")
				end
			end,
		})
	end

	CreateVxezeInterface = function()
		local v2 = VxezeLoadUI()
		VxezeUI.Library = v2
		VxezeUI.Pages = {}
		VxezeUI.Toggles = {}
		v2:PreloadIcons({ "Lucide" })

		if Settings["Interface Theme"] then
			pcall(function()
				v2:SetTheme(Settings["Interface Theme"], true)
			end)
		end

		local interface = { Library = v2, Options = v2.Flags }
		VxezeUI.Interface = interface

		interface.CreateNoti = function(arg)
			local str = tostring(arg.Desc or "")
			local n = tonumber(arg.ShowTime) or 5
			local now = os.clock()
			local key = arg.Key or str
			local flag = VxezeUI.RecentNotify[key]

			if flag then
				flag = now - VxezeUI.RecentNotify[key] < (arg.Repeat or n)
			end

			if flag then
				return
			end
			VxezeUI.RecentNotify[key] = now

			v2:Notify({
				Title = "BF - Notification!",
				Text = arg.SubContent and str .. "\n" .. tostring(arg.SubContent) or str,
				Duration = n,
				Type = arg.Type,
				Icon = arg.Icon,
				Color = arg.Color,
				Actions = arg.Actions,
			})
		end

		interface.CreateMain = function()
			local v3 = VxezeUI
			local v4 = v2
			local createWindow = v4.CreateWindow

			local tbl2 = {
				Title = "Vxeze Hub" .. (getgenv().Premium and " [ Premium ]" or " [ Free ]"),
				Subtitle = "True v2",
				Size = UDim2.fromOffset(640, 470),
			}

			tbl2.MinSize = Vector2.new(480, 360)
			tbl2.TabWidth = 118
			tbl2.Resizable = true
			tbl2.Draggable = true
			tbl2.UseBlur = Settings["Interface Acrylic"] ~= false
			tbl2.ToggleKeybind = false
			v3.Window = createWindow(v4, tbl2)
			VxezeBindToggleKey(Enum.KeyCode[Settings["Interface Minimize Key"] or "LeftControl"])
			VxezeUI.Window:Close()
			task.delay(20, VxezeShowWindow)
			VxezeUI.Tabs = {}
			VxezeUI.Panes = {}

			for _, group in ipairs(VxezeUI.Groups) do
				if group.Line then
					VxezeUI.Window:AddTabLine()
				else
					VxezeUI.Tabs[group.Name] = VxezeUI.Window:AddTab({ Name = group.Name, Icon = "Lucide:" .. group.Icon })
				end
			end

			VxezeUI.SubTabIcons = {}

			for _, pageGroup in pairs(VxezeUI.PageGroups) do
				VxezeUI.SubTabIcons[pageGroup[1] .. "/" .. pageGroup[2]] = pageGroup[3]
			end

			for _, sectionRoute in pairs(VxezeUI.SectionRoutes) do
				VxezeUI.SubTabIcons[sectionRoute[1] .. "/" .. sectionRoute[2]] = sectionRoute[3]
			end

			for k, v5 in pairs(VxezeUI.SubTabOrder) do
				for _, v6 in ipairs(v5) do
					VxezePane(k, v6, VxezeUI.SubTabIcons[k .. "/" .. v6] or "circle")
				end
			end

			return { CreatePage = function(arg)
				local pageName = arg.Page_Name
				local tbl3 = VxezeUI.PageGroups[pageName] or { "Main", pageName, "circle" }
				local v5 = VxezePane(tbl3[1], tbl3[2], tbl3[3])

				if pageName == "Setting" then
					VxezeUI.SettingPage = v5
				end

				return { CreateSection = function(arg2)
					return VxezeBuildSection({ Name = pageName, Pane = v5 }, arg2)
				end }
			end }
		end

		interface.Finish = function()
			if VxezeUI.SettingPage and not VxezeUI.SettingSectionQueued then
				VxezeUI.SettingSectionQueued = true
				VxezeQueue(VxezeUI.SettingPage, VxezeBuildInterfaceSection)
			end

			if VxezeUI.Finished then
				return
			end
			VxezeUI.Finished = true
			local v3 = VxezeUI.Pages[1]

			if v3 then
				VxezeBuildPage(v3)
			end

			VxezeUI.Window:AddDefaultCreditsPanel({
				Title = "Credits",
				Credits = { { Name = "_ngtinhcuae", Text = "Fouder Vxeze Hub", Image = "rbxassetid://134389506275073" } },
			})

			VxezeUI.Window:SelectTab(1)
			VxezeShowWindow()
			VxezeCreateFloatingButton()
			VxezeUI.FloatingButton.Gui.Enabled = Settings["Interface Floating Button"] ~= false

			v2:Notify({
				Title = "BF - Notification!",
				Text = "Vxeze Hub loaded, press the button or LeftControl to hide",
				Type = "success",
				Duration = 5,
			})

			task.spawn(VxezeBuildAllPages)
		end

		return interface
	end

	local v2 = CreateVxezeInterface()
	Main = v2.CreateMain()
	v2.Finish()
	PageShop = Main.CreatePage({ Page_Name = "Shop", Page_Title = "Shop" })
	local options = v2.Options
	getgenv().Options = options
	ElementCollection = {}

	SpecDefault = function(arg)
		if arg.Default ~= nil then
			return arg.Default
		end

		if arg.Key then
			local v3 = Settings[arg.Key]
			if v3 ~= nil then
				return v3
			end
		end

		return arg.Fallback
	end

	CancelTweenIfIdle = function()if ToggleNoclip()then return;end;StopTweenNow();TweenManager.CancelCurrent();SetNoClip(false);end

	ApplySpec = function(arg, arg2, arg3)
		if arg.Key then
			SaveSettings(arg.Key, arg2, arg3)
		end

		if arg.OnChange then
			arg.OnChange(arg2, arg3)
		end
	end

	BuildElement = function(c,n,L)local U=if L.Mode=="Toggle"then(c.CreateToggle({Title=L.Title,Desc=L.Desc,Default=SpecDefault(L)},function(w)if w and L.Require then local y,S=L.Require();if not y then if L.Key then SaveSettings(L.Key,false);end;local y=ElementCollection[n]and ElementCollection[n][L.Title];if y and y.SetStage then y:SetStage(false);end;VxezeNotify(L.Title,S or"Cannot turn this on right now","warning",{Key="require"..L.Title});return;end;end;if w and L.SoftRequire then local y,S=L.SoftRequire();if not y then VxezeNotify(L.Title,S or"This might not work right now","warning",{Key="softrequire"..L.Title});end;end;ApplySpec(L,w);end))else if L.Mode=="Slider"then(c.CreateSlider({Title=L.Title,Desc=L.Desc,Min=L.Min,Max=L.Max,Default=SpecDefault(L),Precise=L.Precise~=false},function(w)ApplySpec(L,w);end))else if L.Mode=="Dropdown"then(c.CreateDropdown({Title=L.Title,Desc=L.Desc,List=if type(L.List)=="function"then(L.List())else L.List,Search=L.Search or false,Selected=L.Multi or false,Default=SpecDefault(L)},function(w,y)ApplySpec(L,w,y);end))else if L.Mode=="Button"then(c.CreateButton({Title=L.Title,Desc=L.Desc},function()if L.OnChange then L.OnChange();end;end))else if L.Mode=="Label"then(c.CreateLabel({Title=L.Title}))else nil;ElementCollection[n]=ElementCollection[n]or{};ElementCollection[n][L.Title]=U;return U;end
	BuildPanel = function(c,n,L)getgenv().PanelFailures=getgenv().PanelFailures or{};for U,U in ipairs(L)do local L,w=pcall(BuildElement,c,n,U);if not L then table.insert(getgenv().PanelFailures,tostring(U.Title).." -> "..tostring(w));VxezeReportError(U.Title or n,w);end;end;return ElementCollection[n];end

	Remote = function(arg, arg2, arg3)
		if not arg and arg3 then
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer(arg2, true)
		else
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer(arg, arg2, arg3)
		end
	end

	GoToSea = function(arg)
		if Place_Id["sea" .. arg]() then
			return true
		end
		local str

		if arg == 3 then
			str = "TravelZou"
		elseif arg == 2 then
			str = "TravelDressrosa"
		else
			str = "TravelMain"
		end

		game.ReplicatedStorage.Remotes.CommF_:InvokeServer(str)
		task.wait(5)
		return false
	end

	FruitStockCache = { data = nil, time = 0, loading = false }

	GetFruitsData = function(arg)
		if FruitStockCache.loading then
			repeat
				task.wait(0.1)
			until not FruitStockCache.loading
		end

		local flag = not FruitStockCache.data
		local flag2

		if flag then
			flag2 = flag
		else
			local time = FruitStockCache.time
			flag2 = tick() - time > (arg or 10)
		end

		if flag2 then
			FruitStockCache.loading = true

			local ok, data = pcall(function()
				return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)
			end)

			FruitStockCache.loading = false

			if ok and type(data) == "table" then
				local v3 = FruitStockCache
				local v4 = FruitStockCache
				local now = tick()
				v3.data = data
				v4.time = now
			end
		end

		return FruitStockCache.data or {}
	end

	getgenv().tablefruitausea3 = {}
	whitelistedfruit = {}
	TableDevilFruit = {}

	LoadFruitTables = function()
		local v3 = next
		local v4, v5 = GetFruitsData(60)

		for _, v6 in v3, v4, v5 do
			if v6.Price >= 1000000 then
				table.insert(whitelistedfruit, string.split(v6.Name, "-")[1] .. " Fruit")
				local name = v6.Name
				local price = v6.Price
				getgenv().tablefruitausea3[name] = price
			end

			TableDevilFruit[v6.Name] = false
		end

		getgenv().tablefruitausea3["Dragon (East)-Dragon (East)"] = 15000000
		getgenv().tablefruitausea3["Dragon (West)-Dragon (West)"] = 15000000

		if SniperShopDropdown then
			SniperShopDropdown:GetNewList(PrepareMultiSelectList(TableDevilFruit, Settings["Blox Fruit Sniper Shop"]))
		end
	end

	task.spawn(LoadFruitTables)
	ItemId = require(game.ReplicatedStorage.Economy.ItemId)

	CheckFruitReal = function(arg)
		local v3 = next
		local v4, v5 = GetFruitsData(60)

		for _, v6 in v3, v4, v5 do
			if v6.Name == arg then
				return v6
			end
		end
	end

	SkinFruit = {}

	spawn(function()
		local ok, result = pcall(function()
			return require(game:GetService("ReplicatedStorage").Modules.SkinUtil.FruitSkins)
		end)

		if not ok then
			return
		end

		for _, v3 in next, result.Grouped, nil do
			for _, v4 in next, v3, nil do
				local storageName = v3.StorageName
				getgenv().tablefruitausea3[storageName] = CheckFruitReal(v4.Item).Price
				table.insert(whitelistedfruit, v4.StorageName .. " Fruit")
				SkinFruit[v4.StorageName .. " Fruit"] = true
			end
		end
	end)

	SeaTravelRemote = { "TravelMain", "TravelDressrosa", "TravelZou" }

	MaterialMobs = {
		["Angel Wings"] = { { "God's Guard", "Shanda", "Royal Squad", "Royal Soldier", "Wysper", "Thunder God" } },
		Leather = {
			{ "Pirate", "Brute" },
			{ "Marine Captain" },
			{ "Jungle Pirate", "Forest Pirate", "Musketeer Pirate" },
		},
		["Scrap Metal"] = { { "Pirate", "Brute" }, { "Marine Captain" }, { "Jungle Pirate", "Forest Pirate" } },
		["Magma Ore"] = { { "Military Soldier", "Military Spy", "Magma Admiral" }, { "Magma Ninja", "Lava Pirate" } },
		["Fish Tail"] = {
			{ "Fishman Warrior", "Fishman Commando", "Fishman Lord" },
			[3] = { "Fishman Raider", "Fishman Captain" },
		},
		Ectoplasm = { [2] = { "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer", "Cursed Captain" } },
		["Mystic Droplet"] = { [2] = { "Water Fighter", "Sea Soldier" } },
		["Radioactive Material"] = { [2] = { "Factory Staff" } },
		["Vampire Fang"] = { [2] = { "Vampire" } },
		["Conjured Cocoa"] = { [3] = { "Chocolate Bar Battler", "Cocoa Warrior" } },
		["Dragon Scale"] = { [3] = { "Dragon Crew Archer", "Dragon Crew Warrior" } },
		Gunpowder = { [3] = { "Pistol Billionaire" } },
		["Mini Tusk"] = { [3] = { "Mythological Pirate" } },
		Bones = { [3] = { "Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy" } },
		["Demonic Wisp"] = { [3] = { "Demonic Soul", "Reborn Skeleton", "Living Zombie", "Posessed Mummy" } },
		["Nightmare Catcher"] = { [3] = { "Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy" } },
	}

	GetMaterialMobs = function(arg)
		local v3 = MaterialMobs[arg]
		if not v3 then
			return nil, nil
		end
		local v4 = GetCurrentSea()
		if v3[v4] then
			return v3[v4], nil
		end

		for _, v5 in ipairs({ 3, 2, 1 }) do
			if v3[v5] then
				return nil, v5
			end
		end
	end

	TableMaterials = {}

	for k in next, MaterialMobs, nil do
		table.insert(TableMaterials, k)
	end

	table.sort(TableMaterials)
	RedeemCodeBusy = false
	RedeemSaveFile = "Vxeze Hub/RedeemedCodes.json"

	RedeemLoadDone = function()
		local ok, result = pcall(function()
			return game:GetService("HttpService"):JSONDecode(readfile(RedeemSaveFile))
		end)

		return ok and type(result) == "table" and result or {}
	end

	RedeemSaveDone = function(arg)
		pcall(function()
			if type(isfolder) == "function" and not isfolder("Vxeze Hub") then
				makefolder("Vxeze Hub")
			end

			writefile(RedeemSaveFile, game:GetService("HttpService"):JSONEncode(arg))
		end)
	end

	RedeemFetchWiki = function()
		local tbl2 = {}

		local ok, result = pcall(function()
			local HttpService_ = game:GetService("HttpService")
			local jsonDecode = HttpService_.JSONDecode
			local v3 = VxezeFetchText

			local function fn3(arg, arg2, arg3, arg4, arg5)
				local tbl3 = {}
				local tbl4 = {}
				local n = arg
				local n2 = arg2
				local v4 = arg3
				local v5 = arg4
				local v6 = arg5
				local n3 = 1
				local tbl5 = nil
				local v7 = nil
				local char = nil
				local byte = nil
				local n4 = nil
				local n5 = nil
				local n6 = nil
				local n7 = nil
				local n8 = nil
				local n9 = nil
				local n10 = nil
				local n11 = nil

				while true do
					if n3 <= 31 then
						if n3 <= 15 then
							if n3 <= 7 then
								if n3 <= 3 then
									if n3 <= 1 then
										if n3 <= 0 then
											tbl5 = tbl5[5]
											n3 = 38
										else
											char = string.char
											byte = string.byte

											if n2 == 2 then
												n3 = 36
												n4 = n
											else
												n3 = 57
											end
										end
									elseif n3 <= 2 then
										tbl5 = tbl5[1]
										n3 = 32
									else
										n3 = 24
										n2 = 4225628066614523
										n5 = 1640726024911297
										n6 = 4503599627370496
										n7 = 67108864
										n8 = 17592186044416
										n9 = 66262169
										n10 = 66419657
										tbl5 = { tbl5, 4, 1, 0, nil }
									end
								elseif n3 <= 5 then
									if n3 <= 4 then
										n4 = (n4 - n7) / 2
										n5 = (n5 - n9) / 2
										n7 = n4 % 2
										n9 = n5 % 2

										if n7 ~= n9 then
											n3 = 11
											n6 = 4
										else
											n3 = 7
										end
									else
										tbl5 = tbl5[1]
										n3 = 27
									end
								elseif n3 <= 6 then
									n4 = (n4 - n7) / 2
									n5 = (n5 - n9) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 12
										n6 = 128
									else
										n3 = 35
									end
								else
									n4 = (n4 - n7) / 2
									n5 = (n5 - n9) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 18
										n6 = 8
									else
										n3 = 55
									end
								end
							elseif n3 <= 11 then
								if n3 <= 9 then
									if n3 <= 8 then
										local n12 = n4 * 2 + 1
										local v8 = n5[n12]
										local v9 = n5[n12 + 1]

										if not v8 then
											n3 = 40
										else
											n3 = 37
											n6 = v8
											n7 = v9
										end
									else
										local v8 = tbl5[3]
										local v9 = tbl5[5]
										local n12 = tbl5[2] + v8
										local flag = v8 <= 0
										local flag2 = not flag
										local flag3 = n12 >= v9
										local flag4 = n12 <= v9
										flag = flag and flag3
										flag2 = flag2 and flag4
										flag2 = flag or flag2
										tbl5[2] = n12

										if flag2 then
											n3 = 56
											n6 = n12
										else
											n3 = 54
										end
									end
								elseif n3 <= 10 then
									n8 += n6
									n3 = 6
								else
									n8 += n6
									n3 = 7
								end
							elseif n3 <= 13 then
								if n3 <= 12 then
									n8 += n6
									n3 = 35
								else
									local v8 = tbl5[5]
									local v9 = tbl5[4]
									local n12 = tbl5[2] + v8
									local flag = v8 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v9
									local flag4 = n12 <= v9
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl5[2] = n12

									if flag3 then
										n3 = 16
									else
										n3 = 2
									end
								end
							elseif n3 <= 14 then
								tbl5 = tbl5[2]
								n3 = 36
							else
								n8 += n6
								n3 = 63
							end

							continue
						end

						if n3 <= 23 then
							if n3 <= 19 then
								if n3 <= 17 then
									if n3 <= 16 then
										n4 = (n6 * n4 + n7) % 4294967296
										n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
										n3 = 13
										continue
									end

									return nil
								end

								if n3 <= 18 then
									n8 += n6
									n3 = 55
								else
									n = (n + tbl4[n2] + n4[n2 % 32 + 1]) % 256
									local v8 = tbl4[n2]
									tbl4[n2] = tbl4[n]
									tbl4[n] = v8
									n3 = 25
								end

								continue
							end

							if n3 <= 21 then
								if n3 <= 20 then
									local v8 = tbl5[1]
									local v9 = tbl5[5]
									local n12 = tbl5[4] + v8
									local flag = v8 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v9
									local flag4 = n12 <= v9
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl5[4] = n12

									if flag3 then
										n3 = 8
										n4 = n12
									else
										n3 = 59
									end
								else
									n3 = 25
									n = 0
									tbl5 = { 1, 255, nil, -1, tbl5 }
								end
							elseif n3 <= 22 then
								n[n4] = n6
								n[52] = 4
								n[99] = 12
								n[51] = 3
								n[65] = 10
								n[48] = 0
								n[101] = 14
								n[54] = 6
								n3 = 28
								n4 = 49
								n6 = 1
							else
								n = (n - n11) / 65536
								local n12 = (n2 + n11) % n6
								local n13 = n12 % n7
								n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
								n3 = 24
							end

							continue
						end

						if n3 <= 27 then
							if n3 <= 25 then
								if n3 <= 24 then
									local v8 = tbl5[3]
									local v9 = tbl5[2]
									local n12 = tbl5[4] + v8
									local flag = v8 <= 0
									local flag2 = flag and n12 >= v9 or not flag and n12 <= v9
									tbl5[4] = n12

									if flag2 then
										n3 = 31
										n11 = n12
									else
										n3 = 5
									end
								else
									local v8 = tbl5[1]
									local v9 = tbl5[2]
									local n12 = tbl5[4] + v8
									local flag = v8 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v9
									local flag4 = n12 <= v9
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl5[4] = n12

									if flag3 then
										n3 = 19
										n2 = n12
									else
										n3 = 51
									end
								end
							elseif n3 <= 26 then
								n5 = {}
								n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
								n3 = 58
								n4 = 870728320
								n6 = 493413649
								n7 = -405362667
								n9 = 1
								tbl5 = { 0, 1, nil, 128, tbl5 }
							else
								n3 = 49
								tbl5 = { nil, tbl5, 1, 32, 0 }
							end
						elseif n3 <= 29 then
							if n3 <= 28 then
								n[n4] = n6
								n[100] = 13
								n[56] = 8
								n[97] = 10
								n[69] = 14
								n[66] = 11
								n[57] = 9
								n3 = 20
								tbl5 = { 1, tbl5, nil, -1, 31 }
							else
								n8 += n6
								n3 = 4
							end
						elseif n3 <= 30 then
							n2[n4 + 1] = n[n6] * 16 + n[n7]
							n3 = 20
						else
							n11 = n % 65536
							n3 = n11 < 0 and 53 or 45
						end
					else
						if n3 <= 47 then
							if n3 <= 39 then
								if n3 <= 35 then
									if n3 <= 33 then
										if n3 <= 32 then
											byte(n11, 1, 64)
											n3 = n10 == n9 and 34 or 58
										else
											local n12 = n2 % n7
											n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
											n4[n] = (n2 - n2 % n8) / n8
											n3 = 49
										end
									elseif n3 <= 34 then
										n5 = { byte(n, 1, 64) }
										n3 = 58
									else
										char ..= tbl3[n8]
										n3 = 62
									end
								elseif n3 <= 37 then
									if n3 <= 36 then
										n = n4[3]
										n2 = 4 * n4[1] % 64 + 1
										n5 = 2 * n4[2] % 128 - 1
										n3 = 9
										tbl5 = { nil, -1, 1, tbl5, 255 }
									else
										n3 = not n7 and 17 or 30
									end
								elseif n3 <= 38 then
									n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
									n3 = 22
									n4 = 98
									n6 = 11
								else
									n3 = 13
									n11 = ""
									tbl5 = { tbl5, 0, nil, 64, 1 }
								end

								continue
							end

							if n3 <= 43 then
								if n3 <= 41 then
									if n3 <= 40 then
										return nil
									end
									v5[v6] = char
									n3 = 44
									continue
								end

								if n3 <= 42 then
									n11 -= 65536
									n3 = 23
								else
									n4 = (n4 - n6) / 2
									n5 = (n5 - n7) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 29
										n6 = 2
									else
										n3 = 4
									end
								end

								continue
							end

							if n3 <= 45 then
								if n3 <= 44 then
									break
								end
								n3 = n11 >= 65536 and 42 or 23
								continue
							end

							if n3 <= 46 then
								n = (n + 1) % 256
								n2 = (n2 + tbl4[n]) % 256
								local v8 = tbl4[n]
								tbl4[n] = tbl4[n2]
								tbl4[n2] = v8
								local v9 = byte(v4, n4)
								n5 = tbl4[(tbl4[n] + tbl4[n2]) % 256]
								n6 = v9 % 2
								n7 = n5 % 2

								if n6 ~= n7 then
									n3 = 48
									n4 = v9
								else
									n3 = 43
									n8 = 0
									n4 = v9
								end
							else
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 15
									n6 = 32
								else
									n3 = 63
								end
							end

							continue
						end

						if n3 <= 55 then
							if n3 <= 51 then
								if n3 <= 49 then
									if n3 <= 48 then
										n3 = 43
										n8 = 1
									else
										local v8 = tbl5[3]
										local v9 = tbl5[4]
										local n12 = tbl5[5] + v8
										local flag = v8 <= 0
										local flag2 = not flag
										local flag3 = n12 >= v9
										local flag4 = n12 <= v9
										flag3 = flag and flag3
										flag3 = flag3 or flag2 and flag4
										tbl5[5] = n12

										if flag3 then
											n3 = 33
											n = n12
										else
											n3 = 14
										end
									end
								elseif n3 <= 50 then
									tbl5 = tbl5[3]
									n3 = 41
								else
									tbl5 = tbl5[5]
									n3 = 61
								end
							elseif n3 <= 53 then
								if n3 <= 52 then
									n8 += n6
									n3 = 47
								else
									n11 += 65536
									n3 = 45
								end
							elseif n3 <= 54 then
								tbl5 = tbl5[4]
								n3 = 21
							else
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 52
									n6 = 16
								else
									n3 = 47
								end
							end
						elseif n3 <= 59 then
							if n3 <= 57 then
								if n3 <= 56 then
									tbl3[n] = char(n)
									tbl4[n] = n
									n = (n2 * n + n5) % 256
									n3 = 9
								else
									local tbl6 = {}

									if n2 == 1 then
										n3 = 26
										n2 = tbl6
									else
										n3 = 60
										n4 = tbl6
									end
								end
							elseif n3 <= 58 then
								local v8 = tbl5[2]
								local v9 = tbl5[4]
								local n12 = tbl5[1] + v8
								local flag = v8 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v9
								local flag4 = n12 <= v9
								flag3 = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag3 or flag2
								tbl5[1] = n12

								if flag2 then
									n3 = 39
									n10 = n12
								else
									n3 = 0
								end
							else
								tbl5 = tbl5[2]
								n3 = 36
								n4 = n2
							end
						elseif n3 <= 61 then
							if n3 <= 60 then
								n3 = n2 == 0 and 3 or 36
							else
								n3 = 62
								n = 0
								n2 = 0
								char = ""
								tbl5 = { #v4 + 0, 0, tbl5, 1, nil }
							end
						elseif n3 <= 62 then
							local v8 = tbl5[4]
							local v9 = tbl5[1]
							local n12 = tbl5[2] + v8
							local flag = v8 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v9
							local flag4 = n12 <= v9
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[2] = n12

							if flag3 then
								n3 = 46
								n4 = n12
							else
								n3 = 50
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 10
								n6 = 64
							else
								n3 = 6
							end
						end
					end
				end
			end

			fn3(-1643122249081406, 0, "Rs\130\143\149\220Y{Y-\248\31<\250\248\21#\147R\146\251UgH\137\133\3\21814H\158щ7\172\255\133\169\0279\\\146\203\205UY\255\170\214\207\222\202de\t\147\185'/\220\12\139Q\158d\228\131\237} \140\6\129[$\150^\213J$&q\187\246y\187\220", nil --[[ the caller's registers ]], 10)
			return jsonDecode(HttpService_, v3("Rs\130\143\149\220Y{Y-\248\31<\250\248\21#\147R\146\251UgH\137\133\3\21814H\158щ7\172\255\133\169\0279\\\146\203\205UY\255\170\214\207\222\202de\t\147\185'/\220\12\139Q\158d\228\131\237} \140\6\129[$\150^\213J$&q\187\246y\187\220"))
		end)

		if ok and result and result.parse then
			for match in result.parse.wikitext["*"]:gmatch("<code>([A-Za-z0-9_]+)</code>") do
				table.insert(tbl2, match)
			end
		end

		return tbl2
	end

	RedeemFetchGuide = function()
		local tbl2 = {}

		local ok, result = pcall(function()
			local v3 = VxezeFetchText

			local function fn3(arg, arg2, arg3, arg4, arg5)
				local tbl3 = {}
				local tbl4 = {}
				local n = arg
				local n2 = arg2
				local v4 = arg3
				local v5 = arg4
				local v6 = arg5
				local n3 = 1
				local tbl5 = nil
				local v7 = nil
				local char = nil
				local byte = nil
				local n4 = nil
				local n5 = nil
				local n6 = nil
				local n7 = nil
				local n8 = nil
				local n9 = nil
				local n10 = nil
				local n11 = nil

				while true do
					if n3 <= 31 then
						if n3 <= 15 then
							if n3 <= 7 then
								if n3 <= 3 then
									if n3 <= 1 then
										if n3 <= 0 then
											tbl5 = tbl5[5]
											n3 = 38
										else
											char = string.char
											byte = string.byte

											if n2 == 2 then
												n3 = 36
												n4 = n
											else
												n3 = 57
											end
										end
									elseif n3 <= 2 then
										tbl5 = tbl5[1]
										n3 = 32
									else
										n3 = 24
										n2 = 4225628066614523
										n5 = 1640726024911297
										n6 = 4503599627370496
										n7 = 67108864
										n8 = 17592186044416
										n9 = 66262169
										n10 = 66419657
										tbl5 = { tbl5, 4, 1, 0, nil }
									end
								elseif n3 <= 5 then
									if n3 <= 4 then
										n4 = (n4 - n7) / 2
										n5 = (n5 - n9) / 2
										n7 = n4 % 2
										n9 = n5 % 2

										if n7 ~= n9 then
											n3 = 11
											n6 = 4
										else
											n3 = 7
										end
									else
										tbl5 = tbl5[1]
										n3 = 27
									end
								elseif n3 <= 6 then
									n4 = (n4 - n7) / 2
									n5 = (n5 - n9) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 12
										n6 = 128
									else
										n3 = 35
									end
								else
									n4 = (n4 - n7) / 2
									n5 = (n5 - n9) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 18
										n6 = 8
									else
										n3 = 55
									end
								end
							elseif n3 <= 11 then
								if n3 <= 9 then
									if n3 <= 8 then
										local n12 = n4 * 2 + 1
										local v8 = n5[n12]
										local v9 = n5[n12 + 1]

										if not v8 then
											n3 = 40
										else
											n3 = 37
											n6 = v8
											n7 = v9
										end
									else
										local v8 = tbl5[3]
										local v9 = tbl5[5]
										local n12 = tbl5[2] + v8
										local flag = v8 <= 0
										local flag2 = not flag
										local flag3 = n12 >= v9
										local flag4 = n12 <= v9
										flag = flag and flag3
										flag2 = flag2 and flag4
										flag2 = flag or flag2
										tbl5[2] = n12

										if flag2 then
											n3 = 56
											n6 = n12
										else
											n3 = 54
										end
									end
								elseif n3 <= 10 then
									n8 += n6
									n3 = 6
								else
									n8 += n6
									n3 = 7
								end
							elseif n3 <= 13 then
								if n3 <= 12 then
									n8 += n6
									n3 = 35
								else
									local v8 = tbl5[5]
									local v9 = tbl5[4]
									local n12 = tbl5[2] + v8
									local flag = v8 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v9
									local flag4 = n12 <= v9
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl5[2] = n12

									if flag3 then
										n3 = 16
									else
										n3 = 2
									end
								end
							elseif n3 <= 14 then
								tbl5 = tbl5[2]
								n3 = 36
							else
								n8 += n6
								n3 = 63
							end

							continue
						end

						if n3 <= 23 then
							if n3 <= 19 then
								if n3 <= 17 then
									if n3 <= 16 then
										n4 = (n6 * n4 + n7) % 4294967296
										n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
										n3 = 13
										continue
									end

									return nil
								end

								if n3 <= 18 then
									n8 += n6
									n3 = 55
								else
									n = (n + tbl4[n2] + n4[n2 % 32 + 1]) % 256
									local v8 = tbl4[n2]
									tbl4[n2] = tbl4[n]
									tbl4[n] = v8
									n3 = 25
								end

								continue
							end

							if n3 <= 21 then
								if n3 <= 20 then
									local v8 = tbl5[1]
									local v9 = tbl5[5]
									local n12 = tbl5[4] + v8
									local flag = v8 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v9
									local flag4 = n12 <= v9
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl5[4] = n12

									if flag3 then
										n3 = 8
										n4 = n12
									else
										n3 = 59
									end
								else
									n3 = 25
									n = 0
									tbl5 = { 1, 255, nil, -1, tbl5 }
								end
							elseif n3 <= 22 then
								n[n4] = n6
								n[52] = 4
								n[99] = 12
								n[51] = 3
								n[65] = 10
								n[48] = 0
								n[101] = 14
								n[54] = 6
								n3 = 28
								n4 = 49
								n6 = 1
							else
								n = (n - n11) / 65536
								local n12 = (n2 + n11) % n6
								local n13 = n12 % n7
								n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
								n3 = 24
							end

							continue
						end

						if n3 <= 27 then
							if n3 <= 25 then
								if n3 <= 24 then
									local v8 = tbl5[3]
									local v9 = tbl5[2]
									local n12 = tbl5[4] + v8
									local flag = v8 <= 0
									local flag2 = flag and n12 >= v9 or not flag and n12 <= v9
									tbl5[4] = n12

									if flag2 then
										n3 = 31
										n11 = n12
									else
										n3 = 5
									end
								else
									local v8 = tbl5[1]
									local v9 = tbl5[2]
									local n12 = tbl5[4] + v8
									local flag = v8 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v9
									local flag4 = n12 <= v9
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl5[4] = n12

									if flag3 then
										n3 = 19
										n2 = n12
									else
										n3 = 51
									end
								end
							elseif n3 <= 26 then
								n5 = {}
								n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
								n3 = 58
								n4 = 870728320
								n6 = 493413649
								n7 = -405362667
								n9 = 1
								tbl5 = { 0, 1, nil, 128, tbl5 }
							else
								n3 = 49
								tbl5 = { nil, tbl5, 1, 32, 0 }
							end
						elseif n3 <= 29 then
							if n3 <= 28 then
								n[n4] = n6
								n[100] = 13
								n[56] = 8
								n[97] = 10
								n[69] = 14
								n[66] = 11
								n[57] = 9
								n3 = 20
								tbl5 = { 1, tbl5, nil, -1, 31 }
							else
								n8 += n6
								n3 = 4
							end
						elseif n3 <= 30 then
							n2[n4 + 1] = n[n6] * 16 + n[n7]
							n3 = 20
						else
							n11 = n % 65536
							n3 = n11 < 0 and 53 or 45
						end
					else
						if n3 <= 47 then
							if n3 <= 39 then
								if n3 <= 35 then
									if n3 <= 33 then
										if n3 <= 32 then
											byte(n11, 1, 64)
											n3 = n10 == n9 and 34 or 58
										else
											local n12 = n2 % n7
											n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
											n4[n] = (n2 - n2 % n8) / n8
											n3 = 49
										end
									elseif n3 <= 34 then
										n5 = { byte(n, 1, 64) }
										n3 = 58
									else
										char ..= tbl3[n8]
										n3 = 62
									end
								elseif n3 <= 37 then
									if n3 <= 36 then
										n = n4[3]
										n2 = 4 * n4[1] % 64 + 1
										n5 = 2 * n4[2] % 128 - 1
										n3 = 9
										tbl5 = { nil, -1, 1, tbl5, 255 }
									else
										n3 = not n7 and 17 or 30
									end
								elseif n3 <= 38 then
									n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
									n3 = 22
									n4 = 98
									n6 = 11
								else
									n3 = 13
									n11 = ""
									tbl5 = { tbl5, 0, nil, 64, 1 }
								end

								continue
							end

							if n3 <= 43 then
								if n3 <= 41 then
									if n3 <= 40 then
										return nil
									end
									v5[v6] = char
									n3 = 44
									continue
								end

								if n3 <= 42 then
									n11 -= 65536
									n3 = 23
								else
									n4 = (n4 - n6) / 2
									n5 = (n5 - n7) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 29
										n6 = 2
									else
										n3 = 4
									end
								end

								continue
							end

							if n3 <= 45 then
								if n3 <= 44 then
									break
								end
								n3 = n11 >= 65536 and 42 or 23
								continue
							end

							if n3 <= 46 then
								n = (n + 1) % 256
								n2 = (n2 + tbl4[n]) % 256
								local v8 = tbl4[n]
								tbl4[n] = tbl4[n2]
								tbl4[n2] = v8
								local v9 = byte(v4, n4)
								n5 = tbl4[(tbl4[n] + tbl4[n2]) % 256]
								n6 = v9 % 2
								n7 = n5 % 2

								if n6 ~= n7 then
									n3 = 48
									n4 = v9
								else
									n3 = 43
									n8 = 0
									n4 = v9
								end
							else
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 15
									n6 = 32
								else
									n3 = 63
								end
							end

							continue
						end

						if n3 <= 55 then
							if n3 <= 51 then
								if n3 <= 49 then
									if n3 <= 48 then
										n3 = 43
										n8 = 1
									else
										local v8 = tbl5[3]
										local v9 = tbl5[4]
										local n12 = tbl5[5] + v8
										local flag = v8 <= 0
										local flag2 = not flag
										local flag3 = n12 >= v9
										local flag4 = n12 <= v9
										flag3 = flag and flag3
										flag3 = flag3 or flag2 and flag4
										tbl5[5] = n12

										if flag3 then
											n3 = 33
											n = n12
										else
											n3 = 14
										end
									end
								elseif n3 <= 50 then
									tbl5 = tbl5[3]
									n3 = 41
								else
									tbl5 = tbl5[5]
									n3 = 61
								end
							elseif n3 <= 53 then
								if n3 <= 52 then
									n8 += n6
									n3 = 47
								else
									n11 += 65536
									n3 = 45
								end
							elseif n3 <= 54 then
								tbl5 = tbl5[4]
								n3 = 21
							else
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 52
									n6 = 16
								else
									n3 = 47
								end
							end
						elseif n3 <= 59 then
							if n3 <= 57 then
								if n3 <= 56 then
									tbl3[n] = char(n)
									tbl4[n] = n
									n = (n2 * n + n5) % 256
									n3 = 9
								else
									local tbl6 = {}

									if n2 == 1 then
										n3 = 26
										n2 = tbl6
									else
										n3 = 60
										n4 = tbl6
									end
								end
							elseif n3 <= 58 then
								local v8 = tbl5[2]
								local v9 = tbl5[4]
								local n12 = tbl5[1] + v8
								local flag = v8 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v9
								local flag4 = n12 <= v9
								flag3 = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag3 or flag2
								tbl5[1] = n12

								if flag2 then
									n3 = 39
									n10 = n12
								else
									n3 = 0
								end
							else
								tbl5 = tbl5[2]
								n3 = 36
								n4 = n2
							end
						elseif n3 <= 61 then
							if n3 <= 60 then
								n3 = n2 == 0 and 3 or 36
							else
								n3 = 62
								n = 0
								n2 = 0
								char = ""
								tbl5 = { #v4 + 0, 0, tbl5, 1, nil }
							end
						elseif n3 <= 62 then
							local v8 = tbl5[4]
							local v9 = tbl5[1]
							local n12 = tbl5[2] + v8
							local flag = v8 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v9
							local flag4 = n12 <= v9
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[2] = n12

							if flag3 then
								n3 = 46
								n4 = n12
							else
								n3 = 50
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 10
								n6 = 64
							else
								n3 = 6
							end
						end
					end
				end
			end

			fn3(2900941407174474, 0, "\223?\233ǉ\143\225}\138ث\148\248}\180mՃc\228Y2y\15\215\248\238\20\145~\235L\227li|\183r\151K[\149-O\143\0318\139\221>\202\21U\25\3\157\147_\16\206)\240\249\251'\235\221C&\218e\181\173\207\223@\2405,\20\236z\255\22\190\1d\5.A\25\175\0\172\214\3", nil --[[ the caller's registers ]], 5)
			return v3("\223?\233ǉ\143\225}\138ث\148\248}\180mՃc\228Y2y\15\215\248\238\20\145~\235L\227li|\183r\151K[\149-O\143\0318\139\221>\202\21U\25\3\157\147_\16\206)\240\249\251'\235\221C&\218e\181\173\207\223@\2405,\20\236z\255\22\190\1d\5.A\25\175\0\172\214\3")
		end)

		if ok and type(result) == "string" then
			for match in result:gmatch("<td[^>]*>%s*([A-Za-z][A-Za-z0-9_]-)%s*</td>") do
				if #match >= 2 and #match <= 40 then
					table.insert(tbl2, match)
				end
			end
		end

		return tbl2
	end

	local tbl2 = {}

	local function fn3(arg, arg2, arg3, arg4, arg5)
		local tbl3 = {}
		local tbl4 = {}
		local n = arg
		local n2 = arg2
		local v3 = arg3
		local v4 = arg4
		local v5 = arg5
		local n3 = 1
		local tbl5 = nil
		local v6 = nil
		local char = nil
		local byte = nil
		local n4 = nil
		local n5 = nil
		local n6 = nil
		local n7 = nil
		local n8 = nil
		local n9 = nil
		local n10 = nil
		local n11 = nil

		while true do
			if n3 <= 31 then
				if n3 <= 15 then
					if n3 <= 7 then
						if n3 <= 3 then
							if n3 <= 1 then
								if n3 <= 0 then
									tbl5 = tbl5[5]
									n3 = 38
								else
									char = string.char
									byte = string.byte

									if n2 == 2 then
										n3 = 36
										n4 = n
									else
										n3 = 57
									end
								end
							elseif n3 <= 2 then
								tbl5 = tbl5[1]
								n3 = 32
							else
								n3 = 24
								n2 = 4225628066614523
								n5 = 1640726024911297
								n6 = 4503599627370496
								n7 = 67108864
								n8 = 17592186044416
								n9 = 66262169
								n10 = 66419657
								tbl5 = { tbl5, 4, 1, 0, nil }
							end
						elseif n3 <= 5 then
							if n3 <= 4 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 11
									n6 = 4
								else
									n3 = 7
								end
							else
								tbl5 = tbl5[1]
								n3 = 27
							end
						elseif n3 <= 6 then
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 12
								n6 = 128
							else
								n3 = 35
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 18
								n6 = 8
							else
								n3 = 55
							end
						end
					elseif n3 <= 11 then
						if n3 <= 9 then
							if n3 <= 8 then
								local n12 = n4 * 2 + 1
								local v7 = n5[n12]
								local v8 = n5[n12 + 1]

								if not v7 then
									n3 = 40
								else
									n3 = 37
									n6 = v7
									n7 = v8
								end
							else
								local v7 = tbl5[3]
								local v8 = tbl5[5]
								local n12 = tbl5[2] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag or flag2
								tbl5[2] = n12

								if flag2 then
									n3 = 56
									n6 = n12
								else
									n3 = 54
								end
							end
						elseif n3 <= 10 then
							n8 += n6
							n3 = 6
						else
							n8 += n6
							n3 = 7
						end
					elseif n3 <= 13 then
						if n3 <= 12 then
							n8 += n6
							n3 = 35
						else
							local v7 = tbl5[5]
							local v8 = tbl5[4]
							local n12 = tbl5[2] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[2] = n12

							if flag3 then
								n3 = 16
							else
								n3 = 2
							end
						end
					elseif n3 <= 14 then
						tbl5 = tbl5[2]
						n3 = 36
					else
						n8 += n6
						n3 = 63
					end

					continue
				end

				if n3 <= 23 then
					if n3 <= 19 then
						if n3 <= 17 then
							if n3 <= 16 then
								n4 = (n6 * n4 + n7) % 4294967296
								n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
								n3 = 13
								continue
							end

							return nil
						end

						if n3 <= 18 then
							n8 += n6
							n3 = 55
						else
							n = (n + tbl4[n2] + n4[n2 % 32 + 1]) % 256
							local v7 = tbl4[n2]
							tbl4[n2] = tbl4[n]
							tbl4[n] = v7
							n3 = 25
						end

						continue
					end

					if n3 <= 21 then
						if n3 <= 20 then
							local v7 = tbl5[1]
							local v8 = tbl5[5]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[4] = n12

							if flag3 then
								n3 = 8
								n4 = n12
							else
								n3 = 59
							end
						else
							n3 = 25
							n = 0
							tbl5 = { 1, 255, nil, -1, tbl5 }
						end
					elseif n3 <= 22 then
						n[n4] = n6
						n[52] = 4
						n[99] = 12
						n[51] = 3
						n[65] = 10
						n[48] = 0
						n[101] = 14
						n[54] = 6
						n3 = 28
						n4 = 49
						n6 = 1
					else
						n = (n - n11) / 65536
						local n12 = (n2 + n11) % n6
						local n13 = n12 % n7
						n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
						n3 = 24
					end

					continue
				end

				if n3 <= 27 then
					if n3 <= 25 then
						if n3 <= 24 then
							local v7 = tbl5[3]
							local v8 = tbl5[2]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = flag and n12 >= v8 or not flag and n12 <= v8
							tbl5[4] = n12

							if flag2 then
								n3 = 31
								n11 = n12
							else
								n3 = 5
							end
						else
							local v7 = tbl5[1]
							local v8 = tbl5[2]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[4] = n12

							if flag3 then
								n3 = 19
								n2 = n12
							else
								n3 = 51
							end
						end
					elseif n3 <= 26 then
						n5 = {}
						n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
						n3 = 58
						n4 = 870728320
						n6 = 493413649
						n7 = -405362667
						n9 = 1
						tbl5 = { 0, 1, nil, 128, tbl5 }
					else
						n3 = 49
						tbl5 = { nil, tbl5, 1, 32, 0 }
					end
				elseif n3 <= 29 then
					if n3 <= 28 then
						n[n4] = n6
						n[100] = 13
						n[56] = 8
						n[97] = 10
						n[69] = 14
						n[66] = 11
						n[57] = 9
						n3 = 20
						tbl5 = { 1, tbl5, nil, -1, 31 }
					else
						n8 += n6
						n3 = 4
					end
				elseif n3 <= 30 then
					n2[n4 + 1] = n[n6] * 16 + n[n7]
					n3 = 20
				else
					n11 = n % 65536
					n3 = n11 < 0 and 53 or 45
				end
			else
				if n3 <= 47 then
					if n3 <= 39 then
						if n3 <= 35 then
							if n3 <= 33 then
								if n3 <= 32 then
									byte(n11, 1, 64)
									n3 = n10 == n9 and 34 or 58
								else
									local n12 = n2 % n7
									n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
									n4[n] = (n2 - n2 % n8) / n8
									n3 = 49
								end
							elseif n3 <= 34 then
								n5 = { byte(n, 1, 64) }
								n3 = 58
							else
								char ..= tbl3[n8]
								n3 = 62
							end
						elseif n3 <= 37 then
							if n3 <= 36 then
								n = n4[3]
								n2 = 4 * n4[1] % 64 + 1
								n5 = 2 * n4[2] % 128 - 1
								n3 = 9
								tbl5 = { nil, -1, 1, tbl5, 255 }
							else
								n3 = not n7 and 17 or 30
							end
						elseif n3 <= 38 then
							n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
							n3 = 22
							n4 = 98
							n6 = 11
						else
							n3 = 13
							n11 = ""
							tbl5 = { tbl5, 0, nil, 64, 1 }
						end

						continue
					end

					if n3 <= 43 then
						if n3 <= 41 then
							if n3 <= 40 then
								return nil
							end
							v4[v5] = char
							n3 = 44
							continue
						end

						if n3 <= 42 then
							n11 -= 65536
							n3 = 23
						else
							n4 = (n4 - n6) / 2
							n5 = (n5 - n7) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 29
								n6 = 2
							else
								n3 = 4
							end
						end

						continue
					end

					if n3 <= 45 then
						if n3 <= 44 then
							break
						end
						n3 = n11 >= 65536 and 42 or 23
						continue
					end

					if n3 <= 46 then
						n = (n + 1) % 256
						n2 = (n2 + tbl4[n]) % 256
						local v7 = tbl4[n]
						tbl4[n] = tbl4[n2]
						tbl4[n2] = v7
						local v8 = byte(v3, n4)
						n5 = tbl4[(tbl4[n] + tbl4[n2]) % 256]
						n6 = v8 % 2
						n7 = n5 % 2

						if n6 ~= n7 then
							n3 = 48
							n4 = v8
						else
							n3 = 43
							n8 = 0
							n4 = v8
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 15
							n6 = 32
						else
							n3 = 63
						end
					end

					continue
				end

				if n3 <= 55 then
					if n3 <= 51 then
						if n3 <= 49 then
							if n3 <= 48 then
								n3 = 43
								n8 = 1
							else
								local v7 = tbl5[3]
								local v8 = tbl5[4]
								local n12 = tbl5[5] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl5[5] = n12

								if flag3 then
									n3 = 33
									n = n12
								else
									n3 = 14
								end
							end
						elseif n3 <= 50 then
							tbl5 = tbl5[3]
							n3 = 41
						else
							tbl5 = tbl5[5]
							n3 = 61
						end
					elseif n3 <= 53 then
						if n3 <= 52 then
							n8 += n6
							n3 = 47
						else
							n11 += 65536
							n3 = 45
						end
					elseif n3 <= 54 then
						tbl5 = tbl5[4]
						n3 = 21
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 52
							n6 = 16
						else
							n3 = 47
						end
					end
				elseif n3 <= 59 then
					if n3 <= 57 then
						if n3 <= 56 then
							tbl3[n] = char(n)
							tbl4[n] = n
							n = (n2 * n + n5) % 256
							n3 = 9
						else
							local tbl6 = {}

							if n2 == 1 then
								n3 = 26
								n2 = tbl6
							else
								n3 = 60
								n4 = tbl6
							end
						end
					elseif n3 <= 58 then
						local v7 = tbl5[2]
						local v8 = tbl5[4]
						local n12 = tbl5[1] + v7
						local flag = v7 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v8
						local flag4 = n12 <= v8
						flag3 = flag and flag3
						flag2 = flag2 and flag4
						flag2 = flag3 or flag2
						tbl5[1] = n12

						if flag2 then
							n3 = 39
							n10 = n12
						else
							n3 = 0
						end
					else
						tbl5 = tbl5[2]
						n3 = 36
						n4 = n2
					end
				elseif n3 <= 61 then
					if n3 <= 60 then
						n3 = n2 == 0 and 3 or 36
					else
						n3 = 62
						n = 0
						n2 = 0
						char = ""
						tbl5 = { #v3 + 0, 0, tbl5, 1, nil }
					end
				elseif n3 <= 62 then
					local v7 = tbl5[4]
					local v8 = tbl5[1]
					local n12 = tbl5[2] + v7
					local flag = v7 <= 0
					local flag2 = not flag
					local flag3 = n12 >= v8
					local flag4 = n12 <= v8
					flag3 = flag and flag3
					flag3 = flag3 or flag2 and flag4
					tbl5[2] = n12

					if flag3 then
						n3 = 46
						n4 = n12
					else
						n3 = 50
					end
				else
					n4 = (n4 - n7) / 2
					n5 = (n5 - n9) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 10
						n6 = 64
					else
						n3 = 6
					end
				end
			end
		end
	end

	fn3(5014044077993952, 0, "\243\241\185\198\r}\21\29\222\20E$2ѩ\198\"8\131\22\1702z\228\163C\26<\183\30~q\189\139i\162q\177~@Nm\19\168", nil --[[ the caller's registers ]], 1)

	local function fn4(arg, arg2, arg3, arg4, arg5)
		local tbl3 = {}
		local tbl4 = {}
		local n = arg
		local n2 = arg2
		local v3 = arg3
		local v4 = arg4
		local v5 = arg5
		local n3 = 1
		local tbl5 = nil
		local v6 = nil
		local char = nil
		local byte = nil
		local n4 = nil
		local n5 = nil
		local n6 = nil
		local n7 = nil
		local n8 = nil
		local n9 = nil
		local n10 = nil
		local n11 = nil

		while true do
			if n3 <= 31 then
				if n3 <= 15 then
					if n3 <= 7 then
						if n3 <= 3 then
							if n3 <= 1 then
								if n3 <= 0 then
									tbl5 = tbl5[5]
									n3 = 38
								else
									char = string.char
									byte = string.byte

									if n2 == 2 then
										n3 = 36
										n4 = n
									else
										n3 = 57
									end
								end
							elseif n3 <= 2 then
								tbl5 = tbl5[1]
								n3 = 32
							else
								n3 = 24
								n2 = 4225628066614523
								n5 = 1640726024911297
								n6 = 4503599627370496
								n7 = 67108864
								n8 = 17592186044416
								n9 = 66262169
								n10 = 66419657
								tbl5 = { tbl5, 4, 1, 0, nil }
							end
						elseif n3 <= 5 then
							if n3 <= 4 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 11
									n6 = 4
								else
									n3 = 7
								end
							else
								tbl5 = tbl5[1]
								n3 = 27
							end
						elseif n3 <= 6 then
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 12
								n6 = 128
							else
								n3 = 35
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 18
								n6 = 8
							else
								n3 = 55
							end
						end
					elseif n3 <= 11 then
						if n3 <= 9 then
							if n3 <= 8 then
								local n12 = n4 * 2 + 1
								local v7 = n5[n12]
								local v8 = n5[n12 + 1]

								if not v7 then
									n3 = 40
								else
									n3 = 37
									n6 = v7
									n7 = v8
								end
							else
								local v7 = tbl5[3]
								local v8 = tbl5[5]
								local n12 = tbl5[2] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag or flag2
								tbl5[2] = n12

								if flag2 then
									n3 = 56
									n6 = n12
								else
									n3 = 54
								end
							end
						elseif n3 <= 10 then
							n8 += n6
							n3 = 6
						else
							n8 += n6
							n3 = 7
						end
					elseif n3 <= 13 then
						if n3 <= 12 then
							n8 += n6
							n3 = 35
						else
							local v7 = tbl5[5]
							local v8 = tbl5[4]
							local n12 = tbl5[2] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[2] = n12

							if flag3 then
								n3 = 16
							else
								n3 = 2
							end
						end
					elseif n3 <= 14 then
						tbl5 = tbl5[2]
						n3 = 36
					else
						n8 += n6
						n3 = 63
					end

					continue
				end

				if n3 <= 23 then
					if n3 <= 19 then
						if n3 <= 17 then
							if n3 <= 16 then
								n4 = (n6 * n4 + n7) % 4294967296
								n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
								n3 = 13
								continue
							end

							return nil
						end

						if n3 <= 18 then
							n8 += n6
							n3 = 55
						else
							n = (n + tbl4[n2] + n4[n2 % 32 + 1]) % 256
							local v7 = tbl4[n2]
							tbl4[n2] = tbl4[n]
							tbl4[n] = v7
							n3 = 25
						end

						continue
					end

					if n3 <= 21 then
						if n3 <= 20 then
							local v7 = tbl5[1]
							local v8 = tbl5[5]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[4] = n12

							if flag3 then
								n3 = 8
								n4 = n12
							else
								n3 = 59
							end
						else
							n3 = 25
							n = 0
							tbl5 = { 1, 255, nil, -1, tbl5 }
						end
					elseif n3 <= 22 then
						n[n4] = n6
						n[52] = 4
						n[99] = 12
						n[51] = 3
						n[65] = 10
						n[48] = 0
						n[101] = 14
						n[54] = 6
						n3 = 28
						n4 = 49
						n6 = 1
					else
						n = (n - n11) / 65536
						local n12 = (n2 + n11) % n6
						local n13 = n12 % n7
						n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
						n3 = 24
					end

					continue
				end

				if n3 <= 27 then
					if n3 <= 25 then
						if n3 <= 24 then
							local v7 = tbl5[3]
							local v8 = tbl5[2]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = flag and n12 >= v8 or not flag and n12 <= v8
							tbl5[4] = n12

							if flag2 then
								n3 = 31
								n11 = n12
							else
								n3 = 5
							end
						else
							local v7 = tbl5[1]
							local v8 = tbl5[2]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[4] = n12

							if flag3 then
								n3 = 19
								n2 = n12
							else
								n3 = 51
							end
						end
					elseif n3 <= 26 then
						n5 = {}
						n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
						n3 = 58
						n4 = 870728320
						n6 = 493413649
						n7 = -405362667
						n9 = 1
						tbl5 = { 0, 1, nil, 128, tbl5 }
					else
						n3 = 49
						tbl5 = { nil, tbl5, 1, 32, 0 }
					end
				elseif n3 <= 29 then
					if n3 <= 28 then
						n[n4] = n6
						n[100] = 13
						n[56] = 8
						n[97] = 10
						n[69] = 14
						n[66] = 11
						n[57] = 9
						n3 = 20
						tbl5 = { 1, tbl5, nil, -1, 31 }
					else
						n8 += n6
						n3 = 4
					end
				elseif n3 <= 30 then
					n2[n4 + 1] = n[n6] * 16 + n[n7]
					n3 = 20
				else
					n11 = n % 65536
					n3 = n11 < 0 and 53 or 45
				end
			else
				if n3 <= 47 then
					if n3 <= 39 then
						if n3 <= 35 then
							if n3 <= 33 then
								if n3 <= 32 then
									byte(n11, 1, 64)
									n3 = n10 == n9 and 34 or 58
								else
									local n12 = n2 % n7
									n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
									n4[n] = (n2 - n2 % n8) / n8
									n3 = 49
								end
							elseif n3 <= 34 then
								n5 = { byte(n, 1, 64) }
								n3 = 58
							else
								char ..= tbl3[n8]
								n3 = 62
							end
						elseif n3 <= 37 then
							if n3 <= 36 then
								n = n4[3]
								n2 = 4 * n4[1] % 64 + 1
								n5 = 2 * n4[2] % 128 - 1
								n3 = 9
								tbl5 = { nil, -1, 1, tbl5, 255 }
							else
								n3 = not n7 and 17 or 30
							end
						elseif n3 <= 38 then
							n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
							n3 = 22
							n4 = 98
							n6 = 11
						else
							n3 = 13
							n11 = ""
							tbl5 = { tbl5, 0, nil, 64, 1 }
						end

						continue
					end

					if n3 <= 43 then
						if n3 <= 41 then
							if n3 <= 40 then
								return nil
							end
							v4[v5] = char
							n3 = 44
							continue
						end

						if n3 <= 42 then
							n11 -= 65536
							n3 = 23
						else
							n4 = (n4 - n6) / 2
							n5 = (n5 - n7) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 29
								n6 = 2
							else
								n3 = 4
							end
						end

						continue
					end

					if n3 <= 45 then
						if n3 <= 44 then
							break
						end
						n3 = n11 >= 65536 and 42 or 23
						continue
					end

					if n3 <= 46 then
						n = (n + 1) % 256
						n2 = (n2 + tbl4[n]) % 256
						local v7 = tbl4[n]
						tbl4[n] = tbl4[n2]
						tbl4[n2] = v7
						local v8 = byte(v3, n4)
						n5 = tbl4[(tbl4[n] + tbl4[n2]) % 256]
						n6 = v8 % 2
						n7 = n5 % 2

						if n6 ~= n7 then
							n3 = 48
							n4 = v8
						else
							n3 = 43
							n8 = 0
							n4 = v8
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 15
							n6 = 32
						else
							n3 = 63
						end
					end

					continue
				end

				if n3 <= 55 then
					if n3 <= 51 then
						if n3 <= 49 then
							if n3 <= 48 then
								n3 = 43
								n8 = 1
							else
								local v7 = tbl5[3]
								local v8 = tbl5[4]
								local n12 = tbl5[5] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl5[5] = n12

								if flag3 then
									n3 = 33
									n = n12
								else
									n3 = 14
								end
							end
						elseif n3 <= 50 then
							tbl5 = tbl5[3]
							n3 = 41
						else
							tbl5 = tbl5[5]
							n3 = 61
						end
					elseif n3 <= 53 then
						if n3 <= 52 then
							n8 += n6
							n3 = 47
						else
							n11 += 65536
							n3 = 45
						end
					elseif n3 <= 54 then
						tbl5 = tbl5[4]
						n3 = 21
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 52
							n6 = 16
						else
							n3 = 47
						end
					end
				elseif n3 <= 59 then
					if n3 <= 57 then
						if n3 <= 56 then
							tbl3[n] = char(n)
							tbl4[n] = n
							n = (n2 * n + n5) % 256
							n3 = 9
						else
							local tbl6 = {}

							if n2 == 1 then
								n3 = 26
								n2 = tbl6
							else
								n3 = 60
								n4 = tbl6
							end
						end
					elseif n3 <= 58 then
						local v7 = tbl5[2]
						local v8 = tbl5[4]
						local n12 = tbl5[1] + v7
						local flag = v7 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v8
						local flag4 = n12 <= v8
						flag3 = flag and flag3
						flag2 = flag2 and flag4
						flag2 = flag3 or flag2
						tbl5[1] = n12

						if flag2 then
							n3 = 39
							n10 = n12
						else
							n3 = 0
						end
					else
						tbl5 = tbl5[2]
						n3 = 36
						n4 = n2
					end
				elseif n3 <= 61 then
					if n3 <= 60 then
						n3 = n2 == 0 and 3 or 36
					else
						n3 = 62
						n = 0
						n2 = 0
						char = ""
						tbl5 = { #v3 + 0, 0, tbl5, 1, nil }
					end
				elseif n3 <= 62 then
					local v7 = tbl5[4]
					local v8 = tbl5[1]
					local n12 = tbl5[2] + v7
					local flag = v7 <= 0
					local flag2 = not flag
					local flag3 = n12 >= v8
					local flag4 = n12 <= v8
					flag3 = flag and flag3
					flag3 = flag3 or flag2 and flag4
					tbl5[2] = n12

					if flag3 then
						n3 = 46
						n4 = n12
					else
						n3 = 50
					end
				else
					n4 = (n4 - n7) / 2
					n5 = (n5 - n9) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 10
						n6 = 64
					else
						n3 = 6
					end
				end
			end
		end
	end

	fn4(-3630267196881753, 0, "%R➐\253¯\3\243^\209%t\128\20a\176KU\205\219o_Aq_\167\223_\241 '\236*\155z\12\192\202 \181\168\176\23}\243\213\26\150\24\133\16\173\184M\139\213", nil --[[ the caller's registers ]], 2)

	local function fn5(arg, arg2, arg3, arg4, arg5)
		local tbl3 = {}
		local tbl4 = {}
		local n = arg
		local n2 = arg2
		local v3 = arg3
		local v4 = arg4
		local v5 = arg5
		local n3 = 1
		local tbl5 = nil
		local v6 = nil
		local char = nil
		local byte = nil
		local n4 = nil
		local n5 = nil
		local n6 = nil
		local n7 = nil
		local n8 = nil
		local n9 = nil
		local n10 = nil
		local n11 = nil

		while true do
			if n3 <= 31 then
				if n3 <= 15 then
					if n3 <= 7 then
						if n3 <= 3 then
							if n3 <= 1 then
								if n3 <= 0 then
									tbl5 = tbl5[5]
									n3 = 38
								else
									char = string.char
									byte = string.byte

									if n2 == 2 then
										n3 = 36
										n4 = n
									else
										n3 = 57
									end
								end
							elseif n3 <= 2 then
								tbl5 = tbl5[1]
								n3 = 32
							else
								n3 = 24
								n2 = 4225628066614523
								n5 = 1640726024911297
								n6 = 4503599627370496
								n7 = 67108864
								n8 = 17592186044416
								n9 = 66262169
								n10 = 66419657
								tbl5 = { tbl5, 4, 1, 0, nil }
							end
						elseif n3 <= 5 then
							if n3 <= 4 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 11
									n6 = 4
								else
									n3 = 7
								end
							else
								tbl5 = tbl5[1]
								n3 = 27
							end
						elseif n3 <= 6 then
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 12
								n6 = 128
							else
								n3 = 35
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 18
								n6 = 8
							else
								n3 = 55
							end
						end
					elseif n3 <= 11 then
						if n3 <= 9 then
							if n3 <= 8 then
								local n12 = n4 * 2 + 1
								local v7 = n5[n12]
								local v8 = n5[n12 + 1]

								if not v7 then
									n3 = 40
								else
									n3 = 37
									n6 = v7
									n7 = v8
								end
							else
								local v7 = tbl5[3]
								local v8 = tbl5[5]
								local n12 = tbl5[2] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag = flag and flag3
								flag2 = flag2 and flag4
								flag2 = flag or flag2
								tbl5[2] = n12

								if flag2 then
									n3 = 56
									n6 = n12
								else
									n3 = 54
								end
							end
						elseif n3 <= 10 then
							n8 += n6
							n3 = 6
						else
							n8 += n6
							n3 = 7
						end
					elseif n3 <= 13 then
						if n3 <= 12 then
							n8 += n6
							n3 = 35
						else
							local v7 = tbl5[5]
							local v8 = tbl5[4]
							local n12 = tbl5[2] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[2] = n12

							if flag3 then
								n3 = 16
							else
								n3 = 2
							end
						end
					elseif n3 <= 14 then
						tbl5 = tbl5[2]
						n3 = 36
					else
						n8 += n6
						n3 = 63
					end

					continue
				end

				if n3 <= 23 then
					if n3 <= 19 then
						if n3 <= 17 then
							if n3 <= 16 then
								n4 = (n6 * n4 + n7) % 4294967296
								n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
								n3 = 13
								continue
							end

							return nil
						end

						if n3 <= 18 then
							n8 += n6
							n3 = 55
						else
							n = (n + tbl4[n2] + n4[n2 % 32 + 1]) % 256
							local v7 = tbl4[n2]
							tbl4[n2] = tbl4[n]
							tbl4[n] = v7
							n3 = 25
						end

						continue
					end

					if n3 <= 21 then
						if n3 <= 20 then
							local v7 = tbl5[1]
							local v8 = tbl5[5]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[4] = n12

							if flag3 then
								n3 = 8
								n4 = n12
							else
								n3 = 59
							end
						else
							n3 = 25
							n = 0
							tbl5 = { 1, 255, nil, -1, tbl5 }
						end
					elseif n3 <= 22 then
						n[n4] = n6
						n[52] = 4
						n[99] = 12
						n[51] = 3
						n[65] = 10
						n[48] = 0
						n[101] = 14
						n[54] = 6
						n3 = 28
						n4 = 49
						n6 = 1
					else
						n = (n - n11) / 65536
						local n12 = (n2 + n11) % n6
						local n13 = n12 % n7
						n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
						n3 = 24
					end

					continue
				end

				if n3 <= 27 then
					if n3 <= 25 then
						if n3 <= 24 then
							local v7 = tbl5[3]
							local v8 = tbl5[2]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = flag and n12 >= v8 or not flag and n12 <= v8
							tbl5[4] = n12

							if flag2 then
								n3 = 31
								n11 = n12
							else
								n3 = 5
							end
						else
							local v7 = tbl5[1]
							local v8 = tbl5[2]
							local n12 = tbl5[4] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag3 = flag3 or flag2 and flag4
							tbl5[4] = n12

							if flag3 then
								n3 = 19
								n2 = n12
							else
								n3 = 51
							end
						end
					elseif n3 <= 26 then
						n5 = {}
						n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
						n3 = 58
						n4 = 870728320
						n6 = 493413649
						n7 = -405362667
						n9 = 1
						tbl5 = { 0, 1, nil, 128, tbl5 }
					else
						n3 = 49
						tbl5 = { nil, tbl5, 1, 32, 0 }
					end
				elseif n3 <= 29 then
					if n3 <= 28 then
						n[n4] = n6
						n[100] = 13
						n[56] = 8
						n[97] = 10
						n[69] = 14
						n[66] = 11
						n[57] = 9
						n3 = 20
						tbl5 = { 1, tbl5, nil, -1, 31 }
					else
						n8 += n6
						n3 = 4
					end
				elseif n3 <= 30 then
					n2[n4 + 1] = n[n6] * 16 + n[n7]
					n3 = 20
				else
					n11 = n % 65536
					n3 = n11 < 0 and 53 or 45
				end
			else
				if n3 <= 47 then
					if n3 <= 39 then
						if n3 <= 35 then
							if n3 <= 33 then
								if n3 <= 32 then
									byte(n11, 1, 64)
									n3 = n10 == n9 and 34 or 58
								else
									local n12 = n2 % n7
									n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
									n4[n] = (n2 - n2 % n8) / n8
									n3 = 49
								end
							elseif n3 <= 34 then
								n5 = { byte(n, 1, 64) }
								n3 = 58
							else
								char ..= tbl3[n8]
								n3 = 62
							end
						elseif n3 <= 37 then
							if n3 <= 36 then
								n = n4[3]
								n2 = 4 * n4[1] % 64 + 1
								n5 = 2 * n4[2] % 128 - 1
								n3 = 9
								tbl5 = { nil, -1, 1, tbl5, 255 }
							else
								n3 = not n7 and 17 or 30
							end
						elseif n3 <= 38 then
							n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
							n3 = 22
							n4 = 98
							n6 = 11
						else
							n3 = 13
							n11 = ""
							tbl5 = { tbl5, 0, nil, 64, 1 }
						end

						continue
					end

					if n3 <= 43 then
						if n3 <= 41 then
							if n3 <= 40 then
								return nil
							end
							v4[v5] = char
							n3 = 44
							continue
						end

						if n3 <= 42 then
							n11 -= 65536
							n3 = 23
						else
							n4 = (n4 - n6) / 2
							n5 = (n5 - n7) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 29
								n6 = 2
							else
								n3 = 4
							end
						end

						continue
					end

					if n3 <= 45 then
						if n3 <= 44 then
							break
						end
						n3 = n11 >= 65536 and 42 or 23
						continue
					end

					if n3 <= 46 then
						n = (n + 1) % 256
						n2 = (n2 + tbl4[n]) % 256
						local v7 = tbl4[n]
						tbl4[n] = tbl4[n2]
						tbl4[n2] = v7
						local v8 = byte(v3, n4)
						n5 = tbl4[(tbl4[n] + tbl4[n2]) % 256]
						n6 = v8 % 2
						n7 = n5 % 2

						if n6 ~= n7 then
							n3 = 48
							n4 = v8
						else
							n3 = 43
							n8 = 0
							n4 = v8
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 15
							n6 = 32
						else
							n3 = 63
						end
					end

					continue
				end

				if n3 <= 55 then
					if n3 <= 51 then
						if n3 <= 49 then
							if n3 <= 48 then
								n3 = 43
								n8 = 1
							else
								local v7 = tbl5[3]
								local v8 = tbl5[4]
								local n12 = tbl5[5] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl5[5] = n12

								if flag3 then
									n3 = 33
									n = n12
								else
									n3 = 14
								end
							end
						elseif n3 <= 50 then
							tbl5 = tbl5[3]
							n3 = 41
						else
							tbl5 = tbl5[5]
							n3 = 61
						end
					elseif n3 <= 53 then
						if n3 <= 52 then
							n8 += n6
							n3 = 47
						else
							n11 += 65536
							n3 = 45
						end
					elseif n3 <= 54 then
						tbl5 = tbl5[4]
						n3 = 21
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 52
							n6 = 16
						else
							n3 = 47
						end
					end
				elseif n3 <= 59 then
					if n3 <= 57 then
						if n3 <= 56 then
							tbl3[n] = char(n)
							tbl4[n] = n
							n = (n2 * n + n5) % 256
							n3 = 9
						else
							local tbl6 = {}

							if n2 == 1 then
								n3 = 26
								n2 = tbl6
							else
								n3 = 60
								n4 = tbl6
							end
						end
					elseif n3 <= 58 then
						local v7 = tbl5[2]
						local v8 = tbl5[4]
						local n12 = tbl5[1] + v7
						local flag = v7 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v8
						local flag4 = n12 <= v8
						flag3 = flag and flag3
						flag2 = flag2 and flag4
						flag2 = flag3 or flag2
						tbl5[1] = n12

						if flag2 then
							n3 = 39
							n10 = n12
						else
							n3 = 0
						end
					else
						tbl5 = tbl5[2]
						n3 = 36
						n4 = n2
					end
				elseif n3 <= 61 then
					if n3 <= 60 then
						n3 = n2 == 0 and 3 or 36
					else
						n3 = 62
						n = 0
						n2 = 0
						char = ""
						tbl5 = { #v3 + 0, 0, tbl5, 1, nil }
					end
				elseif n3 <= 62 then
					local v7 = tbl5[4]
					local v8 = tbl5[1]
					local n12 = tbl5[2] + v7
					local flag = v7 <= 0
					local flag2 = not flag
					local flag3 = n12 >= v8
					local flag4 = n12 <= v8
					flag3 = flag and flag3
					flag3 = flag3 or flag2 and flag4
					tbl5[2] = n12

					if flag3 then
						n3 = 46
						n4 = n12
					else
						n3 = 50
					end
				else
					n4 = (n4 - n7) / 2
					n5 = (n5 - n9) / 2
					n7 = n4 % 2
					n9 = n5 % 2

					if n7 ~= n9 then
						n3 = 10
						n6 = 64
					else
						n3 = 6
					end
				end
			end
		end
	end

	fn5(8206222311654340, 0, "F{c.Y\254\18E\177\225\186Aq\230\25~\11\140\192\19a\169\222`\220\4\136s\1360\134\225\30\228\236\214\31j\5̕pFש>\234", nil --[[ the caller's registers ]], 27)
	tbl2[1] = "\243\241\185\198\r}\21\29\222\20E$2ѩ\198\"8\131\22\1702z\228\163C\26<\183\30~q\189\139i\162q\177~@Nm\19\168"
	tbl2[2] = "%R➐\253¯\3\243^\209%t\128\20a\176KU\205\219o_Aq_\167\223_\241 '\236*\155z\12\192\202 \181\168\176\23}\243\213\26\150\24\133\16\173\184M\139\213"
	tbl2[3] = "F{c.Y\254\18E\177\225\186Aq\230\25~\11\140\192\19a\169\222`\220\4\136s\1360\134\225\30\228\236\214\31j\5̕pFש>\234"
	RedeemPageUrls = tbl2

	RedeemFetchPages = function()
		local tbl3 = {}

		for _, v3 in ipairs(RedeemPageUrls) do
			local ok, result = pcall(function()
				return VxezeFetchText(v3)
			end)

			if ok and type(result) == "string" then
				for match, match2 in result:gmatch("<(%a+)[^>]*>%s*([A-Za-z0-9_]+)%s*</%1>") do
					if (match == "strong" or match == "code" or match == "b" or match == "li") and #match2 >= 6 and #match2 <= 24 then
						if match2:find("[%d_]") or match2:upper() == match2 then
							table.insert(tbl3, match2)
						end
					end
				end
			end
		end

		return tbl3
	end

	RedeemAllCodes = function()
		if RedeemCodeBusy then
			VxezeNotify("Redeem Code", "Already redeeming, please wait", "warning", { Key = "redeembusy", Icon = "loader" })
			return
		end
		RedeemCodeBusy = true

		task.spawn(function()
			local ok, result = pcall(function()
				VxezeNotify("Redeem Code", "Fetching the latest codes", "start", { Key = "redeemstart", Icon = "download" })
				local tbl3 = {}
				local tbl4 = {}
				local v3 = ipairs
				local tbl5 = {}
				local v4 = RedeemFetchWiki()
				local v5 = RedeemFetchGuide()
				local v6 = RedeemFetchPages
				tbl5[1] = v4
				tbl5[2] = v5

				do
					local values = table.pack(v6())
					table.move(values, 1, values.n, 3, tbl5)
				end

				for _, v7 in v3(tbl5) do
					for _, v8 in ipairs(v7) do
						if not tbl3[v8:lower()] then
							tbl3[v8:lower()] = true
							table.insert(tbl4, v8)
						end
					end
				end

				if #tbl4 == 0 then
					VxezeNotify("Redeem Code", "Could not reach any code source, try again later", "error", { Key = "redeemnone", Icon = "wifi-off" })
					return
				end
				local v7 = RedeemLoadDone()
				local redeem = game:GetService("ReplicatedStorage").Remotes.Redeem
				local num = nil
				local n = 0
				local n2 = 0

				for _, v8 in ipairs(tbl4) do
					if num and #v8 ~= num then
						v7[v8] = true
					elseif not v7[v8] then
						n += 1

						local ok, result = pcall(function()
							return redeem:InvokeServer(v8)
						end)

						if ok then
							local str = tostring(result):lower()
							local match = str:match("exactly (%d+)")

							if match then
								num = tonumber(match)
								n -= 1
								v7[v8] = true
							else
								v7[v8] = true

								if str:find("success") or str:find("redeemed") or str:find("reward") then
									n2 += 1
								end
							end
						end

						task.wait()
					end
				end

				RedeemSaveDone(v7)

				if n2 > 0 then
					VxezeNotify("Redeem Code", "Redeemed " .. n2 .. " new codes", "reward", { Key = "redeemdone", Icon = "gift" })
				elseif n == 0 then
					VxezeNotify("Redeem Code", "No new codes to redeem", "info", { Key = "redeemdone", Icon = "ticket-check" })
				else
					VxezeNotify("Redeem Code", "Checked " .. n .. " codes, none were valid", "info", { Key = "redeemdone", Icon = "ticket-x" })
				end
			end)

			RedeemCodeBusy = false

			if not ok then
				VxezeNotify("Redeem Code", "Failed: " .. tostring(result), "error", { Key = "redeemfail" })
			end
		end)
	end

	BuyDracoBusy = false

	BuyRaceDraco = function()
		if BuyDracoBusy then
			return
		end

		if not Place_Id.sea3() then
			VxezeNotify("Buy Race Draco", "Only works in Sea 3", "warning", { Key = "dracosea" })
			return
		end
		BuyDracoBusy = true

		task.spawn(function()
			local ok, result = pcall(function()
				local now = tick()
				local v3

				while true do
					v3 = DetectNpc("Dragon Wizard")

					if not v3 then
						task.wait(0.5)
					end

					if not (v3 or tick() - now > 8) then
						continue
					end
					break
				end

				if not v3 then
					VxezeNotify("Buy Race Draco", "Dragon Wizard not found", "warning", { Key = "dracomissing" })
					return
				end
				local humanoidRootPart = v3:FindFirstChild("HumanoidRootPart") or v3.PrimaryPart

				while true do
					ToTarget(humanoidRootPart.CFrame * CFrame.new(0, 0, 4))
					task.wait(0.3)
					if not (localPlayer:DistanceFromCharacter(humanoidRootPart.Position) < 12 or tick() - now > 60) then
						continue
					end
					break
				end

				if localPlayer:DistanceFromCharacter(humanoidRootPart.Position) >= 12 then
					VxezeNotify("Buy Race Draco", "Could not reach the Dragon Wizard", "warning", { Key = "dracofar" })
					return
				end
				local DialogueController = require(game.ReplicatedStorage.DialogueController)
				pcall(DialogueController.close)
				task.wait(0.3)
				task.spawn(pcall, DialogueController.start, require(game.ReplicatedStorage.NPCManager.NPCList).List["Dragon Wizard"].DialogueCallback())
				local tbl3 = { "yes", "trade", "change", "transform", "draco", "accept" }
				local tbl4 = { "no", "leave", "bye", "cancel", "never" }
				local now2 = tick()
				local n = 0

				while true do
					if tick() - now2 < 25 and n < 3 then
						task.wait(0.4)
						local ok, result = pcall(DialogueController.getActiveDialogue)
						local pageStack = ok and result and result._pageStack and result._pageStack[#result._pageStack]

						if pageStack then
							local options2 = pageStack._options or {}

							if #options2 == 0 then
								pcall(DialogueController.advance)
								continue
							else
								local v4 = nil

								for _, v5 in ipairs(tbl3) do
									for _, v6 in ipairs(options2) do
										local v7 = string.lower(type(v6._text) == "table" and table.concat(v6._text, " ") or tostring(v6._text))
										local flag = false

										for _, v8 in ipairs(tbl4) do
											if v7 == v8 or v7:find("^" .. v8 .. "[%s%p]") then
												flag = true
											end
										end

										if not v4 and not flag and v7:find(v5, 1, true) then
											v4 = v6
										end
									end
								end

								if v4 then
									pcall(DialogueController.select, v4)
									n += 1
									now2 = tick()
									task.wait(1)
									continue
								end
							end
						else
							continue
						end
					end

					break
				end

				task.wait(1)
				pcall(DialogueController.close)
				VxezeNotify("Buy Race Draco", n > 0 and "Talked to the Dragon Wizard, check your race" or "Dragon Wizard has no race change for you right now", n > 0 and "success" or "info", { Key = "dracodone" })
			end)

			BuyDracoBusy = false

			if not ok then
				VxezeReportError("Buy Race Draco", result)
			end
		end)
	end

	SectionShopTeleport = PageShop.CreateSection("Teleport World")

	SectionShopTeleport.CreateButton({ Title = "Teleport To Dungeon Sea [ Dungeon Hub ]" }, function()
		game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DungeonNPCNetworkFunction"):InvokeServer("TeleportToDungeonHub")
	end)

	SectionShopTeleport.CreateButton({ Title = "Teleport To First Sea [ Sea 1 ]" }, function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end)

	SectionShopTeleport.CreateButton({ Title = "Teleport To Second Sea [ Sea 2 ]" }, function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end)

	SectionShopTeleport.CreateButton({ Title = "Teleport To Third Sea [ Sea 3 ]" }, function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end)

	SectionShopMisc = PageShop.CreateSection("Misc Shop")

	SectionShopMisc.CreateButton({ Title = "Redeem Code" }, function()
		RedeemAllCodes()
	end)

	SectionShopMisc.CreateButton({ Title = "Buy Race Ghoul" }, function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4)
	end)

	SectionShopMisc.CreateButton({ Title = "Buy Race Cyborg" }, function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
	end)

	SectionShopMisc.CreateButton({ Title = "Buy Race Draco" }, function()
		BuyRaceDraco()
	end)

	SectionShopMisc.CreateButton({ Title = "Reroll Race" }, function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
	end)

	SectionShopMisc.CreateButton({ Title = "Reset Stats" }, function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
	end)

	SectionShopFighting = PageShop.CreateSection("Fighting Shop")
	local notsave = {}
	getgenv().notsave = notsave

	local tbl3 = {
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

	NPCManager = require(game:GetService("ReplicatedStorage").NPCManager)
	DetectNpc = function(n)local L= localPlayer .Character and( localPlayer .Character:FindFirstChild("HumanoidRootPart"));if not L then return;end;local c,U,w,y=next,{workspace.NPCs,game:GetService("ReplicatedStorage").NPCs},1/0;for S,S in c,U,nil do local c,U,K=next,S:GetChildren();for S,R in c,U,K do if R:GetAttribute("NPCLoaded")and(R:GetAttribute("NPCReady"))and R.Name==n and(R:FindFirstChild("HumanoidRootPart"))then S=(L.Position-R.HumanoidRootPart.Position).Magnitude;if S<w then w,y=S,R;end;end;end;end;if not y then L=NPCManager.getNPCsByName(n)[1];return L and L._modelState and L._modelState._instance;end;return y,w;end

	TalkToNpc = function(arg, ...)
		local v3 = DetectNpc(arg)
		if not v3 then
			return false
		end
		local position = v3:GetPivot().Position
		if localPlayer:DistanceFromCharacter(position) > 8 then
			ToTarget(CFrame.new(position) * CFrame.new(0, 0, 3))
			return false
		end
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(...)
		return true
	end

	SectionShopFighting.CreateToggle({ Title = "Black Leg", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Black Leg"] and task.wait() do
					local ok, result = pcall(function()
						local v3 = DetectNpc(tbl3.BuyBlackLeg)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBlackLeg")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)

					if result then
						PrintOnce(result)
					end
				end
			end)
		end

		notsave["Black Leg"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "Fishman Karate", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Fishman Karate"] and task.wait() do
					local ok, result = pcall(function()
						local v3 = DetectNpc(tbl3.BuyFishmanKarate)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)

					if result then
						PrintOnce(result)
					end
				end
			end)
		end

		notsave["Fishman Karate"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "Electro", Desc = nil, Default = false }, function(electro)
		if electro then
			spawn(function()
				while notsave.Electro and task.wait(0.1) do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuyElectro)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectro")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave.Electro = electro
	end)

	SectionShopFighting.CreateToggle({ Title = "Dragon Breath", Desc = nil, Default = false }, function(dragonClaw)
		if dragonClaw then
			spawn(function()
				while notsave.DragonClaw and task.wait(0.1) do
					pcall(function()
						local v3 = DetectNpc(tbl3.DragonClaw)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave.DragonClaw = dragonClaw
	end)

	SectionShopFighting.CreateToggle({ Title = "SuperHuman", Desc = nil, Default = false }, function(superHuman)
		if superHuman then
			spawn(function()
				while notsave.SuperHuman and task.wait(0.1) do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuySuperhuman)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuySuperhuman")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave.SuperHuman = superHuman
	end)

	SectionShopFighting.CreateToggle({ Title = "Death Step", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Death Step"] and task.wait() do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuyDeathStep)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuyDeathStep")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave["Death Step"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "Sharkman Karate", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Sharkman Karate"] and task.wait() do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuySharkmanKarate)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuySharkmanKarate")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave["Sharkman Karate"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "Electric Claw", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Electric Claw"] and task.wait() do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuyElectricClaw)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuyElectricClaw")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave["Electric Claw"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "Dragon Talon", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Dragon Talon"] and task.wait() do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuyDragonTalon)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuyDragonTalon")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave["Dragon Talon"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "God Human", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["God Human"] and task.wait() do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuyGodhuman)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuyGodhuman")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave["God Human"] = arg
	end)

	SectionShopFighting.CreateToggle({ Title = "Sanguine Art", Desc = nil, Default = false }, function(arg)
		if arg then
			spawn(function()
				while notsave["Sanguine Art"] and task.wait() do
					pcall(function()
						local v3 = DetectNpc(tbl3.BuySanguineArt)
						if not v3 or not v3:FindFirstChild("HumanoidRootPart") then
							return
						end

						if localPlayer:DistanceFromCharacter(v3.HumanoidRootPart.Position) < 8 then
							Remote("BuySanguineArt")
						end

						local cFrame = v3.HumanoidRootPart.CFrame
						getgenv().BackupTween(cFrame * CFrame.new(0, 4, 4))
					end)
				end
			end)
		end

		notsave["Sanguine Art"] = arg
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

	FormatBeli = function(arg)
		local str = tostring(arg)
		local v3

		repeat
			str, v3 = str:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
		until v3 == 0

		return str
	end

	BuildWeaponShop = function(arg, arg2)
		for _, v3 in ipairs(arg2) do
			arg.CreateButton({ Title = v3[1] .. " [ $" .. FormatBeli(v3[2]) .. " Beli ]" }, function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", v3[1])
			end)
		end
	end

	SectionShopGun = PageShop.CreateSection("Gun Shop")

	BuildWeaponShop(SectionShopGun, {
		{ "Slingshot", 5000 },
		{ "Musket", 8000 },
		{ "Flintlock", 10500 },
		{ "Refined Slingshot", 30000 },
		{ "Dual Flintlock", 65000 },
		{ "Cannon", 100000 },
	})

	SectionShopSword = PageShop.CreateSection("Sword Shop")

	BuildWeaponShop(SectionShopSword, {
		{ "Cutlass", 1000 },
		{ "Katana", 1000 },
		{ "Dual Katana", 12000 },
		{ "Iron Mace", 25000 },
		{ "Triple Katana", 60000 },
		{ "Pipe", 100000 },
		{ "Dual-Headed Blade", 400000 },
		{ "Soul Cane", 750000 },
		{ "Bisento", 1000000 },
	})

	PageStatusAndServer = Main.CreatePage({ Page_Name = "Status And Server", Page_Title = "Status And Server" })
	ExecutorName = "Unknown"

	pcall(function()
		local v3, v4 = identifyexecutor()
		ExecutorName = tostring(v3) .. (v4 and v4 ~= "" and " " .. tostring(v4) or "")
	end)

	SectionScriptCheck = PageStatusAndServer.CreateSection("Script Check")
	StatusScriptLabel = SectionScriptCheck.CreateLabel({ Title = "Status Script : ..." })

	SectionScriptCheck.CreateButton({ Title = "Copy Link Discord" }, function()
		local str = "\230\191y \225\244\29X]\166\161F\11JU\181c\231\191\207\220\30\161"

		local function fn6(arg, arg2, arg3, arg4, arg5)
			local tbl4 = {}
			local tbl5 = {}
			local n = arg
			local n2 = arg2
			local v3 = arg3
			local v4 = arg4
			local v5 = arg5
			local n3 = 1
			local tbl6 = nil
			local v6 = nil
			local char = nil
			local byte = nil
			local n4 = nil
			local n5 = nil
			local n6 = nil
			local n7 = nil
			local n8 = nil
			local n9 = nil
			local n10 = nil
			local n11 = nil

			while true do
				if n3 <= 31 then
					if n3 <= 15 then
						if n3 <= 7 then
							if n3 <= 3 then
								if n3 <= 1 then
									if n3 <= 0 then
										tbl6 = tbl6[5]
										n3 = 38
									else
										char = string.char
										byte = string.byte

										if n2 == 2 then
											n3 = 36
											n4 = n
										else
											n3 = 57
										end
									end
								elseif n3 <= 2 then
									tbl6 = tbl6[1]
									n3 = 32
								else
									n3 = 24
									n2 = 4225628066614523
									n5 = 1640726024911297
									n6 = 4503599627370496
									n7 = 67108864
									n8 = 17592186044416
									n9 = 66262169
									n10 = 66419657
									tbl6 = { tbl6, 4, 1, 0, nil }
								end
							elseif n3 <= 5 then
								if n3 <= 4 then
									n4 = (n4 - n7) / 2
									n5 = (n5 - n9) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 11
										n6 = 4
									else
										n3 = 7
									end
								else
									tbl6 = tbl6[1]
									n3 = 27
								end
							elseif n3 <= 6 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 12
									n6 = 128
								else
									n3 = 35
								end
							else
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 18
									n6 = 8
								else
									n3 = 55
								end
							end
						elseif n3 <= 11 then
							if n3 <= 9 then
								if n3 <= 8 then
									local n12 = n4 * 2 + 1
									local v7 = n5[n12]
									local v8 = n5[n12 + 1]

									if not v7 then
										n3 = 40
									else
										n3 = 37
										n6 = v7
										n7 = v8
									end
								else
									local v7 = tbl6[3]
									local v8 = tbl6[5]
									local n12 = tbl6[2] + v7
									local flag = v7 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v8
									local flag4 = n12 <= v8
									flag = flag and flag3
									flag2 = flag2 and flag4
									flag2 = flag or flag2
									tbl6[2] = n12

									if flag2 then
										n3 = 56
										n6 = n12
									else
										n3 = 54
									end
								end
							elseif n3 <= 10 then
								n8 += n6
								n3 = 6
							else
								n8 += n6
								n3 = 7
							end
						elseif n3 <= 13 then
							if n3 <= 12 then
								n8 += n6
								n3 = 35
							else
								local v7 = tbl6[5]
								local v8 = tbl6[4]
								local n12 = tbl6[2] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl6[2] = n12

								if flag3 then
									n3 = 16
								else
									n3 = 2
								end
							end
						elseif n3 <= 14 then
							tbl6 = tbl6[2]
							n3 = 36
						else
							n8 += n6
							n3 = 63
						end

						continue
					end

					if n3 <= 23 then
						if n3 <= 19 then
							if n3 <= 17 then
								if n3 <= 16 then
									n4 = (n6 * n4 + n7) % 4294967296
									n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
									n3 = 13
									continue
								end

								return nil
							end

							if n3 <= 18 then
								n8 += n6
								n3 = 55
							else
								n = (n + tbl5[n2] + n4[n2 % 32 + 1]) % 256
								local v7 = tbl5[n2]
								tbl5[n2] = tbl5[n]
								tbl5[n] = v7
								n3 = 25
							end

							continue
						end

						if n3 <= 21 then
							if n3 <= 20 then
								local v7 = tbl6[1]
								local v8 = tbl6[5]
								local n12 = tbl6[4] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl6[4] = n12

								if flag3 then
									n3 = 8
									n4 = n12
								else
									n3 = 59
								end
							else
								n3 = 25
								n = 0
								tbl6 = { 1, 255, nil, -1, tbl6 }
							end
						elseif n3 <= 22 then
							n[n4] = n6
							n[52] = 4
							n[99] = 12
							n[51] = 3
							n[65] = 10
							n[48] = 0
							n[101] = 14
							n[54] = 6
							n3 = 28
							n4 = 49
							n6 = 1
						else
							n = (n - n11) / 65536
							local n12 = (n2 + n11) % n6
							local n13 = n12 % n7
							n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
							n3 = 24
						end

						continue
					end

					if n3 <= 27 then
						if n3 <= 25 then
							if n3 <= 24 then
								local v7 = tbl6[3]
								local v8 = tbl6[2]
								local n12 = tbl6[4] + v7
								local flag = v7 <= 0
								local flag2 = flag and n12 >= v8 or not flag and n12 <= v8
								tbl6[4] = n12

								if flag2 then
									n3 = 31
									n11 = n12
								else
									n3 = 5
								end
							else
								local v7 = tbl6[1]
								local v8 = tbl6[2]
								local n12 = tbl6[4] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl6[4] = n12

								if flag3 then
									n3 = 19
									n2 = n12
								else
									n3 = 51
								end
							end
						elseif n3 <= 26 then
							n5 = {}
							n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
							n3 = 58
							n4 = 870728320
							n6 = 493413649
							n7 = -405362667
							n9 = 1
							tbl6 = { 0, 1, nil, 128, tbl6 }
						else
							n3 = 49
							tbl6 = { nil, tbl6, 1, 32, 0 }
						end
					elseif n3 <= 29 then
						if n3 <= 28 then
							n[n4] = n6
							n[100] = 13
							n[56] = 8
							n[97] = 10
							n[69] = 14
							n[66] = 11
							n[57] = 9
							n3 = 20
							tbl6 = { 1, tbl6, nil, -1, 31 }
						else
							n8 += n6
							n3 = 4
						end
					elseif n3 <= 30 then
						n2[n4 + 1] = n[n6] * 16 + n[n7]
						n3 = 20
					else
						n11 = n % 65536
						n3 = n11 < 0 and 53 or 45
					end
				else
					if n3 <= 47 then
						if n3 <= 39 then
							if n3 <= 35 then
								if n3 <= 33 then
									if n3 <= 32 then
										byte(n11, 1, 64)
										n3 = n10 == n9 and 34 or 58
									else
										local n12 = n2 % n7
										n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
										n4[n] = (n2 - n2 % n8) / n8
										n3 = 49
									end
								elseif n3 <= 34 then
									n5 = { byte(n, 1, 64) }
									n3 = 58
								else
									char ..= tbl4[n8]
									n3 = 62
								end
							elseif n3 <= 37 then
								if n3 <= 36 then
									n = n4[3]
									n2 = 4 * n4[1] % 64 + 1
									n5 = 2 * n4[2] % 128 - 1
									n3 = 9
									tbl6 = { nil, -1, 1, tbl6, 255 }
								else
									n3 = not n7 and 17 or 30
								end
							elseif n3 <= 38 then
								n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
								n3 = 22
								n4 = 98
								n6 = 11
							else
								n3 = 13
								n11 = ""
								tbl6 = { tbl6, 0, nil, 64, 1 }
							end

							continue
						end

						if n3 <= 43 then
							if n3 <= 41 then
								if n3 <= 40 then
									return nil
								end
								v4[v5] = char
								n3 = 44
								continue
							end

							if n3 <= 42 then
								n11 -= 65536
								n3 = 23
							else
								n4 = (n4 - n6) / 2
								n5 = (n5 - n7) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 29
									n6 = 2
								else
									n3 = 4
								end
							end

							continue
						end

						if n3 <= 45 then
							if n3 <= 44 then
								break
							end
							n3 = n11 >= 65536 and 42 or 23
							continue
						end

						if n3 <= 46 then
							n = (n + 1) % 256
							n2 = (n2 + tbl5[n]) % 256
							local v7 = tbl5[n]
							tbl5[n] = tbl5[n2]
							tbl5[n2] = v7
							local v8 = byte(v3, n4)
							n5 = tbl5[(tbl5[n] + tbl5[n2]) % 256]
							n6 = v8 % 2
							n7 = n5 % 2

							if n6 ~= n7 then
								n3 = 48
								n4 = v8
							else
								n3 = 43
								n8 = 0
								n4 = v8
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 15
								n6 = 32
							else
								n3 = 63
							end
						end

						continue
					end

					if n3 <= 55 then
						if n3 <= 51 then
							if n3 <= 49 then
								if n3 <= 48 then
									n3 = 43
									n8 = 1
								else
									local v7 = tbl6[3]
									local v8 = tbl6[4]
									local n12 = tbl6[5] + v7
									local flag = v7 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v8
									local flag4 = n12 <= v8
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl6[5] = n12

									if flag3 then
										n3 = 33
										n = n12
									else
										n3 = 14
									end
								end
							elseif n3 <= 50 then
								tbl6 = tbl6[3]
								n3 = 41
							else
								tbl6 = tbl6[5]
								n3 = 61
							end
						elseif n3 <= 53 then
							if n3 <= 52 then
								n8 += n6
								n3 = 47
							else
								n11 += 65536
								n3 = 45
							end
						elseif n3 <= 54 then
							tbl6 = tbl6[4]
							n3 = 21
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 52
								n6 = 16
							else
								n3 = 47
							end
						end
					elseif n3 <= 59 then
						if n3 <= 57 then
							if n3 <= 56 then
								tbl4[n] = char(n)
								tbl5[n] = n
								n = (n2 * n + n5) % 256
								n3 = 9
							else
								local tbl7 = {}

								if n2 == 1 then
									n3 = 26
									n2 = tbl7
								else
									n3 = 60
									n4 = tbl7
								end
							end
						elseif n3 <= 58 then
							local v7 = tbl6[2]
							local v8 = tbl6[4]
							local n12 = tbl6[1] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag2 = flag2 and flag4
							flag2 = flag3 or flag2
							tbl6[1] = n12

							if flag2 then
								n3 = 39
								n10 = n12
							else
								n3 = 0
							end
						else
							tbl6 = tbl6[2]
							n3 = 36
							n4 = n2
						end
					elseif n3 <= 61 then
						if n3 <= 60 then
							n3 = n2 == 0 and 3 or 36
						else
							n3 = 62
							n = 0
							n2 = 0
							char = ""
							tbl6 = { #v3 + 0, 0, tbl6, 1, nil }
						end
					elseif n3 <= 62 then
						local v7 = tbl6[4]
						local v8 = tbl6[1]
						local n12 = tbl6[2] + v7
						local flag = v7 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v8
						local flag4 = n12 <= v8
						flag3 = flag and flag3
						flag3 = flag3 or flag2 and flag4
						tbl6[2] = n12

						if flag3 then
							n3 = 46
							n4 = n12
						else
							n3 = 50
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 10
							n6 = 64
						else
							n3 = 6
						end
					end
				end
			end
		end

		fn6(5612255310238804, 0, str, nil --[[ the caller's registers ]], 9)
		local set = setclipboard or toclipboard or Clipboard and Clipboard.set

		if set then
			pcall(set, str)
			VxezeNotify("Discord", "Copied " .. str, "success", { Key = "copydiscord", Icon = "clipboard-check" })
		else
			VxezeNotify("Discord", "Your executor cannot copy, link: " .. str, "info", { Key = "copydiscord" })
		end
	end)

	task.spawn(function()
		local RunService = game:GetService("RunService")
		game:GetService("Stats")
		error("devirt: value <luasym.LuaFunc object at 0x000001BED1B66140> in an expression (at 92:53)")
	end)

	SectionStatus = PageStatusAndServer.CreateSection("Status")
	StatusSea = SectionStatus.CreateLabel({ Title = "Sea : Checking..." })
	TimerLabel = SectionStatus.CreateLabel({ Title = "Timer : ..." })
	TimerServerLabel = SectionStatus.CreateLabel({ Title = "Server Timer : ..." })
	NextTimerServerLabel = SectionStatus.CreateLabel({ Title = "Legendary Item : ..." })
	StatusMoon = SectionStatus.CreateLabel({ Title = "Moon : ..." })
	StatusEliteHunter = SectionStatus.CreateLabel({ Title = "Elite Hunter : ..." })
	StatusTyrant = SectionStatus.CreateLabel({ Title = "Tyrant Eyes : ..." })
	StatusKatakuri = SectionStatus.CreateLabel({ Title = "Cake Prince : ..." })
	Statusspy = SectionStatus.CreateLabel({ Title = "Leviathan : ..." })
	StatusMirage = SectionStatus.CreateLabel({ Title = "Mirage Island : ..." })
	StatusPrehistoricIsland = SectionStatus.CreateLabel({ Title = "Prehistoric Island : ..." })
	StatusFrozenDimension = SectionStatus.CreateLabel({ Title = "Frozen Dimension : ..." })
	StatusGear = SectionStatus.CreateLabel({ Title = "Ancient One : ..." })
	SectionServer = PageStatusAndServer.CreateSection("Server")
	ServerBrowser = { list = {}, time = 0, busy = false, visited = {}, lastHop = 0, file = "Vxeze Hub/Visited.json" }

	ServerRemote = function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local waitForChild = ReplicatedStorage.WaitForChild

		local function fn6(arg, arg2, arg3, arg4, arg5)
			local tbl4 = {}
			local tbl5 = {}
			local n = arg
			local n2 = arg2
			local v3 = arg3
			local v4 = arg4
			local v5 = arg5
			local n3 = 1
			local tbl6 = nil
			local v6 = nil
			local char = nil
			local byte = nil
			local n4 = nil
			local n5 = nil
			local n6 = nil
			local n7 = nil
			local n8 = nil
			local n9 = nil
			local n10 = nil
			local n11 = nil

			while true do
				if n3 <= 31 then
					if n3 <= 15 then
						if n3 <= 7 then
							if n3 <= 3 then
								if n3 <= 1 then
									if n3 <= 0 then
										tbl6 = tbl6[5]
										n3 = 38
									else
										char = string.char
										byte = string.byte

										if n2 == 2 then
											n3 = 36
											n4 = n
										else
											n3 = 57
										end
									end
								elseif n3 <= 2 then
									tbl6 = tbl6[1]
									n3 = 32
								else
									n3 = 24
									n2 = 4225628066614523
									n5 = 1640726024911297
									n6 = 4503599627370496
									n7 = 67108864
									n8 = 17592186044416
									n9 = 66262169
									n10 = 66419657
									tbl6 = { tbl6, 4, 1, 0, nil }
								end
							elseif n3 <= 5 then
								if n3 <= 4 then
									n4 = (n4 - n7) / 2
									n5 = (n5 - n9) / 2
									n7 = n4 % 2
									n9 = n5 % 2

									if n7 ~= n9 then
										n3 = 11
										n6 = 4
									else
										n3 = 7
									end
								else
									tbl6 = tbl6[1]
									n3 = 27
								end
							elseif n3 <= 6 then
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 12
									n6 = 128
								else
									n3 = 35
								end
							else
								n4 = (n4 - n7) / 2
								n5 = (n5 - n9) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 18
									n6 = 8
								else
									n3 = 55
								end
							end
						elseif n3 <= 11 then
							if n3 <= 9 then
								if n3 <= 8 then
									local n12 = n4 * 2 + 1
									local v7 = n5[n12]
									local v8 = n5[n12 + 1]

									if not v7 then
										n3 = 40
									else
										n3 = 37
										n6 = v7
										n7 = v8
									end
								else
									local v7 = tbl6[3]
									local v8 = tbl6[5]
									local n12 = tbl6[2] + v7
									local flag = v7 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v8
									local flag4 = n12 <= v8
									flag = flag and flag3
									flag2 = flag2 and flag4
									flag2 = flag or flag2
									tbl6[2] = n12

									if flag2 then
										n3 = 56
										n6 = n12
									else
										n3 = 54
									end
								end
							elseif n3 <= 10 then
								n8 += n6
								n3 = 6
							else
								n8 += n6
								n3 = 7
							end
						elseif n3 <= 13 then
							if n3 <= 12 then
								n8 += n6
								n3 = 35
							else
								local v7 = tbl6[5]
								local v8 = tbl6[4]
								local n12 = tbl6[2] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl6[2] = n12

								if flag3 then
									n3 = 16
								else
									n3 = 2
								end
							end
						elseif n3 <= 14 then
							tbl6 = tbl6[2]
							n3 = 36
						else
							n8 += n6
							n3 = 63
						end

						continue
					end

					if n3 <= 23 then
						if n3 <= 19 then
							if n3 <= 17 then
								if n3 <= 16 then
									n4 = (n6 * n4 + n7) % 4294967296
									n11 ..= n8[1 + (n4 - n4 % 268435456) / 268435456 % 16]
									n3 = 13
									continue
								end

								return nil
							end

							if n3 <= 18 then
								n8 += n6
								n3 = 55
							else
								n = (n + tbl5[n2] + n4[n2 % 32 + 1]) % 256
								local v7 = tbl5[n2]
								tbl5[n2] = tbl5[n]
								tbl5[n] = v7
								n3 = 25
							end

							continue
						end

						if n3 <= 21 then
							if n3 <= 20 then
								local v7 = tbl6[1]
								local v8 = tbl6[5]
								local n12 = tbl6[4] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl6[4] = n12

								if flag3 then
									n3 = 8
									n4 = n12
								else
									n3 = 59
								end
							else
								n3 = 25
								n = 0
								tbl6 = { 1, 255, nil, -1, tbl6 }
							end
						elseif n3 <= 22 then
							n[n4] = n6
							n[52] = 4
							n[99] = 12
							n[51] = 3
							n[65] = 10
							n[48] = 0
							n[101] = 14
							n[54] = 6
							n3 = 28
							n4 = 49
							n6 = 1
						else
							n = (n - n11) / 65536
							local n12 = (n2 + n11) % n6
							local n13 = n12 % n7
							n2 = ((((n12 - n13) / n7 * n9 + n13 * n10) % n7 * n7 + n13 * n9) % n6 + n5) % n6
							n3 = 24
						end

						continue
					end

					if n3 <= 27 then
						if n3 <= 25 then
							if n3 <= 24 then
								local v7 = tbl6[3]
								local v8 = tbl6[2]
								local n12 = tbl6[4] + v7
								local flag = v7 <= 0
								local flag2 = flag and n12 >= v8 or not flag and n12 <= v8
								tbl6[4] = n12

								if flag2 then
									n3 = 31
									n11 = n12
								else
									n3 = 5
								end
							else
								local v7 = tbl6[1]
								local v8 = tbl6[2]
								local n12 = tbl6[4] + v7
								local flag = v7 <= 0
								local flag2 = not flag
								local flag3 = n12 >= v8
								local flag4 = n12 <= v8
								flag3 = flag and flag3
								flag3 = flag3 or flag2 and flag4
								tbl6[4] = n12

								if flag3 then
									n3 = 19
									n2 = n12
								else
									n3 = 51
								end
							end
						elseif n3 <= 26 then
							n5 = {}
							n8 = { "6", "4", "e", "a", "5", "8", "d", "2", "1", "9", "3", "7", "c", "f", "b", "0" }
							n3 = 58
							n4 = 870728320
							n6 = 493413649
							n7 = -405362667
							n9 = 1
							tbl6 = { 0, 1, nil, 128, tbl6 }
						else
							n3 = 49
							tbl6 = { nil, tbl6, 1, 32, 0 }
						end
					elseif n3 <= 29 then
						if n3 <= 28 then
							n[n4] = n6
							n[100] = 13
							n[56] = 8
							n[97] = 10
							n[69] = 14
							n[66] = 11
							n[57] = 9
							n3 = 20
							tbl6 = { 1, tbl6, nil, -1, 31 }
						else
							n8 += n6
							n3 = 4
						end
					elseif n3 <= 30 then
						n2[n4 + 1] = n[n6] * 16 + n[n7]
						n3 = 20
					else
						n11 = n % 65536
						n3 = n11 < 0 and 53 or 45
					end
				else
					if n3 <= 47 then
						if n3 <= 39 then
							if n3 <= 35 then
								if n3 <= 33 then
									if n3 <= 32 then
										byte(n11, 1, 64)
										n3 = n10 == n9 and 34 or 58
									else
										local n12 = n2 % n7
										n2 = ((((n2 - n12) / n7 * n9 + n12 * n10) % n7 * n7 + n12 * n9) % n6 + n5) % n6
										n4[n] = (n2 - n2 % n8) / n8
										n3 = 49
									end
								elseif n3 <= 34 then
									n5 = { byte(n, 1, 64) }
									n3 = 58
								else
									char ..= tbl4[n8]
									n3 = 62
								end
							elseif n3 <= 37 then
								if n3 <= 36 then
									n = n4[3]
									n2 = 4 * n4[1] % 64 + 1
									n5 = 2 * n4[2] % 128 - 1
									n3 = 9
									tbl6 = { nil, -1, 1, tbl6, 255 }
								else
									n3 = not n7 and 17 or 30
								end
							elseif n3 <= 38 then
								n = { [53] = 5, [70] = 15, [68] = 13, [55] = 7, [67] = 12, [50] = 2, [102] = 15 }
								n3 = 22
								n4 = 98
								n6 = 11
							else
								n3 = 13
								n11 = ""
								tbl6 = { tbl6, 0, nil, 64, 1 }
							end

							continue
						end

						if n3 <= 43 then
							if n3 <= 41 then
								if n3 <= 40 then
									return nil
								end
								v4[v5] = char
								n3 = 44
								continue
							end

							if n3 <= 42 then
								n11 -= 65536
								n3 = 23
							else
								n4 = (n4 - n6) / 2
								n5 = (n5 - n7) / 2
								n7 = n4 % 2
								n9 = n5 % 2

								if n7 ~= n9 then
									n3 = 29
									n6 = 2
								else
									n3 = 4
								end
							end

							continue
						end

						if n3 <= 45 then
							if n3 <= 44 then
								break
							end
							n3 = n11 >= 65536 and 42 or 23
							continue
						end

						if n3 <= 46 then
							n = (n + 1) % 256
							n2 = (n2 + tbl5[n]) % 256
							local v7 = tbl5[n]
							tbl5[n] = tbl5[n2]
							tbl5[n2] = v7
							local v8 = byte(v3, n4)
							n5 = tbl5[(tbl5[n] + tbl5[n2]) % 256]
							n6 = v8 % 2
							n7 = n5 % 2

							if n6 ~= n7 then
								n3 = 48
								n4 = v8
							else
								n3 = 43
								n8 = 0
								n4 = v8
							end
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 15
								n6 = 32
							else
								n3 = 63
							end
						end

						continue
					end

					if n3 <= 55 then
						if n3 <= 51 then
							if n3 <= 49 then
								if n3 <= 48 then
									n3 = 43
									n8 = 1
								else
									local v7 = tbl6[3]
									local v8 = tbl6[4]
									local n12 = tbl6[5] + v7
									local flag = v7 <= 0
									local flag2 = not flag
									local flag3 = n12 >= v8
									local flag4 = n12 <= v8
									flag3 = flag and flag3
									flag3 = flag3 or flag2 and flag4
									tbl6[5] = n12

									if flag3 then
										n3 = 33
										n = n12
									else
										n3 = 14
									end
								end
							elseif n3 <= 50 then
								tbl6 = tbl6[3]
								n3 = 41
							else
								tbl6 = tbl6[5]
								n3 = 61
							end
						elseif n3 <= 53 then
							if n3 <= 52 then
								n8 += n6
								n3 = 47
							else
								n11 += 65536
								n3 = 45
							end
						elseif n3 <= 54 then
							tbl6 = tbl6[4]
							n3 = 21
						else
							n4 = (n4 - n7) / 2
							n5 = (n5 - n9) / 2
							n7 = n4 % 2
							n9 = n5 % 2

							if n7 ~= n9 then
								n3 = 52
								n6 = 16
							else
								n3 = 47
							end
						end
					elseif n3 <= 59 then
						if n3 <= 57 then
							if n3 <= 56 then
								tbl4[n] = char(n)
								tbl5[n] = n
								n = (n2 * n + n5) % 256
								n3 = 9
							else
								local tbl7 = {}

								if n2 == 1 then
									n3 = 26
									n2 = tbl7
								else
									n3 = 60
									n4 = tbl7
								end
							end
						elseif n3 <= 58 then
							local v7 = tbl6[2]
							local v8 = tbl6[4]
							local n12 = tbl6[1] + v7
							local flag = v7 <= 0
							local flag2 = not flag
							local flag3 = n12 >= v8
							local flag4 = n12 <= v8
							flag3 = flag and flag3
							flag2 = flag2 and flag4
							flag2 = flag3 or flag2
							tbl6[1] = n12

							if flag2 then
								n3 = 39
								n10 = n12
							else
								n3 = 0
							end
						else
							tbl6 = tbl6[2]
							n3 = 36
							n4 = n2
						end
					elseif n3 <= 61 then
						if n3 <= 60 then
							n3 = n2 == 0 and 3 or 36
						else
							n3 = 62
							n = 0
							n2 = 0
							char = ""
							tbl6 = { #v3 + 0, 0, tbl6, 1, nil }
						end
					elseif n3 <= 62 then
						local v7 = tbl6[4]
						local v8 = tbl6[1]
						local n12 = tbl6[2] + v7
						local flag = v7 <= 0
						local flag2 = not flag
						local flag3 = n12 >= v8
						local flag4 = n12 <= v8
						flag3 = flag and flag3
						flag3 = flag3 or flag2 and flag4
						tbl6[2] = n12

						if flag3 then
							n3 = 46
							n4 = n12
						else
							n3 = 50
						end
					else
						n4 = (n4 - n7) / 2
						n5 = (n5 - n9) / 2
						n7 = n4 % 2
						n9 = n5 % 2

						if n7 ~= n9 then
							n3 = 10
							n6 = 64
						else
							n3 = 6
						end
					end
				end
			end
		end

		fn6(-1951954522400961, 0, "\168X\8\183\146\211\207\2541\240\1415\240\158\228", nil --[[ the caller's registers ]], 11)
		return waitForChild(ReplicatedStorage, "\168X\8\183\146\211\207\2541\240\1415\240\158\228")
	end

	LoadVisitedServers = function()
		local ok, result = pcall(function()
			return game:GetService("HttpService"):JSONDecode(readfile(ServerBrowser.file))
		end)

		if ok and type(result) == "table" then
			local now = os.time()

			for k, v3 in pairs(result) do
				if type(v3) == "number" and now - v3 < 3600 then
					ServerBrowser.visited[k] = v3
				end
			end
		end
	end

	SaveVisitedServers = function()
		pcall(function()
			if not isfolder("Vxeze Hub") then
				makefolder("Vxeze Hub")
			end

			writefile(ServerBrowser.file, game:GetService("HttpService"):JSONEncode(ServerBrowser.visited))
		end)
	end

	FetchServers = function(arg)
		if ServerBrowser.busy then
			repeat
				task.wait(0.1)
			until not ServerBrowser.busy

			return ServerBrowser.list
		end

		local flag = #ServerBrowser.list > 0
		local flag2

		if flag then
			local time = ServerBrowser.time
			flag2 = tick() - time < (arg or 30)
		else
			flag2 = flag
		end

		if flag2 then
			return ServerBrowser.list
		end
		ServerBrowser.busy = true
		local v3 = ServerRemote()
		local tbl4 = {}
		local n = 0

		for i = 1, 100 do
			task.delay(i / 50, function()
				local ok, result = pcall(v3.InvokeServer, v3, i)

				if ok and type(result) == "table" then
					for k, v4 in pairs(result) do
						if type(k) == "string" and type(v4) == "table" then
							tbl4[k] = v4
						end
					end
				end

				n += 1
			end)
		end

		local now = tick()

		while true do
			task.wait(0.1)
			if not (n >= 100 or tick() - now > 8) then
				continue
			end
			break
		end

		local list = {}

		for k, v4 in pairs(tbl4) do
			table.insert(list, {
				Job = k,
				Count = tonumber(v4.Count) or 0,
				Region = tostring(v4.Region or "Unknown"),
				Bounty = tonumber(v4.Bounty) or 0,
			})
		end

		local v4 = ServerBrowser
		local v5 = ServerBrowser
		local v6 = ServerBrowser
		local now2 = tick()
		v4.list = list
		v5.time = now2
		v6.busy = false
		return list
	end

	GetMyRegion = function()
		for _, v3 in ipairs(ServerBrowser.list) do
			if v3.Job == game.JobId then
				return v3.Region
			end
		end
	end

	JoinServer = function(arg, arg2)
		if type(arg) ~= "string" or arg == "" or arg == game.JobId then
			return false
		end
		ServerBrowser.visited[arg] = os.time()
		SaveVisitedServers()
		VxezeNotify("Server", arg2 or "Joining " .. arg:sub(1, 8), "travel")

		return (pcall(function()
			ServerRemote():InvokeServer("teleport", arg)
		end))
	end

	PickServer = function(arg)
		local v3 = FetchServers(30)
		local maxPlayers = game.Players.MaxPlayers
		local tbl4 = {}

		for _, v4 in ipairs(v3) do
			if v4.Job ~= game.JobId and not ServerBrowser.visited[v4.Job] and v4.Count > 0 and v4.Count < maxPlayers then
				table.insert(tbl4, v4)
			end
		end

		if #tbl4 == 0 then
			return nil
		end

		if arg == "less" then
			table.sort(tbl4, function(arg2, arg3)
				return arg2.Count < arg3.Count
			end)

			return tbl4[math.random(1, math.min(5, #tbl4))].Job
		end

		return tbl4[math.random(1, #tbl4)].Job
	end

	HopTo = function(c,n,L)if tick()-ServerBrowser.lastHop<12 then return false;end;ServerBrowser.lastHop=tick();n=tonumber(n)or(tonumber(Settings["Time Hop Server"]))or 0;if n>0 then VxezeNotify("Server",L.." in "..n.."s","warning",{Key="hopwait"});task.wait(n);end;for n=1,3,1 do n=PickServer(c);if not n then VxezeNotify("Server","No server to hop to right now","warning",{Key="hopempty"});return false;end;JoinServer(n,L);n=tick();repeat task.wait(1);until tick()-n>15;end;return false;end

	HopServer = function(arg)
		return HopTo("random", arg, "Hopping to a new server")
	end

	HopLessAll = function(arg)
		return HopTo("less", arg, "Hopping to a server with few players")
	end

	HopServerLess = function()
		return HopLessAll()
	end

	OpenServerBrowser = function()
		if ServerBrowser.panel then
			ServerBrowser.panel.Open()
			return
		end
		local v3 = VxezeUI.Window:AddPanelTab({ Name = "Server Browser", Icon = "Lucide:globe", UseElements = true })
		ServerBrowser.panel = v3
		local tab = v3.Tab
		tab:AddSection("Server Browser", "Lucide:globe")
		local v4 = tab:AddParagraph({ Title = "Servers", Text = "Loading the server list..." })

		local v5 = tab:AddCardGrid({
			Title = "Servers",
			Height = 330,
			CardHeight = 84,
			PageSize = 24,
			SearchPlaceholder = "Search a region or job id...",
			EmptyText = "No server matches that search.",
			Sorts = { "Fewest players", "Most players", "Highest bounty", "Lowest bounty" },
			Fetch = function(arg)
				local v5 = FetchServers(30)
				local v6 = string.lower(arg.Query or "")
				local maxPlayers = game.Players.MaxPlayers
				local tbl4 = {}

				for _, v7 in ipairs(v5) do
					if v6 == "" or string.find(string.lower(v7.Region), v6, 1, true) or string.find(string.lower(v7.Job), v6, 1, true) then
						table.insert(tbl4, v7)
					end
				end

				local sort = arg.Sort

				table.sort(tbl4, function(arg2, arg3)
					if sort == "Most players" then
						return arg2.Count > arg3.Count
					end

					if sort == "Highest bounty" then
						return arg2.Bounty > arg3.Bounty
					end

					if sort == "Lowest bounty" then
						return arg2.Bounty < arg3.Bounty
					end
					return arg2.Count < arg3.Count
				end)

				v4:Set(#v5 .. " servers | Your region: " .. tostring(GetMyRegion() or "Unknown") .. " | Updated " .. os.date("%H:%M:%S"))
				local tbl5 = {}

				for i = 1, math.min(60, #tbl4) do
					local v7 = tbl4[i]
					local flag = v7.Job == game.JobId

					table.insert(tbl5, {
						Title = v7.Region,
						Description = "Players " .. v7.Count .. "/" .. maxPlayers .. (flag and " | Your server" or ""),
						Byline = "Bounty " .. v7.Bounty .. " | " .. v7.Job:sub(1, 8),
						Icon = flag and "Lucide:house" or "Lucide:server",
						ActionIcon = "log-in",
						Callback = function()
							if flag then
								VxezeNotify("Server", "You are already in this server", "info")
								return
							end
							JoinServer(v7.Job, "Joining " .. v7.Region .. " (" .. v7.Count .. " players)")
						end,
					})
				end

				return tbl5
			end,
		})

		tab:AddButton({
			Text = "Refresh list",
			Icon = "Lucide:refresh-cw",
			Callback = function()
				ServerBrowser.time = 0
				v5:Refresh()
			end,
		})

		tab:AddButton({
			Text = "Close",
			Icon = "Lucide:x",
			Callback = function()
				v3.Close()
			end,
		})

		v3.Open()
	end

	LoadVisitedServers()

	SectionServer.CreateButton({ Title = "Open Server Browser", Desc = "Every public server, sorted and searchable" }, function()
		OpenServerBrowser()
	end)

	StatusJobId = SectionServer.CreateLabel({ Title = "Job Id : " .. game.JobId })
	StatusPlaceId = SectionServer.CreateLabel({ Title = "Place Id : " .. game.PlaceId })
	local str = ""

	SectionServer.CreateBox({ Title = "Input JobId", Placeholder = "Paste a job id", Number = false, Default = nil }, function(arg)
		str = tostring(arg or ""):gsub("%s", "")
	end)

	SectionServer.CreateToggle({
		Title = "Spam Join",
		Desc = "Keep trying the job id until it lets you in",
		Default = Settings["Spam Join"] or false,
	}, function(arg)
		SaveSettings("Spam Join", arg)
	end)

	if not (bit32 or bit) then
		local tbl4 = { bxor = function(arg, arg2)
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

	Realm = require(game:GetService("ReplicatedStorage").Util.Realm)

	SectionServer.CreateButton({ Title = "Join JobId" }, function()
		if str == "" then
			VxezeNotify("Server", "Paste a job id first", "warning")
			return
		end

		if not Settings["Spam Join"] then
			JoinServer(str, "Joining " .. str:sub(1, 8))
			return
		end

		task.spawn(function()
			for i = 1, 60 do
				if not Settings["Spam Join"] then
					return
				end
				JoinServer(str, "Trying to join " .. str:sub(1, 8) .. " (" .. i .. "/60)")
				task.wait(2)
			end

			VxezeNotify("Server", "Gave up joining that server after 60 tries", "warning")
		end)
	end)

	SectionServer.CreateButton({ Title = "Copy JobId" }, function()
		if setclipboard then
			setclipboard(tostring(game.JobId))
			VxezeNotify("Server", "Job id copied", "success")
		end
	end)

	SectionServer.CreateButton({ Title = "Rejoin Server" }, function()
		VxezeNotify("Server", "Rejoining this server", "travel")

		pcall(function()
			ServerRemote():InvokeServer("teleport", game.JobId)
		end)
	end)

	SectionServer.CreateSlider({
		Title = "Time Hop Server",
		Min = 0,
		Max = 60,
		Default = Settings["Time Hop Server"] or 5,
		Precise = true,
	}, function(arg)
		SaveSettings("Time Hop Server", arg)
	end)

	SectionServer.CreateButton({ Title = "Hop Server", Desc = "Any other server you have not visited this hour" }, function()
		task.spawn(HopServer)
	end)

	SectionServer.CreateButton({ Title = "Hop Server Less People", Desc = "One of the emptiest servers that still has players" }, function()
		task.spawn(HopLessAll)
	end)

	CheckMoon = function()local c=game:GetService("Lighting");local n=c:GetAttribute("MoonPhase");if n then return if n==5 then"Full Moon"else if n==4 then"Next Night"else"Bad Moon";end;n=c:FindFirstChildOfClass("Sky");c=n and(n.MoonTextureId:match("%d+$"));return if c=="9709149431"then"Full Moon"else if c=="9709149052"then"Next Night"else"Bad Moon";end

	GetClockHour = function()
		return math.floor(game.Lighting.ClockTime)
	end

	GetMoonTimeText = function()
		local clockTime = game.Lighting.ClockTime
		if CheckMoon() == "Full Moon" and clockTime <= 5 then
			return ("Clock " .. GetClockHour() .. "h") .. " ( Will End Moon In " .. math.floor(5 - clockTime) .. " Minutes )"
		end

		if CheckMoon() == "Full Moon" and clockTime > 5 and clockTime < 12 then
			return ("Clock " .. GetClockHour() .. "h") .. " ( Fake Moon )"
		end

		if CheckMoon() == "Full Moon" and clockTime > 12 and clockTime < 18 then
			return ("Clock " .. GetClockHour() .. "h") .. " ( Will Full Moon In " .. math.floor(18 - clockTime) .. " Minutes )"
		end

		if CheckMoon() == "Full Moon" and clockTime > 18 and clockTime <= 24 then
			return ("Clock " .. GetClockHour() .. "h") .. " ( Will End Moon In " .. math.floor(30 - clockTime) .. " Minutes )"
		end

		if CheckMoon() == "Next Night" and clockTime < 12 then
			return ("Clock " .. GetClockHour() .. "h") .. " ( Will Full Moon In " .. math.floor(18 - clockTime) .. " Minutes )"
		end

		if CheckMoon() == "Next Night" and clockTime > 12 then
			return ("Clock " .. GetClockHour() .. "h") .. " ( Will Full Moon In " .. math.floor(30 - clockTime) .. " Minutes )"
		end
		return "Clock " .. GetClockHour() .. "h"
	end

	CheckAcientOneDracoStatus = function()
		if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
			if Place_Id.sea3() then
				local response = game.workspace.HydraIslandClient.RemoteFunction:InvokeServer("Interacted")
				if response == 1 or response == 2 or response == 3 or response == 4 then
					return "Ready For Trial"
				end
			end

			return "You have yet to achieve greatness"
		end

		local response, v3, v4 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check", 2)
		if response == 1 then
			return "Required Train More"
		end

		if response == 2 or response == 4 or response == 7 then
			return "Can Buy Gear With " .. v4 .. " Fragments"
		end

		if response == 3 then
			return "Required Train More"
		end

		if response == 5 then
			return "You Are Done Your Race."
		end

		if response == 6 then
			return "Upgrades completed: " .. v3 - 2 .. "/3, Need Trains More"
		end

		if response ~= 8 then
			if response == 0 then
				return "Ready For Trial"
			end
			return "You have yet to achieve greatness"
		end

		return "Remaining " .. 10 - v3 .. " training sessions."
	end

	local function fn6()
		if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
			return "You have yet to achieve greatness"
		end
		local response, v3, v4 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
		if response == 1 then
			return "Required Train More"
		end

		if response == 2 or response == 4 or response == 7 then
			return "Can Buy Gear With " .. v4 .. " Fragments"
		end

		if response == 3 then
			return "Required Train More"
		end

		if response == 5 then
			return "You Are Done Your Race."
		end

		if response == 6 then
			return "Upgrades completed: " .. v3 - 2 .. "/3, Need Trains More"
		end

		if response ~= 8 then
			if response == 0 then
				return "Ready For Trial"
			end
			return "You have yet to achieve greatness"
		end

		return "Remaining " .. 10 - v3 .. " training sessions."
	end

	local v3 = nil
	local n = 0

	CheckAcientOneStatus = function()
		if v3 and tick() - n < 1 then
			return v3
		end
		v3 = fn6()
		n = tick()
		return v3
	end

	ResetRaceStatus = function()
		v3 = nil
	end

	CheckGoTrain = function()
		local v4 = CheckAcientOneStatus()
		if string.find(v4, "Upgrades completed") or v4 == "Required Train More" or string.find(v4, "training sessions.") or string.find(v4, "Can Buy Gear") then
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
		if Place_Id.sea3() then
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

	IsMobAlive = function(c)if c and c.Parent and(c:FindFirstChild("HumanoidRootPart"))and(c:FindFirstChildWhichIsA("Humanoid"))and c.Humanoid.Health>0 then return true;end;end
	local tbl4 = { "Deandre", "Urban", "Diablo" }

	DetectEliteHunter = function()
		local v4 = next
		local children, v5 = game:GetService("ReplicatedStorage"):GetChildren()

		for _, v6 in v4, children, v5 do
			if v6:IsA("Model") and table.find(tbl4, v6.Name) and IsMobAlive(v6) then
				return v6
			end
		end

		local v6 = next
		local children2, v7 = game:GetService("Workspace").Enemies:GetChildren()

		for _, v8 in v6, children2, v7 do
			if v8:IsA("Model") and table.find(tbl4, v8.Name) and IsMobAlive(v8) then
				return v8
			end
		end
	end

	GetOldestLocation = function()
		local huge = math.huge
		local v4 = nil

		for _, child in ipairs(workspace._WorldOrigin.Locations:GetChildren()) do
			local attribute = child:GetAttribute("TimeIn")

			if attribute and attribute < huge then
				huge = attribute
				v4 = child
			end
		end

		return v4
	end

	SeaInfo = { number = nil, name = "Unknown", tags = {} }

	GetCurrentSea = function()
		if SeaInfo.number then
			return SeaInfo.number
		end
		local ok, result = pcall(require, game.ReplicatedStorage.Util.Realm)
		ok = ok and result
		local result2 = nil

		if ok then
			local ok2
			ok2, result2 = pcall(result.getCurrentSeaAsync)
			result2 = ok2 and result2 or nil

			for _, v4 in ipairs({ "HasEliteHunters", "HasMirageIsland", "HasSeaEvents" }) do
				local ok3, result3 = pcall(result.getIfCurrentRealmHasTagAsync, v4)
				SeaInfo.tags[v4] = ok3 and result3 == true
			end
		end

		result2 = result2 or game.Lighting:GetAttribute("MAP")
		SeaInfo.number = result2 == "Sea1" and 1 or result2 == "Sea2" and 2 or result2 == "Sea3" and 3 or nil

		if not SeaInfo.number then
			SeaInfo.number = Place_Id.sea1() and 1 or Place_Id.sea2() and 2 or Place_Id.sea3() and 3 or 0
		end

		SeaInfo.name = SeaInfo.number > 0 and "Sea " .. SeaInfo.number or "Unknown"
		return SeaInfo.number
	end

	SeaOnly = function(arg, arg2, arg3)
		local v4 = GetCurrentSea()

		for _, v5 in ipairs(arg3) do
			if v5 == v4 then
				return true
			end
		end

		local tbl5 = {}

		for _, v5 in ipairs(arg3) do
			table.insert(tbl5, "Sea " .. v5)
		end

		arg.SetText(arg2 .. " : Not in " .. SeaInfo.name .. ", go to " .. table.concat(tbl5, " or "))
		return false
	end

	SeaOnlyNone = function(arg, arg2, arg3)
		local v4 = GetCurrentSea()

		for _, v5 in ipairs(arg3) do
			if v5 == v4 then
				return true
			end
		end

		arg.SetText(arg2 .. " : None")
		return false
	end

	FormatClock = function(arg)
		local n2 = math.max(0, math.floor(arg))
		return string.format("%dh %dm %ds", n2 // 3600, n2 % 3600 // 60, n2 % 60)
	end

	GetTyrantEyes = function()
		local tikiOutpost = workspace.Map:FindFirstChild("TikiOutpost")
		tikiOutpost = tikiOutpost and tikiOutpost:FindFirstChild("IslandModel")
		if not tikiOutpost then
			return 0
		end

		if not TyrantEyes or not TyrantEyes[1] or not TyrantEyes[1]:IsDescendantOf(tikiOutpost) then
			TyrantEyes = {}

			for i = 1, 4 do
				local v4 = tikiOutpost:FindFirstChild("Eye" .. i, true)

				if v4 then
					table.insert(TyrantEyes, v4)
				end
			end
		end

		local n2 = 0

		for _, v4 in ipairs(TyrantEyes) do
			if v4.Transparency == 0 then
				n2 += 1
			end
		end

		return math.min(n2, 4)
	end

	StatusRemote = { busy = {}, last = {}, value = {} }

	PollStatus = function(arg, arg2, arg3)
		local flag = StatusRemote.busy[arg]

		if not flag then
			flag = tick() - (StatusRemote.last[arg] or 0) < arg2
		end

		if flag then
			return StatusRemote.value[arg]
		end
		StatusRemote.busy[arg] = true

		task.spawn(function()
			local ok, result = pcall(arg3)

			if ok then
				StatusRemote.value[arg] = result
			else
				VxezeReportError("Status " .. arg, result)
			end

			StatusRemote.last[arg] = tick()
			StatusRemote.busy[arg] = nil
		end)

		return StatusRemote.value[arg]
	end

	ReadCakePrince = function()
		local response = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
		local str2 = type(response) == "string" and response or ""

		if str2:find("open the portal", 1, true) then
			local selectMethodFarm = Settings["Select Method Farm"]

			if Settings["Start Farm"] and (selectMethodFarm == "Cake" or selectMethodFarm == "Farm Katakuri") then
				game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
			end

			return "Portal ready"
		end

		local match = str2:gsub("<[^>]+>", ""):match("(%d+)")
		return match and match .. " enemies left" or "Unknown"
	end

	ReadLeviathan = function()
		local response = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("InfoLeviathan", "1")
		if response == 5 then
			return "Ready to hunt"
		end

		if response == -1 or response == nil then
			return "Unknown"
		end
		return "Buy the hint from the Spy"
	end

	LocationLabel = function(arg)
		if typeof(arg) == "Instance" then
			local v4 = nil
			local parent = arg
			arg = v4

			while parent and parent ~= workspace and not arg do
				if parent:IsA("BasePart") then
					arg = parent.Position
				elseif parent:IsA("Model") then
					arg = parent:GetPivot().Position
				end

				parent = parent.Parent
			end
		end

		if typeof(arg) ~= "Vector3" then
			return "Sea " .. GetCurrentSea()
		end
		local name = AreaAt(arg)

		if name == "" then
			local v4 = nil

			for _, child in ipairs(workspace._WorldOrigin.Locations:GetChildren()) do
				if child:IsA("BasePart") and child.Name ~= "Sea" then
					local magnitude = (child.Position - arg).Magnitude

					if not v4 or magnitude < v4 then
						name = child.Name
						v4 = magnitude
					end
				end
			end
		end

		return name ~= "" and name or "Sea " .. GetCurrentSea()
	end

	ReadEliteProgress = function()
		local response = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
		return tonumber(response)
	end

	error("devirt: value <luasym.LuaFunc object at 0x000001BED6709E10> in an expression (at 38:3111)")
end

__VxezeHubMain()
