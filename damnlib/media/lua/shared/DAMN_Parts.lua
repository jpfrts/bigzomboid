require "DAMN_Base_Shared";

DAMN = DAMN or {};
DAMN.Parts = DAMN.Parts or {};

DAMN.InstallTest = {};
DAMN.UninstallTest = {};

KI5 = KI5 or {};
KI5["loadedParts"] = KI5["loadedParts"] or {};



-- debugging

function DAMN.Parts:checkPartsConfig(fullVehicleScript, rootNS)
	if rootNS["parts"]
	then
		for partNS, partConfig in pairs(rootNS["parts"])
		do
			for partName, partVariants in pairs(partConfig)
			do
				if type(partVariants) == "table"
				then
					if not getScriptManager():getVehicle(fullVehicleScript):getPartById(partName)
					then
						DAMN:log(fullVehicleScript .. ": Part slot " .. tostring(partName) .. " not found!");
					end
				end
			end
		end
	end
end

-- create vehicle parts functions from config

DAMN.Parts["loadedByVehicleScript"] = DAMN.Parts["loadedByVehicleScript"] or {};

function DAMN.Parts:processConfigV2(rootNsName, config)
	if not rootNsName or type(rootNsName) ~= "string"
	then
		DAMN:log("ERROR: invalid root namespace name given: (" .. type(rootNsName) .. ")[" .. tostring(rootNsName) .. "]");

		return false;
	end

	_G[rootNsName] = _G[rootNsName] or {};

	for i, node in ipairs({
		"Init", "Create", "InstallComplete", "UninstallComplete", "CheckEngine", "CheckOperate", "ContainerAccess", "InstallTest", "UninstallTest", "Update", "Use"
	})
	do
		if not _G[rootNsName][node]
		then
			if DAMN["partDefaultsDebug"]
			then
				DAMN:log("Creating main namespace node [" .. tostring(rootNsName) .. "." .. tostring(node) .. "]");
			end

			_G[rootNsName][node] = {};
		end
	end

	for partNS, partConfig in pairs(config or {})
	do
		if DAMN["partDefaultsDebug"]
		then
			DAMN:log("Processing part namespace [" .. tostring(partNS) .. "]");
		end

		if not _G[rootNsName][partNS]
		then
			if DAMN["partDefaultsDebug"]
			then
				DAMN:log(" - Populating main part function node [" .. tostring(rootNsName) .. "." .. tostring(partNS) .. "]");
			end

			_G[rootNsName][partNS] = function(vehicle, part)
				DAMN:log("Executing [" .. tostring(rootNsName) .. "." .. tostring(partNS) .. "]");

				part = vehicle:getPartById(partConfig["partId"]);

				local item = part:getInventoryItem();

				DAMN:log(" - installed item: " .. tostring(item and item:getFullType() or "none"));

				if item
				then
					for itemName, models in pairs(partConfig["itemToModel"])
					do
						models = DAMN:tableIfNotTable(models);

						local isInstalled = item:getFullType() == itemName or item:getType() == itemName;

						DAMN:log(" - checking if item [" .. tostring(itemName) .. "] is installed: " .. tostring(isInstalled));

						for i, modelName in ipairs(models)
						do
							DAMN:log("    -> setting model [" .. tostring(modelName) .. "] to visibility: " .. tostring(isInstalled));

							part:setModelVisible(modelName, isInstalled);
						end
					end
				end

				vehicle:doDamageOverlay();
			end;
		end

		if not _G[rootNsName].Create[partNS]
		then
			if DAMN["partDefaultsDebug"]
			then
				DAMN:log(" - Populating part function [" .. tostring(rootNsName) .. ".Create." .. tostring(partNS) .. "]");
			end

			_G[rootNsName].Create[partNS] = function(vehicle, part)
				DAMN:log("Executing [" .. tostring(rootNsName) .. ".Create." .. tostring(partNS) .. "]");

				part:setInventoryItem(nil);
				_G[rootNsName][partNS](vehicle, part, nil);
			end
		end

		for i, node in ipairs({
			"Init", "InstallComplete", "UninstallComplete"
		})
		do
			if not _G[rootNsName][node][partNS]
			then
				if DAMN["partDefaultsDebug"]
				then
					DAMN:log(" - Populating part function [" .. tostring(rootNsName) .. "." .. tostring(node) .. "." .. tostring(partNS) .. "]");
				end

				_G[rootNsName][node][partNS] = function(vehicle, part)
					DAMN:log("Executing [" .. tostring(rootNsName) .. "." .. tostring(node) .. "." .. tostring(partNS) .. "]");

					if node == "Init"
					then
						if not vehicle:getPartById(partConfig["partId"])
						then
							DAMN:log(rootNsName .. " -> Part slot " .. tostring(partConfig["partId"]) .. " not found!");
						end

						if isServer() == false
						then
							DAMN.Parts:processDefaults(vehicle, part, partConfig);
							--DAMN.BackCompat:checkLegacyTires(vehicle);
						end

						local vehicleScript = vehicle:getScript():getFullName();

						if not DAMN.Parts["loadedByVehicleScript"][vehicleScript]
						then
							DAMN.Parts["loadedByVehicleScript"][vehicleScript] = {
								rootNS = _G[rootNsName],
								parts = {},
							};
							KI5["loadedParts"][vehicleScript] = DAMN.Parts["loadedByVehicleScript"][vehicleScript];
						end

						DAMN.Parts["loadedByVehicleScript"][vehicleScript]["parts"][partNS] = true;
						KI5["loadedParts"][vehicleScript]["parts"][partNS] = true;

						DAMN["vehiclesManaged"][vehicleScript] = DAMN["vehiclesManaged"][vehicleScript] or {};
						DAMN["vehiclesManaged"][vehicleScript]["parts"] = true;
					end

					local wheelIndex = part:getWheelIndex();

					if wheelIndex ~= nil and wheelIndex > -1
					then
						DAMN:log(" - part has wheel index [" .. tostring(wheelIndex) .. "]: treating it as a tire");

						vehicle:setTireRemoved(wheelIndex, not DAMN.Parts:partIsInstalled(part));
					end

					_G[rootNsName][partNS](vehicle, part);
				end
			end
		end
	end
end

function DAMN.Parts:processConfig(rootNS)
	for i, node in ipairs({"Init", "Create", "InstallComplete", "UninstallComplete", "CheckEngine", "CheckOperate", "ContainerAccess", "InstallTest", "UninstallTest", "Update", "Use"})
	do
		if not rootNS[node]
		then
			rootNS[node] = {};
		end
	end

	if rootNS["parts"]
	then
		for partNS, partConfig in pairs(rootNS["parts"])
		do
			for partName, partVariants in pairs(partConfig)
			do
				if type(rootNS["parts"][partNS]) == "table"
				then
					if not rootNS[partNS]
					then
						rootNS[partNS] = function(vehicle, part)
							part = vehicle:getPartById(partName);

							local item = part:getInventoryItem();

							if item
							then
								for varModelName, varItem in pairs(partVariants)
								do
									part:setModelVisible(varModelName, item:getType() == varItem);
								end
							end
						end;
					end

					if not rootNS.Create[partNS]
					then
						rootNS.Create[partNS] = function(vehicle, part)
							part:setInventoryItem(nil);
							rootNS[partNS](vehicle, part, nil);
							vehicle:doDamageOverlay();
						end
					end

					for i, partFn in ipairs({"Init", "InstallComplete", "UninstallComplete"})
					do
						if not rootNS[partFn][partNS]
						then
							rootNS[partFn][partNS] = function(vehicle, part)
								if partFn == "Init"
								then
									if not vehicle:getPartById(partName)
									then
										DAMN:log(vehicle:getFullType() .. " -> Part slot " .. tostring(partName) .. " not found!");
									end

									if isServer() == false
									then
										DAMN.Parts:processDefaults(vehicle, part, rootNS["parts"][partNS]);
										--DAMN.BackCompat:checkLegacyTires(vehicle);
									end

									local vName = vehicle:getScript():getName();

									if not DAMN.Parts["loadedByVehicleScript"][vName]
									then
										DAMN.Parts["loadedByVehicleScript"][vName] = {
											rootNS = rootNS,
											parts = {}
										}
									end

									if not DAMN.Parts["loadedByVehicleScript"][vName]["parts"][partNS]
									then
										DAMN.Parts["loadedByVehicleScript"][vName]["parts"][partNS] = true;
									end
								end

								rootNS[partNS](vehicle, part);
								vehicle:doDamageOverlay();
							end
						end
					end
				end
			end
		end
	end
end

-- process default parts config

function DAMN.Parts:processDefaults(vehicle, part, partConfig)
	local partId = part:getId();
	local modData = DAMN:getModData(vehicle);
	local default = partConfig["default"];

	if not modData["defaultPartSet_" .. partId] and DAMN.Parts:partIsInstalled(part)
	then
		DAMN:log(" - MP client or SP: Processing parts defaults.");

		if part:getTable("install")
		then
			local item = nil;

			if default
			then
				local possibilities = part:getItemType();

				if default == "first"
				then
					item = possibilities:get(0);
				elseif default == "random"
				then
					item = possibilities:get(ZombRandBetween(0, possibilities:size()));
				elseif default == "trve_random"
				then
					if ZombRandBetween(1, 100) >= tonumber(partConfig["noPartChance"] or 50)
					then
						item = possibilities:get(ZombRandBetween(0, possibilities:size()));
					end
				else
					item = default;
				end

                if DAMN["partDefaultsDebug"] and item
                then
                    DAMN:log("DAMN.Parts:processDefaults() -> would install item " .. tostring(item) .. " in slot " .. partId);
                end

				if item
				then
					DAMN.Parts:silentInstall(part, item);
				end
			end

			DAMN:saveModData(vehicle, {
				["defaultPartSet_" .. partId] = "true"
			});
		end
	end
end

-- helpers

function DAMN.Parts:partIsInstalled(part)
	return part:getItemType() and not part:getItemType():isEmpty() and not part:getInventoryItem();
end

function DAMN.Parts:silentInstall(part, itemId)
    if DAMN["partDefaultsDebug"]
	then
        DAMN:log("DAMN.Parts:silentInstall() -> silently installing " .. itemId .. " for " .. part:getId());
    end

	DAMN:sendLibCommand("silentPartInstall", {
		part = part:getId(),
		item = itemId
	}, part:getVehicle());
end

function DAMN.Parts:setContainerAmount(part, amount)
	DAMN:sendClientCommand("vehicle", "setContainerContentAmount", {
		vehicle = part:getVehicle():getId(),
		part = part:getId(),
		amount = amount
	});
end

-- empty part placeholder

DAMN.Create = {};

function DAMN.Create.Blank(vehicle, part)
	part:setInventoryItem(nil);
end

-- part requirement check placeholder

function DAMN.InstallTest.Default(vehicle, part, chr)
	if ISVehicleMechanics.cheat then return true; end
	local keyvalues = part:getTable("install")
	if not keyvalues then return false end
	if part:getInventoryItem() then return false end
	if not part:getItemType() or part:getItemType():isEmpty() then return false end
	local typeToItem = VehicleUtils.getItems(chr:getPlayerNum())
	if keyvalues.requireInstalled then
		local split = keyvalues.requireInstalled:split(";");
		for i,v in ipairs(split) do
			if not vehicle:getPartById(v) or not vehicle:getPartById(v):getInventoryItem() then return false; end
		end
	end
	if keyvalues.requireUninstalled then
        local split = keyvalues.requireUninstalled:split(";");
        for i,v in ipairs(split) do
            if vehicle:getPartById(v) and vehicle:getPartById(v):getInventoryItem() then return false; end
        end
    end
	if not VehicleUtils.testProfession(chr, keyvalues.professions) then return false end
	if not VehicleUtils.testRecipes(chr, keyvalues.recipes) then return false end
	if not VehicleUtils.testTraits(chr, keyvalues.traits) then return false end
	if not VehicleUtils.testItems(chr, keyvalues.items, typeToItem) then return false end
	if VehicleUtils.RequiredKeyNotFound(part, chr) then
		return false;
	end
	return true
end

function DAMN.UninstallTest.Default(vehicle, part, chr)
	if ISVehicleMechanics.cheat then return true; end
	local keyvalues = part:getTable("uninstall")
	if not keyvalues then return false end
	if not part:getInventoryItem() then return false end
	if not part:getItemType() or part:getItemType():isEmpty() then return false end
	local typeToItem = VehicleUtils.getItems(chr:getPlayerNum())
	if keyvalues.requireUninstalled then
        local split = keyvalues.requireUninstalled:split(";");
        for i,v in ipairs(split) do
            if vehicle:getPartById(v) and vehicle:getPartById(v):getInventoryItem() then return false; end
        end
    end
	if not VehicleUtils.testProfession(chr, keyvalues.professions) then return false end
	if not VehicleUtils.testRecipes(chr, keyvalues.recipes) then return false end
	if not VehicleUtils.testTraits(chr, keyvalues.traits) then return false end
	if not VehicleUtils.testItems(chr, keyvalues.items, typeToItem) then return false end
	if keyvalues.requireEmpty and round(part:getContainerContentAmount(), 3) > 0 then return false end
	local seatNumber = part:getContainerSeatNumber()
	local seatOccupied = (seatNumber ~= -1) and vehicle:isSeatOccupied(seatNumber)
	if keyvalues.requireEmpty and seatOccupied then return false end
	if VehicleUtils.RequiredKeyNotFound(part, chr) then
		return false
	end
	return true
end