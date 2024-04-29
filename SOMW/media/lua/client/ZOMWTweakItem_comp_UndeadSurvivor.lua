

if getActivatedMods():contains("UndeadSurvivor") then
--||| Undead Survivor |||---

-- Prepper Knife - Stab
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","Weight", 0.4); -- 0.3
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","MinDamage", 0.5); -- 0.7
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","MaxRange", 0.85); -- 0.85
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","BaseSpeed", 1.05); -- 1.1
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","ConditionMax", 12); -- 25
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","ConditionLowerChanceOneIn", 38); -- 20
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","CriticalChance", 50); -- 60
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","CritDmgMultiplier", 2); -- 3
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","DoorDamage", 3); -- 2
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","TreeDamage", 3); -- 1
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","Knockback", 0.3); -- 0.3
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","KnockdownMod", 0); -- 0
SOMWAdjuster("UndeadSurvivor.PrepperKnifeStab","EnduranceMod", 1.0); -- 0.5

-- Prepper Knife - Swing
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","Weight", 0.4); -- 0.3
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","MinDamage", 0.5); -- 0.7
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","MaxRange", 0.87); -- 0.85
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","BaseSpeed", 1.4); -- 1.4
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","ConditionMax", 12); -- 25
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","ConditionLowerChanceOneIn", 34); -- 20
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","CriticalChance", 25); -- 35
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","CritDmgMultiplier", 2); -- 3
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","DoorDamage", 3); -- 2
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","TreeDamage", 3); -- 1
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","Knockback", 0.3); -- 0.3
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","KnockdownMod", 0); -- 0
SOMWAdjuster("UndeadSurvivor.PrepperKnifeSwing","EnduranceMod", 1.0); -- 0.5

-- Prepper Knife Knock
SOMWAdjuster("UndeadSurvivor.PrepperKnifeKnock","ConditionMax", 12); -- 25
SOMWAdjuster("UndeadSurvivor.PrepperKnifeKnock","ConditionLowerChanceOneIn", 42); -- 10

-- Stalker Knife
SOMWAdjuster("UndeadSurvivor.StalkerKnife","AttachmentType", "LongBlade");
SOMWAdjuster("UndeadSurvivor.StalkerKnife","Weight", 1.0); -- 1.6
SOMWAdjuster("UndeadSurvivor.StalkerKnife","MinDamage", 1.1); -- 2
SOMWAdjuster("UndeadSurvivor.StalkerKnife","MaxDamage", 2.2); -- 3
SOMWAdjuster("UndeadSurvivor.StalkerKnife","MaxRange", 1.20); -- 1.23
SOMWAdjuster("UndeadSurvivor.StalkerKnife","BaseSpeed", 1.05); -- 1.1
SOMWAdjuster("UndeadSurvivor.StalkerKnife","ConditionMax", 20); -- 22
SOMWAdjuster("UndeadSurvivor.StalkerKnife","ConditionLowerChanceOneIn", 24); -- 20
SOMWAdjuster("UndeadSurvivor.StalkerKnife","CriticalChance", 20); -- 30
SOMWAdjuster("UndeadSurvivor.StalkerKnife","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("UndeadSurvivor.StalkerKnife","DoorDamage", 12); -- 7
SOMWAdjuster("UndeadSurvivor.StalkerKnife","TreeDamage", 12); -- 10
SOMWAdjuster("UndeadSurvivor.StalkerKnife","Knockback", 0.3); -- 0.3
SOMWAdjuster("UndeadSurvivor.StalkerKnife","KnockdownMod", 2); -- 2
SOMWAdjuster("UndeadSurvivor.StalkerKnife","EnduranceMod", 1.25); -- 2

-- AmazonaSpear
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","Weight", 1.5); -- 1.5
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","MinDamage", 0.9); -- 1.0
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","MaxDamage", 1.8); -- 1.5
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","MinRange", 0.61); -- 0.61
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","MaxRange", 1.48); -- 1.37
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","BaseSpeed", 1.0); -- 0.9
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","ConditionMax", 12); -- 10
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","ConditionLowerChanceOneIn", 28); -- 15
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","CriticalChance", 20); -- 30
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","DoorDamage", 8); -- 7
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","TreeDamage", 0); -- 0
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","Knockback", 0.3); -- 0.3
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","KnockdownMod", 0); -- 0
SOMWAdjuster("UndeadSurvivor.AmazonaSpear","EnduranceMod", 1.25); -- 2

	local function ModCheck()
		if getDebug() then print("SOMW - Undead Survivor - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end