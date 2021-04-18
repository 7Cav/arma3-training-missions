
if (!isServer)  exitwith {}; 

params ["_box"];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

private _inventory = [
    ["ACE_EarPlugs", 24],
    ["ACRE_PRC343", 12],
    ["ACRE_PRC152", 12],
    ["ACRE_PRC117F", 12],
    ["ACRE_VHF30108", 12]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
