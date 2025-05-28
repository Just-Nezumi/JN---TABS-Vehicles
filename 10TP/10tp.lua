#include "../../../../../../vehicle_init.lua"

Vehicle = {
	Ammunition_Fire_Threshold = 30,
	Ammunition_Detonation_Threshold = 20,

	Language = "russian",
}

Weapons = {

	["wz37cannon"]={

		Name = "Wz.37 Cannon",
		Caliber = 37, -- mm
		Fire_Rate = 10, -- rounds/min
		Reload_Time = 6, -- s
		Weapon_Sound = "autocannon_0",
		Reload_Sound = "reloads/reload_37mm_cannon_0",
		Trigger_Delay = .1, -- s
		Muzzle_Type = "sphere",
		Recoiling_Barrel = true,
		Recoil_Distance = .2,
		sight = "d10t",

		Shell_Presets = {
			["APHE"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 1,
				Reserve_Ammo = 20,
				
				Type = "aphe",
				Name = "m/34 slpgr",

				Velocity = 775,
				Propulsion = "ballistic",
				Mass = 0.7,
				Momentum = 60,
				Projectile_Caliber = 37,
				Shell_Caliber = 37,

				Tracer = false,
				Tracer_Color_R = 1,
				Tracer_Color_G = .4,
				Tracer_Color_B = .3,
				Recoil = 8000,

				Spall_Amount = 15,
				Spall_Angle = 0.5,
				Shrapnel_Amount = 10,
				Explosion_Payload = 0.3,
				
				Fuze_Delay = 0.5,

			},
			["AP-T"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 1,
				Reserve_Ammo = 50,

				Type = "ap",
				Name = "m/34 slpprj",

				Velocity = 785,
				Propulsion = "ballistic",
				Mass = 0.7,
				Momentum = 70,
				Projectile_Caliber = 37,
				Shell_Caliber = 37,

				Tracer = true,
				Tracer_Color_R = 1,
				Tracer_Color_G = .4,
				Tracer_Color_B = .3,
				Recoil = 8000,

				Spall_Amount = 10,
				Spall_Angle = 0.1,
				Shrapnel_Amount = 5,
				Explosion_Payload = 0,

			},
			["HE-Frag"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 1,
				Reserve_Ammo = 10,

				Type = "he",
				Name = "m/34 sgr",

				Velocity = 805,
				Propulsion = "ballistic",
				Mass = 0.8,
				Momentum = 5,
				Projectile_Caliber = 37,
				Shell_Caliber = 37,

				Tracer = true,
				Tracer_Color_R = 1,
				Tracer_Color_G = .4,
				Tracer_Color_B = .3,
				Recoil = 8000,

				Spall_Amount = 0,
				Spall_Angle = 1,
				Shrapnel_Amount = 450,
				Explosion_Payload = 1.4,

			},
		},

	},


	["wz30"]={

		Name = "Ckm Wz.30",
		Caliber = 7.92, -- mm
		Accuracy = 0.002, -- from 0 to 1
		Fire_Rate = 450, -- rounds/min
		Reload_Time = 15, -- s
		Weapon_Sound = "lmg_0",
		Interior_Sound = "mg/lmg_generic_interior_0",
		Reload_Sound = "mgreload",
		sight = "d10t",

		Shell_Presets = {
			["792x57"]={
				Custom = false, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 330,
				Reserve_Ammo = 3900,
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