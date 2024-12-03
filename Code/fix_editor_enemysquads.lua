function OnMsg.ClassesGenerate(classdefs)
    if classdefs.SectorSpawnSquad then
        local props = classdefs.SectorSpawnSquad.properties

        for i, v in ipairs(props) do
            if v.id == "squad_def_id" then
                v.items = function(self)
                    return table.keys(EnemySquadDefs, true) -- EnemySquadsComboItems("exclude test squads")
                end
            end
        end

    end
end

