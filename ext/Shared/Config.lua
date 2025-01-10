-- Here you can turn on, or off modules.
Config = {
-- blocks you can enable or disable for flagpoint events
	CapturePointCaptured = false, -- Does not yet work as i want
	CapturePointLost = false, -- Does not yet work as i want
	BaseDestroyed = false, -- i guess this is for RUSH ony ?
	EnteredCapturePoint = false,
	ExitedCapturePoint = false,

-- block you can enable or disable on suicide event
	PlayerSuicide = true, -- GLOBAL enable or disable suicide messages

-- enable or disable suicide message by type (works only when above line is true
	PlayerSuicideC4 = true, -- Christmas package
	PlayerSuicideM67 = true, -- Grenade
	PlayerSuicideRPG = true, -- RPG / SMAW
	PlayerSuicideRepairTool = true, -- used to repair vehicles
	PlayerSuicideXBOW = true, -- Crossbow
	PlayerSuicideM15 = true, -- Tank mine
	PlayerSuicideM18 = true, -- Claymore
	PlayerSuicideM220 = true, -- Tow / Kornet
	PlayerSuicideM224 = true, -- Mortar
	PlayerSuicideM320 = true, -- M320 n00b plopper

-- block you can enable or disable on gadget kill event
	PlayerKilled = true, -- GLOBAL enable or disable gadget kill messages

-- enable or disable gadget kill message by type (works only when above line is true
	PlayerKilledM67 = true,
	PlayerKilledC4 = true,
	PlayerKilledM15 = true,
	PlayerKilledM18 = true,
	PlayerKilledRepairTool = true, -- used to repair vehicles
	PlayerKilledKnife = true,
	PlayerKilledDefib = true,
	PlayerKilledRPG = true,
	PlayerKilledXBOW = true,
	PlayerKilledEODBot = true,
	PlayerKilledFGM = true,
	PlayerKilledTOW = true,
	PlayerKilledSAM = true,
	PlayerKilledM224 = true,
	PlayerKilledM320 = true,

-- Enable or disable player join / spawn / leave messages
	PlayerFirstSpawn = true,
	PlayerJoining = true,
	PlayerLeft = true,
}

return Config
