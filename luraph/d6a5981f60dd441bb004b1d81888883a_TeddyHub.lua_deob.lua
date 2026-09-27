 1:1,16:22862
local connection = game.AncestryChanged:Connect(function(child, parent)
end)
 1:1,16:22862
connection:Disconnect()
 1:1,16:22877
local connection2 = workspace.AncestryChanged:Connect(function(child2, parent2)
end)
 1:1,16:22877
connection2:Disconnect()
 1:1
local Folder = Instance.new("Folder")
 1:1,16:22895
local connection3 = Folder.AncestryChanged:Connect(function(child3, parent3)
end)
 1:1,16:22895
connection3:Disconnect()
 1:1
Folder:GetChildren()
 1:1
Folder:Destroy()
 1:1
local Folder2 = Instance.new("Folder", Folder)
 1:1,16:22910
local connection4 = Folder2.AncestryChanged:Connect(function(child4, parent4)
end)
 1:1,16:22910
connection4:Disconnect()
 1:1
Folder2.Name = "1273838262"
 1:1
Folder:WaitForChild("1273838262")
 1:1
Folder:Destroy()
 1:1
Folder2:Destroy()
 1:1
local HttpService = game:GetService("HttpService")
 1:1,16:22937
local connection5 = HttpService.AncestryChanged:Connect(function(child5, parent5)
end)
 1:1,16:22937
connection5:Disconnect()
 1:1
local RunService = game:GetService("RunService")
 1:1,16:22955
local connection6 = RunService.AncestryChanged:Connect(function(child6, parent6)
end)
 1:1,16:22955
connection6:Disconnect()
 1:1,25:23379
wait()
 1:1,25:23379
game:IsLoaded()
 1:1,25:23379
wait()
 1:1,25:23379
local Players = game:GetService("Players")
 1:1,25:23379
task.wait()
 1:1,25:23379
wait()
 1:1,25:23379
Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
 1:1,25:23379
wait()
 1:1,25:23379
workspace:FindFirstChild("Map")
 1:1,25:23379,29:23499
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 1:1,25:23379,29:23499
local module = require(ReplicatedStorage.Reparent)
 1:1,25:23379,29:23499
module.Unparent = function(arg, arg2)
end
 1:1,25:23379
local TeleportService = game:GetService("TeleportService")
 1:1,25:23379
local TweenService = game:GetService("TweenService")
 1:1,25:23379
local Lighting = game:GetService("Lighting")
 1:1,25:23379
local VirtualInputManager = game:GetService("VirtualInputManager")
 1:1,25:23379
local VirtualUser = game:GetService("VirtualUser")
 1:1,25:23379
local Stats = game:GetService("Stats")
 1:1,25:23379
_G.TweenSpeed = 190
 1:1,25:23379
local Main = game.Players.LocalPlayer.PlayerGui:WaitForChild("Main")
 1:1,25:23379
Main:WaitForChild("Loading")
 1:1,25:23379
game:IsLoaded()
 1:1,25:23379
task.wait(0.05)
 1:1,25:23379
game.Players.LocalPlayer:Kick("Teddy Hub Not Support Game")
 1:1,25:23379
task.spawn(function(...)
	 31:24195,32:24202
	local Effect = ReplicatedStorage:WaitForChild("Effect", 3)
	 31:24195,32:24202
	local Container = Effect:FindFirstChild("Container")
	 31:24195,32:24202
	local Death = Container:FindFirstChild("Death")
	 31:24195,32:24202
	local module2 = require(Death)
	 31:24195,32:24202
	hookfunction(module2, function(arg3, arg4)
	end)
	 31:24195,34:24242
	local GuideModule = ReplicatedStorage:WaitForChild("GuideModule", 3)
	 31:24195,34:24242
	local module3 = require(GuideModule)
	 31:24195,34:24242
	hookfunction(module3.ChangeDisplayedNPC, function(arg5, arg6)
	end)
end)
 1:1,25:23379
local Rocks = workspace:FindFirstChild("Rocks")
 1:1,25:23379
Rocks:Destroy()
 1:1,25:23379,36:24528
local Controllers = ReplicatedStorage:WaitForChild("Controllers")
 1:1,25:23379,36:24528
local UI = Controllers:WaitForChild("UI")
 1:1,25:23379,36:24528
local Inventory = UI:WaitForChild("Inventory")
 1:1,25:23379,36:24528
local module4 = require(Inventory)
 1:1,25:23379
_G.IsHopping = false
 1:1,25:23379
GameData.Places = {
	["2753915549"] = {
		CFrame.new(781.37255859375, 5.7767753601074, 1437.2399902344),
		CFrame.new(-2606.2143554688, 6.7695031166077, 2043.04553222667),
		CFrame.new(-655.824158, 7.88708115, 1436.67908),
		CFrame.new(-1334.1259765625, 11.852984428406, 502.03717041016),
		CFrame.new(-1455.4440917969, 29.851997375488, -37.440139770508),
		CFrame.new(-1187.3435058594, 4.7515587806702, 3809.2456054688),
		CFrame.new(1094.14587, 6.47350502, 4192.88721),
		CFrame.new(1112.4229736328, 7.3036189079285, -1159.3383789062),
		CFrame.new(-4817.0161132812, 20.651899337769, 4368.0639648438),
		CFrame.new(-2839.7548828125, 7.3262448310852, 5319.9428710938),
		CFrame.new(4874.8125, 5.6519904136658, 735.57012939453),
		CFrame.new(-1423.5014648438, 7.2882599830627, -2798.2961425781),
		CFrame.new(-4970.21875, 717.707275, -2622.35449),
		CFrame.new(-4731.9462890625, 845.27691650391, -1933.5628662109),
		CFrame.new(-7884.7309570312, 5545.509765625, -383.34613037109),
		CFrame.new(-8018.662109375, 5609.9936523438, -1979.3544921875),
		CFrame.new(-5231.75879, 8.61593437, 8467.87695),
		CFrame.new(3868.501953125, 5.5923495292663574, -1917.993408203125),
		CFrame.new(3853.0385742188, 5.3731479644775, -1919.4447021484),
		CFrame.new(61092.36328125, 18.471633911133, 1711.1674804688),
		CFrame.new(5053.0297851562, 1.5012743473053, 4054.8439941406)
	},
	["4442272183"] = {
		CFrame.new(-11.845784187317, 29.276727676392, 2768.9770507812),
		CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668),
		CFrame.new(-390.096313, 331.886475, 673.464966),
		CFrame.new(2302.19019, 15.1778421, 663.811035),
		CFrame.new(430.42569, 210.019623, -432.504791),
		CFrame.new(-1836.58191, 44.5890656, 1360.30652),
		CFrame.new(3781.985107421875, 14.850649833679199, -3498.081298828125),
		CFrame.new(-2304.93359375, 72.966117858887, -2782.6965332031),
		CFrame.new(-5377.3295898438, 8.9691047668457, -708.45489501953),
		CFrame.new(554.47235107422, 401.42199707031, -5364.732421875),
		CFrame.new(-5944.7875976562, 15.951756477356, -5114.8725585938),
		CFrame.new(-6509.4169921875, 83.187019348145, -137.39677429199801),
		CFrame.new(902.059143, 124.752518, 33071.8125),
		CFrame.new(5662.44140625, 28.191165924072, -5982.9755859375),
		CFrame.new(-3043.31543, 238.881271, -10191.5791),
		CFrame.new(4778.2431640625, 8.2086620330811, 2871.4936523438),
		CFrame.new(-260.358917, 49325.7031, -35259.3008),
		CFrame.new(-27007.9363, 9.033, 466.6544)
	},
	["7449423635"] = {
		CFrame.new(-447.46743774414, 6.7299399375916, 5306.3686523438),
		CFrame.new(5335.88623046875, 1004.7794799804688, 241.50193786621094),
		CFrame.new(5231.6831054688, 7.3780846595764, 1102.6005859375),
		CFrame.new(2253.0600585938, 24.144220352173, -6405.6694335938),
		CFrame.new(-5026.3584, 323.515503, -2996.28442),
		CFrame.new(-11363.5166, 362.381439, -10327.9727),
		CFrame.new(-12553.0595703125, 337.38748168945312, -7471.96142578125),
		CFrame.new(-12001.6152, 1707.39319, -8789.03711),
		CFrame.new(-11990.901367188, 331.80770874023, -8845.5888671875),
		CFrame.new(5310.80957, 160.446838, 129.390533),
		CFrame.new(5220.28955, 72.8193436, -1500.86304),
		CFrame.new(-9530.61035, 200.860657, 5763.13477),
		CFrame.new(-9522.0957, 315.89975, 6751.88818),
		CFrame.new(-2087.0561523438, 11.722011566162, -10002.080078125),
		CFrame.new(-851.74633789062, 65.819496154785, -10932.150390625),
		CFrame.new(-1907.1773681640625, 9.5656547546386719, -11539.8251953125),
		CFrame.new(-16256.5566, 9.06057358, 430.995422),
		CFrame.new(-16529.705078125, 108.0355224609375, 748.57391357421875)
	}
}
 1:1,25:23379
GameData.Portals = {
	["2753915549"] = {
		Vector3.new(-4654, 872, -1759),
		Vector3.new(-7894, 5547, -380),
		Vector3.new(3876, 35, -1939),
		Vector3.new(61163, 11, 1819)
	},
	["4442272183"] = {
		Vector3.new(-288, 305, 613),
		Vector3.new(2284, 15, 897),
		Vector3.new(-6518, 83, -145),
		Vector3.new(923, 125, 32883)
	},
	["7449423635"] = {
		Vector3.new(-12550, 337, -7476),
		Vector3.new(-5073, 314, -3152),
		Vector3.new(5681, 1013, -313),
		Vector3.new(28294, 14896, 103)
	}
}
 1:1,25:23379
_G.UseFastEntrance = true
 1:1,25:23379
_G.PortalBackoff = {}
 1:1,25:23379
local Part = Instance.new("Part", workspace)
 1:1,25:23379
Part.Size = Vector3.new(1, 1, 1)
 1:1,25:23379
Part.Name = "Rip_Indra"
 1:1,25:23379
Part.Anchored = true
 1:1,25:23379
Part.CanCollide = false
 1:1,25:23379
Part.CanTouch = false
 1:1,25:23379
Part.Transparency = 1
 1:1,25:23379
workspace:FindFirstChild("Rip_Indra")
 1:1,25:23379
task.spawn(function(...)
	 37:25411
	task.wait(0.1)
	 37:25411
	Part.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
	 37:25411
	task.wait(0.1)
	 37:25411,38:25450
	getgenv().OnFarm = false
	 37:25411,38:25450
	local children = game.Players.LocalPlayer.Character:GetChildren()
	 
	for i, v in ipairs(children) do
	end
	 37:25411
	task.wait(0.1)
	 37:25411
	task.wait(0.1)
	 
end)
 1:1,25:23379
_G.currentTweenID = 0
 1:1,25:23379
task.spawn(function(...)
	 39:25673
	task.wait(0.35)
	 39:25673,40:25688
	local HumanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 39:25673,40:25688
	HumanoidRootPart:FindFirstChild("BodyClip")
	 39:25673,40:25688,41:26205
	local descendants = game.Players.LocalPlayer.Character:GetDescendants()
	 
	for i2, v2 in ipairs(descendants) do
	end
	 39:25673,40:25688
	v2.CanCollide = false
	 39:25673
	task.wait(0.1)
	 39:25673,40:26226
	local HumanoidRootPart2 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 39:25673,40:26226
	HumanoidRootPart2:FindFirstChild("BodyClip")
	 39:25673
	task.wait(0.1)
	 
end)
 1:1,25:23379
 1:1,25:23379
makefolder("TeddyHub_Data")
 1:1,25:23379
_G.Setting = {}
 1:1,25:23379
_G.SaveSetting = function(arg7, arg8)
	 42:26318,43:26325
	local json = HttpService:JSONEncode({})
	 42:26318
	writefile("TeddyHub_Data" .. "/" .. game.Players.LocalPlayer.Name .. "MainBF.json", json)
end
 1:1,25:23379,44:26334
 1:1,25:23379,44:26334
print("Teddy Hub: No save file yet, will be created on first change.")
 1:1,25:23379
local response = game:HttpGet("https://pastefy.app/81hFW5QA/raw")
 1:1,25:23379
local result = loadstring(response)()
 1:1,25:23379
local Window = result:CreateWindow({
	Title = "Teddy Hub [Blox Fruits] | Beta",
	Acrylic = false,
	MinimizeKey = Enum.KeyCode.End,
	Size = UDim2.fromOffset(490, 390),
	SubTitle = "",
	TabWidth = 160,
	Theme = "Dark"
})
 1:1,25:23379
Window.AddTab = function(arg9, arg10)
	 45:26407
	local Tab = arg9:AddTab(arg10)
	 45:26407
	Tab.AddToggle = function(arg11, arg12)
		 46:26420,47:26425,48:26426
		local result2 = tostring(arg10.Title):gsub("[^%w]", "_")
		 46:26420
		local Toggle = arg11:AddToggle(result2 .. "_opt" .. "_1", {})
	end
	 45:26407
	Tab.AddDropdown = function(arg13, arg14)
		 46:26466,47:26467,48:26468
		local result3 = tostring(arg10.Title):gsub("[^%w]", "_")
		 46:26466
		local Dropdown = arg13:AddDropdown(result3 .. "_opt" .. "_1", {})
	end
	 45:26407
	Tab.AddSlider = function(arg15, arg16)
		 46:26470,47:26471,48:26472
		local result4 = tostring(arg10.Title):gsub("[^%w]", "_")
		 46:26470
		local Slider = arg15:AddSlider(result4 .. "_opt" .. "_1", {})
	end
	 45:26407
	Tab.AddInput = function(arg17, arg18)
		 46:26474,47:26475,48:26476
		local result5 = tostring(arg10.Title):gsub("[^%w]", "_")
		 46:26474
		local Input = arg17:AddInput(result5 .. "_opt" .. "_1", {})
	end
end
 1:1,25:23379,45:26484
local Tab2 = Window:AddTab({ Title = "Farm" })
 1:1,25:23379,45:26484
Tab2.AddToggle = function(arg19, arg20)
	 46:26485
	local Toggle2 = arg19:AddToggle("Farm_opt_1", {})
end
 1:1,25:23379,45:26484
Tab2.AddDropdown = function(arg21, arg22)
	 46:26489
	local Dropdown2 = arg21:AddDropdown("Farm_opt_2", {})
end
 1:1,25:23379,45:26484
Tab2.AddSlider = function(arg23, arg24)
	 46:26493
	local Slider2 = arg23:AddSlider("Farm_opt_3", {})
end
 1:1,25:23379,45:26484
Tab2.AddInput = function(arg25, arg26)
	 46:26497
	local Input2 = arg25:AddInput("Farm_opt_4", {})
end
 1:1,25:23379,45:26509
local Tab3 = Window:AddTab({ Title = "Stack Auto Farm" })
 1:1,25:23379,45:26509
Tab3.AddToggle = function(arg27, arg28)
	 46:26510
	local Toggle3 = arg27:AddToggle("Stack_Auto_Farm_opt_1", {})
end
 1:1,25:23379,45:26509
Tab3.AddDropdown = function(arg29, arg30)
	 46:26514
	local Dropdown3 = arg29:AddDropdown("Stack_Auto_Farm_opt_2", {})
end
 1:1,25:23379,45:26509
Tab3.AddSlider = function(arg31, arg32)
	 46:26518
	local Slider3 = arg31:AddSlider("Stack_Auto_Farm_opt_3", {})
end
 1:1,25:23379,45:26509
Tab3.AddInput = function(arg33, arg34)
	 46:26522
	local Input3 = arg33:AddInput("Stack_Auto_Farm_opt_4", {})
end
 1:1,25:23379,45:26534
local Tab4 = Window:AddTab({ Title = "Sub Farming" })
 1:1,25:23379,45:26534
Tab4.AddToggle = function(arg35, arg36)
	 46:26535
	local Toggle4 = arg35:AddToggle("Sub_Farming_opt_1", {})
end
 1:1,25:23379,45:26534
Tab4.AddDropdown = function(arg37, arg38)
	 46:26539
	local Dropdown4 = arg37:AddDropdown("Sub_Farming_opt_2", {})
end
 1:1,25:23379,45:26534
Tab4.AddSlider = function(arg39, arg40)
	 46:26543
	local Slider4 = arg39:AddSlider("Sub_Farming_opt_3", {})
end
 1:1,25:23379,45:26534
Tab4.AddInput = function(arg41, arg42)
	 46:26547
	local Input4 = arg41:AddInput("Sub_Farming_opt_4", {})
end
 1:1,25:23379,45:26559
local Tab5 = Window:AddTab({ Title = "Hop" })
 1:1,25:23379,45:26559
Tab5.AddToggle = function(arg43, arg44)
	 46:26560
	local Toggle5 = arg43:AddToggle("Hop_opt_1", {})
end
 1:1,25:23379,45:26559
Tab5.AddDropdown = function(arg45, arg46)
	 46:26564
	local Dropdown5 = arg45:AddDropdown("Hop_opt_2", {})
end
 1:1,25:23379,45:26559
Tab5.AddSlider = function(arg47, arg48)
	 46:26568
	local Slider5 = arg47:AddSlider("Hop_opt_3", {})
end
 1:1,25:23379,45:26559
Tab5.AddInput = function(arg49, arg50)
	 46:26572
	local Input5 = arg49:AddInput("Hop_opt_4", {})
end
 1:1,25:23379,45:26584
local Tab6 = Window:AddTab({ Title = "Volcanic" })
 1:1,25:23379,45:26584
Tab6.AddToggle = function(arg51, arg52)
	 46:26585
	local Toggle6 = arg51:AddToggle("Volcanic_opt_1", {})
end
 1:1,25:23379,45:26584
Tab6.AddDropdown = function(arg53, arg54)
	 46:26589
	local Dropdown6 = arg53:AddDropdown("Volcanic_opt_2", {})
end
 1:1,25:23379,45:26584
Tab6.AddSlider = function(arg55, arg56)
	 46:26593
	local Slider6 = arg55:AddSlider("Volcanic_opt_3", {})
end
 1:1,25:23379,45:26584
Tab6.AddInput = function(arg57, arg58)
	 46:26597
	local Input6 = arg57:AddInput("Volcanic_opt_4", {})
end
 1:1,25:23379,45:26609
local Tab7 = Window:AddTab({ Title = "Status" })
 1:1,25:23379,45:26609
Tab7.AddToggle = function(arg59, arg60)
	 46:26610
	local Toggle7 = arg59:AddToggle("Status_opt_1", {})
end
 1:1,25:23379,45:26609
Tab7.AddDropdown = function(arg61, arg62)
	 46:26614
	local Dropdown7 = arg61:AddDropdown("Status_opt_2", {})
end
 1:1,25:23379,45:26609
Tab7.AddSlider = function(arg63, arg64)
	 46:26618
	local Slider7 = arg63:AddSlider("Status_opt_3", {})
end
 1:1,25:23379,45:26609
Tab7.AddInput = function(arg65, arg66)
	 46:26622
	local Input7 = arg65:AddInput("Status_opt_4", {})
end
 1:1,25:23379,45:26634
local Tab8 = Window:AddTab({ Title = "Player-Status" })
 1:1,25:23379,45:26634
Tab8.AddToggle = function(arg67, arg68)
	 46:26635
	local Toggle8 = arg67:AddToggle("Player_Status_opt_1", {})
end
 1:1,25:23379,45:26634
Tab8.AddDropdown = function(arg69, arg70)
	 46:26639
	local Dropdown8 = arg69:AddDropdown("Player_Status_opt_2", {})
end
 1:1,25:23379,45:26634
Tab8.AddSlider = function(arg71, arg72)
	 46:26643
	local Slider8 = arg71:AddSlider("Player_Status_opt_3", {})
end
 1:1,25:23379,45:26634
Tab8.AddInput = function(arg73, arg74)
	 46:26647
	local Input8 = arg73:AddInput("Player_Status_opt_4", {})
end
 1:1,25:23379,45:26659
local Tab9 = Window:AddTab({ Title = "Fruit" })
 1:1,25:23379,45:26659
Tab9.AddToggle = function(arg75, arg76)
	 46:26660
	local Toggle9 = arg75:AddToggle("Fruit_opt_1", {})
end
 1:1,25:23379,45:26659
Tab9.AddDropdown = function(arg77, arg78)
	 46:26664
	local Dropdown9 = arg77:AddDropdown("Fruit_opt_2", {})
end
 1:1,25:23379,45:26659
Tab9.AddSlider = function(arg79, arg80)
	 46:26668
	local Slider9 = arg79:AddSlider("Fruit_opt_3", {})
end
 1:1,25:23379,45:26659
Tab9.AddInput = function(arg81, arg82)
	 46:26672
	local Input9 = arg81:AddInput("Fruit_opt_4", {})
end
 1:1,25:23379,45:26684
local Tab10 = Window:AddTab({ Title = "Local PLayer" })
 1:1,25:23379,45:26684
Tab10.AddToggle = function(arg83, arg84)
	 46:26685
	local Toggle10 = arg83:AddToggle("Local_PLayer_opt_1", {})
end
 1:1,25:23379,45:26684
Tab10.AddDropdown = function(arg85, arg86)
	 46:26689
	local Dropdown10 = arg85:AddDropdown("Local_PLayer_opt_2", {})
end
 1:1,25:23379,45:26684
Tab10.AddSlider = function(arg87, arg88)
	 46:26693
	local Slider10 = arg87:AddSlider("Local_PLayer_opt_3", {})
end
 1:1,25:23379,45:26684
Tab10.AddInput = function(arg89, arg90)
	 46:26697
	local Input10 = arg89:AddInput("Local_PLayer_opt_4", {})
end
 1:1,25:23379,45:26709
local Tab11 = Window:AddTab({ Title = "Travel" })
 1:1,25:23379,45:26709
Tab11.AddToggle = function(arg91, arg92)
	 46:26710
	local Toggle11 = arg91:AddToggle("Travel_opt_1", {})
end
 1:1,25:23379,45:26709
Tab11.AddDropdown = function(arg93, arg94)
	 46:26714
	local Dropdown11 = arg93:AddDropdown("Travel_opt_2", {})
end
 1:1,25:23379,45:26709
Tab11.AddSlider = function(arg95, arg96)
	 46:26718
	local Slider11 = arg95:AddSlider("Travel_opt_3", {})
end
 1:1,25:23379,45:26709
Tab11.AddInput = function(arg97, arg98)
	 46:26722
	local Input11 = arg97:AddInput("Travel_opt_4", {})
end
 1:1,25:23379,45:26734
local Tab12 = Window:AddTab({ Title = "Esp" })
 1:1,25:23379,45:26734
Tab12.AddToggle = function(arg99, arg100)
	 46:26735
	local Toggle12 = arg99:AddToggle("Esp_opt_1", {})
end
 1:1,25:23379,45:26734
Tab12.AddDropdown = function(arg101, arg102)
	 46:26739
	local Dropdown12 = arg101:AddDropdown("Esp_opt_2", {})
end
 1:1,25:23379,45:26734
Tab12.AddSlider = function(arg103, arg104)
	 46:26743
	local Slider12 = arg103:AddSlider("Esp_opt_3", {})
end
 1:1,25:23379,45:26734
Tab12.AddInput = function(arg105, arg106)
	 46:26747
	local Input12 = arg105:AddInput("Esp_opt_4", {})
end
 1:1,25:23379,45:26759
local Tab13 = Window:AddTab({ Title = "RaceV4-Mirage" })
 1:1,25:23379,45:26759
Tab13.AddToggle = function(arg107, arg108)
	 46:26760
	local Toggle13 = arg107:AddToggle("RaceV4_Mirage_opt_1", {})
end
 1:1,25:23379,45:26759
Tab13.AddDropdown = function(arg109, arg110)
	 46:26764
	local Dropdown13 = arg109:AddDropdown("RaceV4_Mirage_opt_2", {})
end
 1:1,25:23379,45:26759
Tab13.AddSlider = function(arg111, arg112)
	 46:26768
	local Slider13 = arg111:AddSlider("RaceV4_Mirage_opt_3", {})
end
 1:1,25:23379,45:26759
Tab13.AddInput = function(arg113, arg114)
	 46:26772
	local Input13 = arg113:AddInput("RaceV4_Mirage_opt_4", {})
end
 1:1,25:23379,45:26784
local Tab14 = Window:AddTab({ Title = "Sea Events" })
 1:1,25:23379,45:26784
Tab14.AddToggle = function(arg115, arg116)
	 46:26785
	local Toggle14 = arg115:AddToggle("Sea_Events_opt_1", {})
end
 1:1,25:23379,45:26784
Tab14.AddDropdown = function(arg117, arg118)
	 46:26789
	local Dropdown14 = arg117:AddDropdown("Sea_Events_opt_2", {})
end
 1:1,25:23379,45:26784
Tab14.AddSlider = function(arg119, arg120)
	 46:26793
	local Slider14 = arg119:AddSlider("Sea_Events_opt_3", {})
end
 1:1,25:23379,45:26784
Tab14.AddInput = function(arg121, arg122)
	 46:26797
	local Input14 = arg121:AddInput("Sea_Events_opt_4", {})
end
 1:1,25:23379,45:26809
local Tab15 = Window:AddTab({ Title = "Shop" })
 1:1,25:23379,45:26809
Tab15.AddToggle = function(arg123, arg124)
	 46:26810
	local Toggle15 = arg123:AddToggle("Shop_opt_1", {})
end
 1:1,25:23379,45:26809
Tab15.AddDropdown = function(arg125, arg126)
	 46:26814
	local Dropdown15 = arg125:AddDropdown("Shop_opt_2", {})
end
 1:1,25:23379,45:26809
Tab15.AddSlider = function(arg127, arg128)
	 46:26818
	local Slider15 = arg127:AddSlider("Shop_opt_3", {})
end
 1:1,25:23379,45:26809
Tab15.AddInput = function(arg129, arg130)
	 46:26822
	local Input15 = arg129:AddInput("Shop_opt_4", {})
end
 1:1,25:23379,45:26834
local Tab16 = Window:AddTab({ Title = "Other" })
 1:1,25:23379,45:26834
Tab16.AddToggle = function(arg131, arg132)
	 46:26835
	local Toggle16 = arg131:AddToggle("Other_opt_1", {})
end
 1:1,25:23379,45:26834
Tab16.AddDropdown = function(arg133, arg134)
	 46:26839
	local Dropdown16 = arg133:AddDropdown("Other_opt_2", {})
end
 1:1,25:23379,45:26834
Tab16.AddSlider = function(arg135, arg136)
	 46:26843
	local Slider16 = arg135:AddSlider("Other_opt_3", {})
end
 1:1,25:23379,45:26834
Tab16.AddInput = function(arg137, arg138)
	 46:26847
	local Input16 = arg137:AddInput("Other_opt_4", {})
end
 1:1,25:23379
 1:1,25:23379
Tab5:AddSection("Hop Normal")
 1:1,25:23379
Tab5:AddButton({
	Title = "Full Moon [FREE]",
	Description = "click to hop",
	Callback = function(state, arg140)
		result:Notify({ Title = "Hop", Content = "Looking for a server Full Moon...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Mirage Island [FREE]",
	Description = "click to hop",
	Callback = function(state, arg142)
		result:Notify({ Title = "Hop", Content = "Looking for a server Mirage Island...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Saishi [FREE]",
	Description = "click to hop",
	Callback = function(state, arg144)
		result:Notify({ Title = "Hop", Content = "Looking for a server Saishi...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Shizu [FREE]",
	Description = "click to hop",
	Callback = function(state, arg146)
		result:Notify({ Title = "Hop", Content = "Looking for a server Shizu...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Oroshi [FREE]",
	Description = "click to hop",
	Callback = function(state, arg148)
		result:Notify({ Title = "Hop", Content = "Looking for a server Oroshi...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddSection("Hop Boss")
 1:1,25:23379
Tab5:AddButton({
	Title = "Dough King [FREE]",
	Description = "click to hop",
	Callback = function(state, arg150)
		result:Notify({ Title = "Hop", Content = "Looking for a server Dough King...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Cake Prince [FREE]",
	Description = "click to hop",
	Callback = function(state, arg152)
		result:Notify({ Title = "Hop", Content = "Looking for a server Cake Prince...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Darkbeard [FREE]",
	Description = "click to hop",
	Callback = function(state, arg154)
		result:Notify({ Title = "Hop", Content = "Looking for a server Darkbeard...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Cake Queen [FREE]",
	Description = "click to hop",
	Callback = function(state, arg156)
		result:Notify({ Title = "Hop", Content = "Looking for a server Cake Queen...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Cursed Captain [FREE]",
	Description = "click to hop",
	Callback = function(state, arg158)
		result:Notify({ Title = "Hop", Content = "Looking for a server Cursed Captain...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Rip Indra [FREE]",
	Description = "click to hop",
	Callback = function(state, arg160)
		result:Notify({ Title = "Hop", Content = "Looking for a server Rip Indra...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Soul Reaper [FREE]",
	Description = "click to hop",
	Callback = function(state, arg162)
		result:Notify({ Title = "Hop", Content = "Looking for a server Soul Reaper...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379
Tab5:AddButton({
	Title = "Raid Castle [FREE]",
	Description = "click to hop",
	Callback = function(state, arg164)
		result:Notify({ Title = "Hop", Content = "Looking for a server Raid Castle...", Duration = 4 })
		result:Notify({ Title = "Hop", Content = "Executor does not support HTTP requests.", Duration = 6 })
	end
})
 1:1,25:23379,46:27371
local Dropdown17 = Tab2:AddDropdown("Farm_Selected_Method_1", {
	Title = "Selected Method",
	Default = 1,
	Multi = false,
	Values = { "Farm Level", "Farm Bone", "Farm Katakuri", "Farm Tyrant of the Skies", "Farm Near" }
})
 1:1,25:23379
Dropdown17:OnChanged(function(arg165, arg166)
	 54:27381,55:27382
	_G.Level = false
	 54:27381,55:27382
	_G.AutoFarm_Bone = false
	 54:27381,55:27382
	_G.Auto_Cake_Prince = false
	 54:27381,55:27382
	_G.AutoTyrant = false
	 54:27381,55:27382
	_G.AutoFarmNear = false
end)
 1:1,25:23379,46:27431
local Toggle17 = Tab2:AddToggle("Farm_Get_Quest_Farm__Bone_Or_Katakuri__1", { Title = "Get Quest Farm [Bone Or Katakuri]", Description = "", Default = false })
 1:1,25:23379
Toggle17:OnChanged(function(arg167, arg168)
	 56:27445
	_G.AcceptQuestC = arg167
end)
 1:1,25:23379
_G.IgnoreKatakuri = false
 1:1,25:23379,46:27474
local Toggle18 = Tab2:AddToggle("Farm_Ignore_Katakuri_1", { Title = "Ignore Katakuri", Description = "", Default = false })
 1:1,25:23379
_G.IgnoreKatakuri = arg169
 1:1,25:23379
Toggle18:OnChanged(function(arg169, arg170)
end)
 1:1,25:23379,46:27511
local Toggle19 = Tab2:AddToggle("Farm_Start_Farm_1", { Title = "Start Farm", Description = "", Default = false })
 1:1,25:23379
_G.Level = true
 1:1,25:23379
Toggle19:OnChanged(function(arg171, arg172)
	 58:27521,55:27522
	task.wait(0.2)
	 58:27521,55:27522
	tostring(arg165):find("Level")
end)
 1:1,25:23379
task.spawn(function(...)
	 59:27553
	task.wait(0.1)
	 59:27553,60:27574
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 59:27553,60:27574,61:27597
	game.Players.LocalPlayer:FindFirstChild("Data")
	 59:27553,60:27574,61:27597
	game.Players.LocalPlayer.Data:FindFirstChild("Level")
	 59:27553,60:27574,61:27597,62:27642,63:27643
	local NPCs = workspace:FindFirstChild("NPCs")
	 59:27553,60:27574,61:27597,62:27642,63:27643
	local NPCs2 = ReplicatedStorage:FindFirstChild("NPCs")
	 59:27553,60:27574,61:27597,62:27642,63:27643
	NPCs:GetChildren()
	 59:27553,60:27574,61:27597,62:27642,63:27643
	NPCs2:GetChildren()
	 59:27553,60:27574,61:27597,62:27642,64:27682,65:27689
	local Quests = ReplicatedStorage:WaitForChild("Quests")
	 59:27553,60:27574,61:27597,62:27642,64:27682,65:27689
	require(Quests)
	 59:27553,60:27574,61:27597,62:27642,66:27720,67:27727
	local GuideModule2 = ReplicatedStorage:WaitForChild("GuideModule")
	 59:27553,60:27574,61:27597,62:27642,66:27720,67:27727
	require(GuideModule2)
	 59:27553,60:27574,61:27597,62:27642,68:27760
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 59:27553,60:27574,61:27597,62:27642,68:27760,69:27783
	local Enemies = workspace:FindFirstChild("Enemies")
	 59:27553,60:27574,61:27597,62:27642,68:27760,69:27783
	local children2 = Enemies:GetChildren()
	 
	for i3, v3 in ipairs(children2) do
	end
	 59:27553,60:27574,61:27597,62:27642,68:27760
	local NPCs3 = ReplicatedStorage:FindFirstChild("NPCs")
	 59:27553,60:27574,61:27597,62:27642,68:27760
	local children3 = NPCs3:GetChildren()
	 
	for i4, v4 in ipairs(children3) do
	end
	 59:27553,60:27574,61:27597,62:27642
	workspace:FindFirstChild("NightHubCache")
	 59:27553,60:27574,61:27597,62:27642
	workspace.NightHubCache:FindFirstChild("MobSpawns")
	 59:27553,60:27574,61:27597,62:27642
	local children4 = workspace.NightHubCache.MobSpawns:GetChildren()
	 
	for k, v5 in pairs(children4) do
		 59:27553,60:27574,61:27597,62:27642
		v5.Name:lower()
		 59:27553,60:27574,61:27597,62:27642
		v5.Name:lower()
		 59:27553
		task.wait(0.1)
		 59:27553,60:27918
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		 59:27553,60:27918,61:27919
		game.Players.LocalPlayer:FindFirstChild("Data")
		 59:27553,60:27918,61:27919
		game.Players.LocalPlayer.Data:FindFirstChild("Level")
		 59:27553
		task.wait(0.1)
		 
	end
end)
 1:1,25:23379
task.spawn(function(...)
	 70:28112
	task.wait(0.5)
	 70:28112
	task.wait(0.5)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 71:28135
	task.wait(0.5)
	 71:28135
	task.wait(0.5)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 72:28158
	task.wait(0.5)
	 72:28158
	task.wait(0.5)
	 
end)
 1:1,25:23379,73:28177
Tab2:AddSection("Prison Event")
 1:1,25:23379,73:28177
Tab2:AddParagraph({ Title = "Prison Event (39 Quests)", Content = "Check Quest..." })
 1:1,25:23379,73:28177,46:29236
local Toggle20 = Tab2:AddToggle("Farm_Auto_Farm_Hidden_event_quest_1", {
	Title = "Auto Farm Hidden event quest",
	Description = "Auto farm quests 1 through 39 and stop upon completing all quests",
	Default = false
})
 1:1,25:23379,73:28177
Toggle20:OnChanged(function(arg173, arg174)
	 74:29246
	task.spawn(function(...)
		 75:29271
		task.wait(0.05)
		 75:29271
		Toggle20:SetValue(false)
	end)
	 74:29246,76:29288
	result:Notify({ Title = "Teddy Hub", Content = "Work In Sea 1!", Duration = 5 })
end)
 1:1,25:23379,73:28177,46:29319
local Toggle21 = Tab2:AddToggle("Farm_Auto_Farm_Magnet_Token_1", { Title = "Auto Farm Magnet Token", Description = "", Default = false })
 1:1,25:23379,73:28177
Toggle21:OnChanged(function(arg175, arg176)
	 77:29365
	_G.AutoFarmMagnetToken = arg175
	 77:29365
	_G.MagnetSessionID = 1
	 77:29365,78:29382
	local Enemies2 = workspace:FindFirstChild("Enemies")
	 77:29365,78:29382
	Enemies2.ChildAdded:Connect(function(child7)
		 423:45198,79:45199
		child7:FindFirstChild("HumanoidRootPart")
		 423:45198,79:45199,80:45200
		child7:FindFirstChildOfClass("Humanoid")
		 423:45198,79:45199,80:45200
		child7:FindFirstChild("HumanoidRootPart")
		 
	end)
	 77:29365,78:29382
	local children5 = Enemies2:GetChildren()
	 
	for i5, v6 in ipairs(children5) do
		 77:29365,78:29382,79:29401
		v6:FindFirstChild("HumanoidRootPart")
		 77:29365,78:29382,79:29401,80:29410
		v6:FindFirstChildOfClass("Humanoid")
		 77:29365,78:29382,79:29401,80:29410
		v6:FindFirstChild("HumanoidRootPart")
	end
	 
end)
 1:1,25:23379,73:28177,46:29441
local Toggle22 = Tab2:AddToggle("Farm_Auto_Random_Magnet_Token_1", { Title = "Auto Random Magnet Token", Description = "", Default = false })
 1:1,25:23379,73:28177
Toggle22:OnChanged(function(arg177, arg178)
	 81:29451
	_G.AutoRandomMagnetFruit = arg177
	 81:29451
	task.spawn(function(...)
		 82:29464,83:29475
		local module5 = require(ReplicatedStorage.Modules.Net)
		 82:29464,83:29475
		local result6 = module5:RemoteFunction("GachaNetworkRF")
		 82:29464,83:29475
		result6:InvokeServer({ BoxName = "MagnetEventGacha26", Context = "Check" })
		 82:29464
		task.wait(5)
		 82:29464,83:29506
		local module6 = require(ReplicatedStorage.Modules.Net)
		 82:29464,83:29506
		local result7 = module6:RemoteFunction("GachaNetworkRF")
		 82:29464,83:29506
		result7:InvokeServer({ BoxName = "MagnetEventGacha26", Context = "Check" })
		 82:29464
		task.wait(5)
		 
	end)
end)
 1:1,25:23379,73:28177
task.spawn(function(...)
	 84:29516
	ReplicatedStorage.Remotes:WaitForChild("BonusMomentsRemoteFunction", 10)
	 84:29516
	ReplicatedStorage.Remotes:WaitForChild("BonusMomentsRemoteEvent", 10)
end)
 1:1,25:23379
Tab2:AddSection("Dragon Storm")
 1:1,25:23379
Tab2:AddButton({
	Title = "Dragon Storm No Cooldown",
	Description = "",
	Callback = function(state, arg180)
		task.spawn(function(...)
		end)
	end
})
 1:1,25:23379
Tab2:AddSection("Materials")
 1:1,25:23379
task.spawn(function(...)
	 87:29763
	task.wait(0.5)
	 87:29763
	task.wait(0.5)
	 
end)
 1:1,25:23379
getgenv().MaterialTargetInfo = ""
 1:1,25:23379,46:29940
local Dropdown18 = Tab2:AddDropdown("Farm_Selected_Material_1", { Title = "Selected Material", Multi = false, Values = {} })
 1:1,25:23379
Dropdown18:OnChanged(function(arg181, arg182)
	 89:29954
	getgenv().SelectMaterial = arg181
end)
 1:1,25:23379,46:29977
local Toggle23 = Tab2:AddToggle("Farm_Auto_Materials_1", { Title = "Auto Materials", Description = "", Default = false })
 1:1,25:23379
Toggle23:OnChanged(function(arg183, arg184)
	 90:29991
	getgenv().AutoMaterial = arg183
end)
 1:1,25:23379
task.spawn(function(...)
	 91:30004
	task.wait(0.5)
	 91:30004,92:30033,68:30045
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 91:30004,92:30033,68:30045,69:30046
	local Enemies3 = workspace:FindFirstChild("Enemies")
	 91:30004,92:30033,68:30045,69:30046
	local children6 = Enemies3:GetChildren()
	 
	for i6, v7 in ipairs(children6) do
	end
	 91:30004,92:30033,68:30045
	local NPCs4 = ReplicatedStorage:FindFirstChild("NPCs")
	 91:30004,92:30033,68:30045
	local children7 = NPCs4:GetChildren()
	 
	for i7, v8 in ipairs(children7) do
	end
	 91:30004,92:30033,94:30055
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 91:30004,92:30033,94:30055
	local _WorldOrigin = workspace:FindFirstChild("_WorldOrigin")
	 91:30004,92:30033,94:30055
	local EnemySpawns = _WorldOrigin:FindFirstChild("EnemySpawns")
	 91:30004,92:30033,94:30055
	local children8 = EnemySpawns:GetChildren()
	 
	for k2, v9 in pairs(children8) do
		 91:30004
		task.wait(0.5)
		 91:30004,92:30100,68:30102
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		 
		for i8, v10 in ipairs(children6) do
		end
		 91:30004,92:30100,68:30102
		local NPCs5 = ReplicatedStorage:FindFirstChild("NPCs")
		 91:30004,92:30100,68:30102
		local children9 = NPCs5:GetChildren()
		 
		for i9, v11 in ipairs(children9) do
		end
		 91:30004,92:30100,94:30104
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		 91:30004,92:30100,94:30104
		local _WorldOrigin2 = workspace:FindFirstChild("_WorldOrigin")
		 91:30004,92:30100,94:30104
		local EnemySpawns2 = _WorldOrigin2:FindFirstChild("EnemySpawns")
		 91:30004,92:30100,94:30104
		local children10 = EnemySpawns2:GetChildren()
		 
		for k3, v12 in pairs(children10) do
		end
		 91:30004
		task.wait(0.5)
		 
	end
end)
 1:1,25:23379
Tab2:AddSection(" Mastery")
 1:1,25:23379,46:30140
local Dropdown19 = Tab2:AddDropdown("Farm_Selected_Island_1", { Title = "Selected Island", Default = 1, Multi = false, Values = { "Level", "Cake", "Bone" } })
 1:1,25:23379
Dropdown19:OnChanged(function(arg185, arg186)
end)
 1:1,25:23379,46:30171
local Toggle24 = Tab2:AddToggle("Farm_Auto_Mastery_Fruits_1", { Title = "Auto Mastery Fruits", Description = "", Default = false })
 1:1,25:23379
Toggle24:OnChanged(function(arg187, arg188)
	 96:30181
	_G.FarmMastery_Dev = arg187
end)
 1:1,25:23379
RunService.Heartbeat:Connect(function(deltaTime)
	 424:45201,425:45216
	local Notifications2 = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Notifications")
	 424:45201,425:45216
	local children228 = Notifications2:GetChildren()
	 
	for i438, v659 in ipairs(children228) do
	end
end)
 1:1,25:23379
task.spawn(function(...)
	 97:30204
	task.wait(0.1)
	 97:30204
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:30253
local Toggle25 = Tab2:AddToggle("Farm_Auto_Mastery_Gun_1", { Title = "Auto Mastery Gun", Description = "", Default = false })
 1:1,25:23379
Toggle25:OnChanged(function(arg189, arg190)
	 99:30263
	_G.FarmMastery_G = arg189
end)
 1:1,25:23379
task.spawn(function(...)
	 100:30276
	task.wait(0.1)
	 100:30276,101:30297
	module4:GetIfInitialized()
	 100:30276,101:30297,102:30330,103:30331,104:30344
	local module7 = require(ReplicatedStorage.Controllers.UI.Inventory)
	 100:30276,101:30297,102:30330,103:30331,104:30344
	local module8 = require(ReplicatedStorage.ItemConfig)
	 100:30276,101:30297,102:30330,103:30331,104:30344
	local module9 = require(ReplicatedStorage.Util.ItemReplication)
	 100:30276,101:30297,102:30330
	module7:GetIfInitialized()
	 100:30276,101:30297,102:30330
	local tiles = module7:GetTiles()
	 
	for i12, v16 in ipairs(tiles) do
		 100:30276,101:30297,102:30330,105:30375
		local result8 = module8.match(v16.ItemId)
		 100:30276,101:30297,102:30330,105:30375
		local result9 = result8:asNullable()
		 100:30276,101:30297,102:30330
		local result10 = tostring(result9.Type):lower()
		 100:30276,101:30297,102:30330
		result10:find("gun")
		 100:30276,101:30297,102:30330
		local result11 = tostring(result9.Index.StorageKey):lower()
		 100:30276,101:30297,102:30330
		result11:find("gun")
		 100:30276,101:30297,102:30330
		tostring(result9.Index.StorageKey):match("^(.-)%s*%[[%w]+%-%d+%]%s*$")
		 100:30276,101:30297,102:30330,106:30444
		module9.Mastery.readClient(v16.ItemId, v16.NetworkedUID)
		 100:30276
		print("[DEBUG Gun] Error in pcall:", "LPH:5619: LPH:698: [string \"Luraph\"]:1: attempt to compare userdata < number")
		 100:30276
		task.wait(0.1)
		 100:30276,101:30459
		module4:GetIfInitialized()
		 100:30276,101:30459,102:30460
		module7:GetIfInitialized()
		 100:30276,101:30459,102:30460
		local tiles2 = module7:GetTiles()
		 
		for i13, v17 in ipairs(tiles2) do
			 100:30276,101:30459,102:30460,105:30462
			local result12 = module8.match(v17.ItemId)
			 100:30276,101:30459,102:30460,105:30462
			local result13 = result12:asNullable()
			 100:30276,101:30459,102:30460
			local result14 = tostring(result13.Type):lower()
			 100:30276,101:30459,102:30460
			result14:find("gun")
			 100:30276,101:30459,102:30460
			local result15 = tostring(result13.Index.StorageKey):lower()
			 100:30276,101:30459,102:30460
			result15:find("gun")
			 100:30276,101:30459,102:30460
			tostring(result13.Index.StorageKey):match("^(.-)%s*%[[%w]+%-%d+%]%s*$")
			 100:30276,101:30459,102:30460,106:30463
			module9.Mastery.readClient(v17.ItemId, v17.NetworkedUID)
			 100:30276
			print("[DEBUG Gun] Error in pcall:", "LPH:5619: LPH:698: [string \"Luraph\"]:1: attempt to compare userdata < number")
		end
		 100:30276
		task.wait(0.1)
		 
	end
end)
 1:1,25:23379,46:30487
local Toggle26 = Tab2:AddToggle("Farm_Auto_Mastery_All_Sword_1", { Title = "Auto Mastery All Sword", Description = "", Default = false })
 1:1,25:23379
Toggle26:OnChanged(function(arg191, arg192)
	 107:30497
	_G.FarmMastery_S = arg191
end)
 1:1,25:23379
task.spawn(function(...)
	 108:30510
	task.wait(0.1)
	 108:30510,109:30531
	module4:GetIfInitialized()
	 108:30510,109:30531,102:30564
	module7:GetIfInitialized()
	 108:30510,109:30531,102:30564
	local tiles3 = module7:GetTiles()
	 
	for i15, v19 in ipairs(tiles3) do
		 108:30510,109:30531,102:30564,105:30566
		local result16 = module8.match(v19.ItemId)
		 108:30510,109:30531,102:30564,105:30566
		local result17 = result16:asNullable()
		 108:30510,109:30531,102:30564
		local result18 = tostring(result17.Type):lower()
		 108:30510,109:30531,102:30564
		result18:find("sword")
		 108:30510,109:30531,102:30564
		local result19 = tostring(result17.Index.StorageKey):lower()
		 108:30510,109:30531,102:30564
		result19:find("sword")
		 108:30510,109:30531,102:30564
		tostring(result17.Index.StorageKey):match("^(.-)%s*%[[%w]+%-%d+%]%s*$")
		 108:30510,109:30531,102:30564,106:30577
		module9.Mastery.readClient(v19.ItemId, v19.NetworkedUID)
		 108:30510
		print("[DEBUG Sword] Error in pcall:", "LPH:5701: LPH:698: [string \"Luraph\"]:1: attempt to compare userdata < number")
	end
	 108:30510
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab3:AddSection("Event Raids")
 1:1,25:23379,46:30611
local Toggle27 = Tab3:AddToggle("Stack_Auto_Farm_Auto_Factory_Raid_1", { Title = "Auto Factory Raid", Description = "", Default = false })
 1:1,25:23379
Toggle27:OnChanged(function(arg193, arg194)
	 110:30621
	_G.AutoFactory = arg193
end)
 1:1,25:23379
task.spawn(function(...)
	 111:30634
	task.wait(0.1)
	 111:30634,112:30651,68:30660
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i17, v21 in ipairs(children6) do
	end
	 111:30634,112:30651,68:30660
	local NPCs6 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30651,68:30660
	local children11 = NPCs6:GetChildren()
	 
	for i18, v22 in ipairs(children11) do
	end
	 111:30634
	_G.currentTweenID = 1
	 111:30634
	task.wait(0.1)
	 111:30634,112:30693,68:30694
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i19, v23 in ipairs(children6) do
	end
	 111:30634,112:30693,68:30694
	local NPCs7 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30693,68:30694
	local children12 = NPCs7:GetChildren()
	 
	for i20, v24 in ipairs(children12) do
	end
	 111:30634
	_G.currentTweenID = 2
	 111:30634
	task.wait(0.1)
	 111:30634,112:30697,68:30698
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i21, v25 in ipairs(children6) do
	end
	 111:30634,112:30697,68:30698
	local NPCs8 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30697,68:30698
	local children13 = NPCs8:GetChildren()
	 
	for i22, v26 in ipairs(children13) do
	end
	 111:30634
	_G.currentTweenID = 3
	 111:30634
	task.wait(0.1)
	 111:30634,112:30701,68:30702
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i23, v27 in ipairs(children6) do
	end
	 111:30634,112:30701,68:30702
	local NPCs9 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30701,68:30702
	local children14 = NPCs9:GetChildren()
	 
	for i24, v28 in ipairs(children14) do
	end
	 111:30634
	_G.currentTweenID = 4
	 111:30634
	task.wait(0.1)
	 111:30634,112:30705,68:30706
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i25, v29 in ipairs(children6) do
	end
	 111:30634,112:30705,68:30706
	local NPCs10 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30705,68:30706
	local children15 = NPCs10:GetChildren()
	 
	for i26, v30 in ipairs(children15) do
	end
	 111:30634
	_G.currentTweenID = 5
	 111:30634
	task.wait(0.1)
	 111:30634,112:30709,68:30710
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i27, v31 in ipairs(children6) do
	end
	 111:30634,112:30709,68:30710
	local NPCs11 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30709,68:30710
	local children16 = NPCs11:GetChildren()
	 
	for i28, v32 in ipairs(children16) do
	end
	 111:30634
	_G.currentTweenID = 6
	 111:30634
	task.wait(0.1)
	 111:30634,112:30713,68:30714
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i29, v33 in ipairs(children6) do
	end
	 111:30634,112:30713,68:30714
	local NPCs12 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30713,68:30714
	local children17 = NPCs12:GetChildren()
	 
	for i30, v34 in ipairs(children17) do
	end
	 111:30634
	_G.currentTweenID = 7
	 111:30634
	task.wait(0.1)
	 111:30634,112:30717,68:30718
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i31, v35 in ipairs(children6) do
	end
	 111:30634,112:30717,68:30718
	local NPCs13 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30717,68:30718
	local children18 = NPCs13:GetChildren()
	 
	for i32, v36 in ipairs(children18) do
	end
	 111:30634
	_G.currentTweenID = 8
	 111:30634
	task.wait(0.1)
	 111:30634,112:30721,68:30722
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i33, v37 in ipairs(children6) do
	end
	 111:30634,112:30721,68:30722
	local NPCs14 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30721,68:30722
	local children19 = NPCs14:GetChildren()
	 
	for i34, v38 in ipairs(children19) do
	end
	 111:30634
	_G.currentTweenID = 9
	 111:30634
	task.wait(0.1)
	 111:30634,112:30725,68:30726
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i35, v39 in ipairs(children6) do
	end
	 111:30634,112:30725,68:30726
	local NPCs15 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30725,68:30726
	local children20 = NPCs15:GetChildren()
	 
	for i36, v40 in ipairs(children20) do
	end
	 111:30634
	_G.currentTweenID = 10
	 111:30634
	task.wait(0.1)
	 111:30634,112:30729,68:30730
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i37, v41 in ipairs(children6) do
	end
	 111:30634,112:30729,68:30730
	local NPCs16 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30729,68:30730
	local children21 = NPCs16:GetChildren()
	 
	for i38, v42 in ipairs(children21) do
	end
	 111:30634
	_G.currentTweenID = 11
	 111:30634
	task.wait(0.1)
	 111:30634,112:30733,68:30734
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i39, v43 in ipairs(children6) do
	end
	 111:30634,112:30733,68:30734
	local NPCs17 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30733,68:30734
	local children22 = NPCs17:GetChildren()
	 
	for i40, v44 in ipairs(children22) do
	end
	 111:30634
	_G.currentTweenID = 12
	 111:30634
	task.wait(0.1)
	 111:30634,112:30737,68:30738
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i41, v45 in ipairs(children6) do
	end
	 111:30634,112:30737,68:30738
	local NPCs18 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30737,68:30738
	local children23 = NPCs18:GetChildren()
	 
	for i42, v46 in ipairs(children23) do
	end
	 111:30634
	_G.currentTweenID = 13
	 111:30634
	task.wait(0.1)
	 111:30634,112:30741,68:30742
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i43, v47 in ipairs(children6) do
	end
	 111:30634,112:30741,68:30742
	local NPCs19 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30741,68:30742
	local children24 = NPCs19:GetChildren()
	 
	for i44, v48 in ipairs(children24) do
	end
	 111:30634
	_G.currentTweenID = 14
	 111:30634
	task.wait(0.1)
	 111:30634,112:30745,68:30746
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i45, v49 in ipairs(children6) do
	end
	 111:30634,112:30745,68:30746
	local NPCs20 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30745,68:30746
	local children25 = NPCs20:GetChildren()
	 
	for i46, v50 in ipairs(children25) do
	end
	 111:30634
	_G.currentTweenID = 15
	 111:30634
	task.wait(0.1)
	 111:30634,112:30749,68:30750
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i47, v51 in ipairs(children6) do
	end
	 111:30634,112:30749,68:30750
	local NPCs21 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30749,68:30750
	local children26 = NPCs21:GetChildren()
	 
	for i48, v52 in ipairs(children26) do
	end
	 111:30634
	_G.currentTweenID = 16
	 111:30634
	task.wait(0.1)
	 111:30634,112:30753,68:30754
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i49, v53 in ipairs(children6) do
	end
	 111:30634,112:30753,68:30754
	local NPCs22 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30753,68:30754
	local children27 = NPCs22:GetChildren()
	 
	for i50, v54 in ipairs(children27) do
	end
	 111:30634
	_G.currentTweenID = 17
	 111:30634
	task.wait(0.1)
	 111:30634,112:30757,68:30758
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i51, v55 in ipairs(children6) do
	end
	 111:30634,112:30757,68:30758
	local NPCs23 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30757,68:30758
	local children28 = NPCs23:GetChildren()
	 
	for i52, v56 in ipairs(children28) do
	end
	 111:30634
	_G.currentTweenID = 18
	 111:30634
	task.wait(0.1)
	 111:30634,112:30761,68:30762
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i53, v57 in ipairs(children6) do
	end
	 111:30634,112:30761,68:30762
	local NPCs24 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30761,68:30762
	local children29 = NPCs24:GetChildren()
	 
	for i54, v58 in ipairs(children29) do
	end
	 111:30634
	_G.currentTweenID = 19
	 111:30634
	task.wait(0.1)
	 111:30634,112:30765,68:30766
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i55, v59 in ipairs(children6) do
	end
	 111:30634,112:30765,68:30766
	local NPCs25 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30765,68:30766
	local children30 = NPCs25:GetChildren()
	 
	for i56, v60 in ipairs(children30) do
	end
	 111:30634
	_G.currentTweenID = 20
	 111:30634
	task.wait(0.1)
	 111:30634,112:30769,68:30770
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i57, v61 in ipairs(children6) do
	end
	 111:30634,112:30769,68:30770
	local NPCs26 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30769,68:30770
	local children31 = NPCs26:GetChildren()
	 
	for i58, v62 in ipairs(children31) do
	end
	 111:30634
	_G.currentTweenID = 21
	 111:30634
	task.wait(0.1)
	 111:30634,112:30773,68:30774
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i59, v63 in ipairs(children6) do
	end
	 111:30634,112:30773,68:30774
	local NPCs27 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30773,68:30774
	local children32 = NPCs27:GetChildren()
	 
	for i60, v64 in ipairs(children32) do
	end
	 111:30634
	_G.currentTweenID = 22
	 111:30634
	task.wait(0.1)
	 111:30634,112:30777,68:30778
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i61, v65 in ipairs(children6) do
	end
	 111:30634,112:30777,68:30778
	local NPCs28 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30777,68:30778
	local children33 = NPCs28:GetChildren()
	 
	for i62, v66 in ipairs(children33) do
	end
	 111:30634
	_G.currentTweenID = 23
	 111:30634
	task.wait(0.1)
	 111:30634,112:30781,68:30782
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i63, v67 in ipairs(children6) do
	end
	 111:30634,112:30781,68:30782
	local NPCs29 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30781,68:30782
	local children34 = NPCs29:GetChildren()
	 
	for i64, v68 in ipairs(children34) do
	end
	 111:30634
	_G.currentTweenID = 24
	 111:30634
	task.wait(0.1)
	 111:30634,112:30785,68:30786
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i65, v69 in ipairs(children6) do
	end
	 111:30634,112:30785,68:30786
	local NPCs30 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30785,68:30786
	local children35 = NPCs30:GetChildren()
	 
	for i66, v70 in ipairs(children35) do
	end
	 111:30634
	_G.currentTweenID = 25
	 111:30634
	task.wait(0.1)
	 111:30634,112:30789,68:30790
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i67, v71 in ipairs(children6) do
	end
	 111:30634,112:30789,68:30790
	local NPCs31 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30789,68:30790
	local children36 = NPCs31:GetChildren()
	 
	for i68, v72 in ipairs(children36) do
	end
	 111:30634
	_G.currentTweenID = 26
	 111:30634
	task.wait(0.1)
	 111:30634,112:30793,68:30794
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i69, v73 in ipairs(children6) do
	end
	 111:30634,112:30793,68:30794
	local NPCs32 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30793,68:30794
	local children37 = NPCs32:GetChildren()
	 
	for i70, v74 in ipairs(children37) do
	end
	 111:30634
	_G.currentTweenID = 27
	 111:30634
	task.wait(0.1)
	 111:30634,112:30797,68:30798
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i71, v75 in ipairs(children6) do
	end
	 111:30634,112:30797,68:30798
	local NPCs33 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30797,68:30798
	local children38 = NPCs33:GetChildren()
	 
	for i72, v76 in ipairs(children38) do
	end
	 111:30634
	_G.currentTweenID = 28
	 111:30634
	task.wait(0.1)
	 111:30634,112:30801,68:30802
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i73, v77 in ipairs(children6) do
	end
	 111:30634,112:30801,68:30802
	local NPCs34 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30801,68:30802
	local children39 = NPCs34:GetChildren()
	 
	for i74, v78 in ipairs(children39) do
	end
	 111:30634
	_G.currentTweenID = 29
	 111:30634
	task.wait(0.1)
	 111:30634,112:30805,68:30806
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i75, v79 in ipairs(children6) do
	end
	 111:30634,112:30805,68:30806
	local NPCs35 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30805,68:30806
	local children40 = NPCs35:GetChildren()
	 
	for i76, v80 in ipairs(children40) do
	end
	 111:30634
	_G.currentTweenID = 30
	 111:30634
	task.wait(0.1)
	 111:30634,112:30809,68:30810
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i77, v81 in ipairs(children6) do
	end
	 111:30634,112:30809,68:30810
	local NPCs36 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30809,68:30810
	local children41 = NPCs36:GetChildren()
	 
	for i78, v82 in ipairs(children41) do
	end
	 111:30634
	_G.currentTweenID = 31
	 111:30634
	task.wait(0.1)
	 111:30634,112:30813,68:30814
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i79, v83 in ipairs(children6) do
	end
	 111:30634,112:30813,68:30814
	local NPCs37 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30813,68:30814
	local children42 = NPCs37:GetChildren()
	 
	for i80, v84 in ipairs(children42) do
	end
	 111:30634
	_G.currentTweenID = 32
	 111:30634
	task.wait(0.1)
	 111:30634,112:30817,68:30818
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i81, v85 in ipairs(children6) do
	end
	 111:30634,112:30817,68:30818
	local NPCs38 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30817,68:30818
	local children43 = NPCs38:GetChildren()
	 
	for i82, v86 in ipairs(children43) do
	end
	 111:30634
	_G.currentTweenID = 33
	 111:30634
	task.wait(0.1)
	 111:30634,112:30821,68:30822
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i83, v87 in ipairs(children6) do
	end
	 111:30634,112:30821,68:30822
	local NPCs39 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30821,68:30822
	local children44 = NPCs39:GetChildren()
	 
	for i84, v88 in ipairs(children44) do
	end
	 111:30634
	_G.currentTweenID = 34
	 111:30634
	task.wait(0.1)
	 111:30634,112:30825,68:30826
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i85, v89 in ipairs(children6) do
	end
	 111:30634,112:30825,68:30826
	local NPCs40 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30825,68:30826
	local children45 = NPCs40:GetChildren()
	 
	for i86, v90 in ipairs(children45) do
	end
	 111:30634
	_G.currentTweenID = 35
	 111:30634
	task.wait(0.1)
	 111:30634,112:30829,68:30830
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i87, v91 in ipairs(children6) do
	end
	 111:30634,112:30829,68:30830
	local NPCs41 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30829,68:30830
	local children46 = NPCs41:GetChildren()
	 
	for i88, v92 in ipairs(children46) do
	end
	 111:30634
	_G.currentTweenID = 36
	 111:30634
	task.wait(0.1)
	 111:30634,112:30833,68:30834
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i89, v93 in ipairs(children6) do
	end
	 111:30634,112:30833,68:30834
	local NPCs42 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30833,68:30834
	local children47 = NPCs42:GetChildren()
	 
	for i90, v94 in ipairs(children47) do
	end
	 111:30634
	_G.currentTweenID = 37
	 111:30634
	task.wait(0.1)
	 111:30634,112:30837,68:30838
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i91, v95 in ipairs(children6) do
	end
	 111:30634,112:30837,68:30838
	local NPCs43 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30837,68:30838
	local children48 = NPCs43:GetChildren()
	 
	for i92, v96 in ipairs(children48) do
	end
	 111:30634
	_G.currentTweenID = 38
	 111:30634
	task.wait(0.1)
	 111:30634,112:30841,68:30842
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i93, v97 in ipairs(children6) do
	end
	 111:30634,112:30841,68:30842
	local NPCs44 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30841,68:30842
	local children49 = NPCs44:GetChildren()
	 
	for i94, v98 in ipairs(children49) do
	end
	 111:30634
	_G.currentTweenID = 39
	 111:30634
	task.wait(0.1)
	 111:30634,112:30845,68:30846
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i95, v99 in ipairs(children6) do
	end
	 111:30634,112:30845,68:30846
	local NPCs45 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30845,68:30846
	local children50 = NPCs45:GetChildren()
	 
	for i96, v100 in ipairs(children50) do
	end
	 111:30634
	_G.currentTweenID = 40
	 111:30634
	task.wait(0.1)
	 111:30634,112:30849,68:30850
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i97, v101 in ipairs(children6) do
	end
	 111:30634,112:30849,68:30850
	local NPCs46 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30849,68:30850
	local children51 = NPCs46:GetChildren()
	 
	for i98, v102 in ipairs(children51) do
	end
	 111:30634
	_G.currentTweenID = 41
	 111:30634
	task.wait(0.1)
	 111:30634,112:30853,68:30854
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i99, v103 in ipairs(children6) do
	end
	 111:30634,112:30853,68:30854
	local NPCs47 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30853,68:30854
	local children52 = NPCs47:GetChildren()
	 
	for i100, v104 in ipairs(children52) do
	end
	 111:30634
	_G.currentTweenID = 42
	 111:30634
	task.wait(0.1)
	 111:30634,112:30857,68:30858
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i101, v105 in ipairs(children6) do
	end
	 111:30634,112:30857,68:30858
	local NPCs48 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30857,68:30858
	local children53 = NPCs48:GetChildren()
	 
	for i102, v106 in ipairs(children53) do
	end
	 111:30634
	_G.currentTweenID = 43
	 111:30634
	task.wait(0.1)
	 111:30634,112:30861,68:30862
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i103, v107 in ipairs(children6) do
	end
	 111:30634,112:30861,68:30862
	local NPCs49 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30861,68:30862
	local children54 = NPCs49:GetChildren()
	 
	for i104, v108 in ipairs(children54) do
	end
	 111:30634
	_G.currentTweenID = 44
	 111:30634
	task.wait(0.1)
	 111:30634,112:30865,68:30866
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i105, v109 in ipairs(children6) do
	end
	 111:30634,112:30865,68:30866
	local NPCs50 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30865,68:30866
	local children55 = NPCs50:GetChildren()
	 
	for i106, v110 in ipairs(children55) do
	end
	 111:30634
	_G.currentTweenID = 45
	 111:30634
	task.wait(0.1)
	 111:30634,112:30869,68:30870
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i107, v111 in ipairs(children6) do
	end
	 111:30634,112:30869,68:30870
	local NPCs51 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30869,68:30870
	local children56 = NPCs51:GetChildren()
	 
	for i108, v112 in ipairs(children56) do
	end
	 111:30634
	_G.currentTweenID = 46
	 111:30634
	task.wait(0.1)
	 111:30634,112:30873,68:30874
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i109, v113 in ipairs(children6) do
	end
	 111:30634,112:30873,68:30874
	local NPCs52 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30873,68:30874
	local children57 = NPCs52:GetChildren()
	 
	for i110, v114 in ipairs(children57) do
	end
	 111:30634
	_G.currentTweenID = 47
	 111:30634
	task.wait(0.1)
	 111:30634,112:30877,68:30878
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i111, v115 in ipairs(children6) do
	end
	 111:30634,112:30877,68:30878
	local NPCs53 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30877,68:30878
	local children58 = NPCs53:GetChildren()
	 
	for i112, v116 in ipairs(children58) do
	end
	 111:30634
	_G.currentTweenID = 48
	 111:30634
	task.wait(0.1)
	 111:30634,112:30881,68:30882
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i113, v117 in ipairs(children6) do
	end
	 111:30634,112:30881,68:30882
	local NPCs54 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30881,68:30882
	local children59 = NPCs54:GetChildren()
	 
	for i114, v118 in ipairs(children59) do
	end
	 111:30634
	_G.currentTweenID = 49
	 111:30634
	task.wait(0.1)
	 111:30634,112:30885,68:30886
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i115, v119 in ipairs(children6) do
	end
	 111:30634,112:30885,68:30886
	local NPCs55 = ReplicatedStorage:FindFirstChild("NPCs")
	 111:30634,112:30885,68:30886
	local children60 = NPCs55:GetChildren()
	 
	for i116, v120 in ipairs(children60) do
	end
	 111:30634
	_G.currentTweenID = 50
	 111:30634
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:30907
local Toggle28 = Tab3:AddToggle("Stack_Auto_Farm_Auto_Pirate_Raid_1", { Title = "Auto Pirate Raid", Description = "", Default = false })
 1:1,25:23379
Toggle28:OnChanged(function(arg195, arg196)
	 114:30917
	_G.AutoRaidCastle = arg195
end)
 1:1,25:23379
task.spawn(function(...)
	 115:30940
	task.wait(0.1)
	 
	for k5, v121 in pairs(children6) do
		 115:30940,116:30961,117:30962
		v121:FindFirstChild("Humanoid")
		 115:30940,116:30961,117:30962
		v121:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:30961,118:31004
	v121:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 51
	 115:30940
	task.wait(0.1)
	 
	for k6, v122 in pairs(children6) do
		 115:30940,116:31044,117:31045
		v122:FindFirstChild("Humanoid")
		 115:30940,116:31044,117:31045
		v122:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31044,118:31047
	v122:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 52
	 115:30940
	task.wait(0.1)
	 
	for k7, v123 in pairs(children6) do
		 115:30940,116:31049,117:31050
		v123:FindFirstChild("Humanoid")
		 115:30940,116:31049,117:31050
		v123:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31049,118:31052
	v123:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 53
	 115:30940
	task.wait(0.1)
	 
	for k8, v124 in pairs(children6) do
		 115:30940,116:31054,117:31055
		v124:FindFirstChild("Humanoid")
		 115:30940,116:31054,117:31055
		v124:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31054,118:31057
	v124:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 54
	 115:30940
	task.wait(0.1)
	 
	for k9, v125 in pairs(children6) do
		 115:30940,116:31059,117:31060
		v125:FindFirstChild("Humanoid")
		 115:30940,116:31059,117:31060
		v125:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31059,118:31062
	v125:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 55
	 115:30940
	task.wait(0.1)
	 
	for k10, v126 in pairs(children6) do
		 115:30940,116:31064,117:31065
		v126:FindFirstChild("Humanoid")
		 115:30940,116:31064,117:31065
		v126:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31064,118:31067
	v126:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 56
	 115:30940
	task.wait(0.1)
	 
	for k11, v127 in pairs(children6) do
		 115:30940,116:31069,117:31070
		v127:FindFirstChild("Humanoid")
		 115:30940,116:31069,117:31070
		v127:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31069,118:31072
	v127:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 57
	 115:30940
	task.wait(0.1)
	 
	for k12, v128 in pairs(children6) do
		 115:30940,116:31074,117:31075
		v128:FindFirstChild("Humanoid")
		 115:30940,116:31074,117:31075
		v128:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31074,118:31077
	v128:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 58
	 115:30940
	task.wait(0.1)
	 
	for k13, v129 in pairs(children6) do
		 115:30940,116:31079,117:31080
		v129:FindFirstChild("Humanoid")
		 115:30940,116:31079,117:31080
		v129:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31079,118:31082
	v129:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 59
	 115:30940
	task.wait(0.1)
	 
	for k14, v130 in pairs(children6) do
		 115:30940,116:31084,117:31085
		v130:FindFirstChild("Humanoid")
		 115:30940,116:31084,117:31085
		v130:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31084,118:31087
	v130:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 60
	 115:30940
	task.wait(0.1)
	 
	for k15, v131 in pairs(children6) do
		 115:30940,116:31089,117:31090
		v131:FindFirstChild("Humanoid")
		 115:30940,116:31089,117:31090
		v131:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31089,118:31092
	v131:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 61
	 115:30940
	task.wait(0.1)
	 
	for k16, v132 in pairs(children6) do
		 115:30940,116:31094,117:31095
		v132:FindFirstChild("Humanoid")
		 115:30940,116:31094,117:31095
		v132:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31094,118:31097
	v132:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 62
	 115:30940
	task.wait(0.1)
	 
	for k17, v133 in pairs(children6) do
		 115:30940,116:31099,117:31100
		v133:FindFirstChild("Humanoid")
		 115:30940,116:31099,117:31100
		v133:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31099,118:31102
	v133:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 63
	 115:30940
	task.wait(0.1)
	 
	for k18, v134 in pairs(children6) do
		 115:30940,116:31104,117:31105
		v134:FindFirstChild("Humanoid")
		 115:30940,116:31104,117:31105
		v134:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31104,118:31107
	v134:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 64
	 115:30940
	task.wait(0.1)
	 
	for k19, v135 in pairs(children6) do
		 115:30940,116:31109,117:31110
		v135:FindFirstChild("Humanoid")
		 115:30940,116:31109,117:31110
		v135:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31109,118:31112
	v135:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 65
	 115:30940
	task.wait(0.1)
	 
	for k20, v136 in pairs(children6) do
		 115:30940,116:31114,117:31115
		v136:FindFirstChild("Humanoid")
		 115:30940,116:31114,117:31115
		v136:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31114,118:31117
	v136:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 66
	 115:30940
	task.wait(0.1)
	 
	for k21, v137 in pairs(children6) do
		 115:30940,116:31119,117:31120
		v137:FindFirstChild("Humanoid")
		 115:30940,116:31119,117:31120
		v137:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31119,118:31122
	v137:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 67
	 115:30940
	task.wait(0.1)
	 
	for k22, v138 in pairs(children6) do
		 115:30940,116:31124,117:31125
		v138:FindFirstChild("Humanoid")
		 115:30940,116:31124,117:31125
		v138:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31124,118:31127
	v138:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 68
	 115:30940
	task.wait(0.1)
	 
	for k23, v139 in pairs(children6) do
		 115:30940,116:31129,117:31130
		v139:FindFirstChild("Humanoid")
		 115:30940,116:31129,117:31130
		v139:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31129,118:31132
	v139:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 69
	 115:30940
	task.wait(0.1)
	 
	for k24, v140 in pairs(children6) do
		 115:30940,116:31134,117:31135
		v140:FindFirstChild("Humanoid")
		 115:30940,116:31134,117:31135
		v140:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31134,118:31137
	v140:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 70
	 115:30940
	task.wait(0.1)
	 
	for k25, v141 in pairs(children6) do
		 115:30940,116:31139,117:31140
		v141:FindFirstChild("Humanoid")
		 115:30940,116:31139,117:31140
		v141:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31139,118:31142
	v141:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 71
	 115:30940
	task.wait(0.1)
	 
	for k26, v142 in pairs(children6) do
		 115:30940,116:31144,117:31145
		v142:FindFirstChild("Humanoid")
		 115:30940,116:31144,117:31145
		v142:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31144,118:31147
	v142:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 72
	 115:30940
	task.wait(0.1)
	 
	for k27, v143 in pairs(children6) do
		 115:30940,116:31149,117:31150
		v143:FindFirstChild("Humanoid")
		 115:30940,116:31149,117:31150
		v143:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31149,118:31152
	v143:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 73
	 115:30940
	task.wait(0.1)
	 
	for k28, v144 in pairs(children6) do
		 115:30940,116:31154,117:31155
		v144:FindFirstChild("Humanoid")
		 115:30940,116:31154,117:31155
		v144:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31154,118:31157
	v144:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 74
	 115:30940
	task.wait(0.1)
	 
	for k29, v145 in pairs(children6) do
		 115:30940,116:31159,117:31160
		v145:FindFirstChild("Humanoid")
		 115:30940,116:31159,117:31160
		v145:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31159,118:31162
	v145:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 75
	 115:30940
	task.wait(0.1)
	 
	for k30, v146 in pairs(children6) do
		 115:30940,116:31164,117:31165
		v146:FindFirstChild("Humanoid")
		 115:30940,116:31164,117:31165
		v146:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31164,118:31167
	v146:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 76
	 115:30940
	task.wait(0.1)
	 
	for k31, v147 in pairs(children6) do
		 115:30940,116:31169,117:31170
		v147:FindFirstChild("Humanoid")
		 115:30940,116:31169,117:31170
		v147:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31169,118:31172
	v147:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 77
	 115:30940
	task.wait(0.1)
	 
	for k32, v148 in pairs(children6) do
		 115:30940,116:31174,117:31175
		v148:FindFirstChild("Humanoid")
		 115:30940,116:31174,117:31175
		v148:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31174,118:31177
	v148:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 78
	 115:30940
	task.wait(0.1)
	 
	for k33, v149 in pairs(children6) do
		 115:30940,116:31179,117:31180
		v149:FindFirstChild("Humanoid")
		 115:30940,116:31179,117:31180
		v149:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31179,118:31182
	v149:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 79
	 115:30940
	task.wait(0.1)
	 
	for k34, v150 in pairs(children6) do
		 115:30940,116:31184,117:31185
		v150:FindFirstChild("Humanoid")
		 115:30940,116:31184,117:31185
		v150:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31184,118:31187
	v150:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 80
	 115:30940
	task.wait(0.1)
	 
	for k35, v151 in pairs(children6) do
		 115:30940,116:31189,117:31190
		v151:FindFirstChild("Humanoid")
		 115:30940,116:31189,117:31190
		v151:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31189,118:31192
	v151:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 81
	 115:30940
	task.wait(0.1)
	 
	for k36, v152 in pairs(children6) do
		 115:30940,116:31194,117:31195
		v152:FindFirstChild("Humanoid")
		 115:30940,116:31194,117:31195
		v152:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31194,118:31197
	v152:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 82
	 115:30940
	task.wait(0.1)
	 
	for k37, v153 in pairs(children6) do
		 115:30940,116:31199,117:31200
		v153:FindFirstChild("Humanoid")
		 115:30940,116:31199,117:31200
		v153:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31199,118:31202
	v153:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 83
	 115:30940
	task.wait(0.1)
	 
	for k38, v154 in pairs(children6) do
		 115:30940,116:31204,117:31205
		v154:FindFirstChild("Humanoid")
		 115:30940,116:31204,117:31205
		v154:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31204,118:31207
	v154:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 84
	 115:30940
	task.wait(0.1)
	 
	for k39, v155 in pairs(children6) do
		 115:30940,116:31209,117:31210
		v155:FindFirstChild("Humanoid")
		 115:30940,116:31209,117:31210
		v155:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31209,118:31212
	v155:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 85
	 115:30940
	task.wait(0.1)
	 
	for k40, v156 in pairs(children6) do
		 115:30940,116:31214,117:31215
		v156:FindFirstChild("Humanoid")
		 115:30940,116:31214,117:31215
		v156:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31214,118:31217
	v156:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 86
	 115:30940
	task.wait(0.1)
	 
	for k41, v157 in pairs(children6) do
		 115:30940,116:31219,117:31220
		v157:FindFirstChild("Humanoid")
		 115:30940,116:31219,117:31220
		v157:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31219,118:31222
	v157:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 87
	 115:30940
	task.wait(0.1)
	 
	for k42, v158 in pairs(children6) do
		 115:30940,116:31224,117:31225
		v158:FindFirstChild("Humanoid")
		 115:30940,116:31224,117:31225
		v158:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31224,118:31227
	v158:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 88
	 115:30940
	task.wait(0.1)
	 
	for k43, v159 in pairs(children6) do
		 115:30940,116:31229,117:31230
		v159:FindFirstChild("Humanoid")
		 115:30940,116:31229,117:31230
		v159:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31229,118:31232
	v159:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 89
	 115:30940
	task.wait(0.1)
	 
	for k44, v160 in pairs(children6) do
		 115:30940,116:31234,117:31235
		v160:FindFirstChild("Humanoid")
		 115:30940,116:31234,117:31235
		v160:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31234,118:31237
	v160:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 90
	 115:30940
	task.wait(0.1)
	 
	for k45, v161 in pairs(children6) do
		 115:30940,116:31239,117:31240
		v161:FindFirstChild("Humanoid")
		 115:30940,116:31239,117:31240
		v161:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31239,118:31242
	v161:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 91
	 115:30940
	task.wait(0.1)
	 
	for k46, v162 in pairs(children6) do
		 115:30940,116:31244,117:31245
		v162:FindFirstChild("Humanoid")
		 115:30940,116:31244,117:31245
		v162:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31244,118:31247
	v162:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 92
	 115:30940
	task.wait(0.1)
	 
	for k47, v163 in pairs(children6) do
		 115:30940,116:31249,117:31250
		v163:FindFirstChild("Humanoid")
		 115:30940,116:31249,117:31250
		v163:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31249,118:31252
	v163:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 93
	 115:30940
	task.wait(0.1)
	 
	for k48, v164 in pairs(children6) do
		 115:30940,116:31254,117:31255
		v164:FindFirstChild("Humanoid")
		 115:30940,116:31254,117:31255
		v164:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31254,118:31257
	v164:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 94
	 115:30940
	task.wait(0.1)
	 
	for k49, v165 in pairs(children6) do
		 115:30940,116:31259,117:31260
		v165:FindFirstChild("Humanoid")
		 115:30940,116:31259,117:31260
		v165:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31259,118:31262
	v165:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 95
	 115:30940
	task.wait(0.1)
	 
	for k50, v166 in pairs(children6) do
		 115:30940,116:31264,117:31265
		v166:FindFirstChild("Humanoid")
		 115:30940,116:31264,117:31265
		v166:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31264,118:31267
	v166:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 96
	 115:30940
	task.wait(0.1)
	 
	for k51, v167 in pairs(children6) do
		 115:30940,116:31269,117:31270
		v167:FindFirstChild("Humanoid")
		 115:30940,116:31269,117:31270
		v167:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31269,118:31272
	v167:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 97
	 115:30940
	task.wait(0.1)
	 
	for k52, v168 in pairs(children6) do
		 115:30940,116:31274,117:31275
		v168:FindFirstChild("Humanoid")
		 115:30940,116:31274,117:31275
		v168:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31274,118:31277
	v168:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 98
	 115:30940
	task.wait(0.1)
	 
	for k53, v169 in pairs(children6) do
		 115:30940,116:31279,117:31280
		v169:FindFirstChild("Humanoid")
		 115:30940,116:31279,117:31280
		v169:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31279,118:31282
	v169:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 99
	 115:30940
	task.wait(0.1)
	 
	for k54, v170 in pairs(children6) do
		 115:30940,116:31284,117:31285
		v170:FindFirstChild("Humanoid")
		 115:30940,116:31284,117:31285
		v170:FindFirstChild("HumanoidRootPart")
	end
	 115:30940,116:31284,118:31287
	v170:FindFirstChild("VehicleSeat")
	 115:30940
	_G.currentTweenID = 100
	 115:30940
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab3:AddSection("Boss")
 1:1,25:23379,46:31313
local Toggle29 = Tab3:AddToggle("Stack_Auto_Farm_Auto_Farm_Mirror_1", { Title = "Auto Farm Mirror", Description = "", Default = false })
 1:1,25:23379
Toggle29:OnChanged(function(arg197, arg198)
	 119:31327
	_G.AutoMiror = arg197
end)
 1:1,25:23379
task.spawn(function(...)
	 120:31340
	task.wait(0.1)
	 120:31340,121:31361,68:31366
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i117, v171 in ipairs(children6) do
	end
	 120:31340,121:31361,68:31366
	local NPCs56 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31361,68:31366
	local children61 = NPCs56:GetChildren()
	 
	for i118, v172 in ipairs(children61) do
	end
	 120:31340
	_G.currentTweenID = 101
	 120:31340
	task.wait(0.1)
	 120:31340,121:31381,68:31382
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i119, v173 in ipairs(children6) do
	end
	 120:31340,121:31381,68:31382
	local NPCs57 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31381,68:31382
	local children62 = NPCs57:GetChildren()
	 
	for i120, v174 in ipairs(children62) do
	end
	 120:31340
	_G.currentTweenID = 102
	 120:31340
	task.wait(0.1)
	 120:31340,121:31385,68:31386
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i121, v175 in ipairs(children6) do
	end
	 120:31340,121:31385,68:31386
	local NPCs58 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31385,68:31386
	local children63 = NPCs58:GetChildren()
	 
	for i122, v176 in ipairs(children63) do
	end
	 120:31340
	_G.currentTweenID = 103
	 120:31340
	task.wait(0.1)
	 120:31340,121:31389,68:31390
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i123, v177 in ipairs(children6) do
	end
	 120:31340,121:31389,68:31390
	local NPCs59 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31389,68:31390
	local children64 = NPCs59:GetChildren()
	 
	for i124, v178 in ipairs(children64) do
	end
	 120:31340
	_G.currentTweenID = 104
	 120:31340
	task.wait(0.1)
	 120:31340,121:31393,68:31394
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i125, v179 in ipairs(children6) do
	end
	 120:31340,121:31393,68:31394
	local NPCs60 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31393,68:31394
	local children65 = NPCs60:GetChildren()
	 
	for i126, v180 in ipairs(children65) do
	end
	 120:31340
	_G.currentTweenID = 105
	 120:31340
	task.wait(0.1)
	 120:31340,121:31397,68:31398
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i127, v181 in ipairs(children6) do
	end
	 120:31340,121:31397,68:31398
	local NPCs61 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31397,68:31398
	local children66 = NPCs61:GetChildren()
	 
	for i128, v182 in ipairs(children66) do
	end
	 120:31340
	_G.currentTweenID = 106
	 120:31340
	task.wait(0.1)
	 120:31340,121:31401,68:31402
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i129, v183 in ipairs(children6) do
	end
	 120:31340,121:31401,68:31402
	local NPCs62 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31401,68:31402
	local children67 = NPCs62:GetChildren()
	 
	for i130, v184 in ipairs(children67) do
	end
	 120:31340
	_G.currentTweenID = 107
	 120:31340
	task.wait(0.1)
	 120:31340,121:31405,68:31406
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i131, v185 in ipairs(children6) do
	end
	 120:31340,121:31405,68:31406
	local NPCs63 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31405,68:31406
	local children68 = NPCs63:GetChildren()
	 
	for i132, v186 in ipairs(children68) do
	end
	 120:31340
	_G.currentTweenID = 108
	 120:31340
	task.wait(0.1)
	 120:31340,121:31409,68:31410
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i133, v187 in ipairs(children6) do
	end
	 120:31340,121:31409,68:31410
	local NPCs64 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31409,68:31410
	local children69 = NPCs64:GetChildren()
	 
	for i134, v188 in ipairs(children69) do
	end
	 120:31340
	_G.currentTweenID = 109
	 120:31340
	task.wait(0.1)
	 120:31340,121:31413,68:31414
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i135, v189 in ipairs(children6) do
	end
	 120:31340,121:31413,68:31414
	local NPCs65 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31413,68:31414
	local children70 = NPCs65:GetChildren()
	 
	for i136, v190 in ipairs(children70) do
	end
	 120:31340
	_G.currentTweenID = 110
	 120:31340
	task.wait(0.1)
	 120:31340,121:31417,68:31418
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i137, v191 in ipairs(children6) do
	end
	 120:31340,121:31417,68:31418
	local NPCs66 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31417,68:31418
	local children71 = NPCs66:GetChildren()
	 
	for i138, v192 in ipairs(children71) do
	end
	 120:31340
	_G.currentTweenID = 111
	 120:31340
	task.wait(0.1)
	 120:31340,121:31421,68:31422
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i139, v193 in ipairs(children6) do
	end
	 120:31340,121:31421,68:31422
	local NPCs67 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31421,68:31422
	local children72 = NPCs67:GetChildren()
	 
	for i140, v194 in ipairs(children72) do
	end
	 120:31340
	_G.currentTweenID = 112
	 120:31340
	task.wait(0.1)
	 120:31340,121:31425,68:31426
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i141, v195 in ipairs(children6) do
	end
	 120:31340,121:31425,68:31426
	local NPCs68 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31425,68:31426
	local children73 = NPCs68:GetChildren()
	 
	for i142, v196 in ipairs(children73) do
	end
	 120:31340
	_G.currentTweenID = 113
	 120:31340
	task.wait(0.1)
	 120:31340,121:31429,68:31430
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i143, v197 in ipairs(children6) do
	end
	 120:31340,121:31429,68:31430
	local NPCs69 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31429,68:31430
	local children74 = NPCs69:GetChildren()
	 
	for i144, v198 in ipairs(children74) do
	end
	 120:31340
	_G.currentTweenID = 114
	 120:31340
	task.wait(0.1)
	 120:31340,121:31433,68:31434
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i145, v199 in ipairs(children6) do
	end
	 120:31340,121:31433,68:31434
	local NPCs70 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31433,68:31434
	local children75 = NPCs70:GetChildren()
	 
	for i146, v200 in ipairs(children75) do
	end
	 120:31340
	_G.currentTweenID = 115
	 120:31340
	task.wait(0.1)
	 120:31340,121:31437,68:31438
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i147, v201 in ipairs(children6) do
	end
	 120:31340,121:31437,68:31438
	local NPCs71 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31437,68:31438
	local children76 = NPCs71:GetChildren()
	 
	for i148, v202 in ipairs(children76) do
	end
	 120:31340
	_G.currentTweenID = 116
	 120:31340
	task.wait(0.1)
	 120:31340,121:31441,68:31442
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i149, v203 in ipairs(children6) do
	end
	 120:31340,121:31441,68:31442
	local NPCs72 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31441,68:31442
	local children77 = NPCs72:GetChildren()
	 
	for i150, v204 in ipairs(children77) do
	end
	 120:31340
	_G.currentTweenID = 117
	 120:31340
	task.wait(0.1)
	 120:31340,121:31445,68:31446
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i151, v205 in ipairs(children6) do
	end
	 120:31340,121:31445,68:31446
	local NPCs73 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31445,68:31446
	local children78 = NPCs73:GetChildren()
	 
	for i152, v206 in ipairs(children78) do
	end
	 120:31340
	_G.currentTweenID = 118
	 120:31340
	task.wait(0.1)
	 120:31340,121:31449,68:31450
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i153, v207 in ipairs(children6) do
	end
	 120:31340,121:31449,68:31450
	local NPCs74 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31449,68:31450
	local children79 = NPCs74:GetChildren()
	 
	for i154, v208 in ipairs(children79) do
	end
	 120:31340
	_G.currentTweenID = 119
	 120:31340
	task.wait(0.1)
	 120:31340,121:31453,68:31454
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i155, v209 in ipairs(children6) do
	end
	 120:31340,121:31453,68:31454
	local NPCs75 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31453,68:31454
	local children80 = NPCs75:GetChildren()
	 
	for i156, v210 in ipairs(children80) do
	end
	 120:31340
	_G.currentTweenID = 120
	 120:31340
	task.wait(0.1)
	 120:31340,121:31457,68:31458
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i157, v211 in ipairs(children6) do
	end
	 120:31340,121:31457,68:31458
	local NPCs76 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31457,68:31458
	local children81 = NPCs76:GetChildren()
	 
	for i158, v212 in ipairs(children81) do
	end
	 120:31340
	_G.currentTweenID = 121
	 120:31340
	task.wait(0.1)
	 120:31340,121:31461,68:31462
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i159, v213 in ipairs(children6) do
	end
	 120:31340,121:31461,68:31462
	local NPCs77 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31461,68:31462
	local children82 = NPCs77:GetChildren()
	 
	for i160, v214 in ipairs(children82) do
	end
	 120:31340
	_G.currentTweenID = 122
	 120:31340
	task.wait(0.1)
	 120:31340,121:31465,68:31466
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i161, v215 in ipairs(children6) do
	end
	 120:31340,121:31465,68:31466
	local NPCs78 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31465,68:31466
	local children83 = NPCs78:GetChildren()
	 
	for i162, v216 in ipairs(children83) do
	end
	 120:31340
	_G.currentTweenID = 123
	 120:31340
	task.wait(0.1)
	 120:31340,121:31469,68:31470
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i163, v217 in ipairs(children6) do
	end
	 120:31340,121:31469,68:31470
	local NPCs79 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31469,68:31470
	local children84 = NPCs79:GetChildren()
	 
	for i164, v218 in ipairs(children84) do
	end
	 120:31340
	_G.currentTweenID = 124
	 120:31340
	task.wait(0.1)
	 120:31340,121:31473,68:31474
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i165, v219 in ipairs(children6) do
	end
	 120:31340,121:31473,68:31474
	local NPCs80 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31473,68:31474
	local children85 = NPCs80:GetChildren()
	 
	for i166, v220 in ipairs(children85) do
	end
	 120:31340
	_G.currentTweenID = 125
	 120:31340
	task.wait(0.1)
	 120:31340,121:31477,68:31478
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i167, v221 in ipairs(children6) do
	end
	 120:31340,121:31477,68:31478
	local NPCs81 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31477,68:31478
	local children86 = NPCs81:GetChildren()
	 
	for i168, v222 in ipairs(children86) do
	end
	 120:31340
	_G.currentTweenID = 126
	 120:31340
	task.wait(0.1)
	 120:31340,121:31481,68:31482
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i169, v223 in ipairs(children6) do
	end
	 120:31340,121:31481,68:31482
	local NPCs82 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31481,68:31482
	local children87 = NPCs82:GetChildren()
	 
	for i170, v224 in ipairs(children87) do
	end
	 120:31340
	_G.currentTweenID = 127
	 120:31340
	task.wait(0.1)
	 120:31340,121:31485,68:31486
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i171, v225 in ipairs(children6) do
	end
	 120:31340,121:31485,68:31486
	local NPCs83 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31485,68:31486
	local children88 = NPCs83:GetChildren()
	 
	for i172, v226 in ipairs(children88) do
	end
	 120:31340
	_G.currentTweenID = 128
	 120:31340
	task.wait(0.1)
	 120:31340,121:31489,68:31490
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i173, v227 in ipairs(children6) do
	end
	 120:31340,121:31489,68:31490
	local NPCs84 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31489,68:31490
	local children89 = NPCs84:GetChildren()
	 
	for i174, v228 in ipairs(children89) do
	end
	 120:31340
	_G.currentTweenID = 129
	 120:31340
	task.wait(0.1)
	 120:31340,121:31493,68:31494
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i175, v229 in ipairs(children6) do
	end
	 120:31340,121:31493,68:31494
	local NPCs85 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31493,68:31494
	local children90 = NPCs85:GetChildren()
	 
	for i176, v230 in ipairs(children90) do
	end
	 120:31340
	_G.currentTweenID = 130
	 120:31340
	task.wait(0.1)
	 120:31340,121:31497,68:31498
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i177, v231 in ipairs(children6) do
	end
	 120:31340,121:31497,68:31498
	local NPCs86 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31497,68:31498
	local children91 = NPCs86:GetChildren()
	 
	for i178, v232 in ipairs(children91) do
	end
	 120:31340
	_G.currentTweenID = 131
	 120:31340
	task.wait(0.1)
	 120:31340,121:31501,68:31502
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i179, v233 in ipairs(children6) do
	end
	 120:31340,121:31501,68:31502
	local NPCs87 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31501,68:31502
	local children92 = NPCs87:GetChildren()
	 
	for i180, v234 in ipairs(children92) do
	end
	 120:31340
	_G.currentTweenID = 132
	 120:31340
	task.wait(0.1)
	 120:31340,121:31505,68:31506
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i181, v235 in ipairs(children6) do
	end
	 120:31340,121:31505,68:31506
	local NPCs88 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31505,68:31506
	local children93 = NPCs88:GetChildren()
	 
	for i182, v236 in ipairs(children93) do
	end
	 120:31340
	_G.currentTweenID = 133
	 120:31340
	task.wait(0.1)
	 120:31340,121:31509,68:31510
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i183, v237 in ipairs(children6) do
	end
	 120:31340,121:31509,68:31510
	local NPCs89 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31509,68:31510
	local children94 = NPCs89:GetChildren()
	 
	for i184, v238 in ipairs(children94) do
	end
	 120:31340
	_G.currentTweenID = 134
	 120:31340
	task.wait(0.1)
	 120:31340,121:31513,68:31514
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i185, v239 in ipairs(children6) do
	end
	 120:31340,121:31513,68:31514
	local NPCs90 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31513,68:31514
	local children95 = NPCs90:GetChildren()
	 
	for i186, v240 in ipairs(children95) do
	end
	 120:31340
	_G.currentTweenID = 135
	 120:31340
	task.wait(0.1)
	 120:31340,121:31517,68:31518
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i187, v241 in ipairs(children6) do
	end
	 120:31340,121:31517,68:31518
	local NPCs91 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31517,68:31518
	local children96 = NPCs91:GetChildren()
	 
	for i188, v242 in ipairs(children96) do
	end
	 120:31340
	_G.currentTweenID = 136
	 120:31340
	task.wait(0.1)
	 120:31340,121:31521,68:31522
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i189, v243 in ipairs(children6) do
	end
	 120:31340,121:31521,68:31522
	local NPCs92 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31521,68:31522
	local children97 = NPCs92:GetChildren()
	 
	for i190, v244 in ipairs(children97) do
	end
	 120:31340
	_G.currentTweenID = 137
	 120:31340
	task.wait(0.1)
	 120:31340,121:31525,68:31526
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i191, v245 in ipairs(children6) do
	end
	 120:31340,121:31525,68:31526
	local NPCs93 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31525,68:31526
	local children98 = NPCs93:GetChildren()
	 
	for i192, v246 in ipairs(children98) do
	end
	 120:31340
	_G.currentTweenID = 138
	 120:31340
	task.wait(0.1)
	 120:31340,121:31529,68:31530
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i193, v247 in ipairs(children6) do
	end
	 120:31340,121:31529,68:31530
	local NPCs94 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31529,68:31530
	local children99 = NPCs94:GetChildren()
	 
	for i194, v248 in ipairs(children99) do
	end
	 120:31340
	_G.currentTweenID = 139
	 120:31340
	task.wait(0.1)
	 120:31340,121:31533,68:31534
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i195, v249 in ipairs(children6) do
	end
	 120:31340,121:31533,68:31534
	local NPCs95 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31533,68:31534
	local children100 = NPCs95:GetChildren()
	 
	for i196, v250 in ipairs(children100) do
	end
	 120:31340
	_G.currentTweenID = 140
	 120:31340
	task.wait(0.1)
	 120:31340,121:31537,68:31538
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i197, v251 in ipairs(children6) do
	end
	 120:31340,121:31537,68:31538
	local NPCs96 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31537,68:31538
	local children101 = NPCs96:GetChildren()
	 
	for i198, v252 in ipairs(children101) do
	end
	 120:31340
	_G.currentTweenID = 141
	 120:31340
	task.wait(0.1)
	 120:31340,121:31541,68:31542
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i199, v253 in ipairs(children6) do
	end
	 120:31340,121:31541,68:31542
	local NPCs97 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31541,68:31542
	local children102 = NPCs97:GetChildren()
	 
	for i200, v254 in ipairs(children102) do
	end
	 120:31340
	_G.currentTweenID = 142
	 120:31340
	task.wait(0.1)
	 120:31340,121:31545,68:31546
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i201, v255 in ipairs(children6) do
	end
	 120:31340,121:31545,68:31546
	local NPCs98 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31545,68:31546
	local children103 = NPCs98:GetChildren()
	 
	for i202, v256 in ipairs(children103) do
	end
	 120:31340
	_G.currentTweenID = 143
	 120:31340
	task.wait(0.1)
	 120:31340,121:31549,68:31550
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i203, v257 in ipairs(children6) do
	end
	 120:31340,121:31549,68:31550
	local NPCs99 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31549,68:31550
	local children104 = NPCs99:GetChildren()
	 
	for i204, v258 in ipairs(children104) do
	end
	 120:31340
	_G.currentTweenID = 144
	 120:31340
	task.wait(0.1)
	 120:31340,121:31553,68:31554
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i205, v259 in ipairs(children6) do
	end
	 120:31340,121:31553,68:31554
	local NPCs100 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31553,68:31554
	local children105 = NPCs100:GetChildren()
	 
	for i206, v260 in ipairs(children105) do
	end
	 120:31340
	_G.currentTweenID = 145
	 120:31340
	task.wait(0.1)
	 120:31340,121:31557,68:31558
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i207, v261 in ipairs(children6) do
	end
	 120:31340,121:31557,68:31558
	local NPCs101 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31557,68:31558
	local children106 = NPCs101:GetChildren()
	 
	for i208, v262 in ipairs(children106) do
	end
	 120:31340
	_G.currentTweenID = 146
	 120:31340
	task.wait(0.1)
	 120:31340,121:31561,68:31562
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i209, v263 in ipairs(children6) do
	end
	 120:31340,121:31561,68:31562
	local NPCs102 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31561,68:31562
	local children107 = NPCs102:GetChildren()
	 
	for i210, v264 in ipairs(children107) do
	end
	 120:31340
	_G.currentTweenID = 147
	 120:31340
	task.wait(0.1)
	 120:31340,121:31565,68:31566
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i211, v265 in ipairs(children6) do
	end
	 120:31340,121:31565,68:31566
	local NPCs103 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31565,68:31566
	local children108 = NPCs103:GetChildren()
	 
	for i212, v266 in ipairs(children108) do
	end
	 120:31340
	_G.currentTweenID = 148
	 120:31340
	task.wait(0.1)
	 120:31340,121:31569,68:31570
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i213, v267 in ipairs(children6) do
	end
	 120:31340,121:31569,68:31570
	local NPCs104 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31569,68:31570
	local children109 = NPCs104:GetChildren()
	 
	for i214, v268 in ipairs(children109) do
	end
	 120:31340
	_G.currentTweenID = 149
	 120:31340
	task.wait(0.1)
	 120:31340,121:31573,68:31574
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i215, v269 in ipairs(children6) do
	end
	 120:31340,121:31573,68:31574
	local NPCs105 = ReplicatedStorage:FindFirstChild("NPCs")
	 120:31340,121:31573,68:31574
	local children110 = NPCs105:GetChildren()
	 
	for i216, v270 in ipairs(children110) do
	end
	 120:31340
	_G.currentTweenID = 150
	 120:31340
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:31595
local Toggle30 = Tab3:AddToggle("Stack_Auto_Farm_Auto_Soul_Reaper_1", { Title = "Auto Soul Reaper", Description = "", Default = false })
 1:1,25:23379
Toggle30:OnChanged(function(arg199, arg200)
	 122:31609
	_G.AutoHytHallow = arg199
end)
 1:1,25:23379
task.spawn(function(...)
	 123:31622
	task.wait(0.1)
	 123:31622,124:31643,68:31648
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i217, v271 in ipairs(children6) do
	end
	 123:31622,124:31643,68:31648
	local NPCs106 = ReplicatedStorage:FindFirstChild("NPCs")
	 123:31622,124:31643,68:31648
	local children111 = NPCs106:GetChildren()
	 
	for i218, v272 in ipairs(children111) do
	end
	 123:31622,124:31643,125:31654
	game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence")
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 151
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 152
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 153
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 154
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 155
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 156
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 157
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 158
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 159
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 160
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 161
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 162
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 163
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 164
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 165
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 166
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 167
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 168
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 169
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 170
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 171
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 172
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 173
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 174
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 175
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 176
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 177
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 178
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 179
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 180
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 181
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 182
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 183
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 184
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 185
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 186
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 187
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 188
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 189
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 190
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 191
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 192
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 193
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 194
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 195
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 196
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 197
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 198
	 123:31622,124:31643
	task.wait(0.1)
	 123:31622,124:31643
	_G.currentTweenID = 199
	 123:31622,124:31643
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab3:AddSection("Elite Hunter")
 1:1,25:23379,46:31776
local Toggle31 = Tab3:AddToggle("Stack_Auto_Farm_Auto_Elite_Hunter_1", { Title = "Auto Elite Hunter", Description = "", Default = false })
 1:1,25:23379
Toggle31:OnChanged(function(arg201, arg202)
	 126:31790
	_G.FarmEliteHunt = arg201
end)
 1:1,25:23379,46:31813
local Toggle32 = Tab3:AddToggle("Stack_Auto_Farm_Auto_Elite_Hunter__HOP__1", { Title = "Auto Elite Hunter [HOP]", Description = "", Default = false })
 1:1,25:23379
Toggle32:OnChanged(function(arg203, arg204)
	 127:31827
	_G.AutoEliteHop = arg203
end)
 1:1,25:23379
task.spawn(function(...)
	 128:31840
	task.wait(0.1)
	 128:31840,129:31857
	ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter")
	 128:31840
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:31903
local Toggle33 = Tab3:AddToggle("Stack_Auto_Farm_Stop_when_got_God_s_Chalice_1", { Title = "Stop when got God's Chalice", Description = "", Default = true })
 1:1,25:23379
Toggle33:OnChanged(function(arg205, arg206)
	 130:31917
	_G.StopWhenChalice = arg205
end)
 1:1,25:23379
task.spawn(function(...)
	 131:31930
	task.wait(0.2)
	 131:31930,132:31959,125:31964
	game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice")
	 131:31930
	_G.FarmEliteHunt = false
	 131:31930
	task.wait(1)
	 131:31930
	task.wait(1)
	 
end)
 1:1,25:23379
Tab3:AddSection("Sword")
 1:1,25:23379,46:31995
local Toggle34 = Tab3:AddToggle("Stack_Auto_Farm_Get_Yama_1", { Title = "Get Yama", Description = "", Default = false })
 1:1,25:23379
Toggle34:OnChanged(function(arg207, arg208)
	 133:32009
	_G.GetYama = arg207
	 133:32009,134:32018
	local HumanoidRootPart3 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 133:32009,134:32018
	Part.CFrame = HumanoidRootPart3.CFrame
	 133:32009,135:32043
	game.Players.LocalPlayer.Character:FindFirstChild("Yama")
	 133:32009
	_G.GetYama = false
	 133:32009
	result:Notify({ Title = "Get Yama", Content = "You have Yama Sword", Duration = 6 })
end)
 1:1,25:23379
task.spawn(function(...)
	 136:32078
	task.wait(0.5)
	 136:32078
	task.wait(0.5)
	 
end)
 1:1,25:23379,46:32111
local Toggle35 = Tab3:AddToggle("Stack_Auto_Farm_Get_Tushita_1", { Title = "Get Tushita", Description = "", Default = false })
 1:1,25:23379
Toggle35:OnChanged(function(arg209, arg210)
	 137:32125
	_G.GetTushita = arg209
	 137:32125,134:32134
	local HumanoidRootPart4 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 137:32125,134:32134
	Part.CFrame = HumanoidRootPart4.CFrame
	 137:32125,135:32139
	game.Players.LocalPlayer.Character:FindFirstChild("Tushita")
	 137:32125
	_G.GetTushita = false
	 137:32125
	result:Notify({ Title = "Get Tushita", Content = "You have Tushita already.", Duration = 6 })
end)
 1:1,25:23379
task.spawn(function(...)
	 138:32166
	task.wait(0.5)
	 138:32166
	task.wait(0.5)
	 
end)
 1:1,25:23379
Tab3:AddSection("Race")
 1:1,25:23379,46:32205
local Toggle36 = Tab3:AddToggle("Stack_Auto_Farm_Get_Race_Ghoul_1", { Title = "Get Race Ghoul", Description = "", Default = false })
 1:1,25:23379
Toggle36:OnChanged(function(arg211, arg212)
	 139:32219
	_G.GetGhoul = arg211
	 139:32219,134:32228
	local HumanoidRootPart5 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 139:32219,134:32228
	Part.CFrame = HumanoidRootPart5.CFrame
end)
 1:1,25:23379,46:32259
local Toggle37 = Tab3:AddToggle("Stack_Auto_Farm_Get_Race_Ghoul__HOP__1", { Title = "Get Race Ghoul [HOP]", Description = "", Default = false })
 1:1,25:23379
Toggle37:OnChanged(function(arg213, arg214)
	 140:32273
	_G.GetGhoulHop = arg213
end)
 1:1,25:23379
task.spawn(function(...)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32307
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32307,134:32336
	local HumanoidRootPart6 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32307,134:32336
	Part.CFrame = HumanoidRootPart6.CFrame
	 141:32286,142:32307
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32307,143:32355
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32307
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32372
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32372,134:32373
	local HumanoidRootPart7 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32372,134:32373
	Part.CFrame = HumanoidRootPart7.CFrame
	 141:32286,142:32372
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32372,143:32374
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32372
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32375
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32375,134:32376
	local HumanoidRootPart8 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32375,134:32376
	Part.CFrame = HumanoidRootPart8.CFrame
	 141:32286,142:32375
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32375,143:32377
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32375
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32378
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32378,134:32379
	local HumanoidRootPart9 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32378,134:32379
	Part.CFrame = HumanoidRootPart9.CFrame
	 141:32286,142:32378
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32378,143:32380
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32378
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32381
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32381,134:32382
	local HumanoidRootPart10 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32381,134:32382
	Part.CFrame = HumanoidRootPart10.CFrame
	 141:32286,142:32381
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32381,143:32383
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32381
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32384
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32384,134:32385
	local HumanoidRootPart11 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32384,134:32385
	Part.CFrame = HumanoidRootPart11.CFrame
	 141:32286,142:32384
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32384,143:32386
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32384
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32387
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32387,134:32388
	local HumanoidRootPart12 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32387,134:32388
	Part.CFrame = HumanoidRootPart12.CFrame
	 141:32286,142:32387
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32387,143:32389
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32387
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32390
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32390,134:32391
	local HumanoidRootPart13 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32390,134:32391
	Part.CFrame = HumanoidRootPart13.CFrame
	 141:32286,142:32390
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32390,143:32392
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32390
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32393
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32393,134:32394
	local HumanoidRootPart14 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32393,134:32394
	Part.CFrame = HumanoidRootPart14.CFrame
	 141:32286,142:32393
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32393,143:32395
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32393
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32396
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32396,134:32397
	local HumanoidRootPart15 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32396,134:32397
	Part.CFrame = HumanoidRootPart15.CFrame
	 141:32286,142:32396
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32396,143:32398
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32396
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32399
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32399,134:32400
	local HumanoidRootPart16 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32399,134:32400
	Part.CFrame = HumanoidRootPart16.CFrame
	 141:32286,142:32399
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32399,143:32401
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32399
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32402
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32402,134:32403
	local HumanoidRootPart17 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32402,134:32403
	Part.CFrame = HumanoidRootPart17.CFrame
	 141:32286,142:32402
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32402,143:32404
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32402
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32405
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32405,134:32406
	local HumanoidRootPart18 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32405,134:32406
	Part.CFrame = HumanoidRootPart18.CFrame
	 141:32286,142:32405
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32405,143:32407
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32405
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32408
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32408,134:32409
	local HumanoidRootPart19 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32408,134:32409
	Part.CFrame = HumanoidRootPart19.CFrame
	 141:32286,142:32408
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32408,143:32410
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32408
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32411
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32411,134:32412
	local HumanoidRootPart20 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32411,134:32412
	Part.CFrame = HumanoidRootPart20.CFrame
	 141:32286,142:32411
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32411,143:32413
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32411
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32414
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32414,134:32415
	local HumanoidRootPart21 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32414,134:32415
	Part.CFrame = HumanoidRootPart21.CFrame
	 141:32286,142:32414
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32414,143:32416
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32414
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32417
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32417,134:32418
	local HumanoidRootPart22 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32417,134:32418
	Part.CFrame = HumanoidRootPart22.CFrame
	 141:32286,142:32417
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32417,143:32419
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32417
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32420
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32420,134:32421
	local HumanoidRootPart23 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32420,134:32421
	Part.CFrame = HumanoidRootPart23.CFrame
	 141:32286,142:32420
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32420,143:32422
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32420
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32423
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32423,134:32424
	local HumanoidRootPart24 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32423,134:32424
	Part.CFrame = HumanoidRootPart24.CFrame
	 141:32286,142:32423
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32423,143:32425
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32423
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32426
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32426,134:32427
	local HumanoidRootPart25 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32426,134:32427
	Part.CFrame = HumanoidRootPart25.CFrame
	 141:32286,142:32426
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32426,143:32428
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32426
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32429
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32429,134:32430
	local HumanoidRootPart26 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32429,134:32430
	Part.CFrame = HumanoidRootPart26.CFrame
	 141:32286,142:32429
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32429,143:32431
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32429
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32432
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32432,134:32433
	local HumanoidRootPart27 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32432,134:32433
	Part.CFrame = HumanoidRootPart27.CFrame
	 141:32286,142:32432
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32432,143:32434
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32432
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32435
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32435,134:32436
	local HumanoidRootPart28 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32435,134:32436
	Part.CFrame = HumanoidRootPart28.CFrame
	 141:32286,142:32435
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32435,143:32437
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32435
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32438
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32438,134:32439
	local HumanoidRootPart29 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32438,134:32439
	Part.CFrame = HumanoidRootPart29.CFrame
	 141:32286,142:32438
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32438,143:32440
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32438
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 141:32286,142:32441
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
	 141:32286,142:32441,134:32442
	local HumanoidRootPart30 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 141:32286,142:32441,134:32442
	Part.CFrame = HumanoidRootPart30.CFrame
	 141:32286,142:32441
	result:Notify({ Title = "Get Race Ghoul", Content = "Traveling to Sea 2...", Duration = 6 })
	 141:32286,142:32441,143:32443
	ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	 141:32286,142:32441
	task.wait(3)
	 141:32286
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab3:AddSection("Dark Blade")
 1:1,25:23379
Tab3:AddButton({
	Title = "Auto Upgrade Dark Blade V2",
	Description = "",
	Callback = function(state, arg216)
		if state then
			local Remotes = ReplicatedStorage:WaitForChild("Remotes")
			local CommF_ = Remotes:WaitForChild("CommF_")
			CommF_:InvokeServer("RobotTalk")
			task.wait(0.2)
			CommF_:InvokeServer("IndraTalk")
			task.wait(0.2)
			CommF_:InvokeServer("LoveLetter", 1)
			task.wait(0.1)
			CommF_:InvokeServer("LoveLetter", 2)
			task.wait(0.1)
			CommF_:InvokeServer("LoveLetter", 3)
			task.wait(0.1)
			CommF_:InvokeServer("RobotTalk")
		else
			local Remotes2 = ReplicatedStorage:WaitForChild("Remotes")
			local CommF_2 = Remotes2:WaitForChild("CommF_")
			CommF_2:InvokeServer("RobotTalk")
			task.wait(0.2)
			CommF_2:InvokeServer("IndraTalk")
			task.wait(0.2)
			CommF_2:InvokeServer("LoveLetter", 1)
			task.wait(0.1)
			CommF_2:InvokeServer("LoveLetter", 2)
			task.wait(0.1)
			CommF_2:InvokeServer("LoveLetter", 3)
			task.wait(0.1)
			CommF_2:InvokeServer("RobotTalk")
		end
	end
})
 1:1,25:23379
Tab4:AddSection("Travel")
 1:1,25:23379,46:32542
local Toggle38 = Tab4:AddToggle("Sub_Farming_Auto_Travel_Dressrosa_1", { Title = "Auto Travel Dressrosa", Description = "", Default = false })
 1:1,25:23379
Toggle38:OnChanged(function(arg217, arg218)
	 145:32552
	_G.TravelDres = arg217
end)
 1:1,25:23379
task.spawn(function(...)
	 146:32565
	task.wait(0.1)
	 146:32565
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:32614
local Toggle39 = Tab4:AddToggle("Sub_Farming_Auto_Zou_Quest_1", { Title = "Auto Zou Quest", Description = "", Default = false })
 1:1,25:23379
Toggle39:OnChanged(function(arg219, arg220)
	 148:32624
	_G.AutoZou = arg219
end)
 1:1,25:23379
task.spawn(function(...)
	 149:32637
	task.wait(0.1)
	 149:32637
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab4:AddSection("Quest Second Sea")
 1:1,25:23379,46:32692
local Toggle40 = Tab4:AddToggle("Sub_Farming_Auto_Complete_Quest_Bartilo_1", { Title = "Auto Complete Quest Bartilo", Description = "", Default = false })
 1:1,25:23379
Toggle40:OnChanged(function(arg221, arg222)
	 151:32702
	_G.Bartilo_Quest = arg221
end)
 1:1,25:23379
task.spawn(function(...)
	 152:32715
	task.wait(0.1)
	 152:32715
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:32758
local Toggle41 = Tab4:AddToggle("Sub_Farming_Auto_Complete_Quest_Citizen_1", { Title = "Auto Complete Quest Citizen", Description = "", Default = false })
 1:1,25:23379
Toggle41:OnChanged(function(arg223, arg224)
	 154:32768
	_G.CitizenQuest = arg223
end)
 1:1,25:23379
task.spawn(function(...)
	 155:32781
	task.wait(0.1)
	 155:32781
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:32824
local Toggle42 = Tab4:AddToggle("Sub_Farming_Auto_Training_Dummy_1", { Title = "Auto Training Dummy", Description = "", Default = false })
 1:1,25:23379
Toggle42:OnChanged(function(arg225, arg226)
	 157:32838
	_G.DummyMan = arg225
end)
 1:1,25:23379
task.spawn(function(...)
	 158:32851
	task.wait(0.1)
	 158:32851,159:32872,68:32889
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i219, v273 in ipairs(children6) do
	end
	 158:32851,159:32872,68:32889
	local NPCs107 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32872,68:32889
	local children112 = NPCs107:GetChildren()
	 
	for i220, v274 in ipairs(children112) do
	end
	 158:32851
	_G.currentTweenID = 200
	 158:32851
	task.wait(0.1)
	 158:32851,159:32904,68:32905
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i221, v275 in ipairs(children6) do
	end
	 158:32851,159:32904,68:32905
	local NPCs108 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32904,68:32905
	local children113 = NPCs108:GetChildren()
	 
	for i222, v276 in ipairs(children113) do
	end
	 158:32851
	_G.currentTweenID = 201
	 158:32851
	task.wait(0.1)
	 158:32851,159:32908,68:32909
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i223, v277 in ipairs(children6) do
	end
	 158:32851,159:32908,68:32909
	local NPCs109 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32908,68:32909
	local children114 = NPCs109:GetChildren()
	 
	for i224, v278 in ipairs(children114) do
	end
	 158:32851
	_G.currentTweenID = 202
	 158:32851
	task.wait(0.1)
	 158:32851,159:32912,68:32913
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i225, v279 in ipairs(children6) do
	end
	 158:32851,159:32912,68:32913
	local NPCs110 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32912,68:32913
	local children115 = NPCs110:GetChildren()
	 
	for i226, v280 in ipairs(children115) do
	end
	 158:32851
	_G.currentTweenID = 203
	 158:32851
	task.wait(0.1)
	 158:32851,159:32916,68:32917
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i227, v281 in ipairs(children6) do
	end
	 158:32851,159:32916,68:32917
	local NPCs111 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32916,68:32917
	local children116 = NPCs111:GetChildren()
	 
	for i228, v282 in ipairs(children116) do
	end
	 158:32851
	_G.currentTweenID = 204
	 158:32851
	task.wait(0.1)
	 158:32851,159:32920,68:32921
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i229, v283 in ipairs(children6) do
	end
	 158:32851,159:32920,68:32921
	local NPCs112 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32920,68:32921
	local children117 = NPCs112:GetChildren()
	 
	for i230, v284 in ipairs(children117) do
	end
	 158:32851
	_G.currentTweenID = 205
	 158:32851
	task.wait(0.1)
	 158:32851,159:32924,68:32925
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i231, v285 in ipairs(children6) do
	end
	 158:32851,159:32924,68:32925
	local NPCs113 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32924,68:32925
	local children118 = NPCs113:GetChildren()
	 
	for i232, v286 in ipairs(children118) do
	end
	 158:32851
	_G.currentTweenID = 206
	 158:32851
	task.wait(0.1)
	 158:32851,159:32928,68:32929
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i233, v287 in ipairs(children6) do
	end
	 158:32851,159:32928,68:32929
	local NPCs114 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32928,68:32929
	local children119 = NPCs114:GetChildren()
	 
	for i234, v288 in ipairs(children119) do
	end
	 158:32851
	_G.currentTweenID = 207
	 158:32851
	task.wait(0.1)
	 158:32851,159:32932,68:32933
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i235, v289 in ipairs(children6) do
	end
	 158:32851,159:32932,68:32933
	local NPCs115 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32932,68:32933
	local children120 = NPCs115:GetChildren()
	 
	for i236, v290 in ipairs(children120) do
	end
	 158:32851
	_G.currentTweenID = 208
	 158:32851
	task.wait(0.1)
	 158:32851,159:32936,68:32937
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i237, v291 in ipairs(children6) do
	end
	 158:32851,159:32936,68:32937
	local NPCs116 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32936,68:32937
	local children121 = NPCs116:GetChildren()
	 
	for i238, v292 in ipairs(children121) do
	end
	 158:32851
	_G.currentTweenID = 209
	 158:32851
	task.wait(0.1)
	 158:32851,159:32940,68:32941
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i239, v293 in ipairs(children6) do
	end
	 158:32851,159:32940,68:32941
	local NPCs117 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32940,68:32941
	local children122 = NPCs117:GetChildren()
	 
	for i240, v294 in ipairs(children122) do
	end
	 158:32851
	_G.currentTweenID = 210
	 158:32851
	task.wait(0.1)
	 158:32851,159:32944,68:32945
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i241, v295 in ipairs(children6) do
	end
	 158:32851,159:32944,68:32945
	local NPCs118 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32944,68:32945
	local children123 = NPCs118:GetChildren()
	 
	for i242, v296 in ipairs(children123) do
	end
	 158:32851
	_G.currentTweenID = 211
	 158:32851
	task.wait(0.1)
	 158:32851,159:32948,68:32949
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i243, v297 in ipairs(children6) do
	end
	 158:32851,159:32948,68:32949
	local NPCs119 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32948,68:32949
	local children124 = NPCs119:GetChildren()
	 
	for i244, v298 in ipairs(children124) do
	end
	 158:32851
	_G.currentTweenID = 212
	 158:32851
	task.wait(0.1)
	 158:32851,159:32952,68:32953
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 158:32851,159:32952,68:32953,69:32954
	local Enemies4 = workspace:FindFirstChild("Enemies")
	 158:32851,159:32952,68:32953,69:32954
	local children125 = Enemies4:GetChildren()
	 
	for i245, v299 in ipairs(children125) do
	end
	 158:32851,159:32952,68:32953
	local NPCs120 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32952,68:32953
	local children126 = NPCs120:GetChildren()
	 
	for i246, v300 in ipairs(children126) do
	end
	 158:32851
	_G.currentTweenID = 213
	 158:32851
	task.wait(0.1)
	 158:32851,159:32956,68:32957
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i247, v301 in ipairs(children125) do
	end
	 158:32851,159:32956,68:32957
	local NPCs121 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32956,68:32957
	local children127 = NPCs121:GetChildren()
	 
	for i248, v302 in ipairs(children127) do
	end
	 158:32851
	_G.currentTweenID = 214
	 158:32851
	task.wait(0.1)
	 158:32851,159:32960,68:32961
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i249, v303 in ipairs(children125) do
	end
	 158:32851,159:32960,68:32961
	local NPCs122 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32960,68:32961
	local children128 = NPCs122:GetChildren()
	 
	for i250, v304 in ipairs(children128) do
	end
	 158:32851
	_G.currentTweenID = 215
	 158:32851
	task.wait(0.1)
	 158:32851,159:32964,68:32965
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i251, v305 in ipairs(children125) do
	end
	 158:32851,159:32964,68:32965
	local NPCs123 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32964,68:32965
	local children129 = NPCs123:GetChildren()
	 
	for i252, v306 in ipairs(children129) do
	end
	 158:32851
	_G.currentTweenID = 216
	 158:32851
	task.wait(0.1)
	 158:32851,159:32968,68:32969
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i253, v307 in ipairs(children125) do
	end
	 158:32851,159:32968,68:32969
	local NPCs124 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32968,68:32969
	local children130 = NPCs124:GetChildren()
	 
	for i254, v308 in ipairs(children130) do
	end
	 158:32851
	_G.currentTweenID = 217
	 158:32851
	task.wait(0.1)
	 158:32851,159:32972,68:32973
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i255, v309 in ipairs(children125) do
	end
	 158:32851,159:32972,68:32973
	local NPCs125 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32972,68:32973
	local children131 = NPCs125:GetChildren()
	 
	for i256, v310 in ipairs(children131) do
	end
	 158:32851
	_G.currentTweenID = 218
	 158:32851
	task.wait(0.1)
	 158:32851,159:32976,68:32977
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i257, v311 in ipairs(children125) do
	end
	 158:32851,159:32976,68:32977
	local NPCs126 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32976,68:32977
	local children132 = NPCs126:GetChildren()
	 
	for i258, v312 in ipairs(children132) do
	end
	 158:32851
	_G.currentTweenID = 219
	 158:32851
	task.wait(0.1)
	 158:32851,159:32980,68:32981
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i259, v313 in ipairs(children125) do
	end
	 158:32851,159:32980,68:32981
	local NPCs127 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32980,68:32981
	local children133 = NPCs127:GetChildren()
	 
	for i260, v314 in ipairs(children133) do
	end
	 158:32851
	_G.currentTweenID = 220
	 158:32851
	task.wait(0.1)
	 158:32851,159:32984,68:32985
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i261, v315 in ipairs(children125) do
	end
	 158:32851,159:32984,68:32985
	local NPCs128 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32984,68:32985
	local children134 = NPCs128:GetChildren()
	 
	for i262, v316 in ipairs(children134) do
	end
	 158:32851
	_G.currentTweenID = 221
	 158:32851
	task.wait(0.1)
	 158:32851,159:32988,68:32989
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i263, v317 in ipairs(children125) do
	end
	 158:32851,159:32988,68:32989
	local NPCs129 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32988,68:32989
	local children135 = NPCs129:GetChildren()
	 
	for i264, v318 in ipairs(children135) do
	end
	 158:32851
	_G.currentTweenID = 222
	 158:32851
	task.wait(0.1)
	 158:32851,159:32992,68:32993
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i265, v319 in ipairs(children125) do
	end
	 158:32851,159:32992,68:32993
	local NPCs130 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32992,68:32993
	local children136 = NPCs130:GetChildren()
	 
	for i266, v320 in ipairs(children136) do
	end
	 158:32851
	_G.currentTweenID = 223
	 158:32851
	task.wait(0.1)
	 158:32851,159:32996,68:32997
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i267, v321 in ipairs(children125) do
	end
	 158:32851,159:32996,68:32997
	local NPCs131 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:32996,68:32997
	local children137 = NPCs131:GetChildren()
	 
	for i268, v322 in ipairs(children137) do
	end
	 158:32851
	_G.currentTweenID = 224
	 158:32851
	task.wait(0.1)
	 158:32851,159:33000,68:33001
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i269, v323 in ipairs(children125) do
	end
	 158:32851,159:33000,68:33001
	local NPCs132 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33000,68:33001
	local children138 = NPCs132:GetChildren()
	 
	for i270, v324 in ipairs(children138) do
	end
	 158:32851
	_G.currentTweenID = 225
	 158:32851
	task.wait(0.1)
	 158:32851,159:33004,68:33005
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i271, v325 in ipairs(children125) do
	end
	 158:32851,159:33004,68:33005
	local NPCs133 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33004,68:33005
	local children139 = NPCs133:GetChildren()
	 
	for i272, v326 in ipairs(children139) do
	end
	 158:32851
	_G.currentTweenID = 226
	 158:32851
	task.wait(0.1)
	 158:32851,159:33008,68:33009
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i273, v327 in ipairs(children125) do
	end
	 158:32851,159:33008,68:33009
	local NPCs134 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33008,68:33009
	local children140 = NPCs134:GetChildren()
	 
	for i274, v328 in ipairs(children140) do
	end
	 158:32851
	_G.currentTweenID = 227
	 158:32851
	task.wait(0.1)
	 158:32851,159:33012,68:33013
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i275, v329 in ipairs(children125) do
	end
	 158:32851,159:33012,68:33013
	local NPCs135 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33012,68:33013
	local children141 = NPCs135:GetChildren()
	 
	for i276, v330 in ipairs(children141) do
	end
	 158:32851
	_G.currentTweenID = 228
	 158:32851
	task.wait(0.1)
	 158:32851,159:33016,68:33017
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i277, v331 in ipairs(children125) do
	end
	 158:32851,159:33016,68:33017
	local NPCs136 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33016,68:33017
	local children142 = NPCs136:GetChildren()
	 
	for i278, v332 in ipairs(children142) do
	end
	 158:32851
	_G.currentTweenID = 229
	 158:32851
	task.wait(0.1)
	 158:32851,159:33020,68:33021
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i279, v333 in ipairs(children125) do
	end
	 158:32851,159:33020,68:33021
	local NPCs137 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33020,68:33021
	local children143 = NPCs137:GetChildren()
	 
	for i280, v334 in ipairs(children143) do
	end
	 158:32851
	_G.currentTweenID = 230
	 158:32851
	task.wait(0.1)
	 158:32851,159:33024,68:33025
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i281, v335 in ipairs(children125) do
	end
	 158:32851,159:33024,68:33025
	local NPCs138 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33024,68:33025
	local children144 = NPCs138:GetChildren()
	 
	for i282, v336 in ipairs(children144) do
	end
	 158:32851
	_G.currentTweenID = 231
	 158:32851
	task.wait(0.1)
	 158:32851,159:33028,68:33029
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i283, v337 in ipairs(children125) do
	end
	 158:32851,159:33028,68:33029
	local NPCs139 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33028,68:33029
	local children145 = NPCs139:GetChildren()
	 
	for i284, v338 in ipairs(children145) do
	end
	 158:32851
	_G.currentTweenID = 232
	 158:32851
	task.wait(0.1)
	 158:32851,159:33032,68:33033
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i285, v339 in ipairs(children125) do
	end
	 158:32851,159:33032,68:33033
	local NPCs140 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33032,68:33033
	local children146 = NPCs140:GetChildren()
	 
	for i286, v340 in ipairs(children146) do
	end
	 158:32851
	_G.currentTweenID = 233
	 158:32851
	task.wait(0.1)
	 158:32851,159:33036,68:33037
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i287, v341 in ipairs(children125) do
	end
	 158:32851,159:33036,68:33037
	local NPCs141 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33036,68:33037
	local children147 = NPCs141:GetChildren()
	 
	for i288, v342 in ipairs(children147) do
	end
	 158:32851
	_G.currentTweenID = 234
	 158:32851
	task.wait(0.1)
	 158:32851,159:33040,68:33041
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i289, v343 in ipairs(children125) do
	end
	 158:32851,159:33040,68:33041
	local NPCs142 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33040,68:33041
	local children148 = NPCs142:GetChildren()
	 
	for i290, v344 in ipairs(children148) do
	end
	 158:32851
	_G.currentTweenID = 235
	 158:32851
	task.wait(0.1)
	 158:32851,159:33044,68:33045
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i291, v345 in ipairs(children125) do
	end
	 158:32851,159:33044,68:33045
	local NPCs143 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33044,68:33045
	local children149 = NPCs143:GetChildren()
	 
	for i292, v346 in ipairs(children149) do
	end
	 158:32851
	_G.currentTweenID = 236
	 158:32851
	task.wait(0.1)
	 158:32851,159:33048,68:33049
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i293, v347 in ipairs(children125) do
	end
	 158:32851,159:33048,68:33049
	local NPCs144 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33048,68:33049
	local children150 = NPCs144:GetChildren()
	 
	for i294, v348 in ipairs(children150) do
	end
	 158:32851
	_G.currentTweenID = 237
	 158:32851
	task.wait(0.1)
	 158:32851,159:33052,68:33053
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i295, v349 in ipairs(children125) do
	end
	 158:32851,159:33052,68:33053
	local NPCs145 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33052,68:33053
	local children151 = NPCs145:GetChildren()
	 
	for i296, v350 in ipairs(children151) do
	end
	 158:32851
	_G.currentTweenID = 238
	 158:32851
	task.wait(0.1)
	 158:32851,159:33056,68:33057
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i297, v351 in ipairs(children125) do
	end
	 158:32851,159:33056,68:33057
	local NPCs146 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33056,68:33057
	local children152 = NPCs146:GetChildren()
	 
	for i298, v352 in ipairs(children152) do
	end
	 158:32851
	_G.currentTweenID = 239
	 158:32851
	task.wait(0.1)
	 158:32851,159:33060,68:33061
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i299, v353 in ipairs(children125) do
	end
	 158:32851,159:33060,68:33061
	local NPCs147 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33060,68:33061
	local children153 = NPCs147:GetChildren()
	 
	for i300, v354 in ipairs(children153) do
	end
	 158:32851
	_G.currentTweenID = 240
	 158:32851
	task.wait(0.1)
	 158:32851,159:33064,68:33065
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i301, v355 in ipairs(children125) do
	end
	 158:32851,159:33064,68:33065
	local NPCs148 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33064,68:33065
	local children154 = NPCs148:GetChildren()
	 
	for i302, v356 in ipairs(children154) do
	end
	 158:32851
	_G.currentTweenID = 241
	 158:32851
	task.wait(0.1)
	 158:32851,159:33068,68:33069
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i303, v357 in ipairs(children125) do
	end
	 158:32851,159:33068,68:33069
	local NPCs149 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33068,68:33069
	local children155 = NPCs149:GetChildren()
	 
	for i304, v358 in ipairs(children155) do
	end
	 158:32851
	_G.currentTweenID = 242
	 158:32851
	task.wait(0.1)
	 158:32851,159:33072,68:33073
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i305, v359 in ipairs(children125) do
	end
	 158:32851,159:33072,68:33073
	local NPCs150 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33072,68:33073
	local children156 = NPCs150:GetChildren()
	 
	for i306, v360 in ipairs(children156) do
	end
	 158:32851
	_G.currentTweenID = 243
	 158:32851
	task.wait(0.1)
	 158:32851,159:33076,68:33077
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i307, v361 in ipairs(children125) do
	end
	 158:32851,159:33076,68:33077
	local NPCs151 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33076,68:33077
	local children157 = NPCs151:GetChildren()
	 
	for i308, v362 in ipairs(children157) do
	end
	 158:32851
	_G.currentTweenID = 244
	 158:32851
	task.wait(0.1)
	 158:32851,159:33080,68:33081
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i309, v363 in ipairs(children125) do
	end
	 158:32851,159:33080,68:33081
	local NPCs152 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33080,68:33081
	local children158 = NPCs152:GetChildren()
	 
	for i310, v364 in ipairs(children158) do
	end
	 158:32851
	_G.currentTweenID = 245
	 158:32851
	task.wait(0.1)
	 158:32851,159:33084,68:33085
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i311, v365 in ipairs(children125) do
	end
	 158:32851,159:33084,68:33085
	local NPCs153 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33084,68:33085
	local children159 = NPCs153:GetChildren()
	 
	for i312, v366 in ipairs(children159) do
	end
	 158:32851
	_G.currentTweenID = 246
	 158:32851
	task.wait(0.1)
	 158:32851,159:33088,68:33089
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i313, v367 in ipairs(children125) do
	end
	 158:32851,159:33088,68:33089
	local NPCs154 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33088,68:33089
	local children160 = NPCs154:GetChildren()
	 
	for i314, v368 in ipairs(children160) do
	end
	 158:32851
	_G.currentTweenID = 247
	 158:32851
	task.wait(0.1)
	 158:32851,159:33092,68:33093
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i315, v369 in ipairs(children125) do
	end
	 158:32851,159:33092,68:33093
	local NPCs155 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33092,68:33093
	local children161 = NPCs155:GetChildren()
	 
	for i316, v370 in ipairs(children161) do
	end
	 158:32851
	_G.currentTweenID = 248
	 158:32851
	task.wait(0.1)
	 158:32851,159:33096,68:33097
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i317, v371 in ipairs(children125) do
	end
	 158:32851,159:33096,68:33097
	local NPCs156 = ReplicatedStorage:FindFirstChild("NPCs")
	 158:32851,159:33096,68:33097
	local children162 = NPCs156:GetChildren()
	 
	for i318, v372 in ipairs(children162) do
	end
	 158:32851
	_G.currentTweenID = 249
	 158:32851
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab4:AddSection("Wish")
 1:1,25:23379,46:33124
local Toggle43 = Tab4:AddToggle("Sub_Farming_Auto_Random_Bones_1", { Title = "Auto Random Bones", Description = "", Default = false })
 1:1,25:23379
Toggle43:OnChanged(function(arg227, arg228)
	 160:33138
	_G.Auto_Random_Bone = arg227
end)
 1:1,25:23379
task.spawn(function(...)
	 161:33151
	task.wait(0.1)
	 161:33151,162:33168
	task.wait(0.1)
	 161:33151,162:33168
	local Remotes3 = ReplicatedStorage:WaitForChild("Remotes")
	 161:33151,162:33168
	local CommF_3 = Remotes3:WaitForChild("CommF_")
	 161:33151,162:33168
	CommF_3:InvokeServer("Bones", "Buy", 1, 1)
	 161:33151,162:33168
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:33223
local Toggle44 = Tab4:AddToggle("Sub_Farming_Auto_Try_Luck_Gravestone_1", { Title = "Auto Try Luck Gravestone", Description = "", Default = false })
 1:1,25:23379
Toggle44:OnChanged(function(arg229, arg230)
	 163:33237
	_G.TryLucky = arg229
end)
 1:1,25:23379
task.spawn(function(...)
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 250
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 251
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 252
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 253
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 254
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 255
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 256
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 257
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 258
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 259
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 260
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 261
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 262
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 263
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 264
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 265
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 266
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 267
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 268
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 269
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 270
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 271
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 272
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 273
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 274
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 275
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 276
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 277
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 278
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 279
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 280
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 281
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 282
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 283
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 284
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 285
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 286
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 287
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 288
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 289
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 290
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 291
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 292
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 293
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 294
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 295
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 296
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 297
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 298
	 164:33250
	task.wait(0.1)
	 164:33250
	_G.currentTweenID = 299
	 164:33250
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:33363
local Toggle45 = Tab4:AddToggle("Sub_Farming_Auto_Pray_Gravestone_1", { Title = "Auto Pray Gravestone", Description = "", Default = false })
 1:1,25:23379
Toggle45:OnChanged(function(arg231, arg232)
	 165:33377
	_G.Praying = arg231
end)
 1:1,25:23379
task.spawn(function(...)
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 300
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 301
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 302
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 303
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 304
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 305
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 306
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 307
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 308
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 309
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 310
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 311
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 312
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 313
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 314
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 315
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 316
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 317
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 318
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 319
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 320
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 321
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 322
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 323
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 324
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 325
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 326
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 327
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 328
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 329
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 330
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 331
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 332
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 333
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 334
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 335
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 336
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 337
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 338
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 339
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 340
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 341
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 342
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 343
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 344
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 345
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 346
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 347
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 348
	 166:33390
	task.wait(0.1)
	 166:33390
	_G.currentTweenID = 349
	 166:33390
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab4:AddSection("Haki")
 1:1,25:23379,46:33509
local Toggle46 = Tab4:AddToggle("Sub_Farming_Tween_to_Barista_Cousin_1", { Title = "Tween to Barista Cousin", Description = "", Default = false })
 1:1,25:23379
Toggle46:OnChanged(function(arg233, arg234)
	 167:33523
	_G.Tp_MasterA = arg233
end)
 1:1,25:23379
task.spawn(function(...)
	 168:33536
	task.wait(0.1)
	 168:33536,169:33557
	local children163 = ReplicatedStorage.NPCs:GetChildren()
	 
	for k55, v373 in pairs(children163) do
	end
	 168:33536
	task.wait(0.1)
	 168:33536,169:33570
	local children164 = ReplicatedStorage.NPCs:GetChildren()
	 
	for k56, v374 in pairs(children164) do
	end
	 168:33536
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:33590
local Toggle47 = Tab4:AddToggle("Sub_Farming_Get_Haki_Rainbow_Colors_1", { Title = "Get Haki Rainbow Colors", Description = "", Default = false })
 1:1,25:23379
Toggle47:OnChanged(function(arg235, arg236)
	 170:33604
	_G.Auto_Rainbow_Haki = arg235
end)
 1:1,25:23379
task.spawn(function(...)
	 171:33617,172:33624
	task.wait(0.1)
	 171:33617,172:33624
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:33729
local Toggle48 = Tab4:AddToggle("Sub_Farming_Get_Quest_Rainbow_1", { Title = "Get Quest Rainbow", Description = "", Default = false })
 1:1,25:23379
Toggle48:OnChanged(function(arg237, arg238)
	 173:33743
	_G.GetQFast = arg237
end)
 1:1,25:23379
Tab4:AddSection(" Observation")
 1:1,25:23379,46:33772
local Toggle49 = Tab4:AddToggle("Sub_Farming_Auto_Farm_Observation_1", { Title = "Auto Farm Observation", Description = "Farm Dodge Skill", Default = false })
 1:1,25:23379
Toggle49:OnChanged(function(arg239, arg240)
	 174:33786
	_G.obsFarm = arg239
end)
 1:1,25:23379
task.spawn(function(...)
	 175:33799
	task.wait(0.2)
	 175:33799,176:33816
	ReplicatedStorage.Remotes.CommE:FireServer("Ken", true)
	 175:33799,176:33816
	game.Players.LocalPlayer:GetAttribute("KenDodgesLeft")
	 175:33799,176:33816
	game.Players.LocalPlayer:GetAttribute("KenDodgesLeft")
	 175:33799
	task.wait(0.2)
	 175:33799,176:33845
	ReplicatedStorage.Remotes.CommE:FireServer("Ken", true)
	 175:33799,176:33845
	game.Players.LocalPlayer:GetAttribute("KenDodgesLeft")
	 175:33799,176:33845
	game.Players.LocalPlayer:GetAttribute("KenDodgesLeft")
	 175:33799
	task.wait(0.2)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 177:33855
	task.wait(0.2)
	 177:33855
	task.wait(0.2)
	 
end)
 1:1,25:23379,46:33902
local Toggle50 = Tab4:AddToggle("Sub_Farming_Auto_Upgrade_Observation_V2_1", { Title = "Auto Upgrade Observation V2", Description = "Need 3m Beli", Default = false })
 1:1,25:23379
Toggle50:OnChanged(function(arg241, arg242)
	 179:33916
	_G.AutoKenVTWO = arg241
end)
 1:1,25:23379
task.spawn(function(...)
	 180:33929
	task.wait(0.1)
	 180:33929,181:33950
	ReplicatedStorage.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
	 180:33929,181:33950
	game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl")
	 180:33929,181:33950
	game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl")
	 180:33929
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab6:AddSection("Dojo Quest")
 1:1,25:23379,46:34080
local Toggle51 = Tab6:AddToggle("Volcanic_Auto_Dojo_Trainer_1", { Title = "Auto Dojo Trainer", Description = "", Default = false })
 1:1,25:23379
Toggle51:OnChanged(function(arg243, arg244)
	 182:34090
	_G.Dojoo = arg243
end)
 1:1,25:23379
local Paragraph = Tab6:AddParagraph({ Title = "Dojo Belt", Content = "Belt: --  |  Progress: 0%" })
 1:1,25:23379
task.spawn(function(...)
	 183:34127
	task.wait(0.5)
	 183:34127,184:34144
	Paragraph:SetDesc("Belt: --  |  Progress: 0%")
	 183:34127
	task.wait(0.5)
	 183:34127,184:34171
	Paragraph:SetDesc("Belt: --  |  Progress: 0%")
	 183:34127
	task.wait(0.5)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 185:34181
	task.wait(0.1)
	 185:34181,186:34202
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 185:34181
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:34254
local Toggle52 = Tab6:AddToggle("Volcanic_Auto_Dragon_Hunter_1", { Title = "Auto Dragon Hunter", Description = "", Default = false })
 1:1,25:23379
Toggle52:OnChanged(function(arg245, arg246)
	 187:34264
	_G.FarmBlazeEM = arg245
end)
 1:1,25:23379
getgenv().DojoEmbersList = {}
 1:1,25:23379
task.spawn(function(...)
	 188:34281
	local Modules = ReplicatedStorage:WaitForChild("Modules")
	 188:34281
	local Net = Modules:WaitForChild("Net")
	 188:34281
	local module10 = require(Net)
	 188:34281
	local result20 = module10:RemoteEvent("DragonDojoEmber")
	 188:34281
	local connection7 = result20.OnClientEvent:Connect(function(arg247)
	end)
	 188:34281
	getgenv().DojoEmberConnection = connection7
end)
 1:1,25:23379
task.spawn(function(...)
	 189:34358
	task.wait(0.1)
	 189:34358,190:34379
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 189:34358,190:34379
	workspace:GetChildren()
	 189:34358,190:34379,191:34420
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 189:34358
	task.wait(0.1)
	 189:34358,190:34447
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 189:34358,190:34447,191:34448
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 189:34358
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab6:AddSection("Volcanic Magnet")
 1:1,25:23379,46:34475
local Toggle53 = Tab6:AddToggle("Volcanic_Auto_Craft_Volcanic_Magnet_1", { Title = "Auto Craft Volcanic Magnet", Description = "", Default = false })
 1:1,25:23379
Toggle53:OnChanged(function(arg248, arg249)
	 192:34489
	_G.CraftVM = arg248
end)
 1:1,25:23379
Tab6:AddButton({
	Title = "Craft Volcanic Magnet",
	Description = "",
	Callback = function(state, arg251)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet")
	end
})
 1:1,25:23379
task.spawn(function(...)
	 194:34536
	task.wait(0.1)
	 194:34536,195:34553,196:34562,197:34563,198:34564,199:34571
	require(ReplicatedStorage.Util.ItemReplication)
	 194:34536,195:34553,196:34562,197:34563,200:34586
	module4:GetIfInitialized()
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	local module11 = require(ReplicatedStorage.Economy.ItemId)
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Material")
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Consumable")
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Fish")
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Bait")
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Scroll")
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Tool")
	 194:34536,195:34553,196:34562,197:34563,200:34586,201:34589,202:34596
	module11.getId("Scrap Metal", "Potion")
	 194:34536,195:34553,196:34562,203:34617,204:34628,205:34629
	local Modules2 = ReplicatedStorage:FindFirstChild("Modules")
	 194:34536,195:34553,196:34562,203:34617,204:34628,205:34629
	local Net2 = Modules2:FindFirstChild("Net")
	 194:34536,195:34553,196:34562,203:34617,204:34628
	local RFGetAllItemValues = Net2:FindFirstChild("RF/GetAllItemValues")
	 194:34536,195:34553,196:34562,203:34617,206:34648
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34553,196:34562,203:34617,204:34656
	local RFGetCraftPlayerData = Net2:FindFirstChild("RF/GetCraftPlayerData")
	 194:34536,195:34553,196:34562,203:34617,206:34660
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34553,196:34562
	_G.GetM_InvCache = { data = {}, t = 0 }
	 194:34536,195:34553,196:34562,208:34691
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34553,196:34562,209:34712
	module4:GetIfInitialized()
	 194:34536,195:34553,196:34562,209:34712
	local tiles4 = module4:GetTiles()
	 194:34536,195:34553,196:34562,209:34712
	local module12 = require(ReplicatedStorage.ItemConfig)
	 
	for k58, v376 in pairs(tiles4) do
		 194:34536,195:34553,196:34562,209:34712,210:34727,211:34734
		local result21 = module12.match(v376.ItemId)
		 194:34536,195:34553,196:34562,209:34712,210:34727,211:34734
		result21:unwrap()
	end
	 194:34536,195:34553,196:34747,197:34748,200:34750
	module4:GetIfInitialized()
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	local module13 = require(ReplicatedStorage.Economy.ItemId)
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Material")
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Consumable")
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Fish")
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Bait")
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Scroll")
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Tool")
	 194:34536,195:34553,196:34747,197:34748,200:34750,201:34751,202:34752
	module13.getId("Blaze Ember", "Potion")
	 194:34536,195:34553,196:34747,203:34753,206:34757
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34553,196:34747,203:34753,206:34760
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34553,196:34747,208:34763
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34553,196:34747,209:34764
	module4:GetIfInitialized()
	 194:34536,195:34553,196:34747,209:34764
	local tiles5 = module4:GetTiles()
	 194:34536,195:34553,196:34747,209:34764
	local module14 = require(ReplicatedStorage.ItemConfig)
	 
	for k59, v377 in pairs(tiles5) do
		 194:34536,195:34553,196:34747,209:34764,210:34765,211:34766
		local result22 = module14.match(v377.ItemId)
		 194:34536,195:34553,196:34747,209:34764,210:34765,211:34766
		result22:unwrap()
	end
	 194:34536,195:34553,196:34771,197:34772,200:34774
	module4:GetIfInitialized()
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	local module15 = require(ReplicatedStorage.Economy.ItemId)
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Material")
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Consumable")
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Fish")
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Bait")
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Scroll")
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Tool")
	 194:34536,195:34553,196:34771,197:34772,200:34774,201:34775,202:34776
	module15.getId("Volcanic Magnet", "Potion")
	 194:34536,195:34553,196:34771,203:34777,206:34779
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34553,196:34771,203:34777,206:34782
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34553,196:34771,208:34785
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34553,196:34771,209:34786
	module4:GetIfInitialized()
	 194:34536,195:34553,196:34771,209:34786
	local tiles6 = module4:GetTiles()
	 194:34536,195:34553,196:34771,209:34786
	local module16 = require(ReplicatedStorage.ItemConfig)
	 
	for k60, v378 in pairs(tiles6) do
		 194:34536,195:34553,196:34771,209:34786,210:34787,211:34788
		local result23 = module16.match(v378.ItemId)
		 194:34536,195:34553,196:34771,209:34786,210:34787,211:34788
		result23:unwrap()
	end
	 194:34536,195:34553
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:34553,68:34797
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i319, v379 in ipairs(children125) do
	end
	 194:34536,195:34553,68:34797
	local NPCs157 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:34553,68:34797
	local children165 = NPCs157:GetChildren()
	 
	for i320, v380 in ipairs(children165) do
	end
	 194:34536
	_G.currentTweenID = 350
	 194:34536
	task.wait(0.1)
	 194:34536,195:34812,196:34813,197:34814,200:34816
	module4:GetIfInitialized()
	 194:34536,195:34812,196:34813,203:34818,206:34820
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34812,196:34813,203:34818,206:34823
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34812,196:34813,208:34826
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34812,196:34813,209:34827
	module4:GetIfInitialized()
	 194:34536,195:34812,196:34813,209:34827
	local tiles7 = module4:GetTiles()
	 194:34536,195:34812,196:34813,209:34827
	local module17 = require(ReplicatedStorage.ItemConfig)
	 
	for k61, v381 in pairs(tiles7) do
		 194:34536,195:34812,196:34813,209:34827,210:34828,211:34829
		local result24 = module17.match(v381.ItemId)
		 194:34536,195:34812,196:34813,209:34827,210:34828,211:34829
		result24:unwrap()
	end
	 194:34536,195:34812,196:34830,197:34831,200:34833
	module4:GetIfInitialized()
	 194:34536,195:34812,196:34830,203:34835,206:34837
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34812,196:34830,203:34835,206:34840
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34812,196:34830,208:34843
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34812,196:34830,209:34844
	module4:GetIfInitialized()
	 194:34536,195:34812,196:34830,209:34844
	local tiles8 = module4:GetTiles()
	 194:34536,195:34812,196:34830,209:34844
	local module18 = require(ReplicatedStorage.ItemConfig)
	 
	for k62, v382 in pairs(tiles8) do
		 194:34536,195:34812,196:34830,209:34844,210:34845,211:34846
		local result25 = module18.match(v382.ItemId)
		 194:34536,195:34812,196:34830,209:34844,210:34845,211:34846
		result25:unwrap()
	end
	 194:34536,195:34812,196:34847,197:34848,200:34850
	module4:GetIfInitialized()
	 194:34536,195:34812,196:34847,203:34852,206:34854
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34812,196:34847,203:34852,206:34857
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34812,196:34847,208:34860
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34812,196:34847,209:34861
	module4:GetIfInitialized()
	 194:34536,195:34812,196:34847,209:34861
	local tiles9 = module4:GetTiles()
	 194:34536,195:34812,196:34847,209:34861
	local module19 = require(ReplicatedStorage.ItemConfig)
	 
	for k63, v383 in pairs(tiles9) do
		 194:34536,195:34812,196:34847,209:34861,210:34862,211:34863
		local result26 = module19.match(v383.ItemId)
		 194:34536,195:34812,196:34847,209:34861,210:34862,211:34863
		result26:unwrap()
	end
	 194:34536,195:34812
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:34812,68:34864
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i321, v384 in ipairs(children125) do
	end
	 194:34536,195:34812,68:34864
	local NPCs158 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:34812,68:34864
	local children166 = NPCs158:GetChildren()
	 
	for i322, v385 in ipairs(children166) do
	end
	 194:34536
	_G.currentTweenID = 351
	 194:34536
	task.wait(0.1)
	 194:34536,195:34867,196:34868,197:34869,200:34871
	module4:GetIfInitialized()
	 194:34536,195:34867,196:34868,203:34873,206:34875
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34867,196:34868,203:34873,206:34878
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34867,196:34868,208:34881
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34867,196:34868,209:34882
	module4:GetIfInitialized()
	 194:34536,195:34867,196:34868,209:34882
	local tiles10 = module4:GetTiles()
	 194:34536,195:34867,196:34868,209:34882
	local module20 = require(ReplicatedStorage.ItemConfig)
	 
	for k64, v386 in pairs(tiles10) do
		 194:34536,195:34867,196:34868,209:34882,210:34883,211:34884
		local result27 = module20.match(v386.ItemId)
		 194:34536,195:34867,196:34868,209:34882,210:34883,211:34884
		result27:unwrap()
	end
	 194:34536,195:34867,196:34885,197:34886,200:34888
	module4:GetIfInitialized()
	 194:34536,195:34867,196:34885,203:34890,206:34892
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34867,196:34885,203:34890,206:34895
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34867,196:34885,208:34898
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34867,196:34885,209:34899
	module4:GetIfInitialized()
	 194:34536,195:34867,196:34885,209:34899
	local tiles11 = module4:GetTiles()
	 194:34536,195:34867,196:34885,209:34899
	local module21 = require(ReplicatedStorage.ItemConfig)
	 
	for k65, v387 in pairs(tiles11) do
		 194:34536,195:34867,196:34885,209:34899,210:34900,211:34901
		local result28 = module21.match(v387.ItemId)
		 194:34536,195:34867,196:34885,209:34899,210:34900,211:34901
		result28:unwrap()
	end
	 194:34536,195:34867,196:34902,197:34903,200:34905
	module4:GetIfInitialized()
	 194:34536,195:34867,196:34902,203:34907,206:34909
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34867,196:34902,203:34907,206:34912
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34867,196:34902,208:34915
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34867,196:34902,209:34916
	module4:GetIfInitialized()
	 194:34536,195:34867,196:34902,209:34916
	local tiles12 = module4:GetTiles()
	 194:34536,195:34867,196:34902,209:34916
	local module22 = require(ReplicatedStorage.ItemConfig)
	 
	for k66, v388 in pairs(tiles12) do
		 194:34536,195:34867,196:34902,209:34916,210:34917,211:34918
		local result29 = module22.match(v388.ItemId)
		 194:34536,195:34867,196:34902,209:34916,210:34917,211:34918
		result29:unwrap()
	end
	 194:34536,195:34867
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:34867,68:34919
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i323, v389 in ipairs(children125) do
	end
	 194:34536,195:34867,68:34919
	local NPCs159 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:34867,68:34919
	local children167 = NPCs159:GetChildren()
	 
	for i324, v390 in ipairs(children167) do
	end
	 194:34536
	_G.currentTweenID = 352
	 194:34536
	task.wait(0.1)
	 194:34536,195:34922,196:34923,197:34924,200:34926
	module4:GetIfInitialized()
	 194:34536,195:34922,196:34923,203:34928,206:34930
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34922,196:34923,203:34928,206:34933
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34922,196:34923,208:34936
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34922,196:34923,209:34937
	module4:GetIfInitialized()
	 194:34536,195:34922,196:34923,209:34937
	local tiles13 = module4:GetTiles()
	 194:34536,195:34922,196:34923,209:34937
	local module23 = require(ReplicatedStorage.ItemConfig)
	 
	for k67, v391 in pairs(tiles13) do
		 194:34536,195:34922,196:34923,209:34937,210:34938,211:34939
		local result30 = module23.match(v391.ItemId)
		 194:34536,195:34922,196:34923,209:34937,210:34938,211:34939
		result30:unwrap()
	end
	 194:34536,195:34922,196:34940,197:34941,200:34943
	module4:GetIfInitialized()
	 194:34536,195:34922,196:34940,203:34945,206:34947
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34922,196:34940,203:34945,206:34950
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34922,196:34940,208:34953
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34922,196:34940,209:34954
	module4:GetIfInitialized()
	 194:34536,195:34922,196:34940,209:34954
	local tiles14 = module4:GetTiles()
	 194:34536,195:34922,196:34940,209:34954
	local module24 = require(ReplicatedStorage.ItemConfig)
	 
	for k68, v392 in pairs(tiles14) do
		 194:34536,195:34922,196:34940,209:34954,210:34955,211:34956
		local result31 = module24.match(v392.ItemId)
		 194:34536,195:34922,196:34940,209:34954,210:34955,211:34956
		result31:unwrap()
	end
	 194:34536,195:34922,196:34957,197:34958,200:34960
	module4:GetIfInitialized()
	 194:34536,195:34922,196:34957,203:34962,206:34964
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34922,196:34957,203:34962,206:34967
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34922,196:34957,208:34970
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34922,196:34957,209:34971
	module4:GetIfInitialized()
	 194:34536,195:34922,196:34957,209:34971
	local tiles15 = module4:GetTiles()
	 194:34536,195:34922,196:34957,209:34971
	local module25 = require(ReplicatedStorage.ItemConfig)
	 
	for k69, v393 in pairs(tiles15) do
		 194:34536,195:34922,196:34957,209:34971,210:34972,211:34973
		local result32 = module25.match(v393.ItemId)
		 194:34536,195:34922,196:34957,209:34971,210:34972,211:34973
		result32:unwrap()
	end
	 194:34536,195:34922
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:34922,68:34974
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i325, v394 in ipairs(children125) do
	end
	 194:34536,195:34922,68:34974
	local NPCs160 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:34922,68:34974
	local children168 = NPCs160:GetChildren()
	 
	for i326, v395 in ipairs(children168) do
	end
	 194:34536
	_G.currentTweenID = 353
	 194:34536
	task.wait(0.1)
	 194:34536,195:34977,196:34978,197:34979,200:34981
	module4:GetIfInitialized()
	 194:34536,195:34977,196:34978,203:34983,206:34985
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34977,196:34978,203:34983,206:34988
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34977,196:34978,208:34991
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34977,196:34978,209:34992
	module4:GetIfInitialized()
	 194:34536,195:34977,196:34978,209:34992
	local tiles16 = module4:GetTiles()
	 194:34536,195:34977,196:34978,209:34992
	local module26 = require(ReplicatedStorage.ItemConfig)
	 
	for k70, v396 in pairs(tiles16) do
		 194:34536,195:34977,196:34978,209:34992,210:34993,211:34994
		local result33 = module26.match(v396.ItemId)
		 194:34536,195:34977,196:34978,209:34992,210:34993,211:34994
		result33:unwrap()
	end
	 194:34536,195:34977,196:34995,197:34996,200:34998
	module4:GetIfInitialized()
	 194:34536,195:34977,196:34995,203:35000,206:35002
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34977,196:34995,203:35000,206:35005
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34977,196:34995,208:35008
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34977,196:34995,209:35009
	module4:GetIfInitialized()
	 194:34536,195:34977,196:34995,209:35009
	local tiles17 = module4:GetTiles()
	 194:34536,195:34977,196:34995,209:35009
	local module27 = require(ReplicatedStorage.ItemConfig)
	 
	for k71, v397 in pairs(tiles17) do
		 194:34536,195:34977,196:34995,209:35009,210:35010,211:35011
		local result34 = module27.match(v397.ItemId)
		 194:34536,195:34977,196:34995,209:35009,210:35010,211:35011
		result34:unwrap()
	end
	 194:34536,195:34977,196:35012,197:35013,200:35015
	module4:GetIfInitialized()
	 194:34536,195:34977,196:35012,203:35017,206:35019
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:34977,196:35012,203:35017,206:35022
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:34977,196:35012,208:35025
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:34977,196:35012,209:35026
	module4:GetIfInitialized()
	 194:34536,195:34977,196:35012,209:35026
	local tiles18 = module4:GetTiles()
	 194:34536,195:34977,196:35012,209:35026
	local module28 = require(ReplicatedStorage.ItemConfig)
	 
	for k72, v398 in pairs(tiles18) do
		 194:34536,195:34977,196:35012,209:35026,210:35027,211:35028
		local result35 = module28.match(v398.ItemId)
		 194:34536,195:34977,196:35012,209:35026,210:35027,211:35028
		result35:unwrap()
	end
	 194:34536,195:34977
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:34977,68:35029
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i327, v399 in ipairs(children125) do
	end
	 194:34536,195:34977,68:35029
	local NPCs161 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:34977,68:35029
	local children169 = NPCs161:GetChildren()
	 
	for i328, v400 in ipairs(children169) do
	end
	 194:34536
	_G.currentTweenID = 354
	 194:34536
	task.wait(0.1)
	 194:34536,195:35032,196:35033,197:35034,200:35036
	module4:GetIfInitialized()
	 194:34536,195:35032,196:35033,203:35038,206:35040
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35032,196:35033,203:35038,206:35043
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35032,196:35033,208:35046
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35032,196:35033,209:35047
	module4:GetIfInitialized()
	 194:34536,195:35032,196:35033,209:35047
	local tiles19 = module4:GetTiles()
	 194:34536,195:35032,196:35033,209:35047
	local module29 = require(ReplicatedStorage.ItemConfig)
	 
	for k73, v401 in pairs(tiles19) do
		 194:34536,195:35032,196:35033,209:35047,210:35048,211:35049
		local result36 = module29.match(v401.ItemId)
		 194:34536,195:35032,196:35033,209:35047,210:35048,211:35049
		result36:unwrap()
	end
	 194:34536,195:35032,196:35050,197:35051,200:35053
	module4:GetIfInitialized()
	 194:34536,195:35032,196:35050,203:35055,206:35057
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35032,196:35050,203:35055,206:35060
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35032,196:35050,208:35063
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35032,196:35050,209:35064
	module4:GetIfInitialized()
	 194:34536,195:35032,196:35050,209:35064
	local tiles20 = module4:GetTiles()
	 194:34536,195:35032,196:35050,209:35064
	local module30 = require(ReplicatedStorage.ItemConfig)
	 
	for k74, v402 in pairs(tiles20) do
		 194:34536,195:35032,196:35050,209:35064,210:35065,211:35066
		local result37 = module30.match(v402.ItemId)
		 194:34536,195:35032,196:35050,209:35064,210:35065,211:35066
		result37:unwrap()
	end
	 194:34536,195:35032,196:35067,197:35068,200:35070
	module4:GetIfInitialized()
	 194:34536,195:35032,196:35067,203:35072,206:35074
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35032,196:35067,203:35072,206:35077
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35032,196:35067,208:35080
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35032,196:35067,209:35081
	module4:GetIfInitialized()
	 194:34536,195:35032,196:35067,209:35081
	local tiles21 = module4:GetTiles()
	 194:34536,195:35032,196:35067,209:35081
	local module31 = require(ReplicatedStorage.ItemConfig)
	 
	for k75, v403 in pairs(tiles21) do
		 194:34536,195:35032,196:35067,209:35081,210:35082,211:35083
		local result38 = module31.match(v403.ItemId)
		 194:34536,195:35032,196:35067,209:35081,210:35082,211:35083
		result38:unwrap()
	end
	 194:34536,195:35032
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35032,68:35084
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i329, v404 in ipairs(children125) do
	end
	 194:34536,195:35032,68:35084
	local NPCs162 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35032,68:35084
	local children170 = NPCs162:GetChildren()
	 
	for i330, v405 in ipairs(children170) do
	end
	 194:34536
	_G.currentTweenID = 355
	 194:34536
	task.wait(0.1)
	 194:34536,195:35087,196:35088,197:35089,200:35091
	module4:GetIfInitialized()
	 194:34536,195:35087,196:35088,203:35093,206:35095
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35087,196:35088,203:35093,206:35098
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35087,196:35088,208:35101
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35087,196:35088,209:35102
	module4:GetIfInitialized()
	 194:34536,195:35087,196:35088,209:35102
	local tiles22 = module4:GetTiles()
	 194:34536,195:35087,196:35088,209:35102
	local module32 = require(ReplicatedStorage.ItemConfig)
	 
	for k76, v406 in pairs(tiles22) do
		 194:34536,195:35087,196:35088,209:35102,210:35103,211:35104
		local result39 = module32.match(v406.ItemId)
		 194:34536,195:35087,196:35088,209:35102,210:35103,211:35104
		result39:unwrap()
	end
	 194:34536,195:35087,196:35105,197:35106,200:35108
	module4:GetIfInitialized()
	 194:34536,195:35087,196:35105,203:35110,206:35112
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35087,196:35105,203:35110,206:35115
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35087,196:35105,208:35118
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35087,196:35105,209:35119
	module4:GetIfInitialized()
	 194:34536,195:35087,196:35105,209:35119
	local tiles23 = module4:GetTiles()
	 194:34536,195:35087,196:35105,209:35119
	local module33 = require(ReplicatedStorage.ItemConfig)
	 
	for k77, v407 in pairs(tiles23) do
		 194:34536,195:35087,196:35105,209:35119,210:35120,211:35121
		local result40 = module33.match(v407.ItemId)
		 194:34536,195:35087,196:35105,209:35119,210:35120,211:35121
		result40:unwrap()
	end
	 194:34536,195:35087,196:35122,197:35123,200:35125
	module4:GetIfInitialized()
	 194:34536,195:35087,196:35122,203:35127,206:35129
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35087,196:35122,203:35127,206:35132
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35087,196:35122,208:35135
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35087,196:35122,209:35136
	module4:GetIfInitialized()
	 194:34536,195:35087,196:35122,209:35136
	local tiles24 = module4:GetTiles()
	 194:34536,195:35087,196:35122,209:35136
	local module34 = require(ReplicatedStorage.ItemConfig)
	 
	for k78, v408 in pairs(tiles24) do
		 194:34536,195:35087,196:35122,209:35136,210:35137,211:35138
		local result41 = module34.match(v408.ItemId)
		 194:34536,195:35087,196:35122,209:35136,210:35137,211:35138
		result41:unwrap()
	end
	 194:34536,195:35087
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35087,68:35139
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i331, v409 in ipairs(children125) do
	end
	 194:34536,195:35087,68:35139
	local NPCs163 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35087,68:35139
	local children171 = NPCs163:GetChildren()
	 
	for i332, v410 in ipairs(children171) do
	end
	 194:34536
	_G.currentTweenID = 356
	 194:34536
	task.wait(0.1)
	 194:34536,195:35142,196:35143,197:35144,200:35146
	module4:GetIfInitialized()
	 194:34536,195:35142,196:35143,203:35148,206:35150
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35142,196:35143,203:35148,206:35153
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35142,196:35143,208:35156
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35142,196:35143,209:35157
	module4:GetIfInitialized()
	 194:34536,195:35142,196:35143,209:35157
	local tiles25 = module4:GetTiles()
	 194:34536,195:35142,196:35143,209:35157
	local module35 = require(ReplicatedStorage.ItemConfig)
	 
	for k79, v411 in pairs(tiles25) do
		 194:34536,195:35142,196:35143,209:35157,210:35158,211:35159
		local result42 = module35.match(v411.ItemId)
		 194:34536,195:35142,196:35143,209:35157,210:35158,211:35159
		result42:unwrap()
	end
	 194:34536,195:35142,196:35160,197:35161,200:35163
	module4:GetIfInitialized()
	 194:34536,195:35142,196:35160,203:35165,206:35167
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35142,196:35160,203:35165,206:35170
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35142,196:35160,208:35173
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35142,196:35160,209:35174
	module4:GetIfInitialized()
	 194:34536,195:35142,196:35160,209:35174
	local tiles26 = module4:GetTiles()
	 194:34536,195:35142,196:35160,209:35174
	local module36 = require(ReplicatedStorage.ItemConfig)
	 
	for k80, v412 in pairs(tiles26) do
		 194:34536,195:35142,196:35160,209:35174,210:35175,211:35176
		local result43 = module36.match(v412.ItemId)
		 194:34536,195:35142,196:35160,209:35174,210:35175,211:35176
		result43:unwrap()
	end
	 194:34536,195:35142,196:35177,197:35178,200:35180
	module4:GetIfInitialized()
	 194:34536,195:35142,196:35177,203:35182,206:35184
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35142,196:35177,203:35182,206:35187
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35142,196:35177,208:35190
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35142,196:35177,209:35191
	module4:GetIfInitialized()
	 194:34536,195:35142,196:35177,209:35191
	local tiles27 = module4:GetTiles()
	 194:34536,195:35142,196:35177,209:35191
	local module37 = require(ReplicatedStorage.ItemConfig)
	 
	for k81, v413 in pairs(tiles27) do
		 194:34536,195:35142,196:35177,209:35191,210:35192,211:35193
		local result44 = module37.match(v413.ItemId)
		 194:34536,195:35142,196:35177,209:35191,210:35192,211:35193
		result44:unwrap()
	end
	 194:34536,195:35142
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35142,68:35194
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i333, v414 in ipairs(children125) do
	end
	 194:34536,195:35142,68:35194
	local NPCs164 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35142,68:35194
	local children172 = NPCs164:GetChildren()
	 
	for i334, v415 in ipairs(children172) do
	end
	 194:34536
	_G.currentTweenID = 357
	 194:34536
	task.wait(0.1)
	 194:34536,195:35197,196:35198,197:35199,200:35201
	module4:GetIfInitialized()
	 194:34536,195:35197,196:35198,203:35203,206:35205
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35197,196:35198,203:35203,206:35208
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35197,196:35198,208:35211
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35197,196:35198,209:35212
	module4:GetIfInitialized()
	 194:34536,195:35197,196:35198,209:35212
	local tiles28 = module4:GetTiles()
	 194:34536,195:35197,196:35198,209:35212
	local module38 = require(ReplicatedStorage.ItemConfig)
	 
	for k82, v416 in pairs(tiles28) do
		 194:34536,195:35197,196:35198,209:35212,210:35213,211:35214
		local result45 = module38.match(v416.ItemId)
		 194:34536,195:35197,196:35198,209:35212,210:35213,211:35214
		result45:unwrap()
	end
	 194:34536,195:35197,196:35215,197:35216,200:35218
	module4:GetIfInitialized()
	 194:34536,195:35197,196:35215,203:35220,206:35222
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35197,196:35215,203:35220,206:35225
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35197,196:35215,208:35228
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35197,196:35215,209:35229
	module4:GetIfInitialized()
	 194:34536,195:35197,196:35215,209:35229
	local tiles29 = module4:GetTiles()
	 194:34536,195:35197,196:35215,209:35229
	local module39 = require(ReplicatedStorage.ItemConfig)
	 
	for k83, v417 in pairs(tiles29) do
		 194:34536,195:35197,196:35215,209:35229,210:35230,211:35231
		local result46 = module39.match(v417.ItemId)
		 194:34536,195:35197,196:35215,209:35229,210:35230,211:35231
		result46:unwrap()
	end
	 194:34536,195:35197,196:35232,197:35233,200:35235
	module4:GetIfInitialized()
	 194:34536,195:35197,196:35232,203:35237,206:35239
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35197,196:35232,203:35237,206:35242
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35197,196:35232,208:35245
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35197,196:35232,209:35246
	module4:GetIfInitialized()
	 194:34536,195:35197,196:35232,209:35246
	local tiles30 = module4:GetTiles()
	 194:34536,195:35197,196:35232,209:35246
	local module40 = require(ReplicatedStorage.ItemConfig)
	 
	for k84, v418 in pairs(tiles30) do
		 194:34536,195:35197,196:35232,209:35246,210:35247,211:35248
		local result47 = module40.match(v418.ItemId)
		 194:34536,195:35197,196:35232,209:35246,210:35247,211:35248
		result47:unwrap()
	end
	 194:34536,195:35197
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35197,68:35249
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i335, v419 in ipairs(children125) do
	end
	 194:34536,195:35197,68:35249
	local NPCs165 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35197,68:35249
	local children173 = NPCs165:GetChildren()
	 
	for i336, v420 in ipairs(children173) do
	end
	 194:34536
	_G.currentTweenID = 358
	 194:34536
	task.wait(0.1)
	 194:34536,195:35252,196:35253,197:35254,200:35256
	module4:GetIfInitialized()
	 194:34536,195:35252,196:35253,203:35258,206:35260
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35252,196:35253,203:35258,206:35263
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35252,196:35253,208:35266
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35252,196:35253,209:35267
	module4:GetIfInitialized()
	 194:34536,195:35252,196:35253,209:35267
	local tiles31 = module4:GetTiles()
	 194:34536,195:35252,196:35253,209:35267
	local module41 = require(ReplicatedStorage.ItemConfig)
	 
	for k85, v421 in pairs(tiles31) do
		 194:34536,195:35252,196:35253,209:35267,210:35268,211:35269
		local result48 = module41.match(v421.ItemId)
		 194:34536,195:35252,196:35253,209:35267,210:35268,211:35269
		result48:unwrap()
	end
	 194:34536,195:35252,196:35270,197:35271,200:35273
	module4:GetIfInitialized()
	 194:34536,195:35252,196:35270,203:35275,206:35277
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35252,196:35270,203:35275,206:35280
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35252,196:35270,208:35283
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35252,196:35270,209:35284
	module4:GetIfInitialized()
	 194:34536,195:35252,196:35270,209:35284
	local tiles32 = module4:GetTiles()
	 194:34536,195:35252,196:35270,209:35284
	local module42 = require(ReplicatedStorage.ItemConfig)
	 
	for k86, v422 in pairs(tiles32) do
		 194:34536,195:35252,196:35270,209:35284,210:35285,211:35286
		local result49 = module42.match(v422.ItemId)
		 194:34536,195:35252,196:35270,209:35284,210:35285,211:35286
		result49:unwrap()
	end
	 194:34536,195:35252,196:35287,197:35288,200:35290
	module4:GetIfInitialized()
	 194:34536,195:35252,196:35287,203:35292,206:35294
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35252,196:35287,203:35292,206:35297
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35252,196:35287,208:35300
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35252,196:35287,209:35301
	module4:GetIfInitialized()
	 194:34536,195:35252,196:35287,209:35301
	local tiles33 = module4:GetTiles()
	 194:34536,195:35252,196:35287,209:35301
	local module43 = require(ReplicatedStorage.ItemConfig)
	 
	for k87, v423 in pairs(tiles33) do
		 194:34536,195:35252,196:35287,209:35301,210:35302,211:35303
		local result50 = module43.match(v423.ItemId)
		 194:34536,195:35252,196:35287,209:35301,210:35302,211:35303
		result50:unwrap()
	end
	 194:34536,195:35252
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35252,68:35304
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i337, v424 in ipairs(children125) do
	end
	 194:34536,195:35252,68:35304
	local NPCs166 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35252,68:35304
	local children174 = NPCs166:GetChildren()
	 
	for i338, v425 in ipairs(children174) do
	end
	 194:34536
	_G.currentTweenID = 359
	 194:34536
	task.wait(0.1)
	 194:34536,195:35307,196:35308,197:35309,200:35311
	module4:GetIfInitialized()
	 194:34536,195:35307,196:35308,203:35313,206:35315
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35307,196:35308,203:35313,206:35318
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35307,196:35308,208:35321
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35307,196:35308,209:35322
	module4:GetIfInitialized()
	 194:34536,195:35307,196:35308,209:35322
	local tiles34 = module4:GetTiles()
	 194:34536,195:35307,196:35308,209:35322
	local module44 = require(ReplicatedStorage.ItemConfig)
	 
	for k88, v426 in pairs(tiles34) do
		 194:34536,195:35307,196:35308,209:35322,210:35323,211:35324
		local result51 = module44.match(v426.ItemId)
		 194:34536,195:35307,196:35308,209:35322,210:35323,211:35324
		result51:unwrap()
	end
	 194:34536,195:35307,196:35325,197:35326,200:35328
	module4:GetIfInitialized()
	 194:34536,195:35307,196:35325,203:35330,206:35332
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35307,196:35325,203:35330,206:35335
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35307,196:35325,208:35338
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35307,196:35325,209:35339
	module4:GetIfInitialized()
	 194:34536,195:35307,196:35325,209:35339
	local tiles35 = module4:GetTiles()
	 194:34536,195:35307,196:35325,209:35339
	local module45 = require(ReplicatedStorage.ItemConfig)
	 
	for k89, v427 in pairs(tiles35) do
		 194:34536,195:35307,196:35325,209:35339,210:35340,211:35341
		local result52 = module45.match(v427.ItemId)
		 194:34536,195:35307,196:35325,209:35339,210:35340,211:35341
		result52:unwrap()
	end
	 194:34536,195:35307,196:35342,197:35343,200:35345
	module4:GetIfInitialized()
	 194:34536,195:35307,196:35342,203:35347,206:35349
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35307,196:35342,203:35347,206:35352
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35307,196:35342,208:35355
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35307,196:35342,209:35356
	module4:GetIfInitialized()
	 194:34536,195:35307,196:35342,209:35356
	local tiles36 = module4:GetTiles()
	 194:34536,195:35307,196:35342,209:35356
	local module46 = require(ReplicatedStorage.ItemConfig)
	 
	for k90, v428 in pairs(tiles36) do
		 194:34536,195:35307,196:35342,209:35356,210:35357,211:35358
		local result53 = module46.match(v428.ItemId)
		 194:34536,195:35307,196:35342,209:35356,210:35357,211:35358
		result53:unwrap()
	end
	 194:34536,195:35307
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35307,68:35359
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i339, v429 in ipairs(children125) do
	end
	 194:34536,195:35307,68:35359
	local NPCs167 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35307,68:35359
	local children175 = NPCs167:GetChildren()
	 
	for i340, v430 in ipairs(children175) do
	end
	 194:34536
	_G.currentTweenID = 360
	 194:34536
	task.wait(0.1)
	 194:34536,195:35362,196:35363,197:35364,200:35366
	module4:GetIfInitialized()
	 194:34536,195:35362,196:35363,203:35368,206:35370
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35362,196:35363,203:35368,206:35373
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35362,196:35363,208:35376
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35362,196:35363,209:35377
	module4:GetIfInitialized()
	 194:34536,195:35362,196:35363,209:35377
	local tiles37 = module4:GetTiles()
	 194:34536,195:35362,196:35363,209:35377
	local module47 = require(ReplicatedStorage.ItemConfig)
	 
	for k91, v431 in pairs(tiles37) do
		 194:34536,195:35362,196:35363,209:35377,210:35378,211:35379
		local result54 = module47.match(v431.ItemId)
		 194:34536,195:35362,196:35363,209:35377,210:35378,211:35379
		result54:unwrap()
	end
	 194:34536,195:35362,196:35380,197:35381,200:35383
	module4:GetIfInitialized()
	 194:34536,195:35362,196:35380,203:35385,206:35387
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35362,196:35380,203:35385,206:35390
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35362,196:35380,208:35393
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35362,196:35380,209:35394
	module4:GetIfInitialized()
	 194:34536,195:35362,196:35380,209:35394
	local tiles38 = module4:GetTiles()
	 194:34536,195:35362,196:35380,209:35394
	local module48 = require(ReplicatedStorage.ItemConfig)
	 
	for k92, v432 in pairs(tiles38) do
		 194:34536,195:35362,196:35380,209:35394,210:35395,211:35396
		local result55 = module48.match(v432.ItemId)
		 194:34536,195:35362,196:35380,209:35394,210:35395,211:35396
		result55:unwrap()
	end
	 194:34536,195:35362,196:35397,197:35398,200:35400
	module4:GetIfInitialized()
	 194:34536,195:35362,196:35397,203:35402,206:35404
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35362,196:35397,203:35402,206:35407
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35362,196:35397,208:35410
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35362,196:35397,209:35411
	module4:GetIfInitialized()
	 194:34536,195:35362,196:35397,209:35411
	local tiles39 = module4:GetTiles()
	 194:34536,195:35362,196:35397,209:35411
	local module49 = require(ReplicatedStorage.ItemConfig)
	 
	for k93, v433 in pairs(tiles39) do
		 194:34536,195:35362,196:35397,209:35411,210:35412,211:35413
		local result56 = module49.match(v433.ItemId)
		 194:34536,195:35362,196:35397,209:35411,210:35412,211:35413
		result56:unwrap()
	end
	 194:34536,195:35362
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35362,68:35414
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i341, v434 in ipairs(children125) do
	end
	 194:34536,195:35362,68:35414
	local NPCs168 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35362,68:35414
	local children176 = NPCs168:GetChildren()
	 
	for i342, v435 in ipairs(children176) do
	end
	 194:34536
	_G.currentTweenID = 361
	 194:34536
	task.wait(0.1)
	 194:34536,195:35417,196:35418,197:35419,200:35421
	module4:GetIfInitialized()
	 194:34536,195:35417,196:35418,203:35423,206:35425
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35417,196:35418,203:35423,206:35428
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35417,196:35418,208:35431
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35417,196:35418,209:35432
	module4:GetIfInitialized()
	 194:34536,195:35417,196:35418,209:35432
	local tiles40 = module4:GetTiles()
	 194:34536,195:35417,196:35418,209:35432
	local module50 = require(ReplicatedStorage.ItemConfig)
	 
	for k94, v436 in pairs(tiles40) do
		 194:34536,195:35417,196:35418,209:35432,210:35433,211:35434
		local result57 = module50.match(v436.ItemId)
		 194:34536,195:35417,196:35418,209:35432,210:35433,211:35434
		result57:unwrap()
	end
	 194:34536,195:35417,196:35435,197:35436,200:35438
	module4:GetIfInitialized()
	 194:34536,195:35417,196:35435,203:35440,206:35442
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35417,196:35435,203:35440,206:35445
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35417,196:35435,208:35448
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35417,196:35435,209:35449
	module4:GetIfInitialized()
	 194:34536,195:35417,196:35435,209:35449
	local tiles41 = module4:GetTiles()
	 194:34536,195:35417,196:35435,209:35449
	local module51 = require(ReplicatedStorage.ItemConfig)
	 
	for k95, v437 in pairs(tiles41) do
		 194:34536,195:35417,196:35435,209:35449,210:35450,211:35451
		local result58 = module51.match(v437.ItemId)
		 194:34536,195:35417,196:35435,209:35449,210:35450,211:35451
		result58:unwrap()
	end
	 194:34536,195:35417,196:35452,197:35453,200:35455
	module4:GetIfInitialized()
	 194:34536,195:35417,196:35452,203:35457,206:35459
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35417,196:35452,203:35457,206:35462
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35417,196:35452,208:35465
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35417,196:35452,209:35466
	module4:GetIfInitialized()
	 194:34536,195:35417,196:35452,209:35466
	local tiles42 = module4:GetTiles()
	 194:34536,195:35417,196:35452,209:35466
	local module52 = require(ReplicatedStorage.ItemConfig)
	 
	for k96, v438 in pairs(tiles42) do
		 194:34536,195:35417,196:35452,209:35466,210:35467,211:35468
		local result59 = module52.match(v438.ItemId)
		 194:34536,195:35417,196:35452,209:35466,210:35467,211:35468
		result59:unwrap()
	end
	 194:34536,195:35417
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35417,68:35469
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i343, v439 in ipairs(children125) do
	end
	 194:34536,195:35417,68:35469
	local NPCs169 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35417,68:35469
	local children177 = NPCs169:GetChildren()
	 
	for i344, v440 in ipairs(children177) do
	end
	 194:34536
	_G.currentTweenID = 362
	 194:34536
	task.wait(0.1)
	 194:34536,195:35472,196:35473,197:35474,200:35476
	module4:GetIfInitialized()
	 194:34536,195:35472,196:35473,203:35478,206:35480
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35472,196:35473,203:35478,206:35483
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35472,196:35473,208:35486
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35472,196:35473,209:35487
	module4:GetIfInitialized()
	 194:34536,195:35472,196:35473,209:35487
	local tiles43 = module4:GetTiles()
	 194:34536,195:35472,196:35473,209:35487
	local module53 = require(ReplicatedStorage.ItemConfig)
	 
	for k97, v441 in pairs(tiles43) do
		 194:34536,195:35472,196:35473,209:35487,210:35488,211:35489
		local result60 = module53.match(v441.ItemId)
		 194:34536,195:35472,196:35473,209:35487,210:35488,211:35489
		result60:unwrap()
	end
	 194:34536,195:35472,196:35490,197:35491,200:35493
	module4:GetIfInitialized()
	 194:34536,195:35472,196:35490,203:35495,206:35497
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35472,196:35490,203:35495,206:35500
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35472,196:35490,208:35503
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35472,196:35490,209:35504
	module4:GetIfInitialized()
	 194:34536,195:35472,196:35490,209:35504
	local tiles44 = module4:GetTiles()
	 194:34536,195:35472,196:35490,209:35504
	local module54 = require(ReplicatedStorage.ItemConfig)
	 
	for k98, v442 in pairs(tiles44) do
		 194:34536,195:35472,196:35490,209:35504,210:35505,211:35506
		local result61 = module54.match(v442.ItemId)
		 194:34536,195:35472,196:35490,209:35504,210:35505,211:35506
		result61:unwrap()
	end
	 194:34536,195:35472,196:35507,197:35508,200:35510
	module4:GetIfInitialized()
	 194:34536,195:35472,196:35507,203:35512,206:35514
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35472,196:35507,203:35512,206:35517
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35472,196:35507,208:35520
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35472,196:35507,209:35521
	module4:GetIfInitialized()
	 194:34536,195:35472,196:35507,209:35521
	local tiles45 = module4:GetTiles()
	 194:34536,195:35472,196:35507,209:35521
	local module55 = require(ReplicatedStorage.ItemConfig)
	 
	for k99, v443 in pairs(tiles45) do
		 194:34536,195:35472,196:35507,209:35521,210:35522,211:35523
		local result62 = module55.match(v443.ItemId)
		 194:34536,195:35472,196:35507,209:35521,210:35522,211:35523
		result62:unwrap()
	end
	 194:34536,195:35472
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35472,68:35524
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i345, v444 in ipairs(children125) do
	end
	 194:34536,195:35472,68:35524
	local NPCs170 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35472,68:35524
	local children178 = NPCs170:GetChildren()
	 
	for i346, v445 in ipairs(children178) do
	end
	 194:34536
	_G.currentTweenID = 363
	 194:34536
	task.wait(0.1)
	 194:34536,195:35527,196:35528,197:35529,200:35531
	module4:GetIfInitialized()
	 194:34536,195:35527,196:35528,203:35533,206:35535
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35527,196:35528,203:35533,206:35538
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35527,196:35528,208:35541
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35527,196:35528,209:35542
	module4:GetIfInitialized()
	 194:34536,195:35527,196:35528,209:35542
	local tiles46 = module4:GetTiles()
	 194:34536,195:35527,196:35528,209:35542
	local module56 = require(ReplicatedStorage.ItemConfig)
	 
	for k100, v446 in pairs(tiles46) do
		 194:34536,195:35527,196:35528,209:35542,210:35543,211:35544
		local result63 = module56.match(v446.ItemId)
		 194:34536,195:35527,196:35528,209:35542,210:35543,211:35544
		result63:unwrap()
	end
	 194:34536,195:35527,196:35545,197:35546,200:35548
	module4:GetIfInitialized()
	 194:34536,195:35527,196:35545,203:35550,206:35552
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35527,196:35545,203:35550,206:35555
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35527,196:35545,208:35558
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35527,196:35545,209:35559
	module4:GetIfInitialized()
	 194:34536,195:35527,196:35545,209:35559
	local tiles47 = module4:GetTiles()
	 194:34536,195:35527,196:35545,209:35559
	local module57 = require(ReplicatedStorage.ItemConfig)
	 
	for k101, v447 in pairs(tiles47) do
		 194:34536,195:35527,196:35545,209:35559,210:35560,211:35561
		local result64 = module57.match(v447.ItemId)
		 194:34536,195:35527,196:35545,209:35559,210:35560,211:35561
		result64:unwrap()
	end
	 194:34536,195:35527,196:35562,197:35563,200:35565
	module4:GetIfInitialized()
	 194:34536,195:35527,196:35562,203:35567,206:35569
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35527,196:35562,203:35567,206:35572
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35527,196:35562,208:35575
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35527,196:35562,209:35576
	module4:GetIfInitialized()
	 194:34536,195:35527,196:35562,209:35576
	local tiles48 = module4:GetTiles()
	 194:34536,195:35527,196:35562,209:35576
	local module58 = require(ReplicatedStorage.ItemConfig)
	 
	for k102, v448 in pairs(tiles48) do
		 194:34536,195:35527,196:35562,209:35576,210:35577,211:35578
		local result65 = module58.match(v448.ItemId)
		 194:34536,195:35527,196:35562,209:35576,210:35577,211:35578
		result65:unwrap()
	end
	 194:34536,195:35527
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35527,68:35579
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i347, v449 in ipairs(children125) do
	end
	 194:34536,195:35527,68:35579
	local NPCs171 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35527,68:35579
	local children179 = NPCs171:GetChildren()
	 
	for i348, v450 in ipairs(children179) do
	end
	 194:34536
	_G.currentTweenID = 364
	 194:34536
	task.wait(0.1)
	 194:34536,195:35582,196:35583,197:35584,200:35586
	module4:GetIfInitialized()
	 194:34536,195:35582,196:35583,203:35588,206:35590
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35582,196:35583,203:35588,206:35593
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35582,196:35583,208:35596
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35582,196:35583,209:35597
	module4:GetIfInitialized()
	 194:34536,195:35582,196:35583,209:35597
	local tiles49 = module4:GetTiles()
	 194:34536,195:35582,196:35583,209:35597
	local module59 = require(ReplicatedStorage.ItemConfig)
	 
	for k103, v451 in pairs(tiles49) do
		 194:34536,195:35582,196:35583,209:35597,210:35598,211:35599
		local result66 = module59.match(v451.ItemId)
		 194:34536,195:35582,196:35583,209:35597,210:35598,211:35599
		result66:unwrap()
	end
	 194:34536,195:35582,196:35600,197:35601,200:35603
	module4:GetIfInitialized()
	 194:34536,195:35582,196:35600,203:35605,206:35607
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35582,196:35600,203:35605,206:35610
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35582,196:35600,208:35613
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35582,196:35600,209:35614
	module4:GetIfInitialized()
	 194:34536,195:35582,196:35600,209:35614
	local tiles50 = module4:GetTiles()
	 194:34536,195:35582,196:35600,209:35614
	local module60 = require(ReplicatedStorage.ItemConfig)
	 
	for k104, v452 in pairs(tiles50) do
		 194:34536,195:35582,196:35600,209:35614,210:35615,211:35616
		local result67 = module60.match(v452.ItemId)
		 194:34536,195:35582,196:35600,209:35614,210:35615,211:35616
		result67:unwrap()
	end
	 194:34536,195:35582,196:35617,197:35618,200:35620
	module4:GetIfInitialized()
	 194:34536,195:35582,196:35617,203:35622,206:35624
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35582,196:35617,203:35622,206:35627
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35582,196:35617,208:35630
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35582,196:35617,209:35631
	module4:GetIfInitialized()
	 194:34536,195:35582,196:35617,209:35631
	local tiles51 = module4:GetTiles()
	 194:34536,195:35582,196:35617,209:35631
	local module61 = require(ReplicatedStorage.ItemConfig)
	 
	for k105, v453 in pairs(tiles51) do
		 194:34536,195:35582,196:35617,209:35631,210:35632,211:35633
		local result68 = module61.match(v453.ItemId)
		 194:34536,195:35582,196:35617,209:35631,210:35632,211:35633
		result68:unwrap()
	end
	 194:34536,195:35582
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35582,68:35634
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i349, v454 in ipairs(children125) do
	end
	 194:34536,195:35582,68:35634
	local NPCs172 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35582,68:35634
	local children180 = NPCs172:GetChildren()
	 
	for i350, v455 in ipairs(children180) do
	end
	 194:34536
	_G.currentTweenID = 365
	 194:34536
	task.wait(0.1)
	 194:34536,195:35637,196:35638,197:35639,200:35641
	module4:GetIfInitialized()
	 194:34536,195:35637,196:35638,203:35643,206:35645
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35637,196:35638,203:35643,206:35648
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35637,196:35638,208:35651
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35637,196:35638,209:35652
	module4:GetIfInitialized()
	 194:34536,195:35637,196:35638,209:35652
	local tiles52 = module4:GetTiles()
	 194:34536,195:35637,196:35638,209:35652
	local module62 = require(ReplicatedStorage.ItemConfig)
	 
	for k106, v456 in pairs(tiles52) do
		 194:34536,195:35637,196:35638,209:35652,210:35653,211:35654
		local result69 = module62.match(v456.ItemId)
		 194:34536,195:35637,196:35638,209:35652,210:35653,211:35654
		result69:unwrap()
	end
	 194:34536,195:35637,196:35655,197:35656,200:35658
	module4:GetIfInitialized()
	 194:34536,195:35637,196:35655,203:35660,206:35662
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35637,196:35655,203:35660,206:35665
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35637,196:35655,208:35668
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35637,196:35655,209:35669
	module4:GetIfInitialized()
	 194:34536,195:35637,196:35655,209:35669
	local tiles53 = module4:GetTiles()
	 194:34536,195:35637,196:35655,209:35669
	local module63 = require(ReplicatedStorage.ItemConfig)
	 
	for k107, v457 in pairs(tiles53) do
		 194:34536,195:35637,196:35655,209:35669,210:35670,211:35671
		local result70 = module63.match(v457.ItemId)
		 194:34536,195:35637,196:35655,209:35669,210:35670,211:35671
		result70:unwrap()
	end
	 194:34536,195:35637,196:35672,197:35673,200:35675
	module4:GetIfInitialized()
	 194:34536,195:35637,196:35672,203:35677,206:35679
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35637,196:35672,203:35677,206:35682
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35637,196:35672,208:35685
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35637,196:35672,209:35686
	module4:GetIfInitialized()
	 194:34536,195:35637,196:35672,209:35686
	local tiles54 = module4:GetTiles()
	 194:34536,195:35637,196:35672,209:35686
	local module64 = require(ReplicatedStorage.ItemConfig)
	 
	for k108, v458 in pairs(tiles54) do
		 194:34536,195:35637,196:35672,209:35686,210:35687,211:35688
		local result71 = module64.match(v458.ItemId)
		 194:34536,195:35637,196:35672,209:35686,210:35687,211:35688
		result71:unwrap()
	end
	 194:34536,195:35637
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35637,68:35689
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i351, v459 in ipairs(children125) do
	end
	 194:34536,195:35637,68:35689
	local NPCs173 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35637,68:35689
	local children181 = NPCs173:GetChildren()
	 
	for i352, v460 in ipairs(children181) do
	end
	 194:34536
	_G.currentTweenID = 366
	 194:34536
	task.wait(0.1)
	 194:34536,195:35692,196:35693,197:35694,200:35696
	module4:GetIfInitialized()
	 194:34536,195:35692,196:35693,203:35698,206:35700
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35692,196:35693,203:35698,206:35703
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35692,196:35693,208:35706
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35692,196:35693,209:35707
	module4:GetIfInitialized()
	 194:34536,195:35692,196:35693,209:35707
	local tiles55 = module4:GetTiles()
	 194:34536,195:35692,196:35693,209:35707
	local module65 = require(ReplicatedStorage.ItemConfig)
	 
	for k109, v461 in pairs(tiles55) do
		 194:34536,195:35692,196:35693,209:35707,210:35708,211:35709
		local result72 = module65.match(v461.ItemId)
		 194:34536,195:35692,196:35693,209:35707,210:35708,211:35709
		result72:unwrap()
	end
	 194:34536,195:35692,196:35710,197:35711,200:35713
	module4:GetIfInitialized()
	 194:34536,195:35692,196:35710,203:35715,206:35717
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35692,196:35710,203:35715,206:35720
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35692,196:35710,208:35723
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35692,196:35710,209:35724
	module4:GetIfInitialized()
	 194:34536,195:35692,196:35710,209:35724
	local tiles56 = module4:GetTiles()
	 194:34536,195:35692,196:35710,209:35724
	local module66 = require(ReplicatedStorage.ItemConfig)
	 
	for k110, v462 in pairs(tiles56) do
		 194:34536,195:35692,196:35710,209:35724,210:35725,211:35726
		local result73 = module66.match(v462.ItemId)
		 194:34536,195:35692,196:35710,209:35724,210:35725,211:35726
		result73:unwrap()
	end
	 194:34536,195:35692,196:35727,197:35728,200:35730
	module4:GetIfInitialized()
	 194:34536,195:35692,196:35727,203:35732,206:35734
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35692,196:35727,203:35732,206:35737
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35692,196:35727,208:35740
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35692,196:35727,209:35741
	module4:GetIfInitialized()
	 194:34536,195:35692,196:35727,209:35741
	local tiles57 = module4:GetTiles()
	 194:34536,195:35692,196:35727,209:35741
	local module67 = require(ReplicatedStorage.ItemConfig)
	 
	for k111, v463 in pairs(tiles57) do
		 194:34536,195:35692,196:35727,209:35741,210:35742,211:35743
		local result74 = module67.match(v463.ItemId)
		 194:34536,195:35692,196:35727,209:35741,210:35742,211:35743
		result74:unwrap()
	end
	 194:34536,195:35692
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35692,68:35744
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i353, v464 in ipairs(children125) do
	end
	 194:34536,195:35692,68:35744
	local NPCs174 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35692,68:35744
	local children182 = NPCs174:GetChildren()
	 
	for i354, v465 in ipairs(children182) do
	end
	 194:34536
	_G.currentTweenID = 367
	 194:34536
	task.wait(0.1)
	 194:34536,195:35747,196:35748,197:35749,200:35751
	module4:GetIfInitialized()
	 194:34536,195:35747,196:35748,203:35753,206:35755
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35747,196:35748,203:35753,206:35758
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35747,196:35748,208:35761
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35747,196:35748,209:35762
	module4:GetIfInitialized()
	 194:34536,195:35747,196:35748,209:35762
	local tiles58 = module4:GetTiles()
	 194:34536,195:35747,196:35748,209:35762
	local module68 = require(ReplicatedStorage.ItemConfig)
	 
	for k112, v466 in pairs(tiles58) do
		 194:34536,195:35747,196:35748,209:35762,210:35763,211:35764
		local result75 = module68.match(v466.ItemId)
		 194:34536,195:35747,196:35748,209:35762,210:35763,211:35764
		result75:unwrap()
	end
	 194:34536,195:35747,196:35765,197:35766,200:35768
	module4:GetIfInitialized()
	 194:34536,195:35747,196:35765,203:35770,206:35772
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35747,196:35765,203:35770,206:35775
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35747,196:35765,208:35778
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35747,196:35765,209:35779
	module4:GetIfInitialized()
	 194:34536,195:35747,196:35765,209:35779
	local tiles59 = module4:GetTiles()
	 194:34536,195:35747,196:35765,209:35779
	local module69 = require(ReplicatedStorage.ItemConfig)
	 
	for k113, v467 in pairs(tiles59) do
		 194:34536,195:35747,196:35765,209:35779,210:35780,211:35781
		local result76 = module69.match(v467.ItemId)
		 194:34536,195:35747,196:35765,209:35779,210:35780,211:35781
		result76:unwrap()
	end
	 194:34536,195:35747,196:35782,197:35783,200:35785
	module4:GetIfInitialized()
	 194:34536,195:35747,196:35782,203:35787,206:35789
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35747,196:35782,203:35787,206:35792
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35747,196:35782,208:35795
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35747,196:35782,209:35796
	module4:GetIfInitialized()
	 194:34536,195:35747,196:35782,209:35796
	local tiles60 = module4:GetTiles()
	 194:34536,195:35747,196:35782,209:35796
	local module70 = require(ReplicatedStorage.ItemConfig)
	 
	for k114, v468 in pairs(tiles60) do
		 194:34536,195:35747,196:35782,209:35796,210:35797,211:35798
		local result77 = module70.match(v468.ItemId)
		 194:34536,195:35747,196:35782,209:35796,210:35797,211:35798
		result77:unwrap()
	end
	 194:34536,195:35747
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35747,68:35799
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i355, v469 in ipairs(children125) do
	end
	 194:34536,195:35747,68:35799
	local NPCs175 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35747,68:35799
	local children183 = NPCs175:GetChildren()
	 
	for i356, v470 in ipairs(children183) do
	end
	 194:34536
	_G.currentTweenID = 368
	 194:34536
	task.wait(0.1)
	 194:34536,195:35802,196:35803,197:35804,200:35806
	module4:GetIfInitialized()
	 194:34536,195:35802,196:35803,203:35808,206:35810
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35802,196:35803,203:35808,206:35813
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35802,196:35803,208:35816
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35802,196:35803,209:35817
	module4:GetIfInitialized()
	 194:34536,195:35802,196:35803,209:35817
	local tiles61 = module4:GetTiles()
	 194:34536,195:35802,196:35803,209:35817
	local module71 = require(ReplicatedStorage.ItemConfig)
	 
	for k115, v471 in pairs(tiles61) do
		 194:34536,195:35802,196:35803,209:35817,210:35818,211:35819
		local result78 = module71.match(v471.ItemId)
		 194:34536,195:35802,196:35803,209:35817,210:35818,211:35819
		result78:unwrap()
	end
	 194:34536,195:35802,196:35820,197:35821,200:35823
	module4:GetIfInitialized()
	 194:34536,195:35802,196:35820,203:35825,206:35827
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35802,196:35820,203:35825,206:35830
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35802,196:35820,208:35833
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35802,196:35820,209:35834
	module4:GetIfInitialized()
	 194:34536,195:35802,196:35820,209:35834
	local tiles62 = module4:GetTiles()
	 194:34536,195:35802,196:35820,209:35834
	local module72 = require(ReplicatedStorage.ItemConfig)
	 
	for k116, v472 in pairs(tiles62) do
		 194:34536,195:35802,196:35820,209:35834,210:35835,211:35836
		local result79 = module72.match(v472.ItemId)
		 194:34536,195:35802,196:35820,209:35834,210:35835,211:35836
		result79:unwrap()
	end
	 194:34536,195:35802,196:35837,197:35838,200:35840
	module4:GetIfInitialized()
	 194:34536,195:35802,196:35837,203:35842,206:35844
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35802,196:35837,203:35842,206:35847
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35802,196:35837,208:35850
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35802,196:35837,209:35851
	module4:GetIfInitialized()
	 194:34536,195:35802,196:35837,209:35851
	local tiles63 = module4:GetTiles()
	 194:34536,195:35802,196:35837,209:35851
	local module73 = require(ReplicatedStorage.ItemConfig)
	 
	for k117, v473 in pairs(tiles63) do
		 194:34536,195:35802,196:35837,209:35851,210:35852,211:35853
		local result80 = module73.match(v473.ItemId)
		 194:34536,195:35802,196:35837,209:35851,210:35852,211:35853
		result80:unwrap()
	end
	 194:34536,195:35802
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35802,68:35854
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i357, v474 in ipairs(children125) do
	end
	 194:34536,195:35802,68:35854
	local NPCs176 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35802,68:35854
	local children184 = NPCs176:GetChildren()
	 
	for i358, v475 in ipairs(children184) do
	end
	 194:34536
	_G.currentTweenID = 369
	 194:34536
	task.wait(0.1)
	 194:34536,195:35857,196:35858,197:35859,200:35861
	module4:GetIfInitialized()
	 194:34536,195:35857,196:35858,203:35863,206:35865
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35857,196:35858,203:35863,206:35868
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35857,196:35858,208:35871
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35857,196:35858,209:35872
	module4:GetIfInitialized()
	 194:34536,195:35857,196:35858,209:35872
	local tiles64 = module4:GetTiles()
	 194:34536,195:35857,196:35858,209:35872
	local module74 = require(ReplicatedStorage.ItemConfig)
	 
	for k118, v476 in pairs(tiles64) do
		 194:34536,195:35857,196:35858,209:35872,210:35873,211:35874
		local result81 = module74.match(v476.ItemId)
		 194:34536,195:35857,196:35858,209:35872,210:35873,211:35874
		result81:unwrap()
	end
	 194:34536,195:35857,196:35875,197:35876,200:35878
	module4:GetIfInitialized()
	 194:34536,195:35857,196:35875,203:35880,206:35882
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35857,196:35875,203:35880,206:35885
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35857,196:35875,208:35888
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35857,196:35875,209:35889
	module4:GetIfInitialized()
	 194:34536,195:35857,196:35875,209:35889
	local tiles65 = module4:GetTiles()
	 194:34536,195:35857,196:35875,209:35889
	local module75 = require(ReplicatedStorage.ItemConfig)
	 
	for k119, v477 in pairs(tiles65) do
		 194:34536,195:35857,196:35875,209:35889,210:35890,211:35891
		local result82 = module75.match(v477.ItemId)
		 194:34536,195:35857,196:35875,209:35889,210:35890,211:35891
		result82:unwrap()
	end
	 194:34536,195:35857,196:35892,197:35893,200:35895
	module4:GetIfInitialized()
	 194:34536,195:35857,196:35892,203:35897,206:35899
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35857,196:35892,203:35897,206:35902
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35857,196:35892,208:35905
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35857,196:35892,209:35906
	module4:GetIfInitialized()
	 194:34536,195:35857,196:35892,209:35906
	local tiles66 = module4:GetTiles()
	 194:34536,195:35857,196:35892,209:35906
	local module76 = require(ReplicatedStorage.ItemConfig)
	 
	for k120, v478 in pairs(tiles66) do
		 194:34536,195:35857,196:35892,209:35906,210:35907,211:35908
		local result83 = module76.match(v478.ItemId)
		 194:34536,195:35857,196:35892,209:35906,210:35907,211:35908
		result83:unwrap()
	end
	 194:34536,195:35857
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35857,68:35909
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i359, v479 in ipairs(children125) do
	end
	 194:34536,195:35857,68:35909
	local NPCs177 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35857,68:35909
	local children185 = NPCs177:GetChildren()
	 
	for i360, v480 in ipairs(children185) do
	end
	 194:34536
	_G.currentTweenID = 370
	 194:34536
	task.wait(0.1)
	 194:34536,195:35912,196:35913,197:35914,200:35916
	module4:GetIfInitialized()
	 194:34536,195:35912,196:35913,203:35918,206:35920
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35912,196:35913,203:35918,206:35923
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35912,196:35913,208:35926
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35912,196:35913,209:35927
	module4:GetIfInitialized()
	 194:34536,195:35912,196:35913,209:35927
	local tiles67 = module4:GetTiles()
	 194:34536,195:35912,196:35913,209:35927
	local module77 = require(ReplicatedStorage.ItemConfig)
	 
	for k121, v481 in pairs(tiles67) do
		 194:34536,195:35912,196:35913,209:35927,210:35928,211:35929
		local result84 = module77.match(v481.ItemId)
		 194:34536,195:35912,196:35913,209:35927,210:35928,211:35929
		result84:unwrap()
	end
	 194:34536,195:35912,196:35930,197:35931,200:35933
	module4:GetIfInitialized()
	 194:34536,195:35912,196:35930,203:35935,206:35937
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35912,196:35930,203:35935,206:35940
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35912,196:35930,208:35943
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35912,196:35930,209:35944
	module4:GetIfInitialized()
	 194:34536,195:35912,196:35930,209:35944
	local tiles68 = module4:GetTiles()
	 194:34536,195:35912,196:35930,209:35944
	local module78 = require(ReplicatedStorage.ItemConfig)
	 
	for k122, v482 in pairs(tiles68) do
		 194:34536,195:35912,196:35930,209:35944,210:35945,211:35946
		local result85 = module78.match(v482.ItemId)
		 194:34536,195:35912,196:35930,209:35944,210:35945,211:35946
		result85:unwrap()
	end
	 194:34536,195:35912,196:35947,197:35948,200:35950
	module4:GetIfInitialized()
	 194:34536,195:35912,196:35947,203:35952,206:35954
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35912,196:35947,203:35952,206:35957
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35912,196:35947,208:35960
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35912,196:35947,209:35961
	module4:GetIfInitialized()
	 194:34536,195:35912,196:35947,209:35961
	local tiles69 = module4:GetTiles()
	 194:34536,195:35912,196:35947,209:35961
	local module79 = require(ReplicatedStorage.ItemConfig)
	 
	for k123, v483 in pairs(tiles69) do
		 194:34536,195:35912,196:35947,209:35961,210:35962,211:35963
		local result86 = module79.match(v483.ItemId)
		 194:34536,195:35912,196:35947,209:35961,210:35962,211:35963
		result86:unwrap()
	end
	 194:34536,195:35912
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35912,68:35964
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i361, v484 in ipairs(children125) do
	end
	 194:34536,195:35912,68:35964
	local NPCs178 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35912,68:35964
	local children186 = NPCs178:GetChildren()
	 
	for i362, v485 in ipairs(children186) do
	end
	 194:34536
	_G.currentTweenID = 371
	 194:34536
	task.wait(0.1)
	 194:34536,195:35967,196:35968,197:35969,200:35971
	module4:GetIfInitialized()
	 194:34536,195:35967,196:35968,203:35973,206:35975
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35967,196:35968,203:35973,206:35978
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35967,196:35968,208:35981
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35967,196:35968,209:35982
	module4:GetIfInitialized()
	 194:34536,195:35967,196:35968,209:35982
	local tiles70 = module4:GetTiles()
	 194:34536,195:35967,196:35968,209:35982
	local module80 = require(ReplicatedStorage.ItemConfig)
	 
	for k124, v486 in pairs(tiles70) do
		 194:34536,195:35967,196:35968,209:35982,210:35983,211:35984
		local result87 = module80.match(v486.ItemId)
		 194:34536,195:35967,196:35968,209:35982,210:35983,211:35984
		result87:unwrap()
	end
	 194:34536,195:35967,196:35985,197:35986,200:35988
	module4:GetIfInitialized()
	 194:34536,195:35967,196:35985,203:35990,206:35992
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35967,196:35985,203:35990,206:35995
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35967,196:35985,208:35998
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35967,196:35985,209:35999
	module4:GetIfInitialized()
	 194:34536,195:35967,196:35985,209:35999
	local tiles71 = module4:GetTiles()
	 194:34536,195:35967,196:35985,209:35999
	local module81 = require(ReplicatedStorage.ItemConfig)
	 
	for k125, v487 in pairs(tiles71) do
		 194:34536,195:35967,196:35985,209:35999,210:36000,211:36001
		local result88 = module81.match(v487.ItemId)
		 194:34536,195:35967,196:35985,209:35999,210:36000,211:36001
		result88:unwrap()
	end
	 194:34536,195:35967,196:36002,197:36003,200:36005
	module4:GetIfInitialized()
	 194:34536,195:35967,196:36002,203:36007,206:36009
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:35967,196:36002,203:36007,206:36012
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:35967,196:36002,208:36015
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:35967,196:36002,209:36016
	module4:GetIfInitialized()
	 194:34536,195:35967,196:36002,209:36016
	local tiles72 = module4:GetTiles()
	 194:34536,195:35967,196:36002,209:36016
	local module82 = require(ReplicatedStorage.ItemConfig)
	 
	for k126, v488 in pairs(tiles72) do
		 194:34536,195:35967,196:36002,209:36016,210:36017,211:36018
		local result89 = module82.match(v488.ItemId)
		 194:34536,195:35967,196:36002,209:36016,210:36017,211:36018
		result89:unwrap()
	end
	 194:34536,195:35967
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:35967,68:36019
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i363, v489 in ipairs(children125) do
	end
	 194:34536,195:35967,68:36019
	local NPCs179 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:35967,68:36019
	local children187 = NPCs179:GetChildren()
	 
	for i364, v490 in ipairs(children187) do
	end
	 194:34536
	_G.currentTweenID = 372
	 194:34536
	task.wait(0.1)
	 194:34536,195:36022,196:36023,197:36024,200:36026
	module4:GetIfInitialized()
	 194:34536,195:36022,196:36023,203:36028,206:36030
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36022,196:36023,203:36028,206:36033
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36022,196:36023,208:36036
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36022,196:36023,209:36037
	module4:GetIfInitialized()
	 194:34536,195:36022,196:36023,209:36037
	local tiles73 = module4:GetTiles()
	 194:34536,195:36022,196:36023,209:36037
	local module83 = require(ReplicatedStorage.ItemConfig)
	 
	for k127, v491 in pairs(tiles73) do
		 194:34536,195:36022,196:36023,209:36037,210:36038,211:36039
		local result90 = module83.match(v491.ItemId)
		 194:34536,195:36022,196:36023,209:36037,210:36038,211:36039
		result90:unwrap()
	end
	 194:34536,195:36022,196:36040,197:36041,200:36043
	module4:GetIfInitialized()
	 194:34536,195:36022,196:36040,203:36045,206:36047
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36022,196:36040,203:36045,206:36050
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36022,196:36040,208:36053
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36022,196:36040,209:36054
	module4:GetIfInitialized()
	 194:34536,195:36022,196:36040,209:36054
	local tiles74 = module4:GetTiles()
	 194:34536,195:36022,196:36040,209:36054
	local module84 = require(ReplicatedStorage.ItemConfig)
	 
	for k128, v492 in pairs(tiles74) do
		 194:34536,195:36022,196:36040,209:36054,210:36055,211:36056
		local result91 = module84.match(v492.ItemId)
		 194:34536,195:36022,196:36040,209:36054,210:36055,211:36056
		result91:unwrap()
	end
	 194:34536,195:36022,196:36057,197:36058,200:36060
	module4:GetIfInitialized()
	 194:34536,195:36022,196:36057,203:36062,206:36064
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36022,196:36057,203:36062,206:36067
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36022,196:36057,208:36070
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36022,196:36057,209:36071
	module4:GetIfInitialized()
	 194:34536,195:36022,196:36057,209:36071
	local tiles75 = module4:GetTiles()
	 194:34536,195:36022,196:36057,209:36071
	local module85 = require(ReplicatedStorage.ItemConfig)
	 
	for k129, v493 in pairs(tiles75) do
		 194:34536,195:36022,196:36057,209:36071,210:36072,211:36073
		local result92 = module85.match(v493.ItemId)
		 194:34536,195:36022,196:36057,209:36071,210:36072,211:36073
		result92:unwrap()
	end
	 194:34536,195:36022
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36022,68:36074
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i365, v494 in ipairs(children125) do
	end
	 194:34536,195:36022,68:36074
	local NPCs180 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36022,68:36074
	local children188 = NPCs180:GetChildren()
	 
	for i366, v495 in ipairs(children188) do
	end
	 194:34536
	_G.currentTweenID = 373
	 194:34536
	task.wait(0.1)
	 194:34536,195:36077,196:36078,197:36079,200:36081
	module4:GetIfInitialized()
	 194:34536,195:36077,196:36078,203:36083,206:36085
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36077,196:36078,203:36083,206:36088
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36077,196:36078,208:36091
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36077,196:36078,209:36092
	module4:GetIfInitialized()
	 194:34536,195:36077,196:36078,209:36092
	local tiles76 = module4:GetTiles()
	 194:34536,195:36077,196:36078,209:36092
	local module86 = require(ReplicatedStorage.ItemConfig)
	 
	for k130, v496 in pairs(tiles76) do
		 194:34536,195:36077,196:36078,209:36092,210:36093,211:36094
		local result93 = module86.match(v496.ItemId)
		 194:34536,195:36077,196:36078,209:36092,210:36093,211:36094
		result93:unwrap()
	end
	 194:34536,195:36077,196:36095,197:36096,200:36098
	module4:GetIfInitialized()
	 194:34536,195:36077,196:36095,203:36100,206:36102
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36077,196:36095,203:36100,206:36105
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36077,196:36095,208:36108
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36077,196:36095,209:36109
	module4:GetIfInitialized()
	 194:34536,195:36077,196:36095,209:36109
	local tiles77 = module4:GetTiles()
	 194:34536,195:36077,196:36095,209:36109
	local module87 = require(ReplicatedStorage.ItemConfig)
	 
	for k131, v497 in pairs(tiles77) do
		 194:34536,195:36077,196:36095,209:36109,210:36110,211:36111
		local result94 = module87.match(v497.ItemId)
		 194:34536,195:36077,196:36095,209:36109,210:36110,211:36111
		result94:unwrap()
	end
	 194:34536,195:36077,196:36112,197:36113,200:36115
	module4:GetIfInitialized()
	 194:34536,195:36077,196:36112,203:36117,206:36119
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36077,196:36112,203:36117,206:36122
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36077,196:36112,208:36125
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36077,196:36112,209:36126
	module4:GetIfInitialized()
	 194:34536,195:36077,196:36112,209:36126
	local tiles78 = module4:GetTiles()
	 194:34536,195:36077,196:36112,209:36126
	local module88 = require(ReplicatedStorage.ItemConfig)
	 
	for k132, v498 in pairs(tiles78) do
		 194:34536,195:36077,196:36112,209:36126,210:36127,211:36128
		local result95 = module88.match(v498.ItemId)
		 194:34536,195:36077,196:36112,209:36126,210:36127,211:36128
		result95:unwrap()
	end
	 194:34536,195:36077
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36077,68:36129
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i367, v499 in ipairs(children125) do
	end
	 194:34536,195:36077,68:36129
	local NPCs181 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36077,68:36129
	local children189 = NPCs181:GetChildren()
	 
	for i368, v500 in ipairs(children189) do
	end
	 194:34536
	_G.currentTweenID = 374
	 194:34536
	task.wait(0.1)
	 194:34536,195:36132,196:36133,197:36134,200:36136
	module4:GetIfInitialized()
	 194:34536,195:36132,196:36133,203:36138,206:36140
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36132,196:36133,203:36138,206:36143
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36132,196:36133,208:36146
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36132,196:36133,209:36147
	module4:GetIfInitialized()
	 194:34536,195:36132,196:36133,209:36147
	local tiles79 = module4:GetTiles()
	 194:34536,195:36132,196:36133,209:36147
	local module89 = require(ReplicatedStorage.ItemConfig)
	 
	for k133, v501 in pairs(tiles79) do
		 194:34536,195:36132,196:36133,209:36147,210:36148,211:36149
		local result96 = module89.match(v501.ItemId)
		 194:34536,195:36132,196:36133,209:36147,210:36148,211:36149
		result96:unwrap()
	end
	 194:34536,195:36132,196:36150,197:36151,200:36153
	module4:GetIfInitialized()
	 194:34536,195:36132,196:36150,203:36155,206:36157
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36132,196:36150,203:36155,206:36160
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36132,196:36150,208:36163
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36132,196:36150,209:36164
	module4:GetIfInitialized()
	 194:34536,195:36132,196:36150,209:36164
	local tiles80 = module4:GetTiles()
	 194:34536,195:36132,196:36150,209:36164
	local module90 = require(ReplicatedStorage.ItemConfig)
	 
	for k134, v502 in pairs(tiles80) do
		 194:34536,195:36132,196:36150,209:36164,210:36165,211:36166
		local result97 = module90.match(v502.ItemId)
		 194:34536,195:36132,196:36150,209:36164,210:36165,211:36166
		result97:unwrap()
	end
	 194:34536,195:36132,196:36167,197:36168,200:36170
	module4:GetIfInitialized()
	 194:34536,195:36132,196:36167,203:36172,206:36174
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36132,196:36167,203:36172,206:36177
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36132,196:36167,208:36180
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36132,196:36167,209:36181
	module4:GetIfInitialized()
	 194:34536,195:36132,196:36167,209:36181
	local tiles81 = module4:GetTiles()
	 194:34536,195:36132,196:36167,209:36181
	local module91 = require(ReplicatedStorage.ItemConfig)
	 
	for k135, v503 in pairs(tiles81) do
		 194:34536,195:36132,196:36167,209:36181,210:36182,211:36183
		local result98 = module91.match(v503.ItemId)
		 194:34536,195:36132,196:36167,209:36181,210:36182,211:36183
		result98:unwrap()
	end
	 194:34536,195:36132
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36132,68:36184
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i369, v504 in ipairs(children125) do
	end
	 194:34536,195:36132,68:36184
	local NPCs182 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36132,68:36184
	local children190 = NPCs182:GetChildren()
	 
	for i370, v505 in ipairs(children190) do
	end
	 194:34536
	_G.currentTweenID = 375
	 194:34536
	task.wait(0.1)
	 194:34536,195:36187,196:36188,197:36189,200:36191
	module4:GetIfInitialized()
	 194:34536,195:36187,196:36188,203:36193,206:36195
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36187,196:36188,203:36193,206:36198
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36187,196:36188,208:36201
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36187,196:36188,209:36202
	module4:GetIfInitialized()
	 194:34536,195:36187,196:36188,209:36202
	local tiles82 = module4:GetTiles()
	 194:34536,195:36187,196:36188,209:36202
	local module92 = require(ReplicatedStorage.ItemConfig)
	 
	for k136, v506 in pairs(tiles82) do
		 194:34536,195:36187,196:36188,209:36202,210:36203,211:36204
		local result99 = module92.match(v506.ItemId)
		 194:34536,195:36187,196:36188,209:36202,210:36203,211:36204
		result99:unwrap()
	end
	 194:34536,195:36187,196:36205,197:36206,200:36208
	module4:GetIfInitialized()
	 194:34536,195:36187,196:36205,203:36210,206:36212
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36187,196:36205,203:36210,206:36215
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36187,196:36205,208:36218
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36187,196:36205,209:36219
	module4:GetIfInitialized()
	 194:34536,195:36187,196:36205,209:36219
	local tiles83 = module4:GetTiles()
	 194:34536,195:36187,196:36205,209:36219
	local module93 = require(ReplicatedStorage.ItemConfig)
	 
	for k137, v507 in pairs(tiles83) do
		 194:34536,195:36187,196:36205,209:36219,210:36220,211:36221
		local result100 = module93.match(v507.ItemId)
		 194:34536,195:36187,196:36205,209:36219,210:36220,211:36221
		result100:unwrap()
	end
	 194:34536,195:36187,196:36222,197:36223,200:36225
	module4:GetIfInitialized()
	 194:34536,195:36187,196:36222,203:36227,206:36229
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36187,196:36222,203:36227,206:36232
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36187,196:36222,208:36235
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36187,196:36222,209:36236
	module4:GetIfInitialized()
	 194:34536,195:36187,196:36222,209:36236
	local tiles84 = module4:GetTiles()
	 194:34536,195:36187,196:36222,209:36236
	local module94 = require(ReplicatedStorage.ItemConfig)
	 
	for k138, v508 in pairs(tiles84) do
		 194:34536,195:36187,196:36222,209:36236,210:36237,211:36238
		local result101 = module94.match(v508.ItemId)
		 194:34536,195:36187,196:36222,209:36236,210:36237,211:36238
		result101:unwrap()
	end
	 194:34536,195:36187
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36187,68:36239
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i371, v509 in ipairs(children125) do
	end
	 194:34536,195:36187,68:36239
	local NPCs183 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36187,68:36239
	local children191 = NPCs183:GetChildren()
	 
	for i372, v510 in ipairs(children191) do
	end
	 194:34536
	_G.currentTweenID = 376
	 194:34536
	task.wait(0.1)
	 194:34536,195:36242,196:36243,197:36244,200:36246
	module4:GetIfInitialized()
	 194:34536,195:36242,196:36243,203:36248,206:36250
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36242,196:36243,203:36248,206:36253
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36242,196:36243,208:36256
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36242,196:36243,209:36257
	module4:GetIfInitialized()
	 194:34536,195:36242,196:36243,209:36257
	local tiles85 = module4:GetTiles()
	 194:34536,195:36242,196:36243,209:36257
	local module95 = require(ReplicatedStorage.ItemConfig)
	 
	for k139, v511 in pairs(tiles85) do
		 194:34536,195:36242,196:36243,209:36257,210:36258,211:36259
		local result102 = module95.match(v511.ItemId)
		 194:34536,195:36242,196:36243,209:36257,210:36258,211:36259
		result102:unwrap()
	end
	 194:34536,195:36242,196:36260,197:36261,200:36263
	module4:GetIfInitialized()
	 194:34536,195:36242,196:36260,203:36265,206:36267
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36242,196:36260,203:36265,206:36270
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36242,196:36260,208:36273
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36242,196:36260,209:36274
	module4:GetIfInitialized()
	 194:34536,195:36242,196:36260,209:36274
	local tiles86 = module4:GetTiles()
	 194:34536,195:36242,196:36260,209:36274
	local module96 = require(ReplicatedStorage.ItemConfig)
	 
	for k140, v512 in pairs(tiles86) do
		 194:34536,195:36242,196:36260,209:36274,210:36275,211:36276
		local result103 = module96.match(v512.ItemId)
		 194:34536,195:36242,196:36260,209:36274,210:36275,211:36276
		result103:unwrap()
	end
	 194:34536,195:36242,196:36277,197:36278,200:36280
	module4:GetIfInitialized()
	 194:34536,195:36242,196:36277,203:36282,206:36284
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36242,196:36277,203:36282,206:36287
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36242,196:36277,208:36290
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36242,196:36277,209:36291
	module4:GetIfInitialized()
	 194:34536,195:36242,196:36277,209:36291
	local tiles87 = module4:GetTiles()
	 194:34536,195:36242,196:36277,209:36291
	local module97 = require(ReplicatedStorage.ItemConfig)
	 
	for k141, v513 in pairs(tiles87) do
		 194:34536,195:36242,196:36277,209:36291,210:36292,211:36293
		local result104 = module97.match(v513.ItemId)
		 194:34536,195:36242,196:36277,209:36291,210:36292,211:36293
		result104:unwrap()
	end
	 194:34536,195:36242
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36242,68:36294
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i373, v514 in ipairs(children125) do
	end
	 194:34536,195:36242,68:36294
	local NPCs184 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36242,68:36294
	local children192 = NPCs184:GetChildren()
	 
	for i374, v515 in ipairs(children192) do
	end
	 194:34536
	_G.currentTweenID = 377
	 194:34536
	task.wait(0.1)
	 194:34536,195:36297,196:36298,197:36299,200:36301
	module4:GetIfInitialized()
	 194:34536,195:36297,196:36298,203:36303,206:36305
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36297,196:36298,203:36303,206:36308
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36297,196:36298,208:36311
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36297,196:36298,209:36312
	module4:GetIfInitialized()
	 194:34536,195:36297,196:36298,209:36312
	local tiles88 = module4:GetTiles()
	 194:34536,195:36297,196:36298,209:36312
	local module98 = require(ReplicatedStorage.ItemConfig)
	 
	for k142, v516 in pairs(tiles88) do
		 194:34536,195:36297,196:36298,209:36312,210:36313,211:36314
		local result105 = module98.match(v516.ItemId)
		 194:34536,195:36297,196:36298,209:36312,210:36313,211:36314
		result105:unwrap()
	end
	 194:34536,195:36297,196:36315,197:36316,200:36318
	module4:GetIfInitialized()
	 194:34536,195:36297,196:36315,203:36320,206:36322
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36297,196:36315,203:36320,206:36325
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36297,196:36315,208:36328
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36297,196:36315,209:36329
	module4:GetIfInitialized()
	 194:34536,195:36297,196:36315,209:36329
	local tiles89 = module4:GetTiles()
	 194:34536,195:36297,196:36315,209:36329
	local module99 = require(ReplicatedStorage.ItemConfig)
	 
	for k143, v517 in pairs(tiles89) do
		 194:34536,195:36297,196:36315,209:36329,210:36330,211:36331
		local result106 = module99.match(v517.ItemId)
		 194:34536,195:36297,196:36315,209:36329,210:36330,211:36331
		result106:unwrap()
	end
	 194:34536,195:36297,196:36332,197:36333,200:36335
	module4:GetIfInitialized()
	 194:34536,195:36297,196:36332,203:36337,206:36339
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36297,196:36332,203:36337,206:36342
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36297,196:36332,208:36345
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36297,196:36332,209:36346
	module4:GetIfInitialized()
	 194:34536,195:36297,196:36332,209:36346
	local tiles90 = module4:GetTiles()
	 194:34536,195:36297,196:36332,209:36346
	local module100 = require(ReplicatedStorage.ItemConfig)
	 
	for k144, v518 in pairs(tiles90) do
		 194:34536,195:36297,196:36332,209:36346,210:36347,211:36348
		local result107 = module100.match(v518.ItemId)
		 194:34536,195:36297,196:36332,209:36346,210:36347,211:36348
		result107:unwrap()
	end
	 194:34536,195:36297
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36297,68:36349
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i375, v519 in ipairs(children125) do
	end
	 194:34536,195:36297,68:36349
	local NPCs185 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36297,68:36349
	local children193 = NPCs185:GetChildren()
	 
	for i376, v520 in ipairs(children193) do
	end
	 194:34536
	_G.currentTweenID = 378
	 194:34536
	task.wait(0.1)
	 194:34536,195:36352,196:36353,197:36354,200:36356
	module4:GetIfInitialized()
	 194:34536,195:36352,196:36353,203:36358,206:36360
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36352,196:36353,203:36358,206:36363
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36352,196:36353,208:36366
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36352,196:36353,209:36367
	module4:GetIfInitialized()
	 194:34536,195:36352,196:36353,209:36367
	local tiles91 = module4:GetTiles()
	 194:34536,195:36352,196:36353,209:36367
	local module101 = require(ReplicatedStorage.ItemConfig)
	 
	for k145, v521 in pairs(tiles91) do
		 194:34536,195:36352,196:36353,209:36367,210:36368,211:36369
		local result108 = module101.match(v521.ItemId)
		 194:34536,195:36352,196:36353,209:36367,210:36368,211:36369
		result108:unwrap()
	end
	 194:34536,195:36352,196:36370,197:36371,200:36373
	module4:GetIfInitialized()
	 194:34536,195:36352,196:36370,203:36375,206:36377
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36352,196:36370,203:36375,206:36380
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36352,196:36370,208:36383
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36352,196:36370,209:36384
	module4:GetIfInitialized()
	 194:34536,195:36352,196:36370,209:36384
	local tiles92 = module4:GetTiles()
	 194:34536,195:36352,196:36370,209:36384
	local module102 = require(ReplicatedStorage.ItemConfig)
	 
	for k146, v522 in pairs(tiles92) do
		 194:34536,195:36352,196:36370,209:36384,210:36385,211:36386
		local result109 = module102.match(v522.ItemId)
		 194:34536,195:36352,196:36370,209:36384,210:36385,211:36386
		result109:unwrap()
	end
	 194:34536,195:36352,196:36387,197:36388,200:36390
	module4:GetIfInitialized()
	 194:34536,195:36352,196:36387,203:36392,206:36394
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36352,196:36387,203:36392,206:36397
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36352,196:36387,208:36400
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36352,196:36387,209:36401
	module4:GetIfInitialized()
	 194:34536,195:36352,196:36387,209:36401
	local tiles93 = module4:GetTiles()
	 194:34536,195:36352,196:36387,209:36401
	local module103 = require(ReplicatedStorage.ItemConfig)
	 
	for k147, v523 in pairs(tiles93) do
		 194:34536,195:36352,196:36387,209:36401,210:36402,211:36403
		local result110 = module103.match(v523.ItemId)
		 194:34536,195:36352,196:36387,209:36401,210:36402,211:36403
		result110:unwrap()
	end
	 194:34536,195:36352
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36352,68:36404
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i377, v524 in ipairs(children125) do
	end
	 194:34536,195:36352,68:36404
	local NPCs186 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36352,68:36404
	local children194 = NPCs186:GetChildren()
	 
	for i378, v525 in ipairs(children194) do
	end
	 194:34536
	_G.currentTweenID = 379
	 194:34536
	task.wait(0.1)
	 194:34536,195:36407,196:36408,197:36409,200:36411
	module4:GetIfInitialized()
	 194:34536,195:36407,196:36408,203:36413,206:36415
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36407,196:36408,203:36413,206:36418
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36407,196:36408,208:36421
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36407,196:36408,209:36422
	module4:GetIfInitialized()
	 194:34536,195:36407,196:36408,209:36422
	local tiles94 = module4:GetTiles()
	 194:34536,195:36407,196:36408,209:36422
	local module104 = require(ReplicatedStorage.ItemConfig)
	 
	for k148, v526 in pairs(tiles94) do
		 194:34536,195:36407,196:36408,209:36422,210:36423,211:36424
		local result111 = module104.match(v526.ItemId)
		 194:34536,195:36407,196:36408,209:36422,210:36423,211:36424
		result111:unwrap()
	end
	 194:34536,195:36407,196:36425,197:36426,200:36428
	module4:GetIfInitialized()
	 194:34536,195:36407,196:36425,203:36430,206:36432
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36407,196:36425,203:36430,206:36435
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36407,196:36425,208:36438
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36407,196:36425,209:36439
	module4:GetIfInitialized()
	 194:34536,195:36407,196:36425,209:36439
	local tiles95 = module4:GetTiles()
	 194:34536,195:36407,196:36425,209:36439
	local module105 = require(ReplicatedStorage.ItemConfig)
	 
	for k149, v527 in pairs(tiles95) do
		 194:34536,195:36407,196:36425,209:36439,210:36440,211:36441
		local result112 = module105.match(v527.ItemId)
		 194:34536,195:36407,196:36425,209:36439,210:36440,211:36441
		result112:unwrap()
	end
	 194:34536,195:36407,196:36442,197:36443,200:36445
	module4:GetIfInitialized()
	 194:34536,195:36407,196:36442,203:36447,206:36449
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36407,196:36442,203:36447,206:36452
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36407,196:36442,208:36455
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36407,196:36442,209:36456
	module4:GetIfInitialized()
	 194:34536,195:36407,196:36442,209:36456
	local tiles96 = module4:GetTiles()
	 194:34536,195:36407,196:36442,209:36456
	local module106 = require(ReplicatedStorage.ItemConfig)
	 
	for k150, v528 in pairs(tiles96) do
		 194:34536,195:36407,196:36442,209:36456,210:36457,211:36458
		local result113 = module106.match(v528.ItemId)
		 194:34536,195:36407,196:36442,209:36456,210:36457,211:36458
		result113:unwrap()
	end
	 194:34536,195:36407
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36407,68:36459
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i379, v529 in ipairs(children125) do
	end
	 194:34536,195:36407,68:36459
	local NPCs187 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36407,68:36459
	local children195 = NPCs187:GetChildren()
	 
	for i380, v530 in ipairs(children195) do
	end
	 194:34536
	_G.currentTweenID = 380
	 194:34536
	task.wait(0.1)
	 194:34536,195:36462,196:36463,197:36464,200:36466
	module4:GetIfInitialized()
	 194:34536,195:36462,196:36463,203:36468,206:36470
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36462,196:36463,203:36468,206:36473
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36462,196:36463,208:36476
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36462,196:36463,209:36477
	module4:GetIfInitialized()
	 194:34536,195:36462,196:36463,209:36477
	local tiles97 = module4:GetTiles()
	 194:34536,195:36462,196:36463,209:36477
	local module107 = require(ReplicatedStorage.ItemConfig)
	 
	for k151, v531 in pairs(tiles97) do
		 194:34536,195:36462,196:36463,209:36477,210:36478,211:36479
		local result114 = module107.match(v531.ItemId)
		 194:34536,195:36462,196:36463,209:36477,210:36478,211:36479
		result114:unwrap()
	end
	 194:34536,195:36462,196:36480,197:36481,200:36483
	module4:GetIfInitialized()
	 194:34536,195:36462,196:36480,203:36485,206:36487
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36462,196:36480,203:36485,206:36490
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36462,196:36480,208:36493
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36462,196:36480,209:36494
	module4:GetIfInitialized()
	 194:34536,195:36462,196:36480,209:36494
	local tiles98 = module4:GetTiles()
	 194:34536,195:36462,196:36480,209:36494
	local module108 = require(ReplicatedStorage.ItemConfig)
	 
	for k152, v532 in pairs(tiles98) do
		 194:34536,195:36462,196:36480,209:36494,210:36495,211:36496
		local result115 = module108.match(v532.ItemId)
		 194:34536,195:36462,196:36480,209:36494,210:36495,211:36496
		result115:unwrap()
	end
	 194:34536,195:36462,196:36497,197:36498,200:36500
	module4:GetIfInitialized()
	 194:34536,195:36462,196:36497,203:36502,206:36504
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36462,196:36497,203:36502,206:36507
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36462,196:36497,208:36510
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36462,196:36497,209:36511
	module4:GetIfInitialized()
	 194:34536,195:36462,196:36497,209:36511
	local tiles99 = module4:GetTiles()
	 194:34536,195:36462,196:36497,209:36511
	local module109 = require(ReplicatedStorage.ItemConfig)
	 
	for k153, v533 in pairs(tiles99) do
		 194:34536,195:36462,196:36497,209:36511,210:36512,211:36513
		local result116 = module109.match(v533.ItemId)
		 194:34536,195:36462,196:36497,209:36511,210:36512,211:36513
		result116:unwrap()
	end
	 194:34536,195:36462
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36462,68:36514
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i381, v534 in ipairs(children125) do
	end
	 194:34536,195:36462,68:36514
	local NPCs188 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36462,68:36514
	local children196 = NPCs188:GetChildren()
	 
	for i382, v535 in ipairs(children196) do
	end
	 194:34536
	_G.currentTweenID = 381
	 194:34536
	task.wait(0.1)
	 194:34536,195:36517,196:36518,197:36519,200:36521
	module4:GetIfInitialized()
	 194:34536,195:36517,196:36518,203:36523,206:36525
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36517,196:36518,203:36523,206:36528
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36517,196:36518,208:36531
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36517,196:36518,209:36532
	module4:GetIfInitialized()
	 194:34536,195:36517,196:36518,209:36532
	local tiles100 = module4:GetTiles()
	 194:34536,195:36517,196:36518,209:36532
	local module110 = require(ReplicatedStorage.ItemConfig)
	 
	for k154, v536 in pairs(tiles100) do
		 194:34536,195:36517,196:36518,209:36532,210:36533,211:36534
		local result117 = module110.match(v536.ItemId)
		 194:34536,195:36517,196:36518,209:36532,210:36533,211:36534
		result117:unwrap()
	end
	 194:34536,195:36517,196:36535,197:36536,200:36538
	module4:GetIfInitialized()
	 194:34536,195:36517,196:36535,203:36540,206:36542
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36517,196:36535,203:36540,206:36545
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36517,196:36535,208:36548
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36517,196:36535,209:36549
	module4:GetIfInitialized()
	 194:34536,195:36517,196:36535,209:36549
	local tiles101 = module4:GetTiles()
	 194:34536,195:36517,196:36535,209:36549
	local module111 = require(ReplicatedStorage.ItemConfig)
	 
	for k155, v537 in pairs(tiles101) do
		 194:34536,195:36517,196:36535,209:36549,210:36550,211:36551
		local result118 = module111.match(v537.ItemId)
		 194:34536,195:36517,196:36535,209:36549,210:36550,211:36551
		result118:unwrap()
	end
	 194:34536,195:36517,196:36552,197:36553,200:36555
	module4:GetIfInitialized()
	 194:34536,195:36517,196:36552,203:36557,206:36559
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36517,196:36552,203:36557,206:36562
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36517,196:36552,208:36565
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36517,196:36552,209:36566
	module4:GetIfInitialized()
	 194:34536,195:36517,196:36552,209:36566
	local tiles102 = module4:GetTiles()
	 194:34536,195:36517,196:36552,209:36566
	local module112 = require(ReplicatedStorage.ItemConfig)
	 
	for k156, v538 in pairs(tiles102) do
		 194:34536,195:36517,196:36552,209:36566,210:36567,211:36568
		local result119 = module112.match(v538.ItemId)
		 194:34536,195:36517,196:36552,209:36566,210:36567,211:36568
		result119:unwrap()
	end
	 194:34536,195:36517
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36517,68:36569
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i383, v539 in ipairs(children125) do
	end
	 194:34536,195:36517,68:36569
	local NPCs189 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36517,68:36569
	local children197 = NPCs189:GetChildren()
	 
	for i384, v540 in ipairs(children197) do
	end
	 194:34536
	_G.currentTweenID = 382
	 194:34536
	task.wait(0.1)
	 194:34536,195:36572,196:36573,197:36574,200:36576
	module4:GetIfInitialized()
	 194:34536,195:36572,196:36573,203:36578,206:36580
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36572,196:36573,203:36578,206:36583
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36572,196:36573,208:36586
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36572,196:36573,209:36587
	module4:GetIfInitialized()
	 194:34536,195:36572,196:36573,209:36587
	local tiles103 = module4:GetTiles()
	 194:34536,195:36572,196:36573,209:36587
	local module113 = require(ReplicatedStorage.ItemConfig)
	 
	for k157, v541 in pairs(tiles103) do
		 194:34536,195:36572,196:36573,209:36587,210:36588,211:36589
		local result120 = module113.match(v541.ItemId)
		 194:34536,195:36572,196:36573,209:36587,210:36588,211:36589
		result120:unwrap()
	end
	 194:34536,195:36572,196:36590,197:36591,200:36593
	module4:GetIfInitialized()
	 194:34536,195:36572,196:36590,203:36595,206:36597
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36572,196:36590,203:36595,206:36600
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36572,196:36590,208:36603
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36572,196:36590,209:36604
	module4:GetIfInitialized()
	 194:34536,195:36572,196:36590,209:36604
	local tiles104 = module4:GetTiles()
	 194:34536,195:36572,196:36590,209:36604
	local module114 = require(ReplicatedStorage.ItemConfig)
	 
	for k158, v542 in pairs(tiles104) do
		 194:34536,195:36572,196:36590,209:36604,210:36605,211:36606
		local result121 = module114.match(v542.ItemId)
		 194:34536,195:36572,196:36590,209:36604,210:36605,211:36606
		result121:unwrap()
	end
	 194:34536,195:36572,196:36607,197:36608,200:36610
	module4:GetIfInitialized()
	 194:34536,195:36572,196:36607,203:36612,206:36614
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36572,196:36607,203:36612,206:36617
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36572,196:36607,208:36620
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36572,196:36607,209:36621
	module4:GetIfInitialized()
	 194:34536,195:36572,196:36607,209:36621
	local tiles105 = module4:GetTiles()
	 194:34536,195:36572,196:36607,209:36621
	local module115 = require(ReplicatedStorage.ItemConfig)
	 
	for k159, v543 in pairs(tiles105) do
		 194:34536,195:36572,196:36607,209:36621,210:36622,211:36623
		local result122 = module115.match(v543.ItemId)
		 194:34536,195:36572,196:36607,209:36621,210:36622,211:36623
		result122:unwrap()
	end
	 194:34536,195:36572
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36572,68:36624
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i385, v544 in ipairs(children125) do
	end
	 194:34536,195:36572,68:36624
	local NPCs190 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36572,68:36624
	local children198 = NPCs190:GetChildren()
	 
	for i386, v545 in ipairs(children198) do
	end
	 194:34536
	_G.currentTweenID = 383
	 194:34536
	task.wait(0.1)
	 194:34536,195:36627,196:36628,197:36629,200:36631
	module4:GetIfInitialized()
	 194:34536,195:36627,196:36628,203:36633,206:36635
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36627,196:36628,203:36633,206:36638
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36627,196:36628,208:36641
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36627,196:36628,209:36642
	module4:GetIfInitialized()
	 194:34536,195:36627,196:36628,209:36642
	local tiles106 = module4:GetTiles()
	 194:34536,195:36627,196:36628,209:36642
	local module116 = require(ReplicatedStorage.ItemConfig)
	 
	for k160, v546 in pairs(tiles106) do
		 194:34536,195:36627,196:36628,209:36642,210:36643,211:36644
		local result123 = module116.match(v546.ItemId)
		 194:34536,195:36627,196:36628,209:36642,210:36643,211:36644
		result123:unwrap()
	end
	 194:34536,195:36627,196:36645,197:36646,200:36648
	module4:GetIfInitialized()
	 194:34536,195:36627,196:36645,203:36650,206:36652
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36627,196:36645,203:36650,206:36655
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36627,196:36645,208:36658
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36627,196:36645,209:36659
	module4:GetIfInitialized()
	 194:34536,195:36627,196:36645,209:36659
	local tiles107 = module4:GetTiles()
	 194:34536,195:36627,196:36645,209:36659
	local module117 = require(ReplicatedStorage.ItemConfig)
	 
	for k161, v547 in pairs(tiles107) do
		 194:34536,195:36627,196:36645,209:36659,210:36660,211:36661
		local result124 = module117.match(v547.ItemId)
		 194:34536,195:36627,196:36645,209:36659,210:36660,211:36661
		result124:unwrap()
	end
	 194:34536,195:36627,196:36662,197:36663,200:36665
	module4:GetIfInitialized()
	 194:34536,195:36627,196:36662,203:36667,206:36669
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36627,196:36662,203:36667,206:36672
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36627,196:36662,208:36675
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36627,196:36662,209:36676
	module4:GetIfInitialized()
	 194:34536,195:36627,196:36662,209:36676
	local tiles108 = module4:GetTiles()
	 194:34536,195:36627,196:36662,209:36676
	local module118 = require(ReplicatedStorage.ItemConfig)
	 
	for k162, v548 in pairs(tiles108) do
		 194:34536,195:36627,196:36662,209:36676,210:36677,211:36678
		local result125 = module118.match(v548.ItemId)
		 194:34536,195:36627,196:36662,209:36676,210:36677,211:36678
		result125:unwrap()
	end
	 194:34536,195:36627
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36627,68:36679
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i387, v549 in ipairs(children125) do
	end
	 194:34536,195:36627,68:36679
	local NPCs191 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36627,68:36679
	local children199 = NPCs191:GetChildren()
	 
	for i388, v550 in ipairs(children199) do
	end
	 194:34536
	_G.currentTweenID = 384
	 194:34536
	task.wait(0.1)
	 194:34536,195:36682,196:36683,197:36684,200:36686
	module4:GetIfInitialized()
	 194:34536,195:36682,196:36683,203:36688,206:36690
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36682,196:36683,203:36688,206:36693
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36682,196:36683,208:36696
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36682,196:36683,209:36697
	module4:GetIfInitialized()
	 194:34536,195:36682,196:36683,209:36697
	local tiles109 = module4:GetTiles()
	 194:34536,195:36682,196:36683,209:36697
	local module119 = require(ReplicatedStorage.ItemConfig)
	 
	for k163, v551 in pairs(tiles109) do
		 194:34536,195:36682,196:36683,209:36697,210:36698,211:36699
		local result126 = module119.match(v551.ItemId)
		 194:34536,195:36682,196:36683,209:36697,210:36698,211:36699
		result126:unwrap()
	end
	 194:34536,195:36682,196:36700,197:36701,200:36703
	module4:GetIfInitialized()
	 194:34536,195:36682,196:36700,203:36705,206:36707
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36682,196:36700,203:36705,206:36710
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36682,196:36700,208:36713
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36682,196:36700,209:36714
	module4:GetIfInitialized()
	 194:34536,195:36682,196:36700,209:36714
	local tiles110 = module4:GetTiles()
	 194:34536,195:36682,196:36700,209:36714
	local module120 = require(ReplicatedStorage.ItemConfig)
	 
	for k164, v552 in pairs(tiles110) do
		 194:34536,195:36682,196:36700,209:36714,210:36715,211:36716
		local result127 = module120.match(v552.ItemId)
		 194:34536,195:36682,196:36700,209:36714,210:36715,211:36716
		result127:unwrap()
	end
	 194:34536,195:36682,196:36717,197:36718,200:36720
	module4:GetIfInitialized()
	 194:34536,195:36682,196:36717,203:36722,206:36724
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36682,196:36717,203:36722,206:36727
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36682,196:36717,208:36730
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36682,196:36717,209:36731
	module4:GetIfInitialized()
	 194:34536,195:36682,196:36717,209:36731
	local tiles111 = module4:GetTiles()
	 194:34536,195:36682,196:36717,209:36731
	local module121 = require(ReplicatedStorage.ItemConfig)
	 
	for k165, v553 in pairs(tiles111) do
		 194:34536,195:36682,196:36717,209:36731,210:36732,211:36733
		local result128 = module121.match(v553.ItemId)
		 194:34536,195:36682,196:36717,209:36731,210:36732,211:36733
		result128:unwrap()
	end
	 194:34536,195:36682
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36682,68:36734
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i389, v554 in ipairs(children125) do
	end
	 194:34536,195:36682,68:36734
	local NPCs192 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36682,68:36734
	local children200 = NPCs192:GetChildren()
	 
	for i390, v555 in ipairs(children200) do
	end
	 194:34536
	_G.currentTweenID = 385
	 194:34536
	task.wait(0.1)
	 194:34536,195:36737,196:36738,197:36739,200:36741
	module4:GetIfInitialized()
	 194:34536,195:36737,196:36738,203:36743,206:36745
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36737,196:36738,203:36743,206:36748
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36737,196:36738,208:36751
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36737,196:36738,209:36752
	module4:GetIfInitialized()
	 194:34536,195:36737,196:36738,209:36752
	local tiles112 = module4:GetTiles()
	 194:34536,195:36737,196:36738,209:36752
	local module122 = require(ReplicatedStorage.ItemConfig)
	 
	for k166, v556 in pairs(tiles112) do
		 194:34536,195:36737,196:36738,209:36752,210:36753,211:36754
		local result129 = module122.match(v556.ItemId)
		 194:34536,195:36737,196:36738,209:36752,210:36753,211:36754
		result129:unwrap()
	end
	 194:34536,195:36737,196:36755,197:36756,200:36758
	module4:GetIfInitialized()
	 194:34536,195:36737,196:36755,203:36760,206:36762
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36737,196:36755,203:36760,206:36765
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36737,196:36755,208:36768
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36737,196:36755,209:36769
	module4:GetIfInitialized()
	 194:34536,195:36737,196:36755,209:36769
	local tiles113 = module4:GetTiles()
	 194:34536,195:36737,196:36755,209:36769
	local module123 = require(ReplicatedStorage.ItemConfig)
	 
	for k167, v557 in pairs(tiles113) do
		 194:34536,195:36737,196:36755,209:36769,210:36770,211:36771
		local result130 = module123.match(v557.ItemId)
		 194:34536,195:36737,196:36755,209:36769,210:36770,211:36771
		result130:unwrap()
	end
	 194:34536,195:36737,196:36772,197:36773,200:36775
	module4:GetIfInitialized()
	 194:34536,195:36737,196:36772,203:36777,206:36779
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36737,196:36772,203:36777,206:36782
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36737,196:36772,208:36785
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36737,196:36772,209:36786
	module4:GetIfInitialized()
	 194:34536,195:36737,196:36772,209:36786
	local tiles114 = module4:GetTiles()
	 194:34536,195:36737,196:36772,209:36786
	local module124 = require(ReplicatedStorage.ItemConfig)
	 
	for k168, v558 in pairs(tiles114) do
		 194:34536,195:36737,196:36772,209:36786,210:36787,211:36788
		local result131 = module124.match(v558.ItemId)
		 194:34536,195:36737,196:36772,209:36786,210:36787,211:36788
		result131:unwrap()
	end
	 194:34536,195:36737
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36737,68:36789
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i391, v559 in ipairs(children125) do
	end
	 194:34536,195:36737,68:36789
	local NPCs193 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36737,68:36789
	local children201 = NPCs193:GetChildren()
	 
	for i392, v560 in ipairs(children201) do
	end
	 194:34536
	_G.currentTweenID = 386
	 194:34536
	task.wait(0.1)
	 194:34536,195:36792,196:36793,197:36794,200:36796
	module4:GetIfInitialized()
	 194:34536,195:36792,196:36793,203:36798,206:36800
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36792,196:36793,203:36798,206:36803
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36792,196:36793,208:36806
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36792,196:36793,209:36807
	module4:GetIfInitialized()
	 194:34536,195:36792,196:36793,209:36807
	local tiles115 = module4:GetTiles()
	 194:34536,195:36792,196:36793,209:36807
	local module125 = require(ReplicatedStorage.ItemConfig)
	 
	for k169, v561 in pairs(tiles115) do
		 194:34536,195:36792,196:36793,209:36807,210:36808,211:36809
		local result132 = module125.match(v561.ItemId)
		 194:34536,195:36792,196:36793,209:36807,210:36808,211:36809
		result132:unwrap()
	end
	 194:34536,195:36792,196:36810,197:36811,200:36813
	module4:GetIfInitialized()
	 194:34536,195:36792,196:36810,203:36815,206:36817
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36792,196:36810,203:36815,206:36820
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36792,196:36810,208:36823
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36792,196:36810,209:36824
	module4:GetIfInitialized()
	 194:34536,195:36792,196:36810,209:36824
	local tiles116 = module4:GetTiles()
	 194:34536,195:36792,196:36810,209:36824
	local module126 = require(ReplicatedStorage.ItemConfig)
	 
	for k170, v562 in pairs(tiles116) do
		 194:34536,195:36792,196:36810,209:36824,210:36825,211:36826
		local result133 = module126.match(v562.ItemId)
		 194:34536,195:36792,196:36810,209:36824,210:36825,211:36826
		result133:unwrap()
	end
	 194:34536,195:36792,196:36827,197:36828,200:36830
	module4:GetIfInitialized()
	 194:34536,195:36792,196:36827,203:36832,206:36834
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36792,196:36827,203:36832,206:36837
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36792,196:36827,208:36840
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36792,196:36827,209:36841
	module4:GetIfInitialized()
	 194:34536,195:36792,196:36827,209:36841
	local tiles117 = module4:GetTiles()
	 194:34536,195:36792,196:36827,209:36841
	local module127 = require(ReplicatedStorage.ItemConfig)
	 
	for k171, v563 in pairs(tiles117) do
		 194:34536,195:36792,196:36827,209:36841,210:36842,211:36843
		local result134 = module127.match(v563.ItemId)
		 194:34536,195:36792,196:36827,209:36841,210:36842,211:36843
		result134:unwrap()
	end
	 194:34536,195:36792
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36792,68:36844
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i393, v564 in ipairs(children125) do
	end
	 194:34536,195:36792,68:36844
	local NPCs194 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36792,68:36844
	local children202 = NPCs194:GetChildren()
	 
	for i394, v565 in ipairs(children202) do
	end
	 194:34536
	_G.currentTweenID = 387
	 194:34536
	task.wait(0.1)
	 194:34536,195:36847,196:36848,197:36849,200:36851
	module4:GetIfInitialized()
	 194:34536,195:36847,196:36848,203:36853,206:36855
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36847,196:36848,203:36853,206:36858
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36847,196:36848,208:36861
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36847,196:36848,209:36862
	module4:GetIfInitialized()
	 194:34536,195:36847,196:36848,209:36862
	local tiles118 = module4:GetTiles()
	 194:34536,195:36847,196:36848,209:36862
	local module128 = require(ReplicatedStorage.ItemConfig)
	 
	for k172, v566 in pairs(tiles118) do
		 194:34536,195:36847,196:36848,209:36862,210:36863,211:36864
		local result135 = module128.match(v566.ItemId)
		 194:34536,195:36847,196:36848,209:36862,210:36863,211:36864
		result135:unwrap()
	end
	 194:34536,195:36847,196:36865,197:36866,200:36868
	module4:GetIfInitialized()
	 194:34536,195:36847,196:36865,203:36870,206:36872
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36847,196:36865,203:36870,206:36875
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36847,196:36865,208:36878
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36847,196:36865,209:36879
	module4:GetIfInitialized()
	 194:34536,195:36847,196:36865,209:36879
	local tiles119 = module4:GetTiles()
	 194:34536,195:36847,196:36865,209:36879
	local module129 = require(ReplicatedStorage.ItemConfig)
	 
	for k173, v567 in pairs(tiles119) do
		 194:34536,195:36847,196:36865,209:36879,210:36880,211:36881
		local result136 = module129.match(v567.ItemId)
		 194:34536,195:36847,196:36865,209:36879,210:36880,211:36881
		result136:unwrap()
	end
	 194:34536,195:36847,196:36882,197:36883,200:36885
	module4:GetIfInitialized()
	 194:34536,195:36847,196:36882,203:36887,206:36889
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36847,196:36882,203:36887,206:36892
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36847,196:36882,208:36895
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36847,196:36882,209:36896
	module4:GetIfInitialized()
	 194:34536,195:36847,196:36882,209:36896
	local tiles120 = module4:GetTiles()
	 194:34536,195:36847,196:36882,209:36896
	local module130 = require(ReplicatedStorage.ItemConfig)
	 
	for k174, v568 in pairs(tiles120) do
		 194:34536,195:36847,196:36882,209:36896,210:36897,211:36898
		local result137 = module130.match(v568.ItemId)
		 194:34536,195:36847,196:36882,209:36896,210:36897,211:36898
		result137:unwrap()
	end
	 194:34536,195:36847
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36847,68:36899
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i395, v569 in ipairs(children125) do
	end
	 194:34536,195:36847,68:36899
	local NPCs195 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36847,68:36899
	local children203 = NPCs195:GetChildren()
	 
	for i396, v570 in ipairs(children203) do
	end
	 194:34536
	_G.currentTweenID = 388
	 194:34536
	task.wait(0.1)
	 194:34536,195:36902,196:36903,197:36904,200:36906
	module4:GetIfInitialized()
	 194:34536,195:36902,196:36903,203:36908,206:36910
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36902,196:36903,203:36908,206:36913
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36902,196:36903,208:36916
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36902,196:36903,209:36917
	module4:GetIfInitialized()
	 194:34536,195:36902,196:36903,209:36917
	local tiles121 = module4:GetTiles()
	 194:34536,195:36902,196:36903,209:36917
	local module131 = require(ReplicatedStorage.ItemConfig)
	 
	for k175, v571 in pairs(tiles121) do
		 194:34536,195:36902,196:36903,209:36917,210:36918,211:36919
		local result138 = module131.match(v571.ItemId)
		 194:34536,195:36902,196:36903,209:36917,210:36918,211:36919
		result138:unwrap()
	end
	 194:34536,195:36902,196:36920,197:36921,200:36923
	module4:GetIfInitialized()
	 194:34536,195:36902,196:36920,203:36925,206:36927
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36902,196:36920,203:36925,206:36930
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36902,196:36920,208:36933
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36902,196:36920,209:36934
	module4:GetIfInitialized()
	 194:34536,195:36902,196:36920,209:36934
	local tiles122 = module4:GetTiles()
	 194:34536,195:36902,196:36920,209:36934
	local module132 = require(ReplicatedStorage.ItemConfig)
	 
	for k176, v572 in pairs(tiles122) do
		 194:34536,195:36902,196:36920,209:36934,210:36935,211:36936
		local result139 = module132.match(v572.ItemId)
		 194:34536,195:36902,196:36920,209:36934,210:36935,211:36936
		result139:unwrap()
	end
	 194:34536,195:36902,196:36937,197:36938,200:36940
	module4:GetIfInitialized()
	 194:34536,195:36902,196:36937,203:36942,206:36944
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36902,196:36937,203:36942,206:36947
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36902,196:36937,208:36950
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36902,196:36937,209:36951
	module4:GetIfInitialized()
	 194:34536,195:36902,196:36937,209:36951
	local tiles123 = module4:GetTiles()
	 194:34536,195:36902,196:36937,209:36951
	local module133 = require(ReplicatedStorage.ItemConfig)
	 
	for k177, v573 in pairs(tiles123) do
		 194:34536,195:36902,196:36937,209:36951,210:36952,211:36953
		local result140 = module133.match(v573.ItemId)
		 194:34536,195:36902,196:36937,209:36951,210:36952,211:36953
		result140:unwrap()
	end
	 194:34536,195:36902
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36902,68:36954
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i397, v574 in ipairs(children125) do
	end
	 194:34536,195:36902,68:36954
	local NPCs196 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36902,68:36954
	local children204 = NPCs196:GetChildren()
	 
	for i398, v575 in ipairs(children204) do
	end
	 194:34536
	_G.currentTweenID = 389
	 194:34536
	task.wait(0.1)
	 194:34536,195:36957,196:36958,197:36959,200:36961
	module4:GetIfInitialized()
	 194:34536,195:36957,196:36958,203:36963,206:36965
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36957,196:36958,203:36963,206:36968
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36957,196:36958,208:36971
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36957,196:36958,209:36972
	module4:GetIfInitialized()
	 194:34536,195:36957,196:36958,209:36972
	local tiles124 = module4:GetTiles()
	 194:34536,195:36957,196:36958,209:36972
	local module134 = require(ReplicatedStorage.ItemConfig)
	 
	for k178, v576 in pairs(tiles124) do
		 194:34536,195:36957,196:36958,209:36972,210:36973,211:36974
		local result141 = module134.match(v576.ItemId)
		 194:34536,195:36957,196:36958,209:36972,210:36973,211:36974
		result141:unwrap()
	end
	 194:34536,195:36957,196:36975,197:36976,200:36978
	module4:GetIfInitialized()
	 194:34536,195:36957,196:36975,203:36980,206:36982
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36957,196:36975,203:36980,206:36985
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36957,196:36975,208:36988
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36957,196:36975,209:36989
	module4:GetIfInitialized()
	 194:34536,195:36957,196:36975,209:36989
	local tiles125 = module4:GetTiles()
	 194:34536,195:36957,196:36975,209:36989
	local module135 = require(ReplicatedStorage.ItemConfig)
	 
	for k179, v577 in pairs(tiles125) do
		 194:34536,195:36957,196:36975,209:36989,210:36990,211:36991
		local result142 = module135.match(v577.ItemId)
		 194:34536,195:36957,196:36975,209:36989,210:36990,211:36991
		result142:unwrap()
	end
	 194:34536,195:36957,196:36992,197:36993,200:36995
	module4:GetIfInitialized()
	 194:34536,195:36957,196:36992,203:36997,206:36999
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:36957,196:36992,203:36997,206:37002
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:36957,196:36992,208:37005
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:36957,196:36992,209:37006
	module4:GetIfInitialized()
	 194:34536,195:36957,196:36992,209:37006
	local tiles126 = module4:GetTiles()
	 194:34536,195:36957,196:36992,209:37006
	local module136 = require(ReplicatedStorage.ItemConfig)
	 
	for k180, v578 in pairs(tiles126) do
		 194:34536,195:36957,196:36992,209:37006,210:37007,211:37008
		local result143 = module136.match(v578.ItemId)
		 194:34536,195:36957,196:36992,209:37006,210:37007,211:37008
		result143:unwrap()
	end
	 194:34536,195:36957
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:36957,68:37009
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i399, v579 in ipairs(children125) do
	end
	 194:34536,195:36957,68:37009
	local NPCs197 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:36957,68:37009
	local children205 = NPCs197:GetChildren()
	 
	for i400, v580 in ipairs(children205) do
	end
	 194:34536
	_G.currentTweenID = 390
	 194:34536
	task.wait(0.1)
	 194:34536,195:37012,196:37013,197:37014,200:37016
	module4:GetIfInitialized()
	 194:34536,195:37012,196:37013,203:37018,206:37020
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37012,196:37013,203:37018,206:37023
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37012,196:37013,208:37026
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37012,196:37013,209:37027
	module4:GetIfInitialized()
	 194:34536,195:37012,196:37013,209:37027
	local tiles127 = module4:GetTiles()
	 194:34536,195:37012,196:37013,209:37027
	local module137 = require(ReplicatedStorage.ItemConfig)
	 
	for k181, v581 in pairs(tiles127) do
		 194:34536,195:37012,196:37013,209:37027,210:37028,211:37029
		local result144 = module137.match(v581.ItemId)
		 194:34536,195:37012,196:37013,209:37027,210:37028,211:37029
		result144:unwrap()
	end
	 194:34536,195:37012,196:37030,197:37031,200:37033
	module4:GetIfInitialized()
	 194:34536,195:37012,196:37030,203:37035,206:37037
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37012,196:37030,203:37035,206:37040
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37012,196:37030,208:37043
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37012,196:37030,209:37044
	module4:GetIfInitialized()
	 194:34536,195:37012,196:37030,209:37044
	local tiles128 = module4:GetTiles()
	 194:34536,195:37012,196:37030,209:37044
	local module138 = require(ReplicatedStorage.ItemConfig)
	 
	for k182, v582 in pairs(tiles128) do
		 194:34536,195:37012,196:37030,209:37044,210:37045,211:37046
		local result145 = module138.match(v582.ItemId)
		 194:34536,195:37012,196:37030,209:37044,210:37045,211:37046
		result145:unwrap()
	end
	 194:34536,195:37012,196:37047,197:37048,200:37050
	module4:GetIfInitialized()
	 194:34536,195:37012,196:37047,203:37052,206:37054
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37012,196:37047,203:37052,206:37057
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37012,196:37047,208:37060
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37012,196:37047,209:37061
	module4:GetIfInitialized()
	 194:34536,195:37012,196:37047,209:37061
	local tiles129 = module4:GetTiles()
	 194:34536,195:37012,196:37047,209:37061
	local module139 = require(ReplicatedStorage.ItemConfig)
	 
	for k183, v583 in pairs(tiles129) do
		 194:34536,195:37012,196:37047,209:37061,210:37062,211:37063
		local result146 = module139.match(v583.ItemId)
		 194:34536,195:37012,196:37047,209:37061,210:37062,211:37063
		result146:unwrap()
	end
	 194:34536,195:37012
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37012,68:37064
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i401, v584 in ipairs(children125) do
	end
	 194:34536,195:37012,68:37064
	local NPCs198 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37012,68:37064
	local children206 = NPCs198:GetChildren()
	 
	for i402, v585 in ipairs(children206) do
	end
	 194:34536
	_G.currentTweenID = 391
	 194:34536
	task.wait(0.1)
	 194:34536,195:37067,196:37068,197:37069,200:37071
	module4:GetIfInitialized()
	 194:34536,195:37067,196:37068,203:37073,206:37075
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37067,196:37068,203:37073,206:37078
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37067,196:37068,208:37081
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37067,196:37068,209:37082
	module4:GetIfInitialized()
	 194:34536,195:37067,196:37068,209:37082
	local tiles130 = module4:GetTiles()
	 194:34536,195:37067,196:37068,209:37082
	local module140 = require(ReplicatedStorage.ItemConfig)
	 
	for k184, v586 in pairs(tiles130) do
		 194:34536,195:37067,196:37068,209:37082,210:37083,211:37084
		local result147 = module140.match(v586.ItemId)
		 194:34536,195:37067,196:37068,209:37082,210:37083,211:37084
		result147:unwrap()
	end
	 194:34536,195:37067,196:37085,197:37086,200:37088
	module4:GetIfInitialized()
	 194:34536,195:37067,196:37085,203:37090,206:37092
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37067,196:37085,203:37090,206:37095
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37067,196:37085,208:37098
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37067,196:37085,209:37099
	module4:GetIfInitialized()
	 194:34536,195:37067,196:37085,209:37099
	local tiles131 = module4:GetTiles()
	 194:34536,195:37067,196:37085,209:37099
	local module141 = require(ReplicatedStorage.ItemConfig)
	 
	for k185, v587 in pairs(tiles131) do
		 194:34536,195:37067,196:37085,209:37099,210:37100,211:37101
		local result148 = module141.match(v587.ItemId)
		 194:34536,195:37067,196:37085,209:37099,210:37100,211:37101
		result148:unwrap()
	end
	 194:34536,195:37067,196:37102,197:37103,200:37105
	module4:GetIfInitialized()
	 194:34536,195:37067,196:37102,203:37107,206:37109
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37067,196:37102,203:37107,206:37112
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37067,196:37102,208:37115
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37067,196:37102,209:37116
	module4:GetIfInitialized()
	 194:34536,195:37067,196:37102,209:37116
	local tiles132 = module4:GetTiles()
	 194:34536,195:37067,196:37102,209:37116
	local module142 = require(ReplicatedStorage.ItemConfig)
	 
	for k186, v588 in pairs(tiles132) do
		 194:34536,195:37067,196:37102,209:37116,210:37117,211:37118
		local result149 = module142.match(v588.ItemId)
		 194:34536,195:37067,196:37102,209:37116,210:37117,211:37118
		result149:unwrap()
	end
	 194:34536,195:37067
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37067,68:37119
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i403, v589 in ipairs(children125) do
	end
	 194:34536,195:37067,68:37119
	local NPCs199 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37067,68:37119
	local children207 = NPCs199:GetChildren()
	 
	for i404, v590 in ipairs(children207) do
	end
	 194:34536
	_G.currentTweenID = 392
	 194:34536
	task.wait(0.1)
	 194:34536,195:37122,196:37123,197:37124,200:37126
	module4:GetIfInitialized()
	 194:34536,195:37122,196:37123,203:37128,206:37130
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37122,196:37123,203:37128,206:37133
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37122,196:37123,208:37136
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37122,196:37123,209:37137
	module4:GetIfInitialized()
	 194:34536,195:37122,196:37123,209:37137
	local tiles133 = module4:GetTiles()
	 194:34536,195:37122,196:37123,209:37137
	local module143 = require(ReplicatedStorage.ItemConfig)
	 
	for k187, v591 in pairs(tiles133) do
		 194:34536,195:37122,196:37123,209:37137,210:37138,211:37139
		local result150 = module143.match(v591.ItemId)
		 194:34536,195:37122,196:37123,209:37137,210:37138,211:37139
		result150:unwrap()
	end
	 194:34536,195:37122,196:37140,197:37141,200:37143
	module4:GetIfInitialized()
	 194:34536,195:37122,196:37140,203:37145,206:37147
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37122,196:37140,203:37145,206:37150
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37122,196:37140,208:37153
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37122,196:37140,209:37154
	module4:GetIfInitialized()
	 194:34536,195:37122,196:37140,209:37154
	local tiles134 = module4:GetTiles()
	 194:34536,195:37122,196:37140,209:37154
	local module144 = require(ReplicatedStorage.ItemConfig)
	 
	for k188, v592 in pairs(tiles134) do
		 194:34536,195:37122,196:37140,209:37154,210:37155,211:37156
		local result151 = module144.match(v592.ItemId)
		 194:34536,195:37122,196:37140,209:37154,210:37155,211:37156
		result151:unwrap()
	end
	 194:34536,195:37122,196:37157,197:37158,200:37160
	module4:GetIfInitialized()
	 194:34536,195:37122,196:37157,203:37162,206:37164
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37122,196:37157,203:37162,206:37167
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37122,196:37157,208:37170
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37122,196:37157,209:37171
	module4:GetIfInitialized()
	 194:34536,195:37122,196:37157,209:37171
	local tiles135 = module4:GetTiles()
	 194:34536,195:37122,196:37157,209:37171
	local module145 = require(ReplicatedStorage.ItemConfig)
	 
	for k189, v593 in pairs(tiles135) do
		 194:34536,195:37122,196:37157,209:37171,210:37172,211:37173
		local result152 = module145.match(v593.ItemId)
		 194:34536,195:37122,196:37157,209:37171,210:37172,211:37173
		result152:unwrap()
	end
	 194:34536,195:37122
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37122,68:37174
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i405, v594 in ipairs(children125) do
	end
	 194:34536,195:37122,68:37174
	local NPCs200 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37122,68:37174
	local children208 = NPCs200:GetChildren()
	 
	for i406, v595 in ipairs(children208) do
	end
	 194:34536
	_G.currentTweenID = 393
	 194:34536
	task.wait(0.1)
	 194:34536,195:37177,196:37178,197:37179,200:37181
	module4:GetIfInitialized()
	 194:34536,195:37177,196:37178,203:37183,206:37185
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37177,196:37178,203:37183,206:37188
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37177,196:37178,208:37191
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37177,196:37178,209:37192
	module4:GetIfInitialized()
	 194:34536,195:37177,196:37178,209:37192
	local tiles136 = module4:GetTiles()
	 194:34536,195:37177,196:37178,209:37192
	local module146 = require(ReplicatedStorage.ItemConfig)
	 
	for k190, v596 in pairs(tiles136) do
		 194:34536,195:37177,196:37178,209:37192,210:37193,211:37194
		local result153 = module146.match(v596.ItemId)
		 194:34536,195:37177,196:37178,209:37192,210:37193,211:37194
		result153:unwrap()
	end
	 194:34536,195:37177,196:37195,197:37196,200:37198
	module4:GetIfInitialized()
	 194:34536,195:37177,196:37195,203:37200,206:37202
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37177,196:37195,203:37200,206:37205
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37177,196:37195,208:37208
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37177,196:37195,209:37209
	module4:GetIfInitialized()
	 194:34536,195:37177,196:37195,209:37209
	local tiles137 = module4:GetTiles()
	 194:34536,195:37177,196:37195,209:37209
	local module147 = require(ReplicatedStorage.ItemConfig)
	 
	for k191, v597 in pairs(tiles137) do
		 194:34536,195:37177,196:37195,209:37209,210:37210,211:37211
		local result154 = module147.match(v597.ItemId)
		 194:34536,195:37177,196:37195,209:37209,210:37210,211:37211
		result154:unwrap()
	end
	 194:34536,195:37177,196:37212,197:37213,200:37215
	module4:GetIfInitialized()
	 194:34536,195:37177,196:37212,203:37217,206:37219
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37177,196:37212,203:37217,206:37222
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37177,196:37212,208:37225
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37177,196:37212,209:37226
	module4:GetIfInitialized()
	 194:34536,195:37177,196:37212,209:37226
	local tiles138 = module4:GetTiles()
	 194:34536,195:37177,196:37212,209:37226
	local module148 = require(ReplicatedStorage.ItemConfig)
	 
	for k192, v598 in pairs(tiles138) do
		 194:34536,195:37177,196:37212,209:37226,210:37227,211:37228
		local result155 = module148.match(v598.ItemId)
		 194:34536,195:37177,196:37212,209:37226,210:37227,211:37228
		result155:unwrap()
	end
	 194:34536,195:37177
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37177,68:37229
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i407, v599 in ipairs(children125) do
	end
	 194:34536,195:37177,68:37229
	local NPCs201 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37177,68:37229
	local children209 = NPCs201:GetChildren()
	 
	for i408, v600 in ipairs(children209) do
	end
	 194:34536
	_G.currentTweenID = 394
	 194:34536
	task.wait(0.1)
	 194:34536,195:37232,196:37233,197:37234,200:37236
	module4:GetIfInitialized()
	 194:34536,195:37232,196:37233,203:37238,206:37240
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37232,196:37233,203:37238,206:37243
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37232,196:37233,208:37246
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37232,196:37233,209:37247
	module4:GetIfInitialized()
	 194:34536,195:37232,196:37233,209:37247
	local tiles139 = module4:GetTiles()
	 194:34536,195:37232,196:37233,209:37247
	local module149 = require(ReplicatedStorage.ItemConfig)
	 
	for k193, v601 in pairs(tiles139) do
		 194:34536,195:37232,196:37233,209:37247,210:37248,211:37249
		local result156 = module149.match(v601.ItemId)
		 194:34536,195:37232,196:37233,209:37247,210:37248,211:37249
		result156:unwrap()
	end
	 194:34536,195:37232,196:37250,197:37251,200:37253
	module4:GetIfInitialized()
	 194:34536,195:37232,196:37250,203:37255,206:37257
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37232,196:37250,203:37255,206:37260
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37232,196:37250,208:37263
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37232,196:37250,209:37264
	module4:GetIfInitialized()
	 194:34536,195:37232,196:37250,209:37264
	local tiles140 = module4:GetTiles()
	 194:34536,195:37232,196:37250,209:37264
	local module150 = require(ReplicatedStorage.ItemConfig)
	 
	for k194, v602 in pairs(tiles140) do
		 194:34536,195:37232,196:37250,209:37264,210:37265,211:37266
		local result157 = module150.match(v602.ItemId)
		 194:34536,195:37232,196:37250,209:37264,210:37265,211:37266
		result157:unwrap()
	end
	 194:34536,195:37232,196:37267,197:37268,200:37270
	module4:GetIfInitialized()
	 194:34536,195:37232,196:37267,203:37272,206:37274
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37232,196:37267,203:37272,206:37277
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37232,196:37267,208:37280
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37232,196:37267,209:37281
	module4:GetIfInitialized()
	 194:34536,195:37232,196:37267,209:37281
	local tiles141 = module4:GetTiles()
	 194:34536,195:37232,196:37267,209:37281
	local module151 = require(ReplicatedStorage.ItemConfig)
	 
	for k195, v603 in pairs(tiles141) do
		 194:34536,195:37232,196:37267,209:37281,210:37282,211:37283
		local result158 = module151.match(v603.ItemId)
		 194:34536,195:37232,196:37267,209:37281,210:37282,211:37283
		result158:unwrap()
	end
	 194:34536,195:37232
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37232,68:37284
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i409, v604 in ipairs(children125) do
	end
	 194:34536,195:37232,68:37284
	local NPCs202 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37232,68:37284
	local children210 = NPCs202:GetChildren()
	 
	for i410, v605 in ipairs(children210) do
	end
	 194:34536
	_G.currentTweenID = 395
	 194:34536
	task.wait(0.1)
	 194:34536,195:37287,196:37288,197:37289,200:37291
	module4:GetIfInitialized()
	 194:34536,195:37287,196:37288,203:37293,206:37295
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37287,196:37288,203:37293,206:37298
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37287,196:37288,208:37301
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37287,196:37288,209:37302
	module4:GetIfInitialized()
	 194:34536,195:37287,196:37288,209:37302
	local tiles142 = module4:GetTiles()
	 194:34536,195:37287,196:37288,209:37302
	local module152 = require(ReplicatedStorage.ItemConfig)
	 
	for k196, v606 in pairs(tiles142) do
		 194:34536,195:37287,196:37288,209:37302,210:37303,211:37304
		local result159 = module152.match(v606.ItemId)
		 194:34536,195:37287,196:37288,209:37302,210:37303,211:37304
		result159:unwrap()
	end
	 194:34536,195:37287,196:37305,197:37306,200:37308
	module4:GetIfInitialized()
	 194:34536,195:37287,196:37305,203:37310,206:37312
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37287,196:37305,203:37310,206:37315
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37287,196:37305,208:37318
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37287,196:37305,209:37319
	module4:GetIfInitialized()
	 194:34536,195:37287,196:37305,209:37319
	local tiles143 = module4:GetTiles()
	 194:34536,195:37287,196:37305,209:37319
	local module153 = require(ReplicatedStorage.ItemConfig)
	 
	for k197, v607 in pairs(tiles143) do
		 194:34536,195:37287,196:37305,209:37319,210:37320,211:37321
		local result160 = module153.match(v607.ItemId)
		 194:34536,195:37287,196:37305,209:37319,210:37320,211:37321
		result160:unwrap()
	end
	 194:34536,195:37287,196:37322,197:37323,200:37325
	module4:GetIfInitialized()
	 194:34536,195:37287,196:37322,203:37327,206:37329
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37287,196:37322,203:37327,206:37332
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37287,196:37322,208:37335
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37287,196:37322,209:37336
	module4:GetIfInitialized()
	 194:34536,195:37287,196:37322,209:37336
	local tiles144 = module4:GetTiles()
	 194:34536,195:37287,196:37322,209:37336
	local module154 = require(ReplicatedStorage.ItemConfig)
	 
	for k198, v608 in pairs(tiles144) do
		 194:34536,195:37287,196:37322,209:37336,210:37337,211:37338
		local result161 = module154.match(v608.ItemId)
		 194:34536,195:37287,196:37322,209:37336,210:37337,211:37338
		result161:unwrap()
	end
	 194:34536,195:37287
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37287,68:37339
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i411, v609 in ipairs(children125) do
	end
	 194:34536,195:37287,68:37339
	local NPCs203 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37287,68:37339
	local children211 = NPCs203:GetChildren()
	 
	for i412, v610 in ipairs(children211) do
	end
	 194:34536
	_G.currentTweenID = 396
	 194:34536
	task.wait(0.1)
	 194:34536,195:37342,196:37343,197:37344,200:37346
	module4:GetIfInitialized()
	 194:34536,195:37342,196:37343,203:37348,206:37350
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37342,196:37343,203:37348,206:37353
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37342,196:37343,208:37356
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37342,196:37343,209:37357
	module4:GetIfInitialized()
	 194:34536,195:37342,196:37343,209:37357
	local tiles145 = module4:GetTiles()
	 194:34536,195:37342,196:37343,209:37357
	local module155 = require(ReplicatedStorage.ItemConfig)
	 
	for k199, v611 in pairs(tiles145) do
		 194:34536,195:37342,196:37343,209:37357,210:37358,211:37359
		local result162 = module155.match(v611.ItemId)
		 194:34536,195:37342,196:37343,209:37357,210:37358,211:37359
		result162:unwrap()
	end
	 194:34536,195:37342,196:37360,197:37361,200:37363
	module4:GetIfInitialized()
	 194:34536,195:37342,196:37360,203:37365,206:37367
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37342,196:37360,203:37365,206:37370
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37342,196:37360,208:37373
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37342,196:37360,209:37374
	module4:GetIfInitialized()
	 194:34536,195:37342,196:37360,209:37374
	local tiles146 = module4:GetTiles()
	 194:34536,195:37342,196:37360,209:37374
	local module156 = require(ReplicatedStorage.ItemConfig)
	 
	for k200, v612 in pairs(tiles146) do
		 194:34536,195:37342,196:37360,209:37374,210:37375,211:37376
		local result163 = module156.match(v612.ItemId)
		 194:34536,195:37342,196:37360,209:37374,210:37375,211:37376
		result163:unwrap()
	end
	 194:34536,195:37342,196:37377,197:37378,200:37380
	module4:GetIfInitialized()
	 194:34536,195:37342,196:37377,203:37382,206:37384
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37342,196:37377,203:37382,206:37387
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37342,196:37377,208:37390
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37342,196:37377,209:37391
	module4:GetIfInitialized()
	 194:34536,195:37342,196:37377,209:37391
	local tiles147 = module4:GetTiles()
	 194:34536,195:37342,196:37377,209:37391
	local module157 = require(ReplicatedStorage.ItemConfig)
	 
	for k201, v613 in pairs(tiles147) do
		 194:34536,195:37342,196:37377,209:37391,210:37392,211:37393
		local result164 = module157.match(v613.ItemId)
		 194:34536,195:37342,196:37377,209:37391,210:37392,211:37393
		result164:unwrap()
	end
	 194:34536,195:37342
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37342,68:37394
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i413, v614 in ipairs(children125) do
	end
	 194:34536,195:37342,68:37394
	local NPCs204 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37342,68:37394
	local children212 = NPCs204:GetChildren()
	 
	for i414, v615 in ipairs(children212) do
	end
	 194:34536
	_G.currentTweenID = 397
	 194:34536
	task.wait(0.1)
	 194:34536,195:37397,196:37398,197:37399,200:37401
	module4:GetIfInitialized()
	 194:34536,195:37397,196:37398,203:37403,206:37405
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37397,196:37398,203:37403,206:37408
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37397,196:37398,208:37411
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37397,196:37398,209:37412
	module4:GetIfInitialized()
	 194:34536,195:37397,196:37398,209:37412
	local tiles148 = module4:GetTiles()
	 194:34536,195:37397,196:37398,209:37412
	local module158 = require(ReplicatedStorage.ItemConfig)
	 
	for k202, v616 in pairs(tiles148) do
		 194:34536,195:37397,196:37398,209:37412,210:37413,211:37414
		local result165 = module158.match(v616.ItemId)
		 194:34536,195:37397,196:37398,209:37412,210:37413,211:37414
		result165:unwrap()
	end
	 194:34536,195:37397,196:37415,197:37416,200:37418
	module4:GetIfInitialized()
	 194:34536,195:37397,196:37415,203:37420,206:37422
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37397,196:37415,203:37420,206:37425
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37397,196:37415,208:37428
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37397,196:37415,209:37429
	module4:GetIfInitialized()
	 194:34536,195:37397,196:37415,209:37429
	local tiles149 = module4:GetTiles()
	 194:34536,195:37397,196:37415,209:37429
	local module159 = require(ReplicatedStorage.ItemConfig)
	 
	for k203, v617 in pairs(tiles149) do
		 194:34536,195:37397,196:37415,209:37429,210:37430,211:37431
		local result166 = module159.match(v617.ItemId)
		 194:34536,195:37397,196:37415,209:37429,210:37430,211:37431
		result166:unwrap()
	end
	 194:34536,195:37397,196:37432,197:37433,200:37435
	module4:GetIfInitialized()
	 194:34536,195:37397,196:37432,203:37437,206:37439
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37397,196:37432,203:37437,206:37442
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37397,196:37432,208:37445
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37397,196:37432,209:37446
	module4:GetIfInitialized()
	 194:34536,195:37397,196:37432,209:37446
	local tiles150 = module4:GetTiles()
	 194:34536,195:37397,196:37432,209:37446
	local module160 = require(ReplicatedStorage.ItemConfig)
	 
	for k204, v618 in pairs(tiles150) do
		 194:34536,195:37397,196:37432,209:37446,210:37447,211:37448
		local result167 = module160.match(v618.ItemId)
		 194:34536,195:37397,196:37432,209:37446,210:37447,211:37448
		result167:unwrap()
	end
	 194:34536,195:37397
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37397,68:37449
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i415, v619 in ipairs(children125) do
	end
	 194:34536,195:37397,68:37449
	local NPCs205 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37397,68:37449
	local children213 = NPCs205:GetChildren()
	 
	for i416, v620 in ipairs(children213) do
	end
	 194:34536
	_G.currentTweenID = 398
	 194:34536
	task.wait(0.1)
	 194:34536,195:37452,196:37453,197:37454,200:37456
	module4:GetIfInitialized()
	 194:34536,195:37452,196:37453,203:37458,206:37460
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37452,196:37453,203:37458,206:37463
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37452,196:37453,208:37466
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37452,196:37453,209:37467
	module4:GetIfInitialized()
	 194:34536,195:37452,196:37453,209:37467
	local tiles151 = module4:GetTiles()
	 194:34536,195:37452,196:37453,209:37467
	local module161 = require(ReplicatedStorage.ItemConfig)
	 
	for k205, v621 in pairs(tiles151) do
		 194:34536,195:37452,196:37453,209:37467,210:37468,211:37469
		local result168 = module161.match(v621.ItemId)
		 194:34536,195:37452,196:37453,209:37467,210:37468,211:37469
		result168:unwrap()
	end
	 194:34536,195:37452,196:37470,197:37471,200:37473
	module4:GetIfInitialized()
	 194:34536,195:37452,196:37470,203:37475,206:37477
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37452,196:37470,203:37475,206:37480
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37452,196:37470,208:37483
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37452,196:37470,209:37484
	module4:GetIfInitialized()
	 194:34536,195:37452,196:37470,209:37484
	local tiles152 = module4:GetTiles()
	 194:34536,195:37452,196:37470,209:37484
	local module162 = require(ReplicatedStorage.ItemConfig)
	 
	for k206, v622 in pairs(tiles152) do
		 194:34536,195:37452,196:37470,209:37484,210:37485,211:37486
		local result169 = module162.match(v622.ItemId)
		 194:34536,195:37452,196:37470,209:37484,210:37485,211:37486
		result169:unwrap()
	end
	 194:34536,195:37452,196:37487,197:37488,200:37490
	module4:GetIfInitialized()
	 194:34536,195:37452,196:37487,203:37492,206:37494
	RFGetAllItemValues:InvokeServer()
	 194:34536,195:37452,196:37487,203:37492,206:37497
	RFGetCraftPlayerData:InvokeServer()
	 194:34536,195:37452,196:37487,208:37500
	ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
	 194:34536,195:37452,196:37487,209:37501
	module4:GetIfInitialized()
	 194:34536,195:37452,196:37487,209:37501
	local tiles153 = module4:GetTiles()
	 194:34536,195:37452,196:37487,209:37501
	local module163 = require(ReplicatedStorage.ItemConfig)
	 
	for k207, v623 in pairs(tiles153) do
		 194:34536,195:37452,196:37487,209:37501,210:37502,211:37503
		local result170 = module163.match(v623.ItemId)
		 194:34536,195:37452,196:37487,209:37501,210:37502,211:37503
		result170:unwrap()
	end
	 194:34536,195:37452
	print("[DEBUG Craft] Need Scrap Metal, farming Forest Pirate")
	 194:34536,195:37452,68:37504
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i417, v624 in ipairs(children125) do
	end
	 194:34536,195:37452,68:37504
	local NPCs206 = ReplicatedStorage:FindFirstChild("NPCs")
	 194:34536,195:37452,68:37504
	local children214 = NPCs206:GetChildren()
	 
	for i418, v625 in ipairs(children214) do
	end
	 194:34536
	_G.currentTweenID = 399
	 194:34536
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab6:AddSection("Vocanic Island")
 1:1,25:23379,46:37531
local Toggle54 = Tab6:AddToggle("Volcanic_Auto_Find_Vocanic_Island_1", { Title = "Auto Find Vocanic Island", Description = "", Default = false })
 1:1,25:23379
Toggle54:OnChanged(function(arg252, arg253)
	 212:37545
	_G.Prehis_Find = arg252
end)
 1:1,25:23379
task.spawn(function(...)
	 213:37558
	task.wait(0.1)
	 213:37558,214:37579
	workspace:FindFirstChild("_WorldOrigin")
	 213:37558,214:37579
	local Locations = workspace._WorldOrigin:FindFirstChild("Locations")
	 213:37558,214:37579
	Locations:FindFirstChild("Prehistoric Island", true)
	 213:37558,214:37579
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 213:37558
	task.wait(0.1)
	 213:37558,214:37616
	workspace:FindFirstChild("_WorldOrigin")
	 213:37558,214:37616
	local Locations2 = workspace._WorldOrigin:FindFirstChild("Locations")
	 213:37558,214:37616
	Locations2:FindFirstChild("Prehistoric Island", true)
	 213:37558,214:37616
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 213:37558
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:37636
local Toggle55 = Tab6:AddToggle("Volcanic_Auto_Patch_Vocanic_Event_1", { Title = "Auto Patch Vocanic Event", Description = "", Default = false })
 1:1,25:23379
Toggle55:OnChanged(function(arg254, arg255)
	 215:37646
	_G.Prehis_Skills = arg254
end)
 1:1,25:23379
task.spawn(function(...)
	 216:37661
	task.wait(1)
	 216:37661,217:37680
	local PrehistoricIsland = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
	 216:37661,217:37680
	local descendants2 = PrehistoricIsland:GetDescendants()
	 
	for k208, v626 in pairs(descendants2) do
		 216:37661,217:37680
		local result171 = v626.Name:lower()
		 216:37661,217:37680
		result171:find("lava")
	end
	 216:37661,217:37680
	local InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
	 216:37661,217:37680,218:37743
	v626:Destroy()
	 216:37661,217:37680,218:37746
	InteriorLava:Destroy()
	 216:37661
	task.wait(2)
	 216:37661
	task.wait(2)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 219:37757
	task.wait(0.1)
	 219:37757,220:37774
	local Enemies5 = workspace:FindFirstChild("Enemies")
	 219:37757,220:37774
	Enemies5:FindFirstChild("Lava Golem")
	 219:37757,220:37774,68:37793
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 219:37757,220:37774,68:37793,69:37794
	local Enemies6 = workspace:FindFirstChild("Enemies")
	 219:37757,220:37774,68:37793,69:37794
	local children215 = Enemies6:GetChildren()
	 
	for i419, v627 in ipairs(children215) do
	end
	 219:37757,220:37774,68:37793
	local NPCs207 = ReplicatedStorage:FindFirstChild("NPCs")
	 219:37757,220:37774,68:37793
	local children216 = NPCs207:GetChildren()
	 
	for i420, v628 in ipairs(children216) do
	end
	 219:37757,220:37774
	local PrehistoricIsland2 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
	 219:37757,220:37774
	local Core = PrehistoricIsland2:FindFirstChild("Core")
	 219:37757,220:37774
	local VolcanoRocks = Core:FindFirstChild("VolcanoRocks")
	 219:37757,220:37774
	local children217 = VolcanoRocks:GetChildren()
	 
	for i421, v629 in ipairs(children217) do
		 219:37757,220:37774
		local VFXLayer = v629:FindFirstChild("VFXLayer")
		 219:37757,220:37774
		local At0 = VFXLayer:FindFirstChild("At0")
		 219:37757,220:37774
		At0:FindFirstChild("Glow")
	end
	 219:37757
	task.wait(0.1)
	 219:37757,220:37837
	local Enemies7 = workspace:FindFirstChild("Enemies")
	 219:37757,220:37837
	Enemies7:FindFirstChild("Lava Golem")
	 219:37757,220:37837,68:37838
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 
	for i422, v630 in ipairs(children215) do
	end
	 219:37757,220:37837,68:37838
	local NPCs208 = ReplicatedStorage:FindFirstChild("NPCs")
	 219:37757,220:37837,68:37838
	local children218 = NPCs208:GetChildren()
	 
	for i423, v631 in ipairs(children218) do
	end
	 219:37757,220:37837
	local PrehistoricIsland3 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
	 219:37757,220:37837
	local Core2 = PrehistoricIsland3:FindFirstChild("Core")
	 219:37757,220:37837
	local VolcanoRocks2 = Core2:FindFirstChild("VolcanoRocks")
	 219:37757,220:37837
	local children219 = VolcanoRocks2:GetChildren()
	 
	for i424, v632 in ipairs(children219) do
		 219:37757,220:37837
		local VFXLayer2 = v632:FindFirstChild("VFXLayer")
		 219:37757,220:37837
		local At02 = VFXLayer2:FindFirstChild("At0")
		 219:37757,220:37837
		At02:FindFirstChild("Glow")
	end
	 219:37757
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:37861
local Toggle56 = Tab6:AddToggle("Volcanic_Collect_Dino_Bone_1", { Title = "Collect Dino Bone", Description = "", Default = false })
 1:1,25:23379
Toggle56:OnChanged(function(arg256, arg257)
	 221:37871
	_G.Prehis_DB = arg256
end)
 1:1,25:23379
task.spawn(function(...)
	 222:37884
	task.wait(0.1)
	 222:37884,223:37905
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 400
	 222:37884
	task.wait(0.1)
	 222:37884,223:37921
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 401
	 222:37884
	task.wait(0.1)
	 222:37884,223:37923
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 402
	 222:37884
	task.wait(0.1)
	 222:37884,223:37925
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 403
	 222:37884
	task.wait(0.1)
	 222:37884,223:37927
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 404
	 222:37884
	task.wait(0.1)
	 222:37884,223:37929
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 405
	 222:37884
	task.wait(0.1)
	 222:37884,223:37931
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 406
	 222:37884
	task.wait(0.1)
	 222:37884,223:37933
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 407
	 222:37884
	task.wait(0.1)
	 222:37884,223:37935
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 408
	 222:37884
	task.wait(0.1)
	 222:37884,223:37937
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 409
	 222:37884
	task.wait(0.1)
	 222:37884,223:37939
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 410
	 222:37884
	task.wait(0.1)
	 222:37884,223:37941
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 411
	 222:37884
	task.wait(0.1)
	 222:37884,223:37943
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 412
	 222:37884
	task.wait(0.1)
	 222:37884,223:37945
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 413
	 222:37884
	task.wait(0.1)
	 222:37884,223:37947
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 414
	 222:37884
	task.wait(0.1)
	 222:37884,223:37949
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 415
	 222:37884
	task.wait(0.1)
	 222:37884,223:37951
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 416
	 222:37884
	task.wait(0.1)
	 222:37884,223:37953
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 417
	 222:37884
	task.wait(0.1)
	 222:37884,223:37955
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 418
	 222:37884
	task.wait(0.1)
	 222:37884,223:37957
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 419
	 222:37884
	task.wait(0.1)
	 222:37884,223:37959
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 420
	 222:37884
	task.wait(0.1)
	 222:37884,223:37961
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 421
	 222:37884
	task.wait(0.1)
	 222:37884,223:37963
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 422
	 222:37884
	task.wait(0.1)
	 222:37884,223:37965
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 423
	 222:37884
	task.wait(0.1)
	 222:37884,223:37967
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 424
	 222:37884
	task.wait(0.1)
	 222:37884,223:37969
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 425
	 222:37884
	task.wait(0.1)
	 222:37884,223:37971
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 426
	 222:37884
	task.wait(0.1)
	 222:37884,223:37973
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 427
	 222:37884
	task.wait(0.1)
	 222:37884,223:37975
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 428
	 222:37884
	task.wait(0.1)
	 222:37884,223:37977
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 429
	 222:37884
	task.wait(0.1)
	 222:37884,223:37979
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 430
	 222:37884
	task.wait(0.1)
	 222:37884,223:37981
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 431
	 222:37884
	task.wait(0.1)
	 222:37884,223:37983
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 432
	 222:37884
	task.wait(0.1)
	 222:37884,223:37985
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 433
	 222:37884
	task.wait(0.1)
	 222:37884,223:37987
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 434
	 222:37884
	task.wait(0.1)
	 222:37884,223:37989
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 435
	 222:37884
	task.wait(0.1)
	 222:37884,223:37991
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 436
	 222:37884
	task.wait(0.1)
	 222:37884,223:37993
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 437
	 222:37884
	task.wait(0.1)
	 222:37884,223:37995
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 438
	 222:37884
	task.wait(0.1)
	 222:37884,223:37997
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 439
	 222:37884
	task.wait(0.1)
	 222:37884,223:37999
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 440
	 222:37884
	task.wait(0.1)
	 222:37884,223:38001
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 441
	 222:37884
	task.wait(0.1)
	 222:37884,223:38003
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 442
	 222:37884
	task.wait(0.1)
	 222:37884,223:38005
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 443
	 222:37884
	task.wait(0.1)
	 222:37884,223:38007
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 444
	 222:37884
	task.wait(0.1)
	 222:37884,223:38009
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 445
	 222:37884
	task.wait(0.1)
	 222:37884,223:38011
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 446
	 222:37884
	task.wait(0.1)
	 222:37884,223:38013
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 447
	 222:37884
	task.wait(0.1)
	 222:37884,223:38015
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 448
	 222:37884
	task.wait(0.1)
	 222:37884,223:38017
	workspace:FindFirstChild("DinoBone")
	 222:37884
	_G.currentTweenID = 449
	 222:37884
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:38037
local Toggle57 = Tab6:AddToggle("Volcanic_Collect_Dragon_Egg_1", { Title = "Collect Dragon Egg", Description = "", Default = false })
 1:1,25:23379
Toggle57:OnChanged(function(arg258, arg259)
	 224:38047
	_G.Prehis_DE = arg258
end)
 1:1,25:23379
task.spawn(function(...)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38081
	local PrehistoricIsland4 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38081
	local Core3 = PrehistoricIsland4:FindFirstChild("Core")
	 225:38060,226:38081
	local SpawnedDragonEggs = Core3:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38081
	local DragonEgg = SpawnedDragonEggs:FindFirstChild("DragonEgg")
	 225:38060,226:38081
	local Molten = DragonEgg:FindFirstChild("Molten")
	 225:38060,226:38081
	_G.currentTweenID = 450
	 225:38060,226:38081
	local ProximityPrompt = Molten:FindFirstChild("ProximityPrompt")
	 225:38060,226:38081
	fireproximityprompt(ProximityPrompt, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38119
	local PrehistoricIsland5 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38119
	local Core4 = PrehistoricIsland5:FindFirstChild("Core")
	 225:38060,226:38119
	local SpawnedDragonEggs2 = Core4:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38119
	local DragonEgg2 = SpawnedDragonEggs2:FindFirstChild("DragonEgg")
	 225:38060,226:38119
	local Molten2 = DragonEgg2:FindFirstChild("Molten")
	 225:38060,226:38119
	_G.currentTweenID = 451
	 225:38060,226:38119
	local ProximityPrompt2 = Molten2:FindFirstChild("ProximityPrompt")
	 225:38060,226:38119
	fireproximityprompt(ProximityPrompt2, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38121
	local PrehistoricIsland6 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38121
	local Core5 = PrehistoricIsland6:FindFirstChild("Core")
	 225:38060,226:38121
	local SpawnedDragonEggs3 = Core5:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38121
	local DragonEgg3 = SpawnedDragonEggs3:FindFirstChild("DragonEgg")
	 225:38060,226:38121
	local Molten3 = DragonEgg3:FindFirstChild("Molten")
	 225:38060,226:38121
	_G.currentTweenID = 452
	 225:38060,226:38121
	local ProximityPrompt3 = Molten3:FindFirstChild("ProximityPrompt")
	 225:38060,226:38121
	fireproximityprompt(ProximityPrompt3, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38123
	local PrehistoricIsland7 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38123
	local Core6 = PrehistoricIsland7:FindFirstChild("Core")
	 225:38060,226:38123
	local SpawnedDragonEggs4 = Core6:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38123
	local DragonEgg4 = SpawnedDragonEggs4:FindFirstChild("DragonEgg")
	 225:38060,226:38123
	local Molten4 = DragonEgg4:FindFirstChild("Molten")
	 225:38060,226:38123
	_G.currentTweenID = 453
	 225:38060,226:38123
	local ProximityPrompt4 = Molten4:FindFirstChild("ProximityPrompt")
	 225:38060,226:38123
	fireproximityprompt(ProximityPrompt4, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38125
	local PrehistoricIsland8 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38125
	local Core7 = PrehistoricIsland8:FindFirstChild("Core")
	 225:38060,226:38125
	local SpawnedDragonEggs5 = Core7:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38125
	local DragonEgg5 = SpawnedDragonEggs5:FindFirstChild("DragonEgg")
	 225:38060,226:38125
	local Molten5 = DragonEgg5:FindFirstChild("Molten")
	 225:38060,226:38125
	_G.currentTweenID = 454
	 225:38060,226:38125
	local ProximityPrompt5 = Molten5:FindFirstChild("ProximityPrompt")
	 225:38060,226:38125
	fireproximityprompt(ProximityPrompt5, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38127
	local PrehistoricIsland9 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38127
	local Core8 = PrehistoricIsland9:FindFirstChild("Core")
	 225:38060,226:38127
	local SpawnedDragonEggs6 = Core8:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38127
	local DragonEgg6 = SpawnedDragonEggs6:FindFirstChild("DragonEgg")
	 225:38060,226:38127
	local Molten6 = DragonEgg6:FindFirstChild("Molten")
	 225:38060,226:38127
	_G.currentTweenID = 455
	 225:38060,226:38127
	local ProximityPrompt6 = Molten6:FindFirstChild("ProximityPrompt")
	 225:38060,226:38127
	fireproximityprompt(ProximityPrompt6, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38129
	local PrehistoricIsland10 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38129
	local Core9 = PrehistoricIsland10:FindFirstChild("Core")
	 225:38060,226:38129
	local SpawnedDragonEggs7 = Core9:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38129
	local DragonEgg7 = SpawnedDragonEggs7:FindFirstChild("DragonEgg")
	 225:38060,226:38129
	local Molten7 = DragonEgg7:FindFirstChild("Molten")
	 225:38060,226:38129
	_G.currentTweenID = 456
	 225:38060,226:38129
	local ProximityPrompt7 = Molten7:FindFirstChild("ProximityPrompt")
	 225:38060,226:38129
	fireproximityprompt(ProximityPrompt7, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38131
	local PrehistoricIsland11 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38131
	local Core10 = PrehistoricIsland11:FindFirstChild("Core")
	 225:38060,226:38131
	local SpawnedDragonEggs8 = Core10:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38131
	local DragonEgg8 = SpawnedDragonEggs8:FindFirstChild("DragonEgg")
	 225:38060,226:38131
	local Molten8 = DragonEgg8:FindFirstChild("Molten")
	 225:38060,226:38131
	_G.currentTweenID = 457
	 225:38060,226:38131
	local ProximityPrompt8 = Molten8:FindFirstChild("ProximityPrompt")
	 225:38060,226:38131
	fireproximityprompt(ProximityPrompt8, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38133
	local PrehistoricIsland12 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38133
	local Core11 = PrehistoricIsland12:FindFirstChild("Core")
	 225:38060,226:38133
	local SpawnedDragonEggs9 = Core11:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38133
	local DragonEgg9 = SpawnedDragonEggs9:FindFirstChild("DragonEgg")
	 225:38060,226:38133
	local Molten9 = DragonEgg9:FindFirstChild("Molten")
	 225:38060,226:38133
	_G.currentTweenID = 458
	 225:38060,226:38133
	local ProximityPrompt9 = Molten9:FindFirstChild("ProximityPrompt")
	 225:38060,226:38133
	fireproximityprompt(ProximityPrompt9, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38135
	local PrehistoricIsland13 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38135
	local Core12 = PrehistoricIsland13:FindFirstChild("Core")
	 225:38060,226:38135
	local SpawnedDragonEggs10 = Core12:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38135
	local DragonEgg10 = SpawnedDragonEggs10:FindFirstChild("DragonEgg")
	 225:38060,226:38135
	local Molten10 = DragonEgg10:FindFirstChild("Molten")
	 225:38060,226:38135
	_G.currentTweenID = 459
	 225:38060,226:38135
	local ProximityPrompt10 = Molten10:FindFirstChild("ProximityPrompt")
	 225:38060,226:38135
	fireproximityprompt(ProximityPrompt10, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38137
	local PrehistoricIsland14 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38137
	local Core13 = PrehistoricIsland14:FindFirstChild("Core")
	 225:38060,226:38137
	local SpawnedDragonEggs11 = Core13:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38137
	local DragonEgg11 = SpawnedDragonEggs11:FindFirstChild("DragonEgg")
	 225:38060,226:38137
	local Molten11 = DragonEgg11:FindFirstChild("Molten")
	 225:38060,226:38137
	_G.currentTweenID = 460
	 225:38060,226:38137
	local ProximityPrompt11 = Molten11:FindFirstChild("ProximityPrompt")
	 225:38060,226:38137
	fireproximityprompt(ProximityPrompt11, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38139
	local PrehistoricIsland15 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38139
	local Core14 = PrehistoricIsland15:FindFirstChild("Core")
	 225:38060,226:38139
	local SpawnedDragonEggs12 = Core14:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38139
	local DragonEgg12 = SpawnedDragonEggs12:FindFirstChild("DragonEgg")
	 225:38060,226:38139
	local Molten12 = DragonEgg12:FindFirstChild("Molten")
	 225:38060,226:38139
	_G.currentTweenID = 461
	 225:38060,226:38139
	local ProximityPrompt12 = Molten12:FindFirstChild("ProximityPrompt")
	 225:38060,226:38139
	fireproximityprompt(ProximityPrompt12, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38141
	local PrehistoricIsland16 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38141
	local Core15 = PrehistoricIsland16:FindFirstChild("Core")
	 225:38060,226:38141
	local SpawnedDragonEggs13 = Core15:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38141
	local DragonEgg13 = SpawnedDragonEggs13:FindFirstChild("DragonEgg")
	 225:38060,226:38141
	local Molten13 = DragonEgg13:FindFirstChild("Molten")
	 225:38060,226:38141
	_G.currentTweenID = 462
	 225:38060,226:38141
	local ProximityPrompt13 = Molten13:FindFirstChild("ProximityPrompt")
	 225:38060,226:38141
	fireproximityprompt(ProximityPrompt13, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38143
	local PrehistoricIsland17 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38143
	local Core16 = PrehistoricIsland17:FindFirstChild("Core")
	 225:38060,226:38143
	local SpawnedDragonEggs14 = Core16:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38143
	local DragonEgg14 = SpawnedDragonEggs14:FindFirstChild("DragonEgg")
	 225:38060,226:38143
	local Molten14 = DragonEgg14:FindFirstChild("Molten")
	 225:38060,226:38143
	_G.currentTweenID = 463
	 225:38060,226:38143
	local ProximityPrompt14 = Molten14:FindFirstChild("ProximityPrompt")
	 225:38060,226:38143
	fireproximityprompt(ProximityPrompt14, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38145
	local PrehistoricIsland18 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38145
	local Core17 = PrehistoricIsland18:FindFirstChild("Core")
	 225:38060,226:38145
	local SpawnedDragonEggs15 = Core17:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38145
	local DragonEgg15 = SpawnedDragonEggs15:FindFirstChild("DragonEgg")
	 225:38060,226:38145
	local Molten15 = DragonEgg15:FindFirstChild("Molten")
	 225:38060,226:38145
	_G.currentTweenID = 464
	 225:38060,226:38145
	local ProximityPrompt15 = Molten15:FindFirstChild("ProximityPrompt")
	 225:38060,226:38145
	fireproximityprompt(ProximityPrompt15, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38147
	local PrehistoricIsland19 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38147
	local Core18 = PrehistoricIsland19:FindFirstChild("Core")
	 225:38060,226:38147
	local SpawnedDragonEggs16 = Core18:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38147
	local DragonEgg16 = SpawnedDragonEggs16:FindFirstChild("DragonEgg")
	 225:38060,226:38147
	local Molten16 = DragonEgg16:FindFirstChild("Molten")
	 225:38060,226:38147
	_G.currentTweenID = 465
	 225:38060,226:38147
	local ProximityPrompt16 = Molten16:FindFirstChild("ProximityPrompt")
	 225:38060,226:38147
	fireproximityprompt(ProximityPrompt16, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38149
	local PrehistoricIsland20 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38149
	local Core19 = PrehistoricIsland20:FindFirstChild("Core")
	 225:38060,226:38149
	local SpawnedDragonEggs17 = Core19:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38149
	local DragonEgg17 = SpawnedDragonEggs17:FindFirstChild("DragonEgg")
	 225:38060,226:38149
	local Molten17 = DragonEgg17:FindFirstChild("Molten")
	 225:38060,226:38149
	_G.currentTweenID = 466
	 225:38060,226:38149
	local ProximityPrompt17 = Molten17:FindFirstChild("ProximityPrompt")
	 225:38060,226:38149
	fireproximityprompt(ProximityPrompt17, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38151
	local PrehistoricIsland21 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38151
	local Core20 = PrehistoricIsland21:FindFirstChild("Core")
	 225:38060,226:38151
	local SpawnedDragonEggs18 = Core20:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38151
	local DragonEgg18 = SpawnedDragonEggs18:FindFirstChild("DragonEgg")
	 225:38060,226:38151
	local Molten18 = DragonEgg18:FindFirstChild("Molten")
	 225:38060,226:38151
	_G.currentTweenID = 467
	 225:38060,226:38151
	local ProximityPrompt18 = Molten18:FindFirstChild("ProximityPrompt")
	 225:38060,226:38151
	fireproximityprompt(ProximityPrompt18, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38153
	local PrehistoricIsland22 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38153
	local Core21 = PrehistoricIsland22:FindFirstChild("Core")
	 225:38060,226:38153
	local SpawnedDragonEggs19 = Core21:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38153
	local DragonEgg19 = SpawnedDragonEggs19:FindFirstChild("DragonEgg")
	 225:38060,226:38153
	local Molten19 = DragonEgg19:FindFirstChild("Molten")
	 225:38060,226:38153
	_G.currentTweenID = 468
	 225:38060,226:38153
	local ProximityPrompt19 = Molten19:FindFirstChild("ProximityPrompt")
	 225:38060,226:38153
	fireproximityprompt(ProximityPrompt19, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38155
	local PrehistoricIsland23 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38155
	local Core22 = PrehistoricIsland23:FindFirstChild("Core")
	 225:38060,226:38155
	local SpawnedDragonEggs20 = Core22:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38155
	local DragonEgg20 = SpawnedDragonEggs20:FindFirstChild("DragonEgg")
	 225:38060,226:38155
	local Molten20 = DragonEgg20:FindFirstChild("Molten")
	 225:38060,226:38155
	_G.currentTweenID = 469
	 225:38060,226:38155
	local ProximityPrompt20 = Molten20:FindFirstChild("ProximityPrompt")
	 225:38060,226:38155
	fireproximityprompt(ProximityPrompt20, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38157
	local PrehistoricIsland24 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38157
	local Core23 = PrehistoricIsland24:FindFirstChild("Core")
	 225:38060,226:38157
	local SpawnedDragonEggs21 = Core23:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38157
	local DragonEgg21 = SpawnedDragonEggs21:FindFirstChild("DragonEgg")
	 225:38060,226:38157
	local Molten21 = DragonEgg21:FindFirstChild("Molten")
	 225:38060,226:38157
	_G.currentTweenID = 470
	 225:38060,226:38157
	local ProximityPrompt21 = Molten21:FindFirstChild("ProximityPrompt")
	 225:38060,226:38157
	fireproximityprompt(ProximityPrompt21, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38159
	local PrehistoricIsland25 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38159
	local Core24 = PrehistoricIsland25:FindFirstChild("Core")
	 225:38060,226:38159
	local SpawnedDragonEggs22 = Core24:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38159
	local DragonEgg22 = SpawnedDragonEggs22:FindFirstChild("DragonEgg")
	 225:38060,226:38159
	local Molten22 = DragonEgg22:FindFirstChild("Molten")
	 225:38060,226:38159
	_G.currentTweenID = 471
	 225:38060,226:38159
	local ProximityPrompt22 = Molten22:FindFirstChild("ProximityPrompt")
	 225:38060,226:38159
	fireproximityprompt(ProximityPrompt22, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38161
	local PrehistoricIsland26 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38161
	local Core25 = PrehistoricIsland26:FindFirstChild("Core")
	 225:38060,226:38161
	local SpawnedDragonEggs23 = Core25:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38161
	local DragonEgg23 = SpawnedDragonEggs23:FindFirstChild("DragonEgg")
	 225:38060,226:38161
	local Molten23 = DragonEgg23:FindFirstChild("Molten")
	 225:38060,226:38161
	_G.currentTweenID = 472
	 225:38060,226:38161
	local ProximityPrompt23 = Molten23:FindFirstChild("ProximityPrompt")
	 225:38060,226:38161
	fireproximityprompt(ProximityPrompt23, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38163
	local PrehistoricIsland27 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38163
	local Core26 = PrehistoricIsland27:FindFirstChild("Core")
	 225:38060,226:38163
	local SpawnedDragonEggs24 = Core26:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38163
	local DragonEgg24 = SpawnedDragonEggs24:FindFirstChild("DragonEgg")
	 225:38060,226:38163
	local Molten24 = DragonEgg24:FindFirstChild("Molten")
	 225:38060,226:38163
	_G.currentTweenID = 473
	 225:38060,226:38163
	local ProximityPrompt24 = Molten24:FindFirstChild("ProximityPrompt")
	 225:38060,226:38163
	fireproximityprompt(ProximityPrompt24, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38165
	local PrehistoricIsland28 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38165
	local Core27 = PrehistoricIsland28:FindFirstChild("Core")
	 225:38060,226:38165
	local SpawnedDragonEggs25 = Core27:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38165
	local DragonEgg25 = SpawnedDragonEggs25:FindFirstChild("DragonEgg")
	 225:38060,226:38165
	local Molten25 = DragonEgg25:FindFirstChild("Molten")
	 225:38060,226:38165
	_G.currentTweenID = 474
	 225:38060,226:38165
	local ProximityPrompt25 = Molten25:FindFirstChild("ProximityPrompt")
	 225:38060,226:38165
	fireproximityprompt(ProximityPrompt25, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38167
	local PrehistoricIsland29 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38167
	local Core28 = PrehistoricIsland29:FindFirstChild("Core")
	 225:38060,226:38167
	local SpawnedDragonEggs26 = Core28:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38167
	local DragonEgg26 = SpawnedDragonEggs26:FindFirstChild("DragonEgg")
	 225:38060,226:38167
	local Molten26 = DragonEgg26:FindFirstChild("Molten")
	 225:38060,226:38167
	_G.currentTweenID = 475
	 225:38060,226:38167
	local ProximityPrompt26 = Molten26:FindFirstChild("ProximityPrompt")
	 225:38060,226:38167
	fireproximityprompt(ProximityPrompt26, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38169
	local PrehistoricIsland30 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38169
	local Core29 = PrehistoricIsland30:FindFirstChild("Core")
	 225:38060,226:38169
	local SpawnedDragonEggs27 = Core29:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38169
	local DragonEgg27 = SpawnedDragonEggs27:FindFirstChild("DragonEgg")
	 225:38060,226:38169
	local Molten27 = DragonEgg27:FindFirstChild("Molten")
	 225:38060,226:38169
	_G.currentTweenID = 476
	 225:38060,226:38169
	local ProximityPrompt27 = Molten27:FindFirstChild("ProximityPrompt")
	 225:38060,226:38169
	fireproximityprompt(ProximityPrompt27, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38171
	local PrehistoricIsland31 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38171
	local Core30 = PrehistoricIsland31:FindFirstChild("Core")
	 225:38060,226:38171
	local SpawnedDragonEggs28 = Core30:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38171
	local DragonEgg28 = SpawnedDragonEggs28:FindFirstChild("DragonEgg")
	 225:38060,226:38171
	local Molten28 = DragonEgg28:FindFirstChild("Molten")
	 225:38060,226:38171
	_G.currentTweenID = 477
	 225:38060,226:38171
	local ProximityPrompt28 = Molten28:FindFirstChild("ProximityPrompt")
	 225:38060,226:38171
	fireproximityprompt(ProximityPrompt28, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38173
	local PrehistoricIsland32 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38173
	local Core31 = PrehistoricIsland32:FindFirstChild("Core")
	 225:38060,226:38173
	local SpawnedDragonEggs29 = Core31:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38173
	local DragonEgg29 = SpawnedDragonEggs29:FindFirstChild("DragonEgg")
	 225:38060,226:38173
	local Molten29 = DragonEgg29:FindFirstChild("Molten")
	 225:38060,226:38173
	_G.currentTweenID = 478
	 225:38060,226:38173
	local ProximityPrompt29 = Molten29:FindFirstChild("ProximityPrompt")
	 225:38060,226:38173
	fireproximityprompt(ProximityPrompt29, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38175
	local PrehistoricIsland33 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38175
	local Core32 = PrehistoricIsland33:FindFirstChild("Core")
	 225:38060,226:38175
	local SpawnedDragonEggs30 = Core32:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38175
	local DragonEgg30 = SpawnedDragonEggs30:FindFirstChild("DragonEgg")
	 225:38060,226:38175
	local Molten30 = DragonEgg30:FindFirstChild("Molten")
	 225:38060,226:38175
	_G.currentTweenID = 479
	 225:38060,226:38175
	local ProximityPrompt30 = Molten30:FindFirstChild("ProximityPrompt")
	 225:38060,226:38175
	fireproximityprompt(ProximityPrompt30, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38177
	local PrehistoricIsland34 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38177
	local Core33 = PrehistoricIsland34:FindFirstChild("Core")
	 225:38060,226:38177
	local SpawnedDragonEggs31 = Core33:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38177
	local DragonEgg31 = SpawnedDragonEggs31:FindFirstChild("DragonEgg")
	 225:38060,226:38177
	local Molten31 = DragonEgg31:FindFirstChild("Molten")
	 225:38060,226:38177
	_G.currentTweenID = 480
	 225:38060,226:38177
	local ProximityPrompt31 = Molten31:FindFirstChild("ProximityPrompt")
	 225:38060,226:38177
	fireproximityprompt(ProximityPrompt31, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38179
	local PrehistoricIsland35 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38179
	local Core34 = PrehistoricIsland35:FindFirstChild("Core")
	 225:38060,226:38179
	local SpawnedDragonEggs32 = Core34:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38179
	local DragonEgg32 = SpawnedDragonEggs32:FindFirstChild("DragonEgg")
	 225:38060,226:38179
	local Molten32 = DragonEgg32:FindFirstChild("Molten")
	 225:38060,226:38179
	_G.currentTweenID = 481
	 225:38060,226:38179
	local ProximityPrompt32 = Molten32:FindFirstChild("ProximityPrompt")
	 225:38060,226:38179
	fireproximityprompt(ProximityPrompt32, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38181
	local PrehistoricIsland36 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38181
	local Core35 = PrehistoricIsland36:FindFirstChild("Core")
	 225:38060,226:38181
	local SpawnedDragonEggs33 = Core35:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38181
	local DragonEgg33 = SpawnedDragonEggs33:FindFirstChild("DragonEgg")
	 225:38060,226:38181
	local Molten33 = DragonEgg33:FindFirstChild("Molten")
	 225:38060,226:38181
	_G.currentTweenID = 482
	 225:38060,226:38181
	local ProximityPrompt33 = Molten33:FindFirstChild("ProximityPrompt")
	 225:38060,226:38181
	fireproximityprompt(ProximityPrompt33, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38183
	local PrehistoricIsland37 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38183
	local Core36 = PrehistoricIsland37:FindFirstChild("Core")
	 225:38060,226:38183
	local SpawnedDragonEggs34 = Core36:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38183
	local DragonEgg34 = SpawnedDragonEggs34:FindFirstChild("DragonEgg")
	 225:38060,226:38183
	local Molten34 = DragonEgg34:FindFirstChild("Molten")
	 225:38060,226:38183
	_G.currentTweenID = 483
	 225:38060,226:38183
	local ProximityPrompt34 = Molten34:FindFirstChild("ProximityPrompt")
	 225:38060,226:38183
	fireproximityprompt(ProximityPrompt34, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38185
	local PrehistoricIsland38 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38185
	local Core37 = PrehistoricIsland38:FindFirstChild("Core")
	 225:38060,226:38185
	local SpawnedDragonEggs35 = Core37:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38185
	local DragonEgg35 = SpawnedDragonEggs35:FindFirstChild("DragonEgg")
	 225:38060,226:38185
	local Molten35 = DragonEgg35:FindFirstChild("Molten")
	 225:38060,226:38185
	_G.currentTweenID = 484
	 225:38060,226:38185
	local ProximityPrompt35 = Molten35:FindFirstChild("ProximityPrompt")
	 225:38060,226:38185
	fireproximityprompt(ProximityPrompt35, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38187
	local PrehistoricIsland39 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38187
	local Core38 = PrehistoricIsland39:FindFirstChild("Core")
	 225:38060,226:38187
	local SpawnedDragonEggs36 = Core38:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38187
	local DragonEgg36 = SpawnedDragonEggs36:FindFirstChild("DragonEgg")
	 225:38060,226:38187
	local Molten36 = DragonEgg36:FindFirstChild("Molten")
	 225:38060,226:38187
	_G.currentTweenID = 485
	 225:38060,226:38187
	local ProximityPrompt36 = Molten36:FindFirstChild("ProximityPrompt")
	 225:38060,226:38187
	fireproximityprompt(ProximityPrompt36, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38189
	local PrehistoricIsland40 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38189
	local Core39 = PrehistoricIsland40:FindFirstChild("Core")
	 225:38060,226:38189
	local SpawnedDragonEggs37 = Core39:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38189
	local DragonEgg37 = SpawnedDragonEggs37:FindFirstChild("DragonEgg")
	 225:38060,226:38189
	local Molten37 = DragonEgg37:FindFirstChild("Molten")
	 225:38060,226:38189
	_G.currentTweenID = 486
	 225:38060,226:38189
	local ProximityPrompt37 = Molten37:FindFirstChild("ProximityPrompt")
	 225:38060,226:38189
	fireproximityprompt(ProximityPrompt37, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38191
	local PrehistoricIsland41 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38191
	local Core40 = PrehistoricIsland41:FindFirstChild("Core")
	 225:38060,226:38191
	local SpawnedDragonEggs38 = Core40:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38191
	local DragonEgg38 = SpawnedDragonEggs38:FindFirstChild("DragonEgg")
	 225:38060,226:38191
	local Molten38 = DragonEgg38:FindFirstChild("Molten")
	 225:38060,226:38191
	_G.currentTweenID = 487
	 225:38060,226:38191
	local ProximityPrompt38 = Molten38:FindFirstChild("ProximityPrompt")
	 225:38060,226:38191
	fireproximityprompt(ProximityPrompt38, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38193
	local PrehistoricIsland42 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38193
	local Core41 = PrehistoricIsland42:FindFirstChild("Core")
	 225:38060,226:38193
	local SpawnedDragonEggs39 = Core41:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38193
	local DragonEgg39 = SpawnedDragonEggs39:FindFirstChild("DragonEgg")
	 225:38060,226:38193
	local Molten39 = DragonEgg39:FindFirstChild("Molten")
	 225:38060,226:38193
	_G.currentTweenID = 488
	 225:38060,226:38193
	local ProximityPrompt39 = Molten39:FindFirstChild("ProximityPrompt")
	 225:38060,226:38193
	fireproximityprompt(ProximityPrompt39, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38195
	local PrehistoricIsland43 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38195
	local Core42 = PrehistoricIsland43:FindFirstChild("Core")
	 225:38060,226:38195
	local SpawnedDragonEggs40 = Core42:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38195
	local DragonEgg40 = SpawnedDragonEggs40:FindFirstChild("DragonEgg")
	 225:38060,226:38195
	local Molten40 = DragonEgg40:FindFirstChild("Molten")
	 225:38060,226:38195
	_G.currentTweenID = 489
	 225:38060,226:38195
	local ProximityPrompt40 = Molten40:FindFirstChild("ProximityPrompt")
	 225:38060,226:38195
	fireproximityprompt(ProximityPrompt40, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38197
	local PrehistoricIsland44 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38197
	local Core43 = PrehistoricIsland44:FindFirstChild("Core")
	 225:38060,226:38197
	local SpawnedDragonEggs41 = Core43:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38197
	local DragonEgg41 = SpawnedDragonEggs41:FindFirstChild("DragonEgg")
	 225:38060,226:38197
	local Molten41 = DragonEgg41:FindFirstChild("Molten")
	 225:38060,226:38197
	_G.currentTweenID = 490
	 225:38060,226:38197
	local ProximityPrompt41 = Molten41:FindFirstChild("ProximityPrompt")
	 225:38060,226:38197
	fireproximityprompt(ProximityPrompt41, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38199
	local PrehistoricIsland45 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38199
	local Core44 = PrehistoricIsland45:FindFirstChild("Core")
	 225:38060,226:38199
	local SpawnedDragonEggs42 = Core44:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38199
	local DragonEgg42 = SpawnedDragonEggs42:FindFirstChild("DragonEgg")
	 225:38060,226:38199
	local Molten42 = DragonEgg42:FindFirstChild("Molten")
	 225:38060,226:38199
	_G.currentTweenID = 491
	 225:38060,226:38199
	local ProximityPrompt42 = Molten42:FindFirstChild("ProximityPrompt")
	 225:38060,226:38199
	fireproximityprompt(ProximityPrompt42, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38201
	local PrehistoricIsland46 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38201
	local Core45 = PrehistoricIsland46:FindFirstChild("Core")
	 225:38060,226:38201
	local SpawnedDragonEggs43 = Core45:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38201
	local DragonEgg43 = SpawnedDragonEggs43:FindFirstChild("DragonEgg")
	 225:38060,226:38201
	local Molten43 = DragonEgg43:FindFirstChild("Molten")
	 225:38060,226:38201
	_G.currentTweenID = 492
	 225:38060,226:38201
	local ProximityPrompt43 = Molten43:FindFirstChild("ProximityPrompt")
	 225:38060,226:38201
	fireproximityprompt(ProximityPrompt43, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38203
	local PrehistoricIsland47 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38203
	local Core46 = PrehistoricIsland47:FindFirstChild("Core")
	 225:38060,226:38203
	local SpawnedDragonEggs44 = Core46:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38203
	local DragonEgg44 = SpawnedDragonEggs44:FindFirstChild("DragonEgg")
	 225:38060,226:38203
	local Molten44 = DragonEgg44:FindFirstChild("Molten")
	 225:38060,226:38203
	_G.currentTweenID = 493
	 225:38060,226:38203
	local ProximityPrompt44 = Molten44:FindFirstChild("ProximityPrompt")
	 225:38060,226:38203
	fireproximityprompt(ProximityPrompt44, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38205
	local PrehistoricIsland48 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38205
	local Core47 = PrehistoricIsland48:FindFirstChild("Core")
	 225:38060,226:38205
	local SpawnedDragonEggs45 = Core47:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38205
	local DragonEgg45 = SpawnedDragonEggs45:FindFirstChild("DragonEgg")
	 225:38060,226:38205
	local Molten45 = DragonEgg45:FindFirstChild("Molten")
	 225:38060,226:38205
	_G.currentTweenID = 494
	 225:38060,226:38205
	local ProximityPrompt45 = Molten45:FindFirstChild("ProximityPrompt")
	 225:38060,226:38205
	fireproximityprompt(ProximityPrompt45, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38207
	local PrehistoricIsland49 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38207
	local Core48 = PrehistoricIsland49:FindFirstChild("Core")
	 225:38060,226:38207
	local SpawnedDragonEggs46 = Core48:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38207
	local DragonEgg46 = SpawnedDragonEggs46:FindFirstChild("DragonEgg")
	 225:38060,226:38207
	local Molten46 = DragonEgg46:FindFirstChild("Molten")
	 225:38060,226:38207
	_G.currentTweenID = 495
	 225:38060,226:38207
	local ProximityPrompt46 = Molten46:FindFirstChild("ProximityPrompt")
	 225:38060,226:38207
	fireproximityprompt(ProximityPrompt46, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38209
	local PrehistoricIsland50 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38209
	local Core49 = PrehistoricIsland50:FindFirstChild("Core")
	 225:38060,226:38209
	local SpawnedDragonEggs47 = Core49:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38209
	local DragonEgg47 = SpawnedDragonEggs47:FindFirstChild("DragonEgg")
	 225:38060,226:38209
	local Molten47 = DragonEgg47:FindFirstChild("Molten")
	 225:38060,226:38209
	_G.currentTweenID = 496
	 225:38060,226:38209
	local ProximityPrompt47 = Molten47:FindFirstChild("ProximityPrompt")
	 225:38060,226:38209
	fireproximityprompt(ProximityPrompt47, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38211
	local PrehistoricIsland51 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38211
	local Core50 = PrehistoricIsland51:FindFirstChild("Core")
	 225:38060,226:38211
	local SpawnedDragonEggs48 = Core50:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38211
	local DragonEgg48 = SpawnedDragonEggs48:FindFirstChild("DragonEgg")
	 225:38060,226:38211
	local Molten48 = DragonEgg48:FindFirstChild("Molten")
	 225:38060,226:38211
	_G.currentTweenID = 497
	 225:38060,226:38211
	local ProximityPrompt48 = Molten48:FindFirstChild("ProximityPrompt")
	 225:38060,226:38211
	fireproximityprompt(ProximityPrompt48, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38213
	local PrehistoricIsland52 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38213
	local Core51 = PrehistoricIsland52:FindFirstChild("Core")
	 225:38060,226:38213
	local SpawnedDragonEggs49 = Core51:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38213
	local DragonEgg49 = SpawnedDragonEggs49:FindFirstChild("DragonEgg")
	 225:38060,226:38213
	local Molten49 = DragonEgg49:FindFirstChild("Molten")
	 225:38060,226:38213
	_G.currentTweenID = 498
	 225:38060,226:38213
	local ProximityPrompt49 = Molten49:FindFirstChild("ProximityPrompt")
	 225:38060,226:38213
	fireproximityprompt(ProximityPrompt49, 30)
	 225:38060
	task.wait(0.1)
	 225:38060,226:38215
	local PrehistoricIsland53 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 225:38060,226:38215
	local Core52 = PrehistoricIsland53:FindFirstChild("Core")
	 225:38060,226:38215
	local SpawnedDragonEggs50 = Core52:FindFirstChild("SpawnedDragonEggs")
	 225:38060,226:38215
	local DragonEgg50 = SpawnedDragonEggs50:FindFirstChild("DragonEgg")
	 225:38060,226:38215
	local Molten50 = DragonEgg50:FindFirstChild("Molten")
	 225:38060,226:38215
	_G.currentTweenID = 499
	 225:38060,226:38215
	local ProximityPrompt50 = Molten50:FindFirstChild("ProximityPrompt")
	 225:38060,226:38215
	fireproximityprompt(ProximityPrompt50, 30)
	 225:38060
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:38235
local Toggle58 = Tab6:AddToggle("Volcanic_Reset_When_Complete_Volcanic_1", { Title = "Reset When Complete Volcanic", Description = "", Default = false })
 1:1,25:23379
Toggle58:OnChanged(function(arg260, arg261)
	 227:38249
	_G.ResetPH = arg260
end)
 1:1,25:23379
task.spawn(function(...)
	 228:38262
	task.wait(0.1)
	 228:38262,229:38283
	local PrehistoricIsland54 = workspace.Map:FindFirstChild("PrehistoricIsland")
	 228:38262,229:38283
	local TrialTeleport = PrehistoricIsland54:FindFirstChild("TrialTeleport")
	 228:38262,229:38283
	TrialTeleport:FindFirstChild("TouchInterest")
	 228:38262,229:38283
	local Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 228:38262,229:38283
	Humanoid.Health = 0
	 228:38262
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab7:AddParagraph({ Title = " Cake Prince  ", Content = "Loading..." })
 1:1,25:23379
Tab7:AddParagraph({ Title = " Leviathan  ", Content = "Loading..." })
 1:1,25:23379
Tab7:AddParagraph({ Title = " Elite Hunter  ", Content = "Loading..." })
 1:1,25:23379
Tab7:AddParagraph({ Title = " Mirage Island ", Content = "Loading..." })
 1:1,25:23379
Tab7:AddParagraph({ Title = " Prehistoric Island ", Content = "Loading..." })
 1:1,25:23379
Tab7:AddParagraph({ Title = " Kitsune Island  ", Content = "Loading..." })
 1:1,25:23379
local Paragraph2 = Tab7:AddParagraph({ Title = " Full Moon  ", Content = "Loading..." })
 1:1,25:23379
local Paragraph3 = Tab7:AddParagraph({ Title = " Eyes ", Content = "Loading..." })
 1:1,25:23379
task.spawn(function(...)
	 230:38431
	task.wait(3.5)
	 230:38431,231:38452
	game.Lighting:FindFirstChild("Sky")
	 230:38431,231:38452
	Paragraph2:SetDesc("Moon Phase: Unknown")
	 230:38431,233:38508
	local Map = workspace:FindFirstChild("Map")
	 230:38431,233:38508
	local TikiOutpost = Map:FindFirstChild("TikiOutpost")
	 230:38431,233:38508
	local IslandModel = TikiOutpost:FindFirstChild("IslandModel")
	 230:38431,233:38508
	IslandModel:FindFirstChild("Eye1")
	 230:38431,233:38508
	IslandModel:FindFirstChild("Eye2")
	 230:38431,233:38508
	IslandModel:FindFirstChild("IslandChunks")
	 230:38431,233:38508
	IslandModel.IslandChunks:FindFirstChild("E")
	 230:38431,233:38508
	IslandModel.IslandChunks.E:FindFirstChild("Eye3")
	 230:38431,233:38508
	IslandModel:FindFirstChild("IslandChunks")
	 230:38431,233:38508
	IslandModel.IslandChunks:FindFirstChild("E")
	 230:38431,233:38508
	IslandModel.IslandChunks.E:FindFirstChild("Eye4")
	 230:38431,233:38508
	Paragraph3:SetDesc("4/4 ")
	 230:38431
	task.wait(3.5)
	 230:38431,231:38581
	game.Lighting:FindFirstChild("Sky")
	 230:38431,231:38581
	Paragraph2:SetDesc("Moon Phase: Unknown")
	 230:38431,233:38583
	local Map2 = workspace:FindFirstChild("Map")
	 230:38431,233:38583
	local TikiOutpost2 = Map2:FindFirstChild("TikiOutpost")
	 230:38431,233:38583
	local IslandModel2 = TikiOutpost2:FindFirstChild("IslandModel")
	 230:38431,233:38583
	IslandModel2:FindFirstChild("Eye1")
	 230:38431,233:38583
	IslandModel2:FindFirstChild("Eye2")
	 230:38431,233:38583
	IslandModel2:FindFirstChild("IslandChunks")
	 230:38431,233:38583
	IslandModel2.IslandChunks:FindFirstChild("E")
	 230:38431,233:38583
	IslandModel2.IslandChunks.E:FindFirstChild("Eye3")
	 230:38431,233:38583
	IslandModel2:FindFirstChild("IslandChunks")
	 230:38431,233:38583
	IslandModel2.IslandChunks:FindFirstChild("E")
	 230:38431,233:38583
	IslandModel2.IslandChunks.E:FindFirstChild("Eye4")
	 230:38431,233:38583
	Paragraph3:SetDesc("4/4 ")
	 230:38431
	task.wait(3.5)
	 
end)
 1:1,25:23379
Tab7:AddSection("Server")
 1:1,25:23379
Tab7:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function(state, arg263)
		TeleportService:Teleport(0, game.Players.LocalPlayer)
	end
})
 1:1,25:23379
Tab7:AddButton({
	Title = "Hop Server",
	Description = "",
	Callback = function(state, arg265)
		if state then
			ReplicatedStorage.__ServerBrowser:InvokeServer(8)
		end
		ReplicatedStorage.__ServerBrowser:InvokeServer(9)
		ReplicatedStorage.__ServerBrowser:InvokeServer(10)
		ReplicatedStorage.__ServerBrowser:InvokeServer(11)
		ReplicatedStorage.__ServerBrowser:InvokeServer(12)
		ReplicatedStorage.__ServerBrowser:InvokeServer(13)
		ReplicatedStorage.__ServerBrowser:InvokeServer(14)
		ReplicatedStorage.__ServerBrowser:InvokeServer(15)
		ReplicatedStorage.__ServerBrowser:InvokeServer(16)
		ReplicatedStorage.__ServerBrowser:InvokeServer(17)
		ReplicatedStorage.__ServerBrowser:InvokeServer(18)
		ReplicatedStorage.__ServerBrowser:InvokeServer(19)
		ReplicatedStorage.__ServerBrowser:InvokeServer(20)
		ReplicatedStorage.__ServerBrowser:InvokeServer(21)
		ReplicatedStorage.__ServerBrowser:InvokeServer(22)
		ReplicatedStorage.__ServerBrowser:InvokeServer(23)
		ReplicatedStorage.__ServerBrowser:InvokeServer(24)
		ReplicatedStorage.__ServerBrowser:InvokeServer(25)
		ReplicatedStorage.__ServerBrowser:InvokeServer(26)
		ReplicatedStorage.__ServerBrowser:InvokeServer(27)
		ReplicatedStorage.__ServerBrowser:InvokeServer(28)
		ReplicatedStorage.__ServerBrowser:InvokeServer(29)
		ReplicatedStorage.__ServerBrowser:InvokeServer(30)
		ReplicatedStorage.__ServerBrowser:InvokeServer(31)
		ReplicatedStorage.__ServerBrowser:InvokeServer(32)
		ReplicatedStorage.__ServerBrowser:InvokeServer(33)
		ReplicatedStorage.__ServerBrowser:InvokeServer(34)
		ReplicatedStorage.__ServerBrowser:InvokeServer(35)
		ReplicatedStorage.__ServerBrowser:InvokeServer(36)
		ReplicatedStorage.__ServerBrowser:InvokeServer(37)
		ReplicatedStorage.__ServerBrowser:InvokeServer(38)
		ReplicatedStorage.__ServerBrowser:InvokeServer(39)
		ReplicatedStorage.__ServerBrowser:InvokeServer(40)
		ReplicatedStorage.__ServerBrowser:InvokeServer(41)
		ReplicatedStorage.__ServerBrowser:InvokeServer(42)
		ReplicatedStorage.__ServerBrowser:InvokeServer(43)
		ReplicatedStorage.__ServerBrowser:InvokeServer(44)
		ReplicatedStorage.__ServerBrowser:InvokeServer(45)
		ReplicatedStorage.__ServerBrowser:InvokeServer(46)
		ReplicatedStorage.__ServerBrowser:InvokeServer(47)
		ReplicatedStorage.__ServerBrowser:InvokeServer(48)
		ReplicatedStorage.__ServerBrowser:InvokeServer(49)
		ReplicatedStorage.__ServerBrowser:InvokeServer(50)
		ReplicatedStorage.__ServerBrowser:InvokeServer(51)
		ReplicatedStorage.__ServerBrowser:InvokeServer(52)
		ReplicatedStorage.__ServerBrowser:InvokeServer(53)
		ReplicatedStorage.__ServerBrowser:InvokeServer(54)
		ReplicatedStorage.__ServerBrowser:InvokeServer(55)
		ReplicatedStorage.__ServerBrowser:InvokeServer(56)
		ReplicatedStorage.__ServerBrowser:InvokeServer(57)
		ReplicatedStorage.__ServerBrowser:InvokeServer(58)
		ReplicatedStorage.__ServerBrowser:InvokeServer(59)
		ReplicatedStorage.__ServerBrowser:InvokeServer(60)
		ReplicatedStorage.__ServerBrowser:InvokeServer(61)
		ReplicatedStorage.__ServerBrowser:InvokeServer(62)
		ReplicatedStorage.__ServerBrowser:InvokeServer(63)
		ReplicatedStorage.__ServerBrowser:InvokeServer(64)
		ReplicatedStorage.__ServerBrowser:InvokeServer(65)
		ReplicatedStorage.__ServerBrowser:InvokeServer(66)
		ReplicatedStorage.__ServerBrowser:InvokeServer(67)
		ReplicatedStorage.__ServerBrowser:InvokeServer(68)
		ReplicatedStorage.__ServerBrowser:InvokeServer(69)
		ReplicatedStorage.__ServerBrowser:InvokeServer(70)
		ReplicatedStorage.__ServerBrowser:InvokeServer(71)
		ReplicatedStorage.__ServerBrowser:InvokeServer(72)
		ReplicatedStorage.__ServerBrowser:InvokeServer(73)
		ReplicatedStorage.__ServerBrowser:InvokeServer(74)
		ReplicatedStorage.__ServerBrowser:InvokeServer(75)
		ReplicatedStorage.__ServerBrowser:InvokeServer(76)
		ReplicatedStorage.__ServerBrowser:InvokeServer(77)
		ReplicatedStorage.__ServerBrowser:InvokeServer(78)
		ReplicatedStorage.__ServerBrowser:InvokeServer(79)
		ReplicatedStorage.__ServerBrowser:InvokeServer(80)
		ReplicatedStorage.__ServerBrowser:InvokeServer(81)
		ReplicatedStorage.__ServerBrowser:InvokeServer(82)
		ReplicatedStorage.__ServerBrowser:InvokeServer(83)
		ReplicatedStorage.__ServerBrowser:InvokeServer(84)
		ReplicatedStorage.__ServerBrowser:InvokeServer(85)
		ReplicatedStorage.__ServerBrowser:InvokeServer(86)
		ReplicatedStorage.__ServerBrowser:InvokeServer(87)
		ReplicatedStorage.__ServerBrowser:InvokeServer(88)
		ReplicatedStorage.__ServerBrowser:InvokeServer(89)
		ReplicatedStorage.__ServerBrowser:InvokeServer(90)
		ReplicatedStorage.__ServerBrowser:InvokeServer(91)
		ReplicatedStorage.__ServerBrowser:InvokeServer(92)
		ReplicatedStorage.__ServerBrowser:InvokeServer(93)
		ReplicatedStorage.__ServerBrowser:InvokeServer(94)
		ReplicatedStorage.__ServerBrowser:InvokeServer(95)
		ReplicatedStorage.__ServerBrowser:InvokeServer(96)
		ReplicatedStorage.__ServerBrowser:InvokeServer(97)
		ReplicatedStorage.__ServerBrowser:InvokeServer(98)
		ReplicatedStorage.__ServerBrowser:InvokeServer(99)
		ReplicatedStorage.__ServerBrowser:InvokeServer(100)
	end
})
 1:1,25:23379
Tab7:AddButton({
	Title = "Hop to Lowest Players",
	Description = "",
	Callback = function(state, arg267)
		if state then
			local response2 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100")
			local data = HttpService:JSONDecode(response2)
			TeleportService:TeleportToPlaceInstance(0, data.data[1].id, game.Players.LocalPlayer)
		else
			local response3 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100")
			local data2 = HttpService:JSONDecode(response3)
			TeleportService:TeleportToPlaceInstance(0, data2.data[1].id, game.Players.LocalPlayer)
		end
	end
})
 1:1,25:23379
Tab7:AddButton({
	Title = "Hop to Lowest Pings Server",
	Description = "",
	Callback = function(arg268, arg269)
		 240:38765,241:38792,242:38805
		local response4 = game:HttpGet("https://games.roblox.com/v1/games/0/servers/Public?limit=100")
		 240:38765,241:38792,242:38805
		local data3 = HttpService:JSONDecode(response4)
		 
		for k209, v636 in pairs(data3.data) do
			 240:38765
			 240:38765
		end
		 240:38765
		task.wait(0.5)
		 240:38765
		local valueString = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
		 240:38765
		valueString:match("(%d+)")
		 
	end
})
 1:1,25:23379,46:38878
_G.JobId = false
 1:1,25:23379,46:38878
local Input17 = Tab7:AddInput("Status_JobID_1", {
	Title = "JobID",
	Default = "",
	Finished = false,
	Numeric = false,
	Placeholder = "",
	Callback = function(state, arg271)
		if state then
			_G.JobId = state
		end
	end
})
 1:1,25:23379,244:38894
game.Players.LocalPlayer.OnTeleport:Connect(function(arg272)
end)
 1:1,25:23379
Tab7:AddButton({
	Title = "Teleport [Job ID]",
	Description = "",
	Callback = function(state, arg274)
		ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", false)
	end
})
 1:1,25:23379
Tab7:AddButton({
	Title = "Copy JobID",
	Description = "",
	Callback = function(state, arg276)
		setclipboard(tostring(game.JobId))
	end
})
 1:1,25:23379
Tab10:AddSection("Settings ")
 1:1,25:23379,46:38997
local Dropdown20 = Tab10:AddDropdown("Local_PLayer_Selected_Tool_1", {
	Title = "Selected Tool",
	Default = 1,
	Multi = false,
	Values = { "Melee", "Sword", "Blox Fruit", "Gun" }
})
 1:1,25:23379
Dropdown20:OnChanged(function(arg277, arg278)
	 247:39007
	_G.ChooseWP = arg277
end)
 1:1,25:23379
task.spawn(function(...)
	 248:39020
	task.wait(1)
	 248:39020,249:39035
	local Backpack = game.Players.LocalPlayer:FindFirstChild("Backpack")
	 248:39020,249:39035
	local children220 = Backpack:GetChildren()
	 
	for k210, v637 in pairs(children220) do
	end
	 248:39020
	task.wait(1)
	 
end)
 1:1,25:23379,46:39075
local Toggle59 = Tab10:AddToggle("Local_PLayer__Attack_Mob__1", { Title = " Attack Mob ", Description = "", Default = true })
 1:1,25:23379
Toggle59:OnChanged(function(arg279, arg280)
	 250:39085
	_G.Seriality = arg279
end)
 1:1,25:23379,46:39108
local Toggle60 = Tab10:AddToggle("Local_PLayer_Bring_Mobs_1", { Title = "Bring Mobs", Description = "", Default = true })
 1:1,25:23379
Toggle60:OnChanged(function(arg281, arg282)
end)
 1:1,25:23379,46:39139
local Toggle61 = Tab10:AddToggle("Local_PLayer_Auto_Turn_on_Buso_1", { Title = "Auto Turn on Buso", Description = "", Default = true })
 1:1,25:23379
Toggle61:OnChanged(function(arg283, arg284)
end)
 1:1,25:23379
task.spawn(function(...)
	 253:39160
	task.wait(1)
	 253:39160,254:39173
	game.Players.LocalPlayer.Character:FindFirstChild("HasBuso")
	 253:39160
	task.wait(1)
	 
end)
 1:1,25:23379,46:39203
local Toggle62 = Tab10:AddToggle("Local_PLayer_Auto_Turn_on_Race_V3_1", { Title = "Auto Turn on Race V3", Description = "", Default = false })
 1:1,25:23379
Toggle62:OnChanged(function(arg285, arg286)
	 255:39213
	_G.RaceClickAutov3 = arg285
end)
 1:1,25:23379
task.spawn(function(...)
	 256:39226
	task.wait(1)
	 256:39226,257:39241
	ReplicatedStorage.Remotes.CommE:FireServer("ActivateAbility")
	 256:39226,257:39241
	task.wait(30)
	 
end)
 1:1,25:23379,46:39284
local Toggle63 = Tab10:AddToggle("Local_PLayer_Auto_Turn_on_Race_V4_1", { Title = "Auto Turn on Race V4", Description = "", Default = false })
 1:1,25:23379
Toggle63:OnChanged(function(arg287, arg288)
	 258:39294
	_G.RaceClickAutov4 = arg287
end)
 1:1,25:23379
task.spawn(function(...)
	 259:39307
	task.wait(0.2)
	 259:39307,260:39324
	game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy")
	 259:39307
	task.wait(0.2)
	 
end)
 1:1,25:23379
_G.FarmDistance = 20
 1:1,25:23379,46:39372
_G.FarmDistance = false
 1:1,25:23379,46:39372
local Slider17 = Tab10:AddSlider("Local_PLayer_Farm_Distance_1", {
	Title = "Farm Distance",
	Description = "",
	Default = 20,
	Max = 60,
	Min = 10,
	Rounding = 0,
	Callback = function(state, arg290)
	end
})
 1:1,25:23379
_G.FarmDistance = arg291
 1:1,25:23379
Slider17:OnChanged(function(arg291, arg292)
end)
 1:1,25:23379,46:39415
local Toggle64 = Tab10:AddToggle("Local_PLayer_Turn_on_Bypass_Teleport_1", { Title = "Turn on Bypass Teleport", Description = "", Default = false })
 1:1,25:23379
Toggle64:OnChanged(function(arg293, arg294)
	 263:39425
	_G.BTP = arg293
end)
 1:1,25:23379,46:39448
local Toggle65 = Tab10:AddToggle("Local_PLayer_Tele_Y_When_Low_Health_1", { Title = "Tele Y When Low Health", Description = "", Default = false })
 1:1,25:23379
Toggle65:OnChanged(function(arg295, arg296)
	 264:39458
	_G.Safemode = arg295
end)
 1:1,25:23379
task.spawn(function(...)
	 265:39471
	task.wait(0.1)
	 265:39471,266:39488
	game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	 265:39471
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:39522
local Toggle66 = Tab10:AddToggle("Local_PLayer_Anti_AFK_1", { Title = "Anti AFK", Description = "", Default = true })
 1:1,25:23379
Toggle66:OnChanged(function(arg297, arg298)
	 267:39532
	_G.AntiAFK = arg297
end)
 1:1,25:23379
game.Players.LocalPlayer.Idled:Connect(function(idleTime)
	 428:45245
	VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	 428:45245
	task.wait(1)
	 428:45245
	VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
 1:1,25:23379,46:39565
local Toggle67 = Tab10:AddToggle("Local_PLayer_Remove_Hit_VFX_1", { Title = "Remove Hit VFX", Description = "", Default = false })
 1:1,25:23379
Toggle67:OnChanged(function(arg299, arg300)
	 268:39575
	_G.DistroyHit = arg299
end)
 1:1,25:23379
task.spawn(function(...)
	 269:39604
	task.wait(0.25)
	 269:39604,270:39625
	local _WorldOrigin3 = workspace:FindFirstChild("_WorldOrigin")
	 269:39604,270:39625
	local children221 = _WorldOrigin3:GetChildren()
	 
	for i428, v639 in ipairs(children221) do
	end
	 269:39604
	task.wait(0.25)
	 
end)
 1:1,25:23379,46:39657
local Toggle68 = Tab10:AddToggle("Local_PLayer_Remove_Death___Respawned_VFX_1", { Title = "Remove Death & Respawned VFX", Description = "", Default = false })
 1:1,25:23379
Toggle68:OnChanged(function(arg301, arg302)
end)
 1:1,25:23379
task.spawn(function(...)
	 272:39678
	task.wait(1)
	 272:39678,273:39693
	ReplicatedStorage:FindFirstChild("Effect")
	 272:39678,273:39693
	local Container2 = ReplicatedStorage.Effect:FindFirstChild("Container")
	 272:39678,273:39693
	Container2:FindFirstChild("Death")
	 272:39678,273:39693
	Container2.Death:Destroy()
	 272:39678,273:39693
	Container2:FindFirstChild("Respawn")
	 272:39678,273:39693
	Container2.Respawn:Destroy()
	 272:39678
	task.wait(1)
	 272:39678,273:39724
	ReplicatedStorage:FindFirstChild("Effect")
	 272:39678,273:39724
	local Container3 = ReplicatedStorage.Effect:FindFirstChild("Container")
	 272:39678,273:39724
	Container3:FindFirstChild("Death")
	 272:39678,273:39724
	Container3.Death:Destroy()
	 272:39678,273:39724
	Container3:FindFirstChild("Respawn")
	 272:39678,273:39724
	Container3.Respawn:Destroy()
	 272:39678
	task.wait(1)
	 
end)
 1:1,25:23379,46:39744
local Toggle69 = Tab10:AddToggle("Local_PLayer_Disable_Notify_1", { Title = "Disable Notify", Description = "", Default = false })
 1:1,25:23379
Toggle69:OnChanged(function(arg303, arg304)
	 274:39754,275:39763
	ReplicatedStorage:FindFirstChild("Assets")
	 274:39754,275:39763
	ReplicatedStorage.Assets:FindFirstChild("GUI")
	 274:39754,275:39763
	local DamageCounter = ReplicatedStorage.Assets.GUI:FindFirstChild("DamageCounter")
	 274:39754,275:39763
	DamageCounter.Enabled = false
	 274:39754,275:39763
	game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	 274:39754,275:39763
	local Notifications = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Notifications")
	 274:39754,275:39763
	Notifications.Enabled = false
end)
 1:1,25:23379
Tab10:AddSection("Stats Upgrade")
 1:1,25:23379,46:39840
local Slider18 = Tab10:AddSlider("Local_PLayer_Stats_Value_1", {
	Title = "Stats Value",
	Description = "",
	Default = 10,
	Max = 1000,
	Min = 0,
	Rounding = 1,
	Callback = function(state, arg306)
	end
})
 1:1,25:23379
Slider18:OnChanged(function(arg307, arg308)
end)
 1:1,25:23379,46:39875
local Toggle70 = Tab10:AddToggle("Local_PLayer_Auto_Melee_1", { Title = "Auto Melee", Description = "", Default = false })
 1:1,25:23379
Toggle70:OnChanged(function(arg309, arg310)
	 278:39885
	_G.Auto_Melee = arg309
end)
 1:1,25:23379,46:39908
local Toggle71 = Tab10:AddToggle("Local_PLayer_Auto_Swords_1", { Title = "Auto Swords", Description = "", Default = false })
 1:1,25:23379
Toggle71:OnChanged(function(arg311, arg312)
	 279:39918
	_G.Auto_Sword = arg311
end)
 1:1,25:23379,46:39941
local Toggle72 = Tab10:AddToggle("Local_PLayer_Auto_Gun_1", { Title = "Auto Gun", Description = "", Default = false })
 1:1,25:23379
Toggle72:OnChanged(function(arg313, arg314)
	 280:39951
	_G.Auto_Gun = arg313
end)
 1:1,25:23379,46:39974
local Toggle73 = Tab10:AddToggle("Local_PLayer_Auto_Blox_Fruit_1", { Title = "Auto Blox Fruit", Description = "", Default = false })
 1:1,25:23379
Toggle73:OnChanged(function(arg315, arg316)
	 281:39984
	_G.Auto_DevilFruit = arg315
end)
 1:1,25:23379,46:40007
local Toggle74 = Tab10:AddToggle("Local_PLayer_Auto_Defense_1", { Title = "Auto Defense", Description = "", Default = false })
 1:1,25:23379
Toggle74:OnChanged(function(arg317, arg318)
	 282:40017
	_G.Auto_Defense = arg317
end)
 1:1,25:23379
task.spawn(function(...)
	 283:40030
	task.wait(0.1)
	 283:40030,284:40047
	game.Players.LocalPlayer:FindFirstChild("Data")
	 283:40030,284:40047
	game.Players.LocalPlayer.Data:FindFirstChild("Points")
	 283:40030
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab11:AddSection("Travel")
 1:1,25:23379
Tab11:AddButton({
	Title = "Teleport Old World",
	Description = "",
	Callback = function(state, arg320)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelMain")
	end
})
 1:1,25:23379
Tab11:AddButton({
	Title = "Teleport Second World",
	Description = "",
	Callback = function(state, arg322)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
	end
})
 1:1,25:23379
Tab11:AddButton({
	Title = "Teleport Third World",
	Description = "",
	Callback = function(state, arg324)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelZou")
	end
})
 1:1,25:23379
Tab11:AddSection("Island")
 1:1,25:23379
local children222 = workspace._WorldOrigin.Locations:GetChildren()
 
for k212, v641 in pairs(children222) do
end
 1:1,25:23379,46:40215
local Dropdown21 = Tab11:AddDropdown("Travel_Select_Travelling_1", { Title = "Select Travelling", Default = 1, Multi = false, Values = { v641.Name } })
 1:1,25:23379
Dropdown21:OnChanged(function(arg325, arg326)
	 288:40229
	_G.Island = arg325
end)
 1:1,25:23379,46:40252
local Toggle75 = Tab11:AddToggle("Travel_Auto_Travel_1", { Title = "Auto Travel", Description = "", Default = false })
 1:1,25:23379
Toggle75:OnChanged(function(arg327, arg328)
	 289:40266
	_G.Teleport = arg327
	 289:40266
	local children223 = workspace._WorldOrigin.Locations:GetChildren()
	 
	for k213, v642 in pairs(children223) do
	end
end)
 1:1,25:23379
Tab11:AddSection("Portal")
 1:1,25:23379,46:40319
local Dropdown22 = Tab11:AddDropdown("Travel_Select_Portal_1", { Title = "Select Portal", Default = 1, Multi = false, Values = Location_Portal })
 1:1,25:23379
Dropdown22:OnChanged(function(arg329, arg330)
	 290:40333
	_G.Island_PT = arg329
end)
 1:1,25:23379
Tab11:AddButton({
	Title = "Teleport",
	Description = "",
	Callback = function(state, arg332)
	end
})
 1:1,25:23379
Tab11:AddSection("NPCs")
 1:1,25:23379
local children224 = ReplicatedStorage.NPCs:GetChildren()
 
for k214, v643 in pairs(children224) do
end
 1:1,25:23379,46:40454
local Dropdown23 = Tab11:AddDropdown("Travel_Select_NPCs_1", { Title = "Select NPCs", Default = 1, Multi = false, Values = { v643.Name } })
 1:1,25:23379
Dropdown23:OnChanged(function(arg333, arg334)
end)
 1:1,25:23379,46:40489
local Toggle76 = Tab11:AddToggle("Travel__Tween_to_NPCs_1", { Title = " Tween to NPCs", Description = "", Default = false })
 1:1,25:23379
Toggle76:OnChanged(function(arg335, arg336)
	 293:40503
	_G.TPNpc = arg335
end)
 1:1,25:23379
task.spawn(function(...)
	 294:40516
	task.wait(0.1)
	 294:40516,295:40539
	local child = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40539
	child:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 500
	 294:40516
	task.wait(0.1)
	 294:40516,295:40557
	local child2 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40557
	child2:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 501
	 294:40516
	task.wait(0.1)
	 294:40516,295:40559
	local child3 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40559
	child3:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 502
	 294:40516
	task.wait(0.1)
	 294:40516,295:40561
	local child4 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40561
	child4:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 503
	 294:40516
	task.wait(0.1)
	 294:40516,295:40563
	local child5 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40563
	child5:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 504
	 294:40516
	task.wait(0.1)
	 294:40516,295:40565
	local child6 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40565
	child6:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 505
	 294:40516
	task.wait(0.1)
	 294:40516,295:40567
	local child7 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40567
	child7:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 506
	 294:40516
	task.wait(0.1)
	 294:40516,295:40569
	local child8 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40569
	child8:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 507
	 294:40516
	task.wait(0.1)
	 294:40516,295:40571
	local child9 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40571
	child9:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 508
	 294:40516
	task.wait(0.1)
	 294:40516,295:40573
	local child10 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40573
	child10:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 509
	 294:40516
	task.wait(0.1)
	 294:40516,295:40575
	local child11 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40575
	child11:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 510
	 294:40516
	task.wait(0.1)
	 294:40516,295:40577
	local child12 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40577
	child12:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 511
	 294:40516
	task.wait(0.1)
	 294:40516,295:40579
	local child13 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40579
	child13:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 512
	 294:40516
	task.wait(0.1)
	 294:40516,295:40581
	local child14 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40581
	child14:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 513
	 294:40516
	task.wait(0.1)
	 294:40516,295:40583
	local child15 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40583
	child15:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 514
	 294:40516
	task.wait(0.1)
	 294:40516,295:40585
	local child16 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40585
	child16:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 515
	 294:40516
	task.wait(0.1)
	 294:40516,295:40587
	local child17 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40587
	child17:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 516
	 294:40516
	task.wait(0.1)
	 294:40516,295:40589
	local child18 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40589
	child18:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 517
	 294:40516
	task.wait(0.1)
	 294:40516,295:40591
	local child19 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40591
	child19:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 518
	 294:40516
	task.wait(0.1)
	 294:40516,295:40593
	local child20 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40593
	child20:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 519
	 294:40516
	task.wait(0.1)
	 294:40516,295:40595
	local child21 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40595
	child21:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 520
	 294:40516
	task.wait(0.1)
	 294:40516,295:40597
	local child22 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40597
	child22:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 521
	 294:40516
	task.wait(0.1)
	 294:40516,295:40599
	local child23 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40599
	child23:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 522
	 294:40516
	task.wait(0.1)
	 294:40516,295:40601
	local child24 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40601
	child24:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 523
	 294:40516
	task.wait(0.1)
	 294:40516,295:40603
	local child25 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40603
	child25:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 524
	 294:40516
	task.wait(0.1)
	 294:40516,295:40605
	local child26 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40605
	child26:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 525
	 294:40516
	task.wait(0.1)
	 294:40516,295:40607
	local child27 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40607
	child27:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 526
	 294:40516
	task.wait(0.1)
	 294:40516,295:40609
	local child28 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40609
	child28:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 527
	 294:40516
	task.wait(0.1)
	 294:40516,295:40611
	local child29 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40611
	child29:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 528
	 294:40516
	task.wait(0.1)
	 294:40516,295:40613
	local child30 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40613
	child30:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 529
	 294:40516
	task.wait(0.1)
	 294:40516,295:40615
	local child31 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40615
	child31:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 530
	 294:40516
	task.wait(0.1)
	 294:40516,295:40617
	local child32 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40617
	child32:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 531
	 294:40516
	task.wait(0.1)
	 294:40516,295:40619
	local child33 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40619
	child33:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 532
	 294:40516
	task.wait(0.1)
	 294:40516,295:40621
	local child34 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40621
	child34:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 533
	 294:40516
	task.wait(0.1)
	 294:40516,295:40623
	local child35 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40623
	child35:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 534
	 294:40516
	task.wait(0.1)
	 294:40516,295:40625
	local child36 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40625
	child36:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 535
	 294:40516
	task.wait(0.1)
	 294:40516,295:40627
	local child37 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40627
	child37:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 536
	 294:40516
	task.wait(0.1)
	 294:40516,295:40629
	local child38 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40629
	child38:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 537
	 294:40516
	task.wait(0.1)
	 294:40516,295:40631
	local child39 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40631
	child39:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 538
	 294:40516
	task.wait(0.1)
	 294:40516,295:40633
	local child40 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40633
	child40:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 539
	 294:40516
	task.wait(0.1)
	 294:40516,295:40635
	local child41 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40635
	child41:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 540
	 294:40516
	task.wait(0.1)
	 294:40516,295:40637
	local child42 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40637
	child42:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 541
	 294:40516
	task.wait(0.1)
	 294:40516,295:40639
	local child43 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40639
	child43:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 542
	 294:40516
	task.wait(0.1)
	 294:40516,295:40641
	local child44 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40641
	child44:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 543
	 294:40516
	task.wait(0.1)
	 294:40516,295:40643
	local child45 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40643
	child45:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 544
	 294:40516
	task.wait(0.1)
	 294:40516,295:40645
	local child46 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40645
	child46:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 545
	 294:40516
	task.wait(0.1)
	 294:40516,295:40647
	local child47 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40647
	child47:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 546
	 294:40516
	task.wait(0.1)
	 294:40516,295:40649
	local child48 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40649
	child48:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 547
	 294:40516
	task.wait(0.1)
	 294:40516,295:40651
	local child49 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40651
	child49:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 548
	 294:40516
	task.wait(0.1)
	 294:40516,295:40653
	local child50 = ReplicatedStorage.NPCs:FindFirstChild(arg333)
	 294:40516,295:40653
	child50:FindFirstChild("HumanoidRootPart")
	 294:40516
	_G.currentTweenID = 549
	 294:40516
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:40755
local Toggle77 = Tab12:AddToggle("Esp_Esp_Berries_1", { Title = "Esp Berries", Description = "", Default = false })
 1:1,25:23379
Toggle77:OnChanged(function(arg337, arg338)
	 296:40769
	task.spawn(function(...)
		 297:40780,298:40785
		local CollectionService = game:GetService("CollectionService")
		 297:40780,298:40785
		local tagged = CollectionService:GetTagged("BerryBush")
		 
		for i430, v644 in ipairs(tagged) do
			 297:40780,298:40785
			v644.Parent:GetPivot()
			 297:40780,298:40785
			local attributes = v644:GetAttributes()
			 
			for k215, v645 in pairs(attributes) do
			end
		end
		 
	end)
end)
 1:1,25:23379,46:40844
local Toggle78 = Tab12:AddToggle("Esp_Esp_Players_1", { Title = "Esp Players", Description = "", Default = false })
 1:1,25:23379
Toggle78:OnChanged(function(arg339, arg340)
	 299:40858
	task.spawn(function(...)
		 300:40869,301:40874
		game.Players:GetChildren()
		 300:40869
		task.wait(1)
		 300:40869,301:40889
		game.Players:GetChildren()
		 300:40869
		task.wait(1)
		 
	end)
end)
 1:1,25:23379,46:40909
local Toggle79 = Tab12:AddToggle("Esp_Esp_Chests_1", { Title = "Esp Chests", Description = "", Default = false })
 1:1,25:23379
Toggle79:OnChanged(function(arg341, arg342)
	 302:40923
	task.spawn(function(...)
		 303:40934,304:40939
		Players.LocalPlayer.Character:GetPivot()
		 303:40934,304:40939
		local tagged2 = CollectionService:GetTagged("_ChestTagged")
		 
		for i431, v646 in ipairs(tagged2) do
			 303:40934,304:40939
			v646:GetAttribute("IsDisabled")
		end
		 303:40934
		task.wait(1)
		 303:40934,304:40986
		Players.LocalPlayer.Character:GetPivot()
		 303:40934,304:40986
		local tagged3 = CollectionService:GetTagged("_ChestTagged")
		 
		for i432, v647 in ipairs(tagged3) do
			 303:40934,304:40986
			v647:GetAttribute("IsDisabled")
		end
		 303:40934
		task.wait(1)
		 
	end)
end)
 1:1,25:23379,46:41006
local Toggle80 = Tab12:AddToggle("Esp_Esp_Fruits_1", { Title = "Esp Fruits", Description = "", Default = false })
 1:1,25:23379
Toggle80:OnChanged(function(arg343, arg344)
	 305:41020
	task.spawn(function(...)
		 306:41031,307:41036
		workspace:GetChildren()
		 306:41031
		task.wait(1)
		 306:41031,307:41066
		workspace:GetChildren()
		 306:41031
		task.wait(1)
		 
	end)
end)
 1:1,25:23379,46:41088
local Toggle81 = Tab12:AddToggle("Esp_Esp_Island_Location_1", { Title = "Esp Island Location", Description = "", Default = false })
 1:1,25:23379
Toggle81:OnChanged(function(arg345, arg346)
	 309:41102
	task.spawn(function(...)
		 310:41113,311:41118
		workspace._WorldOrigin.Locations:GetChildren()
		 310:41113
		task.wait(1)
		 310:41113,311:41135
		workspace._WorldOrigin.Locations:GetChildren()
		 310:41113
		task.wait(1)
		 
	end)
end)
 1:1,25:23379,45:41155
local Tab17 = Window:AddTab({ Title = "Selected Skill", Icon = "" })
 1:1,25:23379,45:41155
Tab17.AddToggle = function(arg347, arg348)
	 46:41156
	local Toggle82 = arg347:AddToggle("Selected_Skill_opt_1", {})
end
 1:1,25:23379,45:41155
Tab17.AddDropdown = function(arg349, arg350)
	 46:41160
	local Dropdown24 = arg349:AddDropdown("Selected_Skill_opt_2", {})
end
 1:1,25:23379,45:41155
Tab17.AddSlider = function(arg351, arg352)
	 46:41164
	local Slider19 = arg351:AddSlider("Selected_Skill_opt_3", {})
end
 1:1,25:23379,45:41155
Tab17.AddInput = function(arg353, arg354)
	 46:41168
	local Input18 = arg353:AddInput("Selected_Skill_opt_4", {})
end
 1:1,25:23379
Tab17:AddSection("Select Skill")
 1:1,25:23379,46:41198
local Toggle83 = Tab17:AddToggle("Selected_Skill_Use_Melee_1", { Title = "Use Melee", Description = "Spam Skill Melee", Default = false })
 1:1,25:23379
Toggle83:OnChanged(function(arg355, arg356)
	 312:41208
	_G.UseMelee = arg355
end)
 1:1,25:23379,46:41241
local Dropdown25 = Tab17:AddDropdown("Selected_Skill_Melee_Skills_1", { Title = "Melee Skills", Description = "", Default = {}, Multi = true, Values = { "Z", "X", "C" } })
 1:1,25:23379
Dropdown25:OnChanged(function(arg357, arg358)
	 
	for k216, v649 in pairs(arg357) do
	end
	 313:41251
	_G.MeleeSkills = { k216 }
end)
 1:1,25:23379,46:41280
local Toggle84 = Tab17:AddToggle("Selected_Skill_Use_Sword_1", { Title = "Use Sword", Description = "Spam Skill Sword", Default = false })
 1:1,25:23379
Toggle84:OnChanged(function(arg359, arg360)
	 314:41290
	_G.UseSword = arg359
end)
 1:1,25:23379,46:41321
local Dropdown26 = Tab17:AddDropdown("Selected_Skill_Sword_Skills_1", { Title = "Sword Skills", Description = "", Default = {}, Multi = true, Values = { "Z", "X" } })
 1:1,25:23379
Dropdown26:OnChanged(function(arg361, arg362)
	 
	for k217, v650 in pairs(arg361) do
	end
	 315:41331
	_G.SwordSkills = { k217 }
end)
 1:1,25:23379,46:41360
local Toggle85 = Tab17:AddToggle("Selected_Skill_Use_Gun_1", { Title = "Use Gun", Description = "Spam Skill Gun", Default = false })
 1:1,25:23379
Toggle85:OnChanged(function(arg363, arg364)
	 316:41370
	_G.UseGun = arg363
end)
 1:1,25:23379,46:41401
local Dropdown27 = Tab17:AddDropdown("Selected_Skill_Gun_Skills_1", { Title = "Gun Skills", Description = "", Default = {}, Multi = true, Values = { "Z", "X" } })
 1:1,25:23379
Dropdown27:OnChanged(function(arg365, arg366)
	 
	for k218, v651 in pairs(arg365) do
	end
	 317:41411
	_G.GunSkills = { k218 }
end)
 1:1,25:23379,46:41440
local Toggle86 = Tab17:AddToggle("Selected_Skill_Use_Blox_Fruit_1", { Title = "Use Blox Fruit", Description = "Spam Skill Blox Fruit", Default = false })
 1:1,25:23379
Toggle86:OnChanged(function(arg367, arg368)
	 318:41450
	_G.UseBloxFruit = arg367
end)
 1:1,25:23379,46:41487
local Dropdown28 = Tab17:AddDropdown("Selected_Skill_Blox_Fruit_Skills_1", {
	Title = "Blox Fruit Skills",
	Description = "",
	Default = {},
	Multi = true,
	Values = { "Z", "X", "C", "V", "F" }
})
 1:1,25:23379
Dropdown28:OnChanged(function(arg369, arg370)
	 
	for k219, v652 in pairs(arg369) do
	end
	 319:41497
	_G.BloxFruitSkills = { k219 }
end)
 1:1,25:23379,46:41544
local Dropdown29 = Tab14:AddDropdown("Sea_Events_Select_Boats_1", {
	Title = "Select Boats",
	Default = 1,
	Multi = false,
	Values = {
		"Guardian",
		"Dinghy",
		"PirateSloop",
		"PirateBrigade",
		"PirateGrandBrigade",
		"MarineSloop",
		"MarineBrigade",
		"MarineGrandBrigade",
		"Beast Hunter"
	}
})
 1:1,25:23379
Dropdown29:OnChanged(function(arg371, arg372)
	 320:41554
	_G.SelectedBoat = arg371
end)
 1:1,25:23379
_G.currentTweenID = 551
 1:1,25:23379
Tab14:AddButton({
	Title = "Teleport To Your Local Boat",
	Callback = function(state, arg374)
		if not state then
			_G.currentTweenID = 550
		end
		Sea_GetLocalBoat()
		Sea_GetLocalBoat()
	end
})
 1:1,25:23379,46:41613
local Toggle87 = Tab14:AddToggle("Sea_Events_Enable_Speed_Boats_1", { Title = "Enable Speed Boats", Description = "", Default = false })
 1:1,25:23379
Toggle87:OnChanged(function(arg375, arg376)
	 322:41623
	_G.EnableSpeedBoats = arg375
end)
 1:1,25:23379,46:41656
_G.BoatSpeed = false
 1:1,25:23379,46:41656
local Slider20 = Tab14:AddSlider("Sea_Events_Boat_Speed_1", {
	Title = "Boat Speed",
	Description = "Set speed for your local boat",
	Default = 260,
	Max = 400,
	Min = 180,
	Rounding = 0,
	Callback = function(state, arg378)
		if state then
			_G.BoatSpeed = state
		end
	end
})
 1:1,25:23379,46:41698
local Dropdown30 = Tab14:AddDropdown("Sea_Events_Select_Zone_1", {
	Title = "Select Zone",
	Default = 1,
	Multi = false,
	Values = { "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6", "Infinity" }
})
 1:1,25:23379
Dropdown30:OnChanged(function(arg379, arg380)
	 324:41708
	_G.SelectedZone = 1
end)
 1:1,25:23379,46:41745
local Toggle88 = Tab14:AddToggle("Sea_Events_Start_Auto_Sea_Events_1", { Title = "Start Auto Sea Events", Description = "", Default = false })
 1:1,25:23379
Toggle88:OnChanged(function(arg381, arg382)
	 325:41755
	_G.StartAutoSeaEvents = arg381
end)
 1:1,25:23379,46:41778
local Toggle89 = Tab14:AddToggle("Sea_Events_Auto_Shark_and_Fish_Crew_Member_1", { Title = "Auto Shark and Fish Crew Member", Description = "", Default = false })
 1:1,25:23379
Toggle89:OnChanged(function(arg383, arg384)
	 326:41788
	_G.AutoSharkAndFish = arg383
end)
 1:1,25:23379,46:41811
local Toggle90 = Tab14:AddToggle("Sea_Events_Auto_Terror_Shark_1", { Title = "Auto Terror Shark", Description = "", Default = false })
 1:1,25:23379
Toggle90:OnChanged(function(arg385, arg386)
	 327:41821
	_G.AutoTerrorShark = arg385
end)
 1:1,25:23379,46:41844
local Toggle91 = Tab14:AddToggle("Sea_Events_Auto_Pirates_Ship_1", { Title = "Auto Pirates Ship", Description = "", Default = false })
 1:1,25:23379
Toggle91:OnChanged(function(arg387, arg388)
	 328:41854
	_G.AutoPiratesShip = arg387
	 328:41854
	result:Notify({ Title = "Plz,SetUp Skill", Content = "Select Skills In Farm Selected Skill Tab", Duration = 8 })
end)
 1:1,25:23379,46:41889
local Toggle92 = Tab14:AddToggle("Sea_Events_Auto_Ghost_Ship_1", { Title = "Auto Ghost Ship", Description = "", Default = false })
 1:1,25:23379
Toggle92:OnChanged(function(arg389, arg390)
	 329:41899
	_G.AutoGhostShip = arg389
	 329:41899
	result:Notify({ Title = "Plz,SetUp Skill", Content = "Select Skills In Farm Sellected Skill Tab", Duration = 8 })
end)
 1:1,25:23379,46:41934
local Toggle93 = Tab14:AddToggle("Sea_Events_Auto_Sea_Beast_1", { Title = "Auto Sea Beast", Description = "", Default = false })
 1:1,25:23379
Toggle93:OnChanged(function(arg391, arg392)
	 330:41944
	_G.AutoSeaBeast = arg391
	 330:41944
	result:Notify({ Title = "Script Warning", Content = "Select Skills In Farm Config Tab", Duration = 8 })
end)
 1:1,25:23379,46:41979
local Toggle94 = Tab14:AddToggle("Sea_Events_Auto_Piranha_1", { Title = "Auto Piranha", Description = "", Default = false })
 1:1,25:23379
Toggle94:OnChanged(function(arg393, arg394)
	 331:41989
	_G.AutoPiranha = arg393
end)
 1:1,25:23379
Tab14:AddSection("Leviathan")
 1:1,25:23379
Tab14:AddButton({
	Title = "Buy Spy Leviathan",
	Callback = function(state, arg396)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
	end
})
 1:1,25:23379
Tab14:AddButton({
	Title = "Craft Beast Hunter",
	Callback = function(state, arg398)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Check", "LeviathanBoat")
		ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanBoat")
	end
})
 1:1,25:23379,46:42102
local Toggle95 = Tab14:AddToggle("Sea_Events_Auto_Find_Leviathan_1", { Title = "Auto Find Leviathan", Description = "", Default = false })
 1:1,25:23379
Toggle95:OnChanged(function(arg399, arg400)
	 334:42112
	_G.AutoFindLeviathan = arg399
end)
 1:1,25:23379,46:42135
local Toggle96 = Tab14:AddToggle("Sea_Events_Attack_Leviathan_1", { Title = "Attack Leviathan", Description = "", Default = false })
 1:1,25:23379
Toggle96:OnChanged(function(arg401, arg402)
	 335:42145
	_G.AutoLeviathan = arg401
	 335:42145
	result:Notify({ Title = "Script Warning", Content = "Select Skills In Farm Config Tab", Duration = 8 })
end)
 1:1,25:23379,46:42180
local Toggle97 = Tab14:AddToggle("Sea_Events_Auto_Sail_Boat_To_Tiki_1", { Title = "Auto Sail Boat To Tiki", Description = "", Default = false })
 1:1,25:23379
Toggle97:OnChanged(function(arg403, arg404)
	 336:42190
	_G.AutoSailBoatToTiki = arg403
end)
 1:1,25:23379
Tab14:AddSection("Kitsune Events")
 1:1,25:23379,46:42219
local Toggle98 = Tab14:AddToggle("Sea_Events_Auto_Find_Kitsune_Island_1", { Title = "Auto Find Kitsune Island", Description = "", Default = false })
 1:1,25:23379
Toggle98:OnChanged(function(arg405, arg406)
	 337:42229
	_G.AutoFindKitsuneIsland = arg405
end)
 1:1,25:23379,46:42252
local Toggle99 = Tab14:AddToggle("Sea_Events_Auto_Collect_Azure_Member_1", { Title = "Auto Collect Azure Member", Description = "", Default = false })
 1:1,25:23379
Toggle99:OnChanged(function(arg407, arg408)
	 338:42262
	_G.AutoCollectAzureMember = arg407
end)
 1:1,25:23379,46:42285
local Toggle100 = Tab14:AddToggle("Sea_Events_Auto_Trade_Azure_Member_1", { Title = "Auto Trade Azure Member", Description = "", Default = false })
 1:1,25:23379
Toggle100:OnChanged(function(arg409, arg410)
	 339:42295
	_G.AutoTradeAzureMember = arg409
end)
 1:1,25:23379
task.spawn(function(...)
	 340:42348
	task.wait(30)
	 340:42348
	task.wait(30)
	 
end)
 1:1,25:23379
_G.NoClipBoatState = false
 1:1,25:23379
RunService.Stepped:Connect(function(time, deltaTime2)
end)
 1:1,25:23379
task.spawn(function(...)
	 341:42553
	task.wait(2)
	 341:42553
	task.wait(2)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 342:42594
	task.wait(0.5)
	 342:42594
	_G.SeaEventAiming = false
	 342:42594
	task.wait(0.5)
	 342:42594
	task.wait(0.5)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 343:42617
	task.wait(0.1)
	 343:42617,344:42638,345:42639,346:42640
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 343:42617,344:42638,345:42639,346:42640
	local SeaBeasts = workspace:FindFirstChild("SeaBeasts")
	 343:42617,344:42638,345:42639,346:42640
	local children225 = SeaBeasts:GetChildren()
	 
	for i434, v653 in ipairs(children225) do
		 343:42617,344:42638,345:42639,346:42640
		v653:FindFirstChild("HumanoidRootPart")
		 343:42617,344:42638,345:42639,346:42640
		v653:FindFirstChild("Health")
		 343:42617
		warn("[StartAutoSeaEvents ERROR]", "LPH:10006: LPH:9947: LPH:9614: [string \"Luraph\"]:1: attempt to compare number < userdata")
		 343:42617
		task.wait(0.1)
		 343:42617,344:42713,347:42722
		local Boats = workspace:FindFirstChild("Boats")
		 343:42617,344:42713,347:42722
		local children226 = Boats:GetChildren()
		 
		for i435, v654 in ipairs(children226) do
			 343:42617,344:42713,347:42722
			v654:FindFirstChild("VehicleSeat")
			 343:42617,344:42713,347:42722,349:42744
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			 343:42617
			warn("[StartAutoSeaEvents ERROR]", "LPH:10009: LPH:9778: [string \"Luraph\"]:1: attempt to compare userdata <= number")
		end
		 343:42617
		task.wait(0.1)
		 
	end
end)
 1:1,25:23379
task.spawn(function(...)
	 350:42775
	task.wait(0.1)
	 350:42775
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 352:42822
	task.wait(0.1)
	 352:42822
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 354:42863
	task.wait(0.1)
	 354:42863
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 356:42916
	task.wait(0.1)
	 356:42916
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 358:42969
	task.wait(0.1)
	 358:42969
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 360:43022
	task.wait(0.1)
	 360:43022
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43078
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43078
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43099
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43099
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43100
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43100
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43101
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43101
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43102
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43102
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43103
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43103
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43104
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43104
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43105
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43105
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43106
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43106
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43107
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43107
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43108
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43108
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43109
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43109
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43110
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43110
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43111
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43111
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43112
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43112
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43113
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43113
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43114
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43114
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43115
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43115
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43116
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43116
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43117
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43117
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43118
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43118
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43119
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43119
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43120
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43120
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43121
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43121
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 362:43057,363:43122
	workspace.Map:FindFirstChild("LeviathanGate")
	 362:43057,363:43122
	task.wait(6)
	 362:43057
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 364:43131
	task.wait(0.1)
	 364:43131,365:43152
	local SeaBeasts2 = workspace:FindFirstChild("SeaBeasts")
	 364:43131,365:43152
	local LeviathanSegment = SeaBeasts2:FindFirstChild("Leviathan Segment")
	 364:43131,365:43152
	SeaBeasts2:FindFirstChild("Leviathan")
	 364:43131,365:43152
	LeviathanSegment:FindFirstChild("Health")
	 364:43131
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 366:43184
	task.wait(0.1)
	 366:43184,367:43205
	local KitsuneIsland = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43205
	local Humanoid2 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43205
	Humanoid2.Sit = false
	 366:43184,367:43205
	local ShrineActive = KitsuneIsland:FindFirstChild("ShrineActive")
	 366:43184,367:43205
	ShrineActive:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 552
	 366:43184
	task.wait(0.1)
	 366:43184,367:43243
	local KitsuneIsland2 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43243
	local Humanoid3 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43243
	Humanoid3.Sit = false
	 366:43184,367:43243
	local ShrineActive2 = KitsuneIsland2:FindFirstChild("ShrineActive")
	 366:43184,367:43243
	ShrineActive2:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 553
	 366:43184
	task.wait(0.1)
	 366:43184,367:43245
	local KitsuneIsland3 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43245
	local Humanoid4 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43245
	Humanoid4.Sit = false
	 366:43184,367:43245
	local ShrineActive3 = KitsuneIsland3:FindFirstChild("ShrineActive")
	 366:43184,367:43245
	ShrineActive3:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 554
	 366:43184
	task.wait(0.1)
	 366:43184,367:43247
	local KitsuneIsland4 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43247
	local Humanoid5 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43247
	Humanoid5.Sit = false
	 366:43184,367:43247
	local ShrineActive4 = KitsuneIsland4:FindFirstChild("ShrineActive")
	 366:43184,367:43247
	ShrineActive4:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 555
	 366:43184
	task.wait(0.1)
	 366:43184,367:43249
	local KitsuneIsland5 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43249
	local Humanoid6 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43249
	Humanoid6.Sit = false
	 366:43184,367:43249
	local ShrineActive5 = KitsuneIsland5:FindFirstChild("ShrineActive")
	 366:43184,367:43249
	ShrineActive5:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 556
	 366:43184
	task.wait(0.1)
	 366:43184,367:43251
	local KitsuneIsland6 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43251
	local Humanoid7 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43251
	Humanoid7.Sit = false
	 366:43184,367:43251
	local ShrineActive6 = KitsuneIsland6:FindFirstChild("ShrineActive")
	 366:43184,367:43251
	ShrineActive6:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 557
	 366:43184
	task.wait(0.1)
	 366:43184,367:43253
	local KitsuneIsland7 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43253
	local Humanoid8 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43253
	Humanoid8.Sit = false
	 366:43184,367:43253
	local ShrineActive7 = KitsuneIsland7:FindFirstChild("ShrineActive")
	 366:43184,367:43253
	ShrineActive7:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 558
	 366:43184
	task.wait(0.1)
	 366:43184,367:43255
	local KitsuneIsland8 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43255
	local Humanoid9 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43255
	Humanoid9.Sit = false
	 366:43184,367:43255
	local ShrineActive8 = KitsuneIsland8:FindFirstChild("ShrineActive")
	 366:43184,367:43255
	ShrineActive8:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 559
	 366:43184
	task.wait(0.1)
	 366:43184,367:43257
	local KitsuneIsland9 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43257
	local Humanoid10 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43257
	Humanoid10.Sit = false
	 366:43184,367:43257
	local ShrineActive9 = KitsuneIsland9:FindFirstChild("ShrineActive")
	 366:43184,367:43257
	ShrineActive9:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 560
	 366:43184
	task.wait(0.1)
	 366:43184,367:43259
	local KitsuneIsland10 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43259
	local Humanoid11 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43259
	Humanoid11.Sit = false
	 366:43184,367:43259
	local ShrineActive10 = KitsuneIsland10:FindFirstChild("ShrineActive")
	 366:43184,367:43259
	ShrineActive10:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 561
	 366:43184
	task.wait(0.1)
	 366:43184,367:43261
	local KitsuneIsland11 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43261
	local Humanoid12 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43261
	Humanoid12.Sit = false
	 366:43184,367:43261
	local ShrineActive11 = KitsuneIsland11:FindFirstChild("ShrineActive")
	 366:43184,367:43261
	ShrineActive11:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 562
	 366:43184
	task.wait(0.1)
	 366:43184,367:43263
	local KitsuneIsland12 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43263
	local Humanoid13 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43263
	Humanoid13.Sit = false
	 366:43184,367:43263
	local ShrineActive12 = KitsuneIsland12:FindFirstChild("ShrineActive")
	 366:43184,367:43263
	ShrineActive12:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 563
	 366:43184
	task.wait(0.1)
	 366:43184,367:43265
	local KitsuneIsland13 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43265
	local Humanoid14 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43265
	Humanoid14.Sit = false
	 366:43184,367:43265
	local ShrineActive13 = KitsuneIsland13:FindFirstChild("ShrineActive")
	 366:43184,367:43265
	ShrineActive13:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 564
	 366:43184
	task.wait(0.1)
	 366:43184,367:43267
	local KitsuneIsland14 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43267
	local Humanoid15 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43267
	Humanoid15.Sit = false
	 366:43184,367:43267
	local ShrineActive14 = KitsuneIsland14:FindFirstChild("ShrineActive")
	 366:43184,367:43267
	ShrineActive14:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 565
	 366:43184
	task.wait(0.1)
	 366:43184,367:43269
	local KitsuneIsland15 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43269
	local Humanoid16 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43269
	Humanoid16.Sit = false
	 366:43184,367:43269
	local ShrineActive15 = KitsuneIsland15:FindFirstChild("ShrineActive")
	 366:43184,367:43269
	ShrineActive15:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 566
	 366:43184
	task.wait(0.1)
	 366:43184,367:43271
	local KitsuneIsland16 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43271
	local Humanoid17 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43271
	Humanoid17.Sit = false
	 366:43184,367:43271
	local ShrineActive16 = KitsuneIsland16:FindFirstChild("ShrineActive")
	 366:43184,367:43271
	ShrineActive16:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 567
	 366:43184
	task.wait(0.1)
	 366:43184,367:43273
	local KitsuneIsland17 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43273
	local Humanoid18 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43273
	Humanoid18.Sit = false
	 366:43184,367:43273
	local ShrineActive17 = KitsuneIsland17:FindFirstChild("ShrineActive")
	 366:43184,367:43273
	ShrineActive17:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 568
	 366:43184
	task.wait(0.1)
	 366:43184,367:43275
	local KitsuneIsland18 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43275
	local Humanoid19 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43275
	Humanoid19.Sit = false
	 366:43184,367:43275
	local ShrineActive18 = KitsuneIsland18:FindFirstChild("ShrineActive")
	 366:43184,367:43275
	ShrineActive18:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 569
	 366:43184
	task.wait(0.1)
	 366:43184,367:43277
	local KitsuneIsland19 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43277
	local Humanoid20 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43277
	Humanoid20.Sit = false
	 366:43184,367:43277
	local ShrineActive19 = KitsuneIsland19:FindFirstChild("ShrineActive")
	 366:43184,367:43277
	ShrineActive19:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 570
	 366:43184
	task.wait(0.1)
	 366:43184,367:43279
	local KitsuneIsland20 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43279
	local Humanoid21 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43279
	Humanoid21.Sit = false
	 366:43184,367:43279
	local ShrineActive20 = KitsuneIsland20:FindFirstChild("ShrineActive")
	 366:43184,367:43279
	ShrineActive20:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 571
	 366:43184
	task.wait(0.1)
	 366:43184,367:43281
	local KitsuneIsland21 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43281
	local Humanoid22 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43281
	Humanoid22.Sit = false
	 366:43184,367:43281
	local ShrineActive21 = KitsuneIsland21:FindFirstChild("ShrineActive")
	 366:43184,367:43281
	ShrineActive21:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 572
	 366:43184
	task.wait(0.1)
	 366:43184,367:43283
	local KitsuneIsland22 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43283
	local Humanoid23 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43283
	Humanoid23.Sit = false
	 366:43184,367:43283
	local ShrineActive22 = KitsuneIsland22:FindFirstChild("ShrineActive")
	 366:43184,367:43283
	ShrineActive22:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 573
	 366:43184
	task.wait(0.1)
	 366:43184,367:43285
	local KitsuneIsland23 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43285
	local Humanoid24 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43285
	Humanoid24.Sit = false
	 366:43184,367:43285
	local ShrineActive23 = KitsuneIsland23:FindFirstChild("ShrineActive")
	 366:43184,367:43285
	ShrineActive23:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 574
	 366:43184
	task.wait(0.1)
	 366:43184,367:43287
	local KitsuneIsland24 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43287
	local Humanoid25 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43287
	Humanoid25.Sit = false
	 366:43184,367:43287
	local ShrineActive24 = KitsuneIsland24:FindFirstChild("ShrineActive")
	 366:43184,367:43287
	ShrineActive24:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 575
	 366:43184
	task.wait(0.1)
	 366:43184,367:43289
	local KitsuneIsland25 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43289
	local Humanoid26 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43289
	Humanoid26.Sit = false
	 366:43184,367:43289
	local ShrineActive25 = KitsuneIsland25:FindFirstChild("ShrineActive")
	 366:43184,367:43289
	ShrineActive25:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 576
	 366:43184
	task.wait(0.1)
	 366:43184,367:43291
	local KitsuneIsland26 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43291
	local Humanoid27 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43291
	Humanoid27.Sit = false
	 366:43184,367:43291
	local ShrineActive26 = KitsuneIsland26:FindFirstChild("ShrineActive")
	 366:43184,367:43291
	ShrineActive26:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 577
	 366:43184
	task.wait(0.1)
	 366:43184,367:43293
	local KitsuneIsland27 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43293
	local Humanoid28 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43293
	Humanoid28.Sit = false
	 366:43184,367:43293
	local ShrineActive27 = KitsuneIsland27:FindFirstChild("ShrineActive")
	 366:43184,367:43293
	ShrineActive27:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 578
	 366:43184
	task.wait(0.1)
	 366:43184,367:43295
	local KitsuneIsland28 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43295
	local Humanoid29 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43295
	Humanoid29.Sit = false
	 366:43184,367:43295
	local ShrineActive28 = KitsuneIsland28:FindFirstChild("ShrineActive")
	 366:43184,367:43295
	ShrineActive28:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 579
	 366:43184
	task.wait(0.1)
	 366:43184,367:43297
	local KitsuneIsland29 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43297
	local Humanoid30 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43297
	Humanoid30.Sit = false
	 366:43184,367:43297
	local ShrineActive29 = KitsuneIsland29:FindFirstChild("ShrineActive")
	 366:43184,367:43297
	ShrineActive29:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 580
	 366:43184
	task.wait(0.1)
	 366:43184,367:43299
	local KitsuneIsland30 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43299
	local Humanoid31 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43299
	Humanoid31.Sit = false
	 366:43184,367:43299
	local ShrineActive30 = KitsuneIsland30:FindFirstChild("ShrineActive")
	 366:43184,367:43299
	ShrineActive30:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 581
	 366:43184
	task.wait(0.1)
	 366:43184,367:43301
	local KitsuneIsland31 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43301
	local Humanoid32 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43301
	Humanoid32.Sit = false
	 366:43184,367:43301
	local ShrineActive31 = KitsuneIsland31:FindFirstChild("ShrineActive")
	 366:43184,367:43301
	ShrineActive31:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 582
	 366:43184
	task.wait(0.1)
	 366:43184,367:43303
	local KitsuneIsland32 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43303
	local Humanoid33 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43303
	Humanoid33.Sit = false
	 366:43184,367:43303
	local ShrineActive32 = KitsuneIsland32:FindFirstChild("ShrineActive")
	 366:43184,367:43303
	ShrineActive32:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 583
	 366:43184
	task.wait(0.1)
	 366:43184,367:43305
	local KitsuneIsland33 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43305
	local Humanoid34 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43305
	Humanoid34.Sit = false
	 366:43184,367:43305
	local ShrineActive33 = KitsuneIsland33:FindFirstChild("ShrineActive")
	 366:43184,367:43305
	ShrineActive33:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 584
	 366:43184
	task.wait(0.1)
	 366:43184,367:43307
	local KitsuneIsland34 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43307
	local Humanoid35 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43307
	Humanoid35.Sit = false
	 366:43184,367:43307
	local ShrineActive34 = KitsuneIsland34:FindFirstChild("ShrineActive")
	 366:43184,367:43307
	ShrineActive34:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 585
	 366:43184
	task.wait(0.1)
	 366:43184,367:43309
	local KitsuneIsland35 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43309
	local Humanoid36 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43309
	Humanoid36.Sit = false
	 366:43184,367:43309
	local ShrineActive35 = KitsuneIsland35:FindFirstChild("ShrineActive")
	 366:43184,367:43309
	ShrineActive35:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 586
	 366:43184
	task.wait(0.1)
	 366:43184,367:43311
	local KitsuneIsland36 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43311
	local Humanoid37 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43311
	Humanoid37.Sit = false
	 366:43184,367:43311
	local ShrineActive36 = KitsuneIsland36:FindFirstChild("ShrineActive")
	 366:43184,367:43311
	ShrineActive36:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 587
	 366:43184
	task.wait(0.1)
	 366:43184,367:43313
	local KitsuneIsland37 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43313
	local Humanoid38 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43313
	Humanoid38.Sit = false
	 366:43184,367:43313
	local ShrineActive37 = KitsuneIsland37:FindFirstChild("ShrineActive")
	 366:43184,367:43313
	ShrineActive37:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 588
	 366:43184
	task.wait(0.1)
	 366:43184,367:43315
	local KitsuneIsland38 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43315
	local Humanoid39 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43315
	Humanoid39.Sit = false
	 366:43184,367:43315
	local ShrineActive38 = KitsuneIsland38:FindFirstChild("ShrineActive")
	 366:43184,367:43315
	ShrineActive38:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 589
	 366:43184
	task.wait(0.1)
	 366:43184,367:43317
	local KitsuneIsland39 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43317
	local Humanoid40 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43317
	Humanoid40.Sit = false
	 366:43184,367:43317
	local ShrineActive39 = KitsuneIsland39:FindFirstChild("ShrineActive")
	 366:43184,367:43317
	ShrineActive39:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 590
	 366:43184
	task.wait(0.1)
	 366:43184,367:43319
	local KitsuneIsland40 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43319
	local Humanoid41 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43319
	Humanoid41.Sit = false
	 366:43184,367:43319
	local ShrineActive40 = KitsuneIsland40:FindFirstChild("ShrineActive")
	 366:43184,367:43319
	ShrineActive40:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 591
	 366:43184
	task.wait(0.1)
	 366:43184,367:43321
	local KitsuneIsland41 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43321
	local Humanoid42 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43321
	Humanoid42.Sit = false
	 366:43184,367:43321
	local ShrineActive41 = KitsuneIsland41:FindFirstChild("ShrineActive")
	 366:43184,367:43321
	ShrineActive41:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 592
	 366:43184
	task.wait(0.1)
	 366:43184,367:43323
	local KitsuneIsland42 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43323
	local Humanoid43 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43323
	Humanoid43.Sit = false
	 366:43184,367:43323
	local ShrineActive42 = KitsuneIsland42:FindFirstChild("ShrineActive")
	 366:43184,367:43323
	ShrineActive42:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 593
	 366:43184
	task.wait(0.1)
	 366:43184,367:43325
	local KitsuneIsland43 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43325
	local Humanoid44 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43325
	Humanoid44.Sit = false
	 366:43184,367:43325
	local ShrineActive43 = KitsuneIsland43:FindFirstChild("ShrineActive")
	 366:43184,367:43325
	ShrineActive43:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 594
	 366:43184
	task.wait(0.1)
	 366:43184,367:43327
	local KitsuneIsland44 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43327
	local Humanoid45 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43327
	Humanoid45.Sit = false
	 366:43184,367:43327
	local ShrineActive44 = KitsuneIsland44:FindFirstChild("ShrineActive")
	 366:43184,367:43327
	ShrineActive44:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 595
	 366:43184
	task.wait(0.1)
	 366:43184,367:43329
	local KitsuneIsland45 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43329
	local Humanoid46 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43329
	Humanoid46.Sit = false
	 366:43184,367:43329
	local ShrineActive45 = KitsuneIsland45:FindFirstChild("ShrineActive")
	 366:43184,367:43329
	ShrineActive45:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 596
	 366:43184
	task.wait(0.1)
	 366:43184,367:43331
	local KitsuneIsland46 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43331
	local Humanoid47 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43331
	Humanoid47.Sit = false
	 366:43184,367:43331
	local ShrineActive46 = KitsuneIsland46:FindFirstChild("ShrineActive")
	 366:43184,367:43331
	ShrineActive46:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 597
	 366:43184
	task.wait(0.1)
	 366:43184,367:43333
	local KitsuneIsland47 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43333
	local Humanoid48 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43333
	Humanoid48.Sit = false
	 366:43184,367:43333
	local ShrineActive47 = KitsuneIsland47:FindFirstChild("ShrineActive")
	 366:43184,367:43333
	ShrineActive47:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 598
	 366:43184
	task.wait(0.1)
	 366:43184,367:43335
	local KitsuneIsland48 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43335
	local Humanoid49 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43335
	Humanoid49.Sit = false
	 366:43184,367:43335
	local ShrineActive48 = KitsuneIsland48:FindFirstChild("ShrineActive")
	 366:43184,367:43335
	ShrineActive48:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 599
	 366:43184
	task.wait(0.1)
	 366:43184,367:43337
	local KitsuneIsland49 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43337
	local Humanoid50 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43337
	Humanoid50.Sit = false
	 366:43184,367:43337
	local ShrineActive49 = KitsuneIsland49:FindFirstChild("ShrineActive")
	 366:43184,367:43337
	ShrineActive49:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 600
	 366:43184
	task.wait(0.1)
	 366:43184,367:43339
	local KitsuneIsland50 = workspace.Map:FindFirstChild("KitsuneIsland")
	 366:43184,367:43339
	local Humanoid51 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	 366:43184,367:43339
	Humanoid51.Sit = false
	 366:43184,367:43339
	local ShrineActive50 = KitsuneIsland50:FindFirstChild("ShrineActive")
	 366:43184,367:43339
	ShrineActive50:FindFirstChild("NeonShrinePart")
	 366:43184
	_G.currentTweenID = 601
	 366:43184
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 368:43349
	task.wait(0.1)
	 368:43349,369:43370
	workspace:FindFirstChild("AttachedAzureEmber")
	 368:43349,369:43370
	local EmberTemplate = workspace:FindFirstChild("EmberTemplate")
	 368:43349,369:43370
	EmberTemplate:FindFirstChild("Part")
	 368:43349,369:43370
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = EmberTemplate.Part.CFrame
	 368:43349
	task.wait(0.1)
	 
end)
 1:1,25:23379
task.spawn(function(...)
	 370:43408
	task.wait(0.1)
	 370:43408,371:43429
	game.ReplicatedStorage.Modules.Net:FindFirstChild("RF/KitsuneStatuePray")
	 370:43408,371:43429
	game.ReplicatedStorage.Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
	 370:43408
	task.wait(0.1)
	 370:43408,371:43446
	game.ReplicatedStorage.Modules.Net:FindFirstChild("RF/KitsuneStatuePray")
	 370:43408,371:43446
	game.ReplicatedStorage.Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
	 370:43408
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:43466
local Toggle101 = Tab13:AddToggle("RaceV4_Mirage_Auto_Pull_Lever_1", { Title = "Auto Pull Lever", Description = "", Default = false })
 1:1,25:23379
Toggle101:OnChanged(function(arg411, arg412)
	 372:43480
	_G.Lver = arg411
end)
 1:1,25:23379
task.spawn(function(...)
	 373:43493
	task.wait(0.1)
	 373:43493,374:43514
	local TempleofTime = workspace.Map:FindFirstChild("Temple of Time")
	 373:43493,374:43514
	local descendants3 = TempleofTime:GetDescendants()
	 
	for i437, v656 in ipairs(descendants3) do
		 373:43493,374:43514
		fireproximityprompt(v656, math.huge)
		 373:43493
		task.wait(0.1)
		 373:43493,374:43535
		fireproximityprompt(v656, math.huge)
		 373:43493
		task.wait(0.1)
		 
	end
end)
 1:1,25:23379,46:43557
local Toggle102 = Tab13:AddToggle("RaceV4_Mirage_Auto_Train_V4_1", { Title = "Auto Train V4", Description = "", Default = false })
 1:1,25:23379
Toggle102:OnChanged(function(arg413, arg414)
	 375:43571
	_G.AcientOne = arg413
end)
 1:1,25:23379
task.spawn(function(...)
	 376:43584
	task.wait(0.1)
	 376:43584,377:43609
	game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy")
	 376:43584,377:43609
	game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed")
	 376:43584
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab13:AddButton({
	Title = "Teleport to Temple of Time",
	Description = "",
	Callback = function(state, arg416)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
	end
})
 1:1,25:23379
Tab13:AddButton({
	Title = "Teleport to Ancient One",
	Description = "",
	Callback = function(state, arg418)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375)
	end
})
 1:1,25:23379
Tab13:AddButton({
	Title = "Teleport to Ancient Clock",
	Description = "",
	Callback = function(state, arg420)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29549, 15069, -88)
	end
})
 1:1,25:23379,46:43767
local Toggle103 = Tab13:AddToggle("RaceV4_Mirage_Auto_Teleport_to_Race_Doors_1", { Title = "Auto Teleport to Race Doors", Description = "", Default = false })
 1:1,25:23379
Toggle103:OnChanged(function(arg421, arg422)
	 382:43781
	_G.TPDoor = arg421
end)
 1:1,25:23379
task.spawn(function(...)
	 383:43794
	task.wait(0.1)
	 383:43794
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:43907
local Toggle104 = Tab13:AddToggle("RaceV4_Mirage_Auto_Complete_Trial_Race_1", { Title = "Auto Complete Trial Race", Description = "", Default = false })
 1:1,25:23379
Toggle104:OnChanged(function(arg423, arg424)
	 385:43921
	_G.Complete_Trials = arg423
end)
 1:1,25:23379
task.spawn(function(...)
	 386:43940
	task.wait(0.1)
	 386:43940,387:43965
	game.Players.LocalPlayer.Data:FindFirstChild("Race")
	 386:43940
	task.wait(0.1)
	 
end)
 1:1,25:23379,46:44019
local Toggle105 = Tab13:AddToggle("RaceV4_Mirage_Auto_Kill_Player_After_Trial_1", { Title = "Auto Kill Player After Trial", Description = "", Default = false })
 1:1,25:23379
Toggle105:OnChanged(function(arg425, arg426)
	 388:44033
	_G.Defeating = arg425
end)
 1:1,25:23379
task.spawn(function(...)
	 389:44046
	task.wait(0.1)
	 389:44046,390:44063
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	 389:44046,390:44063
	local children227 = workspace.Characters:GetChildren()
	 
	for k220, v657 in pairs(children227) do
		 389:44046,390:44063
		v657:FindFirstChild("HumanoidRootPart")
		 389:44046,390:44063
		v657:FindFirstChild("Humanoid")
	end
	 389:44046
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab15:AddSection("Shop Options")
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Buso",
	Description = "",
	Callback = function(state, arg428)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
	end
})
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Soru",
	Description = "",
	Callback = function(state, arg430)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
	end
})
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Ken",
	Description = "",
	Callback = function(state, arg432)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk", "Buy")
	end
})
 1:1,25:23379
Tab15:AddSection("Fragments shop")
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Refund Stats",
	Description = "",
	Callback = function(state, arg434)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
	end
})
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Reroll Race",
	Description = "",
	Callback = function(state, arg436)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
	end
})
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Ghoul Race ",
	Description = "",
	Callback = function(state, arg438)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", " Change", 4)
	end
})
 1:1,25:23379
Tab15:AddButton({
	Title = "Buy Cyborg Race ",
	Description = "",
	Callback = function(state, arg440)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", " Buy")
	end
})
 1:1,25:23379
Tab16:AddButton({
	Title = "Choose Pirate Team",
	Description = "",
	Callback = function(state, arg442)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
	end
})
 1:1,25:23379
Tab16:AddButton({
	Title = "Choose Marine Team",
	Description = "",
	Callback = function(state, arg444)
		ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
	end
})
 1:1,25:23379,46:44441
local Toggle106 = Tab16:AddToggle("Other_Open_Portal_1", { Title = "Open Portal", Description = "", Default = false })
 1:1,25:23379
Toggle106:OnChanged(function(arg445, arg446)
	 402:44455
	_G.PortalUnLock = arg445
end)
 1:1,25:23379
task.spawn(function(...)
	 403:44468
	task.wait(0.1)
	 403:44468,404:44485
	ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203125, -7551.677734375))
	 403:44468
	task.wait(0.1)
	 
end)
 1:1,25:23379
Tab16:AddButton({
	Title = "Remove Sky Fog",
	Description = "",
	Callback = function(state, arg448)
		Lighting:FindFirstChild("LightingLayers")
		Lighting.LightingLayers:Destroy()
		Lighting:FindFirstChild("SeaTerrorCC")
		Lighting.SeaTerrorCC:Destroy()
		Lighting:FindFirstChild("FantasySky")
		Lighting.FantasySky:Destroy()
	end
})
 1:1,25:23379,46:44595
local Toggle107 = Tab16:AddToggle("Other_Turn_on_Full_Bright_1", { Title = "Turn on Full Bright", Description = "", Default = false })
 1:1,25:23379
Toggle107:OnChanged(function(arg449, arg450)
	 407:44609
	Lighting.Ambient = Color3.new(0, 0, 0)
	 407:44609
	Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
	 407:44609
	Lighting.ColorShift_Top = Color3.new(0, 0, 0)
end)
 1:1,25:23379,46:44664
local Dropdown31 = Tab16:AddDropdown("Other_Select_Time_1", { Title = "Select Time", Default = 1, Multi = false, Values = { "Day", "Night" } })
 1:1,25:23379
Dropdown31:OnChanged(function(arg451, arg452)
	 408:44678
	_G.SelectDN = arg451
end)
 1:1,25:23379,46:44701
local Toggle108 = Tab16:AddToggle("Other_Turn_on_Time_1", { Title = "Turn on Time", Description = "", Default = false })
 1:1,25:23379
Toggle108:OnChanged(function(arg453, arg454)
	 409:44715
	_G.daylightN = arg453
end)
 1:1,25:23379
task.spawn(function(...)
	 410:44728
	task.wait(1)
	 410:44728
	task.wait(1)
	 
end)
 1:1,25:23379,46:44771
local Toggle109 = Tab16:AddToggle("Other_Turn_on_Walk_on_Water_1", { Title = "Turn on Walk on Water", Description = "walk on water", Default = true })
 1:1,25:23379
Toggle109:OnChanged(function(arg455, arg456)
	 411:44785
	_G.WalkWater_Part = arg455
	 411:44785
	workspace.Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
end)
 1:1,25:23379,46:44830
local Toggle110 = Tab16:AddToggle("Other_Turn_on_Ice_Walk_1", { Title = "Turn on Ice Walk", Description = "", Default = false })
 1:1,25:23379
Toggle110:OnChanged(function(arg457, arg458)
	 412:44844
	_G.WalkWater = arg457
end)
 1:1,25:23379
task.spawn(function(...)
	 413:44857
	task.wait(0.1)
	 413:44857,414:44878
	game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
	 413:44857,414:44878
	local clone = ReplicatedStorage.Assets.Models.IceSpikes4:Clone()
	 413:44857,414:44878
	clone.Parent = workspace
	 413:44857,414:44878
	clone.Size = Vector3.new(13, 1.7000000476837158, 13)
	 413:44857,414:44878
	clone.Color = Color3.fromRGB(128, 187, 219)
	 413:44857,414:44878
	clone.CFrame = (CFrame.new(0, -3.8, 0) * CFrame.Angles(-0.012185678157391683, 4.66644029810137, -0.0037679043620523038))
	 413:44857,414:44878
	local tween = TweenService:Create(clone, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Size = Vector3.new(0, 0.30000001192092896, 0) })
	 413:44857,414:44878
	tween.Completed:Connect(function(playbackState)
		 430:45291
		clone:Destroy()
	end)
	 413:44857,414:44878
	tween:Play()
	 413:44857
	task.wait(0.1)
	 413:44857,414:45021
	game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
	 413:44857,414:45021
	local clone2 = ReplicatedStorage.Assets.Models.IceSpikes4:Clone()
	 413:44857,414:45021
	clone2.Parent = workspace
	 413:44857,414:45021
	clone2.Size = Vector3.new(13, 1.7000000476837158, 14)
	 413:44857,414:45021
	clone2.Color = Color3.fromRGB(128, 187, 219)
	 413:44857,414:45021
	clone2.CFrame = (CFrame.new(0, -3.8, 0) * CFrame.Angles(-0.027234572099179337, 3.1279461542928142, 0.0063234800602938041))
	 413:44857,414:45021
	local tween2 = TweenService:Create(clone2, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Size = Vector3.new(0, 0.30000001192092896, 0) })
	 413:44857,414:45021
	tween2.Completed:Connect(function(playbackState2)
		 430:45296
		clone2:Destroy()
	end)
	 413:44857,414:45021
	tween2:Play()
	 413:44857
	task.wait(0.1)
	 413:44857,414:45022
	game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
	 413:44857,414:45022
	local clone3 = ReplicatedStorage.Assets.Models.IceSpikes4:Clone()
	 413:44857,414:45022
	clone3.Parent = workspace
	 413:44857,414:45022
	clone3.Size = Vector3.new(15, 1.7000000476837158, 13)
	 413:44857,414:45022
	clone3.Color = Color3.fromRGB(128, 187, 219)
	 413:44857,414:45022
	clone3.CFrame = (CFrame.new(0, -3.8, 0) * CFrame.Angles(-0.010634557261787796, 4.7132801382551026, 0.0057128942679227652))
	 413:44857,414:45022
	local tween3 = TweenService:Create(clone3, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Size = Vector3.new(0, 0.30000001192092896, 0) })
	 413:44857,414:45022
	tween3.Completed:Connect(function(playbackState3)
		 430:45297
		clone3:Destroy()
	end)
	 413:44857,414:45022
	tween3:Play()
	 413:44857
	task.wait(0.1)
	 413:44857,414:45023
	game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
	 413:44857,414:45023
	local clone4 = ReplicatedStorage.Assets.Models.IceSpikes4:Clone()
	 413:44857,414:45023
	clone4.Parent = workspace
	 413:44857,414:45023
	clone4.Size = Vector3.new(15, 1.7000000476837158, 14)
	 413:44857,414:45023
	clone4.Color = Color3.fromRGB(128, 187, 219)
	 413:44857,414:45023
	clone4.CFrame = (CFrame.new(0, -3.8, 0) * CFrame.Angles(0.020800196918606427, 5.6498268088563606, 0.018102326595109314))
	 413:44857,414:45023
	local tween4 = TweenService:Create(clone4, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Size = Vector3.new(0, 0.30000001192092896, 0) })
	 413:44857,414:45023
	tween4.Completed:Connect(function(playbackState4)
		 430:45298
		clone4:Destroy()
	end)
	 413:44857,414:45023
	tween4:Play()
	 413:44857
	task.wait(0.1)
	 
end)
 1:1,25:23379
Window:SelectTab(1)
 1:1,25:23379,415:45035,42:45044,43:45045
local json2 = HttpService:JSONEncode({
	Esp_Esp_Berries_1 = Toggle77.Value,
	Esp_Esp_Chests_1 = Toggle79.Value,
	Esp_Esp_Fruits_1 = Toggle80.Value,
	Esp_Esp_Island_Location_1 = Toggle81.Value,
	Esp_Esp_Players_1 = Toggle78.Value,
	Esp_opt_1 = Toggle12.Value,
	Esp_opt_2 = Dropdown12.Value,
	Esp_opt_3 = Slider12.Value,
	Esp_opt_4 = Input12.Value,
	Farm_Auto_Farm_Hidden_event_quest_1 = Toggle20.Value,
	Farm_Auto_Farm_Magnet_Token_1 = Toggle21.Value,
	Farm_Auto_Mastery_All_Sword_1 = Toggle26.Value,
	Farm_Auto_Mastery_Fruits_1 = Toggle24.Value,
	Farm_Auto_Mastery_Gun_1 = Toggle25.Value,
	Farm_Auto_Materials_1 = Toggle23.Value,
	Farm_Auto_Random_Magnet_Token_1 = Toggle22.Value,
	Farm_Get_Quest_Farm__Bone_Or_Katakuri__1 = Toggle17.Value,
	Farm_Ignore_Katakuri_1 = Toggle18.Value,
	Farm_Selected_Island_1 = Dropdown19.Value,
	Farm_Selected_Material_1 = Dropdown18.Value,
	Farm_Selected_Method_1 = Dropdown17.Value,
	Farm_Start_Farm_1 = Toggle19.Value,
	Farm_opt_1 = Toggle2.Value,
	Farm_opt_2 = Dropdown2.Value,
	Farm_opt_3 = Slider2.Value,
	Farm_opt_4 = Input2.Value,
	Fruit_opt_1 = Toggle9.Value,
	Fruit_opt_2 = Dropdown9.Value,
	Fruit_opt_3 = Slider9.Value,
	Fruit_opt_4 = Input9.Value,
	Hop_opt_1 = Toggle5.Value,
	Hop_opt_2 = Dropdown5.Value,
	Hop_opt_3 = Slider5.Value,
	Hop_opt_4 = Input5.Value,
	Local_PLayer_Anti_AFK_1 = Toggle66.Value,
	Local_PLayer_Auto_Blox_Fruit_1 = Toggle73.Value,
	Local_PLayer_Auto_Defense_1 = Toggle74.Value,
	Local_PLayer_Auto_Gun_1 = Toggle72.Value,
	Local_PLayer_Auto_Melee_1 = Toggle70.Value,
	Local_PLayer_Auto_Swords_1 = Toggle71.Value,
	Local_PLayer_Auto_Turn_on_Buso_1 = Toggle61.Value,
	Local_PLayer_Auto_Turn_on_Race_V3_1 = Toggle62.Value,
	Local_PLayer_Auto_Turn_on_Race_V4_1 = Toggle63.Value,
	Local_PLayer_Bring_Mobs_1 = Toggle60.Value,
	Local_PLayer_Disable_Notify_1 = Toggle69.Value,
	Local_PLayer_Farm_Distance_1 = Slider17.Value,
	Local_PLayer_Remove_Death___Respawned_VFX_1 = Toggle68.Value,
	Local_PLayer_Remove_Hit_VFX_1 = Toggle67.Value,
	Local_PLayer_Selected_Tool_1 = Dropdown20.Value,
	Local_PLayer_Stats_Value_1 = Slider18.Value,
	Local_PLayer_Tele_Y_When_Low_Health_1 = Toggle65.Value,
	Local_PLayer_Turn_on_Bypass_Teleport_1 = Toggle64.Value,
	Local_PLayer__Attack_Mob__1 = Toggle59.Value,
	Local_PLayer_opt_1 = Toggle10.Value,
	Local_PLayer_opt_2 = Dropdown10.Value,
	Local_PLayer_opt_3 = Slider10.Value,
	Local_PLayer_opt_4 = Input10.Value,
	Other_Open_Portal_1 = Toggle106.Value,
	Other_Select_Time_1 = Dropdown31.Value,
	Other_Turn_on_Full_Bright_1 = Toggle107.Value,
	Other_Turn_on_Ice_Walk_1 = Toggle110.Value,
	Other_Turn_on_Time_1 = Toggle108.Value,
	Other_Turn_on_Walk_on_Water_1 = Toggle109.Value,
	Other_opt_1 = Toggle16.Value,
	Other_opt_2 = Dropdown16.Value,
	Other_opt_3 = Slider16.Value,
	Other_opt_4 = Input16.Value,
	Player_Status_opt_1 = Toggle8.Value,
	Player_Status_opt_2 = Dropdown8.Value,
	Player_Status_opt_3 = Slider8.Value,
	Player_Status_opt_4 = Input8.Value,
	RaceV4_Mirage_Auto_Complete_Trial_Race_1 = Toggle104.Value,
	RaceV4_Mirage_Auto_Kill_Player_After_Trial_1 = Toggle105.Value,
	RaceV4_Mirage_Auto_Pull_Lever_1 = Toggle101.Value,
	RaceV4_Mirage_Auto_Teleport_to_Race_Doors_1 = Toggle103.Value,
	RaceV4_Mirage_Auto_Train_V4_1 = Toggle102.Value,
	RaceV4_Mirage_opt_1 = Toggle13.Value,
	RaceV4_Mirage_opt_2 = Dropdown13.Value,
	RaceV4_Mirage_opt_3 = Slider13.Value,
	RaceV4_Mirage_opt_4 = Input13.Value,
	Sea_Events_Attack_Leviathan_1 = Toggle96.Value,
	Sea_Events_Auto_Collect_Azure_Member_1 = Toggle99.Value,
	Sea_Events_Auto_Find_Kitsune_Island_1 = Toggle98.Value,
	Sea_Events_Auto_Find_Leviathan_1 = Toggle95.Value,
	Sea_Events_Auto_Ghost_Ship_1 = Toggle92.Value,
	Sea_Events_Auto_Piranha_1 = Toggle94.Value,
	Sea_Events_Auto_Pirates_Ship_1 = Toggle91.Value,
	Sea_Events_Auto_Sail_Boat_To_Tiki_1 = Toggle97.Value,
	Sea_Events_Auto_Sea_Beast_1 = Toggle93.Value,
	Sea_Events_Auto_Shark_and_Fish_Crew_Member_1 = Toggle89.Value,
	Sea_Events_Auto_Terror_Shark_1 = Toggle90.Value,
	Sea_Events_Auto_Trade_Azure_Member_1 = Toggle100.Value,
	Sea_Events_Boat_Speed_1 = Slider20.Value,
	Sea_Events_Enable_Speed_Boats_1 = Toggle87.Value,
	Sea_Events_Select_Boats_1 = Dropdown29.Value,
	Sea_Events_Select_Zone_1 = Dropdown30.Value,
	Sea_Events_Start_Auto_Sea_Events_1 = Toggle88.Value,
	Sea_Events_opt_1 = Toggle14.Value,
	Sea_Events_opt_2 = Dropdown14.Value,
	Sea_Events_opt_3 = Slider14.Value,
	Sea_Events_opt_4 = Input14.Value,
	Selected_Skill_Blox_Fruit_Skills_1 = Dropdown28.Value,
	Selected_Skill_Gun_Skills_1 = Dropdown27.Value,
	Selected_Skill_Melee_Skills_1 = Dropdown25.Value,
	Selected_Skill_Sword_Skills_1 = Dropdown26.Value,
	Selected_Skill_Use_Blox_Fruit_1 = Toggle86.Value,
	Selected_Skill_Use_Gun_1 = Toggle85.Value,
	Selected_Skill_Use_Melee_1 = Toggle83.Value,
	Selected_Skill_Use_Sword_1 = Toggle84.Value,
	Selected_Skill_opt_1 = Toggle82.Value,
	Selected_Skill_opt_2 = Dropdown24.Value,
	Selected_Skill_opt_3 = Slider19.Value,
	Selected_Skill_opt_4 = Input18.Value,
	Shop_opt_1 = Toggle15.Value,
	Shop_opt_2 = Dropdown15.Value,
	Shop_opt_3 = Slider15.Value,
	Shop_opt_4 = Input15.Value,
	Stack_Auto_Farm_Auto_Elite_Hunter_1 = Toggle31.Value,
	Stack_Auto_Farm_Auto_Elite_Hunter__HOP__1 = Toggle32.Value,
	Stack_Auto_Farm_Auto_Factory_Raid_1 = Toggle27.Value,
	Stack_Auto_Farm_Auto_Farm_Mirror_1 = Toggle29.Value,
	Stack_Auto_Farm_Auto_Pirate_Raid_1 = Toggle28.Value,
	Stack_Auto_Farm_Auto_Soul_Reaper_1 = Toggle30.Value,
	Stack_Auto_Farm_Get_Race_Ghoul_1 = Toggle36.Value,
	Stack_Auto_Farm_Get_Race_Ghoul__HOP__1 = Toggle37.Value,
	Stack_Auto_Farm_Get_Tushita_1 = Toggle35.Value,
	Stack_Auto_Farm_Get_Yama_1 = Toggle34.Value,
	Stack_Auto_Farm_Stop_when_got_God_s_Chalice_1 = Toggle33.Value,
	Stack_Auto_Farm_opt_1 = Toggle3.Value,
	Stack_Auto_Farm_opt_2 = Dropdown3.Value,
	Stack_Auto_Farm_opt_3 = Slider3.Value,
	Stack_Auto_Farm_opt_4 = Input3.Value,
	Status_JobID_1 = Input17.Value,
	Status_opt_1 = Toggle7.Value,
	Status_opt_2 = Dropdown7.Value,
	Status_opt_3 = Slider7.Value,
	Status_opt_4 = Input7.Value,
	Sub_Farming_Auto_Complete_Quest_Bartilo_1 = Toggle40.Value,
	Sub_Farming_Auto_Complete_Quest_Citizen_1 = Toggle41.Value,
	Sub_Farming_Auto_Farm_Observation_1 = Toggle49.Value,
	Sub_Farming_Auto_Pray_Gravestone_1 = Toggle45.Value,
	Sub_Farming_Auto_Random_Bones_1 = Toggle43.Value,
	Sub_Farming_Auto_Training_Dummy_1 = Toggle42.Value,
	Sub_Farming_Auto_Travel_Dressrosa_1 = Toggle38.Value,
	Sub_Farming_Auto_Try_Luck_Gravestone_1 = Toggle44.Value,
	Sub_Farming_Auto_Upgrade_Observation_V2_1 = Toggle50.Value,
	Sub_Farming_Auto_Zou_Quest_1 = Toggle39.Value,
	Sub_Farming_Get_Haki_Rainbow_Colors_1 = Toggle47.Value,
	Sub_Farming_Get_Quest_Rainbow_1 = Toggle48.Value,
	Sub_Farming_Tween_to_Barista_Cousin_1 = Toggle46.Value,
	Sub_Farming_opt_1 = Toggle4.Value,
	Sub_Farming_opt_2 = Dropdown4.Value,
	Sub_Farming_opt_3 = Slider4.Value,
	Sub_Farming_opt_4 = Input4.Value,
	Travel_Auto_Travel_1 = Toggle75.Value,
	Travel_Select_NPCs_1 = Dropdown23.Value,
	Travel_Select_Portal_1 = Dropdown22.Value,
	Travel_Select_Travelling_1 = Dropdown21.Value,
	Travel__Tween_to_NPCs_1 = Toggle76.Value,
	Travel_opt_1 = Toggle11.Value,
	Travel_opt_2 = Dropdown11.Value,
	Travel_opt_3 = Slider11.Value,
	Travel_opt_4 = Input11.Value,
	Volcanic_Auto_Craft_Volcanic_Magnet_1 = Toggle53.Value,
	Volcanic_Auto_Dojo_Trainer_1 = Toggle51.Value,
	Volcanic_Auto_Dragon_Hunter_1 = Toggle52.Value,
	Volcanic_Auto_Find_Vocanic_Island_1 = Toggle54.Value,
	Volcanic_Auto_Patch_Vocanic_Event_1 = Toggle55.Value,
	Volcanic_Collect_Dino_Bone_1 = Toggle56.Value,
	Volcanic_Collect_Dragon_Egg_1 = Toggle57.Value,
	Volcanic_Reset_When_Complete_Volcanic_1 = Toggle58.Value,
	Volcanic_opt_1 = Toggle6.Value,
	Volcanic_opt_2 = Dropdown6.Value,
	Volcanic_opt_3 = Slider6.Value,
	Volcanic_opt_4 = Input6.Value,
	[result2 .. "_opt" .. "_1"] = Toggle.Value,
	[result3 .. "_opt" .. "_1"] = Dropdown.Value,
	[result5 .. "_opt" .. "_1"] = Input.Value,
	[result4 .. "_opt" .. "_1"] = Slider.Value
})
 1:1,25:23379,415:45035,42:45044
writefile("TeddyHub_Data" .. "/" .. game.Players.LocalPlayer.Name .. "MainBF.json", json2)
 1:1,25:23379,416:45052,45:45063
local Tab18 = Window:AddTab({ Title = "Settings Save", Icon = "" })
 1:1,25:23379,416:45052,45:45063
Tab18.AddToggle = function(arg459, arg460)
	 46:45064
	local Toggle111 = arg459:AddToggle("Settings_Save_opt_1", {})
end
 1:1,25:23379,416:45052,45:45063
Tab18.AddDropdown = function(arg461, arg462)
	 46:45068
	local Dropdown32 = arg461:AddDropdown("Settings_Save_opt_2", {})
end
 1:1,25:23379,416:45052,45:45063
Tab18.AddSlider = function(arg463, arg464)
	 46:45072
	local Slider21 = arg463:AddSlider("Settings_Save_opt_3", {})
end
 1:1,25:23379,416:45052,45:45063
Tab18.AddInput = function(arg465, arg466)
	 46:45076
	local Input19 = arg465:AddInput("Settings_Save_opt_4", {})
end
 1:1,25:23379,416:45052
Tab18:AddButton({
	Title = "Save Now",
	Callback = function(state, arg468)
		if state then
			local json3 = HttpService:JSONEncode({
		Esp_Esp_Berries_1 = Toggle77.Value,
		Esp_Esp_Chests_1 = Toggle79.Value,
		Esp_Esp_Fruits_1 = Toggle80.Value,
		Esp_Esp_Island_Location_1 = Toggle81.Value,
		Esp_Esp_Players_1 = Toggle78.Value,
		Esp_opt_1 = Toggle12.Value,
		Esp_opt_2 = Dropdown12.Value,
		Esp_opt_3 = Slider12.Value,
		Esp_opt_4 = Input12.Value,
		Farm_Auto_Farm_Hidden_event_quest_1 = Toggle20.Value,
		Farm_Auto_Farm_Magnet_Token_1 = Toggle21.Value,
		Farm_Auto_Mastery_All_Sword_1 = Toggle26.Value,
		Farm_Auto_Mastery_Fruits_1 = Toggle24.Value,
		Farm_Auto_Mastery_Gun_1 = Toggle25.Value,
		Farm_Auto_Materials_1 = Toggle23.Value,
		Farm_Auto_Random_Magnet_Token_1 = Toggle22.Value,
		Farm_Get_Quest_Farm__Bone_Or_Katakuri__1 = Toggle17.Value,
		Farm_Ignore_Katakuri_1 = Toggle18.Value,
		Farm_Selected_Island_1 = Dropdown19.Value,
		Farm_Selected_Material_1 = Dropdown18.Value,
		Farm_Selected_Method_1 = Dropdown17.Value,
		Farm_Start_Farm_1 = Toggle19.Value,
		Farm_opt_1 = Toggle2.Value,
		Farm_opt_2 = Dropdown2.Value,
		Farm_opt_3 = Slider2.Value,
		Farm_opt_4 = Input2.Value,
		Fruit_opt_1 = Toggle9.Value,
		Fruit_opt_2 = Dropdown9.Value,
		Fruit_opt_3 = Slider9.Value,
		Fruit_opt_4 = Input9.Value,
		Hop_opt_1 = Toggle5.Value,
		Hop_opt_2 = Dropdown5.Value,
		Hop_opt_3 = Slider5.Value,
		Hop_opt_4 = Input5.Value,
		Local_PLayer_Anti_AFK_1 = Toggle66.Value,
		Local_PLayer_Auto_Blox_Fruit_1 = Toggle73.Value,
		Local_PLayer_Auto_Defense_1 = Toggle74.Value,
		Local_PLayer_Auto_Gun_1 = Toggle72.Value,
		Local_PLayer_Auto_Melee_1 = Toggle70.Value,
		Local_PLayer_Auto_Swords_1 = Toggle71.Value,
		Local_PLayer_Auto_Turn_on_Buso_1 = Toggle61.Value,
		Local_PLayer_Auto_Turn_on_Race_V3_1 = Toggle62.Value,
		Local_PLayer_Auto_Turn_on_Race_V4_1 = Toggle63.Value,
		Local_PLayer_Bring_Mobs_1 = Toggle60.Value,
		Local_PLayer_Disable_Notify_1 = Toggle69.Value,
		Local_PLayer_Farm_Distance_1 = Slider17.Value,
		Local_PLayer_Remove_Death___Respawned_VFX_1 = Toggle68.Value,
		Local_PLayer_Remove_Hit_VFX_1 = Toggle67.Value,
		Local_PLayer_Selected_Tool_1 = Dropdown20.Value,
		Local_PLayer_Stats_Value_1 = Slider18.Value,
		Local_PLayer_Tele_Y_When_Low_Health_1 = Toggle65.Value,
		Local_PLayer_Turn_on_Bypass_Teleport_1 = Toggle64.Value,
		Local_PLayer__Attack_Mob__1 = Toggle59.Value,
		Local_PLayer_opt_1 = Toggle10.Value,
		Local_PLayer_opt_2 = Dropdown10.Value,
		Local_PLayer_opt_3 = Slider10.Value,
		Local_PLayer_opt_4 = Input10.Value,
		Other_Open_Portal_1 = Toggle106.Value,
		Other_Select_Time_1 = Dropdown31.Value,
		Other_Turn_on_Full_Bright_1 = Toggle107.Value,
		Other_Turn_on_Ice_Walk_1 = Toggle110.Value,
		Other_Turn_on_Time_1 = Toggle108.Value,
		Other_Turn_on_Walk_on_Water_1 = Toggle109.Value,
		Other_opt_1 = Toggle16.Value,
		Other_opt_2 = Dropdown16.Value,
		Other_opt_3 = Slider16.Value,
		Other_opt_4 = Input16.Value,
		Player_Status_opt_1 = Toggle8.Value,
		Player_Status_opt_2 = Dropdown8.Value,
		Player_Status_opt_3 = Slider8.Value,
		Player_Status_opt_4 = Input8.Value,
		RaceV4_Mirage_Auto_Complete_Trial_Race_1 = Toggle104.Value,
		RaceV4_Mirage_Auto_Kill_Player_After_Trial_1 = Toggle105.Value,
		RaceV4_Mirage_Auto_Pull_Lever_1 = Toggle101.Value,
		RaceV4_Mirage_Auto_Teleport_to_Race_Doors_1 = Toggle103.Value,
		RaceV4_Mirage_Auto_Train_V4_1 = Toggle102.Value,
		RaceV4_Mirage_opt_1 = Toggle13.Value,
		RaceV4_Mirage_opt_2 = Dropdown13.Value,
		RaceV4_Mirage_opt_3 = Slider13.Value,
		RaceV4_Mirage_opt_4 = Input13.Value,
		Sea_Events_Attack_Leviathan_1 = Toggle96.Value,
		Sea_Events_Auto_Collect_Azure_Member_1 = Toggle99.Value,
		Sea_Events_Auto_Find_Kitsune_Island_1 = Toggle98.Value,
		Sea_Events_Auto_Find_Leviathan_1 = Toggle95.Value,
		Sea_Events_Auto_Ghost_Ship_1 = Toggle92.Value,
		Sea_Events_Auto_Piranha_1 = Toggle94.Value,
		Sea_Events_Auto_Pirates_Ship_1 = Toggle91.Value,
		Sea_Events_Auto_Sail_Boat_To_Tiki_1 = Toggle97.Value,
		Sea_Events_Auto_Sea_Beast_1 = Toggle93.Value,
		Sea_Events_Auto_Shark_and_Fish_Crew_Member_1 = Toggle89.Value,
		Sea_Events_Auto_Terror_Shark_1 = Toggle90.Value,
		Sea_Events_Auto_Trade_Azure_Member_1 = Toggle100.Value,
		Sea_Events_Boat_Speed_1 = Slider20.Value,
		Sea_Events_Enable_Speed_Boats_1 = Toggle87.Value,
		Sea_Events_Select_Boats_1 = Dropdown29.Value,
		Sea_Events_Select_Zone_1 = Dropdown30.Value,
		Sea_Events_Start_Auto_Sea_Events_1 = Toggle88.Value,
		Sea_Events_opt_1 = Toggle14.Value,
		Sea_Events_opt_2 = Dropdown14.Value,
		Sea_Events_opt_3 = Slider14.Value,
		Sea_Events_opt_4 = Input14.Value,
		Selected_Skill_Blox_Fruit_Skills_1 = Dropdown28.Value,
		Selected_Skill_Gun_Skills_1 = Dropdown27.Value,
		Selected_Skill_Melee_Skills_1 = Dropdown25.Value,
		Selected_Skill_Sword_Skills_1 = Dropdown26.Value,
		Selected_Skill_Use_Blox_Fruit_1 = Toggle86.Value,
		Selected_Skill_Use_Gun_1 = Toggle85.Value,
		Selected_Skill_Use_Melee_1 = Toggle83.Value,
		Selected_Skill_Use_Sword_1 = Toggle84.Value,
		Selected_Skill_opt_1 = Toggle82.Value,
		Selected_Skill_opt_2 = Dropdown24.Value,
		Selected_Skill_opt_3 = Slider19.Value,
		Selected_Skill_opt_4 = Input18.Value,
		Settings_Save_opt_1 = Toggle111.Value,
		Settings_Save_opt_2 = Dropdown32.Value,
		Settings_Save_opt_3 = Slider21.Value,
		Settings_Save_opt_4 = Input19.Value,
		Shop_opt_1 = Toggle15.Value,
		Shop_opt_2 = Dropdown15.Value,
		Shop_opt_3 = Slider15.Value,
		Shop_opt_4 = Input15.Value,
		Stack_Auto_Farm_Auto_Elite_Hunter_1 = Toggle31.Value,
		Stack_Auto_Farm_Auto_Elite_Hunter__HOP__1 = Toggle32.Value,
		Stack_Auto_Farm_Auto_Factory_Raid_1 = Toggle27.Value,
		Stack_Auto_Farm_Auto_Farm_Mirror_1 = Toggle29.Value,
		Stack_Auto_Farm_Auto_Pirate_Raid_1 = Toggle28.Value,
		Stack_Auto_Farm_Auto_Soul_Reaper_1 = Toggle30.Value,
		Stack_Auto_Farm_Get_Race_Ghoul_1 = Toggle36.Value,
		Stack_Auto_Farm_Get_Race_Ghoul__HOP__1 = Toggle37.Value,
		Stack_Auto_Farm_Get_Tushita_1 = Toggle35.Value,
		Stack_Auto_Farm_Get_Yama_1 = Toggle34.Value,
		Stack_Auto_Farm_Stop_when_got_God_s_Chalice_1 = Toggle33.Value,
		Stack_Auto_Farm_opt_1 = Toggle3.Value,
		Stack_Auto_Farm_opt_2 = Dropdown3.Value,
		Stack_Auto_Farm_opt_3 = Slider3.Value,
		Stack_Auto_Farm_opt_4 = Input3.Value,
		Status_JobID_1 = Input17.Value,
		Status_opt_1 = Toggle7.Value,
		Status_opt_2 = Dropdown7.Value,
		Status_opt_3 = Slider7.Value,
		Status_opt_4 = Input7.Value,
		Sub_Farming_Auto_Complete_Quest_Bartilo_1 = Toggle40.Value,
		Sub_Farming_Auto_Complete_Quest_Citizen_1 = Toggle41.Value,
		Sub_Farming_Auto_Farm_Observation_1 = Toggle49.Value,
		Sub_Farming_Auto_Pray_Gravestone_1 = Toggle45.Value,
		Sub_Farming_Auto_Random_Bones_1 = Toggle43.Value,
		Sub_Farming_Auto_Training_Dummy_1 = Toggle42.Value,
		Sub_Farming_Auto_Travel_Dressrosa_1 = Toggle38.Value,
		Sub_Farming_Auto_Try_Luck_Gravestone_1 = Toggle44.Value,
		Sub_Farming_Auto_Upgrade_Observation_V2_1 = Toggle50.Value,
		Sub_Farming_Auto_Zou_Quest_1 = Toggle39.Value,
		Sub_Farming_Get_Haki_Rainbow_Colors_1 = Toggle47.Value,
		Sub_Farming_Get_Quest_Rainbow_1 = Toggle48.Value,
		Sub_Farming_Tween_to_Barista_Cousin_1 = Toggle46.Value,
		Sub_Farming_opt_1 = Toggle4.Value,
		Sub_Farming_opt_2 = Dropdown4.Value,
		Sub_Farming_opt_3 = Slider4.Value,
		Sub_Farming_opt_4 = Input4.Value,
		Travel_Auto_Travel_1 = Toggle75.Value,
		Travel_Select_NPCs_1 = Dropdown23.Value,
		Travel_Select_Portal_1 = Dropdown22.Value,
		Travel_Select_Travelling_1 = Dropdown21.Value,
		Travel__Tween_to_NPCs_1 = Toggle76.Value,
		Travel_opt_1 = Toggle11.Value,
		Travel_opt_2 = Dropdown11.Value,
		Travel_opt_3 = Slider11.Value,
		Travel_opt_4 = Input11.Value,
		Volcanic_Auto_Craft_Volcanic_Magnet_1 = Toggle53.Value,
		Volcanic_Auto_Dojo_Trainer_1 = Toggle51.Value,
		Volcanic_Auto_Dragon_Hunter_1 = Toggle52.Value,
		Volcanic_Auto_Find_Vocanic_Island_1 = Toggle54.Value,
		Volcanic_Auto_Patch_Vocanic_Event_1 = Toggle55.Value,
		Volcanic_Collect_Dino_Bone_1 = Toggle56.Value,
		Volcanic_Collect_Dragon_Egg_1 = Toggle57.Value,
		Volcanic_Reset_When_Complete_Volcanic_1 = Toggle58.Value,
		Volcanic_opt_1 = Toggle6.Value,
		Volcanic_opt_2 = Dropdown6.Value,
		Volcanic_opt_3 = Slider6.Value,
		Volcanic_opt_4 = Input6.Value,
		[result5 .. "_opt" .. "_1"] = Input.Value,
		[result2 .. "_opt" .. "_1"] = Toggle.Value,
		[result4 .. "_opt" .. "_1"] = Slider.Value,
		[result3 .. "_opt" .. "_1"] = Dropdown.Value
	})
			writefile("TeddyHub_Data" .. "/" .. game.Players.LocalPlayer.Name .. "MainBF.json", json3)
		else
			local json4 = HttpService:JSONEncode({
		Esp_Esp_Berries_1 = Toggle77.Value,
		Esp_Esp_Chests_1 = Toggle79.Value,
		Esp_Esp_Fruits_1 = Toggle80.Value,
		Esp_Esp_Island_Location_1 = Toggle81.Value,
		Esp_Esp_Players_1 = Toggle78.Value,
		Esp_opt_1 = Toggle12.Value,
		Esp_opt_2 = Dropdown12.Value,
		Esp_opt_3 = Slider12.Value,
		Esp_opt_4 = Input12.Value,
		Farm_Auto_Farm_Hidden_event_quest_1 = Toggle20.Value,
		Farm_Auto_Farm_Magnet_Token_1 = Toggle21.Value,
		Farm_Auto_Mastery_All_Sword_1 = Toggle26.Value,
		Farm_Auto_Mastery_Fruits_1 = Toggle24.Value,
		Farm_Auto_Mastery_Gun_1 = Toggle25.Value,
		Farm_Auto_Materials_1 = Toggle23.Value,
		Farm_Auto_Random_Magnet_Token_1 = Toggle22.Value,
		Farm_Get_Quest_Farm__Bone_Or_Katakuri__1 = Toggle17.Value,
		Farm_Ignore_Katakuri_1 = Toggle18.Value,
		Farm_Selected_Island_1 = Dropdown19.Value,
		Farm_Selected_Material_1 = Dropdown18.Value,
		Farm_Selected_Method_1 = Dropdown17.Value,
		Farm_Start_Farm_1 = Toggle19.Value,
		Farm_opt_1 = Toggle2.Value,
		Farm_opt_2 = Dropdown2.Value,
		Farm_opt_3 = Slider2.Value,
		Farm_opt_4 = Input2.Value,
		Fruit_opt_1 = Toggle9.Value,
		Fruit_opt_2 = Dropdown9.Value,
		Fruit_opt_3 = Slider9.Value,
		Fruit_opt_4 = Input9.Value,
		Hop_opt_1 = Toggle5.Value,
		Hop_opt_2 = Dropdown5.Value,
		Hop_opt_3 = Slider5.Value,
		Hop_opt_4 = Input5.Value,
		Local_PLayer_Anti_AFK_1 = Toggle66.Value,
		Local_PLayer_Auto_Blox_Fruit_1 = Toggle73.Value,
		Local_PLayer_Auto_Defense_1 = Toggle74.Value,
		Local_PLayer_Auto_Gun_1 = Toggle72.Value,
		Local_PLayer_Auto_Melee_1 = Toggle70.Value,
		Local_PLayer_Auto_Swords_1 = Toggle71.Value,
		Local_PLayer_Auto_Turn_on_Buso_1 = Toggle61.Value,
		Local_PLayer_Auto_Turn_on_Race_V3_1 = Toggle62.Value,
		Local_PLayer_Auto_Turn_on_Race_V4_1 = Toggle63.Value,
		Local_PLayer_Bring_Mobs_1 = Toggle60.Value,
		Local_PLayer_Disable_Notify_1 = Toggle69.Value,
		Local_PLayer_Farm_Distance_1 = Slider17.Value,
		Local_PLayer_Remove_Death___Respawned_VFX_1 = Toggle68.Value,
		Local_PLayer_Remove_Hit_VFX_1 = Toggle67.Value,
		Local_PLayer_Selected_Tool_1 = Dropdown20.Value,
		Local_PLayer_Stats_Value_1 = Slider18.Value,
		Local_PLayer_Tele_Y_When_Low_Health_1 = Toggle65.Value,
		Local_PLayer_Turn_on_Bypass_Teleport_1 = Toggle64.Value,
		Local_PLayer__Attack_Mob__1 = Toggle59.Value,
		Local_PLayer_opt_1 = Toggle10.Value,
		Local_PLayer_opt_2 = Dropdown10.Value,
		Local_PLayer_opt_3 = Slider10.Value,
		Local_PLayer_opt_4 = Input10.Value,
		Other_Open_Portal_1 = Toggle106.Value,
		Other_Select_Time_1 = Dropdown31.Value,
		Other_Turn_on_Full_Bright_1 = Toggle107.Value,
		Other_Turn_on_Ice_Walk_1 = Toggle110.Value,
		Other_Turn_on_Time_1 = Toggle108.Value,
		Other_Turn_on_Walk_on_Water_1 = Toggle109.Value,
		Other_opt_1 = Toggle16.Value,
		Other_opt_2 = Dropdown16.Value,
		Other_opt_3 = Slider16.Value,
		Other_opt_4 = Input16.Value,
		Player_Status_opt_1 = Toggle8.Value,
		Player_Status_opt_2 = Dropdown8.Value,
		Player_Status_opt_3 = Slider8.Value,
		Player_Status_opt_4 = Input8.Value,
		RaceV4_Mirage_Auto_Complete_Trial_Race_1 = Toggle104.Value,
		RaceV4_Mirage_Auto_Kill_Player_After_Trial_1 = Toggle105.Value,
		RaceV4_Mirage_Auto_Pull_Lever_1 = Toggle101.Value,
		RaceV4_Mirage_Auto_Teleport_to_Race_Doors_1 = Toggle103.Value,
		RaceV4_Mirage_Auto_Train_V4_1 = Toggle102.Value,
		RaceV4_Mirage_opt_1 = Toggle13.Value,
		RaceV4_Mirage_opt_2 = Dropdown13.Value,
		RaceV4_Mirage_opt_3 = Slider13.Value,
		RaceV4_Mirage_opt_4 = Input13.Value,
		Sea_Events_Attack_Leviathan_1 = Toggle96.Value,
		Sea_Events_Auto_Collect_Azure_Member_1 = Toggle99.Value,
		Sea_Events_Auto_Find_Kitsune_Island_1 = Toggle98.Value,
		Sea_Events_Auto_Find_Leviathan_1 = Toggle95.Value,
		Sea_Events_Auto_Ghost_Ship_1 = Toggle92.Value,
		Sea_Events_Auto_Piranha_1 = Toggle94.Value,
		Sea_Events_Auto_Pirates_Ship_1 = Toggle91.Value,
		Sea_Events_Auto_Sail_Boat_To_Tiki_1 = Toggle97.Value,
		Sea_Events_Auto_Sea_Beast_1 = Toggle93.Value,
		Sea_Events_Auto_Shark_and_Fish_Crew_Member_1 = Toggle89.Value,
		Sea_Events_Auto_Terror_Shark_1 = Toggle90.Value,
		Sea_Events_Auto_Trade_Azure_Member_1 = Toggle100.Value,
		Sea_Events_Boat_Speed_1 = Slider20.Value,
		Sea_Events_Enable_Speed_Boats_1 = Toggle87.Value,
		Sea_Events_Select_Boats_1 = Dropdown29.Value,
		Sea_Events_Select_Zone_1 = Dropdown30.Value,
		Sea_Events_Start_Auto_Sea_Events_1 = Toggle88.Value,
		Sea_Events_opt_1 = Toggle14.Value,
		Sea_Events_opt_2 = Dropdown14.Value,
		Sea_Events_opt_3 = Slider14.Value,
		Sea_Events_opt_4 = Input14.Value,
		Selected_Skill_Blox_Fruit_Skills_1 = Dropdown28.Value,
		Selected_Skill_Gun_Skills_1 = Dropdown27.Value,
		Selected_Skill_Melee_Skills_1 = Dropdown25.Value,
		Selected_Skill_Sword_Skills_1 = Dropdown26.Value,
		Selected_Skill_Use_Blox_Fruit_1 = Toggle86.Value,
		Selected_Skill_Use_Gun_1 = Toggle85.Value,
		Selected_Skill_Use_Melee_1 = Toggle83.Value,
		Selected_Skill_Use_Sword_1 = Toggle84.Value,
		Selected_Skill_opt_1 = Toggle82.Value,
		Selected_Skill_opt_2 = Dropdown24.Value,
		Selected_Skill_opt_3 = Slider19.Value,
		Selected_Skill_opt_4 = Input18.Value,
		Settings_Save_opt_1 = Toggle111.Value,
		Settings_Save_opt_2 = Dropdown32.Value,
		Settings_Save_opt_3 = Slider21.Value,
		Settings_Save_opt_4 = Input19.Value,
		Shop_opt_1 = Toggle15.Value,
		Shop_opt_2 = Dropdown15.Value,
		Shop_opt_3 = Slider15.Value,
		Shop_opt_4 = Input15.Value,
		Stack_Auto_Farm_Auto_Elite_Hunter_1 = Toggle31.Value,
		Stack_Auto_Farm_Auto_Elite_Hunter__HOP__1 = Toggle32.Value,
		Stack_Auto_Farm_Auto_Factory_Raid_1 = Toggle27.Value,
		Stack_Auto_Farm_Auto_Farm_Mirror_1 = Toggle29.Value,
		Stack_Auto_Farm_Auto_Pirate_Raid_1 = Toggle28.Value,
		Stack_Auto_Farm_Auto_Soul_Reaper_1 = Toggle30.Value,
		Stack_Auto_Farm_Get_Race_Ghoul_1 = Toggle36.Value,
		Stack_Auto_Farm_Get_Race_Ghoul__HOP__1 = Toggle37.Value,
		Stack_Auto_Farm_Get_Tushita_1 = Toggle35.Value,
		Stack_Auto_Farm_Get_Yama_1 = Toggle34.Value,
		Stack_Auto_Farm_Stop_when_got_God_s_Chalice_1 = Toggle33.Value,
		Stack_Auto_Farm_opt_1 = Toggle3.Value,
		Stack_Auto_Farm_opt_2 = Dropdown3.Value,
		Stack_Auto_Farm_opt_3 = Slider3.Value,
		Stack_Auto_Farm_opt_4 = Input3.Value,
		Status_JobID_1 = Input17.Value,
		Status_opt_1 = Toggle7.Value,
		Status_opt_2 = Dropdown7.Value,
		Status_opt_3 = Slider7.Value,
		Status_opt_4 = Input7.Value,
		Sub_Farming_Auto_Complete_Quest_Bartilo_1 = Toggle40.Value,
		Sub_Farming_Auto_Complete_Quest_Citizen_1 = Toggle41.Value,
		Sub_Farming_Auto_Farm_Observation_1 = Toggle49.Value,
		Sub_Farming_Auto_Pray_Gravestone_1 = Toggle45.Value,
		Sub_Farming_Auto_Random_Bones_1 = Toggle43.Value,
		Sub_Farming_Auto_Training_Dummy_1 = Toggle42.Value,
		Sub_Farming_Auto_Travel_Dressrosa_1 = Toggle38.Value,
		Sub_Farming_Auto_Try_Luck_Gravestone_1 = Toggle44.Value,
		Sub_Farming_Auto_Upgrade_Observation_V2_1 = Toggle50.Value,
		Sub_Farming_Auto_Zou_Quest_1 = Toggle39.Value,
		Sub_Farming_Get_Haki_Rainbow_Colors_1 = Toggle47.Value,
		Sub_Farming_Get_Quest_Rainbow_1 = Toggle48.Value,
		Sub_Farming_Tween_to_Barista_Cousin_1 = Toggle46.Value,
		Sub_Farming_opt_1 = Toggle4.Value,
		Sub_Farming_opt_2 = Dropdown4.Value,
		Sub_Farming_opt_3 = Slider4.Value,
		Sub_Farming_opt_4 = Input4.Value,
		Travel_Auto_Travel_1 = Toggle75.Value,
		Travel_Select_NPCs_1 = Dropdown23.Value,
		Travel_Select_Portal_1 = Dropdown22.Value,
		Travel_Select_Travelling_1 = Dropdown21.Value,
		Travel__Tween_to_NPCs_1 = Toggle76.Value,
		Travel_opt_1 = Toggle11.Value,
		Travel_opt_2 = Dropdown11.Value,
		Travel_opt_3 = Slider11.Value,
		Travel_opt_4 = Input11.Value,
		Volcanic_Auto_Craft_Volcanic_Magnet_1 = Toggle53.Value,
		Volcanic_Auto_Dojo_Trainer_1 = Toggle51.Value,
		Volcanic_Auto_Dragon_Hunter_1 = Toggle52.Value,
		Volcanic_Auto_Find_Vocanic_Island_1 = Toggle54.Value,
		Volcanic_Auto_Patch_Vocanic_Event_1 = Toggle55.Value,
		Volcanic_Collect_Dino_Bone_1 = Toggle56.Value,
		Volcanic_Collect_Dragon_Egg_1 = Toggle57.Value,
		Volcanic_Reset_When_Complete_Volcanic_1 = Toggle58.Value,
		Volcanic_opt_1 = Toggle6.Value,
		Volcanic_opt_2 = Dropdown6.Value,
		Volcanic_opt_3 = Slider6.Value,
		Volcanic_opt_4 = Input6.Value,
		[result5 .. "_opt" .. "_1"] = Input.Value,
		[result2 .. "_opt" .. "_1"] = Toggle.Value,
		[result4 .. "_opt" .. "_1"] = Slider.Value,
		[result3 .. "_opt" .. "_1"] = Dropdown.Value
	})
			writefile("TeddyHub_Data" .. "/" .. game.Players.LocalPlayer.Name .. "MainBF.json", json4)
		end
		result:Notify({ Title = "Teddy Hub", Content = "Config saved!", Duration = 5 })
	end
})
 1:1,25:23379,416:45052
Tab18:AddButton({
	Title = "Reset Config File",
	Callback = function(state, arg470)
		result:Notify({
	Title = "Teddy Hub",
	Content = "Config file cleared. Reload the script to reset to defaults.",
	Duration = 6
})
	end
})
 1:1,25:23379
local CoreGui = game:GetService("CoreGui")
 1:1,25:23379
CoreGui.DescendantRemoving:Connect(function(descendant)
end)
 1:1,25:23379
task.spawn(function(...)
	 420:45176,421:45183
	local response5 = game:HttpGet("https://pastefy.app/4h8Lh7Uk/raw")
	 420:45176,421:45183
	loadstring(response5)()
end)
