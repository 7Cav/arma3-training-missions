
#include "..\..\script_component.hpp";

params ["_box",["_rstr", false]];

_role = "Machine Gunner";
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
			["rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq15side","rhsusf_acc_elcan_3d",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],
			[],
			[],
			["rhs_uniform_acu_oefcp",[
				["ACE_quikclot",14],
				["ACE_tourniquet",4],
				["ACE_microDAGR",1],
				["ACE_Flashlight_XL50",1],
				["ACE_MapTools",1],
				["ACRE_PRC343",1],
				["ACRE_PRC152",1]
			]],
			["rhsusf_spcs_ocp_machinegunner",[
				["rhsusf_100Rnd_762x51_m62_tracer",2,100],
				["rhs_mag_m67",2,1],
				["SmokeShell",4,1]
			]],
			["B_AssaultPack_mcamo",[
				["rhsusf_100Rnd_762x51_m62_tracer",4,100]
			]],
			"rhsusf_ach_helmet_headset_ocp","",[],
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
