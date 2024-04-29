

if getActivatedMods():contains("Sanjay9647") or getActivatedMods():contains("Ssaulavi") then
--|| Ssaulavi ||--

-- StaffCrafted
SOMWAdjuster("Ssaulavi.StaffCrafted","MaxDamage", 0.7); -- 0.6
SOMWAdjuster("Ssaulavi.StaffCrafted","MaxRange", 1.4); -- 0.85
SOMWAdjuster("Ssaulavi.StaffCrafted","CriticalChance", 5); -- 30
SOMWAdjuster("Ssaulavi.StaffCrafted","CritDmgMultiplier", 2); -- 

-- SMSpear
SOMWAdjuster("Ssaulavi.SMSpear","CriticalChance", 15); -- 30
SOMWAdjuster("Ssaulavi.SMSpear","CritDmgMultiplier", 2); -- 

-- SMSpear
SOMWAdjuster("Ssaulavi.INaginata","MaxDamage", 1.6); -- 0.6
SOMWAdjuster("Ssaulavi.INaginata","MaxRange", 3.2); -- 0.85
SOMWAdjuster("Ssaulavi.INaginata","CriticalChance", 15); -- 40
SOMWAdjuster("Ssaulavi.INaginata","CritDmgMultiplier", 2); -- 

	local function ModCheck()
		if getDebug() then print("SOMW - Ssaulavi - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end
