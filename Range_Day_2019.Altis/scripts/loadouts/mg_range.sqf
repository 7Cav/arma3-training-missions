_unit = _this select 1;

[_unit] execVM "scripts\loadouts\clearLoadout.sqf";
sleep 0.2;
_unit addWeapon "rhs_weap_m249_pip_L_para";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
for "_i" from 1 to 2 do {_unit addMagazine "rhs_200rnd_556x45_M_SAW"};

_unit selectWeapon (primaryWeapon _unit);

sleep 0.5;

private _safedWeapons = _unit getVariable ["ace_safemode_safedWeapons", []];
if(!((currentWeapon _unit) in _safedWeapons)) then {
    [_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
};
