local function RhinoMechanicsOverlay()

	ISCarMechanicsOverlay.CarList["Base.Chevalier_Rhino_TowTruck"] = {imgPrefix = "rhino_", x=10,y=0};
	
	-- Parts
	ISCarMechanicsOverlay.PartList["TireFrontLeft"].vehicles["rhino_"] = {x=78,y=182,x2=85,y2=238};
	ISCarMechanicsOverlay.PartList["TireFrontRight"].vehicles["rhino_"] = {x=208,y=182,x2=215,y2=238};
	ISCarMechanicsOverlay.PartList["TireRearLeft"].vehicles["rhino_"] = {x=78,y=366,x2=85,y2=422};
	ISCarMechanicsOverlay.PartList["TireRearRight"].vehicles["rhino_"] = {x=208,y=366,x2=215,y2=422};
	
	ISCarMechanicsOverlay.PartList["DoorFrontLeft"].vehicles["rhino_"] = {x=83,y=244,x2=91,y2=300};
	ISCarMechanicsOverlay.PartList["DoorFrontRight"].vehicles["rhino_"] = {x=202,y=244,x2=209,y2=300};
	
	ISCarMechanicsOverlay.PartList["WindowFrontLeft"].vehicles["rhino_"] = {x=92,y=256,x2=101,y2=298};
	ISCarMechanicsOverlay.PartList["WindowFrontRight"].vehicles["rhino_"] = {x=190,y=256,x2=199,y2=298};
	
	ISCarMechanicsOverlay.PartList["EngineDoor"].vehicles["rhino_"] = {x=92,y=146,x2=197,y2=221};
	
	ISCarMechanicsOverlay.PartList["Windshield"].vehicles["rhino_"] = {x=99,y=226,x2=187,y2=245};

end


Events.OnInitWorld.Add(RhinoMechanicsOverlay);