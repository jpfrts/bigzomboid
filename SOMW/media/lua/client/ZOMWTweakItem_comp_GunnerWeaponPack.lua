

if getActivatedMods():contains("GunrunnersWeaponPack") then
--|| Gunrunner's Weapon Pack (A VFE Expansion) ||--

-- MoraKnife
SOMWAdjuster("GWP.MoraKnife","Weight", 0.3); -- 0.5
SOMWAdjuster("GWP.MoraKnife","MinDamage", 0.5); -- 0.6
SOMWAdjuster("GWP.MoraKnife","MaxDamage", 1.0); -- 1.2
SOMWAdjuster("GWP.MoraKnife","MaxRange", 0.85); -- 0.9
SOMWAdjuster("GWP.MoraKnife","BaseSpeed", 1.1); -- 1.0
SOMWAdjuster("GWP.MoraKnife","ConditionMax", 10); -- 10
SOMWAdjuster("GWP.MoraKnife","ConditionLowerChanceOneIn", 22); -- 15
SOMWAdjuster("GWP.MoraKnife","CriticalChance", 40); -- 50
SOMWAdjuster("GWP.MoraKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("GWP.MoraKnife","DoorDamage", 2); -- 1
SOMWAdjuster("GWP.MoraKnife","TreeDamage", 2); -- 2
SOMWAdjuster("GWP.MoraKnife","EnduranceMod", 1.0); -- 0.5

	local function ModCheck()
		if getDebug() then print("SOMW -  Gunrunner's Weapon Pack a VFE Expansion - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end