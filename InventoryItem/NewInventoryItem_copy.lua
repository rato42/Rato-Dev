UndefineClass('NewInventoryItem_copy')
DefineClass.NewInventoryItem_copy = {
	__parents = { "AssaultRifle" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "AssaultRifle",
	ScrapParts = 10,
	Reliability = 90,
	Icon = "Mod/KKh3Yhf/Images/A91_icon.png",
	DisplayName = T(524387256746, --[[ModItemInventoryItemCompositeDef NewInventoryItem_copy DisplayName]] "A91 TESTE"),
	DisplayNamePlural = T(900526981251, --[[ModItemInventoryItemCompositeDef NewInventoryItem_copy DisplayNamePlural]] "A91s"),
	Description = T(832950361147, --[[ModItemInventoryItemCompositeDef NewInventoryItem_copy Description]] "<style PerkststsBold ><scale 900>The A-91 is a bullpup assault rifle developed during the 1990s as an offspring of the 9A-91 firearm family.<newline><newline>The A-91 has a forward ejection system, initially developed in Tula by designers like Afanasiev during the early 1960s. In this system, the ejection port is located right above the pistol grip, and is directed forward. Extracted cases go from bolt head through the short ejection tube to the ejection port, and fall out of the gun well clear of the shooter's face, even when firing from the left shoulder.<newline><newline> As for now, the A-91 is made in small numbers and, probably, is used by some elite police units in Russia<newline><newline><style MMOptionEntry>Made in Russia <image UI/Icons/Flags/f_russia.dds 1600>"),
	AdditionalHint = T(836660682051, --[[ModItemInventoryItemCompositeDef NewInventoryItem_copy AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Low damage\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased bonus from Aiming\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Low attack costs\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Increased Reload cost\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Less noisy"),
	LargeItem = 1,
	UnitStat = "Marksmanship",
	Cost = 2500,
	RestockWeight = 40,
	CategoryPair = "AssaultRifles",
	Caliber = "556",
	Damage = 17,
	AimAccuracy = 5,
	CritChanceScaled = 20,
	MagazineSize = 30,
	PenetrationClass = 2,
	WeaponRange = 24,
	OverwatchAngle = 1440,
	Noise = 10,
	HandSlot = "TwoHanded",
	Entity = "A91_556",
	ComponentSlots = {
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Under",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"VerticalGrip",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Bipod",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"Bipod",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "General",
			'Modifiable', false,
			'AvailableComponents', {
				"bullup",
			},
			'DefaultComponent', "bullup",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Grenadelauncher",
			'Modifiable', false,
			'AvailableComponents', {
				"M60_GrenadeLauncher_1",
			},
			'DefaultComponent', "M60_GrenadeLauncher_1",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Side",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"Flashlight",
				"LaserDot",
				"FlashlightDot",
				"UVDot",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Barrel",
			'AvailableComponents', {
				"A91_762_barrel_shrt_1",
				"A91_762_barrel_def_1",
				"A91_762_barrel_ext_1",
			},
			'DefaultComponent', "A91_762_barrel_def_1",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Scope",
			'AvailableComponents', {
				"LROptics",
				"ReflexSight",
				"ScopeCOGQuick",
				"ScopeCOG",
				"ThermalScope",
				"RAT_TOG_vigilanceRS",
				"RAT_TOG_WideScope",
				"DefaultIronsight_AR15",
			},
			'DefaultComponent', "DefaultIronsight_AR15",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Muzzle",
			'Modifiable', false,
			'AvailableComponents', {
				"ToG_VFX_Muzzle",
			},
			'DefaultComponent', "ToG_VFX_Muzzle",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Gassblock",
			'AvailableComponents', {
				"RAT_TOG_CompensatorNoEntity",
			},
			'DefaultComponent', "RAT_TOG_CompensatorNoEntity",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Magazine",
			'AvailableComponents', {
				"A91_762_mag_def_1",
				"A91_762_mag_ext_1",
			},
			'DefaultComponent', "A91_762_mag_def_1",
		}),
	},
	HolsterSlot = "Shoulder",
	AvailableAttacks = {
		"BurstFire",
		"AutoFire",
		"SingleShot",
		"CancelShot",
	},
	ShootAP = 5000,
	ReloadAP = 4000,
}

