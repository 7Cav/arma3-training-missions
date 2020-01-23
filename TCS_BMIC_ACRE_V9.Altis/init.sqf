#include "cScripts\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This is the mission init.sqf this is run witout exceptions on mission start.
 * Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.
 * Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order
 */

#ifdef DEBUG_MODE
    ["init Initializing."] call FUNC(logInfo);
    [formatText["cScripts Version %1 is running.",VERSION]] call FUNC(logInfo);
    [formatText["Debug mode is currently active."]] call FUNC(logWarning);
    logEntities;
#endif

enableSaving [false, false];
tawvd_disablenone = true;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

// Applying AI difficultlies if on multiplayer
if (isMultiplayer) then {
    switch (cScripts_Settings_setAiSystemDifficulty) do {
        // Day
        case (0): {
            #ifdef DEBUG_MODE
                ["Applying DAY AI to units."] call FUNC(logInfo);
            #endif
            {
                _x setSkill ["aimingspeed",     0.420];
                _x setSkill ["aimingaccuracy",  1.000];
                _x setSkill ["aimingshake",     0.360];
                _x setSkill ["spottime",        1.000];
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
                _x setSkill ["aimingaccuracy",  1.000];
                _x setSkill ["aimingshake",     0.280];
                _x setSkill ["spottime",        0.015];
                _x setSkill ["spotdistance",    0.015];
                _x setSkill ["commanding",      0.2];
                _x setSkill ["general",         1.0];
            } forEach allUnits;
        };
    };
} else {
    ["Mission is running on singelplayer enviroment. Some systems may differ of have been turned off."] call FUNC(logWarning);
};

#ifdef DEBUG_MODE
    ["init initialization completed."] call FUNC(logInfo);
#endif

/* APPLY STUFF ONLY BELOW THIS LINE */
range_PR = false;
if (typeOf player == "rhsusf_usmc_marpat_wd_crewman") then {
	player addAction ["<t color='#00ff00'>Open Range Controls</t>",{player setVariable ["Cav_showRangeActions",true]},nil,1,false,false,"","(typeOf player == 'rhsusf_usmc_marpat_wd_crewman') && !(player getVariable ['Cav_showRangeActions',false])"];
	player addAction ["<t color='#ff0000'>Collapse Range Controls</t>",{player setVariable ["Cav_showRangeActions",false]},nil,250,false,true,"","(typeOf player == 'rhsusf_usmc_marpat_wd_crewman') && (player getVariable ['Cav_showRangeActions',false])"];
	player addAction ["<t color='#00ff00'>    Loading Under Fire On</t>",{[[],"MissionScripts\pr.sqf"] remoteExec ["BIS_fnc_execVM"]},nil,245,false,true,"","(typeOf player == 'rhsusf_usmc_marpat_wd_crewman') && (player getVariable ['Cav_showRangeActions',false]) && !range_PR"];
	player addAction ["<t color='#ff0000'>    Loading Under Fire Off</t>",{[[],"MissionScripts\pr.sqf"] remoteExec ["BIS_fnc_execVM"]},nil,245,false,true,"","(typeOf player == 'rhsusf_usmc_marpat_wd_crewman') && (player getVariable ['Cav_showRangeActions',false]) && range_PR"];
};