UndefineClass('SKS_mag')
DefineClass.SKS_mag = {
	__parents = { "RifleMag" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "RifleMag",
	ScrapParts = 3,
	Repairable = false,
	Icon = "Mod/KKh3Yhf/Images/Papovka_mag_def.png",
	DisplayName = T(617292240809, --[[ModItemInventoryItemCompositeDef SKS_mag DisplayName]] "Small Magazine"),
	DisplayNamePlural = T(830309334617, --[[ModItemInventoryItemCompositeDef SKS_mag DisplayNamePlural]] "Small Magazines"),
	Description = T(620014307820, --[[ModItemInventoryItemCompositeDef SKS_mag Description]] "Ten round 7.62 WP magazine."),
	AdditionalHint = T(905321061767, --[[ModItemInventoryItemCompositeDef SKS_mag AdditionalHint]] "7.62mm"),
	Cost = 299,
	CanAppearInShop = true,
	MaxStock = 6,
	RestockWeight = 90,
	CanBeConsumed = false,
	CategoryPair = "RifleMags",
	PocketM_amount = 1,
	Weight = 100,
	Platform = "AK762",
	MagazineSize = 10,
	Caliber = "762WP",
	Modification = "RevMag_Tog_MagSmall",
	Type = "Rifle",
	MagReloadCosts = 11000,
	MagUnloadCosts = 6000,
}

