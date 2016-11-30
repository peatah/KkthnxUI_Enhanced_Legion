local K, C, L = KkthnxUI:unpack()

----------------------------------------
-- κκτhπχ's ρεrsοπαl κκτhπχυι τωεακs. :δ
----------------------------------------

local KkthnxUITweaks = CreateFrame("Frame")

local Config = KkthnxUIDataPerChar.Movers
local Data = KkthnxUIDataPerChar

-- CVars
local SetCVars = {
	lossOfControlFull = "2",
	lossOfControlInterrupt = "2",
	lossOfControlRoot = "2",
	lossOfControlSilence = "2",
	serviceTypeFilter = "2",
	synchronizeConfig = "1",
	synchronizeMacros = "1",
	synchronizeSettings = "1",
	ActionButtonUseKeyDown = "1",
	autoQuestWatch = "1",
	cameraSmoothStyle = "1",
	cameraYawSmoothSpeed = "90",
	lossOfControl = "1",
	lossOfControlDisarm = "2",
	profanityFilter = "0",
	screenEdgeFlash = "0",
	screenshotQuality = "10",
	showQuestTrackingTooltips = "0",
	synchronizeBindings = "1",
	TargetNearestUseOld = "1",
	threatPlaySounds = "0",
	trackQuestSorting = "proximity",
}

local SetBVars = {
	-- Suppress annoying help popups
	closedInfoFrames = {
		[LE_FRAME_TUTORIAL_TALENT] = true,
		[LE_FRAME_TUTORIAL_SPEC] = true,
		[LE_FRAME_TUTORIAL_GLYPH] = true,
		[LE_FRAME_TUTORIAL_SPELLBOOK] = true,
		[LE_FRAME_TUTORIAL_PROFESSIONS] = true,
		[LE_FRAME_TUTORIAL_CORE_ABILITITES] = true,
		[LE_FRAME_TUTORIAL_PET_JOURNAL] = true,
		[LE_FRAME_TUTORIAL_WHAT_HAS_CHANGED] = true,
		[LE_FRAME_TUTORIAL_GARRISON_BUILDING] = true,
		[LE_FRAME_TUTORIAL_GARRISON_MISSION_LIST] = true,
		[LE_FRAME_TUTORIAL_GARRISON_MISSION_PAGE] = true,
		[LE_FRAME_TUTORIAL_GARRISON_LANDING] = true,
		[LE_FRAME_TUTORIAL_GARRISON_ZONE_ABILITY] = true,
		[LE_FRAME_TUTORIAL_WORLD_MAP_FRAME] = true,
		[LE_FRAME_TUTORIAL_CLEAN_UP_BAGS] = true,
		[LE_FRAME_TUTORIAL_BAG_SETTINGS] = true,
		[LE_FRAME_TUTORIAL_REAGENT_BANK_UNLOCK] = true,
		[LE_FRAME_TUTORIAL_HEIRLOOM_JOURNAL] = true,
		[LE_FRAME_TUTORIAL_HEIRLOOM_JOURNAL_TAB] = true,
		[LE_FRAME_TUTORIAL_HEIRLOOM_JOURNAL_LEVEL] = true,
		[LE_FRAME_TUTORIAL_TOYBOX_FAVORITE] = true,
		[LE_FRAME_TUTORIAL_TOYBOX_MOUSEWHEEL_PAGING] = true,
		[LE_FRAME_TUTORIAL_LFG_LIST] = true,
		[LE_FRAME_TUTORIAL_TOYBOX] = true,
		[LE_FRAME_TUTORIAL_HEIRLOOM_JOURNAL] = true,
		[LE_FRAME_TUTORIAL_HEIRLOOM_JOURNAL_TAB] = true,
		[LE_FRAME_TUTORIAL_HEIRLOOM_JOURNAL_LEVEL] = true,
		[LE_FRAME_TUTORIAL_GAME_TIME_AUCTION_HOUSE] = true,
		[LE_FRAME_TUTORIAL_TRANSMOG_JOURNAL_TAB] = true,
		[LE_FRAME_TUTORIAL_TRANSMOG_MODEL_CLICK] = true,
		[LE_FRAME_TUTORIAL_TRANSMOG_SPECS_BUTTON] = true,
		[LE_FRAME_TUTORIAL_TRANSMOG_OUTFIT_DROPDOWN] = true,
	}
}

KkthnxUITweaks:RegisterEvent("PLAYER_LOGIN")
KkthnxUITweaks:SetScript("OnEvent", function()
	SetAutoDeclineGuildInvites(true)
	ShowAccountAchievements(true) -- show ONLY account achievements

	for cvar, value in pairs(SetCVars) do
		local current = tostring(GetCVar(cvar))
		if current ~= value then
			--print("SetCVar", cvar, value)
			SetCVar(cvar, value)
		end
	end

	for cvar, fields in pairs(SetBVars) do
		for field, value in pairs(fields) do
			local current = GetCVarBitfield(cvar, field)
			if current ~= value then
				--print("SetCVarBitfield", cvar, field, value)
				SetCVarBitfield(cvar, field, value)
			end
		end
	end
end)

hooksecurefunc("SetCVar", function(k, v)
	local o = SetCVars[k]
	if o and tostring(v) ~= o then
		print("|cffff9f7fSetCVar|r", k, o, "|cffff9f7f==>|r", v)
	end
end)

-- Tweak KkthnxUI Directly Here.
C.ActionBar.RightBarsMouseover = true
C.ActionBar.SelfCast = true
C.ActionBar.RightBars = 1
C.ActionBar.BottomBars = 2

C.Misc.SlotDurability = true
C.Misc.AFKCamera = true
C.Misc.AlreadyKnown = true
C.Misc.MoveBlizzard = true

C.General.CustomLagTolerance = true

C.Chat.DamageMeterSpam = true
C.Chat.Spam = true

C.Blizzard.ReputationGain = true
C.Blizzard.EasyDelete = true

C.Bags.BagFilter = true

C.WorldMap.FogOfWar = true

C.ActionBar.EquipBorder = true
C.ActionBar.SelfCast = true

C.Announcements.Interrupt = true
C.Announcements.SaySapped = true
C.Announcements.BadGear = true

C.Unitframe.FlatClassPortraits = true

C.Loot.AutoGreed = true
C.Loot.ConfirmDisenchant = true

C.Automation.Resurrection = true
C.Automation.AutoInvite = true
C.Automation.NoBanner = true

C.Nameplates.CastbarName = true
C.Nameplates.HealerIcon = true
C.Nameplates.AdditionalHeight = 4
C.Nameplates.ClassIcons = true
C.Nameplates.AdditionalWidth = 4

C.Skins.Skada = true

C.Auras.CastBy = true

C.Tooltip.SpellID = true
C.Tooltip.HyperLink = true
C.Tooltip.ItemCount = true
C.Tooltip.ItemIcon = true

Data.SplitBars = true
Data.AutoInvite = true
Data.BottomBars = 2
Data.hideTutorial = true
Data.FogOfWar = true
Data.RightBars = 1
Data.BarsLocked = true
