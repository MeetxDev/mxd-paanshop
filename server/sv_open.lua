local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("normalpaan", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sweetpaan", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("chocolatepaan", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("firepaan", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("vimal", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)

    end
end)

QBCore.Functions.CreateUseableItem("rmd", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)
		
    end
end)

QBCore.Functions.CreateUseableItem("rajnigandha", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eatpaan", src, item.name)
		
    end
end)