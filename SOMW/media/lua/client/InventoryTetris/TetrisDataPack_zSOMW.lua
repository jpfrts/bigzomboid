require "InventoryTetris/TetrisItemData";
--require "InventoryTetris/TetrisContainerData";

if getActivatedMods():contains("INVENTORY_TETRIS") then

Events.OnGameBoot.Add(function() 

	local itemPack = {
		["Base.Saw"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["Base.GardenSaw"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["Base.Screwdriver"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["Base.TreeBranch"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 4,
		},
		["SOMW.ShortTreeBranch"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 4,
		},	
		["SOMW.HalfPlank"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.HalfPlankNails"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.HalfPlankNails"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.LShapedLugWrench"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["SOMW.MeatTenderizer"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["SOMW.FireplacePoker"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.Nightstick"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.Wrench"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["Base.PipeWrench"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		
		-- Blunts

		["Base.Shovel"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},	
		["Base.Shovel2"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},		
		["Base.LeafRake"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.Rake"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["Base.Crowbar"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["Base.BaseballBat"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["Base.BaseballBatNails"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.BaseballBatWire"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.BaseballBatBarbedWire"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.BaseballBatScrews"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.AluminumBaseballBat"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.LongLeadPipe"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.LeadPipe"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["SOMW.LongMetalPipe"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.MetalPipe"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.LongMetalBar"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.MetalBar"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.WalkingCane"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["Base.Sledgehammer"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},	
		["Base.Sledgehammer2"] = {
			["height"] = 5,
			["width"] = 2,
			["maxStackSize"] = 1,
		},	

		-- Axes
		["Base.WoodAxe"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["Base.Axe"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["Base.HandAxe"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["Base.PickAxe"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},		
		["SOMW.UniAxe"] = {
			["height"] = 3,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["SOMW.ShovelAxe"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["SOMW.Shovel2Axe"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["SOMW.ShovelSpear"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 4,
		},
		["SOMW.Shovel2Spear"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 4,
		},	
		["SOMW.EntrenchingShovel"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.CampingHatchet"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.AxeHammer"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.IceAxe"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},

		-- Crafted Spears
		["Base.GardenFork"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["Base.SpearCrafted"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] 	= 4,
		},
		["Base.WoodenLance"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 4,
		},		
		["SOMW.SpearCampyKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.SpearMilitaryKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.SpearCombatKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.SpearSharpTrowel"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.SpearGardenShearBlade"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["Base.SpearMachete"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},			
		["SOMW.SpearKukri"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.SpearMilitaryMachete"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		

		-- Plank Spears
		["SOMW.PlankSpear"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 4,
		},	
		["SOMW.PlankSpearBreadKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearHandFork"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearScrewdriver"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearHuntingKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearIcePick"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},

		["SOMW.PlankSpearCampyKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearMilitaryKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearCombatKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearSharpTrowel"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearGardenShearBlade"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 2,
		},
		["SOMW.PlankSpearMachete"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.PlankSpearKukri"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.PlankSpearMilitaryMachete"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		
		-- Knives
		["SOMW.MilitaryKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.CombatKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["SOMW.CampyKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.HandFile"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.SharpTrowel"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["SOMW.ButterflyKnife"] = {
			["height"] = 1,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["Base.HuntingKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["Base.BreadKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		
		["Base.Katana"] = {
			["height"] = 4,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
				
		["Base.Machete"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["SOMW.MilitaryMachete"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["SOMW.HookMachete"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},			
		["SOMW.Kukri"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.GardenScythe"] = {
			["height"] = 4,
			["width"] = 2,
			["maxStackSize"] = 1,
		},
		["SOMW.GardenShearBlade"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["SOMW.GardenShears"] = {
			["height"] = 2,
			["width"] = 2,
			["maxStackSize"] = 1,
		},		



--	BushCraft - Tools Balance
		["BCGTools.SplittingAxe"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["BCGTools.HandHatchet"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["BCGTools.RancherMachete"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["BCGTools.CheapSurvivalKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},		
		["BCGTools.SpearCheapSurvivalKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 1,
		},			
		["BCGTools.SurvivalKnife"] = {
			["height"] = 2,
			["width"] = 1,
			["maxStackSize"] = 1,
		},	
		["BCGTools.SpearSurvivalKnife"] = {
			["height"] = 5,
			["width"] = 1,
			["maxStackSize"] = 1,
		},			
		["BCGTools.KukriMachete"] = {
			["height"] = 3,
			["width"] = 1,
			["maxStackSize"] = 1,
		},
		["BCGTools.SpearKukriMachete"] = {
			["height"] = 6,
			["width"] = 1,
			["maxStackSize"] = 1,
		},


		
	}

	TetrisItemData.registerItemDefinitions(itemPack)
--	TetrisContainerData.registerContainerDefinitions(containerPack)
end)



end