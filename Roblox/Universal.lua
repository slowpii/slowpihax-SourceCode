local myString = key
local firstFour = string.sub(myString, 1, 9)

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
if LRM_UserNote == "Premium" or LRM_UserNote == "Giveaway" or LRM_UserNote == "Booster" or firstFour == "EventKey_" then
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
    local Library = loadstring(game:HttpGet("https://slowpihax.xyz/UI-Library.lua"))()
    local Flags = Library.Flags

    local title

    if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == false and getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == false then
        title = "slowpihax | " .. getgenv().vVersion .. " | Universal | Public"
    elseif getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == true and getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == false then
        title = "slowpihax | " .. getgenv().vVersion .. " | Universal | Premium"
    elseif getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true and getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == true then
        title = "slowpihax | " .. getgenv().vVersion .. " | Universal | Dev"
    end

    if getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y ~= true then
        setclipboard("https://discord.com/invite/JN6wgVrUAr")
        game.Players.LocalPlayer:Kick("Bypassing The Key System is Against My Terms Of Service.")
    end

    if not isfolder("slowpihax") then
        makefolder("slowpihax")
    end

    if isfolder("slowpihax") then
        if not isfolder("slowpihax\\Configs") then
            makefolder("slowpihax\\Configs")
        end
    end

    if game.Players.LocalPlayer.Character.Humanoid ~= nil then
        local sped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed
        local jmp = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower
    else
        local sped = 16
        local jmp = 50
    end

    local Window =
        Library:Window(
        {
            Text = title
        }
    )

    -- Values

    local sped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed
    local jmp = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower

    local plr = game:GetService("Players").LocalPlayer

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Backpack = LocalPlayer.Backpack
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

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

    -- Tabs

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
            Text = "Miscellaneous"
        }
    )

    local Tab4 =
        Window:Tab(
        {
            Text = "Keybinds"
        }
    )

    local Tab5 =
        Window:Tab(
        {
            Text = "Config"
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

    -- Sections

    local Section =
        Tab:Section(
        {
            Text = "Character"
        }
    )

    local Section2 =
        Tab2:Section(
        {
            Text = "Visuals"
        }
    )

    local Section3 =
        Tab3:Section(
        {
            Text = "Miscellaneous"
        }
    )

    local Section4 =
        Tab4:Section(
        {
            Text = "Character Keybinds"
        }
    )

    local Section4_1 =
        Tab4:Section(
        {
            Text = "Visual Keybinds",
            Side = "Right"
        }
    )

    local Section4_2 =
        Tab4:Section(
        {
            Text = "Miscellaneous Keybinds"
        }
    )

    local Section5 =
        Tab5:Section(
        {
            Text = "Config"
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

    function Notification(status, feature)
        local NotificationLibrary =
            loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))(

        )

        if status == true then
            NotificationLibrary:SendNotification("Success", "" .. feature .. " Is Now Enabled!", 1.75)
        elseif status == false then
            NotificationLibrary:SendNotification("Error", "" .. feature .. " Is Now Disabled!", 1.75)
        elseif status == "Info" then
            NotificationLibrary:SendNotification("Info", "" .. feature .. " Is Now Enabled!", 2.25)
        end

        --NotificationLibrary:SendNotification("Warning", "I'm a cool message", 3)
        --NotificationLibrary:SendNotification("Info", "| slowpihax on top |", 999999)
    end

    getgenv().DoWalkSpeed = false
    getgenv().DoJumpPower = false
    getgenv().DoGravity = false

    local tostringLocalPlayerName = tostring(game:GetService("Players").LocalPlayer.Name)

    spawn(
        function()
            while not game.workspace:WaitForChild(tostringLocalPlayerName) do
                task.wait()
            end
            local speedstring =
                tostring(game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed):sub(1, 4)
            getgenv().walkspeed = tonumber(speedstring)
        end
    )

    getgenv().walking = false

    game:GetService("UserInputService").InputBegan:Connect(
        function(inputObject, gameProcessedEvent)
            if
                inputObject.KeyCode == Enum.KeyCode.W or inputObject.KeyCode == Enum.KeyCode.A or
                    inputObject.KeyCode == Enum.KeyCode.S or
                    inputObject.KeyCode == Enum.KeyCode.D
             then
                getgenv().walking = true
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
                getgenv().walking = false
            end
        end
    )

    spawn(
        function()
            while not game.workspace:WaitForChild(tostringLocalPlayerName) do
                task.wait()
            end
            local jumpstring =
                tostring(game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower):sub(1, 4)
            local jumppower = tonumber(jumpstring)
            getgenv().thejumppower = jumppower
        end
    )

    if jumpstring then
    else
        jumpstring = 28.3
    end

    getgenv().newwstate = Enum.HumanoidStateType.Landed

    getgenv().MakeJump = true

    spawn(
        function()
            game.workspace:WaitForChild(tostringLocalPlayerName).Humanoid.StateChanged:Connect(
                function(oldState, newState)
                    getgenv().newwstate = newState

                    if newState == Enum.HumanoidStateType.Freefall then
                        getgenv().MakeJump = false
                    else
                        getgenv().MakeJump = true
                    end
                end
            )
        end
    )

    getgenv().AllowMakeJump = Flags.JumpPowerToggle or getgenv().JumpPowerKeybindbool

    local userInputService = game:GetService("UserInputService")

    game:GetService("UserInputService").InputBegan:Connect(
        function(inputObject)
            if inputObject.KeyCode == Enum.KeyCode.Space then
                if getgenv().AllowMakeJump and getgenv().MakeJump == true then
                    task.wait(0.01)
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity =
                        Vector3.new(
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.X,
                        getgenv().thejumppower,
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.Z
                    )
                end
            end
        end
    )

    local gravitystring = tostring(game.Workspace.Gravity):sub(1, 4)
    local gravity = tonumber(gravitystring)
    local oldgravity = tonumber(game.Workspace.Gravity)

    if getgenv().walkspeed then
        getgenv().walkspeed = getgenv().walkspeed
    else
        getgenv().walkspeed = 10
    end

    getgenv().FlySpeed = 50

    -- Section 1 Default Config
    getgenv().Thewalkspeed = getgenv().walkspeed
    getgenv().WalkspeedEnabled = false
    getgenv().TheJumpPower = getgenv().thejumppower
    getgenv().JumpPowerEnabled = false
    getgenv().GravityAmount = gravity
    getgenv().GravityEnabled = false
    getgenv().TheFlySpeed = getgenv().FlySpeed
    getgenv().FlyEnabled = false
    getgenv().NoclipEnabled = false
    getgenv().InfJumpsEnabled = false
    getgenv().InvisibilityEnabled = false

    -- Section 2 Default Config

    getgenv().PlayerBoxEsp = false
    getgenv().PlayerTracerEsp = false
    getgenv().PlayerChamsEsp = false
    getgenv().PlayerNametagEsp = false
    getgenv().RoleEsp = false
    getgenv().TCStatus = false
    getgenv().PlayerESPEnabled = false
    getgenv().FullbrightEnabled = false

    -- Section 3 Default Config

    getgenv().CtrlClickTPEnabled = false
    getgenv().GetBtoolsEnabled = false
    getgenv().XrayEnabled = false
    getgenv().AimlockEnabled = false
    getgenv().FPSBoostEnabled = false

    -- Section 4 Default Config

    getgenv().WalkspeedKeybind = Enum.KeyCode.Clear
    getgenv().JumpPowerKeybind = Enum.KeyCode.Clear
    getgenv().FlyKeybind = Enum.KeyCode.Clear
    getgenv().NoclipKeybind = Enum.KeyCode.Clear
    getgenv().InfJumpsKeybind = Enum.KeyCode.Clear
    getgenv().InvisibilityKeybind = Enum.KeyCode.Clear
    getgenv().PlayerEspKeybind = Enum.KeyCode.Clear
    getgenv().FullbrightKeybind = Enum.KeyCode.Clear
    getgenv().CtrlClickTPKeybind = Enum.KeyCode.Clear
    getgenv().GetBtoolsKeybind = Enum.KeyCode.Clear
    getgenv().XrayKeybind = Enum.KeyCode.Clear
    getgenv().FPSBoostKeybind = Enum.KeyCode.Clear
    getgenv().GuiToggle = Enum.KeyCode.RightShift

    getgenv().AutoLoadConfigEnabled = false
    getgenv().AutoSaveConfigEnabled = false
    getgenv().ConfigName = "Default"

    function CheckConfig()
        local Config = {
            AutoLoadConfigEnabled = Flags.AutoLoadConfigEnabled,
            AutoSaveConfigEnabled = Flags.AutoSaveConfigEnabled
        }
        local a = [[

getgenv().ConfigName = "]] .. getgenv().ConfigName .. [["

]]

        local sortedConfig = {}
        for key, value in pairs(Config) do
            table.insert(sortedConfig, {key = key, value = value})
        end

        table.sort(
            sortedConfig,
            function(a, b)
                if type(a.value) == "number" and type(b.value) == "number" then
                    return a.value < b.value
                else
                    return tostring(a.value) < tostring(b.value)
                end
            end
        )

        local settingsString = ""
        for _, item in ipairs(sortedConfig) do
            settingsString = settingsString .. "getgenv()." .. item.key .. " = " .. tostring(item.value) .. "\n"
        end

        if (writefile) then
            writefile("slowpihax\\Configs\\CheckConfig.Lua", settingsString .. a)
        end
    end

    if isfile("slowpihax\\Configs\\CheckConfig.lua") then
        loadstring(readfile("slowpihax\\Configs\\CheckConfig.lua"))()
    end

    if isfolder("slowpihax\\Configs") then
        if getgenv().AutoLoadConfigEnabled == true then
            loadstring(readfile("slowpihax\\Configs\\" .. tostring(ConfigName) .. ".lua"))()
        end
    end

    if getgenv().Thewalkspeed then
        getgenv().walkspeed = getgenv().Thewalkspeed
    end
    if getgenv().TheJumpPower then
        getgenv().thejumppower = getgenv().TheJumpPower
    end
    if getgenv().GravityAmount then
        gravity = getgenv().GravityAmount
    end
    if getgenv().TheFlySpeed then
        getgenv().FlySpeedd = getgenv().TheFlySpeed
    end

    function SaveConfig(ConfigName)
        if getgenv().AutoSaveConfigEnabled == true then
            ConfigName = ConfigName or "Default"
            local Config = {
                Thewalkspeed = Flags.Walkspeed,
                WalkspeedEnabled = Flags.WalkspeedToggle,
                TheJumpPower = Flags.JumpPower,
                JumpPowerEnabled = Flags.JumpPowerToggle,
                GravityAmount = Flags.Gravity,
                GravityEnabled = Flags.GravityToggle,
                TheFlySpeed = Flags.FlySpeed,
                FlyEnabled = Flags.FlyEnabled,
                NoclipEnabled = Flags.NoclipEnabled,
                InfJumpsEnabled = Flags.InfJumpsEnabled,
                InvisibilityEnabled = Flags.InvisibilityEnabled,
                PlayerBoxEsp = getgenv().PlayerBoxEsp,
                PlayerTracerEsp = getgenv().PlayerTracerEsp,
                PlayerChamsEsp = getgenv().PlayerChamsEsp,
                PlayerNametagEsp = getgenv().PlayerNametagEsp,
                RoleEsp = getgenv().RoleEsp,
                TCStatus = getgenv().TCStatus,
                PlayerESPEnabled = Flags.PlayerESPEnabled,
                FullbrightEnabled = Flags.FullbrightEnabled,
                CtrlClickTPEnabled = Flags.CtrlClickTPEnabled,
                GetBtoolsEnabled = Flags.GetBtoolsEnabled,
                XrayEnabled = Flags.XrayEnabled,
                AimlockEnabled = Flags.AimlockEnabled,
                FPSBoostEnabled = Flags.FPSBoostEnabled,
                WalkspeedKeybind = getgenv().WalkspeedKeybind,
                JumpPowerKeybind = getgenv().JumpPowerKeybind,
                GravityKeybind = getgenv().GravityKeybind,
                FlyKeybind = getgenv().FlyKeybind,
                NoclipKeybind = getgenv().NoclipKeybind,
                InfJumpsKeybind = getgenv().InfJumpsKeybind,
                InvisibilityKeybind = getgenv().InvisibilityKeybind,
                PlayerEspKeybind = getgenv().PlayerEspKeybind,
                FullbrightKeybind = getgenv().FullbrightKeybind,
                CtrlClickTPKeybind = getgenv().CtrlClickTPKeybind,
                GetBtoolsKeybind = getgenv().GetBtoolsKeybind,
                XrayKeybind = getgenv().XrayKeybind,
                FPSBoostKeybind = getgenv().FPSBoostKeybind,
                GuiToggle = getgenv().GuiToggle
            }

            local sortedConfig = {}
            for key, value in pairs(Config) do
                table.insert(sortedConfig, {key = key, value = value})
            end

            table.sort(
                sortedConfig,
                function(a, b)
                    if type(a.value) == "number" and type(b.value) == "number" then
                        return a.value < b.value
                    else
                        return tostring(a.value) < tostring(b.value)
                    end
                end
            )

            local settingsString = ""
            for _, item in ipairs(sortedConfig) do
                settingsString = settingsString .. "getgenv()." .. item.key .. " = " .. tostring(item.value) .. "\n"
            end

            if (writefile) then
                writefile("slowpihax\\Configs\\" .. tostring(ConfigName) .. ".Lua", settingsString)
            end
        end
    end

    getgenv().WalkspeedSlider =
        Section:Slider(
        {
            Text = "Walkspeed",
            Default = getgenv().Thewalkspeed,
            Minimum = 1,
            Maximum = 250,
            Flag = "Walkspeed",
            Callback = function(Value)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                    end
                )
            end
        }
    )

    getgenv().WalkspeedToggleButton =
        Section:Toggle(
        {
            Text = "Walkspeed Toggle",
            Default = getgenv().WalkspeedEnabled,
            Flag = "WalkspeedToggle",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Walkspeed")
                    end
                )

                if bool == true then
                    getgenv().DoWalkSpeed = true
                else
                    getgenv().DoWalkSpeed = false
                end

                spawn(
                    function()
                        while getgenv().DoWalkSpeed == true do
                            task.wait()
                            if getgenv().walking == true then
                                local currentVelocity =
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity
                                local newVelocity =
                                    Vector3.new(
                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection.X *
                                        Flags.Walkspeed,
                                    currentVelocity.Y,
                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Z *
                                        Flags.Walkspeed
                                )
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity =
                                    newVelocity
                            else
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity =
                                    Vector3.new(
                                    0,
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.Y,
                                    0
                                )
                            end
                        end
                    end
                )
            end
        }
    )

    Section:Slider(
        {
            Text = "JumpPower",
            Default = getgenv().thejumppower,
            Minimum = 1,
            Maximum = 500,
            Flag = "JumpPower",
            Callback = function(Value)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                    end
                )
                getgenv().thejumppower = Value
            end
        }
    )

    Section:Toggle(
        {
            Text = "JumpPower Toggle",
            Default = getgenv().JumpPowerEnabled,
            Flag = "JumpPowerToggle",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "JumpPower")
                    end
                )
            end
        }
    )

    Section:Slider(
        {
            Text = "Gravity",
            Default = gravity,
            Minimum = 0,
            Maximum = 540,
            Flag = "Gravity",
            Callback = function(Value)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                    end
                )
                if Flags.GravityToggle == true then
                    game.Workspace.Gravity = Value
                end
            end
        }
    )

    Section:Toggle(
        {
            Text = "Gravity Toggle",
            Default = getgenv().GravityEnabled,
            Flag = "GravityToggle",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Gravity")
                    end
                )
                if bool == true then
                    game.Workspace.Gravity = Flags.Gravity
                else
                    game.Workspace.Gravity = oldgravity
                end
            end
        }
    )

    Section:Slider(
        {
            Text = "FlySpeed",
            Default = getgenv().TheFlySpeed,
            Minimum = 1,
            Maximum = 350,
            Flag = "FlySpeed",
            Callback = function(Value)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                    end
                )
            end
        }
    )

    -- Section 1

    Section:Toggle(
        {
            Text = "Fly",
            Default = getgenv().FlyEnabled,
            Flag = "FlyEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Fly")
                    end
                )
                _G.FLYING = false

                if bool == true then
                    _G.FLYING = true
                    local LP = game:service("Players").LocalPlayer
                    local T = LP.Character.HumanoidRootPart
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

    Section:Toggle(
        {
            Text = "Noclip",
            Default = getgenv().NoclipEnabled,
            Flag = "NoclipEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Noclip")
                    end
                )
                print(Flags.NoclipEnabled)
                if bool == true then
                    getgenv().noclip =
                        game.RunService.Stepped:Connect(
                        function()
                            if game.Players.LocalPlayer.Character then
                                for _, v in next, game.Players.LocalPlayer.Character:GetChildren() do
                                    pcall(
                                        function()
                                            if v:IsA("BasePart") and v.CanCollide then
                                                v.CanCollide = false
                                            end
                                        end
                                    )
                                end
                            end
                        end
                    )
                else
                    getgenv().noclip:Disconnect()
                end
            end
        }
    )

    Section:Toggle(
        {
            Text = "Inf Jumps",
            Default = getgenv().InfJumpsEnabled,
            Flag = "InfJumpsEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Inf Jumps")
                    end
                )
                if bool == true then
                    getgenv().InfiniteJumpEnabled = true
                else
                    getgenv().InfiniteJumpEnabled = false
                end

                local userInputService = game:GetService("UserInputService")

                game:GetService("UserInputService").InputBegan:Connect(
                    function(inputObject)
                        if inputObject.KeyCode == Enum.KeyCode.Space then
                            if getgenv().InfiniteJumpEnabled == true then
                                task.wait(0.01)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                                    Vector3.new(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,
                                    getgenv().thejumppower,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z
                                )
                            end
                        end
                    end
                )
            end
        }
    )

    Section:Toggle(
        {
            Text = "Invisibility",
            Default = getgenv().InvisibilityEnabled,
            Flag = "InvisibilityEnabled",
            Callback = function(bool)
                local invis_on = false
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Invisibility")
                    end
                )

                if bool == true then
                    invis_on = true
                else
                    invis_on = false
                end
                if bool == true then
                    invis_on = true
                    if invis_on == true then
                        local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 99999, 0)
                        wait(.15)
                        local Seat = Instance.new("Seat", game.Workspace)
                        Seat.Anchored = false
                        Seat.CanCollide = false
                        Seat.Name = "invischair"
                        Seat.Transparency = 1
                        Seat.Position = Vector3.new(0, 99999, 0)
                        local Weld = Instance.new("Weld", Seat)
                        Weld.Part0 = Seat
                        Weld.Part1 =
                            game.Players.LocalPlayer.Character:FindFirstChild("Torso") or
                            game.Players.LocalPlayer.Character.UpperTorso
                        wait()
                        Seat.CFrame = savedpos
                    end
                else
                    invis_on = false
                end
            end
        }
    )

    -- Section 2

    getgenv().RefreshBoxEsp = "Enable"
    getgenv().RefreshTracerEsp = "Enable"
    getgenv().RefreshChamsEsp = "Enable"
    getgenv().RefreshNameTagEsp = "Enable"
    getgenv().RefreshRoleEsp = "Enable"
    getgenv().RefreshTCStatus = "Enable"

    if getgenv().PlayerBoxEsp == true then
        getgenv().RefreshBoxEsp = "Disable"
    else
        getgenv().RefreshBoxEsp = "Enable"
    end

    if getgenv().PlayerTracerEsp == true then
        getgenv().RefreshTracerEsp = "Disable"
    else
        getgenv().RefreshTracerEsp = "Enable"
    end

    if getgenv().PlayerChamsEsp == true then
        getgenv().RefreshChamsEsp = "Disable"
    else
        getgenv().RefreshChamsEsp = "Enable"
    end

    if getgenv().PlayerNametagEsp == true then
        getgenv().RefreshNameTagEsp = "Disable"
    else
        getgenv().RefreshNameTagEsp = "Enable"
    end

    if getgenv().RoleEsp == true then
        getgenv().RefreshRoleEsp = "Disable"
    else
        getgenv().RefreshRoleEsp = "Enable"
    end

    if getgenv().TCStatus == true then
        getgenv().RefreshTCStatus = "Disable"
    else
        getgenv().RefreshTCStatus = "Enable"
    end

    getgenv().RefreshBoxEsp = "" .. getgenv().RefreshBoxEsp .. " Box ESP"
    getgenv().RefreshTracerEsp = "" .. getgenv().RefreshTracerEsp .. " Tracer ESP"
    getgenv().RefreshChamsEsp = "" .. getgenv().RefreshChamsEsp .. " Chams ESP"
    getgenv().RefreshNameTagEsp = "" .. getgenv().RefreshNameTagEsp .. " Nametags ESP"
    getgenv().RefreshRoleEsp = "" .. getgenv().RefreshRoleEsp .. " Role ESP"
    getgenv().RefreshTCStatus = "" .. getgenv().RefreshTCStatus .. " Team Colors"

    local PlayerEspSettingsList = {
        getgenv().RefreshBoxEsp,
        getgenv().RefreshTracerEsp,
        getgenv().RefreshChamsEsp,
        getgenv().RefreshNameTagEsp,
        getgenv().RefreshRoleEsp,
        getgenv().RefreshTCStatus
    }

    getgenv().dropPlayerEspSettings =
        Section2:Dropdown(
        {
            Text = "Player ESP Settings",
            List = PlayerEspSettingsList,
            Callback = function(bool)
                if bool == PlayerEspSettingsList[1] then
                    if bool == "Disable Box ESP" then
                        getgenv().PlayerBoxEsp = false
                    elseif bool == "Enable Box ESP" then
                        getgenv().PlayerBoxEsp = true
                    end
                    spawn(
                        function()
                            SaveConfig(tostring(ConfigName))
                            Notification(getgenv().PlayerBoxEsp, "Player Box ESP")
                        end
                    )
                    if getgenv().PlayerBoxEsp == true then
                        getgenv().RefreshBoxEsp = "Disable Box ESP"
                    else
                        getgenv().RefreshBoxEsp = "Enable Box ESP"
                    end
                end

                if bool == PlayerEspSettingsList[2] then
                    if bool == "Disable Tracer ESP" then
                        getgenv().PlayerTracerEsp = false
                    elseif bool == "Enable Tracer ESP" then
                        getgenv().PlayerTracerEsp = true
                    end
                    print(getgenv().PlayerTracerEsp)
                    spawn(
                        function()
                            SaveConfig(tostring(ConfigName))
                            Notification(getgenv().PlayerTracerEsp, "Player Tracer ESP")
                        end
                    )
                    if getgenv().PlayerTracerEsp == true then
                        getgenv().RefreshTracerEsp = "Disable Tracer ESP"
                    else
                        getgenv().RefreshTracerEsp = "Enable Tracer ESP"
                    end
                end

                if bool == PlayerEspSettingsList[3] then
                    if bool == "Disable Chams ESP" then
                        getgenv().PlayerChamsEsp = false
                    elseif bool == "Enable Chams ESP" then
                        getgenv().PlayerChamsEsp = true
                    end
                    spawn(
                        function()
                            SaveConfig(tostring(ConfigName))
                            Notification(getgenv().PlayerChamsEsp, "Player Chams ESP")
                        end
                    )
                    if getgenv().PlayerChamsEsp == true then
                        getgenv().RefreshChamsEsp = "Disable Chams ESP"
                    else
                        getgenv().RefreshChamsEsp = "Enable Chams ESP"
                    end
                end

                if bool == PlayerEspSettingsList[4] then
                    if bool == "Disable Nametags ESP" then
                        getgenv().PlayerNametagEsp = false
                    elseif bool == "Enable Nametags ESP" then
                        getgenv().PlayerNametagEsp = true
                    end
                    spawn(
                        function()
                            SaveConfig(tostring(ConfigName))
                            Notification(getgenv().PlayerNametagEsp, "Player Nametags ESP")
                        end
                    )
                    if getgenv().PlayerNametagEsp == true then
                        getgenv().RefreshNameTagEsp = "Disable Nametags ESP"
                    else
                        getgenv().RefreshNameTagEsp = "Enable Nametags ESP"
                    end
                end

                if bool == PlayerEspSettingsList[5] then
                    if bool == "Disable Role ESP" then
                        getgenv().RoleEsp = false
                    elseif bool == "Enable Role ESP" then
                        getgenv().RoleEsp = true
                    end
                    spawn(
                        function()
                            SaveConfig(tostring(ConfigName))
                            Notification(getgenv().RoleEsp, "Player Role ESP")
                        end
                    )
                    if getgenv().RoleEsp == true then
                        getgenv().RefreshRoleEsp = "Disable Role ESP"
                    else
                        getgenv().RefreshRoleEsp = "Enable Role ESP"
                    end
                end

                if bool == PlayerEspSettingsList[6] then
                    if bool == "Disable Team Colors" then
                        getgenv().TCStatus = false
                    elseif bool == "Enable Team Colors" then
                        getgenv().TCStatus = true
                    end
                    spawn(
                        function()
                            SaveConfig(tostring(ConfigName))
                            Notification(getgenv().TCStatus, "Player Team Colors")
                        end
                    )
                    if getgenv().TCStatus == true then
                        getgenv().RefreshTCStatus = "Disable Team Colors"
                    else
                        getgenv().RefreshTCStatus = "Enable Team Colors"
                    end
                end

                PlayerEspSettingsList = {
                    getgenv().RefreshBoxEsp,
                    getgenv().RefreshTracerEsp,
                    getgenv().RefreshChamsEsp,
                    getgenv().RefreshNameTagEsp,
                    getgenv().RefreshRoleEsp,
                    getgenv().RefreshTCStatus
                }

                getgenv().dropPlayerEspSettings:Refresh({List = PlayerEspSettingsList})
            end
        }
    )

    Section2:Toggle(
        {
            Text = "Player ESP",
            Default = getgenv().PlayerESPEnabled,
            Flag = "PlayerESPEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Player ESP")
                    end
                )
                getgenv().IsOn = bool
                if bool == true then
                    getgenv().BoxESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                    getgenv().BoxESP.Tracers = getgenv().PlayerTracerEsp
                    getgenv().BoxESP.Names = getgenv().PlayerNametagEsp
                    getgenv().BoxESP.Boxes = getgenv().PlayerBoxEsp
                    getgenv().BoxESP.Temporary = true
                    getgenv().BoxESP.Color = Color3.new(0, 255, 0)
                    getgenv().BoxESP.TeamColor = getgenv().TCStatus
                    getgenv().BoxESP.FaceCamera = true

                    getgenv().BoxESP:Toggle(true)

                    if getgenv().PlayerChamsEsp == true then
                        getgenv().espLib =
                            loadstring(
                            game:HttpGet(
                                ("https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua"),
                                true
                            )
                        )()

                        getgenv().espLib.options.enabled = true
                        getgenv().espLib.options.minScaleFactorX = 1
                        getgenv().espLib.options.maxScaleFactorX = 10
                        getgenv().espLib.options.minScaleFactorY = 1
                        getgenv().espLib.options.maxScaleFactorY = 10
                        getgenv().espLib.options.boundingBox = false
                        getgenv().espLib.options.boundingBoxDescending = true
                        getgenv().espLib.options.font = 2
                        getgenv().espLib.options.fontSize = 13
                        getgenv().espLib.options.limitDistance = false
                        getgenv().espLib.options.maxDistance = 99999
                        getgenv().espLib.options.visibleOnly = false
                        getgenv().espLib.options.teamCheck = false
                        getgenv().espLib.options.teamColor = getgenv().TCStatus
                        getgenv().espLib.options.fillColor = nil
                        getgenv().espLib.options.whitelistColor = Color3.new(1, 0, 0)
                        getgenv().espLib.options.outOfViewArrows = false
                        getgenv().espLib.options.outOfViewArrowsFilled = false
                        getgenv().espLib.options.outOfViewArrowsSize = 25
                        getgenv().espLib.options.outOfViewArrowsRadius = 100
                        getgenv().espLib.options.outOfViewArrowsColor = Color3.new(1, 1, 1)
                        getgenv().espLib.options.outOfViewArrowsTransparency = 0.5
                        getgenv().espLib.options.outOfViewArrowsOutline = false
                        getgenv().espLib.options.outOfViewArrowsOutlineFilled = false
                        getgenv().espLib.options.outOfViewArrowsOutlineColor = Color3.new(1, 1, 1)
                        getgenv().espLib.options.outOfViewArrowsOutlineTransparency = 1
                        getgenv().espLib.options.names = false
                        getgenv().espLib.options.nameTransparency = 1
                        getgenv().espLib.options.nameColor = Color3.new(1, 1, 1)
                        getgenv().espLib.options.boxes = false
                        getgenv().espLib.options.boxesTransparency = 1
                        getgenv().espLib.options.boxesColor = Color3.new(1, 0, 0)
                        getgenv().espLib.options.boxFill = false
                        getgenv().espLib.options.boxFillTransparency = 0.5
                        getgenv().espLib.options.boxFillColor = Color3.new(1, 0, 0)
                        getgenv().espLib.options.healthBars = false
                        getgenv().espLib.options.healthBarsSize = 1
                        getgenv().espLib.options.healthBarsTransparency = 1
                        getgenv().espLib.options.healthBarsColor = Color3.new(0, 1, 0)
                        getgenv().espLib.options.healthText = false
                        getgenv().espLib.options.healthTextTransparency = 1
                        getgenv().espLib.options.healthTextSuffix = "%"
                        getgenv().espLib.options.healthTextColor = Color3.new(1, 1, 1)
                        getgenv().espLib.options.distance = false
                        getgenv().espLib.options.distanceTransparency = 1
                        getgenv().espLib.options.distanceSuffix = " Studs"
                        getgenv().espLib.options.distanceColor = Color3.new(1, 1, 1)
                        getgenv().espLib.options.tracers = false
                        getgenv().espLib.options.tracerTransparency = 1
                        getgenv().espLib.options.tracerColor = Color3.new(1, 1, 1)
                        getgenv().espLib.options.tracerOrigin = "Bottom"
                        getgenv().espLib.options.chams = true
                        getgenv().espLib.options.chamsFillColor = Color3.new(0, 255, 0)
                        getgenv().espLib.options.chamsFillTransparency = 0.45
                        getgenv().espLib.options.chamsOutlineColor = Color3.new()
                        getgenv().espLib.options.chamsOutlineTransparency = 0.05

                        getgenv().espLib:Load()
                    end
                    if getgenv().RoleEsp == true then
                        local function CheckTheFireBaseList()
                            local Players = game:GetService("Players")

                            local http_request = syn and syn.request or request

                            local firebaseDevURL = "https://slowpihax-default-rtdb.firebaseio.com/Dev.json"
                            local firebasePremiumURL = "https://slowpihax-default-rtdb.firebaseio.com/Premium.json"
                            local firebasePublicURL = "https://slowpihax-default-rtdb.firebaseio.com/User.json"

                            local function DevgetDataFromFirebase()
                                local success, response =
                                    pcall(
                                    function()
                                        return http_request(
                                            {
                                                Url = firebaseDevURL,
                                                Method = "GET"
                                            }
                                        )
                                    end
                                )

                                return game:GetService("HttpService"):JSONDecode(response.Body)
                            end

                            local Devdata = DevgetDataFromFirebase()

                            getgenv().DevplayerNames = {}
                            getgenv().DevJobId = {}

                            for _, value in pairs(Devdata) do
                                local player = Players:GetPlayerByUserId(value.userId)

                                if player then
                                    table.insert(DevplayerNames, player.Name)
                                    table.insert(DevJobId, value.JobId)
                                end
                            end

                            local function PremiumgetDataFromFirebase()
                                local success, response =
                                    pcall(
                                    function()
                                        return http_request(
                                            {
                                                Url = firebasePremiumURL,
                                                Method = "GET"
                                            }
                                        )
                                    end
                                )

                                return game:GetService("HttpService"):JSONDecode(response.Body)
                            end

                            local Premiumdata = PremiumgetDataFromFirebase()

                            getgenv().PremiumplayerNames = {}
                            getgenv().PremiumJobId = {}

                            for _, value in pairs(Premiumdata) do
                                local player = Players:GetPlayerByUserId(value.userId)

                                if player then
                                    table.insert(PremiumplayerNames, player.Name)
                                    table.insert(PremiumJobId, value.JobId)
                                end
                            end

                            local function PublicgetDataFromFirebase()
                                local success, response =
                                    pcall(
                                    function()
                                        return http_request(
                                            {
                                                Url = firebasePublicURL,
                                                Method = "GET"
                                            }
                                        )
                                    end
                                )

                                return game:GetService("HttpService"):JSONDecode(response.Body)
                            end

                            local Publicdata = PublicgetDataFromFirebase()

                            getgenv().PublicplayerNames = {}
                            getgenv().PublicJobId = {}

                            for _, value in pairs(Publicdata) do
                                local player = Players:GetPlayerByUserId(value.userId)

                                if player then
                                    table.insert(PublicplayerNames, player.Name)
                                    table.insert(PublicJobId, value.JobId)
                                end
                            end
                        end

                        CheckTheFireBaseList()

                        if bool == false then
                            for i, v in pairs(game:GetDescendants()) do
                                if v.Name == "slowpihax-Role" then
                                    v:Destroy()
                                end
                            end
                        end

                        local Players = game:GetService("Players")

                        local players = game:GetService("Players")

                        local function checkPlayers()
                            for _, player in pairs(players:GetPlayers()) do
                                local character = player.Character
                                if character then
                                    local humanoid = character:FindFirstChild("HumanoidRootPart")
                                    if humanoid then
                                        if character.Name ~= game.Players.LocalPlayer.Character.Name then
                                            local torsoColor = character:WaitForChild("Body Colors").TorsoColor
                                            if torsoColor then
                                                local tag = humanoid:FindFirstChild("slowpihax-Role")
                                                if not tag then
                                                    local billboard = Instance.new("BillboardGui")
                                                    local textLabel = Instance.new("TextLabel")

                                                    local inDevTable = false
                                                    local inPremiumTable = false
                                                    local inPublicTable = false

                                                    local inDevServer = false
                                                    local inPremiumServer = false
                                                    local inPublicServer = false

                                                    getgenv().NametagColor = Color3.fromRGB(255, 244, 162)

                                                    for i, v in pairs(DevplayerNames) do
                                                        if tostring(v) == tostring(player) then
                                                            inDevTable = true
                                                        end
                                                    end

                                                    for i, v in pairs(PremiumplayerNames) do
                                                        if tostring(v) == tostring(player) then
                                                            inPremiumTable = true
                                                        end
                                                    end

                                                    for i, v in pairs(PublicplayerNames) do
                                                        if tostring(v) == tostring(player) then
                                                            inPublicTable = true
                                                        end
                                                    end

                                                    for i, v in pairs(DevJobId) do
                                                        if tostring(v) == game.JobId then
                                                            inDevServer = true
                                                        end
                                                    end

                                                    for i, v in pairs(PremiumJobId) do
                                                        if tostring(v) == game.JobId then
                                                            inPremiumServer = true
                                                        end
                                                    end

                                                    for i, v in pairs(PublicJobId) do
                                                        if tostring(v) == game.JobId then
                                                            inPublicServer = true
                                                        end
                                                    end

                                                    if inDevTable == true then
                                                        getgenv().NametagColor = Color3.fromRGB(162, 244, 255)
                                                        getgenv().UserRoleText = "DEV"
                                                    elseif inPremiumTable == true then
                                                        getgenv().NametagColor = Color3.fromRGB(135, 1, 255)
                                                        getgenv().UserRoleText = "Premium"
                                                    elseif inPublicTable == true then
                                                        getgenv().NametagColor = Color3.fromRGB(130, 255, 75)
                                                        getgenv().UserRoleText = "Public"
                                                    end
                                                    task.wait(0.01)

                                                    if inDevTable or inPremiumTable or inPublicTable == true then
                                                        if inDevServer or inPremiumServer or inPublicServer == true then
                                                            local r, g, b =
                                                                NametagColor.r * 255,
                                                                NametagColor.g * 255,
                                                                NametagColor.b * 255

                                                            billboard.Parent = humanoid
                                                            billboard.Size = UDim2.new(5, 0, 5, 0)
                                                            billboard.AlwaysOnTop = true
                                                            billboard.Name = "slowpihax-Role"

                                                            textLabel.Parent = billboard
                                                            textLabel.Text = tostring(UserRoleText)
                                                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                                                            textLabel.BackgroundTransparency = 1
                                                            textLabel.TextColor3 =
                                                                Color3.fromRGB(
                                                                NametagColor.r * 255,
                                                                NametagColor.g * 255,
                                                                NametagColor.b * 255
                                                            )
                                                            textLabel.TextStrokeTransparency = 0
                                                            textLabel.TextStrokeColor3 =
                                                                Color3.fromRGB(
                                                                NametagColor.r * 142,
                                                                NametagColor.g * 128,
                                                                NametagColor.b * 128
                                                            )
                                                            textLabel.TextSize = 8.25
                                                            textLabel.Position = UDim2.new(0, 0, -0.55, 0)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        checkPlayers()

                        game.Players.PlayerAdded:Connect(
                            function(player)
                                if getgenv().IsOn == true then
                                    checkPlayers()
                                end
                            end
                        )

                        spawn(
                            function()
                                while getgenv().IsOn == true do
                                    task.wait(11)
                                    CheckTheFireBaseList()
                                end
                            end
                        )

                        spawn(
                            function()
                                while getgenv().IsOn == true do
                                    task.wait(4)
                                    checkPlayers()
                                end
                            end
                        )

                        spawn(
                            function()
                                while task.wait() do
                                    for i, v in pairs(players:GetPlayers()) do
                                        if getgenv().IsOn then
                                            v.NameDisplayDistance = 15
                                            v.HealthDisplayDistance = 15
                                        elseif not getgenv().IsOn then
                                            v.NameDisplayDistance = 100
                                            v.HealthDisplayDistance = 100
                                        end
                                    end
                                end
                            end
                        )
                    end
                else
                    getgenv().BoxESP:Toggle(false)
                    getgenv().espLib:Unload()
                end
            end
        }
    )

    Section2:Toggle(
        {
            Text = "Fullbright",
            Default = getgenv().FullbrightEnabled,
            Flag = "FullbrightEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
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

    -- Section 3

    Section3:Toggle(
        {
            Text = "Ctrl Click TP",
            Default = getgenv().CtrlClickTPEnabled,
            Flag = "CtrlClickTPEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "CTRL Click TP")
                    end
                )
                getgenv().Pflcrt = game:GetService("Players").LocalPlayer

                if bool == true then
                    getgenv().Pflcr = game:GetService("Players").LocalPlayer
                elseif bool == false then
                    getgenv().Pflcr = nil
                end

                local Mouse = getgenv().Pflcr:GetMouse()

                Mouse.Button1Down:connect(
                    function()
                        if not getgenv().Pflcr then
                            return
                        end
                        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                            return
                        end
                        if not Mouse.Target then
                            return
                        end
                        getgenv().Pflcr.Character:MoveTo(Mouse.Hit.p)
                    end
                )
            end
        }
    )

    Section3:Toggle(
        {
            Text = "Get Btools",
            Default = getgenv().GetBtoolsEnabled,
            Flag = "GetBtoolsEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Get Btools")
                    end
                )
                if bool == true then
                    loadstring(game:HttpGet("https://pastebin.com/raw/PSeXEvEc"))()
                else
                    removeItem("Move")
                    removeItem("Delete")
                    removeItem("Undo")
                end
            end
        }
    )

    Section3:Toggle(
        {
            Text = "Xray",
            Default = getgenv().XrayEnabled,
            Flag = "XrayEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Xray")
                    end
                )
                if bool == true then
                    local xrayOn = true

                    for i, descendant in pairs(workspace:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if xrayOn then
                                if not descendant:FindFirstChild("OriginalTransparency") then
                                    local originalTransparency = Instance.new("NumberValue")
                                    originalTransparency.Name = "OriginalTransparency"
                                    originalTransparency.Value = descendant.Transparency
                                    originalTransparency.Parent = descendant
                                end
                                descendant.Transparency = 0.5
                            else
                                descendant.Transparency = descendant.OriginalTransparency.Value
                            end
                        end
                    end
                elseif bool == false then
                    local xrayOn = false
                    for i, descendant in pairs(workspace:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if xrayOn then
                                if not descendant:FindFirstChild("OriginalTransparency") then
                                    local originalTransparency = Instance.new("NumberValue")
                                    originalTransparency.Name = "OriginalTransparency"
                                    originalTransparency.Value = descendant.Transparency
                                    originalTransparency.Parent = descendant
                                end
                                descendant.Transparency = 1
                            else
                                descendant.Transparency = descendant.OriginalTransparency.Value
                            end
                        end
                    end
                end
            end
        }
    )

    Section3:Toggle(
        {
            Text = "Aimlock (RMB)",
            Default = getgenv().AimlockEnabled,
            Flag = "AimlockEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Aimlock")
                    end
                )
                local Area = game:GetService("Workspace")
                local RunService = game:GetService("RunService")
                getgenv().aimUIS = game:GetService("UserInputService")
                local Players = game:GetService("Players")
                getgenv().aimLocalPlayer = Players.LocalPlayer
                local MyCharacter = getgenv().aimLocalPlayer.Character
                local MyRoot = MyCharacter:FindFirstChild("HumanoidRootPart")
                local MyHumanoid = MyCharacter:FindFirstChild("Humanoid")
                getgenv().aimMouse = getgenv().aimLocalPlayer:GetMouse()
                local MyView = Area.CurrentCamera
                local MyTeamColor = getgenv().aimLocalPlayer.TeamColor
                local HoldingM2 = false
                local Active = false
                local Lock = false
                local Epitaph = .02
                local HeadOffset = Vector3.new(0, .1, 0)

                if bool == true then
                    getgenv().aimUIS = game:GetService("UserInputService")
                    getgenv().LocalPlayer = Players.LocalPlayer
                    getgenv().aimMouse = getgenv().aimLocalPlayer:GetMouse()
                else
                    getgenv().aimUIS = nil
                    getgenv().LocalPlayer = nil
                    getgenv().aimMouse = nil
                end

                getgenv().TeamCheck = false
                getgenv().AimPart = "HumanoidRootPart"
                getgenv().Sensitivity = 0
                getgenv().CircleSides = 64
                getgenv().CircleColor = Color3.fromRGB(255, 0, 130)
                getgenv().CircleTransparency = 0
                getgenv().CircleRadius = 200
                getgenv().CircleFilled = false
                getgenv().CircleVisible = true
                getgenv().CircleThickness = 1

                local FOVCircle = Drawing.new("Circle")
                FOVCircle.Position = Vector2.new(MyView.ViewportSize.X / 2, MyView.ViewportSize.Y / 2)
                FOVCircle.Radius = getgenv().CircleRadius
                FOVCircle.Filled = getgenv().CircleFilled
                FOVCircle.Color = getgenv().CircleColor
                FOVCircle.Visible = getgenv().CircleVisible
                FOVCircle.Transparency = getgenv().CircleTransparency
                FOVCircle.NumSides = getgenv().CircleSides
                FOVCircle.Thickness = getgenv().CircleThickness

                local function CursorLock()
                    if not getgenv().aimUIS then
                        return
                    end
                    if not getgenv().LocalPlayer then
                        return
                    end
                    if not getgenv().aimMouse then
                        return
                    end
                    getgenv().aimUIS.MouseBehavior = Enum.MouseBehavior.LockCenter
                end
                local function UnLockCursor()
                    HoldingM2 = false
                    Active = false
                    Lock = false
                    if not getgenv().aimUIS then
                        return
                    end
                    if not getgenv().LocalPlayer then
                        return
                    end
                    if not getgenv().aimMouse then
                        return
                    end
                    getgenv().aimUIS.MouseBehavior = Enum.MouseBehavior.Default
                end
                function FindNearestPlayer()
                    if not getgenv().aimUIS then
                        return
                    end
                    if not getgenv().LocalPlayer then
                        return
                    end
                    if not getgenv().aimMouse then
                        return
                    end
                    local dist = math.huge
                    local Target = nil
                    for _, v in pairs(Players:GetPlayers()) do
                        if
                            v ~= getgenv().aimLocalPlayer and v.Character:FindFirstChild("Humanoid") and
                                v.Character:FindFirstChild("Humanoid").Health > 0 and
                                v.Character:FindFirstChild("HumanoidRootPart") and
                                v
                         then
                            local TheirCharacter = v.Character
                            local CharacterRoot, Visible = MyView:WorldToViewportPoint(TheirCharacter[getgenv().AimPart].Position)
                            if Visible then
                                local RealMag =
                                    (Vector2.new(getgenv().aimMouse.X, getgenv().aimMouse.Y) -
                                    Vector2.new(CharacterRoot.X, CharacterRoot.Y)).Magnitude
                                if RealMag < dist and RealMag < FOVCircle.Radius then
                                    dist = RealMag
                                    Target = TheirCharacter
                                end
                            end
                        end
                    end
                    return Target
                end

                getgenv().aimUIS.InputBegan:Connect(
                    function(Input)
                        if not getgenv().aimUIS then
                            return
                        end
                        if not getgenv().LocalPlayer then
                            return
                        end
                        if not getgenv().aimMouse then
                            return
                        end
                        if Input.UserInputType == Enum.UserInputType.MouseButton2 then
                            HoldingM2 = true
                            Active = true
                            Lock = true
                            if Active then
                                local The_Enemy = FindNearestPlayer()
                                while HoldingM2 do
                                    task.wait()
                                    if Lock and The_Enemy ~= nil then
                                        local Future =
                                            The_Enemy.HumanoidRootPart.CFrame +
                                            (The_Enemy.HumanoidRootPart.Velocity * Epitaph + HeadOffset)
                                        MyView.CFrame = CFrame.lookAt(MyView.CFrame.Position, Future.Position)
                                        CursorLock()
                                    end
                                end
                            end
                        end
                    end
                )
                getgenv().aimUIS.InputEnded:Connect(
                    function(Input)
                        if not getgenv().aimUIS then
                            return
                        end
                        if not getgenv().LocalPlayer then
                            return
                        end
                        if not getgenv().aimMouse then
                            return
                        end
                        if Input.UserInputType == Enum.UserInputType.MouseButton2 then
                            UnLockCursor()
                        end
                    end
                )
            end
        }
    )

    Section3:Toggle(
        {
            Text = "FPS Boost",
            Default = getgenv().FPSBoostEnabled,
            Flag = "FPSBoostEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "FPS Boost")
                    end
                )
                if bool == true then
                    local a = game
                    local b = a.Workspace
                    local c = a.Lighting
                    local d = b.Terrain
                    d.WaterWaveSize = 0
                    d.WaterWaveSpeed = 0
                    d.WaterReflectance = 0
                    d.WaterTransparency = 0
                    c.GlobalShadows = false
                    c.FogEnd = 9e9
                    settings().Rendering.QualityLevel = "Level01"
                    for e, f in pairs(a:GetDescendants()) do
                        if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
                            f.Reflectance = 0
                        elseif f:IsA("Decal") or f:IsA("Texture") then
                            f.Transparency = 0
                        elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
                            f.Lifetime = NumberRange.new(0)
                        elseif f:IsA("Explosion") then
                            f.BlastPressure = 0
                            f.BlastRadius = 0
                        elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
                            f.Enabled = false
                        elseif f:IsA("MeshPart") then
                            f.Reflectance = 0
                            task.wait()
                        end
                    end
                    for e, g in pairs(c:GetChildren()) do
                        if
                            g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or
                                g:IsA("BloomEffect") or
                                g:IsA("DepthOfFieldEffect")
                         then
                            g.Enabled = false
                        end
                    end
                    sethiddenproperty(game.Lighting, "Technology", "Compatibility")

                    while task.wait() do
                        if iswindowactive() then
                            setfpscap(165)
                        else
                            setfpscap(25)
                        end
                    end
                elseif bool == false then
                    local a = game
                    local b = a.Workspace
                    local c = a.Lighting
                    local d = b.Terrain
                    d.WaterWaveSize = 0.3
                    d.WaterWaveSpeed = 10
                    d.WaterReflectance = 1
                    d.WaterTransparency = 0.8
                    c.GlobalShadows = true
                    c.FogEnd = 9e9
                    settings().Rendering.QualityLevel = "Level20"
                    for e, f in pairs(a:GetDescendants()) do
                        if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
                            f.Reflectance = 0
                        elseif f:IsA("Decal") or f:IsA("Texture") then
                            f.Transparency = 1
                        elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
                            f.Lifetime = NumberRange.new(5)
                        elseif f:IsA("Explosion") then
                            f.BlastPressure = 1
                            f.BlastRadius = 1
                        elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
                            f.Enabled = true
                        elseif f:IsA("MeshPart") then
                            f.Reflectance = 0
                        end
                    end
                    for e, g in pairs(c:GetChildren()) do
                        if
                            g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or
                                g:IsA("BloomEffect") or
                                g:IsA("DepthOfFieldEffect")
                         then
                            g.Enabled = false
                        end
                    end
                end

                while task.wait() do
                    if iswindowactive() then
                        setfpscap(165)
                    else
                        setfpscap(165)
                    end
                end
            end
        }
    )

    Section4:Keybind(
        {
            Text = "Walkspeed Keybind",
            Default = getgenv().WalkspeedKeybind,
            Flag = "WalkspeedToggle",
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Walkspeed Keybind")
                    end
                )

                if bool == true then
                    getgenv().DoWalkSpeedKeybind = true
                else
                    getgenv().DoWalkSpeedKeybind = false
                end

                spawn(
                    function()
                        while getgenv().DoWalkSpeedKeybind == true do
                            task.wait()
                            if getgenv().walking == true then
                                local currentVelocity =
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity
                                local newVelocity =
                                    Vector3.new(
                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection.X *
                                        Flags.Walkspeed,
                                    currentVelocity.Y,
                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Z *
                                        Flags.Walkspeed
                                )
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity =
                                    newVelocity
                            else
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity =
                                    Vector3.new(
                                    0,
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity.Y,
                                    0
                                )
                            end
                        end
                    end
                )
            end
        }
    )

    Section4:Keybind(
        {
            Text = "JumpPower Keybind",
            Default = getgenv().JumpPowerKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "JumpPower Keybind")
                    end
                )
                getgenv().JumpPowerKeybindbool = bool
            end
        }
    )

    Section4:Keybind(
        {
            Text = "Gravity Keybind",
            Default = getgenv().GravityKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Gravity Keybind")
                    end
                )
                if bool == true then
                    game.Workspace.Gravity = Flags.Gravity
                else
                    game.Workspace.Gravity = oldgravity
                end
            end
        }
    )

    Section4:Keybind(
        {
            Text = "Fly Keybind",
            Default = getgenv().FlyKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Fly Keybind")
                    end
                )

                if bool == true then
                    _G.FLYING = true
                    local LP = game:service("Players").LocalPlayer
                    local T = LP.Character.HumanoidRootPart
                    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    local SPEED = getgenv().FlySpeed
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
                                        SPEED = getgenv().FlySpeed
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

    Section4:Keybind(
        {
            Text = "Noclip Keybind",
            Default = getgenv().NoclipKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Noclip Keybind")
                    end
                )

                if bool == true then
                    getgenv().noclip =
                        game.RunService.Stepped:Connect(
                        function()
                            if game.Players.LocalPlayer.Character then
                                for _, v in next, game.Players.LocalPlayer.Character:GetChildren() do
                                    pcall(
                                        function()
                                            if v:IsA("BasePart") and v.CanCollide then
                                                v.CanCollide = false
                                            end
                                        end
                                    )
                                end
                            end
                        end
                    )
                else
                    getgenv().noclip:Disconnect()
                end
            end
        }
    )

    Section4:Keybind(
        {
            Text = "Inf Jumps Keybind",
            Default = getgenv().InfJumpsKeybind,
            Callback = function()
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Inf Jumps Keybind")
                    end
                )
                if bool == true then
                    getgenv().InfiniteJumpEnabled = true
                else
                    getgenv().InfiniteJumpEnabled = false
                end

                local userInputService = game:GetService("UserInputService")

                game:GetService("UserInputService").InputBegan:Connect(
                    function(inputObject)
                        if inputObject.KeyCode == Enum.KeyCode.Space then
                            if getgenv().InfiniteJumpEnabled == true then
                                task.wait(0.01)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                                    Vector3.new(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,
                                    getgenv().thejumppower,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z
                                )
                            end
                        end
                    end
                )
            end
        }
    )

    Section4:Keybind(
        {
            Text = "Invisibility Keybind",
            Default = getgenv().InvisibilityKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Invisibility Keybind")
                    end
                )

                if bool == true then
                    invis_on = true
                else
                    invis_on = false
                end
                if bool == true then
                    invis_on = true
                    if invis_on == true then
                        local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -200, 0)
                        wait(.15)
                        local Seat = Instance.new("Seat", game.Workspace)
                        Seat.Anchored = false
                        Seat.CanCollide = false
                        Seat.Name = "invischair"
                        Seat.Transparency = 1
                        Seat.Position = Vector3.new(0, -200, 0)
                        local Weld = Instance.new("Weld", Seat)
                        Weld.Part0 = Seat
                        Weld.Part1 =
                            game.Players.LocalPlayer.Character:FindFirstChild("Torso") or
                            game.Players.LocalPlayer.Character.UpperTorso
                        wait()
                        Seat.CFrame = savedpos
                    end
                else
                    invis_on = false
                end
            end
        }
    )

    Section4_1:Keybind(
        {
            Text = "Player Esp Keybind",
            Default = getgenv().PlayerEspKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Player ESP Keybind")
                    end
                )
                getgenv().IsOnKeybind = bool
                if bool == true then
                    getgenv().BoxESPKeybind = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                    getgenv().BoxESPKeybind.Tracers = getgenv().PlayerTracerEsp
                    getgenv().BoxESPKeybind.Names = getgenv().PlayerNametagEsp
                    getgenv().BoxESPKeybind.Boxes = getgenv().PlayerBoxEsp
                    getgenv().BoxESPKeybind.Temporary = true
                    getgenv().BoxESPKeybind.Color = Color3.new(0, 255, 0)
                    getgenv().BoxESPKeybind.TeamColor = getgenv().TCStatus
                    getgenv().BoxESPKeybind.FaceCamera = true

                    getgenv().BoxESPKeybind:Toggle(true)

                    if getgenv().PlayerChamsEsp == true then
                        getgenv().espLibKeybind =
                            loadstring(
                            game:HttpGet(
                                ("https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua"),
                                true
                            )
                        )()

                        getgenv().espLibKeybind.options.enabled = true
                        getgenv().espLibKeybind.options.minScaleFactorX = 1
                        getgenv().espLibKeybind.options.maxScaleFactorX = 10
                        getgenv().espLibKeybind.options.minScaleFactorY = 1
                        getgenv().espLibKeybind.options.maxScaleFactorY = 10
                        getgenv().espLibKeybind.options.boundingBox = false
                        getgenv().espLibKeybind.options.boundingBoxDescending = true
                        getgenv().espLibKeybind.options.font = 2
                        getgenv().espLibKeybind.options.fontSize = 13
                        getgenv().espLibKeybind.options.limitDistance = false
                        getgenv().espLibKeybind.options.maxDistance = 99999
                        getgenv().espLibKeybind.options.visibleOnly = false
                        getgenv().espLibKeybind.options.teamCheck = false
                        getgenv().espLibKeybind.options.teamColor = getgenv().TCStatus
                        getgenv().espLibKeybind.options.fillColor = nil
                        getgenv().espLibKeybind.options.whitelistColor = Color3.new(1, 0, 0)
                        getgenv().espLibKeybind.options.outOfViewArrows = false
                        getgenv().espLibKeybind.options.outOfViewArrowsFilled = false
                        getgenv().espLibKeybind.options.outOfViewArrowsSize = 25
                        getgenv().espLibKeybind.options.outOfViewArrowsRadius = 100
                        getgenv().espLibKeybind.options.outOfViewArrowsColor = Color3.new(1, 1, 1)
                        getgenv().espLibKeybind.options.outOfViewArrowsTransparency = 0.5
                        getgenv().espLibKeybind.options.outOfViewArrowsOutline = false
                        getgenv().espLibKeybind.options.outOfViewArrowsOutlineFilled = false
                        getgenv().espLibKeybind.options.outOfViewArrowsOutlineColor = Color3.new(1, 1, 1)
                        getgenv().espLibKeybind.options.outOfViewArrowsOutlineTransparency = 1
                        getgenv().espLibKeybind.options.names = false
                        getgenv().espLibKeybind.options.nameTransparency = 1
                        getgenv().espLibKeybind.options.nameColor = Color3.new(1, 1, 1)
                        getgenv().espLibKeybind.options.boxes = false
                        getgenv().espLibKeybind.options.boxesTransparency = 1
                        getgenv().espLibKeybind.options.boxesColor = Color3.new(1, 0, 0)
                        getgenv().espLibKeybind.options.boxFill = false
                        getgenv().espLibKeybind.options.boxFillTransparency = 0.5
                        getgenv().espLibKeybind.options.boxFillColor = Color3.new(1, 0, 0)
                        getgenv().espLibKeybind.options.healthBars = false
                        getgenv().espLibKeybind.options.healthBarsSize = 1
                        getgenv().espLibKeybind.options.healthBarsTransparency = 1
                        getgenv().espLibKeybind.options.healthBarsColor = Color3.new(0, 1, 0)
                        getgenv().espLibKeybind.options.healthText = false
                        getgenv().espLibKeybind.options.healthTextTransparency = 1
                        getgenv().espLibKeybind.options.healthTextSuffix = "%"
                        getgenv().espLibKeybind.options.healthTextColor = Color3.new(1, 1, 1)
                        getgenv().espLibKeybind.options.distance = false
                        getgenv().espLibKeybind.options.distanceTransparency = 1
                        getgenv().espLibKeybind.options.distanceSuffix = " Studs"
                        getgenv().espLibKeybind.options.distanceColor = Color3.new(1, 1, 1)
                        getgenv().espLibKeybind.options.tracers = false
                        getgenv().espLibKeybind.options.tracerTransparency = 1
                        getgenv().espLibKeybind.options.tracerColor = Color3.new(1, 1, 1)
                        getgenv().espLibKeybind.options.tracerOrigin = "Bottom"
                        getgenv().espLibKeybind.options.chams = true
                        getgenv().espLibKeybind.options.chamsFillColor = Color3.new(0, 255, 0)
                        getgenv().espLibKeybind.options.chamsFillTransparency = 0.45
                        getgenv().espLibKeybind.options.chamsOutlineColor = Color3.new()
                        getgenv().espLibKeybind.options.chamsOutlineTransparency = 0.05

                        getgenv().espLibKeybind:Load()
                    end
                    if getgenv().RoleEsp == true then
                        local function CheckTheFireBaseList()
                            local Players = game:GetService("Players")

                            local http_request = syn and syn.request or request

                            local firebaseDevURL = "https://slowpihax-default-rtdb.firebaseio.com/Dev.json"
                            local firebasePremiumURL = "https://slowpihax-default-rtdb.firebaseio.com/Premium.json"
                            local firebasePublicURL = "https://slowpihax-default-rtdb.firebaseio.com/User.json"

                            local function DevgetDataFromFirebase()
                                local success, response =
                                    pcall(
                                    function()
                                        return http_request(
                                            {
                                                Url = firebaseDevURL,
                                                Method = "GET"
                                            }
                                        )
                                    end
                                )

                                return game:GetService("HttpService"):JSONDecode(response.Body)
                            end

                            local Devdata = DevgetDataFromFirebase()

                            getgenv().DevplayerNames = {}
                            getgenv().DevJobId = {}

                            for _, value in pairs(Devdata) do
                                local player = Players:GetPlayerByUserId(value.userId)

                                if player then
                                    table.insert(DevplayerNames, player.Name)
                                    table.insert(DevJobId, value.JobId)
                                end
                            end

                            local function PremiumgetDataFromFirebase()
                                local success, response =
                                    pcall(
                                    function()
                                        return http_request(
                                            {
                                                Url = firebasePremiumURL,
                                                Method = "GET"
                                            }
                                        )
                                    end
                                )

                                return game:GetService("HttpService"):JSONDecode(response.Body)
                            end

                            local Premiumdata = PremiumgetDataFromFirebase()

                            getgenv().PremiumplayerNames = {}
                            getgenv().PremiumJobId = {}

                            for _, value in pairs(Premiumdata) do
                                local player = Players:GetPlayerByUserId(value.userId)

                                if player then
                                    table.insert(PremiumplayerNames, player.Name)
                                    table.insert(PremiumJobId, value.JobId)
                                end
                            end

                            local function PublicgetDataFromFirebase()
                                local success, response =
                                    pcall(
                                    function()
                                        return http_request(
                                            {
                                                Url = firebasePublicURL,
                                                Method = "GET"
                                            }
                                        )
                                    end
                                )

                                return game:GetService("HttpService"):JSONDecode(response.Body)
                            end

                            local Publicdata = PublicgetDataFromFirebase()

                            getgenv().PublicplayerNames = {}
                            getgenv().PublicJobId = {}

                            for _, value in pairs(Publicdata) do
                                local player = Players:GetPlayerByUserId(value.userId)

                                if player then
                                    table.insert(PublicplayerNames, player.Name)
                                    table.insert(PublicJobId, value.JobId)
                                end
                            end
                        end

                        CheckTheFireBaseList()

                        if bool == false then
                            for i, v in pairs(game:GetDescendants()) do
                                if v.Name == "slowpihax-Role" then
                                    v:Destroy()
                                end
                            end
                        end

                        local Players = game:GetService("Players")

                        local players = game:GetService("Players")

                        local function checkPlayers()
                            for _, player in pairs(players:GetPlayers()) do
                                local character = player.Character
                                if character then
                                    local humanoid = character:FindFirstChild("HumanoidRootPart")
                                    if humanoid then
                                        if character.Name ~= game.Players.LocalPlayer.Character.Name then
                                            local torsoColor = character:WaitForChild("Body Colors").TorsoColor
                                            if torsoColor then
                                                local tag = humanoid:FindFirstChild("slowpihax-Role")
                                                if not tag then
                                                    local billboard = Instance.new("BillboardGui")
                                                    local textLabel = Instance.new("TextLabel")

                                                    local inDevTable = false
                                                    local inPremiumTable = false
                                                    local inPublicTable = false

                                                    local inDevServer = false
                                                    local inPremiumServer = false
                                                    local inPublicServer = false

                                                    getgenv().NametagColor = Color3.fromRGB(255, 244, 162)

                                                    for i, v in pairs(DevplayerNames) do
                                                        if tostring(v) == tostring(player) then
                                                            inDevTable = true
                                                        end
                                                    end

                                                    for i, v in pairs(PremiumplayerNames) do
                                                        if tostring(v) == tostring(player) then
                                                            inPremiumTable = true
                                                        end
                                                    end

                                                    for i, v in pairs(PublicplayerNames) do
                                                        if tostring(v) == tostring(player) then
                                                            inPublicTable = true
                                                        end
                                                    end

                                                    for i, v in pairs(DevJobId) do
                                                        if tostring(v) == game.JobId then
                                                            inDevServer = true
                                                        end
                                                    end

                                                    for i, v in pairs(PremiumJobId) do
                                                        if tostring(v) == game.JobId then
                                                            inPremiumServer = true
                                                        end
                                                    end

                                                    for i, v in pairs(PublicJobId) do
                                                        if tostring(v) == game.JobId then
                                                            inPublicServer = true
                                                        end
                                                    end

                                                    if inDevTable == true then
                                                        getgenv().NametagColor = Color3.fromRGB(162, 244, 255)
                                                        getgenv().UserRoleText = "DEV"
                                                    elseif inPremiumTable == true then
                                                        getgenv().NametagColor = Color3.fromRGB(135, 1, 255)
                                                        getgenv().UserRoleText = "Premium"
                                                    elseif inPublicTable == true then
                                                        getgenv().NametagColor = Color3.fromRGB(130, 255, 75)
                                                        getgenv().UserRoleText = "Public"
                                                    end
                                                    task.wait(0.01)

                                                    if inDevTable or inPremiumTable or inPublicTable == true then
                                                        if inDevServer or inPremiumServer or inPublicServer == true then
                                                            local r, g, b =
                                                                NametagColor.r * 255,
                                                                NametagColor.g * 255,
                                                                NametagColor.b * 255

                                                            billboard.Parent = humanoid
                                                            billboard.Size = UDim2.new(5, 0, 5, 0)
                                                            billboard.AlwaysOnTop = true
                                                            billboard.Name = "slowpihax-Role"

                                                            textLabel.Parent = billboard
                                                            textLabel.Text = tostring(UserRoleText)
                                                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                                                            textLabel.BackgroundTransparency = 1
                                                            textLabel.TextColor3 =
                                                                Color3.fromRGB(
                                                                NametagColor.r * 255,
                                                                NametagColor.g * 255,
                                                                NametagColor.b * 255
                                                            )
                                                            textLabel.TextStrokeTransparency = 0
                                                            textLabel.TextStrokeColor3 =
                                                                Color3.fromRGB(
                                                                NametagColor.r * 142,
                                                                NametagColor.g * 128,
                                                                NametagColor.b * 128
                                                            )
                                                            textLabel.TextSize = 8.25
                                                            textLabel.Position = UDim2.new(0, 0, -0.55, 0)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        checkPlayers()

                        game.Players.PlayerAdded:Connect(
                            function(player)
                                if getgenv().IsOn == true then
                                    checkPlayers()
                                end
                            end
                        )

                        spawn(
                            function()
                                while getgenv().IsOn == true do
                                    task.wait(11)
                                    CheckTheFireBaseList()
                                end
                            end
                        )

                        spawn(
                            function()
                                while getgenv().IsOn == true do
                                    task.wait(4)
                                    checkPlayers()
                                end
                            end
                        )

                        spawn(
                            function()
                                while task.wait() do
                                    for i, v in pairs(players:GetPlayers()) do
                                        if getgenv().IsOn then
                                            v.NameDisplayDistance = 15
                                            v.HealthDisplayDistance = 15
                                        elseif not getgenv().IsOn then
                                            v.NameDisplayDistance = 100
                                            v.HealthDisplayDistance = 100
                                        end
                                    end
                                end
                            end
                        )
                    end
                else
                    getgenv().BoxESPKeybind:Toggle(false)
                    getgenv().espLibKeybind:Unload()
                end
            end
        }
    )

    Section4_1:Keybind(
        {
            Text = "Fullbright Keybind",
            Default = getgenv().FullbrightKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Fullbright Keybind")
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

    Section4_2:Keybind(
        {
            Text = "Ctrl Click TP Keybind",
            Default = getgenv().CtrlClickTPKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "CTRL Click TP Keybind")
                    end
                )
                getgenv().Pflcrt = game:GetService("Players").LocalPlayer

                if bool == true then
                    getgenv().Pflcr = game:GetService("Players").LocalPlayer
                elseif bool == false then
                    getgenv().Pflcr = nil
                end

                local Mouse = getgenv().Pflcr:GetMouse()

                Mouse.Button1Down:connect(
                    function()
                        if not getgenv().Pflcr then
                            return
                        end
                        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                            return
                        end
                        if not Mouse.Target then
                            return
                        end
                        getgenv().Pflcr.Character:MoveTo(Mouse.Hit.p)
                    end
                )
            end
        }
    )

    Section4_2:Keybind(
        {
            Text = "Get Btools Keybind",
            Default = getgenv().GetBtoolsKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Get Btools Keybind")
                    end
                )
                if bool == true then
                    loadstring(game:HttpGet("https://pastebin.com/raw/PSeXEvEc"))()
                else
                    game:GetService("Players").LocalPlayer.Backpack.Move:Destroy()
                    game:GetService("Players").LocalPlayer.Backpack.Delete:Destroy()
                    game:GetService("Players").LocalPlayer.Backpack.Undo:Destroy()
                end
            end
        }
    )

    Section4_2:Keybind(
        {
            Text = "Xray Keybind",
            Default = getgenv().XrayKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "Xray Keybind")
                    end
                )
                if bool == true then
                    local xrayOn = true

                    for i, descendant in pairs(workspace:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if xrayOn then
                                if not descendant:FindFirstChild("OriginalTransparency") then
                                    local originalTransparency = Instance.new("NumberValue")
                                    originalTransparency.Name = "OriginalTransparency"
                                    originalTransparency.Value = descendant.Transparency
                                    originalTransparency.Parent = descendant
                                end
                                descendant.Transparency = 0.5
                            else
                                descendant.Transparency = descendant.OriginalTransparency.Value
                            end
                        end
                    end
                elseif bool == false then
                    local xrayOn = false
                    for i, descendant in pairs(workspace:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if xrayOn then
                                if not descendant:FindFirstChild("OriginalTransparency") then
                                    local originalTransparency = Instance.new("NumberValue")
                                    originalTransparency.Name = "OriginalTransparency"
                                    originalTransparency.Value = descendant.Transparency
                                    originalTransparency.Parent = descendant
                                end
                                descendant.Transparency = 1
                            else
                                descendant.Transparency = descendant.OriginalTransparency.Value
                            end
                        end
                    end
                end
            end
        }
    )

    Section4_2:Keybind(
        {
            Text = "FPS Boost Keybind",
            Default = getgenv().FPSBoostKeybind,
            Callback = function(bool)
                spawn(
                    function()
                        SaveConfig(tostring(ConfigName))
                        Notification(bool, "FPS Boost Keybind")
                    end
                )
                if bool == true then
                    local a = game
                    local b = a.Workspace
                    local c = a.Lighting
                    local d = b.Terrain
                    d.WaterWaveSize = 0
                    d.WaterWaveSpeed = 0
                    d.WaterReflectance = 0
                    d.WaterTransparency = 0
                    c.GlobalShadows = false
                    c.FogEnd = 9e9
                    settings().Rendering.QualityLevel = "Level01"
                    for e, f in pairs(a:GetDescendants()) do
                        if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
                            f.Reflectance = 0
                        elseif f:IsA("Decal") or f:IsA("Texture") then
                            f.Transparency = 0
                        elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
                            f.Lifetime = NumberRange.new(0)
                        elseif f:IsA("Explosion") then
                            f.BlastPressure = 0
                            f.BlastRadius = 0
                        elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
                            f.Enabled = false
                        elseif f:IsA("MeshPart") then
                            f.Reflectance = 0
                            task.wait()
                        end
                    end
                    for e, g in pairs(c:GetChildren()) do
                        if
                            g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or
                                g:IsA("BloomEffect") or
                                g:IsA("DepthOfFieldEffect")
                         then
                            g.Enabled = false
                        end
                    end
                    sethiddenproperty(game.Lighting, "Technology", "Compatibility")

                    while task.wait() do
                        if iswindowactive() then
                            setfpscap(165)
                        else
                            setfpscap(25)
                        end
                    end
                elseif bool == false then
                    local a = game
                    local b = a.Workspace
                    local c = a.Lighting
                    local d = b.Terrain
                    d.WaterWaveSize = 0.3
                    d.WaterWaveSpeed = 10
                    d.WaterReflectance = 1
                    d.WaterTransparency = 0.8
                    c.GlobalShadows = true
                    c.FogEnd = 9e9
                    settings().Rendering.QualityLevel = "Level20"
                    for e, f in pairs(a:GetDescendants()) do
                        if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
                            f.Reflectance = 0
                        elseif f:IsA("Decal") or f:IsA("Texture") then
                            f.Transparency = 1
                        elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
                            f.Lifetime = NumberRange.new(5)
                        elseif f:IsA("Explosion") then
                            f.BlastPressure = 1
                            f.BlastRadius = 1
                        elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
                            f.Enabled = true
                        elseif f:IsA("MeshPart") then
                            f.Reflectance = 0
                        end
                    end
                    for e, g in pairs(c:GetChildren()) do
                        if
                            g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or
                                g:IsA("BloomEffect") or
                                g:IsA("DepthOfFieldEffect")
                         then
                            g.Enabled = false
                        end
                    end
                end

                while task.wait() do
                    if iswindowactive() then
                        setfpscap(165)
                    else
                        setfpscap(165)
                    end
                end
            end
        }
    )

    Section4_2:Keybind(
        {
            Text = "Gui Toggle",
            Default = getgenv().GuiToggle,
            Callback = function()
                game:GetService("CoreGui").Shaman.Enabled = not game:GetService("CoreGui").Shaman.Enabled
            end
        }
    )

    Section5:Toggle(
        {
            Text = "Auto Load Config",
            Default = getgenv().AutoLoadConfigEnabled,
            Flag = "AutoLoadConfigEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        CheckConfig()
                        Notification(bool, "Auto Load Config")
                    end
                )
            end
        }
    )

    Section5:Toggle(
        {
            Text = "Auto Save Config",
            Default = getgenv().AutoSaveConfigEnabled,
            Flag = "AutoSaveConfigEnabled",
            Callback = function(bool)
                spawn(
                    function()
                        CheckConfig()
                        Notification(bool, "Auto Save Config")
                    end
                )
            end
        }
    )

    function ConfigNames()
        local fileTable = {}

        for i, v in pairs(listfiles("slowpihax\\Configs")) do
            local filename = string.match(v, "([^\\]+)%.[^%.]+$")

            if filename ~= "CheckConfig" then
                table.insert(fileTable, filename)
            end
        end
        return fileTable
    end

    getgenv().ConfigButtons =
        Section5:Dropdown(
        {
            Text = "Config",
            List = ConfigNames(),
            Flag = "Config",
            Callback = function(v)
                spawn(
                    function()
                        Notification("Info", "Config: " .. v .. "")
                    end
                )
                getgenv().ConfigName = v
                loadstring(getgenv().Config)
                CheckConfig()
            end
        }
    )

    Section5:Input(
        {
            Placeholder = "New Config",
            Flag = "NewConfig",
            Callback = function(NewConfigInput)
                local NewConfigName = NewConfigInput
                SaveConfig(tostring(NewConfigName))

                getgenv().ConfigButtons:Refresh({List = ConfigNames()})
                getgenv().DeleteConfigs:Refresh({List = ConfigNames()})
            end
        }
    )

    getgenv().DeleteConfigs =
        Section5:Dropdown(
        {
            Text = "Delete Configs",
            List = ConfigNames(),
            Callback = function(v)
                delfile("slowpihax\\Configs\\" .. tostring(v) .. ".Lua")
                task.wait(0.15)

                getgenv().ConfigButtons:Refresh({List = ConfigNames()})
                getgenv().DeleteConfigs:Refresh({List = ConfigNames()})
            end
        }
    )

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
                local NotificationBindable = Instance.new("BindableFunction")
                NotificationBindable.OnInvoke = callback

                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Teleport Failed",
                        Text = "Join The Game Manually",
                        Icon = "",
                        Duration = 5,
                        Callback = NotificationBindable
                    }
                )
            end
        }
    )

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
                local NotificationBindable = Instance.new("BindableFunction")
                NotificationBindable.OnInvoke = callback

                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Teleport Failed",
                        Text = "Join The Game Manually",
                        Icon = "",
                        Duration = 5,
                        Callback = NotificationBindable
                    }
                )
            end
        }
    )

    Section7:Button(
        {
            Text = "Scripted by slowpi#8954",
            Callback = function()
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Script By slowpi#8954", Description = "Scripted By slowpi#8954"},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "default"}
                )
            end
        }
    )

    Section7:Button(
        {
            Text = "UI by Unnamed Library",
            Callback = function()
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "UI Library by Rain-Design (GitHub)", Description = "Gui Made With Unnamed UI Library"},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "default"}
                )
            end
        }
    )
    
    getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = nil
    getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = nil
    getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = nil

    getgenv().scriptLoaded = true

    game.CoreGui:WaitForChild("Shaman").Enabled = true
end
