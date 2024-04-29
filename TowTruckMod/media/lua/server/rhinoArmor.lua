--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

rhinoArmor = rhinoArmor or {};

rhinoArmor.Create = {}
rhinoArmor.InstallComplete = {}
rhinoArmor.Update = {}

-- Here is what the bullbar protects
local bullbarProtection = {"EngineDoor", "HeadlightLeft", "HeadlightRight",}

-- The chance for a bullbar to already be installed on a towtruck in the wild.
local bullbarSpawnChance = 10

function rhinoArmor:savePartCond(vehicle, part)
	if part ~= nil and vehicle ~= nil then
		local modData = part:getModData()
		modData.health = part:getCondition()
		vehicle:transmitPartModData(part)
	end
end

----------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------- Part Functions ----------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- Front Armor ( Bullbar protects the hood and headlights )
function rhinoArmor.Update.Bullbar(vehicle, part)
    local item = part:getInventoryItem()
    if not item then return; end

	for i, partId in ipairs (bullbarProtection) do
		local savePart = vehicle:getPartById(partId)
		if savePart and savePart:getInventoryItem() then
			if not savePart:getModData().health then
				savePart:getModData().health = savePart:getCondition()
                vehicle:transmitPartModData(savePart)
            end
			
			local storedPartCond = tonumber(savePart:getModData().health) or 0
			local partCond = savePart:getCondition()
			if partCond ~= storedPartCond then
				-- If the part has less HPs than it did last tick it must have been damaged.
				if partCond < storedPartCond then
					local damageDiff = storedPartCond - partCond				
					-- Not sure if this should be set directly, it may not work in MP						
					savePart:setCondition(storedPartCond)
					part:setCondition(part:getCondition() - (damageDiff / 10))
				else
					-- Part must have been repaired or replaced.
					rhinoArmor:savePartCond(vehicle, savePart)
				end
			end						
		end
	end
end

-- Front Armor ( Bullbar spawn chance )
function rhinoArmor.Create.Bullbar(vehicle, part)
	if ZombRand(100) <= bullbarSpawnChance then
		local invItem = VehicleUtils.createPartInventoryItem(part)
	end
end

-- Clear out any modData on these parts
function rhinoArmor.InstallComplete.Bullbar(vehicle, part)
	if (vehicle and string.find( vehicle:getScriptName(), "Rhino")) then
		for i, partId in ipairs (bullbarProtection) do
			local savePart = vehicle:getPartById(partId)
			rhinoArmor:savePartCond(vehicle, savePart)
		end		
    end
end
