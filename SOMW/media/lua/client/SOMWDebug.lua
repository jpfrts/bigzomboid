function SOMWDebugSwing (player, weapon)

	local player = getPlayer();

	if not weapon:getCategories():contains("Unarmed") then

	local WeaponInPrimaryHand = player:getPrimaryHandItem();
	
	local WeaponEndMod = WeaponInPrimaryHand:getEnduranceMod();
	local WeaponBaseSpeed = WeaponInPrimaryHand:getBaseSpeed();
	local WeaponCriticalChance = WeaponInPrimaryHand:getCriticalChance();
	local WeaponCritDmgMultiplier = WeaponInPrimaryHand:getCritDmgMultiplier();	
	local WeaponTreeDamage = WeaponInPrimaryHand:getTreeDamage();	
	local WeaponDoorDamage = WeaponInPrimaryHand:getDoorDamage();	
	
	local WeaponConditionMax = WeaponInPrimaryHand:getConditionMax();
	local WeapongetConditionLowerChance = WeaponInPrimaryHand:getConditionLowerChance();

	print("------")	
--	print("WeaponEndMod: " ..  WeaponEndMod)	
	print("WeaponBaseSpeed: " ..  WeaponBaseSpeed)	
	print("WeaponCriticalChance: " ..  WeaponCriticalChance)	
	print("WeaponCritDmgMultiplier: " ..  WeaponCritDmgMultiplier)		
	print("WeaponConditionMax: " ..  WeaponConditionMax)	
	print("WeapongetConditionLowerChance: " ..  WeapongetConditionLowerChance)		
	print("WeaponEndMod: " ..  WeaponEndMod)	
	print("WeaponTreeDamage: " ..  WeaponTreeDamage)	
	print("WeaponDoorDamage: " ..  WeaponDoorDamage)		
	print("------")		
	
	end
	
end

-- Events.OnWeaponSwingHitPoint.Add(SOMWDebugSwing);