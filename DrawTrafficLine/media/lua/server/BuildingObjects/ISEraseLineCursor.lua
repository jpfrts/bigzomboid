require "BuildingObjects/ISBuildingObject"

ISEraseLineCursor = ISBuildingObject:derive("ISEraseLineCursor")

local function predictUsesInt(item)
	return item:getDrainableUsesInt() > 0
end

function ISEraseLineCursor:create(x, y, z, north, sprite)
    local square = getWorld():getCell():getGridSquare(x, y, z)
	if square and self:isValid(square) and self.target[self.currChoose] then
		--square:RemoveTileObject(self.target)
		if getSandboxOptions():getOptionByName("TrafficLine.NeedPetrol"):getValue() and not self.character:isBuildCheat() then
			ISTimedActionQueue.add(ISDrawOrEraseLineAction:new(self.character, false, square, self.target[self.currChoose], nil, self.petrol))
		else
			ISTimedActionQueue.add(ISDrawOrEraseLineAction:new(self.character, false, square, self.target[self.currChoose]))
		end
    end
end

function ISEraseLineCursor:walkTo(x, y, z)
	if self.character:isBuildCheat() then return true end

	--[[if getSandboxOptions():getOptionByName("TrafficLine.NeedPetrol"):getValue() then
		local petrol = self.character:getInventory():getFirstTagEval("Petrol", predictUsedDelta)
		if not petrol then return true end
	end]]

	local square = getCell():getGridSquare(x, y, z)

	return luautils.walkAdj(self.character, square, true)
end

function ISEraseLineCursor:rotateKey(key)
	if key == getCore():getKey("Rotate building") then
		if self.target[self.currChoose + 1] then
			self.currChoose = self.currChoose + 1
		else
			self.currChoose = 1
		end
	end
end

function ISEraseLineCursor:isValid(square)
	local objs = square:getObjects()
	if not objs then return false end

	self.target = {}
	for i = 1, objs:size() do
		local obj = objs:get(i - 1)
		if obj:getSprite() and obj:getSprite():getName() and string.find(obj:getSprite():getName(), "traffic_lines_custom") then
			table.insert(self.target, obj)
		end
	end

	if self.currChoose > 1 then
		for i = self.currChoose, 1, -1 do
			if self.target[i] then
				self.currChoose = i
				break
			end
		end
	elseif not self.target[self.currChoose] then
		return false
	end

	if self.character:isBuildCheat() then return true end

	local inv = self.character:getInventory()
	local mop = inv:contains("Base.Mop") or inv:contains("Base.Broom")

	if mop then
		if getSandboxOptions():getOptionByName("TrafficLine.NeedPetrol"):getValue() then
			self.petrol = nil
			local petrol = self.character:getInventory():getFirstTagEval("Petrol", predictUsesInt)
			if petrol then
				self.petrol = petrol
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

function ISEraseLineCursor:render(x, y, z, square)
	if not self.floorSprite then
		self.floorSprite = IsoSprite.new()
		self.floorSprite:LoadFramesNoDirPageSimple('media/ui/FloorTileCursor.png')
	end

	local hc = getCore():getGoodHighlitedColor()
	if not self:isValid(square) then
        hc = getCore():getBadHighlitedColor()
    end
	--print("[Debug] ", self.currChoose)
	self.floorSprite:RenderGhostTileColor(x, y, z, hc:getR(), hc:getG(), hc:getB(), 0.8)

	if self.target[self.currChoose] then
		local rc = getCore():getGoodHighlitedColor()
		local offsetX,offsetY = 0, (self.target[self.currChoose]:getRenderYOffset() * Core.getTileScale())
		self.target[self.currChoose]:getSprite():RenderGhostTileColor(x, y, z, offsetX, offsetY, hc:getR(), hc:getG(), hc:getB(), 0.8)
	end
end

function ISEraseLineCursor:new(player)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o:init()
	o.character = player
	o.player = player:getPlayerNum()
	o.noNeedHammer = true
	o.skipBuildAction = true
    o.skipWalk = true

	o.sq = nil
	o.target = nil
	o.currChoose = 1
	return o
end

