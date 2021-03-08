
params ["_box"];

//[_box, true] call ace_arsenal_fnc_initBox;

[_box, -1] call ace_cargo_fnc_setSize;

[_box, false] call ace_dragging_fnc_setDraggable;
[_box, false] call ace_dragging_fnc_setCarryable;

_box allowdamage false;

_box addEventHandler ["ContainerClosed", {
    params ["_container", "_unit"];
    clearWeaponCargoGlobal _container;
    clearMagazineCargoGlobal _container;
    clearItemCargoGlobal _container;
    clearBackpackCargoGlobal _container;
}];
