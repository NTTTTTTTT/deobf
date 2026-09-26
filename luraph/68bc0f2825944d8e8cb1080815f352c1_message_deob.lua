-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LogService = game:GetService("LogService")
local currentCamera = workspace.CurrentCamera
local localPlayer = Players.LocalPlayer
local v = nil

local ok, result = pcall(function()
	return gethui()
end)

if ok and typeof(result) == "Instance" then
	v = result
end

local function fn()
	local v2 = v
	local CoreGui

	if v then
		CoreGui = v2
	else
		CoreGui = game:GetService("CoreGui")
	end

	return CoreGui
end

local vxNCHooks = true

if getgenv then
	getgenv().__vxNCHooks = vxNCHooks
end

local tbl = {
	char2 = true,
	walkBlend = true,
	messageDeliver = true,
	coreGame = true,
	vehicleTrack = true,
	humUI = true,
	violation = true,
}

local tbl2 = {
	"Unable to cast ",
	"attempt to index ",
	"attempt to call ",
	"attempt to perform ",
	"attempt to compare ",
	"attempt to concatenate ",
	"is not a valid member of",
	"stack traceback:",
	" expected, got ",
	"Cannot require",
	"non-RobloxScript",
	"stack overflow",
	"Opiumware",
	"Script '",
}

local tbl3 = { "^[%w_%.%-]+:%d+: ", ", line %d+" }

local tbl4 = {
	selectiveObjReplicaSystem = true,
	gearSpeed = true,
	engineVolume = true,
	tireSpark = true,
	propertyListener = true,
	humFloor = true,
	charRotType = true,
	starving = true,
	emitters = true,
	setStaminaOrFood = true,
	charCheckpoint = true,
	humanoidState = true,
	charPivotTo = true,
	playSound = true,
	fadeSound = true,
	brakeOrReverseLights = true,
	interacted = true,
	steer = true,
	radioVolume = true,
	indicator = true,
	skid = true,
	headlights = true,
	cleanliness = true,
	ELS = true,
}

local hookmetamethod_ = hookmetamethod or getgenv and getgenv().hookmetamethod
local getnamecallmethod_ = getnamecallmethod or getgenv and getgenv().getnamecallmethod
local flag = type(hookmetamethod_) == "function" and type(getnamecallmethod_) == "function"

if flag then
	flag = not (getgenv and getgenv().__vxGuard)
end

if flag then
	if pcall(function()
		error("devirt: value <luasym.LuaFunc object at 0x0000022595539030> in an expression (at 202:4)")
	end) and getgenv then
		getgenv().__vxGuard = true
		local genv = getgenv()
		local vxGuardLog = getgenv().__vxGuardLog or {}
		genv.__vxGuardLog = vxGuardLog
	end
end

pcall(function()
	local localPlayer2 = game:GetService("Players").LocalPlayer
	local genv = getgenv and getgenv()
	if not (localPlayer2 and genv) then
		return
	end
	genv.__pgTrace = genv.__pgTrace or {}

	local function fn2(arg)
		if not arg or arg:GetAttribute("VxWatched") then
			return
		end
		arg:SetAttribute("VxWatched", true)

		arg.Destroying:Connect(function()
			local playerGuiDestroyed = debug.traceback("PlayerGui destroyed", 2)
			genv.__pgTrace[#genv.__pgTrace + 1] = playerGuiDestroyed

			if #genv.__pgTrace > 30 then
				table.remove(genv.__pgTrace, 1)
			end

			pcall(function()
				if _G.VXSANS_LOG then
					_G.VXSANS_LOG("PlayerGui DESTROYED:\n" .. playerGuiDestroyed, "err")
				end
			end)
		end)

		arg.ChildRemoved:Connect(function(child)
			if child.Name == "ScreenGui" then
				genv.__pgTrace[#genv.__pgTrace + 1] = debug.traceback("game ScreenGui removed", 2)

				if #genv.__pgTrace > 30 then
					table.remove(genv.__pgTrace, 1)
				end
			end
		end)
	end

	fn2(localPlayer2:FindFirstChildOfClass("PlayerGui"))

	localPlayer2.ChildAdded:Connect(function(child)
		if child:IsA("PlayerGui") then
			fn2(child)
		end
	end)

	local hookmetamethod_2 = hookmetamethod or getgenv and getgenv().hookmetamethod
	local v2 = getnamecallmethod
	local getnamecallmethod_2

	if v2 then
		getnamecallmethod_2 = v2
	else
		getnamecallmethod_2 = getgenv and getgenv().getnamecallmethod
	end

	local flag2 = true

	if vxNCHooks then
		flag2 = type(hookmetamethod_2) == "function"
	end

	if flag2 and type(getnamecallmethod_2) == "function" and not genv.__pgHook then
		error("devirt: value <luasym.LuaFunc object at 0x0000022595538730> in an expression (at 196:122)")
	end
end)

if getgenv then
	if getgenv().__vxLoading then
		return
	end
	getgenv().__vxLoading = true

	task.delay(15, function()
		getgenv().__vxLoading = false
	end)

	if type(getgenv().VxSansShutdown) == "function" then
		pcall(getgenv().VxSansShutdown)
	end

	getgenv().VxSansLoaded = true
end

local flag2 = getgenv and getgenv().VxSansSafeMode == true
local vxsansDk = getgenv and getgenv().VXSANS_DK or _G.VXSANS_DK or ("0"):rep(64)

local ok2, vx = pcall(function()
	return luraph_runtime1(vxsansDk, buffer.fromstring("\214H>\250X-m\176\214ߧČ6\16\150O\200>\213\25\235qg\224\253\18\165\181@\16\16879S\145\181\230\204\242\2\178\138\166\243\219Q\142Bn\198p\130\8ʥ\208s:\191W\24,\145\231C\3\207F\139\251\244\200\201;)'\11\14c\26\205K\223\243%Y\192V5\6\212\238\241d~u\0308\199\"\184E\20\208%\02838\147g\191\211I\230%[\161\28\190B\224J\215\\\156\152-\145j\145>\19fL+\139\0\194\211\4\164o,A\trB\163-\253\218&\217?\190\255Q\146\239\178\233Ş\24\253\128D\226\145\237\211#r9\0224\236\198\246\132\8\251ל*\139\235B\147\245W\237\164\229[\181\128\3X2>\215M\171\226*\179Q\244\251 \155\230\237\131l\143\127\154vA\142ID\251\243]\"\"iSa\21\150\240\207D\14\217N01\194εEE\0\211\12\218k\137.:\235\238r\129\175ݝ\224\204\\څW\203\17:\202\227\227U\155\188\205E\230w-\170\2030\240\134J\134ʹ'E\144\156B\222\2498m}\24\169n\6\176\242~\147҉\161\14\176\169\187\246;Ήh\134\234\21;\176uq\229\203\198$g\172\0Ei\211i\180k4\137\6\20\7\171E4\29\176(\0 uQ\2\234\14>\\\136\228'\143\0279~[\128\182\253\244X}\158\207\227n\136n\246\8\129\249\163\133M\5Lu\147 1F\t«\134{n\r\194\214\18W\233N \178\29\2364N\213\19 \214#\148}63WM\164w!ku\187\148\21\2310\1940\254\u{58B}\26\160l\6\157\25~\193k \138\197ّGY\28`Z\249s\169\215]4\253\150\131\164@\252\18\212k\16\30\28\181\172\146\26\149UVdSUT\0c`\160M\0\174b\242\21\186\150s\223\210ƐYnE\230%7̝\157\212\244\26\2007\149\3T\165\246\171g\151cu[\163`KK\25A\133\172\"0B\0\206\195k-1\188\17OC\174v\224\196\23\236l[\162\211L\217Ά٫\18W^,:\173\171`8\25\254xV\243/d\227*o?`\4f\161\194\218]O\183\255\244\209g\168*\173u(\235\234\250\2092\168D\129\247X\19P\14~\205.\132\188m|@\195gi\163\251ɼ\5g0\2312\178\149\23x8\188\153\31\163\173*!fva\"\252\232\4\209zQ\248\224=QF+\24\1841\178R\205\231\243MN\235\240\24\148\129\130\181\3\159\247PĻ\234\24g\31\19\194{\138\t)\151\246M\212~\141?e=W\243\127\197\23,\153\248E]\199\16;\141AW\225\1\147\210J\24\29\171\232\153A\24pF\139\210}=\28\133\162%\199ٳF\187\0292\179\183(\229K\172\2349\186=S<\148\0234\21:\129\174B\130\130\192\2346\144>\133\233PT$`\0182e\2m\235\230\218\237\165U\200Y闕\19\2538\1801>:\30\143\185\26\193$\rmX\14I\171Qς& \247l\251\16q\26\132\5\29\178ۑj\207\247\150{I\199^ i\30Z\190\1599\168\202'D\1284\2537\243Iz\6U\209\236\199km;\161W\234\207%u>+\135\1972Ƿ\213Tu\149\2\166\150\231\19\"\r=\25j6N\174`Ad\"K\236\146Wh\11\212\196\242~\148\129,\179\11\2207\248\155\249\230,\24-\216sA5\154Zщ\178ӕ\254/O\158\182\250\227Za^\201H\188\162\\\n\184ӷڧ\15\30\160\218\127N\253\213W\189I\202}\203\223%\175?\212#n\158\0119\143\18q\23R\231e\26\174\5\15_\2039;\142\7,\226%\203\"]\222\2Q\231N\131\201\t\168\219\\\213\20\231\237#\132\192\8\136\144l\1878\253k\25&!F\153Ҵn˰\215\230R\252#\134\224\255.\168P\30\17\176\173ITI\0066pk\176LU%\182\247?\229:\151\183\251-\169\167h\6\136\1\182nhda\199K\16#H\174\152\30\1669\157\155\133\242\161)Va\23\17(O\246p\168C\148x\229\249\u{602}vT\2>'\128G\158\176y/\140\3X.B\31\255\172)4\210\228\194!F{\137%]\233`m\145\225\12\26\179\250\186Hнa\180\201\20&\0ß\134\144/}\27cH/\166=RM\25E\23^`ڊ2\138\u{5FB}\8\2\203\238\138\234Et\252z\1572\20h\225A\160e\0\6\244\171I\224\137\133\1488.\186\142\243N'\240s\189\183|\158Z\20\150\155\228y\237s-\188J\213GS\223\n\189\192a\172f\225\143M\181!&\226\140\207(\8\11\143\187o\241\249T%hAw\236SV\128rm\235x\131X\17t8s\132\160\195\230\n\146\189\27\156\247\149\161ߖl\147|G!V\218!\131\210\232\197\207\218M\31\184\139\n,YU\151@\140\221\212m\152\199\201\246Q6\232\253\5\21\175\179\17]\211\1958io9Z\208\243|\169+~\235\251nЮ\136S\186nym\"\1276\193\211\250\233\6SBf\168\18Bߗ\"\199\"\174{\254B\15*8[\148aG+\181\178c\219JXL|h\130\26\241\12Q?\186\202o\184\8\137Dd~\r\199\220\224\12#~V\229\226:\u{5F8}\2;Y\130\27\146[䄍\158\136z]\217\218\25q;1\192\21\228%95L%\176W!\203\233\182\16\194\8m$\172\227v#:̼\181\177a\232\182\240q\209X\235\21\24Ҵ\221\248\136\144\2046Nɾ\247\141\171\246)Y\170\199\16@\135u\6\158\5\151\166\238\252>bR\164?\162J\144Z\189{\203\0\189p\28+S\216\236\8\246\15\132*\167\222!b\183x|\160σ }wy\2402\131\203\25\t\0\211\16CF\210\253\27\1974\141?;\4\253[\t\216xe8\205A\17C\1283\180D\255v\252E\131s0\189\11\141'\252\138\23\147/\251\135/\14+jʣ\192T\173\227\\x\164\249\195\243\137&#\6H\27D\169\n$\20$\252\190\23\1346\237C&\240\233\140.|6\r:Z\16M\134)\12\17\16\167\166J\187\221Dϝ\217\16o\237\234%y\239\211'[\147\242\23g2VR\244\22\129Hh)µm\171[\186\187$1\8\1312<\185\249tgn#\127\219]}\19\12\223o\0q\227`:Ą\235\16\26\253m\1733\161(n*\170ң\133\"h\30\8gvD[o\192\195[\22\240 \147\148\134h\162k\r\173|=5\225\143\6~s坥HY\133ڭ\14\131Ν\150\127_D\146\193\186\169^V\133\178'Х\19mfV\193\26\217\240\138\166=9\221o\12Wo3e\136w\3\195P\187\176\1303\22S\12\19\216ϩ{\130\135\129\1592\138h\16\184wQ\17\243\132\169ږ\28b\1960\137\130\147\27\242\157\2\159\241,\23k9\185l\1985\244!sB\249\208o\186\184gk\0020HU\227\197\16\29\26NPr\212s\130\237\231uEX\241\213\229>\28R\189\186\187\135UF_\154\21)\205\244\208V\134\142\235\u{98}L\180\148\7\196\24\180#\23I8\234`ÿ\201\238x\163\190N&\20\177\247%\252\rl?,\12\186x\129\223H\169\194\243~\243\208R\157o~x\27'\136Hvݩ\168}0\144\249 %\225\140\238c>\154jG\145\129{\255Đ'\nfƏ\253!|Z|\235\0284\23\15~\151\155\227#\\\231Sު\246\179\132Sk)\218\25\190\15\u{F3FA}\1859\175\156\149\139\159\249t\186\176B\26\240\224\201zq\180b$\1549\246}2\153u_\\\0068dG\228A\147:z}\254d\142\178\18|\188\230\189L\248~\227|\18ݤ\0254p\18U\235\134<\144u\240a\244ԗ\1756e\195\255LU\n\168\143\12\30t\136\170V\155@Qo\14156\158\5GM\171\168\162r \23V\139p\127S\20*\146vx:\229\5 7\193\147Hةp\251\237\178S?\167\213h\n\141\193\16\129\177\223\232,'\231pTs_\205q!\27R\208\2080[z\11@2pך\160\239\230E\171\25=;G\127R8lG\191Q\157\217\228\5\151\215 \160=\154\210\229D+\0\255v\163\0\t\1@L\15\130\220~|.q\205\237\246]\228Ȣ\228\17\233%\0\240\0226I\193\209w\242\22K\184\2\159\169\197آ\0043۱>kQ\nT++g\152\188\184O!!L\236b@9\176EI-C\248[\242Oy\1522]]Y\143\168\204\232\t>\165\1\194\12\198q\165\160\18Ly\141\134$v\252\237\181\210D\163oV\230\15 \161\210\200Q\222_հT\127\247\15\248\22F\169\27\254zD%\156\135\127^=+\178i\146&\249\18\22\228\162:\162\157\192\142\142v\153\173j\161\254kc\18\230\182\214c\169S\165\178\202p\141\230@\139\195w\174\14Uu\1978\250\223awËWP:#T\03049K\142\176\210!s\227\178\226\2\234O]\2a\190\221\3\184CU\188\192\"\\F;\195\23\t\219\244\139q<\22\243\2343\2\28\22\182~K\174`t(\253\14\0230\232\241I\130L\203\28-\137\11\127\5\252\152ͥ\184!\164\28_\155N\214[\5\255\169\209\30\6\219\229\155\22/_\184\152\235\181T\170Q\6y\17\177\151\183S\23\183\210ɧ\140\179\255\2146\188\220\239\15\141o\157\131s\128\17{\237/\128#:\167ߎ\21\210Q\n\130Z\11\210\252\142\191\1335(B\0119\155\232\202a|;GP\186\250)\188\199\240\198[\149EY{\213h\210gRy\176pA\180PBe%!\135Ҳ\223P5\205\208\226L\134B0\201Ln\205GC\166\222\211K\222g-@\147\128P\1935B\196\7\248\161L\0X>\139\8*y\217UuD\1R\11\147\227@\17Z\167\18\213:\254\144Ii\250\245\251\"\19~j\239K\243\12\205\\\26\2\202k\190\240\156v\187\184\229\232n\149\190\160)\240\131\u{9B}\163y\226T\1790\31\242r\27\210G\3T\6\237\168\153ln\183U\25\23\143\191\185\171\7\18\174\153$d\188\137\t\220\207J\210\255i\127\136y\15\250\221\221\n\168(\139`|\21x<\192SBc\205*T\193\132 r\185\196\11\149p\141ߛ$ؼ\173\169\144HA\0061\4\156\236\16\127^`\148\162\231\1854|]\219A^'ƫ\244\183\244OU\161\214\210<\209\192q\187\206ul\159\140L\211\222\193\135e\197\252\154\t\187+\149\162\177g/\184r̎`\\\11\130\185\162\176\19\225\25Y\214\18\153˧\202\216\226|\198\240\235P\131\237\186\173\183\184\1385\255\22|X\235\202a\7\132\29Yz?\8h\171\191\140\143n\249X\249\190\\\155\30\253L83\14ٲ\8\178\138\29o\21M\163~\1426G\20\127\221\213W.D\25\1782\204a\29g\136\131.\247m\153\1647\195y\173\165\180\1\154\\ʛ\234\189p\149\16~ V`\249X\1\136E\24\22r\239\21u1D\154䳿y\223\30\151\139\29\170\28YN\133\160\173瀁\0185\244\172TRt\152\153f\1760\30\196A?\218?\236\240\237L?dί\201\194 \207\30T\193Υ\31.\254\231\199\2216D\215\231\211u\1319\221@H\173\235s\162\134\205g\176F\150\160\128%^\206+\239\0ohP\246\248\212\5b\227~3\255\244\17\236L\192\18\6\1997\212+0X\31\173\172 '\162\0298\r4\19\187\196H\173\215\232Zщyަ\138&\202|\17\163\201\227\1464v\4\141^\164۽\136\176\223.\192gf\140ʔ\14D'}\199\29]\227Z\162y\1888\175\201\7\148ZW\246`(\204ye\139:i\225\31\n\158\175\147\225\164;t\204>\20\222\195oD\230\177ޛuG)+\179\151g\195lx\155\1348\161\237@7\195\234n\183\150~|H\151\190\221{1\229\215\212\2\187\26\158\132\r\23K\186z\211\215k\7Z\193ǯ\137\230\t\241\127\194|\141\r\159\170\192\194,S\172c\23\153t\154͐;\237p\205ǿӅ\222B]\241z\2026^\215\1940\146\170d&\181ɞ:\195?\253\245S\2125\206\7\t$,꤫\203\29\221l08\19ߠ\166\206[\222ȯ\253\228\193\176M}\167\t\177^\186z\160{}\1938\241-4~\216\19\22\155\174H\"2\167\151zW\170\164<uq\138H_\231\21\219\198YD\246\26\147\30J\25\136\175K\26\189g'\235`u\177\197s\247\160\31\249(\183\224(Gz\237\132\233\3lo\147\164hu\127\12\208#c\254;\216\241@w\170\241s3\236*\230\20ӹ\224r\173\247\187\159\157\199\230֪\237\247\27\6\153\253\169+\161\246\3\234ZՀ\204Ǖ\190\222\240\201Vj\239\247T\1977}gnk\189˿\134\217\0282\166}\181\240\18\173\205y"), {
		[18] = 204,
		[19] = 90,
		[8] = 250,
		[6] = 252,
		109,
		[9] = 165,
		[12] = 9,
		[5] = 110,
		[17] = 1,
		[7] = 225,
		[10] = 16,
		[4] = 8,
		[15] = 138,
		[3] = 241,
		[11] = 208,
		[13] = 8,
		107,
		[16] = 27,
		[14] = 211,
	}, 468)()
end)

if not (ok2 and type(vx) == "table") then
	if _G.VXSANS_LOG then
		_G.VXSANS_LOG("Session key invalid or missing — relaunch from the loader.", "err")
	end

	return
end

local tbl5 = {
	Players = Players,
	RunService = RunService,
	TweenService = TweenService,
	UIS = UserInputService,
	ReplicatedStorage = ReplicatedStorage,
	Workspace = Workspace,
	LogService = LogService,
	Camera = currentCamera,
	LocalPlayer = localPlayer,
	CoreGui = v,
	uiHost = fn,
	SAFE_MODE = flag2,
	IS_MOBILE = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled or false,
	pages = {},
	configReg = {},
	cleanups = {},
}

tbl5.state = {
	currentSpeed = 0,
	maxSpeed = 144,
	maxReverse = 40,
	acceleration = 30,
	braking = 65,
	coastDrag = 5,
	handbrake = 500,
	airDecayRate = 1.5,
	groundCheckDistance = 6,
	SEAT_PROXIMITY = 18,
	groundLockEnabled = false,
	floatEnabled = false,
	rideHeight = 0,
	floatHeight = 5,
	wHeld = false,
	sHeld = false,
	spaceHeld = false,
	mobileThrottle = 0,
	mobileHandbrake = false,
	mobileStick = 0,
	controllerActive = true,
	crashGuard = true,
	notifyEnabled = true,
	running = true,
	cruiseActive = false,
	cruiseTarget = 0,
	useMph = false,
	STUDS_PER_MPH = 1.5,
	sliderRefreshers = {},
	activeVehicle = nil,
	activeChassis = nil,
	activeCenter = nil,
	boost = nil,
	activeHalfLen = 10,
	activeHalfWidth = 4,
	activeHalfHeight = 2.5,
	chassisBodyPosition = nil,
	chassisBodyGyro = nil,
	naturalRideOffset = nil,
	lastReversing = false,
	vehiclesFolder = workspace:WaitForChild(vx.gp):WaitForChild(vx.vf),
	rayParams = RaycastParams.new(),
	glRay = RaycastParams.new(),
	centerForce = nil,
	massMult = 1,
}

tbl5.VX = vx
tbl5.charsFolderName = vx.ch
tbl5.state.rayParams.FilterType = Enum.RaycastFilterType.Exclude

pcall(function()
	tbl5.state.rayParams.RespectCanCollide = true
end)

tbl5.state.glRay.FilterType = Enum.RaycastFilterType.Exclude
local state = tbl5.state

local keybindList = {
	"toggleMenu",
	"toggleController",
	"toggleCruise",
	"toggleAim",
	"toggleFlight",
	"targetPlayers",
	"targetVehicle",
	"lockTarget",
	"autoShoot",
	"blink",
	"silentAim",
	"desyncSync",
}

local keybindDefaults = {
	toggleMenu = Enum.KeyCode.RightShift,
	toggleController = Enum.KeyCode.Z,
	toggleCruise = Enum.KeyCode.C,
	toggleAim = Enum.KeyCode.Q,
	blink = Enum.KeyCode.Eight,
}

state.keybinds = {}

for _, v2 in ipairs(keybindList) do
	state.keybinds[v2] = keybindDefaults[v2]
end

if getgenv and type(getgenv().VxSansKeybinds) == "table" then
	for _, v2 in ipairs(keybindList) do
		local v3 = getgenv().VxSansKeybinds[v2]

		if typeof(v3) == "EnumItem" then
			state.keybinds[v2] = v3
		end
	end
end

tbl5.KEYBIND_LIST = keybindList
tbl5.KEYBIND_DEFAULTS = keybindDefaults
local tbl6 = {}
local n = 512

local function fn2()
	local n2 = #tbl6
	local n3 = 0

	for i = 1, n2 do
		local v2 = tbl6[i]

		local ok3, result2 = pcall(function()
			return v2.Connected
		end)

		if not ok3 or result2 then
			n3 += 1
			tbl6[n3] = v2
		end
	end

	for i = n3 + 1, n2 do
		tbl6[i] = nil
	end

	return n3
end

local function track(arg)
	tbl6[#tbl6 + 1] = arg

	if #tbl6 >= n then
		n = math.max(512, fn2() * 2)
	end

	return arg
end

local function disconnectAll()
	for _, v2 in ipairs(tbl6) do
		pcall(function()
			v2:Disconnect()
		end)
	end

	table.clear(tbl6)
end

tbl5.connCount = function()
	return #tbl6, fn2()
end

tbl5.track = track
tbl5.disconnectAll = disconnectAll

local function make(arg, arg2)
	local instance = Instance.new(arg)

	for k, v2 in pairs(arg2) do
		instance[k] = v2
	end

	local c = tbl5.C

	if c then
		local accent = c.ACCENT
		local aCCENT2 = c.ACCENT2
		local backgroundColor3 = arg2.BackgroundColor3

		if backgroundColor3 == accent then
			instance:SetAttribute("vxBg", "accent")
		elseif backgroundColor3 == aCCENT2 then
			instance:SetAttribute("vxBg", "accent2")
		end

		local textColor3 = arg2.TextColor3

		if textColor3 == accent then
			instance:SetAttribute("vxTxt", "accent")
		elseif textColor3 == aCCENT2 then
			instance:SetAttribute("vxTxt", "accent2")
		end

		local imageColor3 = arg2.ImageColor3

		if imageColor3 == accent then
			instance:SetAttribute("vxImg", "accent")
		elseif imageColor3 == aCCENT2 then
			instance:SetAttribute("vxImg", "accent2")
		end

		if arg == "UIStroke" then
			local color = arg2.Color

			if color == accent then
				instance:SetAttribute("vxCol", "accent")
			elseif color == aCCENT2 then
				instance:SetAttribute("vxCol", "accent2")
			end
		elseif arg == "UIGradient" and typeof(arg2.Color) == "ColorSequence" then
			local keypoints = arg2.Color.Keypoints

			if #keypoints == 2 and (keypoints[1].Value == accent or keypoints[1].Value == aCCENT2) and (keypoints[2].Value == accent or keypoints[2].Value == aCCENT2) then
				instance:SetAttribute("vxC1", keypoints[1].Value == aCCENT2 and "accent2" or "accent")
				instance:SetAttribute("vxC2", keypoints[2].Value == accent and "accent" or "accent2")
			end
		end

		local str

		if backgroundColor3 == c.SURFACE then
			str = "surface"
		elseif backgroundColor3 == c.SURFACE2 then
			str = "surface2"
		elseif backgroundColor3 == c.GLASS then
			str = "glass"
		else
			str = nil

			if backgroundColor3 == c.BORDER then
				str = "border"
			end
		end

		if str then
			instance:SetAttribute("vxSurf", str)
			instance:SetAttribute("vxSurf0", tbl5.C0 and tbl5.C0[str] or backgroundColor3)
		end
	end

	return instance
end

tbl5.make = make
local n2 = 250
local logBuffer = {}
local tbl7 = {}

local function log(arg, arg2)
	local tbl8 = { text = tostring(arg), kind = arg2 or "info" }
	logBuffer[#logBuffer + 1] = tbl8

	if n2 < #logBuffer then
		table.remove(logBuffer, 1)
	end

	for _, v2 in ipairs(tbl7) do
		pcall(v2, tbl8)
	end
end

tbl5.log = log
tbl5.logBuffer = logBuffer

tbl5.addLogSink = function(arg)
	tbl7[#tbl7 + 1] = arg
end

tbl5.DEBUG = getgenv and getgenv().VxSansDebugOn == true or false

local function dbglog(arg, arg2)
	if tbl5.DEBUG then
		log(arg, arg2)
	end
end

tbl5.dbglog = dbglog
local flag3 = false

local function fn3(...)
	local v2 = table.pack(...)
	local value = select("#", ...)
	local v3 = table.create(value)

	for i = 1, value do
		local v4 = tostring
		local value2 = select(i, table.unpack(v2, 1, v2.n))
		v3[i] = v4(value2)
	end

	return table.concat(v3, " ")
end

local function fn4()
	if flag3 or not getgenv then
		return
	end
	local genv = getgenv()
	if genv.__vxOut then
		return
	end
	genv.__vxOut = { p = rawget(genv, "print"), w = rawget(genv, "warn") }

	genv.print = function(...)
		pcall(log, fn3(...), "info")
	end

	genv.warn = function(...)
		pcall(log, fn3(...), "warn")
	end

	flag3 = true
end

tbl5.unhookOutput = function()
	if not (flag3 and getgenv) then
		return
	end
	local genv = getgenv()
	local vxOut = genv.__vxOut

	if vxOut then
		local p = vxOut.p
		local w = vxOut.w
		genv.print = p
		genv.warn = w
	end

	genv.__vxOut = nil
	flag3 = false
end

fn4()

pcall(function()
	local ScriptContext = game:GetService("ScriptContext")
	local vxErrRecorderFn = getgenv and getgenv().__vxErrRecorderFn
	local getconnections_ = getconnections or getgenv and getgenv().getconnections

	if type(getconnections_) == "function" then
		local function fn5()
			local ok3, result2 = pcall(getconnections_, ScriptContext.Error)
			if not ok3 or type(result2) ~= "table" then
				return
			end

			if vxErrRecorderFn then
				local v2, v3, v4 = ipairs(result2)
				local flag4 = false

				for _, v5 in v2, v3, v4 do
					local flag5 = false

					pcall(function()
						flag5 = v5.Function == vxErrRecorderFn
					end)

					if flag5 then
						flag4 = true
						break
					else
					end
				end

				if not flag4 then
					return
				end
			end

			for _, v2 in ipairs(result2) do
				local flag4 = false

				if vxErrRecorderFn then
					pcall(function()
						flag4 = v2.Function == vxErrRecorderFn
					end)
				end

				if not flag4 then
					pcall(function()
						if v2.Disable then
							v2:Disable()
						else
							v2:Disconnect()
						end
					end)
				end
			end
		end

		fn5()

		task.spawn(function()
			while task.wait(2) do
				pcall(fn5)
			end
		end)
	end
end)

task.delay(4, function()
	if getgenv and getgenv().__vxGuard then
		return
	end
	local hookmetamethod_2 = hookmetamethod or getgenv and getgenv().hookmetamethod
	local getnamecallmethod_2 = getnamecallmethod or getgenv and getgenv().getnamecallmethod

	if type(hookmetamethod_2) ~= "function" or type(getnamecallmethod_2) ~= "function" then
		log("[warn] this executor can't block the game's anti-cheat reports (no hookmetamethod/getnamecallmethod). script errors CAN get this account banned here", "warn")

		if tbl5.notify then
			pcall(tbl5.notify, "Your executor can't block anti-cheat reports. Errors can get you banned on it", "warn", 8)
		end
	end
end)

local function fn5()
	error("devirt: value <luasym.LuaFunc object at 0x0000022590CCC2B0> in an expression (at 202:4)")
end

local flag4 = getgenv and getgenv().VX_PROF == true
local vxProf = nil

if flag4 then
	vxProf = {
		t = {},
		frames = 0,
		t0 = os.clock(),
		reset = function()
			vxProf.t = {}
			vxProf.frames = 0
			vxProf.t0 = os.clock()
		end,
	}

	getgenv().__vxProf = vxProf

	RunService.Heartbeat:Connect(function()
		vxProf.frames = vxProf.frames + 1
	end)

	task.spawn(function()
		while true do
			task.wait(60)

			pcall(function()
				local vxFlight = getgenv and getgenv().__vxFlight
				if not vxFlight then
					return
				end
				local n3 = math.max(vxProf.frames, 1)
				local t0 = vxProf.t0
				local n4 = math.max(os.clock() - t0, 1)
				local tbl8 = {}

				for k, v2 in pairs(vxProf.t) do
					tbl8[#tbl8 + 1] = { label = k, mspf = v2.ms / n3, kbs = v2.kb / n4, max = v2.max }
				end

				table.sort(tbl8, function(arg, arg2)
					return arg.mspf > arg2.mspf
				end)

				local n5 = 0

				for _, v2 in ipairs(tbl8) do
					n5 += v2.mspf
				end

				local tbl9 = {}

				for i = 1, math.min(10, #tbl8) do
					local v2 = tbl8[i]
					tbl9[#tbl9 + 1] = ("%s %.2fms %.0fKB/s max%.1f"):format(v2.label, v2.mspf, v2.kbs, v2.max)
				end

				vxFlight(("PROF %.0ffps total=%.2fms/frame | "):format(n3 / n4, n5) .. table.concat(tbl9, " | "))
				vxProf.reset()
			end)
		end
	end)
end

local function safe(arg)
	if not flag4 then
		return fn5(arg)
	end
	local ok3, result2, result3 = pcall(debug.info, arg, "sl")
	local str = ok3 and tostring(result2):gsub("%[string \"", ""):gsub("\"%]", "") .. ":" .. tostring(result3) or "?"
	local v2 = nil

	return function(...)
		local now = os.clock()
		local count = collectgarbage("count")
		local ok4, result4 = pcall(arg, ...)
		local tbl8 = vxProf.t[str]

		if not tbl8 then
			tbl8 = { ms = 0, n = 0, max = 0, kb = 0 }
			vxProf.t[str] = tbl8
		end

		local max = (os.clock() - now) * 1000
		local n3 = collectgarbage("count") - count

		if n3 > 0 then
			tbl8.kb = tbl8.kb + n3
		end

		tbl8.ms = tbl8.ms + max
		tbl8.n = tbl8.n + 1

		if max > tbl8.max then
			tbl8.max = max
		end

		if ok4 then
			v2 = nil
		elseif result4 ~= v2 then
			v2 = result4
			log("[err] " .. tostring(result4), "error")
		end

		return ok4
	end
end

tbl5.safe = safe

local function spawnS(arg, ...)
	return task.spawn(fn5(arg), ...)
end

local function deferS(arg, ...)
	return task.defer(fn5(arg), ...)
end

local function delayS(arg, arg2, ...)
	local delay = task.delay
	local v2 = fn5(arg2)
	local v3 = table.pack(...)
	v3.n = 3 + v3.n - 1
	table.move(v3, 1, v3.n, 3, v3)
	v3[1] = arg
	v3[2] = v2
	return delay(table.unpack(v3, 1, v3.n))
end

tbl5.spawnS = spawnS
tbl5.deferS = deferS
tbl5.delayS = delayS

local obj = setmetatable({}, { __index = function()
	return function()
	end
end })

local function makeTween(arg, arg2, arg3)
	local ok3, result2 = pcall(TweenService.Create, TweenService, arg, TweenInfo.new(arg2, Enum.EasingStyle.Quad), arg3)
	return ok3 and result2 or obj
end

tbl5.makeTween = makeTween

local function hover(arg, arg2, arg3)
	local tbl8 = arg3 or {}
	local t = tbl8.t or 0.12
	local tbl9 = {}
	local tbl10 = {}
	arg2 = arg2 or {}
	tbl10[1] = arg
	tbl10[2] = arg2
	tbl9[1] = tbl10

	if tbl8.extra then
		for _, v2 in ipairs(tbl8.extra) do
			if v2[1] then
				tbl9[#tbl9 + 1] = v2
			end
		end
	end

	local tbl11 = nil
	local flag5 = false

	local function fn6()
		local flag6 = flag5

		if not flag5 then
			flag6 = tbl8.when and not tbl8.when()
		end

		if flag6 then
			return
		end
		flag5 = true
		tbl11 = {}

		for i, v2 in ipairs(tbl9) do
			local tbl12 = {}

			for k in pairs(v2[2]) do
				tbl12[k] = v2[1][k]
			end

			tbl11[i] = tbl12
			makeTween(v2[1], t, v2[2]):Play()
		end
	end

	local function fn7()
		if not flag5 then
			return
		end
		flag5 = false

		for i, v2 in ipairs(tbl9) do
			makeTween(v2[1], t, tbl11[i]):Play()
		end

		tbl11 = nil
	end

	if tbl5.IS_MOBILE then
		error("devirt: value <luasym.LuaFunc object at 0x0000022595501FC0> in an expression (at 196:71)")
	end

	track(arg.MouseEnter:Connect(safe(fn6)))
	track(arg.MouseLeave:Connect(safe(fn7)))
	return arg
end

tbl5.hover = hover

local c = {
	BG = Color3.fromRGB(vx.bg[1], vx.bg[2], vx.bg[3]),
	GLASS = Color3.fromRGB(21, 23, 30),
	SURFACE = Color3.fromRGB(28, 30, 39),
	SURFACE2 = Color3.fromRGB(38, 41, 52),
	BORDER = Color3.fromRGB(48, 52, 66),
	ACCENT = Color3.fromRGB(vx.ac[1], vx.ac[2], vx.ac[3]),
	ACCENT2 = Color3.fromRGB(vx.a2[1], vx.a2[2], vx.a2[3]),
	GREEN = Color3.fromRGB(46, 204, 113),
	RED = Color3.fromRGB(255, 86, 86),
	AMBER = Color3.fromRGB(255, 176, 32),
	AMBER2 = Color3.fromRGB(255, 120, 60),
	DANGER = Color3.fromRGB(58, 30, 38),
	TEXT = Color3.fromRGB(236, 238, 245),
	SUBTEXT = Color3.fromRGB(138, 144, 162),
	OFF = Color3.fromRGB(54, 58, 72),
}

tbl5.C = c
tbl5.C0 = { surface = c.SURFACE, surface2 = c.SURFACE2, glass = c.GLASS, border = c.BORDER }

local function getRoot(arg)
	if arg then
		arg = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("UpperTorso") or arg:FindFirstChild("Torso")
	end

	return arg
end

tbl5.getRoot = getRoot

tbl5.atLowIdentity = function(arg)
	local getThreadIdentity = getthreadidentity or getidentity or syn and syn.get_thread_identity
	local setThreadIdentity = setthreadidentity or setidentity or syn and syn.set_thread_identity or setthreadcontext
	local v2 = nil

	if getThreadIdentity then
		pcall(function()
			v2 = getThreadIdentity()
		end)
	end

	if setThreadIdentity then
		pcall(setThreadIdentity, 2)
	end

	local ok3, result2 = pcall(arg)

	if setThreadIdentity then
		pcall(setThreadIdentity, v2 or 8)
	end

	if not ok3 then
		error(result2, 0)
	end

	return result2
end

local function nukeGui(arg)
	if not arg then
		return
	end

	pcall(function()
		local vxNukeQ = getgenv and getgenv().__vxNukeQ

		if vxNukeQ then
			table.insert(vxNukeQ, arg)
		end
	end)

	pcall(function()
		arg.Enabled = false
	end)

	pcall(function()
		arg:Destroy()
	end)

	local flag5 = true

	pcall(function()
		flag5 = arg.Parent ~= nil
	end)

	if flag5 then
		pcall(function()
			arg.Parent = nil
		end)
	end
end

tbl5.nukeGui = nukeGui

tbl5.isDestructible = function(arg)
	while arg and arg ~= workspace do
		if arg.Name == "_Destructible" then
			return true
		end
		arg = arg.Parent
	end

	return false
end

local function display(arg)
	local n3 = math.abs(arg)

	if state.useMph then
		n3 /= state.STUDS_PER_MPH
	end

	return math.floor(n3 + 0.5)
end

tbl5.display = display
local vehiclesFolder = state.vehiclesFolder

local function vehicleFromInstance(arg)
	while arg and arg ~= workspace do
		if arg.Parent == vehiclesFolder and arg:IsA("Model") then
			return arg
		end
		arg = arg.Parent
	end

	return nil
end

tbl5.vehicleFromInstance = vehicleFromInstance

local function getCurrentVehicle()
	local character = localPlayer.Character
	if not character then
		return nil
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local v2 = getRoot(character)
	if not humanoid or not v2 or humanoid.Health <= 0 then
		return nil
	end
	local seatPart = humanoid.SeatPart

	if seatPart then
		local v3 = vehicleFromInstance(seatPart)
		if v3 then
			return v3
		end
	end

	local assemblyRootPart = v2.AssemblyRootPart

	if assemblyRootPart and assemblyRootPart ~= v2 then
		local v3 = vehicleFromInstance(assemblyRootPart)
		if v3 then
			return v3
		end
	end

	if humanoid.Sit or humanoid.PlatformStand then
		local seatProximity = state.SEAT_PROXIMITY
		local v3 = nil

		for _, child in ipairs(vehiclesFolder:GetChildren()) do
			local chassis = child:FindFirstChild("_Chassis")

			if chassis and chassis:IsA("BasePart") then
				local magnitude = (v2.Position - chassis.Position).Magnitude

				if magnitude < seatProximity then
					seatProximity = magnitude
					v3 = child
				end
			end
		end

		if v3 then
			return v3
		end
	end

	for _, child in ipairs(vehiclesFolder:GetChildren()) do
		local chassis = child:FindFirstChild("_Chassis")

		if chassis and chassis:IsA("BasePart") then
			if not ((v2.Position - chassis.Position).Magnitude <= 8) then
				continue
			end

			if chassis.AssemblyLinearVelocity.Magnitude > 4 and (v2.AssemblyLinearVelocity - chassis.AssemblyLinearVelocity).Magnitude < 6 then
				return child
			end
		end
	end

	return nil
end

tbl5.getCurrentVehicle = getCurrentVehicle
local VirtualInputManager = game:GetService("VirtualInputManager")
local tbl8 = {}
local n3 = 20

tbl5.mobileVehicleButtons = function()
	local playerGui = localPlayer:FindFirstChild("PlayerGui")
	local screenGui = playerGui and playerGui:FindFirstChild("ScreenGui")
	if not screenGui then
		return nil
	end
	local vehicle = nil
	local vehicle2 = nil

	pcall(function()
		vehicle = screenGui.Right.Bottom.Mobile.Vehicle
	end)

	pcall(function()
		vehicle2 = screenGui.Left.Bottom.Mobile.Vehicle
	end)

	if not (vehicle or vehicle2) then
		return nil
	end

	return {
		gas = vehicle and vehicle:FindFirstChild("Gas"),
		brake = vehicle and vehicle:FindFirstChild("Brake"),
		handbrake = vehicle and vehicle:FindFirstChild("Handbrake"),
		left = vehicle2 and vehicle2:FindFirstChild("Left"),
		right = vehicle2 and vehicle2:FindFirstChild("Right"),
		exit = vehicle and vehicle:FindFirstChild("Exit"),
	}
end

local function fn6(arg)
	if not UserInputService.TouchEnabled then
		return false
	end

	while arg and arg ~= game do
		if arg:IsA("GuiObject") and not arg.Visible then
			return false
		end

		if arg:IsA("ScreenGui") and not arg.Enabled then
			return false
		end
		arg = arg.Parent
	end

	return true
end

local function touchHold(arg, arg2)
	if not (arg and arg.Parent and arg:IsA("GuiObject")) then
		return false
	end
	local absolutePosition = arg.AbsolutePosition
	local absoluteSize = arg.AbsoluteSize
	if absoluteSize.X <= 0 or absoluteSize.Y <= 0 then
		return false
	end

	if arg2 and not fn6(arg) then
		return false
	end
	local n4 = absolutePosition.X + absoluteSize.X / 2
	local n5 = absolutePosition.Y + absoluteSize.Y / 2

	if arg2 then
		if tbl8[arg] then
			return true
		end
		n3 += 1
		local v2 = n3

		local ok3 = pcall(function()
			VirtualInputManager:SendTouchEvent(v2, 0, n4, n5)
		end)

		if ok3 then
			tbl8[arg] = v2
		end

		return ok3
	end

	local v2 = tbl8[arg]
	if not v2 then
		return true
	end
	tbl8[arg] = nil

	return (pcall(function()
		VirtualInputManager:SendTouchEvent(v2, 2, n4, n5)
	end))
end

tbl5.touchHold = touchHold

tbl5.releaseAllTouch = function()
	for k in pairs(tbl8) do
		pcall(touchHold, k, false)
	end

	table.clear(tbl8)
end

tbl5.isPolice = function(arg)
	arg = arg and arg.Team
	if not arg then
		return false
	end
	local str = arg.Name:lower()
	return str:find("police") ~= nil or str:find("sheriff") ~= nil or str:find("trooper") ~= nil
end

tbl5.wantedOf = function(arg)
	if not arg then
		return 0
	end
	local attribute = arg:GetAttribute("WantedLevel")

	if attribute == nil then
		attribute = arg.Character
		attribute = attribute and attribute:GetAttribute("WantedLevel")
	end

	return tonumber(attribute) or 0
end

tbl5.teamColor = function(arg)
	local team = arg and arg.Team
	if team then
		return team.TeamColor.Color
	end
	return c.SUBTEXT
end

tbl5.teamName = function(arg)
	arg = arg and arg.Team
	return arg and arg.Name or "None"
end

local tbl9 = {}
local plateOf = nil

tbl5.vehicleOfPlayer = function(arg)
	if not (arg and vehiclesFolder) then
		return nil
	end
	local character = arg.Character
	character = character and character:FindFirstChildOfClass("Humanoid")
	character = character and character.SeatPart
	local str = nil
	local v2 = nil

	if character then
		v2 = vehicleFromInstance(character)
		str = nil

		if v2 then
			str = "in"
		end
	end

	if not v2 then
		local ok3, result2 = pcall(function()
			return arg:GetAttribute("BelongingVehicle")
		end)

		if ok3 and typeof(result2) == "Instance" and result2.Parent then
			str = "owns"
			v2 = result2
		end
	end

	if not v2 then
		for _, child in ipairs(vehiclesFolder:GetChildren()) do
			local config = child:FindFirstChild("Config")
			config = config and config:FindFirstChild("BelongsTo")

			if config and config.Value == arg.UserId then
				str = "owns"
				v2 = child
				break
			end
		end
	end

	if v2 then
		local tbl10 = tbl9[arg.UserId]

		if not tbl10 or tbl10.model ~= v2 then
			tbl10 = { model = v2, name = v2.Name }
			tbl9[arg.UserId] = tbl10
		end

		if not tbl10.plate and plateOf then
			tbl10.plate = plateOf(v2)
		end

		tbl10.t = os.clock()
		return v2, str
	end

	return nil
end

tbl5.lastVehicleOf = function(arg)
	return arg and tbl9[arg.UserId] or nil
end

track(Players.PlayerRemoving:Connect(safe(function(arg)
	tbl9[arg.UserId] = nil
end)))

plateOf = function(arg)
	if not arg then
		return nil
	end
	local chassis = arg:FindFirstChild("_Chassis")
	chassis = chassis and chassis:FindFirstChild("Plate")
	chassis = chassis and chassis:FindFirstChildOfClass("SurfaceGui")
	local id = chassis and chassis:FindFirstChild("ID")
	local text = id and id:IsA("TextLabel") and id.Text
	if text and text ~= "" then
		return text
	end
	return nil
end

tbl5.plateOf = plateOf

local function positionOf(arg)
	if not arg then
		return nil
	end
	local character = arg.Character
	local v2 = character and getRoot(character)
	local attribute = arg:GetAttribute("CharacterPosition")
	local flag5 = typeof(attribute) == "Vector3"

	if v2 then
		flag5 = flag5 and (attribute - v2.Position).Magnitude > 250
		if flag5 then
			return attribute, false
		end
		return v2.Position, true
	end

	if flag5 then
		return attribute, false
	end
	return nil
end

tbl5.positionOf = positionOf

tbl5.distanceTo = function(arg)
	local character = localPlayer.Character and getRoot(localPlayer.Character)
	local v2 = positionOf(arg)
	if not (character and v2) then
		return nil
	end
	return (v2 - character.Position).Magnitude
end

tbl5.healthOf = function(arg)
	arg = arg and arg.Character
	local humanoid = arg and arg:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return nil
	end
	return humanoid.Health, humanoid.MaxHealth
end

tbl5.stillIn = function(arg)
	if not (arg and arg.Parent) then
		return false
	end
	local character = localPlayer.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	character = character and getRoot(character)
	if not (humanoid and character) or humanoid.Health <= 0 then
		return false
	end

	if humanoid.SeatPart and vehicleFromInstance(humanoid.SeatPart) == arg then
		return true
	end
	local assemblyRootPart = character.AssemblyRootPart
	if assemblyRootPart and assemblyRootPart ~= character and vehicleFromInstance(assemblyRootPart) == arg then
		return true
	end
	local chassis = arg:FindFirstChild("_Chassis")

	if chassis and chassis:IsA("BasePart") then
		local magnitude = (character.Position - chassis.Position).Magnitude
		if (humanoid.Sit or humanoid.PlatformStand) and magnitude <= state.SEAT_PROXIMITY then
			return true
		end

		if magnitude <= 8 then
			if chassis.AssemblyLinearVelocity.Magnitude > 4 and (character.AssemblyLinearVelocity - chassis.AssemblyLinearVelocity).Magnitude < 6 then
				return true
			end
		end
	end

	return false
end

local function clearSuspension()
	if state.chassisBodyPosition and state.chassisBodyPosition.Parent then
		state.chassisBodyPosition:Destroy()
	end

	state.chassisBodyPosition = nil

	if state.chassisBodyGyro and state.chassisBodyGyro.Parent then
		state.chassisBodyGyro:Destroy()
	end

	state.chassisBodyGyro = nil
end

tbl5.clearSuspension = clearSuspension

tbl5.detach = function(arg)
	if not state.activeVehicle then
		return
	end
	local activeChassis = state.activeChassis

	pcall(function()
		if arg and activeChassis and activeChassis.Parent then
			activeChassis.AssemblyLinearVelocity = Vector3.zero
			activeChassis.AssemblyAngularVelocity = Vector3.zero
		end
	end)

	clearSuspension()

	pcall(function()
		if state.boost and state.boost.Parent then
			state.boost.Enabled = false
			state.boost.VectorVelocity = Vector3.zero
		end
	end)

	state.boost = nil
	state.centerForce = nil
	local v2 = state
	local v3 = state
	state.activeVehicle = nil
	v2.activeChassis = nil
	v3.activeCenter = nil
	state.currentSpeed = 0

	if state.cruiseActive and tbl5.setCruiseOn then
		tbl5.setCruiseOn(false)
	end
end

tbl5.attach = function(activeVehicle)
	local chassis = activeVehicle:FindFirstChild("_Chassis")
	local center = chassis and chassis:FindFirstChild("Center")
	local linearVelocity = center and center:FindFirstChild("LinearVelocity")
	if not (chassis and center and linearVelocity) then
		return false
	end
	local v2 = state
	local v3 = state
	state.activeVehicle = activeVehicle
	v2.activeChassis = chassis
	v3.activeCenter = center
	state.boost = linearVelocity
	state.centerForce = center:FindFirstChild("VectorForce")
	state.massMult = 1

	pcall(function()
		local config = activeVehicle:FindFirstChild("Config")

		if config then
			local ok3, result2 = pcall(require, config)

			if ok3 and type(result2) == "table" and type(result2.MASS_MULTIPLIER) == "number" then
				state.massMult = result2.MASS_MULTIPLIER
			end
		end
	end)

	local v4 = state
	local v5 = state
	state.activeHalfLen = 10
	v4.activeHalfWidth = 4
	v5.activeHalfHeight = 2.5

	pcall(function()
		local boundingBox, v6 = activeVehicle:GetBoundingBox()
		state.activeHalfLen = 0.5 * math.max(v6.X, v6.Z)
		state.activeHalfWidth = 0.5 * math.min(v6.X, v6.Z)
		state.activeHalfHeight = 0.5 * v6.Y
	end)

	state.naturalRideOffset = nil

	pcall(function()
		local boundingBox, v6 = activeVehicle:GetBoundingBox()
		local naturalRideOffset = chassis.Position.Y - boundingBox.Position.Y - v6.Y * 0.5

		if naturalRideOffset > 0 and naturalRideOffset < v6.Y then
			state.naturalRideOffset = naturalRideOffset
		end
	end)

	state.currentSpeed = 0
	state.rayParams.FilterDescendantsInstances = { activeVehicle, localPlayer.Character }
	state.glRay.FilterDescendantsInstances = { activeVehicle, localPlayer.Character }
	return true
end

local function vxDebug()
	local character = localPlayer.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	local v2 = getRoot(character)
	log("---- VxSans detection ----")
	log("Humanoid.SeatPart : " .. (humanoid and humanoid.SeatPart and humanoid.SeatPart:GetFullName() or "nil"))
	log("Humanoid.Sit      : " .. tostring(humanoid and humanoid.Sit))
	log("PlatformStand     : " .. tostring(humanoid and humanoid.PlatformStand))
	log("HRP AssemblyRoot  : " .. (v2 and v2.AssemblyRootPart and v2.AssemblyRootPart:GetFullName() or "nil"))

	if v2 then
		for _, child in ipairs(vehiclesFolder:GetChildren()) do
			local chassis = child:FindFirstChild("_Chassis")

			if chassis and chassis:IsA("BasePart") then
				log(("  %-24s dist=%.1f"):format(child.Name, (v2.Position - chassis.Position).Magnitude))
			end
		end
	end

	local v3 = getCurrentVehicle()
	log("=> detected vehicle: " .. (v3 and v3:GetFullName() or "NONE"))
	log("--------------------------")
end

tbl5.vxDebug = vxDebug

if getgenv then
	getgenv().VxSansDebug = vxDebug
end

pcall(function()
	local v2 = ipairs
	local v3 = fn()

	for _, child in v2(v3:GetChildren()) do
		if child.Name == "VXSANS_GUI" or child.Name == "VXSANS_ESP" then
			nukeGui(child)
		end
	end
end)

local ScreenGui = make("ScreenGui", {
	Name = "VXSANS_GUI",
	ResetOnSpawn = false,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	DisplayOrder = 999,
})

local protectGui = syn and syn.protect_gui or protect_gui

if protectGui then
	pcall(protectGui, ScreenGui)
end

ScreenGui.Parent = fn()
tbl5.ScreenGui = ScreenGui

local Frame = make("Frame", {
	Name = "Toasts",
	Parent = ScreenGui,
	AnchorPoint = Vector2.new(1, 1),
	Position = UDim2.new(1, -16, 1, -16),
	Size = UDim2.new(0, 230, 1, -32),
	BackgroundTransparency = 1,
	ZIndex = 60,
})

make("UIListLayout", {
	Parent = Frame,
	VerticalAlignment = Enum.VerticalAlignment.Bottom,
	HorizontalAlignment = Enum.HorizontalAlignment.Right,
	Padding = UDim.new(0, 8),
	SortOrder = Enum.SortOrder.LayoutOrder,
})

local tbl10 = { ok = c.GREEN, err = c.RED, warn = c.AMBER, info = c.ACCENT, off = c.SUBTEXT }
local n4 = 0

local function notify(arg, arg2, arg3)
	if not state.notifyEnabled and arg2 ~= "err" and arg2 ~= "error" and arg2 ~= "warn" then
		return
	end

	if tbl5.applyingConfig and arg2 ~= "err" and arg2 ~= "error" then
		return
	end
	local green = tbl10[arg2] or c.GREEN
	n4 += 1

	local Frame2 = make("Frame", {
		Parent = Frame,
		Size = UDim2.new(0, 232, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = c.SURFACE,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = n4,
		ZIndex = 61,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 8), Parent = Frame2 })
	local UIStroke = make("UIStroke", { Color = green, Thickness = 1, Transparency = 1, Parent = Frame2 })

	local Frame3 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.new(0, 3, 1, -12),
		Position = UDim2.fromOffset(8, 6),
		BackgroundColor3 = green,
		BorderSizePixel = 0,
		ZIndex = 62,
	})

	make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame3 })
	make("UIPadding", { Parent = Frame2, PaddingBottom = UDim.new(0, 8) })

	make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(1, -26, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Position = UDim2.fromOffset(18, 8),
		BackgroundTransparency = 1,
		Text = arg,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextColor3 = c.TEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		ZIndex = 62,
	})

	makeTween(Frame2, 0.15, { BackgroundTransparency = 0 }):Play()
	makeTween(UIStroke, 0.15, { Transparency = 0.25 }):Play()

	if not (type(arg3) == "number" and arg3 > 0 and arg3) then
	end

	error("devirt: value <luasym.LuaFunc object at 0x0000022590E3BDC0> in an expression (at 196:168)")
end

tbl5.notify = notify
local flag5 = false

local function fn7(arg)
	local v2 = setclipboard or toclipboard
	local setclipboard_

	if v2 then
		setclipboard_ = v2
	else
		setclipboard_ = syn and syn.setclipboard
	end

	if setclipboard_ then
		pcall(setclipboard_, arg)
	end
end

local function modal(arg)
	if flag5 then
		return
	end
	flag5 = true
	arg = arg or {}

	local ScreenGui2 = make("ScreenGui", {
		Name = "VXSANS_PREMIUM",
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 10000,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	})

	if protectGui then
		pcall(protectGui, ScreenGui2)
	end

	ScreenGui2.Parent = fn()

	local Frame2 = make("Frame", {
		Name = "PremiumModal",
		Parent = ScreenGui2,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 200,
	})

	local function fn8()
		if not flag5 then
			return
		end
		flag5 = false
		makeTween(Frame2, 0.15, { BackgroundTransparency = 1 }):Play()
		error("devirt: value <luasym.LuaFunc object at 0x0000022595503F40> in an expression (at 202:19)")
	end

	make("TextButton", {
		Parent = Frame2,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 200,
	}).MouseButton1Click:Connect(safe(fn8))

	local v2 = make

	local Frame3 = v2("Frame", {
		Parent = Frame2,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(304, arg.height or 236),
		BackgroundColor3 = c.GLASS,
		BorderSizePixel = 0,
		ZIndex = 201,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 14), Parent = Frame3 })
	make("UIStroke", { Color = c.ACCENT, Thickness = 1.5, Transparency = 0.3, Parent = Frame3 })

	make("TextLabel", {
		Parent = Frame3,
		Size = UDim2.new(1, -46, 0, 30),
		Position = UDim2.fromOffset(20, 16),
		BackgroundTransparency = 1,
		Text = arg.title or "Premium Feature",
		Font = Enum.Font.Michroma,
		TextSize = 16,
		TextColor3 = c.ACCENT2,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 202,
	})

	make("TextButton", {
		Parent = Frame3,
		Size = UDim2.fromOffset(28, 28),
		Position = UDim2.new(1, -34, 0, 15),
		BackgroundTransparency = 1,
		Text = "×",
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		TextColor3 = c.SUBTEXT,
		AutoButtonColor = false,
		ZIndex = 203,
	}).MouseButton1Click:Connect(safe(fn8))

	make("TextLabel", {
		Parent = Frame3,
		Size = UDim2.new(1, -40, 0, 52),
		Position = UDim2.fromOffset(20, 50),
		BackgroundTransparency = 1,
		Text = arg.body or "This feature is Premium only.",
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextColor3 = c.SUBTEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		ZIndex = 202,
	})

	local function fn9(arg2, arg3, arg4, arg5)
		local Frame4 = make("Frame", {
			Parent = Frame3,
			Size = UDim2.new(1, -40, 0, 34),
			Position = UDim2.fromOffset(20, arg5),
			BackgroundColor3 = c.SURFACE,
			BorderSizePixel = 0,
			ZIndex = 202,
		})

		make("UICorner", { CornerRadius = UDim.new(0, 8), Parent = Frame4 })

		make("TextLabel", {
			Parent = Frame4,
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.fromOffset(11, 0),
			BackgroundTransparency = 1,
			Text = arg2 .. "  " .. arg3,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextColor3 = c.TEXT,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 203,
		})

		local TextButton = make("TextButton", {
			Parent = Frame4,
			Size = UDim2.fromOffset(52, 24),
			Position = UDim2.new(1, -58, 0.5, -12),
			BackgroundColor3 = c.ACCENT,
			BorderSizePixel = 0,
			Text = "Copy",
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			TextColor3 = c.TEXT,
			AutoButtonColor = false,
			ZIndex = 203,
		})

		make("UICorner", { CornerRadius = UDim.new(0, 6), Parent = TextButton })
		error("devirt: value <luasym.LuaFunc object at 0x0000022595503190> in an expression (at 196:78)")
	end

	local v3 = ipairs
	local rows = arg.rows or {}

	for k, row in v3(rows) do
		fn9(row[1], row[2], row[3], 116 + (k - 1) * 42)
	end

	makeTween(Frame2, 0.15, { BackgroundTransparency = 0.4 }):Play()
end

local function premiumPopup(arg)
	modal({
		title = "Premium Feature",
		height = 236,
		body = (arg or "This feature") .. " is Premium only. Upgrade to unlock it, with no ads and a key that never expires.",
		rows = {
			{ "🌐", "vxsans.xyz", "https://vxsans.xyz/buy" },
			{ "💬", "discord.gg/vxsans", "https://discord.gg/vxsans" },
		},
	})
end

tbl5.modal = modal

tbl5.premiumWelcome = function()
	modal({
		title = "Welcome to VxSans Premium",
		height = 172,
		body = "Your key is yours only, sharing it gets it revoked. Need help or have a suggestion? Join the Discord.",
		rows = { { "💬", "discord.gg/vxsans", "https://discord.gg/vxsans" } },
	})
end

tbl5.premiumPopup = premiumPopup
local uiLib = getgenv and getgenv().UILib or _G.UILib
assert(uiLib, "SanAurie: UILib not loaded (uilib.lua must run before main.lua)")

for k, v2 in pairs({
	target = "rbxassetid://108651521334424",
	gauge = "rbxassetid://108319888629041",
	terminal = "rbxassetid://97791532071731",
	gear = "rbxassetid://116582925357851",
	["map-pin"] = "rbxassetid://132534457223545",
	pin = "rbxassetid://89458182635616",
	pushpin = "rbxassetid://80816967966303",
	friends = "rbxassetid://74743049286129",
	eye = "rbxassetid://120179055468943",
	logo = "rbxassetid://96037602642352",
	crown = "rbxassetid://96527976264751",
	discord = "rbxassetid://96494143268290",
	x = "rbxassetid://78651744914303",
	maximize = "rbxassetid://95717219070123",
	minus = "rbxassetid://109208648332110",
	sparkles = "rbxassetid://85344754529888",
	reset = "rbxassetid://123451582538585",
	palette = "rbxassetid://107363846333732",
	background = "rbxassetid://132825639095131",
	heart = "rbxassetid://133815259813436",
	zap = "rbxassetid://109100842634346",
	sword = "rbxassetid://126523476933538",
	leaf = "rbxassetid://117999135358300",
	["bar-chart"] = "rbxassetid://138248084789608",
	["circle-dot"] = "rbxassetid://115171349526104",
	anchor = "rbxassetid://108709276970719",
	backpack = "rbxassetid://90715232739970",
	["badge-alert"] = "rbxassetid://86532173662520",
	bandage = "rbxassetid://115208548295181",
	banknote = "rbxassetid://112725251237716",
	beef = "rbxassetid://81827259623728",
	bell = "rbxassetid://127036313634367",
	["brick-wall"] = "rbxassetid://88025003609273",
	["camera-off"] = "rbxassetid://110337881134851",
	car = "rbxassetid://133563487418011",
	["circle-check"] = "rbxassetid://78675473762592",
	cpu = "rbxassetid://92133023198197",
	crosshair = "rbxassetid://117001120552558",
	disc = "rbxassetid://81095987144840",
	["dollar-sign"] = "rbxassetid://102419088723131",
	feather = "rbxassetid://119376536942726",
	flag = "rbxassetid://133942053665580",
	footprints = "rbxassetid://85217151423508",
	fuel = "rbxassetid://95903508447866",
	globe = "rbxassetid://74284692969375",
	hand = "rbxassetid://121141443682219",
	infinity = "rbxassetid://122752327683778",
	keyboard = "rbxassetid://136650690537375",
	lock = "rbxassetid://109390170543317",
	monitor = "rbxassetid://132222635913777",
	["mouse-pointer-click"] = "rbxassetid://110931274416203",
	navigation = "rbxassetid://133855549050649",
	plane = "rbxassetid://118804838018481",
	radar = "rbxassetid://137330478846764",
	["repeat"] = "rbxassetid://85968183265927",
	["rotate-cw"] = "rbxassetid://74518910508300",
	["scan-face"] = "rbxassetid://132704147149193",
	shield = "rbxassetid://74127448257944",
	["shield-alert"] = "rbxassetid://83140874083375",
	["shield-check"] = "rbxassetid://118568323564376",
	["shopping-cart"] = "rbxassetid://132572839919785",
	siren = "rbxassetid://87817687170285",
	handcuffs = "rbxassetid://96353866202499",
	skull = "rbxassetid://78239734727648",
	spline = "rbxassetid://79386072226340",
	tag = "rbxassetid://107315262264040",
	user = "rbxassetid://98294931181315",
	["user-bold"] = "rbxassetid://134975003049611",
	rocket = "rbxassetid://100386409931600",
	wrench = "rbxassetid://102074626041528",
	search = "rbxassetid://100952714623133",
	shuffle = "rbxassetid://72457674874001",
	glasses = "rbxassetid://130029945800594",
	package = "rbxassetid://114762223677436",
	["layout-dashboard"] = "rbxassetid://92335332244857",
	house = "rbxassetid://104786690040791",
	gift = "rbxassetid://111735922269816",
	clock = "rbxassetid://104374649264130",
	["calendar-days"] = "rbxassetid://73235855740868",
}) do
	pcall(function()
		uiLib.setIcon(k, v2)
	end)
end

local v2 = uiLib.new({
	title = "VxSans",
	subtitle = "San Aurie",
	version = "1.3.1",
	discord = "https://discord.gg/vxsans",
	size = Vector2.new(640, 470),
	dockPos = UDim2.new(0, 16, 0.5, -22),
})

pcall(function()
	v2:onAccent(function(accent, aCCENT2)
		c.ACCENT = accent
		c.ACCENT2 = aCCENT2
	end)
end)

pcall(function()
	v2:onBg(function(arg)
		if arg then
			local v3 = c
			local v4 = c
			local v5 = c
			local surface2 = arg.surface2
			local glass = arg.glass
			local border = arg.border
			c.SURFACE = arg.surface
			v3.SURFACE2 = surface2
			v4.GLASS = glass
			v5.BORDER = border
		else
			local v3 = c
			local v4 = c
			local v5 = c
			local surface2 = tbl5.C0.surface2
			local glass = tbl5.C0.glass
			local border = tbl5.C0.border
			c.SURFACE = tbl5.C0.surface
			v3.SURFACE2 = surface2
			v4.GLASS = glass
			v5.BORDER = border
		end
	end)
end)

pcall(function()
	v2:setAccent(c.ACCENT)
end)

local main = v2.main
tbl5.win = v2

tbl5.listScrollbar = function(arg, arg2, arg3)
	if not (uiLib.scrollbar and v2._conns) then
		return
	end
	return uiLib.scrollbar(arg, arg2, v2._conns, arg3 or { inset = 8, right = 4 })
end

tbl5.getRegion = function()
	return v2 and v2._region or nil
end

tbl5.Main = main

spawnS(function()
	local n5 = os.clock() + 30

	while not uiLib.preloadStat and os.clock() < n5 do
		task.wait(0.25)
	end

	local preloadStat = uiLib.preloadStat
	if not preloadStat then
		dbglog("[icons] preload never finished (still warming)", "warn")
		return
	end

	if not preloadStat.ok then
		dbglog("[icons] preload unavailable on this executor", "warn")
		return
	end
	dbglog(("[icons] %d/%d cached in %.1fs%s"):format(preloadStat.loaded, preloadStat.total, preloadStat.secs, preloadStat.failed > 0 and ", " .. preloadStat.failed .. " failed" or ""), preloadStat.failed > 0 and "warn" or "info")
end)

tbl5.toggleUI = function()
	if v2 and v2.setHidden then
		pcall(function()
			v2:setHidden(not v2._hidden)
		end)
	elseif main then
		main.Visible = not main.Visible
	end
end

tbl5.updateStatusDot = function(backgroundColor3)
	pcall(function()
		if v2.setStatus then
			v2:setStatus(backgroundColor3)
		elseif v2._status then
			v2._status.BackgroundColor3 = backgroundColor3
		end
	end)
end

if v2.onClose then
	v2:onClose(function()
		if tbl5.__shutdown then
			pcall(tbl5.__shutdown)
		end
	end)
end

local tbl11 = {
	Dashboard = "house",
	Vehicle = "car",
	Tools = "wrench",
	Cheats = "dollar-sign",
	Shop = "shopping-cart",
	Aim = "target",
	Hud = "monitor",
	Console = "terminal",
	Config = "gear",
	Keybinds = "keyboard",
	Teleport = "map-pin",
	Esp = "eye",
	Players = "user-bold",
}

local tbl12 = {}

local function fn8(arg)
	local v3 = v2:tab(arg, tbl11[arg] or "circle-dot")
	tbl12[string.lower(arg)] = v3
	return v3._page
end

local tbl13 = {}

local function regToSection()
end

tbl5.regToSection = regToSection

local function sectionLabel(arg, arg2, arg3)
	local n5 = arg3 or 0

	local TextButton = make("TextButton", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Text = "",
		AutoButtonColor = false,
		LayoutOrder = n5,
	})

	TextButton:SetAttribute("VxSection", true)

	make("UIListLayout", {
		Parent = TextButton,
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Padding = UDim.new(0, 9),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local TextLabel = make("TextLabel", {
		Parent = TextButton,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = string.upper(arg2),
		Font = Enum.Font.GothamBold,
		TextSize = 11,
		TextColor3 = c.SUBTEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = 0,
	})

	local Frame2 = make("Frame", {
		Parent = TextButton,
		Size = UDim2.new(0, 0, 0, 1),
		BackgroundColor3 = c.BORDER,
		BackgroundTransparency = 0.55,
		BorderSizePixel = 0,
		LayoutOrder = 1,
	})

	make("UIFlexItem", { Parent = Frame2, FlexMode = Enum.UIFlexMode.Fill })
	make("UIGradient", { Parent = Frame2, Transparency = NumberSequence.new(0.15, 0.75) })
	local tbl14 = { t = 0.14 }
	local extra = {}
	local tbl15 = { TextLabel, { TextColor3 = c.TEXT } }
	local tbl16 = { TextColor3 = c.TEXT }

	local tbl17 = {
		make("TextLabel", {
			Parent = TextButton,
			Size = UDim2.fromOffset(14, 14),
			BackgroundTransparency = 1,
			Text = "▼",
			TextColor3 = c.SUBTEXT,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			LayoutOrder = 2,
		}),
		tbl16,
	}

	extra[1] = tbl15
	extra[2] = tbl17
	tbl14.extra = extra
	hover(TextButton, {}, tbl14)
	local tbl18 = tbl13[arg]

	if not tbl18 then
		tbl18 = {}
		tbl13[arg] = tbl18
	end

	tbl18[#tbl18 + 1] = n5
	error("devirt: value <luasym.LuaFunc object at 0x00000225955699C0> in an expression (at 196:119)")
end

tbl5.sectionLabel = sectionLabel

tbl5.noteLabel = function(arg, arg2, arg3)
	local TextLabel = make("TextLabel", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Text = arg2,
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextColor3 = c.SUBTEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		LayoutOrder = arg3 or 0,
	})

	regToSection(arg, TextLabel)
	return TextLabel
end

local function makeButton(arg, arg2, arg3, arg4)
	local surface = arg3 or c.SURFACE

	local TextButton = make("TextButton", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, 40),
		BackgroundColor3 = surface,
		BorderSizePixel = 0,
		Text = arg2,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextColor3 = c.TEXT,
		AutoButtonColor = false,
		LayoutOrder = arg4,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 11), Parent = TextButton })
	make("UIStroke", { Color = c.BORDER, Thickness = 1, Transparency = 0.55, Parent = TextButton })

	if arg3 and arg3:Lerp(Color3.new(1, 1, 1), 0.12) then
	end

	error("devirt: value <luasym.LuaFunc object at 0x00000225954F3DC0> in an expression (at 207:52)")
end

tbl5.makeButton = makeButton

tbl5.makeChoice = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
	local Frame2 = make("Frame", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = arg3,
	})

	Frame2:SetAttribute("vxNoWell", true)

	if arg2 and arg2 ~= "" then
		make("TextLabel", {
			Parent = Frame2,
			Size = UDim2.new(1, 0, 0, 15),
			BackgroundTransparency = 1,
			Text = arg2,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			TextColor3 = c.SUBTEXT,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 0,
		})
	end

	local Frame3 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(0, arg2 and 18 or 0),
		LayoutOrder = 1,
	})

	make("UIListLayout", {
		Parent = Frame3,
		FillDirection = Enum.FillDirection.Horizontal,
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		Wraps = true,
	})

	local v3 = arg5
	local tbl14 = {}

	local function fn9()
		for k, v4 in pairs(tbl14) do
			local flag6 = k == v3

			makeTween(v4.btn, 0.14, {
				BackgroundColor3 = flag6 and c.ACCENT or c.SURFACE2,
				BackgroundTransparency = flag6 and 0 or 0.35,
			}):Play()

			v4.lbl.TextColor3 = flag6 and Color3.new(1, 1, 1) or c.SUBTEXT
			v4.lbl.TextTransparency = 0
			v4.lbl.Font = flag6 and Enum.Font.GothamBold or Enum.Font.GothamMedium
			v4.btn:SetAttribute("vxBg", flag6 and "accent" or nil)
		end
	end

	local function fn10(arg8, arg9)
		local flag6 = false

		for _, v4 in ipairs(arg4) do
			if v4.key == arg8 then
				flag6 = true
				break
			end
		end

		if not flag6 or arg8 == v3 then
			return
		end
		v3 = arg8
		fn9()

		if arg9 ~= false then
			arg6(v3)
		end
	end

	local v4, v5, v6 = ipairs(arg4)
	local v7 = table.pack(q_1())

	if v7[1] then
		local v8 = v7[2]
		local v9 = v7[3]

		local TextButton = make("TextButton", {
			Parent = Frame3,
			Size = UDim2.fromOffset(0, tbl5.IS_MOBILE and 34 or 26),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = c.SURFACE2,
			BackgroundTransparency = 0.35,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = v8,
		})

		make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = TextButton })

		make("UIPadding", {
			Parent = TextButton,
			PaddingLeft = UDim.new(0, tbl5.IS_MOBILE and 15 or 11),
			PaddingRight = UDim.new(0, tbl5.IS_MOBILE and 15 or 11),
		})

		tbl14[v9.key] = {
			btn = TextButton,
			lbl = make("TextLabel", {
				Parent = TextButton,
				Size = UDim2.new(1, 0, 1, 0),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				Text = v9.text,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextColor3 = c.SUBTEXT,
			}),
		}

		hover(TextButton, { BackgroundTransparency = 0.12 }, {
			t = 0.12,
			when = function()
				return v3 ~= v9.key
			end,
		})

		error("devirt: value <luasym.LuaFunc object at 0x00000225955391B0> in an expression (at 196:176)")
	end

	fn9()
	regToSection(arg, Frame2)

	if arg7 then
		tbl5.configReg[arg7] = {
			get = function()
				return v3
			end,
			set = function(arg8)
				fn10(arg8, true)
			end,
		}
	end

	return fn10, function()
		return v3
	end
end

tbl5.floatingAction = function(arg, arg2)
	local TextButton = make("TextButton", {
		Parent = ScreenGui,
		Size = UDim2.fromOffset(tbl5.IS_MOBILE and 190 or 170, tbl5.IS_MOBILE and 46 or 38),
		Position = UDim2.new(0.5, tbl5.IS_MOBILE and -95 or -85, 1, tbl5.IS_MOBILE and -120 or -96),
		BackgroundColor3 = c.ACCENT,
		BorderSizePixel = 0,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 50,
	})

	make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = TextButton })
	make("UIStroke", { Color = Color3.new(1, 1, 1), Thickness = 1, Transparency = 0.75, Parent = TextButton })

	make("TextLabel", {
		Parent = TextButton,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = arg,
		Font = Enum.Font.GothamBold,
		TextSize = tbl5.IS_MOBILE and 14 or 13,
		TextColor3 = Color3.new(1, 1, 1),
		ZIndex = 51,
	})

	hover(TextButton, { BackgroundColor3 = c.ACCENT:Lerp(Color3.new(1, 1, 1), 0.18) })
	TextButton.MouseButton1Click:Connect(safe(function()if  arg2 then  arg2 ();end;pcall(function() TextButton :Destroy();end);end))
	return TextButton
end

tbl5.makeSlider = function(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
	local function fn9(arg11)
		return arg8 and tostring(arg11) or tostring(display(arg11))
	end

	local n5 = arg10 and 66 or 52
	local n6 = arg10 and 48 or 34
	local n7 = arg10 and 41 or 27

	local Frame2 = make("Frame", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, n5),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 0.94,
		BorderSizePixel = 0,
		LayoutOrder = arg3,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 12), Parent = Frame2 })
	make("UIStroke", { Color = c.BORDER, Thickness = 1, Transparency = 0.9, Parent = Frame2 })

	make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(1, -78, 0, 18),
		Position = UDim2.fromOffset(14, 8),
		BackgroundTransparency = 1,
		Text = arg2,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextColor3 = c.TEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
	})

	local TextLabel = nil

	if arg10 then
		TextLabel = make("TextLabel", {
			Parent = Frame2,
			Size = UDim2.new(1, -28, 0, 14),
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromOffset(14, 26),
			BackgroundTransparency = 1,
			Text = arg10,
			Font = Enum.Font.Gotham,
			TextSize = tbl5.IS_MOBILE and 13 or 11,
			TextColor3 = c.SUBTEXT,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,
		})
	end

	local TextLabel2 = make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(0, 60, 0, 18),
		Position = UDim2.new(1, -70, 0, 8),
		BackgroundTransparency = 1,
		Text = fn9(arg6),
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextColor3 = c.ACCENT2,
		TextXAlignment = Enum.TextXAlignment.Right,
	})

	local n8 = arg6

	table.insert(state.sliderRefreshers, function()
		TextLabel2.Text = fn9(n8)
	end)

	local Frame3 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.new(1, -28, 0, 8),
		Position = UDim2.fromOffset(14, n6),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 0.86,
		BorderSizePixel = 0,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 4), Parent = Frame3 })
	local n9 = (arg6 - arg4) / (arg5 - arg4)

	local Frame4 = make("Frame", {
		Parent = Frame3,
		Size = UDim2.new(n9, 0, 1, 0),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 4), Parent = Frame4 })
	make("UIGradient", { Parent = Frame4, Color = ColorSequence.new(c.ACCENT, c.ACCENT2) })
	local n10 = 16

	local function fn10(arg11)
		return UDim2.new(arg11, math.floor((0.5 - arg11) * n10 + 0.5), 0.5, 0)
	end

	local Frame5 = make("Frame", {
		Parent = Frame3,
		Size = UDim2.fromOffset(16, 16),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = fn10(n9),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		ZIndex = 3,
	})

	make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame5 })
	make("UIStroke", { Color = c.ACCENT, Thickness = 2, Transparency = 1, Parent = Frame5 })

	local TextButton = make("TextButton", {
		Parent = Frame2,
		Size = UDim2.new(1, -28, 0, 22),
		Position = UDim2.fromOffset(14, n7),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 4,
	})

	if TextLabel then
		local function fn11()
			local n11 = math.max(0, TextLabel.AbsoluteSize.Y - 14)
			Frame2.Size = UDim2.new(1, 0, 0, n5 + n11)
			Frame3.Position = UDim2.fromOffset(14, n6 + n11)
			TextButton.Position = UDim2.fromOffset(14, n7 + n11)
		end

		track(TextLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(safe(fn11)))
		fn11()
	end

	local function fn11(arg11)
		local n11 = math.clamp((arg11 - Frame3.AbsolutePosition.X) / Frame3.AbsoluteSize.X, 0, 1)
		Frame4.Size = UDim2.new(n11, 0, 1, 0)
		Frame5.Position = fn10(n11)
		n8 = math.floor(arg4 + n11 * (arg5 - arg4) + 0.5)
		TextLabel2.Text = fn9(n8)
		arg7(n8)
	end

	error("devirt: value <luasym.LuaFunc object at 0x0000022595501150> in an expression (at 196:192)")
end

local function chipGlyph(arg, arg2)
	local icons = uiLib and uiLib.icons and uiLib.icons[arg2]

	if not icons and type(arg2) == "string" and arg2:match("rbxassetid") then
		icons = arg2
	end

	if icons then
		return make("ImageLabel", {
			Parent = arg,
			BackgroundTransparency = 1,
			ZIndex = 2,
			Size = UDim2.new(1, -12, 1, -12),
			Position = UDim2.fromOffset(6, 6),
			Image = icons,
			ImageColor3 = c.ACCENT2,
			ScaleType = Enum.ScaleType.Fit,
		})
	end

	return make("TextLabel", {
		Parent = arg,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = 2,
		Text = arg2,
		Font = Enum.Font.GothamBold,
		TextSize = 16,
		TextColor3 = c.ACCENT2,
	})
end

tbl5.chipGlyph = chipGlyph

tbl5.iconId = function(arg)
	return uiLib and uiLib.icons and uiLib.icons[arg] or nil
end

local function fn9(arg)
	deferS(function()
		if not (arg and arg.Parent and arg.Visible) then
			return
		end
		local automaticSize = arg.AutomaticSize

		if automaticSize ~= Enum.AutomaticSize.None then
			arg.AutomaticSize = Enum.AutomaticSize.None
		end

		local parent = arg.Parent

		while parent and not parent:IsA("ScrollingFrame") do
			parent = parent.Parent
		end

		local canvasPosition = parent and parent.CanvasPosition

		if parent and canvasPosition and canvasPosition.Y > 0 then
			parent.CanvasPosition = canvasPosition + Vector2.new(0, 1)
		end

		RunService.Heartbeat:Wait()
		if not arg.Parent then
			return
		end

		if automaticSize ~= Enum.AutomaticSize.None then
			arg.AutomaticSize = automaticSize
		end

		if parent and parent.Parent and canvasPosition and canvasPosition.Y > 0 then
			parent.CanvasPosition = canvasPosition
		end
	end)
end

local color = Color3.fromRGB(24, 22, 38)

local function makeToggleRow(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local flag6 = false

	if type(arg3) == "string" and arg3:find("⭐") then
		flag6 = true
		arg3 = arg3:gsub("%s*⭐%s*", "")
	end

	local Frame2 = make("Frame", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, 50),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = arg6 and 0.9 or 0.94,
		BorderSizePixel = 0,
		LayoutOrder = arg5,
	})

	make("UISizeConstraint", { MinSize = Vector2.new(0, 50), Parent = Frame2 })

	if arg6 then
		Frame2.BackgroundColor3 = c.ACCENT
		Frame2:SetAttribute("vxBg", "accent")
	end

	make("UICorner", { CornerRadius = UDim.new(0, 12), Parent = Frame2 })

	make("UIStroke", {
		Color = arg6 and c.ACCENT or c.BORDER,
		Thickness = 1,
		Transparency = arg6 and 0.4 or 0.9,
		Parent = Frame2,
	})

	local Frame3 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 0,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 12), Parent = Frame3 })

	local Frame4 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.fromOffset(32, 32),
		Position = UDim2.fromOffset(12, 9),
		BackgroundColor3 = c.ACCENT,
		BackgroundTransparency = arg6 and 0.72 or 0.85,
		BorderSizePixel = 0,
		ZIndex = 2,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 9), Parent = Frame4 })
	make("UIStroke", { Color = c.ACCENT, Thickness = 1, Transparency = arg6 and 0.45 or 0.78, Parent = Frame4 })
	chipGlyph(Frame4, arg2)

	if flag6 then
		local Frame5 = make("Frame", {
			Parent = Frame4,
			Size = UDim2.fromOffset(17, 17),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(1, -3, 0, 3),
			BackgroundColor3 = c.SURFACE,
			BorderSizePixel = 0,
			ZIndex = 6,
		})

		make("UICorner", { CornerRadius = UDim.new(0, 9), Parent = Frame5 })
		make("UIStroke", { Color = c.AMBER, Thickness = 1, Transparency = 0.35, Parent = Frame5 })
		local crown = uiLib and uiLib.icons and uiLib.icons.crown

		if crown then
			make("ImageLabel", {
				Parent = Frame5,
				BackgroundTransparency = 1,
				ZIndex = 7,
				Size = UDim2.fromOffset(11, 11),
				Position = UDim2.fromOffset(3, 3),
				Image = crown,
				ImageColor3 = c.AMBER,
				ScaleType = Enum.ScaleType.Fit,
			})
		end
	end

	local TextLabel = make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(1, -116, 0, 16),
		Position = UDim2.fromOffset(54, 9),
		BackgroundTransparency = 1,
		Text = arg3,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextColor3 = c.TEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 2,
	})

	local TextLabel2 = make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(1, -116, 0, 14),
		AutomaticSize = Enum.AutomaticSize.Y,
		Position = UDim2.fromOffset(54, 27),
		BackgroundTransparency = 1,
		Text = arg4,
		Font = Enum.Font.Gotham,
		TextSize = tbl5.IS_MOBILE and 13 or 11,
		TextColor3 = c.SUBTEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		ZIndex = 2,
	})

	make("UIPadding", { PaddingBottom = UDim.new(0, 8), Parent = TextLabel2 })
	local flag7

	if flag6 then
		flag7 = not (tbl5.VX and tbl5.VX.pm)
	else
		flag7 = flag6
	end

	if flag7 then
		TextLabel.Size = UDim2.new(1, -170, 0, 16)
		TextLabel2.Size = UDim2.new(1, -170, 0, 14)
		local color2 = Color3.fromRGB(251, 191, 36)

		local TextButton = make("TextButton", {
			Parent = Frame2,
			Size = UDim2.fromOffset(96, 30),
			Position = UDim2.new(1, -108, 0.5, -15),
			BackgroundColor3 = Color3.fromRGB(24, 22, 38),
			BackgroundTransparency = 0.25,
			Text = "Premium",
			TextColor3 = color2,
			Font = Enum.Font.GothamBold,
			TextSize = 12,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			ZIndex = 3,
		})

		make("UICorner", { CornerRadius = UDim.new(0, 8), Parent = TextButton })

		make("UIStroke", {
			Color = color2,
			Thickness = 1,
			Transparency = 0.5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = TextButton,
		})

		track(TextButton.MouseButton1Click:Connect(safe(function()
			if tbl5.premiumPopup then
				pcall(tbl5.premiumPopup, arg3)
			end
		end)))

		local connect = make("TextButton", { Parent = Frame2, Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "", ZIndex = 2 }).MouseEnter.Connect
		error("devirt: value <luasym.LuaFunc object at 0x000002259550E050> in an expression (at 196:560)")
	end

	local Frame5 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.fromOffset(46, 25),
		Position = UDim2.new(1, -58, 0, 12.5),
		BackgroundColor3 = arg6 and c.ACCENT or Color3.new(1, 1, 1),
		BackgroundTransparency = arg6 and 0 or 0.88,
		BorderSizePixel = 0,
		ZIndex = 2,
	})

	make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame5 })

	local Frame6 = make("Frame", {
		Parent = Frame5,
		Size = UDim2.fromOffset(19, 19),
		ZIndex = 3,
		Position = arg6 and UDim2.fromOffset(24, 3) or UDim2.fromOffset(3, 3),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
	})

	make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame6 })
	local attribute = arg.GetAttribute and arg:GetAttribute("vxWellDepth") or 0

	if arg9 then
		local Frame7 = make("Frame", {
			Parent = Frame2,
			Size = UDim2.new(1, -20, 0, 0),
			Position = UDim2.fromOffset(10, 54),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ZIndex = 2,
			Visible = arg6 and true or false,
		})

		Frame7:SetAttribute("vxWellDepth", attribute + 1)
		make("UIListLayout", { Parent = Frame7, Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder })
		make("UIPadding", { Parent = Frame7, PaddingBottom = UDim.new(0, 10) })
		pcall(arg9, Frame7)

		for _, child in ipairs(Frame7:GetChildren()) do
			if (child:IsA("Frame") or child:IsA("TextButton")) and not child:GetAttribute("vxNoWell") then
				child.BackgroundColor3 = color
				child.BackgroundTransparency = attribute >= 1 and 0.12 or 0.35
				child:SetAttribute("vxBg", nil)
				local uiStroke = child:FindFirstChildOfClass("UIStroke")

				if uiStroke then
					uiStroke.Transparency = 0.93
				end
			end
		end

		local function fn10()
			Frame7.Position = UDim2.fromOffset(10, math.max(54, math.floor(27 + TextLabel2.TextBounds.Y + 8)))
		end

		track(TextLabel2:GetPropertyChangedSignal("TextBounds"):Connect(safe(fn10)))
		fn10()
	end

	if arg6 then
	end

	error("devirt: value <luasym.LuaFunc object at 0x000002259550CEB0> in an expression (at 196:891)")
end

tbl5.makeToggleRow = makeToggleRow

tbl5.makeSearchBox = function(arg, arg2, arg3)
	local Frame2 = make("Frame", {
		Parent = arg,
		Size = UDim2.new(1, 0, 0, 30),
		BackgroundColor3 = c.SURFACE2,
		BorderSizePixel = 0,
		LayoutOrder = arg2,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 8), Parent = Frame2 })
	make("UIStroke", { Color = c.BORDER, Thickness = 1, Transparency = 0.4, Parent = Frame2 })
	local search = uiLib and uiLib.icons and uiLib.icons.search

	if search then
		make("ImageLabel", {
			Parent = Frame2,
			BackgroundTransparency = 1,
			Image = search,
			ImageColor3 = c.SUBTEXT,
			Size = UDim2.fromOffset(13, 13),
			Position = UDim2.new(0, 11, 0.5, -6.5),
			ScaleType = Enum.ScaleType.Fit,
			ZIndex = 2,
		})
	end

	return (make("TextBox", {
		Parent = Frame2,
		Size = UDim2.new(1, -40, 1, 0),
		Position = UDim2.fromOffset(31, 0),
		BackgroundTransparency = 1,
		Text = "",
		PlaceholderText = arg3,
		PlaceholderColor3 = c.SUBTEXT,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = c.TEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		ClearTextOnFocus = false,
		ZIndex = 2,
	}))
end

tbl5.growWithWindow = function(arg, arg2)
	local parent = arg.Parent

	while parent and not parent:IsA("ScrollingFrame") do
		parent = parent.Parent
	end

	if not parent then
		return
	end
	local v3 = nil

	local function fn10()
		local y = parent.AbsoluteSize.Y
		if y <= 0 then
			return
		end
		v3 = v3 or y
		arg.Size = UDim2.new(1, 0, 0, math.max(arg2, arg2 + y - v3))
	end

	track(parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(safe(fn10)))
	deferS(fn10)
end

tbl5.makeGroup = function(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	return makeToggleRow(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

local Dashboard = fn8("Dashboard")
local Vehicle = fn8("Vehicle")
local Tools = fn8("Tools")
local Cheats = fn8("Cheats")
local Shop = fn8("Shop")
local Aim = fn8("Aim")
local Hud = fn8("Hud")
local Console = fn8("Console")
local Keybinds = fn8("Keybinds")
local Teleport = fn8("Teleport")
local Players2 = fn8("Players")
local Esp = fn8("Esp")

tbl5.pages = {
	dashboard = Dashboard,
	vehicle = Vehicle,
	tools = Tools,
	cheats = Cheats,
	shop = Shop,
	aim = Aim,
	hud = Hud,
	console = Console,
	keybinds = Keybinds,
	teleport = Teleport,
	esp = Esp,
	players = Players2,
}

pages = { Dashboard, Vehicle, Tools, Cheats, Shop, Aim, Hud, Console, Keybinds, Teleport, Players2, Esp }
local v3 = nil
local tbl14 = {}

local tbl15 = {
	{ key = "toggleMenu", icon = "monitor", label = "Toggle Menu", desc = "Show / hide the menu" },
	{
		key = "toggleController",
		icon = "car",
		label = "Speed Controller",
		desc = "Toggle vehicle engine",
	},
	{
		key = "toggleCruise",
		icon = "navigation",
		label = "Cruise Control",
		desc = "Hold current speed",
	},
	{ key = "toggleAim", icon = "target", label = "Aim Assist", desc = "Toggle aim assist" },
	{ key = "toggleFlight", icon = "plane", label = "Flight", desc = "Turn Flight on / off" },
	{
		key = "targetPlayers",
		icon = "user",
		label = "Target Players",
		desc = "Target players on/off",
	},
	{
		key = "targetVehicle",
		icon = "car",
		label = "Target Vehicles",
		desc = "Target vehicles on/off",
	},
	{ key = "lockTarget", icon = "lock", label = "Lock Target", desc = "Lock / unlock target" },
	{ key = "autoShoot", icon = "crosshair", label = "Auto Shoot", desc = "Toggle auto-shoot" },
	{
		key = "blink",
		icon = "navigation",
		label = "Blink",
		desc = "Blink to your cursor (needs Blink on)",
	},
	{ key = "silentAim", icon = "skull", label = "Silent Aim", desc = "Turn Silent Aim on / off" },
	{
		key = "desyncSync",
		icon = "eye",
		label = "Ghost: Appear Briefly",
		desc = "Appear briefly to cuff, rob, or interact",
	},
}

local function fn10(arg)
	return arg and arg.Name or "None"
end

sectionLabel(Keybinds, "Hotkeys", 0)

local function fn11(arg, arg2)
	local Frame2 = make("Frame", {
		Parent = Keybinds,
		Size = UDim2.new(1, 0, 0, 50),
		BackgroundColor3 = c.SURFACE,
		BorderSizePixel = 0,
		LayoutOrder = arg2,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 10), Parent = Frame2 })
	make("UIStroke", { Color = c.BORDER, Thickness = 1, Transparency = 0.4, Parent = Frame2 })

	local Frame3 = make("Frame", {
		Parent = Frame2,
		Size = UDim2.fromOffset(30, 30),
		Position = UDim2.fromOffset(10, 10),
		BackgroundColor3 = c.SURFACE2,
		BorderSizePixel = 0,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 8), Parent = Frame3 })
	chipGlyph(Frame3, arg.icon)

	make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(1, -158, 0, 16),
		Position = UDim2.fromOffset(48, 9),
		BackgroundTransparency = 1,
		Text = arg.label,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextColor3 = c.TEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
	})

	make("TextLabel", {
		Parent = Frame2,
		Size = UDim2.new(1, -158, 0, 14),
		Position = UDim2.fromOffset(48, 26),
		BackgroundTransparency = 1,
		Text = arg.desc,
		Font = Enum.Font.Gotham,
		TextSize = 10,
		TextColor3 = c.SUBTEXT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
	})

	local TextButton = make("TextButton", {
		Parent = Frame2,
		Size = UDim2.fromOffset(92, 30),
		Position = UDim2.new(1, -102, 0.5, -15),
		BackgroundColor3 = c.SURFACE2,
		BorderSizePixel = 0,
		Text = fn10(state.keybinds[arg.key]),
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextColor3 = c.ACCENT,
		AutoButtonColor = false,
	})

	make("UICorner", { CornerRadius = UDim.new(0, 7), Parent = TextButton })
	local UIStroke = make("UIStroke", { Color = c.BORDER, Thickness = 1, Transparency = 0.35, Parent = TextButton })

	tbl14[arg.key] = function()
		TextButton.Text = fn10(state.keybinds[arg.key])
		TextButton.TextColor3 = c.ACCENT
		makeTween(TextButton, 0.12, { BackgroundColor3 = c.SURFACE2 }):Play()
		makeTween(UIStroke, 0.12, { Color = c.BORDER, Transparency = 0.35 }):Play()
	end

	error("devirt: value <luasym.LuaFunc object at 0x0000022595501570> in an expression (at 196:115)")
end

for i, v4 in ipairs(tbl15) do
	fn11(v4, i + 1)
end

makeButton(Keybinds, "Reset to defaults", c.SURFACE, #tbl15 + 2, function()
	for _, v4 in ipairs(tbl5.KEYBIND_LIST) do
		state.keybinds[v4] = tbl5.KEYBIND_DEFAULTS[v4]
	end

	if getgenv then
		local keybinds = state.keybinds
		getgenv().VxSansKeybinds = keybinds
	end

	v3 = nil

	for _, v4 in pairs(tbl14) do
		v4()
	end

	if notify then
		notify("Keybinds reset", "info")
	end
end)

error("devirt: value <luasym.LuaFunc object at 0x000002259116E680> in an expression (at 207:1132)")
