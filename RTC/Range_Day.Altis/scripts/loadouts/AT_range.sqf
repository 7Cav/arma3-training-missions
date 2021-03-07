_unit = _this select 1;

[_unit] execVM "scripts\loadouts\clearLoadout.sqf";
sleep 0.2;
_unit addBackpack "B_Carryall_cbr";
for "_i" from 1 to 1 do {_unit addMagazine "tf47_m3maaws_HEAT"};
_unit addWeapon "tf47_m3maaws";
for "_i" from 1 to 3 do {_unit addMagazine "tf47_m3maaws_HEAT"};

_unit selectWeapon (secondaryWeapon _unit);

private _safedWeapons = _unit getVariable ["ace_safemode_safedWeapons", []];
if(!((currentWeapon _unit) in _safedWeapons)) then {
    [_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
};
