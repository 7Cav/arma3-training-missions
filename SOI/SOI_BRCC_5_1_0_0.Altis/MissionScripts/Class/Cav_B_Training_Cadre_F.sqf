
private _state = param [0, "", [""]];

if (_state == "init") then {

    player setVariable ["instructor", true];
    player setVariable ["showControls", false];

    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

    player addAction ["---", {}, nil, 0];

    player addAction ["  <img size='1' image='\a3\ui_f\data\IGUI\Cfg\CommandBar\combatMode_textureMStealth_ca'/> <t color='#31baf1'>Freeze OpFor</t>", {
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
            _AI apply {_x enableSimulationGlobal false};
        },
        nil,        // arguments
        0,          // priority
        true,       // showWindow
        false,      // hideOnUse
        "",         // shortcut
        "!(missionNameSpace getVariable ['aiFreeze',true])" 	// condition
    ];

    player addAction ["  <img size='1' image='\a3\ui_f\data\IGUI\Cfg\CommandBar\combatMode_textureMCombat_ca'/> <t color='#ff0000'>Unfreeze OpFor</t>", {
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
            _AI apply {_x enableSimulationGlobal true};
        },
        nil,        // arguments
        0,          // priority
        true,       // showWindow
        false,      // hideOnUse
        "",         // shortcut
        "(missionNameSpace getVariable ['aiFreeze',false])" 	// condition
    ];

    player addAction ["  <img size='1' image='\a3\ui_f\data\IGUI\RscIngameUI\RscDisplayChannel\MuteChat_ca'/> Class Resources", {
            params ["_target", "_caller", "_actionId", "_arguments"];
            _lp = parseText "<a href='https://drive.google.com/file/d/10bd3rX_eNR5LXM3Hz1jfmJ9DpVCwQ5kj/view?usp=sharing'><t color='#ebc729' size='1.2'>Lesson&#160;Plan</t></a><br />";
            _fm = parseText "<a href='https://drive.google.com/file/d/1dK5C-axnlNALYE162I4zBxqvjk5dgDbO/view?usp=sharing'><t color='#ebc729' size='1.2'>Field&#160;Manual&#160;[Depreciated]</t></a><br />";
            _survey = parseText "<a href='https://docs.google.com/forms/d/e/1FAIpQLSf6rfGTZfcblup1Q9wSfODUbSxi0Pe49IMbmGO2xBz8Ik7xOg/viewform'><t color='#ebc729' size='1.2'>Class&#160;Survey</t></a>";
            "Class Resources" hintC [_lp, _fm, _survey];

            hintC_EH = findDisplay 72 displayAddEventHandler ["unload", {
                0 = _this spawn {
                    _this select 0 displayRemoveEventHandler ["unload", hintC_EH];
                    hintSilent "";
                };
            }];
        },
        nil,        // arguments
        0,          // priority
        true,       // showWindow
        false,      // hideOnUse
        "",         // shortcut
        ""          // condition
    ];

    sleep 2;

    [[
        ["Basic Radio Communication", "<t align = 'right' shadow = '1' size = '1' color='#99ffffff' font='PuristaBold'>%1</t><br/>",2], 
        ["from the Infantry School", "<t align = 'right' shadow = '1' size = '0.7' color='#99ffffff' font='PuristaLight'>%1</t><br/>",2], 
        ["by Whitsel", "<t align = 'right' shadow = '1' size = '0.5' color='#99888888' font='PuristaMedium'>%1</t>", 60] 
    ],0.7,1] spawn BIS_fnc_typeText;
 
    [format ["<t color='#66ffffff' size = '1'>Welcome %1</t>",name player],-1,-1,3,2,0,788] spawn BIS_fnc_dynamicText; 

    sleep 6;

    ["<t color='#66ffffff' size = '.8'>Use the scroll wheel menu to change slides</t>",-1,-1,3,2,0,789] spawn BIS_fnc_dynamicText; 

};

if (_state == "respawn") then
{

};
