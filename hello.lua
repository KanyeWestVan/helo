pcall(function()
_G.CharScript:Disconnect()
end)
local On = true
_G.InsertGear = function(Id, Name)
    if not game.Players.LocalPlayer.Backpack:FindFirstChild(Name) and not game.Players.LocalPlayer.Character:FindFirstChild(Name) then
        game:GetService("ReplicatedStorage").Remotes.ToggleAsset:InvokeServer(Id)
    end
end
_G.Hint = function(Text, Time)
    local H = Instance.new('Hint', game.Workspace)
    H.Name = 'Hint'
    H.Text = Text
    game.Debris:AddItem(game.Workspace.Hint,Time)
end

if On then
_G.InsertGear(17680660, 'BatKnightBatSword')
game.Players.LocalPlayer.Backpack:WaitForChild('BatKnightBatSword')
Chr = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Backpack.BatKnightBatSword.Parent = Chr
Chr.BatKnightBatSword.Server.BatTransform.DisableBackpack:Destroy()
Chr.BatKnightBatSword.Remote:FireServer(Enum.KeyCode.Q)
wait()
Chr.BatKnightBatSword.Parent = game.Players.LocalPlayer.Backpack
wait(0.5)
Chr.Humanoid.JumpPower = 50
Chr.Humanoid.AutoRotate = true
wait()
if Chr:FindFirstChild('ForceField') then
    _G.Hint('FF Was A Success', 5)
end

_G.CharScript =
game.Players.LocalPlayer.CharacterAdded:Connect(function(Chr)
    local Start = tick()
    pcall(function()
    repeat 
        wait()
    until (tick()-Start) >= 3 or game.Players.LocalPlayer.Backpack:FindFirstChild('BatKnightBatSword')
    end)
    if game.Players.LocalPlayer.Backpack:FindFirstChild('BatKnightBatSword') then
        game.Players.LocalPlayer.Backpack.BatKnightBatSword.Parent = Chr
        Chr:WaitForChild('BatKnightBatSword').Server.BatTransform.DisableBackpack:Destroy()
        Chr.BatKnightBatSword.Remote:FireServer(Enum.KeyCode.Q)
        wait()
        Chr.BatKnightBatSword.Parent = game.Players.LocalPlayer.Backpack
        wait(0.5)
        Chr.Humanoid.JumpPower = 50
        Chr.Humanoid.AutoRotate = true
        wait()
        if Chr:FindFirstChild('ForceField') then
            _G.Hint('FF Was A Success', 5)
        end
    else
        _G.InsertGear(17680660, 'BatKnightBatSword')
        game.Players.LocalPlayer.Backpack:WaitForChild('BatKnightBatSword')
        game.Players.LocalPlayer.Backpack.BatKnightBatSword.Parent = Chr
        Chr:WaitForChild('BatKnightBatSword').Server.BatTransform.DisableBackpack:Destroy()
        Chr.BatKnightBatSword.Remote:FireServer(Enum.KeyCode.Q)
        Chr.BatKnightBatSword.Parent = game.Players.LocalPlayer.Backpack
        wait(0.5)
        Chr.Humanoid.JumpPower = 50
        Chr.Humanoid.AutoRotate = true
        wait()
        if Chr:FindFirstChild('ForceField') then
            _G.Hint('FF Was A Success', 5)
        end
    end
end)
else
    return
end
