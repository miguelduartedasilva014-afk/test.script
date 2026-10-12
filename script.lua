-- =========================================================================
-- DELTA SCRIPT OFICIAL: VERSÃO v1.3 - EDIÇÃO HOMELANDER & BOOMBOX
-- HOSPEADADO COM SEGURANÇA NO GITHUB
-- =========================================================================

local OrionLib = loadstring(game:HttpGet(('https://githubusercontent.com')))()
local Window = OrionLib:MakeWindow({
    Name = "Homelander Menu v1.3", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "MeuDeltaScript"
})

local Tab = Window:MakeTab({
    Name = "Poderes do Capitão Pátria",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- 1. SUPER PULO
Tab:AddButton({
    Name = "⚡ Ativar Super Pulo (Altíssimo)",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = 150
            player.Character.Humanoid.UseJumpPower = true
        end
    end    
})

-- 2. MODO VOO DO HOMELANDER (Super Rápido)
Tab:AddButton({
    Name = "🕊️ Voo do Homelander (Aperte E para voar)",
    Callback = function()
        loadstring(game:HttpGet("https://githubusercontent.com"))()
        -- Ajusta a velocidade de voo para parecer o Capitão Pátria se a biblioteca permitir
        pcall(function() game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://0" end)
    end    
})

-- 3. VISÃO DE LASER DO HOMELANDER (Laser Eyes)
Tab:AddButton({
    Name = "👁️ Ativar Visão de Raio Laser (Clique para queimar)",
    Callback = function()
        -- Carrega o script clássico de Laser Eyes da comunidade no seu boneco
        loadstring(game:HttpGet("https://githubusercontent.com"))()
        OrionLib:MakeNotification({Name = "Homelander", Content = "Visão de Laser Ativada! Olhe e clique nos alvos.", Time = 3})
    end    
})

-- 4. BOOMBOX (Rádio de Música)
Tab:AddButton({
    Name = "📻 Pegar Boombox (Rádio de Música)",
    Callback = function()
        -- Vasculha os arquivos do jogo atrás de caixas de som ou ferramentas de áudio
        local player = game.Players.LocalPlayer
        local found = false
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("Tool") and (v.Name:lower():match("boombox") or v.Name:lower():match("radio")) then
                v:Clone().Parent = player.Backpack
                found = true
            end
        end
        
        -- Se o jogo não tiver um rádio nativo, ele injeta um player de áudio na sua tela
        if not found then
            loadstring(game:HttpGet("https://githubusercontent.com"))()
        end
        OrionLib:MakeNotification({Name = "Boombox", Content = "Rádio adicionado ao seu inventário!", Time = 3})
    end    
})

-- 5. FERRAMENTA DE CONSTRUÇÃO (BTools)
Tab:AddButton({
    Name = "🛠️ Pegar Ferramenta de Construção (BTools F3X)",
    Callback = function()
        loadstring(game:HttpGet("https://githubusercontent.com"))()
    end    
})

-- 6. TRANSFORMAÇÃO LOCUSTO
Tab:AddButton({
    Name = "👹 Virar o Locusto Gigante",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        if char and char:FindFirstChild("Humanoid") then
            if char:FindFirstChild("BodyColors") then
                char.BodyColors.LeftArmColor3 = Color3.fromRGB(50, 0, 0)
                char.BodyColors.RightArmColor3 = Color3.fromRGB(50, 0, 0)
                char.BodyColors.TorsoColor3 = Color3.fromRGB(20, 20, 20)
            end
            if char.Humanoid:FindFirstChild("BodyHeightScale") then
                char.Humanoid.BodyHeightScale.Value = 2.5
                char.Humanoid.BodyWidthScale.Value = 2.0
                char.Humanoid.BodyDepthScale.Value = 2.0
            end
        end
    end    
})

-- 7. TELEPORTE PARA O VOID
Tab:AddButton({
    Name = "🌌 Fugir para o Void (Limbo)",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(0, -500, 0)
        end
    end    
})

OrionLib:MakeNotification({
    Name = "Script Atualizado v1.3!",
    Content = "Edição Homelander pronta no seu GitHub!",
    Time = 5
})
