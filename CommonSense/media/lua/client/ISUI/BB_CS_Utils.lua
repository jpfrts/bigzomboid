-- **************************************************
-- ██████  ██████   █████  ██    ██ ███████ ███    ██ 
-- ██   ██ ██   ██ ██   ██ ██    ██ ██      ████   ██ 
-- ██████  ██████  ███████ ██    ██ █████   ██ ██  ██ 
-- ██   ██ ██   ██ ██   ██  ██  ██  ██      ██  ██ ██ 
-- ██████  ██   ██ ██   ██   ████   ███████ ██   ████
-- **************************************************

CSUtils = {}
CSUtils.predicateNotBroken = function(item)
	return not item:isBroken()
end

CSUtils.playerHasPryingTool = function(playerObj, itemID, override)

    if override then return true end
    if not playerObj then return false end
    if not itemID then return false end

    local playerInv = playerObj:getInventory()
    local pryingTool = playerInv:getFirstTypeEvalRecurse(itemID, CSUtils.predicateNotBroken)


    if not pryingTool then return false end
end

-- This function is the most shameful, spaghetti code I've ever written. And I blame TIS and LUA equally for this
CSUtils.Loop = function(worldobjects, playerObj, priableObject, actionType, toolID, toolContainer)

    if not playerObj:hasEquipped(toolID) then

        BB_CS_Utils.DelayFunction(function()

            if not playerObj:hasEquipped(toolID) then
                CSUtils.Loop(worldobjects, playerObj, priableObject, actionType, toolID, toolContainer)
            else
                if(actionType == "PryDoor") then
                    luautils.walkAdjWindowOrDoor(playerObj, priableObject:getSquare(), priableObject)
                    ISTimedActionQueue.add(CSISTimedAction:PryDoor(worldobjects, priableObject, playerObj, toolContainer, 190))
                elseif(actionType == "PryVehicleDoor") then
                    ISTimedActionQueue.add(CSISTimedAction:PryVehicleDoor(worldobjects, priableObject, playerObj, toolContainer, 190))
                end
            end
        end, 10, true)
    end
end

CSUtils.PryEntityOpen = function(worldobjects, priableObject, playerObj, pryingTool)

    local toolID = pryingTool:getFullType()
    local toolContainer = nil

    ISInventoryPaneContextMenu.transferIfNeeded(playerObj, pryingTool)

    if not playerObj:hasEquipped(toolID) then
        ISInventoryPaneContextMenu.equipWeapon(pryingTool, true, true, playerObj:getPlayerNum())
        toolContainer = pryingTool:getContainer()
    end

    if not playerObj:hasEquipped(toolID) then
        CSUtils.Loop(worldobjects, playerObj, priableObject, "PryDoor", toolID, toolContainer)
    else
        luautils.walkAdjWindowOrDoor(playerObj, priableObject:getSquare(), priableObject)
        ISTimedActionQueue.add(CSISTimedAction:PryDoor(worldobjects, priableObject, playerObj, toolContainer, 190))
    end
end

CSUtils.PryVehicleOpen = function(vehicle, vehiclePart, playerObj, pryingTool)

    local toolID = pryingTool:getFullType()
    local toolContainer = nil
    ISInventoryPaneContextMenu.transferIfNeeded(playerObj, pryingTool)

    if not playerObj:hasEquipped(toolID) then
        ISInventoryPaneContextMenu.equipWeapon(pryingTool, true, true, playerObj:getPlayerNum())
        toolContainer = pryingTool:getContainer()
    end

    if not playerObj:hasEquipped(toolID) then
        CSUtils.Loop(vehicle, playerObj, vehiclePart, "PryVehicleDoor", toolID, toolContainer)
    else
        ISTimedActionQueue.add(CSISTimedAction:PryVehicleDoor(vehicle, vehiclePart, playerObj, toolContainer, 190))
    end
end

CSUtils.PrySuccessfully = function(playerObj, failBoost)

    if playerObj:HasTrait("Burglar") then

        if ZombRand(10) > 1 then
            return true
        else
            return false
        end
    end

    local strengthLevel = playerObj:getPerkLevel(Perks.Strength)
    local succeedChance = ZombRand(100)
    local failChance = (180 / strengthLevel) + failBoost

    failChance = failChance * SandboxVars.CommonSense.PryingChanceMultiplier

    if succeedChance > failChance then
        return true
    else
        return false
    end
end

--- Pry open Vehicle doors and trunks using a Weapon.
--- <br> Call this function when Player is opening the Radial Menu outside a Vehicle.
---@param playerObj IsoPlayer
---@param crowbarID string
CSUtils.showRadialMenuOutsideCrowbar = function(playerObj)

    if not SandboxVars.CommonSense.PryingMechanic then return end

	local vehicle = playerObj:getNearVehicle() if not vehicle then return end
	local menu = getPlayerRadialMenu(playerObj:getPlayerNum())
    local playerInv = playerObj:getInventory()
    local pryingTool = nil

	for k, v in pairs(CommonSense.PryingTools) do

        pryingTool = playerInv:getFirstTypeEvalRecurse(v, CSUtils.predicateNotBroken)

        if pryingTool then
            break
        end
  	end

    if not pryingTool then return end

    local doorPart = vehicle:getUseablePart(playerObj)

    if doorPart and doorPart:getDoor() and doorPart:getInventoryItem() then

        if not doorPart:getDoor():isLocked() then return end

        local isHood = doorPart:getId() == "EngineDoor"

        if not (isHood) then
            menu:addSlice(getText("ContextMenu_Pry_open"), getTexture("media/ui/vehicles/PryOpen.png"), CSUtils.PryVehicleOpen, vehicle, doorPart, playerObj, pryingTool)
        end

    end
end

CSUtils.OnFillWorldObjectContextMenuCrowbar = function(player, context, worldobjects, test)
    if not SandboxVars.CommonSense.PryingMechanic then return end

    local playerObj = getSpecificPlayer(player)
    if playerObj:getVehicle() then return end

    local playerInv = playerObj:getInventory()
    local pryingTool = nil

	for k, v in pairs(CommonSense.PryingTools) do
        pryingTool = playerInv:getFirstTypeEvalRecurse(v, CSUtils.predicateNotBroken)
        if pryingTool then
            break
        end
  	end

    if not pryingTool then return end

    local priableObject = nil

    for i,v in ipairs(worldobjects) do

        if ISWorldObjectContextMenu.isThumpDoor(v) == true then
            priableObject = v
        end
    end

    -- door interaction
	if priableObject ~= nil then

        -- Prevent prying open reinforced doors.
        if not SandboxVars.CommonSense.PryAllDoors then

            local sprite = priableObject:getSprite()
            if sprite then

                if playerObj:getPerkLevel(Perks.Strength) < 8 then
                -- Code snippet thanks to "UnCheat"!
                local spriteName = sprite:getName()
                if spriteName and
                spriteName == "fixtures_doors_01_32" or
                spriteName == "fixtures_doors_01_33" or
                spriteName == "location_community_police_01_4" or
                spriteName == "location_community_police_01_5" then
                return
                end
                -- End of snippet 
                end
            end
        end

		if instanceof(priableObject, "IsoDoor")
        and priableObject:isLocked() == true
        and priableObject:isBarricaded() == false then
            context:addOptionOnTop(getText("ContextMenu_Pry_open"), worldobjects, CSUtils.PryEntityOpen, priableObject, playerObj, pryingTool)
            return
		end

		if instanceof(priableObject, "IsoWindow")
        and (priableObject:isLocked() == true or priableObject:isPermaLocked() == true)
        and priableObject:isBarricaded() == false and priableObject:isSmashed() == false then
            context:addOptionOnTop(getText("ContextMenu_Pry_open"), worldobjects, CSUtils.PryEntityOpen, priableObject, playerObj, pryingTool)
            return
		end
	end
end