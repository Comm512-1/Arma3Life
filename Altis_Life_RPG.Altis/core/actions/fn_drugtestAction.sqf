	
	Description:
	Test for Drugusage.
*/

private["_unit","_dText","_weed","_cocaine","_moonshine","_beer","_heroin"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Testing...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test failed."};

if(_unit getVariable["drug_weed",false]) then { _weed = "Positiv"; } else { _weed = "Negativ"; };
if(_unit getVariable["drug_cocaine",false]) then { _cocaine = "Positiv"; } else { _cocaine = "Negativ"; };
if(_unit getVariable["drug_moonshine",false]) then { _moonshine = "Positiv"; } else { _moonshine = "Negativ"; };
if(_unit getVariable["drug_beer",false]) then { _beer = "Positiv"; } else { _beer = "Negativ"; };
if(_unit getVariable["drug_heroin",false]) then { _heroin = "Positiv"; } else { _heroin = "Negativ"; };

hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'>Weed: </t>%2<br/><t color='#FFD700'>Cocaine: </t>%2<br/><t color='#FFD700'>Moonshine: </t>%2<br/><t color='#FFD700'>Beer: </t>%2<br/><t color='#FFD700'>Heroin: </t>%3<br/><br/><t color='#FF0000'>%4</t>"
,name _unit,_weed,_cocaine,_moonshine,_beer,_heroin];