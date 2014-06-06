/*
	File: fn_gatherSugar.sqf
	Author: Zeus
	
	Description:
	Improved Manual Gathering for Sugar
*/
private["_sum"];
_sum = ["sugar",ceil(random 3),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering sugar ...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 1;
	if(([true,"sugar",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["You have gathered %1 sugar",_sum],"PLAIN"];
	};
}
	else
{
	hint "Your inventory is full";
};

life_action_inUse = false;