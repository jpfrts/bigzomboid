--***********************************************************
--**     KI5 did this / bikinihorst is not to blame        **
--***********************************************************

DAMN = DAMN or {};
VAN63 = VAN63 or {};

function VAN63.pvFixCheck()
	local vanillaEnter = ISEnterVehicle["start"];

	ISEnterVehicle["start"] = function(self)

		local vehicle = self.vehicle
			if vehicle and (
				string.find( vehicle:getScriptName(), "63Type2Van" )) then

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

function VAN63.pvFixSwitch(player)
	local player = getPlayer()
	local vehicle = player:getVehicle()
		if vehicle and (
			string.find( vehicle:getScriptName(), "63Type2Van" )) then

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

function VAN63.pvFixClear(player)

		player:SetVariable("damnVehicle", "False")
end

Events.OnGameStart.Add(VAN63.pvFixCheck);
Events.OnGameStart.Add(VAN63.pvFixSwitch);
Events.OnExitVehicle.Add(VAN63.pvFixClear);
Events.OnSwitchVehicleSeat.Add(VAN63.pvFixSwitch);