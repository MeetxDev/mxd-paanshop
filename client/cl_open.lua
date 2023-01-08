local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('mxd-paan:open', function()
	i = 1
	exports['qb-menu']:openMenu({
		{ header = "Paan Creating", txt = "Requires Shamlal level exp.", isMenuHeader = true },
		{ header = "", txt = "✘ Close", params = { event = "mxd-paan:close", args = -2 } },
		{ header = "Normal Paan", txt = "Create a Normal Paan", params = { event = "mxd-paan:createpaan", args = { item = 'normalpaan', tablenumber = i, craftable = Crafting.Normalpaan} } },
		{ header = "Sweet Paan",	txt = "Create a sweet paan", params = { event = "mxd-paan:createpaan", args = { item = 'sweetpaan', tablenumber = i, craftable = Crafting.Sweetpaan} } },
		{ header = "chocolate Paan", txt = "Create a chocolate paan", params = { event = "mxd-paan:createpaan", args = { item = 'chocolatepaan', tablenumber = i, craftable = Crafting.Chocolatepaan} } },
		{ header = "Fire Paan", txt = "Create a Fire paan", params = { event = "mxd-paan:createpaan", args = { item = 'firepaan', tablenumber = i, craftable = Crafting.Firepaan} } },	
    })
end)

for k, v in pairs(Config.Locations["craft"]) do
	exports['qb-target']:AddBoxZone("Paan"..k, vector3(v.x, v.y, v.z), 0.7, 2.0, {
		name = "Paan"..k,
		heading = 179.37,
		debugPoly = false,
		minZ = 28.3,
		maxZ = 29.5,
	}, {
		options = {
			{
				type = "client",
				event = "mxd-paan:open",
				icon = "fas fa-cheese",
				label = "Make Paan",
				job = "paan",
			},
		},
		distance = 2.5
	})
end

for k, v in pairs(Config.Locations["armory"]) do

    exports['qb-target']:AddBoxZone("Paanar"..k, vector3(v.x, v.y, v.z), 0.45, 2.5, {
        name = "Paanar"..k,
        heading = 271.03,
        debugPoly = false,
        minZ = 27.77834,
        maxZ = 29.9,
    }, {
        options = {
            {
                type = "client",
                event = "mxd-paan:openarmor",
                icon = "fas fa-box",
                label = "Open Storage",
                job = Config.job,
            },
        },
        distance = 2.5
    })
end

for k, v in pairs(Config.Locations["pickup"]) do
    exports['qb-target']:AddBoxZone("Paanglo"..k, vector3(v.x, v.y, v.z), 0.45, 0.5, {
        name = "Paanglo"..k,
        heading = 271.03,
        debugPoly = false,
        minZ = 27.77834,
        maxZ = 29.9,
    }, {
        options = {
            {
                type = "client",
                event = "mxd-paan:openglove",
                icon = "fas fa-clipboard",
                label = "Place/Pick Paan",
            },
        },
        distance = 2.5
    })
end

exports['qb-target']:AddTargetModel(-928937343, {
    options = {
        {
            type = "client",
            event = "mxd-paan:leafcollect",
            icon = "fas fa-leaf",
            label = "Collect Paan leaf",
            item = 'weapon_knife',
            job = Config.job,
            canInteract = function(entity)
                local isinside = checkPANStatus()
                if isinside then
                    return true
                end
                return false
            end,
        },
    },
    distance = 2.5
})