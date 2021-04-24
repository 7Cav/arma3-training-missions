
params ["_vehicle", "_dest"];

[_vehicle, "GetIn", {
    params ["_vehicle", "_role", "_unit"];
    moveOut _unit;
    sleep 0.1;
    _unit moveInCargo _thisArgs;
}, _dest] call CBA_fnc_addBISEventHandler;
