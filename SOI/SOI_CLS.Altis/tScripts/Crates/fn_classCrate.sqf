
#include "..\script_component.hpp";

params ["_box"];

//[_box, true] call ace_arsenal_fnc_initBox;

[_box,"none",true,true,false,true] call cScripts_fnc_doStarterCrate;

_kits = [
	["Instructor", true],
	["MedicTeamLeader", true],
	["Medic", true],
	["PlatoonMedic", true],
	["CombatLifeSaver"]
];

{
	_x params ["_kit", "_instr"];
	[_box, _instr] call compile preProcessFile format ["tScripts\Crates\Kits\fn_kit%1.sqf", _kit];
} forEach _kits;

[_box, -1] call ace_cargo_fnc_setSize;

[_box, false] call ace_dragging_fnc_setDraggable;
[_box, false] call ace_dragging_fnc_setCarryable;

_box allowdamage false;

if !(isServer) exitWith {};

[_box, [
	["ACE_quikclot", 240],
	["ACE_elasticBandage", 240],
	["ACE_packingBandage", 240],
	["ACE_tourniquet", 120],
	["ACE_splint", 120]
]] call FUNC(setCargo);
