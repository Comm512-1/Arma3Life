/*
	File:
*/
private["_packet","_array","_flag"];
_packet = [getPlayerUID player,name player,playerSide,life_cash,life_atmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;

_packet set[count _packet,_array];
switch (playerSide) do {
	case west: {_packet set[count _packet,cop_gear];};
	case civilian: {
		[] call life_fnc_civFetchGear;
		_packet set[count _packet,civ_gear];
		_packet set[count _packet,life_is_arrested];
	};
};


//saves player pos if they're not on debug island, if they die or are on debug island when it's called last pos is wiped
if(alive player && (([position player select 0,position player select 1,0] distance getmarkerpos "debug_island_marker") > 600)) then {
	_posTemp = getPos player;
	_actPos = [_posTemp select 0, _posTemp select 1, (getPosATL player select 2) - (_posTemp select 2)];
	life_ses_last_pos = _actPos;
	_packet set[count _packet, _actPos];
	
} else {
	life_ses_last_pos = [];
	_packet set[count _packet,life_ses_last_pos];
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;