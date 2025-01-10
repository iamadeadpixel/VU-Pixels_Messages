-- --------------------
Events:Subscribe('Extension:Loaded', function()

	if Config.PlayerKilled then 
Events:Subscribe('Player:Killed', function(p_Player, p_Inflictor, p_Position, p_Weapon, p_IsRoadKill, p_IsHeadShot, p_WasVictimInReviveState, p_Info)
	
	local args = {p_Player.name, p_Player.teamId, p_Player.squadId}
	local s_Inflictor
	
	if p_Inflictor ~= nil then
		s_Inflictor = p_Inflictor
	else
		s_Inflictor = p_Player
	end
		
	args[4] = s_Inflictor.name
	args[5] = s_Inflictor.teamId
	args[6] = s_Inflictor.squadId
	
	if p_Player.name == s_Inflictor.name then
		
		if p_Weapon == "Death" or p_Weapon == "DamageArea" or p_Weapon == "SoldierCollision" then
			args[7] = "IS NO MORE"
		else
			args[7] = "SUICIDE"
		end
		
	elseif p_Player.teamId == s_Inflictor.teamId then
		args[7] = "TEAMKILL"

	elseif s_Inflictor.controlledControllable ~= nil and s_Inflictor.controlledControllable.data:Is("VehicleEntityData") then
		args[7] = vehicleTable[VehicleEntityData(s_Inflictor.controlledControllable.data).controllableType:gsub(".+/.+/","")]
	else
		if p_Weapon == "Death" or p_Weapon == "DamageArea" or p_Weapon == "SoldierCollision" then
			args[7] = "KILLED"
		elseif p_Info.weaponUnlock ~= nil then
			args[7] = weaponTable[_G[p_Info.weaponUnlock.typeInfo.name](p_Info.weaponUnlock).debugUnlockId]
		else
		
			args[7] = p_Weapon
		end
	end
	
	args[8] = p_IsRoadKill
	args[9] = p_IsHeadShot
	args[10] = p_WasVictimInReviveState
	
-- for console spam testing only to see if the shit is working
--	print("***********  Weapon event - KILLS -  ***********");  
--	print (args[7])

-- ------------------------------------------------------

	if Config.PlayerKilledC4 then
	if C4counter == nil then C4counter=1 end
	if args[7] == "[C4 EXPLOSIVES]" and args[4] ~= args[1] then
C4killtable = {
  ((args[1] .. " received a instagram message from ") .. args[4] .. (", nice C4 kill!" )),
  ((args[4] .. " posted a instagram message to ") .. args[1] .. (", nice C4 kill!" )),
  (("Yes, you are correct, ")  .. args[4] .. (" posted a instagram message for ") .. args[1] .. (", nice C4 kill!" )),
  (("Your body can pick up bad vibrations ") .. args[1] .. (", or was it ") .. args[4] .. ("'s C4 ?")),
  ((args[1] .. " can be scratched of the wall thanks to ") .. args[4] .. ("'s C4")),
  ((args[1] .. " has found the C4 easteregg from ") .. args[4] .. ("")),
  ((args[1] .. " loves hugging ") .. args[4] .. ("'s C4")),
  ((args[4] .. " has delivered a express package C4 to ") .. args[1] .. (", sended by TNT")),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with holy C4")),
  ((args[4] .. " * clicked * and the C4 went booom on ") .. args[1] .. ("")),
  ((args[4] .. " posted his last C4 kill on ") .. args[1] .. ("'s facebooks page")),
  ((args[4] .. " is singing Britney Spears, ups ") .. args[1] .. (", my C4 did it again")),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s C4")),
}
--	print("****************** player got killed event (C4) ****************");  
	ChatManager:SendMessage( (C4killtable[C4counter]), p_Player )
	ChatManager:SendMessage( (C4killtable[C4counter]), p_Inflictor )
	C4counter=C4counter+1 if C4counter==14 then C4counter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM67 then
	if M67counter == nil then M67counter=1 end
	if args[7] == "[M67 GRENADE]" and args[4] ~= args[1] then
M67killtable = {
  ((args[1] .. " has found the grenade easteregg from ") .. args[4] .. ("" )),
  ((args[1] .. " loves hugging ") .. args[4] .. (" 's grenade" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a aimed grenade in the face" )),
  ((args[4] .. " sliced ") .. args[1] .. (" in 2 with a well placed grenade explosion in his pants" )),
  ((args[1] .. " is taking long break to collect all body parts that where blown away with ") .. args[4] .. ("'s grenade" )),
  ((args[1] .. " was confused, a grenade is not a M&M" )),
  ((args[4] .. " kill on ") .. args[1] .. (" with a grenade, that must hurt your feelings !" )),
  (("why not have a grenade mold made of your anus ") .. args[1] .. ("" )),
  (("Can you show me where my grenade hurts you ") .. args[1] .. (" ?" )),
  ((args[4] .. " posted his last grenade kill on ") .. args[1] .. ("'s phone" )),
  (("Question: what is for ") .. args[4] .. (" a must to do, for having a grenade kill on ") .. args[1] .. ("" )),
  (("Have you ever been so wildly attracted to someone's grenade ") .. args[1] .. (" ?" )),
  ((args[4] .. " is singing Britney Spears, ups my grenade did it again.." )),
  (("MULTIKILL !!!,oh wait, it is ") .. args[1] .. ("'s body only" )),
  (("Your age doesn't define your maturity ") .. args[1] .. (", but i know ") .. args[4] .. ("'s grenade ended it." )),
  (("There is a chinese restaurant next door, thanks to ") .. args[4] .. ("'s grenade they have you balls now ") .. args[1] .. ("." )),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s grenade" )),
  (("If something deep inside of you says something is not right ") .. args[1] .. (", it is prolly's ") .. args[4] .. ("'s grenade." )),
  (("When you're in a relationship with me, you also can hugg my grenade ") .. args[1] .. ("." )),
  (("The object to your left has going up your ass ") .. args[1] .. (", how bad is the damage?" )),
  (("Name something that makes you horney ") .. args[1] .. (" ? ,whas it ") .. args[4] .. ("'s grenade ?" )),
  (("Sometimes ") .. args[1] .. (" ,you just need to distance yourself from people, why not from ") .. args[4] .. ("'s grenade ?" )),
  (("See ") .. args[1] .. (", you CAN put a grenade in your ass ,") .. args[4] .. (" just proved that." )),
}
--	print("****************** player got killed event (NADE) ****************");  
	ChatManager:SendMessage( (M67killtable[M67counter]), p_Player )
	ChatManager:SendMessage( (M67killtable[M67counter]), p_Inflictor )
	M67counter=M67counter+1 if M67counter==24 then M67counter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM15 then
	if M15counter == nil then M15counter=1 end
	if args[7] == "[M15 AT MINE]" and args[4] ~= args[1] then
M15killtable = {
  ((args[1] .. " is singing, blow me up with your M15 AT Mine" )),
  ((args[1] .. " can be scratched of the floor, Nasty things those M15 AT Mines" )),
  ((args[1] .. " need to look for new glasses, you didnt see the M15 AT Mine ?" )),
  ((args[4] .. " sliced ") .. args[1] .. (" vehicle in 2 with a well placed M15 AT Mine" )),
  ((args[4] .. " did a BOOOOM on ") .. args[1] .. ("'s vehicle with a AT Mine" )),
}
--	print("****************** player got killed event (M15 AT MINE) ****************");  
	ChatManager:SendMessage( (M15killtable[M15counter]), p_Player )
	ChatManager:SendMessage( (M15killtable[M15counter]), p_Inflictor )
	M15counter=M15counter+1 if M15counter==6 then M15counter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM18 then
	if M18counter == nil then M18counter=1 end
	if args[7] == "[M18 CLAYMORE]" and args[4] ~= args[1] then
M18killtable = {
  ((args[1] .. " loves hugging ") .. args[4] .. ("'s claymore" )),
  ((args[1] .. " need glasses, he keeps tripping over ") .. args[4] .. ("'s claymore" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a nice hidden claymore" )),
  ((args[4] .. " sliced ") .. args[1] .. (" in 2 with a well placed claymore" )),
  ((args[4] .. " posted his last claymore kill on ") .. args[1] .. ("'s facebook page" )),
  (("Your age doesn't define your maturity ") .. args[1] .. (", but i know ") .. args[4] .. ("'s claymore ended it" )),
  (("Never discredit your gut instinct ") .. args[1] .. (" when you walk over ") .. args[4] .. ("'s claymore" )),
  (("Your body can pick up bad vibrations ") .. args[1] .. (", or was it ") .. args[4] .. ("'s claymore ?" )),
}
--	print("****************** player got killed event (M18 Claymore) ****************");  
	ChatManager:SendMessage( (M18killtable[M18counter]), p_Player )
	ChatManager:SendMessage( (M18killtable[M18counter]), p_Inflictor )
	M18counter=M18counter+1 if M18counter==9 then M18counter=1 end
end
end

-- ------------------------------------------------------
	
	if Config.PlayerKilledRepairTool then
	if RepairToolcounter == nil then RepairToolcounter=1 end
	if args[7] == "[REPAIR TOOL]" and args[4] ~= args[1] then
RepairToolkilltable = {
  ((args[1] .. " is singing, tourch me one more time ") .. args[4] .. ("" )),
  (("That burning sensation you feel ") .. args[1] .. (", is ") .. args[4] .. (" seting your body on fire" )),
  ((args[1] .. " hugged again ") .. args[4] .. ("'s repair tool" )),
  (("BURN ! BURN ! MO$%&#$, ") .. args[1] .. (", is crying as a baby, thanks to ") .. args[4] .. ("'s repairtool" )),
}
--	print("****************** player got killed event (Repair tools) ****************");  
	ChatManager:SendMessage( (RepairToolkilltable[RepairToolcounter]), p_Player )
	ChatManager:SendMessage( (RepairToolkilltable[RepairToolcounter]), p_Inflictor )
	RepairToolcounter=RepairToolcounter+1 if RepairToolcounter==5 then RepairToolcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledKnife then
	if Knifecounter == nil then Knifecounter=1 end
	if args[7] == "[KNIFE]" or args[7] == "[ACB-90]" and args[4] ~= args[1] then
Knifekilltable = {
  (("Can you show me where my knife hurts you ") .. args[1] .. (" ?" )),
  ((args[4] .. " posted his last knife kill on ") .. args[1] .. ("'s phone" )),
  ((args[4] .. " is singing Britney Spears, ups my knife did it again." )),
  (("Never discredit your gut instinct ") .. args[1] .. (" when you walk in ") .. args[4] .. ("'s knife" )),
  ((args[4] .. " wanted to stop placing a knife in ") .. args[1] .. (", but ") .. args[1] .. (" ran in it" )),
}
--	print("****************** player got killed event (Knife) ****************");  
	ChatManager:SendMessage( (Knifekilltable[Knifecounter]), p_Player )
	ChatManager:SendMessage( (Knifekilltable[Knifecounter]), p_Inflictor )
	Knifecounter=Knifecounter+1 if Knifecounter==6 then Knifecounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledDefib then
	if Defibcounter == nil then Defibcounter=1 end
	if args[7] == "[DEFIBRILLATOR]" and args[4] ~= args[1] then
Defibkilltable = {
  ((args[4] .. " * clicked * and the defib went zapp on ") .. args[1] .. ("" )),
  ((args[4] .. " kill on ") .. args[1] .. (" with the defib, and you suppost to be medic ?" )),
  (("Can you show me where my defib hurts you ") .. args[1] .. ("" )),
  ((args[4] .. " posted his last defib kill on ") .. args[1] .. ("'s phone" )),
  (("Have you ever been so wildly attracted to someone's defib ") .. args[4] .. (" ?" )),
  (("Your body can pick up bad vibrations ") .. args[1] .. (", or was it ") .. args[4] .. ("'s defib" )),
  (("Occasionally ") .. args[4] .. (" would hear a harsj croak or a splash if ") .. args[1] .. (" was killed by a defib" )),
  ((args[4] .. " crancked up the voltage from his defib, hmmmm,") .. args[1] .. (" ,you hear it humming ?" )),
}
--	print("****************** player got killed event (DEFIBRILLATOR) ****************");  
	ChatManager:SendMessage( (Defibkilltable[Defibcounter]), p_Player )
	ChatManager:SendMessage( (Defibkilltable[Defibcounter]), p_Inflictor )
	Defibcounter=Defibcounter+1 if Defibcounter==9 then Defibcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledRPG then
	if RPGcounter == nil then RPGcounter=1 end
	if args[7] == "[RPG-7V2]" or args[7] == "[SMAW]" and args[4] ~= args[1] then
RPGkilltable = {
  ((args[4] .. " is singing Britney Spears, ups my RPG did it again ") .. args[1] .. ("" )),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s RPG" )),
  ((args[1] .. " can be scratched of the wall, a RPG did it all" )),
  ((args[1] .. " has found the RPG easteregg from ") .. args[4] .. ("" )),
  ((args[4] .. " blew ") .. args[1] .. (" up with some good aimed RPG in the face" )),
  ((args[1] .. " loves hugging ") .. args[4] .. (" 's RPG" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a RPG" )),
  ((args[4] .. " sliced ") .. args[1] .. (" in 2 with a well placed RPG" )),
  ((args[4] .. " * clicked * and the RPG went booom on ") .. args[1] .. ("" )),
  ((args[4] .. " posted his last RPG kill on ") .. args[1] .. ("'s phone" )),
  (("This is the lastest RPG model on the market, you liked it ") .. args[1] .. ("" )),
}
--	print("****************** player got killed event (SMAW) ****************");  
	ChatManager:SendMessage( (RPGkilltable[RPGcounter]), p_Player )
	ChatManager:SendMessage( (RPGkilltable[RPGcounter]), p_Inflictor )
	RPGcounter=RPGcounter+1 if RPGcounter==12 then RPGcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledXBOW then
	if XBOWcounter == nil then XBOWcounter=1 end
	if args[7] == "[XBOW]" and args[4] ~= args[1] then
XBOWkilltable = {
  (("2 pictures that prove ") .. args[4] .. ("'s crossbow can put a arrow in ") .. args[1] .. (" head" )),
  ((args[4] .. " catched your loved one off guard with his crossbow valentine's gift on ") .. args[1] .. ("" )),
  ((args[4] .. " posted his last crossbow kill on ") .. args[1] .. ("'s facebook page" )),
  ((args[4] .. " * clicked * and the crossbow shot a arrow in ") .. args[1] .. ("'s head" )),
  ((args[4] .. " is singing Britney Spears, ups my crossbow did it again on ") .. args[1] .. ("" )),
  (("Hey ") .. args[1] .. (" ,My name is ") .. args[4] .. (", just wanted to know if i can pull out that arrow out of your head" )),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s crossbow" )),
  (("The object to your left has going up your head ") .. args[1] .. (", how bad is the damage?" )),
  (("See ") .. args[1] .. (", you CAN put a arrow in your eye ,") .. args[4] .. (" just proved it" )),
  (("Can a magician kill by magic, Yes it can, ") .. args[4] .. (" just used the crossbow on ") .. args[1] .. ("" )),
  (("you know, i preferred ") .. args[4] .. (" as an evil monk, would have made killing ") .. args[1] .. (" a lot easier with the crossbow" )),
  (("Occasionally ") .. args[4] .. (" would hear a harsj croak or a splash if ") .. args[1] .. (" was killed by the crossbow" )),
}
--	print("****************** player got killed event (XBOW) ****************");  
	ChatManager:SendMessage( (XBOWkilltable[XBOWcounter]), p_Player )
	ChatManager:SendMessage( (XBOWkilltable[XBOWcounter]), p_Inflictor )
	XBOWcounter=XBOWcounter+1 if XBOWcounter==13 then XBOWcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledFGM then
	if FGMcounter == nil then FGMcounter=1 end
	if args[7] == "[FGM-148 JAVELIN]" and args[4] ~= args[1] then
FGMkilltable = {
  ((args[1] .. " has catched the javelin easteregg from ") .. args[4] .. ("" )),
  (("Hi ") .. args[1] .. (", that shiny star you saw ? ,was ") .. args[4] .. ("'s javelin" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with his javelin" )),
  ((args[4] .. " * clicked * and the javelin went booom on ") .. args[1] .. ("" )),
}
--	print("****************** player got killed event ([FGM148 Javelin]) ****************");  
	ChatManager:SendMessage( (FGMkilltable[FGMcounter]), p_Player )
	ChatManager:SendMessage( (FGMkilltable[FGMcounter]), p_Inflictor )
	FGMcounter=FGMcounter+1 if FGMcounter==5 then FGMcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledSAM then
	if SAMcounter == nil then SAMcounter=1 end
	if args[7] == "[SA-18 IGLA]" and args[4] or args[7] == "[FIM-92 STINGER]" and args[4] ~= args[1] then
SAMkilltable = {
  ((args[1] .. " has catched the igla easteregg from ") .. args[4] .. ("" )),
  ((args[4] .. " * clicked * and the igla went booom on ") .. args[1] .. ("" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with his igla launcher" )),
  ((args[4] .. " is singing Britney Spears, ups my igla rocket did it again." )),
  (("Hi ") .. args[1] .. (", that shiny star you saw ? ,was ") .. args[4] .. ("'s igla" )),
}
--	print("****************** player got killed event (SA-18 IGLA) ****************");   
	ChatManager:SendMessage( (SAMkilltable[SAMcounter]), p_Player )
	ChatManager:SendMessage( (SAMkilltable[SAMcounter]), p_Inflictor )
	SAMcounter=SAMcounter+1 if SAMcounter==6 then SAMcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledTOW then
	if TOWcounter == nil then TOWcounter=1 end
	if args[7] == "[9M133 KORNET LAUNCHER]" or args[7] == "[M220 TOW LAUNCHER]" and args[4] ~= args[1] then
TOWkilltable = {
  ((args[4] .. " was singing Britney Spears, ups my wire guided rocket did it again ") .. args[1] .. ("" )),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s wire guided rocket !" )),
  (("2 pictures that prove ") .. args[4] .. ("'s TOW rocket ") .. args[1] .. ("'s can be swallowed" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a wire guided rocket" )),
  ((args[4] .. " posted his last TOW rocket kill on ") .. args[1] .. ("'s facebook page" )),
  ((args[4] .. " is singing Britney Spears, ups my TOW rocket did it again ") .. args[1] .. ("" )),
  (("you know, i preferred ") .. args[4] .. (" as an evil monk, would have made killing ") .. args[1] .. (" a lot easier with a wire guided rocket" )),
  (("Occasionally ") .. args[4] .. (" would hear a harsj croak or a splash if ") .. args[1] .. (" was killed by the crossbow" )),
  ((args[4] .. " sliced ") .. args[1] .. (" vehicle in 2 with a well placed TOW rocket" )),
}
--	print("****************** player got killed event (9M133 KORNET LAUNCHER) ****************");   
	ChatManager:SendMessage( (TOWkilltable[TOWcounter]), p_Player )
	ChatManager:SendMessage( (TOWkilltable[TOWcounter]), p_Inflictor )
	TOWcounter=TOWcounter+1 if TOWcounter==10 then TOWcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM224 then
	if M224counter == nil then M224counter=1 end
	if args[7] == "[M224 MORTAR]" and args[4] ~= args[1] then
M224killtable = {
  ((args[4] .. " * clicked * and the M224 shell went booom on ") .. args[1] .. ("" )),
  ((args[1] .. " got a holy shit from ") .. args[4] .. (" with a nice M224 mortal shell" )),
  ((args[4] .. " was singing Britney Spears, ups my Mortar shell did it again ") .. args[1] .. ("" )),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s mortar !" )),
  (("2 pictures that prove ") .. args[4] .. ("'s Mortar shell ") .. args[1] .. ("'s can be swallowed" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a M224 shell" )),
  (("2 pictures that prove ") .. args[4] .. ("'s M224 shell ended up in ") .. args[1] .. ("'s ass" )),
}
--	print("****************** player got killed event (M224 MORTAR) ****************");
	ChatManager:SendMessage( (M224killtable[M224counter]), p_Player )
	ChatManager:SendMessage( (M224killtable[M224counter]), p_Inflictor )
	M224counter=M224counter+1 if M224counter==8 then M224counter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledEODBot then
	if EODBotcounter == nil then EODBotcounter=1 end
	if args[7] == "[EOD BOT]" and args[4] ~= args[1] then
EODBotkilltable = {
  ((args[4] .. " was singing Britney Spears, ups my EOD BOT did it again ") .. args[1] .. ("" )),
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s EOD BOT !" )),
  ((args[1] .. " had this crispy feeling in his pant, or was it ") .. args[4] .. ("'s EOD BOT that set him on fire ?" )),
  (("Occasionally ") .. args[4] .. (" would hear a harsj croak or a splash if ") .. args[1] .. (" was torched by the EOD BOT" )),
}
--	print("****************** player got killed event (EOD BOT) ****************");  
	ChatManager:SendMessage( (EODBotkilltable[EODBotcounter]), p_Player )
	ChatManager:SendMessage( (EODBotkilltable[EODBotcounter]), p_Inflictor )
	EODBotcounter=EODBotcounter+1 if EODBotcounter==5 then EODBotcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM320 then
	if M320HEcounter == nil then M320HEcounter=1 end
	if args[7] == "[M320]" and args[4] ~= args[1] then
M320HEkilltable = {
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s M320 shell" )),
  (("The object to your left has going in your pants ") .. args[1] .. (", how bad is the damage?" )),
  ((args[4] .. " * clicked * and his M320 shot a shell in ") .. args[1] .. ("'s pants" )),
  ((args[4] .. " pulled his M320, and ") .. args[1] .. (" forgot to run away, * PLOP * PLOP * PLOP *" )),
  (("2 pictures that prove ") .. args[4] .. ("'s M320 shell ended up in ") .. args[1] .. ("'s ass" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a M320 shell" )),
}
--	print("****************** player got killed (M320) ****************");  
	ChatManager:SendMessage( (M320HEkilltable[M320HEcounter]), p_Player )
	ChatManager:SendMessage( (M320HEkilltable[M320HEcounter]), p_Inflictor )
	M320HEcounter=M320HEcounter+1 if M320HEcounter==7 then M320HEcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM320 then
	if M320LVGcounter == nil then M320LVGcounter=1 end
	if args[7] == "[M320 LVG]" and args[4] ~= args[1] then
M320LVGkilltable = {
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s M320LVG shell" )),
  (("The object to your left has going in your pants ") .. args[1] .. (", how bad is the damage?" )),
  ((args[4] .. " * clicked * and his M320LVG shot a hole in ") .. args[1] .. ("'s pants" )),
  ((args[4] .. " pulled his M320LVG, and ") .. args[1] .. (" forgot to run away, * PLOP * PLOP * PLOP *" )),
  (("2 pictures that prove ") .. args[4] .. ("'s M320LVG shell ended up in ") .. args[1] .. ("'s ass" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a M320LVG shell" )),
}
--	print("****************** player got killed (M320LVG) ****************");  
	ChatManager:SendMessage( (M320LVGkilltable[M320LVGcounter]), p_Player )
	ChatManager:SendMessage( (M320LVGkilltable[M320LVGcounter]), p_Inflictor )
	M320LVGcounter=M320LVGcounter+1 if M320LVGcounter==7 then M320LVGcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM320 then
	if GP30counter == nil then GP30counter=1 end
	if args[7] == "[GP-30]" and args[4] ~= args[1] then
GP30killtable = {
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s GP30 shell" )),
  (("The object to your left has going in your pants ") .. args[1] .. (", how bad is the damage?" )),
  ((args[4] .. " * clicked * and his GP-30 shot a hole in ") .. args[1] .. ("'s pants" )),
  ((args[4] .. " pulled his GP-30, and ") .. args[1] .. (" forgot to run away, * PLOP * PLOP * PLOP *" )),
  (("2 pictures that prove ") .. args[4] .. ("'s GP-30 shell ended up in ") .. args[1] .. ("'s ass" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a GP-30 shell" )),
}
--	print("****************** player got killed (GP 30) ****************");  
	ChatManager:SendMessage( (GP30killtable[GP30counter]), p_Player )
	ChatManager:SendMessage( (GP30killtable[GP30counter]), p_Inflictor )
	GP30counter=GP30counter+1 if GP30counter==7 then GP30counter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM320 then
	if GP30LVGcounter == nil then GP30LVGcounter=1 end
	if args[7] == "[GP-30 LVG]" and args[4] ~= args[1] then
GP30LVGkilltable = {
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s GP-30 LVG shell" )),
  (("The object to your left has going in your pants ") .. args[1] .. (", how bad is the damage?" )),
  ((args[4] .. " * clicked * and his GP-30 LVG shot a hole in ") .. args[1] .. ("'s pants" )),
  ((args[4] .. " pulled his GP-30 LVG, and ") .. args[1] .. (" forgot to run away, * PLOP * PLOP * PLOP *" )),
  (("2 pictures that prove ") .. args[4] .. ("'s GP-30 LVG shell ended up in ") .. args[1] .. ("'s ass" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a GP-30 LVG shell" )),
}
--	print("****************** player got killed (GP-30 LVG) ****************");  
	ChatManager:SendMessage( (GP30LVGkilltable[GP30counter]), p_Player )
	ChatManager:SendMessage( (GP30LVGkilltable[GP30counter]), p_Inflictor )
	GP30LVGcounter=GP30LVGcounter+1 if GP30LVGcounter==7 then GP30LVGcounter=1 end
end
end

-- ------------------------------------------------------

	if Config.PlayerKilledM320 then
	if M26FRAGcounter == nil then M26FRAGcounter=1 end
	if args[7] == "[M26 FRAG]" and args[4] ~= args[1] then
M26FRAGkilltable = {
  (("You're not being paranoid ") .. args[1] .. (", it was indeed ") .. args[4] .. ("'s M26 FRAG shell" )),
  (("The object to your left has going in your pants ") .. args[1] .. (", how bad is the damage?" )),
  ((args[4] .. " * clicked * and his M26 FRAG shot a hole in ") .. args[1] .. ("'s pants" )),
  ((args[4] .. " pulled his M26 FRAG, and ") .. args[1] .. (" forgot to run away, * PLOP * PLOP * PLOP *" )),
  (("2 pictures that prove ") .. args[4] .. ("'s M26 FRAG shell ended up in ") .. args[1] .. ("'s ass" )),
  ((args[4] .. " did a hail merry on ") .. args[1] .. (" with a M26 FRAG shell" )),
}
--	print("****************** player got killed (M26 FRAG) ****************");  
	ChatManager:SendMessage( (M26FRAGkilltable[M26FRAGcounter]), p_Player )
	ChatManager:SendMessage( (M26FRAGkilltable[M26FRAGcounter]), p_Inflictor )
	M26FRAGcounter=M26FRAGcounter+1 if M26FRAGcounter==7 then M26FRAGcounter=1 end
end
end
--

end)
end
--
end)
