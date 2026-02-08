-- ===============================
-- SISTEMA DE KEY vzloman
-- ===============================

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local KEYS_URL = "https://raw.githubusercontent.com/vzloman711/auto-farm/main/keys.txt"

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeySystemVzLoman"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 420, 0, 220)
mainFrame.Position = UDim2.new(0.5, -210, 0.5, -110)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 12)

-- Barra superior roja
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 35)
topBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
topBar.BorderSizePixel = 0
topBar.Parent = mainFrame
Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 12)

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Sistema de Key vzloman"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = topBar

-- Botón cerrar
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 2)
closeBtn.Text = "X"
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 18
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.BackgroundColor3 = Color3.fromRGB(200,0,0)
closeBtn.Parent = topBar
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Input Key
local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(0, 180, 0, 35)
keyBox.Position = UDim2.new(0, 20, 0, 70)
keyBox.PlaceholderText = "Ingresá tu Key"
keyBox.Text = ""
keyBox.Font = Enum.Font.SourceSansBold
keyBox.TextSize = 16
keyBox.TextColor3 = Color3.fromRGB(0,0,0)
keyBox.BackgroundColor3 = Color3.fromRGB(160,160,160)
keyBox.ClearTextOnFocus = false
keyBox.Parent = mainFrame
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 10)

-- Botón Check Key
local checkBtn = Instance.new("TextButton")
checkBtn.Size = UDim2.new(0, 180, 0, 38)
checkBtn.Position = UDim2.new(0, 20, 0, 120)
checkBtn.Text = "Check Key"
checkBtn.Font = Enum.Font.SourceSansBold
checkBtn.TextSize = 18
checkBtn.TextColor3 = Color3.fromRGB(255,255,255)
checkBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
checkBtn.Parent = mainFrame
Instance.new("UICorner", checkBtn).CornerRadius = UDim.new(0, 10)

-- Mensaje
local msgLabel = Instance.new("TextLabel")
msgLabel.Size = UDim2.new(0, 180, 0, 40)
msgLabel.Position = UDim2.new(0, 20, 0, 165)
msgLabel.BackgroundTransparency = 1
msgLabel.Text = ""
msgLabel.TextWrapped = true
msgLabel.Font = Enum.Font.SourceSansBold
msgLabel.TextSize = 14
msgLabel.TextColor3 = Color3.fromRGB(255,255,255)
msgLabel.Parent = mainFrame

-- Info derecha
local infoText = Instance.new("TextLabel")
infoText.Size = UDim2.new(0, 180, 0, 60)
infoText.Position = UDim2.new(0, 220, 0, 80)
infoText.BackgroundTransparency = 1
infoText.TextWrapped = true
infoText.Text = "Duda o Error contactarme Por MD!!"
infoText.Font = Enum.Font.SourceSansBold
infoText.TextSize = 16
infoText.TextColor3 = Color3.fromRGB(255,255,255)
infoText.Parent = mainFrame

local tiktokText = Instance.new("TextLabel")
tiktokText.Size = UDim2.new(0, 180, 0, 30)
tiktokText.Position = UDim2.new(0, 220, 0, 145)
tiktokText.BackgroundTransparency = 1
tiktokText.Text = "Tiktok: vz_loman._"
tiktokText.Font = Enum.Font.SourceSansBold
tiktokText.TextSize = 16
tiktokText.TextColor3 = Color3.fromRGB(255,0,0)
tiktokText.Parent = mainFrame

-- ===============================
-- VALIDACIÓN DESDE GITHUB
-- ===============================

local function validarKey(keyIngresada)
    local success, response = pcall(function()
        return game:HttpGet(KEYS_URL)
    end)

    if not success then
        return false
    end

    for line in response:gmatch("[^\r\n]+") do
        local key, userId = line:match("([^:]+):([^:]+)")
        if key and userId then
            if key == keyIngresada and tonumber(userId) == player.UserId then
                return true
            end
        end
    end

    return false
end

local function iniciarScript()
    screenGui:Destroy()
	
    -- ↓↓↓ PEGÁ TU SCRIPT ACÁ ↓↓↓
-- LocalScript placed in StarterGui or similar
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local root = character:WaitForChild("HumanoidRootPart")

-- Character respawn handler
player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoid = newChar:WaitForChild("Humanoid")
    root = newChar:WaitForChild("HumanoidRootPart")
end)

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoFarmGui"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 9999

-- Beta Warning Popup (5 seconds, positioned lower)
local warningFrame = Instance.new("Frame")
warningFrame.Size = UDim2.new(0, 400, 0, 150)
warningFrame.Position = UDim2.new(0.5, -200, 0.65, -75)  -- Más abajo
warningFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
warningFrame.BorderSizePixel = 0
warningFrame.Parent = screenGui
local warningCorner = Instance.new("UICorner")
warningCorner.CornerRadius = UDim.new(0, 20)
warningCorner.Parent = warningFrame

local warningText = Instance.new("TextLabel")
warningText.Size = UDim2.new(1, -20, 1, -20)
warningText.Position = UDim2.new(0, 10, 0, 10)
warningText.BackgroundTransparency = 1
warningText.Text = "el script es BETA asi que hazme saber errores"
warningText.TextColor3 = Color3.fromRGB(255, 255, 255)
warningText.Font = Enum.Font.SourceSansBold
warningText.TextSize = 24
warningText.TextWrapped = true
warningText.Parent = warningFrame

task.delay(5, function()
    warningFrame:Destroy()
end)

-- Main Frame (Black background)
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 320)  -- Aumenté altura para más espacio abajo
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -160)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui
mainFrame.Visible = false  -- Minimized at start
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = mainFrame

-- Title Bar (Strong red)
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame
local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 10)
titleCorner.Parent = titleBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -60, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.Text = "Auto Farm VzLoman Gui"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 18
titleLabel.Parent = titleBar

-- Close Button (Red)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = titleBar
local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 5)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Minimize Button (Red)
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -60, 0, 0)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.Parent = titleBar
local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(0, 5)
minCorner.Parent = minimizeButton

-- Floating Circle (Red)
local floatingCircle = Instance.new("ImageButton")
floatingCircle.Size = UDim2.new(0, 50, 0, 50)
floatingCircle.Position = UDim2.new(0.5, -25, 0.5, -25)
floatingCircle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
floatingCircle.Image = "rbxassetid://0"  -- Transparent image
floatingCircle.BorderSizePixel = 0
floatingCircle.Visible = true  -- Starts visible (minimized)
floatingCircle.Parent = screenGui
local circleCorner = Instance.new("UICorner")
circleCorner.CornerRadius = UDim.new(1, 0)
circleCorner.Parent = floatingCircle

-- "VN" in circle
local vnLabel = Instance.new("TextLabel")
vnLabel.Size = UDim2.new(1, 0, 1, 0)
vnLabel.BackgroundTransparency = 1
vnLabel.Text = "VN"
vnLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
vnLabel.Font = Enum.Font.SourceSansBold
vnLabel.TextSize = 24
vnLabel.Parent = floatingCircle

-- Auto Farm Button (bajado un poco más)
local autoFarmButton = Instance.new("TextButton")
autoFarmButton.Size = UDim2.new(0.8, 0, 0, 40)
autoFarmButton.Position = UDim2.new(0.1, 0, 0.45, 0)  -- Bajado desde 0.4 a 0.45
autoFarmButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
autoFarmButton.Text = "Auto-Farm: OFF"
autoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFarmButton.Font = Enum.Font.SourceSansBold
autoFarmButton.TextSize = 20
autoFarmButton.Parent = mainFrame
local farmCorner = Instance.new("UICorner")
farmCorner.CornerRadius = UDim.new(0, 5)
farmCorner.Parent = autoFarmButton

-- Esp Button (bajado proporcionalmente)
local espButton = Instance.new("TextButton")
espButton.Size = UDim2.new(0.8, 0, 0, 40)
espButton.Position = UDim2.new(0.1, 0, 0.65, 0)  -- Bajado desde 0.6 a 0.65
espButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
espButton.Text = "Esp: OFF"
espButton.TextColor3 = Color3.fromRGB(255, 255, 255)
espButton.Font = Enum.Font.SourceSansBold
espButton.TextSize = 20
espButton.Parent = mainFrame
local espCorner = Instance.new("UICorner")
espCorner.CornerRadius = UDim.new(0, 5)
espCorner.Parent = espButton

-- Credits
local creditsLabel = Instance.new("TextLabel")
creditsLabel.Size = UDim2.new(0.8, 0, 0, 30)
creditsLabel.Position = UDim2.new(0.1, 0, 0.2, 0)
creditsLabel.BackgroundTransparency = 1
creditsLabel.Text = "Creditos: vzloman"
creditsLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
creditsLabel.Font = Enum.Font.SourceSansBold
creditsLabel.TextSize = 20
creditsLabel.Parent = mainFrame

-- TikTok
local tiktokLabel = Instance.new("TextLabel")
tiktokLabel.Size = UDim2.new(0.8, 0, 0, 30)
tiktokLabel.Position = UDim2.new(0.1, 0, 0.35, 0)
tiktokLabel.BackgroundTransparency = 1
tiktokLabel.Text = "Tiktok: vz_loman._"
tiktokLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
tiktokLabel.Font = Enum.Font.SourceSansBold
tiktokLabel.TextSize = 20
tiktokLabel.Parent = mainFrame

-- Draggable Functionality
local function makeDraggable(dragHandle, targetFrame)
    local dragging = false
    local dragInput
    local dragStart
    local startPos
   
    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = targetFrame.Position
           
            local connection = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    connection:Disconnect()
                end
            end)
        end
    end)
   
    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
   
    local inputChangedConn = UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            targetFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    
    screenGui.Destroying:Connect(function()
        inputChangedConn:Disconnect()
    end)
end

makeDraggable(titleBar, mainFrame)

-- Circle open ONLY on direct click (differentiate drag and click)
local isDragging = false
floatingCircle.MouseButton1Down:Connect(function()
    isDragging = false
end)

floatingCircle.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        isDragging = true
    end
end)

floatingCircle.MouseButton1Up:Connect(function()
    if not isDragging then
        mainFrame.Visible = true
        floatingCircle.Visible = false
    end
end)

-- Make circle draggable
makeDraggable(floatingCircle, floatingCircle)

minimizeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    floatingCircle.Visible = true
end)

-- Auto Farm Logic
local isFarming = false
local originalStoveCollide = nil
local originalFloorCollide = nil
local modifiedStove = nil
local modifiedFloor = nil
local originalStoveTransparency = nil
local originalFloorTransparency = nil

local function findItemInBackpack(pattern)
    local backpack = player:WaitForChild("Backpack")
    pattern = pattern:lower()
    for _, item in ipairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name:lower():find(pattern) then
            return item.Name
        end
    end
    return nil
end

local function equipItem(itemNameOrPattern)
    local itemName = itemNameOrPattern
    if not player.Backpack:FindFirstChild(itemName) then
        itemName = findItemInBackpack(itemNameOrPattern)
        if not itemName then return end
    end
    local success, err = pcall(function()
        for _, tool in ipairs(character:GetChildren()) do
            if tool:IsA("Tool") then tool.Parent = player.Backpack end
        end
        task.wait(0.4)
        local backpack = player:WaitForChild("Backpack")
        local item = backpack:FindFirstChild(itemName)
        if not item or not item:IsA("Tool") then return end
        humanoid:EquipTool(item)
        for i = 1, 10 do
            task.wait(0.12)
            if character:FindFirstChild(itemName) then break end
        end
    end)
end

local function findNearestStove()
    local map = workspace:FindFirstChild("Map")
    if not map then return nil end
    local paths = {
        map.Locations.Apartments["Home 1"] and map.Locations.Apartments["Home 1"].Stove,
        map.Locations.Apartments["Home 3"] and map.Locations.Apartments["Home 3"].Stove,
        map.Locations.Apartments["Home 4"] and map.Locations.Apartments["Home 4"].Stove,
        map.Locations.Apartments["Home 2"] and map.Locations.Apartments["Home 2"].Stove,
        map.Houses.WH1 and map.Houses.WH1.Interior.Stove,
        map.Houses.BH3 and map.Houses.BH3.Interior.Stove,
        map.Houses.BH4 and map.Houses.BH4.Interior.Stove,
        map.Houses.BH2 and map.Houses.BH2.Interior.Stove,
        map.Houses.BH1 and map.Houses.BH1.Interior.Stove
    }
    local candidates = {}
    for _, stove in ipairs(paths) do
        if stove and stove:IsA("BasePart") then table.insert(candidates, stove) end
    end
    if #candidates == 0 then return nil end
    local nearest, minDist = nil, math.huge
    for _, stove in ipairs(candidates) do
        local dist = (root.Position - stove.Position).Magnitude
        if dist < minDist then minDist = dist nearest = stove end
    end
    return nearest
end

local function makeStoveTraspasable(stove)
    if not stove then return end
    modifiedStove = stove
    originalStoveCollide = stove.CanCollide
    originalStoveTransparency = stove.Transparency
    stove.CanCollide = false
    stove.Transparency = 1

    local parent = stove.Parent
    modifiedFloor = parent:FindFirstChild("Floor") or parent:FindFirstChild("Union") or parent:FindFirstChildOfClass("BasePart")
    if modifiedFloor then
        originalFloorCollide = modifiedFloor.CanCollide
        originalFloorTransparency = modifiedFloor.Transparency
        modifiedFloor.CanCollide = false
        modifiedFloor.Transparency = 1
    end
end

local function restoreStove()
    if modifiedStove then
        modifiedStove.CanCollide = originalStoveCollide or true
        modifiedStove.Transparency = originalStoveTransparency or 0
    end
    if modifiedFloor then
        modifiedFloor.CanCollide = originalFloorCollide or true
        modifiedFloor.Transparency = originalFloorTransparency or 0
    end
    modifiedStove, modifiedFloor = nil, nil
end

local function teleportToNearestStove()
    local stove = findNearestStove()
    if not stove then return false end
    makeStoveTraspasable(stove)
    root.CFrame = stove.CFrame * CFrame.new(0, -0.2, 0)
    root.Velocity = Vector3.new(0, 0, 0)
    task.wait(0.5)
    return true
end

local function findNearestCookingPot()
    local candidates = {}
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("ProximityPrompt") then
            local attach = obj.Parent
            if attach and attach:IsA("Attachment") then
                local part = attach.Parent
                if part and part:IsA("BasePart") then
                    local name = part.Name:lower()
                    if name:find("pot") or name:find("cooking") or name:find("olla") then
                        table.insert(candidates, part)
                    end
                end
            end
        end
    end
    if #candidates == 0 then return nil end
    local nearest, minDist = nil, math.huge
    for _, part in ipairs(candidates) do
        local dist = (root.Position - part.Position).Magnitude
        if dist < minDist then minDist = dist nearest = part end
    end
    if minDist > 10 then return nil end
    return nearest
end

local function interactWithCookingPot()
    local potPart = findNearestCookingPot()
    if not potPart then return end
    task.wait(0.25)
    local attachment = potPart:FindFirstChild("Attachment")
    if attachment then
        local prompt = attachment:FindFirstChildOfClass("ProximityPrompt")
        if prompt then
            prompt:InputHoldBegin()
            if prompt.HoldDuration > 0 then task.wait(prompt.HoldDuration + 0.1) end
            prompt:InputHoldEnd()
            task.wait(0.7)
        end
    end
end

local function farmSequence()
    while isFarming do
        equipItem("water")
        task.wait(0.5)
        interactWithCookingPot()
        task.wait(21)

        equipItem("sugar")
        task.wait(0.5)
        interactWithCookingPot()

        equipItem("gelatin")
        task.wait(0.7)
        interactWithCookingPot()
        task.wait(46)

        equipItem("empty")
        task.wait(0.5)
        interactWithCookingPot()

        task.wait(1.2)
    end
end

autoFarmButton.MouseButton1Click:Connect(function()
    isFarming = not isFarming
    if isFarming then
        autoFarmButton.Text = "Auto-Farm: ON"
        autoFarmButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        if teleportToNearestStove() then
            spawn(farmSequence)
        else
            isFarming = false
            autoFarmButton.Text = "Auto-Farm: OFF"
            autoFarmButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    else
        autoFarmButton.Text = "Auto-Farm: OFF"
        autoFarmButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        restoreStove()
        root.CFrame = root.CFrame * CFrame.new(0, 2, 0)
        isFarming = false
    end
end)

-- ESP Logic
local isEsp = false
local espInstances = {}

local function createEsp(plr)
    if plr == player or not plr.Character then return end
    local head = plr.Character:WaitForChild("Head", 5)
    if not head then return end
    local bill = Instance.new("BillboardGui")
    bill.Adornee = head
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 100, 0, 50)
    bill.StudsOffset = Vector3.new(0, 2, 0)
    bill.Parent = screenGui
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = plr.Name
    nameLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    nameLabel.TextStrokeTransparency = 0.8
    nameLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextSize = 20
    nameLabel.Parent = bill
    espInstances[plr] = bill
end

local function destroyEsp()
    for _, bill in pairs(espInstances) do
        bill:Destroy()
    end
    espInstances = {}
end

Players.PlayerAdded:Connect(function(plr)
    if isEsp then
        createEsp(plr)
    end
end)

for _, plr in ipairs(Players:GetPlayers()) do
    if isEsp then
        createEsp(plr)
    end
end

espButton.MouseButton1Click:Connect(function()
    isEsp = not isEsp
    if isEsp then
        espButton.Text = "Esp: ON"
        espButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        for _, plr in ipairs(Players:GetPlayers()) do
            createEsp(plr)
        end
    else
        espButton.Text = "Esp: OFF"
        espButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        destroyEsp()
    end
end)

Players.PlayerRemoving:Connect(function(plr)
    if espInstances[plr] then
        espInstances[plr]:Destroy()
        espInstances[plr] = nil
    end
end)

checkBtn.MouseButton1Click:Connect(function()
    if validarKey(keyBox.Text) then
        msgLabel.Text = "Correcta!! Iniciando script... ✅️"
        task.wait(1)
        iniciarScript()
    else
        msgLabel.Text = "Key incorrecta o vencida! ❌️"
    end
end)
