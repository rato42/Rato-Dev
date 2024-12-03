function GetWepRecoil(weapon, attacker, display)
    local mod = 1.00
    local metaText = {}
    local weapon2 = false

    -- Determine secondary weapon
    if attacker and not attacker.placeholder then
        local slot = attacker:GetEquippedWeaponSlot(weapon)
        local equipped_w = attacker:GetEquippedWeapons(slot)
        weapon2 = equipped_w and equipped_w[2] or false
    end

    -- Base recoil multiplier
    local base_mul = (weapon.wep_base_recoil_mul or 100) / 100.00
    mod = mod * base_mul

    -- Handle weapon-specific multipliers
    local weaponMultipliers = {
        {
            condition = function(w)
                return IsKindOf(w, "BrowningM2HMG")
            end,
            mod = 1.00,
            meta = "Stationary"
        }, {
            condition = function(w)
                return IsKindOf(w, "LionRoar")
            end,
            mod = 0.88,
            meta = "Compensator"
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "AssaultRifle")
            end,
            mod = 1.00
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "SubmachineGun")
            end,
            mod = 1.30
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "Pistol")
            end,
            mod = 1.95
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "Revolver")
            end,
            mod = 1.88
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "MachineGun")
            end,
            mod = 0.95
        }
    }

    for _, wm in ipairs(weaponMultipliers) do
        if wm.condition(weapon) then
            mod = mod * wm.mod
            if wm.meta then
                table.insert(metaText, wm.meta)
            end
        end
    end

    -- Mechanism-specific recoil
    local mech, meta_mech = GetMechanismRecoil(weapon)
    if meta_mech then
        table.insert(metaText, rT(meta_mech))
    end
    mod = mod * mech

    -- Handle components
    local components = {
        {
            key = "Vert_grip_recoil",
            mod = 0.92,
            meta = "Vertical Grip",
            condition = function()
                return not weapon2
            end
        }, {
            key = "tac_grip_recoil",
            mod = 0.97,
            meta = "Foldable Grip",
            condition = function()
                return not weapon2
            end
        }, {
            key = "no_stock",
            mod = function(w)
                return IsKindOfClasses(w, "SubmachineGun") and 1.80 or 1.90
            end,
            meta = "(-) No Stock"
        }, {key = "compensator_effect", mod = 0.85, meta = "Compensator"},
        {key = "recoil_booster_effect", mod = 0.95, meta = "Recoil Booster"},
        {key = "integr_muzzle_brake", mod = 0.91, meta = "Integrated Muzzle Brake"},
        {key = "compensator_effect_silencer", mod = 0.95, meta = "Suppressor"},
        {key = "compensator_effect_ugly_silencer", mod = 0.97, meta = "Improvised Suppressor"}
    }

    for _, comp in ipairs(components) do
        if weapon:HasComponent(comp.key) and (not comp.condition or comp.condition()) then
            local compMod = type(comp.mod) == "function" and comp.mod(weapon) or comp.mod
            mod = mod * compMod
            if comp.meta then
                table.insert(metaText, rT(comp.meta))
            end
        end
    end

    -- Handle barrel modifications
    local barrelModifiers = {
        longbarrel = {
            multipliers = {Pistol = 0.94, Revolver = 0.93, SubmachineGun = 0.91, default = 0.90},
            meta = "Extended Barrel"
        },
        shortbarrel = {
            multipliers = {Pistol = 1.03, Revolver = 1.04, SubmachineGun = 1.09, default = 1.10},
            meta = "(-) Short Barrel"
        },
        hipfire_light_barrel = {
            multipliers = {Pistol = 1.06, Revolver = 1.07, SubmachineGun = 1.10, default = 1.12},
            meta = "(-) Light Barrel"
        },
        heavy_barrel_effect = {
            multipliers = {Pistol = 0.95, Revolver = 0.94, SubmachineGun = 0.92, default = 0.91},
            meta = "Heavy Barrel"
        }
    }

    for barrel, data in pairs(barrelModifiers) do
        if weapon:HasComponent(barrel) then
            local kind = IsKindOfClasses(weapon, "Pistol") and "Pistol" or IsKindOfClasses(weapon, "Revolver") and
                             "Revolver" or IsKindOfClasses(weapon, "SubmachineGun") and "SubmachineGun" or "default"
            mod = mod * (data.multipliers[kind] or data.multipliers.default)
            table.insert(metaText, rT(data.meta))
        end
    end

    -- Handle stock effects
    local stockEffects = {
        {key = "stockheavy_effect_recoil", mod = 0.90, meta = "Heavy Stock"},
        {key = "stocklight_effect_recoil", mod = 1.10, meta = "(-) Light Stock"}
    }

    for _, stock in ipairs(stockEffects) do
        if weapon:HasComponent(stock.key) then
            mod = mod * stock.mod
            table.insert(metaText, rT(stock.meta))
        end
    end

    -- Return values
    if display then
        return mod
    else
        return mod, metaText
    end
end

----

function GetWepRecoil(weapon, attacker, display)
    local mod = 1.00
    local metaText = {}
    local weapon2 = false

    -- Determine secondary weapon
    if attacker and not attacker.placeholder then
        local slot = attacker:GetEquippedWeaponSlot(weapon)
        local equipped_w = attacker:GetEquippedWeapons(slot)
        weapon2 = equipped_w and equipped_w[2] or false
    end

    -- Base recoil multiplier
    local base_mul = (weapon.wep_base_recoil_mul or 100) / 100.00
    mod = mod * base_mul

    -- Handle weapon-specific multipliers
    local weaponMultipliers = {
        {
            condition = function(w)
                return IsKindOf(w, "BrowningM2HMG")
            end,
            mod = 1.00,
            meta = 892823936544
        }, {
            condition = function(w)
                return IsKindOf(w, "LionRoar")
            end,
            mod = 0.88,
            meta = 134618826773
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "AssaultRifle")
            end,
            mod = 1.00
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "SubmachineGun")
            end,
            mod = 1.30
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "Pistol")
            end,
            mod = 1.95
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "Revolver")
            end,
            mod = 1.88
        }, {
            condition = function(w)
                return IsKindOfClasses(w, "MachineGun")
            end,
            mod = 0.95
        }
    }

    for _, wm in ipairs(weaponMultipliers) do
        if wm.condition(weapon) then
            mod = mod * wm.mod
            if wm.meta then
                table.insert(metaText, rT(wm.meta))
            end
        end
    end

    -- Mechanism-specific recoil
    local mech, meta_mech = GetMechanismRecoil(weapon)
    if meta_mech then
        table.insert(metaText, rT(meta_mech))
    end
    mod = mod * mech

    -- Handle components
    local components = {
        {
            key = "Vert_grip_recoil",
            mod = 0.92,
            meta = 892823936544,
            condition = function()
                return not weapon2
            end
        }, {
            key = "tac_grip_recoil",
            mod = 0.97,
            meta = 371872683581,
            condition = function()
                return not weapon2
            end
        }, {
            key = "no_stock",
            mod = function(w)
                return IsKindOfClasses(w, "SubmachineGun") and 1.80 or 1.90
            end,
            meta = 115796595571
        }, {key = "compensator_effect", mod = 0.85, meta = 134618826773},
        {key = "recoil_booster_effect", mod = 0.95, meta = 862593714174},
        {key = "integr_muzzle_brake", mod = 0.91, meta = 585361131592},
        {key = "compensator_effect_silencer", mod = 0.95, meta = 263781558966},
        {key = "compensator_effect_ugly_silencer", mod = 0.97, meta = 696373868183}
    }

    for _, comp in ipairs(components) do
        if weapon:HasComponent(comp.key) and (not comp.condition or comp.condition()) then
            local compMod = type(comp.mod) == "function" and comp.mod(weapon) or comp.mod
            mod = mod * compMod
            if comp.meta then
                table.insert(metaText, rT(comp.meta))
            end
        end
    end

    -- Handle barrel modifications
    local barrelModifiers = {
        longbarrel = {
            multipliers = {Pistol = 0.94, Revolver = 0.93, SubmachineGun = 0.91, default = 0.90},
            meta = 894953874886
        },
        shortbarrel = {
            multipliers = {Pistol = 1.03, Revolver = 1.04, SubmachineGun = 1.09, default = 1.10},
            meta = 228113672715
        },
        hipfire_light_barrel = {
            multipliers = {Pistol = 1.06, Revolver = 1.07, SubmachineGun = 1.10, default = 1.12},
            meta = 826212377342
        },
        heavy_barrel_effect = {
            multipliers = {Pistol = 0.95, Revolver = 0.94, SubmachineGun = 0.92, default = 0.91},
            meta = 649749565849
        }
    }

    for barrel, data in pairs(barrelModifiers) do
        if weapon:HasComponent(barrel) then
            local kind = IsKindOfClasses(weapon, "Pistol") and "Pistol" or IsKindOfClasses(weapon, "Revolver") and
                             "Revolver" or IsKindOfClasses(weapon, "SubmachineGun") and "SubmachineGun" or "default"
            mod = mod * (data.multipliers[kind] or data.multipliers.default)
            table.insert(metaText, rT(data.meta))
        end
    end

    -- Handle stock effects
    local stockEffects = {
        {key = "stockheavy_effect_recoil", mod = 0.90, meta = 779417232291},
        {key = "stocklight_effect_recoil", mod = 1.10, meta = 662981363158}
    }

    for _, stock in ipairs(stockEffects) do
        if weapon:HasComponent(stock.key) then
            mod = mod * stock.mod
            table.insert(metaText, rT(stock.meta))
        end
    end

    -- Return values
    if display then
        return mod
    else
        return mod, metaText
    end
end
