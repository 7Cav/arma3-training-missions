/*
USAGE POLICY:
This mission and all its included scripts and assets are prohibited from being used or distributed, in whole or in part, outside of the 7th Cavalry without explicit written permission from the author (Raynor.D, or if he is no longer in the Cav, the 7th Cavalry 1st Battalion Battlestaff lead, who can be found on www.7Cav.us under Milpacs). The function noted in init.sqf as being written by Killzone Kid does not fall under this usage policy, but under Killzone Kid's usage policy (if one exists).
*/

/*
TODO:
Ready for MP beta test

249 long barrel, regular acog
    2x200 5.56

203:
    m4 w/m320
    RHS HE x12
    some in open, some in cover
    75 - 300 meters
    random, unknown range
    6 targets
    
Carl G (M3 MAAWS without sight):
    4 targets, static
    250, 350, 675, 800
    light apc
    known distance
    4 x rounds, carry all, close to ramp

rifle
    100 - 600
    more toward 6
    add acog to loadout
*/

#include "cScripts\script_component.hpp"

#ifdef DEBUG_MODE
    ["init Initializing."] call FUNC(logInfo);
    [formatText["cScripts Version %1 is running.",VERSION]] call FUNC(logInfo);
#endif

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

// Check if the mission is running on multiplayer.
if (!isMultiplayer) then {
    ["Mission is running on singelplayer enviroment."] call FUNC(logWarning);
};

// Applying AI difficultlies
if (isMultiplayer) then {
    switch (cScripts_Settings_setAiSystemDifficulty) do {
        // Day
        case (0): {
            #ifdef DEBUG_MODE
                ["Applying DAY AI to units."] call FUNC(logInfo);
            #endif
            {
                _x setSkill ["aimingspeed",     0.420];
                _x setSkill ["aimingaccuracy",  0.338];
                _x setSkill ["aimingshake",     0.360];
                _x setSkill ["spottime",        0.420];
                _x setSkill ["spotdistance",    1.000];
                _x setSkill ["commanding",      1.0];
                _x setSkill ["general",         1.0];
            } forEach allUnits;
        };
        // Night / Jungle
        case (1): {
            #ifdef DEBUG_MODE
                ["Applying NIGHT/JUNGLE AI to units."] call FUNC(logInfo);
            #endif
            {
                _x setSkill ["aimingspeed",     0.015];
                _x setSkill ["aimingaccuracy",  0.100];
                _x setSkill ["aimingshake",     0.280];
                _x setSkill ["spottime",        0.015];
                _x setSkill ["spotdistance",    0.015];
                _x setSkill ["commanding",      0.2];
                _x setSkill ["general",         1.0];
            } forEach allUnits;
        };
    };
} else {
    ["Mission is running on singleplayer environment - AI setting is not applied."] call FUNC(logWarning);
};

// Enable debug mode if on multiplayer.
if (isMultiplayer) then {
    #ifdef DEBUG_MODE
        ["Debug mode is currently active."] call FUNC(logWarning);
        titleText ["Warning! cScripts debug mode is active.", "PLAIN DOWN", 3];
        logEntities;
    #endif
};

#ifdef DEBUG_MODE
    ["init initialization completed."] call FUNC(logInfo);
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
            _x setObjectTextureGlobal [0, "image\7th.paa"];
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
