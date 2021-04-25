
params ["_bb"];

if (!isNil "bbDismount") then {
    bbDismount = bbDismount + [_bb]
} else {
    bbDismount = [_bb]
};

uh60_TwoSideExit = [
    uh60_2side_arrow_1,
    uh60_2side_arrow_2,
    uh60_2side_arrow_3,
    uh60_2side_arrow_4,
    uh60_2side_arrow_5,
    uh60_2side_arrow_6,
    uh60_2side_arrow_7,
    uh60_2side_arrow_8,
    uh60,
    uh60_2side_sector_0,
    uh60_2side_sector_1,
    uh60_2side_sector_2,
    uh60_2side_sector_3,
    uh60_2side_sector_4,
    uh60_2side_sector_5,
    uh60_2side_sector_6,
    uh60_2side_sector_8
];

uh60_OneSideExit = [
    uh60_1side_arrow_1,
    uh60_1side_arrow_2,
    uh60_1side_arrow_3,
    uh60_1side_arrow_4,
    uh60_1side_arrow_5,
    uh60_1side_arrow_6,
    uh60_1side_arrow_7,
    uh60_1side_arrow_8,
    uh60_1side_arrow_9,
    uh60_1side_arrow_10,
    uh60_1side_arrow_11,
    uh60_1side_arrow_12,
    uh60_1side_arrow_13,
    uh60_1side_arrow_14,
    uh60_1side_arrow_15,
    uh60_1side_arrow_16,
    uh60_1side_arrow_17,
    uh60_1side_arrow_18,
    uh60,
    uh60_1side_sector_1,
    uh60_1side_sector_2,
    uh60_1side_sector_3,
    uh60_1side_sector_4,
    uh60_1side_sector_5,
    uh60_1side_sector_6,
    uh60_1side_sector_7,
    uh60_1side_sector_8
];

ch47_TwoSideExit = [
    ch47_2side_arrow_1,
    ch47_2side_arrow_2,
    ch47_2side_arrow_3,
    ch47_2side_arrow_4,
    ch47_2side_arrow_5,
    ch47_2side_arrow_6,
    ch47_2side_arrow_7,
    ch47_2side_arrow_8,
    ch47_2side_arrow_9,
    ch47_2side_arrow_10,
    ch47_2side_arrow_11,
    ch47_2side_arrow_12,
    ch47_2side_arrow_13,
    ch47_2side_arrow_14,
    ch47_2side_arrow_15,
    ch47_2side_arrow_16,
    ch47_2side_arrow_17,
    ch47_2side_arrow_18,
    ch47,
    ch47_2side_sector_1,
    ch47_2side_sector_2,
    ch47_2side_sector_3,
    ch47_2side_sector_4,
    ch47_2side_sector_5,
    ch47_2side_sector_6,
    ch47_2side_sector_7,
    ch47_2side_sector_8,
    ch47_2side_sector_9,
    ch47_2side_sector_10,
    ch47_2side_sector_11,
    ch47_2side_sector_12,
    ch47_2side_sector_13,
    ch47_2side_sector_14,
    ch47_2side_sector_15,
    ch47_2side_sector_16
];

ch47_OneSideExit = [
    ch47_1side_arrow_1,
    ch47_1side_arrow_2,
    ch47_1side_arrow_3,
    ch47_1side_arrow_4,
    ch47_1side_arrow_5,
    ch47_1side_arrow_6,
    ch47_1side_arrow_7,
    ch47_1side_arrow_8,
    ch47_1side_arrow_9,
    ch47_1side_arrow_10,
    ch47_1side_arrow_11,
    ch47_1side_arrow_12,
    ch47_1side_arrow_13,
    ch47_1side_arrow_14,
    ch47_1side_arrow_15,
    ch47_1side_arrow_16,
    ch47_1side_arrow_17,
    ch47_1side_arrow_18,
    ch47_1side_arrow_19,
    ch47_1side_arrow_20,
    ch47_1side_arrow_21,
    ch47_1side_arrow_22,
    ch47_1side_arrow_23,
    ch47_1side_arrow_24,
    ch47_1side_arrow_25,
    ch47_1side_arrow_26,
    ch47_1side_arrow_27,
    ch47_1side_arrow_28,
    ch47_1side_arrow_29,
    ch47_1side_arrow_30,
    ch47_1side_arrow_31,
    ch47_1side_arrow_32,
    ch47_1side_arrow_33,
    ch47_1side_arrow_34,
    ch47_1side_arrow_35,
    ch47_1side_arrow_36,
    ch47_1side_arrow_37,
    ch47_1side_arrow_38,
    ch47,
    ch47_1side_sector_1,
    ch47_1side_sector_2,
    ch47_1side_sector_3,
    ch47_1side_sector_4,
    ch47_1side_sector_5,
    ch47_1side_sector_6,
    ch47_1side_sector_7,
    ch47_1side_sector_8,
    ch47_1side_sector_9,
    ch47_1side_sector_10,
    ch47_1side_sector_11,
    ch47_1side_sector_12,
    ch47_1side_sector_13,
    ch47_1side_sector_14,
    ch47_1side_sector_15,
    ch47_1side_sector_16
];

{[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
{[_x, false] remoteExec ["allowDamage ", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
{[_x, true] remoteExec ["hideObject", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);

_bb enableSimulationGlobal false;
_bb setObjectTextureGlobal [0, "Data\MissionLogo.paa"];

_bb addAction ["<t color='#00ff00'>Open Slide Controls</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _caller setVariable ["showControls_" + "bbDismount", true];
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "!(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_bb addAction ["<t color='#ff0000'>Close Slide Controls</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _caller setVariable ["showControls_" + "bbDismount", false];
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_bb addAction ["  Intro", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        {_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} forEach bbDismount;
        {[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, false] remoteExec ["allowDamage ", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["hideObject", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_bb addAction ["  UH-60 Two Side Exit", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        {_x setObjectTextureGlobal [0, "Data\UH60_TwoSideExit.paa"]} forEach bbDismount;
        {[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, false] remoteExec ["allowDamage ", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["hideObject", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["enableSimulationGlobal", 0]} forEach uh60_TwoSideExit;
        {[_x, true] remoteExec ["allowDamage ", 0]} forEach uh60_TwoSideExit;
        {[_x, false] remoteExec ["hideObject", 0]} forEach uh60_TwoSideExit;
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_bb addAction ["  UH-60 One Side Exit", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        {_x setObjectTextureGlobal [0, "Data\UH60_OneSideExit.paa"]} forEach bbDismount;
        {[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, false] remoteExec ["allowDamage ", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["hideObject", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["enableSimulationGlobal", 0]} forEach uh60_OneSideExit;
        {[_x, true] remoteExec ["allowDamage ", 0]} forEach uh60_OneSideExit;
        {[_x, false] remoteExec ["hideObject", 0]} forEach uh60_OneSideExit;
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_bb addAction ["  CH-47 Two Side Exit", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        {_x setObjectTextureGlobal [0, "Data\CH47_TwoSideExit.paa"]} forEach bbDismount;
        {[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, false] remoteExec ["allowDamage ", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["hideObject", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["enableSimulationGlobal", 0]} forEach ch47_TwoSideExit;
        {[_x, true] remoteExec ["allowDamage ", 0]} forEach ch47_TwoSideExit;
        {[_x, false] remoteExec ["hideObject", 0]} forEach ch47_TwoSideExit;
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_bb addAction ["  CH-47 One Side Exit", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        {_x setObjectTextureGlobal [0, "Data\CH47_OneSideExit.paa"]} forEach bbDismount;
        {[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, false] remoteExec ["allowDamage ", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["hideObject", 0]} forEach (uh60_TwoSideExit + uh60_OneSideExit + ch47_TwoSideExit + ch47_OneSideExit);
        {[_x, true] remoteExec ["enableSimulationGlobal", 0]} forEach ch47_OneSideExit;
        {[_x, true] remoteExec ["allowDamage ", 0]} forEach ch47_OneSideExit;
        {[_x, false] remoteExec ["hideObject", 0]} forEach ch47_OneSideExit;
    },
    nil,		// arguments
    1.5,		// priority
    true,		// showWindow
    false,		// hideOnUse
    "",			// shortcut
    "(player getVariable ['showControls_' + 'bbDismount',false]) && (player getVariable ['instructor',false])", 	// condition
    10,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];
