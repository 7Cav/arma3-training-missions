
private _state = param [0, "", [""]];

if (_state == "init") then {

    [] call HUD_Infantry_Initialize;

    player setVariable ["SPM_BranchOfService", "infantry"];

    sleep 2;

    player execVM "MissionScripts\Utility\introCadet.sqf";

};

if (_state == "respawn") then
{

};
