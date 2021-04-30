
params ["_crtl", "_spawnPos", ["_num", 1]];

_crtl addAction ["Spawn Patient - Cardiac Arrest", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		for "_i" from 1 to _arguments#1 do {{[_x, "CA"] remoteExecCall ["mScripts_fnc_medical", 2]} forEach _arguments#0};
	},
	[_spawnPos, _num]
];

_crtl addAction ["Spawn Patient - Explosion", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		for "_i" from 1 to _arguments#1 do {{[_x, "explosionWound"] remoteExecCall ["mScripts_fnc_medical", 2]} forEach _arguments#0};
	},
	[_spawnPos, _num]
];

_crtl addAction ["Spawn Patient - Gunshot", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		for "_i" from 1 to _arguments#1 do {{[_x, "gunshotWound"] remoteExecCall ["mScripts_fnc_medical", 2]} forEach _arguments#0};
	},
	[_spawnPos, _num]
];

_crtl addAction ["Spawn Patient - Stab", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		for "_i" from 1 to _arguments#1 do {{[_x, "stabWound"] remoteExecCall ["mScripts_fnc_medical", 2]} forEach _arguments#0};
	},
	[_spawnPos, _num]
];

_crtl addAction ["Spawn Patient - Impact", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		for "_i" from 1 to _arguments#1 do {{[_x, "impactWound"] remoteExecCall ["mScripts_fnc_medical", 2]} forEach _arguments#0};
	},
	[_spawnPos, _num]
];

_crtl addAction ["Spawn Patient - Random", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		for "_i" from 1 to _arguments#1 do {{[_x, "randomWound"] remoteExecCall ["mScripts_fnc_medical", 2]} forEach _arguments#0};
	},
	[_spawnPos, _num]
];
