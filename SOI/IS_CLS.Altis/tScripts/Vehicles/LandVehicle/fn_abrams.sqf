
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

_vehicle addMagazine "rhs_mag_M1147";
_vehicle addMagazine "rhs_mag_200rnd_127x99_SLAP_mag_Tracer_Red";

[_vehicle, 4, -1] call FUNC(spaceSize);

["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

[_vehicle,
	[],
	[
		"DUKE_Hide",0,
		"IFF_Panels_Hide",0,
		"Miles_Hide",1
	]
] call BIS_fnc_initVehicle;

sleep 1;

[_vehicle, [
	["ToolKit", 2],
	["ACE_quikclot", 32],
	["ACE_tourniquet", 8],
	["ACE_splint", 8],
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 32],
	["SmokeShell", 8]
]] call FUNC(setCargo);
