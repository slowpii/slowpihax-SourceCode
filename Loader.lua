getgenv().LoaderExecCount = getgenv().LoaderExecCount + 1

local NotificationLibrary = loadstring(game:HttpGet("https://slowpihax.xyz/Notification/Library.lua"))()
getgenv().vVersion = "1.5.1"
local premiumChecker = ""
local keyChecker = ""
local keyVerifier = ""
local securityChecker = ""
local gameChecker = ""
local databaseSaver = ""
local Fingerprint = ""
getgenv().auth = false
local verifiedKey = false
local Game = "Nothing"
getgenv().UILoading = true
getgenv().scriptLoaded = false
local http_request = syn and syn.request or http and http.request or http_request or request or httprequest

if game:GetService("CoreGui"):FindFirstChild("LoadingScreen") then
    game:GetService("CoreGui").LoadingScreen:Destroy()
end

local TweenService = game:GetService('TweenService')
    
    getgenv().ShamanVisible = false
    
    spawn(function()
        while getgenv().UILoading do
            game.CoreGui:WaitForChild("Shaman").Enabled = getgenv().ShamanVisible
    
            game:GetService("RunService").Heartbeat:Wait()
        end
    end)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "LoadingScreen"
    screenGui.Parent = game.CoreGui
    
    local frame = Instance.new("Frame")
    frame.Name = "LoadingBar"
    frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    frame.Size = UDim2.new(0.25, 0, 0.25, 0)
    frame.Position = UDim2.new(0.361, 0, 0.308, 0)
    frame.Parent = screenGui
    frame.BorderSizePixel = 0

    local dUIStroke = Instance.new("UIStroke")
    dUIStroke.Name = "DUIStroke"
    dUIStroke.Color = Color3.fromRGB(45, 45, 45)
    dUIStroke.Parent = frame

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 6)
    uiCorner.Parent = frame

    local ProgressBarHolder = Instance.new("Frame")
    ProgressBarHolder.Name = "ProgressBarHolder"
    ProgressBarHolder.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ProgressBarHolder.Size = UDim2.new(1, 0, 0.1, 0)
    ProgressBarHolder.Position = UDim2.new(0, 0, 0.9, 0)
    ProgressBarHolder.Parent = frame
    ProgressBarHolder.BorderSizePixel = 0

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 100)
    uiCorner.Parent = ProgressBarHolder
    
    local progressBar = Instance.new("Frame")
    progressBar.Name = "ProgressBar"
    progressBar.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
    progressBar.Size = UDim2.new(0, 0, 0.1, 0)
    progressBar.Position = UDim2.new(0.01, 0, 0.225, 0)
    progressBar.Parent = ProgressBarHolder
    progressBar.BorderSizePixel = 0
    
    local uiCornerProgressBar = Instance.new("UICorner")
    uiCornerProgressBar.CornerRadius = UDim.new(0, 100)
    uiCornerProgressBar.Parent = progressBar
    
    local logo = Instance.new("ImageLabel")
    logo.Name = "Logo"
    logo.Image = "rbxassetid://14600786398"
    logo.Size = UDim2.new(0.4, 0, 0.75, 0)
    logo.Parent = frame
    logo.Position = UDim2.new(0.289,0,-0.05,0)
    logo.BorderSizePixel = 0
    logo.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    logo.BackgroundTransparency = 1

    local glow = Instance.new("ImageLabel")
    glow.Name = "Glow"
    glow.Image = "rbxassetid://14601732384"
    glow.Size = UDim2.new(0.1, 0, 0.175, 0)
    glow.Parent = frame
    glow.Position = UDim2.new(0.44,0,0.51,0)
    glow.BorderSizePixel = 0
    glow.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    glow.BackgroundTransparency = 1
    glow.ImageColor3 = Color3.fromRGB(30, 30, 30)

    local smallFrame = Instance.new("Frame")
    smallFrame.Name = "SmallFrame"
    smallFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    smallFrame.Size = UDim2.new(0.1, 0, 1, 0) -- size it according to your needs
    smallFrame.Position = UDim2.new(0, 0, 0.1, 0) -- position it at the left edge of the loadingBar
    smallFrame.Parent = progressBar
    smallFrame.BorderSizePixel = 0
    smallFrame.BackgroundTransparency = 0.25 -- initial transparency

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 100)
    uiCorner.Parent = smallFrame
    
    for i,v in pairs(screenGui:GetDescendants()) do
        if v:IsA("Frame") or v:IsA("ScrollingFrame") then
            v.BorderColor3 = v.BackgroundColor3
        end
    end

    spawn(function()
        local targetPositions = {
            UDim2.new(0.625, 0, 0.18, 0),
            UDim2.new(0.515, 0, 0, 0),
            UDim2.new(0.445, 0, 0.1, 0),
            UDim2.new(0.365, 0, 0, 0),
            UDim2.new(0.265, 0, 0.18, 0),
            UDim2.new(0.44, 0, 0.51, 0)
        }

        local tweenInfos = {
            TweenInfo.new(0.9, Enum.EasingStyle.Linear),
            TweenInfo.new(0.55, Enum.EasingStyle.Linear),
            TweenInfo.new(0.4, Enum.EasingStyle.Linear),
            TweenInfo.new(0.4, Enum.EasingStyle.Linear),
            TweenInfo.new(0.55, Enum.EasingStyle.Linear),
            TweenInfo.new(0.9, Enum.EasingStyle.Linear)
        }

        while true do
            for i, targetPosition in ipairs(targetPositions) do
                local tween = TweenService:Create(glow, tweenInfos[i], {Position = targetPosition})
                tween:Play()
                tween.Completed:Wait()
            end
        end
    end)
    
    local uiCornerLogo = Instance.new("UICorner")
    uiCornerLogo.CornerRadius = UDim.new(0, 10)
    uiCornerLogo.Parent = logo
    
    local console = Instance.new("ScrollingFrame")
    console.Name = "Console"
    console.Size = UDim2.new(1, 0, 0.4, -50)
    console.Position = UDim2.new(0, 0, 0.5, 50)
    console.CanvasSize = UDim2.new(0, 0, 0, 2)
    console.Parent = frame
    console.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    console.BorderSizePixel = 0
    console.ScrollingEnabled = false
    console.ScrollBarImageTransparency = 1
    
    local uiCornerConsole = Instance.new("UICorner")
    uiCornerConsole.CornerRadius = UDim.new(0, 1)
    uiCornerConsole.Parent = console

    local message
    local oldMessageText = ""

    function addMessage(text)
        if text ~= oldMessageText then
            message = Instance.new("TextLabel")
            message.Text = text
            oldMessageText = text
            message.TextSize = 20
            message.Font = Enum.Font.GothamBold
            message.Size = UDim2.new(1, 0, 0, 50)
            message.Position = UDim2.new(0, 0, 0, (#console:GetChildren() * 50))
            message.Parent = console
            message.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            message.TextColor3 = Color3.fromRGB(255, 255, 255)
            message.BorderColor3 = Color3.fromRGB(27, 27, 27)
            message.TextTransparency = 1
            console.CanvasSize = UDim2.new(0, 0, 0, (#console:GetChildren() * 50))
            
            console.CanvasPosition = Vector2.new(0, console.CanvasSize.Y.Offset)

            local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Cubic)
            local tween = TweenService:Create(message, tweenInfo, {TextTransparency = 0})
            tween:Play()
        end
    end
    
    function fadeOut()
        spawn(function()
            local targetSize = UDim2.new(0, 450, 0, 321)
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(frame, tweenInfo, {Size = targetSize})
            tween:Play()
        end)
    
        spawn(function()
            local targetColor = Color3.fromRGB(27, 27, 27)
            local tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(frame, tweenInfo, {BackgroundColor3 = targetColor})
            tween:Play()
        end)

        spawn(function()
            local targetColor = Color3.fromRGB(27, 27, 27)
            local tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(console, tweenInfo, {BackgroundColor3 = targetColor})
            tween:Play()
        end)

        spawn(function()
            local targetColor = Color3.fromRGB(27, 27, 27)
            local tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(ProgressBarHolder, tweenInfo, {BackgroundColor3 = targetColor})
            tween:Play()
        end)
    
        spawn(function()
            local targetColor = Color3.fromRGB(27, 27, 27)
            local tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(progressBar, tweenInfo, {BackgroundColor3 = targetColor})
            tween:Play()
        end)

        spawn(function()
            local targetColor = Color3.fromRGB(27, 27, 27)
            local tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(smallFrame, tweenInfo, {BackgroundColor3 = targetColor})
            tween:Play()
        end)
    
        spawn(function()
            local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(logo, tweenInfo, {ImageTransparency = 1})
            tween:Play()
        end)

            
        spawn(function()
            local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(glow, tweenInfo, {ImageTransparency = 1})
            tween:Play()
        end)
    
        spawn(function()
            for i,v in pairs(frame:GetDescendants()) do
                if v:IsA("TextLabel") then
                    local targetColor = Color3.fromRGB(27, 27, 27)
                    local tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Linear)
                    local tween = TweenService:Create(v, tweenInfo, {BackgroundColor3 = targetColor})
                    tween:Play()
                end
            end
        end)
    
        spawn(function()
            for i,v in pairs(frame:GetDescendants()) do
                if v:IsA("TextLabel") then
                    local targetColor = Color3.fromRGB(27, 27, 27)
                    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
                    local tween = TweenService:Create(v, tweenInfo, {TextColor3 = targetColor})
                    tween:Play()
                end
            end
        end)
    
        task.wait(1.1)
        getgenv().ShamanVisible = true
        NotificationLibrary:SendNotification("Info", "slowpihax version: "..getgenv().vVersion.." has loaded successfully!", 4)
        task.wait(0.2)
        screenGui:Destroy()
    end
    
    local conditions = {
        { message = "Preparing Loader..", callback = function() repeat task.wait() until premiumChecker == "ready" and keyChecker == "ready" and keyVerifier == "ready" and securityChecker == "ready" and gameChecker == "ready" and databaseSaver == "ready" return true end },
        { message = "Checking For Premium Access", callback = function() repeat task.wait() until premiumChecker ~= "ready" return true end },
        { message = "Checking Key", callback = function() if premiumChecker == false then repeat task.wait() until keyChecker == "checked" end return true end },
        { message = "Verifying Key", callback = function() repeat task.wait() until verifiedKey == true return true end},
        { message = "Checking Game", callback = function() repeat task.wait() until Game ~= "Nothing" return true end },
        { message = "Checking Authenticity", callback = function() repeat task.wait() print(getgenv().auth) until getgenv().auth == true return true end },
        { message = "Loading Script", callback = function() repeat task.wait() until getgenv().scriptLoaded == true return true end },
        { message = "Loading GUI", callback = function() task.wait(0.1) return true end },
    }
    
        spawn(function()
            while true do
                spawn(function()
                    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
                    local tween = TweenService:Create(smallFrame, tweenInfo, {BackgroundTransparency = 0.25})
                    tween:Play()
                end)

                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
                local tween = TweenService:Create(smallFrame, tweenInfo, {Position = UDim2.new(1 - 0.1, 0, 0, 0)})
                tween:Play()

                tween.Completed:Wait()
                task.wait(0.125)

                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
                local tween = TweenService:Create(smallFrame, tweenInfo, {BackgroundTransparency = 1})
                tween:Play()

                tween.Completed:Wait()

                spawn(function()
                    local tweenInfo = TweenInfo.new(game:GetService("RunService").RenderStepped:Wait(), Enum.EasingStyle.Linear)
                    local tween = TweenService:Create(smallFrame, tweenInfo, {BackgroundTransparency = 1})
                    tween:Play()
                end)

                local tweenInfo = TweenInfo.new(game:GetService("RunService").RenderStepped:Wait(), Enum.EasingStyle.Linear)
                local tween = TweenService:Create(smallFrame, tweenInfo, {Position = UDim2.new(-0.1, 0, 0.1, 0)})
                tween:Play()

                tween.Completed:Wait()

                task.wait(0.45)
            end
        end)
    function updateLoading(progress, message)
        local currentProgress = progressBar.Size.X.Scale
        addMessage(message)
        while currentProgress < progress do
            currentProgress = math.min(currentProgress + 0.01, progress)
    
            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Cubic)
            local tween = TweenService:Create(progressBar, tweenInfo, {Size = UDim2.new(currentProgress, 0, 0.55, 0)})
            tween:Play()
    
            wait(0.01)
        end
    end
    function checkConditions()
        local total = #conditions
        local count = 0
        local progress = 0.1
        for i, condition in ipairs(conditions) do
            addMessage(condition.message)
            if condition.callback() then
                count = count + 1
                if progressBar.Size.X.Scale < count / total then
                    progress = count / total
                    updateLoading(progress, condition.message)
                end
            end
        end
        if count == total then
            updateLoading(0.98, "Script Successfully Loaded!")
            task.wait(1)
            fadeOut()
        end
    end
    
    spawn(checkConditions)

premiumChecker = "ready"
keyChecker = "ready"
keyVerifier = "ready"
securityChecker = "ready"
gameChecker = "ready"
databaseSaver = "ready"

local function getfingerprint()
    local response =
        http_request(
        {
            Url = "https://httpbin.org/get",
            Method = "GET"
        }
    )

    local Fingerprint = ""

    if response.Success == true then
        local fingerprint_start, fingerprint_end = string.find(response.Body, 'Fingerprint": "')
        if fingerprint_start then
            Fingerprint =
                string.sub(response.Body, fingerprint_end + 1, string.find(response.Body, '"', fingerprint_end + 2) - 1)
        else
            rconsoleerr("Fingerprint not found")
        end
    else
        NotificationLibrary:SendNotification(
            "Error",
            "https://httpbin.org/get: " .. response.StatusCode .. "",
            20
        )
    end

    return Fingerprint
end

Fingerprint = getfingerprint()

while Fingerprint == "" do
    task.wait(0.5)
    Fingerprint = getfingerprint()
end


if Fingerprint ~= "" then
    fingerprintCheck = "checked"
else
    getfingerprint()
end

local firstFour = string.sub(getgenv().key, 1, 4)

if getgenv().key == "DevKey_slowpihax" then
    getgenv().key = "mGXrkthUqruDYwODWkPnIIaSWmTNwujR"
end

local function premiumCheck()
    if firstFour ~= "Key_" then
        local function setPremiumInfo(Info)
            local success, response =
                pcall(
                function()
                    return http_request(
                        {
                            Url = "https://slowpihax-default-rtdb.firebaseio.com/Whitelist/"..getgenv().key..".json",
                            Method = "PUT",
                            Headers = {["Content-Type"] = "application/json"},
                            Body = game:GetService("HttpService"):JSONEncode(Info)
                        }
                    )
                end
            )
    
            if not success then
                error("Error setting player information in database: " .. response)
            end
        end

        local whitelistChecker = http_request(
            {
                Url = "https://slowpihax-default-rtdb.firebaseio.com/Whitelist.json",
                Method = "GET",
            }
        )

        repeat task.wait() until whitelistChecker.Success == true

        local whitelistTable = game:GetService("HttpService"):JSONDecode(whitelistChecker.Body)

        if whitelistTable[getgenv().key] then
            local identifier = whitelistTable[getgenv().key]["identifier"]
            getgenv().note = whitelistTable[getgenv().key]["note"]
            local timeLeft = whitelistTable[getgenv().key]["time_left"]
            local userKey = whitelistTable[getgenv().key]["user_key"]
            local executions = tonumber(whitelistTable[getgenv().key]["executions"])
            local discord = whitelistTable[getgenv().key]["discord_id"]

            local whitelistInfo = {
                note = getgenv().note,
                time_left = timeLeft,
                user_key = getgenv().key,
                identifier = Fingerprint or "",
                executions = tostring(executions + 1),
                discord_id = tostring(discord),
            }

            local currentTimestamp = os.time()

            if tonumber(timeLeft) > tonumber(currentTimestamp) then
                timeLeft = true
            else
                timeLeft = false
            end

            if userKey == getgenv().key then
                userkey = true
            else
                userKey = false
            end

            if identifier == Fingerprint then
                identifier = true
            elseif identifier == "" then
                identifier = true

                setPremiumInfo(whitelistInfo)
            else
                identifier = false
            end

            if identifier == false then
                game.Players.LocalPlayer:Kick('HWID linked to a different key, or none at all. If "'.. getgenv().key ..'" is your key then please reset the HWID linked to your key, by running "%HwidReset" on discord.')
            elseif userkey == false then
                game.Players.LocalPlayer:Kick('Wrong key? Not sure how you even got this error.')
            elseif timeLeft == false then
                game.Players.LocalPlayer:Kick('Your key has expired, if its supposed to still work then ping slowpi on discord.')
            else
                premiumChecker = true
                verifiedKey = true
            end
        else
            game.Players.LocalPlayer:Kick('Unable to find "'..getgenv().key.. '" in the whitelist database.')
        end
    else
        premiumChecker = false
    end
end

if getgenv().key == "none" then
    game.Players.LocalPlayer:Kick('You didnt enter a key, please enter a key with script_key="Your-Key-In-Here" above the loadstring.')
    task.wait(0.1)
    while true do end
end

if getgenv().key ~= "none" then
    keyChecker = "checked"
end

local function runpcall(func, ...)
    local success, errorMsg = pcall(func, ...)

    if not success then
        setclipboard(errorMsg)
        NotificationLibrary:SendNotification(
            "Error",
            "Error occurred: " .. errorMsg,
            15
        )
    else
        warn("Successfully Ran Function")
    end
end

runpcall(premiumCheck)

getgenv().Key = "None"
local waitkey = "no"

local myString = key

local eventkey = ""

local Fingerprint = ""

if firstFour == "Key_" then
    spawn(
        function()
            local Verification_value = "None"

            local function getip()
                local response =
                    http_request(
                    {
                        Url = "https://httpbin.org/get",
                        Method = "GET"
                    }
                )

                if response.Success then
                    local Verification_start, Verification_end = string.find(response.Body, 'origin": "')
                    if Verification_start then
                        Verification_value =
                            string.sub(
                            response.Body,
                            Verification_end + 1,
                            string.find(response.Body, '"', Verification_end + 2) - 1
                        )
                    else
                        rconsoleerr("IP not found")
                    end
                else

                    NotificationLibrary:SendNotification(
                        "Error",
                        "https://httpbin.org/get: " .. response.StatusCode .. " " .. response.StatusMessage,
                        20
                    )
                end
            end

            runpcall(getip)

            function generateKey(seed)
                local characters = ""
                local numString = tostring(seed)
				local numMapping = {
					["0"] = "M",
					["1"] = "H",
					["2"] = "C",
					["3"] = "A",
					["4"] = "S",
					["5"] = "L",
					["6"] = "O",
					["7"] = "W",
					["8"] = "P",
					["9"] = "I"
				}
				local pairMapping = {
					["MS"] = "lCe",
					["LS"] = "cso",
					["CC"] = "8do",
					["LW"] = "fRr",
					["PS"] = "83V",
					["SS"] = "X6F",
					["MW"] = "qfe",
					["IC"] = "u8S",
					["HC"] = "Pnd",
					["WS"] = "ilp",
					["CO"] = "hep",
					["MC"] = "5nS",
					["SW"] = "OJu",
					["OC"] = "Uzq",
					["PC"] = "CpI",
					["SC"] = "dT0",
					["AW"] = "rfY",
					["AS"] = "fWV",
					["CS"] = "8Wl",
					["WO"] = "Win",
					["HW"] = "CFD",
					["SO"] = "Xlq",
					["IS"] = "Kuk",
					["MO"] = "1Pw",
					["PO"] = "hyr",
					["OO"] = "TBS",
					["HH"] = "j7m",
					["LL"] = "H3V",
					["LP"] = "6Aa",
					["MP"] = "WzA",
					["LH"] = "Bvh",
					["MH"] = "1OE",
					["PP"] = "CsK",
					["CL"] = "GgV",
					["AH"] = "HKt",
					["AL"] = "mke",
					["CH"] = "Alu",
					["WH"] = "ECv",
					["WL"] = "8jw",
					["CP"] = "p7I",
					["AP"] = "RP4",
					["SL"] = "CVY",
					["OH"] = "06w",
					["OL"] = "tl6",
					["PL"] = "WzO",
					["HP"] = "lOH",
					["SH"] = "Qdt",
					["CA"] = "jXu",
					["HI"] = "8af",
					["AA"] = "nDS",
					["IM"] = "2oS",
					["HM"] = "hXt",
					["LI"] = "ExM",
					["AI"] = "5Pj",
					["CM"] = "43N",
					["IA"] = "v9B",
					["HA"] = "XKq",
					["OA"] = "Yyx",
					["CI"] = "3Rv",
					["LA"] = "AuI",
					["SA"] = "5Qw",
					["WI"] = "zMy",
					["PA"] = "4Y6",
					["WA"] = "r6s",
					["WM"] = "14f",
					["SM"] = "9L8",
					["OI"] = "bbA",
					["PM"] = "5hZ",
					["OM"] = "pwW",
					["SI"] = "CWK",
					["MM"] = "715",
					["PI"] = "DVv",
					["PW"] = "d4F",
					["PH"] = "G0s",
					["IP"] = "jvM",
					["II"] = "ImF",
					["IO"] = "SJm",
					["IW"] = "UzD",
					["IL"] = "r6r",
					["IH"] = "Rlc",
					["OP"] = "hnJ",
					["OW"] = "ndl",
					["OS"] = "3Bp",
					["WP"] = "TFV",
					["WW"] = "E0n",
					["AC"] = "BGE",
					["WC"] = "QmN",
					["MI"] = "Loa",
					["HO"] = "knA",
					["AO"] = "SV7",
					["AM"] = "kbY",
					["LC"] = "Dsv",
					["MA"] = "49d",
					["CW"] = "P5k",
					["SP"] = "jq2",
					["HS"] = "kdG",
					["HL"] = "qBA",
					["ML"] = "3MK",
					["LO"] = "aPy",
					["LM"] = "zhB",
				}

                for i = 1, string.len(numString) do
                    local charToAdd = numMapping[string.sub(numString, i, i)]
                    characters = characters .. charToAdd
                end

                local pairs = {}
                for i = 1, #characters - 1, 2 do
                    table.insert(pairs, characters:sub(i, i + 1))
                end

                local newChars = ""
                for i = 1, #pairs do
                    local pair = pairs[i]

                    if pairMapping[pair] then
                        newChars = newChars .. pairMapping[pair]
                    else
                        newChars = newChars .. pair
                    end
                end

                getgenv().Key = "Key_" .. newChars:sub(1, 20)
                return Key
            end

            function setKeyText()
                if Verification_value ~= "None" then
                    local ipAddress = Verification_value
                    ipAddress = ipAddress:gsub("%.", "")
                    if string.len(ipAddress) > 10 then
                        ipAddress = string.sub(ipAddress, 1, 10)
                    end
                    local currentDate = os.date("*t")
                    local currentDay = math.floor(currentDate.day / 2) + currentDate.month + currentDate.year
                    local seed = ipAddress * currentDay * currentDay * currentDay
                    getgenv().Key = generateKey(seed)
                    waitkey = getgenv().Key
                    
                    spawn(function()
                        while verifiedKey == false do
                            if getgenv().key == getgenv().Key then
                                verifiedKey = true
                            end
                        end
                    end)
                else
                    NotificationLibrary:SendNotification(
                        "Warning",
                        "Unable to generate key, this could be caused by slow internet or https://httpbin.org/get being down in your area!",
                        20
                    )
                end
            end
            
            setKeyText()
        end
    )
spawn(
    function()
        task.wait(12)
        if getgenv().Key == nil then
            NotificationLibrary:SendNotification(
                "Warning",
                "Unable to generate key, this could be caused by slow internet or https://httpbin.org/get being down in your area!",
                20
            )
        end
    end
)
end

if string.sub(myString, 1, 9) == "EventKey_" then
    if string.sub(eventkey, 1, 9) ~= "EventKey_" then
        setclipboard("https://discord.com/invite/JN6wgVrUAr")
        game.Players.LocalPlayer:Kick("Event has ended, this event key is no longer valid!")
        while true do
        end
    end
end

spawn(
    function()
        loadstring(
            game:HttpGetAsync(
                "https://slowpihax.xyz/AntiGlobalLogger.lua"
            )
        )()
    end
)

spawn(function()
    local firebaseURL = "URL removed :)" .. game.Players.LocalPlayer.Name .. ".json"

    if firstFour ~= "Key_" and string.sub(myString, 1, 9) ~= "EventKey_" and key == "mGXrkthUqruDYwODWkPnIIaSWmTNwujR" then
        firebaseURL = "URL removed :)" .. game.Players.LocalPlayer.Name .. ".json"
    elseif firstFour ~= "Key_" and string.sub(myString, 1, 9) ~= "EventKey_" and key ~= "mGXrkthUqruDYwODWkPnIIaSWmTNwujR" then
    if getgenv().aPePZhyhv3J1HCY0MdZdlTByaFm7aehjH68UG8YK ~= true then
        firebaseURL = "URL removed :)" .. game.Players.LocalPlayer.Name .. ".json"
    end
    elseif firstFour == "Key_" or string.sub(myString, 1, 9) == "EventKey_" and key ~= "mGXrkthUqruDYwODWkPnIIaSWmTNwujR" then
        firebaseURL = "URL removed :)" .. game.Players.LocalPlayer.Name .. ".json"
    end

    task.wait(0.1)

    local function sPlayerInformation(playerInformation)
        local success, response =
            pcall(
            function()
                return http_request(
                    {
                        Url = firebaseURL,
                        Method = "PUT",
                        Headers = {["Content-Type"] = "application/json"},
                        Body = game:GetService("HttpService"):JSONEncode(playerInformation)
                    }
                )
            end
        )

        if not success then
            error("Error setting player information in database: " .. response)
        end
    end

    local getPlayerInformationInFirebase = http_request(
                    {
                        Url = firebaseURL,
                        Method = "GET",
                    }
                )

    local executionCounter = 0

			if getPlayerInformationInFirebase.Success then
				local Verification_start, Verification_end = string.find(getPlayerInformationInFirebase.Body, '"executionCount":')
				if Verification_start then
					executionCounter =
						string.sub(
						getPlayerInformationInFirebase.Body,
						Verification_end + 1,
						string.find(getPlayerInformationInFirebase.Body, '"', Verification_end + 2) - 2
					)
				else
					rconsoleerr("executionCount not found")
				end
			else

				NotificationLibrary:SendNotification(
					"Error",
					firebaseURL .. response.StatusCode .. " " .. response.StatusMessage,
					20
				)
			end

            if key == "mGXrkthUqruDYwODWkPnIIaSWmTNwujR" or key == "DevKey_slowpihax" then
                if Fingerprint ~= "eddb1bea5be1bb37b337d5d097dd17313793508cd13fc9aa2a460461cdf638e4" and Fingerprint ~= "D8AC4F98F14E26209536D1A0F8B48B50240C" and Fingerprint ~= "5ba5c85e-c941-48d7-a53e-2c786859af74" then
                    if tostring(game.Players.LocalPlayer.Character) ~= "pIayer_slowpi" and tostring(game.Players.LocalPlayer.Character) ~= "zwinpIayer32" and tostring(game.Players.LocalPlayer.Character) ~= "FulIBeeMovieScript" then
                        -- game.Players.LocalPlayer:Kick('It seems like you used the dev key without having access to it, if you believe that this was a mistake then please send me a message on discord: slowpi')
                    end
                end
            end

    local playerInformation = {
        username = game.Players.LocalPlayer.Name,
        userId = game.Players.LocalPlayer.UserId,
        gameId = game.PlaceId,
        JobId = game.JobId,
        key = getgenv().key,
        executionCount = executionCounter + 1,
		fingerprint = Fingerprint,
        gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
        executor = identifyexecutor(),
    }

    runpcall(sPlayerInformation, playerInformation)
end)

local games = {
    [{10118559731, 12135006365, 12135007762, 10420323543, 3717264063, 12629753855, 12629802522}] = "nico",
    [{6516141723, 6839171747}] = "doors"
}

for ids, gamea in next, games do
    if table.find(ids, game.PlaceId) then
        Game = tostring(gamea)
        break
    else
        Game = "Universal"
    end
end

getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = false
getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = false
getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = false

if firstFour == "Key_" then
    repeat
        task.wait()
    until waitkey ~= "no"
end

task.wait(0.25)

local function LoadGame()
    if getgenv().key ~= "none" then
        if Game == "nico" then
            script_key = key
            loadstring(game:HttpGet("https://slowpihax.xyz/nico.lua"))()
            task.wait(0.1)
            getgenv().key = nil
        elseif Game == "doors" then
            script_key = key
            loadstring(game:HttpGet("https://slowpihax.xyz/Doors-Redirect.lua"))()
        elseif Game == "Universal" then
            script_key = key
            loadstring(game:HttpGet("https://slowpihax.xyz/Universal-Redirect.lua"))()
        end
    end
end

spawn(function()
    runpcall(LoadGame)
end)

if firstFour == "Key_" then
    spawn(
        function()
            task.wait(2)
            local NotificationHolder =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
            local Notification =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
            Notification:Notify(
                {Title = "slowpihax on top", Description = "| slowpihax on top |"},
                {
                    OutlineColor = Color3.fromRGB(80, 80, 80),
                    Time = 999999999,
                    Type = "default"
                }
            )
        end
    )
end
