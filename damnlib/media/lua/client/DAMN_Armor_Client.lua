require "DAMN_Armor_Shared";

DAMN = DAMN or {};
DAMN.Armor = DAMN.Armor or {};

DAMN["tireRFSCondition"] = 25;
DAMN["tireCTISPressure"] = 35;

-- helpers

function DAMN.Armor:hasMagicTires()
    return DAMN["vehicleHasRFS"] or DAMN["vehicleHasCTIS"];
end

function DAMN.Armor:updateMagicTires(vehicle)
    for i, tirePart in ipairs ({
        "TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"
    })
    do
        local part = vehicle:getPartById(tirePart);

        if part and DAMN["vehicleHasRFS"]
        then
            if part:getCondition() < DAMN["tireRFSCondition"]
            then
                DAMN.Armor:setPartCondition(part, DAMN["tireRFSCondition"]);
            end

            if DAMN["vehicleHasCTIS"] and part:getContainerContentAmount() < DAMN["tireCTISPressure"]
            then
                DAMN.Parts:setContainerAmount(part, DAMN["tireCTISPressure"]);
            end
        end
    end
end

function DAMN.Armor:runArmorCode(player, vehicle)
    if DAMN["armorEventDebug"] and not DAMN["onPlayerUpdateReported"]
    then
        DAMN:log("OnPlayerUpdate: armor code found, executing");

        DAMN["onPlayerUpdateReported"] = true;
    end

    DAMN.Armor["byVehicleScript"][DAMN["currentVehicleScript"]](player, vehicle);
end