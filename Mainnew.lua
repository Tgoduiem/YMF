local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local MainScreenGui = Instance.new("ScreenGui")
local ButtonScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
MainScreenGui.Name = "MainScreenGui"
MainScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainScreenGui.Enabled = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.Size = UDim2.new(1, 0, 1, 0)
MainFrame.Draggable = true

ButtonScreenGui.Name = "ButtonScreenGui"
ButtonScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageButton.Parent = ButtonScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1, 0, 0, 10)
ImageButton.AnchorPoint = Vector2.new(0, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://17466928754"
ImageButton.Draggable = true

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)

    local scaleUpTween = TweenService:Create(ImageButton, TweenInfo.new(0.1), { Size = UDim2.new(0, 55, 0, 55) })
    local scaleDownTween = TweenService:Create(ImageButton, TweenInfo.new(0.1), { Size = UDim2.new(0, 50, 0, 50) })

    scaleUpTween:Play()
    scaleUpTween.Completed:Connect(function()
        scaleDownTween:Play()
    end)
end)

spawn(function()
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            v.Enabled = false
        end
    end
end)

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Unsupported Game | Quantum Hub")
end

function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                InfoFarm = "Bandit Lv. 0 - 10"
                CFrameQuest = CFrame.new(1059.37, 15.45, 1550.42, 0.94, 0, -0.34, 0, 1, 0, 0.34, 0, 0.94)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            else
                Mon = "Trainee"
                LevelQuest = 1
                NameQuest = "MarineQuest"
                NameMon = "Trainee"
                InfoFarm = "Trainee Lv. 0 - 10"
                CFrameQuest = CFrame.new(-2708, 25, 2103)
                CFrameMon = CFrame.new(-2708, 25, 2103)
            end
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            InfoFarm = "Monkey Lv. 10 - 15"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            if game:GetService("Workspace").Enemies:FindFirstChild("The Gorilla King") and MyLevel >= 20 then
                Mon = "The Gorilla King"
                LevelQuest = 3
                NameQuest = "JungleQuest"
                NameMon = "The Gorilla King"
                InfoFarm = "Gorilla King [Boss]"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            else
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                InfoFarm = "Gorilla Lv. 15 - 20"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            end
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55, 0.97, 0, -0.26, 0, 1, 0, 0.26, 0, 0.97)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Bobby") and MyLevel >= 55 then
                Mon = "Bobby"
                LevelQuest = 3
                NameQuest = "BuggyQuest1"
                NameMon = "Bobby"
                CFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55, 0.97, 0, -0.26, 0, 1, 0, 0.26, 0, 0.97)
                CFrameMon = CFrame.new(-1074.80, 22.08, 4487.10, 0.99, 0, -0.09, 0, 1, 0, 0.09, 0, 0.99)
            else
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55, 0.97, 0, -0.26, 0, 1, 0, 0.26, 0, 0.97)
                CFrameMon = CFrame.new(-1074.80, 22.08, 4487.10, 0.99, 0, -0.09, 0, 1, 0, 0.09, 0, 0.99)
            end
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.49, 5.14, 4392.43, 0.82, 0, -0.57, 0, 1, 0, 0.57, 0, 0.82)
            CFrameMon = CFrame.new(1053.80, 52.40, 4491.19, 0.45, 0, 0.89, 0, 1, 0, -0.89, 0, 0.45)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.49, 5.14, 4392.43, 0.82, 0, -0.57, 0, 1, 0, 0.57, 0, 0.82)
            CFrameMon = CFrame.new(1581.26, 1.60, 4304.55, 0.91, 0, -0.42, 0, 1, 0, 0.42, 0, 0.91)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74, 88.15, -1298.91, -0.34, 0, 0.94, 0, 1, 0, -0.94, 0, -0.34)
            CFrameMon = CFrame.new(1419.83, 119.62, -1411.56, -0.10, 0, -0.99, 0, 1, 0, 0.99, 0, -0.10)
        elseif MyLevel == 100 or MyLevel <= 119 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Yeti") and MyLevel >= 105 then
                Mon = "Yeti"
                LevelQuest = 3
                NameQuest = "SnowQuest"
                NameMon = "Yeti"
                CFrameQuest = CFrame.new(1389.74, 88.15, -1298.91, -0.34, 0, 0.94, 0, 1, 0, -0.94, 0, -0.34)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            else
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74, 88.15, -1298.91, -0.34, 0, 0.94, 0, 1, 0, -0.94, 0, -0.34)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            end
        elseif MyLevel == 120 or MyLevel <= 149 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Vice Admiral") and MyLevel >= 130 then
                Mon = "Vice Admiral"
                LevelQuest = 2
                NameQuest = "MarineQuest2"
                NameMon = "Vice Admiral"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            else
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            end
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53, 716.37, -2619.44, 0.87, 0, 0.50, 0, 1, 0, -0.50, 0, 0.87)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53, 716.37, -2619.44, 0.87, 0, 0.50, 0, 1, 0, -0.50, 0, 0.87)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93, 1.66, 475.12, -0.09, 0, -0.99, 0, 1, 0, 0.99, 0, -0.09)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Swan") and MyLevel >= 240 then
                Mon = "Swan"
                LevelQuest = 3
                NameQuest = "ImpelQuest"
                NameMon = "Swan"
                CFrameQuest = CFrame.new(5191.32, 3.54, 691.62, 0.99, 0, 0.17, 0, 1, 0, -0.17, 0, 0.99)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") and MyLevel >= 230 then
                Mon = "Chief Warden"
                LevelQuest = 2
                NameQuest = "ImpelQuest"
                NameMon = "Chief Warden"
                CFrameQuest = CFrame.new(5191.32, 3.54, 691.62, 0.99, 0, 0.17, 0, 1, 0, -0.17, 0, 0.99)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif game:GetService("Workspace").Enemies:FindFirstChild("Warden") and MyLevel >= 220 then
                Mon = "Warden"
                LevelQuest = 1
                NameQuest = "ImpelQuest"
                NameMon = "Warden"
                CFrameQuest = CFrame.new(5191.32, 3.54, 691.62, 0.99, 0, 0.17, 0, 1, 0, -0.17, 0, 0.99)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            else
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93, 1.66, 475.12, -0.09, 0, -0.99, 0, 1, 0, 0.99, 0, -0.09)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            end
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.05, 6.35, -2986.48, -0.52, 0, -0.86, 0, 1, 0, 0.86, 0, -0.52)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.05, 6.35, -2986.48, -0.52, 0, -0.86, 0, 1, 0, 0.86, 0, -0.52)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29, -0.50, 0, 0.87, 0, 1, 0, -0.87, 0, -0.50)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Magma Admiral") and MyLevel >= 350 then
                Mon = "Magma Admiral"
                LevelQuest = 3
                NameQuest = "MagmaQuest"
                NameMon = "Magma Admiral"
                CFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29, -0.50, 0, 0.87, 0, 1, 0, -0.87, 0, -0.50)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            else
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29, -0.50, 0, 0.87, 0, 1, 0, -0.87, 0, -0.50)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            end
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord") and MyLevel >= 425 then
                Mon = "Fishman Lord"
                LevelQuest = 3
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Lord"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            else
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.89, 843.87, -1949.97, 0.99, 0, -0.09, 0, 1, 0, 0.09, 0, 0.99)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Wysper") and MyLevel >= 500 then
                Mon = "Wysper"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Wysper"
                CFrameQuest = CFrame.new(-7859.10, 5544.19, -381.48, -0.42, 0, 0.91, 0, 1, 0, -0.91, 0, -0.42)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            else
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.10, 5544.19, -381.48, -0.42, 0, 0.91, 0, 1, 0, -0.91, 0, -0.42)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") and MyLevel >= 575 then
                Mon = "Thunder God"
                LevelQuest = 3
                NameQuest = "SkyExp2Quest"
                NameMon = "Thunder God"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            else
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            end
        elseif MyLevel >= 625 and MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0,
                -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg") and MyLevel >= 675 then
                Mon = "Cyborg"
                LevelQuest = 3
                NameQuest = "FountainQuest"
                NameMon = "Cyborg"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0,
                    -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            else
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0,
                    -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0,
                0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Diamond") and MyLevel >= 750 then
                Mon = "Diamond"
                LevelQuest = 3
                NameQuest = "Area1Quest"
                NameMon = "Diamond"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0,
                    0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            else
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0,
                    0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            end
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376,
                0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") and MyLevel >= 850 then
                Mon = "Jeremy"
                NameQuest = "Area2Quest"
                LevelQuest = 3
                NameMon = "Jeremy"
                CFrameQuest = CFrame.new(632.70, 73.11, 918.67, -0.03, 0, -1, 0, 1, 0, 1, 0, -0.03)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            else
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.70, 73.11, 918.67, -0.03, 0, -1, 0, 1, 0, 1, 0, -0.03)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            end
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0,
                -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Fajita") and MyLevel >= 925 then
                Mon = "Fajita"
                LevelQuest = 3
                NameQuest = "MarineQuest3"
                NameMon = "Fajita"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0,
                    -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            else
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0,
                    -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            end
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0,
                0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0,
                0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0,
                -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0,
                -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0,
                0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0,
                0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0,
                0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0,
                0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0,
                0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0,
                0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0,
                0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0,
                0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0,
                0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0,
                -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0,
                -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0,
                0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0,
                0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0,
                -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0,
                -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32, 37.80, -12028.73, 0.96, 0, 0.29, 0, 1, 0, -0.29, 0, 0.96)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32, 37.80, -12028.73, 0.96, 0, 0.29, 0, 1, 0, -0.29, 0, 0.96)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.92, 37.80, -12842.54, -0.97, 0, 0.25, 0, 1, 0, -0.25, 0, -0.97)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.92, 37.80, -12842.54, -0.97, 0, 0.25, 0, 1, 0, -0.25, 0, -0.97)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
        elseif MyLevel == 2525 or MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16407.46, 235.78, 1167.15, 0.89, 0, 0.46, 0, 1, 0, -0.46, 0, 0.89)
        end
    end
end

function MaterialMon()
    if World1 then
        if SelectMaterial == "Angel Wings" then
            MMon = { "God's Guard", "Shanda", "Royal Squad", "Royal Soldier", "Wysper", "Thunder God" }
            MPos = CFrame.new(-4698, 845, -1912)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4607.82275, 872.54248, -1667.55688)).Magnitude >= 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Brute", "Pirate" }
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            MMon = { "Military Soldier", "Military Spy", "Magma Admiral" }
            MPos = CFrame.new(-5815, 84, 8820)
            SP = "Default"
        elseif SelectMaterial == "Fish Tail" then
            MMon = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" }
            MPos = CFrame.new(61123, 19, 1569)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
            end
        end
    elseif World2 then
        if SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Marine Captain" }
            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            MMon = { "Magma Ninja", "Lava Pirate" }
            MPos = CFrame.new(-5428, 78, -5959)
            SP = "Default"
        elseif SelectMaterial == "Ectoplasm" then
            MMon = { "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer" }
            MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 18000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif SelectMaterial == "Mystic Droplet" then
            MMon = { "Water Fighter", "Sea Soldier" }
            MPos = CFrame.new(-3385, 239, -10542)
            SP = "Default"
        elseif SelectMaterial == "Radioactive Material" then
            MMon = { "Factory Staff" }
            MPos = CFrame.new(295, 73, -56)
            SP = "Default"
        elseif SelectMaterial == "Vampire Fang" then
            MMon = { "Vampire" }
            MPos = CFrame.new(-6033, 7, -1317)
            SP = "Default"
        end
    elseif World3 then
        if SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Jungle Pirate", "Forest Pirate" }
            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
            SP = "Default"
        elseif SelectMaterial == "Fish Tail" then
            MMon = { "Fishman Raider", "Fishman Captain" }
            MPos = CFrame.new(-10993, 332, -8940)
            SP = "Default"
        elseif SelectMaterial == "Conjured Cocoa" then
            MMon = { "Chocolate Bar Battler", "Cocoa Warrior" }
            MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
            SP = "Default"
        elseif SelectMaterial == "Dragon Scale" then
            MMon = { "Dragon Crew Warrior", "Dragon Crew Archer" }
            MPos = CFrame.new(6594, 383, 139)
            SP = "Default"
        elseif SelectMaterial == "Gunpowder" then
            MMon = { "Pistol Billionaire" }
            MPos = CFrame.new(-469, 74, 5904)
            SP = "Default"
        elseif SelectMaterial == "Mini Tusk" then
            MMon = { "Mythological Pirate" }
            MPos = CFrame.new(-13545, 470, -6917)
            SP = "Default"
        end
    end
end

function Click()
    game:GetService 'VirtualUser':CaptureController()
    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(p)
    pcall(function()
        if (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            repeat
                wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                wait(.05)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
            until (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        end
    end)
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

TweenSpeed = 300
local currentTween

function WaitHRP(q0)
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9)
end

function StopTween(isEnabled)
    if not isEnabled and currentTween then
        currentTween:Cancel()
        currentTween = nil
    end
end

function topos(Pos)
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character:FindFirstChild("HumanoidRootPart")

    if character.Humanoid.Health > 0 and hrp then
        local Distance = (Pos.Position - hrp.Position).Magnitude

        if not Pos then
            return
        end
        if not character:FindFirstChild("Block") then
            local Block = Instance.new("Part", character)
            Block.Size = Vector3.new(10, 1, 10)
            Block.Name = "Block"
            Block.Anchored = true
            Block.Transparency = 1
            Block.CanCollide = false
            Block.CFrame = WaitHRP(player).CFrame
            Block:GetPropertyChangedSignal("CFrame"):Connect(function()
                task.wait()
                WaitHRP(player).CFrame = Block.CFrame
            end)
        end

        currentTween = game:GetService("TweenService"):Create(character.Block,
            TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear), { CFrame = Pos })
        currentTween:Play()

        if Distance <= 100 then
            currentTween:Cancel()
            character.Block.CFrame = Pos
        end

        if _G.StopTween == true then
            currentTween:Cancel()
        end
    end
end

function TP1(Pos)
    topos(Pos)
end

function fastpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 1000
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function slowpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 150
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

local stopboat = {}
function TPB(pos, boat)
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((boat.CFrame.Position - pos.Position).Magnitude / BoatSpeed, Enum.EasingStyle.Linear)
    tween = tween_s:Create(boat, info, { CFrame = pos })

    if (boat.CFrame.Position - pos.Position).Magnitude <= 25 then
        tween:Cancel()
    else
        tween:Play()
    end


    function stopboat:Stop()
        tween:Cancel()
    end

    return stopboat
end

Type = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)

spawn(function()
    while wait(.1) do
        Type = 1
    end
end)

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade()
    local p13 = CbFw2.activeController
    if not p13 or not p13.blades then return end
    local ret = p13.blades[1]
    while ret and ret.Parent ~= plr.Character do
        ret = ret.Parent
    end
    return ret
end

function AttackNoCD()
    if not _G.AutoRaid then
        local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
        CameraShaker:Stop()
        local AC = CbFw2.activeController
        if not AC or not AC.attack then return end
        local bladeHits = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            { plr.Character.HumanoidRootPart },
            60
        )
        local filteredHits, hash = {}, {}
        for _, v in pairs(bladeHits) do
            if v.Parent and v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                local distance = plr:DistanceFromCharacter(v.Parent.HumanoidRootPart.Position)
                if distance < 50 then
                    table.insert(filteredHits, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
        end
        bladeHits = filteredHits
        if #bladeHits > 0 then
            local u8, u9, u7, u10 = debug.getupvalue(AC.attack, 5), debug.getupvalue(AC.attack, 6),
                debug.getupvalue(AC.attack, 4), debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                    AC.animator.anims.basic[1]:Play(0.01, 0.01, _G.FastAttackDelay)
                    local blade = GetCurrentBlade()
                    if blade then
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",
                            tostring(blade))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215),
                            u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladeHits, 1, "")
                    end
                end
            end)
        end
    end
end

function getAllBladeHitsPlayers(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for _, v in ipairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= Client.Name and Human and Human.RootPart and Human.Health > 0 then
            local distance = Client:DistanceFromCharacter(Human.RootPart.Position)
            if distance < Sizes + 5 then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end

function getAllBladeHits(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end

function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
            pcall(function()
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser':Button1Down(Vector2.new(0, 1, 0, 1))
            end)
        end
    end)
end)

function StopTween(target)
    local plyr = game:GetService("Players").LocalPlayer
    local char = plyr.Character

    if not target then
        _G.StopTween = true
        wait()
        topos(char.HumanoidRootPart.CFrame)
        wait()
        if char.HumanoidRootPart:FindFirstChild("BodyClip") then
            char.HumanoidRootPart.BodyClip:Destroy()
        end
        if char:FindFirstChild("Block") then
            char.Block:Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end

    if char:FindFirstChild("Highlight") then
        char.Highlight:Destroy()
    end
end

function LockTween()
    if _G.LockTween then
        return
    end
    _G.LockTween = true
    wait()
    local plyr = game.Players.LocalPlayer
    local char = plyr.Character
    if char and char:IsDescendantOf(game.Workspace) then
        local hrp = char:WaitForChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = hrp.CFrame
        end
    end
    wait()
    if char:FindFirstChild("BodyClip") then
        char.BodyClip:Destroy()
    end
    if char:FindFirstChild("PartTele") then
        char.Block:Destroy()
    end
    _G.LockTween = false
end

spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character.Humanoid.Health <= 0 or not hrp then
                if character:FindFirstChild("Block") then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if character:FindFirstChild("Block") then
                if (hrp.Position - character.Block.Position).Magnitude >= 100 then
                    character.Block:Destroy()
                end
            end
        end)
    end
end)

function enableNoclip()
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        local Noclip = Instance.new("BodyVelocity")
        Noclip.Name = "BodyClip"
        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
        Noclip.Velocity = Vector3.new(0, 0, 0)
    end
end

function disableNoclip()
    local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
    if bodyClip then
        bodyClip:Destroy()
    end
end

function disableCollisions()
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false
        end
    end
end

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarm or
                _G.Auto_Dungeon or
                _G.AutoFarmBoss or
                _G.AutoFarmBossHallow or
                _G.AutoFarmPrince or
                _G.SailBoat or
                _G.AutoKillShark or
                _G.AutoKillTerrorshark or
                _G.Auto_Bone or
                _G.AutoMaterial or
                _G.Auto_Saber or
                _G.Autopole or
                _G.Autosaw or
                _G.Autowarden or
                _G.Auto_Dragon_Trident or
                _G.AutoFarmBossHallow or
                _G.AutoBuddySword or
                _G.AutoCarvender or
                _G.AutoSecSea or
                _G.AutoObservation or
                _G.AutoThirdSea or
                _G.AutoKillBoss or
                _G.AutoFarmChest or
                _G.AutoKillAllBoss or
                _G.AutoDarkCoat or
                _G.AutoBartilo or
                _G.AutoFactory or
                _G.AutoPirateRaid or
                _G.AutoChestSafe
            then
                enableNoclip()
                disableCollisions()
            else
                disableNoclip()
            end
        end
    end)
end)


spawn(function()
    pcall(function()
        while wait() do
            for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

local PointStats, Melee, Defense, Sword, Gun, DemonFruit = 1

local function AutoStats()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
    local function AddStats(Stats)
        local plyr = game.Players.LocalPlayer
        if plyr and plyr.Data and plyr.Data.Points and plyr.Data.Points.Value >= 1 then
            local Points = math.clamp(PointStats, 1, plyr.Data.Points.Value)
            Remote:InvokeServer("AddPoint", Stats, Points)
        end
    end
    while _G.AutoStats do
        task.wait()
        if Melee then
            AddStats("Melee")
        end
        if Defense then
            AddStats("Defense")
        end
        if Sword then
            AddStats("Sword")
        end
        if Gun then
            AddStats("Gun")
        end
        if DemonFruit then
            AddStats("Demon Fruit")
        end
    end
end

function setPrimaryPartCFrame(enemies, cframe)
    if enemies and enemies.PrimaryPart then
        pcall(function()
            enemies:SetPrimaryPartCFrame(cframe)
        end)
    end
end

function handleEnemy(v, pos, size)
    local hrp = v:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.Size = size
        hrp.CanCollide = false
        local head = v:FindFirstChild("Head")
        if head then
            head.CanCollide = false
        end
        local humanoid = v:FindFirstChild("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChild("Animator")
            if animator then
                animator:Destroy()
            end
            humanoid:ChangeState(14)
        end
        pcall(function()
            hrp.CFrame = pos
        end)
    end
end

function bringEnemies()
    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == MonFarm and not string.find(v.Name, "Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
            handleEnemy(v, PosMon, Vector3.new(1, 1, 1))
        end
    end
end

function autoFarmEnemies()
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if _G.AutoFarm and StartBring and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            local hrp = v:FindFirstChild("HumanoidRootPart")
            if hrp then
                local distance = (hrp.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
                    .Magnitude
                if distance <= 220 or distance <= _G.BringMode then
                    handleEnemy(v, PosMon, Vector3.new(70, 70, 70))
                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end
    end
end

function bringMob()
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    local targetPos = (BringMobChoosen and BringMobChoosen.HumanoidRootPart) and BringMobChoosen.HumanoidRootPart.CFrame or
        LockCFrame
    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            local hrp = v.HumanoidRootPart
            if (hrp.Position - targetPos.Position).Magnitude < _G.BringMode and (hrp.Position - targetPos.Position).Magnitude > 3 then
                handleEnemy(v, targetPos, Vector3.new(1, 1, 1))
            end
        end
    end
end

function checkMobsInDistance(Mon, distance)
    local inDistance = false
    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local function checkEnemy(v)
        if table.find(Mon, v.Name) and v:FindFirstChild("HumanoidRootPart") then
            local enemyPosition = v.HumanoidRootPart.Position
            if (enemyPosition - playerPosition).Magnitude <= distance then
                inDistance = true
                return true
            end
        end
        return false
    end
    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if checkEnemy(v) then break end
    end
    for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if checkEnemy(v) then break end
    end
    for _, v in pairs(getnilinstances()) do
        if checkEnemy(v) then break end
    end
    return inDistance
end

task.spawn(function()
    while task.wait() do
        if _G.BringMonster then
            pcall(bringEnemies)
        end
    end
end)
task.spawn(function()
    while task.wait() do
        if _G.BringMonster then
            CheckQuest()
            pcall(autoFarmEnemies)
        end
    end
end)
task.spawn(function()
    while wait() do
        pcall(function()
            for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if _G.BringMode and bringmob and v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    local hrp = v:FindFirstChild("HumanoidRootPart")
                    if hrp and (hrp.Position - FarmPos.Position).Magnitude <= _G.BringMode then
                        handleEnemy(v, FarmPos, Vector3.new(1, 1, 1))
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while true do
        wait()
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end)
task.spawn(function()
    while task.wait() do
        if QuantumMagnet and _G.BringMonster then
            for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name, "Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                    handleEnemy(v, PosTum, Vector3.new(70, 70, 70))
                end
            end
        end
    end
end)
task.spawn(function()
    while task.wait() do
        if bringmob then
            pcall(bringMob)
        end
    end
end)

function NormalAttack()
    if not _G.NormalAttack then
        local a3 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
        local a4 = debug.getupvalues(a3)[2]
        local a5 = require(game.ReplicatedStorage.Util.CameraShaker)
        a5:Stop()
        a4.activeController.attacking = false
        a4.activeController.timeToNextAttack = 0
        a4.activeController.hitboxMagnitude = 180
        game:GetService "VirtualUser":CaptureController()
        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
    end
end

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Quantum Hub",
    SubTitle = "by Prime Andy",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Sub = Window:AddTab({ Title = "Sub Farm", Icon = "" }),
    SeaE = Window:AddTab({ Title = "Sea Event", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "" }),
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    Raid = Window:AddTab({ Title = "Raids", Icon = "" }),
    Travel = Window:AddTab({ Title = "Travel", Icon = "" }),
    Fun = Window:AddTab({ Title = "Fun-Visual", Icon = "" }),
    Fruit = Window:AddTab({ Title = "Fruit", Icon = "" }),
    LIBSettings = Window:AddTab({ Title = "Library Settings", Icon = "" })
}

local Options = Fluent.Options

do
    local CurrentMon = ""
    local Status = "Waiting..."

    MonsterStatus = Tabs.Main:AddParagraph({
        Title = "Status Farm Level",
        Content = "[Monster] : None | [Status] : " .. Status
    })

    spawn(function()
        while task.wait() do
            if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                MonsterStatus:SetDesc("[Info] : Waiting for quest...")
                CurrentMon = ""
                Status = "Waiting..."
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                pcall(function()
                    CheckQuest()
                    if CurrentMon ~= Mon then
                        CurrentMon = Mon
                        MonsterStatus:SetDesc("[Monster] : " .. CurrentMon .. " | [Status] : " .. Status)
                    end
                end)
            end
        end
    end)

    SelectWeapon = Tabs.Main:AddDropdown("SelectWeapon", {
        Title = "Select Weapon",
        Values = { "Melee", "Sword" },
        Multi = false,
        Default = 1,
    })

    SelectWeapon:SetValue("Melee")

    SelectWeapon:OnChanged(function(Value)
        _G.SelectWeapon = Value
    end)

    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.SelectWeapon == "Melee" then
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Sword" then
                    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)

    SelectFarmMode = Tabs.Main:AddDropdown("SelectFarmMode", {
        Title = "Select Farm Mode",
        Values = { "Normal", "No Quest", "Nearest" },
        Multi = false,
        Default = 1,
    })

    SelectFarmMode:SetValue("Normal")

    SelectFarmMode:OnChanged(function(Value)
        FarmMode = Value
    end)

    AutoFarm = Tabs.Main:AddToggle("AutoFarmFlag", { Title = "Auto Farm", Default = false })
    AutoFarm:OnChanged(function(Value)
        _G.AutoFarm = Value
        StopTween(_G.AutoFarm)
        StopTween()
    end)
    Options.AutoFarmFlag:SetValue(false)

    AutoAcceptQuest = Tabs.Main:AddToggle("AutoAcceptQuestFlag", { Title = "Accept Quest", Default = false })
    AutoAcceptQuest:OnChanged(function(Value)
        _G.AcceptQuests = Value
    end)
    Options.AutoAcceptQuestFlag:SetValue(false)

    AutoBone = Tabs.Main:AddToggle("AutoBoneFlag", { Title = "Farm Bones", Default = false })
    AutoBone:OnChanged(function(Value)
        _G.Auto_Bone = Value
        if _G.Auto_Bone == false then
            LockTween()
            StopTween(_G.Auto_Bone)
        end
    end)
    Options.AutoBoneFlag:SetValue(false)

    AutoCakePrince = Tabs.Main:AddToggle("AutoCakePrinceFlag", { Title = "Farm Cake Prince", Default = false })
    AutoCakePrince:OnChanged(function(Value)
        _G.AutoFarmPrince = Value
        StopTween(_G.AutoFarmPrince)
    end)
    Options.AutoCakePrinceFlag:SetValue(false)

    if World1 then
        MaterialList = {
            "Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail"
        }
    elseif World2 then
        MaterialList = {
            "Leather + Scrap Metal", "Radioactive Material", "Ectoplasm", "Mystic Droplet", "Magma Ore", "Vampire Fang"
        }
    elseif World3 then
        MaterialList = {
            "Leather + Scrap Metal", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Fish Tail",
            "Mini Tusk"
        }
    end

    MaterialListMon = Tabs.Main:AddDropdown("MaterialListMon", {
        Title = "Select Material",
        Values = MaterialList,
        Multi = false,
        Default = 1,
    })
    MaterialListMon:SetValue("Leather + Scrap Metal")
    MaterialListMon:OnChanged(function(Value)
        SelectMaterial = Value
    end)
    AutoMaterial = Tabs.Main:AddToggle("AutoMaterialFlag", { Title = "Farm Material", Default = false })
    AutoMaterial:OnChanged(function(Value)
        _G.AutoMaterial = Value
        StopTween(_G.AutoMaterial)
    end)
    Options.AutoMaterialFlag:SetValue(false)

    ChestInfo = Tabs.Main:AddParagraph({
        Title = "Chest Info\n",
        Content = ""
    })

    spawn(function()
        while wait(0.1) do
            local count10 = 0
            local nearestDistance = math.huge
            for i, v in pairs(game.workspace:GetChildren()) do
                if string.find(v.Name, "Chest") and v:IsA("Part") then
                    count10 = count10 + 1
                    local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                        .Magnitude
                    if distance < nearestDistance then
                        nearestDistance = distance
                    end
                end
            end
            ChestInfo:SetDesc("Chest: " ..
                count10 .. " Left" .. "\nDistance: " .. math.floor(nearestDistance) .. " Studs")
        end
    end)


    AutoChestSafe = Tabs.Main:AddToggle("AutoChestSafeFlag", { Title = "Chest Farm", Default = false })
    AutoChestSafe:OnChanged(function(Value)
        _G.AutoChestSafe = Value
        StopTween(_G.AutoChestSafe)
    end)
    Options.AutoChestSafeFlag:SetValue(false)

    --Sub Farm

    AutoSaberQuest = Tabs.Sub:AddToggle("AutoSaberQuestFlag", { Title = "Complete Saber Quest", Default = false })
    AutoSaberQuest:OnChanged(function(Value)
        _G.Auto_Saber = Value
        StopTween(_G.Auto_Saber)
    end)
    Options.AutoSaberQuestFlag:SetValue(false)

    AutoGetHallowScythe = Tabs.Sub:AddToggle("AutoGetHallowScytheFlag",
        { Title = "Get Hallow Scythe (Soul Reaper)", Default = false })
    AutoGetHallowScythe:OnChanged(function(Value)
        _G.AutoFarmBossHallow = Value
        StopTween(_G.AutoFarmBossHallow)
    end)
    Options.AutoGetHallowScytheFlag:SetValue(false)

    AutoDarkCoat = Tabs.Sub:AddToggle("AutoDarkCoatFlag",
        { Title = "Get Dark Coat (DarkBeard)", Description = "+ Dark Fragments", Default = false })
    AutoDarkCoat:OnChanged(function(Value)
        _G.AutoDarkCoat = Value
        StopTween(_G.AutoDarkCoat)
    end)
    Options.AutoDarkCoatFlag:SetValue(false)

    AutoCompleteBartiloQuest = Tabs.Sub:AddToggle("AutoCompleteBartiloQuestFlag",
        { Title = "Complete Bartilo Quest", Description = "", Default = false })
    AutoCompleteBartiloQuest:OnChanged(function(Value)
        _G.AutoBartilo = Value
        StopTween(_G.AutoBartilo)
    end)
    Options.AutoCompleteBartiloQuestFlag:SetValue(false)

    AutoFatoryRaid = Tabs.Sub:AddToggle("AutoFatoryRaidFlag",
        { Title = "Auto Fatory Raid", Description = "", Default = false })
    AutoFatoryRaid:OnChanged(function(Value)
        _G.AutoFactory = Value
        StopTween(_G.AutoFactory)
    end)
    Options.AutoFatoryRaidFlag:SetValue(false)

    AutoPirateRaid = Tabs.Sub:AddToggle("AutoPirateRaidFlag",
        { Title = "Auto Pirate Raid", Description = "", Default = false })
    AutoPirateRaid:OnChanged(function(Value)
        _G.AutoPirateRaid = Value
        StopTween(_G.AutoPirateRaid)
    end)
    Options.AutoPirateRaidFlag:SetValue(false)

    ---settings

    TweeningSpeed = Tabs.Settings:AddDropdown("TweeningSpeed", {
        Title = "Tweening Speed",
        Values = { "100", "150", "200", "250", "300" },
        Multi = false,
        Default = 1,
    })

    TweeningSpeed:SetValue("250")

    TweeningSpeed:OnChanged(function(Value)
        TweenSpeed = Value
    end)

    local ListSeaZone = {
        "Zone (1)",
        "Zone (2)",
        "Zone (3)",
        "Zone (4)",
        "Zone (5)",
        "Zone (6)",
        "Infinite Zone"
    }

    ZoneListDrop = Tabs.SeaE:AddDropdown("ZoneListDrop", {
        Title = "Select Zone",
        Values = ListSeaZone,
        Multi = false,
        Default = 1,
    })
    ZoneListDrop:SetValue("Infinite Zone")
    ZoneListDrop:OnChanged(function(Value)
        _G.SelectedZone = Value
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone == "Zone (1)" then
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736,
                        0.99274826, -0.0574118942, 0.998350561, -2.36509201e-10, -0.991110802, -0.0569955558, 0.120211802)
                elseif _G.SelectedZone == "Zone (2)" then
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358,
                        0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589,
                        0.308084518)
                elseif _G.SelectedZone == "Zone (3)" then
                    CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791,
                        0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                elseif _G.SelectedZone == "Zone (4)" then
                    CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219,
                        0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                elseif _G.SelectedZone == "Zone (5)" then
                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295,
                        0.981971979, -0.0372481011, 0.999306023, -1.39882339e-09, -0.981290519, -0.0365765914,
                        -0.189026669)
                elseif _G.SelectedZone == "Zone (6)" then
                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758,
                        0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                elseif _G.SelectedZone == "Infinite Zone" then
                    CFrameSelectedZone = CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -1.54416148e-06,
                        0.996583343, -1.8696026e-05, 1, -3.91858095e-13, -0.996583343, -1.86321486e-05, -0.0825930536)
                end
            end
        end)
    end)


    local ListSeaBoat
    if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
        ListSeaBoat = {
            "PirateGrandBrigade",
            "PirateBrigade",
            "PirateSloop",
            "BeastHunter"
        }
    else
        ListSeaBoat = {
            "Guardian",
            "MarineGrandBrigade",
            "MarineBrigade",
            "MarineSloop"
        }
    end


    BoatListDrop = Tabs.SeaE:AddDropdown("BoatListDrop", {
        Title = "Select Boat",
        Values = ListSeaBoat,
        Multi = false,
        Default = 1,
    })
    BoatListDrop:SetValue("Infinite Zone")
    BoatListDrop:OnChanged(function(Value)
        _G.SelectedBoat = Value
    end)



    PlayerFarmDistance = Tabs.Settings:AddDropdown("PlayerFarmDistance", {
        Title = "Player Farm Distance",
        Values = { "0", "10", "20", "30" },
        Multi = false,
        Default = 1,
    })

    PlayerFarmDistance:SetValue("20")

    PlayerFarmDistance:OnChanged(function(Value)
        PosY = Value
    end)

    FastAttackDelay = Tabs.Settings:AddDropdown("FastAttackDelay", {
        Title = "Fast Attack Delay",
        Values = { "0.1", "0.12", "0.17", "0.175", "0.18", "0.185" },
        Multi = false,
        Default = 1,
    })

    FastAttackDelay:SetValue("0.12")

    FastAttackDelay:OnChanged(function(Value)
        _G.FastAttackDelay = Value
    end)

    spawn(function()
        while wait(0.1) do
            if _G.FastAttackDelay then
                pcall(function()
                    _G.FastAttackDelay = tonumber(_G.FastAttackDelay)
                end)
            end
        end
    end)

    FastAttack = Tabs.Settings:AddToggle("FastAttackFlag", { Title = "Fast Attack", Default = true })
    FastAttack:OnChanged(function(Value)
        _G.FastAttack = Value
    end)
    Options.FastAttackFlag:SetValue(true)
    spawn(function()
        while wait(0.1) do
            if _G.FastAttack then
                pcall(function()
                    repeat
                        task.wait(_G.FastAttackDelay)
                        AttackNoCD()
                    until not _G.FastAttack
                end)
            end
        end
    end)

    BringMobRadius = Tabs.Settings:AddDropdown("BringMobRadius", {
        Title = "Bring Mob Radius",
        Values = { "Low", "Normal", "High" },
        Multi = false,
        Default = 1,
    })
    BringMobRadius:SetValue("Normal")
    BringMobRadius:OnChanged(function(Value)
        _G.BringMode = Value
    end)

    spawn(function()
        while wait(.1) do
            if _G.BringMode then
                pcall(function()
                    if _G.BringMode == "Low" then
                        _G.BringMode = 100
                    elseif _G.BringMode == "Normal" then
                        _G.BringMode = 350
                    elseif _G.BringMode == "High" then
                        _G.BringMode = 500
                    end
                end)
            end
        end
    end)

    BringMobs = Tabs.Settings:AddToggle("BringMobsFlag", { Title = "Bring Mobs", Default = true })
    BringMobs:OnChanged(function(Value)
        _G.BringMonster = Value
    end)
    Options.BringMobsFlag:SetValue(true)


    local plr = game.Players.LocalPlayer
    if plr and plr.Data and plr.Data.Points and plr.Data.Stats then
        local CheckStats = Tabs.Player:AddParagraph({
            Title = "" .. plr.DisplayName .. "'s Stats",
            Content = ""
        })

        function getStats()
            if not plr or not plr.Data or not plr.Data.Stats then return end
            pcall(function()
                local stats = plr.Data.Stats
                local melee = stats.Melee and stats.Melee.Level and stats.Melee.Level.Value or "W.I.P"
                local defense = stats.Defense and stats.Defense.Level and stats.Defense.Level.Value or "W.I.P"
                local sword = stats.Sword and stats.Sword.Level and stats.Sword.Level.Value or "W.I.P"
                local gun = stats.Gun and stats.Gun.Level and stats.Gun.Level.Value or "W.I.P"
                local fruit = stats["Demon Fruit"] and stats["Demon Fruit"].Level and stats["Demon Fruit"].Level.Value or
                    "W.I.P"

                CheckStats:SetDesc(
                    " Melee : " .. melee ..
                    "\n Defense : " .. defense ..
                    "\n Sword : " .. sword ..
                    "\n Gun : " .. gun ..
                    "\n Fruit : " .. fruit ..
                    "\n"
                )
            end)
        end

        spawn(function()
            while true do
                getStats()
                wait(0.1)
            end
        end)
    end

    PointSlideStats = Tabs.Player:AddSlider("PointStats", {
        Title = "Points",
        Description = "",
        Default = 1,
        Min = 0,
        Max = 2400,
        Rounding = 0,
        Callback = function(Value)
            PointStats = Value
        end
    })
    PointSlideStats:SetValue(1)


    AddStatMelee = Tabs.Player:AddToggle("AddStatMeleeFlag", { Title = "Add Stat to Melee", Default = false })
    AddStatMelee:OnChanged(function(Value)
        Melee = Value
    end)
    Options.AddStatMeleeFlag:SetValue(false)

    AddStatDefense = Tabs.Player:AddToggle("AddStatDefenseFlag", { Title = "Add Stat to Defense", Default = false })
    AddStatDefense:OnChanged(function(Value)
        Defense = Value
    end)
    Options.AddStatDefenseFlag:SetValue(false)

    AddStatSword = Tabs.Player:AddToggle("AddStatSwordFlag", { Title = "Add Stat to Sword", Default = false })
    AddStatSword:OnChanged(function(Value)
        Sword = Value
    end)
    Options.AddStatSwordFlag:SetValue(false)

    AddStatGun = Tabs.Player:AddToggle("AddStatGunFlag", { Title = "Add Stat to Gun", Default = false })
    AddStatGun:OnChanged(function(Value)
        Gun = Value
    end)
    Options.AddStatGunFlag:SetValue(false)

    AddStatDemonFruit = Tabs.Player:AddToggle("AddStatDemonFruitFlag", { Title = "Add Stat to Fruit", Default = false })
    AddStatDemonFruit:OnChanged(function(Value)
        DemonFruit = Value
    end)
    Options.AddStatDemonFruitFlag:SetValue(false)


    StartAddingStats = Tabs.Player:AddToggle("StartAddingStatsFlag", { Title = "Start adding stats", Default = false })
    StartAddingStats:OnChanged(function(Value)
        _G.AutoStats = Value
        if Value then
            AutoStats()
        end
    end)
    Options.StartAddingStatsFlag:SetValue(false)

    ---Raids

    RaidInfo = Tabs.Raid:AddParagraph({
        Title = "Raid Info",
        Content = ""
    })

    function getRaidInfo()
        local checkTime = "Time : Waiting to start a raid"
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
            checkTime = game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text
        end

        local checkIsland = "Island : No Island Found"
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
            checkIsland = "Island : 5"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
            checkIsland = "Island : 4"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
            checkIsland = "Island : 3"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
            checkIsland = "Island : 2"
        elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
            checkIsland = "Island : 1"
        end

        RaidInfo:SetDesc("\nRaid Chip : " .. _G.SelectChip .. "\n" .. checkTime .. "\n" .. checkIsland)
    end

    spawn(function()
        pcall(function()
            while wait() do
                getRaidInfo()
            end
        end)
    end)

    _G.SelectChip = selectraids or ""
    Raidslist = {}
    RaidsModule = require(game.ReplicatedStorage.Raids)
    for i, v in pairs(RaidsModule.raids) do
        table.insert(Raidslist, v)
    end
    for i, v in pairs(RaidsModule.advancedRaids) do
        table.insert(Raidslist, v)
    end

    RaidChipList = Tabs.Raid:AddDropdown("RaidChipList", {
        Title = "Raid Chips",
        Values = Raidslist,
        Multi = false,
        Default = 1,
    })
    RaidChipList:SetValue(1)
    RaidChipList:OnChanged(function(Value)
        _G.SelectChip = Value
    end)

    AutoFinishRaid = Tabs.Raid:AddToggle("AutoFinishRaidFlag", { Title = "Auto Finish Raid", Default = false })
    AutoFinishRaid:OnChanged(function(Value)
        _G.Auto_StartRaid = Value
        _G.Kill_Aura = Value
        _G.AutoBuyChip = Value
        _G.Auto_Dungeon = Value
        _G.Awaken = Value
        StopTween(_G.Auto_Dungeon)
    end)
    Options.AutoFinishRaidFlag:SetValue(false)

    UnstoreFruitPrice = Tabs.Raid:AddSlider("UnstoreFruitPriceFlag", {
        Title = "Unstore low price Fruit",
        Description = "",
        Default = 0,
        Min = 5000,
        Max = 1000000,
        Rounding = 0,
        Callback = function(Value)
            _G.UnstoreFruitPrice = Value
        end
    })
    UnstoreFruitPrice:SetValue(5000)

    AutoUnstoreRaid = Tabs.Raid:AddToggle("AutoUnstoreRaidFlag", { Title = "Auto Unstore Fruit", Default = false })
    AutoUnstoreRaid:OnChanged(function(Value)
        _G.UnstoreBadFruit = Value
    end)
    Options.AutoUnstoreRaidFlag:SetValue(false)

    function HasFruits()
        local function CheckContainer(container)
            for _, v in pairs(container:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    return true
                end
            end
            return false
        end
        local plyr = game:GetService("Players").LocalPlayer
        return CheckContainer(plyr.Backpack) or CheckContainer(plyr.Character)
    end

    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().UnstoreBadFruit then
                    local fruits = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                    for _, v in pairs(fruits) do
                        if v["Price"] < getgenv().UnstoreFruitPrice then
                            if not HasFruits() then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", v["Name"])
                            end
                        end
                    end
                end
            end)
        end
    end)
    ---Travel Section

    Tabs.Travel:AddButton({
        Title = "Travel World 1",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })

    Tabs.Travel:AddButton({
        Title = "Travel World 2",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })

    Tabs.Travel:AddButton({
        Title = "Travel World 3",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

    local IslandsList = {}
    if World1 then
        IslandsList = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City"
        }
    elseif World2 then
        IslandsList = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island"
        }
    elseif World3 then
        IslandsList = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Candy Cane Island",
            "Tiki Outpost"
        }
    end

    SelectIslandList = Tabs.Travel:AddDropdown("SelectIslandList", {
        Title = "Select Island",
        Values = IslandsList,
        Multi = false,
        Default = 1,
    })
    SelectIslandList:SetValue(1)
    SelectIslandList:OnChanged(function(Value)
        _G.TeleportIslandSelect = Value
    end)

    StartTravelIsland = Tabs.Travel:AddToggle("StartTravelIslandFlag", { Title = "Start Traveling", Default = false })
    StartTravelIsland:OnChanged(function(Value)
        _G.TeleportToIsland = Value
        task.spawn(function()
            while _G.TeleportToIsland do
                task.wait()
                local Island = _G.TeleportIslandSelect
                if World1 then
                    if Island == "Middle Town" then
                        topos(CFrame.new(-688, 15, 1585))
                    elseif Island == "MarineFord" then
                        topos(CFrame.new(-4810, 21, 4359))
                    elseif Island == "Marine" then
                        topos(CFrame.new(-2728, 25, 2056))
                    elseif Island == "WindMill" then
                        topos(CFrame.new(889, 17, 1434))
                    elseif Island == "Desert" then
                        topos(CFrame.new())
                    elseif Island == "Snow Island" then
                        topos(CFrame.new(1298, 87, -1344))
                    elseif Island == "Pirate Village" then
                        topos(CFrame.new(-1173, 45, 3837))
                    elseif Island == "Jungle" then
                        topos(CFrame.new(-1614, 37, 146))
                    elseif Island == "Prison" then
                        topos(CFrame.new(4870, 6, 736))
                    elseif Island == "Under Water Island" then
                        topos(CFrame.new(61164, 5, 1820))
                    elseif Island == "Colosseum" then
                        topos(CFrame.new(-1535, 7, -3014))
                    elseif Island == "Magma Village" then
                        topos(CFrame.new(-5290, 9, 8349))
                    elseif Island == "Sky Island 1" then
                        topos(CFrame.new(-4814, 718, -2551))
                    elseif Island == "Sky Island 2" then
                        topos(CFrame.new(-4652, 873, -1754))
                    elseif Island == "Sky Island 3" then
                        topos(CFrame.new(-7895, 5547, -380))
                    end
                elseif World2 then
                    if Island == "The Cafe" then
                        topos(CFrame.new(-382, 73, 290))
                    elseif Island == "Frist Spot" then
                        topos(CFrame.new(-11, 29, 2771))
                    elseif Island == "Dark Area" then
                        topos(CFrame.new(3494, 13, -3259))
                    elseif Island == "Flamingo Mansion" then
                        topos(CFrame.new(-317, 331, 597))
                    elseif Island == "Flamingo Room" then
                        topos(CFrame.new(2285, 15, 905))
                    elseif Island == "Green Zone" then
                        topos(CFrame.new(-2258, 73, -2696))
                    elseif Island == "Zombie Island" then
                        topos(CFrame.new(-5552, 194, -776))
                    elseif Island == "Two Snow Mountain" then
                        topos(CFrame.new(752, 408, -5277))
                    elseif Island == "Punk Hazard" then
                        topos(CFrame.new(-5897, 18, -5096))
                    elseif Island == "Cursed Ship" then
                        topos(CFrame.new(919, 125, 32869))
                    elseif Island == "Ice Castle" then
                        topos(CFrame.new(5505, 40, -6178))
                    elseif Island == "Forgotten Island" then
                        topos(CFrame.new(-3050, 240, -10178))
                    elseif Island == "Ussop Island" then
                        topos(CFrame.new(4816, 8, 2863))
                    end
                elseif World3 then
                    if Island == "Mansion" then
                        topos(CFrame.new(-12471, 374, -7551))
                    elseif Island == "Port Town" then
                        topos(CFrame.new(-334, 7, 5300))
                    elseif Island == "Castle On The Sea" then
                        topos(CFrame.new(-5073, 315, -3153))
                    elseif Island == "Hydra Island" then
                        topos(CFrame.new(5756, 610, -282))
                    elseif Island == "Great Tree" then
                        topos(CFrame.new(2681, 1682, -7190))
                    elseif Island == "Floating Turtle" then
                        topos(CFrame.new(-12528, 332, -8658))
                    elseif Island == "Haunted Castle" then
                        topos(CFrame.new(-9517, 142, 5528))
                    elseif Island == "Ice Cream Island" then
                        topos(CFrame.new(-902, 79, -10988))
                    elseif Island == "Peanut Island" then
                        topos(CFrame.new(-2062, 50, -10232))
                    elseif Island == "Cake Island" then
                        topos(CFrame.new(-1897, 14, -11576))
                    elseif Island == "Candy Cane Island" then
                        topos(CFrame.new(-1038, 10, -14076))
                    elseif Island == "Tiki Outpost" then
                        topos(CFrame.new(-16224, 9, 439))
                    end
                end
            end
        end)
        StopTween(_G.TeleportToIsland)
    end)
    Options.StartTravelIslandFlag:SetValue(false)


    --Fun/Visual Section

    Tabs.Fun:AddButton({
        Title = "Rain Fruit",
        Description = "Old to New Fruit",
        Callback = function()
            for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
                v.Parent = game.Workspace.Map
                v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position +
                    Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
                if v.Fruit:FindFirstChild("AnimationController") then
                    v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
                end
                v.Handle.Touched:Connect(function(otherPart)
                    if otherPart.Parent == game.Players.LocalPlayer.Character then
                        v.Parent = game.Players.LocalPlayer.Backpack
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end)
            end
        end
    })

    Tabs.Fun:AddButton({
        Title = "Instant Max All",
        Description = "Beli, Level, Exp",
        Callback = function()
            local plr = game:GetService("Players").LocalPlayer
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            local Data = plr:WaitForChild("Data")
            local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
            local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
            local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
            local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild(
                    "LevelUp_Proxy") or
                game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
            function v129(p15)
                local v130 = p15;
                while true do
                    local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
                    v130 = v131;
                    if v132 == 0 then
                        break;
                    end;
                end;
                return v130;
            end;

            Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
            Notification.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display()
            Notification.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display()
            plr.Data.Exp.Value = 999999999999
            plr.Data.Beli.Value = plr.Data.Beli.Value + 999999999999

            delay = 0
            count = 0
            while plr.Data.Exp.Value - EXPFunction(Data.Level.Value) > 0 do
                plr.Data.Exp.Value = plr.Data.Exp.Value - EXPFunction(Data.Level.Value)
                plr.Data.Level.Value = plr.Data.Level.Value + 1
                plr.Data.Points.Value = plr.Data.Points.Value + 3
                LevelUp({ plr })
                Sound.Play(Sound, LevelUpSound.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. plr.Data.Level.Value .. ")"):Display()
                count = count + 1
                if count >= 10 then
                    delay = tick()
                    count = 0
                    wait(1)
                end
            end
        end
    })

    Tabs.Fun:AddButton({
        Title = "Human V4",
        Description = "Transformation Animation",
        Callback = function()
            require(game:GetService("ReplicatedStorage").Notification).new("Human V4!"):Display();
            wait()
            setthreadcontext(5)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Player = game:GetService("Players").LocalPlayer
            local ArgsTransform = {
                Character = game.Players.LocalPlayer.Character,
                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                Color1 = Color3.fromRGB(166, 0, 0),
                Color2 = Color3.fromRGB(166, 0, 0),
                Color3 = Color3.fromRGB(166, 0, 0),
            }
            Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
            delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
    })

    Tabs.Fun:AddButton({
        Title = "Mink V4",
        Description = "Transformation Animation",
        Callback = function()
            require(game:GetService("ReplicatedStorage").Notification).new("Mink V4!"):Display();
            wait()
            setthreadcontext(5)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Player = game:GetService("Players").LocalPlayer
            local ArgsTransform = {
                Character = game.Players.LocalPlayer.Character,
                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                Color1 = Color3.fromRGB(102, 255, 153),
                Color2 = Color3.fromRGB(102, 255, 153),
                Color3 = Color3.fromRGB(102, 255, 153),
            }
            Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
            delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
    })

    Tabs.Fun:AddButton({
        Title = "Fishman V4",
        Description = "Transformation Animation",
        Callback = function()
            require(game:GetService("ReplicatedStorage").Notification).new("Fishman V4!"):Display();
            wait()
            setthreadcontext(5)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Player = game:GetService("Players").LocalPlayer
            local ArgsTransform = {
                Character = game.Players.LocalPlayer.Character,
                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                Color1 = Color3.fromRGB(5, 115, 166),
                Color2 = Color3.fromRGB(5, 115, 166),
                Color3 = Color3.fromRGB(5, 115, 166),
            }
            Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
            delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
    })

    Tabs.Fun:AddButton({
        Title = "Skypiean V4",
        Description = "Transformation Animation",
        Callback = function()
            require(game:GetService("ReplicatedStorage").Notification).new("Skypeian V4!"):Display();
            wait()
            setthreadcontext(5)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Player = game:GetService("Players").LocalPlayer
            local ArgsTransform = {
                Character = game.Players.LocalPlayer.Character,
                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                Color1 = Color3.fromRGB(222, 222, 0),
                Color2 = Color3.fromRGB(222, 222, 0),
                Color3 = Color3.fromRGB(222, 222, 0),
            }
            Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
            delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
    })

    Tabs.Fun:AddButton({
        Title = "Ghoul V4",
        Description = "Transformation Animation",
        Callback = function()
            require(game:GetService("ReplicatedStorage").Notification).new("Ghoul V4!"):Display();
            wait()
            setthreadcontext(5)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Player = game:GetService("Players").LocalPlayer
            local ArgsTransform = {
                Character = game.Players.LocalPlayer.Character,
                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                Color1 = Color3.fromRGB(155, 155, 155),
                Color2 = Color3.fromRGB(0, 0, 0),
                Color3 = Color3.fromRGB(155, 155, 155),
            }
            Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
            delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
    })

    Tabs.Fun:AddButton({
        Title = "Cyborg V4",
        Description = "Transformation Animation",
        Callback = function()
            require(game:GetService("ReplicatedStorage").Notification).new("Cyborg V4!"):Display();
            wait()
            setthreadcontext(5)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Player = game:GetService("Players").LocalPlayer
            local ArgsTransform = {
                Character = game.Players.LocalPlayer.Character,
                CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                Color1 = Color3.fromRGB(166, 0, 111),
                Color2 = Color3.fromRGB(166, 0, 111),
                Color3 = Color3.fromRGB(166, 0, 111),
            }
            Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
            delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
    })

    --Fruit

    Tabs.Fruit:AddButton({
        Title = "Open Normal Fruit Shop",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
            game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    })

    MirageStockInfo = Tabs.Fruit:AddParagraph({
        Title = "Mirage Stock",
        Content = ""
    })

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remotes = ReplicatedStorage.Remotes
    local Event = Remotes["CommF_"]
    local result = Event:InvokeServer("GetFruits", true)
    local fruitsOnSale = {}
    function addCommas(number)
        local formatted = tostring(number)
        while true do
            formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
            if k == 0 then break end
        end
        return formatted
    end

    local content = ""
    for _, fruitData in pairs(result) do
        if fruitData["OnSale"] == true then
            local priceWithCommas = addCommas(fruitData["Price"])
            local fruitInfo = fruitData["Name"] .. " - $" .. priceWithCommas
            table.insert(fruitsOnSale, fruitInfo)
        end
    end
    content = table.concat(fruitsOnSale, "\n")
    MirageStockInfo:SetDesc(content)

    AutoRandomFruit = Tabs.Fruit:AddToggle("AutoRandomFruitFlag", { Title = "Auto Random Fruit", Default = false })
    AutoRandomFruit:OnChanged(function(Value)
        _G.Random_Auto = Value
    end)
    Options.AutoRandomFruitFlag:SetValue(false)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                end
            end
        end)
    end)

    local RarityFruits = {
        ["Common"] = {
            "Rocket Fruit",
            "Spin Fruit",
            "Chop Fruit",
            "Spring Fruit",
            "Bomb Fruit",
            "Smoke Fruit",
            "Spike Fruit"
        },
        ["Uncommon"] = {
            "Flame Fruit",
            "Falcon Fruit",
            "Ice Fruit",
            "Sand Fruit",
            "Diamond Fruit",
            "Dark Fruit"
        },
        ["Rare"] = {
            "Light Fruit",
            "Rubber Fruit",
            "Barrier Fruit",
            "Ghost Fruit",
            "Magma Fruit"
        },
        ["Legendary"] = {
            "Quake Fruit",
            "Budha Fruit",
            "Love Fruit",
            "Spider Fruit",
            "Sound Fruit",
            "Phoenix Fruit",
            "Portal Fruit",
            "Rumble Fruit",
            "Pain Fruit",
            "Blizzard Fruit",
        },
        ["Mythical"] = {
            "Gravity Fruit",
            "Mammoth Fruit",
            "T-Rex Fruit",
            "Dough Fruit",
            "Shadow Fruit",
            "Venom Fruit",
            "Control Fruit",
            "Spirit Fruit",
            "Dragon Fruit",
            "Leopard Fruit",
            "Kitsune Fruit",
        }
    }

    local SelectRarityFruits = {
        "Common - Mythical",
        "Uncommon - Mythical",
        "Rare - Mythical",
        "Legendary - Mythical",
        "Mythical"
    }

    local ResultUnstoreFruits = {}
    StoreRarity = Tabs.Fruit:AddDropdown("StoreRarity", {
        Title = "Select Rarity to Store",
        Values = SelectRarityFruits,
        Multi = false,
        Default = 1,
    })
    StoreRarity:SetValue(SetRarityFruits)
    StoreRarity:OnChanged(function(Value)
        SetRarityFruits = Value
    end)

    function CheckFruits()
        for i, v in pairs(RarityFruits) do
            if SetRarityFruits == "Common - Mythical" then
                if i == "Common" or i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Uncommon - Mythical" then
                if i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Rare - Mythical" then
                if i == "Rare" or i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Legendary - Mythical" then
                if i == "Legendary" or i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            elseif SetRarityFruits == "Mythical" then
                if i == "Mythical" then
                    for _, fruit in ipairs(v) do
                        table.insert(ResultStoreFruits, fruit)
                    end
                end
            end
        end
    end

    AutoStoreEnable = Tabs.Fruit:AddToggle("AutoStoreEnableFlag",
        { Title = "Auto Store Fruit", Description = "It will store the fruit in the inventory according to its rarity.", Default = false })
    AutoStoreEnable:OnChanged(function(Value)
        _G.AutoStoreFruit = Value
    end)
    Options.AutoStoreEnableFlag:SetValue(false)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoStoreFruit then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            ResultStoreFruits = {}
                            CheckFruits()
                            for _, Res in pairs(ResultStoreFruits) do
                                if v.Name == Res then
                                    local NameFruit = v.Name
                                    local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit) then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                                            FirstNameFruit .. "-" .. FirstNameFruit,
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit))
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    --- functions
end

spawn(function()
    while wait() do
        if FarmMode == "Normal" and _G.AutoFarm then
            pcall(function()
                CheckQuest()
                local QuestTitle = Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if not Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if BypassTP then
                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            BTP(CFrameQuest)
                        else
                            TP1(CFrameQuest)
                        end
                    else
                        TP1(CFrameQuest)
                    end
                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,
                            LevelQuest)
                    end
                elseif Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                    local Enemies = Workspace.Enemies
                    if Enemies:FindFirstChild(Mon) then
                        for _, v in pairs(Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(QuestTitle, NameMon) then
                                        repeat
                                            task.wait()
                                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Status = "Attacking..."
                                            MonsterStatus:SetDesc("[Monster] : " .. MonFarm ..
                                                " | [Status] : " .. Status)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            StartBring = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or not Players.LocalPlayer.PlayerGui.Main.Quest.Visible
                                        Status = "Waiting..."
                                        MonsterStatus:SetDesc("[Monster] : " .. MonFarm .. " | [Status] : " .. Status)
                                        UnEquipWeapon(_G.SelectWeapon)
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        elseif FarmMode == "No Quest" and _G.AutoFarm then
            pcall(function()
                local Enemies = Workspace.Enemies
                if Enemies:FindFirstChild(Mon) then
                    for i, v in pairs(Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == Mon then
                                repeat
                                    task.wait()
                                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    AutoHaki()
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    StartBring = true
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent
                                StartBring = false
                                UnEquipWeapon(_G.SelectWeapon)
                            end
                        end
                    end
                else
                    TP1(CFrameMon)
                    UnEquipWeapon(_G.SelectWeapon)
                end
            end)
        elseif FarmMode == "Nearest" and _G.AutoFarm then
            pcall(function()
                local Enemies = Workspace.Enemies
                for i, v in pairs(Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name then
                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 5000 then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP1(v.HumanoidRootPart.CFrame * Pos)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
                                    StartBring = true
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or not Enemies:FindFirstChild(v.Name)
                                StartBring = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        spawn(function()
            if _G.AutoFactory then
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                    EquipWeapon(_G.SelectWeapon)
                                end
                                AutoHaki()
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                StartBring = true
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                        end
                    end
                else
                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if _G.AutoPirateRaid then
            pcall(function()
                local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09,
                    0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoPirateRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat
                                    wait()
                                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    AutoHaki()
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    StartBring = true
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until v.Humanoid.Health <= 0 or not v.Parent or _G.AutoPirateRaid == false
                            end
                        end
                    end
                else
                    if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                        topos(CFrameBoss)
                    else
                        BTP(CFrameBoss)
                    end
                end
            end)
        end
    end
end)

local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)

spawn(function()
    while wait() do
        if _G.Auto_Bone and not _G.AcceptQuests and World3 then
            pcall(function()
                local BoneFarmMobs = {
                    "Reborn Skeleton",
                    "Living Zombie",
                    "Demonic Soul",
                    "Posessed Mummy"
                }
                StartBring = false
                local mobs = game:GetService("Workspace").Enemies:GetChildren()
                local checkMobs = false
                for _, mob in ipairs(mobs) do
                    if table.find(BoneFarmMobs, mob.Name) then
                        checkMobs = true
                        break
                    end
                end
                for _, v in ipairs(mobs) do
                    if table.find(BoneFarmMobs, v.Name) then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                    EquipWeapon(_G.SelectWeapon)
                                end
                                AutoHaki()
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                StartBring = true
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                            StartBring = false
                            UnEquipWeapon(_G.SelectWeapon)
                        end
                    end
                end
                if not checkMobs then
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end)
        elseif _G.Auto_Bone and _G.AcceptQuests and World3 then
            pcall(function()
                local BoneFarmMobs = {
                    "Reborn Skeleton",
                    "Living Zombie",
                    "Demonic Soul",
                    "Posessed Mummy"
                }

                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                    .Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    StartBring = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end

                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    StartBring = false
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
                            BTP(BoneQuestPos)
                        else
                            topos(BoneQuestPos)
                        end
                    else
                        topos(BoneQuestPos)
                    end
                    if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                            "HauntedQuest2", 1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    local mobs = game:GetService("Workspace").Enemies:GetChildren()
                    if table.find(BoneFarmMobs, "Reborn Skeleton") or
                        table.find(BoneFarmMobs, "Living Zombie") or
                        table.find(BoneFarmMobs, "Demonic Soul") or
                        table.find(BoneFarmMobs, "Posessed Mummy") then
                        for _, v in pairs(mobs) do
                            if table.find(BoneFarmMobs, v.Name) and
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if string.find(QuestTitle, "Demonic Soul") then
                                    repeat
                                        task.wait()
                                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        AutoHaki()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        StartBring = true
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not _G.Auto_Bone or v.Humanoid.Health <= 0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                                    StartBring = false
                                    UnEquipWeapon(_G.SelectWeapon)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

_G.MagnitudeAdd = 0

function jumpchar()
    local humanoid = game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(0.1)
    end
end

function isNearDestination(destination)
    local distance = (destination.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    return distance <= 0
end

function touchChest(chest)
    local touchTransmitter = chest and chest:FindFirstChild("TouchTransmitter")
    if touchTransmitter then
        for _ = 1, 5 do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touchTransmitter.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touchTransmitter.Parent, 1)
            wait(0.2)
        end
    end
end

spawn(function()
    while wait() do
        if _G.AutoChestSafe then
            local nearestChest, nearestDistance = nil, math.huge
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("BasePart") and v.Name:find("Chest") then
                    local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                    .Magnitude
                    if distance <= 5000 + _G.MagnitudeAdd and distance < nearestDistance then
                        nearestChest, nearestDistance = v, distance
                    end
                end
            end
            if nearestChest then
                repeat
                    wait()
                    if _G.AutoChestSafe and nearestChest and nearestChest.Parent then
                        topos(nearestChest.CFrame)
                    else
                        topos(nearestChest.CFrame)
                    end
                until not _G.AutoChestSafe or not nearestChest.Parent or isNearDestination(nearestChest)
                if isNearDestination(nearestChest) then
                    wait(0.1)
                    jumpchar()
                    touchChest(nearestChest)
                    topos(nearestChest.CFrame)
                end
                topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
            end
        end
    end
end)


spawn(function()
    while wait() do
        if _G.AutoFarmBossHallow then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name, "Soul Reaper") then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Transparency = 1
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    repeat
                        topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                        wait()
                    until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart
                            .CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoDarkCoat then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name, "Darkbeard") then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Transparency = 1
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoDarkCoat == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                    repeat
                        topos(CFrame.new(3776.663330078125, 14.675973892211914, -3499.1201171875))
                        wait()
                    until (CFrame.new(3776.663330078125, 14.675973892211914, -3499.1201171875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                    EquipWeapon("Fist of Darkness")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart
                            .CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Saber and World1 and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09,
                                -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08,
                                0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09,
                                    0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10,
                                    -0.648466587))
                            else
                                topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285,
                                    -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515,
                                    0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "ProQuestProgress", "RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                        topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564,
                                            -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166,
                                            -0.939287126, 0.0184739735, 0.342634559))
                                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat
                                                            task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,
                                                                "SimulationRadius", math.huge)
                                                        until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                                    end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(
                                                        "Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "ProQuestProgress", "RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09,
                                        0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08,
                                        0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                    until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                    StartBring = true
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress", "PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBuyChip then
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select",
                            _G.SelectChip)
                    end
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do
        if _G.Auto_StartRaid then
            local player = game:GetService("Players").LocalPlayer
            local timerVisible = not player.PlayerGui.Main.Timer.Visible
            local hasMicrochip = player.Backpack:FindFirstChild("Special Microchip") or
                player.Character:FindFirstChild("Special Microchip")
            local world = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") == nil
            if timerVisible and hasMicrochip and world then
                if World2 then
                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main
                        .ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main
                        .ClickDetector)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Kill_Aura then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible then
                local player = game:GetService("Players").LocalPlayer
                local enemies = game:GetService("Workspace").Enemies:GetDescendants()

                for _, v in pairs(enemies) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        pcall(function()
                            repeat
                                wait()
                                sethiddenproperty(player, "SimulationRadius", math.huge)
                                v.Humanoid.Health = 0
                                v.HumanoidRootPart.CanCollide = false
                            until not _G.Kill_Aura or not v.Parent or v.Humanoid.Health <= 0
                        end)
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Dungeon then
            local RaidPos = CFrame.new(0, 25, 0)
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                local worldOrigin = game:GetService("Workspace")["_WorldOrigin"].Locations
                if worldOrigin:FindFirstChild("Island 5") then
                    topos(worldOrigin:FindFirstChild("Island 5").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 4") then
                    topos(worldOrigin:FindFirstChild("Island 4").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 3") then
                    topos(worldOrigin:FindFirstChild("Island 3").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 2") then
                    topos(worldOrigin:FindFirstChild("Island 2").CFrame * RaidPos)
                elseif worldOrigin:FindFirstChild("Island 1") then
                    topos(worldOrigin:FindFirstChild("Island 1").CFrame * RaidPos)
                end
            end
        end
    end
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.Awaken then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                end)
            end
        end
    end)
end)


local CakePos = CFrame.new(-2134.48779, 148.698532, -12340.1348)
local CakeQuestPos2 = CFrame.new(-2021.32, 37.80, -12028.73, 0.96, 0, 0.29, 0, 1, 0, -0.29, 0, 0.96)
local CakeMobs = {}
for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
        table.insert(CakeMobs, v)
    end
end
spawn(function()
    while task.wait() do
        if _G.AutoFarmPrince and not _G.AcceptQuests and World3 then
            pcall(function()
                for _, v in ipairs(CakeMobs) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name == "Cake Prince" then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size = Vector3.new(200, 200, 200)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart
                            .CFrame * CFrame.new(5, -30, 10))
                    else
                        if AutoFarmCake == 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",
                                true)
                        end
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
                                BTP(CakePos)
                            else
                                topos(CakePos)
                            end
                        else
                            topos(CakePos)
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if next(CakeMobs) ~= nil then
                                for _, v in ipairs(CakeMobs) do
                                    if v.Humanoid.Health > 0 then
                                        repeat
                                            task.wait()
                                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            StartBring = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or AutoFarmCake == 0
                                        UnEquipWeapon(_G.SelectWeapon)
                                    end
                                end
                            else
                                StartBring = false
                                topos(CFrame.new(-2134.48779, 148.698532, -12340.1348))
                            end
                        end
                    end
                end
            end)
        elseif _G.AcceptQuests and _G.AutoFarmPrince and World3 then
            pcall(function()
                for _, v in ipairs(CakeMobs) do
                    if v.Name == "Cake Prince" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(200, 200, 200)
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.AutoFarmPrince or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
                if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart
                            .CFrame * CFrame.new(5, -30, 10))
                    else
                        if AutoFarmCake == 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",
                                true)
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                .QuestTitle.Title.Text
                            if not string.find(QuestTitle, "Cookie Crafter") then
                                StartBring = false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                StartBring = false
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos2.Position).Magnitude > 1500 then
                                        BTP(CakeQuestPos2)
                                    else
                                        topos(CakeQuestPos2)
                                    end
                                else
                                    topos(CakeQuestPos2)
                                end
                                if (CakeQuestPos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                                        "CakeQuest1", 1)
                                end
                            else
                                if next(CakeMobs) ~= nil then
                                    for _, v in ipairs(CakeMobs) do
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            if string.find(QuestTitle, "Cookie Crafter") then
                                                repeat
                                                    task.wait()
                                                    if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                    AutoHaki()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    StartBring = true
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarmPrince or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or AutoFarmCake == 0
                                                UnEquipWeapon(_G.SelectWeapon)
                                            else
                                                StartBring = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest")
                                                topos(CFrame.new(-2134.48779, 148.698532, -12340.1348))
                                            end
                                        end
                                    end
                                else
                                    topos(CFrame.new(-2134.48779, 148.698532, -12340.1348))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if _G.AutoMaterial then
            pcall(function()
                MaterialMon(SelectMaterial)
                TP1(MPos)
                for _, EnemyName in ipairs(MMon) do
                    if game:GetService("Workspace").Enemies:FindFirstChild(EnemyName) then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == EnemyName then
                                    repeat
                                        wait()
                                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        AutoHaki()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        StartBring = true
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                                    StartBring = false
                                    UnEquipWeapon(_G.SelectWeapon)
                                end
                            end
                        end
                    end
                end
                for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                    for _, EnemyName in ipairs(MMon) do
                        if string.find(v.Name, EnemyName) then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                topos(v.CFrame * Pos)
                            end
                        end
                    end
                end
            end)
        end
    end
end)


spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBartilo then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Mon = "Swan Pirate"
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    pcall(function()
                                        repeat
                                            task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,
                                                "SimulationRadius", math.huge)
                                            if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            StartBring = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                    end)
                                end
                            end
                        else
                            repeat
                                topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08,
                                    -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08,
                                    -0.973085582))
                                wait()
                            until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest",
                            1)
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Mon = "Jeremy"
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Mon then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius",
                                        math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress",
                            "Bartilo")
                        wait(1)
                        repeat
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()
                        until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                    repeat
                        topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat
                        topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                        wait()
                    until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end
        end
    end)
end)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Quantum Hub",
    Content = "The script has been loaded.",
    Duration = 8
})
