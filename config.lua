Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true

Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 25 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Name	= 'Los Santos Police Department',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(472.97, -990.06, 24.91)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },
					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },
					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },
					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},
		
		VehDelLSPD = {
			vector3(462.74, -1014.4, 27.065)
		},

		BossActions = {
			vector3(439.27, -995.44, 29.69)
		}

	},
	
	--[[LSSD = {

		Blip = {
			Coords  = vector3(364.24, -1597.87, 36.95),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Name	= 'Los Santos Sheriff Department',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(2454.4, -839.24, -37.27)
		},

		Armories = {
			--vector3(2456.72, -837.31, -37.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1827.14, 3693.75, 34.22),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1840.14, 3701.75, 33.22), heading = 293.10, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -103.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, -130.6)
		}

	},
	
	POL1 = {

		Blip = { 
			Coords  = vector3(827.11, -1289.97, 28.24),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Name	= 'San Andreas State Police',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(2454.4, -839.24, -37.27)
		},

		Armories = {
			--vector3(2456.72, -837.31, -37.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1827.14, 3693.75, 34.22),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1840.14, 3701.75, 33.22), heading = 293.10, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -103.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, -130.6)
		}

	},

	POL2 = {

		Blip = { 
			Coords  = vector3(-1094.84, -835.19, 37.68),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Name	= 'Posterunek policji',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(2454.4, -839.24, -37.27)
		},

		Armories = {
			--vector3(2456.72, -837.31, -37.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1827.14, 3693.75, -34.22),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1840.14, 3701.75, -33.22), heading = 293.10, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -103.6),
				InsideShop = vector3(477.0, -1106.4, -43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, -43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, -130.6)
		}

	},

	POL3 = {

		Blip = { 
			Coords  = vector3(638.17, 1.84, 82.79),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Name	= 'Posterunek policji',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(2454.4, -839.24, -37.27)
		},

		Armories = {
			--vector3(2456.72, -837.31, -37.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1827.14, 3693.75, -34.22),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1840.14, 3701.75, -33.22), heading = 293.10, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -103.6),
				InsideShop = vector3(477.0, -1106.4, -43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, -43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, -130.6)
		}

	},]]

	--[[POL4 = {

		Blip = { 
			Coords  = vector3(1853.68, 3686.16, 34.27),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Name	= 'Biuro Szeryfa',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(2454.4, -839.24, -37.27)
		},

		Armories = {
			--vector3(2456.72, -837.31, -37.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1827.14, 3693.75, 34.22),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1840.14, 3701.75, 33.22), heading = 293.10, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -103.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, -130.6)
		}

	},

	POL5 = {

		Blip = { 
			Coords  = vector3(-445.85, 6013.83, 31.72),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.8,
			Name	= 'Biuro Szeryfa',
			Colour  = 3
		},

		Cloakrooms = {
			vector3(2454.4, -839.24, -37.27)
		},

		Armories = {
			--vector3(2456.72, -837.31, -37.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1827.14, 3693.75, 34.22),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1840.14, 3701.75, 33.22), heading = 293.10, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, -103.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, -130.6)
		}

	}]]



}

Config.AuthorizedWeapons = {
	Shared = {
		{ weapon = 'WEAPON_PISTOL', components = { nil, 0, 0, nil, 0}, price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', components = { nil, 0, 0, nil, 0}, price = 0 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	}
}

Config.Uniforms = {
	
	bullet_wear = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 11,  ['bproof_2'] = 0
		}
	},
	bullet_wear3 = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 2
		},
		female = {
			['bproof_1'] = 11,  ['bproof_2'] = 2
		}
	},
	bullet_wear4 = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 3
		},
		female = {
			['bproof_1'] = 11,  ['bproof_2'] = 3
		}
	},
	gilet_wear = {
		male = {
			['bproof_1'] = 10,  ['bproof_1'] = 0
		},
		female = {
			['bproof_1'] = 36,  ['bproof_1'] = 1
		}
	},
	bullet_wear2 = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 3
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	handcuffs = {
		male = {
			['chain_1'] = 41,  ['chain_2'] = 0
		},
		female = {
			['chain_1'] = 25,  ['chain_2'] = 0
		}
	},
	no_handcuffs = {
		male = {
			['chain_1'] = 0,  ['chain_2'] = 0
		},
		female = {
			['chain_1'] = 0,  ['chain_2'] = 0
		}
	},
	moto_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 41,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 8, ['chain_2'] = 0,
			['pants_1'] = 32,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['helmet_1'] = 48,  ['helmet_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 26,  ['bproof_2'] = 0,
			['glasses_1'] = 5,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 174,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 31,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['helmet_1'] = 17,  ['helmet_2'] = 1,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 28,  ['bproof_2'] = 0,
			['glasses_1'] = 11,	['arms'] = 18,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},
	kurtka_wear = {
		male = {
			['tshirt_1'] = 65, ['tshirt_2'] = 0,
			['torso_1'] = 41,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 8, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = 0,	['arms'] = 14,
			['bags_1'] = 0, ['basg_2'] = 0
		},
		female = {
			['tshirt_1'] = 53,  ['tshirt_2'] = 0,
			['torso_1'] = 174,   ['torso_2'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['glasses_1'] = 5,	['arms'] = 0,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	lspd_wear = {
		male = {
			['tshirt_1'] = 58, ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 0,
			['pants_1'] = 37,   ['pants_2'] = 0,
			['shoes_1'] = 56,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['bproof_1'] = 2,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 1,
			['bags_1'] = 52, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 204,   ['torso_2'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 3,
			['chain_1'] = 0, ['chain_2'] = 0,
			['bags_1'] = 52, ['bags_2'] = 0
		}
	},

	lspd5_wear = {
		male = {
			['tshirt_1'] = 53, ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['bproof_1'] = 1,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 0,
			['bags_1'] = 52, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 194,   ['torso_2'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 14,
			['chain_1'] = 0, ['chain_2'] = 0,
			['bags_1'] = 52, ['bags_2'] = 0
		}
	},

	lspd6_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 95,   ['torso_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 1, ['chain_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 6,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 0,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 1,
			['torso_1'] = 86,   ['torso_2'] = 0,
			['pants_1'] = 61,   ['pants_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 2,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 14,
			['chain_1'] = 0, ['chain_2'] = 0,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	lspdkadet_wear = {
		male = {
			['tshirt_1'] = 56, ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['bproof_1'] = 10,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 6,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 204,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['bproof_1'] = 19,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	lspd2_wear = {
		male = {
			['tshirt_1'] = 28, ['tshirt_2'] = 0,
			['torso_1'] = 38,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 6, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 3,
			['glasses_1'] = -1,	['arms'] = 6,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 0,
			['torso_1'] = 170,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 6, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 3,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['bproof_1'] = 26,  ['bproof_2'] = 3,
			['glasses_1'] = -1,	['arms'] = 7,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	lspd3_wear = {
		male = {
			['tshirt_1'] = 65, ['tshirt_2'] = 0,
			['torso_1'] = 191,   ['torso_2'] = 6,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 6,
			['bproof_1'] = 24,  ['bproof_2'] = 3,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 45,  ['tshirt_2'] = 0,
			['torso_1'] = 193,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 2,
			['bproof_1'] = 26,  ['bproof_2'] = 3,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	lspd4_wear = {
		male = {
			['tshirt_1'] = 15, ['tshirt_2'] = 0,
			['torso_1'] = 51,   ['torso_2'] = 2,
			['decals_1'] = 3,   ['decals_2'] = 0,
			['chain_1'] = 1, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 1,
			['helmet_1'] = 75,  ['helmet_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 2,
			['decals_1'] = 3,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 30,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 1,
			['helmet_1'] = 74,  ['helmet_2'] = 0,
			['bproof_1'] = 18,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 18,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	lspd7_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 95,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 20,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 49,  ['helmet_2'] = 0,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 0,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 86,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 82,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 20,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 47,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 14,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	sasp_wear = {
		male = {
			['tshirt_1'] = 15, ['tshirt_2'] = 0,
			['torso_1'] = 105,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 8, ['chain_2'] = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 17,  ['helmet_2'] = 0,
			['bproof_1'] = 26,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 96,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 17,  ['helmet_2'] = 0,
			['bproof_1'] = 28,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 18,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	sasp2_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 27,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = 5,	['arms'] = 0,
			['bags_1'] = 55, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 194,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 2,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 14,
			['bags_1'] = 55, ['bags_2'] = 0
		}
	},

	sasp3_wear = {
		male = {
			['tshirt_1'] = 28, ['tshirt_2'] = 0,
			['torso_1'] = 38,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 6, ['chain_2'] = 0,
			['pants_1'] = 37,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 23,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 6,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 23,  ['tshirt_2'] = 0,
			['torso_1'] = 170,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 6, ['chain_2'] = 0,
			['pants_1'] = 43,   ['pants_2'] = 3,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 25,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 7,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	sasp4_wear = {
		male = {
			['tshirt_1'] = 65, ['tshirt_2'] = 6,
			['torso_1'] = 105,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 45,  ['tshirt_2'] = 6,
			['torso_1'] = 96,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 8, ['chain_2'] = 0,
			['pants_1'] = 43,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 18,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	sasp5_wear = {
		male = {
			['tshirt_1'] = 53, ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 27,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 1,
			['bags_1'] = 55, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 204,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 2,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 55, ['bags_2'] = 0
		}
	},

	sasp6_wear = {
		male = {
			['tshirt_1'] = 65, ['tshirt_2'] = 2,
			['torso_1'] = 191,   ['torso_2'] = 9,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 27,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 44,  ['helmet_2'] = 0,
			['bproof_1'] = 23,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 55, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 45,  ['tshirt_2'] = 2,
			['torso_1'] = 193,   ['torso_2'] = 9,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 43,  ['helmet_2'] = 0,
			['bproof_1'] = 25,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 55, ['bags_2'] = 0
		}
	},

	sasp7_wear = {
		male = {
			['tshirt_1'] = 15, ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 1,
			['decals_1'] = 9,   ['decals_2'] = 0,
			['chain_1'] = 1, ['chain_2'] = 0,
			['pants_1'] = 39,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 3,
			['helmet_1'] = 39,  ['helmet_2'] = 1,
			['bproof_1'] = 27,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 55, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 1,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['chain_1'] = 1, ['chain_2'] = 0,
			['pants_1'] = 38,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 3,
			['helmet_1'] = 38,  ['helmet_2'] = 1,
			['bproof_1'] = 29,  ['bproof_2'] = 2,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 55, ['bags_2'] = 0
		}
	},

	sasp8_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 53,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 54,   ['pants_2'] = 3,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 44,  ['helmet_2'] = 0,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 0,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 1,
			['torso_1'] = 46,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 56,   ['pants_2'] = 3,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 43,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 14,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	szeryf_wear = {
		male = {
			['tshirt_1'] = 65, ['tshirt_2'] = 1,
			['torso_1'] = 158,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 50,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 1,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 45,  ['tshirt_2'] = 1,
			['torso_1'] = 155,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 8, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	szeryf2_wear = {
		male = {
			['tshirt_1'] = 15, ['tshirt_2'] = 0,
			['torso_1'] = 158,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 17,  ['helmet_2'] = 2,
			['bproof_1'] = 26,  ['bproof_2'] = 1,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 155,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 31,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 17,  ['helmet_2'] = 2,
			['bproof_1'] = 28,  ['bproof_2'] = 1,
			['glasses_1'] = -1,	['arms'] = 3,
			['bag_1'] = 0, ['bag_2'] = 0
		}
	},

	szeryf3_wear = {
		male = {
			['tshirt_1'] = 15, ['tshirt_2'] = 0,
			['torso_1'] = 51,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 1, ['chain_2'] = 0,
			['pants_1'] = 33,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 3,
			['helmet_1'] = 75,  ['helmet_2'] = 1,
			['bproof_1'] = 27,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 44,   ['torso_2'] = 1,
			['decals_1'] = 4,   ['decals_2'] = 0,
			['chain_1'] = 1, ['chain_2'] = 0,
			['pants_1'] = 32,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 3,
			['helmet_1'] = 74,  ['helmet_2'] = 1,
			['bproof_1'] = 29,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 17,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	szeryf4_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 27,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['bproof_1'] = 2,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 1,
			['bags_1'] = 53, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 204,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 53, ['bags_2'] = 0
		}
	},

	szeryf5_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 27,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 2,
			['bags_1'] = 53, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 0,
			['torso_1'] = 194,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 2,
			['bags_1'] = 53, ['bags_2'] = 0
		}
	},

	szeryf6_wear = {
		male = {
			['tshirt_1'] = 38, ['tshirt_2'] = 0,
			['torso_1'] = 96,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 54,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 0,
			['bproof_1'] = 13,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 0,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 27,  ['tshirt_2'] = 1,
			['torso_1'] = 87,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 54,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['glasses_1'] = -1,	['arms'] = 14,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	szeryf7_wear = {
	male = {
		['tshirt_1'] = 28, ['tshirt_2'] = 0,
		['torso_1'] = 38,   ['torso_2'] = 4,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['chain_1'] = 6, ['chain_2'] = 0,
		['pants_1'] = 37,   ['pants_2'] = 0,
		['shoes_1'] = 54,   ['shoes_2'] = 0,
		['mask_1'] = 0,  ['mask_2'] = 0,
		['helmet_1'] = 13,  ['helmet_2'] = 0,
		['bproof_1'] = 23,  ['bproof_2'] = 1,
		['glasses_1'] = -1,	['arms'] = 6,
		['bags_1'] = 0, ['bags_2'] = 0
	},
	female = {
		['tshirt_1'] = 23,  ['tshirt_2'] = 0,
		['torso_1'] = 170,   ['torso_2'] = 4,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['chain_1'] = 6, ['chain_2'] = 0,
		['pants_1'] = 43,   ['pants_2'] = 3,
		['shoes_1'] = 54,   ['shoes_2'] = 0,
		['mask_1'] = 0,  ['mask_2'] = 0,
		['helmet_1'] = 13,  ['helmet_2'] = 0,
		['bproof_1'] = 25,  ['bproof_2'] = 1,
		['glasses_1'] = -1,	['arms'] = 7,
		['bags_1'] = 0, ['bags_2'] = 0
		}
	},

	szeryf8_wear = {
		male = {
			['tshirt_1'] = 65, ['tshirt_2'] = 1,
			['torso_1'] = 191,   ['torso_2'] = 7,
			['pants_1'] = 27,   ['pants_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 0,
			['bproof_1'] = 23,  ['bproof_2'] = 1,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 0, ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 45,  ['tshirt_2'] = 1,
			['torso_1'] = 193,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['chain_1'] = 0, ['chain_2'] = 0,
			['pants_1'] = 41,   ['pants_2'] = 1,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['helmet_1'] = 10,  ['helmet_2'] = 0,
			['bproof_1'] = 25,  ['bproof_2'] = 1,
			['glasses_1'] = -1,	['arms'] = 3,
			['bags_1'] = 0, ['bags_2'] = 0
		}
	}
}
