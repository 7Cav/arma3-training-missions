
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

_ammoBox = "ACE_medicalSupplyCrate_advanced" createVehicle [0,0,0];

[_ammoBox, -1] call ace_cargo_fnc_setSize;

[_ammoBox, [
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

[_ammoBox, _vehicle, true] call ace_cargo_fnc_loadItem;
