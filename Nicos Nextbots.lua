local myString = key
local firstFour = string.sub(myString, 1, 9)
LRM_UserNote = getgenv().note

if getgenv().note == nil and key == Key then
    LRM_UserNote = "Not specified"
end

print(LRM_UserNote)
print(key)
print(Key)

if LRM_UserNote == "Not specified" then
    if key == Key then
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = false
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = false
        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = true
    end
end
if LRM_UserNote == "Premium" or LRM_UserNote == "Giveaway" or LRM_UserNote == "Booster" or firstFour == "EventKey_" or LRM_UserNote == "Contributor" then
    if key ~= Key then
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = false
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = true
        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = true
    end
end
if LRM_UserNote == "Dev" then
    if key ~= Key then
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = true
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = true
        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = true
    end
end

if LRM_UserNote == "Not specified" and key ~= Key then
    if firstFour ~= "EventKey_" then
        setclipboard("https://discord.com/invite/JN6wgVrUAr")
        game.Players.LocalPlayer:Kick("Bypassing The Key System is Against My Terms Of Service.")
        task.wait(0.1)
        while true do end
    end
else
    local NotificationLibrary = loadstring(game:HttpGet("https://slowpihax.xyz/Notification/Library.lua"))()

    getgenv().auth = true

    local function runpcall(func, arg, arg2, arg3, ...)
        local success, errorMsg = pcall(func, arg, arg2, arg3, ...)
    
        if not success then
            setclipboard(errorMsg)
            NotificationLibrary:SendNotification(
                "Error",
                "Error occurred: " .. errorMsg,
                15
            )
        end
    end

    local lastCallTime = 0

    local function Notification(status, feature)
        local currentTime = os.time()
        
        if currentTime - lastCallTime >= 0.5 then
            lastCallTime = currentTime
    
            if status == true then
                NotificationLibrary:SendNotification("Success", "" .. feature .. " Is Now Enabled!", 1.75)
            elseif status == false then
                NotificationLibrary:SendNotification("Error", "" .. feature .. " Is Now Disabled!", 1.75)
            elseif status == "Info" then
                NotificationLibrary:SendNotification("Info", "" .. feature .. "", 4)
            elseif status == "Warn" then
                NotificationLibrary:SendNotification("Warning", feature, 10)
            end
        end
    end

    local tostringLocalPlayerName = tostring(game:GetService("Players").LocalPlayer.Name)

    pcall(function()
        if not game.workspace:FindFirstChild(tostringLocalPlayerName) then
            spawnedin = false
            Notification("Warn", "You are currently not spawned into the map, please spawn for the gui to appear!                                        .                                                                  Dont execute the script again.")
        end
        task.wait(1)
            while not game.workspace:WaitForChild(tostringLocalPlayerName) do
                task.wait()
            end
            speedstring = tostring(humanoid.WalkSpeed):sub(1, 4)
            walkspeed = tonumber(speedstring)
        end
    )

    while not game.workspace:WaitForChild(tostringLocalPlayerName) do
        task.wait()
    end

    task.wait(0.25)

    local player = game.Players.LocalPlayer

    while not game.workspace:WaitForChild(tostringLocalPlayerName):WaitForChild("Humanoid") do
        task.wait()
    end

    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    local lastGroundPosition = Vector3.new()
    local lastUpdateTime = tick()

    local function teleportPlayer(position)
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                humanoidRootPart.CFrame = CFrame.new(position)
                task.wait(0.1)
                humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                humanoidRootPart.CFrame = CFrame.new(position)
                task.wait(0.05)
                humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                humanoidRootPart.CFrame = CFrame.new(position)
            end
        end
    end

    -- Variables

    local walkspeed

    local title
    local hasPremium = false
    local userInputService = game:GetService("UserInputService")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Backpack = LocalPlayer.Backpack
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

    local DoWalkSpeed = false
    local JumpDefault

    if tonumber(tostring(humanoid.JumpPower):sub(1, 4)) ~= 0 or 28.3 then
        JumpDefault = tonumber(tostring(humanoid.JumpPower):sub(1, 4))
    end

    local DoGravity = false
    local FlySpeed = 50
    local walking = false
    local speedstring
    local gravitystring = tostring(game.Workspace.Gravity):sub(1, 4)
    local gravity = tonumber(gravitystring)
    local oldgravity = tonumber(game.Workspace.Gravity)

    local jumppower
    local newwstate = Enum.HumanoidStateType.Landed
    local MakeJump = true
    local thefov
    local DoTheFov
    local savedfov = game:GetService("Players").LocalPlayer.options.Graphics.fov.Value

    local walkspeedToggle
    local jumppowerToggle
    local gravityToggle
    local flyToggle
    local fovToggle
    local bhopToggle
    local infjumpsToggle
    local godmodeToggle
    local noclipToggle
    local invisibilityToggle
    local playerespToggle
    local botespToggle
    local fullbrightToggle
    local autofarmv2
    local autofarmv2BETA
    local getbtoolsToggle
    local fpsboostToggle
    local autoleaveToggle
    local antivoidToggle
    local eventsniperToggle
    local keepscoreToggle
    local autokillToggle

    local inair
    local bhopbool
    local InfiniteJumpEnabled
    local DoTheNoclip
    local godmodeLoop = false

    local RefreshBoxEsp = "Enable"
    local RefreshTracerEsp = "Enable"
    local RefreshChamsEsp = "Enable"
    local RefreshNameTagEsp = "Enable"
    local RefreshTCStatus = "Enable"
    local PlayerEspSettingsList = {}

    local RefreshBoxObjectEsp = "Enable"
    local RefreshTracerObjectEsp = "Enable"
    local RefreshNametagsObjectEsp = "Enable"
    local ObjectEspSettingsList = {}

    local PlayerBoxEsp = false
    local PlayerTracerEsp = false
    local PlayerChamsEsp = false
    local PlayerNametagEsp = false
    local TCStatus = true

    local ObjectBoxEsp = false
    local ObjectTracerEsp = false
    local ObjectNametagEsp = false

    local ESP
    local espLib
    local BotESPLib
    local PowerBoxESP

    local UserRoleText
    local DevplayerNames = {}
    local DevJobId = {}
    local PremiumplayerNames = {}
    local PremiumJobId = {}
    local PublicplayerNames = {}
    local PublicJobId = {}

    local oldFPSBoost = {
        tostring(game.Workspace.Terrain.WaterWaveSize),
        tostring(game.Workspace.Terrain.WaterWaveSpeed),
        tostring(game.Workspace.Terrain.WaterReflectance),
        tostring(game.Workspace.Terrain.WaterTransparency),
        game.Lighting.GlobalShadows,
        tostring(game.Lighting.FogEnd),
        tostring(settings().Rendering.QualityLevel)
    }
    local AntiVoidBool
    local keepscoreLoop = false
    local BuyAmount = 1
    local TPAuraRange
    local ExcludedPlayers = {"pIayer_slowpi"}

    local DoWalkSpeedKeybind
    local JumpPowerKeybindbool

    local Library = loadstring(game:HttpGet("https://slowpihax.xyz/UI-Library.lua"))()
    local Flags = Library.Flags

    if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == false and getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == false then
        title = "slowpihax | " .. getgenv().vVersion .. " | Nico's Nextbots | Public"
    elseif getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == true and getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == false then
        title = "slowpihax | " .. getgenv().vVersion .. " | Nico's Nextbots | Premium"
    elseif getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true and getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == true then
        title = "slowpihax | " .. getgenv().vVersion .. " | Nico's Nextbots | Dev"
    end

    if getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y == nil or getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y == false then
        setclipboard("https://discord.com/invite/JN6wgVrUAr")
        player:Kick("Bypassing The Key System is Against My Terms Of Service.")
    end

    if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh or getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true then
        hasPremium = true

        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = nil
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = nil
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = nil
    end

    -- Functions
    
    local function removeItem(itemName)
        local ItemInBackpack = Backpack:FindFirstChild(itemName)
        local ItemInCharacter = Character:FindFirstChild(itemName)
    
        if ItemInBackpack then
            ItemInBackpack:Destroy()
        end
    
        if ItemInCharacter then
            ItemInCharacter.Parent = nil
            ItemInCharacter:Destroy()
        end
    end

    local Window =
        Library:Window(
        {
            Text = title
        }
    )

    local Tab =
        Window:Tab(
        {
            Text = "Character"
        }
    )

    local Tab2 =
        Window:Tab(
        {
            Text = "Visual"
        }
    )

    local Tab3 =
        Window:Tab(
        {
            Text = "Autofarm"
        }
    )

    local Tab4 =
        Window:Tab(
        {
            Text = "Miscellaneous"
        }
    )

    local Tab5 =
        Window:Tab(
        {
            Text = "Teleports"
        }
    )

    local Tab6 =
        Window:Tab(
        {
            Text = "Games"
        }
    )

    local Tab7 =
        Window:Tab(
        {
            Text = "Credits"
        }
    )

    local Section =
        Tab:Section(
        {
            Text = "Character"
        }
    )

    local Section2 =
        Tab2:Section(
        {
            Text = "Visual"
        }
    )

    local Section3 =
        Tab3:Section(
        {
            Text = "Autofarm"
        }
    )

    local Section4 =
        Tab4:Section(
        {
            Text = "Player Misc"
        }
    )

    local Section4_1 =
        Tab4:Section(
        {
            Text = "Bot Misc",
            Side = "Right"
        }
    )

    local Section5 =
        Tab5:Section(
        {
            Text = "nn_Mall Teleports"
        }
    )

    local Section5_1 =
        Tab5:Section(
        {
            Text = "nn_Backrooms Teleports"
        }
    )

    local Section5_2 =
        Tab5:Section(
        {
            Text = "nn_Russia Teleports"
        }
    )

    local Section5_3 =
        Tab5:Section(
        {
            Text = "nn_hotel Teleports"
        }
    )

    local Section5_4 =
        Tab5:Section(
        {
            Text = "nn_poolrooms Teleports"
        }
    )

    local Section5_5 =
        Tab5:Section(
        {
            Text = "nn_port Teleports"
        }
    )

    local Section5_6 =
        Tab5:Section(
        {
            Text = "Other Teleports"
        }
    )

    local Section6 =
        Tab6:Section(
        {
            Text = "Games"
        }
    )

    local Section7 =
        Tab7:Section(
        {
            Text = "Credits"
        }
    )

    game:GetService("UserInputService").InputBegan:Connect(
        function(inputObject, gameProcessedEvent)
            if
                inputObject.KeyCode == Enum.KeyCode.W or inputObject.KeyCode == Enum.KeyCode.A or
                    inputObject.KeyCode == Enum.KeyCode.S or
                    inputObject.KeyCode == Enum.KeyCode.D
             then
                walking = true
            end
        end
    )

    game:GetService("UserInputService").InputEnded:Connect(
        function(inputObject, gameProcessedEvent)
            if
                not (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) or
                    game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) or
                    game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) or
                    game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D))
             then
                walking = false
            end
        end
    )

    local startfov = 100

    if
        game:GetService("Players"):WaitForChild(tostringLocalPlayerName):WaitForChild("options"):WaitForChild(
            "Graphics"
        ):WaitForChild("fov").Value
     then
        startfov =
            game:GetService("Players"):WaitForChild(tostringLocalPlayerName):WaitForChild("options"):WaitForChild(
            "Graphics"
        ):WaitForChild("fov").Value
    end

    local speedslider

    speedslider = Section:Slider(
        {
            Text = "Walkspeed",
            Default = walkspeed or 10,
            Minimum = 1,
            Maximum = 250,
            Flag = "Walkspeed",
            Button = true,
            ButtonDefault = false,
            ButtonFlag = "Walk",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            ButtonCallback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Walkspeed")
                    end
                )
                spawn(
                    function()
                        while Flags.Walk do
                            task.wait()
                            if walking == true then
                                local currentVelocity = player.Character:WaitForChild("HumanoidRootPart").Velocity
                                local newVelocity =
                                    Vector3.new(
                                    player.Character:FindFirstChildOfClass("Humanoid").MoveDirection.X * Flags.Walkspeed,
                                    currentVelocity.Y,
                                    player.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Z * Flags.Walkspeed
                                )
                                player.Character:WaitForChild("HumanoidRootPart").Velocity = newVelocity
                            else
                                player.Character:WaitForChild("HumanoidRootPart").Velocity =
                                    Vector3.new(0, player.Character:WaitForChild("HumanoidRootPart").Velocity.Y, 0)
                            end
                        end
                    end
                )
            end
        }
    )

    if JumpDefault == 0 then
        JumpDefault = 28.3
    end

    Section:Slider(
        {
            Text = "JumpPower",
            Default = JumpDefault or 28.3,
            Minimum = 1,
            Maximum = 500,
            Flag = "JumpPower",
            Button = true,
            ButtonDefault = false,
            ButtonFlag = "Jump",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            ButtonCallback = function(bool)
                spawn(
                    function()
                        Notification(bool, "JumpPower")
                    end
                )
            end
        }
    )

    local function statechangedforjump()
        game.workspace:WaitForChild(tostringLocalPlayerName):FindFirstChildOfClass("Humanoid").StateChanged:Connect(
            function(oldState, newState)
                newwstate = newState

                if newState == Enum.HumanoidStateType.Freefall then
                    MakeJump = false
                else
                    MakeJump = true
                end
            end
        )
    end

    runpcall(statechangedforjump)

    game:GetService("UserInputService").InputBegan:Connect(
        function(inputObject)
            if inputObject.KeyCode == Enum.KeyCode.Space then
                if Flags.Jump or JumpPowerKeybindbool and MakeJump == true then
                    task.wait(0.02)
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity =
                        Vector3.new(
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.X,
                        Flags.JumpPower,
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.Z
                    )
                end
            end
        end
    )

    Section:Slider(
        {
            Text = "Gravity",
            Default = gravity,
            Minimum = 0,
            Maximum = 540,
            Flag = "GravityAmount",
            Button = true,
            ButtonDefault = false,
            ButtonFlag = "Gravity",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            ButtonCallback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Gravity")
                    end
                )
                while Flags.Gravity do
                    game.Workspace.Gravity = Flags.GravityAmount
                    task.wait()
                end

                game.Workspace.Gravity = oldgravity
            end
        }
    )

    Section:Slider(
        {
            Text = "Fly",
            Default = FlySpeed,
            Minimum = 1,
            Maximum = 400,
            Flag = "FlySpeed",
            Button = true,
            ButtonDefault = false,
            ButtonFlag = "Fly",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            ButtonCallback = function(bool)
                _G.FLYING = false
                spawn(
                    function()
                        Notification(bool, "Fly")
                    end
                )
                if bool == true then
                    _G.FLYING = true
                    local LP = game:service("Players").LocalPlayer
                    local T = LP.character.Head
                    -- local T = LP.character.collisionPart
                    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    local SPEED = Flags.FlySpeed
                    local MOUSE = LP:GetMouse()

                    local function FLY()
                        _G.FLYING = true
                        local BG = Instance.new("BodyGyro", T)
                        local BV = Instance.new("BodyVelocity", T)
                        BG.P = 9e4
                        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                        BG.cframe = T.CFrame
                        BV.velocity = Vector3.new(0, 0.1, 0)
                        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

                        spawn(
                            function()
                                repeat
                                    wait()
                                    LP.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
                                        SPEED = Flags.FlySpeed
                                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
                                        SPEED = 0
                                    end
                                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
                                        BV.velocity =
                                            ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector *
                                            (CONTROL.F + CONTROL.B)) +
                                            ((game.Workspace.CurrentCamera.CoordinateFrame *
                                                CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) -
                                                game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                                            SPEED
                                        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
                                        BV.velocity =
                                            ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector *
                                            (lCONTROL.F + lCONTROL.B)) +
                                            ((game.Workspace.CurrentCamera.CoordinateFrame *
                                                CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) -
                                                game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                                            SPEED
                                    else
                                        BV.velocity = Vector3.new(0, 0.1, 0)
                                    end
                                    BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
                                until not _G.FLYING
                                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                                SPEED = 0
                                BG:destroy()
                                BV:destroy()
                                LP.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                            end
                        )
                    end

                    MOUSE.KeyDown:connect(
                        function(KEY)
                            if KEY:lower() == "w" then
                                CONTROL.F = 1
                            elseif KEY:lower() == "s" then
                                CONTROL.B = -1
                            elseif KEY:lower() == "a" then
                                CONTROL.L = -1
                            elseif KEY:lower() == "d" then
                                CONTROL.R = 1
                            end
                        end
                    )

                    MOUSE.KeyUp:connect(
                        function(KEY)
                            if KEY:lower() == "w" then
                                CONTROL.F = 0
                            elseif KEY:lower() == "s" then
                                CONTROL.B = 0
                            elseif KEY:lower() == "a" then
                                CONTROL.L = 0
                            elseif KEY:lower() == "d" then
                                CONTROL.R = 0
                            end
                        end
                    )

                    FLY()
                else
                    _G.FLYING = false
                end
            end
        }
    )

    Section:Slider(
        {
            Text = "FOV",
            Default = startfov,
            Minimum = 10,
            Maximum = 120,
            Flag = "FOVAmount",
            Button = true,
            ButtonDefault = false,
            ButtonFlag = "FOV",
            ButtonCallback = function(bool)
                spawn(
                    function()
                        Notification(bool, "FOV")
                    end
                )

                while Flags.FOV do
                    game:GetService("Players").LocalPlayer.options.Graphics.fov.Value = Flags.FOVAmount
                    task.wait()
                end
                
                game:GetService("Players").LocalPlayer.options.Graphics.fov.Value = savedfov
            end
        }
    )

    game:GetService("UserInputService").InputBegan:Connect(
        function(inputObject, gameProcessedEvent)
            if
                inputObject.KeyCode == Enum.KeyCode.Space or inputObject.KeyCode == Enum.KeyCode.Space or
                    inputObject.KeyCode == Enum.KeyCode.Space or
                    inputObject.KeyCode == Enum.KeyCode.Space
             then
                inair = true
            end
        end
    )

    game:GetService("UserInputService").InputEnded:Connect(
        function(inputObject, gameProcessedEvent)
            if not (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space)) then
                inair = false
            end
        end
    )

    bhopToggle =
        Section:Toggle(
        {
            Text = "Bhop",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                bhopbool = bool
                spawn(
                    function()
                        Notification(bool, "Bhop")
                    end
                )

                while bhopbool == true do
                    task.wait()
                    if bhopbool == true then
                        if inair == true then
                            if
                                game.workspace:WaitForChild(tostringLocalPlayerName) and
                                    game.workspace:WaitForChild(tostringLocalPlayerName):FindFirstChildOfClass("Humanoid")
                             then
                                    game.workspace:WaitForChild(tostringLocalPlayerName).Humanoid.Jump = true
                                if Flags.Jump == true then
                                    game.workspace:WaitForChild(tostringLocalPlayerName).Humanoid.JumpPower = Flags.JumpPower
                                else
                                    game.workspace:WaitForChild(tostringLocalPlayerName).Humanoid.JumpPower = 28.3
                                end
                            end
                        end
                    end
                end
            end
        }
    )

    infjumpsToggle =
        Section:Toggle(
        {
            Text = "Inf Jumps",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Inf Jumps")
                    end
                )
                if bool == true then
                    InfiniteJumpEnabled = true
                else
                    InfiniteJumpEnabled = false
                end

                game:GetService("UserInputService").InputBegan:Connect(
                    function(inputObject)
                        if inputObject.KeyCode == Enum.KeyCode.Space then
                            if InfiniteJumpEnabled == true then
                                task.wait(0.01)
                                player.Character:WaitForChild("HumanoidRootPart").Velocity =
                                    Vector3.new(
                                    player.Character:WaitForChild("HumanoidRootPart").Velocity.X,
                                    Flags.JumpPower,
                                    player.Character:WaitForChild("HumanoidRootPart").Velocity.Z
                                )
                            end
                        end
                    end
                )
            end
        }
    )

    if hasPremium == true then
        godmodeToggle =
            Section:Toggle(
            {
                Text = "Godmode",
                Flag = "Godmode",
                Keybind = true,
                KeybindDefault = Enum.KeyCode.Clear,
                Tooltip = "Made by WannaCry",
                Callback = function(bool)
                    spawn(
                        function()
                            Notification(bool, "Godmode")
                        end
                    )
                    local args = {
                        [1] = bool
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("technical"):WaitForChild("ReplicateMenuStatus"):FireServer(unpack(args))

                end
            }
        )
    end

    noclipToggle =
        Section:Toggle(
        {
            Text = "Noclip",
            Flag = "Noclip",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Tooltip = "Made by ClassicSenior & slowpi",
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Noclip")
                    end
                )

                while Flags.Noclip do
                    game:GetService("RunService").RenderStepped:Wait()

                    game:GetService("Players").LocalPlayer.PlayerGui.engine.movement.correctcollision.Disabled = true
                    game.Players.LocalPlayer.Character.collisionPart.CanCollide = false
                    spawn(function()
                        game.Players.LocalPlayer.Character:WaitForChild("LowerTorso").CanCollide = false
                        game.Players.LocalPlayer.Character:WaitForChild("UpperTorso").CanCollide = false
                    end)
                    spawn(function()
                        game.Players.LocalPlayer.Character:WaitForChild("Torso").CanCollide = false
                    end)
                end

                game:GetService("Players").LocalPlayer.PlayerGui.engine.movement.correctcollision.Disabled = false
            end
        }
    )

    --[[local invisibilityToggle =
        Section:Toggle(
        {
            Text = "Invisibility (Patched?)",
            Flag = "Invisibility",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Invisibility")
                    end
                )

                local humanoid = player.Character:WaitForChild("HumanoidRootPart")
                local savedPosition = Vector3.new(humanoid.Position.X, humanoid.Position.Y, humanoid.Position.Z)

                if Flags.Invisibility == false then
                    workspace:FindFirstChild("invischair"):Remove()
                end

                if Flags.Invisibility == true then
                    local savedpos = player.Character.HumanoidRootPart.CFrame
                    wait()
                    player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 2000, 0)
                    wait(.15)
                    local Seat = Instance.new("Seat", game.Workspace)
                    Seat.Anchored = false
                    Seat.CanCollide = false
                    Seat.Name = "invischair"
                    Seat.Transparency = 1
                    Seat.Position = Vector3.new(0, 2000, 0)

                    local startCFrame = CFrame.new(Seat.Position)
                    local endCFrame = CFrame.new(99999,80000,5555555)
                    local duration = 300000
                    local startTime = tick()

                    while tick() - startTime < duration do
                        local t = (tick() - startTime) / duration
                        Seat.CFrame = startCFrame:lerp(endCFrame, t)
                        task.wait()
                    end

                    local Weld = Instance.new("Weld", Seat)
                    Weld.Part0 = Seat
                    Weld.Part1 = player.Character:FindFirstChild("Torso") or player.Character.UpperTorso
                    wait()
                    Seat.CFrame = savedpos
                end

                while Flags.Invisibility do
                    local humanoid = player.Character:WaitForChild("HumanoidRootPart")
                    local savedPosition =
                        Vector3.new(humanoid.Position.X, humanoid.Position.Y, humanoid.Position.Z)
                    task.wait()
                end

                game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()
                task.wait(1.75)
                player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(savedPosition)
            end
        }
    )]]

    if PlayerBoxEsp == true then
        RefreshBoxEsp = "Disable"
    else
        RefreshBoxEsp = "Enable"
    end

    if PlayerTracerEsp == true then
        RefreshTracerEsp = "Disable"
    else
        RefreshTracerEsp = "Enable"
    end

    if PlayerChamsEsp == true then
        RefreshChamsEsp = "Disable"
    else
        RefreshChamsEsp = "Enable"
    end

    if PlayerNametagEsp == true then
        RefreshNameTagEsp = "Disable"
    else
        RefreshNameTagEsp = "Enable"
    end

    if TCStatus == true then
        RefreshTCStatus = "Disable"
    else
        RefreshTCStatus = "Enable"
    end

    RefreshBoxEsp = "" .. RefreshBoxEsp .. " Box ESP"
    RefreshTracerEsp = "" .. RefreshTracerEsp .. " Tracer ESP"
    RefreshChamsEsp = "" .. RefreshChamsEsp .. " Chams ESP"
    RefreshNameTagEsp = "" .. RefreshNameTagEsp .. " Nametags ESP"
    RefreshTCStatus = "" .. RefreshTCStatus .. " Team Colors"

    PlayerEspSettingsList = {
        RefreshBoxEsp,
        RefreshTracerEsp,
        RefreshChamsEsp,
        RefreshNameTagEsp,
        RefreshTCStatus
    }

    RefreshBoxObjectEsp = "" .. RefreshBoxObjectEsp .. " Box ESP"
    RefreshTracerObjectEsp = "" .. RefreshTracerObjectEsp .. " Tracer ESP"
    RefreshNametagsObjectEsp = "" .. RefreshNametagsObjectEsp .. " Nametags Colors"

    ObjectEspSettingsList = {
        RefreshBoxObjectEsp,
        RefreshTracerObjectEsp,
        RefreshNametagsObjectEsp
    }

    getgenv().dropPlayerEspSettings =
        Section2:Dropdown(
        {
            Text = "Player ESP Settings",
            List = PlayerEspSettingsList,
            Callback = function(bool)
                if bool == PlayerEspSettingsList[1] then
                    PlayerBoxEsp = not PlayerBoxEsp
                    spawn(
                        function()
                            Notification(PlayerBoxEsp, "Player Box ESP")
                        end
                    )
                    if PlayerBoxEsp == true then
                        RefreshBoxEsp = "Disable Box ESP"
                    else
                        RefreshBoxEsp = "Enable Box ESP"
                    end
                end

                if bool == PlayerEspSettingsList[2] then
                    PlayerTracerEsp = not PlayerTracerEsp

                    spawn(
                        function()
                            Notification(PlayerTracerEsp, "Player Tracer ESP")
                        end
                    )
                    if PlayerTracerEsp == true then
                        RefreshTracerEsp = "Disable Tracer ESP"
                    else
                        RefreshTracerEsp = "Enable Tracer ESP"
                    end
                end

                if bool == PlayerEspSettingsList[3] then
                    PlayerChamsEsp = not PlayerChamsEsp
                    spawn(
                        function()
                            Notification(PlayerChamsEsp, "Player Chams ESP")
                        end
                    )
                    if PlayerChamsEsp == true then
                        RefreshChamsEsp = "Disable Chams ESP"
                    else
                        RefreshChamsEsp = "Enable Chams ESP"
                    end
                end

                if bool == PlayerEspSettingsList[4] then
                    PlayerNametagEsp = not PlayerNametagEsp
                    spawn(
                        function()
                            Notification(PlayerNametagEsp, "Player Nametags ESP")
                        end
                    )
                    if PlayerNametagEsp == true then
                        RefreshNameTagEsp = "Disable Nametags ESP"
                    else
                        RefreshNameTagEsp = "Enable Nametags ESP"
                    end
                end

                if bool == PlayerEspSettingsList[5] then
                    TCStatus = not TCStatus
                    spawn(
                        function()
                            Notification(TCStatus, "Player Team Colors")
                        end
                    )
                    if TCStatus == true then
                        RefreshTCStatus = "Disable Team Colors"
                    else
                        RefreshTCStatus = "Enable Team Colors"
                    end
                end

                PlayerEspSettingsList = {
                    RefreshBoxEsp,
                    RefreshTracerEsp,
                    RefreshChamsEsp,
                    RefreshNameTagEsp,
                    RefreshTCStatus
                }

                getgenv().dropPlayerEspSettings:Refresh({List = PlayerEspSettingsList})
            end
        }
    )

    getgenv().dropObjectEspSettings =
    Section2:Dropdown(
    {
        Text = "Object ESP Settings",
        List = ObjectEspSettingsList,
        Callback = function(bool)
            if bool == ObjectEspSettingsList[1] then
                ObjectBoxEsp = not ObjectBoxEsp
                spawn(
                    function()
                        Notification(ObjectBoxEsp, "Object Box ESP")
                    end
                )
                if ObjectBoxEsp == true then
                    RefreshBoxObjectEsp = "Disable Box ESP"
                else
                    RefreshBoxObjectEsp = "Enable Box ESP"
                end
            end

            if bool == ObjectEspSettingsList[2] then
                ObjectTracerEsp = not ObjectTracerEsp

                spawn(
                    function()
                        Notification(ObjectTracerEsp, "Object Tracer ESP")
                    end
                )
                if ObjectTracerEsp == true then
                    RefreshTracerObjectEsp = "Disable Tracer ESP"
                else
                    RefreshTracerObjectEsp = "Enable Tracer ESP"
                end
            end

            if bool == ObjectEspSettingsList[3] then
                ObjectNametagEsp = not ObjectNametagEsp
                spawn(
                    function()
                        Notification(ObjectNametagEsp, "Object Nametags ESP")
                    end
                )
                if ObjectNametagEsp == true then
                    RefreshNametagsObjectEsp = "Disable Nametags ESP"
                else
                    RefreshNametagsObjectEsp = "Enable Nametags ESP"
                end
            end

            ObjectEspSettingsList = {
                RefreshBoxObjectEsp,
                RefreshTracerObjectEsp,
                RefreshNametagsObjectEsp
            }

            getgenv().dropObjectEspSettings:Refresh({List = ObjectEspSettingsList})
        end
    }
)

local ESP = loadstring(game:HttpGet("https://slowpihax.xyz/kiriot.lua"))()

    playerespToggle =
        Section2:Toggle(
        {
            Text = "Player ESP",
            Flag = "PlayerESP",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Player ESP")
                    end
                )

                if Flags.PlayerESP == true then
                    local Players = game:GetService("Players")
                    
                    ESP.Tracers = PlayerTracerEsp
                    ESP.Names = PlayerNametagEsp
                    ESP.Boxes = PlayerBoxEsp
                    ESP.Players = true
                    ESP.FaceCamera = true
                    ESP.Enabled = "PlayerESP"
                    ESP.TeamColor = TCStatus
                    ESP.Color = Color3.new(0.631373, 0.768628, 0.54902)
                    
                    ESP.PlayerESP = true
                    ESP:Toggle(true)

                    if PlayerChamsEsp == true then
                        espLib =
                            loadstring(
                            game:HttpGet(
                                ("https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua"),
                                true
                            )
                        )()

                        espLib.options.enabled = true
                        espLib.options.minScaleFactorX = 1
                        espLib.options.maxScaleFactorX = 10
                        espLib.options.minScaleFactorY = 1
                        espLib.options.maxScaleFactorY = 10
                        espLib.options.boundingBox = false
                        espLib.options.boundingBoxDescending = true
                        espLib.options.font = 2
                        espLib.options.fontSize = 13
                        espLib.options.limitDistance = false
                        espLib.options.maxDistance = 99999
                        espLib.options.visibleOnly = false
                        espLib.options.teamCheck = false
                        espLib.options.teamColor = TCStatus
                        espLib.options.fillColor = nil
                        espLib.options.whitelistColor = Color3.new(1, 0, 0)
                        espLib.options.outOfViewArrows = false
                        espLib.options.outOfViewArrowsFilled = false
                        espLib.options.outOfViewArrowsSize = 25
                        espLib.options.outOfViewArrowsRadius = 100
                        espLib.options.outOfViewArrowsColor = Color3.new(1, 1, 1)
                        espLib.options.outOfViewArrowsTransparency = 0.5
                        espLib.options.outOfViewArrowsOutline = false
                        espLib.options.outOfViewArrowsOutlineFilled = false
                        espLib.options.outOfViewArrowsOutlineColor = Color3.new(1, 1, 1)
                        espLib.options.outOfViewArrowsOutlineTransparency = 1
                        espLib.options.names = false
                        espLib.options.nameTransparency = 1
                        espLib.options.nameColor = Color3.new(1, 1, 1)
                        espLib.options.boxes = false
                        espLib.options.boxesTransparency = 1
                        espLib.options.boxesColor = Color3.new(1, 0, 0)
                        espLib.options.boxFill = false
                        espLib.options.boxFillTransparency = 0.5
                        espLib.options.boxFillColor = Color3.new(1, 0, 0)
                        espLib.options.healthBars = false
                        espLib.options.healthBarsSize = 1
                        espLib.options.healthBarsTransparency = 1
                        espLib.options.healthBarsColor = Color3.new(0, 1, 0)
                        espLib.options.healthText = false
                        espLib.options.healthTextTransparency = 1
                        espLib.options.healthTextSuffix = "%"
                        espLib.options.healthTextColor = Color3.new(1, 1, 1)
                        espLib.options.distance = false
                        espLib.options.distanceTransparency = 1
                        espLib.options.distanceSuffix = " Studs"
                        espLib.options.distanceColor = Color3.new(1, 1, 1)
                        espLib.options.tracers = false
                        espLib.options.tracerTransparency = 1
                        espLib.options.tracerColor = Color3.new(1, 1, 1)
                        espLib.options.tracerOrigin = "Bottom"
                        espLib.options.chams = true
                        espLib.options.chamsFillColor = Color3.new(0.631373, 0.768628, 0.54902)
                        espLib.options.chamsFillTransparency = 0.45
                        espLib.options.chamsOutlineColor = Color3.new()
                        espLib.options.chamsOutlineTransparency = 0.05

                        espLib:Load()
                    end
                else
                    ESP.PlayerESP = false
                    ESP:Toggle(false)
                    espLib:Unload()
                end
            end
        }
    )

    botespToggle =
        Section2:Toggle(
        {
            Text = "Bot Esp",
            Flag = "BotESP",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Bot ESP")
                    end
                )

                BotESP = loadstring(game:HttpGet("https://slowpihax.xyz/kiriot.lua"))()

                BotESP.Players = false
                BotESP.FaceCamera = true
                BotESP.Tracers = ObjectTracerEsp
                BotESP.Names = ObjectNametagEsp
                BotESP.Boxes = ObjectBoxEsp
                
                BotESP.Bot = true
                BotESP:Toggle(true)
                
                    while Flags.BotESP do
                        for i, v in pairs(game:GetService("Workspace").bots:GetDescendants()) do
                            if v:IsA("Part") and v.Name == "HumanoidRootPart" then
                                if not v:FindFirstChild("slowpihax-BotESP") then
                                    local botPart = Instance.new("MeshPart")
                                    botPart.Parent = v
                                    botPart.Name = "slowpihax-BotESP"
                                    botPart.Anchored = true
                                    botPart.CFrame = CFrame.new(v.Position)
                                    botPart.Transparency = 1
                
                                        BotESP:AddObjectListener(
                                            botPart.Parent,
                                            {
                                                Recursive = true,
                                                Name = botPart.Name,
                                                CustomName = botPart.Parent.Parent.Name,
                                                Color = Color3.fromRGB(255, 0, 0),
                                                IsEnabled = "Bot"
                                            }
                                        )
                
                                else v:FindFirstChild("slowpihax-BotESP").CFrame = CFrame.new(v.Position)
                                end
                            end
                        end
                
                        task.wait()
                
                    end
                
                BotESP.Bot = false
                BotESP:Toggle(false)
                for i,v in pairs(game:GetService("Workspace").bots:GetDescendants()) do
                    if v.Name == "slowpihax-BotESP" then
                        v:Destroy()
                    end
                end
            end
        }
    )
--[[

    canisterespToggle =
        Section2:Toggle(
        {
            Text = "Canister Esp",
            Flag = "CanisterESP",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Canister ESP")
                    end
                )

                CanisterESP = loadstring(game:HttpGet("https://slowpihax.xyz/kiriot.lua"))()

                CanisterESP.Players = false
                CanisterESP.FaceCamera = true
                CanisterESP.Tracers = ObjectTracerEsp
                CanisterESP.Names = ObjectNametagEsp
                CanisterESP.Boxes = ObjectBoxEsp
                
                CanisterESP.Canister = true
                CanisterESP:Toggle(true)
                
                local Instance_new = Instance.new
                local Color3_new = Color3.new
                local task_wait = task.wait
                
                while Flags.CanisterESP do
                    for i,v in pairs(workspace.canisters:GetChildren()) do
                        if v:FindFirstChildOfClass("Part") then
                            local child = v:FindFirstChildOfClass("Part"):FindFirstChild("slowpihax-CanisterESP")
                            if not child then
                                local canisterPartESP = Instance.new("Part")
                                canisterPartESP.Name = "slowpihax-CanisterESP"
                                canisterPartESP.Parent = v:FindFirstChildOfClass("Part")
                                canisterPartESP.Position = v:FindFirstChildOfClass("Part").Position
                                canisterPartESP.CanCollide = false
                                canisterPartESP.Anchored = true
                                canisterPartESP.Transparency = 1
                
                                CanisterESP:AddObjectListener(
                                    canisterPartESP.Parent,
                                    {
                                        Recursive = true,
                                        Name = canisterPartESP.Name,
                                        CustomName = "Canister",
                                        Color = Color3_new(0.631373, 0.768628, 0.54902),
                                        IsEnabled = "Canister"
                                    }
                                )
                            else 
                                child.CFrame = CFrame.new(v.Position)
                            end
                        end
                    end
                
                    task_wait(0.1)
                end
                
                
                CanisterESP.Canister = false
                CanisterESP:Toggle(false)

                for i,v in pairs(game:GetService("Workspace").canisters:GetDescendants()) do
                    if v.Name == "slowpihax-CanisterESP" then
                        v:Destroy()
                    end
                end
            end
        }
    )
]]
    fullbrightToggle =
        Section2:Toggle(
        {
            Text = "Fullbright",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Fullbright")
                    end
                )
                if not _G.FullBrightExecuted then
                    _G.FullBrightEnabled = false

                    _G.NormalLightingSettings = {
                        Brightness = game:GetService("Lighting").Brightness,
                        ClockTime = game:GetService("Lighting").ClockTime,
                        FogEnd = game:GetService("Lighting").FogEnd,
                        GlobalShadows = game:GetService("Lighting").GlobalShadows,
                        Ambient = game:GetService("Lighting").Ambient
                    }

                    game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(
                        function()
                            if
                                game:GetService("Lighting").Brightness ~= 1 and
                                    game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness
                             then
                                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                                if not _G.FullBrightEnabled then
                                    repeat
                                        wait()
                                    until _G.FullBrightEnabled
                                end
                                game:GetService("Lighting").Brightness = 1
                            end
                        end
                    )

                    game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(
                        function()
                            if
                                game:GetService("Lighting").ClockTime ~= 12 and
                                    game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime
                             then
                                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                                if not _G.FullBrightEnabled then
                                    repeat
                                        wait()
                                    until _G.FullBrightEnabled
                                end
                                game:GetService("Lighting").ClockTime = 12
                            end
                        end
                    )

                    game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(
                        function()
                            if
                                game:GetService("Lighting").FogEnd ~= 786543 and
                                    game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd
                             then
                                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                                if not _G.FullBrightEnabled then
                                    repeat
                                        wait()
                                    until _G.FullBrightEnabled
                                end
                                game:GetService("Lighting").FogEnd = 786543
                            end
                        end
                    )

                    game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(
                        function()
                            if
                                game:GetService("Lighting").GlobalShadows ~= false and
                                    game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows
                             then
                                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                                if not _G.FullBrightEnabled then
                                    repeat
                                        wait()
                                    until _G.FullBrightEnabled
                                end
                                game:GetService("Lighting").GlobalShadows = false
                            end
                        end
                    )

                    game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(
                        function()
                            if
                                game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and
                                    game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient
                             then
                                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                                if not _G.FullBrightEnabled then
                                    repeat
                                        wait()
                                    until _G.FullBrightEnabled
                                end
                                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                            end
                        end
                    )

                    game:GetService("Lighting").Brightness = 1
                    game:GetService("Lighting").ClockTime = 12
                    game:GetService("Lighting").FogEnd = 786543
                    game:GetService("Lighting").GlobalShadows = false
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

                    local LatestValue = true
                    spawn(
                        function()
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                            while wait() do
                                if _G.FullBrightEnabled ~= LatestValue then
                                    if not _G.FullBrightEnabled then
                                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                                        game:GetService("Lighting").GlobalShadows =
                                            _G.NormalLightingSettings.GlobalShadows
                                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                                    else
                                        game:GetService("Lighting").Brightness = 1
                                        game:GetService("Lighting").ClockTime = 12
                                        game:GetService("Lighting").FogEnd = 786543
                                        game:GetService("Lighting").GlobalShadows = false
                                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                                    end
                                    LatestValue = not LatestValue
                                end
                            end
                        end
                    )
                end

                _G.FullBrightExecuted = true
                _G.FullBrightEnabled = not _G.FullBrightEnabled
            end
        }
    )

    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(
        function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end
    )

    Section3:Toggle(
        {
            Text = "Autofarm",
            Flag = "Autofarm",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Autofarm")
                    end
                )
                if not game:FindFirstChild("slowpihax-autofarm") then
                    local part = Instance.new("Part")
                    part.Anchored = true
                    part.BottomSurface = Enum.SurfaceType.Smooth
                    part.TopSurface = Enum.SurfaceType.Smooth
                    part.Color = Color3.fromRGB(255, 0, 0)
                    part.Material = Enum.Material.Plastic
                    part.Size = Vector3.new(3000, 25, 3000)
                    part.Parent = workspace

                    part.CFrame = CFrame.new(90000, 10000, 90000)
                    part.Name = "slowpihax-autofarm"

                    player.Character.HumanoidRootPart.CFrame = CFrame.new(90000, 10100, 90000)
                end
                
                local newpos

                local character = player.Character
                local humanoid = character:WaitForChild("Humanoid")
                local startCFrame = character.HumanoidRootPart.CFrame
                local endCFrame = CFrame.new(Vector3.new(90000, 10100, 90000))
                local duration = 1
                local startTime = tick()

                while tick() - startTime < duration do
                    local t = (tick() - startTime) / duration
                    character.HumanoidRootPart.CFrame = startCFrame:lerp(endCFrame, t)
                    task.wait()
                end
                humanoid.Jump = true

                local function autofarm(pos)
                    position = pos
                    local startCFrame = character.HumanoidRootPart.CFrame
                    local endCFrame = CFrame.new(position)
                    local duration = 2
                    local startTime = tick()

                    while tick() - startTime < duration do
                        local t = (tick() - startTime) / duration
                        character.HumanoidRootPart.CFrame = startCFrame:lerp(endCFrame, t)
                        task.wait()
                    end

                    humanoid.Jump = true
                end

                while Flags.Autofarm do
                    task.wait()

                    newpos = Vector3.new(90884, 11246, 89093)

                    autofarm(newpos)

                    if Flags.Autofarm == false then
                        break
                    end

                    newpos = Vector3.new(88983, 10015, 90007)

                    autofarm(newpos)

                    if Flags.Autofarm == false then
                        break
                    end

                    newpos = Vector3.new(91013, 10015, 91014)

                    autofarm(newpos)
                end

                game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()
            end
        }
    )

    local resetAutofarmV2 = false
    local autofarmV2Enabled = false
    local interactDoor

    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "interactable_door" and v.Parent.Name == "doors" then
            interactDoor = v
        end
    end

    if hasPremium == true then
        autofarmv2 = Section3:Toggle(
            {
                Text = "Autofarm v2",
                Flag = "Autofarmv2",
                Keybind = true,
                KeybindDefault = Enum.KeyCode.Clear,
                Callback = function(bool)
                    spawn(
                        function()
                            Notification(bool, "Autofarm v2")
                        end
                    )

                    local part = Instance.new("Part")
                    part.Anchored = true
                    part.BottomSurface = Enum.SurfaceType.Smooth
                    part.TopSurface = Enum.SurfaceType.Smooth
                    part.Color = Color3.fromRGB(255, 0, 0)
                    part.Material = Enum.Material.Neon
                    part.Size = Vector3.new(10, 1, 10)
                    part.Parent = workspace
                    part.Name = "slowpihax-autofarm"
                    part.Position = Vector3.new(10000, 1000, 10000)

                    local resetbhop = false
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local position = character.HumanoidRootPart.Position

                    spawn(
                        function()
                            while Flags.Autofarmv2 do
                                position = character.HumanoidRootPart.Position

                                part.Position = Vector3.new(position.X, 1000, position.Z)

                                game:GetService("RunService").Heartbeat:Wait()
                            end
                        end
                    )

                    spawn(
                        function()
                            task.wait(5)
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

                            local initialPosition = humanoidRootPart.Position

                            while Flags.Autofarmv2 do
                                wait(0.5)

                                local currentPosition = humanoidRootPart.Position
                                local distance = (currentPosition - initialPosition).Magnitude

                                if distance > 900 then
                                    humanoidRootPart.CFrame = CFrame.new(initialPosition)
                                end
                            end
                        end
                    )

                    character.HumanoidRootPart.CFrame = CFrame.new(position.X, 1010, position.Z)

                    spawn(
                        function()
                            game:GetService("Players").LocalPlayer.PlayerGui.bonuspoints.points.ChildAdded:Connect(function(score)
                                if score.Value == 10 then
                                    resetbhop = true
                                    task.wait(1.75)
                                    resetbhop = false
                                end
                            end)
                        end
                    )

                    local Players = game:GetService("Players")
                    local RunService = game:GetService("RunService")

                    local player = Players.LocalPlayer
                    local character = player.Character
                    local humanoid = character:WaitForChild("Humanoid")

                    RunService:BindToRenderStep(
                        "MoveForward",
                        Enum.RenderPriority.Input.Value,
                        function()
                            if Flags.Autofarmv2 == true then
                                humanoid:Move(Vector3.new(0, 0, -1))
                            end
                        end
                    )

                    spawn(function()
                        while Flags.Autofarmv2 do
                            if resetbhop ~= true then
                                humanoid.Jump = true
                            else
                                wait(1.75)
                                resetbhop = false
                            end

                            wait()
                        end
                    end)

                    spawn(function()
                        while Flags.Autofarmv2 do
                            if resetbhop ~= true then
                                humanoid.Jump = true
                            else
                                wait(1.75)
                                resetbhop = false
                            end

                            wait()
                        end
                    end)

                    spawn(function()
                        while Flags.Autofarmv2 do
                            if resetbhop ~= true then
                                humanoid.Jump = true
                            else
                                wait(1.75)
                                resetbhop = false
                            end

                            wait()
                        end
                    end)

                    spawn(function()
                        while Flags.Autofarmv2 do
                            wait()
                        
                            humanoid.JumpPower = 25.55
                        end
                    end)

                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "interactable_door" and v.Parent.Name == "doors" then
                            interactDoor = v
                        end
                    end

                spawn(function()
                    while Flags.Autofarmv2 do
                        local args = {
                            [1] = interactDoor,
                            [2] = true
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("player"):WaitForChild("char"):WaitForChild("bashdoor"):InvokeServer(unpack(args))
                    
                        task.wait(10)
                    end
                end)

                    while Flags.Autofarmv2 do
                        autofarmV2Enabled = true

                        if resetbhop ~= true then
                            character.HumanoidRootPart.Velocity = Vector3.new(character.HumanoidRootPart.Velocity.X, character.HumanoidRootPart.Velocity.Y, -math.random(50,110))
                        end

                        wait()
                    end

                    game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()

                    game.workspace:FindFirstChild("slowpihax-autofarm"):Destroy()
                end
            }
        )
    end

    local resetbhop = false

    if hasPremium == true then
        autofarmv2BETA = Section3:Toggle(
            {
                Text = "Autofarm v2 BETA",
                Flag = "Autofarmv2BETA",
                Keybind = true,
                KeybindDefault = Enum.KeyCode.Clear,
                Callback = function(bool)
                    spawn(
                        function()
                            Notification(bool, "Autofarm v2")
                        end
                    )

                teleportPlayer(Vector3.new(-1982.03345, 472.75, -273.076691, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754))
                teleportPlayer(Vector3.new(-1982.03345, 472.75, -273.076691, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754))
                teleportPlayer(Vector3.new(-1982.03345, 472.75, -273.076691, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754))

                task.wait(1.5)

                for i,v in pairs(game:GetService("Workspace").nn_poolrooms.Walls:GetChildren()) do
                    if v.Name == "Part" and v:IsA("Part") and v.Transparency == 0 and v.CanCollide == true then
                        if v.Anchored == true and v.Shape == Enum.PartType.Block and v.Massless == false then
                            if v.CanTouch == true and v.CanQuery == true and v.Reflectance == 0 and v.Material == Enum.Material.SmoothPlastic then
                                if v.Color == Color3.fromRGB(140, 140, 140) and v.MaterialVariant == "PoolRooms_Texture" and v.Rotation == Vector3.new(0,-90,0) then
                                    if v.CollisionGroup == "Default" and v.RootPriority == 0 and v.CastShadow == true and v.Locked == false then
                                        if v.Mass == 1328.1246337890625 or v.Mass == 1651.9700927734375 or v.Mass == 2891.2236328125 then
                                            v:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end


                task.wait(0.15)

                local part = Instance.new("Part")
                part.Anchored = true
                part.BottomSurface = Enum.SurfaceType.Smooth
                part.TopSurface = Enum.SurfaceType.Smooth
                part.Color = Color3.fromRGB(255, 0, 0)
                part.Material = Enum.Material.Neon
                part.Size = Vector3.new(5, 1, 5)
                part.Parent = workspace
                part.Name = "slowpihax-autofarm"
                part.Position = Vector3.new(10000, 1000, 10000)

                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local position = character.HumanoidRootPart.Position

                spawn(
                    function()
                        while Flags.Autofarmv2BETA do
                            position = character.HumanoidRootPart.Position

                            part.Position = Vector3.new(position.X, 460, position.Z)

                            wait()
                        end
                    end
                )

                    spawn(
                        function()
                            task.wait(5)
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

                            local initialPosition = Vector3.new(-1980.75562, 473, -273.076691)

                            while Flags.Autofarmv2BETA do
                                wait(0.5)

                                local currentPosition = humanoidRootPart.Position
                                local distance = (currentPosition - initialPosition).Magnitude

                                if distance > 354 or currentPosition.Y < 468.3 then
                                    humanoidRootPart.CFrame = CFrame.new(-1982.03345, 472.75, -273.076691, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754)
                                end
                            end
                        end
                    )

                    character.HumanoidRootPart.CFrame = CFrame.new(-1982.03345, 472.75, -273.076691, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754)

                    spawn(
                        function()
                            game:GetService("Players").LocalPlayer.PlayerGui.bonuspoints.points.ChildAdded:Connect(function(score)
                                if score.Value == 10 then
                                    resetbhop = true
                                    task.wait(1.01)
                                    resetbhop = false
                                end
                            end)
                        end
                    )

                    local Players = game:GetService("Players")
                    local RunService = game:GetService("RunService")

                    local player = Players.LocalPlayer
                    local character = player.Character
                    local humanoid = character:WaitForChild("Humanoid")
                    local xPos = (-273.076691) + (math.random(-100, 100)/333)

                    RunService:BindToRenderStep(
                        "MoveForward",
                        Enum.RenderPriority.Input.Value,
                        function()
                            if Flags.Autofarmv2BETA == true then
                                humanoid:Move(Vector3.new(1, 0, 0))

                                xPos = -273.076691

                                spawn(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, xPos, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754)
                                end)
            
                                spawn(function()
                                    if resetbhop ~= true then
                                        character.HumanoidRootPart.Velocity = Vector3.new(math.random(25,150), character.HumanoidRootPart.Velocity.Y, character.HumanoidRootPart.Velocity.Z)
                                    elseif resetbhop == true then
                                        character.HumanoidRootPart.Velocity = Vector3.new(0, character.HumanoidRootPart.Velocity.Y, character.HumanoidRootPart.Velocity.Z)
                                    end
                                end)

                                xPos = (-273.076691) + (math.random(-100, 100)/425) -- 333 = 433, 360 = 433, 400 = 434

                                spawn(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, xPos, 0.0138887754, 0, -0.99990356, 0, 1, 0, 0.99990356, 0, 0.0138887754)
                                end)
                            end
                        end
                    )

                    spawn(function()
                        while Flags.Autofarmv2BETA do
                            if resetbhop ~= true then
                                humanoid.Jump = true
                            else
                                wait(1.01)
                                resetbhop = false
                            end

                            wait()
                        end
                    end)

                    spawn(function()
                        while Flags.Autofarmv2BETA do
                            game:GetService("RunService").Heartbeat:Wait()
                        
                            humanoid.JumpPower = 27.5
                        end
                    end)

                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "interactable_door" and v.Parent.Name == "doors" then
                            interactDoor = v
                        end
                    end

                    while Flags.Autofarmv2BETA do
                        local args = {
                            [1] = interactDoor,
                            [2] = true
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("player"):WaitForChild("char"):WaitForChild("bashdoor"):InvokeServer(unpack(args))
                    
                        task.wait(10)
                    end

                    game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()

                    game.workspace:FindFirstChild("slowpihax-autofarm"):Destroy()
                end
            }
        )
    end

    if hasPremium == true then
        autofarmv2BETA = Section3:Toggle(
            {
                Text = "Autofarm v2 BETA 2",
                Flag = "Autofarmv2BETA2",
                Keybind = true,
                KeybindDefault = Enum.KeyCode.Clear,
                Callback = function(bool)
                    spawn(
                        function()
                            Notification(bool, "Autofarm v2")
                        end
                    )

                teleportPlayer(Vector3.new(-1844.26013, 459, -363.098511, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901))
                teleportPlayer(Vector3.new(-1844.26013, 459, -363.098511, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901))
                teleportPlayer(Vector3.new(-1844.26013, 459, -363.098511, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901))

                task.wait(1.5)

                for i,v in pairs(game:GetService("Workspace").nn_poolrooms.Walls:GetChildren()) do
                    if v:IsA("Part") then
                        if v.Mass == 313778.125 then
                            v:Destroy()
                        end
                    end
                end

                task.wait(0.15)

                local part = Instance.new("Part")
                part.Anchored = true
                part.BottomSurface = Enum.SurfaceType.Smooth
                part.TopSurface = Enum.SurfaceType.Smooth
                part.Color = Color3.fromRGB(255, 0, 0)
                part.Material = Enum.Material.Neon
                part.Size = Vector3.new(5, 1, 5)
                part.Parent = workspace
                part.Name = "slowpihax-autofarm"
                part.Position = Vector3.new(10000, 1000, 10000)

                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local position = character.HumanoidRootPart.Position

                spawn(
                    function()
                        while Flags.Autofarmv2BETA2 do
                            position = character.HumanoidRootPart.Position

                            part.Position = Vector3.new(position.X, 446, position.Z)

                            wait()
                        end
                    end
                )

                    spawn(
                        function()
                            task.wait(3)
                            local player = game.Players.LocalPlayer
                            local character = player.Character or player.CharacterAdded:Wait()
                            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

                            local initialPosition = Vector3.new(-1844.26013, 459, -363.098511)

                            while Flags.Autofarmv2BETA2 do
                                wait()

                                local currentPosition = humanoidRootPart.Position
                                local distance = (currentPosition - initialPosition).Magnitude

                                if distance > 275 or currentPosition.Y < 450 or currentPosition.Y > 460.5 then
                                    humanoidRootPart.CFrame = CFrame.new(-1844.26013, 459, -363.098511, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901)
                                end
                            end
                        end
                    )

                    character.HumanoidRootPart.CFrame = CFrame.new(-1844.26013, 459, -363.098511, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901)

                    spawn(
                        function()
                            game:GetService("Players").LocalPlayer.PlayerGui.bonuspoints.points.ChildAdded:Connect(function(score)
                                if score.Value == 10 then
                                    resetbhop = true
                                    task.wait(1.01)
                                    resetbhop = false
                                end
                            end)
                        end
                    )

                    local Players = game:GetService("Players")
                    local RunService = game:GetService("RunService")

                    local player = Players.LocalPlayer
                    local character = player.Character
                    local humanoid = character:WaitForChild("Humanoid")
                    local xPos = (-1844.26013) + (math.random(-100, 100)/333)

                    RunService:BindToRenderStep(
                        "MoveForward",
                        Enum.RenderPriority.Input.Value,
                        function()
                            if Flags.Autofarmv2BETA2 == true then
                                humanoid:Move(Vector3.new(0, 0, -1))

                                xPos = -1844.26013

                                spawn(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xPos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901)
                                end)
            
                                spawn(function()
                                    if resetbhop ~= true then
                                        character.HumanoidRootPart.Velocity = Vector3.new(character.HumanoidRootPart.Velocity.X, character.HumanoidRootPart.Velocity.Y, -math.random(25,150))
                                    elseif resetbhop == true then
                                        character.HumanoidRootPart.Velocity = Vector3.new(character.HumanoidRootPart.Velocity.X, character.HumanoidRootPart.Velocity.Y, 0)
                                    end
                                end)

                                xPos = (-1844.26013) + (math.random(-100, 100)/425) -- 333 = 433, 360 = 433, 400 = 434

                                spawn(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xPos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z, 0.999996901, 1.45829671e-33, -0.0024854017, -1.46301008e-33, 1, -1.89457455e-33, 0.0024854017, 1.89820481e-33, 0.999996901)
                                end)
                            end
                        end
                    )

                    spawn(function()
                        while Flags.Autofarmv2BETA2 do
                            if resetbhop ~= true then
                                humanoid.Jump = true
                            else
                                wait(1.01)
                                resetbhop = false
                            end

                            wait()
                        end
                    end)

                    spawn(function()
                        while Flags.Autofarmv2BETA2 do
                            game:GetService("RunService").Heartbeat:Wait()
                        
                            humanoid.JumpPower = 27.45
                        end
                    end)

                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "interactable_door" and v.Parent.Name == "doors" then
                            interactDoor = v
                        end
                    end

                    while Flags.Autofarmv2BETA2 do
                        local args = {
                            [1] = interactDoor,
                            [2] = true
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("player"):WaitForChild("char"):WaitForChild("bashdoor"):InvokeServer(unpack(args))
                    
                        task.wait(10)
                    end

                    game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()

                    game.workspace:FindFirstChild("slowpihax-autofarm"):Destroy()
                end
            }
        )
    end

    Section3:Toggle(
        {
            Text = "Auto Punch",
            Flag = "AutoPunch",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Auto Punch")
                    end
                )
                spawn(
                    function()
                        while Flags.AutoPunch do
                            task.wait()
                            game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("player"):WaitForChild(
                                "local"
                            ):WaitForChild("punch"):FireServer()
                        end
                    end
                )
                spawn(
                    function()
                        while Flags.AutoPunch do
                            task.wait(20)
                            local punches =
                                tostring(
                                game:GetService("Players").LocalPlayer:WaitForChild("stats"):WaitForChild("punches").Value
                            )
                            print("Your Current Total Punches are: " .. punches)
                        end
                    end
                )
            end
        }
    )

    local bonus_HIGHSPEED = 0
    local bonus_BHOP = 0
    local bonus_DOORBREAK = 0
    local bonus_TRIMP = 0

    game:GetService("Players").LocalPlayer.PlayerGui.bonuspoints.defaultList.ChildAdded:Connect(function(bonus)
        if bonus:IsA("Frame") then
            local name = bonus.Frame.name.Text
            local points = bonus.Frame.points.Text
    
            if name == "HIGH SPEED" then
                bonus_HIGHSPEED = bonus_HIGHSPEED + tonumber(points)
            elseif name == "BHOP" then
                bonus_BHOP = bonus_BHOP + tonumber(points)
            elseif name == "DOOR BREAK" then
                bonus_DOORBREAK = bonus_DOORBREAK + tonumber(points)
            elseif name == "TRIMP" then
                bonus_TRIMP = bonus_TRIMP + tonumber(points)
            elseif string.sub(name, 1, 6) == "BHOP #" then
                if tonumber(string.sub(name, 7, 9)) > 50 then
                    resetbhop = true
                end
            end
        end
    end)

    Section3:Toggle(
        {
            Text = "Score Logger",
            Flag = "ScoreLogger",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Score Logger")
                    end
                )
                
                while Flags.ScoreLogger do
                    task.wait(30)
                
                    print("--------------------------------------")
                    print("Total amount of score from HIGH SPEED: ".. bonus_HIGHSPEED)
                    print("Total amount of score from BHOP: ".. bonus_BHOP)
                    print("Total amount of score from DOOR BREAK: ".. bonus_DOORBREAK)
                    print("Total amount of score from TRIMP: ".. bonus_TRIMP)
                end
            end
        }
    )

if hasPremium == true then
    Section4:Button(
        {
            Text = "Reboot Server",
            Callback = function()
                local args = {
                    [1] = "Snowball",
                    [2] = "Gear",
                    [3] = 2
                }

                game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild(
                    "shoppurchasebux"
                ):InvokeServer(unpack(args))

                local args = {
                    [1] = "Balloon",
                    [2] = "Gear",
                    [3] = 1
                }

                game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild(
                    "shoppurchasebux"
                ):InvokeServer(unpack(args))

                local enabled = false
                local repStorage = game:GetService("ReplicatedStorage")
                local values = repStorage.values
                local events = values.events
                local misc = values.misc
                local ownedItems =
                game:GetService("HttpService"):JSONDecode(game:GetService("Players").LocalPlayer.cosmetics.OwnedItems.Value)


                local servertime = misc:FindFirstChild("servertime").Value
                local currentEvent = events.currentevent.Value
                local balloonOwned = ownedItems.Gear.Balloon == true
                local snowballOwned = ownedItems.Gear.Snowball > 2
                local playerCount = #game.Players:GetPlayers()
                local args = {
                    [1] = "Balloon",
                    [2] = "Gear",
                    [3] = 1
                }

                local reason = ""

                if servertime > 900 and playerCount <= 8 then
                    reason = "Servertime is greater than 900 but player count is not greater than 8."
                elseif servertime <= 900 and playerCount > 8 then
                    reason = "Servertime is not greater than 900 but player count is greater than 8."
                elseif servertime > 300 and playerCount <= 14 then
                    reason = "Servertime is greater than 300 but player count is not greater than 14."
                elseif playerCount <= 15 then
                    reason = "Not enough players to consistently reboot the server!"
                elseif not ownedItems.Gear.Balloon then
                    reason = "Balloon is not owned."
                elseif ownedItems.Gear.Snowball <= 2 then
                    reason = "Snowball count is not greater than 2."
                else
                    enabled = true
                end

                if playerCount > 20 then
                    enabled = true
                end

                if enabled == true then
                    NotificationLibrary:SendNotification("Info", "Reboot Server (BETA) Executed!       This may take 2-5 minutes depending on player count & activity & other factors.", 300)

                    local args = {
                        [1] = "nn_russia"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("player"):WaitForChild("char"):WaitForChild("changezone"):FireServer(unpack(args))
                    
                    game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()
    
                    repeat task.wait() until game:GetService("Workspace"):WaitForChild(tostringLocalPlayerName)

                    task.wait(1)

                    local args = {
                        [1] = "Balloon",
                        [2] = "Gear"
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild(
                        "itemequip"
                    ):InvokeServer(unpack(args))

                    local args = {
                        [1] = "Snowball",
                        [2] = "Gear"
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild(
                        "itemequip"
                    ):InvokeServer(unpack(args))

                    local args = {
                        [1] = "Snowball",
                        [2] = "Gear"
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild(
                        "itemequip"
                    ):InvokeServer(unpack(args))

                    spawn(
                        function()
                            task.wait(30)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            local spinVelocity = Instance.new("BodyAngularVelocity")
                            spinVelocity.Name = "spinvelocity"
                            spinVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                            spinVelocity.MaxTorque = Vector3.new(0, math.huge, 0)
                            spinVelocity.AngularVelocity = Vector3.new(0, math.huge, 0)
                            task.wait(2)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        end
                    )

                    spawn(
                        function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                            task.wait(150)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            local spinVelocity = Instance.new("BodyAngularVelocity")
                            spinVelocity.Name = "spinvelocity"
                            spinVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                            spinVelocity.MaxTorque = Vector3.new(0, math.huge, 0)
                            spinVelocity.AngularVelocity = Vector3.new(0, 1000000, 0)

                            task.wait(0.25)
                        end
                    )

                    spawn(
                        function()
                            task.wait(180)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                            task.wait(10)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            local spinVelocity3 = Instance.new("BodyAngularVelocity")
                            spinVelocity3.Name = "spinvelocity3"
                            spinVelocity3.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                            spinVelocity3.MaxTorque = Vector3.new(0, math.huge, 0)
                            spinVelocity3.AngularVelocity = Vector3.new(0, 1500000, 0)

                            task.wait(0.25)
                        end
                    )

                    task.wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        -1183.49402,
                        9.99999968e+37,
                        -40.909668,
                        0.0411496758,
                        -0,
                        -0.999153018,
                        0,
                        1,
                        -0,
                        0.999153018,
                        0,
                        0.0411496758
                    )

                    task.wait(0.1)

                    local spinVelocity = Instance.new("BodyAngularVelocity")
                    spinVelocity.Name = "spinvelocity"
                    spinVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    spinVelocity.MaxTorque = Vector3.new(0, math.huge, 0)
                    spinVelocity.AngularVelocity = Vector3.new(0, 1000000, 0)

                    task.wait(0.25)

                    local function equip(toolname)
                        local Plr = game:GetService("Players").LocalPlayer
                        local tool = Plr.Backpack:FindFirstChild(toolname)
                        Plr.Character.Humanoid:EquipTool(tool)
                    end

                    spawn(
                        function()
                            while true do
                                equip("Snowball")
                                equip("Balloon")
                                equip("Snowball")
                                equip("Balloon")
                                equip("Snowball")
                                equip("Balloon")
                                task.wait(2.5)
                            end
                        end
                    )

                    spawn(
                        function()
                            while true do
                                game:GetService("RunService").RenderStepped:Wait()
                                equip("Balloon")
                                game:GetService("RunService").RenderStepped:Wait()
                                equip("Snowball")
                                game:GetService("RunService").Heartbeat:Wait()
                                equip("Balloon")
                                game:GetService("RunService").Heartbeat:Wait()
                                equip("Snowball")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Balloon")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Snowball")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Balloon")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Snowball")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Balloon")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Snowball")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Balloon")
                                game:GetService("RunService").Stepped:Wait()
                                equip("Snowball")
                                game:GetService("RunService").Heartbeat:Wait()
                                equip("Balloon")
                                game:GetService("RunService").Heartbeat:Wait()
                                equip("Snowball")
                                game:GetService("RunService").RenderStepped:Wait()
                                equip("Balloon")
                                game:GetService("RunService").RenderStepped:Wait()
                                task.wait(10)
                            end
                        end
                    )

                    while true do
                        equip("Snowball")
                        task.wait(0.025)
                        equip("Balloon")
                        task.wait(3)
                    end
                else
                    Notification("Warn", "Bad Server, "..reason)
                end
            end
        }
    )
end
--[[
if game:GetService("ReplicatedStorage").values.events.currentevent.Value == "outbreak" then
    while #game:GetService("Workspace").canisters:GetDescendants() > 0 do
        for i,v in pairs(game:GetService("Workspace").canisters:GetDescendants()) do
            if v.Name == "Handle" then
                if not v:FindFirstChild("slowpihax-CanisterESP") then
                    canisterPartESP = Instance.new("Part")
                    canisterPartESP.Name = "slowpihax-CanisterESP"
                    canisterPartESP.Parent = v
                    canisterPartESP.Position = v.Position
                    canisterPartESP.CanCollide = false
                    canisterPartESP.Anchored = true
                    canisterPartESP.Transparency = 1
                else 
                    v:FindFirstChild("slowpihax-CanisterESP").CFrame = CFrame.new(v.Position)
                end
            end
        end

        local function gotoCanister()
            for i,v in pairs(game:GetService("Workspace").canisters:GetDescendants()) do
                if v.Name == "slowpihax-CanisterESP" and v.Parent.Transparency == 1 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2,0)
                    local camera = game:GetService("Workspace").CurrentCamera

                    while not game.Players.LocalPlayer.Character:FindFirstChild("GasCanister") do
                        task.wait()
                        
                        fireproximityprompt(v.Parent.Model.Body.PromptContainer.ProximityPrompt)

                        local target = v

                        local direction = (target.Position - camera.CFrame.Position).Unit

                        camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
                    end
                    break
                end
            end
        end

        local function gotoGenerator()
            for a,b in pairs(game:GetService("Workspace"):GetDescendants()) do
                if b.Name == "canisterfillup" and b:FindFirstChild("generator").Transparency == 0 then
                    repeat task.wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.generator.CFrame + Vector3.new(0,2,0) until not game.Players.LocalPlayer.Character:FindFirstChild("GasCanister")
                    break
                end
            end
        end

        gotoCanister()
        gotoGenerator()

        task.wait()
    end
elseif game:GetService("ReplicatedStorage").values.events.currentevent.Value == "blackout" then
getgenv().DoViewLock = true
getgenv().ObjectToLookAt = game.Players.LocalPlayer.Character.HumanoidRootPart

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "PowerInteract" and v.Parent.Name == "PowerBox" then
        getgenv().ObjectToLookAt = v.Parent
        getgenv().DoViewLock = true
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
        task.wait(0.05)
        spawn(function()
            while getgenv().DoViewLock do
                game:GetService("RunService").RenderStepped:Wait()
                local camera = game:GetService("Workspace").CurrentCamera

                local target = getgenv().ObjectToLookAt

                local direction = (target.Position - camera.CFrame.Position).Unit

                camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
            end
        end)
        task.wait(0.33)
        v.HoldDuration = 0
        task.wait(0.01)
        fireproximityprompt(v)
    end
end

getgenv().DoViewLock = false
game:GetService("Workspace").Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
]]

    getbtoolsToggle =
        Section4:Toggle(
        {
            Text = "Get Btools",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Get Btools")
                    end
                )
                if bool == true then
                    loadstring(game:HttpGet("https://slowpihax.xyz/BTools.lua"))()
                else
                    removeItem("Move")
                    removeItem("Delete")
                    removeItem("Undo")
                end
            end
        }
    )

    local oldQuality = settings().Rendering.QualityLevel
    local oldFog = game.Lighting.FogEnd
    local oldClouds = game:GetService("Workspace").Terrain.Clouds.Enabled
    local originalMaterials = {}

    fpsboostToggle =
        Section4:Toggle(
        {
            Text = "FPS Boost",
            Flag = "FPSBoost",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "FPS Boost")
                    end
                )
                if bool == true then
                    oldQuality = settings().Rendering.QualityLevel
                    oldFog = game.Lighting.FogEnd
                    oldClouds = game:GetService("Workspace").Terrain.Clouds.Enabled

                    print(oldQuality)
                    print(oldFog)
                    print(oldClouds)
                    
                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    game.Lighting.FogEnd = 9e9
                    game:GetService("Workspace").Terrain.Clouds.Enabled = false
                    
                    while Flags.FPSBoost do
                        if Flags.FPSBoost == true then
                            for _, child in ipairs(game:GetService("Workspace"):GetDescendants()) do
                                if child:IsA("Part") or child:IsA("MeshPart") then
                                    originalMaterials[child.Mass] = child.MaterialVariant
                                    child.MaterialVariant = ""
                                end
                            end
                        end

                        task.wait(2.33)
                    end
                else

                    print(oldQuality)
                    print(oldFog)
                    print(oldClouds)

                    settings().Rendering.QualityLevel = oldQuality
                    game.Lighting.FogEnd = oldFog
                    game:GetService("Workspace").Terrain.Clouds.Enabled = oldClouds
                    
                    for _, child in ipairs(game:GetService("Workspace"):GetDescendants()) do
                        if child:IsA("Part") and originalMaterials[child.Mass] ~= nil then -- Ensure the child is a Part and the original MaterialVariant is not nil
                            child.MaterialVariant = originalMaterials[child.Mass]
                        end
                    end

                    task.wait(1)
                    originalMaterials = {}
                end
            end
        }
    )

    autoleaveToggle =
        Section4:Toggle(
        {
            Text = "Auto Leave",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                local groupId = 9511731
                local players = game:GetService("Players")

                local blacklistedRoles = {
                    "nico",
                    "devs",
                    "crew",
                    "testers"
                }

                for _, v in pairs(players:GetPlayers()) do
                    local playerRole = v:GetRoleInGroup(groupId)
                    task.wait(2.05)
                    if table.find(blacklistedRoles, playerRole) then
                        if bool == true then
                            player:Kick(string.format("The [%s] %s has joined the game.", playerRole, v.Name))
                        end
                    end
                end

                players.PlayerAdded:Connect(
                    function(v)
                        task.wait(2.05)
                        local playerRole = v:GetRoleInGroup(groupId)
                        if table.find(blacklistedRoles, playerRole) then
                            if bool == true then
                                player:Kick(string.format("The [%s] %s has joined the game.", playerRole, v.Name))
                            end
                        end
                    end
                )
            end
        }
    )

    antivoidToggle =
        Section4:Toggle(
        {
            Text = "Anti Void",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                AntiVoidBool = bool
                spawn(
                    function()
                        Notification(bool, "Anti Void")
                        game:GetService("Workspace").nn_mall[".zones"]:WaitForChild("teleport"):Destroy()
                        game:GetService("Workspace")["nn_russia"]:WaitForChild("bounds"):Destroy()
                    end
                )

                local AntiVoidLoop =
                    coroutine.create(
                    function()
                        while AntiVoidBool == true do
                            task.wait()
                            if AntiVoidBool == true then
                                task.wait()
                                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                    local humanoidRootPart = player.Character.HumanoidRootPart
                                    local currentTime = tick()
                                    if humanoidRootPart.Position.Y < -420 then
                                        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                                        humanoidRootPart.CFrame = CFrame.new(lastGroundPosition)
                                        warn("Anti Void: Teleported back to ".. tostring(lastGroundPosition))
                                        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                                    elseif
                                        currentTime - lastUpdateTime >= 1 and
                                            newwstate ~= Enum.HumanoidStateType.Freefall
                                     then
                                        lastGroundPosition = humanoidRootPart.Position
                                        lastUpdateTime = currentTime
                                    end
                                end
                            end
                        end
                    end
                )
                if AntiVoidBool == true then
                    coroutine.resume(AntiVoidLoop)
                else
                    coroutine.yield(AntiVoidLoop)
                end
            end
        }
    )
--[[
    local eventsnipe = ""

    eventsniperToggle =
        Section4:Toggle(
        {
            Text = "Event Sniper",
            Flag = "EventSniper",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                while Flags.EventSniper do
                    local args = {[1] = eventsnipe}
                
                    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild("purchase"):FireServer(unpack(args))

                    wait()
                end
            end
        }
    )

    local drop =
    Section4:Dropdown(
    {
        Text = "Choose Event (Event Sniper",
        List = {"outbreak", "blackout", "bloodmoon", "angry munci"},
        Callback = function(v)
            task.wait(0.05)

            eventsnipe = v
        end
    }
)
]]
    local drop =
        Section4:Dropdown(
        {
            Text = "Buy Gear",
            List = {"Snowball", "Firework", "Bloxy Cola", "Possessor", "Balloon (1x max)", "Birthday Cake", "Wav Gun", "Chezburger", "Discombobulator"},
            Callback = function(v)
                local ChosenGear = "Snowball"
                if v == "Snowball" then
                    ChosenGear = "Snowball"
                elseif v == "Firework" then
                    ChosenGear = "Firework"
                elseif v == "Bloxy Cola" then
                    ChosenGear = "BloxyCola"
                elseif v == "Possessor" then
                    ChosenGear = "Possessor"
                elseif v == "Balloon (1x max)" then
                    ChosenGear = "Balloon"
                elseif v == "Birthday Cake" then
                    ChosenGear = "Cake"
                elseif v == "Wav Gun" then
                    ChosenGear = "WavGunAnniversary"
                elseif v == "Chezburger" then
                    ChosenGear = "Chezburger"
                elseif v == "Discombobulator" then
                    ChosenGear = "PartyBomb"
                end

                task.wait(0.05)

                local args = {
                    [1] = ChosenGear,
                    [2] = "Gear",
                    [3] = BuyAmount
                }

                game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("game"):WaitForChild("global"):WaitForChild(
                    "shoppurchasebux"
                ):InvokeServer(unpack(args))
            end
        }
    )

    Section4:Slider(
        {
            Text = "Buy Amount",
            Default = 1,
            Minimum = 1,
            Maximum = 1000,
            Callback = function(Value)
                BuyAmount = Value

                print(Value)
            end
        }
    )

    if hasPremium == true then
        Section4:Slider(
            {
                Text = "Auto Safezone",
                Default = 25,
                Minimum = 20,
                Maximum = 40,
                Flag = "AutoSafezoner",
                Button = true,
                ButtonDefault = false,
                ButtonFlag = "AutoSafezone",
                ButtonCallback = function(bool)
                    spawn(
                        function()
                            Notification(bool, "Auto Safezone")
                        end
                    )

                    local Players = game:GetService("Players")
                    local player = Players.LocalPlayer
                    local scripts = game.Players.LocalPlayer.Character:FindFirstChild("scripts"):FindFirstChild("values")
                    local respawnCalled = false
                    local HumanoidRootPart
                    
                    local function respawn()
                        game:GetService("ReplicatedStorage").events.player.char.respawnchar:FireServer()
                        respawnCalled = false
                    end
                    
                    local function updateCharacter(character)
                        HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
                    end
                    
                    updateCharacter(player.Character or player.CharacterAdded:Wait())
                    
                    player.CharacterAdded:Connect(updateCharacter)
                    
                    while Flags.AutoSafezone do
                        local allDescendants = game.Workspace.bots:GetDescendants()
                        for _, descendant in ipairs(allDescendants) do
                            if descendant:IsA("BasePart") and descendant.Name == "HumanoidRootPart" then
                                local distance = (descendant.Position - HumanoidRootPart.Position)
                                distance = Vector3.new(distance.X, distance.Y * 3, distance.Z)
                                distance = distance.Magnitude
                                if distance and distance <= Flags.AutoSafezoner then
                                    if scripts.safe.Value == false then
                                        if scripts.forcefield.Value == false then
                                            if not respawnCalled then
                                                if Flags.Godmode ~= true then
                                                    respawn()
                                                end
                                            end
                                        end
                                    end
                                else
                                    respawnCalled = false
                                end
                            end
                        end
                    
                        for _, otherPlayer in ipairs(Players:GetPlayers()) do
                            if otherPlayer ~= player then
                                local otherCharacter = otherPlayer.Character
                                if otherCharacter then
                                    local otherHumanoidRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
                                    if otherHumanoidRootPart then
                                        local otherPlayerScripts = otherCharacter:FindFirstChild("scripts")
                                        local distance = (otherHumanoidRootPart.Position - HumanoidRootPart.Position)
                                        distance = Vector3.new(distance.X, distance.Y * 3, distance.Z)
                                        distance = distance.Magnitude
                                        if distance and distance <= Flags.AutoSafezoner and otherPlayerScripts and otherPlayerScripts:FindFirstChild("values") and otherPlayerScripts:FindFirstChild("values").botpossessed.Value ~= "" then
                                            if scripts.safe.Value == false then
                                                if scripts.forcefield.Value == false then
                                                    if not respawnCalled then
                                                        if Flags.autofarmv2BETA == true then
                                                            autofarmv2BETA:Set(false)
                                                        end
                                                        respawn()
                                                    end
                                                end
                                            end
                                        else
                                            respawnCalled = false
                                        end
                                    end
                                end
                            end
                        end
                    
                        task.wait(0.05)
                    end
                end
            }
        )
    end

    local povBotsTable = {}

    local bots = game:GetService("Workspace").bots:GetDescendants()
    for _, bot in ipairs(bots) do
        if bot:IsA("Model") then
            table.insert(povBotsTable, bot.Name)
        end
    end

    table.sort(povBotsTable, function(a, b)
        return a:lower() < b:lower()
    end)

    local function updatePovBotsTable()
        task.wait(3)
        local povBotsTable = {}

        local botsFolder = game:GetService("Workspace").bots
        local bots = botsFolder:GetDescendants()
        for _, bot in ipairs(bots) do
            if bot:IsA("Model") and bot.Name ~= "zombie" then
                table.insert(povBotsTable, bot.Name)
            end
        end
    
        table.sort(povBotsTable, function(a, b)
            return a:lower() < b:lower()
        end)
    
        getgenv().PovBotsDropdown:Refresh({list = povBotsTable})
    end
    
    povBotsToggle =
        Section4_1:Toggle(
        {
            Text = "Pov Bot",
            Flag = "povbot",
            Keybind = true,
            KeybindDefault = Enum.KeyCode.Clear,
            Callback = function(bool)
                spawn(
                    function()
                        Notification(bool, "Pov Bot")
                    end
                )
                if bool == false then
                    game:GetService("Workspace").Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                end

                updatePovBotsTable()
            end
        }
    )

    getgenv().PovBotsDropdown =
        Section4_1:Dropdown(
        {
            Text = "Pov Bots",
            List = povBotsTable,
            Callback = function(v)
                spawn(
                    function()
                        if Flags.povbot == true then
                            Notification("Info", "Now Watching " .. v .. "")
                        else
                            Notification("Info", "You need to enable 'Pov Bot' above!")
                        end

                        task.wait(0.25)

                        povBotsTable = {}
                        local bots = game:GetService("Workspace").bots:GetDescendants()
                        for _, bot in ipairs(bots) do
                            if bot:IsA("Part") and bot.Name == "HumanoidRootPart" then
                                table.insert(povBotsTable, bot.Parent.Name)
                            end
                        end
                
                        table.sort(povBotsTable, function(a, b)
                            return a:lower() < b:lower()
                        end)
                
                        getgenv().PovBotsDropdown:Refresh({list = povBotsTable})
                    end
                )
                if Flags.povbot == true then
                    local targetModelName = v

                    local targetModel = nil
                    for _, descendant in ipairs(game:GetService("Workspace").bots:GetDescendants()) do
                        if descendant:IsA("Part") and descendant.Parent.Name == targetModelName and descendant.Name == "HumanoidRootPart" then
                            targetModel = descendant.Parent
                            break
                        end
                    end

                    if targetModel then
                        local targetHumanoid = targetModel:FindFirstChildOfClass("Humanoid")
                        if targetHumanoid then
                            game:GetService("Workspace").Camera.CameraSubject = targetHumanoid
                        end
                    end
                end

                updatePovBotsTable()
            end
        }
    )

    updatePovBotsTable()

    if hasPremium == true then
        Section4_1:Slider(
            {
                Text = "Auto Kill Range",
                Default = 1,
                Minimum = 0,
                Maximum = 5000,
                Flag = "AutoKill",
                Button = true,
                ButtonDefault = false,
                ButtonFlag = "AutoKilling",
                Keybind = true,
                KeybindDefault = Enum.KeyCode.Clear,
                ButtonCallback = function(bool)
                    spawn(
                        function()
                            Notification(bool, "Auto Kill")
                        end
                    )

                    function calculateOffset(velocity)
                        local speed = velocity.Magnitude
                        if speed == 0 then
                            return Vector3.new(0, 0, 0)
                        end
                        local multiplier = math.abs(speed) * math.random(500, 2500)/10000
                        return velocity.Unit * multiplier
                    end

                        while Flags.AutoKilling do
                            task.wait()
                            local players = game:GetService("Players"):GetPlayers()
                            local notFoundPlayers = {}

                            for _, player in pairs(players) do
                                if player.Character then
                                    local humanoid = player.Character:FindFirstChild("HumanoidRootPart")
                                    if humanoid then
                                        if player.Character.scripts.values.safe.Value == false then
                                            if player.Character.scripts.values.botpossessed.Value == "" then
                                                if player.Character.scripts.values.forcefield.Value == false then
                                                    table.insert(notFoundPlayers, player)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            local players = notFoundPlayers
                            local closestPlayer = nil
                            local closestDistance = math.huge

                            closestPlayer = nil
                            closestDistance = math.huge
                            for _, player in pairs(players) do
                                if
                                    player.Character and player.Character:FindFirstChild("HumanoidRootPart") and
                                        player ~= game.Players.LocalPlayer and
                                        player.Character:FindFirstChildOfClass("Humanoid").Health ~= 0
                                 then
                                    local distance =
                                        (player.Character.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                                    if distance < closestDistance then
                                        closestPlayer = player
                                        closestDistance = distance
                                    end
                                end
                            end
                            if closestPlayer and Flags.AutoKilling then
                                local isExcluded = false
                                for i, v in pairs(ExcludedPlayers) do
                                    if tostring(closestPlayer) == tostring(v) then
                                        isExcluded = true
                                        break
                                    end
                                end
                                if not isExcluded then
                                    local distance = (closestPlayer.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                                    if distance <= Flags.AutoKill then
                                        local velocity = closestPlayer.Character.HumanoidRootPart.Velocity
                                        local offset = calculateOffset(velocity)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(closestPlayer.Character.HumanoidRootPart.Position + offset)
                                    end
                                end
                            end
                            
                            notFoundPlayers = {}

                            if Flags.AutoKilling == false then
                                break
                            end
                        end
                    
                    
                    
            end               
            }
        )
    end

    if hasPremium == true then
        Section4_1:Input(
            {
                Text = "Auto Kill Exclude",
                Callback = function(txt)
                    local CheckIfPlayerExist = {txt}

                    for i, name in pairs(CheckIfPlayerExist) do
                        local players = game.Players:FindFirstChild(name)
                        if players then
                            getgenv().AutoKillExclusionList:Add(txt)
                            table.insert(ExcludedPlayers, txt)
                            spawn(
                                function()
                                    Notification("Info", "Added " .. txt .. " to the excluded players list.")
                                end
                            )
                        else
                            spawn(
                                function()
                                    Notification(
                                        "Info",
                                        "Couldnt find '" ..
                                            txt ..
                                                "'.                                 Make sure you typed it correctly, Dont type Their DisplayName."
                                    )
                                end
                            )
                        end
                    end
                end
            }
        )
    end

    if hasPremium == true then
        getgenv().AutoKillExclusionList =
            Section4_1:Dropdown(
            {
                Text = "Excluded Players",
                List = {},
                Callback = function(v)
                    spawn(
                        function()
                            Notification("Info", "Removed " .. v .. " from the excluded players list.")
                        end
                    )
                    task.wait(0.25)
                    getgenv().AutoKillExclusionList:Remove(v)
                end
            }
        )
    end

    Section5:Button(
        {
            Text = "Safezone 1",
            Callback = function()
                teleportPlayer(Vector3.new(-1193.636474609375, 10.947853088378906, -41.517642974853516))
            end
        }
    )

    Section5:Button(
        {
            Text = "Safezone 2",
            Callback = function()
                teleportPlayer(Vector3.new(-1147.0692138671875, 80.94786071777344, 133.0210723876953))
            end
        }
    )

    Section5:Button(
        {
            Text = "Safezone 3",
            Callback = function()
                teleportPlayer(Vector3.new(-796.4456176757812, -3.551644802093506, -69.36172485351562))
            end
        }
    )

    Section5:Button(
        {
            Text = "Safezone 4",
            Callback = function()
                teleportPlayer(Vector3.new(-860.5006713867188, 10.941093444824219, -258.46514892578125))
            end
        }
    )

    Section5:Button(
        {
            Text = "Safezone 5",
            Callback = function()
                teleportPlayer(Vector3.new(-1291.4190673828125, 25.94784927368164, 49.5816535949707))
            end
        }
    )

    Section5_1:Button(
        {
            Text = "Safezone 1",
            Callback = function()
                teleportPlayer(Vector3.new(-1577.9761962890625, -86.09324645996094, 466.0253601074219))
            end
        }
    )

    Section5_1:Button(
        {
            Text = "Safezone 2",
            Callback = function()
                teleportPlayer(Vector3.new(-1324.193359375, -86.26140594482422, 88.25579833984375))
            end
        }
    )

    Section5_1:Button(
        {
            Text = "Safezone 3",
            Callback = function()
                teleportPlayer(Vector3.new(-1879.9508056640625, -85.56594848632812, 51.14085006713867))
            end
        }
    )

    Section5_2:Button(
        {
            Text = "Safezone 1",
            Callback = function()
                teleportPlayer(Vector3.new(-452.449432, 20.9481182, -1111.93152))
            end
        }
    )

    Section5_2:Button(
        {
            Text = "Safezone 2",
            Callback = function()
                teleportPlayer(Vector3.new(-57.934993743896484, 12.848140716552734, -1199.6781005859375))
            end
        }
    )

    Section5_2:Button(
        {
            Text = "Safezone 3",
            Callback = function()
                teleportPlayer(Vector3.new(231.8864288330078, 11.84812068939209, -1026.161865234375))
            end
        }
    )

    Section5_2:Button(
        {
            Text = "Safezone 4",
            Callback = function()
                teleportPlayer(Vector3.new(-138.176025390625, 13.29802417755127, -422.5591125488281))
            end
        }
    )

    Section5_2:Button(
        {
            Text = "Safezone 5",
            Callback = function()
                teleportPlayer(Vector3.new(-17.797344207763672, 12.848140716552734, -604.1474609375))
            end
        }
    )

    Section5_2:Button(
        {
            Text = "Club",
            Callback = function()
                teleportPlayer(Vector3.new(-103.3435287475586, 14.948122024536133, -556.2715454101562))
            end
        }
    )

    Section5_3:Button(
        {
            Text = "Safezone 1",
            Callback = function()
                teleportPlayer(Vector3.new(-1674, 200, -656))
            end
        }
    )

    Section5_3:Button(
        {
            Text = "Safezone 2",
            Callback = function()
                teleportPlayer(Vector3.new(-1456, 270, -507))
            end
        }
    )

    Section5_3:Button(
        {
            Text = "Safezone 3",
            Callback = function()
                teleportPlayer(Vector3.new(-1712, 335, -478))
            end
        }
    )

    Section5_4:Button(
        {
            Text = "Safezone 1",
            Callback = function()
                teleportPlayer(Vector3.new(-1675, 455, -673))
            end
        }
    )

    Section5_4:Button(
        {
            Text = "Safezone 2",
            Callback = function()
                teleportPlayer(Vector3.new(-1967, 495, -297))
            end
        }
    )

    Section5_4:Button(
        {
            Text = "Safezone 3",
            Callback = function()
                teleportPlayer(Vector3.new(-1600, 477, -636))
            end
        }
    )

    Section5_5:Button(
        {
            Text = "Safezone 1",
            Callback = function()
                teleportPlayer(Vector3.new(-542, 20, 1130))
            end
        }
    )

    Section5_5:Button(
        {
            Text = "Safezone 2",
            Callback = function()
                teleportPlayer(Vector3.new(-687, -33, 1160))
            end
        }
    )

    Section5_5:Button(
        {
            Text = "Safezone 3",
            Callback = function()
                teleportPlayer(Vector3.new(-750, 20, 1777))
            end
        }
    )

    Section5_6:Button(
        {
            Text = "Character Platform",
            Callback = function()
                teleportPlayer(Vector3.new(-613.7852172851562, -475.54156494140625, -24.1522216796875))
            end
        }
    )

    Section5_6:Button(
        {
            Text = ":)",
            Callback = function()
                teleportPlayer(Vector3.new(633.188, -555.938, 139.5))
            end
        }
    )

    Section5_6:Button(
        {
            Text = "Shop",
            Callback = function()
                teleportPlayer(Vector3.new(-616.536, -500.462, -28.3732))
            end
        }
    )

    Section5_6:Button(
        {
            Text = "Secret Room (nn_russia)",
            Callback = function()
                teleportPlayer(Vector3.new(-470.181671, 19.9990406, -1116.04822))
            end
        }
    )

    Section5_6:Button(
        {
            Text = "Lobby",
            Callback = function()
                game:GetService("Workspace").lobby.lobbyzone.CanCollide = false
                teleportPlayer(Vector3.new(-175, 1710, 0))
            end
        }
    )

    if game.PlaceId ~= 10118559731 then
        local drop =
            Section6:Dropdown(
            {
                Text = "Nico's Nextbots | Working",
                List = {"Teleport"},
                Callback = function(v)
                    local placeid = 10118559731

                    for i, v in pairs(game:FindFirstChildOfClass("Players"):GetPlayers()) do
                        if v ~= game.Players.LocalPlayer then
                            game:GetService("TeleportService"):Teleport(placeid, v)
                        end
                    end
                    task.wait(0.5)
                    spawn(
                        function()
                            Notification("Info", "Teleport Failed, Please Join The Game Manually.")
                        end
                    )
                end
            }
        )
    end

    local drop =
        Section6:Dropdown(
        {
            Text = "Doors | Patched",
            List = {"Teleport"},
            Callback = function(v)
                local placeid = 6516141723

                for i, v in pairs(game:FindFirstChildOfClass("Players"):GetPlayers()) do
                    if v ~= game.Players.LocalPlayer then
                        game:GetService("TeleportService"):Teleport(placeid, v)
                    end
                end
                task.wait(0.5)
                spawn(
                    function()
                        Notification("Info", "Teleport Failed, Please Join The Game Manually.")
                    end
                )
            end
        }
    )

    Section7:Button(
        {
            Text = "Scripted by slowpi#8954",
            Callback = function()
                spawn(
                    function()
                        Notification("Info", "Scripted By slowpi#8954")
                    end
                )
            end
        }
    )

    Section7:Button(
        {
            Text = "Discord Server Invite",
            Callback = function()
                spawn(
                    function()
                        Notification("Info", "Discord Invite Copied To Clipboard!")
                    end
                )
                setclipboard("https://discord.gg/JN6wgVrUAr")
            end
        }
    )

    getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = nil
    getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = nil
    getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = nil

    getgenv().scriptLoaded = true
    spawn(function()
        task.wait(5)
        getgenv().UILoading = false
    end)

    game.CoreGui:WaitForChild("Shaman").Enabled = true
end
