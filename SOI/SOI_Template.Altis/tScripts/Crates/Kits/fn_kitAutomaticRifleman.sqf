
#include "..\..\script_component.hpp";

params ["_box",["_rstr", false]];

_role = "Automatic Rifleman";
_img = iconManMG;

_color = "<t color='#155492'>";
_cond = "!(_target getVariable ['locked', false])";

if (_rstr == true) then {
	_color = "<t color='#FFD700'>";
	_cond ="(player getVariable ['instructor', false])";
};

_box addAction ["  " + _color + _img + "</t>" + _role, {
		params ["","_player"];

		[_player, 0, 0, 0] call FUNC(acePermissions);

		_player setUnitLoadout [
			["rhs_weap_m249_light_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side","rhsusf_acc_ELCAN",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],
			[],
			[],
			["rhs_uniform_acu_oefcp",[
				["ACE_quikclot",14],
				["ACE_tourniquet",4],
				["ACE_DAGR",1],
				["ACE_MapTools",1],
				["ACE_Flashlight_XL50",1],
				["ACRE_PRC343",1]
			]],
			["rhsusf_spcs_ocp_saw",[
				["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200],
				["rhs_mag_m67",2,1],["SmokeShell",4,1]
			]],
			["rhsusf_assault_eagleaiii_ocp",[
				["rhsusf_ANPVS_14",1],
				["ACE_personalAidKit",1],
				["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200]
			]],
			"rhsusf_ach_helmet_ocp","",[],
			["ItemMap","","","ItemCompass","ItemWatch",""]
		];

		_player call FUNC(tapes);
	},
	nil,
	1.5,
	false,
	false,
	"",
	format ["%1",_cond],
	5
];
