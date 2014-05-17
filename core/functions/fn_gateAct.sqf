private["_gate","_action","_plist"];

diag_log "GATE DING japie";

if(!isServer) exitWith{};

_gate = _this select 0;
_action = _this select 1;
_plist = [_this, 2, []] call BIS_fnc_param;

diag_log "GATE DING";

switch (_action) do
{
	case "enter": {
		diag_log "GATE DING enter";

		if(count _plist > 0) then { _gate animate ["Door_1_rot",1]; };
	};
	case "exit": {
		diag_log "GATE DING exit";

		if( {_x in _plist} count (playableUnits + switchableUnits) < 1) then { _gate animate ["Door_1_rot", 0]; };
	};
};