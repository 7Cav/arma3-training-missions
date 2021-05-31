
#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["ace_isEngineer", 0, true];
	player setVariable ["ACE_isEOD", 0, true];
	player setVariable ["ace_medical_medicClass", 0, true];

	[player, 0, 0, 0] call FUNC(acePermissions);

	player execVM "mScripts\Markers\hideMarkers.sqf";

};

if (_state == "respawn") then {

	player setVariable ["ace_isEngineer", 0, true];
	player setVariable ["ACE_isEOD", 0, true];
	player setVariable ["ace_medical_medicClass", 0, true];

	player execVM "mScripts\Markers\hideMarkers.sqf";

};
