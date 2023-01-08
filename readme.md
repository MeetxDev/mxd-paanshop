Dependncies

QBCore
PolyZone
qb-target
dpemotes
[MLO (optional can change coords in config)](https://www.gta5-mods.com/maps/mlo-legion-weed-clinic)


Add this to qb-core shared items file

```lua

	['sweetpaan'] 				 	 = {['name'] = 'sweetpaan', 			  	  		['label'] = 'Sweet paan', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'sweetpaan.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sweet Paan for you'},
	['normalpaan'] 				 	 = {['name'] = 'normalpaan', 			  	  	['label'] = 'Normal paan', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'normalpaan.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Normal Paan for you'},
	['firepaan'] 				 	 = {['name'] = 'firepaan', 			  	  		['label'] = 'Fire paan', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'firepaan.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fire Paan for you'},
	['chocolatepaan'] 				 = {['name'] = 'chocolatepaan', 			  		['label'] = 'Chocolate paan', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'chocolatepaan.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Chocolate Paan for you'},	
	['paanleaf'] 				 	 = {['name'] = 'paanleaf', 			  	  		['label'] = 'paanleaf', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'paanleaf.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paan leaf for making paan'},
	['coconutpowder'] 				 	 = {['name'] = 'coconutpowder', 			  	  		['label'] = 'Coconut Powder', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'coconutpowder.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Coconut Powder for making paan'},
	['chocolate'] 				 		 = {['name'] = 'chocolate', 			  	  			['label'] = 'chocolate', 						['weight'] = 200, 		['type'] = 'item', 		['image'] = 'chocolate.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Chocolate'},
	['sugarpowder'] 				 	 = {['name'] = 'sugarpowder', 			  	  			['label'] = 'Sugar Powder', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'sugarpowder.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sugar Powder for making paan'},
	['supari'] 				 	 		 = {['name'] = 'supari', 			  	  				['label'] = 'Supari', 							['weight'] = 200, 		['type'] = 'item', 		['image'] = 'supari.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Supari for making paan'},
	['firestick'] 				 	 	= {['name'] = 'firestick', 			  	  				['label'] = 'Firestick', 						['weight'] = 200, 		['type'] = 'item', 		['image'] = 'firestick.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'firestick for making paan'},
	['vimal'] 				 	 = {['name'] = 'vimal', 			  	  		['label'] = 'Vimal', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'vimal.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vimal for you'},
    ['rmd'] 				 	 = {['name'] = 'rmd', 			  	  		['label'] = 'RMD Pan Masala', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'rmd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pan Masala for you'},
	['rajnigandha'] 			= {['name'] = 'rajnigandha', 			  	  		['label'] = 'Rajnigandha', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'rajnigandha.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rajnigandha for you'},

```


Add this into qb-smallresoures config consumables 
```lua

    ["normalpaan"] = math.random(5, 10),
    ["sweetpaan"] = math.random(5, 10),
    ["chocolatepaan"] = math.random(5, 10),
    ["firepaan"] = math.random(5, 10),
    ["vimal"] = math.random(5, 10),
    ["rmd"] = math.random(5, 10),
    ["rajnigandha"] = math.random(5, 10),

 
 ```

Add this into qb-smallresoures client consumables.lua
 ```lua

RegisterNetEvent('consumables:client:Eatpaan', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eatpaan"})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

```

Add this into dpemotes client animation.lua
```lua 

 ["eatpaan"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Eat", AnimationOptions =
   {
        Prop = "",
        PropBone = 18905,
        PropPlacement = {0.12, 0.028, 0.001, 10.0, 175.0},
        EmoteMoving = true,
        EmoteLoop = true,
   }},
```

Add this into qbcore shared jobs
```lua 

 ['paan'] = {
		label = 'Paan',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'paan employee',
                payment = 150
            },
            ['1'] = {
                name = 'paan owner',
                payment = 250
            },
        },
	},
```
