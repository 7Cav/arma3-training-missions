
params ["_turret"];

_turret removeMagazines "RHS_48Rnd_40mm_MK19_M430A1";

private _ammo =  [
    "RHS_48Rnd_40mm_MK19",
    "RHS_48Rnd_40mm_MK19_M1001",
    "RHS_48Rnd_40mm_MK19_M430A1",
    "RHS_48Rnd_40mm_MK19_M430I",
    "RHS_96Rnd_40mm_MK19",
    "RHS_96Rnd_40mm_MK19_M1001",
    "RHS_96Rnd_40mm_MK19_M430A1",
    "RHS_96Rnd_40mm_MK19_M430I"
];

{_turret removeMagazines _x;} forEach _ammo;

{for "_i" from 1 to 10 do {_turret addMagazine _x}} forEach _ammo;

_turret loadMagazine [[0], "RHS_MK19", "RHS_48Rnd_40mm_MK19_M430A1"];

_turret execVM "MissionScripts\Statics\Turret.sqf";
