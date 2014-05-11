/*
	@author Mario2002
*/
private["_unit","_type","_tmp","_ret","_arr"];

_unit = _this;
hint format ["anti cheat : %1", _unit];
sleep 5;
_info = _vehicle getVariable["vehicle_info_owners",nil];
hint format ["veh info : %1", _info];
if(isNil "_info") exitWith {
	hint "detected";
	[[0,format["%1 is probably a cheater!", profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};