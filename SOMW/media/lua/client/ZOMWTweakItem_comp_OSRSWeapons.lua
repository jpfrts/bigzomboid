

if getActivatedMods():contains("OSRSWeapons") then
--|| OSRS Weapons ||--

-- SteelDagger
SOMWAdjuster("OSRSWeapons.SteelDagger","Weight", 0.5); -- 0.5
SOMWAdjuster("OSRSWeapons.SteelDagger","MinDamage", 0.5); -- 0.6
SOMWAdjuster("OSRSWeapons.SteelDagger","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("OSRSWeapons.SteelDagger","MaxRange", 0.94); -- 0.9
SOMWAdjuster("OSRSWeapons.SteelDagger","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("OSRSWeapons.SteelDagger","ConditionMax", 10); -- 10
SOMWAdjuster("OSRSWeapons.SteelDagger","ConditionLowerChanceOneIn", 16); -- 15
SOMWAdjuster("OSRSWeapons.SteelDagger","CriticalChance", 40); -- 50
SOMWAdjuster("OSRSWeapons.SteelDagger","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("OSRSWeapons.SteelDagger","DoorDamage", 3); -- 1
SOMWAdjuster("OSRSWeapons.SteelDagger","TreeDamage", 3); -- 2
SOMWAdjuster("OSRSWeapons.SteelDagger","EnduranceMod", 1.0); -- 0.5

-- GhraziRapier
SOMWAdjuster("OSRSWeapons.GhraziRapier","Weight", 0.5); -- 0.5
SOMWAdjuster("OSRSWeapons.GhraziRapier","MinDamage", 0.5); -- 0.6
SOMWAdjuster("OSRSWeapons.GhraziRapier","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("OSRSWeapons.GhraziRapier","MinRange", 0.61); -- 0.9
SOMWAdjuster("OSRSWeapons.GhraziRapier","MaxRange", 0.94); -- 0.9
SOMWAdjuster("OSRSWeapons.GhraziRapier","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("OSRSWeapons.GhraziRapier","ConditionMax", 10); -- 10
SOMWAdjuster("OSRSWeapons.GhraziRapier","ConditionLowerChanceOneIn", 18); -- 15
SOMWAdjuster("OSRSWeapons.GhraziRapier","CriticalChance", 60); -- 50
SOMWAdjuster("OSRSWeapons.GhraziRapier","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("OSRSWeapons.GhraziRapier","DoorDamage", 3); -- 1
SOMWAdjuster("OSRSWeapons.GhraziRapier","TreeDamage", 3); -- 2
SOMWAdjuster("OSRSWeapons.GhraziRapier","EnduranceMod", 1.0); -- 0.5

-- GraniteMaul
SOMWAdjuster("OSRSWeapons.GraniteMaul","MinDamage", 1.5); -- 0.6
SOMWAdjuster("OSRSWeapons.GraniteMaul","MaxDamage", 3.0); -- 1.2
SOMWAdjuster("OSRSWeapons.GraniteMaul","MinRange", 0.74); -- 0.98
SOMWAdjuster("OSRSWeapons.GraniteMaul","CriticalChance", 20); -- 50
SOMWAdjuster("OSRSWeapons.GraniteMaul","CritDmgMultiplier", 2); -- 50
SOMWAdjuster("OSRSWeapons.GraniteMaul","EnduranceMod", 1.25); -- 0.5

-- DragonHalberd
SOMWAdjuster("OSRSWeapons.DragonHalberd","MinDamage", 1.0); -- 0.6
SOMWAdjuster("OSRSWeapons.DragonHalberd","MaxDamage", 2.0); -- 1.2
SOMWAdjuster("OSRSWeapons.DragonHalberd","MinRange", 0.9); -- 0.98
SOMWAdjuster("OSRSWeapons.DragonHalberd","CriticalChance", 20); -- 50
SOMWAdjuster("OSRSWeapons.DragonHalberd","CritDmgMultiplier", 2); -- 50
SOMWAdjuster("OSRSWeapons.DragonHalberd","EnduranceMod", 1.25); -- 0.5

-- BCAnchor
SOMWAdjuster("OSRSWeapons.BCAnchor","MinDamage", 1.75); -- 0.6
SOMWAdjuster("OSRSWeapons.BCAnchor","MaxDamage", 3.5); -- 1.2
SOMWAdjuster("OSRSWeapons.BCAnchor","MinRange", 0.9); -- 0.98
SOMWAdjuster("OSRSWeapons.BCAnchor","CriticalChance", 20); -- 50
SOMWAdjuster("OSRSWeapons.BCAnchor","CritDmgMultiplier", 2); -- 50
SOMWAdjuster("OSRSWeapons.BCAnchor","EnduranceMod", 1.25); -- 0.5

-- DragonDagger
SOMWAdjuster("OSRSWeapons.DragonDagger","Weight", 0.6); -- 0.5
SOMWAdjuster("OSRSWeapons.DragonDagger","MinDamage", 0.6); -- 0.6
SOMWAdjuster("OSRSWeapons.DragonDagger","MaxDamage", 1.2); -- 1.2
SOMWAdjuster("OSRSWeapons.DragonDagger","MaxRange", 0.9); -- 0.9
SOMWAdjuster("OSRSWeapons.DragonDagger","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("OSRSWeapons.DragonDagger","ConditionMax", 10); -- 10
SOMWAdjuster("OSRSWeapons.DragonDagger","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("OSRSWeapons.DragonDagger","CriticalChance", 60); -- 50
SOMWAdjuster("OSRSWeapons.DragonDagger","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("OSRSWeapons.DragonDagger","DoorDamage", 3); -- 1
SOMWAdjuster("OSRSWeapons.DragonDagger","TreeDamage", 3); -- 2
SOMWAdjuster("OSRSWeapons.DragonDagger","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - OSRS Weapons - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end