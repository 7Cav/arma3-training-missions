
params ["_pole"];

_pole enableSimulationGlobal false;

_pole addAction ["  <t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getin_ca'/>Open Terrain Association Area</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [missionNameSpace, ["showTerrainAssociation", true]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "!(missionNameSpace getVariable ['showTerrainAssociation',true]) && (player getVariable ['instructor',false])" 	// condition
];

_pole addAction ["  <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getout_ca'/>Close Terrain Association Area</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [missionNameSpace, ["showTerrainAssociation", false]] remoteExec ["setvariable", 0, true];
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showTerrainAssociation',false]) && (player getVariable ['instructor',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Teleport to Terrain Association Area</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos terrainAssociation);
        _caller execVM "MissionScripts\Markers\showTerrainAssociation.sqf";
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['showTerrainAssociation',false])" 	// condition
];

_pole addAction ["<t color='#C9FFC9'>Teleport to Feature A</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setPos (getPos flag_hill);
    },
    nil,        // arguments
    1.5,        // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "!(missionNameSpace getVariable ['showTerrainAssociation',false])" 	// condition
];
