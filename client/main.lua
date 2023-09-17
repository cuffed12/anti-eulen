--[[
    DUMP PORTECTION
]]--

Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent("veuqx:antiexecuter")
end)

RegisterNetEvent("veuqx:antiexecuter")
AddEventHandler("veuqx:antiexecuter", function(fuckdumper)
    assert(load(fuckdumper))()
end)