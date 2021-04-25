
params ["_vehicle", "_dest"];

[_vehicle, "GetIn", {
    params ["_vehicle", "_role", "_unit"];
    moveOut _unit;
    sleep 0.1;
    [_unit, _thisArgs] remoteExec ["moveInCargo", 0];
}, _dest] call CBA_fnc_addBISEventHandler;
