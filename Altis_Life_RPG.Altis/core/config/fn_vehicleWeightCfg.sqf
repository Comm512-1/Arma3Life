/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_G_Offroad_01_armed_F": {50};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {750};
	case "I_Truck_02_transport_F": {500};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {90};
	case "C_Van_01_transport_F": {250};
	case "I_G_Van_01_transport_F": {250};
	case "C_Van_01_box_F": {450};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {1000};
	case "B_Truck_01_transport_F": {850};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {80};
	case "O_Heli_Light_02_unarmed_F": {160};
	case "I_Heli_Transport_02_F": {420};
	case "C_Rubberboat": {45};
	case "B_G_Boat_Transport_01_F": {30};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {800};
	case "O_Truck_03_covered_F": {900};
	case "B_SDV_01_F": {60};
	case "I_Heli_Transport_02_F": {420};
	case "I_Heli_light_03_unarmed_F": {160};
	case "O_Heli_Light_02_F": {240};
	case "O_Truck_03_device_F": {200};
	case "Land_Box_AmmoOld_F": {700};
	case "B_supplyCrate_F": {1000};
	case "O_Truck_03_transport_F", {10000};
	default {-1};
};