/*
	File: fn_gatherCorn.sqf
	Author: Zeus
	
	Description:
	Improved Manual Gathering for Corn
*/
private["_sum"];
_sum = ["corn",ceil(random 3),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering corn ...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 1;
	if(([true,"corn",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["You have gathered %1 corn",_sum],"PLAIN"];
	};
}
	else
{
	hint "Your inventory is full";
};

life_action_inUse = false;