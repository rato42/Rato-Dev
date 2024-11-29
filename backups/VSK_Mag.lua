UndefineClass('VSK_Mag')
DefineClass.VSK_Mag = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/KKh3Yhf/Images/VSK94_mag_def.png",
	DisplayName = T(911405037653, --[[ModItemInventoryItemCompositeDef VSK_Mag DisplayName]] "VSK Magazine"),
	DisplayNamePlural = T(835965409178, --[[ModItemInventoryItemCompositeDef VSK_Mag DisplayNamePlural]] "VSK Magazines"),
	Description = T(799482334819, --[[ModItemInventoryItemCompositeDef VSK_Mag Description]] "20 rounds magazine for the 9x39mm, commonly used in the VSK94 and also compatible with the VSS Vintorez."),
	AdditionalHint = T(311257927714, --[[ModItemInventoryItemCompositeDef VSK_Mag AdditionalHint]] "9x39mm"),
	Cost = 349,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	Platform = "VSS939",
	MagazineSize = 20,
	Caliber = "9x39",
	Modification = "MagLarge",
	Type = "Rifle",
	MagReloadCosts = 18000,
	MagUnloadCosts = 9000,
}

