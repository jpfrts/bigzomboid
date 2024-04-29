--***********************************************************
--**     KI5 did this / bikinihorst is not to blame        **
--***********************************************************

DAMN = DAMN or {};
F3502 = F3502 or {};

function F3502.pvFixCheck()
	local vanillaEnter = ISEnterVehicle["start"];

	ISEnterVehicle["start"] = function(self)

		local vehicle = self.vehicle
			local vehicle = self.vehicle
			if 	vehicle and (
				string.find( vehicle:getScriptName(), "93fordF350" )) then

				self.character:SetVariable("damnVehicle", "True")
			end
		
	vanillaEnter(self);
		
		local seat = self.seat
    		if not seat then return end
				if seat == 0 then		
					self.character:SetVariable("damnPosition", "driver")
				else		
					self.character:SetVariable("damnPosition", "passenger")
			end
	end
end

function F3502.pvFixSwitch(player)
	local player = getPlayer()
	local vehicle = player:getVehicle()
		if 	vehicle and (
			string.find( vehicle:getScriptName(), "93fordF350" )) then

			player:SetVariable("damnVehicle", "True")

			local seat = vehicle:getSeat(player)
	    		if not seat then return end
					if seat == 0 then		
						player:SetVariable("damnPosition", "driver")
					else		
						player:SetVariable("damnPosition", "passenger")
				end

	end
end

function F3502.pvFixClear(player)

		player:SetVariable("damnVehicle", "False")
end

Events.OnGameStart.Add(F3502.pvFixCheck);
Events.OnGameStart.Add(F3502.pvFixSwitch);
Events.OnExitVehicle.Add(F3502.pvFixClear);
Events.OnSwitchVehicleSeat.Add(F3502.pvFixSwitch);