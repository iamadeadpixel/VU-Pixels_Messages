
Events:Subscribe('Extension:Loaded', function()

-- -------------------------------------

	if Config.CapturePointCaptured then -- Tempory disabled for editing
    Events:Subscribe('CapturePoint:Captured', function(capturePoint)
		ChatManager:SendMessage("MANAGER ! A team took the flagpoint 0") -- lets see if it works

function GetPlayerRelation(p_LocalPlayerTeam, p_LocalPlayerSquad, p_PlayerTeam, p_PlayerSquad)


	print("****************** CapturePoint CAPTURED event ****************"); -- Should spam in console window,Should, but does nothing yet
		ChatManager:SendMessage("CAPTURED ! A team took the flagpoint ")

	if p_PlayerTeam == 2 then p_teamId = "Russian team"
  	print("****************** Team Russia CAPTURED event ****************"); 
		ChatManager:SendMessage(  p_teamId .. " took captured a flagpoint ")
end

	if p_PlayerTeam == 1 then p_teamId = "American team"
  	print("****************** Team Yankee CAPTURED event ****************"); 
		ChatManager:SendMessage(  p_teamId .. " took captured a flagpoint ")

end
end
end)

end -- Belongs to Config.CapturePointCaptured event, disabled for now
-- -------------------------------------

end) -- Belongs to Extension:Loaded event

