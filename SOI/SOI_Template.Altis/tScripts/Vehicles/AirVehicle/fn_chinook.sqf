
#include "..\..\script_component.hpp";

params ["_vehicle"];

if !(isServer) exitWith {};

[_vehicle] call ace_fastroping_fnc_equipFRIES;

_vehicle setvariable ["ace_medical_isMedicalVehicle", true, true];
