
params ["_bb"];

if (!isNil "bbPlanning") then {
	bbPlanning = bbPlanning + [_bb]
} else {
	bbPlanning = [_bb]
};

_bb addAction ["<t color='#00ff00'>Open Planning Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbPlanning", true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"!(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["<t color='#ff0000'>Close Planning Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbPlanning", false];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Intro", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} forEach bbPlanning;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Parallel Planning", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Brief\Parallel_Planning.paa"]} forEach bbPlanning;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Navigation", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Brief\Navigation.paa"]} forEach bbPlanning;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  M.A.D.", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Brief\MAD.paa"]} forEach bbPlanning;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  O.O.D.A.", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Brief\OODA.paa"]} forEach bbPlanning;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbPlanning',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
