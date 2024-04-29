

if getActivatedMods():contains("Craftable Metal Spear") then
--||| Craftable Metal Spear |||---
-- Metal Spear
SOMWAdjuster("Base.SpearMetal","Weight", 2.4); -- 2.5
SOMWAdjuster("Base.SpearMetal","MinDamage", 0.8); -- 1.0 
SOMWAdjuster("Base.SpearMetal","MaxDamage", 1.6); -- 1.5
SOMWAdjuster("Base.SpearMetal","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearMetal","MaxRange", 1.40); -- 1.50
SOMWAdjuster("Base.SpearMetal","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("Base.SpearMetal","ConditionMax", 10); -- 9
SOMWAdjuster("Base.SpearMetal","ConditionLowerChanceOneIn", 24); -- 8 
SOMWAdjuster("Base.SpearMetal","CriticalChance", 15); -- 30
SOMWAdjuster("Base.SpearMetal","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearMetal","DoorDamage", 8); -- 5
SOMWAdjuster("Base.SpearMetal","TreeDamage", 2); -- 0
SOMWAdjuster("Base.SpearMetal","Knockback", 0.3); -- 0.3
SOMWAdjuster("Base.SpearMetal","KnockdownMod", 0); -- 0
SOMWAdjuster("Base.SpearMetal","EnduranceMod", 1.25); -- 0


	local function ModCheck()
		if getDebug() then print("SOMW -  Craftable Metal Spear - OK") end
	end

	Events.OnGameStart.Add(ModCheck);


end