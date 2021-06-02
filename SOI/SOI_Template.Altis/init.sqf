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

#include "tScripts\script_component.hpp"

if(isServer) then {

	if(!isMultiplayer) then {
		{if(!(isPlayer _x)) then {deleteVehicle _x}} foreach allUnits;
	};

	{_x setObjectTextureGlobal [0, "z\cav\addons\flag\data\flag_00_ca.paa"]} foreach allMissionObjects "Land_InfoStand_V2_F";
	{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} foreach allMissionObjects "Land_Billboard_F";
	{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} foreach allMissionObjects "Land_PCSet_01_screen_F";
	{_x setObjectTextureGlobal [0, "Data\MissionLogo.paa"]} foreach allMissionObjects "Land_Laptop_unfolded_F";

};

[] call FUNC(vehicleInit);