if VehicleZoneDistribution then

VehicleZoneDistribution.parkingstall.vehicles["Base.63Type2Van"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trailerpark.vehicles["Base.63Type2Van"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trailerpark.vehicles["Base.63Type2VanMilitary"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.bad.vehicles["Base.63Type2Van"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.63Type2VanApocalypse"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.63Type2Van"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trafficjams.vehicles["Base.63Type2Van"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjams.vehicles["Base.63Type2VanMilitary"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.ranger.vehicles["Base.63Type2VanMilitary"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.farm = VehicleZoneDistribution.farm or {}
VehicleZoneDistribution.farm.vehicles = VehicleZoneDistribution.farm.vehicles or {}
VehicleZoneDistribution.farm.vehicles["Base.63Type2VanApocalypse"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.farm.vehicles["Base.63Type2VanHippie"] = {index = -1, spawnChance = 3};

end