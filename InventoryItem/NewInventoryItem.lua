UndefineClass('NewInventoryItem')
DefineClass.NewInventoryItem = {
	__parents = { "AssaultRifle" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "AssaultRifle",
	ScrapParts = 15,
	RepairCost = 110,
	Reliability = 95,
	Icon = "Mod/KKh3Yhf/Images/G11_icon.png",
	DisplayName = T(987267705513, --[[ModItemInventoryItemCompositeDef NewInventoryItem DisplayName]] "G 11 test"),
	DisplayNamePlural = T(434010049423, --[[ModItemInventoryItemCompositeDef NewInventoryItem DisplayNamePlural]] "G 11s"),
	Description = T(483015059058, --[[ModItemInventoryItemCompositeDef NewInventoryItem Description]] "<style PerkststsBold ><scale 900>The G11 is a non-production prototype assault rifle developed from the late 1960s-1980s.<newline><newline>It was primarily a project of West Germany, though it was of significance to the other NATO countries as well. In particular, versions of the G11 were included in the U.S. Advanced Combat Rifle program. In 1990, the development of the G11 was finished.<newline><newline>Although the weapon was a technical success, it never entered full production due to the political changes of German reunification and lack of procurement contract.<newline><newline>Only 1000 units were ever produced, some of which made their way into the hands of the Bundeswehr. Ultimately, the German armed forces replaced the G3 with the G36.<newline><newline><style MMOptionEntry>Made in Germany <image UI/Icons/Flags/f_germany.dds 1600>"),
	AdditionalHint = T(400305309563, --[[ModItemInventoryItemCompositeDef NewInventoryItem AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Longer range\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Low attack costs\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Exceptionaly low reload costs"),
	LargeItem = 1,
	UnitStat = "Marksmanship",
	Cost = 24499,
	Tier = 3,
	MaxStock = 2,
	RestockWeight = 25,
	CategoryPair = "AssaultRifles",
	Caliber = "556",
	Damage = 24,
	AimAccuracy = 8,
	MagazineSize = 45,
	PenetrationClass = 2,
	WeaponRange = 30,
	OverwatchAngle = 1818,
	HandSlot = "TwoHanded",
	Entity = "G11",
	fxClass = "G36",
	ComponentSlots = {
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Barrel",
			'AvailableComponents', {
				"G11_Barrel_def_1",
				"G11_Barrel_ext_1",
			},
			'DefaultComponent', "G11_Barrel_def_1",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Scope",
			'AvailableComponents', {
				"G11_Scope_1",
				"G11_Rail_1",
			},
			'DefaultComponent', "G11_Scope_1",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Muzzle",
			'AvailableComponents', {
				"CAWS_Muzzle_def_1",
				"RAT_TOG_compensator",
				"RAT_TOG_suppressor_762",
			},
			'DefaultComponent', "CAWS_Muzzle_def_1",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Magazine",
			'AvailableComponents', {
				"G11_Mag_def_1",
				"G11_Mag_ext_1",
				"G11_Mag_ext2_1",
			},
			'DefaultComponent', "G11_Mag_def_1",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Under",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"G11_Grenadelauncher_1",
				"G11_Grip_CAWS_1",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Bipod",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"G11_Bipod_1",
			},
		}),
	},
	HolsterSlot = "Shoulder",
	AvailableAttacks = {
		"BurstFire",
		"MGBurstFire",
		"AutoFire",
		"SingleShot",
		"CancelShot",
	},
	ShootAP = 4000,
}

