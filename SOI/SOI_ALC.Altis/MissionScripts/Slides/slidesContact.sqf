
params ["_bb"];

if (!isNil "bbContact") then {
	bbContact = bbContact + [_bb]
} else {
	bbContact = [_bb]
};

_bb addAction ["<t color='#00ff00'>Open Contact Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbContact", true];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"!(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["<t color='#ff0000'>Close Contact Slide Controls</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["showControls_" + "bbContact", false];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Intro", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Spot Report", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\SPOTREP.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Squad Attack 1", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\Squad_Attack_1.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Squad Attack 2", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\Squad_Attack_2.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Squad Attack 3", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\Squad_Attack_3.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Squad Attack Preperation", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\SA_Prep.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Assault Element", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\Ass.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

_bb addAction ["  Support by Fire Element", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		{_x setObjectTextureGlobal [0, "Data\Contact\SBF.paa"]} forEach bbContact;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	false,		// hideOnUse
	"",			// shortcut
	"(player getVariable ['showControls_' + 'bbContact',false]) && (player getVariable ['instructor',false])", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
