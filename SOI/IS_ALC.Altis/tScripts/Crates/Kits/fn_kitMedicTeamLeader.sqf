
#include "..\..\script_component.hpp";

params ["_box",["_rstr", false]];

_role = "Medic Team Leader";
_img = iconManMedic;

_color = "<t color='#155492'>";
_cond = "!(_target getVariable ['locked', false])";

if (_rstr == true) then {
	_color = "<t color='#FFD700'>";
	_cond ="(player getVariable ['instructor', false])";
};

_box addAction ["  " + _color + _img + "</t>" + _role, {
		params ["","_player"];

		[_player, 0, 0, 2] call FUNC(acePermissions);

		_player setUnitLoadout [
			["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_acog_rmr",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],""],
			[],
			[],
			["rhs_uniform_acu_ocp",[
				["ACE_elasticBandage",14],
				["ACE_tourniquet",4],
				["ACE_microDAGR",1],
				["ACE_MapTools",1],
				["ACE_Flashlight_XL50",1],
				["ACRE_PRC343",1],
				["ACRE_PRC152",1]
			]],
			["rhsusf_spcs_ocp_medic",[
				["ACE_morphine",20],
				["ACE_epinephrine",20],
				["ACE_adenosine",6],
				["ACE_CableTie",4],
				["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],
				["SmokeShell",4,1],
				["SmokeShellBlue",2,1],
				["ACE_Chemlight_HiYellow",4,1],
				["ACE_Chemlight_HiRed",4,1]
			]],
			["B_Carryall_mcamo",[
				["rhsusf_ANPVS_14",1],
				["ACE_quikclot",50],
				["ACE_tourniquet",10],
				["ACE_splint",8],
				["ACE_elasticBandage",40],
				["ACE_salineIV",10],
				["ACE_surgicalKit",1],
				["ACE_personalAidKit",6]
			]],
			"rhsusf_ach_bare_tan_headset","",["ACE_Vector","","","",[],[],""],
			["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]
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
