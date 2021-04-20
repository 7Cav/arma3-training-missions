
params ["_turret"];

private _ammo =  [
    "8Rnd_82mm_Mo_shells",
    "8Rnd_82mm_Mo_guided",
    "8Rnd_82mm_Mo_LG",
    "8Rnd_82mm_Mo_Smoke_white",
    "8Rnd_82mm_Mo_Flare_white"
];

{_turret removeMagazines _x;} forEach _ammo;

{for "_i" from 1 to 10 do {_turret addMagazine _x}} forEach _ammo;

_turret loadMagazine [[0], "mortar_82mm", "8Rnd_82mm_Mo_shells"];

_turret execVM "MissionScripts\Statics\Turret.sqf";
