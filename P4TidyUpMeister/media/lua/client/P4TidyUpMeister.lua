local P4TidyUpMeister = {}

P4TidyUpMeister.player = nil
P4TidyUpMeister.needsReequip = false
P4TidyUpMeister.doNotReequip = false
P4TidyUpMeister.ignoreStop = false
P4TidyUpMeister.primaryItem = nil
P4TidyUpMeister.secondaryItem = nil
P4TidyUpMeister.wornItems = {}
P4TidyUpMeister.transferredItems = {}

P4TidyUpMeister.temp = {}
P4TidyUpMeister.temp.needsReequip = false
P4TidyUpMeister.temp.ignoreStop = false
P4TidyUpMeister.temp.primaryItem = nil
P4TidyUpMeister.temp.secondaryItem = nil
P4TidyUpMeister.temp.wornItems = {}
P4TidyUpMeister.temp.transferredItems = {}

P4TidyUpMeister.Messages_ToDoReequip = getText("UI_P4TidyUpMeister_Messages_ToDoReequip")
P4TidyUpMeister.Messages_ToDoNotReequip = getText("UI_P4TidyUpMeister_Messages_ToDoNotReequip")
P4TidyUpMeister.ContextMenu_ToDoReequip = getText("ContextMenu_P4TidyUpMeister_ToDoReequip")
P4TidyUpMeister.ContextMenu_ToDoNotReequip = getText("ContextMenu_P4TidyUpMeister_ToDoNotReequip")

-- *****************************************************************************
-- * Options
-- *****************************************************************************

P4TidyUpMeister.options = {
	forceReequip = false,
	useContextMenu = true,
	enableBuild = true,
	enableFirearms = true,
	enableFitness = true,
	enableEatFood = true,
	enableTakePills = true,
	enableReading = true,
	enableMedical = true,
	enableTailoring = true,
	enableLightFire = true,
}

SetModOptions = function(options)
	P4TidyUpMeister.options = options
end

-- *****************************************************************************
-- * ModData functions
-- *****************************************************************************

P4TidyUpMeister.setDoNotReequip = function()
	local modData = P4TidyUpMeister.player:getModData()
	if not modData.P4TidyUpMeister then
		modData.P4TidyUpMeister = {}
		modData.P4TidyUpMeister.doNotReequip = false
	end
	P4TidyUpMeister.doNotReequip = modData.P4TidyUpMeister.doNotReequip
end

P4TidyUpMeister.toggleDoNotReequip = function()
	local modData = P4TidyUpMeister.player:getModData()
	modData.P4TidyUpMeister.doNotReequip = not modData.P4TidyUpMeister.doNotReequip
	P4TidyUpMeister.doNotReequip = modData.P4TidyUpMeister.doNotReequip
	if P4TidyUpMeister.doNotReequip then
		P4TidyUpMeister.showInfo(P4TidyUpMeister.Messages_ToDoNotReequip)
	else
		P4TidyUpMeister.showInfo(P4TidyUpMeister.Messages_ToDoReequip)
	end
end

-- *****************************************************************************
-- * Overwrite functions
-- *****************************************************************************

-- [SET] Most actions via context menu
P4TidyUpMeister.ISWorldObjectContextMenu_equip = ISWorldObjectContextMenu.equip
function ISWorldObjectContextMenu.equip(player, handItem, item, primary, twoHands)
	-- Even if already have tools equipped, this function will always be called, so start the hook here.
	P4TidyUpMeister.set(P4TidyUpMeister.player)
	return P4TidyUpMeister.ISWorldObjectContextMenu_equip(player, handItem, item, primary, twoHands)
end

-- [SET] Build
P4TidyUpMeister.ISBuildAction_new = ISBuildAction.new
function ISBuildAction:new(player, item, x, y, z, north, spriteName, time)
	if P4TidyUpMeister.options.enableBuild then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	return P4TidyUpMeister.ISBuildAction_new(self, player, item, x, y, z, north, spriteName, time)
end

-- [SET] Build
P4TidyUpMeister.ISBuildMenu_onMultiStageBuildSelected = ISBuildMenu.onMultiStageBuildSelected
function ISBuildMenu.onMultiStageBuildSelected(cursor, square)
	if P4TidyUpMeister.options.enableBuild then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISBuildMenu_onMultiStageBuildSelected(cursor, square)
end

-- [SET] Firearms (Upgrade weapon)
P4TidyUpMeister.ISInventoryPaneContextMenu_onUpgradeWeapon = ISInventoryPaneContextMenu.onUpgradeWeapon
function ISInventoryPaneContextMenu.onUpgradeWeapon(weapon, part, player)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onUpgradeWeapon(weapon, part, player)
end

-- [SET] Firearms (Remove upgrade weapon)
P4TidyUpMeister.ISInventoryPaneContextMenu_onRemoveUpgradeWeapon = ISInventoryPaneContextMenu.onRemoveUpgradeWeapon
function ISInventoryPaneContextMenu.onRemoveUpgradeWeapon(weapon, part, player)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onRemoveUpgradeWeapon(weapon, part, player)
end

-- [SET] Firearms (Insert magazine)
P4TidyUpMeister.ISInventoryPaneContextMenu_onInsertMagazine = ISInventoryPaneContextMenu.onInsertMagazine
function ISInventoryPaneContextMenu.onInsertMagazine(player, weapon, magazine)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onInsertMagazine(player, weapon, magazine)
end

-- [SET] Firearms (Eject magazine)
P4TidyUpMeister.ISInventoryPaneContextMenu_onEjectMagazine = ISInventoryPaneContextMenu.onEjectMagazine
function ISInventoryPaneContextMenu.onEjectMagazine(player, weapon)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onEjectMagazine(player, weapon)
end

-- [SET] Firearms (Load bullets into firearm)
P4TidyUpMeister.ISInventoryPaneContextMenu_onLoadBulletsIntoFirearm = ISInventoryPaneContextMenu.onLoadBulletsIntoFirearm
function ISInventoryPaneContextMenu.onLoadBulletsIntoFirearm(player, weapon)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onLoadBulletsIntoFirearm(player, weapon)
end

-- [SET] Firearms (Unload bullets from firearm)
P4TidyUpMeister.ISInventoryPaneContextMenu_onUnloadBulletsFromFirearm = ISInventoryPaneContextMenu.onUnloadBulletsFromFirearm
function ISInventoryPaneContextMenu.onUnloadBulletsFromFirearm(player, weapon)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onUnloadBulletsFromFirearm(player, weapon)
end

-- [SET] Firearms (Rack gun)
P4TidyUpMeister.ISInventoryPaneContextMenu_onRackGun = ISInventoryPaneContextMenu.onRackGun
function ISInventoryPaneContextMenu.onRackGun(player, weapon)
	if P4TidyUpMeister.options.enableFirearms then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onRackGun(player, weapon)
end

-- [SET] Fitness
P4TidyUpMeister.ISFitnessAction_new = ISFitnessAction.new
function ISFitnessAction:new(player, exercise, timeToExe, fitnessUI, exeData)
	if P4TidyUpMeister.options.enableFitness then
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
	end
	return P4TidyUpMeister.ISFitnessAction_new(self, player, exercise, timeToExe, fitnessUI, exeData)
end

-- [SET] Eat food
P4TidyUpMeister.ISInventoryPaneContextMenu_onEatItems = ISInventoryPaneContextMenu.onEatItems
function ISInventoryPaneContextMenu.onEatItems(items, percentage, playerNo)
	if P4TidyUpMeister.options.enableEatFood then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onEatItems(items, percentage, playerNo)
end

-- [SET] Eat food (Drink)
P4TidyUpMeister.ISInventoryPaneContextMenu_onDrinkForThirst = ISInventoryPaneContextMenu.onDrinkForThirst
function ISInventoryPaneContextMenu.onDrinkForThirst(waterContainer, player)
	if P4TidyUpMeister.options.enableEatFood then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onDrinkForThirst(waterContainer, player)
end

-- [SET] Eat food (Drink)
P4TidyUpMeister.ISInventoryPaneContextMenu_onDrink = ISInventoryPaneContextMenu.onDrink
function ISInventoryPaneContextMenu.onDrink(items, waterContainer, percentage, player)
	if P4TidyUpMeister.options.enableEatFood then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onDrink(items, waterContainer, percentage, player)
end

-- [SET] Take pills
P4TidyUpMeister.ISInventoryPaneContextMenu_onPillsItems = ISInventoryPaneContextMenu.onPillsItems
function ISInventoryPaneContextMenu.onPillsItems(items, player)
	if P4TidyUpMeister.options.enableTakePills then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onPillsItems(items, player)
end

-- [SET] Reading
P4TidyUpMeister.ISInventoryPaneContextMenu_onLiteratureItems = ISInventoryPaneContextMenu.onLiteratureItems
function ISInventoryPaneContextMenu.onLiteratureItems(items, player)
	if P4TidyUpMeister.options.enableReading then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onLiteratureItems(items, player)
end

-- [SET] Medical (Health Panel)
P4TidyUpMeister.HealthPanelAction_new = HealthPanelAction.new
function HealthPanelAction:new(character, handler, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	if P4TidyUpMeister.options.enableMedical then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	return P4TidyUpMeister.HealthPanelAction_new(self, character, handler, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

-- [SET] Medical (DryMyself)
P4TidyUpMeister.ISInventoryPaneContextMenu_onDryMyself = ISInventoryPaneContextMenu.onDryMyself
function ISInventoryPaneContextMenu.onDryMyself(towels, player)
	if P4TidyUpMeister.options.enableMedical then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_onDryMyself(towels, player)
end

P4TidyUpMeister.ISDryMyself_stop = ISDryMyself.stop
function ISDryMyself:stop()
	-- Reset is called when action is stopped, so it needs to evacuate and revert.
	P4TidyUpMeister.evacuate()
	P4TidyUpMeister.ISDryMyself_stop(self)
	P4TidyUpMeister.revert()
	P4TidyUpMeister.reequip(P4TidyUpMeister.player)
end

-- [SET] Tailoring (Repair)
P4TidyUpMeister.ISInventoryPaneContextMenu_repairClothing = ISInventoryPaneContextMenu.repairClothing
function ISInventoryPaneContextMenu.repairClothing(player, clothing, part, fabric, thread, needle)
	if P4TidyUpMeister.options.enableTailoring then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_repairClothing(player, clothing, part, fabric, thread, needle)
end

-- [SET] Tailoring (Remove patch)
P4TidyUpMeister.ISInventoryPaneContextMenu_removePatch = ISInventoryPaneContextMenu.removePatch
function ISInventoryPaneContextMenu.removePatch(player, clothing, part, needle)
	if P4TidyUpMeister.options.enableTailoring then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISInventoryPaneContextMenu_removePatch(player, clothing, part, needle)
end

-- [SET] Mechanics (Install part)
P4TidyUpMeister.ISVehiclePartMenu_onInstallPart = ISVehiclePartMenu.onInstallPart
function ISVehiclePartMenu.onInstallPart(player, part, item)
	-- Notice : Mechanics is always be processed as the basic function.
	P4TidyUpMeister.set(P4TidyUpMeister.player)
	P4TidyUpMeister.ISVehiclePartMenu_onInstallPart(player, part, item)
end

-- [SET] Mechanics (Uninstall part)
P4TidyUpMeister.ISVehiclePartMenu_onUninstallPart = ISVehiclePartMenu.onUninstallPart
function ISVehiclePartMenu.onUninstallPart(player, part)
	-- Notice : Mechanics is always be processed as the basic function.
	P4TidyUpMeister.set(P4TidyUpMeister.player)
	P4TidyUpMeister.ISVehiclePartMenu_onUninstallPart(player, part)
end

-- [SET] Mechanics (Fix)
P4TidyUpMeister.ISInventoryPaneContextMenu_onFix = ISInventoryPaneContextMenu.onFix
function ISInventoryPaneContextMenu.onFix(brokenObject, player, fixing, fixer, vehiclePart)
	-- Notice : Mechanics is always be processed as the basic function.
	P4TidyUpMeister.set(P4TidyUpMeister.player)
	P4TidyUpMeister.ISInventoryPaneContextMenu_onFix(brokenObject, player, fixing, fixer, vehiclePart)
end

-- [SET] Light fire (Campfire Materials)
P4TidyUpMeister.ISCampingMenu_onLightFromLiterature = ISCampingMenu.onLightFromLiterature
function ISCampingMenu.onLightFromLiterature(playerObj, itemType, lighter, campfire, fuelAmt)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISCampingMenu_onLightFromLiterature(playerObj, itemType, lighter, campfire, fuelAmt)
end

-- [SET] Light fire (Campfire Materials)
P4TidyUpMeister.ISCampingMenu_onLightFromPetrol = ISCampingMenu.onLightFromPetrol
function ISCampingMenu.onLightFromPetrol(worldobjects, player, lighter, petrol, campfire)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISCampingMenu_onLightFromPetrol(worldobjects, player, lighter, petrol, campfire)
end

-- [SET] Light fire (Campfire Materials)
P4TidyUpMeister.ISCampingMenu_onLightFromKindle = ISCampingMenu.onLightFromKindle
function ISCampingMenu.onLightFromKindle(worldobjects, player, percedWood, stickOrBranch, campfire)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
	end
	P4TidyUpMeister.ISCampingMenu_onLightFromKindle(worldobjects, player, percedWood, stickOrBranch, campfire)
end

-- [SET] Light fire (Charcoal BBQ)
P4TidyUpMeister.ISBBQMenu_onLightFromLiterature = ISBBQMenu.onLightFromLiterature
function ISBBQMenu.onLightFromLiterature(playerObj, itemType, lighter, bbq)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
	end
	P4TidyUpMeister.ISBBQMenu_onLightFromLiterature(playerObj, itemType, lighter, bbq)
end

-- [SET] Light fire (Charcoal BBQ)
P4TidyUpMeister.ISBBQMenu_onLightFromPetrol = ISBBQMenu.onLightFromPetrol
function ISBBQMenu.onLightFromPetrol(worldobjects, player, lighter, petrol, bbq)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISBBQMenu_onLightFromPetrol(worldobjects, player, lighter, petrol, bbq)
end

-- [SET] Light fire (Charcoal BBQ) (Doesn't work well, maybe vanilla's bug.)
P4TidyUpMeister.ISBBQMenu_onLightFromKindle = ISBBQMenu.onLightFromKindle
function ISBBQMenu.onLightFromKindle(worldobjects, player, percedWood, stickOrBranch, bbq)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
	end
	P4TidyUpMeister.ISBBQMenu_onLightFromKindle(worldobjects, player, percedWood, stickOrBranch, bbq)
end

-- [SET] Light fire (Fireplace)
P4TidyUpMeister.ISFireplaceMenu_onLightFromLiterature = ISFireplaceMenu.onLightFromLiterature
function ISFireplaceMenu.onLightFromLiterature(playerObj, itemType, lighter, fireplace, fuelAmt)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISFireplaceMenu_onLightFromLiterature(playerObj, itemType, lighter, fireplace, fuelAmt)
end

-- [SET] Light fire (Fireplace)
P4TidyUpMeister.ISFireplaceMenu_onLightFromPetrol = ISFireplaceMenu.onLightFromPetrol
function ISFireplaceMenu.onLightFromPetrol(worldobjects, player, lighter, petrol, fireplace)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISFireplaceMenu_onLightFromPetrol(worldobjects, player, lighter, petrol, fireplace)
end

-- [SET] Light fire (Fireplace)
P4TidyUpMeister.ISFireplaceMenu_onLightFromKindle = ISFireplaceMenu.onLightFromKindle
function ISFireplaceMenu.onLightFromKindle(worldobjects, player, percedWood, stickOrBranch, fireplace)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
	end
	P4TidyUpMeister.ISFireplaceMenu_onLightFromKindle(worldobjects, player, percedWood, stickOrBranch, fireplace)
end

-- [SET] Light fire (Metal Drum)
P4TidyUpMeister.ISBlacksmithMenu_onLightDrumFromLiterature = ISBlacksmithMenu.onLightDrumFromLiterature
function ISBlacksmithMenu.onLightDrumFromLiterature(worldobjects, player, literature, lighter, metalDrum, fuelAmt)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISBlacksmithMenu_onLightDrumFromLiterature(worldobjects, player, literature, lighter, metalDrum, fuelAmt)
end

-- [SET] Light fire (Metal Drum)
P4TidyUpMeister.ISBlacksmithMenu_onLightDrumFromPetrol = ISBlacksmithMenu.onLightDrumFromPetrol
function ISBlacksmithMenu.onLightDrumFromPetrol(worldobjects, player, lighter, petrol, metalDrum)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player)
	end
	P4TidyUpMeister.ISBlacksmithMenu_onLightDrumFromPetrol(worldobjects, player, lighter, petrol, metalDrum)
end

-- [SET] Light fire (Metal Drum)
P4TidyUpMeister.ISBlacksmithMenu_onLightDrumFromKindle = ISBlacksmithMenu.onLightDrumFromKindle
function ISBlacksmithMenu.onLightDrumFromKindle(worldobjects, player, percedWood, stickOrBranch, metalDrum)
	if P4TidyUpMeister.options.enableLightFire then
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
	end
	P4TidyUpMeister.ISBlacksmithMenu_onLightDrumFromKindle(worldobjects, player, percedWood, stickOrBranch, metalDrum)
end

P4TidyUpMeister.ISInventoryTransferAction_new = ISInventoryTransferAction.new
function ISInventoryTransferAction:new(player, item, srcContainer, destContainer, time)
	P4TidyUpMeister.setTransferredItem(item)
	return P4TidyUpMeister.ISInventoryTransferAction_new(self, player, item, srcContainer, destContainer, time)
end

P4TidyUpMeister.ISInventoryTransferAction_start = ISInventoryTransferAction.start
function ISInventoryTransferAction:start()
	P4TidyUpMeister.setTransferredItem(self.item)
	P4TidyUpMeister.ISInventoryTransferAction_start(self)
end

P4TidyUpMeister.ISBaseTimedAction_stop = ISBaseTimedAction.stop
function ISBaseTimedAction:stop()
	if P4TidyUpMeister.player == self.character then
		P4TidyUpMeister.ISBaseTimedAction_stop(self)
		if not P4TidyUpMeister.ignoreStop then
			if P4TidyUpMeister.options.forceReequip then
				P4TidyUpMeister.forceReequip(self.character)
			else
				P4TidyUpMeister.reset()
			end
		end
	end
end

-- *****************************************************************************
-- * For Better Lockpicking functions
-- *****************************************************************************
if BetLock and BobbyPinActionAnim and CrowbarActionAnim then
	P4TidyUpMeister.BetterLockpicking = {}

	-- [SET] Better Lockpicking (Door with Pin)
	P4TidyUpMeister.BetterLockpicking.BetLock_UI_goToDoorBobbyPin = BetLock.UI.goToDoorBobbyPin
	function BetLock.UI.goToDoorBobbyPin(playerObj, door, goToOpen)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
		P4TidyUpMeister.evacuate()
		return P4TidyUpMeister.BetterLockpicking.BetLock_UI_goToDoorBobbyPin(playerObj, door, goToOpen)
	end

	-- [SET] Better Lockpicking (Door with crowbar)
	P4TidyUpMeister.BetterLockpicking.BetLock_UI_goToDoorCrowbar = BetLock.UI.goToDoorCrowbar
	function BetLock.UI.goToDoorCrowbar(playerObj, door)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
		P4TidyUpMeister.evacuate()
		return P4TidyUpMeister.BetterLockpicking.BetLock_UI_goToDoorCrowbar(playerObj, door)
	end

	-- [SET] Better Lockpicking (Window with crowbar)
	P4TidyUpMeister.BetterLockpicking.BetLock_UI_goToWindowCrowbar = BetLock.UI.goToWindowCrowbar
	function BetLock.UI.goToWindowCrowbar(playerObj, window)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
		P4TidyUpMeister.evacuate()
		return P4TidyUpMeister.BetterLockpicking.BetLock_UI_goToWindowCrowbar(playerObj, window)
	end

	-- [SET] Better Lockpicking (Vehicle door with Pin)
	P4TidyUpMeister.BetterLockpicking.BetLock_UI_startLockpickingVehicleDoorBobbyPin = BetLock.UI.startLockpickingVehicleDoorBobbyPin
	function BetLock.UI.startLockpickingVehicleDoorBobbyPin(playerObj, part)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
		P4TidyUpMeister.evacuate()
		return P4TidyUpMeister.BetterLockpicking.BetLock_UI_startLockpickingVehicleDoorBobbyPin(playerObj, part)
	end

	-- [SET] Better Lockpicking (Vehicle door with crowbar)
	P4TidyUpMeister.BetterLockpicking.BetLock_UI_startLockpickingVehicleDoorCrowbar = BetLock.UI.startLockpickingVehicleDoorCrowbar
	function BetLock.UI.startLockpickingVehicleDoorCrowbar(playerObj, part)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player, true)
		P4TidyUpMeister.evacuate()
		return P4TidyUpMeister.BetterLockpicking.BetLock_UI_startLockpickingVehicleDoorCrowbar(playerObj, part)
	end

	P4TidyUpMeister.BetterLockpicking.BobbyPinActionAnim_perform = BobbyPinActionAnim.perform
	function BobbyPinActionAnim:perform()
		P4TidyUpMeister.BetterLockpicking.BobbyPinActionAnim_perform(self)
		P4TidyUpMeister.revert()
		P4TidyUpMeister.reequip(P4TidyUpMeister.player)
	end

	P4TidyUpMeister.BetterLockpicking.CrowbarActionAnim_perform = CrowbarActionAnim.perform
	function CrowbarActionAnim:perform()
		P4TidyUpMeister.BetterLockpicking.CrowbarActionAnim_perform(self)
		P4TidyUpMeister.revert()
		P4TidyUpMeister.reequip(P4TidyUpMeister.player)
	end
end

-- *****************************************************************************
-- * For Common Sense functions
-- *****************************************************************************
if getActivatedMods():contains("BB_CommonSense") then
	P4TidyUpMeister.CommonSense = {}
	P4TidyUpMeister.CommonSense.isPrySuccess = false

	-- [SET] Common Sense (Pry door)
	P4TidyUpMeister.CommonSense.CSUtils_PryEntityOpen = CSUtils.PryEntityOpen
	function CSUtils.PryEntityOpen(worldobjects, priableObject, playerObj, pryingTool)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player)
		P4TidyUpMeister.evacuate()
		-- Once the flag is turned off, explicitly execute reequip later.
		P4TidyUpMeister.needsReequip = false
		P4TidyUpMeister.CommonSense.isPrySuccess = false
		P4TidyUpMeister.CommonSense.CSUtils_PryEntityOpen(worldobjects, priableObject, playerObj, pryingTool)
	end

	-- [SET] Common Sense (Pry vehicle door)
	P4TidyUpMeister.CommonSense.CSUtils_PryVehicleOpen = CSUtils.PryVehicleOpen
	function CSUtils.PryVehicleOpen(vehicle, vehiclePart, playerObj, pryingTool)
		-- Reset is called when action is stopped, so it needs to evacuate and revert.
		P4TidyUpMeister.set(P4TidyUpMeister.player)
		P4TidyUpMeister.evacuate()
		-- Once the flag is turned off, explicitly execute reequip later.
		P4TidyUpMeister.needsReequip = false
		P4TidyUpMeister.CommonSense.CSUtils_PryVehicleOpen(vehicle, vehiclePart, playerObj, pryingTool)
	end

	P4TidyUpMeister.CommonSense.CSUtils_PrySuccessfully = CSUtils.PrySuccessfully
	function CSUtils.PrySuccessfully(playerObj, failBoost)
		P4TidyUpMeister.CommonSense.isPrySuccess = P4TidyUpMeister.CommonSense.CSUtils_PrySuccessfully(playerObj, failBoost)
		return P4TidyUpMeister.CommonSense.isPrySuccess
	end

	P4TidyUpMeister.CSISTimedAction_TryReturnTool = CSISTimedAction.TryReturnTool
	function CSISTimedAction:TryReturnTool()
		if P4TidyUpMeister.doNotReequip then
			P4TidyUpMeister.CSISTimedAction_TryReturnTool(self)
		end
	end

	P4TidyUpMeister.CommonSense.CSISTimedAction_stop = CSISTimedAction.stop
	function CSISTimedAction:stop()
		P4TidyUpMeister.CommonSense.CSISTimedAction_stop(self)
		if not P4TidyUpMeister.CommonSense.isPrySuccess then
			if P4TidyUpMeister.options.forceReequip then
				P4TidyUpMeister.revert()
				P4TidyUpMeister.forceReequip(self.character)
			else
				P4TidyUpMeister.reset()
			end
		end
		P4TidyUpMeister.CommonSense.isPrySuccess = false
	end

	P4TidyUpMeister.CommonSense.CSISTimedAction_perform = CSISTimedAction.perform
	function CSISTimedAction:perform()
		P4TidyUpMeister.CommonSense.CSISTimedAction_perform(self)
		P4TidyUpMeister.revert()
		P4TidyUpMeister.reequip(P4TidyUpMeister.player)
		P4TidyUpMeister.CommonSense.isPrySuccess = false
	end
end

-- *****************************************************************************
-- * Event trigger functions
-- *****************************************************************************

P4TidyUpMeister.OnCreatePlayer = function(playerIndex, player)
	P4TidyUpMeister.player = player
	P4TidyUpMeister.setDoNotReequip()
end
Events.OnCreatePlayer.Add(P4TidyUpMeister.OnCreatePlayer)

P4TidyUpMeister.OnFillWorldObjectContextMenu = function(player, context, worldObjects, test)
	if P4TidyUpMeister.options.useContextMenu then
		if P4TidyUpMeister.doNotReequip then
			context:addOption(P4TidyUpMeister.ContextMenu_ToDoReequip, nil, P4TidyUpMeister.toggleDoNotReequip)
		else
			context:addOption(P4TidyUpMeister.ContextMenu_ToDoNotReequip, nil, P4TidyUpMeister.toggleDoNotReequip)
		end
	end
end
Events.OnFillWorldObjectContextMenu.Add(P4TidyUpMeister.OnFillWorldObjectContextMenu)

P4TidyUpMeister.OnPlayerUpdate = function(player)
	if P4TidyUpMeister.player ~= player then
		return
	end
	if P4TidyUpMeister.needsReequip and not player:hasTimedActions() then
		P4TidyUpMeister.reequip(player)
	end
end
Events.OnPlayerUpdate.Add(P4TidyUpMeister.OnPlayerUpdate)

-- *****************************************************************************
-- * Reequipt functions
-- *****************************************************************************

P4TidyUpMeister.set = function(player, ignoreStop)
	if (not P4TidyUpMeister.needsReequip) and (not P4TidyUpMeister.doNotReequip) then
		P4TidyUpMeister.needsReequip = true
		P4TidyUpMeister.ignoreStop = ignoreStop
		P4TidyUpMeister.primaryItem = player:getPrimaryHandItem()
		P4TidyUpMeister.secondaryItem = player:getSecondaryHandItem()
		local wornItems = player:getWornItems()
		for i=0, wornItems:size()-1 do
			local wornItem = wornItems:get(i)
			P4TidyUpMeister.wornItems[wornItem:getLocation()] = wornItem:getItem()
		end
	end
end

P4TidyUpMeister.setTransferredItem = function(item)
	if (not P4TidyUpMeister.doNotReequip) and item then
		local srcContainer = item:getContainer()
		if srcContainer then
			if P4TidyUpMeister.needsReequip then
				if (not P4TidyUpMeister.transferredItems[item]) and (srcContainer:getType() ~= "none") then
					P4TidyUpMeister.transferredItems[item] = srcContainer
				end
			elseif P4TidyUpMeister.temp.needsReequip then
				if (not P4TidyUpMeister.temp.transferredItems[item]) and (srcContainer:getType() ~= "none") then
					P4TidyUpMeister.temp.transferredItems[item] = srcContainer
				end
			end
		end
	end
end

P4TidyUpMeister.reset = function()
	P4TidyUpMeister.needsReequip = false
	P4TidyUpMeister.ignoreStop = false
	P4TidyUpMeister.primaryItem = nil
	P4TidyUpMeister.secondaryItem = nil
	P4TidyUpMeister.wornItems = {}
	P4TidyUpMeister.transferredItems = {}
end

P4TidyUpMeister.evacuate = function()
	P4TidyUpMeister.temp.needsReequip = P4TidyUpMeister.needsReequip
	P4TidyUpMeister.temp.ignoreStop = P4TidyUpMeister.ignoreStop
	P4TidyUpMeister.temp.primaryItem = P4TidyUpMeister.primaryItem
	P4TidyUpMeister.temp.secondaryItem = P4TidyUpMeister.secondaryItem
	P4TidyUpMeister.temp.wornItems = P4TidyUpMeister.wornItems
	P4TidyUpMeister.temp.transferredItems = P4TidyUpMeister.transferredItems
end

P4TidyUpMeister.revert = function()
	P4TidyUpMeister.needsReequip = P4TidyUpMeister.temp.needsReequip
	P4TidyUpMeister.ignoreStop = P4TidyUpMeister.temp.ignoreStop
	P4TidyUpMeister.primaryItem = P4TidyUpMeister.temp.primaryItem
	P4TidyUpMeister.secondaryItem = P4TidyUpMeister.temp.secondaryItem
	P4TidyUpMeister.wornItems = P4TidyUpMeister.temp.wornItems
	P4TidyUpMeister.transferredItems = P4TidyUpMeister.temp.transferredItems
	P4TidyUpMeister.temp.needsReequip = false
	P4TidyUpMeister.temp.ignoreStop = false
	P4TidyUpMeister.temp.primaryItem = nil
	P4TidyUpMeister.temp.secondaryItem = nil
	P4TidyUpMeister.temp.wornItems = {}
	P4TidyUpMeister.temp.transferredItems = {}
end

P4TidyUpMeister.reequip = function(player)
	if P4TidyUpMeister.needsReequip and not P4TidyUpMeister.doNotReequip then
		local primaryItem = player:getPrimaryHandItem()
		local secondaryItem = player:getSecondaryHandItem()
		-- Check twoHands before
		local bTwoHands = false
		if P4TidyUpMeister.primaryItem and (P4TidyUpMeister.primaryItem == P4TidyUpMeister.secondaryItem) then
			bTwoHands = true
		end
		-- Check twoHans after
		local aTwoHands = false
		if primaryItem and (primaryItem == secondaryItem) then
			aTwoHands = true
		end
		-- Reequip primary item
		if P4TidyUpMeister.primaryItem then
			ISTimedActionQueue.add(ISEquipWeaponAction:new(player, P4TidyUpMeister.primaryItem, 50, true, bTwoHands))
		else
			if primaryItem then
				ISTimedActionQueue.add(ISUnequipAction:new(player, primaryItem, 50))
			end
		end
		-- Reequip secondary item
		if P4TidyUpMeister.secondaryItem then
			if not bTwoHands then
				ISTimedActionQueue.add(ISEquipWeaponAction:new(player, P4TidyUpMeister.secondaryItem, 50, false, false))
			end
		else
			if secondaryItem and not aTwoHands then
				ISTimedActionQueue.add(ISUnequipAction:new(player, secondaryItem, 50))
			end
		end
		-- Reequip worn items
		local wornItems = {}
		local tempItems = player:getWornItems()
		for i=0, tempItems:size()-1 do
			local wornItem = tempItems:get(i)
			local location = wornItem:getLocation()
			wornItems[location] = wornItem:getItem()
			if not P4TidyUpMeister.wornItems[location] then
				ISTimedActionQueue.add(ISUnequipAction:new(player, wornItem:getItem(), 50))
			end
		end
		for location,wornItem in pairs(P4TidyUpMeister.wornItems) do
			if wornItem ~= wornItems[location] then
				ISTimedActionQueue.add(ISWearClothing:new(player, wornItem, 50))
			end
		end
		-- Transfer items to srcContainer
		local inventory = player:getInventory()
		for item,destContainer in pairs(P4TidyUpMeister.transferredItems) do
			if inventory:contains(item) then
				ISTimedActionQueue.add(ISInventoryTransferAction:new(player, item, inventory, destContainer))
			else
				local replaceItem = item:getReplaceOnUse()
				if not replaceItem and instanceof(item, "DrainableComboItem") then
					replaceItem = item:getReplaceOnDeplete()
				end
				if replaceItem then
					local invItems = inventory:getItems()
					for i=0, invItems:size()-1 do
						local invItem = invItems:get(i)
						if replaceItem == invItem:getType() or replaceItem == invItem:getFullType() then
							ISTimedActionQueue.add(ISInventoryTransferAction:new(player, invItem, inventory, destContainer))
							break
						end
					end
				end
			end
		end
		P4TidyUpMeister.reset()
	end
end

P4TidyUpMeister.forceReequip = function(player)
	if P4TidyUpMeister.needsReequip then
		player:setPrimaryHandItem(P4TidyUpMeister.primaryItem)
		player:setSecondaryHandItem(P4TidyUpMeister.secondaryItem)
		P4TidyUpMeister.reset()
	end
end

P4TidyUpMeister.showInfo = function(message)
	P4TidyUpMeister.player:Say(message, 0.607, 0.717, 1.000, UIFont.Dialogue, 15, "radio")
end
