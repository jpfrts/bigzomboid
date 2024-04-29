require "BuildingObjects/ISBuildingObject"

ISTrafficLine = ISBuildingObject:derive("ISTrafficLine")

local function predictUsesInt(item)
	return item:getDrainableUsesInt() > 0
end

function ISTrafficLine:create(x, y, z, north, sprite)
	local cell = getWorld():getCell()
	self.sq = cell:getGridSquare(x, y, z)

	local floor = self.sq:getFloor()
	if floor and self:isValid(self.sq) then
		self.javaObject = IsoObject.new(cell, self.sq, getSprite(sprite))
		if getSandboxOptions():getOptionByName("TrafficLine.NeedPaint"):getValue() and not self.character:isBuildCheat() then
			ISTimedActionQueue.add(ISDrawOrEraseLineAction:new(self.character, true, self.sq, self.javaObject, self.paint, nil))
		else
			ISTimedActionQueue.add(ISDrawOrEraseLineAction:new(self.character, true, self.sq, self.javaObject))
		end
	end
end

function ISTrafficLine:walkTo(x, y, z)
	if self.character:isBuildCheat() then return true end

	local square = getCell():getGridSquare(x, y, z)

	return luautils.walkAdj(self.character, square, true)
end

function ISTrafficLine:isValid(square)
	if not square or not square:getFloor() then return false end
	if square:getZ() > 0 then return false end
	--if not square:isFreeOrMidair(true) then return end

	if self.character:isBuildCheat() then return true end

	local brush = self.character:getInventory():contains("Base.Paintbrush")

	if brush then
		if getSandboxOptions():getOptionByName("TrafficLine.NeedPaint"):getValue() then
			self.paint = nil
			local paint = self.character:getInventory():getFirstTypeEval(self.paintName, predictUsesInt)
			if paint then
				self.paint = paint
				return true
			else
				return false
			end
		else
			return true
		end
	end

	return false
end

function ISTrafficLine:render(x, y, z, square)
	ISBuildingObject.render(self, x, y, z, square)
end

function ISTrafficLine:getHealth()
	return 200
end

function ISTrafficLine:new(sprite, northSprite, player, paint)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o:init()

	o:setSprite(sprite)
	o:setNorthSprite(northSprite)
	
	o.name = "Traffic Line"
	--o.buildLow = true
	o.floor = true
	o.dismantable = false
	--o.canBeAlwaysPlaced = true
	o.canBarricade = false
	o.blockAllTheSquare = false
	o.canPassThrough = true
	o.maxTime = 10
	o.isContainer = false
	o.isThumpable = false
	o.noNeedHammer = true

	o.character = player
	o.player = player:getPlayerNum()

	o.paintName = paint

	return o;
end

function ISTrafficLine:getFloorIndex()
	for i = self.sq:getObjects():size(),1,-1 do
		local object = self.sq:getObjects():get(i-1)
		local props = object:getProperties()
		if props and props:Is(IsoFlagType.solidfloor) then
			return i
		end
	end
	return -1
end