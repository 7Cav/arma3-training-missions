
private _state = param [0, "", [""]];

if (_state == "init") then {
    
    player setgroupID ["STUDENTS"];

    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

    sleep 2;

    [[ 
        ["Basic Airborne Course", "<t align = 'right' shadow = '1' size = '1' color='#99ffffff' font='PuristaBold'>%1</t><br/>",2], 
        ["from the Airborne School", "<t align = 'right' shadow = '1' size = '0.7' color='#99ffffff' font='PuristaLight'>%1</t><br/>",2], 
        ["by Whitsel", "<t align = 'right' shadow = '1' size = '0.5' color='#99888888' font='PuristaMedium'>%1</t>", 120] 
    ],0.7,1] spawn BIS_fnc_typeText;
 
    [format ["<t color='#99ffffff' size = '1'>Welcome %1</t>",name player],-1,-1,3,2,0,787] spawn BIS_fnc_dynamicText; 

    sleep 6;

    ["<t color='#99ffffff' size = '.8'>Take notes<br/>and<br/>Ask questions</t>",-1,-1,3,2,0,788] spawn BIS_fnc_dynamicText; 

    sleep 6;

    ["<t color='#99ffffff' size = '.8'>And remember:<br/><br/>Have fun with it!</t>",-1,-1,3,2,0,789] spawn BIS_fnc_dynamicText; 

};

if (_state == "respawn") then
{

};
