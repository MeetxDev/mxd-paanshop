RegisterNetEvent('mxd-paan:openarmor', function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "paanshop", Config.Items)
end)

RegisterNetEvent('mxd-paan:openglove', function()
    TriggerServerEvent("inventory:server:OpenInventory", "glovebox", "paanshop")
end)

CreateThread(function()
    for k, station in pairs(Config.Locations["stations"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 439)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 47)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)