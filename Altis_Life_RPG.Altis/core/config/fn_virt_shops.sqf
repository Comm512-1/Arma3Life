/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","beer","rabbit","apple","peach","redgull","tbacon","pickaxe","fuelF","storage2","frogleg","frognet"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","crystalmeth","methu","moonshine","lsd"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "brew": {["Moonshine Brewery", ["moonshine","mashu"]]};
	case "platinum": {["Platinum Dealer",["platinum","platinumr"]]};
	case "silver": {["Silver Dealer",["silver","silverr"]]};
	case "rebel": {["Rebel Shop", ["water","beer","apple","peach","redgull","tbacon","lockpick","fuelF","ziptie"]]};
	case "medic": {["Medic Shop", ["water","apple","peach","redgull","tbacon","fuelF"]]};
};