local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('itemprogress', function(ItemMake, tablenumber, craftable)
	TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
	QBCore.Functions.Progressbar("making_food", "Making Paan", 3000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		disableInventory = true,
	}, {}, {}, {}, function()
		TriggerServerEvent('mxd-paan:getItem', ItemMake, tablenumber, craftable)end, function() 
		ClearPedTasks(PlayerPedId())
		QBCore.Functions.Notify('Cancelled', "error")
	end)
  end)

RegisterNetEvent('mxd-paan:close')
AddEventHandler('mxd-paan:close', function(data)
	if data == -2 then
		exports['qb-menu']:closeMenu()
		return
	end
end)

RegisterNetEvent('mxd-paan:createpaan')
AddEventHandler('mxd-paan:createpaan', function(data)
	for k, v in pairs(data.craftable[data.tablenumber]) do
		QBCore.Functions.TriggerCallback('mxd-paan:get', function(amount) 
			if not amount then 
				TriggerEvent('QBCore:Notify', "You don't have the correct ingredients", 'error')
			else TriggerEvent('itemprogress', data.item, data.tablenumber, data.craftable) end
		end, data.item, data.tablenumber, data.craftable)
	end
end)
