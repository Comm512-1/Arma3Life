private["_gate","_action","_plist"];

if(!isServer) exitWith{};

_gate = _this select 0;
_action = _this select 1;
_plist = [_this, 2, []] call BIS_fnc_param;

switch (_action) do
{
	case "enter": {
		if(count _plist > 0) then { _gate animate ["Door_1_rot",1]; };
	};
	case "exit": {
		if( {_x in _plist} count (playableUnits + switchableUnits) < 1) then { _gate animate ["Door_1_rot", 0]; };
	};
};