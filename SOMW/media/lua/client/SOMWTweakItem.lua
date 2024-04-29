function SOMWAdjuster(Name, Property, Value)
	local Item = ScriptManager.instance:getItem(Name)
	if Item then
		Item:DoParam(Property.." = "..Value)
	end
end

--[[	

	1 HAND
	
		Knife = "Belt Right Upside",
		Hammer = "Belt Right",
		HammerRotated = "Belt Rotated Right",
		Nightstick = "Nightstick Right",
		Screwdriver  = "Belt Right Screwdriver",
		Wrench = "Wrench Right",
		MeatCleaver = "MeatCleaver Belt Right",
		Walkie = "Walkie Belt Right",

	2 HAND

		BigWeapon = "Big Weapon On Back",
		BigBlade = "Blade On Back",
		Racket = "Racket On Back",
		Shovel = "Shovel Back",
		Guitar = "Guitar",
		GuitarAcoustic = "Guitar Acoustic",
		Pan = "Pan On Back",
		Rifle = "Rifle On Back",
		Saucepan = "Saucepan Back",

]]

-- SOMWAdjuster("Base.DuctTape","UseDelta", 0.20); -- 


-- /*** ITEMS ***/

SOMWAdjuster("Base.GardenSaw","Icon", "GardenSawNew"); -- 	NEW ICON FOR GARDEN SAW
SOMWAdjuster("Base.Saw","Icon", "HacksawNew"); -- 	NEW ICON FOR HACKSAW

-- /*** AXES ***/

-- Wood Axe
SOMWAdjuster("Base.WoodAxe","Weight", 3.0);
SOMWAdjuster("Base.WoodAxe","MinDamage", 1.5);
SOMWAdjuster("Base.WoodAxe","MaxDamage", 3.0);
SOMWAdjuster("Base.WoodAxe","MinRange", 0.61);
SOMWAdjuster("Base.WoodAxe","MaxRange", 1.35);
SOMWAdjuster("Base.WoodAxe","BaseSpeed", 1.0);
SOMWAdjuster("Base.WoodAxe","ConditionMax", 20);
SOMWAdjuster("Base.WoodAxe","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.WoodAxe","CriticalChance", 30);
SOMWAdjuster("Base.WoodAxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("Base.WoodAxe","DoorDamage", 40);
SOMWAdjuster("Base.WoodAxe","TreeDamage", 60);
SOMWAdjuster("Base.WoodAxe","EnduranceMod", 1.5);

-- Pick Axe
SOMWAdjuster("Base.PickAxe","Weight", 2.6);
SOMWAdjuster("Base.PickAxe","MinDamage", 1.1);
SOMWAdjuster("Base.PickAxe","MaxDamage", 2.2);
SOMWAdjuster("Base.PickAxe","MinRange", 0.61);
SOMWAdjuster("Base.PickAxe","MaxRange", 1.3);
SOMWAdjuster("Base.PickAxe","BaseSpeed", 0.85);
SOMWAdjuster("Base.PickAxe","ConditionMax", 10);
SOMWAdjuster("Base.PickAxe","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.PickAxe","CriticalChance", 20);
SOMWAdjuster("Base.PickAxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("Base.PickAxe","DoorDamage", 30);
SOMWAdjuster("Base.PickAxe","TreeDamage", 10);
SOMWAdjuster("Base.PickAxe","EnduranceMod", 1);

-- Fire Axe
SOMWAdjuster("Base.Axe","Icon", "FireAxeNew");
SOMWAdjuster("Base.Axe","Weight", 2.8);
SOMWAdjuster("Base.Axe","MinDamage", 1.1);
SOMWAdjuster("Base.Axe","MaxDamage", 2.2);
SOMWAdjuster("Base.Axe","MinRange", 0.61);
SOMWAdjuster("Base.Axe","MaxRange", 1.2);
SOMWAdjuster("Base.Axe","BaseSpeed", 0.95);
SOMWAdjuster("Base.Axe","ConditionMax", 20);
SOMWAdjuster("Base.Axe","ConditionLowerChanceOneIn", 25);
SOMWAdjuster("Base.Axe","CriticalChance", 15);
SOMWAdjuster("Base.Axe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("Base.Axe","DoorDamage", 40);
SOMWAdjuster("Base.Axe","TreeDamage", 35);
SOMWAdjuster("Base.Axe","EnduranceMod", 1);

-- Hand Axe
SOMWAdjuster("Base.HandAxe","Weight", 1.6);
SOMWAdjuster("Base.HandAxe","MinDamage", 0.75);
SOMWAdjuster("Base.HandAxe","MaxDamage", 1.5);
SOMWAdjuster("Base.HandAxe","MinRange", 0.61);
SOMWAdjuster("Base.HandAxe","MaxRange", 1.1);
SOMWAdjuster("Base.HandAxe","BaseSpeed", 1.0);
SOMWAdjuster("Base.HandAxe","ConditionMax", 16);
SOMWAdjuster("Base.HandAxe","ConditionLowerChanceOneIn", 14);
SOMWAdjuster("Base.HandAxe","CriticalChance", 10);
SOMWAdjuster("Base.HandAxe","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("Base.HandAxe","DoorDamage", 15);
SOMWAdjuster("Base.HandAxe","TreeDamage", 20);
SOMWAdjuster("Base.HandAxe","EnduranceMod", 1);

-- Stone Axe
SOMWAdjuster("Base.AxeStone","WeaponSprite", "HandStoneAxe");
SOMWAdjuster("Base.AxeStone","AttachmentType", "Hammer");
SOMWAdjuster("Base.AxeStone","TwoHandWeapon", "FALSE"); -- Now onehanded
SOMWAdjuster("Base.AxeStone","Weight", 0.8);
SOMWAdjuster("Base.AxeStone","MinDamage", 0.6);
SOMWAdjuster("Base.AxeStone","MaxDamage", 1.2);
SOMWAdjuster("Base.AxeStone","MinRange", 0.61);
SOMWAdjuster("Base.AxeStone","MaxRange", 1.1);
SOMWAdjuster("Base.AxeStone","BaseSpeed", 1.0);
SOMWAdjuster("Base.AxeStone","ConditionMax", 6);
SOMWAdjuster("Base.AxeStone","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.AxeStone","CriticalChance", 10);
SOMWAdjuster("Base.AxeStone","CritDmgMultiplier", 5); -- AxeCritDmg
SOMWAdjuster("Base.AxeStone","DoorDamage", 5);
SOMWAdjuster("Base.AxeStone","TreeDamage", 15);
SOMWAdjuster("Base.AxeStone","EnduranceMod", 1);


-- /*** LONG BLUNT ***/

-- Plank
SOMWAdjuster("Base.Plank","WeaponSprite", "Plank");
SOMWAdjuster("Base.Plank","AttachmentType", "BigBlade");
SOMWAdjuster("Base.Plank","Weight", 2.0);
SOMWAdjuster("Base.Plank","MinDamage", 0.5);
SOMWAdjuster("Base.Plank","MaxDamage", 1.0);
SOMWAdjuster("Base.Plank","MinRange", 0.61);
SOMWAdjuster("Base.Plank","MaxRange", 1.3);
SOMWAdjuster("Base.Plank","BaseSpeed", 0.9);
SOMWAdjuster("Base.Plank","ConditionMax", 10);
SOMWAdjuster("Base.Plank","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.Plank","CriticalChance", 25);
SOMWAdjuster("Base.Plank","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Plank","DoorDamage", 4);
SOMWAdjuster("Base.Plank","TreeDamage", 0);
SOMWAdjuster("Base.Plank","EnduranceMod", 1);

-- Plank Spiked
SOMWAdjuster("Base.PlankNail","WeaponSprite", "PlankNails");
SOMWAdjuster("Base.PlankNail","AttachmentType", "BigBlade");
SOMWAdjuster("Base.PlankNail","Weight", 2.0);
SOMWAdjuster("Base.PlankNail","MinDamage", 0.6);
SOMWAdjuster("Base.PlankNail","MaxDamage", 1.2);
SOMWAdjuster("Base.PlankNail","MinRange", 0.61);
SOMWAdjuster("Base.PlankNail","MaxRange", 1.32);
SOMWAdjuster("Base.PlankNail","BaseSpeed", 0.9);
SOMWAdjuster("Base.PlankNail","ConditionMax", 10);
SOMWAdjuster("Base.PlankNail","ConditionLowerChanceOneIn", 3);
SOMWAdjuster("Base.PlankNail","CriticalChance", 25);
SOMWAdjuster("Base.PlankNail","CritDmgMultiplier", 2.4); -- SharpBluntCritDmg
SOMWAdjuster("Base.PlankNail","DoorDamage", 4);
SOMWAdjuster("Base.PlankNail","TreeDamage", 0);
SOMWAdjuster("Base.PlankNail","EnduranceMod", 1);

-- Sledgehammer
SOMWAdjuster("Base.Sledgehammer","Icon", "SledgehammerNew");
SOMWAdjuster("Base.Sledgehammer","AlwaysKnockdown", "FALSE"); -- No perma stuns
SOMWAdjuster("Base.Sledgehammer","SwingAnim", "Bat"); 
SOMWAdjuster("Base.Sledgehammer","CantAttackWithLowestEndurance", "FALSE"); -- Now always can do damage
SOMWAdjuster("Base.Sledgehammer","Weight", 4.0);
SOMWAdjuster("Base.Sledgehammer","MinDamage", 0.9);
SOMWAdjuster("Base.Sledgehammer","MaxDamage", 1.8);
SOMWAdjuster("Base.Sledgehammer","MinRange", 0.61);
SOMWAdjuster("Base.Sledgehammer","MaxRange", 1.25);
SOMWAdjuster("Base.Sledgehammer","BaseSpeed", 0.6);
SOMWAdjuster("Base.Sledgehammer","ConditionMax", 20);
SOMWAdjuster("Base.Sledgehammer","ConditionLowerChanceOneIn", 26);
SOMWAdjuster("Base.Sledgehammer","CriticalChance", 50);
SOMWAdjuster("Base.Sledgehammer","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Sledgehammer","DoorDamage", 35);
SOMWAdjuster("Base.Sledgehammer","TreeDamage", 5);
SOMWAdjuster("Base.Sledgehammer","EnduranceMod", 1);

-- Sledgehammer2
SOMWAdjuster("Base.Sledgehammer2","AlwaysKnockdown", "FALSE"); -- No perma stuns
SOMWAdjuster("Base.Sledgehammer2","CantAttackWithLowestEndurance", "FALSE"); -- Now always can do damage
SOMWAdjuster("Base.Sledgehammer2","Weight", 6.0);
SOMWAdjuster("Base.Sledgehammer2","MinDamage", 1.5);
SOMWAdjuster("Base.Sledgehammer2","MaxDamage", 3.0);
SOMWAdjuster("Base.Sledgehammer2","MinRange", 0.7);
SOMWAdjuster("Base.Sledgehammer2","MaxRange", 1.35);
SOMWAdjuster("Base.Sledgehammer2","BaseSpeed", 0.9);
SOMWAdjuster("Base.Sledgehammer2","ConditionMax", 20);
SOMWAdjuster("Base.Sledgehammer2","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.Sledgehammer2","CriticalChance", 60);
SOMWAdjuster("Base.Sledgehammer2","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Sledgehammer2","DoorDamage", 50);
SOMWAdjuster("Base.Sledgehammer2","TreeDamage", 10);
SOMWAdjuster("Base.Sledgehammer2","EnduranceMod", 2);

-- Baseball Bat
SOMWAdjuster("Base.BaseballBat","Icon", "BaseballBatNew");
SOMWAdjuster("Base.BaseballBat","Weight", 1.5);
SOMWAdjuster("Base.BaseballBat","MinDamage", 0.65);
SOMWAdjuster("Base.BaseballBat","MaxDamage", 1.3);
SOMWAdjuster("Base.BaseballBat","MinRange", 0.61);
SOMWAdjuster("Base.BaseballBat","MaxRange", 1.25);
SOMWAdjuster("Base.BaseballBat","BaseSpeed", 1.0);
SOMWAdjuster("Base.BaseballBat","ConditionMax", 10);
SOMWAdjuster("Base.BaseballBat","ConditionLowerChanceOneIn", 32);
SOMWAdjuster("Base.BaseballBat","CriticalChance", 40);
SOMWAdjuster("Base.BaseballBat","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.BaseballBat","DoorDamage", 6);
SOMWAdjuster("Base.BaseballBat","TreeDamage", 1);
SOMWAdjuster("Base.BaseballBat","EnduranceMod", 1);

-- Baseball Bat Spiked
SOMWAdjuster("Base.BaseballBatNails","Icon", "BaseballBatNailsNew");
SOMWAdjuster("Base.BaseballBatNails","Weight", 1.5);
SOMWAdjuster("Base.BaseballBatNails","MinDamage", 0.75);
SOMWAdjuster("Base.BaseballBatNails","MaxDamage", 1.5);
SOMWAdjuster("Base.BaseballBatNails","MinRange", 0.61);
SOMWAdjuster("Base.BaseballBatNails","MaxRange", 1.27);
SOMWAdjuster("Base.BaseballBatNails","BaseSpeed", 1.0);
SOMWAdjuster("Base.BaseballBatNails","ConditionMax", 10);
SOMWAdjuster("Base.BaseballBatNails","ConditionLowerChanceOneIn", 28);
SOMWAdjuster("Base.BaseballBatNails","CriticalChance", 40);
SOMWAdjuster("Base.BaseballBatNails","CritDmgMultiplier", 2.4); -- SharpBluntCritDmg
SOMWAdjuster("Base.BaseballBatNails","DoorDamage", 6);
SOMWAdjuster("Base.BaseballBatNails","TreeDamage", 1);
SOMWAdjuster("Base.BaseballBatNails","EnduranceMod", 1);

-- Crowbar
SOMWAdjuster("Base.Crowbar","Icon", "CrowbarNew");
SOMWAdjuster("Base.Crowbar","Weight", 2.0);
SOMWAdjuster("Base.Crowbar","MinDamage", 0.675);
SOMWAdjuster("Base.Crowbar","MaxDamage", 1.35);
SOMWAdjuster("Base.Crowbar","MinRange", 0.61);
SOMWAdjuster("Base.Crowbar","MaxRange", 1.25);
SOMWAdjuster("Base.Crowbar","BaseSpeed", 0.95);
SOMWAdjuster("Base.Crowbar","ConditionMax", 20);
SOMWAdjuster("Base.Crowbar","ConditionLowerChanceOneIn", 45);
SOMWAdjuster("Base.Crowbar","CriticalChance", 35);
SOMWAdjuster("Base.Crowbar","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Crowbar","DoorDamage", 15);
SOMWAdjuster("Base.Crowbar","TreeDamage", 2);
SOMWAdjuster("Base.Crowbar","EnduranceMod", 1);

-- Shovel
SOMWAdjuster("Base.Shovel","Icon", "ShovelNew");
SOMWAdjuster("Base.Shovel","Weight", 1.8);
SOMWAdjuster("Base.Shovel","MinDamage", 0.8);
SOMWAdjuster("Base.Shovel","MaxDamage", 1.6);
SOMWAdjuster("Base.Shovel","MinRange", 0.61);
SOMWAdjuster("Base.Shovel","MaxRange", 1.5);
SOMWAdjuster("Base.Shovel","BaseSpeed", 0.9);
SOMWAdjuster("Base.Shovel","ConditionMax", 10);
SOMWAdjuster("Base.Shovel","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.Shovel","CriticalChance", 35);
SOMWAdjuster("Base.Shovel","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Shovel","DoorDamage", 10);
SOMWAdjuster("Base.Shovel","TreeDamage", 1);
SOMWAdjuster("Base.Shovel","EnduranceMod", 1);

-- Shovel2
SOMWAdjuster("Base.Shovel2","Icon", "Shovel2New");
SOMWAdjuster("Base.Shovel2","Weight", 1.8);
SOMWAdjuster("Base.Shovel2","MinDamage", 0.8);
SOMWAdjuster("Base.Shovel2","MaxDamage", 1.6);
SOMWAdjuster("Base.Shovel2","MinRange", 0.61);
SOMWAdjuster("Base.Shovel2","MaxRange", 1.5);
SOMWAdjuster("Base.Shovel2","BaseSpeed", 0.9);
SOMWAdjuster("Base.Shovel2","ConditionMax", 10);
SOMWAdjuster("Base.Shovel2","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.Shovel2","CriticalChance", 35);
SOMWAdjuster("Base.Shovel2","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Shovel2","DoorDamage", 10);
SOMWAdjuster("Base.Shovel2","TreeDamage", 1);
SOMWAdjuster("Base.Shovel2","EnduranceMod", 1);

-- Snow Shovel
SOMWAdjuster("Base.SnowShovel","Weight", 1.5);
SOMWAdjuster("Base.SnowShovel","MinDamage", 0.7);
SOMWAdjuster("Base.SnowShovel","MaxDamage", 1.4);
SOMWAdjuster("Base.SnowShovel","MinRange", 0.61);
SOMWAdjuster("Base.SnowShovel","MaxRange", 1.5);
SOMWAdjuster("Base.SnowShovel","BaseSpeed", 0.85);
SOMWAdjuster("Base.SnowShovel","ConditionMax", 10);
SOMWAdjuster("Base.SnowShovel","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.SnowShovel","CriticalChance", 30);
SOMWAdjuster("Base.SnowShovel","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.SnowShovel","DoorDamage", 5);
SOMWAdjuster("Base.SnowShovel","TreeDamage", 1);
SOMWAdjuster("Base.SnowShovel","EnduranceMod", 1);

-- Garden Hoe
SOMWAdjuster("Base.GardenHoe","Weight", 1.4);
SOMWAdjuster("Base.GardenHoe","MinDamage", 0.8);
SOMWAdjuster("Base.GardenHoe","MaxDamage", 1.6);
SOMWAdjuster("Base.GardenHoe","MinRange", 0.61);
SOMWAdjuster("Base.GardenHoe","MaxRange", 1.55);
SOMWAdjuster("Base.GardenHoe","BaseSpeed", 0.85);
SOMWAdjuster("Base.GardenHoe","ConditionMax", 10);
SOMWAdjuster("Base.GardenHoe","ConditionLowerChanceOneIn", 14);
SOMWAdjuster("Base.GardenHoe","CriticalChance", 25);
SOMWAdjuster("Base.GardenHoe","CritDmgMultiplier", 2.4); -- SharpBluntCritDmg
SOMWAdjuster("Base.GardenHoe","DoorDamage", 10);
SOMWAdjuster("Base.GardenHoe","TreeDamage", 1);
SOMWAdjuster("Base.GardenHoe","EnduranceMod", 1);

-- Golf Club
SOMWAdjuster("Base.Golfclub","Weight", 0.6);
SOMWAdjuster("Base.Golfclub","MinDamage", 0.4);
SOMWAdjuster("Base.Golfclub","MaxDamage", 0.8);
SOMWAdjuster("Base.Golfclub","MinRange", 0.61);
SOMWAdjuster("Base.Golfclub","MaxRange", 1.25);
SOMWAdjuster("Base.Golfclub","BaseSpeed", 1.2);
SOMWAdjuster("Base.Golfclub","ConditionMax", 10);
SOMWAdjuster("Base.Golfclub","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.Golfclub","CriticalChance", 20);
SOMWAdjuster("Base.Golfclub","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Golfclub","DoorDamage", 1);
SOMWAdjuster("Base.Golfclub","TreeDamage", 0);
SOMWAdjuster("Base.Golfclub","EnduranceMod", 1);

-- Pool Cue
SOMWAdjuster("Base.Poolcue","Weight", 0.6);
SOMWAdjuster("Base.Poolcue","MinDamage", 0.4);
SOMWAdjuster("Base.Poolcue","MaxDamage", 0.8);
SOMWAdjuster("Base.Poolcue","MinRange", 0.61);
SOMWAdjuster("Base.Poolcue","MaxRange", 1.3);
SOMWAdjuster("Base.Poolcue","BaseSpeed", 1.0);
SOMWAdjuster("Base.Poolcue","ConditionMax", 10);
SOMWAdjuster("Base.Poolcue","ConditionLowerChanceOneIn", 8);
SOMWAdjuster("Base.Poolcue","CriticalChance", 20);
SOMWAdjuster("Base.Poolcue","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Poolcue","DoorDamage", 1);
SOMWAdjuster("Base.Poolcue","TreeDamage", 0);
SOMWAdjuster("Base.Poolcue","EnduranceMod", 1);

-- Electric Bass Black
SOMWAdjuster("Base.GuitarElectricBassBlack","Weight", 3.5);
SOMWAdjuster("Base.GuitarElectricBassBlack","MinDamage", 0.8);
SOMWAdjuster("Base.GuitarElectricBassBlack","MaxDamage", 1.6);
SOMWAdjuster("Base.GuitarElectricBassBlack","MinRange", 0.7);
SOMWAdjuster("Base.GuitarElectricBassBlack","MaxRange", 1.3);
SOMWAdjuster("Base.GuitarElectricBassBlack","BaseSpeed", 1.1);
SOMWAdjuster("Base.GuitarElectricBassBlack","ConditionMax", 10);
SOMWAdjuster("Base.GuitarElectricBassBlack","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.GuitarElectricBassBlack","CriticalChance", 50);
SOMWAdjuster("Base.GuitarElectricBassBlack","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GuitarElectricBassBlack","DoorDamage", 10);
SOMWAdjuster("Base.GuitarElectricBassBlack","TreeDamage", 1);
SOMWAdjuster("Base.GuitarElectricBassBlack","EnduranceMod", 1);

-- Electric Bass Blue
SOMWAdjuster("Base.GuitarElectricBassBlue","Weight", 3.5);
SOMWAdjuster("Base.GuitarElectricBassBlue","MinDamage", 0.8);
SOMWAdjuster("Base.GuitarElectricBassBlue","MaxDamage", 1.6);
SOMWAdjuster("Base.GuitarElectricBassBlue","MinRange", 0.7);
SOMWAdjuster("Base.GuitarElectricBassBlue","MaxRange", 1.3);
SOMWAdjuster("Base.GuitarElectricBassBlue","BaseSpeed", 1.1);
SOMWAdjuster("Base.GuitarElectricBassBlue","ConditionMax", 10);
SOMWAdjuster("Base.GuitarElectricBassBlue","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.GuitarElectricBassBlue","CriticalChance", 50);
SOMWAdjuster("Base.GuitarElectricBassBlue","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GuitarElectricBassBlue","DoorDamage", 10);
SOMWAdjuster("Base.GuitarElectricBassBlue","TreeDamage", 1);
SOMWAdjuster("Base.GuitarElectricBassBlue","EnduranceMod", 1);

-- Electric Bass Red
SOMWAdjuster("Base.GuitarElectricBassRed","Weight", 3.5);
SOMWAdjuster("Base.GuitarElectricBassRed","MinDamage", 0.8);
SOMWAdjuster("Base.GuitarElectricBassRed","MaxDamage", 1.6);
SOMWAdjuster("Base.GuitarElectricBassRed","MinRange", 0.7);
SOMWAdjuster("Base.GuitarElectricBassRed","MaxRange", 1.3);
SOMWAdjuster("Base.GuitarElectricBassRed","BaseSpeed", 1.1);
SOMWAdjuster("Base.GuitarElectricBassRed","ConditionMax", 10);
SOMWAdjuster("Base.GuitarElectricBassRed","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.GuitarElectricBassRed","CriticalChance", 50);
SOMWAdjuster("Base.GuitarElectricBassRed","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GuitarElectricBassRed","DoorDamage", 10);
SOMWAdjuster("Base.GuitarElectricBassRed","TreeDamage", 1);
SOMWAdjuster("Base.GuitarElectricBassRed","EnduranceMod", 1);

-- Electric Guitar Black
SOMWAdjuster("Base.GuitarElectricBlack","Weight", 3.0);
SOMWAdjuster("Base.GuitarElectricBlack","MinDamage", 0.7);
SOMWAdjuster("Base.GuitarElectricBlack","MaxDamage", 1.4);
SOMWAdjuster("Base.GuitarElectricBlack","MinRange", 0.7);
SOMWAdjuster("Base.GuitarElectricBlack","MaxRange", 1.3);
SOMWAdjuster("Base.GuitarElectricBlack","BaseSpeed", 1.1);
SOMWAdjuster("Base.GuitarElectricBlack","ConditionMax", 10);
SOMWAdjuster("Base.GuitarElectricBlack","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.GuitarElectricBlack","CriticalChance", 40);
SOMWAdjuster("Base.GuitarElectricBlack","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GuitarElectricBlack","DoorDamage", 10);
SOMWAdjuster("Base.GuitarElectricBlack","TreeDamage", 1);
SOMWAdjuster("Base.GuitarElectricBlack","EnduranceMod", 1);

-- Electric Guitar Blue
SOMWAdjuster("Base.GuitarElectricBlue","Weight", 3.0);
SOMWAdjuster("Base.GuitarElectricBlue","MinDamage", 0.7);
SOMWAdjuster("Base.GuitarElectricBlue","MaxDamage", 1.4);
SOMWAdjuster("Base.GuitarElectricBlue","MinRange", 0.7);
SOMWAdjuster("Base.GuitarElectricBlue","MaxRange", 1.3);
SOMWAdjuster("Base.GuitarElectricBlue","BaseSpeed", 1.1);
SOMWAdjuster("Base.GuitarElectricBlue","ConditionMax", 10);
SOMWAdjuster("Base.GuitarElectricBlue","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.GuitarElectricBlue","CriticalChance", 40);
SOMWAdjuster("Base.GuitarElectricBlue","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GuitarElectricBlue","DoorDamage", 10);
SOMWAdjuster("Base.GuitarElectricBlue","TreeDamage", 1);
SOMWAdjuster("Base.GuitarElectricBlue","EnduranceMod", 1);

-- Electric Guitar Red
SOMWAdjuster("Base.GuitarElectricRed","Weight", 3.0);
SOMWAdjuster("Base.GuitarElectricRed","MinDamage", 0.7);
SOMWAdjuster("Base.GuitarElectricRed","MaxDamage", 1.4);
SOMWAdjuster("Base.GuitarElectricRed","MinRange", 0.7);
SOMWAdjuster("Base.GuitarElectricRed","MaxRange", 1.3);
SOMWAdjuster("Base.GuitarElectricRed","BaseSpeed", 1.1);
SOMWAdjuster("Base.GuitarElectricRed","ConditionMax", 10);
SOMWAdjuster("Base.GuitarElectricRed","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.GuitarElectricRed","CriticalChance", 40);
SOMWAdjuster("Base.GuitarElectricRed","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GuitarElectricRed","DoorDamage", 10);
SOMWAdjuster("Base.GuitarElectricRed","TreeDamage", 1);
SOMWAdjuster("Base.GuitarElectricRed","EnduranceMod", 1);

-- Keytar
SOMWAdjuster("Base.Keytar","Weight", 2.5);
SOMWAdjuster("Base.Keytar","MinDamage", 0.6);
SOMWAdjuster("Base.Keytar","MaxDamage", 1.2);
SOMWAdjuster("Base.Keytar","MinRange", 0.61);
SOMWAdjuster("Base.Keytar","MaxRange", 1.2);
SOMWAdjuster("Base.Keytar","BaseSpeed", 0.9);
SOMWAdjuster("Base.Keytar","ConditionMax", 8);
SOMWAdjuster("Base.Keytar","ConditionLowerChanceOneIn", 6);
SOMWAdjuster("Base.Keytar","CriticalChance", 30);
SOMWAdjuster("Base.Keytar","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Keytar","DoorDamage", 5);
SOMWAdjuster("Base.Keytar","TreeDamage", 1);
SOMWAdjuster("Base.Keytar","EnduranceMod", 1);

-- Acoustic Guitar
SOMWAdjuster("Base.Keytar","Weight", 2.5);
SOMWAdjuster("Base.Keytar","MinDamage", 0.6);
SOMWAdjuster("Base.Keytar","MaxDamage", 1.2);
SOMWAdjuster("Base.Keytar","MinRange", 0.61);
SOMWAdjuster("Base.Keytar","MaxRange", 1.3);
SOMWAdjuster("Base.Keytar","BaseSpeed", 1.0);
SOMWAdjuster("Base.Keytar","ConditionMax", 5);
SOMWAdjuster("Base.Keytar","ConditionLowerChanceOneIn", 5);
SOMWAdjuster("Base.Keytar","CriticalChance", 20);
SOMWAdjuster("Base.Keytar","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Keytar","DoorDamage", 5);
SOMWAdjuster("Base.Keytar","TreeDamage", 1);
SOMWAdjuster("Base.Keytar","EnduranceMod", 1);

-- Hockey Stick
SOMWAdjuster("Base.HockeyStick","Weight", 0.6);
SOMWAdjuster("Base.HockeyStick","MinDamage", 0.4);
SOMWAdjuster("Base.HockeyStick","MaxDamage", 0.8);
SOMWAdjuster("Base.HockeyStick","MinRange", 0.61);
SOMWAdjuster("Base.HockeyStick","MaxRange", 1.3);
SOMWAdjuster("Base.HockeyStick","BaseSpeed", 1.0);
SOMWAdjuster("Base.HockeyStick","ConditionMax", 8);
SOMWAdjuster("Base.HockeyStick","ConditionLowerChanceOneIn", 8);
SOMWAdjuster("Base.HockeyStick","CriticalChance", 25);
SOMWAdjuster("Base.HockeyStick","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.HockeyStick","DoorDamage", 3);
SOMWAdjuster("Base.HockeyStick","TreeDamage", 0);
SOMWAdjuster("Base.HockeyStick","EnduranceMod", 1);


-- ice Hockey Stick
SOMWAdjuster("Base.IceHockeyStick","Weight", 0.6);
SOMWAdjuster("Base.IceHockeyStick","MinDamage", 0.4);
SOMWAdjuster("Base.IceHockeyStick","MaxDamage", 0.8);
SOMWAdjuster("Base.IceHockeyStick","MinRange", 0.61);
SOMWAdjuster("Base.IceHockeyStick","MaxRange", 1.3);
SOMWAdjuster("Base.IceHockeyStick","BaseSpeed", 1.0);
SOMWAdjuster("Base.IceHockeyStick","ConditionMax", 8);
SOMWAdjuster("Base.IceHockeyStick","ConditionLowerChanceOneIn", 8);
SOMWAdjuster("Base.IceHockeyStick","CriticalChance", 25);
SOMWAdjuster("Base.IceHockeyStick","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.IceHockeyStick","DoorDamage", 3);
SOMWAdjuster("Base.IceHockeyStick","TreeDamage", 0);
SOMWAdjuster("Base.IceHockeyStick","EnduranceMod", 1);

-- Lacrosse Stick 
SOMWAdjuster("Base.LaCrosseStick","Weight", 0.4);
SOMWAdjuster("Base.LaCrosseStick","MinDamage", 0.35);
SOMWAdjuster("Base.LaCrosseStick","MaxDamage", 0.7);
SOMWAdjuster("Base.LaCrosseStick","MinRange", 0.61);
SOMWAdjuster("Base.LaCrosseStick","MaxRange", 1.3);
SOMWAdjuster("Base.LaCrosseStick","BaseSpeed", 1.0);
SOMWAdjuster("Base.LaCrosseStick","ConditionMax", 8);
SOMWAdjuster("Base.LaCrosseStick","ConditionLowerChanceOneIn", 8);
SOMWAdjuster("Base.LaCrosseStick","CriticalChance", 15);
SOMWAdjuster("Base.LaCrosseStick","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.LaCrosseStick","DoorDamage", 3);
SOMWAdjuster("Base.LaCrosseStick","TreeDamage", 0);
SOMWAdjuster("Base.LaCrosseStick","EnduranceMod", 1);

-- Canoe Paddle
SOMWAdjuster("Base.CanoePadel","Weight", 1.2);
SOMWAdjuster("Base.CanoePadel","MinDamage", 0.7);
SOMWAdjuster("Base.CanoePadel","MaxDamage", 1.4);
SOMWAdjuster("Base.CanoePadel","MinRange", 0.7);
SOMWAdjuster("Base.CanoePadel","MaxRange", 1.3);
SOMWAdjuster("Base.CanoePadel","BaseSpeed", 0.85);
SOMWAdjuster("Base.CanoePadel","ConditionMax", 10);
SOMWAdjuster("Base.CanoePadel","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.CanoePadel","CriticalChance", 40);
SOMWAdjuster("Base.CanoePadel","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.CanoePadel","DoorDamage", 5);
SOMWAdjuster("Base.CanoePadel","TreeDamage", 0);
SOMWAdjuster("Base.CanoePadel","EnduranceMod", 1);

-- Canoe Paddle - Double-bladed
SOMWAdjuster("Base.CanoePadelX2","Weight", 1.4);
SOMWAdjuster("Base.CanoePadelX2","MinDamage", 0.8);
SOMWAdjuster("Base.CanoePadelX2","MaxDamage", 1.6);
SOMWAdjuster("Base.CanoePadelX2","MinRange", 0.7);
SOMWAdjuster("Base.CanoePadelX2","MaxRange", 1.3);
SOMWAdjuster("Base.CanoePadelX2","BaseSpeed", 0.8);
SOMWAdjuster("Base.CanoePadelX2","ConditionMax", 10);
SOMWAdjuster("Base.CanoePadelX2","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.CanoePadelX2","CriticalChance", 40);
SOMWAdjuster("Base.CanoePadelX2","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.CanoePadelX2","DoorDamage", 5);
SOMWAdjuster("Base.CanoePadelX2","TreeDamage", 0);
SOMWAdjuster("Base.CanoePadelX2","EnduranceMod", 1);

-- Barbell
SOMWAdjuster("Base.BarBell","AlwaysKnockdown", "FALSE"); -- No perma stuns
SOMWAdjuster("Base.BarBell","Weight", 10.0);
SOMWAdjuster("Base.BarBell","MinDamage", 1.5);
SOMWAdjuster("Base.BarBell","MaxDamage", 3.0);
SOMWAdjuster("Base.BarBell","MinRange", 0.7);
SOMWAdjuster("Base.BarBell","MaxRange", 1.3);
SOMWAdjuster("Base.BarBell","BaseSpeed", 0.8);
SOMWAdjuster("Base.BarBell","ConditionMax", 10);
SOMWAdjuster("Base.BarBell","ConditionLowerChanceOneIn", 36);
SOMWAdjuster("Base.BarBell","CriticalChance", 60);
SOMWAdjuster("Base.BarBell","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.BarBell","DoorDamage", 30);
SOMWAdjuster("Base.BarBell","TreeDamage", 10);
SOMWAdjuster("Base.BarBell","EnduranceMod", 2);

-- Rake
SOMWAdjuster("Base.Rake","Weight", 1.0);
SOMWAdjuster("Base.Rake","MinDamage", 0.4);
SOMWAdjuster("Base.Rake","MaxDamage", 0.8);
SOMWAdjuster("Base.Rake","MinRange", 0.7);
SOMWAdjuster("Base.Rake","MaxRange", 1.55);
SOMWAdjuster("Base.Rake","BaseSpeed", 0.9);
SOMWAdjuster("Base.Rake","ConditionMax", 8);
SOMWAdjuster("Base.Rake","ConditionLowerChanceOneIn", 8);
SOMWAdjuster("Base.Rake","CriticalChance", 10);
SOMWAdjuster("Base.Rake","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Rake","DoorDamage", 3);
SOMWAdjuster("Base.Rake","TreeDamage", 0);
SOMWAdjuster("Base.Rake","EnduranceMod", 1);

-- Leaf Rake
SOMWAdjuster("Base.LeafRake","Weight", 0.8);
SOMWAdjuster("Base.LeafRake","MinDamage", 0.2);
SOMWAdjuster("Base.LeafRake","MaxDamage", 0.4);
SOMWAdjuster("Base.LeafRake","MinRange", 0.7);
SOMWAdjuster("Base.LeafRake","MaxRange", 1.55);
SOMWAdjuster("Base.LeafRake","BaseSpeed", 0.95);
SOMWAdjuster("Base.LeafRake","ConditionMax", 8);
SOMWAdjuster("Base.LeafRake","ConditionLowerChanceOneIn", 6);
SOMWAdjuster("Base.LeafRake","CriticalChance", 5);
SOMWAdjuster("Base.LeafRake","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.LeafRake","DoorDamage", 1);
SOMWAdjuster("Base.LeafRake","TreeDamage", 0);
SOMWAdjuster("Base.LeafRake","EnduranceMod", 1);

-- Broom
SOMWAdjuster("Base.Broom","Weight", 1.0);
SOMWAdjuster("Base.Broom","MinDamage", 0.25);
SOMWAdjuster("Base.Broom","MaxDamage", 0.5);
SOMWAdjuster("Base.Broom","MinRange", 0.7);
SOMWAdjuster("Base.Broom","MaxRange", 1.55);
SOMWAdjuster("Base.Broom","BaseSpeed", 0.95);
SOMWAdjuster("Base.Broom","ConditionMax", 8);
SOMWAdjuster("Base.Broom","ConditionLowerChanceOneIn", 3);
SOMWAdjuster("Base.Broom","CriticalChance", 10);
SOMWAdjuster("Base.Broom","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Broom","DoorDamage", 1);
SOMWAdjuster("Base.Broom","TreeDamage", 0);
SOMWAdjuster("Base.Broom","EnduranceMod", 1);

-- Fishind Rod (Crafted)
SOMWAdjuster("Base.CraftedFishingRod","Weight", 0.5);
SOMWAdjuster("Base.CraftedFishingRod","MinDamage", 0.1);
SOMWAdjuster("Base.CraftedFishingRod","MaxDamage", 0.2);
SOMWAdjuster("Base.CraftedFishingRod","MinRange", 0.7);
SOMWAdjuster("Base.CraftedFishingRod","MaxRange", 1.2);
SOMWAdjuster("Base.CraftedFishingRod","BaseSpeed", 1.0);
SOMWAdjuster("Base.CraftedFishingRod","ConditionMax", 3);
SOMWAdjuster("Base.CraftedFishingRod","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.CraftedFishingRod","CriticalChance", 0);
SOMWAdjuster("Base.CraftedFishingRod","CritDmgMultiplier", 1); -- LowBluntCritDmg
SOMWAdjuster("Base.CraftedFishingRod","DoorDamage", 0);
SOMWAdjuster("Base.CraftedFishingRod","TreeDamage", 0);
SOMWAdjuster("Base.CraftedFishingRod","EnduranceMod", 1);

-- CraftedFishingRodTwineLine
SOMWAdjuster("Base.CraftedFishingRodTwineLine","Weight", 0.5);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","MinDamage", 0.1);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","MaxDamage", 0.2);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","MinRange", 0.7);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","MaxRange", 1.2);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","BaseSpeed", 1.0);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","ConditionMax", 3);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","CriticalChance", 0);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","CritDmgMultiplier", 1); -- LowBluntCritDmg
SOMWAdjuster("Base.CraftedFishingRodTwineLine","DoorDamage", 0);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","TreeDamage", 0);
SOMWAdjuster("Base.CraftedFishingRodTwineLine","EnduranceMod", 1);

-- Fishind Rod
SOMWAdjuster("Base.FishingRod","Weight", 0.5);
SOMWAdjuster("Base.FishingRod","MinDamage", 0.1);
SOMWAdjuster("Base.FishingRod","MaxDamage", 0.2);
SOMWAdjuster("Base.FishingRod","MinRange", 0.7);
SOMWAdjuster("Base.FishingRod","MaxRange", 1.2);
SOMWAdjuster("Base.FishingRod","BaseSpeed", 1.0);
SOMWAdjuster("Base.FishingRod","ConditionMax", 3);
SOMWAdjuster("Base.FishingRod","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.FishingRod","CriticalChance", 0);
SOMWAdjuster("Base.FishingRod","CritDmgMultiplier", 1); -- LowBluntCritDmg
SOMWAdjuster("Base.FishingRod","DoorDamage", 0);
SOMWAdjuster("Base.FishingRod","TreeDamage", 0);
SOMWAdjuster("Base.FishingRod","EnduranceMod", 1);

-- FishingRodBreak
SOMWAdjuster("Base.FishingRodBreak","Weight", 0.5);
SOMWAdjuster("Base.FishingRodBreak","MinDamage", 0.1);
SOMWAdjuster("Base.FishingRodBreak","MaxDamage", 0.2);
SOMWAdjuster("Base.FishingRodBreak","MinRange", 0.7);
SOMWAdjuster("Base.FishingRodBreak","MaxRange", 1.2);
SOMWAdjuster("Base.FishingRodBreak","BaseSpeed", 1.0);
SOMWAdjuster("Base.FishingRodBreak","ConditionMax", 3);
SOMWAdjuster("Base.FishingRodBreak","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.FishingRodBreak","CriticalChance", 0);
SOMWAdjuster("Base.FishingRodBreak","CritDmgMultiplier", 1); -- LowBluntCritDmg
SOMWAdjuster("Base.FishingRodBreak","DoorDamage", 0);
SOMWAdjuster("Base.FishingRodBreak","TreeDamage", 0);
SOMWAdjuster("Base.FishingRodBreak","EnduranceMod", 1);

-- FishingRodTwineLine
SOMWAdjuster("Base.FishingRodTwineLine","Weight", 0.5);
SOMWAdjuster("Base.FishingRodTwineLine","MinDamage", 0.1);
SOMWAdjuster("Base.FishingRodTwineLine","MaxDamage", 0.2);
SOMWAdjuster("Base.FishingRodTwineLine","MinRange", 0.7);
SOMWAdjuster("Base.FishingRodTwineLine","MaxRange", 1.2);
SOMWAdjuster("Base.FishingRodTwineLine","BaseSpeed", 1.0);
SOMWAdjuster("Base.FishingRodTwineLine","ConditionMax", 3);
SOMWAdjuster("Base.FishingRodTwineLine","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.FishingRodTwineLine","CriticalChance", 0);
SOMWAdjuster("Base.FishingRodTwineLine","CritDmgMultiplier", 1); -- LowBluntCritDmg
SOMWAdjuster("Base.FishingRodTwineLine","DoorDamage", 0);
SOMWAdjuster("Base.FishingRodTwineLine","TreeDamage", 0);
SOMWAdjuster("Base.FishingRodTwineLine","EnduranceMod", 1);


-- Badminton Racket
SOMWAdjuster("Base.BadmintonRacket","Weight", 0.2);
SOMWAdjuster("Base.BadmintonRacket","MinDamage", 0.1);
SOMWAdjuster("Base.BadmintonRacket","MaxDamage", 0.2);
SOMWAdjuster("Base.BadmintonRacket","MinRange", 0.61);
SOMWAdjuster("Base.BadmintonRacket","MaxRange", 1.0);
SOMWAdjuster("Base.BadmintonRacket","BaseSpeed", 1.0);
SOMWAdjuster("Base.BadmintonRacket","ConditionMax", 5);
SOMWAdjuster("Base.BadmintonRacket","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.BadmintonRacket","CriticalChance", 0);
SOMWAdjuster("Base.BadmintonRacket","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.BadmintonRacket","DoorDamage", 1);
SOMWAdjuster("Base.BadmintonRacket","TreeDamage", 0);
SOMWAdjuster("Base.BadmintonRacket","EnduranceMod", 1);

-- Tennis Racket 
SOMWAdjuster("Base.TennisRacket","Weight", 0.3);
SOMWAdjuster("Base.TennisRacket","MinDamage", 0.125);
SOMWAdjuster("Base.TennisRacket","MaxDamage", 0.25);
SOMWAdjuster("Base.TennisRacket","MinRange", 0.61);
SOMWAdjuster("Base.TennisRacket","MaxRange", 1.0);
SOMWAdjuster("Base.TennisRacket","BaseSpeed", 1.0);
SOMWAdjuster("Base.TennisRacket","ConditionMax", 5);
SOMWAdjuster("Base.TennisRacket","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.TennisRacket","CriticalChance", 0);
SOMWAdjuster("Base.TennisRacket","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.TennisRacket","DoorDamage", 1);
SOMWAdjuster("Base.TennisRacket","TreeDamage", 0);
SOMWAdjuster("Base.TennisRacket","EnduranceMod", 1);

-- Trumpet
SOMWAdjuster("Base.Trumpet","Weight", 1.0);
SOMWAdjuster("Base.Trumpet","MinDamage", 0.2);
SOMWAdjuster("Base.Trumpet","MaxDamage", 0.4);
SOMWAdjuster("Base.Trumpet","MinRange", 0.61);
SOMWAdjuster("Base.Trumpet","MaxRange", 1.1);
SOMWAdjuster("Base.Trumpet","BaseSpeed", 1.0);
SOMWAdjuster("Base.Trumpet","ConditionMax", 5);
SOMWAdjuster("Base.Trumpet","ConditionLowerChanceOneIn", 3);
SOMWAdjuster("Base.Trumpet","CriticalChance", 15);
SOMWAdjuster("Base.Trumpet","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Trumpet","DoorDamage", 3);
SOMWAdjuster("Base.Trumpet","TreeDamage", 0);
SOMWAdjuster("Base.Trumpet","EnduranceMod", 1);

-- Saxophone
SOMWAdjuster("Base.Saxophone","Weight", 3.0);
SOMWAdjuster("Base.Saxophone","MinDamage", 0.4);
SOMWAdjuster("Base.Saxophone","MaxDamage", 0.8);
SOMWAdjuster("Base.Saxophone","MinRange", 0.61);
SOMWAdjuster("Base.Saxophone","MaxRange", 1.2);
SOMWAdjuster("Base.Saxophone","BaseSpeed", 0.8);
SOMWAdjuster("Base.Saxophone","ConditionMax", 5);
SOMWAdjuster("Base.Saxophone","ConditionLowerChanceOneIn", 5);
SOMWAdjuster("Base.Saxophone","CriticalChance", 30);
SOMWAdjuster("Base.Saxophone","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Saxophone","DoorDamage", 5);
SOMWAdjuster("Base.Saxophone","TreeDamage", 0);
SOMWAdjuster("Base.Saxophone","EnduranceMod", 1);


-- /*** SHORT BLUNT ***/

-- Lead Pipe
SOMWAdjuster("Base.LeadPipe","WeaponSprite", "LeadPipeAlt");
SOMWAdjuster("Base.LeadPipe","AttachmentType", "LongBlade");
SOMWAdjuster("Base.LeadPipe","Weight", 1.5);
SOMWAdjuster("Base.LeadPipe","MinDamage", 0.55);
SOMWAdjuster("Base.LeadPipe","MaxDamage", 1.1);
SOMWAdjuster("Base.LeadPipe","MinRange", 0.61);
SOMWAdjuster("Base.LeadPipe","MaxRange", 1.15);
SOMWAdjuster("Base.LeadPipe","BaseSpeed", 0.93);
SOMWAdjuster("Base.LeadPipe","ConditionMax", 10);
SOMWAdjuster("Base.LeadPipe","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.LeadPipe","CriticalChance", 20);
SOMWAdjuster("Base.LeadPipe","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.LeadPipe","DoorDamage", 5);
SOMWAdjuster("Base.LeadPipe","TreeDamage", 0);
SOMWAdjuster("Base.LeadPipe","EnduranceMod", 1);

-- Metal Pipe
SOMWAdjuster("Base.MetalPipe","WeaponSprite", "MetalPipeAlt");
SOMWAdjuster("Base.MetalPipe","AttachmentType", "LongBlade");
SOMWAdjuster("Base.MetalPipe","Weight", 1.2);
SOMWAdjuster("Base.MetalPipe","MinDamage", 0.5);
SOMWAdjuster("Base.MetalPipe","MaxDamage", 1.0);
SOMWAdjuster("Base.MetalPipe","MinRange", 0.61);
SOMWAdjuster("Base.MetalPipe","MaxRange", 1.15);
SOMWAdjuster("Base.MetalPipe","BaseSpeed", 0.96);
SOMWAdjuster("Base.MetalPipe","ConditionMax", 10);
SOMWAdjuster("Base.MetalPipe","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.MetalPipe","CriticalChance", 22);
SOMWAdjuster("Base.MetalPipe","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.MetalPipe","DoorDamage", 5);
SOMWAdjuster("Base.MetalPipe","TreeDamage", 0);
SOMWAdjuster("Base.MetalPipe","EnduranceMod", 1);

-- Metal Bar
SOMWAdjuster("Base.MetalBar","WeaponSprite", "MetalBarAlt");
SOMWAdjuster("Base.MetalBar","Icon", "MetalBarNew");
SOMWAdjuster("Base.MetalBar","AttachmentType", "LongBlade");
SOMWAdjuster("Base.MetalBar","Weight", 1.2);
SOMWAdjuster("Base.MetalBar","MinDamage", 0.5);
SOMWAdjuster("Base.MetalBar","MaxDamage", 1.0);
SOMWAdjuster("Base.MetalBar","MinRange", 0.61);
SOMWAdjuster("Base.MetalBar","MaxRange", 1.15);
SOMWAdjuster("Base.MetalBar","BaseSpeed", 1.0);
SOMWAdjuster("Base.MetalBar","ConditionMax", 10);
SOMWAdjuster("Base.MetalBar","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.MetalBar","CriticalChance", 20);
SOMWAdjuster("Base.MetalBar","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.MetalBar","DoorDamage", 4);
SOMWAdjuster("Base.MetalBar","TreeDamage", 0);
SOMWAdjuster("Base.MetalBar","EnduranceMod", 1);

-- Nightstick
SOMWAdjuster("Base.Nightstick","Weight", 1.2);
SOMWAdjuster("Base.Nightstick","MinDamage", 0.55);
SOMWAdjuster("Base.Nightstick","MaxDamage", 1.1);
SOMWAdjuster("Base.Nightstick","MinRange", 0.61);
SOMWAdjuster("Base.Nightstick","MaxRange", 1.15);
SOMWAdjuster("Base.Nightstick","BaseSpeed", 1.0);
SOMWAdjuster("Base.Nightstick","ConditionMax", 10);
SOMWAdjuster("Base.Nightstick","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.Nightstick","CriticalChance", 25);
SOMWAdjuster("Base.Nightstick","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Nightstick","DoorDamage", 3);
SOMWAdjuster("Base.Nightstick","TreeDamage", 0);
SOMWAdjuster("Base.Nightstick","EnduranceMod", 1);

-- Club Hammer
SOMWAdjuster("Base.ClubHammer","Icon", "ClubHammerNew");
SOMWAdjuster("Base.ClubHammer","Weight", 1.2);
SOMWAdjuster("Base.ClubHammer","MinDamage", 0.55);
SOMWAdjuster("Base.ClubHammer","MaxDamage", 1.1);
SOMWAdjuster("Base.ClubHammer","MinRange", 0.61);
SOMWAdjuster("Base.ClubHammer","MaxRange", 1.05);
SOMWAdjuster("Base.ClubHammer","BaseSpeed", 0.9);
SOMWAdjuster("Base.ClubHammer","ConditionMax", 10);
SOMWAdjuster("Base.ClubHammer","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.ClubHammer","CriticalChance", 25);
SOMWAdjuster("Base.ClubHammer","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.ClubHammer","DoorDamage", 12);
SOMWAdjuster("Base.ClubHammer","TreeDamage", 0);
SOMWAdjuster("Base.ClubHammer","EnduranceMod", 1);
SOMWAdjuster("Base.ClubHammer","Tags", "Hammer");
SOMWAdjuster("Base.ClubHammer","CanBarricade", "TRUE");
SOMWAdjuster("Base.ClubHammer","Tooltip", "Tooltip_no_nails");

-- Hammer
SOMWAdjuster("Base.Hammer","Icon", "HammerNew");
SOMWAdjuster("Base.Hammer","Weight", 0.8);
SOMWAdjuster("Base.Hammer","MinDamage", 0.5);
SOMWAdjuster("Base.Hammer","MaxDamage", 1.0);
SOMWAdjuster("Base.Hammer","MinRange", 0.61);
SOMWAdjuster("Base.Hammer","MaxRange", 1.1);
SOMWAdjuster("Base.Hammer","BaseSpeed", 1.0);
SOMWAdjuster("Base.Hammer","ConditionMax", 10);
SOMWAdjuster("Base.Hammer","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.Hammer","CriticalChance", 25);
SOMWAdjuster("Base.Hammer","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Hammer","DoorDamage", 8);
SOMWAdjuster("Base.Hammer","TreeDamage", 0);
SOMWAdjuster("Base.Hammer","EnduranceMod", 1);

-- Ball-Shaped Hammer
SOMWAdjuster("Base.BallPeenHammer","Icon", "BallPeenHammerNew");
SOMWAdjuster("Base.BallPeenHammer","Weight", 1.0);
SOMWAdjuster("Base.BallPeenHammer","MinDamage", 0.5);
SOMWAdjuster("Base.BallPeenHammer","MaxDamage", 1.0);
SOMWAdjuster("Base.BallPeenHammer","MinRange", 0.61);
SOMWAdjuster("Base.BallPeenHammer","MaxRange", 1.15);
SOMWAdjuster("Base.BallPeenHammer","BaseSpeed", 0.95);
SOMWAdjuster("Base.BallPeenHammer","ConditionMax", 10);
SOMWAdjuster("Base.BallPeenHammer","ConditionLowerChanceOneIn", 30);
SOMWAdjuster("Base.BallPeenHammer","CriticalChance", 25);
SOMWAdjuster("Base.BallPeenHammer","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.BallPeenHammer","DoorDamage", 8);
SOMWAdjuster("Base.BallPeenHammer","TreeDamage", 0);
SOMWAdjuster("Base.BallPeenHammer","EnduranceMod", 1);

-- Pipe Wrench
SOMWAdjuster("Base.PipeWrench","AttachmentType","Hammer");
SOMWAdjuster("Base.PipeWrench","Weight", 1.4);
SOMWAdjuster("Base.PipeWrench","MinDamage", 0.55);
SOMWAdjuster("Base.PipeWrench","MaxDamage", 1.1);
SOMWAdjuster("Base.PipeWrench","MinRange", 0.61);
SOMWAdjuster("Base.PipeWrench","MaxRange", 1.2);
SOMWAdjuster("Base.PipeWrench","BaseSpeed", 0.85);
SOMWAdjuster("Base.PipeWrench","ConditionMax", 10);
SOMWAdjuster("Base.PipeWrench","ConditionLowerChanceOneIn", 26);
SOMWAdjuster("Base.PipeWrench","CriticalChance", 25);
SOMWAdjuster("Base.PipeWrench","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.PipeWrench","DoorDamage", 8);
SOMWAdjuster("Base.PipeWrench","TreeDamage", 0);
SOMWAdjuster("Base.PipeWrench","EnduranceMod", 1);

-- Wrench
SOMWAdjuster("Base.Wrench","AttachmentType","Hammer");
SOMWAdjuster("Base.Wrench","Weight", 0.8);
SOMWAdjuster("Base.Wrench","MinDamage", 0.45);
SOMWAdjuster("Base.Wrench","MaxDamage", 0.9);
SOMWAdjuster("Base.Wrench","MinRange", 0.61);
SOMWAdjuster("Base.Wrench","MaxRange", 1.0);
SOMWAdjuster("Base.Wrench","BaseSpeed", 1.0);
SOMWAdjuster("Base.Wrench","ConditionMax", 8);
SOMWAdjuster("Base.Wrench","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.Wrench","CriticalChance", 20);
SOMWAdjuster("Base.Wrench","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Wrench","DoorDamage", 3);
SOMWAdjuster("Base.Wrench","TreeDamage", 0);
SOMWAdjuster("Base.Wrench","EnduranceMod", 1);

-- Wooden Mallet
SOMWAdjuster("Base.WoodenMallet","Weight", 0.5);
SOMWAdjuster("Base.WoodenMallet","MinDamage", 0.3);
SOMWAdjuster("Base.WoodenMallet","MaxDamage", 0.6);
SOMWAdjuster("Base.WoodenMallet","MinRange", 0.61);
SOMWAdjuster("Base.WoodenMallet","MaxRange", 1.05);
SOMWAdjuster("Base.WoodenMallet","BaseSpeed", 1.0);
SOMWAdjuster("Base.WoodenMallet","ConditionMax", 8);
SOMWAdjuster("Base.WoodenMallet","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("Base.WoodenMallet","CriticalChance", 20);
SOMWAdjuster("Base.WoodenMallet","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.WoodenMallet","DoorDamage", 1);
SOMWAdjuster("Base.WoodenMallet","TreeDamage", 0);
SOMWAdjuster("Base.WoodenMallet","EnduranceMod", 1);

-- Stone Hammer
SOMWAdjuster("Base.HammerStone","Weight", 0.8);
SOMWAdjuster("Base.HammerStone","MinDamage", 0.35);
SOMWAdjuster("Base.HammerStone","MaxDamage", 0.7);
SOMWAdjuster("Base.HammerStone","MinRange", 0.61);
SOMWAdjuster("Base.HammerStone","MaxRange", 1.1);
SOMWAdjuster("Base.HammerStone","BaseSpeed", 0.95);
SOMWAdjuster("Base.HammerStone","ConditionMax", 6);
SOMWAdjuster("Base.HammerStone","ConditionLowerChanceOneIn", 12);
SOMWAdjuster("Base.HammerStone","CriticalChance", 15);
SOMWAdjuster("Base.HammerStone","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.HammerStone","DoorDamage", 2);
SOMWAdjuster("Base.HammerStone","TreeDamage", 0);
SOMWAdjuster("Base.HammerStone","EnduranceMod", 1);

-- RollingPin
SOMWAdjuster("Base.RollingPin","Weight", 0.6);
SOMWAdjuster("Base.RollingPin","MinDamage", 0.3);
SOMWAdjuster("Base.RollingPin","MaxDamage", 0.6);
SOMWAdjuster("Base.RollingPin","MinRange", 0.61);
SOMWAdjuster("Base.RollingPin","MaxRange", 1.1);
SOMWAdjuster("Base.RollingPin","BaseSpeed", 1.0);
SOMWAdjuster("Base.RollingPin","ConditionMax", 8);
SOMWAdjuster("Base.RollingPin","ConditionLowerChanceOneIn", 14);
SOMWAdjuster("Base.RollingPin","CriticalChance", 15);
SOMWAdjuster("Base.RollingPin","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.RollingPin","DoorDamage", 1);
SOMWAdjuster("Base.RollingPin","TreeDamage", 0);
SOMWAdjuster("Base.RollingPin","EnduranceMod", 1);

-- Pan
--SOMWAdjuster("Base.Pan","AttachmentType","BigBlade");
SOMWAdjuster("Base.Pan","Weight", 1.0);
SOMWAdjuster("Base.Pan","MinDamage", 0.3);
SOMWAdjuster("Base.Pan","MaxDamage", 0.6);
SOMWAdjuster("Base.Pan","MinRange", 0.61);
SOMWAdjuster("Base.Pan","MaxRange", 1.1);
SOMWAdjuster("Base.Pan","BaseSpeed", 0.95);
SOMWAdjuster("Base.Pan","ConditionMax", 8);
SOMWAdjuster("Base.Pan","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.Pan","CriticalChance", 20);
SOMWAdjuster("Base.Pan","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Pan","DoorDamage", 1);
SOMWAdjuster("Base.Pan","TreeDamage", 0);
SOMWAdjuster("Base.Pan","EnduranceMod", 1);

-- GridlePan
SOMWAdjuster("Base.GriddlePanFriedVegetables","Icon", "GriddlePanFullNew"); -- ICON FOR FOOD
SOMWAdjuster("Base.GridlePan","AttachmentType", "Pan"); -- FOR WEAPON
SOMWAdjuster("Base.GridlePan","Icon", "GriddlePanNew"); -- FOR WEAPON
SOMWAdjuster("Base.GridlePan","Weight", 1.0);
SOMWAdjuster("Base.GridlePan","MinDamage", 0.3);
SOMWAdjuster("Base.GridlePan","MaxDamage", 0.6);
SOMWAdjuster("Base.GridlePan","MinRange", 0.61);
SOMWAdjuster("Base.GridlePan","MaxRange", 1.1);
SOMWAdjuster("Base.GridlePan","BaseSpeed", 0.95);
SOMWAdjuster("Base.GridlePan","ConditionMax", 8);
SOMWAdjuster("Base.GridlePan","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.GridlePan","CriticalChance", 20);
SOMWAdjuster("Base.GridlePan","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.GridlePan","DoorDamage", 1);
SOMWAdjuster("Base.GridlePan","TreeDamage", 0);
SOMWAdjuster("Base.GridlePan","EnduranceMod", 1);

-- DumbBell
SOMWAdjuster("Base.DumbBell","Weight", 5.0);
SOMWAdjuster("Base.DumbBell","MinDamage", 0.7);
SOMWAdjuster("Base.DumbBell","MaxDamage", 1.4);
SOMWAdjuster("Base.DumbBell","MinRange", 0.61);
SOMWAdjuster("Base.DumbBell","MaxRange", 1.0);
SOMWAdjuster("Base.DumbBell","BaseSpeed", 0.9);
SOMWAdjuster("Base.DumbBell","ConditionMax", 10);
SOMWAdjuster("Base.DumbBell","ConditionLowerChanceOneIn", 26);
SOMWAdjuster("Base.DumbBell","CriticalChance", 25);
SOMWAdjuster("Base.DumbBell","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.DumbBell","DoorDamage", 10);
SOMWAdjuster("Base.DumbBell","TreeDamage", 0);
SOMWAdjuster("Base.DumbBell","EnduranceMod", 1);

-- Plunger
SOMWAdjuster("Base.Plunger","Weight", 0.5);
SOMWAdjuster("Base.Plunger","MinDamage", 0.25);
SOMWAdjuster("Base.Plunger","MaxDamage", 0.5);
SOMWAdjuster("Base.Plunger","MinRange", 0.61);
SOMWAdjuster("Base.Plunger","MaxRange", 1.0);
SOMWAdjuster("Base.Plunger","BaseSpeed", 1.0);
SOMWAdjuster("Base.Plunger","ConditionMax", 4);
SOMWAdjuster("Base.Plunger","ConditionLowerChanceOneIn", 6);
SOMWAdjuster("Base.Plunger","CriticalChance", 5);
SOMWAdjuster("Base.Plunger","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Plunger","DoorDamage", 1);
SOMWAdjuster("Base.Plunger","TreeDamage", 0);
SOMWAdjuster("Base.Plunger","EnduranceMod", 1);

-- Drumstick
SOMWAdjuster("Base.Drumstick","Weight", 0.2);
SOMWAdjuster("Base.Drumstick","MinDamage", 0.1);
SOMWAdjuster("Base.Drumstick","MaxDamage", 0.2);
SOMWAdjuster("Base.Drumstick","MinRange", 0.61);
SOMWAdjuster("Base.Drumstick","MaxRange", 1.0);
SOMWAdjuster("Base.Drumstick","BaseSpeed", 1.3);
SOMWAdjuster("Base.Drumstick","ConditionMax", 1);
SOMWAdjuster("Base.Drumstick","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.Drumstick","CriticalChance", 0);
SOMWAdjuster("Base.Drumstick","CritDmgMultiplier", 1); -- BluntCritDmg
SOMWAdjuster("Base.Drumstick","DoorDamage", 1);
SOMWAdjuster("Base.Drumstick","TreeDamage", 0);
SOMWAdjuster("Base.Drumstick","EnduranceMod", 1);

-- Pick Axe Handle
SOMWAdjuster("Base.PickAxeHandle","Weight", 0.8);
SOMWAdjuster("Base.PickAxeHandle","MinDamage", 0.3);
SOMWAdjuster("Base.PickAxeHandle","MaxDamage", 0.6);
SOMWAdjuster("Base.PickAxeHandle","MinRange", 0.61);
SOMWAdjuster("Base.PickAxeHandle","MaxRange", 1.0);
SOMWAdjuster("Base.PickAxeHandle","BaseSpeed", 1.0);
SOMWAdjuster("Base.PickAxeHandle","ConditionMax", 10);
SOMWAdjuster("Base.PickAxeHandle","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.PickAxeHandle","CriticalChance", 20);
SOMWAdjuster("Base.PickAxeHandle","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.PickAxeHandle","DoorDamage", 1);
SOMWAdjuster("Base.PickAxeHandle","TreeDamage", 0);
SOMWAdjuster("Base.PickAxeHandle","EnduranceMod", 1);

-- Spiked Pick Axe Handle
SOMWAdjuster("Base.PickAxeHandleSpiked","Weight", 0.8);
SOMWAdjuster("Base.PickAxeHandleSpiked","MinDamage", 0.4);
SOMWAdjuster("Base.PickAxeHandleSpiked","MaxDamage", 0.8);
SOMWAdjuster("Base.PickAxeHandleSpiked","MinRange", 0.61);
SOMWAdjuster("Base.PickAxeHandleSpiked","MaxRange", 1.0);
SOMWAdjuster("Base.PickAxeHandleSpiked","BaseSpeed", 1.0);
SOMWAdjuster("Base.PickAxeHandleSpiked","ConditionMax", 10);
SOMWAdjuster("Base.PickAxeHandleSpiked","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.PickAxeHandleSpiked","CriticalChance", 20);
SOMWAdjuster("Base.PickAxeHandleSpiked","CritDmgMultiplier", 2.4); -- BluntCritDmg
SOMWAdjuster("Base.PickAxeHandleSpiked","DoorDamage", 1);
SOMWAdjuster("Base.PickAxeHandleSpiked","TreeDamage", 0);
SOMWAdjuster("Base.PickAxeHandleSpiked","EnduranceMod", 1);

-- Banjo
SOMWAdjuster("Base.Banjo","Weight", 3.0);
SOMWAdjuster("Base.Banjo","MinDamage", 0.4);
SOMWAdjuster("Base.Banjo","MaxDamage", 0.8);
SOMWAdjuster("Base.Banjo","MinRange", 0.61);
SOMWAdjuster("Base.Banjo","MaxRange", 1.1);
SOMWAdjuster("Base.Banjo","BaseSpeed", 0.9);
SOMWAdjuster("Base.Banjo","ConditionMax", 4);
SOMWAdjuster("Base.Banjo","ConditionLowerChanceOneIn", 6);
SOMWAdjuster("Base.Banjo","CriticalChance", 20);
SOMWAdjuster("Base.Banjo","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.Banjo","DoorDamage", 3);
SOMWAdjuster("Base.Banjo","TreeDamage", 0);
SOMWAdjuster("Base.Banjo","EnduranceMod", 1);

-- Flute
SOMWAdjuster("Base.Flute","Weight", 0.1);
SOMWAdjuster("Base.Flute","MinDamage", 0.1);
SOMWAdjuster("Base.Flute","MaxDamage", 0.2);
SOMWAdjuster("Base.Flute","MinRange", 0.61);
SOMWAdjuster("Base.Flute","MaxRange", 0.9);
SOMWAdjuster("Base.Flute","BaseSpeed", 1.2);
SOMWAdjuster("Base.Flute","ConditionMax", 1);
SOMWAdjuster("Base.Flute","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.Flute","CriticalChance", 0);
SOMWAdjuster("Base.Flute","CritDmgMultiplier", 1); -- BluntCritDmg
SOMWAdjuster("Base.Flute","DoorDamage", 0);
SOMWAdjuster("Base.Flute","TreeDamage", 0);
SOMWAdjuster("Base.Flute","EnduranceMod", 1);

-- Violin
SOMWAdjuster("Base.Violin","Weight", 0.5);
SOMWAdjuster("Base.Violin","MinDamage", 0.2);
SOMWAdjuster("Base.Violin","MaxDamage", 0.4);
SOMWAdjuster("Base.Violin","MinRange", 0.61);
SOMWAdjuster("Base.Violin","MaxRange", 1.0);
SOMWAdjuster("Base.Violin","BaseSpeed", 1.0);
SOMWAdjuster("Base.Violin","ConditionMax", 4);
SOMWAdjuster("Base.Violin","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.Violin","CriticalChance", 0);
SOMWAdjuster("Base.Violin","CritDmgMultiplier", 1); -- BluntCritDmg
SOMWAdjuster("Base.Violin","DoorDamage", 0);
SOMWAdjuster("Base.Violin","TreeDamage", 0);
SOMWAdjuster("Base.Violin","EnduranceMod", 1);

-- Table Leg
SOMWAdjuster("Base.TableLeg","Weight", 1.2);
SOMWAdjuster("Base.TableLeg","MinDamage", 0.4);
SOMWAdjuster("Base.TableLeg","MaxDamage", 0.8);
SOMWAdjuster("Base.TableLeg","MinRange", 0.61);
SOMWAdjuster("Base.TableLeg","MaxRange", 1.0);
SOMWAdjuster("Base.TableLeg","BaseSpeed", 0.9);
SOMWAdjuster("Base.TableLeg","ConditionMax", 10);
SOMWAdjuster("Base.TableLeg","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.TableLeg","CriticalChance", 10);
SOMWAdjuster("Base.TableLeg","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.TableLeg","DoorDamage", 1);
SOMWAdjuster("Base.TableLeg","TreeDamage", 0);
SOMWAdjuster("Base.TableLeg","EnduranceMod", 1);

-- Chair Leg
SOMWAdjuster("Base.ChairLeg","Weight", 0.8);
SOMWAdjuster("Base.ChairLeg","MinDamage", 0.3);
SOMWAdjuster("Base.ChairLeg","MaxDamage", 0.6);
SOMWAdjuster("Base.ChairLeg","MinRange", 0.61);
SOMWAdjuster("Base.ChairLeg","MaxRange", 1.0);
SOMWAdjuster("Base.ChairLeg","BaseSpeed", 1.0);
SOMWAdjuster("Base.ChairLeg","ConditionMax", 10);
SOMWAdjuster("Base.ChairLeg","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.ChairLeg","CriticalChance", 10);
SOMWAdjuster("Base.ChairLeg","CritDmgMultiplier", 2); -- BluntCritDmg
SOMWAdjuster("Base.ChairLeg","DoorDamage", 1);
SOMWAdjuster("Base.ChairLeg","TreeDamage", 0);
SOMWAdjuster("Base.ChairLeg","EnduranceMod", 1);


-- /*** SHORT BLADE ***/

-- SLASH SB

-- Meat Cleaver
SOMWAdjuster("Base.MeatCleaver","Weight", 0.6);
SOMWAdjuster("Base.MeatCleaver","MinDamage", 0.5);
SOMWAdjuster("Base.MeatCleaver","MaxDamage", 1.0);
SOMWAdjuster("Base.MeatCleaver","MinRange", 0.61);
SOMWAdjuster("Base.MeatCleaver","MaxRange", 1.05);
SOMWAdjuster("Base.MeatCleaver","BaseSpeed", 1.1);
SOMWAdjuster("Base.MeatCleaver","ConditionMax", 10);
SOMWAdjuster("Base.MeatCleaver","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("Base.MeatCleaver","CriticalChance", 15);
SOMWAdjuster("Base.MeatCleaver","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.MeatCleaver","DoorDamage", 5);
SOMWAdjuster("Base.MeatCleaver","TreeDamage", 5);
SOMWAdjuster("Base.MeatCleaver","EnduranceMod", 1);
SOMWAdjuster("Base.MeatCleaver","Tags", "CutPlant;SharpKnife");

-- Hand Scythe
SOMWAdjuster("Base.HandScythe","Weight", 0.7);
SOMWAdjuster("Base.HandScythe","MinDamage", 0.55);
SOMWAdjuster("Base.HandScythe","MaxDamage", 1.1);
SOMWAdjuster("Base.HandScythe","MinRange", 0.61);
SOMWAdjuster("Base.HandScythe","MaxRange", 1.05);
SOMWAdjuster("Base.HandScythe","BaseSpeed", 1.2);
SOMWAdjuster("Base.HandScythe","ConditionMax", 8);
SOMWAdjuster("Base.HandScythe","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.HandScythe","CriticalChance", 15);
SOMWAdjuster("Base.HandScythe","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.HandScythe","DoorDamage", 4);
SOMWAdjuster("Base.HandScythe","TreeDamage", 4);
SOMWAdjuster("Base.HandScythe","EnduranceMod", 1);
SOMWAdjuster("Base.HandScythe","Tags", "CutPlant");

-- STAB SB

-- Hunting Knife
SOMWAdjuster("Base.HuntingKnife","Icon", "HuntingKnifeNew");
SOMWAdjuster("Base.HuntingKnife","Weight", 0.4);
SOMWAdjuster("Base.HuntingKnife","MinDamage", 0.5);
SOMWAdjuster("Base.HuntingKnife","MaxDamage", 1.0);
SOMWAdjuster("Base.HuntingKnife","MinRange", 0.61);
SOMWAdjuster("Base.HuntingKnife","MaxRange", 0.93);
SOMWAdjuster("Base.HuntingKnife","BaseSpeed", 1.0);
SOMWAdjuster("Base.HuntingKnife","ConditionMax", 10);
SOMWAdjuster("Base.HuntingKnife","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.HuntingKnife","CriticalChance", 50);
SOMWAdjuster("Base.HuntingKnife","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.HuntingKnife","DoorDamage", 2);
SOMWAdjuster("Base.HuntingKnife","TreeDamage", 2);
SOMWAdjuster("Base.HuntingKnife","EnduranceMod", 1);
-- Spear with Hunting Knife
SOMWAdjuster("Base.SpearHuntingKnife","Weight", 1.4);
SOMWAdjuster("Base.SpearHuntingKnife","MinDamage", 0.85);
SOMWAdjuster("Base.SpearHuntingKnife","MaxDamage", 1.7);
SOMWAdjuster("Base.SpearHuntingKnife","MinRange", 0.74);
SOMWAdjuster("Base.SpearHuntingKnife","MaxRange", 1.52);
SOMWAdjuster("Base.SpearHuntingKnife","BaseSpeed", 0.95);
SOMWAdjuster("Base.SpearHuntingKnife","ConditionMax", 10);
SOMWAdjuster("Base.SpearHuntingKnife","ConditionLowerChanceOneIn", 20);
SOMWAdjuster("Base.SpearHuntingKnife","CriticalChance", 17.5);
SOMWAdjuster("Base.SpearHuntingKnife","CritDmgMultiplier", 2); -- SpearCritDmg
SOMWAdjuster("Base.SpearHuntingKnife","DoorDamage", 5);
SOMWAdjuster("Base.SpearHuntingKnife","TreeDamage", 3);
SOMWAdjuster("Base.SpearHuntingKnife","EnduranceMod", 1.25);

-- Ice Pick
SOMWAdjuster("Base.IcePick","Weight", 0.3);
SOMWAdjuster("Base.IcePick","MinDamage", 0.4);
SOMWAdjuster("Base.IcePick","MaxDamage", 0.8);
SOMWAdjuster("Base.IcePick","MinRange", 0.61);
SOMWAdjuster("Base.IcePick","MaxRange", 0.9);
SOMWAdjuster("Base.IcePick","BaseSpeed", 1.0);
SOMWAdjuster("Base.IcePick","ConditionMax", 8);
SOMWAdjuster("Base.IcePick","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.IcePick","CriticalChance", 40);
SOMWAdjuster("Base.IcePick","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.IcePick","DoorDamage", 1);
SOMWAdjuster("Base.IcePick","TreeDamage", 1);
SOMWAdjuster("Base.IcePick","EnduranceMod", 1);
-- Spear with Ice Pick 
SOMWAdjuster("Base.SpearIcePick","Weight", 1.3); -- 2.0
SOMWAdjuster("Base.SpearIcePick","MinDamage", 0.8); -- 1.0
SOMWAdjuster("Base.SpearIcePick","MaxDamage", 1.6); -- 1.6
SOMWAdjuster("Base.SpearIcePick","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearIcePick","MaxRange", 1.48); -- 1.42
SOMWAdjuster("Base.SpearIcePick","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("Base.SpearIcePick","ConditionMax", 8); -- 6
SOMWAdjuster("Base.SpearIcePick","ConditionLowerChanceOneIn", 16); -- 3
SOMWAdjuster("Base.SpearIcePick","CriticalChance", 15); -- 30
SOMWAdjuster("Base.SpearIcePick","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearIcePick","DoorDamage", 2); -- 5
SOMWAdjuster("Base.SpearIcePick","TreeDamage", 1); -- 0
SOMWAdjuster("Base.SpearIcePick","EnduranceMod", 1.25);

-- Kitchen Knife
SOMWAdjuster("Base.KitchenKnife","Weight", 0.3);
SOMWAdjuster("Base.KitchenKnife","MinDamage", 0.35);
SOMWAdjuster("Base.KitchenKnife","MaxDamage", 0.7);
SOMWAdjuster("Base.KitchenKnife","MinRange", 0.61);
SOMWAdjuster("Base.KitchenKnife","MaxRange", 0.92);
SOMWAdjuster("Base.KitchenKnife","BaseSpeed", 1.0);
SOMWAdjuster("Base.KitchenKnife","ConditionMax", 8);
SOMWAdjuster("Base.KitchenKnife","ConditionLowerChanceOneIn", 8);
SOMWAdjuster("Base.KitchenKnife","CriticalChance", 40);
SOMWAdjuster("Base.KitchenKnife","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.KitchenKnife","DoorDamage", 1);
SOMWAdjuster("Base.KitchenKnife","TreeDamage", 1);
SOMWAdjuster("Base.KitchenKnife","EnduranceMod", 1);
-- Spear with Kitchen Knife 
SOMWAdjuster("Base.SpearKnife","Weight", 1.3); -- 2.0
SOMWAdjuster("Base.SpearKnife","MinDamage", 0.775); -- 1.0
SOMWAdjuster("Base.SpearKnife","MaxDamage", 1.55); -- 1.6
SOMWAdjuster("Base.SpearKnife","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearKnife","MaxRange", 1.5); -- 1.45
SOMWAdjuster("Base.SpearKnife","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("Base.SpearKnife","ConditionMax", 8); -- 7
SOMWAdjuster("Base.SpearKnife","ConditionLowerChanceOneIn", 8); -- 4
SOMWAdjuster("Base.SpearKnife","CriticalChance", 15); -- 30
SOMWAdjuster("Base.SpearKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearKnife","DoorDamage", 2); -- 5
SOMWAdjuster("Base.SpearKnife","TreeDamage", 1); -- 0
SOMWAdjuster("Base.SpearKnife","EnduranceMod", 1.25);

-- Bread Knife
SOMWAdjuster("Base.BreadKnife","Icon", "BreadKnifeNew");
SOMWAdjuster("Base.BreadKnife","Weight", 0.3);
SOMWAdjuster("Base.BreadKnife","MinDamage", 0.3);
SOMWAdjuster("Base.BreadKnife","MaxDamage", 0.6);
SOMWAdjuster("Base.BreadKnife","MinRange", 0.61);
SOMWAdjuster("Base.BreadKnife","MaxRange", 1.0);
SOMWAdjuster("Base.BreadKnife","BaseSpeed", 1.0);
SOMWAdjuster("Base.BreadKnife","ConditionMax", 6);
SOMWAdjuster("Base.BreadKnife","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.BreadKnife","CriticalChance", 40);
SOMWAdjuster("Base.BreadKnife","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.BreadKnife","DoorDamage", 1);
SOMWAdjuster("Base.BreadKnife","TreeDamage", 1);
SOMWAdjuster("Base.BreadKnife","EnduranceMod", 1);
-- Spear with Bread Knife 
SOMWAdjuster("Base.SpearBreadKnife","Weight", 1.3); -- 2.0
SOMWAdjuster("Base.SpearBreadKnife","MinDamage", 0.75); -- 1.0
SOMWAdjuster("Base.SpearBreadKnife","MaxDamage", 1.5); -- 1.6
SOMWAdjuster("Base.SpearBreadKnife","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearBreadKnife","MaxRange", 1.55); -- 1.42
SOMWAdjuster("Base.SpearBreadKnife","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("Base.SpearBreadKnife","ConditionMax", 6); -- 6
SOMWAdjuster("Base.SpearBreadKnife","ConditionLowerChanceOneIn", 10); -- 3
SOMWAdjuster("Base.SpearBreadKnife","CriticalChance", 15); -- 30
SOMWAdjuster("Base.SpearBreadKnife","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearBreadKnife","DoorDamage", 2); -- 5
SOMWAdjuster("Base.SpearBreadKnife","TreeDamage", 1); -- 5
SOMWAdjuster("Base.SpearBreadKnife","EnduranceMod", 1.25);

-- Screwdriver
SOMWAdjuster("Base.Screwdriver","Icon", "ScrewdriverNew");
SOMWAdjuster("Base.Screwdriver","Weight", 0.3);
SOMWAdjuster("Base.Screwdriver","MinDamage", 0.35);
SOMWAdjuster("Base.Screwdriver","MaxDamage", 0.7);
SOMWAdjuster("Base.Screwdriver","MinRange", 0.61);
SOMWAdjuster("Base.Screwdriver","MaxRange", 0.88);
SOMWAdjuster("Base.Screwdriver","BaseSpeed", 1.02);
SOMWAdjuster("Base.Screwdriver","ConditionMax", 6);
SOMWAdjuster("Base.Screwdriver","ConditionLowerChanceOneIn", 16);
SOMWAdjuster("Base.Screwdriver","CriticalChance", 30);
SOMWAdjuster("Base.Screwdriver","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.Screwdriver","DoorDamage", 1);
SOMWAdjuster("Base.Screwdriver","TreeDamage", 0);
SOMWAdjuster("Base.Screwdriver","EnduranceMod", 1);
-- Spear with Screwdriver 
SOMWAdjuster("Base.SpearScrewdriver","Weight", 1.3); -- 2.1
SOMWAdjuster("Base.SpearScrewdriver","MinDamage", 0.775); -- 1.2
SOMWAdjuster("Base.SpearScrewdriver","MaxDamage", 1.55); -- 1.6
SOMWAdjuster("Base.SpearScrewdriver","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearScrewdriver","MaxRange", 1.48); -- 1.45
SOMWAdjuster("Base.SpearScrewdriver","BaseSpeed", 0.95); -- 1.0
SOMWAdjuster("Base.SpearScrewdriver","ConditionMax", 6); -- 7
SOMWAdjuster("Base.SpearScrewdriver","ConditionLowerChanceOneIn", 16); -- 4
SOMWAdjuster("Base.SpearScrewdriver","CriticalChance", 12.5); -- 30
SOMWAdjuster("Base.SpearScrewdriver","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearScrewdriver","DoorDamage", 2); -- 7
SOMWAdjuster("Base.SpearScrewdriver","TreeDamage", 0); -- 0
SOMWAdjuster("Base.SpearScrewdriver","EnduranceMod", 1.25);

-- Trowel
SOMWAdjuster("farming.HandShovel","Icon", "TrowelNew");
SOMWAdjuster("farming.HandShovel","Weight", 0.5);
SOMWAdjuster("farming.HandShovel","MinDamage", 0.25);
SOMWAdjuster("farming.HandShovel","MaxDamage", 0.5);
SOMWAdjuster("farming.HandShovel","MinRange", 0.61);
SOMWAdjuster("farming.HandShovel","MaxRange", 0.9);
SOMWAdjuster("farming.HandShovel","BaseSpeed", 0.95);
SOMWAdjuster("farming.HandShovel","ConditionMax", 6);
SOMWAdjuster("farming.HandShovel","ConditionLowerChanceOneIn", 12);
SOMWAdjuster("farming.HandShovel","CriticalChance", 25);
SOMWAdjuster("farming.HandShovel","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("farming.HandShovel","DoorDamage", 1);
SOMWAdjuster("farming.HandShovel","TreeDamage", 0);
SOMWAdjuster("farming.HandShovel","EnduranceMod", 1);

-- Hand Fork
SOMWAdjuster("Base.HandFork","Weight", 0.5);
SOMWAdjuster("Base.HandFork","MinDamage", 0.25);
SOMWAdjuster("Base.HandFork","MaxDamage", 0.5);
SOMWAdjuster("Base.HandFork","MinRange", 0.61);
SOMWAdjuster("Base.HandFork","MaxRange", 0.9);
SOMWAdjuster("Base.HandFork","BaseSpeed", 0.95);
SOMWAdjuster("Base.HandFork","ConditionMax", 8);
SOMWAdjuster("Base.HandFork","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.HandFork","CriticalChance", 30);
SOMWAdjuster("Base.HandFork","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.HandFork","DoorDamage", 1);
SOMWAdjuster("Base.HandFork","TreeDamage", 0);
SOMWAdjuster("Base.HandFork","EnduranceMod", 1);
-- Spear with Hand Fork 
SOMWAdjuster("Base.SpearHandFork","Weight", 1.5); -- 2.2
SOMWAdjuster("Base.SpearHandFork","MinDamage", 0.725); -- 1.1
SOMWAdjuster("Base.SpearHandFork","MaxDamage", 1.45); -- 1.6
SOMWAdjuster("Base.SpearHandFork","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearHandFork","MaxRange", 1.5); -- 1.45
SOMWAdjuster("Base.SpearHandFork","BaseSpeed", 0.95); -- 0.95
SOMWAdjuster("Base.SpearHandFork","ConditionMax", 8); -- 7
SOMWAdjuster("Base.SpearHandFork","ConditionLowerChanceOneIn", 10); -- 4
SOMWAdjuster("Base.SpearHandFork","CriticalChance", 12.5); -- 30
SOMWAdjuster("Base.SpearHandFork","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearHandFork","DoorDamage", 2); -- 6
SOMWAdjuster("Base.SpearHandFork","TreeDamage", 0); -- 0
SOMWAdjuster("Base.SpearHandFork","EnduranceMod", 1.25);

-- Scissors
SOMWAdjuster("Base.Scissors","Icon", "ScissorsNew");
SOMWAdjuster("Base.Scissors","AttachmentType", "Nightstick");
SOMWAdjuster("Base.Scissors","Weight", 0.2);
SOMWAdjuster("Base.Scissors","MinDamage", 0.1);
SOMWAdjuster("Base.Scissors","MaxDamage", 0.2);
SOMWAdjuster("Base.Scissors","MinRange", 0.61);
SOMWAdjuster("Base.Scissors","MaxRange", 0.85);
SOMWAdjuster("Base.Scissors","BaseSpeed", 1.1);
SOMWAdjuster("Base.Scissors","ConditionMax", 6);
SOMWAdjuster("Base.Scissors","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.Scissors","CriticalChance", 20);
SOMWAdjuster("Base.Scissors","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.Scissors","DoorDamage", 1);
SOMWAdjuster("Base.Scissors","TreeDamage", 0);
SOMWAdjuster("Base.Scissors","EnduranceMod", 1);

-- Letter Opener
SOMWAdjuster("Base.LetterOpener","Weight", 0.2);
SOMWAdjuster("Base.LetterOpener","MinDamage", 0.1);
SOMWAdjuster("Base.LetterOpener","MaxDamage", 0.2);
SOMWAdjuster("Base.LetterOpener","MinRange", 0.61);
SOMWAdjuster("Base.LetterOpener","MaxRange", 0.88);
SOMWAdjuster("Base.LetterOpener","BaseSpeed", 1.1);
SOMWAdjuster("Base.LetterOpener","ConditionMax", 6);
SOMWAdjuster("Base.LetterOpener","ConditionLowerChanceOneIn", 3);
SOMWAdjuster("Base.LetterOpener","CriticalChance", 20);
SOMWAdjuster("Base.LetterOpener","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.LetterOpener","DoorDamage", 1);
SOMWAdjuster("Base.LetterOpener","TreeDamage", 0);
SOMWAdjuster("Base.LetterOpener","EnduranceMod", 1);

-- Scalpel
SOMWAdjuster("Base.Scalpel","Weight", 0.1);
SOMWAdjuster("Base.Scalpel","MinDamage", 0.1);
SOMWAdjuster("Base.Scalpel","MaxDamage", 0.2);
SOMWAdjuster("Base.Scalpel","MinRange", 0.61);
SOMWAdjuster("Base.Scalpel","MaxRange", 0.85);
SOMWAdjuster("Base.Scalpel","BaseSpeed", 1.2);
SOMWAdjuster("Base.Scalpel","ConditionMax", 6);
SOMWAdjuster("Base.Scalpel","ConditionLowerChanceOneIn", 2);
SOMWAdjuster("Base.Scalpel","CriticalChance", 20);
SOMWAdjuster("Base.Scalpel","CritDmgMultiplier", 4); -- ShortBladeCritDmg
SOMWAdjuster("Base.Scalpel","DoorDamage", 1);
SOMWAdjuster("Base.Scalpel","TreeDamage", 0);
SOMWAdjuster("Base.Scalpel","EnduranceMod", 1);

-- Stone Knife
SOMWAdjuster("Base.FlintKnife","Icon", "StoneKnifeNew");
SOMWAdjuster("Base.FlintKnife","Weight", 0.6);
SOMWAdjuster("Base.FlintKnife","MinDamage", 0.3);
SOMWAdjuster("Base.FlintKnife","MaxDamage", 0.6);
SOMWAdjuster("Base.FlintKnife","MinRange", 0.61);
SOMWAdjuster("Base.FlintKnife","MaxRange", 0.85);
SOMWAdjuster("Base.FlintKnife","BaseSpeed", 0.95);
SOMWAdjuster("Base.FlintKnife","ConditionMax", 6);
SOMWAdjuster("Base.FlintKnife","ConditionLowerChanceOneIn", 10);
SOMWAdjuster("Base.FlintKnife","CriticalChance", 20);
SOMWAdjuster("Base.FlintKnife","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.FlintKnife","DoorDamage", 1);
SOMWAdjuster("Base.FlintKnife","TreeDamage", 0);
SOMWAdjuster("Base.FlintKnife","EnduranceMod", 1);
SOMWAdjuster("Base.FlintKnife","Tags","SharpKnife;CutPlant");

-- Stake
SOMWAdjuster("Base.Stake","Weight", 0.3);
SOMWAdjuster("Base.Stake","MinDamage", 0.2);
SOMWAdjuster("Base.Stake","MaxDamage", 0.4);
SOMWAdjuster("Base.Stake","MinRange", 0.61);
SOMWAdjuster("Base.Stake","MaxRange", 0.85);
SOMWAdjuster("Base.Stake","BaseSpeed", 1.05);
SOMWAdjuster("Base.Stake","ConditionMax", 5);
SOMWAdjuster("Base.Stake","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.Stake","CriticalChance", 20);
SOMWAdjuster("Base.Stake","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.Stake","DoorDamage", 0);
SOMWAdjuster("Base.Stake","TreeDamage", 0);
SOMWAdjuster("Base.Stake","EnduranceMod", 1);

-- SmashedBottle
SOMWAdjuster("Base.SmashedBottle","Weight", 0.1);
SOMWAdjuster("Base.SmashedBottle","MinDamage", 0.2);
SOMWAdjuster("Base.SmashedBottle","MaxDamage", 0.4);
SOMWAdjuster("Base.SmashedBottle","MinRange", 0.61);
SOMWAdjuster("Base.SmashedBottle","MaxRange", 0.8);
SOMWAdjuster("Base.SmashedBottle","BaseSpeed", 1.2);
SOMWAdjuster("Base.SmashedBottle","ConditionMax", 5);
SOMWAdjuster("Base.SmashedBottle","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.SmashedBottle","CriticalChance", 20);
SOMWAdjuster("Base.SmashedBottle","CritDmgMultiplier", 2); -- ShortBladeCritDmg
SOMWAdjuster("Base.SmashedBottle","DoorDamage", 0);
SOMWAdjuster("Base.SmashedBottle","TreeDamage", 0);
SOMWAdjuster("Base.SmashedBottle","EnduranceMod", 1);

-- Fork
SOMWAdjuster("Base.Fork","Weight", 0.1);
SOMWAdjuster("Base.Fork","MinDamage", 0.1);
SOMWAdjuster("Base.Fork","MaxDamage", 0.1);
SOMWAdjuster("Base.Fork","MinRange", 0.61);
SOMWAdjuster("Base.Fork","MaxRange", 0.8);
SOMWAdjuster("Base.Fork","BaseSpeed", 1.1);
SOMWAdjuster("Base.Fork","ConditionMax", 5);
SOMWAdjuster("Base.Fork","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.Fork","CriticalChance", 0);
SOMWAdjuster("Base.Fork","CritDmgMultiplier", 1); -- LowShortBladeCritDmg
SOMWAdjuster("Base.Fork","DoorDamage", 0);
SOMWAdjuster("Base.Fork","TreeDamage", 0);
SOMWAdjuster("Base.Fork","EnduranceMod", 1);

-- Spoon
SOMWAdjuster("Base.Spoon","Weight", 0.1);
SOMWAdjuster("Base.Spoon","MinDamage", 0.1);
SOMWAdjuster("Base.Spoon","MaxDamage", 0.1);
SOMWAdjuster("Base.Spoon","MinRange", 0.61);
SOMWAdjuster("Base.Spoon","MaxRange", 0.8);
SOMWAdjuster("Base.Spoon","BaseSpeed", 1.1);
SOMWAdjuster("Base.Spoon","ConditionMax", 5);
SOMWAdjuster("Base.Spoon","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.Spoon","CriticalChance", 0);
SOMWAdjuster("Base.Spoon","CritDmgMultiplier", 1); -- LowShortBladeCritDmg
SOMWAdjuster("Base.Spoon","DoorDamage", 0);
SOMWAdjuster("Base.Spoon","TreeDamage", 0);
SOMWAdjuster("Base.Spoon","EnduranceMod", 1);

-- Butter Knife
SOMWAdjuster("Base.ButterKnife","Weight", 0.1);
SOMWAdjuster("Base.ButterKnife","MinDamage", 0.1);
SOMWAdjuster("Base.ButterKnife","MaxDamage", 0.1);
SOMWAdjuster("Base.ButterKnife","MinRange", 0.61);
SOMWAdjuster("Base.ButterKnife","MaxRange", 0.8);
SOMWAdjuster("Base.ButterKnife","BaseSpeed", 1.1);
SOMWAdjuster("Base.ButterKnife","ConditionMax", 5);
SOMWAdjuster("Base.ButterKnife","ConditionLowerChanceOneIn", 1);
SOMWAdjuster("Base.ButterKnife","CriticalChance", 0);
SOMWAdjuster("Base.ButterKnife","CritDmgMultiplier", 1); -- LowShortBladeCritDmg
SOMWAdjuster("Base.ButterKnife","DoorDamage", 0);
SOMWAdjuster("Base.ButterKnife","TreeDamage", 0);
SOMWAdjuster("Base.ButterKnife","EnduranceMod", 1);

-- Pen and Pencil
SOMWAdjuster("Base.Pen","Weight", 0.05); -- 0.1
SOMWAdjuster("Base.RedPen","Weight", 0.05); -- 0.1
SOMWAdjuster("Base.BluePen","Weight", 0.05); -- 0.1
SOMWAdjuster("Base.Pencil","Weight", 0.05); -- 0.1


-- /*** SPEARS ***/

-- WoodenLance
SOMWAdjuster("Base.WoodenLance","Weight", 1.0);
SOMWAdjuster("Base.WoodenLance","MinDamage", 0.6);
SOMWAdjuster("Base.WoodenLance","MaxDamage", 1.2);
SOMWAdjuster("Base.WoodenLance","MinRange", 0.74);
SOMWAdjuster("Base.WoodenLance","MaxRange", 1.4);
SOMWAdjuster("Base.WoodenLance","BaseSpeed", 1.0);
SOMWAdjuster("Base.WoodenLance","ConditionMax", 5);
SOMWAdjuster("Base.WoodenLance","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.WoodenLance","CriticalChance", 10);
SOMWAdjuster("Base.WoodenLance","CritDmgMultiplier", 2); -- SpearCritDmg
SOMWAdjuster("Base.WoodenLance","DoorDamage", 1);
SOMWAdjuster("Base.WoodenLance","TreeDamage", 0);
SOMWAdjuster("Base.WoodenLance","EnduranceMod", 1.25);
SOMWAdjuster("Base.WoodenLance","Tags","FishingSpear");

-- SpearCrafted
SOMWAdjuster("Base.SpearCrafted","Weight", 1.0);
SOMWAdjuster("Base.SpearCrafted","MinDamage", 0.6);
SOMWAdjuster("Base.SpearCrafted","MaxDamage", 1.2);
SOMWAdjuster("Base.SpearCrafted","MinRange", 0.74);
SOMWAdjuster("Base.SpearCrafted","MaxRange", 1.4);
SOMWAdjuster("Base.SpearCrafted","BaseSpeed", 1.0);
SOMWAdjuster("Base.SpearCrafted","ConditionMax", 5);
SOMWAdjuster("Base.SpearCrafted","ConditionLowerChanceOneIn", 4);
SOMWAdjuster("Base.SpearCrafted","CriticalChance", 10);
SOMWAdjuster("Base.SpearCrafted","CritDmgMultiplier", 2); -- SpearCritDmg
SOMWAdjuster("Base.SpearCrafted","DoorDamage", 1);
SOMWAdjuster("Base.SpearCrafted","TreeDamage", 0);
SOMWAdjuster("Base.SpearCrafted","EnduranceMod", 1.25);

-- Garden Fork
SOMWAdjuster("Base.GardenFork","Icon", "GardenForkNew");
SOMWAdjuster("Base.GardenFork","Weight", 1.6); -- 1.5
SOMWAdjuster("Base.GardenFork","MinDamage", 0.8); -- 1.0
SOMWAdjuster("Base.GardenFork","MaxDamage", 1.6); -- 1.5
SOMWAdjuster("Base.GardenFork","MinRange", 0.61); -- 0.61
SOMWAdjuster("Base.GardenFork","MaxRange", 1.35); -- 1.37
SOMWAdjuster("Base.GardenFork","BaseSpeed", 0.95); -- 0.9
SOMWAdjuster("Base.GardenFork","ConditionMax", 10); -- 10
SOMWAdjuster("Base.GardenFork","ConditionLowerChanceOneIn", 22); -- 15
SOMWAdjuster("Base.GardenFork","CriticalChance", 20); -- 30
SOMWAdjuster("Base.GardenFork","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.GardenFork","DoorDamage", 5); -- 7
SOMWAdjuster("Base.GardenFork","TreeDamage", 0); -- 0
SOMWAdjuster("Base.GardenFork","EnduranceMod", 1.25);

-- /*** LONG BLADE ***/

-- Katana
SOMWAdjuster("Base.Katana","Weight", 1.8);
SOMWAdjuster("Base.Katana","MinDamage", 3.0);
SOMWAdjuster("Base.Katana","MaxDamage", 6.0);
SOMWAdjuster("Base.Katana","MinRange", 0.61);
SOMWAdjuster("Base.Katana","MaxRange", 1.35);
SOMWAdjuster("Base.Katana","BaseSpeed", 1.0);
SOMWAdjuster("Base.Katana","ConditionMax", 14);
SOMWAdjuster("Base.Katana","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("Base.Katana","CriticalChance", 30);
SOMWAdjuster("Base.Katana","CritDmgMultiplier", 3); -- LongBladeCritDmg
SOMWAdjuster("Base.Katana","DoorDamage", 6);
SOMWAdjuster("Base.Katana","TreeDamage", 3);
SOMWAdjuster("Base.Katana","EnduranceMod", 1);

-- Machete
SOMWAdjuster("Base.Machete","Icon", "MacheteNew");
SOMWAdjuster("Base.Machete","AttachmentType", "LongBlade");
SOMWAdjuster("Base.Machete","Weight", 1.2);
SOMWAdjuster("Base.Machete","MinDamage", 1.1);
SOMWAdjuster("Base.Machete","MaxDamage", 2.2);
SOMWAdjuster("Base.Machete","MinRange", 0.61);
SOMWAdjuster("Base.Machete","MaxRange", 1.2);
SOMWAdjuster("Base.Machete","BaseSpeed", 1.0);
SOMWAdjuster("Base.Machete","ConditionMax", 20);
SOMWAdjuster("Base.Machete","ConditionLowerChanceOneIn", 18);
SOMWAdjuster("Base.Machete","CriticalChance", 20);
SOMWAdjuster("Base.Machete","CritDmgMultiplier", 3); -- LongBladeCritDmg
SOMWAdjuster("Base.Machete","DoorDamage", 10);
SOMWAdjuster("Base.Machete","TreeDamage", 10);
SOMWAdjuster("Base.Machete","EnduranceMod", 1.25);
-- Spear with Machete
SOMWAdjuster("Base.SpearMachete","Weight", 2.2); -- 3.7
SOMWAdjuster("Base.SpearMachete","MinDamage", 1.15); -- 1.3
SOMWAdjuster("Base.SpearMachete","MaxDamage", 2.3); -- 2.0
SOMWAdjuster("Base.SpearMachete","MinRange", 0.74); -- 0.98
SOMWAdjuster("Base.SpearMachete","MaxRange", 1.56); -- 1.55
SOMWAdjuster("Base.SpearMachete","BaseSpeed", 0.85); -- 0.9
SOMWAdjuster("Base.SpearMachete","ConditionMax", 20); -- 12
SOMWAdjuster("Base.SpearMachete","ConditionLowerChanceOneIn", 18); -- 10
SOMWAdjuster("Base.SpearMachete","CriticalChance", 20); -- 30
SOMWAdjuster("Base.SpearMachete","CritDmgMultiplier", 2); -- 10
SOMWAdjuster("Base.SpearMachete","DoorDamage", 11); -- 2
SOMWAdjuster("Base.SpearMachete","TreeDamage", 10); -- 10
SOMWAdjuster("Base.SpearMachete","EnduranceMod", 1.25);