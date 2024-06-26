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
		Category = "Interior Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -80, 55.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 1.9, 29.1 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Name = "@xtream_duo",
						Component = "photon_fedsig_xstream_duo",
						Position = Vector( -14.5, -78, 59.2 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Phase = "A",
						BodyGroups = {
							["mount"] = 1,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Inherit = "@xtream_duo",
						Position = Vector( 14.5, -78, 59.2 ),
						Angles = Angle( 0, 270, 180 ),
						Phase = "A",
						StateMap = "[R] 1"
					}
				},
			},

		}
	},
	{
		Category = "Pushbar Flashers",
		Options = {
			{
				Option = "Koito Flashers",
				Components = {
					{
						Component = "oss_laf150",
						Position = Vector( -10, 124.5, 31.4 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Phase = "B",
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8
					},
					{
						Component = "oss_laf150",
						Position = Vector( 10, 124.5, 31.4 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Phase = "A",
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8
					},
					{
						Name = "@grille_lp3",
						Component = "photon_patlite_lp3_rin",
						Position = Vector( -17.55, 124, 29.5 ),
						Angles = Angle( 270, 90, 0 ),
						Scale = 1,
						StateMap = "[R] 1",
						Phase = "A",
						SubMaterials = {
							[5] = "sentry/props/patlite_lp3/glass_outer"
						},
						InputActions = {
							["Emergency.Warning"] = {
								["MODE1"] = { Light = "FLASH4" },
								["MODE2"] = { Light = "FLASH4" },
								["MODE3"] = { Light = "FLASH4" },
							},
						}
					},
					{
						Inherit = "@grille_lp3",
						Position = Vector( 17.55, 124, 29.5 ),
						Angles = Angle( 90, 270, 0 ),
						Phase = "B",
						StateMap = "[R] 1"
					}
				}
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
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, -2, 4),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 8.15, 30.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 10.75, 32 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 4.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
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
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 118.2, 23),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, -127, 30 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 0.89,
						BodyGroups = {
							["rear_seal"] = 0,
						},
						SubMaterials = {
							[0] = "rin/japan_plates/plate_hoshizora",
						},
					},
					{
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, 118.9, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.89,
						BodyGroups = {
							["rear_seal"] = 0,
						},
						SubMaterials = {
							[0] = "rin/japan_plates/plate_hoshizora",
						},
					},
					{
						Model = "models/schmal/sgm_char15_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						BodyGroups = {
							["cage"] = 1
						}
					}
				},
				SubMaterials = {
					{ Id = 2, Material = "photon/common/blank" }
				}
			}
		}
	},
}