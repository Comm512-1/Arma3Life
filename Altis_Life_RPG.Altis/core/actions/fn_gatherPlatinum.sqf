	Improved Manual Gathering for Platinum
*/
private["_sum"];
if (life_inv_pickaxe < 1) exitWith { hint "u need a pickaxe ."};                <------------------ Here it asks for the pickaxe anything else is like gathering apples :p
_sum = ["Platinum",ceil(random 3),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering platinum ...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 1;
	if(([true,"platinum",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["You have gathered %1 platinum nugget(s)",_sum],"PLAIN"];
	};
}
	else
{
	hint "Your inventory is full";
};

life_action_inUse = false;
