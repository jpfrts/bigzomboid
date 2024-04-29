-- common custom parts

ISCarMechanicsOverlay.PartList["F3502BumperFront"] = {img="bullbar", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502BumperRear"] = {img="bullbarr", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502WindshieldArmor"] = {img="windshield_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502WindowFrontLeftArmor"] = {img="window_front_left_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502WindowFrontRightArmor"] = {img="window_front_right_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502WindowRearLeftArmor"] = {img="window_rear_left_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502WindowRearRightArmor"] = {img="window_rear_right_armor", vehicles = {}};
ISCarMechanicsOverlay.PartList["F3502HeadacheRack"] = {img="windshield_rear_armor", vehicles = {}};
--
--##########93fordF350##########
--
ISCarMechanicsOverlay.CarList["Base.93fordF350"] = {imgPrefix = "93fordF350_", x=10,y=10};
ISCarMechanicsOverlay.CarList["Base.93fordF350dually"] = ISCarMechanicsOverlay.CarList["Base.93fordF350"]
ISCarMechanicsOverlay.CarList["Base.93fordF350pd"] = ISCarMechanicsOverlay.CarList["Base.93fordF350"]
ISCarMechanicsOverlay.CarList["Base.93fordF350fd"] = ISCarMechanicsOverlay.CarList["Base.93fordF350"]
--
ISCarMechanicsOverlay.PartList["Battery"].vehicles["93fordF350_"] = {img="battery", x=228,y=67,x2=270,y2=98};
--
ISCarMechanicsOverlay.PartList["SuspensionFrontLeft"].vehicles["93fordF350_"] = {img="suspension_front_left", x=13,y=153,x2=55,y2=191};
ISCarMechanicsOverlay.PartList["SuspensionFrontRight"].vehicles["93fordF350_"] = {img="suspension_front_right", x=228,y=153,x2=270,y2=191};
ISCarMechanicsOverlay.PartList["SuspensionRearLeft"].vehicles["93fordF350_"] = {x=13,y=367,x2=55,y2=406};
ISCarMechanicsOverlay.PartList["SuspensionRearRight"].vehicles["93fordF350_"] = {x=228,y=367,x2=270,y2=406};
--
ISCarMechanicsOverlay.PartList["BrakeFrontLeft"].vehicles["93fordF350_"] = {img="brake_front_left", x=14,y=191,x2=55,y2=228};
ISCarMechanicsOverlay.PartList["BrakeFrontRight"].vehicles["93fordF350_"] = {img="brake_front_right", x=228,y=191,x2=270,y2=228};
ISCarMechanicsOverlay.PartList["BrakeRearLeft"].vehicles["93fordF350_"] = {x=13,y=406,x2=55,y2=441};
ISCarMechanicsOverlay.PartList["BrakeRearRight"].vehicles["93fordF350_"] = {x=228,y=406,x2=270,y2=441};
--
ISCarMechanicsOverlay.PartList["TireFrontLeft"].vehicles["93fordF350_"] = {x=13,y=228,x2=55,y2=268};
ISCarMechanicsOverlay.PartList["TireFrontRight"].vehicles["93fordF350_"] = {x=228,y=228,x2=270,y2=268};
ISCarMechanicsOverlay.PartList["TireRearLeft"].vehicles["93fordF350_"] = {x=13,y=441,x2=55,y2=481};
ISCarMechanicsOverlay.PartList["TireRearRight"].vehicles["93fordF350_"] = {x=228,y=441,x2=270,y2=481};
--
ISCarMechanicsOverlay.PartList["DoorFrontLeft"].vehicles["93fordF350_"] = {x=73,y=196,x2=79,y2=258};
ISCarMechanicsOverlay.PartList["DoorFrontRight"].vehicles["93fordF350_"] = {x=203,y=196,x2=210,y2=258};
ISCarMechanicsOverlay.PartList["DoorRearLeft"].vehicles["93fordF350_"] = {x=73,y=271,x2=79,y2=317};
ISCarMechanicsOverlay.PartList["DoorRearRight"].vehicles["93fordF350_"] = {x=203,y=271,x2=210,y2=317};
--
ISCarMechanicsOverlay.PartList["Engine"].vehicles["93fordF350_"] = {x=141,y=87,x2=210,y2=174};
--
ISCarMechanicsOverlay.PartList["EngineDoor"].vehicles["93fordF350_"] = {x=83,y=87,x2=141,y2=174};
--
ISCarMechanicsOverlay.PartList["TruckBed"].vehicles["93fordF350_"] = {x=79,y=503,x2=204,y2=509};
--
ISCarMechanicsOverlay.PartList["WindowFrontLeft"].vehicles["93fordF350_"] = {x=79,y=196,x2=90,y2=258};
ISCarMechanicsOverlay.PartList["WindowFrontRight"].vehicles["93fordF350_"] = {x=193,y=196,x2=203,y2=258};
ISCarMechanicsOverlay.PartList["WindowRearLeft"].vehicles["93fordF350_"] = {x=79,y=271,x2=90,y2=317};
ISCarMechanicsOverlay.PartList["WindowRearRight"].vehicles["93fordF350_"] = {x=193,y=271,x2=203,y2=317};
--
ISCarMechanicsOverlay.PartList["Windshield"].vehicles["93fordF350_"] = {x=90,y=176,x2=193,y2=214};
ISCarMechanicsOverlay.PartList["WindshieldRear"].vehicles["93fordF350_"] = {x=92,y=324,x2=190,y2=329};
--
ISCarMechanicsOverlay.PartList["GasTank"].vehicles["93fordF350_"] = {img="gastank", x=13,y=537,x2=70,y2=575};
--
ISCarMechanicsOverlay.PartList["Muffler"].vehicles["93fordF350_"] = {x=200,y=537,x2=269,y2=575};

ISCarMechanicsOverlay.PartList["F3502BumperFront"].vehicles["93fordF350_"] = {x=98,y=25,x2=141,y2=63};
ISCarMechanicsOverlay.PartList["F3502BumperRear"].vehicles["93fordF350_"] = {x=146,y=536,x2=187,y2=574};
ISCarMechanicsOverlay.PartList["F3502WindshieldArmor"].vehicles["93fordF350_"] = {x=144,y=25,x2=187,y2=63};
ISCarMechanicsOverlay.PartList["F3502WindowFrontLeftArmor"].vehicles["93fordF350_"] = {x=13,y=278,x2=55,y2=316};
ISCarMechanicsOverlay.PartList["F3502WindowFrontRightArmor"].vehicles["93fordF350_"] = {x=228,y=278,x2=270,y2=316};
ISCarMechanicsOverlay.PartList["F3502WindowRearLeftArmor"].vehicles["93fordF350_"] = {x=13,y=320,x2=55,y2=356};
ISCarMechanicsOverlay.PartList["F3502WindowRearRightArmor"].vehicles["93fordF350_"] = {x=228,y=320,x2=270,y2=356};
ISCarMechanicsOverlay.PartList["F3502HeadacheRack"].vehicles["93fordF350_"] = {x=99,y=536,x2=140,y2=574};
--