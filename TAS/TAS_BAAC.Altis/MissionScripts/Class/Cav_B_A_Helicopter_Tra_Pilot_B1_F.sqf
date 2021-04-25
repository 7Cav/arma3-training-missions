
private _state = param [0, "", [""]];

if (_state == "init") then {

    player execVM "MissionScripts\Markers\hideMarkers.sqf";
    
    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

    sleep 2;

    player execVM "MissionScripts\Utility\introCadet.sqf";
};

if (_state == "respawn") then
{

};
