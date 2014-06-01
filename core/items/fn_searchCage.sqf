/*
	File: fn_searchCage.sqf
	Author: Mike "Revir" Berlin

	Description:
	Searches cages for the items within the _items array.
*/
private["_sum","_items","_random"];
_items = [];
for "_i" from 1 to 20 do { _items set[count _items, "frog"]; };
for "_i" from 1 to 30 do { _items set[count _items, "bottle"]; };
for "_i" from 1 to 25 do { _items set[count _items, "crayfish"]; };
for "_i" from 1 to 7 do { _items set[count _items, "anaconda"]; };
for "_i" from 1 to 10 do { _items set[count _items, "leech"]; };
for "_i" from 1 to 5 do { _items set[count _items, "duck"]; };
_items set[count _items, "crocodile"];

if (playerSide == west) exitWith {hint "Cops cannot search swamps."};
if (player distance (nearestObject[player,"Land_Cages_F"]) > 7) exitWith {titleText["You need to be closer to the cage.","PLAIN"]};
titleText["Searching Cage...","PLAIN"];
if (life_action_in_use) exitWith {};
life_action_in_use = true;

_success = false;
while{life_carryWeight < life_maxWeight} do 
{
	if (speed player > 1) exitWith {};
	if (player distance (nearestObject[player,"Land_Cages_F"]) > 7) exitWith {titleText["You need to be closer to the cages.","PLAIN"]};
	if (life_carryWeight >= life_maxWeight) exitWith {_success=true;};
	_random = _items select round (random ((count _items)-1));
	_sum =[_random,1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
	if (_sum > 0) then
	{
		if (([true,_random,1] call life_fnc_handleInv)) then
		{
			sleep 4;
			titleText["You have collected some stuff from the cages.","PLAIN"];
			titleFadeOut 1;
			[[6, name player, getPlayerUID player, format["Found %1 %2.",_sum,_random]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;
		};
	};
};
life_action_in_use = false;

if (_success) then { titleText["The cage is full, check your haul!","PLAIN"]; }
else { titleText["Gathering aborted due to movement!","PLAIN"]; };


