

if getActivatedMods():contains("Arsenal(26)GunFighter[MAIN MOD 2.0]") or getActivatedMods():contains("Arsenal(26)GunFighter") or getActivatedMods():contains("Brita") then
--||| Brita Weapon Pack |||---

-- Butterfly Knife
SOMWAdjuster("Base.Butterfly","Weight", 0.2); -- 0.2
SOMWAdjuster("Base.Butterfly","MinDamage", 0.3); -- 0.2
SOMWAdjuster("Base.Butterfly","MaxDamage", 0.6); -- 0.5
SOMWAdjuster("Base.Butterfly","MaxRange", 0.83); -- 0.8
SOMWAdjuster("Base.Butterfly","BaseSpeed", 1.1); -- 1.0
SOMWAdjuster("Base.Butterfly","ConditionMax", 8); -- 50
SOMWAdjuster("Base.Butterfly","ConditionLowerChanceOneIn", 12); -- 1
SOMWAdjuster("Base.Butterfly","CriticalChance", 40); -- 25
SOMWAdjuster("Base.Butterfly","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("Base.Butterfly","DoorDamage", 2); -- 1
SOMWAdjuster("Base.Butterfly","TreeDamage", 2); -- 2
SOMWAdjuster("Base.Butterfly","EnduranceMod", 1.0); -- 0.5

-- Karambit
SOMWAdjuster("Base.Karambit","Weight", 0.2); -- 0.2
SOMWAdjuster("Base.Karambit","MinDamage", 0.4); -- 0.2
SOMWAdjuster("Base.Karambit","MaxDamage", 0.8); -- 0.8
SOMWAdjuster("Base.Karambit","MaxRange", 0.85); -- 0.5
SOMWAdjuster("Base.Karambit","BaseSpeed", 1.1); -- 1.0
SOMWAdjuster("Base.Karambit","ConditionMax", 9); -- 10
SOMWAdjuster("Base.Karambit","ConditionLowerChanceOneIn", 14); -- 15
SOMWAdjuster("Base.Karambit","CriticalChance", 40); -- 50
SOMWAdjuster("Base.Karambit","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.Karambit","DoorDamage", 2); -- 1
SOMWAdjuster("Base.Karambit","TreeDamage", 2); -- 2
SOMWAdjuster("Base.Karambit","EnduranceMod", 1.0); -- 0.5

-- PushDagger
SOMWAdjuster("Base.PushDagger","Weight", 0.2); -- 0.2
SOMWAdjuster("Base.PushDagger","MinDamage", 0.4); -- 0.2
SOMWAdjuster("Base.PushDagger","MaxDamage", 0.8); -- 0.8
SOMWAdjuster("Base.PushDagger","MaxRange", 0.85); -- 0.5
SOMWAdjuster("Base.PushDagger","BaseSpeed", 1.1); -- 1.0
SOMWAdjuster("Base.PushDagger","ConditionMax", 9); -- 10
SOMWAdjuster("Base.PushDagger","ConditionLowerChanceOneIn", 14); -- 15
SOMWAdjuster("Base.PushDagger","CriticalChance", 40); -- 50
SOMWAdjuster("Base.PushDagger","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.PushDagger","DoorDamage", 2); -- 1
SOMWAdjuster("Base.PushDagger","TreeDamage", 2); -- 2
SOMWAdjuster("Base.PushDagger","EnduranceMod", 1.0); -- 0.5

-- RamboKnife
SOMWAdjuster("Base.RamboKnife","Weight", 0.8); -- 1.2
SOMWAdjuster("Base.RamboKnife","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.RamboKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.RamboKnife","MaxRange", 0.95); -- 0.9
SOMWAdjuster("Base.RamboKnife","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.RamboKnife","ConditionMax", 12); -- 10
SOMWAdjuster("Base.RamboKnife","ConditionLowerChanceOneIn", 28); -- 15
SOMWAdjuster("Base.RamboKnife","CriticalChance", 60); -- 50
SOMWAdjuster("Base.RamboKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.RamboKnife","DoorDamage", 3); -- 1
SOMWAdjuster("Base.RamboKnife","TreeDamage", 3); -- 2
SOMWAdjuster("Base.RamboKnife","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW -  Brita Weapon Pack - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end