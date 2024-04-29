DrawTrafficLine = {}

function DrawTrafficLine.doDrawMenu(playerIdx, context, worldobjects, test)
	if test and ISWorldObjectContextMenu.Test then return true end
	if getCore():getGameMode()=="LastStand" then return end
	
	local player = getSpecificPlayer(playerIdx)
    local inv = player:getInventory()

	if player:getVehicle() then return end

	local brush = inv:contains("Base.Paintbrush")
	local mop = inv:contains("Base.Mop") or inv:contains("Base.Broom")

	-- Create draw menu
	if brush or player:isBuildCheat() then
		local option = context:addOption(getText("ContextMenu_DrawTrafficLine"), worldobjects, nil)
		local subMenu = ISContextMenu:getNew(context)
		context:addSubMenu(option, subMenu)

		local wOption = subMenu:addOption(getText("ContextMenu_TrafficLineWhite"), worldobjects, nil)
		local wSubMenu = subMenu:getNew(subMenu)
		subMenu:addSubMenu(wOption, wSubMenu)
		local yOption = subMenu:addOption(getText("ContextMenu_TrafficLineYellow"), worldobjects, nil)
		local ySubMenu = subMenu:getNew(subMenu)
		subMenu:addSubMenu(yOption, ySubMenu)
		local pOption = subMenu:addOption(getText("ContextMenu_TrafficLinePink"), worldobjects, nil)
		local pSubMenu = subMenu:getNew(subMenu)
		subMenu:addSubMenu(pOption, pSubMenu)
		local bOption = subMenu:addOption(getText("ContextMenu_TrafficLineBlue"), worldobjects, nil)
		local bSubMenu = subMenu:getNew(subMenu)
		subMenu:addSubMenu(bOption, bSubMenu)

		-- ********************************************************************************************************************************************************
		-- White lines
		-- ********************************************************************************************************************************************************
		local wLineSprites = {sprite = "d_traffic_lines_custom_0", northSprite = "d_traffic_lines_custom_1", southSprite = "d_traffic_lines_custom_2", eastSprite = "d_traffic_lines_custom_3"}
		local wLineOption = wSubMenu:addOption(getText("ContextMenu_TrafficLineWhite"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, wLineSprites, "Base.PaintWhite")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintWhite", wLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineWhite"))
		--toolTip.description = getText("ContextMenu_TrafficLineWhite") .. toolTip.description
		toolTip:setTexture(wLineSprites.sprite)
		DrawTrafficLine.requireBrush(wLineOption, player)

		local wCLineSprites = {sprite = "d_traffic_lines_custom_4", northSprite = "d_traffic_lines_custom_5", southSprite = "d_traffic_lines_custom_6", eastSprite = "d_traffic_lines_custom_7"}
		local wCLineOption = wSubMenu:addOption(getText("ContextMenu_TrafficLineWhiteCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, wCLineSprites, "Base.PaintWhite")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintWhite", wCLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineWhiteCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLineWhiteCorner") .. toolTip.description
		toolTip:setTexture(wCLineSprites.sprite)
		DrawTrafficLine.requireBrush(wCLineOption, player)

		-- ********************************************************************************************************************************************************
		-- Yellow lines
		-- ********************************************************************************************************************************************************
		local yLineSprites = {sprite = "d_traffic_lines_custom_8", northSprite = "d_traffic_lines_custom_9", southSprite = "d_traffic_lines_custom_10", eastSprite = "d_traffic_lines_custom_11"}
		local yLineOption = ySubMenu:addOption(getText("ContextMenu_TrafficLineYellow"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, yLineSprites, "Base.PaintYellow")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintYellow", yLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineYellow"))
		--toolTip.description = getText("ContextMenu_TrafficLineYellow") .. toolTip.description
		toolTip:setTexture(yLineSprites.sprite)
		DrawTrafficLine.requireBrush(yLineOption, player)
		
		local yCLineSprites = {sprite = "d_traffic_lines_custom_12", northSprite = "d_traffic_lines_custom_13", southSprite = "d_traffic_lines_custom_14", eastSprite = "d_traffic_lines_custom_15"}
		local yCLineOption = ySubMenu:addOption(getText("ContextMenu_TrafficLineYellowCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, yCLineSprites, "Base.PaintYellow")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintYellow", yCLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineYellowCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLineYellowCorner") .. toolTip.description
		toolTip:setTexture(yCLineSprites.sprite)
		DrawTrafficLine.requireBrush(yCLineOption, player)

		-- ********************************************************************************************************************************************************
		-- Pink lines
		-- ********************************************************************************************************************************************************
		local pLineSprites = {sprite = "d_traffic_lines_custom_16", northSprite = "d_traffic_lines_custom_17", southSprite = "d_traffic_lines_custom_18", eastSprite = "d_traffic_lines_custom_19"}
		local pLineOption = pSubMenu:addOption(getText("ContextMenu_TrafficLinePink"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, pLineSprites, "Base.PaintPink")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintPink", pLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLinePink"))
		--toolTip.description = getText("ContextMenu_TrafficLinePink") .. toolTip.description
		toolTip:setTexture(pLineSprites.sprite)
		DrawTrafficLine.requireBrush(pLineOption, player)

		local pCLineSprites = {sprite = "d_traffic_lines_custom_20", northSprite = "d_traffic_lines_custom_21", southSprite = "d_traffic_lines_custom_22", eastSprite = "d_traffic_lines_custom_23"}
		local pCLineOption = pSubMenu:addOption(getText("ContextMenu_TrafficLinePinkCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, pCLineSprites, "Base.PaintPink")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintPink", pCLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLinePinkCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLinePinkCorner") .. toolTip.description
		toolTip:setTexture(pCLineSprites.sprite)
		DrawTrafficLine.requireBrush(pCLineOption, player)

		-- ********************************************************************************************************************************************************
		-- Blue lines
		-- ********************************************************************************************************************************************************
		local bLineSprites = {sprite = "d_traffic_lines_custom_24", northSprite = "d_traffic_lines_custom_25", southSprite = "d_traffic_lines_custom_26", eastSprite = "d_traffic_lines_custom_27"}
		local bLineOption = bSubMenu:addOption(getText("ContextMenu_TrafficLineBlue"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, bLineSprites, "Base.PaintBlue")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintBlue", bLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineBlue"))
		--toolTip.description = getText("ContextMenu_TrafficLineBlue") .. toolTip.description
		toolTip:setTexture(bLineSprites.sprite)
		DrawTrafficLine.requireBrush(bLineOption, player)

		local bCLineSprites = {sprite = "d_traffic_lines_custom_28", northSprite = "d_traffic_lines_custom_29", southSprite = "d_traffic_lines_custom_30", eastSprite = "d_traffic_lines_custom_31"}
		local bCLineOption = bSubMenu:addOption(getText("ContextMenu_TrafficLineBlueCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, bCLineSprites, "Base.PaintBlue")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintBlue", bCLineOption, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineBlueCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLineBlueCorner") .. toolTip.description
		toolTip:setTexture(bCLineSprites.sprite)
		DrawTrafficLine.requireBrush(bCLineOption, player)

		-- ********************************************************************************************************************************************************
		-- Bold white lines
		-- ********************************************************************************************************************************************************
		local wLineSprites2 = {sprite = "d_traffic_lines_custom_32", northSprite = "d_traffic_lines_custom_33"}
		local wLineOption2 = wSubMenu:addOption(getText("ContextMenu_TrafficLineWhiteBold"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, wLineSprites2, "Base.PaintWhite")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintWhite", wLineOption2, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineWhiteBold"))
		--toolTip.description = getText("ContextMenu_TrafficLineWhiteBold") .. toolTip.description
		toolTip:setTexture(wLineSprites2.sprite)
		DrawTrafficLine.requireBrush(wLineOption2, player)

		local wLineSprites3 = {sprite = "d_traffic_lines_custom_40", northSprite = "d_traffic_lines_custom_41", southSprite = "d_traffic_lines_custom_42", eastSprite = "d_traffic_lines_custom_43"}
		local wLineOption3 = wSubMenu:addOption(getText("ContextMenu_TrafficLineWhiteBoldCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, wLineSprites3, "Base.PaintWhite")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintWhite", wLineOption3, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineWhiteBoldCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLineWhiteBoldCorner") .. toolTip.description
		toolTip:setTexture(wLineSprites3.sprite)
		DrawTrafficLine.requireBrush(wLineOption3, player)

		local wLineSprites4 = {sprite = "d_traffic_lines_custom_44", northSprite = "d_traffic_lines_custom_45", southSprite = "d_traffic_lines_custom_46", eastSprite = "d_traffic_lines_custom_47"}
		local wLineOption4 = wSubMenu:addOption(getText("ContextMenu_TrafficLineWhiteBoldT"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, wLineSprites4, "Base.PaintWhite")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintWhite", wLineOption4, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineWhiteBoldT"))
		--toolTip.description = getText("ContextMenu_TrafficLineWhiteBoldT") .. toolTip.description
		toolTip:setTexture(wLineSprites4.sprite)
		DrawTrafficLine.requireBrush(wLineOption4, player)

		-- ********************************************************************************************************************************************************
		-- Bold yellow lines
		-- ********************************************************************************************************************************************************
		local yLineSprites2 = {sprite = "d_traffic_lines_custom_34", northSprite = "d_traffic_lines_custom_35"}
		local yLineOption2 = ySubMenu:addOption(getText("ContextMenu_TrafficLineYellowBold"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, yLineSprites2, "Base.PaintYellow")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintYellow", yLineOption2, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineYellowBold"))
		--toolTip.description = getText("ContextMenu_TrafficLineYellowBold") .. toolTip.description
		toolTip:setTexture(yLineSprites2.sprite)
		DrawTrafficLine.requireBrush(yLineOption2, player)

		local yLineSprites3 = {sprite = "d_traffic_lines_custom_48", northSprite = "d_traffic_lines_custom_49", southSprite = "d_traffic_lines_custom_50", eastSprite = "d_traffic_lines_custom_51"}
		local yLineOption3 = ySubMenu:addOption(getText("ContextMenu_TrafficLineYellowBoldCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, yLineSprites3, "Base.PaintYellow")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintYellow", yLineOption3, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineYellowBoldCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLineYellowBoldCorner") .. toolTip.description
		toolTip:setTexture(yLineSprites3.sprite)
		DrawTrafficLine.requireBrush(yLineOption3, player)

		local yLineSprites4 = {sprite = "d_traffic_lines_custom_52", northSprite = "d_traffic_lines_custom_53", southSprite = "d_traffic_lines_custom_54", eastSprite = "d_traffic_lines_custom_55"}
		local yLineOption4 = ySubMenu:addOption(getText("ContextMenu_TrafficLineYellowBoldT"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, yLineSprites4, "Base.PaintYellow")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintYellow", yLineOption4, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineYellowBoldT"))
		--toolTip.description = getText("ContextMenu_TrafficLineYellowBoldT") .. toolTip.description
		toolTip:setTexture(yLineSprites4.sprite)
		DrawTrafficLine.requireBrush(yLineOption4, player)

		-- ********************************************************************************************************************************************************
		-- Bold pink lines
		-- ********************************************************************************************************************************************************
		local pLineSprites2 = {sprite = "d_traffic_lines_custom_36", northSprite = "d_traffic_lines_custom_37"}
		local pLineOption2 = pSubMenu:addOption(getText("ContextMenu_TrafficLinePinkBold"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, pLineSprites2, "Base.PaintPink")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintPink", pLineOption2, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLinePinkBold"))
		--toolTip.description = getText("ContextMenu_TrafficLinePinkBold") .. toolTip.description
		toolTip:setTexture(pLineSprites2.sprite)
		DrawTrafficLine.requireBrush(pLineOption2, player)

		local pLineSprites3 = {sprite = "d_traffic_lines_custom_56", northSprite = "d_traffic_lines_custom_57", southSprite = "d_traffic_lines_custom_58", eastSprite = "d_traffic_lines_custom_59"}
		local pLineOption3 = pSubMenu:addOption(getText("ContextMenu_TrafficLinePinkBoldCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, pLineSprites3, "Base.PaintPink")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintPink", pLineOption3, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLinePinkBoldCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLinePinkBoldCorner") .. toolTip.description
		toolTip:setTexture(pLineSprites3.sprite)
		DrawTrafficLine.requireBrush(pLineOption3, player)

		local pLineSprites4 = {sprite = "d_traffic_lines_custom_60", northSprite = "d_traffic_lines_custom_61", southSprite = "d_traffic_lines_custom_62", eastSprite = "d_traffic_lines_custom_63"}
		local pLineOption4 = pSubMenu:addOption(getText("ContextMenu_TrafficLinePinkBoldT"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, pLineSprites4, "Base.PaintPink")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintPink", pLineOption4, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLinePinkBoldT"))
		--toolTip.description = getText("ContextMenu_TrafficLinePinkBoldT") .. toolTip.description
		toolTip:setTexture(pLineSprites4.sprite)
		DrawTrafficLine.requireBrush(pLineOption4, player)

		-- ********************************************************************************************************************************************************
		-- Bold blue lines
		-- ********************************************************************************************************************************************************
		local bLineSprites2 = {sprite = "d_traffic_lines_custom_38", northSprite = "d_traffic_lines_custom_39"}
		local bLineOption2 = bSubMenu:addOption(getText("ContextMenu_TrafficLineBlueBold"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, bLineSprites2, "Base.PaintBlue")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintBlue", bLineOption2, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineBlueBold"))
		--toolTip.description = getText("ContextMenu_TrafficLineBlueBold") .. toolTip.description
		toolTip:setTexture(bLineSprites2.sprite)
		DrawTrafficLine.requireBrush(bLineOption2, player)

		local bLineSprites3 = {sprite = "d_traffic_lines_custom_64", northSprite = "d_traffic_lines_custom_65", southSprite = "d_traffic_lines_custom_66", eastSprite = "d_traffic_lines_custom_67"}
		local bLineOption3 = bSubMenu:addOption(getText("ContextMenu_TrafficLineBlueBoldCorner"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, bLineSprites3, "Base.PaintBlue")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintBlue", bLineOption3, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineBlueBoldCorner"))
		--toolTip.description = getText("ContextMenu_TrafficLineBlueBoldCorner") .. toolTip.description
		toolTip:setTexture(bLineSprites3.sprite)
		DrawTrafficLine.requireBrush(bLineOption3, player)

		local bLineSprites4 = {sprite = "d_traffic_lines_custom_68", northSprite = "d_traffic_lines_custom_69", southSprite = "d_traffic_lines_custom_70", eastSprite = "d_traffic_lines_custom_71"}
		local bLineOption4 = bSubMenu:addOption(getText("ContextMenu_TrafficLineBlueBoldT"), worldobjects, DrawTrafficLine.onDrawLine, playerIdx, bLineSprites4, "Base.PaintBlue")
		local toolTip = DrawTrafficLine.canDraw("Base.PaintBlue", bLineOption4, player, inv)
		toolTip:setName(getText("ContextMenu_TrafficLineBlueBoldT"))
		--toolTip.description = getText("ContextMenu_TrafficLineBlueBoldT") .. toolTip.description
		toolTip:setTexture(bLineSprites4.sprite)
		DrawTrafficLine.requireBrush(bLineOption4, player)
	end

	-- Create erase menu
	if mop or player:isBuildCheat() then
		local option = context:addOption(getText("ContextMenu_EraseTrafficLine"), worldobjects, DrawTrafficLine.onEraseLine, playerIdx)
	end
end

DrawTrafficLine.requireBrush = function(option, player)
	local brush = player:getInventory():contains("Base.Paintbrush")
	if player:isBuildCheat() then return end
	if not brush then
		option.notAvailable = true
		option.onSelect = nil
	end
end

DrawTrafficLine.requireMop = function(option, player)
	local inv = player:getInventory()
	local mop = inv:contains("Base.Mop") or inv:contains("Base.Broom")
	if player:isBuildCheat() then return end
	if not mop then
		option.notAvailable = true
		option.onSelect = nil
	end
end

DrawTrafficLine.canDraw = function(_paint, option, player, inv)
	local tooltip = ISBuildMenu.addToolTip()

	option.toolTip = tooltip
	local result = true

	if not getSandboxOptions():getOptionByName("TrafficLine.NeedPaint"):getValue() then
		return tooltip
	end

	tooltip.description = "<LINE> <LINE>" .. getText("Tooltip_craft_Needs") .. ": <LINE>"

	local paint = inv:getUsesType(_paint)

	if paint > 0 then
		tooltip.description = tooltip.description .. " <RGB:1,1,1>" .. getItemNameFromFullType(_paint) .. "  " .. tostring(paint) .. "/1" .. " <LINE>"
	else
		tooltip.description = tooltip.description .. " <RGB:1,0,0>" .. getItemNameFromFullType(_paint) .. "  " .. "0/1" .. " <LINE>"
		result = false
	end
	
	if ISBuildMenu.cheat then
		return tooltip
	end
	if not result then
		option.onSelect = nil
		option.notAvailable = true
	end
	tooltip.description = " " .. tooltip.description .. " "
	return tooltip
end

DrawTrafficLine.onDrawLine = function(worldobjects, playerIdx, sprites, paint)
	local line = ISTrafficLine:new(sprites.sprite, sprites.northSprite, getSpecificPlayer(playerIdx), paint)
	if sprites.eastSprite then line:setEastSprite(sprites.eastSprite) end
	if sprites.southSprite then line:setSouthSprite(sprites.southSprite) end
	line.player = playerIdx
	getCell():setDrag(line, playerIdx)
end

DrawTrafficLine.onEraseLine = function(worldobjects, playerIdx)
	local cursor = ISEraseLineCursor:new(getSpecificPlayer(playerIdx))
	getCell():setDrag(cursor, playerIdx)
end

Events.OnFillWorldObjectContextMenu.Add(DrawTrafficLine.doDrawMenu)