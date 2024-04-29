require "DAMN_Parts";
require "DAMN_Spawns";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

DAMN.Parts:processConfigV2("BMWE30", {
	["BumperFront"] = {
		partId = "BMWE30BumperFront",
		itemToModel = {
			["Base.90bmwE30BumperFront"] = "BumperFront0",
			["Base.90bmwE30BumperFrontA"] = "BumperFrontA",
			["Base.90bmwE30Bullbar"] = "BullbarFrontA",
		},
		default = "first",
	},
	["BumperFrontM"] = {
		partId = "BMWE30BumperFront",
		itemToModel = {
			["Base.90bmwE30BumperFrontM"] = "BumperFrontM",
			["Base.90bmwE30BumperFrontMA"] = "BumperFrontMA",
			["Base.90bmwE30Bullbar"] = "BullbarFrontA",
		},
		default = "first",
	},
	["BumperRear"] = {
		partId = "BMWE30BumperRear",
		itemToModel = {
			["Base.90bmwE30BumperRear"] = "BumperRear0",
		},
		default = "first",
	},
	["BumperRearM"] = {
		partId = "BMWE30BumperRear",
		itemToModel = {
			["Base.90bmwE30BumperRearM"] = "BumperRearM",
		},
		default = "first",
	},
	["WindshieldArmor"] = {
		partId = "BMWE30WindshieldArmor",
		itemToModel = {
			["Base.90bmwE30WindshieldArmor"] = "BMWE30winda0",
		},
	},
	["WindshieldRearArmor"] = {
		partId = "BMWE30WindshieldRearArmor",
		itemToModel = {
			["Base.90bmwE30WindshieldRearArmor"] = "BMWE30windra",
		},
	},
	["FrontLeftArmor"] = {
		partId = "BMWE30FrontLeftArmor",
		itemToModel = {
			["Base.90bmwE30FrontWindowArmor"] = "BMWE30leftdoora",
		},
	},
	["FrontRightArmor"] = {
		partId = "BMWE30FrontRightArmor",
		itemToModel = {
			["Base.90bmwE30FrontWindowArmor"] = "BMWE30rightdoora",
		},
	},
	["FrontLeftArmorCabrio"] = {
		partId = "BMWE30FrontLeftArmor",
		itemToModel = {
			["Base.90bmwE30CabrioWindowArmor"] = "BMWE30leftdoora",
		},
	},
	["FrontRightArmorCabrio"] = {
		partId = "BMWE30FrontRightArmor",
		itemToModel = {
			["Base.90bmwE30CabrioWindowArmor"] = "BMWE30rightdoora",
		},
	},
	["RearLeftArmor"] = {
		partId = "BMWE30RearLeftArmor",
		itemToModel = {
			["Base.90bmwE30SedanRearWindowArmor"] = "BMWE30leftdoorra",
		},
	},
	["RearRightArmor"] = {
		partId = "BMWE30RearRightArmor",
		itemToModel = {
			["Base.90bmwE30SedanRearWindowArmor"] = "BMWE30rightdoorra",
		},
	},
	["RearLeftArmorTouring"] = {
		partId = "BMWE30RearLeftArmor",
		itemToModel = {
			["Base.90bmwE30TouringRearWindowArmor"] = "BMWE30leftdoorra",
		},
	},
	["RearRightArmorTouring"] = {
		partId = "BMWE30RearRightArmor",
		itemToModel = {
			["Base.90bmwE30TouringRearWindowArmor"] = "BMWE30rightdoorra",
		},
	},
	["BackLeftArmorTouring"] = {
		partId = "BMWE30BackLeftArmor",
		itemToModel = {
			["Base.90bmwE30TouringBackWindowArmor"] = "BMWE30leftdoorra",
		},
	},
	["BackRightArmorTouring"] = {
		partId = "BMWE30BackRightArmor",
		itemToModel = {
			["Base.90bmwE30TouringBackWindowArmor"] = "BMWE30rightdoorra",
		},
	},
	["SpareTire"] = {
		partId = "BMWE30SpareTire",
		itemToModel = {
			["Base.90bmwE30Tire3"] = "one",
			["Base.90bmwE30mTire3"] = "two",
		},
		default = "trve_random",
		noPartChance = 33,
	},
	["Roofrack"] = {
		partId = "BMWE30Roofrack",
		itemToModel = {
			["Base.90bmwE30Roofrack3"] = "BMWE30Roofrack0",
		},
		default = "trve_random",
		noPartChance = 90,
	},
	["SpoilerM"] = {
		partId = "BMWE30Spoiler",
		itemToModel = {
			["Base.90bmwE30m3Spoiler3"] = "BMWE30spoiler0",
		},
		default = "first",
	},
	["Spoiler"] = {
		partId = "BMWE30Spoiler",
		itemToModel = {
			["Base.90bmwE30sedanSpoilerLip3"] = "BMWE30spoiler1",
			["Base.90bmwE30sedanSpoilerMT3"] = "BMWE30spoiler2",
		},
		default = "trve_random",
		noPartChance = 33,
	},
	["TireFrontLeft"] = {
		partId = "TireFrontLeft",
		itemToModel = {
			["Base.90bmwE30Tire3"] = "E30stockTire",
			["Base.90bmwE30mTire3"] = "E30mTire",
		},
	},
	["TireFrontRight"] = {
		partId = "TireFrontRight",
		itemToModel = {
			["Base.90bmwE30Tire3"] = "E30stockTire",
			["Base.90bmwE30mTire3"] = "E30mTire",
		},
	},
	["TireRearLeft"] = {
		partId = "TireRearLeft",
		itemToModel = {
			["Base.90bmwE30Tire3"] = "E30stockTire",
			["Base.90bmwE30mTire3"] = "E30mTire",
		},
	},
	["TireRearRight"] = {
		partId = "TireRearRight",
		itemToModel = {
			["Base.90bmwE30Tire3"] = "E30stockTire",
			["Base.90bmwE30mTire3"] = "E30mTire",
		},
	},
});


function BMWE30.ContainerAccess.TouringTrunk(vehicle, part, chr)
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

function BMWE30.ContainerAccess.Roofrack(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	return true
end