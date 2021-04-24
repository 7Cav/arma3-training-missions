
params ["_vehicle"];

if !(isServer) exitWith {};

sleep 1;

[_vehicle, 100] call ace_cargo_fnc_setSpace; //Sets cargo space
[_vehicle, -1] call ace_cargo_fnc_setSize; //Sets cargo size

_vehicle addWeaponTurret ["FIR_SUU25",[-1]];
_vehicle addMagazineTurret ["FIR_SUU25_P_8rnd_M",[-1]];
_vehicle addWeaponTurret ["FIR_SUU25",[0]];
_vehicle addMagazineTurret ["FIR_SUU25_P_8rnd_M",[0]];

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

for "_i" from 1 to 2 do {
    _respawn = getMarkerPos "respawn_west";
    _rand_1 = random 1000;
    _rand_2 = random 1000;
    _crate = "rhsusf_m998_w_4dr" createVehicle [_respawn#0 +_rand_1, _respawn#1 +_rand_2, 1000];

    [_crate, 40] call ace_cargo_fnc_setSize;

    clearWeaponCargoGlobal _crate;
    clearMagazineCargoGlobal _crate;
    clearItemCargoGlobal _crate;
    clearBackpackCargoGlobal _crate;

    [_crate, _vehicle, true] call ace_cargo_fnc_loadItem;

    sleep 1;

    _crate addAction ["<t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\unloadVehicle_ca'/> Raise Vehicle", {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        _pos = getPos _target;
        _target setPos [_pos#0, _pos#1, _pos#2 + 1.5];
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "(getPos _target)#2 < -0.25", 	// condition
    5,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
    ];
};

sleep 1;

for "_i" from 1 to 4 do {
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
