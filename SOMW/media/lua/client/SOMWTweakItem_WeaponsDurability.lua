local function SOMWCondLowerChanceMultiplier()

	local SOMWSbvars = SandboxVars.SOMW;
	local CLCMultiplier = 1

	if SOMWSbvars.CondLowerChanceMultiplier ~= 1 then		

		if SOMWSbvars.CondLowerChanceMultiplier == 2 then CLCMultiplier = 2
		elseif SOMWSbvars.CondLowerChanceMultiplier == 3 then CLCMultiplier = 3
		elseif SOMWSbvars.CondLowerChanceMultiplier == 4 then CLCMultiplier = 5
		elseif SOMWSbvars.CondLowerChanceMultiplier == 5 then CLCMultiplier = 10
		end

		local items = getAllItems();

		for i = 0, items:size() - 1, 1 do
			local item = items:get(i);
			local CondLowerChance = item:getConditionLowerChance()            
			if item:getTypeString() == "Weapon" and not item:isRanged() then  -- and CondLowerChance ~= nil
				SOMWAdjuster(item:getFullName(),"ConditionLowerChanceOneIn", CondLowerChance * CLCMultiplier);
			end
		end
	end
	
end

Events.OnInitGlobalModData.Add(SOMWCondLowerChanceMultiplier)
Events.OnGameBoot.Add(SOMWCondLowerChanceMultiplier)


