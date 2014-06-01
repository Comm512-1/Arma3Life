/*
	File: fn_restraincivAction.sqf
	Author: Skalicon
	
	Description:
	Retrains the client.
*/

private["_enforcer","_target"];
_enforcer = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_target = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;

//Make sure we aren't in surrender mode
player setVariable["playerSurrender",nil,true];
_obj = player getVariable["attachedObject",objNull];
detach player;
deleteVehicle _obj;
//player setVariable["playerSurrender",nil,true];
player setVariable["attachedObject",nil,true];

if((isNull _enforcer)||(isNull _target)) exitWith {};
if(side _enforcer == civilian) then
{
	_target setVariable["isCivRestrained",true,true];
};
_target setVariable["restrained",true,true];
life_disable_actions = true;
life_abort_enabled = false;

_target switchMove "AmovPercMstpSnonWnonDnon";
_target playMoveNow "AmovPercMstpSnonWnonDnon";

//[[41, _enforcer, format["Restrained %1", name _target]],"ASY_fnc_logIt",false,false] spawn BIS_fnc_MP;
disableUserInput false;

while {_target getVariable ["restrained",false]} do
{
	_target playMove "AmovPercMstpSnonWnonDnon_Ease";
	waitUntil {animationState _target != "AmovPercMstpSnonWnonDnon_Ease" || !(_target getVariable ["restrained",false])};
			
	if(!alive _target) then
	{
		_target setVariable ["restrained",nil,true];
		_target setVariable["isCivRestrained",nil,true];
		life_disable_actions = false;
		life_abort_enabled = true;
	};
};

//Monitor excessive restrainment
[_target] spawn
{
	private["_time","_target"];
	_target = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
			
		if(_target getVariable ["restrained",false] && !(_target getVariable ["Escorting",false]) && !(_target getVariable ["transporting",false])) exitWith
		{
			_target setVariable["restrained",nil,true];
			_target setVariable["isCivRestrained",nil,true];
			life_disable_actions = false;
			life_abort_enabled = true;
			[[_target],"life_fnc_unrestrainAction",true,true] spawn life_fnc_MP;
		};
	};
};

