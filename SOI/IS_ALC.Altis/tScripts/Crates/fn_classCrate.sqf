
#include "..\script_component.hpp";

params ["_box"];

//[_box, true] call ace_arsenal_fnc_initBox;

[_box,"none",true,true,false,true] call cScripts_fnc_doStarterCrate;

_kits = [
	["Instructor", true],
	["MachineGunner", true],
	["SquadLeader"],
	["TeamLeader"],
	["AutomaticRifleman"],
	["Grenadier"],
	["Rifleman"],
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

_box call FUNC(crateLock);

if !(isServer) exitWith {};

[_box, [
    ["rhs_weap_M136_hp", 2],
    ["ACE_EarPlugs", 9],
    ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 32],
    ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 24],
    ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 12],
    ["rhs_mag_M441_HE", 32],
    ["rhs_mag_M433_HEDP", 32],
    ["rhs_mag_m714_White", 8],
    ["rhs_mag_m715_Green",8],
    ["rhs_mag_m716_yellow",8],
    ["rhs_mag_m713_Red", 8],
    ["rhs_mag_M585_white", 8],
    ["rhs_mag_m661_green", 8],
    ["rhs_mag_m662_red", 8],
    ["ACE_40mm_Flare_ir", 8],
    ["ACE_HuntIR_M203", 4],
    ["rhs_mag_m67", 18],
    ["SmokeShell", 36],
    ["SmokeShellGreen", 6],
    ["SmokeShellYellow", 6],
    ["SmokeShellRed", 6],
    ["SmokeShellBlue", 6],
    ["SmokeShellOrange", 6],
    ["SmokeShellPurple", 6],
    ["ACE_Chemlight_HiWhite", 12],
    ["ACE_Chemlight_HiGreen", 12],
    ["ACE_Chemlight_HiYellow", 12],
    ["ACE_Chemlight_HiRed", 12],
    ["ACE_Chemlight_HiBlue", 12],
    ["ACE_Chemlight_UltraHiOrange", 12],
    ["ACE_Chemlight_IR", 12],
    ["B_IR_Grenade", 6]
]] call FUNC(setCargo);
