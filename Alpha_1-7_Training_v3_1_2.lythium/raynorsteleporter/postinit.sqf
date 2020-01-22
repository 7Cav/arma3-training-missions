/*
 * Author: CW2.Raynor.D
 * Adds teleport actions to each object that requested it during object init.
 *
 * Arguments:
 * None
 *
 * Example:
 * Called via postinit only.
 */

{
	_activeObject = _x select 0;
	{
		_x params ["_dest","_destName"];
		if(_activeObject != _dest) then {
			_activeObject addAction [_destName, RAY_fnc_tp_run, _dest];
		};
	} foreach RAY_data_tp_list;
} foreach RAY_data_tp_list;
