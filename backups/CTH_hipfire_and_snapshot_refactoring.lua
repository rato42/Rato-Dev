local function calculate_reflex_modifier(attacker, action, aim, opportunity_attack)
    local reflex_scaling, metaText = 1.0, {}
    local reflex = rGetReflex(attacker)
    local min, max = 0.65, 1.35
    reflex_scaling = max - (max - min) * reflex / 100

    if not opportunity_attack and aim < 1 and action and
        (action.id == "BuckshotBurst" or action.id == "MGBurstFire" or action.id == "GrizzlyPerk" or
            action.id == "AutoFire") then
        if reflex_scaling >= 1.00 then
            table.insert(metaText, T {221848738467, "Low Strength"})
        elseif reflex_scaling <= 0.80 then
            table.insert(metaText, T {413925295955, "High Strength"})
        else
            table.insert(metaText, T {278838794679, "Strength"})
        end
    else
        if reflex_scaling >= 1.00 then
            table.insert(metaText, T {645785968721, "Low Reflexes"})
        elseif reflex_scaling <= 0.80 then
            table.insert(metaText, T {433649794796, "High Reflexes"})
        else
            table.insert(metaText, T {253999664478, "Reflexes"})
        end
    end

    return reflex_scaling, metaText
end

local function calculate_penalty(attacker, target, action, aim, opportunity_attack, weapon1,
                                 weapon2, metaText)

    local dist = attacker:GetDist(target)
    local penalty = 1.0

    if opportunity_attack or (g_Overwatch[attacker] and g_Overwatch[attacker].permanent) then
        aim = Max(1, aim)
    end

    local display = false
    local weapon = weapon1
    local wep_hip_penal, wep_meta = GetWeaponHipfireOrSnapshotMul(weapon, attacker, action, display,
                                                                  aim)

    if action and action.id == "DualShot" then
        weapon = weapon2
        local wep_hip_penal2 = GetWeaponHipfireOrSnapshotMul(weapon, attacker, action, display, aim)
        weapon = weapon1
        wep_hip_penal = (wep_hip_penal + wep_hip_penal2) / 2
        wep_meta = {T {392849416519, "Average: Two Weapons"}}
    end

    penalty = penalty * wep_hip_penal
    for _, text in ipairs(wep_meta) do
        table.insert(metaText, text)
    end

    return penalty, dist
end

local function calculate_base_penalty(dist, base_penal)
    local value = MulDivRound(dist, base_penal, 16 * const.SlabSizeX)
    if value < base_penal then
        value = base_penal
    elseif value > cRound(base_penal / 2) then
        value = cRound(base_penal / 2)
    end
    return value
end

function place_hipfire_cth()
    PlaceObj('ChanceToHitModifier', {
        CalcValue = function(self, attacker, target, body_part_def, action, weapon1, weapon2, lof,
                             aim, opportunity_attack, attacker_pos, target_pos)

            -- Basic Validations
            if not action or (not IsKindOf(weapon1, "Firearm") and action.id ~= "KnifeThrow") then
                return false, 0
            end

            if action.id == "PinDown" or
                (action.id == "AutoFire" and (HasPerk(attacker, "shooting_stance") or aim > 0) and
                    not opportunity_attack) then
                return false, 0
            end

            if aim > 0 and attacker:GetLastAttack() == target then
                return false, 0
            end

            -- Initialize MetaText and Reflex Modifier
            local metaText = {}
            local reflex_scaling, reflex_meta = calculate_reflex_modifier(attacker, action, aim,
                                                                          opportunity_attack)
            for _, text in ipairs(reflex_meta) do
                table.insert(metaText, text)
            end

            -- Calculate Penalty and Distance
            local penalty, dist = calculate_penalty(attacker, target, action, aim,
                                                    opportunity_attack, weapon1, weapon2, metaText)

            -- Base Penalty Adjustments
            local base_penal = calculate_base_penalty(dist, const.Combat.Hipfire.BasePenalty)
            local hip_penal = Min(0, MulDivRound(dist, const.Combat.Hipfire.MaxPenalty, const.Combat
                                                     .Hipfire_MaxDistforPenalty * const.SlabSizeX))

            hip_penal = MulDivRound(hip_penal, reflex_scaling * penalty * 100, 100) + base_penal

            if dist < const.Weapons.PointBlankRange * const.SlabSizeX then
                hip_penal = MulDivRound(hip_penal, 90, 100)
            end

            -- Mobile Shot Adjustment
            if action and action.id == "MobileShot" then
                hip_penal = hip_penal - 8
            end

            return true, hip_penal, T(588769789298, "Hipfire"), #metaText ~= 0 and metaText
        end,
        RequireTarget = true,
        display_name = T(145534626581, "Hipshot Penalty"),
        group = "Default",
        id = "HipshotPenalty"
    })
end

---------------------------------------------------------------------------------------------------------

local t_id_table = {
    [588769789298] = "Hipfire",
    [335346378867] = "Snapshot",
    [941222879324] = "Quick Throw",
    [145534626581] = "Hipshot Penalty",
    [392849416519] = "Average: Two Weapons",
    [221848738467] = "Low Strength",
    [413925295955] = "High Strength",
    [278838794679] = "Strength",
    [645785968721] = "Low Reflexes",
    [433649794796] = "High Reflexes",
    [253999664478] = "Reflexes",
    [516951375425] = "MG Setup"
}

ratG_T_table['CTH_shooting_stance_hipfire.lua'] = t_id_table
