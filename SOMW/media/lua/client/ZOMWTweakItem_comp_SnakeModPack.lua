

if getActivatedMods():contains("AliceSPack") then

--||| Snake's Mod Pack |||---
-- Military knife
SOMWAdjuster("AliceBP.MilitaryKnife","Weight", 0.5); -- 0.5
SOMWAdjuster("AliceBP.MilitaryKnife","MinDamage", 0.5); -- 0.6
SOMWAdjuster("AliceBP.MilitaryKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("AliceBP.MilitaryKnife","MaxRange", 0.93); -- 0.9
SOMWAdjuster("AliceBP.MilitaryKnife","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("AliceBP.MilitaryKnife","ConditionMax", 12); -- 10
SOMWAdjuster("AliceBP.MilitaryKnife","ConditionLowerChanceOneIn", 22); -- 15
SOMWAdjuster("AliceBP.MilitaryKnife","CriticalChance", 60); -- 50
SOMWAdjuster("AliceBP.MilitaryKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("AliceBP.MilitaryKnife","DoorDamage", 3); -- 1
SOMWAdjuster("AliceBP.MilitaryKnife","TreeDamage", 3); -- 2
SOMWAdjuster("AliceBP.MilitaryKnife","EnduranceMod", 1.0); -- 0.5
-- Spear with Military Knife
SOMWAdjuster("AliceBP.SpearMilitaryKnife","Weight", 1.5); -- 2.2
SOMWAdjuster("AliceBP.SpearMilitaryKnife","MinDamage", 0.85); -- 1.2 
SOMWAdjuster("AliceBP.SpearMilitaryKnife","MaxDamage", 1.7); -- 1.7
SOMWAdjuster("AliceBP.SpearMilitaryKnife","MinRange", 0.74); -- 0.98
SOMWAdjuster("AliceBP.SpearMilitaryKnife","MaxRange", 1.52); -- 1.48
SOMWAdjuster("AliceBP.SpearMilitaryKnife","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("AliceBP.SpearMilitaryKnife","ConditionMax", 12); -- 9
SOMWAdjuster("AliceBP.SpearMilitaryKnife","ConditionLowerChanceOneIn", 22); -- 8 
SOMWAdjuster("AliceBP.SpearMilitaryKnife","CriticalChance", 20); -- 30
SOMWAdjuster("AliceBP.SpearMilitaryKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("AliceBP.SpearMilitaryKnife","DoorDamage", 4); -- 7
SOMWAdjuster("AliceBP.SpearMilitaryKnife","TreeDamage", 3); -- 0
SOMWAdjuster("AliceBP.SpearMilitaryKnife","Knockback", 0.3); -- 0.3
SOMWAdjuster("AliceBP.SpearMilitaryKnife","KnockdownMod", 0); -- 0
SOMWAdjuster("AliceBP.SpearMilitaryKnife","EnduranceMod", 1.25); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - SnakeModPack: AliceSPack - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end

if getActivatedMods():contains("LeGourmetRevolution") then

-- Knife Depostador
SOMWAdjuster("Base.KnifeDepostador","Weight", 0.4); -- 0.5
SOMWAdjuster("Base.KnifeDepostador","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.KnifeDepostador","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.KnifeDepostador","MaxRange", 0.92); -- 0.9
SOMWAdjuster("Base.KnifeDepostador","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.KnifeDepostador","ConditionMax", 10); -- 10
SOMWAdjuster("Base.KnifeDepostador","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("Base.KnifeDepostador","CriticalChance", 60); -- 50
SOMWAdjuster("Base.KnifeDepostador","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.KnifeDepostador","DoorDamage", 3); -- 1
SOMWAdjuster("Base.KnifeDepostador","TreeDamage", 3); -- 2
SOMWAdjuster("Base.KnifeDepostador","EnduranceMod", 1.0); -- 0.5

-- SurvivalKnife2
SOMWAdjuster("Base.SurvivalKnife2","Weight", 0.4); -- 0.5
SOMWAdjuster("Base.SurvivalKnife2","MinDamage", 0.45); -- 0.6
SOMWAdjuster("Base.SurvivalKnife2","MaxDamage", 0.9); -- 1.2
SOMWAdjuster("Base.SurvivalKnife2","MaxRange", 0.92); -- 0.9
SOMWAdjuster("Base.SurvivalKnife2","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.SurvivalKnife2","ConditionMax", 10); -- 10
SOMWAdjuster("Base.SurvivalKnife2","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("Base.SurvivalKnife2","CriticalChance", 40); -- 50
SOMWAdjuster("Base.SurvivalKnife2","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SurvivalKnife2","DoorDamage", 2); -- 1
SOMWAdjuster("Base.SurvivalKnife2","TreeDamage", 2); -- 2
SOMWAdjuster("Base.SurvivalKnife2","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - SnakeModPack: LeGourmetRevolution - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end

if getActivatedMods():contains("BatesMetalicosRevived") then

-- MetalBaseballBat
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","Weight", 2.0);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","MinDamage", 0.7);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","MaxDamage", 1.4);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","MinRange", 0.61);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","MaxRange", 1.25);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","BaseSpeed", 0.96);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","ConditionMax", 10);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","ConditionLowerChanceOneIn", 60);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","CriticalChance", 40);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","DoorDamage", 10);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","TreeDamage", 2);
SOMWAdjuster("BatesMetalicos.MetalBaseballBat","EnduranceMod", 1);

-- SteelBaseballBat
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","Weight", 2.2);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","MinDamage", 0.725);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","MaxDamage", 1.45);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","MinRange", 0.61);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","MaxRange", 1.25);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","BaseSpeed", 0.93);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","ConditionMax", 10);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","ConditionLowerChanceOneIn", 120);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","CriticalChance", 40);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","DoorDamage", 12);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","TreeDamage", 2);
SOMWAdjuster("BatesMetalicos.SteelBaseballBat","EnduranceMod", 1);

	local function ModCheck()
		if getDebug() then print("SOMW - SnakeModPack: BatesMetalicosRevived - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end
