void CreateConVars()
{
	ConVar CVAR;
	
	(CVAR					= 		CreateConVar("sm_allow_restricted_pickup", 		"0", 	"0 - prohibit the selection of weapons, 1 - allow",		_, true, 0.0, true, 1.0)).AddChangeHook(ChangeCvar_Allow);
	g_bAllow 				= 		CVAR.BoolValue;
	
	(CVAR					= 		CreateConVar("sm_weapon_restrict_immunity", 	"0", 	"Immunity from Administrators",		_, true, 0.0, true, 1.0)).AddChangeHook(ChangeCvar_Immunity);
	g_bAdminImmunity 		= 		CVAR.BoolValue;
	
	(CVAR					= 		CreateConVar("sm_weapon_restrict_print_delay", 	"5.0", 	"The interval between bans, 0 - disable",		_, true, 0.0)).AddChangeHook(ChangeCvar_Delay);
	g_fDelay 				= 		CVAR.FloatValue;
	
	(CVAR 					= 		CreateConVar("sm_perplayer_restrict", 			"1", 	"Prohibition of weapons depending on the number of players",	_, true, 0.0, true, 1.0)).AddChangeHook(ChangeCvar_PerPlayer);
	g_bPerPlayerRestrict 	= 		CVAR.BoolValue;
	
	(CVAR 					= 		CreateConVar("sm_perplayer_bots", 				"1",	"Count bots as players",	_, true, 0.0, true, 1.0)).AddChangeHook(ChangeCvar_PerPlayerBots);
	g_bPerPlayerBots 		= 		CVAR.BoolValue;

	(CVAR 					= 		CreateConVar("sm_perplayer_specs", 				"1", 	"Count specs for players",		_, true, 0.0, true, 1.0)).AddChangeHook(ChangeCvar_PerPlayerSpecs);
	g_bPerPlayerSpecs 		= 		CVAR.BoolValue;
	
	(CVAR					=		CreateConVar("sm_weapon_restrict_remove_weapon", "0", 	"Removing prohibited weapons when trying to pick up",		_, true, 0.0, true, 1.0)).AddChangeHook(ChangeCvar_Remove);
	g_bWeaponKill			=		CVAR.BoolValue;

	int x, y, i;
	char cvar[50], desc[128];
	for(i = 0; i < WEAPON_ID_MAX; ++i)
	{
		if(i == WEAPON_NONE || i == WEAPON_SHIELD || i == WEAPON_SCAR17 || AllowedGame[i] == -1 || (g_iGame == GAME_CSS && (AllowedGame[i] != 1 && AllowedGame[i] != 2)) || (g_iGame == GAME_CSGO && (AllowedGame[i] != 1 && AllowedGame[i] != 3)))
		{
			CvarArrayHandleValCT[i] = -1;
			CvarArrayHandleValT[i] = -1;
			continue;
		}
		if(i != WEAPON_DEFUSER)
		{
			if(i != WEAPON_C4)		FormatEx(	cvar, sizeof(cvar), "sm_restrict_%s_t", 										weaponNames[i]);
			else					FormatEx(	cvar, sizeof(cvar), "sm_restrict_%s", 										weaponNames[i]);
			FormatEx(							desc, sizeof(desc), "[T] [O:%s] -1 = oткл. | 0 = зaпpeт | 1+ = кол-во", 		weaponNames[i]);
			g_hRestrictCVarsT[x] = CreateConVar(cvar, "-1", desc, _, true, -1.0, true, 64.0);
			CvarArrayHandleValT[i] = x;
			++x;
		}
		else	CvarArrayHandleValT[i] = -1;
		
		if(i != WEAPON_C4)
		{
			if(i != WEAPON_DEFUSER)	FormatEx(	cvar, sizeof(cvar), "sm_restrict_%s_ct", 									weaponNames[i]);
			else					FormatEx(	cvar, sizeof(cvar), "sm_restrict_%s", 										weaponNames[i]);
			FormatEx(							desc, sizeof(desc), "[КT] [O:%s] -1 = oткл. | 0 = зaпpeт | 1+ = кoл-вo", 	weaponNames[i]);
			g_hRestrictCVarsCT[y] = 	CreateConVar(cvar, "-1", desc, _, true, -1.0, true, 64.0);
			CvarArrayHandleValCT[i] = y;
			++y;
		}
		else	CvarArrayHandleValCT[i] = -1;
	}

	if(g_iGame == GAME_CSS)
	{
		CVAR			= FindConVar("ammo_hegrenade_max");
		g_iHeAmmo		= CVAR.IntValue;
		CVAR			= FindConVar("ammo_flashbang_max");
		g_iFlashAmmo 	= CVAR.IntValue;
		CVAR			= FindConVar("ammo_smokegrenade_max");
		g_iSmokeAmmo 	= CVAR.IntValue;
		
		(CVAR 			= 	CreateConVar("sm_weapon_restrict_max_money", 	"16000", 	"The maximum amount of funds a player has",	_, true, 0.0)).AddChangeHook(ChangeCvar_Money);
		g_iMaxMoney		= 	CVAR.IntValue;
	}
	else
	{
		CVAR 	= FindConVar("mp_maxmoney");
		g_iMaxMoney = CVAR.IntValue;
	}

	AutoExecConfig(true, "weapon_restrict");
}

public void ChangeCvar_Allow(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_bAllow = convar.BoolValue;
}

public void ChangeCvar_Immunity(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_bAdminImmunity = convar.BoolValue;
}

public void ChangeCvar_PerPlayer(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_bPerPlayerRestrict = convar.BoolValue;
	CheckPerPlayer();
}

public void ChangeCvar_PerPlayerBots(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_bPerPlayerBots = convar.BoolValue;
	CheckPerPlayer();
}

public void ChangeCvar_PerPlayerSpecs(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_bPerPlayerSpecs = convar.BoolValue;
	CheckPerPlayer();
}

public void ChangeCvar_Remove(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_bWeaponKill = convar.BoolValue;
}

public void ChangeCvar_Delay(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_fDelay = convar.FloatValue;
}

public void ChangeCvar_Money(ConVar convar, const char[] oldValue, const char[] newValue)
{
	g_iMaxMoney = convar.IntValue;
}