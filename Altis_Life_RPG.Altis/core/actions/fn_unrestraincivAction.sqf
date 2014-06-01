/*
	File: fn_unrestraincivAction.sqf
	Author: Skalicon
	
	Description:
	Unrestrains player
*/
private["_unit"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;

_unit playMoveNow "AmovPercMstpSnonWnonDnon";
_unit setVariable["restrained",nil,true];
_unit setVariable["isCivRestrained",nil,true];
_unit setVariable["playerSurrender",nil,true];

//[[47, player, format["Unrestrained %1", name _unit]],"ASY_fnc_logIt",false,false] spawn BIS_fnc_MP;
life_disable_actions = false;
life_abort_enabled = true;