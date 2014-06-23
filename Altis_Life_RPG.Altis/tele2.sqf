// Teleports a person to the marker "teleportDestination". You can place this marker anywhere on the map.
// The marker can also be moved (see associated script: Teleport To Vehicle Location).
//
// To use: Add this script as an action on an item. EG:
//
//player addaction [("<t color=""#0074E8"">" + ("Teleport back to Kavala") +"</t>"),"tele2.sqf","",5,false,true,"",""];
//player addaction [("<t color=""#0074E8"">" + ("Teleport to the Sky Race 3000!") +"</t>"),"tele1.sqf","",5,false,true,"",""];

// Get the destination.
//_dest = (_this select 3) select 0;

player setPos (getMarkerPos "jail_release");
