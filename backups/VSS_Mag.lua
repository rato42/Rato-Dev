UndefineClass('VSS_Mag')
DefineClass.VSS_Mag = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/KKh3Yhf/Images/VSS_Mag_def_icon.png",
	DisplayName = T(675005996003, --[[ModItemInventoryItemCompositeDef VSS_Mag DisplayName]] "VSS Vintorez Magazine"),
	DisplayNamePlural = T(946026164463, --[[ModItemInventoryItemCompositeDef VSS_Mag DisplayNamePlural]] "VSS Vintorez Magazines"),
	Description = T(622838903311, --[[ModItemInventoryItemCompositeDef VSS_Mag Description]] "10 rounds magazine for the 9x39mm, commonly used in the VSS Vintorez and also compatible with the VSK94."),
	AdditionalHint = T(650628388358, --[[ModItemInventoryItemCompositeDef VSS_Mag AdditionalHint]] "9x39mm"),
	Cost = 349,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	PocketM_amount = 1,
	Weight = 100,
	Platform = "VSS939",
	MagazineSize = 10,
	Caliber = "9x39",
	Modification = "MagNormal",
	Type = "Rifle",
	MagReloadCosts = 11000,
	MagUnloadCosts = 6000,
}

