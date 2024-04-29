

if getActivatedMods():contains("TKS") then
--||| Tactical Sheaths |||---

-- Tactical Knife
SOMWAdjuster("TKS.TacticalKnife","Weight", 0.4); -- 0.5
SOMWAdjuster("TKS.TacticalKnife","MinDamage", 0.5); -- 0.6
SOMWAdjuster("TKS.TacticalKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("TKS.TacticalKnife","MaxRange", 0.9); -- 0.9
SOMWAdjuster("TKS.TacticalKnife","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("TKS.TacticalKnife","ConditionMax", 10); -- 10
SOMWAdjuster("TKS.TacticalKnife","ConditionLowerChanceOneIn", 24); -- 15
SOMWAdjuster("TKS.TacticalKnife","CriticalChance", 50); -- 50
SOMWAdjuster("TKS.TacticalKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("TKS.TacticalKnife","DoorDamage", 3); -- 1
SOMWAdjuster("TKS.TacticalKnife","TreeDamage", 3); -- 2
SOMWAdjuster("TKS.TacticalKnife","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - Tactical Sheaths - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end