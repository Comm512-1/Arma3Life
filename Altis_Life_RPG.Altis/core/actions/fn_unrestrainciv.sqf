/*
	File: fn_unrestrainciv.sqf
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit || !(_unit getVariable ["restrained",false])) exitWith {};
[[_unit],"life_fnc_unrestraincivAction",_unit,false] spawn BIS_fnc_MP;