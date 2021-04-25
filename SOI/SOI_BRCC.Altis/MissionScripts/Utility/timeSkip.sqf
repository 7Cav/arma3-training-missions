
params [""];

player addAction ["  <t color='#ffff00'><img size='1' image='\a3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\clear_ca'/></t> Set Time: Day", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _timeToSkipTo = 12;
        [(_timeToSkipTo - daytime + 24 ) % 24] remoteExec ["skipTime", 0]; 
        [0,0] remoteExec ["setFog", 0];
        format ["%1 Set time to Day", name player] remoteExec ["hint", 0];
    },
    nil,        // arguments
    0,          // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(dayTime < 6) or (dayTime > 18)" 	// condition
];

player addAction ["  <t color='#000000'><img size='1' image='\a3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\overcast_ca'/></t> Set Time: Night", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _timeToSkipTo = 0;
        [(_timeToSkipTo - daytime + 24 ) % 24] remoteExec ["skipTime", 0]; 
        [0,0] remoteExec ["setFog", 0];
        format ["%1 Set time to Night", name player] remoteExec ["hint", 0];
    },
    nil,        // arguments
    0,          // priority
    true,       // showWindow
    false,      // hideOnUse
    "",         // shortcut
    "(6 < dayTime) && (18 > dayTime)" 	// condition
];
