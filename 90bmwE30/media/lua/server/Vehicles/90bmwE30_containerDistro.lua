local distributionTable = VehicleDistributions[1]

VehicleDistributions.BMWE30 = {

	GloveBox = VehicleDistributions.GloveBox;
	BMWE30TrunkS = VehicleDistributions.TruckBed;
	BMWE30TrunkT = VehicleDistributions.TruckBed;
	BMWE30Roofrack = VehicleDistributions.TruckBed;
}

distributionTable["90bmwE30cabrio"] = { Normal = VehicleDistributions.BMWE30; }
distributionTable["90bmwE30m3"] = { Normal = VehicleDistributions.BMWE30; }
distributionTable["90bmwE30sedan2"] = { Normal = VehicleDistributions.BMWE30; }
distributionTable["90bmwE30sedan4"] = { Normal = VehicleDistributions.BMWE30; }
distributionTable["90bmwE30touring"] = { Normal = VehicleDistributions.BMWE30; }