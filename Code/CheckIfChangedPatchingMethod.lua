local patched = {
    "M70_stock_fld_1", "PP91_Stock_fld_1", "MP7_stock_fld_1", "M70D_stock_fld_1", "VSK94_stock_fld_1",
    "HK53_stock_fld_1", "RK95_Stock_shrt_1", "AN94_Stock_fld_1", "Papovka2_Grnd_unfld_1", "Papovka_Grnd_unfld_1",
    "M70D_grndl_unfld_1", "M70_grndl_unfld_1", "Papovka2_Grnd_fld_1", "Papovka_Grnd_fld_1", "Papovka2_Bay_fld_1",
    "SKS_Bay_fld_1", "Type56A_Bay_fld_1", "Type56B_Bay_fld_1", "Type56C_Bay_fld_1", "Type56D_Bay_fld_1",
    "Papovka_Bay_fld_1", "foldable_StockNormal", "AN94_Stock_def_1", "M70D_stock_unfld_1", "VSK94_stock_unfld_1",
    "MP7_stock_unfld_1", "HK53_stock_unfld_1", "RK95_Stock_def_1", "PP91_Stock_unfld_1", "RAT_TOG_vigilanceRS",
    "RAT_TOG_vigilanceRS_rpk_mount", "RAT_TOG_tactical_dot", "RAT_TOG_tactical_dot_rpk_mount", "Caws_Barrel_long_1",
    "Spas12_Barrel_ext_1", "PP91_Mag_ext_1", "Viking_mag_ext_1", "MP7_Mag_ext_1", "RK95_Mag_ext_1", "RK62_Mag_ext_1",
    "MicroUZI_Mag_ext_1", "M1911_Mag_ext_1", "SSG69_Mag_ext_1", "BrenMK1_Mag_ext_1", "Tokarev_Mag_ext_1",
    "AWP_mag_ext_1", "AN94_Mag_ext_1", "Automag_Mag_ext_1", "P08_Mag_ext_1", "PPSh_Mag_ext_1", "ToG_Comp_Pstl_expmag_1",
    "SSG69_Mag_ext_1", "G43_Mag_ext_1", "VSS_Mag_ext_1", "G3_Mag_ext_1", "G11_Mag_ext_1", "FG42_Mag_ext_1",
    "P08_Mag_ext_1", "CAWS_Mag_L_1", "uspr_mag_ext_1", "WA2000_Mag_L_1", "Papovka2_Mag_ext_1", "Papovka_Mag_ext_1",
    "VSS_Mag_ext_1", "B93RR_mag_ext_1", "TAR21_Mag_ext_1", "B93R_Barrel_ext_1", "P08_Barrel_Long_1",
    "ToG_Comp_Pstl_Barrel_Long", "Automag_Barrel_ext_1", "B93RR_barrel_ext_1", "Viking_Barrel_ext_1",
    "MicroUZI_Barrel_ext_1", "Mac11_Barrel_ext_1", "ToG_Comp_AR_Barrel_Long_1_SMG", "M1911_Barrel_ext_1",
    "VigM2_Barrel_ext_1", "PP91_Barrel_ext_1", "MP7_Grip_unfld_1", "M60_Grip_und_1", "M60_Grip_side_1",
    "Caws_Grip_def_1", "G11_Grip_CAWS_1", "B93R_Under_unfld_1", "Papovka2_Barrel_shrt_1", "Papovka_Barrel_shrt_1",
    "Type56A_Barrel_shrt_1", "Type56B_Barrel_shrt_1", "Type56C_Barrel_shrt_1", "Type56D_Barrel_shrt_1",
    "RK62_Barrel_shrt_1", "RK95_Barrel_shrt_1", "BrenMK1_Barrel_shrt_1", "AN94_Barrel_short_1", "STG44_Barrel_shrt_1",
    "Type56B_Barrel_shrt_1", "AN94_Barrel_short_1", "M70_barrel_shrt_1", "hk23e_barrel_shrt_1", "hk33_barrel_shrt_1",
    "m76_barrel_shrt_1", "G3A3_barrel_shrt_1", "ToG_Comp_Pstl_Barrel_Long_1", "ToG_Comp_AR_Barrel_Long_2_SMG",
    "VSS_Ironsight_1", "RK62_Irons_1", "RK95_Irons_1", "RAT_pap_compensator", "RAT_TOG_compensator", "hk33_muzzle_1",
    "G3A3_muzzle_1", "RK95_Muzzle_def_1", "RK62_Muzzle_def_1", "TAR21_Muzzle_def_1", "SKS_Bay_unfld_1",
    "Type56A_Bay_unfld_1", "Type56B_Bay_unfld_1", "Type56C_Bay_unfld_1", "Type56D_Bay_unfld_1", "Papovka_Bay_unfld_1",
    "Papovka2_Bay_unfld_1", "M60_GrenadeLauncher_1", "G11_Grenadelauncher_1", "RPD_bipod_fld_1", "RPD_bipod_unfld_1",
    "ToG_Bipod_1", "BrenMK1_Bipod_fld_1", "M60_Bip_fld_1", "M60_Bip_unfld_1", "PKM_Bipod_Fold_1", "PKM_Bipod_Unfold_1",
    "BrenMK1_Bipod_unfld_1", "AN94_Bip_def_1", "G11_Bipod_1", "FG42_Bipod_1", "hk23e_bipod_fld_1",
    "hk23e_bipod_unfld_1", "hk33_bipod_fld_1", "hk33_bipod_unfld_1", "SKS_Scope", "RAT_TOG_PSGScope",
    "RAT_TOG_PSGScope_rpk_mount", "RAT_TOG_compactRS", "RAT_TOG_compactRS_rpk_mount", "RK62_Stock_hvy_1",
    "BrenMK1_Stock_hvy_1", "LeeEn_Stock_Heavy_1", "M60_Stock_hvy_1", "PPSh_Stock_heavy_1", "Papovka_Stock_hvy_cross1_1",
    "Papovka2_Stock_hvy_cross1_1", "Type56A_stock_hvy_1", "Type56B_stock_hvy_1", "Type56C_stock_hvy_1",
    "Type56D_stock_hvy_1", "STG44_Stock_hvy_1", "AWP_Stock_rst_1", "Papovka2_Stock_hvy_1", "Papovka_Stock_hvy_1",
    "hk23e_stock_hvy_1", "hk53_Stock_heavy", "G3A3_stock_hvy_1", "m76_stock_hvy_1", "G3A3_stock_hvy_1", "RAT_TOG_ACOG",
    "RAT_TOG_ACOG_rpk_mount", "RK62_Stock_shrt_1", "BrenMK1_Stock_shrt_1", "LeeEn_Stock_erg_1", "M60_Stock_erg_1",
    "PPSh_Stock_short_1", "Papovka_Stock_erg_cross1_1", "Papovka2_Stock_erg_cross1_1", "Type56A_stock_erg_1",
    "Type56B_stock_erg_1", "Type56C_stock_erg_1", "Type56D_stock_erg_1", "STG44_Stock_erg_1", "Papovka_Stock_erg_1",
    "Papovka2_Stock_erg_1", "hk23e_stock_erg_1", "m76_stock_erg_1", "DeLisle_stock_erg_1", "RAT_TOG_LRoptics_advanced",
    "RAT_TOG_LRoptics_advanced_rpk_mount", "ToG_Red_Dot_2", "ToG_Red_Dot_3", "RAT_TOG_laser_dot",
    "RAT_TOG_laser_dot_rpk_mount", "RAT_TOG_Prism", "RAT_TOG_Prism_rpk_mount", "RAT_TOG_Reflex",
    "RAT_TOG_Reflex_rpk_mount", "RAT_TOG_LRoptics", "RAT_TOG_LRoptics_rpk_mount", "ToG_Comp_Pstl_finemag_1",
    "RAT_TOG_WideScope", "RAT_TOG_WideScope_rpk_mount", "R_TOG_light_barrel", "MP7_Supr_1", "SteyrS_Muzzle_def_1",
    "RAT_TOG_suppressor", "RAT_VSK_Suppressor", "R_VSS_suppressor", "RAT_TOG_suppressor_wp", "RAT_TOG_suppressor_762",
    "RAT_TOG_Reflex_pistol", "RAT_TOG_Reflex_pistol_rpk_mount", "ToG_Flashlight_2", "ToG_Flashlight_3",
    "RAT_TOG_flashlight", "RAT_TOG_flashlight_rpk_mount", "ToG_UV_Dot_2", "ToG_UV_Dot_3", "RAT_TOG_uv_dot",
    "RAT_TOG_uv_dot_rpk_mount", "MP7_Mag_quick_1", "Viking_mag_extQ_1", "MP7_Mag_extQ_1", "ToG_Comp_Pstl_ergmag_1",
    "RK95_Stock_shrt_1", "VSK94_Pistolgrip_1", "Papovka2_Barrel_ext_1", "Papovka_Barrel_ext_1", "Papovka_Barrel_shrt_1",
    "Type56A_Barrel_ext_1", "Type56B_Barrel_ext_1", "Type56C_Barrel_ext_1", "Type56D_Barrel_ext_1", "SKS_Barrel_ext_1",
    "MP7_Barrel_ext_1", "RK62_Barrel_ext_1", "RK95_Barrel_ext_1", "SteyrS_Barrel_ext_1", "Stechkin_Barrel_ext_1",
    "BrenMK1_Barrel_ext_1", "Tokarev_Barrel_ext_1", "LeeEn_Barrel_ext_1", "AWP_Barrel_ext_1", "AN94_Barrel_ext_1",
    "M60_Barrel_ext_1", "PPSh_Barrel_ext_1", "m625_barrel_ext_1", "FP6_Barrel_ext_1", "SSG69_Barrel_ext_1",
    "G43_Barrel_ext_1", "VSS_Barrel_ext_1", "G3_Barrel_ext_1", "G11_Barrel_ext_1", "Mosin_Barrel_long_1",
    "FG42_Barrel_long_1", "ToG_Comp_AR_Barrel_Long_1", "STG44_Barrel_ext_1", "Papovka2_Barrel_ext_1",
    "M70_barrel_ext_1", "hk23e_barrel_ext_1", "hk33_barrel_ext_1", "m76_barrel_ext_1", "G3A3_barrel_ext_1",
    "RAT_TOG_thermal", "RAT_TOG_thermal_rpk_mount", "B93RR_barrel_shrt_1", "VigM2_Barrel_shrt_1",
    "ToG_Comp_AR_Barrel_Long_2", "ToG_Comp_AR_Barrel_Long_2"
}
not_patched_items = {}

function checkIf()
    local mod = ModsLoaded[table.find(ModsLoaded, "id", "Dau6w")]
    if not mod then
        print("Mod not found!")
        return
    end

    local items = mod.items or {}
    for _, item in pairs(items) do
        if item.class == "ModItemWeaponComponent" and item.id then
            -- Check if item.id is in `to_check`
            if not table.find(patched, item.id) then
                -- print("'" .. item.id .. "',")
                not_patched_items[item.id] = item

            end
        end
    end
end

compos = {}
function insert_comp2(used_comps_brute_TOG)
    Inspect(used_comps_brute_TOG)
    for i, mainline in ipairs(used_comps_brute_TOG) do
        for iii, line in ipairs(mainline) do
            for key, value in pairs(line) do
                if key == "AvailableComponents" then
                    for ii, comp in ipairs(value) do
                        table.insert_unique(compos, comp)
                    end
                end
            end
        end
    end
end

local used_comps = {
    "AN94_Stock_def_1", "AN94_Mag_def_1", "AN94_Mag_ext_1", "LROptics_DragunovDefault", "ImprovedIronsight",
    "RAT_TOG_Reflex", "RAT_TOG_compactRS", "RAT_TOG_vigilanceRS", "RAT_TOG_ACOG", "RAT_TOG_Prism", "RAT_TOG_LRoptics",
    "RAT_TOG_WideScope", "RAT_TOG_thermal", "RAT_TOG_compensator", "AN94_Bip_def_1", "AN94_Barrel_short_1",
    "AN94_Barrel_def_1", "AN94_Barrel_ext_1", "ToG_VFX_Muzzle", "ImprovisedSuppressor", "Suppressor", "B93RR_mag_def_1",
    "B93RR_mag_ext_1", "B93RR_barrel_shrt_1", "B93RR_barrel_def_1", "B93RR_barrel_ext_1", "B93RR_grip_fld_1",
    "RAT_TOG_suppressor", "Bolt_action", "stealth_ironsight_confidante", "DeLisle_stock_def_1", "DeLisle_stock_erg_1",
    "DeLisle_barrel_def_1", "DeLisle_mag_def_1", "G3A3_barrel_shrt_1", "G3A3_barrel_def_1", "G3A3_barrel_ext_1",
    "G3A3_muzzle_1", "G3A3_magazine_1", "hk33_bipod_fld_1", "G3A3_Stock_1", "G3A3_stock_hvy_1", "HK53_stock_unfld_1",
    "RAT_TOG_PSGScope", "RAT_TOG_LRoptics_advanced", "GW43_Scope_1", "G43_Barrel_def_1", "G43_Barrel_ext_1",
    "G43_Mag_def_1", "G43_Mag_ext_1", "Compensator_Glock", "ToG_Comp_Pstl_defmag_1", "ToG_Comp_Pstl_finemag_1",
    "ToG_Comp_Pstl_expmag_1", "ToG_Comp_Pstl_ergmag_1", "RAT_TOG_Reflex_pistol", "RAT_TOG_uv_dot", "RAT_TOG_laser_dot",
    "BarrelNormal", "ToG_Comp_AR_Barrel_Long_1", "ToG_Comp_AR_Barrel_Long_2", "VerticalGrip", "bullup",
    "hk23e_barrel_shrt_1", "hk23e_barrel_def_1", "hk23e_barrel_ext_1", "hk23e_muzzle_1", "MuzzleBooster", "Compensator",
    "hk23e_stock_hvy_1", "hk23e_stock_def_1", "hk23e_stock_erg_1", "hk23e_bipod_fld_1", "hk23e_siderail_1",
    "hk23e_handle_fld_1", "hk23e_handle_unfld_1", "hk23e_mag_1", "hk33_barrel_shrt_1", "hk33_barrel_def_1",
    "hk33_barrel_ext_1", "hk33_muzzle_1", "hk33_magazine_11", "hk33_magazine_31", "hk33_drum_mag_1", "hk33_Stock_1",
    "hk33_handguard_cl_1", "hk33_handguard_new_1", "hk33_lower_classic_1", "hk33_lower_modern_1", "ToG_Flashlight_2",
    "ToG_Red_Dot_2", "ToG_UV_Dot_2", "side_2_empty", "hk53_Stock_heavy", "M1911_Mag_def_1", "M1911_Mag_ext_1",
    "M1911_Barrel_def_1", "M1911_Barrel_ext_1", "RAT_TOG_suppressor_762", "M70_stock_unfld_1", "M70_mag_def_1",
    "SKS_Scope", "M70_grndl_fld_1", "M70_grndl_unfld_1", "M70_barrel_shrt_1", "M70_barrel_def_1", "M70_barrel_ext_1",
    "M70D_stock_unfld_1", "M70D_mag_def_1", "M70D_grndl_fld_1", "M70D_grndl_unfld_1", "M70D_barrel_shrt_1",
    "M70D_barrel_def_1", "M70D_barrel_ext_1", "m76_stock_erg_1", "m76_stock_def_1", "m76_stock_hvy_1", "m76_mag_def_1",
    "RAT_TOG_Reflex_rpk_mount", "RAT_TOG_ACOG_rpk_mount", "RAT_TOG_compactRS_rpk_mount", "RAT_TOG_Prism_rpk_mount",
    "RAT_TOG_vigilanceRS_rpk_mount", "RAT_TOG_thermal_rpk_mount", "RAT_TOG_WideScope_rpk_mount",
    "RAT_TOG_LRoptics_rpk_mount", "m76_scope_1", "RAT_TOG_LRoptics_advanced_rpk_mount", "m76_barrel_shrt_1",
    "m76_barrel_def_1", "m76_barrel_ext_1", "Mac11_Barrel_def_1", "Mac11_Barrel_ext_1", "Mac11_Mag_def_1",
    "Mac11_Stock_fld_1", "Mac11_Stock_unfld_1", "MicroUZI_Barrel_def_1", "MicroUZI_Barrel_ext_1", "MicroUZI_Mag_def_1",
    "MicroUZI_Mag_ext_1", "MicroUZI_Scope_def_1", "StockNo", "Mosin_Scope_iron_1", "ReflexSightAdvanced", "ReflexSight",
    "_ReflexSIghtVigilance", "LROptics", "ScopeCOGQuick", "WideScope", "LROpticsAdvanced", "Mosin_Barrel_def_1",
    "Mosin_Barrel_long_1", "P08_Mag_def_1", "P08_Mag_ext_1", "P08_Barrel_def_1", "P08_Barrel_Long_1",
    "CAWS_Muzzle_def_1", "ScopeCOG", "ToG_Comp_AR_Barrel_Long_1_SMG", "ToG_Comp_AR_Barrel_Long_2_SMG", "Flashlight",
    "FlashlightDot", "LaserDot", "UVDot", "Papovka2_Bay_fld_1", "Papovka2_Bay_unfld_1", "Papovka2_Grnd_fld_1",
    "Papovka2_Grnd_unfld_1", "Papovka2_Bolt_1", "RAT_pap_compensator", "Papovka2_Barrel_def_1", "Papovka2_Barrel_ext_1",
    "Papovka2_Barrel_shrt_1", "Papovka2_Stock_def_1", "Papovka2_Stock_erg_1", "Papovka2_Stock_hvy_1",
    "Papovka2_Mag_def_1", "Papovka2_Mag_ext_1", "Papovka_Bay_fld_1", "Papovka_Bay_unfld_1", "Papovka_Grnd_fld_1",
    "Papovka_Grnd_unfld_1", "Papovka_Barrel_ext_1", "Papovka_Barrel_shrt_1", "Papovka_Barrel_def_1",
    "Papovka_Stock_erg_1", "Papovka_Stock_def_1", "Papovka_Stock_hvy_1", "Papovka_Bolt_1", "BarrelNormalImproved",
    "R_TOG_light_barrel", "MagNormal", "MagNormalFine", "MagQuick", "MagLarge", "ThermalScope", "StockNormal",
    "PKM_Bipod_Fold_1", "PP91_Barrel_def_1", "PP91_Barrel_ext_1", "PP91_Mag_def_1", "PP91_Mag_ext_1",
    "PP91_Stock_fld_1", "PP91_Stock_unfld_1", "RK62_Stock_shrt_1", "RK62_Stock_def_1", "RK62_Stock_hvy_1",
    "RK95_Stock_shrt_1", "RK95_Stock_def_1", "RK62_Mag_def_1", "RK62_Mag_ext_1", "RK62_Handguard_shrt_1",
    "RK62_Handguard_def_1", "RK62_Handguard_ext_1", "RK62_Irons_1", "RK62_Muzzle_def_1", "RK62_Barrel_shrt_1",
    "RK62_Barrel_def_1", "RK62_Barrel_ext_1", "RK95_Mag_def_1", "RK95_Mag_ext_1", "RK95_Handguard_shrt_1",
    "RK95_Handguard_def_1", "RK95_Handguard_ext_1", "RK95_Irons_1", "RK95_Muzzle_def_1", "RK95_Barrel_shrt_1",
    "RK95_Barrel_def_1", "RK95_Barrel_ext_1", "RPD_bipod_fld_1", "RPD_barrel_def_1", "RPD_mag_def_1", "RPD_ironsight_1",
    "RPD_stock_def_1", "SKS_Bay_fld_1", "SKS_Bay_unfld_1", "SKS_Barrel_def_1", "SKS_Barrel_ext_1", "SSG69_Scope_1",
    "SSG69_Barrel_def_1", "SSG69_Barrel_ext_1", "AUGCompensator_01", "SSG69_Mag_def_1", "SSG69_Mag_ext_1",
    "Sten_mag_def_1", "StockLight", "SteyrS_Barrel_def_1", "SteyrS_Barrel_ext_1", "RAT_TOG_SteyrS_Barrel_ext_556",
    "RAT_TOG_SteyrS_Barrel_def_555", "ToG_Bipod_1", "SteyrS_Scope_1", "Bolt_action_scout", "SteyrS_Muzzle_def_1",
    "STG44_Mag_def_1", "STG44_Barrel_shrt_1", "STG44_Barrel_def_1", "STG44_Barrel_ext_1", "STG44_Stock_hvy_1",
    "STG44_Stock_def_1", "STG44_Stock_erg_1", "TAR21_Scope_Rflx_1", "TAR21_Mag_def_1", "TAR21_Mag_ext_1",
    "TAR21_Muzzle_def_1", "Type56A_Bay_fld_1", "Type56A_Bay_unfld_1", "Type56A_Bolt_1", "Type56B_Bolt_1",
    "Type56C_Bolt_1", "Type56D_Bolt_1", "Type56A_Barrel_shrt_1", "Type56A_Barrel_def_1", "Type56A_Barrel_ext_1",
    "Type56A_stock_erg_1", "Type56A_stock_def_1", "Type56A_stock_hvy_1", "Papovka_Mag_ext_1", "Type56A_Mag_def_1",
    "Type56B_Bay_fld_1", "Type56B_Bay_unfld_1", "Type56B_Barrel_shrt_1", "Type56B_Barrel_def_1", "Type56B_Barrel_ext_1",
    "Type56B_stock_erg_1", "Type56B_stock_def_1", "Type56B_stock_hvy_1", "Type56B_Mag_def_1", "Type56C_Bay_fld_1",
    "Type56C_Bay_unfld_1", "Type56C_Barrel_shrt_1", "Type56C_Barrel_def_1", "Type56C_Barrel_ext_1",
    "Type56C_stock_erg_1", "Type56C_stock_def_1", "Type56C_stock_hvy_1", "Type56C_Mag_def_1", "Type56D_Bay_fld_1",
    "Type56D_Bay_unfld_1", "Type56D_Barrel_shrt_1", "Type56D_Barrel_def_1", "Type56D_Barrel_ext_1",
    "Type56D_stock_erg_1", "Type56D_stock_def_1", "Type56D_stock_hvy_1", "Type56D_Mag_def_1", "uspr_mag_def_1",
    "uspr_mag_ext_1", "ToG_Comp_Pstl_Barrel_Long", "ToG_Comp_Pstl_Barrel_Long_1", "VigM2_Barrel_shrt_1",
    "VigM2_Barrel_def_1", "VigM2_Barrel_ext_1", "VigM2_mag_def_1", "VigM2_Stock_fld_1", "VigM2_Stock_unfld_1",
    "Viking_mag_def_1", "Viking_mag_ext_1", "Viking_mag_extQ_1", "Viking_Barrel_def_1", "Viking_Barrel_ext_1",
    "VSK94_Stock_hvy_1", "VSK94_Pistolgrip_1", "VSK94_stock_unfld_1", "VSK94_stock_fld_1", "VSK94_Mag_def_1",
    "VSK94_barrel_def_1", "RAT_VSK_Suppressor", "VSS_Mag_def_1", "VSS_Mag_ext_1", "VSS_Ironsight_1", "VSS_Scope_1",
    "R_VSS_suppressor", "VSS_Stock_def_1", "VSS_Barrel_def_1", "VSS_Barrel_ext_1"
}

not_patched_used_comps = {}

function compare_comp()
    checkIf()
    for id, props in pairs(not_patched_items) do
        if table.find(used_comps, id) then
            not_patched_used_comps[id] = props
        end
    end
end

final_comps = {}
function check_if_default()

    compare_comp()
    for id, props in pairs(not_patched_used_comps) do

        local mod_ef = props.ModificationEffects

        if #mod_ef > 0 then

            final_comps[id] = props
        end

    end
end

final_comps_filtered = {}

function sort_final_comps(slot, exclude_slot)
    local filtered_comps = {} -- Reset filtered_comps for each invocation

    for id, props in pairs(final_comps) do
        -- Skip items that don't meet the filter criteria
        if exclude_slot and props.Slot == slot then
            goto continue
        elseif not exclude_slot and props.Slot ~= slot then
            goto continue
        end

        -- Add matching items to the filtered table
        filtered_comps[id] = props

        ::continue:: -- Continue the loop
    end

    final_comps = filtered_comps -- Update final_comps with filtered items
end

function no_effect_mods()
    local mod = ModsLoaded[table.find(ModsLoaded, "id", "Dau6w")]
    if not mod then
        print("Mod not found!")
        return
    end

    local items = mod.items or {}
    for _, item in pairs(items) do
        if item.class == "ModItemWeaponComponent" then

            local mod_ef = item.ModificationEffects or {}
            -- print(item.id, mod_ef)
            if item.id == "M70D_barrel_shrt_1" then
                Inspect(item)
            end
            if #mod_ef == 0 then
                print(item.id)
            end
        end
    end
end
