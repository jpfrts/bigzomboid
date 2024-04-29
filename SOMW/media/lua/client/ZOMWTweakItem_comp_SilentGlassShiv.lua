

if getActivatedMods():contains("SilentsGlassShiv") then
--|| SilentsGlassShiv ||--

-- Glass Shiv
SOMWAdjuster("SilentsGlassShiv.GlassShiv","Weight", 0.3); -- 0.75
SOMWAdjuster("SilentsGlassShiv.GlassShiv","MinDamage", 0.25); -- 0.4
SOMWAdjuster("SilentsGlassShiv.GlassShiv","MaxDamage", 0.5); -- 0.6
SOMWAdjuster("SilentsGlassShiv.GlassShiv","MaxRange", 0.85); -- 0.85
SOMWAdjuster("SilentsGlassShiv.GlassShiv","BaseSpeed", 1.1); -- 1.0
SOMWAdjuster("SilentsGlassShiv.GlassShiv","ConditionMax", 6); -- 6
SOMWAdjuster("SilentsGlassShiv.GlassShiv","ConditionLowerChanceOneIn", 4); -- 7
SOMWAdjuster("SilentsGlassShiv.GlassShiv","CriticalChance", 20); -- 20
SOMWAdjuster("SilentsGlassShiv.GlassShiv","CritDmgMultiplier", 2); -- 2
SOMWAdjuster("SilentsGlassShiv.GlassShiv","EnduranceMod", 1.0); -- 0.5
-- Spear With Glass Shiv
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","Weight", 1.3); -- 2.1
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","MinDamage", 0.725); -- 1.2
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","MaxDamage", 1.45); -- 1.6
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","MinRange", 0.74); -- 0.98
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","MaxRange", 1.44); -- 1.45
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","ConditionMax", 6); -- 7
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","ConditionLowerChanceOneIn", 6); -- 4
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","CriticalChance", 10); -- 30
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","DoorDamage", 2); -- 7
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","TreeDamage", 1); -- 0
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","Knockback", 0.3); -- 0.3
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","KnockdownMod", 0); -- 0
SOMWAdjuster("SilentsGlassShiv.SpearGlassShiv","EnduranceMod", 1.25); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - SilentsGlassShiv - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end