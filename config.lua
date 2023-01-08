Config = {}

Config.Locations = {
    ["armory"] = {
        [1] = vector3(373.8, -827.79, 29.3),
    },
    ["pickup"] = {
        [1] = vector3(380.21, -827.3, 29.3),
    },
    ["craft"] = {
        [1] = vector3(378.9, -827.4, 29.3),
    },
    ["stations"] = {
        [1] = {label = "MeetxDev PaanShop", coords = vector4(377.25, -833.46, 29.29, 340.61)},
    }
}

Config.price = 5

Config.job = 'paan'

Config.Items = {
    label = "PaanShop Stash",
    slots = 30,
    items = {
        [1] = {
            name = "coconutpowder",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "sugarpowder",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "supari",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "chocolate",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
		[5] = {
            name = "firestick",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "vimal",
            price = 25,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "rmd",
            price = 25,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "rajnigandha",
            price = 25,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
    },
}

Crafting = {}

Crafting.Normalpaan = {
	[1] = { ["normalpaan"] = { ["paanleaf"] = 1, ["supari"] = 1,  ["coconutpowder"] = 1  }, ['amount'] = 1  },
}

Crafting.Sweetpaan = {
	[1] = { ["sweetpaan"] = { ["paanleaf"] = 1, ["sugarpowder"] = 1,  ["coconutpowder"] = 1  }, ['amount'] = 1  },
}

Crafting.Chocolatepaan = {
	[1] = { ["chocolatepaan"] = { ["paanleaf"] = 1, ["chocolate"] = 1,  ["coconutpowder"] = 1  }, ['amount'] = 1  },
}

Crafting.Firepaan = {
	[1] = { ["firepaan"] = { ["paanleaf"] = 1, ["supari"] = 1,  ["coconutpowder"] = 1, ["firestick"] = 1  }, ['amount'] = 1  },
}
