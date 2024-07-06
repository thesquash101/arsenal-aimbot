-- Aimbot Script for Arsenal

-- Function to calculate aim
local function aimbot()
    local target = nil
    local maxDistance = 1000 -- Maximum distance to consider a target
    local closestDistance = maxDistance + 1
    
    -- Loop through all players in the game
    for _, player in ipairs(game.Players:GetPlayers()) do
        -- Ensure the player is not the local player and is alive
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.Humanoid.Health > 0 then
            -- Calculate distance to the player
            local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            
            -- Check if the player is within range and closest so far
            if distance <= maxDistance and distance < closestDistance then
                closestDistance = distance
                target = player
            end
        end
    end
    
    -- If a valid target is found, aim at it
    if target then
        -- Calculate the aim direction towards the target
        local aimDirection = (target.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).unit
        -- Adjust the camera's look vector to aim at the target
        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, game.Workspace.CurrentCamera.CFrame.Position + aimDirection)
    end
end

-- Main loop to continuously aim
while true do
    aimbot()
    wait(0.1) -- Adjust the interval as needed
end
