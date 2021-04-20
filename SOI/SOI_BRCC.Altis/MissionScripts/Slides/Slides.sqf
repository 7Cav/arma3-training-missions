
params ["_bb"];

billboards =[
	bb_1,
	con_1,
	con_2
];

_bb addAction ["<t color='#00ff00'>Open Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls", true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"!(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["<t color='#ff0000'>Close Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls", false];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Intro", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Direct Speech", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\DirectSpeech.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  ACRE Settings", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Settings.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Radio Settings", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\RadioSettings.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  AN/PRC-343", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\343.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  AN/PRC-152", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\152.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  AN/PRC-117F", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\117F.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Prowords", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Prowords.paa"]} forEach billboards;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
