
private _state = param [0, "", [""]];

if (_state == "init") then {

    player setVariable ["instructor", true];
    player execVM "MissionScripts\Utility\wallHacks.sqf";

    [] call HUD_Infantry_Initialize;
    player setVariable ["SPM_BranchOfService", "infantry"];

    player addAction ["---", {}, nil, 0];

    player execVM "MissionScripts\Utility\pauseEx.sqf";
    player execVM "MissionScripts\Utility\timeSkip.sqf";
    player execVM "MissionScripts\Utility\resourcesInstructor.sqf";

    sleep 2;

    player execVM "MissionScripts\Utility\introCadre.sqf";

};

if (_state == "respawn") then
{

};
