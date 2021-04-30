
#include "..\script_component.hpp";

params ["_box"];

//[_box, true] call ace_arsenal_fnc_initBox;

[_box,"none",true,true,false,true] call cScripts_fnc_doStarterCrate;

_kits = [
	["Instructor", true],
	["ANPRC343"],
	["ANPRC152"],
	["ANPRC117F"],
	["VHFGSM"]
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
	["ACRE_PRC343", 12],
	["ACRE_PRC152", 12],
	["ACRE_PRC117F", 12],
	["ACRE_VHF30108", 12]
]] call FUNC(setCargo);
