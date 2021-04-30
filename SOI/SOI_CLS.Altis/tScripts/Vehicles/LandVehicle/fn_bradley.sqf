
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

[_vehicle, 4, -1] call FUNC(spaceSize);

["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

sleep 1;

[_vehicle, [
	["rhs_weap_M136_hp", 2],
	["ACE_quikclot", 60],
	["ACE_splint", 8],
	["ToolKit", 1],
	["rhs_mag_30Rnd_556x45_M855A1_PMAG", 32],
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
