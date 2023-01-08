local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('mxd-paan:get', function(source, cb, item, tablenumber, craftable)
	local hasitem = false
	local hasanyitem = nil
		for l, b in pairs(craftable[tablenumber][item]) do
			if QBCore.Functions.GetPlayer(source).Functions.GetItemByName(l) and QBCore.Functions.GetPlayer(source).Functions.GetItemByName(l).amount >= b then hasitem = true
			else hasanyitem = false
		end
	end
	if hasanyitem ~= nil then hasitem = false end
if hasitem then cb(true) else cb(false) end end)

RegisterServerEvent('mxd-paan:getItem', function(ItemMake, tablenumber, craftable)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local amount = 0
	--This grabs the table from client and removes the item requirements
	if craftable then
			if craftable[tablenumber]["amount"] then amount = tonumber(craftable[tablenumber]["amount"]) else amount = 1 end
			for l, b in pairs(craftable[tablenumber][ItemMake]) do
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[tostring(l)], "remove", b) 
				Player.Functions.RemoveItem(tostring(l), b)
			end
	end
	Player.Functions.AddItem(ItemMake, amount, false, {["quality"] = nil})
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ItemMake], "add", amount)
end)

RegisterServerEvent('mxd-paan:leafpick', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveMoney("bank", Config.price , "Paanleaf")
	TriggerClientEvent('QBCore:Notify', src, 'Paid '..Config.price.. ' dollars for maintance of plant', 'success')
	local paanpicking = math.random(1,2)
	Player.Functions.AddItem('paanleaf', paanpicking)
	TriggerClientEvent("qb-inventory:client:ItemBox", source, QBCore.Shared.Items['paanleaf'], "add")
	TriggerClientEvent('QBCore:Notify', source, "Grabbed " ..paanpicking.. " fresh Paan Leafs")
end)