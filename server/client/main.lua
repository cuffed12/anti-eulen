--[[
    CLIENT CODE - LOADER
]]--

RegisterServerEvent('veuqx:antiexecuter')
AddEventHandler('veuqx:antiexecuter', function()
    local clientcode = [[  
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(350)
            local eulencheck = GetNumResourceMetadata('_cfx_internal', 'client_script')
            if eulencheck > 0 then
                TriggerServerEvent('veuqx:kick', GetPlayerServerId(PlayerId()))
            end
        end
    end)
    ]] 
    TriggerClientEvent('veuqx:antiexecuter', source, clientcode)
end)