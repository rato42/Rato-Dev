local mod_to_extract = CurrentModId
function extract_prop()
    local modDef = Mods[CurrentModId]
    local csv_filename = modDef.path .. "/" .. mod_to_extract .. "_Extracted.csv"
    local fields = {}
    local field_captions = {}
    local csv = {}

    local function formatValue(value)
        if type(value) == "number" or type(value) == "boolean" then
            return tostring(value)
        elseif type(value) == "string" then
            return string.format("'%s'", value)
        elseif value == nil then
            return "''"
        else
            return "'[unsupported value type]'"
        end
    end

    local function stringifyTable(tbl)
        if type(tbl) ~= "table" then
            return formatValue(tbl)
        end

        local is_array = true
        local result = {}

        -- Detecta se é um array 
        local index = 1
        for k, v in pairs(tbl) do
            if k ~= index then
                is_array = false
                break
            end
            index = index + 1
        end

        if is_array then
            -- Processa como array (omitindo as chaves)

            for _, v in ipairs(tbl) do
                table.insert(result, stringifyTable(v)) -- Recursão para tabelas aninhadas
            end
            return "{" .. table.concat(result, ", ") .. "}"
        else
            -- Processa como dicionário (incluindo as chaves)
            for k, v in pairs(tbl) do
                local key = tostring(k)
                local value = stringifyTable(v) -- Recursão para tabelas aninhadas
                table.insert(result, key .. " = " .. value)
            end

            return "{" .. table.concat(result, ", ") .. "}"
        end
    end

    ForEachPreset("InventoryItemCompositeDef", function(w)
        local item = g_Classes[w.id]

        -- Check if the item is a firearm
        if IsKindOf(item, "Firearm") then
            -- print(w.id ," is being processed")
            local line = {id = w.id}
            for k, v in pairs(w) do

                if k == "mod" then
                    table.insert_unique(fields, k)
                    table.insert_unique(field_captions, k)
                    line[k] = v.id
                elseif type(v) == "table" then
                    line[k] = stringifyTable(v)
                    table.insert_unique(fields, k)
                    table.insert_unique(field_captions, k)
                    -- process_table(k, v, line)
                else
                    table.insert_unique(fields, k)
                    table.insert_unique(field_captions, k)
                    line[k] = v ---- you can use stringfyTable here if you want ""
                end
            end

            if line.mod == mod_to_extract then
                table.insert(csv, line)
            end

        end
    end)

    local err = SaveCSV(csv_filename, csv, fields, field_captions, ",")
    if err then
        assert("couldnt write the csv")
    else
        print("extraction finished")
    end
end

-- old trash

--[[local function processComponents(key, tbl, component_slots_table)

        if tbl.SlotType then -- Check if SlotType exists in tbl
            local slotType = tbl.SlotType
            local canbeEmpty = tbl.CanBeEmpty and "true" or "false"
            local default_component = tbl.DefaultComponent
            local av_comp = "{"
            for k, v in pairs(tbl.AvailableComponents or {}) do
                -- Construct each component representation
                local component_str = "{" .. tostring(k) .. "}"
                if type(v) == "table" then
                    component_str = "{" .. table.concat(v, ", ") .. "}"
                else
                    -- component_str = "{" .. tostring(v) .. "}"
                    component_str = tostring(v)
                end
                av_comp = av_comp .. component_str .. ", "
            end
            av_comp = av_comp .. "}"
            table.insert(component_slots_table,
                         "{CanBeEmpty = " .. canbeEmpty .. ", DefaultComponent = " ..
                             default_component .. ", SlotType = " .. slotType ..
                             ", AvailableComponents = " .. av_comp .. "}")
            -- line[slotType] =
            --    "{CanBeEmpty = " .. canbeEmpty .. ", AvailableComponents = " .. av_comp .. "}"

            -- table.insert_unique(fields, slotType)
            -- table.insert_unique(field_captions, slotType)
        else
            -- Handle the case where SlotType doesn't exist in tbl
            print("SlotType key is missing in the ComponentSlots table")
        end
    end


    local function process_table(key, tbl, line)

        if key == "ComponentSlots" then
            local component_slots_table = {}
            for _, slot in ipairs(tbl) do
                processComponents(key, slot, component_slots_table)
            end

            line[key] = stringifyTable(tbl)

            table.insert_unique(fields, key)
            table.insert_unique(field_captions, key)
            -- print(component_slots_table)
        else
            local k_line = "{"
            local has_entries = false
            for k, v in pairs(tbl) do
                if type(v) == "table" then
                    -- Recursively process nested tables
                    process_table(k, v, line)
                else
                    if type(k) ~= "number" then
                        k_line = k_line .. k .. " = "
                    end
                    k_line = k_line .. tostring(v) .. ", "
                    has_entries = true
                end
            end
            if has_entries then
                -- Trim the last comma and space
                k_line = k_line:sub(1, -3)
            end
            k_line = k_line .. "}"
            table.insert_unique(fields, key)
            table.insert_unique(field_captions, key)
            line[key] = k_line
        end
    end]]
