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

AddEventHandler('txAdmin:events:serverShuttingDown', function(eventData)
    CreateThread(function()
        Citizen.Trace("txAdmin Server Shutting Down Event\n")
    end)
end)

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
        CreateThread(function()
            Citizen.Trace("txAdmin Scheduled Server Restart Event\n")
        end)
    end
end)