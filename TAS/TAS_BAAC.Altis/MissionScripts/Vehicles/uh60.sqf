
params ["_vehicle"];

if !(isServer) exitWith {};

sleep 1;

_vehicle allowDamage false;

[_vehicle, 4] call ace_cargo_fnc_setSpace; //Sets cargo space
[_vehicle, -1] call ace_cargo_fnc_setSize; //Sets cargo size

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

_vehicle addItemCargoGlobal ["ACE_rope36", 4];
_vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 48];
_vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 16];
_vehicle addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_soft_pouch", 12];
_vehicle addMagazineCargoGlobal ["rhs_mag_m67", 16];
_vehicle addMagazineCargoGlobal ["SmokeShell", 32];
_vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
_vehicle addMagazineCargoGlobal ["ACE_Chemlight_IR", 8];
_vehicle addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 32];
_vehicle addMagazineCargoGlobal ["rhs_mag_m713_Red", 8];
_vehicle addMagazineCargoGlobal ["ACE_40mm_Flare_ir", 8];
_vehicle addMagazineCargoGlobal ["ACE_HuntIR_M203", 4];

sleep 1;

for "_i" from 1 to 2 do {
    _respawn = getMarkerPos "respawn_west";
    _rand_1 = random 1000;
    _rand_2 = random 1000;
    _crate_2 = "Box_NATO_Ammo_F" createVehicle [_respawn#0 +_rand_1, _respawn#1 +_rand_2, 1000];

    [_crate_2, 2] call ace_cargo_fnc_setSize;

    clearWeaponCargoGlobal _crate_2;
    clearMagazineCargoGlobal _crate_2;
    clearItemCargoGlobal _crate_2;
    clearBackpackCargoGlobal _crate_2;

    _crate_2 addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 24];
    _crate_2 addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 8];
    _crate_2 addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_soft_pouch", 6];
    _crate_2 addMagazineCargoGlobal ["rhs_mag_m67", 8];
    _crate_2 addMagazineCargoGlobal ["SmokeShell", 16];
    _crate_2 addMagazineCargoGlobal ["SmokeShellBlue", 2];
    _crate_2 addMagazineCargoGlobal ["ACE_Chemlight_IR", 4];
    _crate_2 addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 16];
    _crate_2 addMagazineCargoGlobal ["rhs_mag_m713_Red", 4];
    _crate_2 addMagazineCargoGlobal ["ACE_40mm_Flare_ir", 4];
    _crate_2 addMagazineCargoGlobal ["ACE_HuntIR_M203", 2];

    [_crate_2, _vehicle, true] call ace_cargo_fnc_loadItem;

};
