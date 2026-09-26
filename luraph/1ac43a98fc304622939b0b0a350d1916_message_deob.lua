 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(432, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 233, 0, 238)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0.5, -1, 0.125, -5), UDim2.new(0, 2, 0, 4), UDim2.new(0, -2, 0, 4)), Path2DControlPoint.new(UDim2.new(0, 2, 0.5, -7), UDim2.new(0, 0, -0.125, -1), UDim2.new(0.0625, -8, 0, -1)), Path2DControlPoint.new(UDim2.new(0.5, -4, 0, -7), UDim2.new(0, -3, 0, -5), UDim2.new(-0.0625, 1, 0, -1)), Path2DControlPoint.new(UDim2.new(0, 0, 0, 1), UDim2.new(0, 0, 0, 0), UDim2.new(-0.125, 7, 0, -3)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.25)
 
Path2D:GetPositionOnCurve(0.5)
 
Path2D:GetPositionOnCurve(0.80000001192092896)
 
Path2D:GetPositionOnCurve(0.72727274894714355)
 
Path2D:GetTangentOnCurve(0.4285714328289032)
 
Path2D:GetTangentOnCurve(0.66666668653488159)
 
Path2D:GetTangentOnCurve(0.5)
 
Path2D:GetPositionOnCurveArcLength(0.23076923191547394)
 
Path2D:GetPositionOnCurveArcLength(0.57142859697341919)
 
Path2D:GetPositionOnCurveArcLength(0.69999998807907104)
 
Path2D:GetTangentOnCurveArcLength(0.8888888955116272)
 
Path2D:GetTangentOnCurveArcLength(0.30769231915473938)
 
ScreenGui:Destroy()
 
local connection = game.DescendantAdded:Connect(function(descendant)
end)
 
connection:Disconnect()
 
local connection2 = workspace.DescendantAdded:Connect(function(descendant2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.DescendantAdded:Connect(function(descendant3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.DescendantAdded:Connect(function(descendant4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "2143903909"
 
Folder:WaitForChild("2143903909")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.DescendantAdded:Connect(function(descendant5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.DescendantAdded:Connect(function(descendant6)
end)
 
connection6:Disconnect()
 
local Players = game:GetService("Players")
 
local DataStoreService = game:GetService("DataStoreService")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local dataStore = DataStoreService:GetDataStore("NexumSettings_v1")
 
local FishingSystem = ReplicatedStorage:WaitForChild("FishingSystem")
 
local FishingSystemEvents = FishingSystem:WaitForChild("FishingSystemEvents")
 
local GetSettingsData = FishingSystemEvents:FindFirstChild("GetSettingsData")
 
local SavePlayingTime = FishingSystemEvents:FindFirstChild("SavePlayingTime")
 
local SettingsDailyFish = FishingSystemEvents:FindFirstChild("SettingsDailyFish")
 
GetSettingsData.OnServerInvoke = function(arg, arg2)
	 
	dataStore:GetAsync("player_" .. tostring(arg.UserId))
end
 
SavePlayingTime.OnServerInvoke = function(arg3, arg4)
end
 
task.spawn(function(...)
	 
	local FishGiver = FishingSystemEvents:WaitForChild("FishGiver", 15)
	 
	FishGiver.OnServerEvent:Connect(function(arg5)
		 
		dataStore:GetAsync("player_" .. tostring(arg5.UserId))
		 
		SettingsDailyFish:FireClient(arg5, 1)
	end)
end)
 
Players.PlayerAdded:Connect(function(player)
	 
	task.spawn(function(...)
		 
		dataStore:GetAsync("player_" .. tostring(v.UserId))
	end, player)
end)
 
Players.PlayerRemoving:Connect(function(player2)
end)
 
local players = Players:GetPlayers()
 
for i, v in ipairs(players) do
	 
	task.spawn(function(...)
		 
		dataStore:GetAsync("player_" .. tostring(v.UserId))
	end, v)
end
 
task.spawn(function(...)
	 
	task.wait(60)
	 
	local players2 = Players:GetPlayers()
	 
	for i2, v2 in ipairs(players2) do
	end
	 
	task.wait(60)
	 
end)
 
print("✅ SettingsDataStoreServer loaded")
