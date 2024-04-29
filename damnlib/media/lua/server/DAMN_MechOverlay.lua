DAMN = DAMN or {};
DAMN.MechOverlay = DAMN.MechOverlay or {};

--[[ EXAMPLE:
    DAMN.MechOverlay:addParts({
        ["Base.89trooper"] = "89trooper_",
    }, {
        ISZ89DoorRearLeftArmor = {img="door_rear_left_armor", x=13,y=310,x2=55,y2=346},
        ISZ89DoorRearRightArmor = {img="door_rear_right_armor", x=228,y=310,x2=270,y2=346},
    }, 10, 0);
]]--

function DAMN.MechOverlay:addParts(scriptAndImgPrefix, partLocations, mainX, mainY)
    for fullScript, imgPrefix in pairs(scriptAndImgPrefix)
    do
        ISCarMechanicsOverlay.CarList[fullScript] = ISCarMechanicsOverlay.CarList[fullScript] or {}

        ISCarMechanicsOverlay.CarList[fullScript]["imgPrefix"] = imgPrefix;
        ISCarMechanicsOverlay.CarList[fullScript]["x"] = ISCarMechanicsOverlay.CarList[fullScript]["x"]
            and ISCarMechanicsOverlay.CarList[fullScript]["x"]
            or (mainX or 0);
        ISCarMechanicsOverlay.CarList[fullScript]["y"] = ISCarMechanicsOverlay.CarList[fullScript]["y"]
            and ISCarMechanicsOverlay.CarList[fullScript]["y"]
            or (mainY or 0);

        for partName, config in pairs(partLocations)
        do
            ISCarMechanicsOverlay.PartList[partName] = ISCarMechanicsOverlay.PartList[partName] or {};
            ISCarMechanicsOverlay.PartList[partName]["vehicles"] = ISCarMechanicsOverlay.PartList[partName]["vehicles"] or {};
            ISCarMechanicsOverlay.PartList[partName]["vehicles"][imgPrefix] = ISCarMechanicsOverlay.PartList[partName]["vehicles"][imgPrefix] or {};

            for k, v in pairs(config)
            do
                if k == "img" and not ISCarMechanicsOverlay.PartList[partName][k]
                then
                    ISCarMechanicsOverlay.PartList[partName][k] = v;
                end

                ISCarMechanicsOverlay.PartList[partName]["vehicles"][imgPrefix][k] = v;
            end
        end
    end
end
