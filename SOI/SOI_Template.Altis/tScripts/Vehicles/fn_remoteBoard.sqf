
#include "..\script_component.hpp";

params ["_vehicle", "_dest"];

[_vehicle, "GetIn", {
    params ["_vehicle", "_role", "_unit", "_turret"];
    [_unit, _thisArgs] spawn {
        params ["_unit","_thisArgs"];
        moveOut _unit;
        sleep 0.25;
        _unit moveInCargo _thisArgs;
    };
}, _dest] call CBA_fnc_addBISEventHandler;
