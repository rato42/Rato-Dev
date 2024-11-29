function printLBEprops(id)
    local item = g_Classes[id]
    for i, v in ipairs(item.properties) do

        if v.category == "LBE" then print(v.id) end
    end
end

local magzine_test = {}
function ratmag()

    ForEachPreset("InventoryItemCompositeDef", function(w)
        local item = g_Classes[w.id]
        if IsKindOf(item, "Firearm") then
            if not magzine_test[item.class] then
                magzine_test[item.class] = {
                    is_vanilla = item.is_vanilla_firearm,
                    magazine = item.Magazine or "_null",
                    caliber = item.Caliber
                }
            end
        end
    end)

    local modDef = Mods[CurrentModId]
    local csv_filename = modDef.path .. "/mags.csv"
    local fields = {"id", "is_vanilla", "is_tog_patched", "magazine", "caliber"}
    local field_captions = {
        "id", "is_vanilla", "is_tog_patched", "magazine", "caliber"
    }
    local csv = {}

    ForEachPreset("InventoryItemCompositeDef", function(w)
        local item = g_Classes[w.id]
        -- print(item.class, w.id)
        if IsKindOf(item, "Firearm") then
            local line = {
                id = item.class,
                is_vanilla = item.is_vanilla_firearm,
                is_tog_patched = item.is_tog_patched,
                magazine = item.Magazine or "_null",
                caliber = item.Caliber
            }
            -- print(line)
            table.insert(csv, line)
        end
    end)
    print(csv)
    -- Inspect(magzine_test)
    -- print(magzine_test)

    local err = SaveCSV(csv_filename, csv, fields, field_captions, ",")
    if err then
        assert("couldnt write the csv")
    else
        print("extraction finished")
    end
end

