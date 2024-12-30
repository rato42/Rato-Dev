function extract_unitdata()

    local modDef = Mods[CurrentModId]
    local csv_filename = modDef.path .. "/" .. "_ExtractedUnits.csv"
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

    ForEachPreset("UnitDataCompositeDef", function(p)

        -- for unit_id, prop in pairs(UnitDataDefs) do

        local line = {id = p.id}

        -- ic(p.id, p)
        for k, v in pairs(p) do

            if type(v) == "table" then
                -- line[k] = stringifyTable(v)
                -- table.insert_unique(fields, k)
                -- table.insert_unique(field_captions, k)
                -- process_table(k, v, line)
            else
                table.insert_unique(fields, k)
                table.insert_unique(field_captions, k)
                line[k] = v ---- you can use stringfyTable here if you want ""
            end
        end

        table.insert(csv, line)
    end)

    local err = SaveCSV(csv_filename, csv, fields, field_captions, ",")
    if err then
        assert("couldnt write the csv")
    else
        print("extraction finished")
    end
end
