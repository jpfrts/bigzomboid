require("TimedActions/MeditateAction")
if not (MeditateAction and MeditateAction.new) then return end 

-- Scripted by Burryaga, Published by Nomad :D 

local MAR = {}

MAR.MeditationAction = {}

MAR.MeditationAction.new = MeditateAction.new

MAR.preferredAnimations = {
  [1] = "Bob_meditating",
  [2] = "Bob_meditatingB",
  [3] = "Bob_meditatingC"
}

MAR.hatedAnimations = {
  ["Bob_meditatingAdvanced"] = true,
  ["Bob_meditatingMaster"] = true
}

function MeditateAction:new(player, sound, length, level, xp, boredomReduction, stressReduction, neckPain, actionType)      
    if MAR.hatedAnimations[actionType] then
      actionType = MAR.preferredAnimations[ZombRand(#MAR.preferredAnimations) + 1]
    end

    sound = "DisableSoundEffects"

    return MAR.MeditationAction.new(self, player, sound, length, level, xp, boredomReduction, stressReduction, neckPain, actionType)
end



return MAR