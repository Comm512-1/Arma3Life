private["_veh, _newPos"];

_veh = cursorTarget;
if(isNull _veh) exitWith {};
if(_veh isKindOf "Air") exitWith {titleText["This is not a car.","PLAIN"];};
if({alive _x} count crew _veh > 0) exitWith {titleText["There is someone in the car.","PLAIN"];}; 
if(damage _veh > 0.85) exitWith {titleText["This car is too rekt to flip.","PLAIN"];};


_vehData = _veh getVariable["vehicle_info_owners",[]];
if(count _vehData  > 0) then
{
	_vehOwnerStr = str((_vehData select 0) select 0);
	_playerUIDStr = str(getPlayerUID player);

	if(_playerUIDStr == _vehOwnerStr) exitWith
	{
		titleText["Flipping car. Stand back...","PLAIN"];

		sleep 4;
		_newPos = getPosASL _veh;
		_newPos set [2, (_newPos select 2)+1];
		_veh setVectorUp (surfaceNormal _newPos);
		_veh setPosASL _newPos;
	};
	
	if(_playerUIDStr != _vehOwnerStr) exitWith
	{
		titleText["You do not own this vehicle.","PLAIN"];
	};
	
};

