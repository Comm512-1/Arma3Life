private ["_houses", "_player", "_boxes"];
_playerUid = [_this,0] call BIS_fnc_param;
//diag_log format["_player killed: %1 (%2)", _playerUid, typeName _playerUid];
//_houses = [_playerUid, civilian] call BRUUUDIS_fnc_queryPlayerHouses;
//_houses = [[_playerUid, civilian],"BRUUUDIS_fnc_queryPlayerHouses",true,true] call BIS_fnc_MP;
//diag_log format["_houses killed: %1 (%2)", _houses, typeName _houses];
//waitUntil {typeName _houses == "ARRAY" OR typeName _houses == "STRING" OR isNil "_houses"};
/*
{
    _boxes = nearestObjects [position _x, ["Land_Box_AmmoOld_F","B_supplyCrate_F"], 5]; 
	{
		deleteVehicle _x;
	}forEach _boxes;
}forEach _houses;
*/