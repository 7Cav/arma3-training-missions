
#include "..\..\script_component.hpp";

if (!isServer)  exitwith {}; 

params ["_veh", "_inv"];

clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

{
	_x params ["_ammo", "_amount"];
	_veh addItemCargoGlobal [_ammo, _amount];
} forEach _inv;
