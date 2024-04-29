

if getActivatedMods():contains("SAPPTACTMELEE") then
--||| Sapphire's Tactical Melee Weapons |||---

-- Tactical Machete
SOMWAdjuster("Base.Tactical_Machete","AttachmentType", "LongBlade");
SOMWAdjuster("Base.Tactical_Machete","Weight", 1.0);
SOMWAdjuster("Base.Tactical_Machete","MinDamage", 1.05);
SOMWAdjuster("Base.Tactical_Machete","MaxDamage", 2.1);
SOMWAdjuster("Base.Tactical_Machete","MinRange", 0.61);
SOMWAdjuster("Base.Tactical_Machete","MaxRange", 1.2);
SOMWAdjuster("Base.Tactical_Machete","BaseSpeed", 1.0);
SOMWAdjuster("Base.Tactical_Machete","ConditionMax", 20);
SOMWAdjuster("Base.Tactical_Machete","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.Tactical_Machete","CriticalChance", 20);
SOMWAdjuster("Base.Tactical_Machete","CritDmgMultiplier", 3); -- LongBladeCritDmg
SOMWAdjuster("Base.Tactical_Machete","DoorDamage", 10);
SOMWAdjuster("Base.Tactical_Machete","TreeDamage", 10);
SOMWAdjuster("Base.Tactical_Machete","EnduranceMod", 1.25);

-- Tactical Spear
SOMWAdjuster("Base.Tactical_Spear","Weight", 2.0); -- 2.5
SOMWAdjuster("Base.Tactical_Spear","MinDamage", 1.1); -- 1.8 
SOMWAdjuster("Base.Tactical_Spear","MaxDamage", 2.2); -- 2.7
SOMWAdjuster("Base.Tactical_Spear","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.Tactical_Spear","MaxRange", 1.5); -- 1.48
SOMWAdjuster("Base.Tactical_Spear","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.Tactical_Spear","ConditionMax", 12); -- 9
SOMWAdjuster("Base.Tactical_Spear","ConditionLowerChanceOneIn", 16); -- 8 
SOMWAdjuster("Base.Tactical_Spear","CriticalChance", 15); -- 30
SOMWAdjuster("Base.Tactical_Spear","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.Tactical_Spear","DoorDamage", 8); -- 5
SOMWAdjuster("Base.Tactical_Spear","TreeDamage", 4); -- 0
SOMWAdjuster("Base.Tactical_Spear","Knockback", 0.3); -- 0.3
SOMWAdjuster("Base.Tactical_Spear","KnockdownMod", 0); -- 0
SOMWAdjuster("Base.Tactical_Spear","EnduranceMod", 1.25);

	local function ModCheck()
		if getDebug() then print("SOMW - Sapphire's Tactical Melee Weapons - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end