
// ========= CONFIG =============

_dir = 84.472;
_speed = 300;
_alt = 200;

_locs = [
	[22040, 18781],
	[22009, 18689],
	[21981, 18836]
];

_types = [
	"rhsusf_f22"
	"RHS_A10",
	"FIR_F16C"
];

// =========== END CONFIG ===========




params ["_action", "_object"];

switch (action) do {
	case "init" : {
		if(isNil "_object") exitWith {systemChat "Error flyover-34: object nil"};
		{
			_object addAction [
				format ["Flyover (%1)", getText (configFile >> "cfgVehicles" >> _x >> "displayName")],
				"scripts\flyover.sqf",
				["run", _x]
			];
		} foreach _types;
	};
};
