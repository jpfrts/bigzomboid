local recipes = getAllRecipes()

local function SOMWHideDisabledModRecipes()

	if recipes then
		for i = 0, recipes:size() - 1 do
		local recipe = recipes:get(i)

		-- Bushcraft Gear - Tools
		if getActivatedMods():contains("BCGTools") == false then
			if recipe:getModule():getName() == "BCGTools" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")			
			end
		end	

		-- ScrapWeapons
		if getActivatedMods():contains("ScrapWeapons(new version)") == false and getActivatedMods():contains("ScrapWeapons(CEC)") == false then
			if recipe:getModule():getName() == "SWeapons" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")						
			end
		end
		
		-- Tactical Weapons [41.65+]
		if getActivatedMods():contains("Tactical Weapons") == false then
			if recipe:getModule():getName() == "TWeapons" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
	--			recipe:setCategory("nodisplay")	
			end
		end		
		-- Glass Shiv
		if getActivatedMods():contains("SilentsGlassShiv") == false then
			if recipe:getModule():getName() == "SilentsGlassShiv" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")	
			end
		end		

		-- More Pole Weapons
		if getActivatedMods():contains("MorePoleWeapons") == false then
			if recipe:getModule():getName() == "MorePoleWeapons" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")	
			end
		end	

		-- Snake mod pack AliceSPack
		if getActivatedMods():contains("AliceSPack") == false then
			if recipe:getModule():getName() == "AliceBP" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")	
			end
		end	

		-- SapphCooking
		if getActivatedMods():contains("sapphcooking") == false then
			if recipe:getModule():getName() == "SapphCooking" then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")			
			end
		end	

		end
	end	
end

Events.OnGameStart.Add(SOMWHideDisabledModRecipes);
--Events.OnGameBoot.Add(SOMWHideDisabledModRecipes);