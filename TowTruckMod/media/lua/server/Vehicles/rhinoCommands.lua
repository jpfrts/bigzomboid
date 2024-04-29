if isClient() then return end

local RhinoCommands = {}
local Commands = {}

RhinoCommands.wantNoise = getDebug() or false

local noise = function(msg)
	if RhinoCommands.wantNoise then
		print('RhinoCommands: '..msg)
	end
end

function Commands.attachTowTruck(player, args)
	local vehicleA = getVehicleById(args.vehicleA)
	local vehicleB = getVehicleById(args.vehicleB)
	if not vehicleA then
		noise('no such vehicle (A) id='..tostring(args.vehicleA))
		return
	end
	if not vehicleB then
		noise('no such vehicle (B) id='..tostring(args.vehicleB))
		return
	end
	vehicleA:addPointConstraint(player, vehicleB, args.attachmentA, args.attachmentB)
end

function Commands.detachTowTruck(player, args)
	local vehicle = getVehicleById(args.vehicle)
	if not vehicle then
		noise('no such vehicle id='..tostring(args.vehicle))
		return
	end
	vehicle:breakConstraint(true, false)
end

RhinoCommands.OnClientCommand = function(module, command, player, args)
	if module == 'towing' and Commands[command] then
		local argStr = ''
		args = args or {}
		for k,v in pairs(args) do
			argStr = argStr..' '..k..'='..tostring(v)
		end
		noise('received '..module..' '..command..' '..tostring(player)..argStr)
		Commands[command](player, args)
	end
end

Events.OnClientCommand.Add(RhinoCommands.OnClientCommand)