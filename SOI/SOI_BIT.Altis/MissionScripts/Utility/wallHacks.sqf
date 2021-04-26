
params ["_unit"];

addMissionEventHandler ["Draw3D", {
    {
        if ((side _x == west) and ((_x distance player) < 10000)) then {
            drawIcon3D[
                getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
                [0.086, 0.333, 0.576, 0.5],
                [
                    getPos _x#0,
                    getPos _x#1,
                    (getPosATL _x#2) + 3
                ],
                1,
                1,
                0,
                name _x
            ];
        };
	} foreach allUnits;
}];

addMissionEventHandler ["Draw3D", {
    {
        if ((side _x == east) and ((_x distance player) < 500)) then {
            drawIcon3D[
                getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
                [0.494, 0.086, 0.086, 0.5],
                [
                    getPos _x#0,
                    getPos _x#1,
                    (getPosATL _x#2) + 3
                ],
                1,
                1,
                0,
                name _x
            ];
        };
	} foreach allUnits;
}];

addMissionEventHandler ["Draw3D", {
    {
        if ((side _x == resistance) and ((_x distance player) < 500)) then {
            drawIcon3D[
                getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
                [0.086, 0.494, 0.086, 0.5],
                [
                    getPos _x#0,
                    getPos _x#1,
                    (getPosATL _x#2) + 3
                ],
                1,
                1,
                0,
                name _x
            ];
        };
	} foreach allUnits;
}];

addMissionEventHandler ["Draw3D", {
    {
        if ((side _x == civilian) and ((_x distance player) < 500)) then {
            drawIcon3D[
                getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
                [0.416, 0.086, 0.494, 0.5],
                [
                    getPos _x#0,
                    getPos _x#1,
                    (getPosATL _x#2) + 3
                ],
                1,
                1,
                0,
                name _x
            ];
        };
	} foreach allUnits;
}];
