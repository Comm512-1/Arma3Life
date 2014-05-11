/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos", "_i", "_cargo", "_containers", "_weaponsAdded", "_box", "_marker", "_pos", "_positions", "_house", "_dist"];

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];

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
