
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

_ammoBox = "Box_NATO_Ammo_F" createVehicle [0,0,0];

[_ammoBox, 2] call ace_cargo_fnc_setSize;

[_ammoBox, [
	["rhs_mag_30Rnd_556x45_M855A1_PMAG", 24],
	["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 8],
	["rhsusf_200rnd_556x45_mixed_soft_pouch", 6],
	["rhs_mag_m67", 8],
	["SmokeShell", 16],
	["SmokeShellBlue", 2],
	["ACE_Chemlight_IR", 4],
	["rhs_mag_M433_HEDP", 16],
	["rhs_mag_m713_Red", 4],
	["ACE_40mm_Flare_ir", 4],
	["ACE_HuntIR_M203", 2]
]] call FUNC(setCargo);

[_ammoBox, _vehicle, true] call ace_cargo_fnc_loadItem;
