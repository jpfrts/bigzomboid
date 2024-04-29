--***********************************************************
--**                       BitBraven                       **
--***********************************************************

BikeServer = {}
BikeServer.Create = {}
BikeServer.Update = {}
BikeServer.Init = {}

BikeServer.RemoveBikePart = function(part, vehicle)
    part:setInventoryItem(nil)
    vehicle:transmitPartItem(part)
end

BikeServer.LiftBike = function(vehicle, playerObj)
    vehicle:setAngles(0, 0, 0)
    BravensUtils.TirePlayer(playerObj, 0.1)
end

BikeServer.StartBike = function(vehicle)
    vehicle:setKeysInIgnition(true)
    vehicle:setHotwired(true)
    vehicle:engineDoRunning()
end

BikeServer.SetupBike = function(playerObj, vehicle, frame)

    if isServer() then
        local args = { sqX = vehicle:getX(), sqY = vehicle:getY() }
        sendServerCommand(playerObj, 'BicyclesRedux', 'SetupBikeParts', args)
    else
        local inventory = playerObj:getInventory()
        BravensBikeUtils.setPartsToCondition(vehicle, inventory, playerObj)
    end

    if not frame:getModData().frameColor then return end

    vehicle:setSkinIndex(frame:getModData().frameColor)
    vehicle:updateSkin()

    vehicle:setRust(frame:getModData().rustAmount)
    vehicle:transmitRust()
end

function BikeServer.Create.CustomPartRand(vehicle, part)
    if (ZombRand(100) <= 40) then
        VehicleUtils.createPartInventoryItem(part)
    end
end

function BikeServer.Create.Headlight(vehicle, part)
    local bikeType = vehicle:getScriptName()
    if bikeType == "Base.BicycleMTB" or bikeType == "Base.BicycleMTBScrap" then
        VehicleUtils.createPartInventoryItem(part)
        part:createSpotLight(0.7, 0.5, 0.5, 0.5, 0.5, 0.5)
    elseif (ZombRand(100) <= 20) then
        VehicleUtils.createPartInventoryItem(part)
        part:createSpotLight(0.7, 0.5, 0.5, 0.5, 0.5, 0.5)
    end
end

function BikeServer.Update.Headlight(vehicle, part, elapsedMinutes)
	local light = part:getLight() if not light then return end
	part:setLightActive(true)
end

local function onClientCommand(module, command, player, args)

    if module ~= "BicyclesRedux" then return end

    if command == "SpawnBike" then
        local square = getSquare(player:getX(), player:getY(), player:getZ())
        local vehicle = addVehicleDebug(args.bikeName, nil, nil, square)
        if vehicle then
            BikeServer.SetupBike(player, vehicle, args.frame)
        end
    end
end

Events.OnClientCommand.Add(onClientCommand)
