-- ************************************************************************
-- **        ██████  ██████   █████  ██    ██ ███████ ███    ██          **
-- **        ██   ██ ██   ██ ██   ██ ██    ██ ██      ████   ██          **
-- **        ██████  ██████  ███████ ██    ██ █████   ██ ██  ██          **
-- **        ██   ██ ██   ██ ██   ██  ██  ██  ██      ██  ██ ██          **
-- **        ██████  ██   ██ ██   ██   ████   ███████ ██   ████          **
-- ************************************************************************
-- ** All rights reserved. This content is protected by © Copyright law. **
-- ************************************************************************

local database = {
    -- Forest
    d_generic_1_8 = "Base.Twigs:2",
    d_generic_1_9 = "Base.Log:1",
    d_generic_1_10 = "Base.Log:1",
    d_generic_1_11 = "Base.Twigs:3",
    d_generic_1_12 = "Base.Log:1,Base.Twigs:2",
    d_generic_1_13 = "Base.Stone:1,Base.Twigs:3,Base.TreeBranch:1",
    d_generic_1_14 = "Base.Twigs:5",
    d_generic_1_15 = "Base.Twigs:4",
    d_generic_1_22 = "Base.Stone:2,Base.SharpedStone:1",
    d_generic_1_23 = "Base.Stone:3",
    d_generic_1_24 = "Base.Stone:5",
    d_generic_1_25 = "Base.Stone:3",
    d_generic_1_28 = "Base.Log:2",
    d_generic_1_31 = "Base.Log:1",
    d_generic_1_40 = "Base.Stone:1,Base.SharpedStone:1",
    d_generic_1_41 = "Base.Stone:1",
    d_generic_1_42 = "Base.SharpedStone:1",
    d_generic_1_43 = "Base.Stone:2",
    d_generic_1_44 = "Base.Twigs:3",
    d_generic_1_45 = "Base.Twigs:2",
    d_generic_1_47 = "Base.Twigs:1",

    -- Trash
    trash_01_0 = "Base.PopEmpty:2",
    trash_01_1 = "",
    trash_01_2 = "Base.GroceryBag1:1,Base.Lunchbag:1",
    trash_01_3 = "Base.GroceryBag1:1,Base.PopEmpty:1",
    trash_01_4 = "Base.GroceryBag1:2",
    trash_01_5 = "Base.PopEmpty:1",
    trash_01_6 = "Base.GroceryBag1:1",
    trash_01_7 = "Base.TinCanEmpty:1",
    trash_01_8 = "Base.TinCanEmpty:1",
    trash_01_9 = "",
    trash_01_10 = "",
    trash_01_11 = "Base.Lunchbag:1",
    trash_01_12 = "Base.GroceryBag1:2",
    trash_01_16 = "Base.GroceryBag1:2,Base.PopEmpty:2,Base.Lunchbag:1",
    trash_01_17 = "Base.GroceryBag1:1,Base.PopEmpty:1",
    trash_01_18 = "Base.Newspaper:1,Base.GroceryBag1:1,Base.PopEmpty:1",
    trash_01_19 = "Base.GroceryBag1:4,Base.ConcretePowder:1,Base.Tarp:1",
    trash_01_20 = "Base.Newspaper:1,Base.GroceryBag1:3,Base.Tarp:1,Base.Lunchbag:1",
    trash_01_21 = "Base.GroceryBag1:7,Base.Book:1",
    trash_01_22 = "Base.GroceryBag1:8,Base.PopEmpty:1,Base.Lunchbag:2",
    trash_01_23 = "Base.GroceryBag1:5,Base.Garbagebag:1,Base.Newspaper:1",
    trash_01_24 = "Base.Newspaper:1,Base.SheetPaper2:4",
    trash_01_25 = "Base.SheetPaper2:3",
    trash_01_26 = "Base.SheetPaper2:3",
    trash_01_27 = "Base.Doodle:1,Base.SheetPaper2:5",
    trash_01_28 = "Base.SheetPaper2:2",
    trash_01_29 = "Base.Newspaper:1,Base.SheetPaper2:1",
    trash_01_30 = "Base.Doodle:1,Base.SheetPaper2:2",
    trash_01_31 = "Base.Doodle:1,Base.SheetPaper2:2",
    trash_01_32 = "Base.Newspaper:1,Base.GroceryBag1:2,Base.Lunchbag:1",
    trash_01_33 = "Base.GroceryBag1:1,Base.TinCanEmpty:2",
    trash_01_34 = "Base.Stone:1,Base.TinCanEmpty:2,Base.Lunchbag:1",
    trash_01_35 = "Base.PopEmpty:1,Base.GroceryBag2:2,Base.Lunchbag:1",
    trash_01_36 = "Base.ConcretePowder:1,Base.Tarp:1,Base.Newspaper:1,Base.GroceryBag2:4",
    trash_01_37 = "Base.GroceryBag2:7,Base.Mov_CardboardBox:1",
    trash_01_38 = "Base.GroceryBag1:5",
    trash_01_39 = "Base.Newspaper:1,Base.GroceryBag1:3,Base.TinCanEmpty:1",
    trash_01_40 = "Base.Garbagebag:2,Base.Lunchbag:1",
    trash_01_41 = "Base.Garbagebag:2,Base.GroceryBag1:2",
    trash_01_42 = "Base.GroceryBag1:3,Base.Tarp:1",
    trash_01_43 = "Base.GroceryBag1:3",
    trash_01_44 = "Base.GroceryBag1:3,Base.Lunchbag:1,Base.Mov_CardboardBox:1,Base.PopEmpty:1",
    trash_01_45 = "Base.GroceryBag1:4,Base.Lunchbag:2,Base.SheetPaper2:1,Base.TightsBlackTrans:1",
    trash_01_46 = "Base.Newspaper:1,Base.SheetPaper2:1",
    trash_01_47 = "Base.Mov_CardboardBox:1,Base.Plank:2,Base.GroceryBag1:5,Base.Lunchbag:3",
    trash_01_48 = "Base.Garbagebag:3,Base.PopEmpty:1",
    trash_01_49 = "Base.Mov_CardboardBox:1,Base.GroceryBag1:1,Base.TinCanEmpty:1",
    trash_01_50 = "Base.GroceryBag1:3,Base.Tarp:1",
    trash_01_51 = "Base.GroceryBag1:2",
    trash_01_52 = "Base.Plank:2",
    trash_01_53 = "Base.GroceryBag1:2",

    -- D??? Trash?
    d_trash_1_0 = "Base.GroceryBag1:2,Base.PopEmpty:2,Base.Lunchbag:1",
    d_trash_1_1 = "Base.GroceryBag1:1,Base.PopEmpty:1",
    d_trash_1_2 = "Base.Newspaper:1,Base.GroceryBag1:1,Base.PopEmpty:1",
    d_trash_1_3 = "Base.GroceryBag1:4,Base.ConcretePowder:1,Base.Tarp:1",
    d_trash_1_4 = "Base.Newspaper:1,Base.GroceryBag1:3,Base.Tarp:1,Base.Lunchbag:1",
    d_trash_1_5 = "Base.GroceryBag1:7,Base.Book:1",
    d_trash_1_6 = "Base.GroceryBag1:8,Base.PopEmpty:1,Base.Lunchbag:2",
    d_trash_1_7 = "Base.GroceryBag1:5,Base.Garbagebag:1,Base.Newspaper:1",
    d_trash_1_8 = "Base.Plank:3,Base.GroceryBag1:3,Base.PaperNapkins:2",
    d_trash_1_9 = "Base.TinCanEmpty:2,Base.PaperNapkins:1",
    d_trash_1_10 = "Base.Garbagebag:2,Base.Lunchbag:1",
    d_trash_1_11 = "Base.Garbagebag:2,Base.GroceryBag1:2",
    d_trash_1_12 = "Base.GroceryBag1:3,Base.Tarp:1",
    d_trash_1_13 = "Base.GroceryBag1:3",
    d_trash_1_14 = "Base.GroceryBag1:3,Base.Lunchbag:1,Base.Mov_CardboardBox:1,Base.PopEmpty:1",
    d_trash_1_15 = "Base.GroceryBag1:4,Base.Lunchbag:2,Base.SheetPaper2:1,Base.TightsBlackTrans:1",
    d_trash_1_16 = "Base.Newspaper:1,Base.SheetPaper2:1",
    d_trash_1_17 = "Base.Mov_CardboardBox:1,Base.Plank:2,Base.GroceryBag1:5,Base.Lunchbag:3",
    d_trash_1_18 = "Base.Mov_CardboardBox:1,Base.GroceryBag1:1,Base.PaperNapkins:2",
    d_trash_1_19 = "Base.GroceryBag1:1,Base.PopEmpty:1",
    d_trash_1_20 = "Base.Garbagebag:3,Base.TinCanEmpty:1",
    d_trash_1_21 = "Base.Mov_CardboardBox:1,Base.GroceryBag1:1,Base.TinCanEmpty:1",
    d_trash_1_22 = "Base.GroceryBag1:3,Base.Tarp:1",
    d_trash_1_23 = "Base.GroceryBag1:2",
    d_trash_1_24 = "Base.Plank:2",
    d_trash_1_25 = "Base.GroceryBag1:2",

    -- Plants and weeds
    d_plants_1_16 = "",
    d_plants_1_17 = "",
    d_plants_1_18 = "",
    d_plants_1_19 = "",
    d_plants_1_20 = "",
    d_plants_1_21 = "",
    d_plants_1_22 = "",
    d_plants_1_23 = "",
    d_plants_1_32 = "",
    d_plants_1_33 = "",
    d_plants_1_34 = "",
    d_plants_1_35 = "",
    d_plants_1_36 = "",
    d_plants_1_37 = "",
    d_plants_1_38 = "",
    d_plants_1_39 = "",
    d_plants_1_48 = "",
    d_plants_1_49 = "",
    d_plants_1_50 = "",
    d_plants_1_51 = "",
    d_plants_1_52 = "",
    d_plants_1_53 = "",
    d_plants_1_54 = "",
    d_plants_1_55 = "",

    d_generic_1_0 = "",
    d_generic_1_1 = "",
    d_generic_1_2 = "",
    d_generic_1_3 = "",
    d_generic_1_4 = "",
    d_generic_1_5 = "",
    d_generic_1_6 = "",
    d_generic_1_7 = "",
    d_generic_1_16 = "",
    d_generic_1_17 = "",
    d_generic_1_18 = "",
    d_generic_1_19 = "",
    d_generic_1_20 = "",
    d_generic_1_21 = "",
    d_generic_1_26 = "",
    d_generic_1_27 = "",
    d_generic_1_29 = "",
    d_generic_1_30 = "",
    d_generic_1_32 = "",
    d_generic_1_33 = "",
    d_generic_1_34 = "",
    d_generic_1_35 = "",
    d_generic_1_36 = "",
    d_generic_1_37 = "",
    d_generic_1_38 = "",
    d_generic_1_39 = "",
    d_generic_1_46 = "",
    d_generic_1_48 = "",
    d_generic_1_49 = "",
    d_generic_1_50 = "",
    d_generic_1_51 = "",
    d_generic_1_52 = "",
    d_generic_1_53 = "",
    d_generic_1_54 = "",
    d_generic_1_55 = "",
    d_generic_1_64 = "",
    d_generic_1_65 = "",
    d_generic_1_66 = "",
    d_generic_1_67 = "",
    d_generic_1_68 = "",
    d_generic_1_69 = "",
    d_generic_1_70 = "",
    d_generic_1_71 = "",
    d_generic_1_80 = "",
    d_generic_1_81 = "",
    d_generic_1_82 = "",
    d_generic_1_83 = "",
    d_generic_1_85 = "",
    d_generic_1_86 = "",
    d_generic_1_87 = "",
    d_generic_1_96 = "",
    d_generic_1_97 = "",
    d_generic_1_98 = "",
    d_generic_1_99 = "",
    d_generic_1_100 = "",
    d_generic_1_101 = "",
    d_generic_1_102 = "",
    d_generic_1_103 = "",

    -- Ashes
    floors_burnt_01_1 = "",
    floors_burnt_01_02 = "",
}

local collectItem = function(playerObj, clickedSquare, spriteName, itemsList)
	if luautils.walkAdj(playerObj, clickedSquare) then
        ISTimedActionQueue.add(BB_Foraging_ISTimedAction:CollectItem(playerObj, clickedSquare, spriteName, itemsList))
	end
end

local function onFillWorldObjectContextMenu(player, context, worldobjects, test)

    local playerObj = getSpecificPlayer(player)
    if playerObj:getVehicle() then return; end

    local objs = clickedSquare:getObjects()

    for i = 0, objs:size() - 1 do
        local obj = objs:get(i)

        if instanceof(obj, "IsoObject") then
            local sprite =  obj:getSprite()
            if sprite then
                local spriteName = sprite:getName()
                if spriteName then
                    for spriteN, itemsList in pairs(database) do
                        if spriteName == tostring(spriteN) then
                            context:addOptionOnTop(getText("IGUI_PickupItem"), playerObj, collectItem, clickedSquare, spriteName, itemsList)
                        end
                    end
                end
            end
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(onFillWorldObjectContextMenu)