Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(5114.52, -5383.54, 17.73), --esrar satış
            length = 6.5,
            width = 6.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 16.97,
            maxZ = 19.42,
            distance = 6.0
        },
	[2] = {
            coords = vector3(540.98, -2049.22, 6.18), -- esrar satış 2
            length = 6.5,
            width = 6.8,
            heading = 20.0,
            debugPoly = false,
            minZ = 5.97,
            maxZ = 8.42,
            distance = 6.0
        },
	[3] = {
            coords = vector3(516.2, -2760.14, 6.64), --kokain satış
            length = 6.5,
            width = 6.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 5.97,
            maxZ = 8.42,
            distance = 6.0
        },
	[4] = {
            coords = vector3(-1503.74, 838.22, 181.59), -- Meth satış
            length = 6.5,
            width = 6.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 180.07,
            maxZ = 183.42,
            distance = 6.0
        },
	[5] = {
            coords = vector3(-251.85, -2209.95, 10.06), -- Kaçakçı
            length = 6.5,
            width = 6.8,
            heading = 140.0,
            debugPoly = false,
            minZ = 8.97,
            maxZ = 12.42,
            distance = 6.0
        },
	[6] = {
            coords = vector3(1247.18, -2908.7, 21.33), -- Soygun satış
            length = 6.5,
            width = 6.8,
            heading = 140.0,
            debugPoly = false,
            minZ = 20.97,
            maxZ = 21.42,
            distance = 4.0
        },
	[7] = {
            coords = vector3(-1038.7, -1397.94, 5.55), -- balık satış
            length = 6.5,
            width = 6.8,
            heading = 140.0,
            debugPoly = false,
            minZ = 4.57,
            maxZ = 7.42,
            distance = 6.0
        },
	[8] = {
            coords = vector3(287.3, 2843.43, 44.63), -- maden satış
            length = 6.5,
            width = 6.8,
            heading = 140.0,
            debugPoly = false,
            minZ = 43.57,
            maxZ = 45.42,
            distance = 6.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = false

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems1 = {
    [1] = {
        item = 'weed_packaged',
        price = math.random(265,275)
    }
}

Config.PawnItems2 = {
    [1] = {
        item = 'cocaine_packaged',
        price = math.random(265,275)
    }
}

Config.PawnItems3 = {
    [1] = {
        item = 'meth',
        price = math.random(320,330)
    }
}

Config.PawnItems4 = {
    [1] = {
        item = 'kuz_watch',
        price = math.random(895,910)
    },
	[2] = {
        item = 'kuz_rarecoin',
        price = math.random(675,680)
    },
	[3] = {
        item = 'kuz_jewelry',
        price = math.random(525,530)
    },
	[4] = {
        item = 'kuz_goldcoin',
        price = math.random(90,92)
    },
	[5] = {
        item = 'kuz_silvercoin',
        price = math.random(60,62)
    },
}

Config.PawnItems5 = {
    [1] = {
        item = 'jewels',
        price = math.random(28000,30000)
    },
	[2] = {
        item = 'rolex-watch',
        price = math.random(28000,30000)
    },
	[3] = {
        item = 'gold',
        price = math.random(7000,7500)
    },
	[4] = {
        item = 'diamond',
        price = math.random(7000,7500)
    },
	[5] = {
        item = 'red_diamond',
        price = math.random(60500,62500)
    },
}

Config.PawnItems6 = {
    [1] = {
        item = 'minnow',
        price = math.random(140,150)
    },
	[2] = {
        item = 'crab',
        price = math.random(150,160)
    },
	[3] = {
        item = 'crappie',
        price = math.random(160,170)
    },
	[4] = {
        item = 'garfish',
        price = math.random(170,180)
    },
	[5] = {
        item = 'rainbowtrout',
        price = math.random(180,190)
    },
	[6] = {
        item = 'northernpike',
        price = math.random(190,200)
    },
	[7] = {
        item = 'salmon',
        price = math.random(200,210)
    },
	[8] = {
        item = 'stripedbass',
        price = math.random(210,220)
    },
	[9] = {
        item = 'trout',
        price = math.random(220,230)
    },
	[10] = {
        item = 'pollock',
        price = math.random(230,240)
    },
	[11] = {
        item = 'haddock',
        price = math.random(240,250)
    },
	[12] = {
        item = 'tuna',
        price = math.random(250,260)
    },
	--[[
	[13] = {
        item = 'shark',
        price = math.random(280,300)
    },
	[14] = {
        item = 'dolphin',
        price = math.random(300,320)
    },
	[15] = {
        item = 'turtle',
        price = math.random(320,340)
    },
	[16] = {
        item = 'whale',
        price = math.random(340,360)
    },
	]]
}

Config.PawnItems7 = {
    [1] = {
        item = 'ds_diamond',
        price = math.random(240,245)
    },
	[2] = {
        item = 'copper_bar',
        price = math.random(240,245)
    },
	[3] = {
        item = 'gold_bar',
        price = math.random(240,245)
    },
	[4] = {
        item = 'iron_bar',
        price = math.random(240,245)
    },
	[5] = {
        item = 'tin_bar',
        price = math.random(240,245)
    },
	[6] = {
        item = 'aquamarine',
        price = math.random(240,245)
    },
	[7] = {
        item = 'greenberyl',
        price = math.random(240,245)
    },
	[8] = {
        item = 'ruby',
        price = math.random(240,245)
    },
	[9] = {
        item = 'coal',
        price = math.random(240,245)
    },
	[10] = {
        item = 'bauxite',
        price = math.random(55,60)
    },
	[11] = {
        item = 'sulfur_bar',
        price = math.random(55,60)
    },
	[12] = {
        item = 'lead_ore',
        price = math.random(240,245)
    },
	[13] = {
        item = 'stone',
        price = math.random(55,60)
    },
}
