private["_gate","_action","_plist"];


if(!isServer) exitWith{};

_gate = _this select 0;
_action = _this select 1;
_plist = [_this, 2, []] call BIS_fnc_param;

switch (_action) do
{
	case "enter": {
		if(count _plist > 0) then { _veh setFuel 1; _veh setDamage 0; _veh setVehicleAmmo 1; };
	};
};