/*
 * Author: CPL.Brostrom.A
 * Show you your current platoon variable.
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * Platoon variable <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_getPlatoonVariable
 *
 */

#include "..\script_component.hpp";

params [
    ["_player", objNull, [objNull]]
];

private _return = "none";

if (_player getVariable QEGVAR(Cav,Trooper)) then {
    _return = _player getVariable QEGVAR(Cav,Platoon);
};

_return;
