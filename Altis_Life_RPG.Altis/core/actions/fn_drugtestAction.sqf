	
	Description:
	Test for Drugusage.
*/

private["_unit","_dText","_weed","_cocaine","_moonshine","_beer","_heroin"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Testing...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test failed."};

if(_unit getVariable["drug_weed",false]) then { _weed = "Positive"; } else { _weed = "Negative"; };
if(_unit getVariable["drug_cocaine",false]) then { _cocaine = "Positive"; } else { _cocaine = "Negative"; };
if(_unit getVariable["drug_moonshine",false]) then { _moonshine = "Positive"; } else { _moonshine = "Negative"; };
if(_unit getVariable["drug_beer",false]) then { _beer = "Positive"; } else { _beer = "Negative"; };
if(_unit getVariable["drug_heroin",false]) then { _heroin = "Positive"; } else { _heroin = "Negative"; };

hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'>Weed: </t>%2<br/><t color='#FFD700'>Cocaine: </t>%3<br/><t color='#FFD700'>Moonshine: </t>%4<br/><t color='#FFD700'>Beer: </t>%5<br/><t color='#FFD700'>Heroin: </t>%6" ,name _unit,_weed,_cocaine,_moonshine,_beer,_heroin];