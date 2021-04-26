
params [""];

player addAction ["  <img size='1' image='\a3\ui_f\data\GUI\Cfg\Ranks\captain_gs'/> <t color='#31baf1'>Pause Exercise</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [missionNameSpace, ["aiFreeze", true]] remoteExec ["setvariable", 0, true];
        _AI = (
            (allUnits select {side group _x == west}) + 
            (vehicles select {side group _x == west}) + 
            (allUnits select {side group _x == east}) + 
            (vehicles select {side group _x == east}) + 
            (allUnits select {side group _x == resistance}) + 
            (vehicles select {side group _x == resistance}) + 
            (allUnits select {side group _x == civilian}) + 
            (vehicles select {side group _x == civilian}) - 
            (allPlayers)
        );
        {[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach _AI;
        {[_x, false] remoteExec ["allowDamage ", 0]} forEach _AI;
        format ["PauseEx Initiated by %1", name player] remoteExec ["hint", 0];
    },
    nil,        // arguments
    0,          // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "!(missionNameSpace getVariable ['aiFreeze',false])" 	// condition
];

player addAction ["  <img size='1' image='\a3\ui_f\data\GUI\RscCommon\RscHTML\arrow_right_ca'/> <t color='#ff0000'>Play Exercise</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [missionNameSpace, ["aiFreeze", false]] remoteExec ["setvariable", 0, true];
        _AI = (
            (allUnits select {side group _x == west}) + 
            (vehicles select {side group _x == west}) + 
            (allUnits select {side group _x == east}) + 
            (vehicles select {side group _x == east}) + 
            (allUnits select {side group _x == resistance}) + 
            (vehicles select {side group _x == resistance}) + 
            (allUnits select {side group _x == civilian}) + 
            (vehicles select {side group _x == civilian}) - 
            (allPlayers)
        );
        {[_x, true] remoteExec ["enableSimulationGlobal", 0]} forEach _AI;
        {[_x, true] remoteExec ["allowDamage ", 0]} forEach _AI;
        format ["PauseEx Ended by %1", name player] remoteExec ["hint", 0];
    },
    nil,        // arguments
    0,          // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(missionNameSpace getVariable ['aiFreeze',false])" 	// condition
];
