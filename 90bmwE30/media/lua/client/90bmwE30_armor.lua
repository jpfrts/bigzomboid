require "DAMN_Armor_Shared";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--v2.0.0

BMWE30 = BMWE30 or {};

function BMWE30.activeArmor(player, vehicle)
   
		--

			local protection = vehicle:getPartById("BMWE30BumperFront")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("EngineDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					if inventoryItem:getFullType() ~= "Base.90bmwE30BumperFront" and inventoryItem:getFullType() ~= "Base.90bmwE30BumperFrontM" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 50 and ZombRandBetween(0,4) or 0);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
					elseif inventoryItem:getFullType() == "Base.90bmwE30BumperFront" or inventoryItem:getFullType() == "Base.90bmwE30BumperFrontM" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - ZombRandBetween(1,12);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
					end
					else
						local protection = vehicle:getPartById("BMWE30BumperFront")
						local inventoryItem = protection:getInventoryItem();
						local part = vehicle:getPartById("Engine")
							if protection and inventoryItem and part and part:getModData()
							then
								if inventoryItem:getFullType() ~= "Base.90bmwE30BumperFront" and inventoryItem:getFullType() ~= "Base.90bmwE30BumperFrontM" then
									local partCond = tonumber(part:getModData().saveCond)
									if protection:getCondition() > 0 and partCond
									then
										if part:getCondition() < partCond
										then
											DAMN.Armor:setPartCondition(part, partCond);
											local cond = protection:getCondition() - ZombRandBetween(1,3);
											DAMN.Armor:setPartCondition(protection, cond);
										end
									end
								end
							end
				end

			--

			local protection = vehicle:getPartById("BMWE30BumperRear")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("TrunkDoor")
				if part and protection and inventoryItem and part:getModData()
				then 
					local partCond = tonumber(part:getModData().saveCond)
					if protection:getCondition() > 0 and partCond
					then
						if part:getCondition() < partCond
						then
							DAMN.Armor:setPartCondition(part, partCond);
							local cond = protection:getCondition() - ZombRandBetween(1,10);
							DAMN.Armor:setPartCondition(protection, cond);
						end
					end
				end

		--

			for partId, armorPartId in pairs({
				["DoorFrontLeft"] = "BMWE30FrontLeftArmor",
				["DoorFrontRight"] = "BMWE30FrontRightArmor",
				["DoorRearLeft"] = "BMWE30RearLeftArmor",
				["DoorRearRight"] = "BMWE30RearRightArmor",
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
				["WindowFrontLeft"] = "BMWE30FrontLeftArmor",
				["WindowFrontRight"] = "BMWE30FrontRightArmor",
				["WindowRearLeft"] = "BMWE30RearLeftArmor",
				["WindowRearRight"] = "BMWE30RearRightArmor",
				["WindowBackLeft"] = "BMWE30BackLeftArmor",
				["WindowBackRight"] = "BMWE30BackRightArmor",
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
				["HeadlightLeft"] = "BMWE30BumperFront",
				["HeadlightRight"] = "BMWE30BumperFront",
				["HeadlightRearLeft"] = "BMWE30BumperRear",
				["HeadlightRearRight"] = "BMWE30BumperRear",
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

			local protection = vehicle:getPartById("BMWE30WindshieldArmor")
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

		for i, freezeState in ipairs ({"BMWE30SpareTire", "BMWE30Spoiler", "BMWE30Roofrack"})
				do
					if vehicle:getPartById(freezeState) then
						local part = vehicle:getPartById(freezeState)
						local freezeCond = tonumber(part:getModData().saveCond)
					    	if freezeCond and part:getCondition() < freezeCond then
					    		DAMN.Armor:setPartCondition(part, freezeCond)
							end
					end
			end

		--

			local protection = vehicle:getPartById("BMWE30WindshieldRearArmor")
			local part = vehicle:getPartById("WindshieldRear")
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

end

DAMN.Armor:add("Base.90bmwE30cabrio", BMWE30.activeArmor);
DAMN.Armor:add("Base.90bmwE30m3", BMWE30.activeArmor);
DAMN.Armor:add("Base.90bmwE30sedan2", BMWE30.activeArmor);
DAMN.Armor:add("Base.90bmwE30sedan4", BMWE30.activeArmor);
DAMN.Armor:add("Base.90bmwE30touring", BMWE30.activeArmor);