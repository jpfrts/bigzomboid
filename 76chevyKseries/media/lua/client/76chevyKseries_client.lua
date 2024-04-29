--***********************************************************
--**     KI5 did this / bikinihorst is not to blame        **
--***********************************************************

DAMN = DAMN or {};
CH76 = CH76 or {};

function CH76.pvFixCheck()
	local vanillaEnter = ISEnterVehicle["start"];

	ISEnterVehicle["start"] = function(self)

		local vehicle = self.vehicle
			local vehicle = self.vehicle
			if 	vehicle and (
				string.find( vehicle:getScriptName(), "76chevyK" )) then

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

function CH76.pvFixSwitch(player)
	local player = getPlayer()
	local vehicle = player:getVehicle()
		if 	vehicle and (
			string.find( vehicle:getScriptName(), "76chevyK" )) then

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

function CH76.pvFixClear(player)

		player:SetVariable("damnVehicle", "False")
end

Events.OnGameStart.Add(CH76.pvFixCheck);
Events.OnGameStart.Add(CH76.pvFixSwitch);
Events.OnExitVehicle.Add(CH76.pvFixClear);
Events.OnSwitchVehicleSeat.Add(CH76.pvFixSwitch);