require "DAMN_Armor_Shared";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--v2.0.0

CH76 = CH76 or {};

function CH76.activeArmor(player, vehicle)
   
		--

			local part = vehicle:getPartById("TruckBed")
				if part and part:getCondition() < 100 then
					DAMN.Armor:setPartCondition(part, 100);
				end

		--

			local protection = vehicle:getPartById("CH76BumperFront")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("EngineDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					if inventoryItem:getFullType() ~= "Base.76chevyKseriesBumperFront0" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 40 and ZombRandBetween(0,5) or 0);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
				elseif inventoryItem:getFullType() == "Base.76chevyKseriesBumperFront0" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - ZombRandBetween(0,12);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
					end
				else
					local protection = vehicle:getPartById("CH76BumperFront")
					local inventoryItem = protection:getInventoryItem();
					local part = vehicle:getPartById("Engine")
						if protection and inventoryItem and part and part:getModData()
						then
							if inventoryItem:getFullType() ~= "Base.76chevyKseriesBumperFront0" then
								local partCond = tonumber(part:getModData().saveCond)
								if protection:getCondition() > 0 and partCond
								then
									if part:getCondition() < partCond
									then
										DAMN.Armor:setPartCondition(part, partCond);
										local cond = protection:getCondition() - ZombRandBetween(0,3);
										DAMN.Armor:setPartCondition(protection, cond);
									end
								end
							end
						end
				end

		--

			local protection = vehicle:getPartById("CH76BumperRear")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("TrunkDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					local partCond = tonumber(part:getModData().saveCond)
					if protection:getCondition() > 0 and partCond
					then
						if part:getCondition() < partCond
						then
							DAMN.Armor:setPartCondition(part, partCond);
							local cond = protection:getCondition() - ZombRandBetween(0,10);
							DAMN.Armor:setPartCondition(protection, cond);
						end
					end
				end

		--

		local protection = vehicle:getPartById("CH76BumperRear")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("CH76Trunk")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					local partCond = tonumber(part:getModData().saveCond)
					if protection:getCondition() > 0 and partCond
					then
						if part:getCondition() < partCond
						then
							DAMN.Armor:setPartCondition(part, partCond);
							local cond = protection:getCondition() - ZombRandBetween(0,7);
							DAMN.Armor:setPartCondition(protection, cond);
						end
					end
				end

		--

		for partId, armorPartId in pairs({
				["DoorFrontLeft"] = "CH76WindowFrontLeftArmor",
				["DoorFrontRight"] = "CH76WindowFrontRightArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - ZombRandBetween(0,5)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		for partId, armorPartId in pairs({
				["WindowFrontLeft"] = "CH76WindowFrontLeftArmor",
				["WindowFrontRight"] = "CH76WindowFrontRightArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
					end
				end
			end

		--

		for partId, armorPartId in pairs({
				["HeadlightLeft"] = "CH76BumperFront",
				["HeadlightRight"] = "CH76BumperFront",
				["HeadlightRearLeft"] = "CH76BumperRear",
				["HeadlightRearRight"] = "CH76BumperRear",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
					end
				end
			end

		--

		local protection = vehicle:getPartById("CH76WindshieldArmor")
			local part = vehicle:getPartById("Windshield")
			if protection and protection:getInventoryItem() and part and part:getModData()
			then
				local partCond = tonumber(part:getModData().saveCond)
				if protection:getCondition() > 0 and partCond
				then
					if part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 65 and ZombRandBetween(0,3) or 0)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		local protection = vehicle:getPartById("CH76TruckBedExtras")
			local protectionCap = vehicle:getPartById("CH76TruckBedCover")
			local part = vehicle:getPartById("WindshieldRear")
			if (protection and protection:getInventoryItem() and part and part:getModData()) or (protectionCap and protectionCap:getInventoryItem() and part and part:getModData())
			then
				local partCond = tonumber(part:getModData().saveCond)
				if protection:getCondition() > 0 and partCond
				then
					if part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 65 and ZombRandBetween(0,4) or 0)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		for i, freezeState in ipairs ({"CH76SpareTireBed", "CH76SpareTireRoof", "CH76Roofrack"})
				do
					if vehicle:getPartById(freezeState) then
						local part = vehicle:getPartById(freezeState)
						local freezeCond = tonumber(part:getModData().saveCond)
					    	if freezeCond and part:getCondition() < freezeCond then
					    		DAMN.Armor:setPartCondition(part, freezeCond);
							end
					end
			end

end

DAMN.Armor:add("Base.76chevyK10", CH76.activeArmor);
DAMN.Armor:add("Base.76chevyK20", CH76.activeArmor);
DAMN.Armor:add("Base.76chevyK20BigRed", CH76.activeArmor);