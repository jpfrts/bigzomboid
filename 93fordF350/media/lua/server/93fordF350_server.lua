require "DAMN_Parts";
require "DAMN_Spawns";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

DAMN.Parts:processConfigV2("F3502", {
	["BumperFront"] = {
		partId = "F3502BumperFront",
		itemToModel = {
			["Base.93fordF350BumperFront0"] = "FrontBumper0",
			["Base.93fordF350BullbarFrontA"] = "FrontBullbarA",
		},
		default = "trve_random",
		noPartChance = 5,
	},
	["BullbarFront"] = {
		partId = "F3502BumperFront",
		itemToModel = {
			["Base.93fordF350BullbarFrontA"] = "FrontBullbarA",
			["Base.93fordF350BumperFront0"] = "FrontBumper0",
		},
		default = "first",
	},
	["BumperRear"] = {
		partId = "F3502BumperRear",
		itemToModel = {
			["Base.93fordF350BumperRear0"] = "RearBumper0",
		},
		default = "trve_random",
		noPartChance = 5,
	},
	["Mudflaps"] = {
		partId = "F3502Mudflaps",
		itemToModel = {
			["Base.93fordF350Mudflaps2"] = "F3502Mudflaps0",
		},
		default = "trve_random",
			noPartChance = 50,
	},
	["RoofLights"] = {
		partId = "F3502RoofLights",
		itemToModel = {
			["Base.93fordF350RoofLights2"] = "F3502RoofLights0",
		},
		default = "trve_random",
			noPartChance = 50,
	},
	["WindowFrontLeftArmor"] = {
		partId = "F3502WindowFrontLeftArmor",
		itemToModel = {
			["Base.93fordF350FrontWindowArmor"] = "F3502leftWindowa",
		},
	},
	["WindowFrontRightArmor"] = {
		partId = "F3502WindowFrontRightArmor",
		itemToModel = {
			["Base.93fordF350FrontWindowArmor"] = "F3502rightWindowa",
		},
	},
	["WindowRearLeftArmor"] = {
		partId = "F3502WindowRearLeftArmor",
		itemToModel = {
			["Base.93fordF350RearWindowArmor"] = "F3502leftWindowra",
			["Base."] = "",
		},
	},
	["WindowRearRightArmor"] = {
		partId = "F3502WindowRearRightArmor",
		itemToModel = {
			["Base.93fordF350RearWindowArmor"] = "F3502rightWindowra",
		},
	},
	["WindshieldArmor"] = {
		partId = "F3502WindshieldArmor",
		itemToModel = {
			["Base.93fordF350WindshieldArmor"] = "F3502winda",
		},
	},
	["WindshieldRearArmor"] = {
		partId = "F3502WindshieldRearArmor",
		itemToModel = {
			["Base.93fordF350WindshieldRearArmor"] = "F3502windra",
		},
	},
	["SpareTire"] = {
		partId = "F3502SpareTire",
		itemToModel = {
			["Base.93fordF350Tire2"] = "SpareTire",
		},
		default = "trve_random",
		noPartChance = 33,
	},
	["SideSteps"] = {
		partId = "F3502SideSteps",
		itemToModel = {
			["Base.93fordF350SideSteps2"] = "F3502SideSteps0",
			["Base.93fordF350SideStepsLong2"] = "F3502SideSteps1",
		},
		default = "trve_random",
		noPartChance = 33,
	},
});

function F3502.ContainerAccess.TruckBed(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 3 or seat == 2 or seat == 1 or seat == 0;
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

function F3502.ContainerAccess.Toolbox(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	return true
end

function F3502.ContainerAccess.Gunrack(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 1 or seat == 0;
	elseif chr:getVehicle() then
		return false
	else
		if not vehicle:isInArea(part:getArea(), chr) then return false end
		local doorPart = vehicle:getPartById("DoorFrontRight")
		if doorPart and doorPart:getDoor() and not doorPart:getDoor():isOpen() then
			return false
		end
		return true
	end
end

function F3502.Dismantle2Tires(items, result, player, selectedItem)

    local addType = "Base.93fordF350Tire2"
    local tireCond = selectedItem:getCondition();

    player:getInventory():AddItem(addType):setCondition(tireCond);
    player:getInventory():AddItem(addType):setCondition(tireCond);
    player:getXp():AddXP(Perks.Mechanics, 4);

end