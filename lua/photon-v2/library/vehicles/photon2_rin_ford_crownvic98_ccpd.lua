if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1999 Ford Crown Victoria CCPD"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
VEHICLE.Category 	= "Photon 2: Creamer County"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/creamer/crownvic98/patrol" }
				}
			},
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 }
				},
				Props = {
					{
						Model = "models/gandhi/props/setina.mdl",
						Position = Vector( 0, 116, 21.6 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 4.5, 121.1, 26.6 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -4.5, 121.1, 26.6 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "FedSig Jetstream",
				Components = {
					{
						Name = "@jetsream",
						Component = "fedsig_jetstream",
						Position = Vector( 0, -19, 65.4 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = .96,
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
						Component = "koito_flasher",
						Position = Vector( 10.5, 120.5, 27.25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.85,
						SubMaterials = {
							[0] = "sentry/props/koitoflasher/plastic_r"
						},
					},
					{
						Component = "koito_flasher",
						Position = Vector( -10.5, 120.5, 27.25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.85
					},
				}
			},
		}
	},
	{
		Category = "Flashers",
		Options = {
			{
				Option = "Flashers",
				VirtualComponents = {
					{
						Component = "photon_standard_cvpi10"
					}
				}
			},
			{
				Option = "None",
			}
		}
	},
    {
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
							["Emergency.Warning"] = {
								["MODE1"] = { Light = "ON" },
								["MODE2"] = { Light = "ON" },
								["MODE3"] = { Light = "ON" },
							}
						}
					}
				},
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 0 },
				}
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 3 },
					{ BodyGroup = "hubcaps", Value = 1 },
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "rainguards", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 10, 26.85 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 12.75, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 15, 62 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1
					},
					{
						Model = "models/schmal/cj24_toughbook_cf30.mdl",
						Position = Vector( 6.3, 15, 39 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						Options = {
							Pole = 2,
							Base = -30,
							-- You can change the screen material by using this option:
							-- Screen = "schmal/toughbook_cf30/laptop_screen_darkmode",
						}
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -40, 68.3),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
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
						Position = Vector( 0, 118.9, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.89,
						BodyGroups = {
							["rear_seal"] = 0,
						},
						SubMaterials = {
							[0] = "rin/japan_plates/plate_hoshizora",
						},
					},
				}
			}
		}
	},
}