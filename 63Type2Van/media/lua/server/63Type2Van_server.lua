require "DAMN_Parts";
require "DAMN_Spawns";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

DAMN.Parts:processConfigV2("VAN63", {
	["FrontBumper"] = {
		partId = "VAN63FrontBumper",
		itemToModel = {
			["Base.63Type2VanBumperFront0"] = "FrontBumper0",
			["Base.63Type2VanBumperFront1"] = "FrontBumper1",
			["Base.63Type2VanBullbarFrontA"] = "FrontBullbarA",
		},
		default = "first",
	},
	["FrontBumperM"] = {
		partId = "VAN63FrontBumper",
		itemToModel = {
			["Base.63Type2VanBumperFront1"] = "FrontBumper1",
			["Base.63Type2VanBumperFront0"] = "FrontBumper0",
			["Base.63Type2VanBullbarFrontA"] = "FrontBullbarA",
		},
		default = "first",
	},
	["FrontBumperA"] = {
		partId = "VAN63FrontBumper",
		itemToModel = {
			["Base.63Type2VanBullbarFrontA"] = "FrontBullbarA",
			["Base.63Type2VanBumperFront0"] = "FrontBumper0",
			["Base.63Type2VanBumperFront1"] = "FrontBumper1",
		},
		default = "first",
	},
	["RearBumper"] = {
		partId = "VAN63RearBumper",
		itemToModel = {
			["Base.63Type2VanBumperRear0"] = "RearBumper0",
			["Base.63Type2VanBumperRear1"] = "RearBumper1",
		},
		default = "first",
	},
	["RearBumperM"] = {
		partId = "VAN63RearBumper",
		itemToModel = {
			["Base.63Type2VanBumperRear1"] = "RearBumper1",
			["Base.63Type2VanBumperRear0"] = "RearBumper0",
		},
		default = "first",
	},
	["RearBumperA"] = {
		partId = "VAN63RearBumper",
		itemToModel = {
			["Base.63Type2VanCageRear1"] = "RearCage1",
			["Base.63Type2VanBumperRear1"] = "RearBumper1",
			["Base.63Type2VanBumperRear0"] = "RearBumper0",
		},
		default = "first",
	},
	["WindshieldArmor"] = {
		partId = "VAN63WindshieldArmor",
		itemToModel = {
			["Base.63Type2VanWindshieldArmor"] = "VAN63winda",
		},
	},
	["WindshieldRearArmor"] = {
		partId = "VAN63WindshieldRearArmor",
		itemToModel = {
			["Base.63Type2VanWindshieldRearArmor"] = "VAN63windra",
		},
	},
	["WindshieldRearCage"] = {
		partId = "VAN63WindshieldRearCage",
		itemToModel = {
			["Base.63Type2VanWindshieldRearCage"] = "VAN63windrc",
		},
	},
	["FrontLeftArmor"] = {
		partId = "VAN63FrontLeftArmor",
		itemToModel = {
			["Base.63Type2VanFrontWindowArmor"] = "VAN63fla",
		},
	},
	["FrontRightArmor"] = {
		partId = "VAN63FrontRightArmor",
		itemToModel = {
			["Base.63Type2VanFrontWindowArmor"] = "VAN63fra",
		},
	},
	["RearLeftArmor"] = {
		partId = "VAN63RearLeftArmor",
		itemToModel = {
			["Base.63Type2VanDoubleRearWindowArmor"] = "VAN63rla",
		},
	},
	["RearLeftArmorM"] = {
		partId = "VAN63RearLeftArmor",
		itemToModel = {
			["Base.63Type2VanRearWindowArmor"] = "VAN63rlma",
		},
	},
	["RearRightArmor"] = {
		partId = "VAN63RearRightArmor",
		itemToModel = {
			["Base.63Type2VanDoubleRearWindowArmor"] = "VAN63rra",
		},
	},
	["RearRightArmorM"] = {
		partId = "VAN63RearRightArmor",
		itemToModel = {
			["Base.63Type2VanRearWindowArmor"] = "VAN63rrma",
		},
	},
	["BackLeftArmor"] = {
		partId = "VAN63BackLeftArmor",
		itemToModel = {
			["Base.63Type2VanRearWindowArmor"] = "VAN63rla",
		},
	},
	["BackRightArmor"] = {
		partId = "VAN63BackRightArmor",
		itemToModel = {
			["Base.63Type2VanRearWindowArmor"] = "VAN63rra",
		},
	},
	["Sidesteps"] = {
		partId = "VAN63Sidesteps",
		itemToModel = {
			["Base.63Type2VanSidesteps0"] = "VAN63step0",
		},
		default = "trve_random",
		noPartChance = 5,
	},
	["SpareTireStockCab"] = {
		partId = "VAN63SpareCab",
		itemToModel = {
			["Base.63beetleTire"] = "VAN63spare0",
		},
		default = "trve_random",
		noPartChance = 10,
	},
	["SpareTireOffroadRoof"] = {
		partId = "VAN63ApocSpareRoof",
		itemToModel = {
			["Base.63Type2VanTireOffroad"] = "VAN63ApocspareRoof1",
		},
		default = "trve_random",
		noPartChance = 10,
	},
	["Roofrack"] = {
		partId = "VAN63Roofrack",
		itemToModel = {
			["Base.63Type2VanRoofrackSmall1"] = "VAN63Roofrack0",
			["Base.63Type2VanRoofrackLarge1"] = "VAN63Roofrack1",
		},
		default = "trve_random",
		noPartChance = 95,
	},
	["RoofrackM"] = {
		partId = "VAN63Roofrack",
		itemToModel = {
			["Base.63Type2VanRoofrackSmall1"] = "VAN63Roofrack0",
		},
		default = "trve_random",
		noPartChance = 95,
	},
	["Mudflaps"] = {
		partId = "VAN63Mudflaps",
		itemToModel = {
			["Base.63Type2VanMudflaps0"] = "VAN63mud0",
		},
		default = "trve_random",
		noPartChance = 50,
	},
	["TarpCover"] = {
		partId = "VAN63TarpCover",
		itemToModel = {
			["Base.63Type2VanTarpCover0"] = "VAN63tarp0",
		},
		default = "trve_random",
		noPartChance = 50,
	},
});


function VAN63.ContainerAccess.InnerTrunk(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 5 or seat == 4 or seat == 3 or seat == 2 or seat == 1 or seat == 0;
	elseif chr:getVehicle() then
		return false
	else
		if not vehicle:isInArea(part:getArea(), chr) then return false end
		local doorPart = vehicle:getPartById("DoorRearRight")
		if doorPart and doorPart:getDoor() and not doorPart:getDoor():isOpen() then
			return false
		end
		return true
	end
end

function VAN63.ContainerAccess.CustomArea(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	return true
end

function VAN63.ContainerAccess.UnderSeatsMiddle(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 3 or seat == 2;
	elseif chr:getVehicle() then
		return false
	else
		if not vehicle:isInArea(part:getArea(), chr) then return false end
		local doorPart = vehicle:getPartById("DoorRearRight")
		if doorPart and doorPart:getDoor() and not doorPart:getDoor():isOpen() then
			return false
		end
		return true
	end
end

function VAN63.ContainerAccess.UnderSeatsRear(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 5 or seat == 4;
	elseif chr:getVehicle() then
		return false
	else
		if not vehicle:isInArea(part:getArea(), chr) then return false end
		local doorPart = vehicle:getPartById("DoorRearRight")
		if doorPart and doorPart:getDoor() and not doorPart:getDoor():isOpen() then
			return false
		end
		return true
	end
end

VAN63.OnCreate = {};

function VAN63.OnCreate.PackItems(items, result, player, selectedItem)

    if not isClient()
    then
        return;
    end
    
    items = items or {};
    
    local allCond = 0;

    for i, item in ipairs(items)
    do
        allCond = allCond + item:getCondition();
    end
    
    resultItem:setCondition(allCond / (#items or 1));
    
end 