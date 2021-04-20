
params ["_turret"];

private _ammo =  [
    "rhs_mag_100rnd_127x99_mag_Tracer_Red",
    "rhs_mag_100rnd_127x99_SLAP_mag",
    "rhs_mag_200rnd_127x99_mag_Tracer_Red",
    "rhs_mag_200rnd_127x99_SLAP_mag",
    "100Rnd_127x99_mag_Tracer_Red"
];

{_turret removeMagazines _x;} forEach _ammo;

{for "_i" from 1 to 20 do {_turret addMagazine _x}} forEach _ammo;

_turret loadMagazine [[0], "RHS_M2", "rhs_mag_100rnd_127x99_mag_Tracer_Red"];

_turret loadMagazine [[0], "HMG_M2_Mounted", "100Rnd_127x99_mag_Tracer_Red"];

_turret execVM "MissionScripts\Statics\Turret.sqf";
