AddEventHandler('onResourceStart', function(name)
    if name == GetCurrentResourceName() then
        Citizen.Trace(name.." started!\n")
    end
end)

AddEventHandler('onResourceStop', function(name)
    if name == GetCurrentResourceName() then
        Citizen.Trace(name.." stopped!\n")
    end
end)