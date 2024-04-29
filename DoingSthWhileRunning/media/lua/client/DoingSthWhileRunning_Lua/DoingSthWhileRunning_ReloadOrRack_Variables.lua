--Made by SportXAI
local function SetVariable(player)
	local actions = player:getCharacterActions()
	for index = 0, actions:size()-1 do
		local action = actions:get(index)
		local actionName = action:getMetaType()

		if not player:hasFootInjury() then
			--Load bullets in magazine
			if actionName == "ISLoadBulletsInMagazine" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)
		
			--Unload bullets from firearm
			elseif actionName == "ISUnloadBulletsFromFirearm" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)

			--Unload bullets from magazine
			elseif actionName == "ISUnloadBulletsFromMagazine" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)

			--Is rack firearm
			elseif actionName == "ISRackFirearm" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)
				local weapon = player:getPrimaryHandItem()
				if weapon ~= nil then
					if weapon:isRanged() then
						if not weapon:haveChamber() then
							weapon:setHaveChamber(true)
						end
					end
				end

			--Insert magazine
			elseif actionName == "ISInsertMagazine" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)

			--Reload weapon action
			elseif actionName == "ISReloadWeaponAction" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)

			--Eject magazine
			elseif actionName == "ISEjectMagazine" then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",true)
			end
		end

	end

	--Settings for player
	local key = getCore():getKey("Run")
	if not getCore():isToggleToRun() then
		if player:getVariableBoolean("DoingSthWhileRunning_ReloadOrRack_Permit") then
			player:setAllowRun(false)
			if isKeyDown(key) then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Enable",true)
			else
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Enable",false)
			end
		else
			player:setAllowRun(true)
		end
	end

	if not player:hasTimedActions() then
		player:setVariable("ExtraReloadMovementSet",false)  --For not toggle to run
		if player:getVariableBoolean("DoingSthWhileRunning_ReloadOrRack_Permit") then
			if not getCore():isToggleToRun() then
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Enable",false)
				player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",false)
			else  --Toggle to run
				if player:getVariableBoolean("DoingSthWhileRunning_ReloadOrRack_Enable") then
					player:setRunning(true)
					player:setForceRun(true)
					player:setVariable("DoingSthWhileRunning_ReloadOrRack_Enable",false)
					player:setVariable("DoingSthWhileRunning_ReloadOrRack_Permit",false)
				end
			end
		end
	end
end

Events.OnPlayerUpdate.Add(SetVariable)