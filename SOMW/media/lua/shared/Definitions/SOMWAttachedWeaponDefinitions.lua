require "Definitions/AttachedWeaponDefinitions"

--AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};

--table.remove(AttachedWeaponDefinitions.attachedWeaponCustomOutfit.Bandit.weapons, AttachedWeaponDefinitions.melee2InBack);

-- REMOVE FROM TABLE TO REPLACE AND FIX ISSUES
--melee2InBack -- remove all items to replace with new ones, especially long blunts
table.remove(AttachedWeaponDefinitions.melee2InBack.weapons, 1);
table.remove(AttachedWeaponDefinitions.melee2InBack.weapons, 2); 
table.remove(AttachedWeaponDefinitions.melee2InBack.weapons, 3); 
table.remove(AttachedWeaponDefinitions.melee2InBack.weapons, 4); 
--table.remove(AttachedWeaponDefinitions.melee2InBack.weapons,5); 
table.remove(AttachedWeaponDefinitions.melee2InBack.weapons, 6); 
--bladeInBack -- remove machete from back
table.remove(AttachedWeaponDefinitions.bladeInBack.weapons, 2);
--bladeInBack -- remove machete from back
table.remove(AttachedWeaponDefinitions.macheteInBack.weapons, 1);
-- spearStomach -- remove random spear in the stomach
table.remove(AttachedWeaponDefinitions.spearStomach.weapons, 5);
table.remove(AttachedWeaponDefinitions.spearStomach.weapons, 6);
table.remove(AttachedWeaponDefinitions.spearStomach.weapons, 7); 

-- ADDING TO TABLES
-- meat cleaver & some others low weapons (Hand Axes..) in the back
table.insert(AttachedWeaponDefinitions.meatCleaverBackLowQuality.weapons, "SOMW.AxeHammer")
table.insert(AttachedWeaponDefinitions.meatCleaverBackLowQuality.weapons, "SOMW.CampingHatchet")
table.insert(AttachedWeaponDefinitions.meatCleaverBackLowQuality.weapons, "SOMW.IceAxe")
table.insert(AttachedWeaponDefinitions.meatCleaverBackLowQuality.weapons, "SOMW.EntrenchingShovel")
table.insert(AttachedWeaponDefinitions.meatCleaverBackLowQuality.weapons, "SOMW.GardenShearBlade")
-- Better weapons in the back
table.insert(AttachedWeaponDefinitions.meatCleaverBack.weapons, "SOMW.CampingHatchet")
table.insert(AttachedWeaponDefinitions.meatCleaverBack.weapons, "SOMW.IceAxe")
table.insert(AttachedWeaponDefinitions.meatCleaverBack.weapons, "SOMW.MilitaryMachete")
table.insert(AttachedWeaponDefinitions.meatCleaverBack.weapons, "SOMW.HookMachete")
table.insert(AttachedWeaponDefinitions.meatCleaverBack.weapons, "SOMW.Kukri")
-- CampingHatchet on lumberjack
table.insert(AttachedWeaponDefinitions.lumberjack.weapons, "SOMW.CampingHatchet")
-- hammer/axe in belt left (so we keep knives for belt right if we got multiple items)
table.insert(AttachedWeaponDefinitions.hammerBelt.weapons, "SOMW.AxeHammer")
table.insert(AttachedWeaponDefinitions.hammerBelt.weapons, "SOMW.CampingHatchet")
table.insert(AttachedWeaponDefinitions.hammerBelt.weapons, "SOMW.IceAxe")
table.insert(AttachedWeaponDefinitions.hammerBelt.weapons, "Base.LeadPipe")
table.insert(AttachedWeaponDefinitions.hammerBelt.weapons, "Base.MetalBar")
table.insert(AttachedWeaponDefinitions.hammerBelt.weapons, "Base.MetalPipe")
-- Adding more bats to bandites
table.insert(AttachedWeaponDefinitions.meleeInBack.weapons, "SOMW.AluminumBaseballBat")
table.insert(AttachedWeaponDefinitions.meleeInBack.weapons, "SOMW.BaseballBatWire")
table.insert(AttachedWeaponDefinitions.meleeInBack.weapons, "SOMW.BaseballBatBarbedWire")
table.insert(AttachedWeaponDefinitions.meleeInBack.weapons, "SOMW.BaseballBatScrews")
-- more melee in back!
table.insert(AttachedWeaponDefinitions.melee2InBack.weapons, "SOMW.LongLeadPipe")
table.insert(AttachedWeaponDefinitions.melee2InBack.weapons, "SOMW.LongMetalBar")
table.insert(AttachedWeaponDefinitions.melee2InBack.weapons, "SOMW.LongMetalPipe")		
-- knives in belt right
table.insert(AttachedWeaponDefinitions.knivesBelt.weapons, "SOMW.MilitaryKnife")
table.insert(AttachedWeaponDefinitions.knivesBelt.weapons, "SOMW.CombatKnife")
table.insert(AttachedWeaponDefinitions.knivesBelt.weapons, "SOMW.CampyKnife")
table.insert(AttachedWeaponDefinitions.knivesBelt.weapons, "SOMW.ButterflyKnife")
-- missed 1h metal pipe
table.insert(AttachedWeaponDefinitions.weaponInStomach.weapons, "Base.MetalPipe")
table.insert(AttachedWeaponDefinitions.weaponInStomach.weapons, "SOMW.FireplacePoker")

-- hunting knife (better quality) in the back
table.insert(AttachedWeaponDefinitions.huntingKnifeBack.weapons, "SOMW.MilitaryKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeBack.weapons, "SOMW.CombatKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeBack.weapons, "SOMW.CampyKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeBack.weapons, "Base.IcePick")
-- random knife (better quality) in the back
table.insert(AttachedWeaponDefinitions.knifeBack.weapons, "SOMW.ButterflyKnife")
table.insert(AttachedWeaponDefinitions.knifeBack.weapons, "SOMW.HandFile")
-- hunting knife (better quality) in the left leg
table.insert(AttachedWeaponDefinitions.huntingKnifeLeftLeg.weapons, "SOMW.MilitaryKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeLeftLeg.weapons, "SOMW.CombatKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeLeftLeg.weapons, "SOMW.CampyKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeLeftLeg.weapons, "Base.IcePick")
-- random knife (better quality) in the back
table.insert(AttachedWeaponDefinitions.knifeLeftLeg.weapons, "SOMW.ButterflyKnife")
table.insert(AttachedWeaponDefinitions.knifeLeftLeg.weapons, "SOMW.HandFile")
-- hunting knife (better quality) in the right leg
table.insert(AttachedWeaponDefinitions.huntingKnifeRightLeg.weapons, "SOMW.MilitaryKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeRightLeg.weapons, "SOMW.CombatKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeRightLeg.weapons, "SOMW.CampyKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeRightLeg.weapons, "Base.IcePick")
-- random knife (better quality) in the right leg
table.insert(AttachedWeaponDefinitions.knifeRightLeg.weapons, "SOMW.ButterflyKnife")
table.insert(AttachedWeaponDefinitions.knifeRightLeg.weapons, "SOMW.HandFile")
-- hunting knife (better quality) in the right leg
table.insert(AttachedWeaponDefinitions.huntingKnifeShoulder.weapons, "SOMW.MilitaryKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeShoulder.weapons, "SOMW.CombatKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeShoulder.weapons, "SOMW.CampyKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeShoulder.weapons, "Base.IcePick")
-- random knife (better quality) in the right leg
table.insert(AttachedWeaponDefinitions.knifeShoulder.weapons, "SOMW.ButterflyKnife")
table.insert(AttachedWeaponDefinitions.knifeShoulder.weapons, "SOMW.HandFile")
-- hunting knife (better quality) in the right leg
table.insert(AttachedWeaponDefinitions.huntingKnifeStomach.weapons, "SOMW.MilitaryKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeStomach.weapons, "SOMW.CombatKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeStomach.weapons, "SOMW.CampyKnife")
table.insert(AttachedWeaponDefinitions.huntingKnifeStomach.weapons, "Base.IcePick")
-- random knife (better quality) in the right leg
table.insert(AttachedWeaponDefinitions.knifeStomach.weapons, "SOMW.ButterflyKnife")
table.insert(AttachedWeaponDefinitions.knifeStomach.weapons, "SOMW.HandFile")
-- Axe in back
table.insert(AttachedWeaponDefinitions.axeBack.weapons, "Base.UniAxe")
-- random construction tools on construction worker
table.insert(AttachedWeaponDefinitions.constructionWorker.weapons, "Base.LeadPipe")
table.insert(AttachedWeaponDefinitions.constructionWorker.weapons, "Base.MetalBar")
table.insert(AttachedWeaponDefinitions.constructionWorker.weapons, "Base.MetalPipe")

-- branch spear in spearStomach
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "Base.SpearIcePick")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "Base.SpearBreadKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.SpearCampyKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.SpearMilitaryKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.SpearCombatKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.SpearGardenShearBlade")
-- plank spear in spearStomach
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpear")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearBreadKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearIcePick")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearHuntingKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearScrewdriver")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearCampyKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearMilitaryKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearCombatKnife")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.PlankSpearGardenShearBlade")
-- spear shovels in spearStomach
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.ShovelSpear")
table.insert(AttachedWeaponDefinitions.spearStomach.weapons, "SOMW.Shovel2Spear")

-- GardenScythe at Back
AttachedWeaponDefinitions.SOMWGardenScytheBack = {
	chance = 1,
	weaponLocation = {"Crowbar Back"},
	bloodLocations = {"Back"},
	addHoles = true,
	daySurvived = 10,
	weapons = {
		"SOMW.GardenScythe",
	},
}
--table.insert(AttachedWeaponDefinitions, AttachedWeaponDefinitions.SOMWGardenScytheBack);

-- GardenFork in Stomach
AttachedWeaponDefinitions.SOMWGardenForkStomach = {
	chance = 2,
	weaponLocation = {"Stomach"},
	bloodLocations = {"Torso_Lower","Back"},
	addHoles = true,
	daySurvived = 10,
	weapons = {
		"Base.GardenFork",
	},
}
--table.insert(AttachedWeaponDefinitions, AttachedWeaponDefinitions.SOMWGardenForkStomach);

-- Long Pipes in the Back
AttachedWeaponDefinitions.SOMWlongpipesOnBack = {
	chance = 3,
	weaponLocation = {"Crowbar Back"},
	bloodLocations = {"Back"},
	addHoles = false,
	daySurvived = 10,
	weapons = {
		"SOMW.LongLeadPipe",
		"SOMW.LongMetalBar",
		"SOMW.LongMetalPipe",
	},
}
--table.insert(AttachedWeaponDefinitions, AttachedWeaponDefinitions.SOMWlongpipesOnBack);


-- /*** CUSTOM WEAPONS FOR OUTFITS ***/

-- BANDITS
-- New machete on belt
AttachedWeaponDefinitions.SOMWbladeBelt = {
	chance = 20,
	outfit = {"Bandit"},
	weaponLocation = {"Belt Right Upside", "Belt Left Upside"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Machete",
		"SOMW.MilitaryMachete",	
		"SOMW.HookMachete",		
		"SOMW.Kukri",			
	},
}

-- PSYCHO
-- New machete on belt
AttachedWeaponDefinitions.SOMWmacheteBelt = {
	chance = 100,
	outfit = {"HockeyPsycho"},
	weaponLocation = {"Belt Right Upside", "Belt Left Upside"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Machete",
		"SOMW.HookMachete",
		"SOMW.MilitaryMachete",
		"SOMW.Kukri",				
	},
}

--AttachedWeaponDefinitions.attachedWeaponCustomOutfit = {};

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.HockeyPsycho = {
	chance = 100;
	weapons = {
--		AttachedWeaponDefinitions.macheteInBack,	
		AttachedWeaponDefinitions.SOMWmacheteBelt,		
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.Bandit = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.meleeInBack,
		AttachedWeaponDefinitions.melee2InBack,
		AttachedWeaponDefinitions.hammerBelt,
		AttachedWeaponDefinitions.knivesBelt,
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.bladeInBack,
		AttachedWeaponDefinitions.SOMWbladeBelt,
	},
}

--table.insert(AttachedWeaponDefinitions.attachedWeaponCustomOutfit.Bandit.weapons, AttachedWeaponDefinitions.SOMWbladeBelt);
--table.insert(AttachedWeaponDefinitions.attachedWeaponCustomOutfit.HockeyPsycho.weapons, AttachedWeaponDefinitions.SOMWmacheteBelt);