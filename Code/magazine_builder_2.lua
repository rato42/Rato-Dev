local magazineData = {
    { id = "B93RR_1", magsize = 20, mag_mod = "MagNormal", ancestor_id = "GlockMagazine", generate_extended = true },
    { id = "USP_1", magsize = 12, mag_mod = "MagNormal", ancestor_id = "GlockMagazine", custom_icon = 'Mod/Dau6w/Images/usp_mag_def.png', generate_extended = true, extended_custom_icon = 'Mod/Dau6w/Images/usp_mag_ex.png' },
    { id = "VikingMP446_1", magsize = 12, mag_mod = "MagNormal", ancestor_id = "GlockMagazine", generate_extended = true },
    { id = "PKM_1", magsize = 100, mag_mod = "MagLarger", ancestor_id = "HKG3MagazineLarger", custom_icon = 'Mod/Dau6w/Images/pkm_mag_def.png' },
    { id = "RPD_1", magsize = 100, mag_mod = "MagLarger", ancestor_id = "AK47MagazineMagLarger" },
    { id = "P90_2", magsize = 50, mag_mod = "MagNormal", ancestor_id = "MP5MagazineLarge" },
    { id = "Gewehr43_1", magsize = 10, mag_mod = "MagNormal", ancestor_id = "SVDMagazine", generate_extended = true },
    { id = "P08_1", magsize = 8, mag_mod = "MagNormal", ancestor_id = "GlockMagazine" },
    { id = "M1911_1", magsize = 7, mag_mod = "MagNormal", ancestor_id = "DesertEagleMagazine" },
    { id = "M76_1", magsize = 10, mag_mod = "MagNormal", ancestor_id = "MP5Magazine" },
    { id = "MAC11_1", magsize = 32, mag_mod = "MagNormal", ancestor_id = "MP40Magazine" },
    { id = "MicroUZI_1", magsize = 20, mag_mod = "MagNormal", ancestor_id = "UZIMagazine", generate_extended = true },
    { id = "PP91_1", magsize = 20, mag_mod = "MagNormal", ancestor_id = "MP5Magazine", generate_extended = true },
    { id = "VigM2_1", magsize = 32, mag_mod = "MagNormal", ancestor_id = "MP40Magazine" },
    { id = "Delisle_1", magsize = 7, mag_mod = "MagNormal", ancestor_id = "DesertEagleMagazine" },
    { id = "SSG69_1", magsize = 5, mag_mod = "MagNormal", ancestor_id = "SVDMagazine", custom_icon = 'Mod/KKh3Yhf/Images/SSG69_Mag_def_icon.png' },
    { id = "HK23E_1", magsize = 100, mag_mod = "MagLarger", ancestor_id = "HKG3MagazineLarger", shared_weapons_id_table = { "HK23ECamo_1" } },
    { id = "SteyrScout_1", magsize = 5, mag_mod = "MagNormal", ancestor_id = "SVDMagazine", custom_icon = 'Mod/Dau6w/Images/Scout_mag_def.png' },
    { id = "StenMK2_1", magsize = 32, mag_mod = "MagNormal", ancestor_id = "MP40Magazine", custom_icon = 'Mod/Dau6w/Images/Sten_mag_def.png' },
    { id = "STG44R_1", magsize = 30, mag_mod = "MagNormal", ancestor_id = "AK47Magazine" },
    { id = "UMP_1", magsize = 30, mag_mod = "MagNormal", ancestor_id = "MP40Magazine", custom_icon = 'Mod/Dau6w/Images/UMP_mag_def.png' }
}



-- Function to build the magazine item and add it to the visual_output_table
local function BuildMagazineItemRATRVE(id, magsize, mag_mod, ancestor_id, custom_icon, shared_weapons_id_table, generate_extended, extended_custom_icon, visual_output_table, RevMag_Msg_code)
   
	
	
	local w = g_Classes[id]
    local slots = w.ComponentSlots
    local comp
    for i, slot in ipairs(slots) do
        if slot.SlotType == "Magazine" then
            comp = slot
            break
        end
    end

    if not comp then return end

    local df_mag_id = comp.DefaultComponent
    local mag_comp = WeaponComponents[df_mag_id]

		-- Helper function to generate a random 12-digit ID
	local function generate12DigitRandom()
		return math.random(100000, 999999) * 1000000 + math.random(100000, 999999)
	end

	-- Helper function to get entity and icon for the magazine
	local function getEntityAndIcon(mag_comp, custom_icon_override)
		local visual = mag_comp.Visuals[table.find(mag_comp.Visuals, "ApplyTo", id)]
		local entity, icon = visual and visual.Entity, visual and visual.Icon
		if not icon or icon == "" then
			icon = mag_comp.Icon
		end
		if custom_icon_override then
			icon = custom_icon_override
		end
		return entity, icon
	end

	-- Helper function to generate tabua (object data) for magazines
	local function generateTabua(mag_item_id, mag_class, icon, displayName, displayNamePlural, description, add_hint, platform, magsize, cal, mag_mod, ancestor)
		return {
			Group = "Default",
			Id = mag_item_id,
			object_class = mag_class,
			ScrapParts = ancestor.ScrapParts,
			Repairable = ancestor.Repairable,
			Icon = icon,
			DisplayName = displayName,
			DisplayNamePlural = displayNamePlural,
			Description = description,
			AdditionalHint = add_hint,
			Cost = ancestor.Cost,
			CanAppearInShop = ancestor.CanAppearInShop,
			Tier = w.Tier,
			RestockWeight = ancestor.RestockWeight,
			CanBeConsumed = ancestor.CanBeConsumed,
			CategoryPair = ancestor.CategoryPair,
			Platform = platform,
			MagazineSize = magsize,
			Caliber = w.Caliber,
			Modification = mag_mod,
			Type = ancestor.Type,
			Weight = ancestor.Weight,
			ExtraAPCosts = ancestor.ExtraAPCosts,
			MagReloadCosts = ancestor.MagReloadCosts,
			MagUnloadCosts = ancestor.MagUnloadCosts,
			PocketL_amount = ancestor.PocketL_amount,
			PocketM_amount = ancestor.PocketM_amount,
			PocketML_amount = ancestor.PocketML_amount,
			PocketS_amount = ancestor.PocketS_amount,
			RifleMag_amount = ancestor.RifleMag_amount,
			PistolMag_amount = ancestor.PistolMag_amount,
			PistolHolster_amount = ancestor.PistolHolster_amount,
			KnifeSheath_amount = ancestor.KnifeSheath_amount,
			Carabiner_amount = ancestor.Carabiner_amount,
		}
	end

	-- Helper function to generate visual tabua (visual data)
	local function generateVisualTabua(id, entity, icon)
		return {
			ApplyTo = id,
			Entity = entity or 'placeholder_7',
			Icon = icon,
			Slot = "Magazine",
			param_bindings = false,
		}
	end

    local entity, icon = getEntityAndIcon(mag_comp, custom_icon)
    local mag_class = IsKindOf(w, "Pistol") and "PistolMag" or IsKindOfClasses(w, "AssaultRifle", 'SniperRifle') and "RifleMag" or IsKindOf(w, "SubmachineGun") and "SmgMag" or "LargeMag"
    local ancestor = g_Classes[ancestor_id]
    local cal = FindPreset("Caliber", w.Caliber) 
    cal = cal and cal.Name[2] or ""
    local wepname = w.DisplayName[2]

    -- Generate display names and descriptions
    local displayName = "T(" .. generate12DigitRandom() .. "," .. "'".. wepname .. " Magazine" .. "'".. ")"
    local displayNamePlural = "T(" .. generate12DigitRandom().. "," .. "'".. wepname .. " Magazines".. "'".. ")"
    local description = "T(" .. generate12DigitRandom().. "," .. "'".. wepname.. " Magazine for ".. cal .. " rounds".. "'".. ")"
    local add_hint = "T(" .. generate12DigitRandom().. "," .. "'".. cal.. "'".. ")"
    local platform = id .. "_".. w.Caliber
    local mag_item_id = id.."_Mag"

    -- Generate tabua data for the magazine
    local tabua = generateTabua(mag_item_id, mag_class, icon, displayName, displayNamePlural, description, add_hint, platform, magsize, cal, mag_mod, ancestor)
    local visual_data = generateVisualTabua(mag_item_id, entity, icon)

    -- Add to the visual output table and REV setup message
    table.insert(visual_output_table, visual_data)
    table.insert(RevMag_Msg_code, "REV_SetupWeapon(\"" .. tabua .. "\")")

    -- Optionally handle extended magazines
    --[[if generate_extended then
        local extended_icon = extended_custom_icon or icon
        local extended_mag_id = id .. "_Ext"
        local extended_data = generateTabua(extended_mag_id, mag_class, extended_icon, displayName .. " Extended", displayNamePlural .. " Extended", description .. " Extended", add_hint, platform, magsize + 10, cal, mag_mod, ancestor)
        local extended_visual_data = generateVisualTabua(extended_mag_id, entity, extended_icon)
        table.insert(visual_output_table, extended_visual_data)
        table.insert(RevMag_Msg_code, "REV_SetupWeapon(\"" .. extended_data .. "\")")
    end]]
end

-- Main function that processes all magazines
function rat_buildmags2()
    local visual_output_table = {}
    local RevMag_Msg_code = {}

    for _, data in ipairs(magazineData) do
        BuildMagazineItemRATRVE(data.id, data.magsize, data.mag_mod, data.ancestor_id, data.custom_icon, data.shared_weapons_id_table, data.generate_extended, data.extended_custom_icon, visual_output_table, RevMag_Msg_code)
    end

    -- Output the generated visual and REV setup data
    return visual_output_table, RevMag_Msg_code
end


