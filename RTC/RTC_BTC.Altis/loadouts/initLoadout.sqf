
// DO NOT RUN GLOBALLY
// Designed use is in initPlayerLocal.sqf or onPlayerRespawn.sqf, which run only on that player's client when he spawns

/*
In initPlayerLocal.sqf:
[player] execVM "initLoadout.sqf";

cStart.sqf syntax:
_id = ["TRP", _player] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf";
*/

_unit = _this select 0;

_unitType = typeOf _unit;

switch (_unitType) do {
	case "B_Soldier_F" : { // Student
		[_unit] execVM "loadouts\trooper.sqf";
	};
	case "B_recon_medic_F" : { // Cadre
		["CAD", _unit] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf";
	};
	case "B_recon_F" : { // Drill Instructor
		["DI", _unit] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf";
	};
	case "B_soldier_M_F" : { // Practice
		[_unit] execVM "loadouts\practice.sqf";
	};
};