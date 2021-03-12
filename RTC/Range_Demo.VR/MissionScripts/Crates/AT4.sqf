
params ["_box"];

//[_box, true] call ace_arsenal_fnc_initBox;

[_box, -1] call ace_cargo_fnc_setSize;

[_box, false] call ace_dragging_fnc_setDraggable;
[_box, false] call ace_dragging_fnc_setCarryable;

_box allowdamage false;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

private _inventory = [
    ["rhs_weap_M136_hp", 3]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;
