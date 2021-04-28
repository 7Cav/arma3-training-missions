
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

[_vehicle] call ace_fastroping_fnc_equipFRIES;

_vehicle setvariable ["ace_medical_isMedicalVehicle", true, true];

[_vehicle,
	[],
	[
		"AddBobhead",1,
		"hide_NoFear",0,
		"hide_SGDM",0,
		"hide_SN_nose",1,
		"hide_clan",0
	]
] call BIS_fnc_initVehicle;

_vehicle animateSource ['ExtLongL', 1,true];
_vehicle animateSource ['ExtLongR', 1,true];
