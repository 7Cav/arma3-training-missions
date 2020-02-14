/*
 * Author: CW2.Raynor.D
 * Adds an object as editable by all tracked curator modules.
 *
 * Arguments:
 * 0 - OBJECT (Object) - Item to be added as editable
 *
 * Example:
 * 
 */

_success = params [["_object",objNull,[objNull]]];

if(isServer) then {
	if(!_success) exitWith {diag_log format ["RAY_VS: addEditable.sqf was not passed an object (%1), exiting.", _this]};
	if(_object == objNull) exitWith {diag_log "RAY_VS: addEditable.sqf was passed a null object, exiting."};
	
	if(isNil "RAY_data_vs_zeus_list") exitWith {diag_log "RAY_VS: addEditable.sqf: RAY_data_vs_zeus_list was null"};
	if(count RAY_data_vs_zeus_list < 1) exitWith {diag_log "RAY_VS: addEditable.sqf: RAY_data_vs_zeus_list was empty"};

	diag_log format ["RAY_VS: Adding %1 to curators", _object];
	
	{
		_x addCuratorEditableObjects [[_object], true];
	} foreach RAY_data_vs_zeus_list;
} else {
	if(!_success) exitWith {diag_log format ["RAY_VS: addEditable.sqf was not passed an object (%1), exiting.", _this]};
	if(_object == objNull) exitWith {diag_log "RAY_VS: addEditable.sqf was passed a null object, exiting."};
	
	diag_log format ["RAY_VS: Requesting server add %1 to all curators", _object];
	[_object] remoteExec ["RAY_VS_fnc_addeditable", 2];
};