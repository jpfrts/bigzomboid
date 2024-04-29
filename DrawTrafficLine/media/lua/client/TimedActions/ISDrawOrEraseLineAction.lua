require "TimedActions/ISBaseTimedAction"

ISDrawOrEraseLineAction = ISBaseTimedAction:derive("ISDrawOrEraseLineAction")

function ISDrawOrEraseLineAction:isValid()
	if self.character:isBuildCheat() then return true end
	local check = false
	local inv = self.character:getInventory()
	if (self.actionType == true and inv:contains("Base.Paintbrush"))
	or (self.actionType == false and (inv:contains("Base.Mop") or inv:contains("Base.Broom"))) then
		check = true
	end
	return check
end

function ISDrawOrEraseLineAction:waitToStart()
	self.character:faceThisObject(self.floor)
	return self.character:shouldBeTurning()
end

function ISDrawOrEraseLineAction:update()
	--self.character:faceThisObject(self.floor)
end

function ISDrawOrEraseLineAction:start()
	if self.actionType == true then
		self:setActionAnim(CharacterActionAnims.Paint)
		--self:setActionAnim("BuildLow")
		self:setOverrideHandModels("PaintBrush", nil)
		self.sound = self.character:playSound("Painting")
	elseif self.actionType == false then
		self:setActionAnim("Rake")
		self:setOverrideHandModels("Broom", nil)
		self.sound = self.character:playSound("CleanBloodScrub")
	end
end

function ISDrawOrEraseLineAction:stop()
	if self.sound then self.character:stopOrTriggerSound(self.sound) end
    ISBaseTimedAction.stop(self)
end

function ISDrawOrEraseLineAction:perform()
	if self.sound then self.character:stopOrTriggerSound(self.sound) end
	if self.actionType == true then
		self.sq:AddSpecialObject(self.object, self:getFloorIndex())
		self.object:transmitCompleteItemToServer()
		if self.paint then
			self.paint:Use()
		end
	elseif self.actionType == false then
		self.sq:transmitRemoveItemFromSquare(self.object)
		self.sq:RemoveTileObject(self.object)
        self.sq:RecalcProperties()
		if self.petrol then
			self.petrol:Use()
		end
	end
	
	ISBaseTimedAction.perform(self)
end

function ISDrawOrEraseLineAction:getFloorIndex()
	for i = self.sq:getObjects():size(),1,-1 do
		local object = self.sq:getObjects():get(i-1)
		local props = object:getProperties()
		if props and props:Is(IsoFlagType.solidfloor) then
			return i
		end
	end
	return -1
end

function ISDrawOrEraseLineAction:new(character, isDraw, square, obj, paint, petrol)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.character = character
	o.stopOnWalk = true
	o.stopOnRun = true
	o.maxTime = 100
	if character:isBuildCheat() or character:isTimedActionInstant() then
		o.maxTime = 1
    end
	o.actionType = isDraw
	o.sq = square
	o.floor = square:getFloor()
	o.object = obj

	o.paint = paint
	o.petrol = petrol
	return o
end
