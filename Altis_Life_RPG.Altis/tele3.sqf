// Teleports a person to the marker "teleportDestination". You can place this marker anywhere on the map.
// The marker can also be moved (see associated script: Teleport To Vehicle Location).
//
// To use: Add this script as an action on an item. EG:
//
//this addAction ["Teleport - Talon","teleport.sqf",["FOB_Talon"]];
//this addAction ["Teleport - Base","teleport.sqf",["Base"]];
//this addAction ["Teleport - Airfield","teleport.sqf",["Airstrip"]];
//player addaction [("<t color=""#0074E8"">" + ("Tele to sky_race_spawn") +"</t>"),"tele1.sqf","",5,false,true,"",""];

// Get the destination.
//_dest = (_this select 3) select 0;

player setPos (getMarkerPos "sky_race_spawn_1");
