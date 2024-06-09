local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function TeleportTo(location)
    humanoid.Health = 0
    character:SetPrimaryPartCFrame(location)
    wait(2)
    humanoid.Health = humanoid.MaxHealth
end

while true do
    TeleportTo(Vector3.new(0, 1000, 0))
    wait(5)
end
