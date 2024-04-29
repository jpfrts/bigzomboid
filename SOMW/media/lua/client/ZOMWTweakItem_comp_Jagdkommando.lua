

if getActivatedMods():contains("Jagdkommando") then
--|| Jagdkommando ||--

-- Jagdkommando
SOMWAdjuster("Base.Jagdkommando","Weight", 0.6); -- 0.5
SOMWAdjuster("Base.Jagdkommando","MinDamage", 0.5); -- 0.6
SOMWAdjuster("Base.Jagdkommando","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("Base.Jagdkommando","MaxRange", 0.94); -- 0.9
SOMWAdjuster("Base.Jagdkommando","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("Base.Jagdkommando","ConditionMax", 16); -- 10
SOMWAdjuster("Base.Jagdkommando","ConditionLowerChanceOneIn", 20); -- 15
SOMWAdjuster("Base.Jagdkommando","CriticalChance", 60); -- 50
SOMWAdjuster("Base.Jagdkommando","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.Jagdkommando","DoorDamage", 4); -- 1
SOMWAdjuster("Base.Jagdkommando","TreeDamage", 4); -- 2
SOMWAdjuster("Base.Jagdkommando","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW - Jagdkommando - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end