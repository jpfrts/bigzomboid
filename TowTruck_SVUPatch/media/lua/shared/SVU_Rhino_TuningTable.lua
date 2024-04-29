require "ATA2TuningTable"

local function copy(obj, seen)
  if type(obj) ~= 'table' then return obj end
  if seen and seen[obj] then return seen[obj] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(obj))
  s[obj] = res
  for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
  return res
end

local carRecipe = "ATAVanillaRecipes"
local timeLong = 45
local timeLong2 = 30
local timeMid = 20
local timeMid2 = 15
local timeShort = 10
-- Not used in SVU:2 for now.
--local protectionLighthealthTriger = 40

-- Basically the rough amount of damage to give to the armor when it heals a part.
-- ONLY WORKS WHEN THE NEW "Tsars Fixes" SUBMOD IS ACTIVE!
-- Default: 1
local protectionLightHealthDelta = 5
local protectionBullbarHealthDelta = 3
local protectionWheelsHealthDelta = 2
local protectionLight = "protectionLight"
local protectionHeavy = "protectionHeavy"
local protectionMods = "protectionMods"

local NewCarTuningTable = {}
-- Entries
-- Specify each vehicle script here.

-- Make sure to replace ALL instances of "TemplateTruck" with something unique!
-- Good example: "TemplateMyCoolMod"
NewCarTuningTable["TemplateTruck"] = {
	addPartsFromVehicleScript = "",
	parts = {}
}
	NewCarTuningTable["Chevalier_Rhino_TowTruck"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}

-- A template of sorts to streamline code. DO NOT EDIT!!!
-- TemplateTruck
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontLeft"] = {
	Light = {
		shader = "vehicle_multiuv",
		icon = "media/ui/doorleft_light.png",
		--secondModel = "StaticPart",
		category = protectionLight,
		-- Not used in SVU:2 for now.
		--protectionTriger = protectionLighthealthTriger,
		-- Just using the value from the local at the top of this file.
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"WindowFrontLeft"},
		removeIfBroken = true,
		install = {
			area = "SeatFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 2,
				MetalBar=2,
				Screws=4,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
				secondary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 3,
			},
			recipes = {carRecipe},
			requireInstalled = {"WindowFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "SeatFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 2,
			},
			result = "auto",
			time = timeLong,
		}
	},
	Heavy = {
		shader = "vehicle_multiuv",
		icon = "media/ui/doorleft_heavy.png",
		--secondModel = "StaticPart",
		category = protectionHeavy,
		protection = {"WindowFrontLeft"},
		disableOpenWindowFromSeat = "SeatFrontLeft",
		removeIfBroken = true,
		install = {
			area = "SeatFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 2,
				SheetMetal = 2,
				Screws=4,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
				secondary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 5,
			},
			recipes = {carRecipe},
			requireInstalled = {"WindowFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "SeatFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 4,
			},
			result = "auto",
			time = timeLong,
		}
	}
}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.icon = "media/ui/doorright_light.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "SeatFrontRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "SeatFrontRight"

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.icon = "media/ui/doorright_heavy.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "SeatFrontRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "SeatFrontRight"

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshield"] = {
	Light = {
		icon = "media/ui/windshield_light.png",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"Windshield"},
		removeIfBroken = true,
		install = {
			area = "TireFrontRight",
			weight = "auto",
			use = {
				MetalPipe = 4,
				MetalBar=4,
				Screws=6,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 3,
			},
			recipes = {carRecipe},
			requireInstalled = {"Windshield"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontRight",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 2,
			},
			result = "auto",
			time = timeLong,
		}
	},
	Heavy = {
		icon = "media/ui/windshield_heavy.png",
		category = protectionHeavy,
		protection = {"Windshield"},
		removeIfBroken = true,
		install = {
			area = "TireFrontRight",
			weight = "auto",
			use = {
				MetalPipe = 4,
				SheetMetal = 2,
				MetalBar=4,
				Screws=6,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 5,
			},
			recipes = {carRecipe},
			requireInstalled = {"Windshield"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontRight",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 4,
			},
			result = "auto",
			time = timeLong,
		}
	}
}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Light.icon = "media/ui/windshield_light.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.icon = "media/ui/windshield_heavy.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateTruck"].parts["ATA2Bullbar"] = {
	Default = {
		icon = "media/textures/Item_RhinoBullbar.png",
		name = "IGUI_ATA2_Bullbar",
		category = protectionMods,
		protectionHealthDelta = protectionBullbarHealthDelta,
		protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"},
		install = {
			weight = "auto",
			animation = "ATA_PickLock",
			use = {
				MetalPipe = 4,
				MetalBar=2,
				Screws=6,
				BlowTorch = 6,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
				Mechanics = 2,
			},
			recipes = {"Intermediate Mechanics", carRecipe},
			time = timeMid, 
		},
		uninstall = {
			weight = "auto",
			animation = "ATA_Crowbar_DoorLeft",
			use = {
				BlowTorch=3,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeShort,
		}
	}
}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionTrunk"] = {
	Light = {
		icon = "media/ui/bumperrear_light.png",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"TruckBed", "TrunkDoor", "GasTank"},
		install = {
			use = {
				MetalPipe = 4,
				MetalBar = 2,
				Screws = 4,
				BlowTorch = 4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
			},
			recipes = {carRecipe},
			requireInstalled = {"TruckBed"},
			time = timeLong2, 
		},
		uninstall = {
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeMid2,
		}
	},
	Heavy = {
		icon = "media/ui/bumperrear_heavy.png",
		category = protectionHeavy,
		protection = {"TruckBed", "TrunkDoor", "GasTank"},
		install = {
			use = {
				SheetMetal = 4,
				MetalPipe = 4,
				MetalBar = 2,
				Screws = 6,
				BlowTorch = 4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 6,
			},
			recipes = {carRecipe},
			requireInstalled = {"TruckBed"},
			time = timeLong2, 
		},
		uninstall = {
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 5,
			},
			result = "auto",
			time = timeMid2,
		}
	}
}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"].Light.icon = "media/ui/hood_light.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"].Heavy.icon = "media/ui/hood_heavy.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontLeft"] = {
	Light = {
		icon = "media/ui/doorleft_light.png",
		secondModel = "StaticPart",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"DoorFrontLeft"},
		install = {
			area = "SeatFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 4,
				MetalBar=4,
				Screws=4,
				BlowTorch = 8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
			},
			recipes = {carRecipe},
			requireInstalled = {"DoorFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "SeatFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeMid,
		}
	},
	Heavy = {
		icon = "media/ui/doorleft_heavy.png",
		secondModel = "StaticPart",
		category = protectionHeavy,
		protection = {"DoorFrontLeft"},
		install = {
			area = "SeatFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 4,
				MetalBar=4,
				SheetMetal=6,
				Screws=10,
				BlowTorch = 8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 6,
			},
			recipes = {carRecipe},
			requireInstalled = {"DoorFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "SeatFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 5,
			},
			result = "auto",
			time = timeMid,
		}
	}
}

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.icon = "media/ui/doorright_light.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.install.area = "SeatFrontRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.uninstall.area = "SeatFrontRight"

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.icon = "media/ui/doorright_heavy.png"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.area = "SeatFrontRight"
NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.uninstall.area = "SeatFrontRight"

NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWheels"] = {
	ATAProtection = {
		removeIfBroken = true,
		icon = "media/ui/tuning2/wheel_chain.png",
		category = protectionMods, 
		protectionHealthDelta = protectionWheelsHealthDelta,
		protectionModel = true, 
		protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
		install = {
			area = "TireFrontLeft",
			sound = "ATA2InstallWheelChain",
			use = { 
				ATAProtectionWheelsChain = 1,
				BlowTorch = 4,
			},
			tools = { 
				bodylocation = "Base.WeldingMask", 
				primary = "Base.Wrench",
			},
			skills = {
				Mechanics = 2,
				MetalWelding = 3,
			},
			recipes = {carRecipe},
			requireInstalled = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"},
			time = timeLong, 
		},
		uninstall = {
			area = "TireFrontLeft",
			sound = "ATA2InstallWheelChain",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 2,
			},
			result = {
				UnusableMetal=2,
			},
			time = timeMid,
		}
	}
}

-- Here you actually specify what goes on the car, based on what's in the armor script file.
-- Again, if it's not in the armor script file it won't work!

-- Chevalier_Rhino_TowTruck
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWindshieldRear"])
--NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2Bullbar"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateTruck"].parts["ATA2ProtectionWheels"])


ATA2Tuning_AddNewCars(NewCarTuningTable)

