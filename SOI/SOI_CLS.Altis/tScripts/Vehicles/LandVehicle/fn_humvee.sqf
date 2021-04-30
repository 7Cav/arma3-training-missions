
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

[_vehicle, 4, 40] call FUNC(spaceSize);

["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

[_vehicle,
	[],
	[
		"hide_rhino",1,
		"DUKE_Hide",0,
		"iff_hide",1,
		"dwf_kit_Hide",1,
		"snorkel_lower",1,
		"BFT_Hide",0,
		"Antennas_Hide",0,
		"hide_spare",0,
		"hide_CIP",1,
		"Hide_A2Bumper",1,
		"Hide_Brushguard",0
	]
] call BIS_fnc_initVehicle;

sleep 1;

if ((typeOf _x == "rhsusf_m998_d_2dr_fulltop") or (typeOf _x == "rhsusf_m998_w_2dr_fulltop")) then {

	params ["_vehicle"];

	[_vehicle, 6, 60] call FUNC(spaceSize);

	[_vehicle, [
		["ACE_personalAidKit", 20],
		["ACE_surgicalKit", 4],
		["ACE_salineIV", 60],
		["ACE_morphine", 40],
		["ACE_epinephrine", 40],
		["ACE_adenosine", 12],
		["ACE_splint", 16],
		["ACE_tourniquet", 16],
		["ACE_elasticBandage", 100],
		["ACE_quikclot", 100],
		["ACE_bodyBag", 12],
		["ACE_CableTie", 12]
	]] call FUNC(setCargo);

	for "_i" from 1 to 1 do {[_vehicle] call FUNC(loadAmmoBox)};
	for "_i" from 1 to 1 do {[_vehicle] call FUNC(loadMedicalBox)};

	[_vehicle] remoteExec ["tScripts_fnc_liftVehicle", 0];

	if (_vehicle == _vehicle) exitWith {};

} else {

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

	for "_i" from 1 to 1 do {[_vehicle] call FUNC(loadAmmoBox)};

	[_vehicle] remoteExec ["tScripts_fnc_liftVehicle", 0];
};