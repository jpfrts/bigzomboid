local function hasValue (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

local listHiddenRecipes = {
-- Attach to Spear
"Attach Scalpel to Spear",
"Attach Scissors to Spear",
"Attach Letter Opener to Spear",
"Attach Spoon to Spear",
"Attach Fork to Spear",
"Attach Butter Knife to Spear",

-- Reclaim form Spear
"Reclaim Scalpel from Spear",
"Reclaim Scissors from Spear",
"Reclaim Letter Opener from Spear",
"Reclaim Spoon from Spear",
"Reclaim Fork from Spear",
"Reclaim Butter Knife from Spear",

}

local listHiddenRecipesVFE = {
"Attach M9 Bayonet to Spear",
"Reclaim M9 Bayonet from Spear"
}

function hiderecipes()
    local recipes = getAllRecipes()
    if recipes then
        for i = 0, recipes:size() - 1 do
            local recipe = recipes:get(i)
            local recipeName = recipe:getOriginalname()
            if hasValue(listHiddenRecipes, recipeName) then
				recipe:setIsHidden(true)
				recipe:setNeedToBeLearn(true)
--				recipe:setCanPerform("nope")				
--				recipe:setCategory("nodisplay")
            end    
			
			if getActivatedMods():contains("VFExpansion1") == false then
				if hasValue(listHiddenRecipesVFE, recipeName) then
					recipe:setIsHidden(true)
					recipe:setNeedToBeLearn(true)
--					recipe:setCanPerform("nope")				
--					recipe:setCategory("nodisplay")
				end  	
			end			
        end
    end
end 

Events.OnGameStart.Add(hiderecipes);
