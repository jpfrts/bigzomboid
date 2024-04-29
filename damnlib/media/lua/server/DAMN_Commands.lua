DAMN = DAMN or {};
DAMN.Commands = DAMN.Commands or {};

-- helpers

function DAMN:setVehicleModData(vehicle, data, skipTransmit)
    if DAMN["modDataDebug"]
    then
        DAMN:log("DAMN.BackCompat:setVehicleModData() -> Setting vehicle moddata");
    end

    local modData = vehicle:getModData();

    for k, v in pairs(data)
    do
        if k ~= "_vehicleId" and k ~= "contentAmount"
        then
            if DAMN["modDataDebug"]
            then
                DAMN:log("- saving " .. tostring(k) .. " = " .. tostring(v));
            end

            modData[k] = v;
        end
    end

    if not skipTransmit
    then
        vehicle:transmitModData();
    end

    return modData;
end

-- handlers

function DAMN.Commands.syncPartAnimation(playerObj, args, command)
	local players = getOnlinePlayers();

	if players
	then
		local vehicle = getVehicleById(args["vehicle"]);

		if vehicle and DAMN:vehicleIsManaged(vehicle:getScript():getFullName())
		then
			local vehicleSquare = vehicle:getSquare();
			local triggeredBy = playerObj:getDisplayName();

			for i = 0, players:size() - 1
			do
				local onlinePlayer = players:get(i);

				if onlinePlayer and onlinePlayer:getDisplayName() ~= triggeredBy
				then
					local distance = vehicleSquare:DistToProper(onlinePlayer:getSquare());

					if onlinePlayer and distance and distance <= 150
					then
						DAMN:log(" - sending command to user " .. tostring(onlinePlayer:getDisplayName()) .. " (distance: " .. tostring(distance) .. ")");

						sendServerCommand(onlinePlayer, "that_damn_lib", command, {
							vehicleId = args["vehicle"],
							partId = args["part"],
							open = args["open"],
						});
					else
						DAMN:log(" - user " .. tostring(onlinePlayer:getDisplayName()) .. " too far away (distance: " .. tostring(distance) .. ")");
					end
				else
					DAMN:log(" - skipping because user [" .. tostring(triggeredBy) .. "] triggered the event");
				end
			end
		end
	end
end

function DAMN.Commands.setVehicleData(playerObj, args)
	if DAMN["commandsDebug"]
	then
		DAMN:log("DAMN.Commands.setVehicleData(" .. playerObj:getUsername() .. ", " .. args["_vehicleId"] .. ")");
	end

    if args["_vehicle"]
	then
		DAMN:setVehicleModData(args["_vehicle"], args);
	elseif DAMN["commandsDebug"]
	then
		DAMN:log(" -> unable to find vehicle");
	end
end

function DAMN.Commands.setPartModData(playerObj, args)
	local vehicle = args["_vehicle"] or getVehicleById(args["vehicle"]);

	if vehicle and args.data
	then
		local part = vehicle:getPartById(args.part);

		if part
		then
			local modData = part:getModData();

			for key, value in pairs(args.data)
			do
				modData[key] = value;
			end

			vehicle:transmitPartModData(part);
		end
	end
end

function DAMN.Commands.silentPartInstall(playerObj, args)
	local item = args["item"];
	local part = args["part"];

	if args["_vehicle"] and part and item
	then
		if DAMN["commandsDebug"]
		then
			DAMN:log("DAMN.Commands.silentPartInstall(" .. playerObj:getUsername() .. ", " .. part .. ", " .. item .. ")");
		end

		item = InventoryItemFactory.CreateItem(item);
		part = args["_vehicle"]:getPartById(part);

		if part and item
		then
			part:setInventoryItem(item);
			args["_vehicle"]:transmitPartItem(part);

			local installTable = part:getTable("install");

			if installTable and installTable["complete"]
			then
				VehicleUtils.callLua(installTable["complete"], args["_vehicle"], part);
			end
		elseif DAMN["commandsDebug"]
		then
			DAMN:log(" -> no item generated");
		end
	elseif DAMN["commandsDebug"]
	then
		DAMN:log(" -> vehicle, part or item missing");
	end
end

function DAMN.Commands.savePartsCondition(playerObj, args)
	if DAMN["commandsDebug"]
	then
		DAMN:log("DAMN.Commands.savePartsCondition(" .. playerObj:getUsername() .. ", " .. args["_vehicleId"] .. ", " .. tostring(args["_vehicle"]) .. ")");
	end

    if args["_vehicle"]
	then
		for i = 0, args["_vehicle"]:getPartCount() -1
		do
			local part = args["_vehicle"]:getPartByIndex(i);

			if part -- DAMN.Parts:partIsInstalled(part)
			then
				local modData = part:getModData();
				local condition = not args["erase"]
					and part:getCondition()
					or nil;

				modData["saveCond"] = condition; -- backwards compatibility with older armor code
				modData["damn:savedCondition"] = condition;

				if DAMN["commandsDebug"]
				then
					DAMN:log(" - " .. tostring(part:getId()) .. " = " .. tostring(condition));
				end

				args["_vehicle"]:transmitPartModData(part);
			end
		end
	elseif DAMN["commandsDebug"]
	then
		DAMN:log(" -> unable to find vehicle");
	end
end