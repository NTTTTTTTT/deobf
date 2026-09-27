local ReplicatedStorage, RunService, TweenService, UserInputService, localPlayer
local Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
TweenService = game:GetService("TweenService")
UserInputService = game:GetService("UserInputService")
localPlayer = Players.LocalPlayer
local tbl
local networking = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Networking")

tbl = {
	AskFieldEggSnapshot = networking:WaitForChild("RF/EggWorld/AskFieldEggSnapshot", 10),
	AskFieldEggCarry = networking:WaitForChild("RF/EggWorld/AskFieldEggCarry", 10),
	AskFieldEggDrop = networking:WaitForChild("RF/EggWorld/AskFieldEggDrop", 10),
	FieldEggCarry = networking:WaitForChild("RE/EggWorld/FieldEggCarry", 10),
}

for k, v in pairs(tbl) do
	if not v then
		warn("Remote não encontrado: " .. k)
	else
		local str = " [" .. v.ClassName .. "]"
		print(k .. " -> " .. v:GetFullName() .. str)
	end
end

local Assets

local function fn(arg)
	for _, descendant in ipairs(ReplicatedStorage:GetDescendants()) do
		if descendant:IsA("ModuleScript") and descendant.Name:lower() == arg:lower() then
			local ok, result = pcall(require, descendant)
			if ok then
				return result
			end
			warn("Falha ao carregar " .. descendant:GetFullName() .. ": " .. tostring(result))
		end
	end

	warn("ModuleScript não encontrado: " .. arg)
	return nil
end

Assets = fn("Assets")
local Mutations
Mutations = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Modules"):WaitForChild("Mutations"))
local EggState
EggState = require(ReplicatedStorage:WaitForChild("Client"):WaitForChild("EggState"))
local Remotes
Remotes = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"))
local RagdollJoints
RagdollJoints = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Modules"):WaitForChild("RagdollJoints"))
require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Util"):WaitForChild("AreaEggSlotIdentity"))
local fn2
local AreaEggCycle = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Util"):WaitForChild("AreaEggCycle"))
require(ReplicatedStorage:WaitForChild("Data"):WaitForChild("AreaEggResetCycle"))

fn2 = function()
	local ok, result = pcall(function()
		return AreaEggCycle.IsNightPhase(workspace:GetServerTimeNow())
	end)

	return ok and result ~= true
end

local AssetViewport
AssetViewport = require(ReplicatedStorage:WaitForChild("Client"):WaitForChild("AssetViewport"))
local fn3

do
	local Rarity = require(ReplicatedStorage:WaitForChild("Data"):WaitForChild("Rarity"))

	local function fn4(arg)
		local str = string.lower(tostring(arg or "")):gsub("%s+", "")
		local v = pairs
		local rarities = Rarity.Rarities or {}

		for k, rarity in v(rarities) do
			local str2 = string.lower(tostring(k)):gsub("%s+", "")
			local displayName = type(rarity) == "table" and rarity.DisplayName
			local flag = str2 == str
			local flag2

			if flag then
				flag2 = flag
			else
				flag2 = string.lower(tostring(displayName or "")):gsub("%s+", "") == str
			end

			if flag2 then
				return rarity
			end
		end

		return nil
	end

	fn3 = function(arg)
		local v = fn4(arg)
		local color = v and v.Color
		if typeof(color) == "Color3" then
			return color
		end

		if typeof(color) == "ColorSequence" then
			return color.Keypoints[1].Value
		end
		return Color3.fromRGB(170, 190, 178)
	end
end

local tbl2

tbl2 = {
	REFRESH_INTERVAL = 0.5,
	SPAM_INTERVAL = 0.05,
	PROTECT_INTERVAL = 0.05,
	SPAWN_OFFSET = 3,
	BEAM_WIDTH = 0.12,
	GROUND_OFFSET = 5,
	DROPDOWN_ROWS = 4,
	ROW_H = 30,
	ROW_GAP = 4,
	TWEEN_SPEED = 500,
	WAYPOINT = Vector3.new(510.092, 70.767, -364.085),
	USE_GROUND_DETECTION = true,
	GROUND_CLEARANCE = 4,
	RAYCAST_UP = 100,
	RAYCAST_DOWN = 300,
	JUMP_ANIMATION_ID = "rbxassetid://125750702",
	TP_DURATION = 1.2,
}

local tbl3

tbl3 = {
	enabled = false,
	running = true,
	bestEgg = nil,
	selectedEgg = nil,
	dropdownOpen = false,
	targetEgg = nil,
	eggs = {},
	lastRefresh = 0,
	rarityEggs = {},
	filteredEggs = {},
	rarityFilter = {},
	isMoving = false,
	isStealing = false,
	isProtecting = false,
	carrying = false,
	carryLocked = false,
	isDelivering = false,
	heldEggUid = nil,
	moveTarget = nil,
	onArrive = nil,
	lastSpamTime = 0,
	lastProtectTime = 0,
}

local tbl4
tbl4 = {}

do
	local tbl5 = { Key = "cosmic", Label = "Cosmic", Color = fn3("Cosmic") }
	local tbl6 = { Key = "secret", Label = "Secret", Color = fn3("Secret") }
	local tbl7 = { Key = "eternal", Label = "Eternal", Color = fn3("Eternal") }
	local tbl8 = { Key = "divine", Label = "Divine", Color = fn3("Divine") }
	tbl4[1] = tbl5
	tbl4[2] = tbl6
	tbl4[3] = tbl7
	tbl4[4] = tbl8
end

local fn4

do
	local function fn5(arg)
		return string.lower(tostring(arg or "")):gsub("%s+", "")
	end

	local function fn6()
		for _, v in ipairs(tbl4) do
			if tbl3.rarityFilter[v.Key] then
				return true
			end
		end

		return false
	end

	fn4 = function(arg)
		if not fn6() then
			return true
		end
		return tbl3.rarityFilter[fn5(arg.RarityName)] == true
	end
end

local v
v = nil
local humanoid
humanoid = nil
local humanoidRootPart
humanoidRootPart = nil
local v2, v3, currentCamera, areas, guardAreas, startArea, str, v4, v5, fn5
local fn6, fn7, fn8, fn9, fn10, fn11, fn12, v6, connection, walkSpeed
local fn13, fn14

do
	local v7 = nil
	local breakJointsOnDeath = nil
	local animate = nil
	local health = nil
	v2 = nil
	local v8 = nil
	local animation = nil
	local v9 = nil
	v3 = nil
	local connection2 = nil
	local connection3 = nil
	local connection4 = nil
	local flag = nil
	currentCamera = workspace.CurrentCamera
	areas = workspace:WaitForChild("__OBJECTS"):WaitForChild("Areas")
	guardAreas = areas:WaitForChild("GuardAreas")
	guardAreas:FindFirstChild("Forest")
	startArea = areas:WaitForChild("StartArea")
	ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Trails")
	str = nil
	v4 = nil
	local v10 = nil
	local flag2 = nil
	local v11 = nil
	local flag3 = nil
	v5 = nil
	local v12 = nil
	local v13 = nil
	local v14 = nil
	local v15 = nil
	local tbl5 = {}
	local tbl6 = {}

	local function fn15(arg, arg2)
		local instance = Instance.new(arg)

		for k, v16 in pairs(arg2) do
			instance[k] = v16
		end

		return instance
	end

	local function fn16(arg)
		for _, v16 in arg:GetDescendants() do
			if v16:IsA("Script") or v16:IsA("LocalScript") or v16:IsA("ModuleScript") then
				v16:Destroy()
			elseif v16:IsA("BasePart") then
				v16.Anchored = true
				v16.CanCollide = false
				v16.CanTouch = false
				v16.CanQuery = false
			end
		end
	end

	local function fn17(arg)
		if not arg then
			return
		end

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant.Name == "Detected" then
				pcall(function()
					descendant:Destroy()
				end)
			end
		end
	end

	task.spawn(function()
		pcall(function()
			for _, child in ipairs(guardAreas:GetChildren()) do
				fn17(child)
			end
		end)
	end)

	guardAreas.ChildAdded:Connect(function(child)
		task.defer(function()
			fn17(child)
		end)
	end)

	task.spawn(function()
		pcall(function()
			localPlayer:WaitForChild("PlayerScripts"):WaitForChild("Game"):WaitForChild("AreaEggs"):WaitForChild("CarryRunBackEffects"):WaitForChild("Sound"):Destroy()
		end)
	end)

	local areaEggSlotsClient = workspace:WaitForChild("AreaEggSlotsClient")
	local eggVisualClones = workspace:FindFirstChild("EggVisualClones")

	if eggVisualClones then
		eggVisualClones:Destroy()
	end

	local Folder = fn15("Folder", { Name = "EggVisualClones", Parent = workspace })

	local function fn18(child)
		if not child:IsA("Model") or Folder:FindFirstChild(child.Name) then
			return
		end
		child.Archivable = true
		local clone = child:Clone()
		clone.Name = child.Name
		clone.Parent = Folder
		clone:PivotTo(child:GetPivot())
		fn16(clone)
	end

	for _, v16 in areaEggSlotsClient:GetChildren() do
		fn18(v16)
	end

	areaEggSlotsClient.ChildAdded:Connect(fn18)

	fn5 = function(child)
		if not str or not child:IsA("Model") or child == Folder or child:IsDescendantOf(Folder) then
			return
		end

		if child.Name:find(str, 1, true) then
			child:Destroy()
		end
	end

	workspace.ChildAdded:Connect(fn5)
	local playerGui = localPlayer:WaitForChild("PlayerGui")
	local Main = nil

	pcall(function()
		Main = require(localPlayer:WaitForChild("PlayerScripts"):WaitForChild("GUI"):WaitForChild("BackpackController"):WaitForChild("Main"))
	end)

	local function fn19(arg)
		if arg and arg.Parent then
			arg:Destroy()
		end

		if Main then
			pcall(function()
				Main:SetBackpackEnabled(true)
			end)
		end

		for _, v16 in { "HUD", "BackpackGui", "OfflineMoneyInPlot" }, nil, nil do
			local v17 = playerGui:FindFirstChild(v16)

			if v17 and v17:IsA("ScreenGui") then
				v17.Enabled = true
			end
		end
	end

	local function fn20(child)
		if child.Name ~= "DropHeldEgg" then
			return
		end

		if child.Enabled then
			fn19(child)
			return
		end

		child:GetPropertyChangedSignal("Enabled"):Connect(function()
			if child.Parent and child.Enabled then
				fn19(child)
			end
		end)
	end

	for _, v16 in playerGui:GetChildren() do
		fn20(v16)
	end

	playerGui.ChildAdded:Connect(fn20)

	fn6 = function(arg)
		if not arg or not arg:IsA("Model") then
			return false
		end
		local name = arg.Name

		if name == "Guard" or name:sub(-13) == "GuardAuthored" or name:find("Guard", 1, true) then
			if name == "SleepingGuardClone" or name == "SleepingChickenClone" then
				return false
			end
			return true
		end

		return false
	end

	local function fn21(parent)
		if not parent then
			return
		end
		local tbl7 = {}

		local function fn22(arg)
			if not arg or not arg:IsA("Model") then
				return
			end
			arg.Archivable = true
			local sleepingGuardClone = parent:FindFirstChild("SleepingGuardClone") or parent:FindFirstChild("SleepingChickenClone")

			if sleepingGuardClone then
				sleepingGuardClone:Destroy()
			end

			local clone = arg:Clone()
			clone.Name = "SleepingGuardClone"
			clone.Parent = parent
			clone:PivotTo(arg:GetPivot())
			fn16(clone)
			return clone
		end

		local function fn23(arg)
			if tbl7[arg] then
				return
			end

			if arg.Name == "SleepingGuardClone" or arg.Name == "SleepingChickenClone" then
				return
			end

			if not fn6(arg) then
				return
			end
			tbl7[arg] = true
			fn17(arg)

			local function fn24()
				if arg.Parent and arg:GetAttribute("GuardState") == "Chasing" then
					arg:Destroy()
					tbl7[arg] = nil
				end
			end

			arg:GetAttributeChangedSignal("GuardState"):Connect(fn24)
			fn24()
		end

		local guard = parent:FindFirstChild("Guard")

		if not guard then
			for _, child in ipairs(parent:GetChildren()) do
				if fn6(child) then
					guard = child
					break
				end
			end
		end

		if guard then
			fn22(guard)
		end

		for _, child in ipairs(parent:GetChildren()) do
			fn23(child)
		end

		parent.ChildAdded:Connect(function(child)
			task.defer(function()
				fn23(child)
				fn17(child)
			end)
		end)
	end

	for _, child in ipairs(guardAreas:GetChildren()) do
		fn21(child)
	end

	guardAreas.ChildAdded:Connect(function(child)
		task.defer(function()
			fn21(child)
		end)
	end)

	for _, v16 in workspace:GetChildren() do
		if v16.Name == "SmartPromptPart" then
			v16:Destroy()
		end
	end

	workspace.ChildAdded:Connect(function(child)
		if child.Name == "SmartPromptPart" then
			child:Destroy()
		end
	end)

	local function fn22(arg)
		if not arg then
			return
		end

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:GetAttribute("RagdollConstraint") or descendant:GetAttribute("RagdollAttachment") or descendant:IsA("BallSocketConstraint") or descendant:IsA("HingeConstraint") then
				pcall(function()
					descendant:Destroy()
				end)
			end
		end

		pcall(RagdollJoints.Release, arg)
	end

	fn7 = function()
		if not humanoidRootPart or not humanoidRootPart.Parent then
			return
		end
		humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
		humanoidRootPart.AssemblyAngularVelocity = Vector3.zero

		if humanoid and humanoid.Parent then
			humanoid.PlatformStand = false
			humanoid.AutoRotate = false

			pcall(function()
				humanoid:Move(Vector3.zero, true)
			end)

			pcall(function()
				humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
			end)

			pcall(function()
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
			end)
		end

		fn22(char)
	end

	local function fn23(arg, arg2)
		if not arg or not arg2 then
			return
		end
		arg2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		arg2:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
		arg2:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
		arg2:SetStateEnabled(Enum.HumanoidStateType.Dead, false)

		for _, descendant in pairs(arg:GetDescendants()) do
			if descendant:IsA("Motor6D") then
				descendant.Enabled = true
			end
		end
	end

	local function fn24(arg)
		if not arg then
			return
		end

		pcall(function()
			arg.BreakJointsOnDeath = false
			arg:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
			arg:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
			arg:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
			arg:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
			arg.Health = arg.MaxHealth
			arg.PlatformStand = false
			arg.Sit = false
			arg.AutoRotate = true

			if arg.WalkSpeed <= 0 then
				arg.WalkSpeed = 16
			end

			arg:ChangeState(Enum.HumanoidStateType.Running)
		end)
	end

	fn8 = function()
		local character = v9 or char or localPlayer.Character

		if v8 then
			pcall(function()
				v8:Stop(0)
			end)
		end

		if animation then
			pcall(function()
				animation:Destroy()
			end)
		end

		v8 = nil
		animation = nil

		if not character then
			v7 = nil
			animate = nil
			health = nil
			v2 = nil
			v9 = nil
			v3 = nil
			return
		end

		local humanoid2 = character:FindFirstChildOfClass("Humanoid")
		fn24(humanoid2)
		fn24(v7)

		if v7 then
			local state = nil

			pcall(function()
				state = v7:GetState()
			end)

			if not ((v7.Health or 0) <= 0) then
			end
		end

		if v7 then
			pcall(function()
				v7.Parent = character
			end)

			fn24(v7)

			if humanoid2 and humanoid2 ~= v7 then
				pcall(function()
					humanoid2:Destroy()
				end)
			end

			humanoid = v7
		else
			humanoid = humanoid2
			fn24(humanoid)
		end

		local animate2 = character:FindFirstChild("Animate")

		if animate2 and animate and animate2 ~= animate then
			pcall(function()
				animate2:Destroy()
			end)
		end

		if animate then
			animate.Parent = character
		end

		health = nil
		local currentCamera2 = workspace.CurrentCamera

		if currentCamera2 and humanoid and humanoid.Parent then
			currentCamera2.CameraType = Enum.CameraType.Custom
			currentCamera2.CameraSubject = humanoid
		end

		if humanoid and humanoid.Parent then
			humanoid.Health = humanoid.MaxHealth
			humanoid.PlatformStand = false
			humanoid.Sit = false
			humanoid.AutoRotate = true
		end

		v2 = nil
		v9 = nil
		v7 = nil
		animate = nil
		health = nil
		breakJointsOnDeath = nil
		v3 = nil
	end

	fn9 = function()
		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		if connection3 then
			connection3:Disconnect()
			connection3 = nil
		end

		if connection4 then
			connection4:Disconnect()
			connection4 = nil
		end

		flag = false
	end

	fn10 = function(arg)
		if not tbl3.enabled then
			return nil
		end
		local character = arg or char or localPlayer.Character
		if not character then
			return nil
		end

		if v2 and v2.Parent == character and v3 == character then
			return v2
		end
		fn9()

		if v2 or v7 then
			fn8()
		end

		local humanoid2 = character:FindFirstChildOfClass("Humanoid") or character:WaitForChild("Humanoid", 5)
		if not humanoid2 then
			return nil
		end
		v7 = humanoid2
		breakJointsOnDeath = humanoid2.BreakJointsOnDeath
		v9 = character
		health = character:FindFirstChild("Health")

		if health then
			health.Parent = nil
		end

		animate = character:FindFirstChild("Animate")

		if animate then
			animate.Parent = nil
		end

		local clone = humanoid2:Clone()
		clone.Name = "Humanoid"
		clone.BreakJointsOnDeath = false
		clone:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
		clone:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
		clone:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		clone:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
		clone.Health = humanoid2.MaxHealth
		local animator = clone:FindFirstChildOfClass("Animator")

		if not animator then
			animator = Instance.new("Animator")
			animator.Parent = clone
		end

		if tbl2.JUMP_ANIMATION_ID and tbl2.JUMP_ANIMATION_ID ~= "" then
			pcall(function()
				animation = Instance.new("Animation")
				animation.AnimationId = tbl2.JUMP_ANIMATION_ID
				v8 = animator:LoadAnimation(animation)

				clone.Jumping:Connect(function(arg2)
					if arg2 and v8 then
						v8:Play()
					end
				end)
			end)
		end

		humanoid2.Parent = nil
		clone.Parent = character
		v2 = clone
		humanoid = clone
		v3 = character
		char = character
		fn23(character, clone)
		local currentCamera2 = workspace.CurrentCamera

		if currentCamera2 then
			currentCamera2.CameraType = Enum.CameraType.Custom
			currentCamera2.CameraSubject = clone
		end

		if animate then
			local clone2 = animate:Clone()
			clone2.Name = "Animate"
			clone2.Parent = character
			clone2.Disabled = false
		end

		connection2 = clone.StateChanged:Connect(function(old, new)
			if new == Enum.HumanoidStateType.Ragdoll or new == Enum.HumanoidStateType.FallingDown or new == Enum.HumanoidStateType.Physics then
				pcall(clone.ChangeState, clone, Enum.HumanoidStateType.GettingUp)
				fn23(character, clone)
			end
		end)

		connection3 = character.DescendantAdded:Connect(function(descendant)
			if flag then
				return
			end

			if not descendant:GetAttribute("RagdollConstraint") and not descendant:GetAttribute("RagdollAttachment") and not descendant:IsA("BallSocketConstraint") and not descendant:IsA("HingeConstraint") then
				return
			end
			flag = true

			task.defer(function()
				fn22(character)
				fn23(character, clone)
				flag = false
			end)
		end)

		if not connection4 then
			local n = 0

			connection4 = RunService.Heartbeat:Connect(function(deltaTime)
				if not v2 then
					return
				end
				n += deltaTime
				if n < 0.1 then
					return
				end
				n = 0
				local v16 = v9
				local v17

				if v9 then
					v17 = v16
				else
					v17 = char
				end

				if not v17 then
					return
				end

				for _, descendant in pairs(v17:GetDescendants()) do
					if descendant:IsA("Motor6D") and not descendant.Enabled then
						descendant.Enabled = true
					end
				end

				local state = v2:GetState()

				if state == Enum.HumanoidStateType.Ragdoll or state == Enum.HumanoidStateType.FallingDown then
					pcall(v2.ChangeState, v2, Enum.HumanoidStateType.GettingUp)
				end
			end)
		end

		return clone
	end

	fn11 = function()
		if not tbl3.enabled then
			return nil
		end
		return fn10(char or localPlayer.Character)
	end

	local function fn25()
		currentCamera = workspace.CurrentCamera or currentCamera
		if not currentCamera or not v10 or not v10.Parent then
			return
		end
		currentCamera.CameraType = Enum.CameraType.Custom
		currentCamera.CameraSubject = v10
	end

	fn12 = function()
		fn25()
		if flag2 then
			return
		end
		flag2 = true

		RunService:BindToRenderStep("LennonCloneCam", Enum.RenderPriority.Camera.Value + 1, function()
			if flag3 then
				fn25()
			end
		end)
	end

	local function fn26()
		pcall(function()
			RunService:UnbindFromRenderStep("LennonCloneCam")
		end)

		flag2 = nil
		RunService:UnbindFromRenderStep("LennonOriginalVisibility")

		if v11 then
			v11:Disconnect()
			v11 = nil
		end

		if v4 and v4.Parent then
			v4:Destroy()
		end

		v4 = nil
		v10 = nil
		v5 = nil

		for k, v16 in tbl5, nil, nil do
			if k and k.Parent then
				k.Transparency = v16
			end
		end

		for k, v16 in tbl6, nil, nil do
			if k and k.Parent and k:IsA("BasePart") then
				k.LocalTransparencyModifier = v16
			end
		end

		table.clear(tbl5)
		table.clear(tbl6)

		if char and char.Parent and v12 ~= nil then
			char.Archivable = v12
		end

		currentCamera = workspace.CurrentCamera or currentCamera

		if currentCamera and v13 then
			currentCamera.CameraType = v13

			if v14 and v14.Parent then
				currentCamera.CameraSubject = v14
			elseif humanoid and humanoid.Parent then
				currentCamera.CameraSubject = humanoid
			end

			if v15 then
				currentCamera.CFrame = v15
			end
		end

		flag3 = false
	end

	v6 = nil
	connection = nil
	walkSpeed = nil

	local function fn27()
		local character = char or localPlayer.Character
		local humanoidRootPart2 = humanoidRootPart or character and character:FindFirstChild("HumanoidRootPart")
		if not character or not humanoidRootPart2 or not humanoidRootPart2.Parent then
			return
		end
		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		raycastParams.IgnoreWater = true
		raycastParams.FilterDescendantsInstances = { character }
		local hit = workspace:Raycast(humanoidRootPart2.Position + Vector3.new(0, 8, 0), Vector3.new(0, -40, 0), raycastParams)
		local n

		if hit then
			n = hit.Position.Y + 5
		else
			n = humanoidRootPart2.Position.Y + 5
		end

		character:PivotTo(CFrame.new(humanoidRootPart2.Position.X, n, humanoidRootPart2.Position.Z))
		humanoidRootPart2.Anchored = false
		humanoidRootPart2.CanCollide = true
		humanoidRootPart2.AssemblyLinearVelocity = Vector3.zero
		humanoidRootPart2.AssemblyAngularVelocity = Vector3.zero
	end

	fn13 = function()
		local character = localPlayer.Character or char
		if not character then
			return
		end
		char = character
		humanoidRootPart = character:FindFirstChild("HumanoidRootPart") or humanoidRootPart

		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Humanoid") then
				child.PlatformStand = false
				child.Sit = false
				child.AutoRotate = true

				if child.WalkSpeed <= 0 then
					child.WalkSpeed = 16
				end

				pcall(function()
					child:SetStateEnabled(Enum.HumanoidStateType.Running, true)
					child:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
					child:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
					child:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
					child:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
					child:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
					child:ChangeState(Enum.HumanoidStateType.Running)
				end)
			end
		end

		fn27()
		humanoid = character:FindFirstChildOfClass("Humanoid") or humanoid
	end

	fn14 = function()
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if v6 then
			pcall(function()
				v6:Cancel()
			end)

			v6 = nil
		end

		fn9()
		fn26()
		fn27()
		fn8()

		if type(restoreWalkSpeed) == "function" then
			pcall(restoreWalkSpeed)
		end

		humanoidRootPart = char and char:FindFirstChild("HumanoidRootPart") or humanoidRootPart
		humanoid = char and char:FindFirstChildOfClass("Humanoid") or humanoid
		fn27()

		if humanoidRootPart and humanoidRootPart.Parent then
			humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
			humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
			humanoidRootPart.Anchored = false
		end

		if humanoid and humanoid.Parent then
			humanoid.PlatformStand = false
			humanoid.Sit = false
			humanoid.AutoRotate = true

			if walkSpeed and walkSpeed > 0 then
				humanoid.WalkSpeed = walkSpeed
			elseif humanoid.WalkSpeed <= 0 then
				humanoid.WalkSpeed = 16
			end

			walkSpeed = nil

			pcall(function()
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
				humanoid:ChangeState(Enum.HumanoidStateType.Running)
			end)

			pcall(function()
				humanoid:Move(Vector3.zero, true)
			end)
		end

		fn13()
		task.defer(fn13)
		task.delay(0.05, fn13)
		task.delay(0.2, fn13)
		v12 = nil
		v13 = nil
		v14 = nil
		v15 = nil
		tbl3.isMoving = false
		tbl3.moveTarget = nil
		tbl3.onArrive = nil
	end
end

local fn15

fn15 = function(arg)
	local n = tonumber(arg) or 0

	local function fn16(arg2)
		return (string.format("%.2f", arg2):gsub("(%..-)0+$", "%1"):gsub("%.$", ""))
	end

	local n2 = math.abs(n)

	for _, v7 in { { 1e12, "T" }, { 1e9, "B" }, { 1000000, "M" }, { 1000, "K" } }, nil, nil do
		if v7[1] <= n2 then
			return "$" .. fn16(n / v7[1]) .. v7[2]
		end
	end

	return "$" .. tostring(math.floor(n + 0.5))
end

local fn16

local function fn17(arg)
	local n = tonumber(arg) or 1
	if n <= 5 then
		return n ^ 1.85
	end
	return (n / 5) ^ 1.2 * 19.637875755794113
end

fn16 = function(arg)
	local v7 = Assets.Directory[arg.AssetCategory]
	if not v7 then
		return nil
	end
	local n = tonumber(v7.EarningRate) or 0
	local n2 = tonumber(arg.AssetScale) or 1
	local flag = arg.Mutations and #arg.Mutations > 0
	local n3 = 1

	if flag then
		local v8 = Mutations
		local earningsFor

		if Mutations then
			earningsFor = Mutations.EarningsFor
		else
			earningsFor = v8
		end

		if type(earningsFor) == "function" then
			local ok, result = pcall(function()
				return earningsFor(arg.Mutations)
			end)

			if ok then
				n3 = tonumber(result) or 1
			end
		end
	end

	local n4 = n * fn17(n2) * n3
	local color = Color3.fromRGB(170, 190, 178)
	local str2 = ""
	local n5 = 0

	if v7.Rarity then
		n5 = v7.Rarity.RarityNumber or 0
		str2 = v7.Rarity.DisplayName or v7.Rarity.Name or ""
		color = fn3(str2)
	end

	return {
		Uid = arg.Uid,
		Category = arg.AssetCategory,
		Name = v7.DisplayName or arg.AssetCategory,
		Generation = math.round(n4),
		Position = arg.BottomCFrame.Position,
		BottomCFrame = arg.BottomCFrame,
		Rarity = n5,
		RarityName = str2,
		RarityColor = color,
		BaseRate = n,
		Scale = n2,
	}
end

local n, n2, n3, n4, n5, n6, n7, n8, n9, n10
local screenGui, fn18, fn19, fn20, ImageButton, Frame

do
	local viewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
	local flag = viewportSize.X < 680 or viewportSize.Y < 500
	n = 262
	n2 = 185
	flag = flag and UDim2.new(1, -(n + 10), 0, 10) or UDim2.new(0.5, 140, 0.5, -math.floor(n2 / 2) - 25)
	n3 = tbl2.DROPDOWN_ROWS * tbl2.ROW_H + (tbl2.DROPDOWN_ROWS - 1) * tbl2.ROW_GAP
	n4 = n3 + 8
	n5 = n4 + 20
	n6 = 2
	local v7 = math.ceil(#tbl4 / n6)
	n7 = 24
	n8 = 4
	n9 = v7 * n7 + (v7 - 1) * n8
	n10 = 120 + n5 + n9 + 10

	pcall(function()
		local lennonHub = game:GetService("CoreGui"):FindFirstChild("LennonHub")

		if lennonHub then
			lennonHub:Destroy()
		end
	end)

	pcall(function()
		local lennonHub = localPlayer.PlayerGui:FindFirstChild("LennonHub")

		if lennonHub then
			lennonHub:Destroy()
		end
	end)

	local function fn21()
		return localPlayer:WaitForChild("PlayerGui")
	end

	local v8 = fn21()
	screenGui = Instance.new("ScreenGui")
	screenGui.Name = "LennonHub"
	screenGui.ResetOnSpawn = false
	screenGui.IgnoreGuiInset = false
	screenGui.DisplayOrder = 100
	screenGui.AutoLocalize = false

	pcall(function()
		if syn and syn.protect_gui then
			syn.protect_gui(screenGui)
		end
	end)

	pcall(function()
		if hidename and type(hidename) == "function" then
			hidename(screenGui)
		end
	end)

	screenGui.Parent = v8

	local tbl5 = {
		Name = "LennonHub",
		Enabled = true,
		ResetOnSpawn = false,
		IgnoreGuiInset = false,
		DisplayOrder = 100,
		AutoLocalize = false,
	}

	local flag2 = false

	local function fn22()
		if flag2 or not screenGui then
			return
		end
		flag2 = true

		for k, v9 in pairs(tbl5) do
			if screenGui[k] ~= v9 then
				pcall(function()
					screenGui[k] = v9
				end)
			end
		end

		if v8 and screenGui.Parent ~= v8 then
			pcall(function()
				screenGui.Parent = v8
			end)
		end

		flag2 = false
	end

	for k in pairs(tbl5) do
		screenGui:GetPropertyChangedSignal(k):Connect(fn22)
	end

	screenGui:GetPropertyChangedSignal("Parent"):Connect(fn22)

	screenGui.AncestryChanged:Connect(function()
		task.defer(fn22)
	end)

	RunService.Heartbeat:Connect(function()
		local flag3 = screenGui

		if screenGui then
			flag3 = screenGui.Parent ~= v8 or screenGui.Enabled ~= true or screenGui.Name ~= "LennonHub"
		end

		if flag3 then
			fn22()
		end
	end)

	fn18 = function(arg, parent, arg2)
		local instance = Instance.new(arg)

		if parent then
			instance.Parent = parent
		end

		if arg2 then
			for k, v9 in pairs(arg2) do
				instance[k] = v9
			end
		end

		return instance
	end

	fn19 = function(arg, arg2)
		fn18("UICorner", arg, { CornerRadius = UDim.new(0, arg2 or 12) })
	end

	fn20 = function(arg, arg2, arg3, arg4, applyStrokeMode)
		local UIStroke = fn18("UIStroke", arg, { Color = arg2 or Color3.fromRGB(255, 255, 255), Thickness = arg3 or 1, Transparency = arg4 or 0 })

		if applyStrokeMode then
			UIStroke.ApplyStrokeMode = applyStrokeMode
		end

		return UIStroke
	end

	ImageButton = fn18("ImageButton", screenGui, {
		Name = "LennonIcon",
		Size = UDim2.fromOffset(46, 46),
		Position = UDim2.new(0, 18, 0.5, -23),
		BackgroundColor3 = Color3.fromRGB(8, 12, 10),
		BackgroundTransparency = 0.08,
		Image = "rbxassetid://103090301992311",
		ScaleType = Enum.ScaleType.Crop,
		AutoButtonColor = false,
		ZIndex = 20,
	})

	fn19(ImageButton, 23)
	fn20(ImageButton, Color3.fromRGB(50, 255, 110), 1.5, 0.15)

	Frame = fn18("Frame", screenGui, {
		Name = "LennonPanel",
		Size = UDim2.fromOffset(262, 185),
		Position = flag,
		BackgroundColor3 = Color3.fromRGB(7, 10, 8),
		BackgroundTransparency = 0.12,
		Visible = true,
		ZIndex = 10,
	})
end

fn19(Frame)
local border = Enum.ApplyStrokeMode.Border
fn20(Frame, Color3.fromRGB(0, 150, 78), 2.6, 0.02, border)

do
	local UIStroke = fn18("UIStroke", Frame, {
		Name = "MovingBorderDetail",
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Thickness = 3.75,
		Transparency = 0,
		Color = Color3.fromRGB(0, 255, 132),
		LineJoinMode = Enum.LineJoinMode.Round,
	})

	local tbl5 = {}
	local colorSequence = ColorSequence.new
	local tbl6 = {}
	local v7 = ColorSequenceKeypoint.new(0, Color3.fromRGB(7, 52, 34))
	local v8 = ColorSequenceKeypoint.new(0.34, Color3.fromRGB(0, 128, 72))
	local v9 = ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 238, 124))
	local v10 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 255, 235))
	local v11 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(0, 238, 124))
	local new = ColorSequenceKeypoint.new
	local color = Color3.fromRGB
	local v12 = ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 128, 72))
	tbl6[1] = v7
	tbl6[2] = v8
	tbl6[3] = v9
	tbl6[4] = v10
	tbl6[5] = v11
	tbl6[6] = v12

	do
		local values = table.pack(new(1, color(7, 52, 34)))
		table.move(values, 1, values.n, 7, tbl6)
	end

	tbl5.Color = colorSequence(tbl6)
	local numberSequence = NumberSequence.new
	local tbl7 = {}
	local v13 = NumberSequenceKeypoint.new(0, 0.94)
	local v14 = NumberSequenceKeypoint.new(0.35, 0.9)
	local v15 = NumberSequenceKeypoint.new(0.44, 0.28)
	local v16 = NumberSequenceKeypoint.new(0.49, 0)
	local v17 = NumberSequenceKeypoint.new(0.54, 0.12)
	local v18 = NumberSequenceKeypoint.new(0.62, 0.78)
	local new2 = NumberSequenceKeypoint.new
	tbl7[1] = v13
	tbl7[2] = v14
	tbl7[3] = v15
	tbl7[4] = v16
	tbl7[5] = v17
	tbl7[6] = v18

	do
		local values = table.pack(new2(1, 0.94))
		table.move(values, 1, values.n, 7, tbl7)
	end

	tbl5.Transparency = numberSequence(tbl7)
	tbl5.Rotation = 0
	local tbl8 = { (fn18("UIGradient", UIStroke, tbl5)) }

	task.spawn(function()
		local rotation = 0

		while screenGui and screenGui.Parent do
			rotation = (rotation + 1.8) % 360

			for i = #tbl8, 1, -1 do
				local v19 = tbl8[i]

				if v19 and v19.Parent then
					v19.Rotation = rotation
				else
					table.remove(tbl8, i)
				end
			end

			RunService.RenderStepped:Wait()
		end
	end)
end

local Frame2

Frame2 = fn18("Frame", Frame, {
	Size = UDim2.new(1, -20, 0, 42),
	Position = UDim2.fromOffset(10, 10),
	BackgroundTransparency = 1,
	ZIndex = 11,
})

local ImageLabel

ImageLabel = fn18("ImageLabel", Frame2, {
	Size = UDim2.fromOffset(26, 26),
	Position = UDim2.new(0, 0, 0.5, -13),
	BackgroundTransparency = 1,
	Image = "rbxassetid://103090301992311",
	ScaleType = Enum.ScaleType.Crop,
	ZIndex = 12,
})

fn19(ImageLabel, 13)
local TextLabel

TextLabel = fn18("TextLabel", Frame2, {
	Size = UDim2.new(1, -70, 0, 18),
	Position = UDim2.new(0, 34, 0, 4),
	BackgroundTransparency = 1,
	Text = "LENNON HUB",
	TextColor3 = Color3.fromRGB(235, 255, 240),
	TextSize = 13,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 12,
})

local TextLabel2

TextLabel2 = fn18("TextLabel", Frame2, {
	Size = UDim2.new(1, -70, 0, 13),
	Position = UDim2.new(0, 34, 0, 22),
	BackgroundTransparency = 1,
	Text = "BEST EGG • TOP 4 SYSTEM",
	TextColor3 = Color3.fromRGB(90, 130, 100),
	TextSize = 7,
	Font = Enum.Font.GothamMedium,
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 12,
})

local ImageButton2

do
	local Frame3 = fn18("Frame", Frame, {
		Name = "LennonToast",
		Size = UDim2.fromOffset(190, 28),
		Position = UDim2.new(0.5, -95, 0, -35),
		BackgroundColor3 = Color3.fromRGB(12, 22, 16),
		BackgroundTransparency = 1,
		ZIndex = 50,
		Visible = false,
		ClipsDescendants = true,
	})

	fn19(Frame3, 8)
	local v7 = fn20(Frame3, Color3.fromRGB(50, 255, 110), 1, 1)

	local TextLabel3 = fn18("TextLabel", Frame3, {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "Done!",
		TextColor3 = Color3.fromRGB(235, 255, 240),
		TextTransparency = 1,
		TextSize = 10,
		Font = Enum.Font.GothamBold,
		ZIndex = 51,
	})

	local function fn21(text)
		TextLabel3.Text = text or "Done!"
		Frame3.Visible = true
		Frame3.Position = UDim2.new(0.5, -95, 0, -35)
		Frame3.BackgroundTransparency = 1
		TextLabel3.TextTransparency = 1
		v7.Transparency = 1
		TweenService:Create(Frame3, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = UDim2.new(0.5, -95, 0, 7), BackgroundTransparency = 0.1 }):Play()
		TweenService:Create(TextLabel3, TweenInfo.new(0.18), { TextTransparency = 0 }):Play()
		TweenService:Create(v7, TweenInfo.new(0.18), { Transparency = 0.25 }):Play()

		task.delay(1.8, function()
			if not Frame3.Visible then
				return
			end
			local tween = TweenService:Create(Frame3, TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Position = UDim2.new(0.5, -95, 0, -35), BackgroundTransparency = 1 })
			TweenService:Create(TextLabel3, TweenInfo.new(0.22), { TextTransparency = 1 }):Play()
			TweenService:Create(v7, TweenInfo.new(0.22), { Transparency = 1 }):Play()
			tween:Play()

			tween.Completed:Connect(function()
				if Frame3.Position.Y.Offset <= -25 then
					Frame3.Visible = false
				end
			end)
		end)
	end

	ImageButton2 = fn18("ImageButton", Frame2, {
		Size = UDim2.fromOffset(24, 24),
		Position = UDim2.new(1, -52, 0.5, -12),
		BackgroundColor3 = Color3.fromRGB(25, 32, 27),
		BackgroundTransparency = 0.25,
		Image = "rbxassetid://121807029290075",
		ScaleType = Enum.ScaleType.Fit,
		AutoButtonColor = false,
		ZIndex = 12,
	})

	fn19(ImageButton2, 12)
	local v8 = fn20(ImageButton2, Color3.fromRGB(88, 101, 242), 1.2, 0.3)

	ImageButton2.MouseButton1Click:Connect(function()
		pcall(function()
			if setclipboard then
				setclipboard("https://discord.gg/xuPkkjQfRR")
			end
		end)

		fn21("Discord link copied!")
		v8.Color = Color3.fromRGB(50, 255, 110)

		task.delay(0.4, function()
			if v8 and v8.Parent then
				v8.Color = Color3.fromRGB(88, 101, 242)
			end
		end)
	end)
end

local TextButton

TextButton = fn18("TextButton", Frame2, {
	Size = UDim2.fromOffset(24, 24),
	Position = UDim2.new(1, -24, 0.5, -12),
	BackgroundColor3 = Color3.fromRGB(25, 32, 27),
	BackgroundTransparency = 0.25,
	Text = "×",
	TextColor3 = Color3.fromRGB(160, 180, 165),
	TextSize = 16,
	Font = Enum.Font.Gotham,
	AutoButtonColor = false,
	ZIndex = 12,
})

fn19(TextButton, 12)

fn18("Frame", Frame, {
	Size = UDim2.new(1, -20, 0, 1),
	Position = UDim2.fromOffset(10, 52),
	BackgroundColor3 = Color3.fromRGB(40, 90, 50),
	BackgroundTransparency = 0.5,
	BorderSizePixel = 0,
	ZIndex = 11,
})

local TextLabel3, TextLabel4, TextLabel5, TextButton2, Frame3, TextButton3, v7, TextLabel6, TextLabel7, Frame4
local Frame5, Frame6, tbl5, v8, fn21, fn22, fn23, fn24

do
	local Frame7 = fn18("Frame", Frame, {
		Size = UDim2.new(1, -20, 0, 52),
		Position = UDim2.fromOffset(10, 60),
		BackgroundColor3 = Color3.fromRGB(13, 19, 15),
		BackgroundTransparency = 0.1,
		ZIndex = 11,
	})

	fn19(Frame7, 9)
	fn20(Frame7, Color3.fromRGB(35, 70, 43), 1, 0.2)

	fn18("TextLabel", Frame7, {
		Size = UDim2.new(1, -58, 0, 14),
		Position = UDim2.fromOffset(52, 5),
		BackgroundTransparency = 1,
		Text = "BEST EGG",
		TextColor3 = Color3.fromRGB(90, 130, 100),
		TextSize = 7,
		Font = Enum.Font.GothamBold,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
	})

	TextLabel3 = fn18("TextLabel", Frame7, {
		Size = UDim2.new(0, 100, 0, 17),
		Position = UDim2.fromOffset(52, 20),
		BackgroundTransparency = 1,
		Text = "SEARCHING...",
		TextColor3 = Color3.fromRGB(235, 255, 240),
		TextSize = 10,
		Font = Enum.Font.GothamBold,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 12,
	})

	TextLabel4 = fn18("TextLabel", Frame7, {
		Size = UDim2.new(0, 100, 0, 12),
		Position = UDim2.fromOffset(52, 35),
		BackgroundTransparency = 1,
		Text = "",
		TextColor3 = Color3.fromRGB(170, 190, 178),
		TextSize = 8,
		Font = Enum.Font.GothamBold,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 12,
	})

	TextLabel5 = fn18("TextLabel", Frame7, {
		AnchorPoint = Vector2.new(1, 0),
		Size = UDim2.fromOffset(60, 17),
		Position = UDim2.new(1, -24, 0, 20),
		BackgroundTransparency = 1,
		Text = "--",
		TextColor3 = Color3.fromRGB(50, 255, 110),
		TextSize = 10,
		Font = Enum.Font.GothamBold,
		TextXAlignment = Enum.TextXAlignment.Right,
		ZIndex = 12,
	})

	TextButton2 = fn18("TextButton", Frame7, {
		Name = "DropdownToggle",
		Size = UDim2.fromOffset(18, 18),
		Position = UDim2.new(1, -20, 0, 3),
		BackgroundColor3 = Color3.fromRGB(25, 32, 27),
		BackgroundTransparency = 0.35,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 13,
	})

	fn19(TextButton2, 9)

	Frame3 = fn18("Frame", TextButton2, {
		Name = "Arrow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.fromOffset(10, 10),
		BackgroundTransparency = 1,
		Rotation = 0,
		ZIndex = 14,
	})

	fn19(fn18("Frame", Frame3, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, -3, 0.5, -1),
		Size = UDim2.fromOffset(7, 2),
		Rotation = 45,
		BackgroundColor3 = Color3.fromRGB(160, 220, 175),
		BorderSizePixel = 0,
		ZIndex = 14,
	}), 1)

	fn19(fn18("Frame", Frame3, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 3, 0.5, -1),
		Size = UDim2.fromOffset(7, 2),
		Rotation = -45,
		BackgroundColor3 = Color3.fromRGB(160, 220, 175),
		BorderSizePixel = 0,
		ZIndex = 14,
	}), 1)

	TextButton3 = fn18("TextButton", Frame, {
		Size = UDim2.new(1, -20, 0, 55),
		Position = UDim2.fromOffset(10, 120),
		BackgroundColor3 = Color3.fromRGB(13, 19, 15),
		BackgroundTransparency = 0.15,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 11,
	})

	fn19(TextButton3, 9)
	v7 = fn20(TextButton3, Color3.fromRGB(35, 70, 43), 1, 0.3)

	TextLabel6 = fn18("TextLabel", TextButton3, {
		Size = UDim2.new(0, 100, 0, 20),
		Position = UDim2.fromOffset(12, 8),
		BackgroundTransparency = 1,
		Text = "TP TELEGUIADO",
		TextColor3 = Color3.fromRGB(230, 240, 233),
		TextSize = 11,
		Font = Enum.Font.GothamBold,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
	})

	TextLabel7 = fn18("TextLabel", TextButton3, {
		Size = UDim2.new(0, 100, 0, 14),
		Position = UDim2.fromOffset(12, 30),
		BackgroundTransparency = 1,
		Text = "Always targets the highest value",
		Visible = true,
		TextColor3 = Color3.fromRGB(100, 125, 108),
		TextSize = 8,
		Font = Enum.Font.Gotham,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
	})

	Frame4 = fn18("Frame", TextButton3, {
		Size = UDim2.fromOffset(38, 20),
		Position = UDim2.new(1, -48, 0.5, -10),
		BackgroundColor3 = Color3.fromRGB(32, 42, 35),
		ZIndex = 12,
	})

	fn19(Frame4, 10)

	Frame5 = fn18("Frame", Frame4, {
		Size = UDim2.fromOffset(14, 14),
		Position = UDim2.new(0, 3, 0.5, -7),
		BackgroundColor3 = Color3.fromRGB(145, 155, 148),
		ZIndex = 13,
	})

	fn19(Frame5, 7)

	Frame6 = fn18("Frame", Frame, {
		Name = "DropdownList",
		Size = UDim2.new(1, -20, 0, n3),
		Position = UDim2.fromOffset(10, 120),
		BackgroundTransparency = 1,
		Visible = false,
		ZIndex = 11,
	})

	local tbl6 = {}

	local function fn25(arg, arg2)
		local TextButton4 = fn18("TextButton", Frame6, {
			Name = (arg2 or "Row") .. arg,
			Size = UDim2.new(1, 0, 0, tbl2.ROW_H),
			Position = UDim2.fromOffset(0, (arg - 1) * (tbl2.ROW_H + tbl2.ROW_GAP)),
			BackgroundColor3 = Color3.fromRGB(13, 19, 15),
			BackgroundTransparency = 0.15,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 12,
			Visible = false,
		})

		fn19(TextButton4, 7)
		fn20(TextButton4, Color3.fromRGB(35, 70, 43), 1, 0.35)

		fn18("TextLabel", TextButton4, {
			Size = UDim2.fromOffset(16, tbl2.ROW_H),
			Position = UDim2.fromOffset(6, 0),
			BackgroundTransparency = 1,
			Text = "#" .. arg,
			TextColor3 = Color3.fromRGB(90, 130, 100),
			TextSize = 9,
			Font = Enum.Font.GothamBold,
			ZIndex = 13,
		})

		local Frame8 = fn18("Frame", TextButton4, {
			Name = "Preview",
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 26, 0.5, 0),
			Size = UDim2.fromOffset(24, 24),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.5,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			ZIndex = 13,
		})

		fn19(Frame8, 6)

		return {
			Row = TextButton4,
			Preview = Frame8,
			NameLabel = fn18("TextLabel", TextButton4, {
				Size = UDim2.new(1, -130, 0, 14),
				Position = UDim2.fromOffset(58, 4),
				BackgroundTransparency = 1,
				Text = "",
				TextColor3 = Color3.fromRGB(235, 255, 240),
				TextSize = 9,
				Font = Enum.Font.GothamBold,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ZIndex = 13,
			}),
			RarityLabel = fn18("TextLabel", TextButton4, {
				Size = UDim2.new(1, -130, 0, 11),
				Position = UDim2.fromOffset(58, 17),
				BackgroundTransparency = 1,
				Text = "",
				TextColor3 = Color3.fromRGB(170, 190, 178),
				TextSize = 7,
				Font = Enum.Font.GothamBold,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ZIndex = 13,
			}),
			ValueLabel = fn18("TextLabel", TextButton4, {
				AnchorPoint = Vector2.new(1, 0),
				Size = UDim2.fromOffset(60, 20),
				Position = UDim2.new(1, -8, 0, 5),
				BackgroundTransparency = 1,
				Text = "",
				TextColor3 = Color3.fromRGB(50, 255, 110),
				TextSize = 10,
				Font = Enum.Font.GothamBold,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 13,
			}),
			Egg = nil,
		}
	end

	for i = 1, tbl2.DROPDOWN_ROWS do
		tbl6[i] = fn25(i, "Row")
	end

	fn18("TextLabel", Frame6, {
		Name = "RarityFilterTitle",
		Size = UDim2.new(1, 0, 0, 18),
		Position = UDim2.fromOffset(0, n4),
		BackgroundTransparency = 1,
		Text = "RARITY FILTER • TP TARGET",
		TextColor3 = Color3.fromRGB(120, 255, 160),
		TextSize = 8,
		Font = Enum.Font.GothamBold,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
	})

	local Frame8 = fn18("Frame", Frame6, {
		Name = "RarityFilterList",
		Size = UDim2.new(1, 0, 0, n9),
		Position = UDim2.fromOffset(0, n5),
		BackgroundTransparency = 1,
		Visible = true,
		ZIndex = 11,
	})

	tbl5 = {}

	local function fn26(arg, arg2)
		local n11 = (arg - 1) % n6
		local n12 = math.floor((arg - 1) / n6)

		local TextButton4 = fn18("TextButton", Frame8, {
			Name = "RarityCheckbox_" .. arg2.Key,
			Size = UDim2.new(0.5, -3, 0, 24),
			Position = UDim2.new(n11 * 0.5, n11 == 0 and 0 or 3, 0, n12 * (n7 + n8)),
			BackgroundColor3 = Color3.fromRGB(13, 19, 15),
			BackgroundTransparency = 0.08,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Text = "",
			ZIndex = 12,
		})

		fn19(TextButton4, 7)
		local v9 = fn20(TextButton4, arg2.Color, 1, 0.35)

		local TextLabel8 = fn18("TextLabel", TextButton4, {
			Name = "Check",
			Size = UDim2.fromOffset(16, 16),
			Position = UDim2.fromOffset(5, 4),
			BackgroundColor3 = arg2.Color,
			BackgroundTransparency = 0.55,
			BorderSizePixel = 0,
			Text = "",
			TextColor3 = Color3.fromRGB(7, 10, 8),
			TextSize = 12,
			Font = Enum.Font.GothamBlack,
			ZIndex = 13,
		})

		fn19(TextLabel8, 4)
		local flag = arg2.Key == "secret"

		return {
			Row = TextButton4,
			Box = TextLabel8,
			Stroke = v9,
			Label = fn18("TextLabel", TextButton4, {
				Name = "Label",
				Size = UDim2.new(1, -28, 1, 0),
				Position = UDim2.fromOffset(26, 0),
				BackgroundTransparency = 1,
				Text = arg2.Label,
				TextColor3 = flag and Color3.fromRGB(255, 255, 255) or arg2.Color,
				TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
				TextStrokeTransparency = flag and 0 or 1,
				TextSize = 8,
				Font = Enum.Font.GothamBold,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 13,
			}),
			Option = arg2,
		}
	end

	for i, v9 in ipairs(tbl4) do
		tbl5[v9.Key] = fn26(i, v9)
	end

	v8 = nil

	local function fn27(arg, arg2)
		if not AssetViewport then
			return
		end

		local ok, result = pcall(function()
			return AssetViewport.Mount(arg)
		end)

		if not ok or not result then
			return
		end
		result.Size = UDim2.fromScale(1, 1)
		result.Position = UDim2.fromScale(0.5, 0.5)
		result.AnchorPoint = Vector2.new(0.5, 0.5)
		result.BackgroundTransparency = 1
		result.ZIndex = 14

		if not pcall(function()
			return AssetViewport.ShowAsset(arg2, result, true)
		end) then
			if result then
				result:Destroy()
			end
		end
	end

	fn21 = function(arg)
		if not Frame.Visible then
			v8 = nil
			return
		end

		if v8 == arg and Frame7:FindFirstChild("Preview") then
			return
		end
		v8 = arg
		local preview = Frame7:FindFirstChild("Preview")

		if preview then
			preview:Destroy()
		end

		if not arg then
			return
		end

		local Frame9 = fn18("Frame", Frame7, {
			Name = "Preview",
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 6, 0.5, 0),
			Size = UDim2.fromOffset(40, 40),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.5,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			ZIndex = 13,
		})

		fn19(Frame9, 7)
		fn27(Frame9, arg)
	end

	fn22 = function()
		for i = 1, tbl2.DROPDOWN_ROWS do
			local v9 = tbl6[i]

			if v9 then
				local v10 = tbl3.filteredEggs[i]
				v9.Egg = v10

				pcall(function()
					local preview = v9.Preview

					if preview then
						for _, child in ipairs(preview:GetChildren()) do
							pcall(function()
								child:Destroy()
							end)
						end
					end
				end)

				if v10 then
					v9.Row.Visible = true
					v9.NameLabel.Text = tostring(v10.Name or "UNKNOWN")
					v9.RarityLabel.Text = tostring(v10.RarityName or "")
					v9.RarityLabel.TextColor3 = v10.RarityColor or Color3.fromRGB(170, 190, 178)
					v9.ValueLabel.Text = fn15(v10.Generation or 0)
					pcall(fn27, v9.Preview, v10.Category)
				else
					v9.Row.Visible = false
					v9.NameLabel.Text = ""
					v9.RarityLabel.Text = ""
					v9.ValueLabel.Text = ""
				end
			end
		end
	end

	fn23 = function()
		if not tbl3.dropdownOpen then
			return
		end
		tbl3.dropdownOpen = false
		Frame6.Visible = false
		TextButton3.Visible = true
		TweenService:Create(Frame3, TweenInfo.new(0.15), { Rotation = 0 }):Play()
		TweenService:Create(Frame, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(262, 185) }):Play()
	end

	fn24 = function()
		if tbl3.dropdownOpen then
			return
		end
		tbl3.dropdownOpen = true
		fn22()
		_G.__LENNON_RARITY_UPDATE()
		TextButton3.Visible = false
		Frame6.Visible = true
		TweenService:Create(Frame3, TweenInfo.new(0.15), { Rotation = 180 }):Play()
		TweenService:Create(Frame, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(262, n10) }):Play()
	end

	local function fn28(selectedEgg)
		if not selectedEgg then
			return
		end
		tbl3.selectedEgg = selectedEgg
		tbl3.selectedUid = selectedEgg.Uid
		tbl3.targetEgg = nil

		if tbl3.enabled and not tbl3.carrying and not tbl3.carryLocked and not tbl3.isProtecting and not tbl3.isDelivering then
			finishMove()
			tbl3.isStealing = false
		end
	end

	for i = 1, tbl2.DROPDOWN_ROWS do
		local v9 = tbl6[i]

		v9.Row.MouseButton1Click:Connect(function()
			fn28(v9.Egg)
			fn23()
		end)

		v9.Row.MouseEnter:Connect(function()
			TweenService:Create(v9.Row, TweenInfo.new(0.12), { BackgroundColor3 = Color3.fromRGB(19, 28, 21) }):Play()
		end)

		v9.Row.MouseLeave:Connect(function()
			TweenService:Create(v9.Row, TweenInfo.new(0.12), { BackgroundColor3 = Color3.fromRGB(13, 19, 15) }):Play()
		end)
	end
end

local fn25

fn25 = function(arg)
	if not fn2() then
		tbl3.eggs = {}
		tbl3.filteredEggs = {}
		tbl3.rarityEggs = {}
		tbl3.bestEgg = nil
		return tbl3.eggs
	end

	local now = tick()
	if not arg and now - tbl3.lastRefresh < tbl2.REFRESH_INTERVAL then
		return tbl3.eggs
	end

	local ok, result = pcall(function()
		return tbl.AskFieldEggSnapshot:InvokeServer()
	end)

	if not ok then
		return tbl3.eggs
	end
	tbl3.eggs = {}

	if result and result.Records then
		for _, record in ipairs(result.Records) do
			if record.State == "Slot" or record.State == "Dropped" then
				local v9 = fn16(record)

				if v9 then
					table.insert(tbl3.eggs, v9)
				end
			end
		end
	end

	table.sort(tbl3.eggs, function(arg2, arg3)
		return arg2.Generation > arg3.Generation
	end)

	tbl3.rarityEggs = {}

	for _, egg in ipairs(tbl3.eggs) do
		table.insert(tbl3.rarityEggs, egg)
	end

	table.sort(tbl3.rarityEggs, function(arg2, arg3)
		local n11 = tonumber(arg2.Rarity) or -math.huge
		local n12 = tonumber(arg3.Rarity) or -math.huge
		if n11 == n12 then
			return (arg2.Generation or 0) > (arg3.Generation or 0)
		end
		return n11 > n12
	end)

	tbl3.filteredEggs = {}

	for _, egg in ipairs(tbl3.eggs) do
		if fn4(egg) then
			table.insert(tbl3.filteredEggs, egg)
		end
	end

	tbl3.bestEgg = tbl3.filteredEggs[1]
	tbl3.lastRefresh = now
	_G.__LENNON_RARITY_UPDATE()
	return tbl3.eggs
end

local str2, n11

do
	local function fn26()
		if not fn2() then
			return nil
		end

		if tbl3.selectedEgg then
			for _, filteredEgg in ipairs(tbl3.filteredEggs) do
				if filteredEgg.Uid == tbl3.selectedEgg.Uid then
					tbl3.selectedEgg = filteredEgg
					return filteredEgg
				end
			end

			tbl3.selectedEgg = nil
		end

		return tbl3.bestEgg
	end

	local function fn27()
		if not humanoidRootPart or not humanoidRootPart.Parent then
			return
		end
		humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
		humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
		RunService.Heartbeat:Wait()
		RunService.Heartbeat:Wait()
	end

	local function fn28()
		local humanoid2 = char and char:FindFirstChildOfClass("Humanoid") or humanoid

		if humanoid2 and walkSpeed then
			humanoid2.WalkSpeed = walkSpeed
			walkSpeed = nil
		end
	end

	local function fn29(arg)
		local ground = workspace:FindFirstChild("__OBJECTS") and workspace.__OBJECTS:FindFirstChild("Areas") and workspace.__OBJECTS.Areas:FindFirstChild("Ground")
		if not ground or not arg then
			return false
		end

		if ground:IsA("Model") then
			local boundingBox, v9 = ground:GetBoundingBox()
			local v10 = boundingBox:PointToObjectSpace(arg.Position)
			local n12 = v9.X / 2
			local flag = math.abs(v10.X) <= n12

			if flag then
				local n13 = v9.Y / 2 + 20
				flag = math.abs(v10.Y) <= n13
			end

			if flag then
				local n13 = v9.Z / 2
				flag = math.abs(v10.Z) <= n13
			end

			return flag
		end

		if ground:IsA("BasePart") then
			local v9 = ground.CFrame:PointToObjectSpace(arg.Position)
			local n12 = ground.Size.X / 2
			local flag = math.abs(v9.X) <= n12

			if flag then
				local n13 = ground.Size.Y / 2 + 20
				flag = math.abs(v9.Y) <= n13
			end

			if flag then
				local n13 = ground.Size.Z / 2
				flag = math.abs(v9.Z) <= n13
			end

			return flag
		end

		return false
	end

	local function fn30()
		pcall(function()
			local network = ReplicatedStorage:FindFirstChild("Network")
			network = network and network:FindFirstChild("Treadmills: RequestUnequip")

			if network then
				network:InvokeServer()
			end
		end)
	end

	local function fn31(arg)
		if typeof(arg) ~= "Vector3" then
			return arg
		end
		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		raycastParams.IgnoreWater = true
		local filterDescendantsInstances = {}

		if v and v.Parent then
			table.insert(filterDescendantsInstances, v)
		end

		if char and char.Parent then
			table.insert(filterDescendantsInstances, char)
		end

		local n12 = arg + Vector3.new(0, tbl2.RAYCAST_UP, 0)
		local vector = Vector3.new(0, -(tbl2.RAYCAST_UP + tbl2.RAYCAST_DOWN), 0)

		for i = 1, 8 do
			raycastParams.FilterDescendantsInstances = filterDescendantsInstances
			local hit = workspace:Raycast(n12, vector, raycastParams)
			if not hit then
				return arg
			end
			local instance = hit.Instance
			if instance:IsA("Terrain") or instance:IsA("BasePart") and instance.CanCollide then
				return Vector3.new(arg.X, hit.Position.Y + tbl2.GROUND_CLEARANCE, arg.Z)
			end
			table.insert(filterDescendantsInstances, instance)
		end

		return arg
	end

	local function fn32(arg)
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if v6 then
			pcall(function()
				if typeof(v6) == "Instance" then
					v6:Cancel()
				end
			end)

			v6 = nil
		end

		local humanoidRootPart2 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") or humanoidRootPart

		if humanoidRootPart2 then
			humanoidRootPart2.AssemblyLinearVelocity = Vector3.zero
		end

		fn28()

		if arg then
			task.spawn(function()
				task.wait(0.05)

				pcall(function()
					if tbl.AskFieldEggDrop then
						tbl.AskFieldEggDrop:InvokeServer({ Reason = "PlayerRequest" })
					end
				end)
			end)
		end
	end

	local function fn33()
		fn28()

		if tbl3.isMoving then
			tbl3.isMoving = false
			tbl3.moveTarget = nil
			local onArrive = tbl3.onArrive
			tbl3.onArrive = nil

			if onArrive then
				onArrive()
			end
		end
	end

	local function fn34(arg)
		local character = localPlayer.Character
		local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
		local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")
		if not humanoidRootPart2 or not arg then
			return
		end

		if fn29(humanoidRootPart2) then
			fn30()
		end

		local n12 = tonumber(tbl2.TWEEN_SPEED) or 500
		fn32(false)

		if humanoid2 then
			if humanoid2.WalkSpeed > 0 then
				walkSpeed = humanoid2.WalkSpeed
			end

			humanoid2.WalkSpeed = 0
		end

		local function fn35(arg2, arg3)
			local magnitude = (arg2 - humanoidRootPart2.Position).Magnitude

			if magnitude < 2 then
				if arg3 then
					arg3()
				end

				return
			end

			local tween = TweenService:Create(humanoidRootPart2, TweenInfo.new(magnitude / n12, Enum.EasingStyle.Linear), { CFrame = CFrame.new(arg2) })
			v6 = tween

			connection = tween.Completed:Connect(function(playbackState)
				if v6 == tween then
					v6 = nil

					if connection then
						connection:Disconnect()
						connection = nil
					end

					if playbackState == Enum.PlaybackState.Completed then
						humanoidRootPart2.AssemblyLinearVelocity = Vector3.zero
						character:PivotTo(CFrame.new(arg2))

						if arg3 then
							arg3()
						end
					end
				end
			end)

			tween:Play()
		end

		local waypoint = tbl2.WAYPOINT
		local flag = (arg - waypoint).Magnitude < 2
		local v9 = fn31(waypoint)
		local v10 = fn31(arg)

		if tbl2.USE_GROUND_DETECTION and fn29(humanoidRootPart2) and not flag then
			fn35(v9, function()
				fn35(v10, fn33)
			end)
		else
			fn35(v10, fn33)
		end
	end

	local function fn35(moveTarget, onArrive)
		if not moveTarget or not humanoidRootPart then
			return
		end
		tbl3.isMoving = true
		tbl3.moveTarget = moveTarget
		tbl3.onArrive = onArrive
		fn34(moveTarget)
	end

	local function fn36(heldEggUid)
		if not heldEggUid then
			return
		end

		if tbl3.isProtecting and tbl3.heldEggUid == heldEggUid then
			return
		end
		tbl3.isProtecting = true
		tbl3.heldEggUid = heldEggUid
		tbl3.lastProtectTime = 0

		task.spawn(function()
			while tbl3.isProtecting and tbl3.heldEggUid == heldEggUid and tbl3.enabled do
				local now = tick()

				if tbl2.PROTECT_INTERVAL <= now - tbl3.lastProtectTime then
					tbl3.lastProtectTime = now

					local ok, result = pcall(function()
						return tbl.AskFieldEggCarry:InvokeServer({ Uid = heldEggUid })
					end)

					if ok and result == true then
						tbl3.carrying = true
					end
				end

				RunService.Heartbeat:Wait()
			end
		end)
	end

	local function fn37(heldEggUid)
		if not heldEggUid or tbl3.isStealing then
			return
		end

		if tbl3.carrying and tbl3.heldEggUid == heldEggUid then
			return
		end
		tbl3.isStealing = true
		tbl3.lastSpamTime = 0

		task.spawn(function()
			while true do
				if tbl3.isStealing and not tbl3.carrying and tbl3.enabled then
					local now = tick()

					if not (tbl2.SPAM_INTERVAL <= now - tbl3.lastSpamTime) then
						RunService.Heartbeat:Wait()
						continue
					else
						tbl3.lastSpamTime = now

						local ok, result = pcall(function()
							return tbl.AskFieldEggCarry:InvokeServer({ Uid = heldEggUid })
						end)

						if ok and result == true then
							tbl3.isStealing = false
							tbl3.carrying = true
							tbl3.heldEggUid = heldEggUid
							tbl3.carryLocked = true

							task.spawn(function()
								fn36(heldEggUid)
							end)

							break
						else
							RunService.Heartbeat:Wait()
							continue
						end
					end
				end

				break
			end

			tbl3.isStealing = false
		end)
	end

	str2 = "idle"
	n11 = 0
	local v9 = nil
	local areaId = nil
	local uid = nil
	local v10 = nil
	local cFrame = nil

	local function fn38()
		if not fn2() then
			return nil
		end
		local ok, result = pcall(EggState.SyncFieldEggs)
		if ok and result and result.Records then
			return result
		end
	end

	local function fn39(arg)
		if not fn2() then
			return nil
		end

		if not arg or not arg.Uid then
			return nil
		end
		local v11 = fn38()
		if not v11 then
			return nil
		end

		for _, record in ipairs(v11.Records) do
			if record.Uid and tostring(record.Uid) == tostring(arg.Uid) and record.BottomCFrame and (record.State == "Slot" or record.State == "Dropped") then
				return record
			end
		end
	end

	local function fn40(arg)
		if not arg then
			return nil
		end
		local v11 = guardAreas:FindFirstChild(tostring(arg))
		if v11 then
			return v11
		end
		local v12 = string.lower(tostring(arg))

		for _, child in ipairs(guardAreas:GetChildren()) do
			if string.lower(child.Name) == v12 then
				return child
			end
		end

		return nil
	end

	local function fn41(arg)
		if not arg then
			return nil
		end
		local guard = arg:FindFirstChild("Guard")

		if not guard then
			for _, child in ipairs(arg:GetChildren()) do
				if fn6(child) then
					guard = child
					break
				end
			end
		end

		guard = guard or arg:FindFirstChildWhichIsA("Model", true)

		if guard then
			guard = guard.PrimaryPart or guard:FindFirstChild("HumanoidRootPart", true)
		end

		return guard
	end

	local function fn42(arg)
		local v11 = fn40(arg)
		local v12 = fn41(v11)
		if v12 then
			return v12
		end

		for _, child in ipairs(guardAreas:GetChildren()) do
			local v13 = fn41(child)
			if v13 then
				return v13
			end
		end

		return nil
	end

	local function fn43(arg, arg2, arg3)
		if not arg2 then
			return
		end

		if not arg3 and humanoidRootPart and humanoidRootPart.Parent then
			arg3 = humanoidRootPart.CFrame
		end

		local tbl6 = { EggUid = arg2, GuardCFrame = arg3 or CFrame.new(), AreaId = arg }
		local guardPatrol = Remotes and Remotes.GuardPatrol
		if type(guardPatrol) ~= "table" then
			return
		end
		local tbl7 = { tostring(arg or "") .. "Strike", "ForestStrike", "Strike", "AreaStrike", "GuardStrike" }

		for _, v11 in ipairs(tbl7) do
			local v12 = guardPatrol[v11]

			if v12 and v12.FireServer then
				pcall(function()
					v12:FireServer(tbl6)
				end)
			end
		end

		for k, v11 in pairs(guardPatrol) do
			if type(k) == "string" and k:lower():find("strike", 1, true) and v11 and v11.FireServer then
				pcall(function()
					v11:FireServer(tbl6)
				end)
			end
		end
	end

	local function fn44(arg)
		if not arg then
			return nil
		end
		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		raycastParams.IgnoreWater = true
		local filterDescendantsInstances = { char, v4 }
		local vector = Vector3.new(arg.X, 180, arg.Z)
		local position = nil

		for i = 1, 16 do
			raycastParams.FilterDescendantsInstances = filterDescendantsInstances
			local hit = workspace:Raycast(vector, Vector3.new(0, -500, 0), raycastParams)
			if not hit then
				break
			end
			local instance = hit.Instance
			local y = hit.Position.Y
			local isTerrain = hit.Normal.Y >= 0.45 and (instance:IsA("Terrain") or instance:IsA("BasePart") and instance.CanCollide)
			if isTerrain and y >= 20 and y <= 120 then
				return CFrame.new(hit.Position + Vector3.new(0, 5, 0))
			end

			if isTerrain and not position then
				position = hit.Position
			end

			table.insert(filterDescendantsInstances, instance)
		end

		local y = tbl2.WAYPOINT and tbl2.WAYPOINT.Y or 70.767
		if position and position.Y > 20 then
			return CFrame.new(position + Vector3.new(0, 5, 0))
		end
		return CFrame.new(arg.X, y + 5, arg.Z)
	end

	local function fn45()
		if not humanoidRootPart or not humanoidRootPart.Parent then
			return
		end
		local v11 = fn44(humanoidRootPart.Position)
		if not v11 then
			return
		end
		fn7()
		char:PivotTo(v11)

		if v4 and v4.Parent then
			v5 = v11
			v4:PivotTo(v11)
		end

		fn7()
		fn27()
	end

	local function fn46()
		local ground = areas and areas:FindFirstChild("Ground")
		local position = nil

		if ground then
			if ground:IsA("BasePart") then
				position = ground.Position
			elseif ground:IsA("Model") then
				position = ground:GetPivot().Position
			else
				position = ground:FindFirstChildWhichIsA("BasePart", true)
				position = position and position.Position
			end
		end

		if not position and startArea then
			if startArea:IsA("BasePart") then
				position = startArea.Position
			elseif startArea:IsA("Model") then
				position = startArea:GetBoundingBox().Position
			else
				position = startArea:FindFirstChildWhichIsA("BasePart", true)
				position = position and position.Position
			end
		end

		return fn44(position or tbl2.WAYPOINT)
	end

	local v11 = nil
	local connection2 = nil

	local function fn47()
		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		v11 = nil
	end

	local function fn48()
		v9 = nil
		areaId = nil
		uid = nil
		v10 = nil
		cFrame = nil
		str = nil
		tbl3.carrying = false
		tbl3.isMoving = false
		tbl3.isStealing = false
		tbl3.isProtecting = false
		tbl3.isDelivering = false
		tbl3.carryLocked = false
		tbl3.targetEgg = nil
		tbl3.heldEggUid = nil
	end

	local function fn49()
		str2 = "idle"
		fn47()
		fn48()
		fn14()
	end

	local function fn50()
		n11 += 1
		str2 = "idle"
		fn32()
		fn47()
		fn48()
		fn14()
	end

	cancelMovement = fn50

	local function fn51(arg)
		if arg ~= n11 then
			return
		end
		str2 = "waitingClaim"
		fn32()
		fn11()
		local v12 = fn46()
		if not v12 then
			return
		end
		v11 = v12

		if char and char.Parent then
			char:PivotTo(v12)
		end

		fn7()

		if connection2 then
			connection2:Disconnect()
		end

		connection2 = RunService.Heartbeat:Connect(function()
			if arg ~= n11 or not v11 then
				fn47()
				return
			end

			if str2 ~= "waitingClaim" and str2 ~= "settlingClaim" then
				fn47()
				return
			end

			if char and char.Parent then
				char:PivotTo(v11)
			end

			fn7()
		end)
	end

	local function fn52(arg)
		if not tbl3.enabled or not fn2() then
			return
		end

		if tbl3.carrying or tbl3.carryLocked or tbl3.isProtecting or tbl3.isDelivering or tbl3.isMoving or tbl3.isStealing then
			return
		end

		if str2 ~= "idle" or not arg then
			return
		end
		local v12 = arg

		if not v12 or not v12.Uid then
			v12 = fn39(arg)
		end

		if not v12 or not v12.Uid or not humanoidRootPart or not humanoidRootPart.Parent then
			tbl3.lastRefresh = 0
			return
		end
		n11 += 1
		local v13 = n11
		v9 = nil
		areaId = v12.AreaId
		uid = v12.Uid
		v10 = v12
		tbl3.targetEgg = v12
		tbl3.carrying = false
		tbl3.heldEggUid = nil
		local v14 = fn42(v12.AreaId)
		cFrame = v14 and v14.CFrame or nil
		fn10(char or v or localPlayer.Character)
		local character = char or localPlayer.Character

		if character then
			character = (char or localPlayer.Character):FindFirstChildOfClass("Humanoid")
		end

		humanoid = character or humanoid
		str2 = "movingTarget"
		local position = v12.Position
		local position2

		if position then
			position2 = position
		else
			position2 = v12.BottomCFrame and v12.BottomCFrame.Position
		end

		if not position2 then
			return
		end

		local function fn53()
			if v13 ~= n11 or not tbl3.enabled then
				return
			end
			str2 = "target"
			fn37(v12.Uid)
		end

		task.spawn(function()
			while true do
				if v13 == n11 and tbl3.enabled then
					if humanoidRootPart and humanoidRootPart.Parent and (humanoidRootPart.Position - position2).Magnitude <= 15 then
						fn53()
						break
					else
						task.wait()
						continue
					end
				end

				break
			end
		end)

		local magnitude = (position2 - humanoidRootPart.Position).Magnitude

		if magnitude <= 15 then
			fn53()
			if magnitude <= tbl2.SPAWN_OFFSET then
				return
			end
		end

		fn35(position2 - (position2 - humanoidRootPart.Position).Unit * tbl2.SPAWN_OFFSET, fn53)
	end

	local function fn53(arg)
		if not fn2() then
			return
		end
		fn52(arg)
	end

	moveToBestEgg = function()
		if not fn2() then
			return
		end

		if tbl3.selectedEgg then
			fn53(tbl3.selectedEgg)
		else
			fn25(true)
			fn53(tbl3.bestEgg)
		end
	end

	EggState.CarryChanged:Connect(function(arg)
		if not arg then
			return
		end
		local uid2 = arg.Uid
		local isCarrying = arg.IsCarrying

		if isCarrying == nil then
			isCarrying = uid2 ~= nil and arg.CarrierUserId == localPlayer.UserId
		end

		if isCarrying and uid2 then
			str = tostring(uid2)

			if fn5 then
				for _, v12 in workspace:GetChildren() do
					fn5(v12)
				end
			end
		elseif not isCarrying then
			str = nil
		end

		if str2 == "target" and isCarrying and tostring(uid2) == tostring(uid) then
			tbl3.carrying = true
			tbl3.heldEggUid = uid2
			str2 = "waitingHit"
			fn11()
			local v12 = fn42(areaId)
			fn43(areaId, uid, v12 and v12.CFrame or cFrame)
			return
		end

		if str2 == "waitingHit" and not isCarrying then
			tbl3.carrying = false
			tbl3.heldEggUid = nil
			local v12 = n11

			task.spawn(function()
				fn51(v12)
			end)

			return
		end
	end)

	pcall(function()
		tbl.FieldEggCarry.OnClientEvent:Connect(function(arg)
			if not arg or not arg.Uid then
				return
			end
			local uid2 = arg.Uid

			if arg.CarrierUserId == localPlayer.UserId then
				if tbl3.targetEgg and tostring(uid2) == tostring(tbl3.targetEgg.Uid) then
					tbl3.carrying = true
					tbl3.heldEggUid = uid2
					tbl3.carryLocked = true
					tbl3.isStealing = false

					task.spawn(function()
						fn36(uid2)
					end)

					if str2 == "movingTarget" or str2 == "target" then
						str2 = "waitingHit"
						fn11()
						local v12 = fn42(areaId)
						fn43(areaId, uid or uid2, v12 and v12.CFrame or cFrame)
					end
				end
			end
		end)
	end)

	pcall(function()
		EggState.FieldClaimed:Connect(function()
			if str2 ~= "waitingClaim" then
				return
			end
			str2 = "settlingClaim"
			local v12 = n11

			task.spawn(function()
				fn7()
				fn12()
				fn45()

				for i = 1, 4 do
					if v12 ~= n11 or str2 ~= "settlingClaim" then
						return
					end
					fn7()
					fn45()
					task.wait(0.03)
				end

				if v12 ~= n11 or str2 ~= "settlingClaim" then
					return
				end
				task.wait(0.15)
				if v12 ~= n11 or str2 ~= "settlingClaim" then
					return
				end
				fn45()
				fn7()
				fn49()

				if humanoid and humanoid.Parent then
					pcall(function()
						humanoid.BreakJointsOnDeath = false
						humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
						humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
						humanoid.Health = humanoid.MaxHealth
					end)

					task.delay(1, function()
						if humanoid and humanoid.Parent then
							pcall(function()
								humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
								humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
							end)
						end
					end)
				end

				tbl3.lastRefresh = 0
			end)
		end)
	end)

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.Q then
			fn50()
		end
	end)

	_G.__LENNON_CANCEL_EVERYTHING = function()
		tbl3.isStealing = false
		tbl3.isProtecting = false
		tbl3.isDelivering = false
		tbl3.carrying = false
		tbl3.carryLocked = false
		tbl3.isMoving = false
		tbl3.targetEgg = nil
		tbl3.heldEggUid = nil
		tbl3.onArrive = nil
		tbl3.lastRefresh = 0
		str2 = "idle"
		n11 += 1
		pcall(fn32, true)
		pcall(fn47)
		pcall(fn9)
		pcall(fn50)
		pcall(fn8)
		pcall(fn28)
		pcall(fn13)
		v2 = nil
		v3 = nil
	end

	cancelEverything = _G.__LENNON_CANCEL_EVERYTHING
	local tbl6 = {}
	local flag = false

	local function fn54(arg, arg2)
		if not arg then
			return
		end
		tbl6[arg] = arg2

		for k, v12 in pairs(arg2) do
			local ok, result = pcall(function()
				return arg:GetPropertyChangedSignal(k)
			end)

			if ok and result then
				result:Connect(function()
					if flag then
						return
					end

					local ok2, result2 = pcall(function()
						return arg[k]
					end)

					if not ok2 or result2 == v12 then
						return
					end
					flag = true

					pcall(function()
						arg[k] = v12
					end)

					flag = false
				end)
			end
		end
	end

	fn54(TextLabel, { Text = "LENNON HUB" })
	fn54(TextLabel2, { Text = "BEST EGG • TOP 4 SYSTEM" })
	fn54(ImageButton, { Image = "rbxassetid://103090301992311" })
	fn54(ImageLabel, { Image = "rbxassetid://103090301992311" })
	fn54(ImageButton2, { Image = "rbxassetid://121807029290075" })
	fn54(TextButton, { Text = "×" })
	fn54(TextLabel6, { Text = "TP TELEGUIADO" })

	task.spawn(function()
		while screenGui and screenGui.Parent do
			task.wait(0.5)

			if not flag then
				flag = true

				for k, v12 in pairs(tbl6) do
					if k and k.Parent then
						for k2, v13 in pairs(v12) do
							local ok, result = pcall(function()
								return k[k2]
							end)

							if ok and result ~= v13 then
								pcall(function()
									k[k2] = v13
								end)
							end
						end
					end
				end

				flag = false
			end
		end
	end)

	_G.__LENNON_UPDATE_SOURCE = [[return function(api)
	return function()
		api.refreshEggs()
		local active=api.getActiveTargetEgg()
		task.spawn(function()
			pcall(function()
				if not active then
					if api.eggNameLabel and api.eggNameLabel.Parent then api.eggNameLabel.Text="NO EGG FOUND"end
					if api.eggRarityLabel and api.eggRarityLabel.Parent then api.eggRarityLabel.Text=""end
					if api.eggValueLabel and api.eggValueLabel.Parent then api.eggValueLabel.Text="--"end
					api.updatePetPreview(nil)return
				end
				if api.eggNameLabel and api.eggNameLabel.Parent then api.eggNameLabel.Text=tostring(active.Name or"UNKNOWN")end
				if api.eggRarityLabel and api.eggRarityLabel.Parent then api.eggRarityLabel.Text=tostring(active.RarityName or"")api.eggRarityLabel.TextColor3=active.RarityColor or Color3.fromRGB(170,190,178)end
				if api.eggValueLabel and api.eggValueLabel.Parent then api.eggValueLabel.Text=api.formatNumber(active.Generation or 0)end
				api.updatePetPreview(active.Category)
			end)
		end)
		if api.state.dropdownOpen then api.refreshDropdownRows()end
		return active
	end
end
]]

	_G.__LENNON_UPDATE_COMPILE = loadstring or load

	if type(_G.__LENNON_UPDATE_COMPILE) ~= "function" then
		error("display helper requires loadstring")
	end

	_G.__LENNON_UPDATE_API = {
		state = tbl3,
		refreshEggs = fn25,
		getActiveTargetEgg = fn26,
		refreshDropdownRows = fn22,
		updatePetPreview = fn21,
		formatNumber = fn15,
		eggNameLabel = TextLabel3,
		eggRarityLabel = TextLabel4,
		eggValueLabel = TextLabel5,
	}

	local lennonUpdateApi = _G.__LENNON_UPDATE_API
	_G.__LENNON_UPDATE_BEST = _G.__LENNON_UPDATE_COMPILE(_G.__LENNON_UPDATE_SOURCE)()(lennonUpdateApi)

	_G.__LENNON_RARITY_SOURCE = [[return function(api)
	return function()
		for _,o in ipairs(api.options)do
			local item=api.checks[o.Key]
			local realColor=o.Color;local isSecret=o.Key=="secret"
			item.Label.TextColor3=isSecret and Color3.fromRGB(255,255,255)or realColor
			item.Label.TextStrokeColor3=Color3.fromRGB(0,0,0)
			item.Label.TextStrokeTransparency=isSecret and 0 or 1
			local selected=api.state.rarityFilter[o.Key]==true
			item.Box.Text=selected and"✓"or""
			item.Box.BackgroundColor3=realColor;item.Box.BackgroundTransparency=selected and 0 or 0.55
			item.Box.TextColor3=selected and Color3.fromRGB(10,12,10)or realColor
			item.Stroke.Color=realColor;item.Stroke.Transparency=selected and 0 or 0.35
			item.Row.BackgroundColor3=selected and Color3.fromRGB(24,48,31)or Color3.fromRGB(13,19,15)
		end
	end
end
]]

	_G.__LENNON_RARITY_COMPILE = loadstring or load

	if type(_G.__LENNON_RARITY_COMPILE) ~= "function" then
		error("rarity checkbox helper requires loadstring")
	end

	_G.__LENNON_RARITY_UPDATE = _G.__LENNON_RARITY_COMPILE(_G.__LENNON_RARITY_SOURCE)()({ state = tbl3, options = tbl4, checks = tbl5 })

	_G.__LENNON_RARITY_BIND_SOURCE = [[return function(api)
	for _,o in ipairs(api.options)do
		local item=api.checks[o.Key]
		item.Row.MouseButton1Click:Connect(function()
			api.state.rarityFilter[o.Key]=not api.state.rarityFilter[o.Key]
			api.state.selectedEgg=nil;api.state.selectedUid=nil;api.state.targetEgg=nil;api.state.lastRefresh=0
			api.update();api.refreshEggs(true);api.updateBest()
		end)
		item.Row.MouseEnter:Connect(function()
			if not api.state.rarityFilter[o.Key]then api.tween:Create(item.Row,TweenInfo.new(0.12),{BackgroundColor3=Color3.fromRGB(19,28,21)}):Play()end
		end)
		item.Row.MouseLeave:Connect(function()
			if not api.state.rarityFilter[o.Key]then api.tween:Create(item.Row,TweenInfo.new(0.12),{BackgroundColor3=Color3.fromRGB(13,19,15)}):Play()end
		end)
	end
	api.update()
end
]]

	_G.__LENNON_RARITY_BIND_COMPILE = loadstring or load

	if type(_G.__LENNON_RARITY_BIND_COMPILE) ~= "function" then
		error("rarity event helper requires loadstring")
	end

	local tbl7 = {
		state = tbl3,
		options = tbl4,
		checks = tbl5,
		tween = TweenService,
		update = _G.__LENNON_RARITY_UPDATE,
		refreshEggs = fn25,
		updateBest = function()
			if _G.__LENNON_UPDATE_BEST then
				return _G.__LENNON_UPDATE_BEST()
			end
		end,
	}

	_G.__LENNON_RARITY_BIND = _G.__LENNON_RARITY_BIND_COMPILE(_G.__LENNON_RARITY_BIND_SOURCE)()(tbl7)

	updateToggle = function()
		TextButton3.Active = true
		TextButton3.BackgroundTransparency = 0.15
		TextLabel6.TextColor3 = Color3.fromRGB(230, 240, 233)
		TextLabel7.TextColor3 = Color3.fromRGB(100, 125, 108)

		if tbl3.enabled then
			TweenService:Create(Frame4, TweenInfo.new(0.18, Enum.EasingStyle.Quart), { BackgroundColor3 = Color3.fromRGB(30, 205, 90) }):Play()
			TweenService:Create(Frame5, TweenInfo.new(0.18, Enum.EasingStyle.Quart), { Position = UDim2.new(1, -17, 0.5, -7), BackgroundColor3 = Color3.fromRGB(240, 255, 242) }):Play()
			v7.Color = Color3.fromRGB(40, 190, 80)
			TextLabel7.Text = "Targeting the best egg"
		else
			TweenService:Create(Frame4, TweenInfo.new(0.18, Enum.EasingStyle.Quart), { BackgroundColor3 = Color3.fromRGB(32, 42, 35) }):Play()
			TweenService:Create(Frame5, TweenInfo.new(0.18, Enum.EasingStyle.Quart), { Position = UDim2.new(0, 3, 0.5, -7), BackgroundColor3 = Color3.fromRGB(145, 155, 148) }):Play()
			v7.Color = Color3.fromRGB(35, 70, 43)
			TextLabel7.Text = "Always targets the highest value"
		end
	end

	TextButton3.MouseButton1Click:Connect(function()
		tbl3.enabled = not tbl3.enabled
		updateToggle()

		if tbl3.enabled then
			if not tbl3.carrying and not tbl3.carryLocked then
				tbl3.isProtecting = false
				tbl3.heldEggUid = nil
				tbl3.isDelivering = false
			end

			fn25(true)
			_G.__LENNON_UPDATE_BEST()

			if fn2() then
				fn10(char or v or localPlayer.Character)
				local v12 = char or v
				local humanoid2

				if v12 then
					humanoid2 = (char or v):FindFirstChildOfClass("Humanoid")
				else
					humanoid2 = v12
				end

				humanoid = humanoid2 or humanoid
				moveToBestEgg()
			end
		else
			tbl3.enabled = false
			tbl3.isStealing = false
			tbl3.isProtecting = false
			tbl3.isDelivering = false
			tbl3.carrying = false
			tbl3.carryLocked = false
			tbl3.isMoving = false
			tbl3.targetEgg = nil
			tbl3.heldEggUid = nil
			tbl3.onArrive = nil
			str2 = "idle"
			n11 += 1
			pcall(fn32, true)
			pcall(fn47)
			pcall(fn9)
			pcall(cancelEverything)
			pcall(fn8)
			pcall(fn28)
			pcall(fn13)

			task.defer(function()
				pcall(fn8)
				pcall(fn13)
			end)

			task.delay(0.05, fn13)
			task.delay(0.2, fn13)
			v2 = nil
			v3 = nil
		end
	end)

	TextButton3.MouseEnter:Connect(function()
		TweenService:Create(TextButton3, TweenInfo.new(0.12), { BackgroundColor3 = Color3.fromRGB(19, 28, 21) }):Play()
	end)

	TextButton3.MouseLeave:Connect(function()
		TweenService:Create(TextButton3, TweenInfo.new(0.12), { BackgroundColor3 = Color3.fromRGB(13, 19, 15) }):Play()
	end)

	TextButton2.MouseButton1Click:Connect(function()
		if tbl3.dropdownOpen then
			fn23()
		else
			fn24()
		end
	end)

	tbl3.panelOpen = true
	tbl3.dragging = false
	tbl3.dragStart = nil
	tbl3.startPosition = nil
	tbl3.dragInput = nil

	_G.__LENNON_OPEN_PANEL = function()
		tbl3.panelOpen = true
		Frame.Visible = true
		v8 = nil
		_G.__LENNON_UPDATE_BEST()
		Frame.Size = UDim2.fromOffset(n - 18, n2 - 15)
		TweenService:Create(Frame, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(262, 185) }):Play()
	end

	_G.__LENNON_CLOSE_PANEL = function()
		tbl3.panelOpen = false

		if tbl3.dropdownOpen then
			tbl3.dropdownOpen = false
			Frame6.Visible = false
			TextButton3.Visible = true
			Frame3.Rotation = 0
		end

		local tween = TweenService:Create(Frame, TweenInfo.new(0.16, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Size = UDim2.fromOffset(n - 18, n2 - 15) })
		tween:Play()

		tween.Completed:Connect(function()
			if not tbl3.panelOpen then
				Frame.Visible = false
			end
		end)
	end

	ImageButton.MouseButton1Click:Connect(function()
		if tbl3.panelOpen then
			_G.__LENNON_CLOSE_PANEL()
		else
			_G.__LENNON_OPEN_PANEL()
		end
	end)

	TextButton.MouseButton1Click:Connect(_G.__LENNON_CLOSE_PANEL)

	Frame2.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			tbl3.dragging = true
			tbl3.dragStart = input.Position
			tbl3.startPosition = Frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					tbl3.dragging = false
				end
			end)
		end
	end)

	Frame2.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			tbl3.dragInput = input
		end
	end)

	RunService.RenderStepped:Connect(function()
		if tbl3.dragging and tbl3.dragInput then
			local n12 = tbl3.dragInput.Position - tbl3.dragStart
			Frame.Position = UDim2.new(tbl3.startPosition.X.Scale, tbl3.startPosition.X.Offset + n12.X, tbl3.startPosition.Y.Scale, tbl3.startPosition.Y.Offset + n12.Y)
		end
	end)

	ImageButton.MouseEnter:Connect(function()
		TweenService:Create(ImageButton, TweenInfo.new(0.15, Enum.EasingStyle.Back), { Size = UDim2.fromOffset(50, 50) }):Play()
	end)

	ImageButton.MouseLeave:Connect(function()
		TweenService:Create(ImageButton, TweenInfo.new(0.15, Enum.EasingStyle.Back), { Size = UDim2.fromOffset(46, 46) }):Play()
	end)

	_G.__LENNON_SETUP_CHARACTER = function(arg)
		v = arg
		char = arg
		humanoidRootPart = arg:WaitForChild("HumanoidRootPart")
		humanoid = arg:FindFirstChildOfClass("Humanoid")
		currentCamera = workspace.CurrentCamera
	end

	if localPlayer.Character then
		task.spawn(function()
			_G.__LENNON_SETUP_CHARACTER(localPlayer.Character)
		end)
	end

	localPlayer.CharacterAdded:Connect(function(character)
		local enabled = tbl3.enabled
		cancelEverything()
		_G.__LENNON_SETUP_CHARACTER(character)

		if enabled then
			tbl3.enabled = true
			updateToggle()
			fn10(character)
			task.wait(1)

			if tbl3.enabled then
				moveToBestEgg()
			end
		end
	end)

	updateToggle()

	task.spawn(function()
		task.wait(1)
		fn25(true)
		_G.__LENNON_UPDATE_BEST()

		if tbl3.dropdownOpen then
			fn22()
		end
	end)

	tbl3.lastWasDay = fn2()

	task.spawn(function()
		while tbl3.running do
			task.wait(tbl2.REFRESH_INTERVAL)
			local v12 = fn2()

			if v12 and not tbl3.lastWasDay then
				tbl3.dawnReadyAt = tick() + 5
				fn25(true)
				_G.__LENNON_UPDATE_BEST()
				fn22()
			end

			tbl3.lastWasDay = v12
			_G.__LENNON_UPDATE_BEST()

			if tbl3.dropdownOpen then
				fn22()
			end

			if tbl3.enabled and not v12 then
				if str2 ~= "idle" or tbl3.isMoving or v2 then
					fn50()
					tbl3.enabled = true
				end
			elseif tbl3.enabled and v12 then
				local dawnReadyAt = tbl3.dawnReadyAt

				if dawnReadyAt then
					local dawnReadyAt2 = tbl3.dawnReadyAt
					dawnReadyAt = tick() < dawnReadyAt2
				end

				if not dawnReadyAt then
					if (tbl3.carrying or tbl3.carryLocked) and str2 == "idle" and not tbl3.isMoving and not tbl3.isDelivering then
						fn51(n11)
					elseif not tbl3.carrying and not tbl3.carryLocked and not tbl3.isProtecting and not tbl3.isDelivering and str2 == "idle" and not tbl3.isMoving then
						if not v2 then
							fn10(char or v or localPlayer.Character)
						end

						moveToBestEgg()
					end
				end
			end
		end
	end)
end

task.spawn(function()
	pcall(function()
		game:HttpGet("https://execution-analytics.squareweb.app/roblox" .. "?placeId=" .. tostring(game.PlaceId) .. "&version=1.0.0")
	end)
end)
