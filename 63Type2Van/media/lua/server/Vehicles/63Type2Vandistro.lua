local distributionTable = VehicleDistributions[1]

VehicleDistributions.GermanTrunk = {
    rolls = 3,
    items ={
    	"DuctTape", 5,
        "EmptyPetrolCan", 4,
        "EmptySandbag", 3,
        "Garbagebag", 3,
        "Plasticbag", 3,
        "PopBottleEmpty", 3,
        "PopEmpty", 2,
        "RubberBand", 3,
        "Tarp", 3,
        "Tissue", 3,
        "ToiletPaper", 3,
        "Tote", 3,
        "Twine", 3,
    	"dasBootFull", 3,
    	"dasBootEmpty", 2,
        "CannedCabbage", 2,
        "BeerBottle", 1,
        "BeerCan", 1,
        "Baloney", 1,
        "BaloneySlice", 1,
        "DehydrateMeatStick", 1,
        "Salami", 1,
        "SalamiSlice", 1,
        "Sausage", 1.5,
        "Shirt_HawaiianTINT", 1,
        "Suitcase", 1,
    }
}

VehicleDistributions.HippieTrunk = {
    rolls = 4,
    items ={
    	"DuctTape", 5,
        "EmptyPetrolCan", 4,
        "EmptySandbag", 3,
        "Garbagebag", 3,
        "Plasticbag", 3,
        "PopBottleEmpty", 3,
        "PopEmpty", 2,
        "RubberBand", 3,
        "Tarp", 3,
        "Tissue", 3,
        "ToiletPaper", 3,
        "Tote", 3,
        "Twine", 3,
    	"greenGoo", 4,
    }
}

VehicleDistributions.VAN63A = {

	GloveBox = VehicleDistributions.GloveBox;
	VAN63InnerTrunk = VehicleDistributions.SurvivalistTruckBed;
	VAN63WeldedRoofrack = VehicleDistributions.TrunkHeavy;
	VAN63ToolBoxLeft = VehicleDistributions.AmbulanceGloveBox;
	VAN63ToolBoxRight = VehicleDistributions.MetalWelderGloveBox;
	VAN63UnderMiddleLeftSeat = VehicleDistributions.RangerGloveBox;
	VAN63UnderMiddleRightSeat = VehicleDistributions.RangerGloveBox;
}

VehicleDistributions.VAN63M = {

	GloveBox = VehicleDistributions.PoliceGloveBox;
	VAN63Trunk = VehicleDistributions.PoliceTruckBed;
	VAN63Roofrack = VehicleDistributions.TrunkHeavy;
	VAN63UnderMiddleLeftSeat = VehicleDistributions.FireGloveBox;
	VAN63UnderMiddleRightSeat = VehicleDistributions.FireGloveBox;
}

VehicleDistributions.VAN63G = {

	GloveBox = VehicleDistributions.GloveBox;
	VAN63Trunk = VehicleDistributions.TrunkHeavy;
	VAN63Roofrack = VehicleDistributions.TrunkHeavy;
	VAN63UnderMiddleLeftSeat = VehicleDistributions.TransitGloveBox;
	VAN63UnderMiddleRightSeat = VehicleDistributions.GermanTrunk;
	VAN63UnderRearLeftSeat = VehicleDistributions.MassGenFacGloveBox;
	VAN63UnderRearRightSeat = VehicleDistributions.GermanTrunk;
}

VehicleDistributions.VAN63H = {

	GloveBox = VehicleDistributions.GloveBox;
	VAN63Trunk = VehicleDistributions.HippieTrunk;
	VAN63Roofrack = VehicleDistributions.TrunkHeavy;
	VAN63UnderMiddleLeftSeat = VehicleDistributions.MassGenFacGloveBox;
	VAN63UnderMiddleRightSeat = VehicleDistributions.MassGenFacGloveBox;
	VAN63UnderRearLeftSeat = VehicleDistributions.TransitGloveBox;
	VAN63UnderRearRightSeat = VehicleDistributions.MassGenFacGloveBox;
}

distributionTable["63Type2Van"] = { Normal = VehicleDistributions.VAN63G; }
distributionTable["63Type2VanMilitary"] = { Normal = VehicleDistributions.VAN63M; }
distributionTable["63Type2VanApocalypse"] = { Normal = VehicleDistributions.VAN63A; }
distributionTable["63Type2VanHippie"] = { Normal = VehicleDistributions.VAN63H; }