if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2015 Dodge Charger CCPD"
VEHICLE.Vehicle		= "15charger_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Creamer County"
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 4, Material = "rin/creamer/charger15/patrol" }
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Whelen Legacy",
				Components = {
					{
						Name = "@legacy",
						Component = "photon_whe_legacy_44",
						Position = Vector( 0, -18, 75 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.03,
						Bones = {
							["foot_left"] = { Vector( 1, 0, 0), Angle( 0, 0, 0 ), 1 },
							["foot_right"] = { Vector( -1, 0, 0), Angle( 0, 0, 0 ), 1 },
							["clamp_left"] = { Vector( 2.4, 0, -0.5), Angle( 0, 0, 0 ), 1 },
							["clamp_right"] = { Vector( -2.4, 0, -0.5), Angle( 0, 0, 0 ), 1 },
						},
					}
				},
			},

		}
	},
    {
		Category = "Spotlight",
		Options = {
			{
				Option = "Whelen PAR46",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -34.5, 28, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Templates = {
							["Bone"] = {
								Shaft = {
									States = {
										["DOWN"] = { Target = 300 },
									}
								},
							}
						}
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 34.5, 28, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Templates = {
							["Bone"] = {
								Shaft = {
									States = {
										["DOWN"] = { Target = 60 },
									}
								},
							}
						}
					}
				}
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 0 },
					{ BodyGroup = "wheels_rear", Value = 0 },
					{ BodyGroup = "badge", Value = 2 },
					{ BodyGroup = "pushbar", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 8, 20, 68.2 ),
						Angles = Angle( 9, 262, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 0, -67.5, 67 ),
						Angles = Angle( 8, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["cable"] = 1,
							},
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0.6, 19, 45.3 ),
						Angles = Angle( -7, 266, 0 ),
						Scale = 0.8
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 74.1),
						Angles = Angle( 0, 0, 3.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 10.5, 124.5, 24.58 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -10.5, 124.5, 24.58 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				}
			}
		}
	},
}