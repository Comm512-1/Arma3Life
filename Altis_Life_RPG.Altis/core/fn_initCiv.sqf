/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_House_Big_01_V1_dam_F","Land_Offices_01_V1_F","Land_BC_Court_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_Garage_V2_dam_F","Land_i_Garage_V1_dam_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_House_Big_01_V1_dam_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_Garage_V2_dam_F","Land_i_Garage_V1_dam_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_House_Big_01_V1_dam_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_Garage_V2_dam_F","Land_i_Garage_V1_dam_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_House_Big_01_V1_dam_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_Garage_V2_dam_F","Land_i_Garage_V1_dam_F"],250];

[] call life_fnc_initHouses;

waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;

[] call life_fnc_zoneCreator;