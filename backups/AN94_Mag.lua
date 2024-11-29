UndefineClass('AN94_Mag')
DefineClass.AN94_Mag = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	comment = "---not used for now",
	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/KKh3Yhf/Images/AN94_Mag_def_icon.png",
	DisplayName = T(326058274473, --[[ModItemInventoryItemCompositeDef AN94_Mag DisplayName]] "AN-94 Magazine"),
	DisplayNamePlural = T(101245382226, --[[ModItemInventoryItemCompositeDef AN94_Mag DisplayNamePlural]] "AN-94 Magazines"),
	Description = T(705274485186, --[[ModItemInventoryItemCompositeDef AN94_Mag Description]] "AN-94 Magazine for 5.45 round"),
	AdditionalHint = T(720585154977, --[[ModItemInventoryItemCompositeDef AN94_Mag AdditionalHint]] "5.45mm"),
	Cost = 600,
	CanAppearInShop = true,
	Tier = 3,
	MaxStock = 1,
	RestockWeight = 50,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	Weight = 120,
	Platform = "AK545",
	Caliber = "5_45x39",
	Modification = "MagNormal_AN94_GBOTOG",
	Type = "Rifle",
	MagReloadCosts = 22000,
	MagUnloadCosts = 11000,
}

