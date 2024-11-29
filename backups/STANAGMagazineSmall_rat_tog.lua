UndefineClass('STANAGMagazineSmall_rat_tog')
DefineClass.STANAGMagazineSmall_rat_tog = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	comment = "---not used for now",
	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/KKh3Yhf/Images/HK33_mag_def.png",
	DisplayName = T(469099163783, --[[ModItemInventoryItemCompositeDef STANAGMagazineSmall_rat_tog DisplayName]] "STANAG Magazine"),
	DisplayNamePlural = T(672924872969, --[[ModItemInventoryItemCompositeDef STANAGMagazineSmall_rat_tog DisplayNamePlural]] "STANAG Magazines"),
	Description = T(642397369073, --[[ModItemInventoryItemCompositeDef STANAGMagazineSmall_rat_tog Description]] "Standard STANAG Magazine for 5.56 round"),
	AdditionalHint = T(724932678973, --[[ModItemInventoryItemCompositeDef STANAGMagazineSmall_rat_tog AdditionalHint]] "5.56mm"),
	Cost = 349,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	PocketM_amount = 1,
	MagazineSize = 10,
	Caliber = "556",
	Modification = "RevMag_Tog_MagSmall",
	Type = "Rifle",
	MagReloadCosts = 11000,
	MagUnloadCosts = 6000,
}

