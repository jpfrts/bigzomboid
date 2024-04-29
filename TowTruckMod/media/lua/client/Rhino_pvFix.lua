--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--b0.7.5

RhinoPVfix = RhinoPVfix or {};

RhinoPVfix.wantNoise = getDebug() or false

local noise = function(msg)
	if RhinoPVfix.wantNoise then
		print('RhinoPVfix: '..msg)
	end
end

function RhinoPVfix.pvFixCheck()
	local vanillaEnter = ISEnterVehicle["start"];
	ISEnterVehicle["start"] = function(self)
	local vehicle = self.vehicle
	
	if 	vehicle and (string.find( vehicle:getScriptName(), "Chevalier_Rhino_TowTruck" )) then
		self.character:SetVariable("Rhino", "True")
	end
		
	vanillaEnter(self);
		
	local seat = self.seat
    	if not seat then return end
			if seat == 0 then		
				self.character:SetVariable("BobIsDriver", "True")
			else		
				self.character:SetVariable("BobIsDriver", "False")
		end
	end
end

function RhinoPVfix.pvFixSwitch(player)
	local player = getPlayer()
	local vehicle = player:getVehicle()
	
	if 	vehicle and (string.find( vehicle:getScriptName(), "Chevalier_Rhino_TowTruck" )) then
		player:SetVariable("Rhino", "True")
		local seat = vehicle:getSeat(player)
	    if not seat then return end
			if seat == 0 then		
				player:SetVariable("BobIsDriver", "True")
			else		
				player:SetVariable("BobIsDriver", "False")
		end
	end
end

function RhinoPVfix.pvFixClear(player)
	player:SetVariable("Rhino", "False")
end

Events.OnGameStart.Add(RhinoPVfix.pvFixCheck);
Events.OnGameStart.Add(RhinoPVfix.pvFixSwitch);
Events.OnExitVehicle.Add(RhinoPVfix.pvFixClear);
Events.OnSwitchVehicleSeat.Add(RhinoPVfix.pvFixSwitch);