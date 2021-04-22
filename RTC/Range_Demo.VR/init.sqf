#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

#ifdef DEBUG_MODE
    ["init Initializing.", "init"] call FUNC(logInfo);
    [formatText["cScripts Version %1 is running.",VERSION], "init"] call FUNC(logInfo);
    [formatText["Debug mode is currently active."], "init"] call FUNC(logWarning);
    logEntities;
#endif

if !(isMultiplayer) then {["Mission is running on singelplayer enviroment."] call FUNC(logWarning)};

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;


#ifdef DEBUG_MODE
    ["init initialization completed.", "init"] call FUNC(logInfo);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */

// Function by Killzone Kid
MISSION_ROOT = call {
    private "_arr";
    _arr = toArray str missionConfigFile;
    _arr resize (count _arr - 15);
    toString _arr
};

// Function by Killzone Kid
KK_fnc_trueZoom = {
    ([0.5,0.5] distance2D worldToScreen positionCameraToWorld [0,3,4]) * (getResolution select 5) / 2
};

[] execVM "MissionScripts\range_init.sqf";

enableEnvironment false;

rr_targetCenterOffset = [-0.001,0.21,.3684];
rr_targetCenterOffsetFront = [-0.001,0.15,.3684];

if(isServer) then {
    {
        if(getObjectTextures _x select 0 == "") then {
            _x setObjectTextureGlobal [0, "cav_ranges\data\7th.paa"];
        };
    } foreach allMissionObjects "Land_InfoStand_V2_F";

    if(!isMultiplayer) then {
        {
            if(!(isPlayer _x)) then {
                deleteVehicle _x;
            } else {
                _x allowDamage false;
            };
        } foreach allUnits;
    };

};
