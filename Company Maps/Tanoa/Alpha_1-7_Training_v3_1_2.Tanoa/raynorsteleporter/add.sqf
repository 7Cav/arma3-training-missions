/*
 * Author: CW2.Raynor.D 
 * Adds the passed object(s)
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Action text <STRING>  
 * 
 * Alternative Syntax:
 * 0: List of objects <ARRAY of objects>
 * 1: Action text <STRING>  
 *
 * In alternate syntax, you can pass a list of (only!) objects, and the text for the actions will read
 * (text) 1, (text) 2, (text) 3, etc
 *
 * Example:
 * In object init field: _s = [this, "text"] call RAY_fnc_tp_add;
 * Elsewhere: [_object, "text"] call RAY_fnc_tp_add;
 * Alternate Syntax: [[_object1,_object2,_object3], "text"] call RAY_fnc_tp_add;
 */

params [["_object", nil, [objNull, []]], ["_text",nil,[""]]];

if(isNil "_object") exitWith {};
if(isNil "_text") exitWith {};

if(typeName _object == "ARRAY") then {
	{
		RAY_data_tp_list pushBack [_x, format ["%1 %2", _text, _forEachIndex + 1]];
	} foreach _object;
} else {
	RAY_data_tp_list pushBack [_object, _text];
};