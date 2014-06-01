/* 		
			file: fn_robShops.sqf
			Author: MrKraken

			Description:
			Executes the rob shob action!
*/
private["_robber","_shop","_funds"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = 50000;



if (vehicle player == _robber && {alive _robber} && {currentWeapon _robber != ""} && {_funds > 0}) then
{
	if(vehicle player != _robber) exitWith { hint "You need to exit your vehicle!"; };
	
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	_delayInt = _funds * 0.001;
	life_is_processing = true;

	while{true} do {
		sleep _delayInt;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {
			life_is_processing = false;
			5 cutText ["","PLAIN"];
			life_cash = life_cash + _funds;
			hint format["You have stolen $%1",_funds];

		};
		if(player distance _shop > 10) exitWith {};
	};
	
};

	