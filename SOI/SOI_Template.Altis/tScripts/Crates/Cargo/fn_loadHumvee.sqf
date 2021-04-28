
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

_humvee = "rhsusf_m998_w_4dr" createVehicle [0,0,0];

[_humvee, 2] call ace_cargo_fnc_setSize;

[_humvee, []] call FUNC(setCargo);

[_humvee] remoteExec ["tScripts_fnc_liftVehicle", 0];

[_humvee, _vehicle, true] call ace_cargo_fnc_loadItem;
