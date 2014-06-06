/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_lithiumZones","_phosphorousZones","_ephedraZones","_barleyZones","_hopsZones","_sugarZones","_cornZones","_yeastZones","_frogZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_lithiumZones = ["lithium_1","lithium_2"];
_phosphorousZones = ["phosphorous_1","phosphorous_2"];
_ephedraZones = ["ephedra_1"];
_barleyZones = ["barley_1"];
_hopsZones = ["hops_1","hops_2"];
_sugarZones = ["sugar_1","sugar_2"];
_cornZones = ["corn_1","corn_2"];
_yeastZones = ["yeast_1","yeast_2"];
_silverZones = ["silver_1"];
_frogZones = ["frog_1","frog_2","frog_3","frog_4","frog_5"];


//Create frog zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Frog = player addAction['Pick Frogs',life_fnc_gatherFrog,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Frog;"];
} foreach _frogZones;

//Create yeast zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Yeast = player addAction['Gather Yeast',life_fnc_gatherYeast,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Yeast;"];
} foreach _yeastZones;


//Create corn zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Corn = player addAction['Gather Corn',life_fnc_gatherCorn,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Corn;"];
} foreach _cornZones;


//Create sugar zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Sugar = player addAction['Gather Sugar',life_fnc_gatherSugar,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Sugar;"];
} foreach _sugarZones;

//Create hops zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Hops = player addAction['Gather Hops',life_fnc_gatherHops,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Hops;"];
} foreach _hopsZones;

//Create barley zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Barley = player addAction['Gather Barley',life_fnc_gatherBarley,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Barley;"];
} foreach _barleyZones;


//Create ephedra zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Ephedra = player addAction['Gather Ephedra',life_fnc_gatherEphedra,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Ephedra;"];
} foreach _EphedraZones;

//Create phosphorous zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Phosphorous = player addAction['Gather Phosphorous',life_fnc_gatherPhosphorous,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Phosphorous;"];
} foreach _phosphorousZones;

//Create lithium zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Lithium = player addAction['Gather Lithium',life_fnc_gatherLithium,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Lithium;"];
} foreach _lithiumZones;

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Gather Apples',life_fnc_gatherApples,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Gather Peaches',life_fnc_gatherPeaches,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Gather Heroin',life_fnc_gatherHeroin,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Gather Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Gather Cocaine',life_fnc_gatherCocaine,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create Silver zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Silver = player addAction['Gather Silver',life_fnc_gatherSilver,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Silver;"];
} foreach _silverZones;

//Create Platinum zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Platinum = player addAction['Gather Platinum',life_fnc_gatherPlatinum,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Platinum;"];
} foreach _platinumZones;