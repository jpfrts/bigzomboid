require "DAMN_Parts";
require "DAMN_Spawns";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

DAMN.Parts:processConfigV2("CH76", {
	["BumperFront"] = {
		partId = "CH76BumperFront",
		itemToModel = {
			["Base.76chevyKseriesBumperFront0"] = "FrontBumper0",
			["Base.76chevyKseriesBullbarFrontA"] = "FrontBullbarA",
		},
		default = "trve_random",
		noPartChance = 5,
	},
	["BumperRear"] = {
		partId = "CH76BumperRear",
		itemToModel = {
			["Base.76chevyKseriesBumperRear0"] = "RearBumper0",
			["Base.76chevyKseriesBumperRearA"] = "RearBumper1",
		},
		default = "trve_random",
		noPartChance = 5,
	},
	["WindowFrontLeftArmor"] = {
		partId = "CH76WindowFrontLeftArmor",
		itemToModel = {
			["Base.76chevyKseriesFrontWindowArmor"] = "CH76leftWindowa",
		},
	},
	["WindowFrontRightArmor"] = {
		partId = "CH76WindowFrontRightArmor",
		itemToModel = {
			["Base.76chevyKseriesFrontWindowArmor"] = "CH76rightWindowa",
		},
	},
	["WindshieldArmor"] = {
		partId = "CH76WindshieldArmor",
		itemToModel = {
			["Base.76chevyKseriesWindshieldArmor"] = "CH76winda",
		},
	},
	["SpareTireBed"] = {
		partId = "CH76SpareTireBed",
		itemToModel = {
			["Base.76chevyKseriesTire2"] = "SpareTire1",
		},
		default = "trve_random",
		noPartChance = 33,
	},
	["SpareTireRoof"] = {
		partId = "CH76SpareTireRoof",
		itemToModel = {
			["Base.76chevyKseriesTire2"] = "SpareTire2",
		},
	},
	["Roofrack"] = {
		partId = "CH76Roofrack",
		itemToModel = {
			["Base.76chevyKseriesRoofrack2"] = "CH76Roofrack0",
		},
	},
	["BedExtras20"] = {
		partId = "CH76TruckBedExtras",
		itemToModel = {
			["Base.76chevyKseriesRollbar2"] = "CH76Rollbar",
			["Base.76chevyKseriesToolbox2"] = "CH76Toolbox",
		},
		default = "trve_random",
		noPartChance = 25,
	},
	["BedExtras10"] = {
		partId = "CH76TruckBedExtras",
		itemToModel = {
			["Base.76chevyKseriesRollbar2"] = "CH76Rollbar",
			["Base.76chevyKseriesToolbox2"] = "CH76Toolbox",
		},
		default = "trve_random",
		noPartChance = 25,
	},
});


function CH76.ContainerAccess.Trunk(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 5 or seat == 4 or seat == 3 or seat == 2;
	elseif chr:getVehicle() then
		return false
	else
		if not vehicle:isInArea(part:getArea(), chr) then return false end
		local doorPart = vehicle:getPartById("TrunkDoor")
		if doorPart and doorPart:getDoor() and not doorPart:getDoor():isOpen() then
			return false
		end
		return true
	end
end

function CH76.ContainerAccess.Toolbox(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	return true
end

function CH76.ContainerAccess.Roofrack(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	return true
end