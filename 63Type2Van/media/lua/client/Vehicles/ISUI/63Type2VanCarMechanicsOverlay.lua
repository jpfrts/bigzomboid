-- common custom parts

ISCarMechanicsOverlay.PartList["VAN63FrontBumper"] = {img="bullbar", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63RearBumper"] = {img="bullbarr", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63WindshieldArmor"] = {img="windshield_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63FrontLeftArmor"] = {img="window_front_left_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63FrontRightArmor"] = {img="window_front_right_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63RearLeftArmor"] = {img="window_rear_left_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63RearRightArmor"] = {img="window_rear_right_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["VAN63WindshieldRearArmor"] = {img="windshield_rear_armor", vehicles = {}};
--
--##########63Type2Van##########
--
ISCarMechanicsOverlay.CarList["Base.63Type2Van"] = {imgPrefix = "63Type2Van_", x=10,y=30};

ISCarMechanicsOverlay.CarList["Base.63Type2VanMilitary"] = ISCarMechanicsOverlay.CarList["Base.63Type2Van"];
ISCarMechanicsOverlay.CarList["Base.63Type2VanApocalypse"] = ISCarMechanicsOverlay.CarList["Base.63Type2Van"];
ISCarMechanicsOverlay.CarList["Base.63Type2VanHippie"] = ISCarMechanicsOverlay.CarList["Base.63Type2Van"];
--
ISCarMechanicsOverlay.PartList["Battery"].vehicles["63Type2Van_"] = {img="battery", x=228,y=482,x2=269,y2=512};
--
ISCarMechanicsOverlay.PartList["SuspensionFrontLeft"].vehicles["63Type2Van_"] = {img="suspension_front_left", x=14,y=163,x2=55,y2=200};
ISCarMechanicsOverlay.PartList["SuspensionFrontRight"].vehicles["63Type2Van_"] = {img="suspension_front_right", x=228,y=162,x2=270,y2=200};
ISCarMechanicsOverlay.PartList["SuspensionRearLeft"].vehicles["63Type2Van_"] = {x=14,y=375,x2=55,y2=411};
ISCarMechanicsOverlay.PartList["SuspensionRearRight"].vehicles["63Type2Van_"] = {x=228,y=375,x2=270,y2=411};
--
ISCarMechanicsOverlay.PartList["BrakeFrontLeft"].vehicles["63Type2Van_"] = {img="brake_front_left", x=14,y=200,x2=55,y2=238};
ISCarMechanicsOverlay.PartList["BrakeFrontRight"].vehicles["63Type2Van_"] = {img="brake_front_right", x=228,y=200,x2=270,y2=238};
ISCarMechanicsOverlay.PartList["BrakeRearLeft"].vehicles["63Type2Van_"] = {x=14,y=411,x2=55,y2=450};
ISCarMechanicsOverlay.PartList["BrakeRearRight"].vehicles["63Type2Van_"] = {x=228,y=411,x2=270,y2=450};
--
ISCarMechanicsOverlay.PartList["TireFrontLeft"].vehicles["63Type2Van_"] = {x=69,y=200,x2=74,y2=246};
ISCarMechanicsOverlay.PartList["TireFrontRight"].vehicles["63Type2Van_"] = {x=209,y=200,x2=213,y2=246};
ISCarMechanicsOverlay.PartList["TireRearLeft"].vehicles["63Type2Van_"] = {x=69,y=386,x2=74,y2=434};
ISCarMechanicsOverlay.PartList["TireRearRight"].vehicles["63Type2Van_"] = {x=209,y=386,x2=213,y2=434};
--
ISCarMechanicsOverlay.PartList["DoorFrontLeft"].vehicles["63Type2Van_"] = {x=75,y=183,x2=81,y2=254};
ISCarMechanicsOverlay.PartList["DoorFrontRight"].vehicles["63Type2Van_"] = {x=202,y=183,x2=209,y2=254};
ISCarMechanicsOverlay.PartList["DoorRearRight"].vehicles["63Type2Van_"] = {x=202,y=258,x2=209,y2=347};
--
ISCarMechanicsOverlay.PartList["Engine"].vehicles["63Type2Van_"] = {x=112,y=535,x2=178,y2=576};
--
ISCarMechanicsOverlay.PartList["EngineDoor"].vehicles["63Type2Van_"] = {x=107,y=465,x2=177,y2=471};
--
ISCarMechanicsOverlay.PartList["WindowFrontLeft"].vehicles["63Type2Van_"] = {x=81,y=183,x2=90,y2=254};
ISCarMechanicsOverlay.PartList["WindowFrontRight"].vehicles["63Type2Van_"] = {x=193,y=183,x2=202,y2=254};
ISCarMechanicsOverlay.PartList["WindowRearLeft"].vehicles["63Type2Van_"] = {x=81,y=258,x2=90,y2=347};
ISCarMechanicsOverlay.PartList["WindowRearRight"].vehicles["63Type2Van_"] = {x=193,y=258,x2=202,y2=347};
--
ISCarMechanicsOverlay.PartList["Windshield"].vehicles["63Type2Van_"] = {x=90,y=169,x2=193,y2=196};
--
ISCarMechanicsOverlay.PartList["GasTank"].vehicles["63Type2Van_"] = {img="gastank", x=211,y=535,x2=269,y2=571};
--
ISCarMechanicsOverlay.PartList["Muffler"].vehicles["63Type2Van_"] = {x=13,y=535,x2=83,y2=571};

ISCarMechanicsOverlay.PartList["VAN63FrontBumper"].vehicles["63Type2Van_"] = {x=13,y=73,x2=55,y2=110};
ISCarMechanicsOverlay.PartList["VAN63RearBumper"].vehicles["63Type2Van_"] = {x=175,y=73,x2=217,y2=110};
ISCarMechanicsOverlay.PartList["VAN63WindshieldArmor"].vehicles["63Type2Van_"] = {x=66,y=73,x2=108,y2=110};
ISCarMechanicsOverlay.PartList["VAN63FrontLeftArmor"].vehicles["63Type2Van_"] = {x=14,y=266,x2=54,y2=303};
ISCarMechanicsOverlay.PartList["VAN63FrontRightArmor"].vehicles["63Type2Van_"] = {x=227,y=266,x2=269,y2=303};
ISCarMechanicsOverlay.PartList["VAN63RearLeftArmor"].vehicles["63Type2Van_"] = {x=14,y=306,x2=54,y2=344};
ISCarMechanicsOverlay.PartList["VAN63RearRightArmor"].vehicles["63Type2Van_"] = {x=227,y=306,x2=269,y2=344};
ISCarMechanicsOverlay.PartList["VAN63WindshieldRearArmor"].vehicles["63Type2Van_"] = {x=227,y=73,x2=269,y2=110};
--