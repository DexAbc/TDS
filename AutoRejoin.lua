local averageGameTime = 12 --In minutes
local function Rejoin()
if game.PlaceId == 5591597781 then--support for other games
game:GetService("TeleportService"):Teleport(3260590327)
else
game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
end
end
local lobbyKickTime = 5*30 --5 minutes, dont need to change
local gameKickTime = averageGameTime*60 --dont change, convertes minutes to seconds
spawn(function()
if game.PlaceId == 3260590327 then --in lobby
    wait(lobbyKickTime)
    Rejoin()
elseif game.PlaceId == 5591597781 then --in game
    wait(gameKickTime+180)--3 minute for bad rng
    Rejoin()
end
end)
local Dir = game:GetService("CoreGui"):WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay")
	Dir.DescendantAdded:Connect(function(Err)
	Rejoin()
	end)
if #Dir:GetChildren()>0 then
     Rejoin()
end
