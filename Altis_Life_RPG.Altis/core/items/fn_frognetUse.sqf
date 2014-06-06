/*
	File: fn_frognetUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Modified by MarioF
	Description:
	Main functionality for Frog Net in catching.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "frogswamp_1") < 300): {_mine = "frog"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "You are not near a Frogswamp!"};
if(vehicle player != player) exitWith {hint "You can't catch from inside a car!";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Your inventory is full."};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["You have catched %2 %1",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;