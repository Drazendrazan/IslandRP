Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 0, g = 130, b = 204 }
Config.Marker 			 		  = {Type = 27, r = 0, g = 127, b = 22}
Config.EnableArmoryManagement     = true
Config.EnableLicenses             = true
Config.EnableHandcuffTimer        = true
Config.HandcuffTimer              = 15 * 60000
Config.MaxInService               = -1
Config.Locale                     = 'pl'
Config.ReceiveAmmo = 250
Config.Colors = {
	{ label = _U('black'), value = 'black'},
	{ label = _U('white'), value = 'white'},
	{ label = _U('grey'), value = 'grey'},
	{ label = _U('red'), value = 'red'},
	{ label = _U('pink'), value = 'pink'},
	{ label = _U('blue'), value = 'blue'},
	{ label = _U('yellow'), value = 'yellow'},
	{ label = _U('green'), value = 'green'},
	{ label = _U('orange'), value = 'orange'},
	{ label = _U('brown'), value = 'brown'},
	{ label = _U('purple'), value = 'purple'}
}

Config.License = {
	'SWAT',
	'SEU',
	'FTO',
	'AIAD',
}

Config.PoliceStations = {

	MissionRow = {
			Cloakrooms = {
				{ x = 460.83, y = -996.35, z = 29.69 }, 
			},


			Armories = {
				{ x = 482.68, y = -996.13, z = 29.69}, 
			},

			Vehicles = {
				{
					Spawner    = { x = 427.63, y = -986.49, z = 24.70 },
					SpawnPoint = { x = 431.54, y = -985.44, z = 24.7 },
					Heading    = 176.53
				},
				{
					Spawner    = { x = 459.35, y = -986.60, z = 24.70 },
					SpawnPoint = { x = 454.26, y = -985.44, z = 24.7 },
					Heading    = 176.53
				},
			},
			VehicleDeleters = {
				{ x = 450.26, y = -976.03, z = 24.7 },
				{ x = 435.39, y = -976.1, z = 24.7 },
				{ x = 475.92, y = -1023.64, z = 27.0 },
			},

			BossActions = {
				{ x = 460.5, y = -985.33, z = 29.50 },
			},
	},
	VineWood = {
			Cloakrooms = {
				{ x = 618.75, y = 14.67, z = 81.78 }, 
			},


			Armories = {
				{ x = 624.19, y = -27.61, z = 81.78}, 
			},

			Vehicles = {
				{
					Spawner    = { x = 625.07, y = 20.28, z = 86.95 },
					SpawnPoint = { x = 620.83, y = 26.59, z = 87.45 },
					Heading    = 249.89
				},
			},
			VehicleDeleters = {
				{ x = 617.01, y = 28.18, z = 87.85 },
			},

			BossActions = {
				{ x = 629.56, y = -8.86, z = 81.78 },
			},
	},
	Davis = {
			Cloakrooms = {
				{ x = -382.51, y = -1609.79, z = 28.29 }, 
			},


			Armories = {
				{ x = 368.35, y = -1600.08, z = 28.29 },  
			},

			Vehicles = {
				{
					Spawner    = { x = 373.47, y = -1617.33, z = 28.29 },
					SpawnPoint = { x = 378.51, y = -1630.51, z = 27.31},
					Heading    = 317.52
				},
			},
			VehicleDeleters = {
				{ x = 386.46, y = -1635.47, z = 28.29 },
			},

			BossActions = {
				{ x = 388.54, y = -1601.39, z = 28.29 },
			},
	},	
	Sandy = {
			Cloakrooms = {
				{ x = 1849.11, y = 3695.73, z = 33.27}, 
			},


			Armories = {
				{ x = 1842.0, y = 3691.04, z = 33.27},  
			},

			Vehicles = {
				{
					Spawner    = { x = 1855.64, y = 3702.24, z = 33.27 },
					SpawnPoint = { x = 1861.7, y = 3704.48, z = 32.45},
					Heading    = 214.57
				},
			},
			VehicleDeleters = {
				{ x = 1867.28, y = 3694.59, z = 32.65},
			},

			BossActions = {
				{ x = 1861.89, y = 3689.17, z = 33.27},
			},
	},
	Paleto = {
			Cloakrooms = {
				{ x = -453.07, y = 6013.78, z = 30.72}, 
			},


			Armories = {
				{ x = -437.03, y = 5997.43, z = 30.72},  
			},

			Vehicles = {
				{
					Spawner    = { x = -457.35, y = 6018.48, z = 30.49 },
					SpawnPoint = { x = -462.22, y = 6020.98, z = 30.34},
					Heading    = 318.17
				},
			},
			VehicleDeleters = {
				{ x = -471.27, y = 6010.99, z = 30.34},
			},

			BossActions = {
				{ x = -447.16, y = 6014.29, z = 35.51},
			},
	}

}

Config.Dzwonek = {
    MissionRowPD = {
        Coords = { x = 441.29, y = -981.81, z = 31.99 },
    },
}

Config.ClothesZone = {
	{x = 462.89, y = -996.45, z = 29.69}, --MR
}

Config.Ilosc = {
	{x = 439.36, y = -985.48, z = 30.89},
}

Config.RepairVeh = {
	{x = 426.66, y = -979.40, z =  24.46}, --MR

}
 
Config.HeliZones = {
	PoliceHeliGarage = {
		Pos = {
			{x = 448.65,  y = -981.25, z = 43.69}, --MR
		}
	}
}
Config.BoatZones = {
	PoliceBoatGarage = {
		Pos = {
			{x = 1538.69,  y = 3901.5, z = 30.35},
			{x = 2000.42,  y = 4500, z = 33.437}
		}
	}
}

Config.ExtraZones = {
	ExtraPositions = {
		Pos = {
			{x = 436.76,  y = -994.22, z = 25.7}, --MR
			{x = 445.93,  y = -994.23, z = 25.7}, --MR
		}
	}
}

Config.Helicopters = {
	{ model = 'polmav', label = 'Police Maverick', livery = 2 }
}
Config.Boats = {
	{ model = 'predator', label = 'Police Predator', livery = 0 }
}
Config.VehicleGroups = {
    'Adam', -- 1
    'Adam Offroad', -- 2
    'SEU', -- 3
    'Unmarked', -- 4
    'Motory', -- 5
    'SWAT', -- 6
    'Eagle', -- 7
	'licencje'
}

Config.AuthorizedVehicles = {
	
	-- Adam

	{
		grade = 1,
		model = '14chgr',
		label = 'Dodge Charger 2014',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 2,
		model = '19charger',
		label = 'Dodge Charger 2019',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 0, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = '2018taurusrb',
		label = 'Ford Impala 2018',
		groups = {1},
		livery = 2,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'charger20141',
		label = 'Dodge Charger 2014',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 0, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'FordFocus2018',
		label = 'FordFocus2018',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 1,
		model = 'JeepCherokee2019',
		label = 'Jeep Cherokee 2019',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'k9rb',
		label = 'Ford Victoria 2019',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 0, -- radary w środku
			[6] = 0, -- wkładka na fotel pasażera
			[7] = 0, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 8,
		model = 'rmodgt63police',
		label = 'RMOD GT 63',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 1,
		model = '14tesla',
		label = 'Tesla 2020',
		groups = {1},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},

	-- Adam Off-Road

	{
		grade = 7,
		model = '1raptor',
		label = 'Ford Raptor 2019',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 2,
		model = 'ChevroletSilverado2020W',
		label = 'Chevrolet Silverado 2020',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 0, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 5,
		model = 'DodgeRam2016',
		label = 'Dodge Ram 2016',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 0 -- bomby przy rejestracji
		}
	},
	{
		grade = 1,
		model = 'Fordf2502014',
		label = 'Fordf 250 2014',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 0, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 0, -- bomba na lusterku
			[9] = 0, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 3,
		model = 'state8',
		label = 'Jeep',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 1,
		model = 'TahoeRB',
		label = 'Tahoe',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 1,
		model = 'xmas3',
		label = 'Ford Explorer',
		groups = {2},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},

	-- SEU

	{
		grade = 0,
		model = 'pol718',
		label = 'Porsche 911 Cayman',
		groups = {3},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'c8cop',
		label = 'Corvette C8',
		groups = {3},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'camaro',
		label = 'Camaro 2019',
		groups = {3},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'challenger18',
		label = 'Dodge Challenger 2018',
		groups = {3},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 0, -- wkładka na fotel pasażera
			[7] = 0, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'ghispo2',
		label = 'Maseratti',
		groups = {3},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},
	{
		grade = 0,
		model = 'polp1',
		label = 'P1',
		groups = {3},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 1, -- bomby chuj wie gdzie
			[11] = 1 -- bomby przy rejestracji
		}
	},

	-- Unmarked

	{
		grade = 7,
		model = '19sierra',
		label = 'Ford Sierra 2019',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 0, -- radary w środku
			[6] = 0, -- wkładka na fotel pasażera
			[7] = 0, -- bomba na lusterku
			[8] = 0, -- bomba na lusterku
			[9] = 0, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'ngt19',
		label = 'Nissan GTR 2017',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_70cha',
		label = 'Stare Auto',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_745',
		label = 'BMW 745',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_911',
		label = 'Porsche 911',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_918',
		label = 'Porsche 918',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_amg',
		label = 'Mercedes AMG',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_amggtr',
		label = 'Mercedes AMG GTR',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_avent',
		label = 'Lamborghini Aventador 2020',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_m5',
		label = 'BMW M5',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_m8',
		label = 'BMW M8',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_rs7',
		label = 'AUDI RS7',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 7,
		model = 'nm_p1',
		label = 'P1',
		groups = {4},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},

	-- Motocykle

	{
		grade = 3,
		model = 'pdbike',
		label = 'Motor Harley',
		groups = {5},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 0, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 0, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 0, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 1, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 0,
		model = 'pmcbike',
		label = 'Rower',
		groups = {5},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 5,
		model = 'policeb1',
		label = 'Motor Speed Unit',
		groups = {5},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 3,
		model = 'policeb2',
		label = 'Cross',
		groups = {5},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 1,
		model = 'pdbike',
		label = 'Rower',
		groups = {5},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},

	-- SWAT

	{
		grade = 0,
		model = 'swatbrickade',
		label = 'Pojazd Operacyjny',
		groups = {6},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 10,
		model = 'menswat',
		label = 'Woz Bojowy',
		groups = {6},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},

	-- Specjalne

	{
		grade = 0,
		model = 'towtruck',
		label = 'Odholownik',
		groups = {9},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 10,
		model = 'usmscoach',
		label = 'Autobus Wiezienny',
		groups = {9},
		livery = 0,
		extras = {
			[1] = 0, -- bomby na dachu
			[2] = 0, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
	{
		grade = 0,
		model = 'usmspatriot',
		label = 'Pojazd Obronny Konwoju',
		groups = {9},
		livery = 0,
		extras = {
			[1] = 1, -- bomby na dachu
			[2] = 1, -- bomby na podszybiu
			[3] = 1, -- bumper
			[4] = 1, -- bomby w progach
			[5] = 1, -- radary w środku
			[6] = 1, -- wkładka na fotel pasażera
			[7] = 1, -- bomba na lusterku
			[8] = 1, -- bomba na lusterku
			[9] = 1, -- radary na klapie
			[10] = 0, -- bomby chuj wie gdzie
			[11] = 0, -- bomby przy rejestracji
			[12] = 0 -- coś XD
		}
	},
}

Config.Uniforms = {
	-- PODSTAWOWE STROJE 
	kadet = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 37,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 9,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 71,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 322,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	oficershort = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 37,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 9,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	oficerlong = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 38,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 9,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	sierzantshort = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 38,   ['torso_2'] = 1,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 9,      ['helmet_2'] = 3,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 169,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	sierzantlong = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 97,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 38,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 9,      ['helmet_2'] = 3,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 169,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	sierzantboj = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 38,   ['torso_2'] = 1,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 9,      ['helmet_2'] = 3,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 1,     ['bproof_2'] = 0,
			['mask_1'] = 169,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 83,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
	   },
	   female = {
		   ['tshirt_1'] = 152,  ['tshirt_2'] = 0,
		   ['torso_1'] = 328,   ['torso_2'] = 0,
		   ['decals_1'] = 0,   ['decals_2'] = 0,
		   ['arms'] = 44,
		   ['pants_1'] = 30,   ['pants_2'] = 0,
		   ['shoes_1'] = 25,   ['shoes_2'] = 0,
		   ['helmet_1'] = 134,  ['helmet_2'] = 1,
		   ['bproof_1'] = 0,     ['bproof_2'] = 0,
		   ['mask_1'] = 121,      ['mask_2'] = 0,
		   ['chain_1'] = 0,    ['chain_2'] = 0,
		   ['ears_1'] = -1,     ['ears_2'] = 0
	   }
   },
	porucznikshort = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 73,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	poruczniklong = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	porucznikboj = {    
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 73,   ['torso_2'] = 0,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 1,     ['bproof_2'] = 0,
			['mask_1'] = 35,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 83,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
	   },
	   female = {
		   ['tshirt_1'] = 152,  ['tshirt_2'] = 0,
		   ['torso_1'] = 328,   ['torso_2'] = 1,
		   ['decals_1'] = 0,   ['decals_2'] = 0,
		   ['arms'] = 44,
		   ['pants_1'] = 30,   ['pants_2'] = 0,
		   ['shoes_1'] = 25,   ['shoes_2'] = 0,
		   ['helmet_1'] = 134,  ['helmet_2'] = 1,
		   ['bproof_1'] = 0,     ['bproof_2'] = 0,
		   ['mask_1'] = 121,      ['mask_2'] = 0,
		   ['chain_1'] = 0,    ['chain_2'] = 0,
		   ['ears_1'] = -1,     ['ears_2'] = 0
	   }
   },
	kapitanshort = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 1,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 48,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	kapitanlong = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 31,   ['torso_2'] = 1,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 50,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	kapitanboj = {
		male = {
			['tshirt_1'] = 185,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 1,
			['decals_1'] = 6,   ['decals_2'] = 0,
			['arms'] = 48,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 1,     ['bproof_2'] = 0,
			['mask_1'] = 35,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 83,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
	   },
	   female = {
		   ['tshirt_1'] = 152,  ['tshirt_2'] = 0,
		   ['torso_1'] = 328,   ['torso_2'] = 1,
		   ['decals_1'] = 0,   ['decals_2'] = 0,
		   ['arms'] = 44,
		   ['pants_1'] = 30,   ['pants_2'] = 0,
		   ['shoes_1'] = 25,   ['shoes_2'] = 0,
		   ['helmet_1'] = 134,  ['helmet_2'] = 1,
		   ['bproof_1'] = 0,     ['bproof_2'] = 0,
		   ['mask_1'] = 121,      ['mask_2'] = 0,
		   ['chain_1'] = 0,    ['chain_2'] = 0,
		   ['ears_1'] = -1,     ['ears_2'] = 0
	   }
   },
	commandershort = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 13,   ['torso_2'] = 2,
			['decals_1'] = 5,   ['decals_2'] = 0,
			['arms'] = 92,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 12,    ['chain_2'] = 0,
			['bproof_1'] = 83,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	commanderlong = {
		male = {
			['tshirt_1'] = 159,  ['tshirt_2'] = 0,
			['torso_1'] = 366,   ['torso_2'] = 0,
			['decals_1'] = 5,   ['decals_2'] = 0,
			['arms'] = 90,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 0,
			['chain_1'] = 12,    ['chain_2'] = 0,
			['bproof_1'] = 83,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 328,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 134,  ['helmet_2'] = 1,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 121,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	galowy = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 37,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = 13,      ['helmet_2'] = 2,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0,
			['glass_1'] = 5,     ['glass_2'] = 3
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	motocykl = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 294,   ['torso_2'] = 1,
			['decals_1'] = 0,  ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 131,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,   ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['mask_1'] = 0,     ['mask_2'] = 0,
			['bags_1'] = 0, 	['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	aiad = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 294,   ['torso_2'] = 1,
			['decals_1'] = 0,  ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 131,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 0,   ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['mask_1'] = 0,     ['mask_2'] = 0,
			['bags_1'] = 0, 	['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	swatalways = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 394,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 33,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 119,      ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 28,     ['bproof_2'] = 0,
			['mask_1'] = 104,      ['mask_2'] = 25,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['bproof_1'] = 40,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	swatlight = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 98,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 35,
			['pants_1'] = 88,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 119,      ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 79,     ['bproof_2'] = 0,
			['mask_1'] = 104,      ['mask_2'] = 25,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['bproof_1'] = 40,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	swatheavy = {
		male = {
			['tshirt_1'] = 97,  ['tshirt_2'] = 3,
			['torso_1'] = 324,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 35,
			['pants_1'] = 84,   ['pants_2'] = 0,
			['shoes_1'] = 60,   ['shoes_2'] = 0,
			['helmet_1'] = 119,      ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['bproof_1'] = 44,     ['bproof_2'] = 2,
			['mask_1'] = 104,      ['mask_2'] = 25,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['bags_1'] = 0,     ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 152,  ['tshirt_2'] = 0,
			['torso_1'] = 324,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['bproof_1'] = 40,     ['bproof_2'] = 0,
			['mask_1'] = 0,      ['mask_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	-- KAMIZELKI
	kadet2 = {
		male = {
			['bproof_1'] = 10, ['bproof_2'] = 4
		},
		female = {
			['bproof_1'] = 10, ['bproof_2'] = 4
		}
	},
	oficer2 = {
		male = {
			['bproof_1'] = 17, ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 17, ['bproof_2'] = 0
		}
	},
	sierzant2 = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 0
		}
	},
	porucznik2 = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 1
		}
	},
	kapitan2 = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		}
	},	
	aiad2 = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		}
	},	
	swat2 = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		}
	},	
	swm2 = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 4
		}
	}
}