PlaceObj('ChanceToHitModifier', {
    CalcValue = function(self, attacker, target, body_part_def, action, weapon1, weapon2, lof, aim,
                         opportunity_attack, attacker_pos, target_pos)

        ---------------------	
        --------------------- early returns	
        if not action then
            return false
        end

        if aim > 2 then
            return false, 0
        end

        if not IsKindOf(weapon1, "Firearm") and action.id ~= "KnifeThrow" then
            return false, 0
        end

        if action.id == "PinDown" then
            return false, 0
        end

        if action.id == "AutoFire" and (HasPerk(attacker, "shooting_stance") or aim > 0) and
            not opportunity_attack then
            return false, 0
        end

        local actions_that_use_snapshot_always = {"Overwatch", "MobileShot", "RunAndGun"}
        if aim > 0 and
            (not table.find(actions_that_use_snapshot_always, action.id) and target and
                attacker:GetLastAttack() == target) and not opportunity_attack then
            return false, 0
        end

        if opportunity_attack or attacker:HasStatusEffect("shooting_stance") or
            attacker:HasStatusEffect("ManningEmplacement") or
            attacker:HasStatusEffect("StationedMachineGun") or action.id == "Overwatch" or action.id ==
            "MGSetup" or (g_Overwatch[attacker] and g_Overwatch[attacker].permanent) then
            aim = Max(1, aim)
        end

        ------------
        ------------

        -- Initialization 
        local metaText = {}
        local dist = (attacker_pos and target_pos and attacker_pos:Dist(target_pos)) or
                         (attacker and target and attacker:GetDist(target))
        local penalty = 1

        local max_dist = const.Combat.Hipfire.MaxDistforPenalty * const.SlabSizeX
        local max_penal = const.Combat.Hipfire.MaxPenalty

        ---------------------		
        ------ Weapon params

        local WeaponPenalty, wep_meta = GetWeaponHipfireOrSnapshotMul(weapon1, attacker, action,
                                                                      false, aim)

        if action and action.id == "DualShot" then

            local WeaponPenalty2 = GetWeaponHipfireOrSnapshotMul(weapon2, attacker, action, false,
                                                                 aim)
            WeaponPenalty = (WeaponPenalty + WeaponPenalty2) / 2
            wep_meta = {T {392849416519, "Average: Two Weapons"}}
        end

        penalty = penalty * WeaponPenalty

        for i, text in ipairs(wep_meta) do
            table.insert(metaText, text)
        end

        ---------------------
        ---- Reflex(or Strength) Scaling

        local stat = rGetReflex(attacker)
        local stat_name = "Reflex"
        local strength_actions = {
            "BuckshotBurst", "BurstFire", "MGBurstFire", "GrizzlyPerk", "AutoFire"
        }
        if (not opportunity_attack or aim < 1) and table.find(strength_actions, action.id) then
            stat = attacker.Strength
            stat_name = "Strength"
        end

        -- local min_stat = 10.0
        -- local max_stat = 100.0
        -- local min_scale = const.Combat.R_MinAimScaling / 100.0
        -- local max_scale = const.Combat.R_MaxAimScaling / 100.0

        --  local statScaling= min_scale + (max_scale - min_scale) * (stat - min_stat) /
        --  					(max_stat - min_stat)

        local min = 0.65
        local max = 1.35

        local statScaling = max - (max - min) * stat / 100

        if stat_name == "Strength" then
            if statScaling >= 1.00 then
                metaText[#metaText + 1] = T {221848738467, "Low Strength"}
            elseif statScaling <= 0.80 then
                metaText[#metaText + 1] = T {413925295955, "High Strength"}
            else
                metaText[#metaText + 1] = T {278838794679, "Strength"}
            end
        else
            if statScaling >= 1.00 then
                metaText[#metaText + 1] = T {645785968721, "Low Reflexes"}
            elseif statScaling <= 0.80 then
                metaText[#metaText + 1] = T {433649794796, "High Reflexes"}
            else
                metaText[#metaText + 1] = T {253999664478, "Reflexes"}
            end
        end

    end,
    RequireTarget = true,
    display_name = T(145534626581, "Hipshot Penalty"),
    group = "Default",
    id = "HipshotPenalty"
})

