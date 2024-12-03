last_thing = false

local weps = {
    "AN94_1", "B93RR_1", "Delisle_1", "G3A3_1", "G3A3Green_1", "Gewehr43_1", "Glock17_1", "Groza_1", "HK23E_1",
    "HK23ECamo_1", "HK33A2_1", "HK53_1", "M1911_1", "M1Garand_2", "M70_1", "M70D_1", "M76_1", "M79SAW_1", "M79SAW2_1",
    "MAC11_1", "MicroUZI_1", "Mosin_1", "P08_1", "P90_2", "Papovka2SKS_1", "PapovkaSKS_1", "PKM_1", "PP91_1", "RK62_1",
    "RK95_1", "RPD_1", "SKS_1", "SSG69_1", "StenMK2_1", "SteyrScout_1", "STG44R_1", "TAR21_1", "Type56A_1", "Type56B_1",
    "Type56C_1", "Type56D_1", "UMP_1", "USP_1", "VigM2_1", "VikingMP446_1", "VSK94_1", "VSS_1"
}

function OnMsg.ClassesGenerate(classdefs)
    local tuble = {}
    for id, props in pairs(classdefs) do
        if table.find(weps, id) then
            tuble[id] = props.Description
        end
    end
    last_thing = tuble
end

function InventoryItem:GetMaxCondition()

	return InventoryItemDefs[self.class]:GetProperty("Condition")
	bp()
end