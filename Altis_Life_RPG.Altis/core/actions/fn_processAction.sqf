/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP","_vals","_delayInt"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 6)) exitWith {};
if ((vehicle player) != player) exitWith { hint "This action cannot be performed from within a vehicle." };
if (side player == west) exitWith {hint "You cannot preform this action as an officer."};

//unprocessed item,processed item, cost if no license,Text to display, capture index (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {[["oilu"],"oilp",1200,"Processing Oil",0];};
	case "diamond": {[["diamond"],"diamondc",1350,"Processing Diamond",0]};
	case "heroin": {[["heroinu"],"heroinp",2100,"Processing Heroin",0]};
	case "copper": {[["copperore"],"copper_r",750,"Processing Copper",0]};
	case "iron": {[["ironore"],"iron_r",1120,"Processing Iron",0]};
	case "sand": {[["sand"],"glass",650,"Processing Sand",0]};
	case "salt": {[["salt"],"salt_r",450,"Processing Salt",0]};
	case "cocaine": {[["cocaine"],"cocainep",1500,"Processing Cocaine",0]};
	case "marijuana": {[["cannabis"],"marijuana",500,"Processing Marijuana",0]};
	case "heroin": {[["heroinu"],"heroinp",1720,"Processing Heroin",0]};
	case "cement": {[["rock"],"cement",350,"Mixing Cement",0]};
	case "platinum": {[["platinum"],"platinumr",1550,"Processing Platinum",0]};
	case "silver": {[["silver"],"silverr",1150,"Processing Silver",0]};
	case "frog": {[["frog"],"frogp",1700,"Processing Frog LSD",0]};
	case "methu": {[["lithium","phosphorous","ephedra"],"methu",500,"Processing Unprocessed Meth",0]};
	case "crystalmeth": {[["methu"],"crystalmeth",2300,"Breaking up the Ice",0]};
	//case "beer": {[["barley","hops"],"beer",1800,"Brewing Beer",0]};
	case "mashu": {[["sugar","yeast","corn"],"mashu",500,"Processing into Sour Mash",0]};
	case "moonshine": {[["mashu"],"moonshine",2200,"Brewing Moonshine",0]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {hint "You don't have the items necessary"};

//Setup vars
_oldItem = [];
_vals = [];
{_oldItem = _oldItem + [_x];} foreach (_itemInfo select 0);
if(count _oldItem == 0) exitWith {hint "You don't have the items necessary"};
{_vals = _vals + [missionNamespace getVariable ([_x,0] call life_fnc_varHandle)];} foreach _oldItem;
_oldVal = _vals select 0;
{if (_x < _oldVal) then {_oldVal = _x};} foreach _vals;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
if(_oldVal == 0) exitWith {};
_cost = _cost * _oldVal;
_capture = false;
if ((_itemInfo select 4) > 0) then { _capture = true; };

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;
if((!_hasLicense)&&(life_cash < _cost)&&(!_capture)) exitWith {
	hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText];
	5 cutText ["","PLAIN"]; life_is_processing = false;
};
_delayInt = _oldVal * 0.03;
while{true} do {
	sleep _delayInt;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {};
};
	
if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if((!_hasLicense)&&(!_capture)&&(life_cash < _cost)) exitWith {hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!(alive player)) exitWith {hint "You need to be alive to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
//Removes the old items
{
	if(!([false,_x,_oldVal] call life_fnc_handleInv)) exitWith {
		5 cutText ["","PLAIN"]; life_is_processing = false;
	};
} foreach _oldItem;

//Reduce amount if capturable
_oldOldVal = _oldVal;
if (_capture) then
{
	_point = life_capture_list select (_itemInfo select 4);
	if (((_point select 1) != life_gang) || (_point select 2) < 1) then
	{
		if (_newItem in ["ephedra","meth"]) then { _oldVal = round(_oldVal * 0.90); }
		else { _oldVal = round(_oldVal * 0.80); };
	};	
};

//Adds the new item
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {
	5 cutText ["","PLAIN"];
	{[true,_x,_oldVal] call life_fnc_handleInv;} foreach _oldItem;
	life_is_processing = false;
};

5 cutText ["","PLAIN"];

if (_hasLicense) then {
	titleText[format["You have processed your goods into %1",_itemName],"PLAIN"];
} else {
	titleText[format["You have processed your goods into %1 for $%2",_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	["cash","take",_cost] call life_fnc_updateCash;
};


life_is_processing = false;
[[36, name player, getPlayerUID player, format["Processed %1 into %2", _oldVal, _itemName]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;