

if getActivatedMods():contains("ScrapWeapons(new version)") or getActivatedMods():contains("ScrapWeapons") or getActivatedMods():contains("ScrapWeapons(CEC)") then
--||| Scrap Weapons |||---

-- BLUNTS

-- ScrapClub
SOMWAdjuster("SWeapons.ScrapClub","Weight", 1.0); -- 0.4
SOMWAdjuster("SWeapons.ScrapClub","MinDamage", 0.55); -- 0.75
SOMWAdjuster("SWeapons.ScrapClub","MaxDamage", 1.1); -- 1.5
SOMWAdjuster("SWeapons.ScrapClub","ConditionMax", 10);
SOMWAdjuster("SWeapons.ScrapClub","ConditionLowerChanceOneIn", 26);
SOMWAdjuster("SWeapons.ScrapClub","CritDmgMultiplier", 2); -- 4

-- SalvagedClub 
SOMWAdjuster("SWeapons.ScrapClub","Weight", 1.4); -- 0.4
SOMWAdjuster("SWeapons.ScrapClub","MinDamage", 0.55); -- 0.75
SOMWAdjuster("SWeapons.ScrapClub","MaxDamage", 1.1); -- 1.5
SOMWAdjuster("SWeapons.ScrapClub","ConditionMax", 10);
SOMWAdjuster("SWeapons.ScrapClub","ConditionLowerChanceOneIn", 40);
SOMWAdjuster("SWeapons.ScrapClub","CritDmgMultiplier", 2); -- 4


-- SalvagedCrowbar
SOMWAdjuster("SWeapons.SalvagedCrowbar","Weight", 2.2); -- 0.4
SOMWAdjuster("SWeapons.SalvagedCrowbar","MinDamage", 0.6); -- 0.75
SOMWAdjuster("SWeapons.SalvagedCrowbar","MaxDamage", 1.2); -- 1.5
SOMWAdjuster("SWeapons.SalvagedCrowbar","CriticalChance", 30); -- 40
SOMWAdjuster("SWeapons.SalvagedCrowbar","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.SalvagedCrowbar","DoorDamage", 12); -- 1

-- BoltBat
SOMWAdjuster("SWeapons.BoltBat","Weight", 1.5); -- 0.4
SOMWAdjuster("SWeapons.BoltBat","MinDamage", 0.65); -- 0.75
SOMWAdjuster("SWeapons.BoltBat","MaxDamage", 1.3); -- 1.5
SOMWAdjuster("SWeapons.BoltBat","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.BoltBat","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.ChainBat","ConditionMax", 10);
SOMWAdjuster("SWeapons.ChainBat","ConditionLowerChanceOneIn", 38);

-- ChainBat
SOMWAdjuster("SWeapons.ChainBat","Weight", 1.6); -- 0.4
SOMWAdjuster("SWeapons.ChainBat","MinDamage", 0.725); -- 0.75
SOMWAdjuster("SWeapons.ChainBat","MaxDamage", 1.45); -- 1.5
SOMWAdjuster("SWeapons.ChainBat","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.ChainBat","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.ChainBat","ConditionMax", 10);
SOMWAdjuster("SWeapons.ChainBat","ConditionLowerChanceOneIn", 40);

-- WireBat
SOMWAdjuster("SWeapons.WireBat","Weight", 1.5); -- 0.4
SOMWAdjuster("SWeapons.WireBat","MinDamage", 0.65); -- 0.75
SOMWAdjuster("SWeapons.WireBat","MaxDamage", 1.3); -- 1.5
SOMWAdjuster("SWeapons.WireBat","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.WireBat","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.WireBat","ConditionMax", 10);
SOMWAdjuster("SWeapons.WireBat","ConditionLowerChanceOneIn", 36);

-- SalvagedPipe
SOMWAdjuster("SWeapons.SalvagedPipe","Weight", 2.6); -- 0.4
SOMWAdjuster("SWeapons.SalvagedPipe","MinDamage", 0.8); -- 0.75
SOMWAdjuster("SWeapons.SalvagedPipe","MaxDamage", 1.6); -- 1.5
SOMWAdjuster("SWeapons.SalvagedPipe","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.SalvagedPipe","CritDmgMultiplier", 2); -- 4

-- TinCanClub
SOMWAdjuster("SWeapons.TinCanClub","Weight", 1.5); -- 0.4
SOMWAdjuster("SWeapons.TinCanClub","MinDamage", 0.75); -- 0.75
SOMWAdjuster("SWeapons.TinCanClub","MaxDamage", 1.5); -- 1.5
SOMWAdjuster("SWeapons.TinCanClub","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.TinCanClub","CritDmgMultiplier", 2.2); -- 4

--SalvagedSledgehammer
SOMWAdjuster("SWeapons.SalvagedSledgehammer","AlwaysKnockdown", "FALSE"); -- No perma stuns
SOMWAdjuster("SWeapons.SalvagedSledgehammer","CantAttackWithLowestEndurance", "FALSE"); -- Now always can do damage
SOMWAdjuster("SWeapons.SalvagedSledgehammer","Weight", 5.8);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","MinDamage", 1.8);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","MaxDamage", 3.6);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","MinRange", 0.7);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","MaxRange", 1.35);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","BaseSpeed", 0.9);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","ConditionMax", 10);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","ConditionLowerChanceOneIn", 22);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","CriticalChance", 60);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("SWeapons.SalvagedSledgehammer","DoorDamage", 50);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","TreeDamage", 10);
SOMWAdjuster("SWeapons.SalvagedSledgehammer","EnduranceMod", 2);

-- GearMace
SOMWAdjuster("SWeapons.GearMace","AlwaysKnockdown", "FALSE"); -- No perma stuns
SOMWAdjuster("SWeapons.GearMace","CantAttackWithLowestEndurance", "FALSE"); -- Now always can do damage
SOMWAdjuster("SWeapons.GearMace","Weight", 6.4);
SOMWAdjuster("SWeapons.GearMace","MinDamage", 1.8);
SOMWAdjuster("SWeapons.GearMace","MaxDamage", 3.6);
SOMWAdjuster("SWeapons.GearMace","MinRange", 0.7);
SOMWAdjuster("SWeapons.GearMace","MaxRange", 1.35);
SOMWAdjuster("SWeapons.GearMace","BaseSpeed", 0.9);
SOMWAdjuster("SWeapons.GearMace","ConditionMax", 14);
SOMWAdjuster("SWeapons.GearMace","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("SWeapons.GearMace","CriticalChance", 60);
SOMWAdjuster("SWeapons.GearMace","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("SWeapons.GearMace","DoorDamage", 50);
SOMWAdjuster("SWeapons.GearMace","TreeDamage", 10);
SOMWAdjuster("SWeapons.GearMace","EnduranceMod", 2);

-- Micromaul
SOMWAdjuster("SWeapons.Micromaul","AlwaysKnockdown", "FALSE"); -- No perma stuns
SOMWAdjuster("SWeapons.Micromaul","CantAttackWithLowestEndurance", "FALSE"); -- Now always can do damage
SOMWAdjuster("SWeapons.Micromaul","Weight", 7.6);
SOMWAdjuster("SWeapons.Micromaul","MinDamage", 2.5);
SOMWAdjuster("SWeapons.Micromaul","MaxDamage", 5.0);
SOMWAdjuster("SWeapons.Micromaul","MinRange", 0.7);
SOMWAdjuster("SWeapons.Micromaul","MaxRange", 1.6);
SOMWAdjuster("SWeapons.Micromaul","BaseSpeed", 0.9);
SOMWAdjuster("SWeapons.Micromaul","ConditionMax", 16);
SOMWAdjuster("SWeapons.Micromaul","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("SWeapons.Micromaul","CriticalChance", 60);
SOMWAdjuster("SWeapons.Micromaul","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("SWeapons.Micromaul","DoorDamage", 50);
SOMWAdjuster("SWeapons.Micromaul","TreeDamage", 10);
SOMWAdjuster("SWeapons.Micromaul","EnduranceMod", 2);


-- AXES

-- ScrapPickaxe
SOMWAdjuster("SWeapons.ScrapPickaxe","Weight", 1.6);
SOMWAdjuster("SWeapons.ScrapPickaxe","MinDamage", 0.7);
SOMWAdjuster("SWeapons.ScrapPickaxe","MaxDamage", 1.4);
SOMWAdjuster("SWeapons.ScrapPickaxe","MinRange", 0.61);
SOMWAdjuster("SWeapons.ScrapPickaxe","MaxRange", 1.1);
SOMWAdjuster("SWeapons.ScrapPickaxe","BaseSpeed", 0.8);
SOMWAdjuster("SWeapons.ScrapPickaxe","ConditionMax", 10);
SOMWAdjuster("SWeapons.ScrapPickaxe","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("SWeapons.ScrapPickaxe","CriticalChance", 10);
SOMWAdjuster("SWeapons.ScrapPickaxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.ScrapPickaxe","DoorDamage", 15);
SOMWAdjuster("SWeapons.ScrapPickaxe","TreeDamage", 2);
SOMWAdjuster("SWeapons.ScrapPickaxe","EnduranceMod", 1);

-- BigScrapPickaxe
SOMWAdjuster("SWeapons.BigScrapPickaxe","Weight", 2.8);
SOMWAdjuster("SWeapons.BigScrapPickaxe","MinDamage", 0.9);
SOMWAdjuster("SWeapons.BigScrapPickaxe","MaxDamage", 1.8);
SOMWAdjuster("SWeapons.BigScrapPickaxe","MinRange", 0.61);
SOMWAdjuster("SWeapons.BigScrapPickaxe","MaxRange", 1.3);
SOMWAdjuster("SWeapons.BigScrapPickaxe","BaseSpeed", 0.7);
SOMWAdjuster("SWeapons.BigScrapPickaxe","ConditionMax", 10);
SOMWAdjuster("SWeapons.BigScrapPickaxe","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("SWeapons.BigScrapPickaxe","CriticalChance", 15);
SOMWAdjuster("SWeapons.BigScrapPickaxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.BigScrapPickaxe","DoorDamage", 20);
SOMWAdjuster("SWeapons.BigScrapPickaxe","TreeDamage", 2);
SOMWAdjuster("SWeapons.BigScrapPickaxe","EnduranceMod", 1);

-- PipewithScissors
SOMWAdjuster("SWeapons.PipewithScissors","Weight", 1.6);
SOMWAdjuster("SWeapons.PipewithScissors","MinDamage", 0.75);
SOMWAdjuster("SWeapons.PipewithScissors","MaxDamage", 1.5);
SOMWAdjuster("SWeapons.PipewithScissors","MinRange", 0.61);
SOMWAdjuster("SWeapons.PipewithScissors","MaxRange", 1.1);
SOMWAdjuster("SWeapons.PipewithScissors","BaseSpeed", 0.9);
SOMWAdjuster("SWeapons.PipewithScissors","ConditionMax", 10);
SOMWAdjuster("SWeapons.PipewithScissors","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("SWeapons.PipewithScissors","CriticalChance", 5);
SOMWAdjuster("SWeapons.PipewithScissors","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.PipewithScissors","DoorDamage", 10);
SOMWAdjuster("SWeapons.PipewithScissors","TreeDamage", 1);
SOMWAdjuster("SWeapons.PipewithScissors","EnduranceMod", 1);

-- TireIronAxe
SOMWAdjuster("SWeapons.TireIronAxe","Weight", 2.2);
SOMWAdjuster("SWeapons.TireIronAxe","MinDamage", 0.8);
SOMWAdjuster("SWeapons.TireIronAxe","MaxDamage", 1.6);
SOMWAdjuster("SWeapons.TireIronAxe","MinRange", 0.61);
SOMWAdjuster("SWeapons.TireIronAxe","MaxRange", 1.1);
SOMWAdjuster("SWeapons.TireIronAxe","BaseSpeed", 1.0);
SOMWAdjuster("SWeapons.TireIronAxe","ConditionMax", 16);
SOMWAdjuster("SWeapons.TireIronAxe","ConditionLowerChanceOneIn", 14);
SOMWAdjuster("SWeapons.TireIronAxe","CriticalChance", 5);
SOMWAdjuster("SWeapons.TireIronAxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.TireIronAxe","DoorDamage", 20);
SOMWAdjuster("SWeapons.TireIronAxe","TreeDamage", 20);
SOMWAdjuster("SWeapons.TireIronAxe","EnduranceMod", 1);

-- SalvagedPipeWrench
SOMWAdjuster("SWeapons.SalvagedPipeWrench","Weight", 2.0);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","MinDamage", 0.8);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","MaxDamage", 1.6);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","MinRange", 0.61);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","MaxRange", 1.2);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","BaseSpeed", 1.0);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","ConditionMax", 12);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","CriticalChance", 10);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.SalvagedPipeWrench","DoorDamage", 20);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","TreeDamage", 20);
SOMWAdjuster("SWeapons.SalvagedPipeWrench","EnduranceMod", 1);

-- SalvagedClimbingAxe
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","Weight", 1.4);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","MinDamage", 0.6);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","MaxDamage", 1.2);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","MinRange", 0.61);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","MaxRange", 1.0);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","BaseSpeed", 1.1);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","ConditionMax", 12);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","CriticalChance", 15);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","DoorDamage", 15);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","TreeDamage", 1);
SOMWAdjuster("SWeapons.SalvagedClimbingAxe","EnduranceMod", 1);

-- SharpenedStopSign
SOMWAdjuster("SWeapons.SharpenedStopSign","Weight", 4.0);
SOMWAdjuster("SWeapons.SharpenedStopSign","MinDamage", 1.8);
SOMWAdjuster("SWeapons.SharpenedStopSign","MaxDamage", 3.6);
SOMWAdjuster("SWeapons.SharpenedStopSign","MinRange", 0.61);
SOMWAdjuster("SWeapons.SharpenedStopSign","MaxRange", 1.6);
SOMWAdjuster("SWeapons.SharpenedStopSign","BaseSpeed", 1.0);
SOMWAdjuster("SWeapons.SharpenedStopSign","ConditionMax", 10);
SOMWAdjuster("SWeapons.SharpenedStopSign","ConditionLowerChanceOneIn", 6);
SOMWAdjuster("SWeapons.SharpenedStopSign","CriticalChance", 30);
SOMWAdjuster("SWeapons.SharpenedStopSign","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.SharpenedStopSign","DoorDamage", 30);
SOMWAdjuster("SWeapons.SharpenedStopSign","TreeDamage", 30);
SOMWAdjuster("SWeapons.SharpenedStopSign","EnduranceMod", 1.5);

-- HugeScrapPickaxe
SOMWAdjuster("SWeapons.HugeScrapPickaxe","Weight", 3.8);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","MinDamage", 2.0);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","MaxDamage", 4.0);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","MinRange", 0.61);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","MaxRange", 1.4);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","BaseSpeed", 0.9);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","ConditionMax", 10);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","ConditionLowerChanceOneIn", 14);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","CriticalChance", 35);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("SWeapons.HugeScrapPickaxe","DoorDamage", 40);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","TreeDamage", 10);
SOMWAdjuster("SWeapons.HugeScrapPickaxe","EnduranceMod", 1.5);


-- SHORT BLADE AND SPEARS

-- Sharpened Screwdriver
SOMWAdjuster("SWeapons.SharpenedScrewdriver","Weight", 0.3); -- 0.4
SOMWAdjuster("SWeapons.SharpenedScrewdriver","MinDamage", 0.4); -- 0.3
SOMWAdjuster("SWeapons.SharpenedScrewdriver","MaxDamage", 0.8); -- 0.7
SOMWAdjuster("SWeapons.SharpenedScrewdriver","MinRange", 0.61); -- 0.81
SOMWAdjuster("SWeapons.SharpenedScrewdriver","MaxRange", 0.88); -- 0.85
SOMWAdjuster("SWeapons.SharpenedScrewdriver","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("SWeapons.SharpenedScrewdriver","ConditionMax", 6); -- 13
SOMWAdjuster("SWeapons.SharpenedScrewdriver","ConditionLowerChanceOneIn", 18); -- 4
SOMWAdjuster("SWeapons.SharpenedScrewdriver","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.SharpenedScrewdriver","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.SharpenedScrewdriver","DoorDamage", 1); -- 1
SOMWAdjuster("SWeapons.SharpenedScrewdriver","TreeDamage", 1); -- 1
SOMWAdjuster("SWeapons.SharpenedScrewdriver","EnduranceMod", 1.0); -- 0.5
-- Spear with Sharpened Screwdriver
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","Weight", 1.3); -- 2.1
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","MinDamage", 0.8); -- 1.2
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","MaxDamage", 1.6); -- 1.6
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","MinRange", 0.74); -- 0.98
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","MaxRange", 1.48); -- 1.45
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","ConditionMax", 6); -- 7
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","ConditionLowerChanceOneIn", 18); -- 4
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","CriticalChance", 15); -- 30
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","DoorDamage", 2); -- 7
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","TreeDamage", 1); -- 0
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","KnockdownMod", 0); -- 0
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","EnduranceMod", 1.25); -- 0.5

-- Glass Shiv
SOMWAdjuster("SWeapons.GlassShiv","Weight", 0.2); -- 0.4
SOMWAdjuster("SWeapons.GlassShiv","MinDamage", 0.25); -- 0.3
SOMWAdjuster("SWeapons.GlassShiv","MaxDamage", 0.5); -- 0.7
SOMWAdjuster("SWeapons.GlassShiv","MinRange", 0.61); -- 0.81
SOMWAdjuster("SWeapons.GlassShiv","MaxRange", 0.85); -- 0.85
SOMWAdjuster("SWeapons.GlassShiv","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("SWeapons.GlassShiv","ConditionMax", 6); -- 13
SOMWAdjuster("SWeapons.GlassShiv","ConditionLowerChanceOneIn", 3); -- 2
SOMWAdjuster("SWeapons.GlassShiv","CriticalChance", 20); -- 40
SOMWAdjuster("SWeapons.GlassShiv","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.GlassShiv","DoorDamage", 1); -- 1
SOMWAdjuster("SWeapons.GlassShiv","TreeDamage", 1); -- 1
SOMWAdjuster("SWeapons.GlassShiv","EnduranceMod", 1.0); -- 0.5

-- Scrap Shiv
SOMWAdjuster("SWeapons.ScrapShiv","Weight", 0.4); -- 0.3
SOMWAdjuster("SWeapons.ScrapShiv","MinDamage", 0.45); -- 0.4
SOMWAdjuster("SWeapons.ScrapShiv","MaxDamage", 0.9); -- 0.8
SOMWAdjuster("SWeapons.ScrapShiv","MinRange", 0.61); -- 0.81
SOMWAdjuster("SWeapons.ScrapShiv","MaxRange", 0.88); -- 0.85
SOMWAdjuster("SWeapons.ScrapShiv","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("SWeapons.ScrapShiv","ConditionMax", 8); -- 10
SOMWAdjuster("SWeapons.ScrapShiv","ConditionLowerChanceOneIn", 12); -- 4
SOMWAdjuster("SWeapons.ScrapShiv","CriticalChance", 40); -- 40
SOMWAdjuster("SWeapons.ScrapShiv","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.ScrapShiv","DoorDamage", 1); -- 1
SOMWAdjuster("SWeapons.ScrapShiv","TreeDamage", 1); -- 1
SOMWAdjuster("SWeapons.ScrapShiv","EnduranceMod", 1.0); -- 0.5
-- Spear with Scrap Shiv
SOMWAdjuster("SWeapons.SpearScrapShiv","Weight", 1.4); -- 2.1
SOMWAdjuster("SWeapons.SpearScrapShiv","MinDamage", 0.825); -- 1.2
SOMWAdjuster("SWeapons.SpearScrapShiv","MaxDamage", 1.65); -- 1.6
SOMWAdjuster("SWeapons.SpearScrapShiv","MinRange", 0.74); -- 0.98
SOMWAdjuster("SWeapons.SpearScrapShiv","MaxRange", 1.48); -- 1.45
SOMWAdjuster("SWeapons.SpearScrapShiv","BaseSpeed", 0.97); -- 1.0
SOMWAdjuster("SWeapons.SpearScrapShiv","ConditionMax", 8); -- 7
SOMWAdjuster("SWeapons.SpearScrapShiv","ConditionLowerChanceOneIn", 12); -- 4
SOMWAdjuster("SWeapons.SpearScrapShiv","CriticalChance", 15); -- 30
SOMWAdjuster("SWeapons.SpearScrapShiv","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("SWeapons.SpearScrapShiv","DoorDamage", 2); -- 7
SOMWAdjuster("SWeapons.SpearScrapShiv","TreeDamage", 1); -- 0
SOMWAdjuster("SWeapons.SpearScrapShiv","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SpearScrapShiv","KnockdownMod", 0); -- 0
SOMWAdjuster("SWeapons.SpearScrapShiv","EnduranceMod", 1.25); -- 0.5

-- Salvaged Shiv
SOMWAdjuster("SWeapons.SalvagedShiv","Weight", 0.5); -- 0.3
SOMWAdjuster("SWeapons.SalvagedShiv","MinDamage", 0.5); -- 0.4
SOMWAdjuster("SWeapons.SalvagedShiv","MaxDamage", 1.0); -- 1.8
SOMWAdjuster("SWeapons.SalvagedShiv","MinRange", 0.61); -- 0.81
SOMWAdjuster("SWeapons.SalvagedShiv","MaxRange", 0.90); -- 0.9
SOMWAdjuster("SWeapons.SalvagedShiv","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("SWeapons.SalvagedShiv","ConditionMax", 10); -- 30
SOMWAdjuster("SWeapons.SalvagedShiv","ConditionLowerChanceOneIn", 18); -- 6
SOMWAdjuster("SWeapons.SalvagedShiv","CriticalChance", 60); -- 40
SOMWAdjuster("SWeapons.SalvagedShiv","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.SalvagedShiv","DoorDamage", 3); -- 1
SOMWAdjuster("SWeapons.SalvagedShiv","TreeDamage", 3); -- 1
SOMWAdjuster("SWeapons.SalvagedShiv","EnduranceMod", 1.0); -- 0.5

-- Salvaged Shiv Swing
SOMWAdjuster("SWeapons.SalvagedShivO","Weight", 0.5); -- 0.3
SOMWAdjuster("SWeapons.SalvagedShivO","MinDamage", 0.5); -- 0.9
SOMWAdjuster("SWeapons.SalvagedShivO","MaxDamage", 1.0); -- 1.5
SOMWAdjuster("SWeapons.SalvagedShivO","MinRange", 0.61); -- 0.81
SOMWAdjuster("SWeapons.SalvagedShivO","MaxRange", 0.90); -- 0.9
SOMWAdjuster("SWeapons.SalvagedShivO","BaseSpeed", 1.2); -- 1.0
SOMWAdjuster("SWeapons.SalvagedShivO","ConditionMax", 10); -- 10
SOMWAdjuster("SWeapons.SalvagedShivO","ConditionLowerChanceOneIn", 18); -- 6
SOMWAdjuster("SWeapons.SalvagedShivO","CriticalChance", 20); -- 30
SOMWAdjuster("SWeapons.SalvagedShivO","CritDmgMultiplier", 3); -- 4
SOMWAdjuster("SWeapons.SalvagedShivO","DoorDamage", 3); -- 1
SOMWAdjuster("SWeapons.SalvagedShivO","TreeDamage", 3); -- 1
SOMWAdjuster("SWeapons.SalvagedShivO","EnduranceMod", 1.0); -- 0.5

-- Scrap Machete
SOMWAdjuster("SWeapons.ScrapMachete","AttachmentType", "LongBlade");
SOMWAdjuster("SWeapons.ScrapMachete","Weight", 1.2); -- 1.5
SOMWAdjuster("SWeapons.ScrapMachete","MinDamage", 0.7); -- 1.0
SOMWAdjuster("SWeapons.ScrapMachete","MaxDamage", 1.4); -- 1.8
SOMWAdjuster("SWeapons.ScrapMachete","MaxRange", 1.20); -- 1.20
SOMWAdjuster("SWeapons.ScrapMachete","BaseSpeed", 0.95); -- 0.9
SOMWAdjuster("SWeapons.ScrapMachete","ConditionMax", 8); -- 12
SOMWAdjuster("SWeapons.ScrapMachete","ConditionLowerChanceOneIn", 10); -- 5
SOMWAdjuster("SWeapons.ScrapMachete","CriticalChance", 15); -- 20
SOMWAdjuster("SWeapons.ScrapMachete","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.ScrapMachete","DoorDamage", 8); -- 10
SOMWAdjuster("SWeapons.ScrapMachete","TreeDamage", 8); -- 10
SOMWAdjuster("SWeapons.ScrapMachete","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.ScrapMachete","KnockdownMod", 2); -- 2
SOMWAdjuster("SWeapons.ScrapMachete","EnduranceMod", 1.25); -- 0.5
-- Spear with Scrap Machete
SOMWAdjuster("SWeapons.SpearScrapMachete","Weight", 2.2); -- 3.7
SOMWAdjuster("SWeapons.SpearScrapMachete","MinDamage", 0.95); -- 1.3
SOMWAdjuster("SWeapons.SpearScrapMachete","MaxDamage", 1.9); -- 2.0
SOMWAdjuster("SWeapons.SpearScrapMachete","MinRange", 0.74); -- 0.98
SOMWAdjuster("SWeapons.SpearScrapMachete","MaxRange", 1.55); -- 1.55
SOMWAdjuster("SWeapons.SpearScrapMachete","BaseSpeed", 0.85); -- 0.9
SOMWAdjuster("SWeapons.SpearScrapMachete","ConditionMax", 8); -- 12
SOMWAdjuster("SWeapons.SpearScrapMachete","ConditionLowerChanceOneIn", 10); -- 10
SOMWAdjuster("SWeapons.SpearScrapMachete","CriticalChance", 15); -- 30
SOMWAdjuster("SWeapons.SpearScrapMachete","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("SWeapons.SpearScrapMachete","DoorDamage", 9); -- 2
SOMWAdjuster("SWeapons.SpearScrapMachete","TreeDamage", 8); -- 10
SOMWAdjuster("SWeapons.SpearScrapMachete","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SpearScrapMachete","KnockdownMod", 0); -- 0
SOMWAdjuster("SWeapons.SpearScrapMachete","EnduranceMod", 1.25); -- 0.5

-- Salvaged Machete
SOMWAdjuster("SWeapons.SalvagedMachete","AttachmentType", "LongBlade");
SOMWAdjuster("SWeapons.SalvagedMachete","Weight", 1.0); -- 2.0
SOMWAdjuster("SWeapons.SalvagedMachete","MinDamage", 1.05); -- 1.3
SOMWAdjuster("SWeapons.SalvagedMachete","MaxDamage", 2.1); -- 2.3
SOMWAdjuster("SWeapons.SalvagedMachete","MaxRange", 1.20); -- 1.20
SOMWAdjuster("SWeapons.SalvagedMachete","BaseSpeed", 0.95); -- 0.9
SOMWAdjuster("SWeapons.SalvagedMachete","ConditionMax", 12); -- 16
SOMWAdjuster("SWeapons.SalvagedMachete","ConditionLowerChanceOneIn", 12); -- 6
SOMWAdjuster("SWeapons.SalvagedMachete","CriticalChance", 20); -- 20
SOMWAdjuster("SWeapons.SalvagedMachete","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.SalvagedMachete","DoorDamage", 20); -- 10
SOMWAdjuster("SWeapons.SalvagedMachete","TreeDamage", 15); -- 20
SOMWAdjuster("SWeapons.SalvagedMachete","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SalvagedMachete","KnockdownMod", 2); -- 2
SOMWAdjuster("SWeapons.SalvagedMachete","EnduranceMod", 1.25); -- 0.5

-- Scrap Sword
SOMWAdjuster("SWeapons.ScrapSword","Weight", 1.2); -- 2.2
SOMWAdjuster("SWeapons.ScrapSword","MinDamage", 1.05); -- 1.4
SOMWAdjuster("SWeapons.ScrapSword","MaxDamage", 2.1); -- 2.5
SOMWAdjuster("SWeapons.ScrapSword","MaxRange", 1.45); -- 1.5
SOMWAdjuster("SWeapons.ScrapSword","BaseSpeed", 0.8); -- 0.8
SOMWAdjuster("SWeapons.ScrapSword","ConditionMax", 8); -- 15
SOMWAdjuster("SWeapons.ScrapSword","ConditionLowerChanceOneIn", 10); -- 5
SOMWAdjuster("SWeapons.ScrapSword","CriticalChance", 15); -- 20
SOMWAdjuster("SWeapons.ScrapSword","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.ScrapSword","DoorDamage", 8); -- 10
SOMWAdjuster("SWeapons.ScrapSword","TreeDamage", 8); -- 8
SOMWAdjuster("SWeapons.ScrapSword","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.ScrapSword","KnockdownMod", 2); -- 2
SOMWAdjuster("SWeapons.ScrapSword","EnduranceMod", 1.25); -- 0.5

-- Scrap Blade
SOMWAdjuster("SWeapons.ScrapBlade","AttachmentType", "LongBlade");
SOMWAdjuster("SWeapons.ScrapBlade","Weight", 2.0); -- 2.0
SOMWAdjuster("SWeapons.ScrapBlade","MinDamage", 0.9); -- 1.2
SOMWAdjuster("SWeapons.ScrapBlade","MaxDamage", 1.8); -- 2.0
SOMWAdjuster("SWeapons.ScrapBlade","MaxRange", 1.45); -- 1.5
SOMWAdjuster("SWeapons.ScrapBlade","BaseSpeed", 0.9); -- 0.8
SOMWAdjuster("SWeapons.ScrapBlade","ConditionMax", 10); -- 10
SOMWAdjuster("SWeapons.ScrapBlade","ConditionLowerChanceOneIn", 10); -- 10
SOMWAdjuster("SWeapons.ScrapBlade","CriticalChance", 15); -- 20
SOMWAdjuster("SWeapons.ScrapBlade","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.ScrapBlade","DoorDamage", 8); -- 10
SOMWAdjuster("SWeapons.ScrapBlade","TreeDamage", 8); -- 10
SOMWAdjuster("SWeapons.ScrapBlade","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.ScrapBlade","KnockdownMod", 2); -- 2

-- Salvaged Blade
SOMWAdjuster("SWeapons.SalvagedBlade","Weight", 1.6); -- 1.7
SOMWAdjuster("SWeapons.SalvagedBlade","MinDamage", 1.5); -- 3.0
SOMWAdjuster("SWeapons.SalvagedBlade","MaxDamage", 3.0); -- 5.0
SOMWAdjuster("SWeapons.SalvagedBlade","MaxRange", 1.45); -- 1.5
SOMWAdjuster("SWeapons.SalvagedBlade","BaseSpeed", 1.1); -- 0.8
SOMWAdjuster("SWeapons.SalvagedBlade","ConditionMax", 14); -- 35
SOMWAdjuster("SWeapons.SalvagedBlade","ConditionLowerChanceOneIn", 10); -- 4
SOMWAdjuster("SWeapons.SalvagedBlade","CriticalChance", 15); -- 20
SOMWAdjuster("SWeapons.SalvagedBlade","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.SalvagedBlade","DoorDamage", 10); -- 10
SOMWAdjuster("SWeapons.SalvagedBlade","TreeDamage", 10); -- 8
SOMWAdjuster("SWeapons.SalvagedBlade","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SalvagedBlade","KnockdownMod", 2); -- 2

-- SalvagedCleaver
SOMWAdjuster("SWeapons.SalvagedCleaver","CantAttackWithLowestEndurance", "FALSE"); 
SOMWAdjuster("SWeapons.SalvagedCleaver","Weight", 3.8); -- 4.0
SOMWAdjuster("SWeapons.SalvagedCleaver","MinDamage", 2.5); -- 5
SOMWAdjuster("SWeapons.SalvagedCleaver","MaxDamage", 5.0); -- 10
SOMWAdjuster("SWeapons.SalvagedCleaver","MaxRange", 1.55); -- 2.0
SOMWAdjuster("SWeapons.SalvagedCleaver","BaseSpeed", 1.0); -- 1.0
SOMWAdjuster("SWeapons.SalvagedCleaver","ConditionMax", 12); -- 20
SOMWAdjuster("SWeapons.SalvagedCleaver","ConditionLowerChanceOneIn", 10); -- 6
SOMWAdjuster("SWeapons.SalvagedCleaver","CriticalChance", 15); -- 20
SOMWAdjuster("SWeapons.SalvagedCleaver","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.SalvagedCleaver","DoorDamage", 20); -- 10
SOMWAdjuster("SWeapons.SalvagedCleaver","TreeDamage", 20); -- 10
SOMWAdjuster("SWeapons.SalvagedCleaver","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SalvagedCleaver","KnockdownMod", 2); -- 2

-- Salvaged Nightstick
--SOMWAdjuster("SWeapons.SalvagedNightstick","AttachmentType", "Nightstick");
SOMWAdjuster("SWeapons.SalvagedNightstick","Weight", 1.4); -- 1.5
SOMWAdjuster("SWeapons.SalvagedNightstick","MinDamage", 0.8); -- 1.0
SOMWAdjuster("SWeapons.SalvagedNightstick","MaxDamage", 1.6); -- 1.8
SOMWAdjuster("SWeapons.SalvagedNightstick","MaxRange", 1.23); -- 1.2
SOMWAdjuster("SWeapons.SalvagedNightstick","BaseSpeed", 1.1); -- 1.2
SOMWAdjuster("SWeapons.SalvagedNightstick","ConditionMax", 10); -- 24
SOMWAdjuster("SWeapons.SalvagedNightstick","ConditionLowerChanceOneIn", 16); -- 5
SOMWAdjuster("SWeapons.SalvagedNightstick","CriticalChance", 15); -- 20
SOMWAdjuster("SWeapons.SalvagedNightstick","CritDmgMultiplier", 3); -- 5
SOMWAdjuster("SWeapons.SalvagedNightstick","DoorDamage", 8); -- 8
SOMWAdjuster("SWeapons.SalvagedNightstick","TreeDamage", 4); -- 10
SOMWAdjuster("SWeapons.SalvagedNightstick","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SalvagedNightstick","KnockdownMod", 2); -- 2

-- Scrap Spear
SOMWAdjuster("SWeapons.ScrapSpear","Weight", 1.6); -- 2.5
SOMWAdjuster("SWeapons.ScrapSpear","MinDamage", 0.75); -- 1.3
SOMWAdjuster("SWeapons.ScrapSpear","MaxDamage", 1.5); -- 2.2
SOMWAdjuster("SWeapons.ScrapSpear","MinRange", 0.74); -- 0.98
SOMWAdjuster("SWeapons.ScrapSpear","MaxRange", 1.56); -- 1.55
SOMWAdjuster("SWeapons.ScrapSpear","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("SWeapons.ScrapSpear","ConditionMax", 10); -- 10
SOMWAdjuster("SWeapons.ScrapSpear","ConditionLowerChanceOneIn", 10); -- 8
SOMWAdjuster("SWeapons.ScrapSpear","CriticalChance", 10); -- 10
SOMWAdjuster("SWeapons.ScrapSpear","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.ScrapSpear","DoorDamage", 8); -- 10
SOMWAdjuster("SWeapons.ScrapSpear","TreeDamage", 8); -- 12
SOMWAdjuster("SWeapons.ScrapSpear","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.ScrapSpear","KnockdownMod", 0); -- 0
SOMWAdjuster("SWeapons.ScrapSpear","EnduranceMod", 1.25); -- 0.5

-- Salvaged Spear
SOMWAdjuster("SWeapons.SpearSalvaged","Weight", 1.8); -- 2.5
SOMWAdjuster("SWeapons.SpearSalvaged","MinDamage", 0.85); -- 2.3
SOMWAdjuster("SWeapons.SpearSalvaged","MaxDamage", 1.7); -- 3.2
SOMWAdjuster("SWeapons.SpearSalvaged","MinRange", 0.74); -- 0.61
SOMWAdjuster("SWeapons.SpearSalvaged","MaxRange", 1.54); -- 1.55
SOMWAdjuster("SWeapons.SpearSalvaged","BaseSpeed", 0.9); -- 0.9
SOMWAdjuster("SWeapons.SpearSalvaged","ConditionMax", 12); -- 15
SOMWAdjuster("SWeapons.SpearSalvaged","ConditionLowerChanceOneIn", 12); -- 10
SOMWAdjuster("SWeapons.SpearSalvaged","CriticalChance", 15); -- 10
SOMWAdjuster("SWeapons.SpearSalvaged","CritDmgMultiplier", 2); -- 4
SOMWAdjuster("SWeapons.SpearSalvaged","DoorDamage", 10); -- 10
SOMWAdjuster("SWeapons.SpearSalvaged","TreeDamage", 10); -- 12
SOMWAdjuster("SWeapons.SpearSalvaged","Knockback", 0.3); -- 0.3
SOMWAdjuster("SWeapons.SpearSalvaged","KnockdownMod", 0); -- 0
SOMWAdjuster("SWeapons.SpearSalvaged","EnduranceMod", 1.25); -- 0.5

-- SOUND EFFECTS FOR SCRAP WEAPONS --
-- Short Blade
SOMWAdjuster("SWeapons.SharpenedScrewdriver","ImpactSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.SharpenedScrewdriver","HitSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.SharpenedScrewdriver","HitFloorSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.SharpenedScrewdriver","DoorHitSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.SharpenedScrewdriver","SwingSound", "ScrewdriverSwing");

SOMWAdjuster("SWeapons.GlassShiv","ImpactSound", "SmashedBottleHit");
SOMWAdjuster("SWeapons.GlassShiv","HitSound", "SmashedBottleHit");
SOMWAdjuster("SWeapons.GlassShiv","HitFloorSound", "SmashedBottleHit");
SOMWAdjuster("SWeapons.GlassShiv","DoorHitSound", "SmashedBottleHit");
SOMWAdjuster("SWeapons.GlassShiv","SwingSound", "SmashedBottleSwing");

SOMWAdjuster("SWeapons.ScrapShiv","ImpactSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.ScrapShiv","HitSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.ScrapShiv","HitFloorSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.ScrapShiv","DoorHitSound", "ScrewdriverHit");
SOMWAdjuster("SWeapons.ScrapShiv","SwingSound", "ScrewdriverSwing");

SOMWAdjuster("SWeapons.SalvagedShiv","ImpactSound", "HuntingKnifeHit");
SOMWAdjuster("SWeapons.SalvagedShiv","HitSound", "HuntingKnifeHit");
SOMWAdjuster("SWeapons.SalvagedShiv","HitFloorSound", "HuntingKnifeHit");
SOMWAdjuster("SWeapons.SalvagedShiv","DoorHitSound", "HuntingKnifeHit");
SOMWAdjuster("SWeapons.SalvagedShiv","SwingSound", "HuntingKnifeSwing");

SOMWAdjuster("SWeapons.SalvagedShivO","ImpactSound", "MeatCleaverHit");
SOMWAdjuster("SWeapons.SalvagedShivO","HitSound", "MeatCleaverHit");
SOMWAdjuster("SWeapons.SalvagedShivO","HitFloorSound", "MeatCleaverHit");
SOMWAdjuster("SWeapons.SalvagedShivO","DoorHitSound", "MeatCleaverHit");
SOMWAdjuster("SWeapons.SalvagedShivO","SwingSound", "MeatCleaverSwing");

-- Long Blade
--SOMWAdjuster("SWeapons.SalvagedNightstick","ImpactSound", "MacheteHit");
SOMWAdjuster("SWeapons.SalvagedNightstick","HitSound", "KatanaHit");
SOMWAdjuster("SWeapons.SalvagedNightstick","HitFloorSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedNightstick","DoorHitSound", "MacheteHit");
SOMWAdjuster("SWeapons.SalvagedNightstick","SwingSound", "WoodAxeSwing");
	
SOMWAdjuster("SWeapons.ScrapMachete","ImpactSound", "MacheteHit");
SOMWAdjuster("SWeapons.ScrapMachete","HitSound", "MacheteHit");
SOMWAdjuster("SWeapons.ScrapMachete","HitFloorSound", "MacheteHit");
SOMWAdjuster("SWeapons.ScrapMachete","DoorHitSound", "MacheteHit");
--SOMWAdjuster("SWeapons.ScrapMachete","SwingSound", "MacheteSwing");

SOMWAdjuster("SWeapons.SalvagedMachete","ImpactSound", "MacheteHit");
SOMWAdjuster("SWeapons.SalvagedMachete","HitSound", "MacheteHit");
SOMWAdjuster("SWeapons.SalvagedMachete","HitFloorSound", "MacheteHit");
SOMWAdjuster("SWeapons.SalvagedMachete","DoorHitSound", "MacheteHit");
--SOMWAdjuster("SWeapons.SalvagedMachete","SwingSound", "MacheteSwing");

--SOMWAdjuster("SWeapons.ScrapSword","ImpactSound", "KatanaHit");
--SOMWAdjuster("SWeapons.ScrapSword","HitSound", "WoodAxeHit");
SOMWAdjuster("SWeapons.ScrapSword","HitFloorSound", "SWLongBladeHitSounds");
--SOMWAdjuster("SWeapons.ScrapSword","DoorHitSound", "KatanaHit");
--SOMWAdjuster("SWeapons.ScrapSword","SwingSound", "WoodAxeSwing");

--SOMWAdjuster("SWeapons.ScrapBlade","ImpactSound", "KatanaHit");
--SOMWAdjuster("SWeapons.ScrapBlade","HitSound", "KatanaHit");
SOMWAdjuster("SWeapons.ScrapBlade","HitFloorSound", "SWLongBladeHitSounds");
--SOMWAdjuster("SWeapons.ScrapBlade","DoorHitSound", "KatanaHit");
--SOMWAdjuster("SWeapons.ScrapBlade","SwingSound", "KatanaSwing");

--SOMWAdjuster("SWeapons.SalvagedBlade","ImpactSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedBlade","HitSound", "KatanaHit");
SOMWAdjuster("SWeapons.SalvagedBlade","HitFloorSound", "SWLongBladeHitSounds");
--SOMWAdjuster("SWeapons.SalvagedBlade","DoorHitSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedBlade","SwingSound", "KatanaSwing");

--SOMWAdjuster("SWeapons.SalvagedCleaver","ImpactSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedCleaver","HitSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedCleaver","HitFloorSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedCleaver","DoorHitSound", "KatanaHit");
--SOMWAdjuster("SWeapons.SalvagedCleaver","SwingSound", "KatanaSwing");

SOMWAdjuster("SWeapons.SalvagedCleaver","ImpactSound", "WoodAxeHit");
SOMWAdjuster("SWeapons.SalvagedCleaver","HitSound", "WoodAxeHit");
SOMWAdjuster("SWeapons.SalvagedCleaver","HitFloorSound", "WoodAxeHit");
SOMWAdjuster("SWeapons.SalvagedCleaver","DoorHitSound", "WoodAxeHit");
SOMWAdjuster("SWeapons.SalvagedCleaver","SwingSound", "WoodAxeSwing");

-- Spears
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","ImpactSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","HitSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","HitFloorSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","DoorHitSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearSharpenedScrewdriver","SwingSound", "SpearHuntingKnifeSwing");

SOMWAdjuster("SWeapons.SpearScrapShiv","ImpactSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearScrapShiv","HitSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearScrapShiv","HitFloorSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearScrapShiv","DoorHitSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.SpearScrapShiv","SwingSound", "SpearHuntingKnifeSwing");

SOMWAdjuster("SWeapons.ScrapSpear","ImpactSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.ScrapSpear","HitSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.ScrapSpear","HitFloorSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.ScrapSpear","DoorHitSound", "SpearHuntingKnifeHit");
SOMWAdjuster("SWeapons.ScrapSpear","SwingSound", "SpearHuntingKnifeSwing");

SOMWAdjuster("SWeapons.SpearScrapMachete","ImpactSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearScrapMachete","HitSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearScrapMachete","HitFloorSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearScrapMachete","DoorHitSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearScrapMachete","SwingSound", "SpearMacheteSwing");

SOMWAdjuster("SWeapons.SpearSalvaged","ImpactSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearSalvaged","HitSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearSalvaged","HitFloorSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearSalvaged","DoorHitSound", "SpearMacheteHit");
SOMWAdjuster("SWeapons.SpearSalvaged","SwingSound", "SpearMacheteSwing");

	local function ModCheck()
		if getDebug() then print("SOMW - Scrap Weapons - OK") end
	end

	Events.OnGameStart.Add(ModCheck);

end