
#include "..\..\script_component.hpp";

params ["_vehicle"];

_vehicle call FUNC(liftVehicle);

if !(isServer) exitWith {};

_vehicle removeMagazines "rhs_mag_200rnd_127x99_mag_Tracer_Red";
for "_i" from 1 to 6 do {_vehicle addMagazine "rhs_mag_400rnd_127x99_mag_Tracer_Red"};
_vehicle loadMagazine [[0], "RHS_M2_CROWS_M151", "rhs_mag_400rnd_127x99_mag_Tracer_Red"];
_vehicle addMagazine "rhsusf_mag_L8A3_16";

[_vehicle, 6, 80] call FUNC(spaceSize);

[_vehicle,
	[], 
	[
		"Hide_Antenna_1",0,
		"Hide_Antenna_2",0,
		"Hide_Antenna_3",0,
		"Hide_CIP",1,
		"Hide_DEK",0,
		"Hide_DUKE",0,
		"Hide_ExDiff",0,
		"Hide_FCans",0,
		"Hide_WCans",0,
		"Hide_GPS",0,
		"Hide_PioKit",0,
		"Hide_StgBar",0,
		"Hide_STORM",0,
		"Hide_SuspCov",0,
		"Hide_Towbar",0,
		"Extend_Mirrors",0
	]
] call BIS_fnc_initVehicle;

_vehicle setObjectTextureGlobal [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"];
_vehicle setObjectTextureGlobal [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"];
_vehicle setObjectTextureGlobal [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\B_ca.paa"];
_vehicle setObjectTextureGlobal [15, ""];

sleep 1;

[_vehicle, [
	["rhs_weap_fgm148", 2],
	["rhs_fgm148_magazine_AT", 6], //Replace with Jav
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

for "_i" from 1 to 2 do {[_vehicle] call FUNC(loadAmmoBox)};

[_vehicle] remoteExec ["tScripts_fnc_liftVehicle", 0];
