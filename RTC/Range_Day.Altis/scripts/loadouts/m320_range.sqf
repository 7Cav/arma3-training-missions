_unit = _this select 1;

[_unit] execVM "scripts\loadouts\clearLoadout.sqf";

sleep 0.2;
_unit addWeapon "rhs_weap_m4a1_m320";

_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
for "_i" from 1 to 12 do {_unit addMagazine "rhs_mag_M441_HE"};

_unit selectWeapon (primaryWeapon _unit);

private _safedWeapons = _unit getVariable ["ace_safemode_safedWeapons", []];
if(!((currentWeapon _unit) in _safedWeapons)) then {
    [_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
};
