
#include "..\..\script_component.hpp";

params ["_box",["_rstr", false]];

_role = "Instructor";
_img = iconManCommander2;

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
			[],
			[],
			[],
			["rhs_uniform_acu_oefcp",[
				["ACE_quikclot",14],
				["ACE_tourniquet",4],
				["ACE_MapTools",1],
				["ACE_Flashlight_XL50",1],
				["ACE_microDAGR",1],
				["ACRE_PRC343",1],
				["ACRE_PRC152",1]]
			],
			[],
			[],
			"rhsusf_patrolcap_ocp","",[],
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
