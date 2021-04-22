
params ["_bb"];

if (!isNil "bbMap") then {
	bbMap = bbMap + [_bb]
} else {
	bbMap = [_bb]
};

_bb addAction ["  <t color='#00ff00'><img size='1' image='\a3\ui_f\data\igui\cfg\simpleTasks\types\whiteboard_ca'/>Open Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbMap", true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"!(player getVariable ['showControls_' + 'bbMap',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  <t color='#ff0000'><img size='1' image='\a3\ui_f\data\igui\cfg\simpleTasks\types\whiteboard_ca'/>Close Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbMap", false];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbMap',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["    Intro", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} forEach bbMap;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbMap',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["    Terrain Features", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MapCompass\TerrainFeatures.paa"]} forEach bbMap;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbMap',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["    Using the Romer", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MapCompass\Romer.paa"]} forEach bbMap;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbMap',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["    Plotting a Bearing", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MapCompass\BearingPlot.paa"]} forEach bbMap;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbMap',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
