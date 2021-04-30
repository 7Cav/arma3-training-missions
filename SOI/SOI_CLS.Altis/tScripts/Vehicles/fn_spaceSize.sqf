
#include "..\script_component.hpp";

params ["_vehicle","_space","_size"];

if !(isServer) exitWith {};

[_vehicle, _space] call ace_cargo_fnc_setSpace;
[_vehicle, _size] call ace_cargo_fnc_setSize;
