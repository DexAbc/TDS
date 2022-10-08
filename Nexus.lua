repeat wait(1) until game:IsLoaded()
if game.PlaceId == 5591597781 then
    local p = game.Players.LocalPlayer:WaitForChild("PlayerGui",60):WaitForChild("GameGui",60):WaitForChild("Results",60)
    repeat wait(1) until p.Visible == true
    Nexus:SetRelaunch(0)
    game:shutdown()
end
