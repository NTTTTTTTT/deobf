 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(466, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 148, 0, 124)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0.25, 0, 0, 1), UDim2.new(0, 7, 0, -1), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0, 8, 0.25, 7), UDim2.new(0, 2, 0.0625, 7), UDim2.new(0, 3, 0, 4)), Path2DControlPoint.new(UDim2.new(0.5, -6, 0.5, 6), UDim2.new(0, 0, 0, 0), UDim2.new(0.125, 0, -0.0625, -1)), Path2DControlPoint.new(UDim2.new(0, -9, 0.5, -5), UDim2.new(0, 1, 0.0625, -5), UDim2.new(0, 1, 0, 5)), Path2DControlPoint.new(UDim2.new(0.25, 8, 0.25, -1), UDim2.new(0.125, 1, 0, 6), UDim2.new(0, -8, 0, -2)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.92857140302658081)
 
Path2D:GetPositionOnCurve(0.76923078298568726)
 
Path2D:GetTangentOnCurve(0.75)
 
Path2D:GetTangentOnCurve(0.5625)
 
Path2D:GetTangentOnCurve(0.30769231915473938)
 
Path2D:GetPositionOnCurveArcLength(0.3333333432674408)
 
Path2D:GetPositionOnCurveArcLength(0.90909093618392944)
 
Path2D:GetPositionOnCurveArcLength(0.75)
 
Path2D:GetTangentOnCurveArcLength(0.20000000298023224)
 
Path2D:GetTangentOnCurveArcLength(0.81818181276321411)
 
Path2D:GetTangentOnCurveArcLength(0.25)
 
ScreenGui:Destroy()
 
local connection = game.AttributeChanged:Connect(function(attribute)
end)
 
connection:Disconnect()
 
local connection2 = workspace.AttributeChanged:Connect(function(attribute2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.AttributeChanged:Connect(function(attribute3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.AttributeChanged:Connect(function(attribute4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "1986351865"
 
Folder:WaitForChild("1986351865")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.AttributeChanged:Connect(function(attribute5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.AttributeChanged:Connect(function(attribute6)
end)
 
connection6:Disconnect()
 
print("[CutsceneVFXClient] Script dimulai...")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local Debris = game:GetService("Debris")
 
local FishingSystem = ReplicatedStorage:WaitForChild("FishingSystem", 30)
 
local FishingSystemEvents = FishingSystem:WaitForChild("FishingSystemEvents", 30)
 
local Assets = FishingSystem:WaitForChild("Assets")
 
Assets:WaitForChild("Cutscenes")
 
local CutsceneVFXForOthers = FishingSystemEvents:WaitForChild("CutsceneVFXForOthers", 60)
 
workspace:FindFirstChild("VFX")
 
CutsceneVFXForOthers.OnClientEvent:Connect(function(arg)
	 
	print("[CutsceneVFXClient] Terima event:", arg, "nil")
end)
 
print("[CutsceneVFXClient] ✅ Ready")
