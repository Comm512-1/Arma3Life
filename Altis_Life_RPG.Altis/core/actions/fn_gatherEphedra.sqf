/*
	File: fn_gatherEphedras.sqf
	Author: Zeus
	
	Description:
	Improved Manual Gathering for Ephedra
*/
private["_sum"];
_sum = ["ephedra",ceil(random 4),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering ephedra ...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 4;
	if(([true,"ephedra",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["You have gathered %1 ephedra",_sum],"PLAIN"];
	};
}
	else
{
	hint "Your inventory is full";
};

life_action_inUse = false;
