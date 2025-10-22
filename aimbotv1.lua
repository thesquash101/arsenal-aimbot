local function aimbot()
    local target = nil
    local maxDistance = 1000
    local closestDistance = maxDistance + 1
    
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.Humanoid.Health > 0 then
            local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            
            if distance <= maxDistance and distance < closestDistance then
                closestDistance = distance
                target = player
            end
        end
    end
    
   
    if target then
        local aimDirection = (target.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).unit
        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, game.Workspace.CurrentCamera.CFrame.Position + aimDirection)
    end
end


while true do
    aimbot()
    wait(0.1)
end
