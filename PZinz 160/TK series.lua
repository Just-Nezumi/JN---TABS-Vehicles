#include "../../../../../../vehicle_init.lua"

Vehicle = {
	Ammunition_Fire_Threshold = 30,
	Ammunition_Detonation_Threshold = 20,

	Language = "russian",
}

Weapons = {

	["20mm_wz38"]={

		Name = "Nkm wz.38 FK",
		Caliber = 20, -- mm
		Fire_Rate = 320, -- rounds/min
		Reload_Time = 5.3, -- s
		Weapon_Sound = "autocannon_0",
		Reload_Sound = "reloads/reload_37mm_cannon_0",
		Muzzle_Type = "autocannon",
		Recoiling_Barrel = true,
		Recoil_Distance = .1,
		Accuracy = 0.0004,

		Shell_Presets = {
			["API-T"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 10,
				Reserve_Ammo = 60,
				
				Type = "ap",
				Name = "PZS",

				Velocity = 856, 
				Propulsion_Type = "ballistic",
				Mass = 0.12, 
				Momentum = 38, 
				Projectile_Caliber = 20, 
				Shell_Caliber = 20, 

				Tracer = true,
				Tracer_Color_R = .3,
				Tracer_Color_G = 1,
				Tracer_Color_B = .4,
				Recoil = 1000,

				Spall_Amount = 10,
				Spall_Angle = 0.8, 
				Shrapnel_Amount = 0, 
				Explosive_Payload = 0, 

			},
			["APHE-T"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script
				
				Mag_Size = 10,
				Reserve_Ammo = 60,

				Type = "ap",
				Name = "PWS",

				Velocity = 832,
				Propulsion_Type = "ballistic",
				Mass = 0.12,
				Momentum = 34,
				Projectile_Caliber = 20,
				Shell_Caliber = 20, 

				Tracer = true,			
				Tracer_Color_R = .3,
				Tracer_Color_G = 1,
				Tracer_Color_B = .4,
				Recoil = 1000,

				Spall_Amount = 4,
				Spall_Angle = 0.2, 
				Shrapnel_Amount = 6, 
				Explosive_Payload = 0.003, 

			},
		},

	},

	["sa18cannon"]={

		Name = "Puteaux Wz.18 L/21",
		Caliber = 37, -- mm
		Fire_Rate = 10, -- rounds/min
		Reload_Time = 6, -- s
		Weapon_Sound = "autocannon_0",
		Reload_Sound = "reloads/reload_37mm_cannon_0",
		Trigger_Delay = .1, -- s
		Muzzle_Type = "sphere",
		Recoiling_Barrel = true,
		Recoil_Distance = .1,
		sight = "d10t",

		Shell_Presets = {
			["APHE"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 1,
				Reserve_Ammo = 52,
				
				Type = "aphe",
				Name = "wz. 1892",

				Velocity = 388,
				Propulsion = "ballistic",
				Mass = 0.7,
				Momentum = 25,
				Projectile_Caliber = 37,
				Shell_Caliber = 37,

				Tracer = false,
				Tracer_Color_R = 1,
				Tracer_Color_G = .4,
				Tracer_Color_B = .3,
				Recoil = 1500,

				Spall_Amount = 19,
				Spall_Angle = 0.5,
				Shrapnel_Amount = 10,
				Explosion_Payload = 0.4,
				
				Fuze_Delay = 0.5,

			},
			["HE"]={
				Custom = true, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 1,
				Reserve_Ammo = 28,

				Type = "he",
				Name = "wz. 1916",

				Velocity = 365,
				Propulsion = "ballistic",
				Mass = 0.8,
				Momentum = 3,
				Projectile_Caliber = 37,
				Shell_Caliber = 37,

				Tracer = true,
				Tracer_Color_R = 1,
				Tracer_Color_G = .4,
				Tracer_Color_B = .3,
				Recoil = 7000,

				Spall_Amount = 0,
				Spall_Angle = 1,
				Shrapnel_Amount = 350,
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
		Trigger_Delay = 0, -- s
		Muzzle_Type = "sphere",
		Recoiling_Barrel = true,
		Recoil_Distance = .025,
		sight = "d10t",

		Shell_Presets = {
			["792x57"]={
				Custom = false, -- If this is true, info about the ammo type will be given to the main script

				Mag_Size = 330,
				Reserve_Ammo = 3900,
			},
		},

	},

	["wz25"]={

		Name = "Ckm Wz.25 Hotchkiss",
		Caliber = 7.92, -- mm
		Accuracy = 0.002, -- from 0 to 1
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

				Mag_Size = 128,
				Reserve_Ammo = 2048,
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