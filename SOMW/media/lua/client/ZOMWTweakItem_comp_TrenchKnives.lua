

if getActivatedMods():contains("Trench Knives") or getActivatedMods():contains("ADVANCEDGEAR") then
--||| Trench Knives |||---

-- Trench Knife
SOMWAdjuster("Base.PA_TrenchKnife","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.PA_TrenchKnife","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.PA_TrenchKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.PA_TrenchKnife","MaxRange", 0.9); -- 0.9
SOMWAdjuster("Base.PA_TrenchKnife","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.PA_TrenchKnife","ConditionMax", 10); -- 10
SOMWAdjuster("Base.PA_TrenchKnife","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("Base.PA_TrenchKnife","CriticalChance", 50); -- 50
SOMWAdjuster("Base.PA_TrenchKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.PA_TrenchKnife","DoorDamage", 3); -- 1
SOMWAdjuster("Base.PA_TrenchKnife","TreeDamage", 3); -- 2
SOMWAdjuster("Base.PA_TrenchKnife","EnduranceMod", 1.0); -- 0.5

SOMWAdjuster("Base.PA_TrenchKnife2","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.PA_TrenchKnife2","CritDmgMultiplier", 2); -- 10

-- Trench Knife B
SOMWAdjuster("Base.PA_TrenchKnifeB","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.PA_TrenchKnifeB","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.PA_TrenchKnifeB","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.PA_TrenchKnifeB","MaxRange", 0.9); -- 0.9
SOMWAdjuster("Base.PA_TrenchKnifeB","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.PA_TrenchKnifeB","ConditionMax", 10); -- 10
SOMWAdjuster("Base.PA_TrenchKnifeB","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("Base.PA_TrenchKnifeB","CriticalChance", 50); -- 50
SOMWAdjuster("Base.PA_TrenchKnifeB","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.PA_TrenchKnifeB","DoorDamage", 3); -- 1
SOMWAdjuster("Base.PA_TrenchKnifeB","TreeDamage", 3); -- 2
SOMWAdjuster("Base.PA_TrenchKnifeB","EnduranceMod", 1.0); -- 0.5

SOMWAdjuster("Base.PA_TrenchKnifeB2","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.PA_TrenchKnifeB2","CritDmgMultiplier", 2); -- 10

-- Trench Knife C
SOMWAdjuster("Base.PA_TrenchKnifeC","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.PA_TrenchKnifeC","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.PA_TrenchKnifeC","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.PA_TrenchKnifeC","MaxRange", 0.9); -- 0.9
SOMWAdjuster("Base.PA_TrenchKnifeC","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.PA_TrenchKnifeC","ConditionMax", 10); -- 10
SOMWAdjuster("Base.PA_TrenchKnifeC","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("Base.PA_TrenchKnifeC","CriticalChance", 50); -- 50
SOMWAdjuster("Base.PA_TrenchKnifeC","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.PA_TrenchKnifeC","DoorDamage", 3); -- 1
SOMWAdjuster("Base.PA_TrenchKnifeC","TreeDamage", 3); -- 2
SOMWAdjuster("Base.PA_TrenchKnifeC","EnduranceMod", 1.0); -- 0.5

SOMWAdjuster("Base.PA_TrenchKnifeC2","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.PA_TrenchKnifeC2","CritDmgMultiplier", 2); -- 10

	local function ModCheck()
		if getDebug() then print("SOMW - Trench Knives - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end