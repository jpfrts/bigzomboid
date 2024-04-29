require "DAMN_Armor_Shared";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--v2.0.0

VAN63 = VAN63 or {};

function VAN63.activeArmor(player, vehicle)

		-- 

			for i, tirePart in ipairs ({"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"})
				do
					if vehicle:getPartById(tirePart) then
						local part = vehicle:getPartById(tirePart)
						local inventoryItem = part:getInventoryItem();
							if inventoryItem and inventoryItem:getFullType() == "Base.63Type2VanTireOffroad" then
								local tireCond = 20;
							   	if part:getCondition() < tireCond then
						    		DAMN.Armor:setPartCondition(part, tireCond);
								end
							end
					end
			end
   
		--

			local protection = vehicle:getPartById("VAN63FrontBumper")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("EngineDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					if inventoryItem:getFullType() ~= "Base.63Type2VanBumperFront0" and inventoryItem:getFullType() ~= "Base.63Type2VanBumperFront1" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 30 and ZombRandBetween(0,4) or 0);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
					elseif inventoryItem:getFullType() == "Base.63Type2VanBumperFront0" or inventoryItem:getFullType() == "Base.63Type2VanBumperFront1" then
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
						local protection = vehicle:getPartById("VAN63FrontBumper")
						local inventoryItem = protection:getInventoryItem();
						local part = vehicle:getPartById("Engine")
							if protection and inventoryItem and part and part:getModData()
							then
								if inventoryItem:getFullType() ~= "Base.63Type2VanBumperFront0" and inventoryItem:getFullType() ~= "Base.63Type2VanBumperFront1" then
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

			local protection = vehicle:getPartById("VAN63RearBumper")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("TrunkDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					if inventoryItem:getFullType() == "Base.63Type2VanCageRear1" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 45 and ZombRandBetween(0,3) or 0);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
					end
				end

		--

			for partId, armorPartId in pairs({
				["DoorFrontLeft"] = "VAN63FrontLeftArmor",
				["DoorFrontRight"] = "VAN63FrontRightArmor",
				["DoorRearRight"] = "VAN63RearRightArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - ZombRandBetween(1,7)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

			for partId, armorPartId in pairs({
				["WindowFrontLeft"] = "VAN63FrontLeftArmor",
				["WindowFrontRight"] = "VAN63FrontRightArmor",
				["WindowRearLeft"] = "VAN63RearLeftArmor",
				["WindowRearRight"] = "VAN63RearRightArmor",
				["WindowBackLeft"] = "VAN63BackLeftArmor",
				["WindowBackRight"] = "VAN63BackRightArmor",
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
				["HeadlightLeft"] = "VAN63HeadlightGuardLeft",
				["HeadlightRight"] = "VAN63HeadlightGuardLeft",
				["HeadlightRearLeft"] = "VAN63RearBumper",
				["HeadlightRearRight"] = "VAN63RearBumper",
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
				["Windshield"] = "VAN63WindshieldArmor",
				["WindshieldRear"] = "VAN63WindshieldRearArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - ZombRand(4);
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		for i, freezeState in ipairs ({"VAN63Roofrack", "VAN63WeldedRoofrack", "VAN63SpareCab", "VAN63SpareRoof", "VAN63ApocSpareCage", "VAN63ApocSpareRoof", "VAN63ToolBoxLeft",  "VAN63ToolBoxRight"})
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

			for i, nodisplay in ipairs ({"TruckBed"})
				do
					if vehicle:getPartById(nodisplay) then
						local part = vehicle:getPartById(nodisplay)
						local nodisplay = 100;
					    	if part:getCondition() < nodisplay then
					    		DAMN.Armor:setPartCondition(part, nodisplay);
							end
					end
			end

end

DAMN.Armor:add("Base.63Type2Van", VAN63.activeArmor);
DAMN.Armor:add("Base.63Type2VanApocalypse", VAN63.activeArmor);
DAMN.Armor:add("Base.63Type2VanHippie", VAN63.activeArmor);
DAMN.Armor:add("Base.63Type2VanMilitary", VAN63.activeArmor);