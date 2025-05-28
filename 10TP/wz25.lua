#include "../../../../../../vehicle_init.lua"

Vehicle = {
	Ammunition_Fire_Threshold = 30,
	Ammunition_Detonation_Threshold = 20,

	Language = "russian",
}

Weapons = {

	["wz25"]={

		Name = "Ckm Wz.25 Hotchkiss",
		Caliber = 7.92, -- mm
		Fire_Rate = 600, -- rounds/min
		Reload_Time = 10, -- s
		Weapon_Sound = "lmg_0",
		Reload_Sound = "mgreload",
		Trigger_Delay = 0, -- s
		Muzzle_Type = "sphere",
		Recoiling_Barrel = true,
		Recoil_Distance = .025,
		sight = "d10t",

		Shell_Presets = {
			["792x57"]={
				Custom = false, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 30,
				Reserve_Ammo = 3560,
			},
		},

	},

}

Optics = {
	["bt5"]={

		Modes = "Day",

		Day_Presets = {
			[1]={
				Image = "kv1_main", -- name of reticle image
				Image_Scale = .4,
				FOV = 25, -- zoom (from 0 to 60)
				Tint_Color_R = 1,
				Tint_Color_G = 1,
				Tint_Color_B = .5,

				Type = "analogue", -- digital or analogue\

				Rangefinder = true,
				Rangefinder_Type = "analogue",
				Rangefinder_Image = "kv1_main",
				Rangefinder_Coef = .1,
			},
		},
	},
}

function init()
	local v = FindVehicle("TABS")

	VehicleInit(v,Vehicle,Weapons,Optics)

	SetTag(v, "TABSINIT")
end