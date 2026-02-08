-- =========================
-- 🔐 KEY SYSTEM (START)
-- =========================

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local UserId = tostring(player.UserId)
local HttpService = game:GetService("HttpService")

local KEYS_URL = "https://raw.githubusercontent.com/vzloman711/auto-farm/refs/heads/main/keys.txt"

local function isKeyValid(inputKey)
    local success, response = pcall(function()
        return game:HttpGet(KEYS_URL)
    end)
    if not success then return false end

    for line in response:gmatch("[^\r\n]+") do
        local key, uid = line:match("^(.-)|(.+)$")
        if key and uid then
            if key == inputKey and uid == UserId then
                return true
            end
        end
    end
    return false
end

-- GUI
local ScreenGui = Instance.new("ScreenGui", player.PlayerGui)
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 10000

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 420, 0, 220)
Main.Position = UDim2.new(0.5, -210, 0.5, -110)
Main.BackgroundColor3 = Color3.fromRGB(0,0,0)
Instance.new("UICorner", Main).CornerRadius = UDim.new(0,15)

local Bar = Instance.new("Frame", Main)
Bar.Size = UDim2.new(1,0,0,35)
Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)
Instance.new("UICorner", Bar).CornerRadius = UDim.new(0,15)

local Title = Instance.new("TextLabel", Bar)
Title.Size = UDim2.new(1,0,1,0)
Title.BackgroundTransparency = 1
Title.Text = "Auto Farm Anti RK ⚠️BETA⚠️"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

local Input = Instance.new("TextBox", Main)
Input.PlaceholderText = "Ingresá tu key"
Input.Size = UDim2.new(0.6,0,0,40)
Input.Position = UDim2.new(0.05,0,0.45,0)
Input.BackgroundColor3 = Color3.fromRGB(80,80,80)
Input.TextColor3 = Color3.new(1,1,1)
Input.Font = Enum.Font.SourceSansBold
Input.TextSize = 18
Instance.new("UICorner", Input).CornerRadius = UDim.new(0,10)

local Button = Instance.new("TextButton", Main)
Button.Text = "Check Key"
Button.Size = UDim2.new(0.6,0,0,40)
Button.Position = UDim2.new(0.05,0,0.7,0)
Button.BackgroundColor3 = Color3.fromRGB(255,0,0)
Button.TextColor3 = Color3.new(1,1,1)
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 20
Instance.new("UICorner", Button).CornerRadius = UDim.new(0,10)

local Msg = Instance.new("TextLabel", Main)
Msg.Size = UDim2.new(0.6,0,0,25)
Msg.Position = UDim2.new(0.05,0,0.85,0)
Msg.BackgroundTransparency = 1
Msg.TextColor3 = Color3.new(1,1,1)
Msg.Font = Enum.Font.SourceSansBold
Msg.TextSize = 16

local Contact = Instance.new("Frame", Main)
Contact.Size = UDim2.new(0.3,0,0.5,0)
Contact.Position = UDim2.new(0.68,0,0.35,0)
Contact.BackgroundTransparency = 1

local C1 = Instance.new("TextLabel", Contact)
C1.Size = UDim2.new(1,0,0.5,0)
C1.BackgroundTransparency = 1
C1.Text = "si tenes algún error\ncontactame por tiktok!"
C1.TextWrapped = true
C1.TextColor3 = Color3.new(1,1,1)
C1.Font = Enum.Font.SourceSansBold
C1.TextSize = 14

local C2 = Instance.new("TextLabel", Contact)
C2.Position = UDim2.new(0,0,0.55,0)
C2.Size = UDim2.new(1,0,0.4,0)
C2.BackgroundTransparency = 1
C2.Text = "vz_loman._"
C2.TextColor3 = Color3.fromRGB(255,0,0)
C2.Font = Enum.Font.SourceSansBold
C2.TextSize = 18

local unlocked = false

Button.MouseButton1Click:Connect(function()
    if isKeyValid(Input.Text) then
        Msg.Text = "Correcta, iniciando  script... ✅️"
        unlocked = true
        task.wait(1)
        ScreenGui:Destroy()
    else
        Msg.Text = "Contraseña invalida o vencida ❌️"
    end
end)

repeat task.wait() until unlocked

-- =========================
-- 🔓 KEY SYSTEM (END)
-- =========================

-- ⬇️⬇️⬇️
-- AQUÍ ARRANCA TU SCRIPT ORIGINAL
-- (NO TOCADO)
-- ⬇️⬇️⬇️
