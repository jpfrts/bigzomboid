require "Hotbar/ISHotbarAttachDefinition"
--require "ISHotbarAttachDefinition"

--if not ISHotbarAttachDefinition then
--    return
--end

function addAttachment(type, key, value)
    for k,v in pairs(ISHotbarAttachDefinition) do
        print(v.type)
        if v.type == type then
            v.attachments[key] = value
            return
        end
    end
end

-- Attachment Type In Table - Key In Attachments - Value In Attachments
addAttachment("SmallBeltLeft", "LongBlade", "LongBlade Left")
addAttachment("SmallBeltRight", "LongBlade", "LongBlade Right")

local function SOMWActivateModData()
	if getActivatedMods():contains("noirbackpacksattachments") or getActivatedMods():contains("nattachments") then
		for _,v in pairs(NATTBackpacks) do
			addAttachment(v.."Weapon", "LongBlade", v.."Weapon")
		end
	end
end

Events.OnGameStart.Add(SOMWActivateModData);

--addAttachment("Weapon", "LongBlade", "LongBlade")

--[[
local SmallBeltLeft = {
	type = "SmallBeltLeft",
	name = "Belt Left",
	animset = "belt left",
	attachments = {
		LongBlade = "LongBlade Left",
		
		},
}
table.insert(ISHotbarAttachDefinition, SmallBeltLeft);

local SmallBeltRight = {
	type = "SmallBeltRight",
	name = "Belt Right",
	animset = "belt right",
	attachments = {
		LongBlade = "LongBlade Right",

		},
}
table.insert(ISHotbarAttachDefinition, SmallBeltRight);]]


--[[
local SmallBeltLeft = {
	type = "SmallBeltLeft",
	name = "Belt Left",
	animset = "belt left",
	attachments = {
		LongBlade = "LongBlade Left",
		
		},
}
table.insert(ISHotbarAttachDefinition, SmallBeltLeft);

local SmallBeltRight = {
	type = "SmallBeltRight",
	name = "Belt Right",
	animset = "belt right",
	attachments = {
		LongBlade = "LongBlade Right",

		},
}
table.insert(ISHotbarAttachDefinition, SmallBeltRight);]]
