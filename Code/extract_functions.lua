







local function process_component_slots(component_slots, line)
    for _, slot in ipairs(component_slots) do
        local slot_type = slot.SlotType
        local available_components = slot.AvailableComponents
        if slot_type and available_components then
            local column_key = slot_type
            local column_value = ""
            for _, component in ipairs(available_components) do
                column_value = column_value .. component .. ","
            end
            line[column_key] = column_value
        end
    end
end

function extract_prop()
	local modDef = Mods[CurrentModId]
	local csv_filename = modDef.path .. "/Extracted.csv"
	local fields = {}
	local field_captions = {}
	local csv = {}
	
	--[[
	local function process_table(prefix, tbl, line)
        for k, v in pairs(tbl) do
            local key = prefix .. k
            if type(v) == "table" then
                process_table(key .. "____", v, line)  -- Recursively process nested tables
            else
                table.insert_unique(fields, key)
                table.insert_unique(field_captions, key)
                line[key] = v
            end
        end
    end
	]]

	local function processComponents(key, tbl, line)
		if tbl.SlotType then  -- Check if SlotType exists in tbl
			local slotType = tbl.SlotType
			local canbeEmpty = tbl.CanBeEmpty or "false"
			local av_comp = "{"
			for k, v in pairs(tbl.AvailableComponents or {}) do
				-- Construct each component representation
				local component_str = "{" .. tostring(k) .. "}"
				if type(v) == "table" then
					component_str = "{" .. table.concat(v, ", ") .. "}"
				else
					component_str = "{" .. tostring(v) .. "}"
				end
				av_comp = av_comp .. component_str .. ", "
			end
			av_comp = av_comp .. "}"
			line[slotType] = "{CanBeEmpty = " .. canbeEmpty .. ", AvailableComponents = " .. av_comp .. "}"
			table.insert_unique(fields, slotType)
			table.insert_unique(field_captions, slotType)
		else
			-- Handle the case where SlotType doesn't exist in tbl
			print("SlotType key is missing in the ComponentSlots table")
		end
	end

	local function process_table(key, tbl, line)
		if key == "ComponentSlots" then
			processComponents(key, tbl, line)
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
	end


	ForEachPreset("InventoryItemCompositeDef", function(w)
		local item = g_Classes[w.id]
		
			
		-- Check if the item is a firearm
		if IsKindOf(item, "Firearm") then
			--print(w.id ," is being processed")
			local line = {id = w.id}
			for k, v in pairs(w) do

				if k == "mod" then
					table.insert_unique(fields, k)
					table.insert_unique(field_captions, k)
					line[k] = v.id
				elseif type(v) == "table" then
					process_table(k .. "____", v, line)
				else
					table.insert_unique(fields, k)
					table.insert_unique(field_captions, k)
					line[k] = v
				end
			end
			--print(line)
			table.insert(csv, line)

		end
	end)
	
	local err = SaveCSV(csv_filename, csv, fields, field_captions, ",")
	if err then
		assert("couldnt write the csv")
	else
		print("extraction finished")
	end
end


local function process_table(prefix, tbl, line)
    for k, v in pairs(tbl) do
        local key = prefix .. k
        if type(v) == "table" then
            if k == "ComponentSlots" then
                -- Handle ComponentSlots table
                for i, slot in ipairs(v) do
                    local slotType = slot.SlotType
                    local defaultComponent = slot.DefaultComponent
                    local availableComponents = slot.AvailableComponents
                    local availableComponentList = {}
                    for j, component in ipairs(availableComponents) do
                        table.insert(availableComponentList, component)
                    end
                    line[key .. "____" .. i .. "____SlotType"] = slotType
                    line[key .. "____" .. i .. "____DefaultComponent"] = defaultComponent
                    line[key .. "____" .. i .. "____AvailableComponents"] = table.concat(availableComponentList, ",")
                end
            else
                -- Recursively process nested tables
                process_table(key .. "____", v, line)
            end
        else
            table.insert_unique(fields, key)
            table.insert_unique(field_captions, key)
            line[key] = v
        end
    end
end


