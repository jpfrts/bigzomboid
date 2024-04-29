local distributionTable = VehicleDistributions[1]

VehicleDistributions.F3502PDgunrack = {
    rolls = 1,
    items = {
    	"Shotgun", 100,
    }
}

VehicleDistributions.F3502 = {

	GloveBox = VehicleDistributions.GloveBox;
	F3502Trunk = VehicleDistributions.TrunkHeavy;
	F3502HeadacheRack = VehicleDistributions.TrunkHeavy;
}

VehicleDistributions.F3502PD = {

	GloveBox = VehicleDistributions.PoliceGloveBox;
	F3502Trunk = VehicleDistributions.PoliceTruckBed;
	F3502Gunrack = VehicleDistributions.F3502PDgunrack;
	F3502HeadacheRack = VehicleDistributions.PoliceGloveBox;
}

VehicleDistributions.F3502FD = {

	GloveBox = VehicleDistributions.FireGloveBox;
	F3502Trunk = VehicleDistributions.FireTruckBed;
	F3502HeadacheRack = VehicleDistributions.FireGloveBox;
}

distributionTable["93fordF350"] = { Normal = VehicleDistributions.F3502; }
distributionTable["93fordF350dually"] = { Normal = VehicleDistributions.F3502; }
distributionTable["93fordF350pd"] = { Normal = VehicleDistributions.F3502PD; }
distributionTable["93fordF350fd"] = { Normal = VehicleDistributions.F3502FD; }