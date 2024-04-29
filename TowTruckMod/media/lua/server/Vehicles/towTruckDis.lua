
local distributionTable = VehicleDistributions[1]

VehicleDistributions.RhinoGlovebox = {
    rolls = 4,
    items = {
        "AlcoholWipes", 8,
        "Bandage", 4,
        "Bandaid", 10,
        "Battery", 10,
        "BluePen", 8,
        "Cigarettes", 8,
        "DuctTape", 2,
        "Eraser", 6,
        "Lighter", 4,
        "Magazine", 10,
        "Matches", 8,
        "Notebook", 10,
        "Pen", 8,
        "Pencil", 10,
        "RedPen", 8,
        "Tissue", 10,
        "WaterBottleFull", 10,
		"HuntingMag1", 8,
		"HuntingMag2", 6,
		"HottieZ", 6,
		"BookMechanic1", 8,
		"BookMechanic2", 4,
		"BookMechanic3", 2,
		"BookMechanic4", 1,
		"MechanicMag1", 8,
		"MechanicMag2", 8,
		"MechanicMag3", 8,
    },
    junk = {
        rolls = 1,
        items = {
            "Glasses_Aviators", 0.05,
            "Glasses_Sun", 0.1,
            "Gloves_LeatherGloves", 10,
            "Gloves_LeatherGlovesBlack", 4,
            "HandTorch", 4,
            "HuntingKnife", 10,
            "LouisvilleMap1", 4,
            "LouisvilleMap2", 4,
            "LouisvilleMap3", 4,
            "LouisvilleMap4", 4,
            "LouisvilleMap5", 4,
            "LouisvilleMap6", 4,
            "LouisvilleMap7", 4,
            "LouisvilleMap8", 4,
            "LouisvilleMap9", 4,
            "MarchRidgeMap", 4,
            "Pistol", 3,
            "Pistol2", 2,
            "Pistol3", 1,
            "Radio.WalkieTalkie2", 2,
            "Radio.WalkieTalkie3", 1,
            "Revolver", 6,
            "Revolver_Long", 2,
            "Revolver_Short", 2,
            "RiversideMap", 4,
            "RosewoodMap", 4,
            "ToiletPaper", 4,
            "Wallet", 4,
            "Wallet2", 4,
            "Wallet3", 4,
            "Wallet4", 4,
            "WestpointMap", 4,
            "WhiskeyFull", 0.5,
        }
    }
}

VehicleDistributions.RhinoTruckBed = {
    rolls = 4,
    items = {
        "Bag_ToolBag", 10,
        "DuctTape", 8,
        "EmptyPetrolCan", 10,
        "EmptySandbag", 4,
        "PopBottleEmpty", 4,
        "PopEmpty", 4,
        "Tarp", 10,
        "Tissue", 10,
        "ToiletPaper", 6,
        "Tote", 6,
        "WaterBottleEmpty", 4,
        "WaterBottleFull", 10,
        "WhiskeyEmpty", 1,
		"WeldingMask", 10,
        "SheetMetal", 20,
        "SheetMetal", 10,
        "SmallSheetMetal", 20,
        "SmallSheetMetal", 10,
		"EngineParts", 20,
		"EngineParts", 10,
    },
    junk = {
        rolls = 1,
        items = {
            "BaseballBat", 10,
            "Jack", 10,
            "LugWrench", 10,
            "Machete", 3,
            "NormalTire1", 10,
			"NormalTire2", 10,
            "PonchoGreenDOWN", 8,
            "Screwdriver", 10,
            "TirePump", 8,
            "Wrench", 10,
        }
    }
}

VehicleDistributions.Rhino = {
    TruckBed = VehicleDistributions.RhinoTruckBed;
    TruckBedOpen = VehicleDistributions.RhinoTruckBed;
    GloveBox = VehicleDistributions.RhinoGlovebox;
}

distributionTable["Chevalier_Rhino_TowTruck"] = { Normal = VehicleDistributions.Rhino; }

