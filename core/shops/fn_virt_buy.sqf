/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_marketprice"];
if((lbCurSel 2401) == -1) exitWith {hint "You need to select an item to buy."};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;

_marketprice = [_type] call life_fnc_marketGetBuyPrice;

if(_marketprice != -1) then
{
	_price = _marketprice;
};

if(!([_amount] call fnc_isnumber)) exitWith {hint "You didn't enter an actual number";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint "You don't have enough space for that amount!"};
_amount = _diff;
if((_price * _amount) > life_cash) exitWith {hint "You don't have that much money!"};

_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	hint format["You bought %1 %2 for $%3",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
	life_cash = life_cash - (_price * _amount);
	
	[[92, name player, getPlayerUID player, format["Purchased %1 %2 for %3", _amount, _name, (_price * _amount)]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;
	
	if(_marketprice != -1) then 
	{ 
		[_type, _amount] spawn
		{
			sleep 120;
			[_this select 0,_this select 1] call life_fnc_marketBuy;
		};			
	};
	[] call life_fnc_virt_update;
};

