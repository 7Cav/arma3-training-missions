
params ["_turret"];

private _ammo =  [
    "rhs_mag_TOW",
    "rhs_mag_TOWB",
    "rhs_mag_ITOW",
    "rhs_mag_TOW2",
    "rhs_mag_TOW2A",
    "rhs_mag_TOW2B",
    "rhs_mag_TOW2B_AERO",
    "rhs_mag_TOW2BB"
];

{_turret removeMagazines _x;} forEach _ammo;

{for "_i" from 1 to 10 do {_turret addMagazine _x}} forEach _ammo;

_turret loadMagazine [[0], "rhs_weap_TOW_Launcher_static", "rhs_mag_TOW2a"];

_turret execVM "MissionScripts\Statics\Turret.sqf";
