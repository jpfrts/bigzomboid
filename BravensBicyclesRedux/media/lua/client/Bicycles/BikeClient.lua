--***********************************************************
--**                       BitBraven                       **
--***********************************************************

local function onServerCommand(module, command, args)

    if module ~= "BicyclesRedux" then return end

    if command == "SetupBikeParts" then

        local vehicleSq = getCell():getGridSquare(args.sqX, args.sqY, 0)
        if not vehicleSq then return end

		BravensUtils.DelayFunction(function()
            local vehicle = vehicleSq:getVehicleContainer()
            if not vehicle then return end

            local playerObj = getPlayer()
            local inventory = playerObj:getInventory()
            BravensBikeUtils.setPartsToCondition(vehicle, inventory, playerObj)
		end, 150)
    end
end

BikeClient = {}

BikeClient.SpawnBike = function(bikeName, frame)
    sendClientCommand(getPlayer(), "BicyclesRedux", "SpawnBike", {bikeName = bikeName, frame = frame})
end

Events.OnServerCommand.Add(onServerCommand)

local onKeyPressed = function(keyIndex)
    local playerObj = getPlayer()
    if not playerObj or playerObj:getVehicle() or playerObj:getBuilding() or playerObj:getZ() ~= 0 then
        return nil
    end

    if keyIndex == getCore():getKey("Interact") then
        local playerX, playerY, z = playerObj:getX(), playerObj:getY(), 0
        if not playerX then return nil end

        local closestVehicle
        local minDistance = 999999

        for dx = -1, 1 do
            for dy = -1, 1 do
                local x, y = playerX + dx, playerY + dy
                local sq = getCell():getGridSquare(x, y, z)
                if sq then
                    local vehicle = sq:getVehicleContainer()
                    if vehicle then
                        if BravensBikeUtils.isBike(vehicle) then
                            local distance = BravensUtils.DistanceBetween(playerObj, vehicle) or 0
                            if distance < minDistance then
                                minDistance = distance
                                closestVehicle = vehicle
                            end
                        end
                    end
                end
            end
        end

        if closestVehicle then
            BravensUtils.DelayFunction(function()
                local actionQueue = ISTimedActionQueue.getTimedActionQueue(playerObj)
                local lastAction = actionQueue.queue[1]
                if lastAction and lastAction.Type == "ISPathFindAction" then
                    lastAction:forceComplete()
                end
            end, 20)
        end
    end
end

Events.OnKeyPressed.Add(onKeyPressed)
