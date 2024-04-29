

if getActivatedMods():contains("PSA") or getActivatedMods():contains("P.S.A") or getActivatedMods():contains("PRitemtest") then
--|| P.S.A. ||--

-- ScoutKnife
SOMWAdjuster("Base.ScoutKnife","Weight", 0.4); -- 0.5
SOMWAdjuster("Base.ScoutKnife","MinDamage", 0.45); -- 0.6
SOMWAdjuster("Base.ScoutKnife","MaxDamage", 0.9); -- 1.2
SOMWAdjuster("Base.ScoutKnife","MaxRange", 0.9); -- 0.9
SOMWAdjuster("Base.ScoutKnife","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.ScoutKnife","ConditionMax", 10); -- 10
SOMWAdjuster("Base.ScoutKnife","ConditionLowerChanceOneIn", 18); -- 15
SOMWAdjuster("Base.ScoutKnife","CriticalChance", 40); -- 50
SOMWAdjuster("Base.ScoutKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.ScoutKnife","DoorDamage", 3); -- 1
SOMWAdjuster("Base.ScoutKnife","TreeDamage", 3); -- 2
SOMWAdjuster("Base.ScoutKnife","EnduranceMod", 1.0); -- 0.5

-- BayonetKnife
SOMWAdjuster("Base.BayonetKnife","Weight", 0.5); -- 0.5
SOMWAdjuster("Base.BayonetKnife","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.BayonetKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.BayonetKnife","MaxRange", 0.9); -- 0.9
SOMWAdjuster("Base.BayonetKnife","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.BayonetKnife","ConditionMax", 10); -- 10
SOMWAdjuster("Base.BayonetKnife","ConditionLowerChanceOneIn", 18); -- 15
SOMWAdjuster("Base.BayonetKnife","CriticalChance", 60); -- 50
SOMWAdjuster("Base.BayonetKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.BayonetKnife","DoorDamage", 3); -- 1
SOMWAdjuster("Base.BayonetKnife","TreeDamage", 3); -- 2
SOMWAdjuster("Base.BayonetKnife","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - P.S.A. - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end