/*
 * Author: CW2.Raynor.D
 * Initializes the zeus list so objects can add themselves to it during init.
 *
 * Arguments:
 * None
 *
 * Example:
 * Called via preinit only.
 */

RAY_data_vs_zeus_list = [];
RAY_data_ramps = [];
call compile preprocessFileLineNumbers "RaynorsVehicleSpawn\!spawnerList.sqf";