-- -------------

Events:Subscribe('Extension:Loaded', function()

	if Config.PlayerSuicide then 
Events:Subscribe('Player:Killed', function(p_Player, p_Inflictor, p_Position, p_Weapon, p_IsRoadKill, p_IsHeadShot, p_WasVictimInReviveState, p_Info)
	
	local args = {p_Player.name, p_Player.teamId, p_Player.squadId}
	local s_Inflictor
	
	if p_Inflictor ~= nil then
		s_Inflictor = p_Inflictor
	else
		s_Inflictor = p_Player
	end
		
	args[4] = s_Inflictor.name
	if s_Inflictor.controlledControllable ~= nil and s_Inflictor.controlledControllable.data:Is("VehicleEntityData") then
		args[7] = vehicleTable[VehicleEntityData(s_Inflictor.controlledControllable.data).controllableType:gsub(".+/.+/","")]


    elseif p_Info.weaponUnlock ~= nil then
			args[7] = weaponTable[_G[p_Info.weaponUnlock.typeInfo.name](p_Info.weaponUnlock).debugUnlockId]
		end

-- for console spam testing only to see if the shit is working
--	print("***********  Weapon event - SUICIDES - ***********");  
--	print (args[7])

-- ------------------------------------------------------

	if Config.PlayerSuicideC4 then 
	if C4suicidecounter == nil then C4suicidecounter=1 end
	if args[7] == "[C4 EXPLOSIVES]" and args[4] == args[1] then
C4suicidetable = {
  ((args[4] .. " has found his own secret C4 easteregg" )),
  ((args[4] .. " was closer to his C4 package as he tought" )),
  ((args[4] .. " blew himself up with C4 " )),
  ((args[4] .. " forgot to run from his own C4" )), 
  ((args[4] .. " did a Holy shit on him self with C4 " )),
  ((args[4] .. " posted a selfie with his C4 exploded head on facebook" )),
}
--	print("****************** player suicide event (C4) ****************");  
	ChatManager:SendMessage( (C4suicidetable[C4suicidecounter]), p_Inflictor )
	C4suicidecounter=C4suicidecounter+1 if C4suicidecounter==7 then C4suicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideM67 then 
	if M67suicidecounter == nil then M67suicidecounter=1 end
	if args[7] == "[M67 GRENADE]" and args[4] == args[1] then
M67suicidetable = {
  ((args[4] .. " try to be faster next time dodging your own grenade" )),
  ((args[4] .. " has found his own secret M67 easteregg" )),
  ((args[4] .. " wasnt fast enough,his grenade was faster" )),
  ((args[4] .. " try next time to be not so slow" )),
  ((args[4] .. " did a Holy shit on him self with a grenade" )),
}
--	print("****************** player suicide event (NADE) ****************");  
	ChatManager:SendMessage( (M67suicidetable[M67suicidecounter]), p_Inflictor )
	M67suicidecounter=M67suicidecounter+1 if M67suicidecounter==6 then M67suicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideRPG then 
	if RPGsuicidecounter == nil then RPGsuicidecounter=1 end
	if args[7] == "[RPG-7V2]" or args[7] == "[SMAW]" and args[4] == args[1] then
RPGsuicidetable = {
  ((args[4] .. " has found his own secret RPG easteregg" )),
  ((args[4] .. " was closer to the RPG explosion has he tought" )),
  ((args[4] .. " blew himself up with his misplaced RPG" )),
  ((args[4] .. " forgot to run from the RPG explosion" )),
  ((args[4] .. " did a Holy shit on him self with some welplaced RPG explosion" )),
}
--	print("****************** player suicide event (SMAW) ****************");  
	ChatManager:SendMessage( (RPGsuicidetable[RPGsuicidecounter]), p_Inflictor )
	RPGsuicidecounter=RPGsuicidecounter+1 if RPGsuicidecounter==6 then RPGsuicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideRepairTool then 
	if Repairtoolsuicidecounter == nil then Repairtoolsuicidecounter=1 end
	if args[7] == "[REPAIR TOOL]" and args[4] == args[1] then
Repairtoolsuicidetable = {
  (("Repairing a vehicle can backfire, ") .. args[4] .. (" knows now why" )),
  ((args[4] .. "is singing ,ups i torched me again" )),
  (("setting a vehicle on fire is cool,next time dont be so close when it goes BOOM ") .. args[4] .. (" !" )),
}
--	print("****************** player suicide event (Repair tools) ****************");  
	ChatManager:SendMessage( (Repairtoolsuicidetable[Repairtoolsuicidecounter]), p_Inflictor )
	Repairtoolsuicidecounter=Repairtoolsuicidecounter+1 if Repairtoolsuicidecounter==4 then Repairtoolsuicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideXBOW then 
	if XBOWsuicidecounter == nil then XBOWsuicidecounter=1 end
	if args[7] == "[XBOW]" and args[4] == args[1] then
XBOWsuicidetable = {
  ((args[4] .. " has found his own secret crossbow easteregg" )),
  ((args[4] .. " was closer to the crossbow HE bold explosion as he tought" )),
  ((args[4] .. " blew himself up with his misplaced HE bold" )),
  ((args[4] .. " forgot to run from the HE bold crossbow explosion" )),
  ((args[4] .. " did a alah hackbar on himself with the crossbow" )),
  ((args[4] .. " did a William Tell on him self, and failed, OOPS" )),
}
--	print("****************** player suicide event (XBOW) ****************");  
	ChatManager:SendMessage( (XBOWsuicidetable[XBOWsuicidecounter]), p_Inflictor )
	XBOWsuicidecounter=XBOWsuicidecounter+1 if XBOWsuicidecounter==5 then XBOWsuicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideM220 then 
	if M220suicidecounter == nil then M220suicidecounter=1 end
	if args[7] == "[M220 TOW LAUNCHER]" or args[7] == "[9M133 KORNET LAUNCHER]" and args[4] == args[1] then
--	print("****************** player suicide event (Wire guided Rocket) ****************");  
M220suicidetable = {
  ((args[4] .. " forgot that his TOW rocket also can kill him to" )),
  ((args[4] .. " did a shoot and forget with the TOW, and was to close to the impact zone" )),
  ((args[4] .. " noticed the shiny star, ow wait........" )),
}
	ChatManager:SendMessage( (M220suicidetable[M220suicidecounter]), p_Inflictor )
	M220suicidecounter=M220suicidecounter+1 if M220suicidecounter==4 then M220suicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideM15 then 
	if M15suicidecounter == nil then M15suicidecounter=1 end
	if args[7] == "[M15 AT MINE]" and args[4] == args[1] then
M15suicidetable = {
  ((args[4] .. " has found his own secret M15 AT mine easteregg" )),
  ((args[4] .. " was closer to his M15 AT mine as he tought" )),
  ((args[4] .. " blew himself up with his misplaced M15 AT mine" )),
  ((args[4] .. " forgot to run from the M15 AT mine explosion" )),
  ((args[4] .. " did a Holy shit on him self with some welplaced M15 AT mine" )),
}
--	print("****************** player suicide event (M15 AT MINE) ****************");  
	ChatManager:SendMessage( (M15suicidetable[M15suicidecounter]), p_Inflictor )
	M15suicidecounter=M15suicidecounter+1 if M15suicidecounter==6 then M15suicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideM18 then 
	if M18suicidecounter == nil then M18suicidecounter=1 end
	if args[7] == "[M18 CLAYMORE]" and args[4] == args[1] then
M18suicidetable = {
  ((args[4] .. " has found his own secret claymore easteregg" )),
  ((args[4] .. " was closer to his claymore as he tought" )),
  ((args[4] .. " blew himself up with his misplaced claymore" )),
  ((args[4] .. " forgot to run from his own claymore explosion" )),
  ((args[4] .. " did a Holy shit on him self with some misplaced claymore" )),
}
--	print("****************** player suicide event (M18 CLAYMORE) ****************");  
	ChatManager:SendMessage( (M18suicidetable[M18suicidecounter]), p_Inflictor )
	M18suicidecounter=M18suicidecounter+1 if M18suicidecounter==6 then M18suicidecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerSuicideM224 then 
	if M224suicidecounter == nil then M224suicidecounter=1 end
	if args[7] == "[M224 MORTAR]" and args[4] == args[1] then
M224suicidetable = {
  (("* plop * plop * ,BOOM ! ,your shell exploded to close to you ") .. args[4] .. ("" )),
  ((args[4] .. " has found his own secret M224 Mortar shell easteregg" )),
  ((args[4] .. " did a Holy shit on him self with the M224 Mortar" )),
  ((args[4] .. " was closer to his M224 mortar shell as he tought" )),
}
--	print("****************** player suicide event (M224 MORTAR) ****************");  
	ChatManager:SendMessage( (M224suicidetable[M224suicidecounter]), p_Inflictor )
	M224suicidecounter=M224suicidecounter+1 if M224suicidecounter==5 then M224suicidecounter=1 end
end
end

-- ---------------------------

	if Config.PlayerSuicideM320 then 
	if M320HEsuicidecounter == nil then M320HEsuicidecounter=1 end
	if args[7] == "[M320]" and args[4] == args[1] then
M320HEsuicidetable = {
  ((args[4] .. " has found his own secret M320 easteregg" )),
  ((args[4] .. " was closer to his M320 shell as he tought" )),
  ((args[4] .. " blew himself up with the M320" )),
  ((args[4] .. " forgot to run from his own M320 explosion" )),
  ((args[4] .. " did a Holy shit on him self with the M320" )),
}
--	print("****************** player suicide event (M320) ****************");  
	ChatManager:SendMessage( (M320HEsuicidetable[M320HEsuicidecounter]), p_Inflictor )
	M320HEsuicidecounter=M320HEsuicidecounter+1 if M320HEsuicidecounter==6 then M320HEsuicidecounter=1 end
end
end

-- ---------------------------

	if Config.PlayerSuicideM320 then 
	if M320LVGsuicidecounter == nil then M320LVGsuicidecounter=1 end
	if args[7] == "[M320 LVG]" and args[4] == args[1] then
M320LVGsuicidetable = {
  ((args[4] .. " has found his own secret M320LVG easteregg" )),
  ((args[4] .. " was closer to his M320LVG shell as he tought" )),
  ((args[4] .. " blew himself up with the M320LVG" )),
  ((args[4] .. " forgot to run from his own M320LVG explosion" )),
  ((args[4] .. " did a Holy shit on him self with the M320LVG" )),
}
--	print("****************** player suicide event (M320LVG) ****************");  
	ChatManager:SendMessage( (M320LVGsuicidetable[M320LVGsuicidecounter]), p_Inflictor )
	M320LVGsuicidecounter=M320LVGsuicidecounter+1 if M320LVGsuicidecounter==6 then M320LVGsuicidecounter=1 end
end
end

-- ---------------------------

	if Config.PlayerSuicideM320 then 
	if GP30suicidecounter == nil then GP30suicidecounter=1 end
	if args[7] == "[GP-30]" and args[4] == args[1] then
GP30suicidetable = {
  ((args[4] .. " has found his own secret GP-30 easteregg" )),
  ((args[4] .. " was closer to his GP-30 shell as he tought" )),
  ((args[4] .. " blew himself up with the GP-30" )),
  ((args[4] .. " forgot to run from his own GP-30 explosion" )),
  ((args[4] .. " did a Holy shit on him self with the GP-30" )),
}
--	print("****************** player suicide event (GP-30) ****************");  
	ChatManager:SendMessage( (GP30suicidetable[GP30suicidecounter]), p_Inflictor )
	GP30suicidecounter=GP30suicidecounter+1 if GP30suicidecounter==6 then GP30suicidecounter=1 end
end
end

-- ---------------------------

	if Config.PlayerSuicideM320 then 
	if GP30LVGsuicidecounter == nil then GP30LVGsuicidecounter=1 end
	if args[7] == "[GP-30 LVG]" and args[4] == args[1] then
GP30LVGsuicidetable = {
  ((args[4] .. " has found his own secret GP-30 LVG easteregg" )),
  ((args[4] .. " was closer to his GP-30 LVG shell as he tought" )),
  ((args[4] .. " blew himself up with the GP-30 LVG" )),
  ((args[4] .. " forgot to run from his own GP-30 LVG explosion" )),
  ((args[4] .. " did a Holy shit on him self with the GP-30 LVG" )),
}
--	print("****************** player suicide event (GP-30 LVG) ****************");  
	ChatManager:SendMessage( (GP30LVGsuicidetable[GP30LVGsuicidecounter]), p_Inflictor )
	GP30LVGsuicidecounter=GP30LVGsuicidecounter+1 if GP30LVGsuicidecounter==6 then GP30LVGsuicidecounter=1 end
end
end

-- ---------------------------

	if Config.PlayerSuicideM320 then 
	if M26FRAGsuicidecounter == nil then M26FRAGsuicidecounter=1 end
	if args[7] == "[M26 FRAG]" and args[4] == args[1] then
M26FRAGsuicidetable = {
  ((args[4] .. " has found his own secret M26 FRAG easteregg" )),
  ((args[4] .. " was closer to his M26 FRAG shell as he tought" )),
  ((args[4] .. " blew himself up with the M26 FRAG" )),
  ((args[4] .. " forgot to run from his own M26 FRAG explosion" )),
  ((args[4] .. " did a Holy shit on him self with the M26 FRAG" )),
}
--	print("****************** player suicide event (M26 FRAG) ****************");  
	ChatManager:SendMessage( (M26FRAGsuicidetable[M26FRAGsuicidecounter]), p_Inflictor )
	M26FRAGsuicidecounter=M26FRAGsuicidecounter+1 if M26FRAGsuicidecounter==6 then M26FRAGsuicidecounter=1 end
end
end

--

end)
end
--
end)
