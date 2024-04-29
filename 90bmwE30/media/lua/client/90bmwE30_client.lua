--***********************************************************
--**     KI5 did this / bikinihorst is not to blame        **
--***********************************************************

DAMN = DAMN or {};
BMWE30 = BMWE30 or {};

function BMWE30.pvFixCheck()
	local vanillaEnter = ISEnterVehicle["start"];

	ISEnterVehicle["start"] = function(self)

		local vehicle = self.vehicle
			if vehicle and (
				string.find( vehicle:getScriptName(), "90bmwE30" )) then

				self.character:SetVariable("damnVehicle", "True")

			end
		
	vanillaEnter(self);
		
		local seat = self.seat
    		if not seat then return end
				if seat == 0 then		
					self.character:SetVariable("damnPosition", "driver_low")
				else		
					self.character:SetVariable("damnPosition", "passenger_low")
			end

		
	end
end

function BMWE30.pvFixSwitch(player)
	local player = getPlayer()
	local vehicle = player:getVehicle()
		if vehicle and (
			string.find( vehicle:getScriptName(), "90bmwE30" )) then

			player:SetVariable("damnVehicle", "True")

			local seat = vehicle:getSeat(player)
	    		if not seat then return end
					if seat == 0 then		
						player:SetVariable("damnPosition", "driver_low")
					else		
						player:SetVariable("damnPosition", "passenger_low")
				end

	end
end

function BMWE30.pvFixFallback(player)
	local player = getPlayer()
	local vehicle = player:getVehicle()
		if vehicle and (
			string.find( vehicle:getScriptName(), "90bmwE30" )) then

			player:SetVariable("damnVehicle", "True")

			local seat = vehicle:getSeat(player)
	    		if not seat then return end
					if seat == 0 then		
						player:SetVariable("damnPosition", "driver_low")
					else		
						player:SetVariable("damnPosition", "passenger_low")
				end

	end
end

function BMWE30.pvFixClear(player)

		player:SetVariable("damnVehicle", "False")
end

Events.OnPlayerUpdate.Add(BMWE30.pvFixFallback);
Events.OnGameStart.Add(BMWE30.pvFixCheck);
Events.OnGameStart.Add(BMWE30.pvFixSwitch);
Events.OnExitVehicle.Add(BMWE30.pvFixClear);
Events.OnSwitchVehicleSeat.Add(BMWE30.pvFixSwitch);