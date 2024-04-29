-- **************************************************
-- ██████  ██████   █████  ██    ██ ███████ ███    ██ 
-- ██   ██ ██   ██ ██   ██ ██    ██ ██      ████   ██ 
-- ██████  ██████  ███████ ██    ██ █████   ██ ██  ██ 
-- ██   ██ ██   ██ ██   ██  ██  ██  ██      ██  ██ ██ 
-- ██████  ██   ██ ██   ██   ████   ███████ ██   ████
-- **************************************************

BravensUtils = {}

--- Attempt to play a sound clip on an object.
---@param obj table The object on which the sound clip should be played.
---@param soundName string The name of the sound clip.
---@param override boolean|nil (optional) If TRUE, override any existing playing sound with the same name.
BravensUtils.TryPlaySoundClip = function(obj, soundName, override)
    soundName = soundName or ""
	if not override and obj:getEmitter():isPlaying(soundName) then return end
    obj:getEmitter():playSoundImpl(soundName, IsoObject.new())
end

--- Attempt to stop a sound clip on an object.
---@param obj table The object on which the sound clip should be stopped.
---@param soundName string The name of the sound clip to stop.
BravensUtils.TryStopSoundClip = function(obj, soundName)
    soundName = soundName or ""
	if not obj:getEmitter():isPlaying(soundName) then return end
	obj:getEmitter():stopSoundByName(soundName)
end

--- Cause physical exertion on a Player.
---@param playerObj IsoPlayer
---@param amount number
BravensUtils.TirePlayer = function(playerObj, amount)
	local stats = playerObj:getStats()
	if not stats then return end

	if stats:getEndurance() < 0.21 then return end --We don't want to *kill* someone out of exhaustion do we?
	stats:setEndurance(stats:getEndurance() - amount)
end

--- Check if a character is busy (Has queued Timed Actions). Returns TRUE or FALSE.
---@param character IsoPlayer The variable containing the character itself.
BravensUtils.IsBusy = function(character)
    local actionQueue = ISTimedActionQueue.getTimedActionQueue(character)
    if actionQueue and #actionQueue > 0 then return true end
    return false
end

--- Return the game's current speed.
---@return number gameSpeed The speed multiplier.
BravensUtils.GetGameSpeed = function()
    local speedControl = UIManager.getSpeedControls():getCurrentGameSpeed()
    local gameSpeed = 1

    if speedControl == 2 then
        gameSpeed = 5
    elseif speedControl == 3 then
        gameSpeed = 20
    elseif speedControl == 4 then
        gameSpeed = 40
    end

    return gameSpeed
end

--- Delay the execution of a function by a specified number of ticks.
---@param func function The function to be delayed.
---@param delay number (optional) The delay in ticks (default is 1).
---@param adaptToSpeed boolean|nil (optional) Adapt to game speed if the Player changed it.
---@return function A cancellation function that can be used to cancel the delayed function.
BravensUtils.DelayFunction = function(func, delay, adaptToSpeed)

    delay = delay or 1
    local multiplier = 1
    local ticks = 0
    local canceled = false

    local function onTick()
        if adaptToSpeed then multiplier = BravensUtils.GetGameSpeed() end
        if not canceled and ticks < delay then
            ticks = ticks + multiplier
            return
        end

        Events.OnTick.Remove(onTick)
        if not canceled then func() end
    end

    Events.OnTick.Add(onTick)
    return function()
        canceled = true
    end
end

--- Calculate the X,Y distance between two objects in the game world.
---@param firstObj table The first object.
---@param secondObj table The second object.
---@return number The distance between the two objects.
BravensUtils.DistanceBetween = function(firstObj, secondObj)
    local x1, y1 = firstObj:getX(), firstObj:getY()
    local x2, y2 = secondObj:getX(), secondObj:getY()

    local dx = x1 - x2
    local dy = y1 - y2

    local distance = math.sqrt(dx * dx + dy * dy)
    return distance
end

--- Checks if a given variable is a Number.
BravensUtils.isNumber = function(num)
    if tonumber(num) ~= nil then
        return true
    end

    return false
end

--- Smoothly spawns loot in a specific Square.
---@param itemNames table
---@param itemAmounts table
---@param square IsoGridSquare
BravensUtils.GenerateLootInSquare = function(itemNames, itemAmounts, square)
    if not square then return end
    if not itemNames then return end

    for i,itemName in ipairs(itemNames) do
        if itemName ~= nil then
            local amount = itemAmounts[i]
            if amount and amount > 0 then
                for x = 0, amount -1 do
                    local item = InventoryItemFactory.CreateItem(itemName)
                    if item then
                        BravensUtils.DelayFunction(function()
                            square:AddWorldInventoryItem(item, 0.0, 0.0, 0.0)
                        end, 30)
                    end
                end
            end
        end
    end
end

--- Deletes a zombie from the game.
---@param zombie IsoZombie
BravensUtils.DeleteZombie = function(zombie)
    zombie:removeFromWorld()
    zombie:removeFromSquare()
end

--- Add a tooltip to a (UI) Menu option.
---@param description string
---@param menuOption any
BravensUtils.addTooltip = function(description, menuOption)
    local tooltip = ISWorldObjectContextMenu.addToolTip()
    tooltip.description = description
    menuOption.toolTip = tooltip
end

--- Return if an item is broken or not.
---@param item InventoryItem
BravensUtils.PredicateNotBroken = function(item)
	return not item:isBroken()
end

--- Check if an Item Container has a specific Item inside it.
---@param itemContainer ItemContainer
---@param itemID string
BravensUtils.PlayerHasItem = function(itemContainer, itemID)
    if not itemContainer then return false end
    if not itemID then return false end

    local item = itemContainer:getFirstTypeEvalRecurse(itemID)
    if item then return true else return false end
end

--- Get the first instance of a specific Item inside an Item Container.
---@param itemContainer ItemContainer
---@param itemID string
BravensUtils.FetchItemFromContainer = function(itemContainer, itemID)
    if not itemContainer then return false end
    if not itemID then return false end
    return itemContainer:getFirstTypeEvalRecurse(itemID)
end

--- Fetches a List of all Squares in front of the Player in a given Range.
---@param playerObj IsoPlayer
---@param range number
BravensUtils.FetchPlayerFrontalSquares = function(playerObj, range)

    local currCell = getCell()
    local pX = playerObj:getX()
    local pY = playerObj:getY()
    local pZ = playerObj:getZ()
    local dir = playerObj:getDir()
    local squares = {}

    local square = currCell:getGridSquare(pX + range, pY + range, pZ)

    if (dir == IsoDirections.N) then        square = currCell:getGridSquare(pX, pY - range, pZ);
    elseif (dir == IsoDirections.NE) then   square = currCell:getGridSquare(pX + range, pY - range, pZ);
    elseif (dir == IsoDirections.E) then    square = currCell:getGridSquare(pX + range, pY, pZ);
    elseif (dir == IsoDirections.SE) then   square = currCell:getGridSquare(pX + range, pY + range, pZ);
    elseif (dir == IsoDirections.S) then    square = currCell:getGridSquare(pX, pY + range, pZ);
    elseif (dir == IsoDirections.SW) then   square = currCell:getGridSquare(pX - range, pY + range, pZ);
    elseif (dir == IsoDirections.W) then    square = currCell:getGridSquare(pX - range, pY, pZ);
    elseif (dir == IsoDirections.NW) then   square = currCell:getGridSquare(pX - range, pY - range, pZ);
    end

    table.insert(squares, square)

    local sqX = square:getX()
    local sqY = square:getY()

    table.insert(squares, currCell:getGridSquare(sqX + 1, sqY, pZ))
    table.insert(squares, currCell:getGridSquare(sqX - 1, sqY, pZ))
    table.insert(squares, currCell:getGridSquare(sqX, sqY + 1, pZ))
    table.insert(squares, currCell:getGridSquare(sqX, sqY - 1, pZ))

    return squares
end