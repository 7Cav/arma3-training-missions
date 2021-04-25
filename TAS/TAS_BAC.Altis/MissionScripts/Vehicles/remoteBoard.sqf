
params ["_vehicle", "_dest"];

[_vehicle, "GetIn", {
<<<<<<< Updated upstream
    params ["_vehicle", "_role", "_unit"];
    moveOut _unit;
    sleep 0.1;
    [_unit, _thisArgs] remoteExec ["moveInCargo", 0];
=======
    params ["_vehicle", "_role", "_unit", "_turret"];
    [_unit, _thisArgs] spawn {
        params ["_unit","_thisArgs"];
        moveOut _unit;
        sleep 0.25;
        _unit moveInCargo _thisArgs;
    };
>>>>>>> Stashed changes
}, _dest] call CBA_fnc_addBISEventHandler;
