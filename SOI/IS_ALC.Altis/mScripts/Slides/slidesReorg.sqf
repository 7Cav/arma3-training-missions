
params ["_bb"];

if (!isNil "bbReorg") then {
	bbReorg = bbReorg + [_bb]
} else {
	bbReorg = [_bb]
};

_bb addAction ["<t color='#00ff00'>Open Reorg Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbReorg", true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"!(player getVariable ['showControls_' + 'bbReorg',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["<t color='#ff0000'>Close Reorg Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbReorg", false];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbReorg',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Intro", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} forEach bbReorg;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbReorg',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  (L)ACE", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Reorg\LACE.paa"]} forEach bbReorg;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbReorg',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Situation Report", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Reorg\SITREP.paa"]} forEach bbReorg;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbReorg',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
