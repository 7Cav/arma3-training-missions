
params ["_pole"];

[missionNameSpace, ["showLanes", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_1", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_2", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_3", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_4", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_5", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_6", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_7", true]] remoteExec ["setvariable", 0, true];

[missionNameSpace, ["laneOpen_8", true]] remoteExec ["setvariable", 0, true];

_pole addAction ["  <t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getin_ca'/>Open Lanes</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [missionNameSpace, ["showLanes", true]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "!(missionNameSpace getVariable ['showLanes',true]) && (player getVariable ['instructor',false])" 	// condition
];

_pole addAction ["  <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getout_ca'/>Close Lanes</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [missionNameSpace, ["showLanes", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (player getVariable ['instructor',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 1</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_1);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_1.sqf";
        "laneBox_1" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_1", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_1',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 2</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_2);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_2.sqf";
        "laneBox_2" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_2", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_2',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 3</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_3);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_3.sqf";
        "laneBox_3" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_3", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_3',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 4</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_4);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_4.sqf";
        "laneBox_4" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_4", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_4',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 5</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_5);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_5.sqf";
        "laneBox_5" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_5", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_5',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 6</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_6);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_6.sqf";
        "laneBox_6" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_6", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_6',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 7</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_7);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_7.sqf";
        "laneBox_7" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_7", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_7',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Lane 8</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos nav_8);
        _caller execVM "MissionScripts\Markers\hideMarkers.sqf";
        _caller execVM "MissionScripts\Lanes\Lane_8.sqf";
        "laneBox_8" setMarkerAlphaLocal 1;
        [missionNameSpace, ["laneOpen_8", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showLanes',false]) && (missionNameSpace getVariable ['laneOpen_8',false])" 	// condition
];
