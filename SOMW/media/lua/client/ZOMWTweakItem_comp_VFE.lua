

if getActivatedMods():contains("VFExpansion1") then
--|| VFE ||--

-- M16Bayonet
SOMWAdjuster("Base.M16Bayonet","Weight", 0.4);
SOMWAdjuster("Base.M16Bayonet","MinDamage", 0.5);
SOMWAdjuster("Base.M16Bayonet","MaxDamage", 1.0);
SOMWAdjuster("Base.M16Bayonet","MinRange", 0.61);
SOMWAdjuster("Base.M16Bayonet","MaxRange", 0.92);
SOMWAdjuster("Base.M16Bayonet","BaseSpeed", 1.02);
SOMWAdjuster("Base.M16Bayonet","ConditionMax", 12);
SOMWAdjuster("Base.M16Bayonet","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("Base.M16Bayonet","CriticalChance", 50);
SOMWAdjuster("Base.M16Bayonet","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.M16Bayonet","DoorDamage", 2);
SOMWAdjuster("Base.M16Bayonet","TreeDamage", 2);
SOMWAdjuster("Base.M16Bayonet","EnduranceMod", 1);
-- SpearBayonet
SOMWAdjuster("Base.SpearBayonet","Weight", 1.4);
SOMWAdjuster("Base.SpearBayonet","MinDamage", 0.85);
SOMWAdjuster("Base.SpearBayonet","MaxDamage", 1.7);
SOMWAdjuster("Base.SpearBayonet","MinRange", 0.74);
SOMWAdjuster("Base.SpearBayonet","MaxRange", 1.52);
SOMWAdjuster("Base.SpearBayonet","BaseSpeed", 0.95);
SOMWAdjuster("Base.SpearBayonet","ConditionMax", 12);
SOMWAdjuster("Base.SpearBayonet","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("Base.SpearBayonet","CriticalChance", 17.5);
SOMWAdjuster("Base.SpearBayonet","CritDmgMultiplier", 2); -- SpearCritDmg
SOMWAdjuster("Base.SpearBayonet","DoorDamage", 3);
SOMWAdjuster("Base.SpearBayonet","TreeDamage", 2);
SOMWAdjuster("Base.SpearBayonet","EnduranceMod", 1.25);

	local function ModCheck()
		if getDebug() then print("SOMW - VFE - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end