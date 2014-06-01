/*
	ALAH SNACKBAR!
*/
private["_test"];
if(vest player != "V_HarnessOGL_brn") exitWith {};
if(vehicle player != player) exitWith {hint "You cannot detonate your vest from within a vehicle."};
_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

serv_killed = [player,"1080"];
publicVariableServer "serv_killed";

[[0,format["%1 has set off their suicide vest.",name player]],"life_fnc_broadcast",true,false] spawn BIS_fnc_MP;

[[46, name player, getPlayerUID player, format["Detonated suicide vest"]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;