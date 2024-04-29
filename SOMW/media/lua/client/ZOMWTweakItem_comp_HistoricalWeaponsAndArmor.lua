

if getActivatedMods():contains("HistoricalWeaponsAndArmor") then

--||| Historical Weapons And Armor |||---
-- 15thSpear
SOMWAdjuster("HistoricalWeaponsAndArmor.15thSpear","CriticalChance", 10); -- 30
SOMWAdjuster("HistoricalWeaponsAndArmor.15thSpear","CritDmgMultiplier", 2); -- 6

-- Billhook
SOMWAdjuster("HistoricalWeaponsAndArmor.Billhook","CriticalChance", 10); -- 30
SOMWAdjuster("HistoricalWeaponsAndArmor.Billhook","CritDmgMultiplier", 2); -- 6

-- Halberd
SOMWAdjuster("HistoricalWeaponsAndArmor.Halberd","CriticalChance", 10); -- 30
SOMWAdjuster("HistoricalWeaponsAndArmor.Halberd","CritDmgMultiplier", 2); -- 6

-- HalberdEarly
SOMWAdjuster("HistoricalWeaponsAndArmor.HalberdEarly","CriticalChance", 10); -- 30
SOMWAdjuster("HistoricalWeaponsAndArmor.HalberdEarly","CritDmgMultiplier", 2); -- 6

-- PoleHammer
SOMWAdjuster("HistoricalWeaponsAndArmor.PoleHammer","CriticalChance", 10); -- 30
SOMWAdjuster("HistoricalWeaponsAndArmor.PoleHammer","CritDmgMultiplier", 2); -- 6

-- GreatSword
SOMWAdjuster("HistoricalWeaponsAndArmor.GreatSword","MinDamage", 3.0); -- 8 
SOMWAdjuster("HistoricalWeaponsAndArmor.GreatSword","MaxDamage", 6.0); -- 9
SOMWAdjuster("HistoricalWeaponsAndArmor.GreatSword","BaseSpeed", 0.80); -- 1.0

-- KriegMesser
SOMWAdjuster("HistoricalWeaponsAndArmor.KriegMesser","MinDamage", 2.5); -- 8 
SOMWAdjuster("HistoricalWeaponsAndArmor.KriegMesser","MaxDamage", 5.0); -- 8
SOMWAdjuster("HistoricalWeaponsAndArmor.KriegMesser","BaseSpeed", 0.95); -- 1.0

-- Falchion
SOMWAdjuster("HistoricalWeaponsAndArmor.Falchion","MinDamage", 1.5); -- 4 
SOMWAdjuster("HistoricalWeaponsAndArmor.Falchion","MaxDamage", 3.0); -- 6
SOMWAdjuster("HistoricalWeaponsAndArmor.Falchion","BaseSpeed", 0.90); -- 1.1
SOMWAdjuster("HistoricalWeaponsAndArmor.Falchion","DoorDamage", 15); -- 5
SOMWAdjuster("HistoricalWeaponsAndArmor.Falchion","TreeDamage", 15); -- 2

-- Katzbalger
SOMWAdjuster("HistoricalWeaponsAndArmor.Katzbalger","MinDamage", 1.5); -- 4 
SOMWAdjuster("HistoricalWeaponsAndArmor.Katzbalger","MaxDamage", 3.0); -- 6
SOMWAdjuster("HistoricalWeaponsAndArmor.Katzbalger","BaseSpeed", 0.90); -- 1.1
SOMWAdjuster("HistoricalWeaponsAndArmor.Katzbalger","DoorDamage", 15); -- 5
SOMWAdjuster("HistoricalWeaponsAndArmor.Katzbalger","TreeDamage", 15); -- 2

-- RondelDagger
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","Weight", 0.7); -- 0.5
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","MinDamage", 0.5); -- 1
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","MaxDamage", 1.0); -- 3
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","MaxRange", 0.98); -- 0.9
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","ConditionMax", 12); -- 13
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","ConditionLowerChanceOneIn", 20); -- 25
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","CriticalChance", 60); -- 50
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","DoorDamage", 3); -- 1
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","TreeDamage", 0); -- 2
SOMWAdjuster("HistoricalWeaponsAndArmor.RondelDagger","EnduranceMod", 1.0); -- 0.5

-- QuillonDagger
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","Weight", 0.6); -- 0.5
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","MinDamage", 0.5); -- 1
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","MaxDamage", 1.0); -- 3
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","MaxRange", 0.98); -- 0.9
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","BaseSpeed", 1.1); -- 1.0
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","ConditionMax", 10); -- 13
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","ConditionLowerChanceOneIn", 20); -- 25
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","CriticalChance", 40); -- 50
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","DoorDamage", 3); -- 1
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","TreeDamage", 0); -- 2
SOMWAdjuster("HistoricalWeaponsAndArmor.QuillonDagger","EnduranceMod", 1.0); -- 0.5

-- BaselardDagger
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","Weight", 0.8); -- 0.5
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","MinDamage", 0.5); -- 1
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","MaxDamage", 1.0); -- 3
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","MaxRange", 0.94); -- 0.9
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","ConditionMax", 12); -- 13
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","ConditionLowerChanceOneIn", 20); -- 25
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","CriticalChance", 40); -- 50
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","DoorDamage", 4); -- 1
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","TreeDamage", 4); -- 2
SOMWAdjuster("HistoricalWeaponsAndArmor.BaselardDagger","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - Historical Weapons And Armor - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end