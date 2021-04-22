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

/*
if((typeOf player) in ["B_Soldier_F"]) then {
    {
        _x setRadioMsg "NULL";
    } foreach [0,1,2,3,4,5,6,7,8,9];
    ([0,0,0] nearestObject 1633716) setVariable ['bis_disabled_Door_1',1,false];
};
*/

//[] execVM "scripts\targetPopManual\init.sqf";
//["init"] execVM "scripts\ATRange.sqf";
//[] execVM "scripts\range\init.sqf";
[] execVM "scripts\tp\addTpActions.sqf";
[] execVM "range_init.sqf";

enableEnvironment false;
rr_targetCenterOffset = [-0.001,0.21,.3684];
rr_targetCenterOffsetFront = [-0.001,0.15,.3684];

if(isServer) then {
    //{
    //    _x setObjectTextureGlobal    [0, "image\range_target.paa"];
    //} foreach allMissionObjects "TargetP_Inf_F";
    //{
    //    _x setObjectTextureGlobal    [0, "image\range_target.paa"];
    //} foreach allMissionObjects "TargetP_Inf3_Acc2_NoPop_F";

    /* Not reliable due to locality
    {
        _lane = _x getVariable "range_lane";
        _x addEventHandler ["Hit", format ["
            (_this select 0) spawn {
                sleep 1;
                if(_this animationPhase 'terc' > 0.5 && !(_this getVariable ['hitStatus','up'] isEqualTo 'down')) then {
                    m320_rangeDataObject setVariable ['lane_%1_hits', (m320_rangeDataObject getVariable 'lane_%1_hits') + 1, true];
                    _this setVariable ['hitStatus' , 'down', true];
                };
            };
        ", _lane]];
    } foreach allMissionObjects "TargetP_Inf4_NoPop_F";
    */

    {
        if(getObjectTextures _x select 0 == "") then {
            _x setObjectTextureGlobal [0, "cav_ranges\data\7th.paa"];
        };
    } foreach allMissionObjects "Land_InfoStand_V2_F";

    if(!isMultiplayer) then {
        {
            if(!(isPlayer _x)) then {
                deleteVehicle _x;
                /*
                _x disableAI "MOVE";
                _x disableAI "ANIM";
                _x disableAI "TARGET";
                */
            } else {
                _x allowDamage false;
            };
        } foreach allUnits;
    };

    [] execVM "scripts\makeWalls.sqf";

};
