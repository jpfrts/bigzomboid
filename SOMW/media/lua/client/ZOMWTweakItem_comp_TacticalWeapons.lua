

if getActivatedMods():contains("Tactical Weapons") or getActivatedMods():contains("TWeapons") then

--||| Tactical Weapons |||---
-- Tactical Knife
SOMWAdjuster("TWeapons.TacticalKnife","Weight", 0.5); -- 0.5
SOMWAdjuster("TWeapons.TacticalKnife","MinDamage", 0.5); -- 0.8
SOMWAdjuster("TWeapons.TacticalKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("TWeapons.TacticalKnife","MaxRange", 0.9); -- 0.9
SOMWAdjuster("TWeapons.TacticalKnife","BaseSpeed", 1.0); -- 1.1
SOMWAdjuster("TWeapons.TacticalKnife","ConditionMax", 10); -- 12
SOMWAdjuster("TWeapons.TacticalKnife","ConditionLowerChanceOneIn", 24); -- 15
SOMWAdjuster("TWeapons.TacticalKnife","CriticalChance", 50); -- 50
SOMWAdjuster("TWeapons.TacticalKnife","CritDmgMultiplier", 2); -- 3
SOMWAdjuster("TWeapons.TacticalKnife","DoorDamage", 3); -- 1
SOMWAdjuster("TWeapons.TacticalKnife","TreeDamage", 3); -- 2
SOMWAdjuster("TWeapons.TacticalKnife","EnduranceMod", 1.0); -- 0.5
-- Spear with Tactical Knife
SOMWAdjuster("TWeapons.SpearTKnife","Weight", 1.5); -- 2.2
SOMWAdjuster("TWeapons.SpearTKnife","MinDamage", 0.85); -- 1.2 
SOMWAdjuster("TWeapons.SpearTKnife","MaxDamage", 1.7); -- 1.7
SOMWAdjuster("TWeapons.SpearTKnife","MinRange", 0.74); -- 0.98
SOMWAdjuster("TWeapons.SpearTKnife","MaxRange", 1.52); -- 1.48
SOMWAdjuster("TWeapons.SpearTKnife","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("TWeapons.SpearTKnife","ConditionMax", 10); -- 9
SOMWAdjuster("TWeapons.SpearTKnife","ConditionLowerChanceOneIn", 24); -- 8 
SOMWAdjuster("TWeapons.SpearTKnife","CriticalChance", 17.5); -- 30
SOMWAdjuster("TWeapons.SpearTKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("TWeapons.SpearTKnife","DoorDamage", 4); -- 7
SOMWAdjuster("TWeapons.SpearTKnife","TreeDamage", 3); -- 0
SOMWAdjuster("TWeapons.SpearTKnife","Knockback", 0.3); -- 0.3
SOMWAdjuster("TWeapons.SpearTKnife","KnockdownMod", 0); -- 0
SOMWAdjuster("TWeapons.SpearTKnife","EnduranceMod", 1.25); -- 0.5

-- Military Knife
SOMWAdjuster("TWeapons.MilitaryKnife","Weight", 0.5); -- 0.5
SOMWAdjuster("TWeapons.MilitaryKnife","MinDamage", 0.5); -- 0.8
SOMWAdjuster("TWeapons.MilitaryKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("TWeapons.MilitaryKnife","MaxRange", 0.9); -- 0.9
SOMWAdjuster("TWeapons.MilitaryKnife","BaseSpeed", 1.02); -- 1.1
SOMWAdjuster("TWeapons.MilitaryKnife","ConditionMax", 10); -- 12
SOMWAdjuster("TWeapons.MilitaryKnife","ConditionLowerChanceOneIn", 24); -- 15
SOMWAdjuster("TWeapons.MilitaryKnife","CriticalChance", 50); -- 50
SOMWAdjuster("TWeapons.MilitaryKnife","CritDmgMultiplier", 2); -- 3
SOMWAdjuster("TWeapons.MilitaryKnife","DoorDamage", 3); -- 1
SOMWAdjuster("TWeapons.MilitaryKnife","TreeDamage", 3); -- 2
SOMWAdjuster("TWeapons.MilitaryKnife","EnduranceMod", 1.0); -- 0.5

-- Tactical Machete
SOMWAdjuster("TWeapons.TacticalMachete","AttachmentType", "LongBlade");
SOMWAdjuster("TWeapons.TacticalMachete","Weight", 1.0);
SOMWAdjuster("TWeapons.TacticalMachete","MinDamage", 1.05);
SOMWAdjuster("TWeapons.TacticalMachete","MaxDamage", 2.1);
SOMWAdjuster("TWeapons.TacticalMachete","MinRange", 0.61);
SOMWAdjuster("TWeapons.TacticalMachete","MaxRange", 1.2);
SOMWAdjuster("TWeapons.TacticalMachete","BaseSpeed", 1.0);
SOMWAdjuster("TWeapons.TacticalMachete","ConditionMax", 20);
SOMWAdjuster("TWeapons.TacticalMachete","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("TWeapons.TacticalMachete","CriticalChance", 20);
SOMWAdjuster("TWeapons.TacticalMachete","CritDmgMultiplier", 3); -- LongBladeCritDmg
SOMWAdjuster("TWeapons.TacticalMachete","DoorDamage", 10);
SOMWAdjuster("TWeapons.TacticalMachete","TreeDamage", 10);
SOMWAdjuster("TWeapons.TacticalMachete","EnduranceMod", 1.25);
-- Spear with Tactical Machete
SOMWAdjuster("TWeapons.SpearTMachete","Weight", 2.0); -- 3.7
SOMWAdjuster("TWeapons.SpearTMachete","MinDamage", 1.125); -- 1.3
SOMWAdjuster("TWeapons.SpearTMachete","MaxDamage", 2.25); -- 2.0
SOMWAdjuster("TWeapons.SpearTMachete","MinRange", 0.74); -- 0.98
SOMWAdjuster("TWeapons.SpearTMachete","MaxRange", 1.56); -- 1.55
SOMWAdjuster("TWeapons.SpearTMachete","BaseSpeed", 0.85); -- 0.9
SOMWAdjuster("TWeapons.SpearTMachete","ConditionMax", 20); -- 12
SOMWAdjuster("TWeapons.SpearTMachete","ConditionLowerChanceOneIn", 20); -- 10
SOMWAdjuster("TWeapons.SpearTMachete","CriticalChance", 20); -- 30
SOMWAdjuster("TWeapons.SpearTMachete","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("TWeapons.SpearTMachete","DoorDamage", 11); -- 2
SOMWAdjuster("TWeapons.SpearTMachete","TreeDamage", 10); -- 10
SOMWAdjuster("TWeapons.SpearTMachete","EnduranceMod", 1.25); -- 0.5

-- Tactical Ninja Sword
SOMWAdjuster("TWeapons.TacticalBlade","AttachmentType", "LongBlade");
SOMWAdjuster("TWeapons.TacticalBlade","Weight", 1.0);
SOMWAdjuster("TWeapons.TacticalBlade","MinDamage", 1.0);
SOMWAdjuster("TWeapons.TacticalBlade","MaxDamage", 2.0);
SOMWAdjuster("TWeapons.TacticalBlade","MinRange", 0.61);
SOMWAdjuster("TWeapons.TacticalBlade","MaxRange", 1.2);
SOMWAdjuster("TWeapons.TacticalBlade","BaseSpeed", 1.0);
SOMWAdjuster("TWeapons.TacticalBlade","ConditionMax", 20);
SOMWAdjuster("TWeapons.TacticalBlade","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("TWeapons.TacticalBlade","CriticalChance", 20);
SOMWAdjuster("TWeapons.TacticalBlade","CritDmgMultiplier", 3); -- LongBladeCritDmg
SOMWAdjuster("TWeapons.TacticalBlade","DoorDamage", 10);
SOMWAdjuster("TWeapons.TacticalBlade","TreeDamage", 10);
SOMWAdjuster("TWeapons.TacticalBlade","EnduranceMod", 1.25);
-- Spear with Tactical Ninja Sword
SOMWAdjuster("TWeapons.SpearTBlade","Weight", 2.0); -- 3.7
SOMWAdjuster("TWeapons.SpearTBlade","MinDamage", 1.1); -- 1.3
SOMWAdjuster("TWeapons.SpearTBlade","MaxDamage", 2.2); -- 2.0
SOMWAdjuster("TWeapons.SpearTBlade","MinRange", 0.74); -- 0.98
SOMWAdjuster("TWeapons.SpearTBlade","MaxRange", 1.56); -- 1.55
SOMWAdjuster("TWeapons.SpearTBlade","BaseSpeed", 0.85); -- 0.9
SOMWAdjuster("TWeapons.SpearTBlade","ConditionMax", 20); -- 12
SOMWAdjuster("TWeapons.SpearTBlade","ConditionLowerChanceOneIn", 20); -- 10
SOMWAdjuster("TWeapons.SpearTBlade","CriticalChance", 20); -- 30
SOMWAdjuster("TWeapons.SpearTBlade","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("TWeapons.SpearTBlade","DoorDamage", 11); -- 2
SOMWAdjuster("TWeapons.SpearTBlade","TreeDamage", 10); -- 10
SOMWAdjuster("TWeapons.SpearTBlade","EnduranceMod", 1.25);

-- Halberd Spear
SOMWAdjuster("TWeapons.HalberdSpear","Weight", 4.5); -- 2.5
SOMWAdjuster("TWeapons.HalberdSpear","MinDamage", 1.5); -- 1.0 
SOMWAdjuster("TWeapons.HalberdSpear","MaxDamage", 3.0); -- 1.5
SOMWAdjuster("TWeapons.HalberdSpear","MinRange", 1.0); -- 0.98
SOMWAdjuster("TWeapons.HalberdSpear","MaxRange", 1.8); -- 1.50
SOMWAdjuster("TWeapons.HalberdSpear","BaseSpeed", 0.80); -- 1.1
SOMWAdjuster("TWeapons.HalberdSpear","ConditionMax", 20); -- 20
SOMWAdjuster("TWeapons.HalberdSpear","ConditionLowerChanceOneIn", 26); -- 25 
SOMWAdjuster("TWeapons.HalberdSpear","CriticalChance", 20); -- 30
SOMWAdjuster("TWeapons.HalberdSpear","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("TWeapons.HalberdSpear","DoorDamage", 15); -- 5
SOMWAdjuster("TWeapons.HalberdSpear","TreeDamage", 15); -- 0
SOMWAdjuster("TWeapons.HalberdSpear","Knockback", 0.3); -- 0.3
SOMWAdjuster("TWeapons.HalberdSpear","KnockdownMod", 0); -- 0

-- HalberdAxe
SOMWAdjuster("TWeapons.HalberdAxe","Weight", 4.5); -- 2.5
SOMWAdjuster("TWeapons.HalberdAxe","MinDamage", 1.5); -- 1.0 
SOMWAdjuster("TWeapons.HalberdAxe","MaxDamage", 3.0); -- 1.5
SOMWAdjuster("TWeapons.HalberdAxe","MaxRange", 1.60); -- 1.55
SOMWAdjuster("TWeapons.HalberdAxe","BaseSpeed", 0.90); -- 1.1

	local function ModCheck()
		if getDebug() then print("SOMW - Tactical Weapons - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end