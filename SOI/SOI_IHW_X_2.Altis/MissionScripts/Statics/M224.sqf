
params ["_turret"];

private _ammo =  [
    "NDS_M_6Rnd_60mm_HE",
    "NDS_M_6Rnd_60mm_HE_0",
    "NDS_M_6Rnd_60mm_SMOKE",
    "NDS_M_6Rnd_60mm_ILLUM"
];

{_turret removeMagazines _x;} forEach _ammo;

{for "_i" from 1 to 10 do {_turret addMagazine _x}} forEach _ammo;

_turret loadMagazine [[0], "NDS_W_M224_mortar", "NDS_M_6Rnd_60mm_HE"];

_turret execVM "MissionScripts\Statics\Turret.sqf";
