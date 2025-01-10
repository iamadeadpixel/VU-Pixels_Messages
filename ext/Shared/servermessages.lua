-- -------------------------------------
-- What ever it is what this do.
	Events:Subscribe('Level:LoadingInfo', function(screenInfo)
	if screenInfo ~= "Registering entity resources" then
	return
	end
end)

-- -------------------------------------

Events:Subscribe('Extension:Loaded', function()

-- -------------------------------------

-- Thank you IllustrisJack and Jassent for this code

local announcedPlayers = {}

	if Config.PlayerFirstSpawn then 
Events:Subscribe('Player:Respawn', function(player, recipientMask, message,info,yell)
	if spawnmessagecounter == nil then spawnmessagecounter=1 end
	-- Return if the player has been announced already
	if announcedPlayers[player.name] then
	return
	end

    -- The code after this point will only be called for new players that spawn
--    print("****************** first respawn event ****************");
spawnmessagetable = {
  (("Victim " .. player.name .. " has spawned in the server" )),
  (("" .. player.name .. " has spawned to woop some ass" )),
  (("Hide! " .. player.name .. " has spawned" )),
  (("Run and camp, " .. player.name .. " has entered the map" )),
  (("" .. player.name .. " spawned to act as cannon fodder" )),
  (("Fresh cannon fodder has spawned, his name is " .. player.name .. "" )),
}
   
	ChatManager:Yell("" .. spawnmessagetable[spawnmessagecounter].. "" , 3)
	spawnmessagecounter=spawnmessagecounter+1 if spawnmessagecounter==7 then spawnmessagecounter=1 end

    -- Add the player Id to the announcedPlayerIds table
    announcedPlayers[player.name] = true
end)
end

Events:Subscribe('Level:Destroy', function()
announcedPlayers = {}
end) 

-- -------------------------------------

	if Config.PlayerJoining then 
--	Events:Subscribe('Player:Joining', function(name)
	Events:Subscribe('Player:Joining', function(name, playerGuid, ipAddress, accountGuid)
	if joinmessagecounter == nil then joinmessagecounter=1 end
	print("****************** Join event " .. joinmessagecounter .. " ****************"); 
joinmessagetable = {
  (("" .. name .. " is joining the server" )),
  (("Victim " .. name .. " is joining the server" )),
  (("Hide! " .. name .. " is joining the server" )),
  (("Run and camp, " .. name .. " is joining the server" )),
  (("cannon fodder " .. name .. " is joining the server" )),
}
   
	print("** Server message on join: " .. joinmessagetable[joinmessagecounter]); -- What players see in game when a player joins the server
	ChatManager:SendMessage( (joinmessagetable[joinmessagecounter]) ) 
	   ChatManager:Yell("" .. joinmessagetable[joinmessagecounter].. "" , 2)
	joinmessagecounter=joinmessagecounter+1 if joinmessagecounter==6 then joinmessagecounter=1 end
		end)
end

-- -------------------------------------

	if Config.PlayerLeft then 
	Events:Subscribe('Player:Left', function(player)
	if leftmessagecounter == nil then leftmessagecounter=1 end
	print("****************** Left event " .. leftmessagecounter .. " ****************"); 
leftmessagetable = {
  (("Victim " .. player.name .. " has left in the server" )),
  (("" .. player.name .. " has left the server to do some boo boo" )),
  (("Bey!, " .. player.name .. " left the building" )),
}
   
	print("** Server message on leave: " .. leftmessagetable[leftmessagecounter]); -- What players see in game when a player leaves the server
	ChatManager:SendMessage( (leftmessagetable[leftmessagecounter]) ) 
	   ChatManager:Yell("" .. leftmessagetable[leftmessagecounter].. "" , 2)
	leftmessagecounter=leftmessagecounter+1 if leftmessagecounter==4 then leftmessagecounter=1 end
		end)
end

-- -------------------------------------

end)

