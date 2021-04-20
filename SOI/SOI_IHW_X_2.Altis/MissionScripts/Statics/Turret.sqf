
params ["_turret"];

[_turret, -1] call ace_cargo_fnc_setSize;

[_turret, false] call ace_dragging_fnc_setDraggable;
[_turret, false] call ace_dragging_fnc_setCarryable;

_turret allowdamage false;

_turret enableWeaponDisassembly false;
