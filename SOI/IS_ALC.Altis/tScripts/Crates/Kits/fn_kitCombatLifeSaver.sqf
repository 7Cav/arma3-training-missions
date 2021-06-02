
#include "..\..\script_component.hpp";

params ["_box",["_rstr", false]];

_role = "Combat Life Saver";
_img = iconManMedic;

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
			["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],
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
			["rhsusf_spcs_ocp_medic",[
				["ACE_CableTie",4],
				["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],
				["rhs_mag_m67",2,1],
				["SmokeShell",4,1],
				["ACE_Chemlight_HiRed",4,1]
			]],
			["rhsusf_assault_eagleaiii_ocp",[
				["rhsusf_ANPVS_14",1],
				["ACE_EntrenchingTool",1],
				["ACE_personalAidKit",5],
				["ACE_quikclot",56],
				["ACE_tourniquet",16],
				["ACE_splint",16]
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
