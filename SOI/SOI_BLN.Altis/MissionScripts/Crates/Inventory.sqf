
if (!isServer)  exitwith {}; 

params ["_box"];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

private _inventory = [
    ["ACE_EarPlugs", 24],
    ["ItemMap", 12],
    ["ACE_MapTools", 12],
    ["ItemCompass", 12],
    ["ItemWatch", 12],
    ["ACE_Flashlight_XL50", 12]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
