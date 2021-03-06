#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Kart_01_F",1000]
		];
	}; 
	
	case "civ_car_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Kart_01_F",1000]
		];
	};
	
	case "civ_car_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Kart_01_F",1000]
		];
	}; 
	
	case "civ_car_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Kart_01_F",1000]
		];
	}; 
	
	
	case "donator_1":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Kart_01_F",1000],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
			_return set[count _return,["I_Heli_Transport_02_F",600000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["B_Plane_CAS_01_F",3000000]];
			_return set[count _return,["B_Heli_Attack_01_F",1500000]];
		};
	};
	
	case "donator_2":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Kart_01_F",1000],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
			_return set[count _return,["I_Heli_Transport_02_F",600000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["B_Plane_CAS_01_F",3000000]];
			_return set[count _return,["B_Heli_Attack_01_F",1500000]];
		};
	};
			
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_covered_F",200000]
		];	
	};
	
	case "civ_truck_2":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_covered_F",200000]
		];	
	};
			
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Kart_01_F",1000],
			["B_G_Offroad_01_F",13000],
			["O_MRAP_02_F",150000],
			["O_Truck_03_transport_F", 150000],
			["O_Truck_03_covered_F", 150000],
			["O_Truck_03_repair_F", 150000],
			["O_Truck_03_ammo_F", 150000],
			["O_Truck_03_fuel_F", 150000],
			["O_Truck_03_medical_F", 150000],
			["O_Truck_03_device_F", 150000]
		];
	};
	
	case "reb_car2":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Kart_01_F",1000],
			["C_Offroad_01_F",9000],
			["O_MRAP_02_F",150000],
			["O_Truck_03_transport_F", 150000],
			["O_Truck_03_covered_F", 150000],
			["O_Truck_03_repair_F", 150000],
			["O_Truck_03_ammo_F", 150000],
			["O_Truck_03_fuel_F", 150000],
			["O_Truck_03_medical_F", 150000],
			["O_Truck_03_device_F", 150000]

		];
	};
	
	case "reb_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",275000],
			["O_Heli_Attack_02_F",1500000],
			["B_Plane_CAS_01_F",2500000],
			["O_Heli_Light_02_F",350000],
			["I_Heli_Transport_02_F",750000]
		];
	};
	
	case "reb_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",275000],
			["O_Heli_Attack_02_F",1500000],
			["B_Plane_CAS_01_F",2500000],
			["O_Heli_Light_02_F",350000],
			["I_Heli_Transport_02_F",750000]
		];
	};
	
	case "reb_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",275000],
			["O_Heli_Attack_02_F",1500000],
			["B_Plane_CAS_01_F",2500000],
			["O_Heli_Light_02_F",350000],
			["I_Heli_Transport_02_F",750000]
		];
	};
		
	case "reb_air_3":
	{
		_return =
		[
			["B_Heli_Light_01_F",275000],
			["O_Heli_Attack_02_F",1500000],
			["B_Plane_CAS_01_F",2500000],
			["O_Heli_Light_02_F",350000],
			["I_Heli_Transport_02_F",750000]
		];
	};
		
	case "reb_v_1":
	{
		_return = 
		[
			["O_G_Quadbike_01_F",2500],
			["C_Kart_01_F",1000],
			["B_G_Offroad_01_F",15000],
			["I_G_Offroad_01_armed_F", 25000],
			["O_MRAP_02_F",150000],
            ["O_MBT_02_cannon_F",1200000],
			["B_Heli_Light_01_F",325000],
			["I_Heli_Transport_02_F", 250000],
            ["O_Heli_Attack_02_F",1500000],
            ["I_Plane_Fighter_03_AA_F",2500000],
			["O_MRAP_02_gmg_F", 1200000],
			["O_Truck_03_transport_F", 150000],
			["O_Truck_03_covered_F", 150000],
			["O_Truck_03_repair_F", 150000],
			["O_Truck_03_ammo_F", 150000],
			["O_Truck_03_fuel_F", 150000],
			["O_Truck_03_medical_F", 150000],
			["O_Truck_03_device_F", 150000]
		];
	};
	
	case "reb_v_2":
	{
		_return = 
		[
			["O_G_Quadbike_01_F",2500],
			["C_Kart_01_F",1000],
			["B_G_Offroad_01_F",15000],
			["I_G_Offroad_01_armed_F", 25000],
			["O_MRAP_02_F",150000],
            ["O_MBT_02_cannon_F",1200000],
			["B_Heli_Light_01_F",325000],
			["I_Heli_Transport_02_F", 250000],
            ["O_Heli_Attack_02_F",1500000],
            ["I_Plane_Fighter_03_AA_F",2500000],
			["O_MRAP_02_gmg_F", 1200000],
			["O_Truck_03_transport_F", 150000],
			["O_Truck_03_covered_F", 150000],
			["O_Truck_03_repair_F", 150000],
			["O_Truck_03_ammo_F", 150000],
			["O_Truck_03_fuel_F", 150000],
			["O_Truck_03_medical_F", 150000],
			["O_Truck_03_device_F", 150000]
		];
	}; 
	
	case "reb_v_3":
	{
		_return = 
		[
			["O_G_Quadbike_01_F",2500],
			["C_Kart_01_F",1000],
			["B_G_Offroad_01_F",15000],
			["I_G_Offroad_01_armed_F", 25000],
			["O_MRAP_02_F",150000],
            ["O_MBT_02_cannon_F",1200000],
			["B_Heli_Light_01_F",325000],
			["I_Heli_Transport_02_F", 250000],
            ["O_Heli_Attack_02_F",1500000],
            ["I_Plane_Fighter_03_AA_F",2500000],
			["O_MRAP_02_gmg_F", 1200000],
			["O_Truck_03_transport_F", 150000],
			["O_Truck_03_covered_F", 150000],
			["O_Truck_03_repair_F", 150000],
			["O_Truck_03_ammo_F", 150000],
			["O_Truck_03_fuel_F", 150000],
			["O_Truck_03_medical_F", 150000],
			["O_Truck_03_device_F", 150000]
		];
	}; 
	
	case "cop_car_1":
	{
		_return set[count _return, ["B_Quadbike_01_F",2500]];
		_return set[count _return, ["C_Offroad_01_F",5000]];
		if(__GETC__(life_coplevel) > 2) then
		{			
			_return set[count _return, ["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return, ["B_MRAP_01_gmg_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",50000]];
			_return set[count _return, ["B_APC_Tracked_01_AA_F",500000]];
			_return set[count _return, ["I_MRAP_03_gmg_F",500000]];
			_return set[count _return, ["B_MBT_01_arty_F",500000]];			
		};
	};
	
	case "cop_car_2":
	{
		_return set[count _return, ["B_Quadbike_01_F",2500]];
		_return set[count _return, ["C_Offroad_01_F",5000]];
		if(__GETC__(life_coplevel) > 2) then
		{			
			_return set[count _return, ["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return, ["B_MRAP_01_gmg_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",50000]];
			_return set[count _return, ["B_APC_Tracked_01_AA_F",500000]];
			_return set[count _return, ["I_MRAP_03_gmg_F",500000]];
			_return set[count _return, ["B_MBT_01_arty_F",500000]];		
		};
	};
	
	case "cop_car_3":
	{
		_return set[count _return, ["B_Quadbike_01_F",2500]];
		_return set[count _return, ["C_Offroad_01_F",5000]];
		if(__GETC__(life_coplevel) > 2) then
		{			
			_return set[count _return, ["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return, ["B_MRAP_01_gmg_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",50000]];
			_return set[count _return, ["B_APC_Tracked_01_AA_F",500000]];
			_return set[count _return, ["I_MRAP_03_gmg_F",500000]];
			_return set[count _return, ["B_MBT_01_arty_F",500000]];		
		};
	};
	
	case "cop_car_5":
	{
		_return set[count _return, ["B_Quadbike_01_F",2500]];
		_return set[count _return, ["C_Offroad_01_F",5000]];
		if(__GETC__(life_coplevel) > 2) then
		{			
			_return set[count _return, ["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return, ["B_MRAP_01_gmg_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",50000]];
			_return set[count _return, ["B_APC_Tracked_01_AA_F",500000]];
			_return set[count _return, ["I_MRAP_03_gmg_F",500000]];
			_return set[count _return, ["B_MBT_01_arty_F",500000]];	
		};
	};
	
	case "cop_car_6":
	{
		_return set[count _return, ["B_Quadbike_01_F",2500]];
		_return set[count _return, ["C_Offroad_01_F",5000]];
		if(__GETC__(life_coplevel) > 2) then
		{			
			_return set[count _return, ["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return, ["B_MRAP_01_gmg_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return, ["C_Hatchback_01_sport_F",50000]];
			_return set[count _return, ["B_APC_Tracked_01_AA_F",500000]];
			_return set[count _return, ["I_MRAP_03_gmg_F",500000]];
			_return set[count _return, ["B_MBT_01_arty_F",500000]];		
		};
	};
	
	case "fed_car":
	{
		_return set[count _return, ["B_Quadbike_01_F",0]];
		_return set[count _return, ["C_Offroad_01_F",0]];
		_return set[count _return, ["B_MRAP_01_F",0]];
		_return set[count _return, ["I_MRAP_03_F",0]];
		_return set[count _return, ["I_Truck_02_covered_F",0]];
		_return set[count _return, ["I_Truck_02_transport_F",0]];
		_return set[count _return, ["B_Truck_01_covered_F",0]];
		_return set[count _return, ["B_Truck_01_transport_F",0]];
	};
	
	case "fed_air":
	{
		_return set[count _return, ["B_Heli_Light_01_F",0]];
		_return set[count _return, ["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return, ["B_Heli_Transport_01_F",0]];
		_return set[count _return, ["I_Heli_Transport_02_F",0]];
	};
	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_light_03_unarmed_F",790000]
		];
	};
	
	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_light_03_unarmed_F",790000]
		];
	};
	
	case "civ_air_3":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_light_03_unarmed_F",790000]
		];
	};
	
	case "cop_air_1":
	{
		_return set[count _return, ["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return, ["B_Heli_Light_01_armed_F",150000]];
			_return set[count _return, ["B_Heli_Transport_01_F",200000]];
		    _return set[count _return, ["B_Heli_Attack_01_F",250000]];
			_return set[count _return, ["I_Heli_light_03_F",250000]];
		};
	};
	
	case "cop_air_2":
	{
		_return set[count _return, ["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return, ["B_Heli_Light_01_armed_F",150000]];
			_return set[count _return, ["B_Heli_Transport_01_F",200000]];
		    _return set[count _return, ["B_Heli_Attack_01_F",250000]];
			_return set[count _return, ["B_Plane_CAS_01_F",1500000]];
			_return set[count _return, ["B_MRAP_01_hmg_F",750000]];
			_return set[count _return, ["I_Heli_light_03_F",250000]];
		};
	}; 
	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	
	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000],
			["I_Heli_light_03_F", 670000],
			["O_Heli_Attack_02_black_F", 1200000]
		];
	};
	
	case "donator_car":
	{
		_return =
		[
			["C_Kart_01_F",250],
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
};

_return;
