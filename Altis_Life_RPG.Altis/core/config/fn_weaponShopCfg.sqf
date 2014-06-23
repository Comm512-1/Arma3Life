#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["arifle_MXC_Black_F",nil,30000],
						["arifle_TRG20_F",nil,35000],
						["arifle_Mk20_F",nil,35000],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,1000],
						["MineDetector",nil,1000],
						["SmokeShell",nil,2000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_MRCO",nil,4000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_556x45_Stanag",nil,200],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,200],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,200],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,200]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MXM_Black_F",nil, 40000],
						["hgun_ACPC2_F",nil,17500],
						["srifle_EBR_F",nil,50000],
						["arifle_MX_SW_Black_F",nil,30000],
						["srifle_GM6_SOS_F",nil,25000],
						["srifle_LRR_SOS_F", nil,30000],
						["LMG_Zafir_pointer_F", nil,30000],
						["launch_B_Titan_short_F",nil,15000],
						["launch_I_Titan_F",nil,25000],
						["Titan_AP",nil,1000],
						["Titan_AT",nil,1500],
						["Titan_AA",nil,2000],
					    ["11Rnd_45ACP_Mag",nil,500],
						["5Rnd_127x108_Mag",nil,500],
						["20Rnd_762x51_Mag",nil,2000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["9Rnd_45ACP_Mag",nil,200],						
						["11Rnd_45ACP_Mag",nil,500],
						["6Rnd_45ACP_Cylinder",nil,500],
						["100Rnd_65x39_caseless_mag",nil,500],
						["150Rnd_762x51_Box_Tracer",nil,500],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,1500],
						["7Rnd_408_Mag", nil, 500],
						["DemoCharge_Remote_Mag",nil,10000],
						["ATMine_Range_Mag",nil,2000],
						["Rangefinder",nil,5000],
						["acc_pointer_IR",nil, 3000],
						["optic_NVS",nil, 500],
						["optic_tws",nil, 3000],
						["optic_tws_mg",nil, 3000],	
						["optic_SOS",nil, 3000],
						["optic_Hamr",nil,2500],
						["optic_MRD",nil, 5000],
						["optic_Nightstalker",nil, 5000],
						["optic_Yorris",nil, 5000],																		
						["Laserdesignator",nil,10000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["arifle_Katiba_C_F",nil,50000],
						["arifle_MXM_SOS_pointer_F",nil,50000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
                        ["launch_O_Titan_short_F",nil,250000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_NVS",nil,10000],
                        ["Titan_AP",nil,1500],
						["Titan_AT",nil,2500],
						["ATMine_Range_Mag",nil,2500],
						["DemoCharge_Remote_Mag",nil,10000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["arifle_MX_SW_Hamr_pointer_F",nil,25000],
						["srifle_GM6_SOS_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_LRPS",nil,10000],
						["optic_tws_mg",nil,10000],
						["optic_tws",nil,10000],
						["optic_Nightstalker",nil,10000],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["DemoCharge_Remote_Mag",nil,1000],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["5Rnd_127x108_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["100Rnd_65x39_caseless_mag_Tracer",nil,500],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "skystore":
	{
		["Altis General Store",
			[
				["B_FieldPack_ocamo",nil,3000],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				//["Steerable_Parachute_F",nil,1000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};	
};
