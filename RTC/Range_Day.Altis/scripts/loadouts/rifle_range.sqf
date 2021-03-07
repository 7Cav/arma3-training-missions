_unit = _this select 1;

[_unit] execVM "scripts\loadouts\clearLoadout.sqf";

sleep 0.2;

_unit addWeapon "rhs_weap_m4a1_carryhandle";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_top";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
_unit addPrimaryWeaponItem "rhsusf_acc_sfmb556";
for "_i" from 1 to 2 do {_unit addMagazine ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 20];};
for "_i" from 1 to 6 do {_unit addMagazine ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 0];};

_unit selectWeapon (primaryWeapon _unit);

sleep 0.5;

private _safedWeapons = _unit getVariable ["ace_safemode_safedWeapons", []];
if(!((currentWeapon _unit) in _safedWeapons)) then {
    [_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
};
