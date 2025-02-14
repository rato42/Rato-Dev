local show = Platform.developer
function ShowCTH()
    show = true
    function CthVisible()
        return show or table.find(ModsLoaded, "id", "KAJY0RB")
    end

    NetSyncEvent("CheatEnable", "ShowCth", true)
end

function CthVisible()
    return show or table.find(ModsLoaded, "id", "KAJY0RB")
end
