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
