-----------------------------------------------------
--  Stab Short Blade Critical Hit by Star and Hea  --
--   Using this code in your mods is not allowed   --
--	       Simple Overhaul: Melee Weapons	       --
--               Steam Workshop 2023               --
-----------------------------------------------------

local _weapon = nil

local ShortBluntLvl
local ShortBluntDamageMod
local ShortBluntEndModMod
local ShortBluntMaxRangeMod

local ShortBladeLvl
local ShortBladeDamageMod
local ShortBladeEndModMod
local ShortBladeMaxRangeMod

local LongBladeLvl
local LongBladeDamageMod
local LongBladeEndModMod
local LongBladeMaxRangeMod

local function checknotcompatiblemods()
	if getActivatedMods():contains("JawStab_Buff") == true then	
		jawstabmodcheck = 1;
		else jawstabmodcheck = 0; 
	end
	if getActivatedMods():contains("SimpleOverhaulBladesAndSpears") == true then	
		sobsmodcheck = 1;
		else sobsmodcheck = 0; 
	end	
	
end
Events.OnGameStart.Add(checknotcompatiblemods);

function CheckWepSkillLevel()
	local player = getPlayer();
	if player == nil then
		return
	end
	
	ShortBluntLvl = player:getPerkLevel(Perks.SmallBlunt);
	ShortBladeLvl = player:getPerkLevel(Perks.SmallBlade);
	LongBladeLvl = player:getPerkLevel(Perks.LongBlade);		

	-- Short Blunt Mods
	if ShortBluntLvl >= 8 and ShortBluntLvl <= 10 then -- level 8-10		
		ShortBluntDamageMod = 1.2
		ShortBluntEndModMod = 0.8
		ShortBluntMaxRangeMod = 1.2	-- 1.2			
	elseif ShortBluntLvl == 7 then -- level 7
		ShortBluntDamageMod = 1.2
		ShortBluntEndModMod = 1.0
		ShortBluntMaxRangeMod = 1.2			
	elseif ShortBluntLvl >= 3 and ShortBluntLvl <= 6 then -- level 3-6	
		ShortBluntDamageMod = 1.1
		ShortBluntEndModMod = 1.0
		ShortBluntMaxRangeMod = 1.0				
	else -- below level 3
		ShortBluntDamageMod = 1.0
		ShortBluntEndModMod = 1.0
		ShortBluntMaxRangeMod = 1.0		
	end

	-- Short Blade Mods	
	if ShortBladeLvl >= 8 and ShortBladeLvl <= 10 then -- level 8-10		
		ShortBladeDamageMod = 1.2
		ShortBladeEndModMod = 0.8	
		ShortBladeMaxRangeMod = 1.2	-- 1.2		
	elseif ShortBladeLvl == 7 then -- level 7
		ShortBladeDamageMod = 1.2
		ShortBladeEndModMod = 1.0
		ShortBladeMaxRangeMod = 1.2		
	elseif ShortBladeLvl >= 3 and ShortBladeLvl <= 6 then -- level 3-6	
		ShortBladeDamageMod = 1.1
		ShortBladeEndModMod = 1.0
		ShortBladeMaxRangeMod = 1.0				
	else -- below level 3
		ShortBladeDamageMod = 1.0
		ShortBladeEndModMod = 1.0
		ShortBladeMaxRangeMod = 1.0				
	end	

	-- Long Blade Mods	
	if LongBladeLvl >= 8 and LongBladeLvl <= 10 then -- level 8-10		
		LongBladeDamageMod = 1.2
		LongBladeEndModMod = 0.8
		LongBladeMaxRangeMod  = 1.2	-- 1.2				
	elseif LongBladeLvl == 7 then -- level 7
		LongBladeDamageMod = 1.2
		LongBladeEndModMod = 1.0
		LongBladeMaxRangeMod = 1.2				
	elseif LongBladeLvl >= 3 and LongBladeLvl <= 6 then -- level 3-6	
		LongBladeDamageMod = 1.1
		LongBladeEndModMod = 1.0
		LongBladeMaxRangeMod = 1.0				
	else -- below level 3
		LongBladeDamageMod = 1.0
		LongBladeEndModMod = 1.0
		LongBladeMaxRangeMod = 1.0				
	end		

end

Events.OnGameStart.Add(CheckWepSkillLevel);
Events.LevelPerk.Add(CheckWepSkillLevel);
Events.OnCreatePlayer.Add(CheckWepSkillLevel);
Events.OnCreateLivingCharacter.Add(CheckWepSkillLevel);

local function SetWeaponDmgMods(set_mindamage, set_maxdamage)
	if not _weapon then
		return
	end
	if not _weapon:isEquipped() then
--		print('WARN: not equipped')
	end
--	print('MinDam MaxDam EndMod MaxRange ',set_mindamage,' ',set_maxdamage),' ',set_endurancemod,' ',set_maxrange)
	local txt = _weapon:getScriptItem() 
	local txt_mindamage, txt_maxdamage = txt:getMinDamage(), txt:getMaxDamage()

	if set_mindamage then 
		_weapon:setMinDamage(set_mindamage) 
		_weapon:setMaxDamage(set_maxdamage)
	else 
		_weapon:setMinDamage(txt_mindamage) 
		_weapon:setMaxDamage(txt_maxdamage) 
		_weapon = nil
	end
end

local function SetWeaponRangeEndurMods(set_endurancemod, set_maxrange)
	if not _mhweapon then
		return
	end
	if not _mhweapon:isEquipped() then
--		print('WARN: not equipped')
	end
--	print('MinDam MaxDam EndMod MaxRange ',set_mindamage,' ',set_maxdamage),' ',set_endurancemod,' ',set_maxrange)
	local txt = _mhweapon:getScriptItem() 
	local txt_maxrange, txt_endurancemod = txt:getMaxRange(), txt:getEnduranceMod()

	if set_maxrange then 
		_mhweapon:setMaxRange(set_maxrange) 
		_mhweapon:setEnduranceMod(set_endurancemod) 	
	else 
		_mhweapon:setMaxRange(txt_maxrange) 	
		_mhweapon:setEnduranceMod(txt_endurancemod) 	
		_mhweapon = nil
	end
end

-- SHORT BLUNT ON SWING
local function ShortBluntOnWeaponSwingHitPoint(player, weapon)
	local categories = weapon:getCategories()
	local anim = weapon:getSwingAnim()	
--	print("category ", weapon:getCategory())
--	print("categories ", weapon:getCategories())	
--	print("123")	
--	if anim ~= "Bat" and categories ~= "SmallBlunt" then

	if weapon:hasTag("SReward") then
		return
	end		

	if not categories:contains("SmallBlunt") then
		return
	end
	if sobsmodcheck == 1 then
		player:Say("Deactivate Simple Overhaul: Blades and Spears (SOBS) mod to keep SOMW works correctly");
	end			
	
--	print("Short Blunt")	
	_weapon = weapon	
	local txt = _weapon:getScriptItem()
	local txt_mindamage, txt_maxdamage = txt:getMinDamage(), txt:getMaxDamage()

	-- Actual calculation
	-- For Hit and Crit
	local AMinDamage = txt_mindamage * ShortBluntDamageMod -- min damage with mod
	local AMaxDamage = txt_maxdamage * ShortBluntDamageMod -- max damage with mod

	SetWeaponDmgMods(AMinDamage, AMaxDamage)

--	print("AMinDamage: " ..  AMinDamage)		
--	print("AMaxDamage: " ..  AMaxDamage)
end


-- LONG BLADE ON HIT
local function LongBladeOnWeaponSwingHitPoint(player, weapon)
	local categories = weapon:getCategories()
	local anim = weapon:getSwingAnim()	
--	print("LongBladeOnWeaponSwingHitPoint ", category)

	if weapon:hasTag("SReward") then
		return
	end		

	if not categories:contains("LongBlade") then
		return
	end	
	if sobsmodcheck == 1 then
		player:Say("Deactivate Simple Overhaul: Blades and Spears (SOBS) mod to keep SOMW works correctly");
	end			
	
--	print("Long Blade")
	_weapon = weapon	
	local txt = _weapon:getScriptItem()
	local txt_mindamage, txt_maxdamage = txt:getMinDamage(), txt:getMaxDamage() 
	
	-- Actual calculation
	-- For Hit and Crit
	local AMinDamage = txt_mindamage * LongBladeDamageMod -- min damage with mod
	local AMaxDamage = txt_maxdamage * LongBladeDamageMod -- max damage with mod

	SetWeaponDmgMods(AMinDamage, AMaxDamage)

--	print("AMinDamage: " ..  MinDamageMod)		
--	print("AMaxDamage: " ..  MaxDamageMod)
	
end

-- SHORT BLADE SWING ON HIT
local function ShortBladeOnWeaponSwingHitPoint(player, weapon)
	local categories = weapon:getCategories()
	local anim = weapon:getSwingAnim()	
	
	if weapon:hasTag("SReward") then
		return
	end		
	
--	print("ShortBladeOnWeaponSwingHitPoint ", category)
	if anim == "Stab" or not categories:contains("SmallBlade") then
		return
	end
	if sobsmodcheck == 1 then
		player:Say("Deactivate Simple Overhaul: Blades and Spears (SOBS) mod to keep SOMW works correctly");
	end			
	
--	print("Short Blade Swing")
	_weapon = weapon	
	local txt = _weapon:getScriptItem()
	local txt_mindamage, txt_maxdamage = txt:getMinDamage(), txt:getMaxDamage() 
	
	-- Actual calculation
	-- For Hit and Crit
	local AMinDamage = txt_mindamage * ShortBladeDamageMod -- min damage with mod
	local AMaxDamage = txt_maxdamage * ShortBladeDamageMod -- max damage with mod

	SetWeaponDmgMods(AMinDamage, AMaxDamage)

--	print("AMinDamage: " ..  MinDamageMod)		
--	print("AMaxDamage: " ..  MaxDamageMod)
	
end

-- SHORT BLADE STAB ON HIT
local function ShortBladeStabOnWeaponSwingHitPoint(player, weapon)
	local categories = weapon:getCategories()
	local anim = weapon:getSwingAnim()	
--	print("ShortBladeStabOnWeaponSwingHitPoint ", anim)

	if anim ~= "Stab" or not categories:contains("SmallBlade") then
		return
	end	
	
--	print("Short Blade Stab")	
	if jawstabmodcheck == 1 then
		player:Say("Deactivate Jaw Stab Buff mod to keep SOMW works correctly");
	end	
	if sobsmodcheck == 1 then
		player:Say("Deactivate Simple Overhaul: Blades and Spears (SOBS) mod to keep SOMW works correctly");
	end		

	_weapon = weapon	
	local txt = _weapon:getScriptItem()
	local txt_mindamage, txt_maxdamage = txt:getMinDamage(), txt:getMaxDamage()
	local WeaponCritChance = weapon:getCriticalChance();
	local WeaponCritDmgMultiplier = weapon:getCritDmgMultiplier();
	local CritProcRoll = ZombRand(100);
	local ShBladeCritPerLvl = ShortBladeLvl * 3;

	if WeaponCritChance >= 1 then 
	
		-- Panic moodle penalty
		if player:getMoodles():getMoodleLevel(MoodleType.Panic) == 4 then	
		ShBladeCritPanicPenalty	= 5
		elseif player:getMoodles():getMoodleLevel(MoodleType.Panic) == 3 then	
		ShBladeCritPanicPenalty	= 4
		elseif player:getMoodles():getMoodleLevel(MoodleType.Panic) == 2 then	
		ShBladeCritPanicPenalty	= 2	
		elseif player:getMoodles():getMoodleLevel(MoodleType.Panic) == 1 then	
		ShBladeCritPanicPenalty	= 1	
		else ShBladeCritPanicPenalty = 0
		end

		-- Heavy Load moodle penalty	
		if player:getMoodles():getMoodleLevel(MoodleType.HeavyLoad) == 4 then	
		ShBladeCritHeavyLoadPenalty	= 20
		elseif player:getMoodles():getMoodleLevel(MoodleType.HeavyLoad) == 3 then	
		ShBladeCritHeavyLoadPenalty	= 15
		elseif player:getMoodles():getMoodleLevel(MoodleType.HeavyLoad) == 2 then	
		ShBladeCritHeavyLoadPenalty	= 10	
		elseif player:getMoodles():getMoodleLevel(MoodleType.HeavyLoad) == 1 then	
		ShBladeCritHeavyLoadPenalty	= 5	
		else ShBladeCritHeavyLoadPenalty = 0
		end	
		
		ActualCritChance = ((WeaponCritChance * 0.5) + ShBladeCritPerLvl) - (ShBladeCritPanicPenalty + ShBladeCritHeavyLoadPenalty)
		if ActualCritChance <= 0 then
			ActualCritChance = 0
		end		
		
		else
		ActualCritChance = 0
	end
	
	-- Actual calculation
	-- For Hit
	local AMinDamageHit = txt_mindamage * ShortBladeDamageMod -- Normal Hit Min Damage
	local AMaxDamageHit = txt_maxdamage * ShortBladeDamageMod -- Normal Hit Max Damage	
	-- For Crit
	local AMinDamageCritHit = (txt_mindamage * ShortBladeDamageMod) * WeaponCritDmgMultiplier -- Critical Hit Min Damage
	local AMaxDamageCritHit = (txt_maxdamage * ShortBladeDamageMod) * WeaponCritDmgMultiplier -- Critical Hit Max Damage	
	
	if CritProcRoll <= ActualCritChance then
		SetWeaponDmgMods(AMinDamageCritHit, AMaxDamageCritHit)
	--	print("crit")
	--	player:Say("crit");	
	--	print("AMinDamageCritHit: " ..  AMinDamageCritHit)		
	--	print("AMaxDamageCritHit: " ..  AMaxDamageCritHit)		
	else
		SetWeaponDmgMods(AMinDamageHit, AMaxDamageHit)
	--	print("AMinDamageHit: " ..  AMinDamageHit)		
	--	print("AMaxDamageHit: " ..  AMaxDamageHit)		
	end

end

Events.OnWeaponSwingHitPoint.Add(ShortBluntOnWeaponSwingHitPoint)
Events.OnWeaponSwingHitPoint.Add(LongBladeOnWeaponSwingHitPoint)
Events.OnWeaponSwingHitPoint.Add(ShortBladeOnWeaponSwingHitPoint)
Events.OnWeaponSwingHitPoint.Add(ShortBladeStabOnWeaponSwingHitPoint)

-- SHORT BLUNT ON EQIUP
local function ShortBluntRangeEndurMods()
	local player = getPlayer();
	if player == nil then
		return
	end	
	local mhweapon = player:getPrimaryHandItem();
		
	if mhweapon == nil or not mhweapon:IsWeapon() then
		return
	end
	
--	local anim = mhweapon:getScriptItem():getSwingAnim()
	local categories = mhweapon:getScriptItem():getCategories();	
	
	if not categories:contains("SmallBlunt") then
		return
	end
--	player:Say("BLUNTY");		
	_mhweapon = mhweapon	
	local txt = _mhweapon:getScriptItem()
	local txt_endurancemod, txt_maxrange = txt:getEnduranceMod(), txt:getMaxRange()

	if txt_endurancemod == nil then
		txt_endurancemod = 1
	end
	-- Adding mods	
	local AEnduranceMod = txt_endurancemod * ShortBluntEndModMod -- endurance cost with mod
	local AMaxRange = txt_maxrange * ShortBluntMaxRangeMod -- max range with mod	
	-- Set mods	
	SetWeaponRangeEndurMods(AEnduranceMod, AMaxRange)

--	print("AEnduranceMod: " ..  AEnduranceMod)		
--	print("AMaxRange: " ..  AMaxRange)
	
end

-- LONG BLADE ON EQIUP
local function LongBladeRangeEndurMods()
	local player = getPlayer();
	if player == nil then
		return
	end	
	local mhweapon = player:getPrimaryHandItem();
	if mhweapon == nil or not mhweapon:IsWeapon() then
		return
	end
	local anim = mhweapon:getScriptItem():getSwingAnim()
	local categories = mhweapon:getScriptItem():getCategories();	
	if not categories:contains("LongBlade") then
		return
	end	
--	player:Say("LONG BLADE");	
	_mhweapon = mhweapon	
	local txt = _mhweapon:getScriptItem()
	local txt_endurancemod, txt_maxrange = txt:getEnduranceMod(), txt:getMaxRange()
	if txt_endurancemod == nil then
		txt_endurancemod = 1
	end
	-- Adding mods		
	local AEnduranceMod = txt_endurancemod * LongBladeEndModMod -- endurancemod with mod
	local AMaxRange = txt_maxrange * LongBladeMaxRangeMod -- max range with mod	
	-- Set mods
	SetWeaponRangeEndurMods(AEnduranceMod, AMaxRange)

--	print("AEnduranceMod: " ..  AEnduranceMod)		
--	print("AMaxRange: " ..  AMaxRange)
	
end

-- SHORT BLADE SWING ON EQIUP
local function ShortBladeRangeEndurMods()
	local player = getPlayer();
	if player == nil then
		return
	end	
	local mhweapon = player:getPrimaryHandItem();
	if mhweapon == nil or not mhweapon:IsWeapon() then
		return
	end
	local anim = mhweapon:getScriptItem():getSwingAnim()
	local categories = mhweapon:getScriptItem():getCategories();	
	if anim == "Stab" or not categories:contains("SmallBlade") then
		return
	end
--	player:Say("SWING");		
	_mhweapon = mhweapon	
	local txt = _mhweapon:getScriptItem()
	local txt_endurancemod, txt_maxrange = txt:getEnduranceMod(), txt:getMaxRange()
	if txt_endurancemod == nil then
		txt_endurancemod = 1
	end
	-- Adding mods	
	local AEnduranceMod = txt_endurancemod * ShortBladeEndModMod -- endurancemod with mod
	local AMaxRange = txt_maxrange * ShortBladeMaxRangeMod -- max range with mod	
	-- Set mods
	SetWeaponRangeEndurMods(AEnduranceMod, AMaxRange)

--	print("AEnduranceMod: " ..  AEnduranceMod)		
--	print("AMaxRange: " ..  AMaxRange)
	
end

-- SHORT BLADE STAB ON EQIUP
local function ShortBladeStabRangeEndurMods()
	local player = getPlayer();
	if player == nil then
		return
	end	
	local mhweapon = player:getPrimaryHandItem();
	if mhweapon == nil or not mhweapon:IsWeapon() then
		return
	end
	local anim = mhweapon:getScriptItem():getSwingAnim()
	local categories = mhweapon:getScriptItem():getCategories();	
	if anim ~= "Stab" or not categories:contains("SmallBlade") then
		return
	end	
--	player:Say("STAB");	
	_mhweapon = mhweapon	
	local txt = _mhweapon:getScriptItem()
	local txt_endurancemod, txt_maxrange = txt:getEnduranceMod(), txt:getMaxRange()
	if txt_endurancemod == nil then
		txt_endurancemod = 1
	end

	-- Adding mods
	local AEnduranceMod = txt_endurancemod * ShortBladeEndModMod -- endurancemod with mod
	local AMaxRange = txt_maxrange * ShortBladeMaxRangeMod -- max range with mod			
	-- Set mods
	SetWeaponRangeEndurMods(AEnduranceMod, AMaxRange)

--	print("AEnduranceMod: " ..  AEnduranceMod)		
--	print("AMaxRange: " ..  AMaxRange)
	
end


-- set and reset stats on many events
local function ModsOnEquip()
	ShortBluntRangeEndurMods()
	LongBladeRangeEndurMods()
	ShortBladeRangeEndurMods()
	ShortBladeStabRangeEndurMods()
end

Events.OnEquipPrimary.Add(ModsOnEquip)
Events.OnEquipSecondary.Add(ModsOnEquip)
Events.OnGameStart.Add(ModsOnEquip);
Events.LevelPerk.Add(ModsOnEquip);
Events.OnCreatePlayer.Add(ModsOnEquip);
Events.OnCreateLivingCharacter.Add(ModsOnEquip);

-- Reset DAMAGE on many events
local function ResetMods()
	SetWeaponDmgMods()
end

Events.OnWeaponHitCharacter.Add(ResetMods)
Events.OnPlayerAttackFinished.Add(ResetMods)
Events.EveryOneMinute.Add(ResetMods)
Events.OnEquipPrimary.Add(ResetMods)