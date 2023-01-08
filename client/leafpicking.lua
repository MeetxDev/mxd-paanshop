local QBCore = exports['qb-core']:GetCoreObject()

local Paanleaf = BoxZone:Create(vector3(378.73, -813.33, 29.3),10.0, 5.5, {
    name="Paanleaf",
    heading = 89.0,
    useZ = true,
    debugPoly = false,
})

local Paanleaf2 = BoxZone:Create(vector3(379.64, -823.7, 29.3),4.0, 3.0, {
    name="Paanleaf2",
    heading = 89.0,
    useZ = true,
    debugPoly = false,
})

local atPaanleaf = false

function checkPANStatus()
    while true do
        local plyPed = PlayerPedId()
        local coord = GetEntityCoords(plyPed)
        atPaanleaf = Paanleaf:isPointInside(coord)
        atPaanleaf2 = Paanleaf2:isPointInside(coord)
        if atPaanleaf or atPaanleaf2 then
            return true
        else
            return false
        end
    end
end

RegisterNetEvent('mxd-paan:leafcollect', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"Mechanic4"})
  QBCore.Functions.Progressbar("paanleaf_picking", "Picking Paan leafs", 3000, false, true, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
      disableInventory = true,
  }, {}, {}, {}, function()
      TriggerServerEvent('mxd-paan:leafpick')
  end, function() 
      ClearPedTasks(PlayerPedId())
      QBCore.Functions.Notify('Cancelled', "error")
  end)
end)