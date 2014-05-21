/*
	@author Mario2002 
*/
private["_path","_unit","_type"];
_unit = [_this,0] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;

switch(_type) do {
	case "U_Rangemaster" : {
		_path = "textures\cop_uniform\recruit_uniform_rangemaster.paa";
		_unit setObjectTextureGlobal [0,_path];
	};
	case "U_B_CombatUniform_mcam" : {
		_path = "textures\cop_uniform\cop_captain.paa";
		_unit setObjectTextureGlobal [0,_path];
	};
	case "U_B_CombatUniform_mcam_vest" : {
		_path = "textures\cop_uniform\cop_officer.paa";
		_unit setObjectTextureGlobal [0,_path];
	};	
	case "U_B_SpecopsUniform_sgg" : {
		_path = "textures\cop_uniform\cop_officer_donator.paa";
		_unit setObjectTextureGlobal [0,_path];
	};	
};
