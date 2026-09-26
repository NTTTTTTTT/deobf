 
task.spawn(function(...)
end)
 
task.spawn(function(...)
end)
 
task.delay(62, function(...)
	 
end)
 
local ScreenGui = Instance.new("ScreenGui")
 
local Frame = Instance.new("Frame")
 
Frame.Position = UDim2.new(0, 0, 0, 0)
 
Frame.Size = UDim2.new(0, 233, 0, 114)
 
Frame.Parent = ScreenGui
 
local Path2D = Instance.new("Path2D")
 
Path2D.Parent = Frame
 
Path2D:SetControlPoints({ Path2DControlPoint.new(UDim2.new(0.5, -3, 0.5, -7), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0.25, 4, 0, 9), UDim2.new(0, -7, 0, 7), UDim2.new(0, 0, 0, 0)), Path2DControlPoint.new(UDim2.new(0, 5, 0.3125, -3), UDim2.new(0, -6, 0, 1), UDim2.new(-0.125, 0, 0, 5)), Path2DControlPoint.new(UDim2.new(0, -3, 0.25, 4), UDim2.new(0, -3, 0.0625, 6), UDim2.new(0, -5, 0.0625, 7)) })
 
Path2D:GetLength()
 
Path2D:GetPositionOnCurve(0.4444444477558136)
 
Path2D:GetPositionOnCurve(0.46153846383094788)
 
Path2D:GetTangentOnCurve(0.3571428656578064)
 
Path2D:GetTangentOnCurve(0.13333334028720856)
 
Path2D:GetPositionOnCurveArcLength(0.875)
 
Path2D:GetPositionOnCurveArcLength(0.4285714328289032)
 
Path2D:GetTangentOnCurveArcLength(0.3333333432674408)
 
Path2D:GetTangentOnCurveArcLength(0.125)
 
ScreenGui:Destroy()
 
local connection = game.DescendantRemoving:Connect(function(descendant)
end)
 
connection:Disconnect()
 
local connection2 = workspace.DescendantRemoving:Connect(function(descendant2)
end)
 
connection2:Disconnect()
 
local Folder = Instance.new("Folder")
 
local connection3 = Folder.DescendantRemoving:Connect(function(descendant3)
end)
 
connection3:Disconnect()
 
Folder:GetChildren()
 
Folder:Destroy()
 
local Folder2 = Instance.new("Folder", Folder)
 
local connection4 = Folder2.DescendantRemoving:Connect(function(descendant4)
end)
 
connection4:Disconnect()
 
Folder2.Name = "274388123"
 
Folder:WaitForChild("274388123")
 
Folder:Destroy()
 
Folder2:Destroy()
 
local HttpService = game:GetService("HttpService")
 
local connection5 = HttpService.DescendantRemoving:Connect(function(descendant5)
end)
 
connection5:Disconnect()
 
local RunService = game:GetService("RunService")
 
local connection6 = RunService.DescendantRemoving:Connect(function(descendant6)
end)
 
connection6:Disconnect()
 
local Players = game:GetService("Players")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local FishingSystem = ReplicatedStorage:WaitForChild("FishingSystem")
 
local FishingSystemEvents = FishingSystem:WaitForChild("FishingSystemEvents")
 
local ShowExclam = FishingSystemEvents:FindFirstChild("ShowExclam")
 
local HideExclam = FishingSystemEvents:FindFirstChild("HideExclam")
 
ShowExclam.OnServerEvent:Connect(function(arg)
	 
	local Head = arg.Character:FindFirstChild("Head")
	 
	local ExclamBillboard = Head:FindFirstChild("ExclamBillboard")
	 
	ExclamBillboard:Destroy()
	 
	local BillboardGui = Instance.new("BillboardGui")
	 
	BillboardGui.Name = "ExclamBillboard"
	 
	BillboardGui.Size = UDim2.new(0, 40, 0, 60)
	 
	BillboardGui.StudsOffset = Vector3.new(0, 4.5, 0)
	 
	BillboardGui.AlwaysOnTop = false
	 
	BillboardGui.Adornee = Head
	 
	BillboardGui.Parent = Head
	 
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	 
	TextLabel.Name = "ExclamLabel"
	 
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	 
	TextLabel.BackgroundTransparency = 1
	 
	TextLabel.Text = "!"
	 
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	 
	TextLabel.TextScaled = true
	 
	TextLabel.Font = Enum.Font.GothamBlack
	 
	TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	 
	TextLabel.TextStrokeTransparency = 0.2
end)
 
HideExclam.OnServerEvent:Connect(function(arg2)
	 
	local Head2 = arg2.Character:FindFirstChild("Head")
	 
	local ExclamBillboard2 = Head2:FindFirstChild("ExclamBillboard")
	 
	ExclamBillboard2:Destroy()
end)
 
print("[ExclamServer] ✅ Ready")
