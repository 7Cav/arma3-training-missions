
params ["_patient", "_mode"];

_counter = 0;
_woundcount = 0;
_wound = [];
_WoundType = [];

if (_mode == "CA") then {

	[_patient] call ace_medical_statemachine_fnc_enteredStateCardiacArrest;
	_woundcount = 1 + round random 2;
	_WoundType = ["bullet", "grenade", "vehiclecrash", "backblast", "stab", "punch", "falling", "unknown"];

	while {_counter <= _woundcount} do {
		_bodypart = ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"] call BIS_fnc_selectRandom;
		_Size = 0.8 + random 0.4;
		//_amount = 1 + round random 4;
		_Wound = _WoundType call BIS_fnc_selectRandom;
		[_patient, _Size, _bodypart, _Wound] call ace_medical_fnc_addDamageToUnit;
		_counter = _counter + 1;
	};

} else {

	if (_mode == "randomWound") then {
		_woundcount = 1 + round random 1;
		_WoundType = ["bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "unknown"];
	};

	if (_mode == "explosionWound") then {
		_woundcount = 1;
		_WoundType = ["grenade", "explosive", "shell"];
	};

	if (_mode == "gunshotWound") then {
		_woundcount = 1 + round random 2;
		_WoundType = ["bullet"];
	};

	if (_mode == "impactWound") then {
		_woundcount = 1 + round random 2;
		_WoundType = ["vehiclecrash", "backblast", "punch", "falling"];
	};

	if (_mode == "stabWound") then {
		_woundcount = 1 + round random 2;
		_WoundType = ["stab"];
	};

	while {_counter <= _woundcount} do {
		_bodypart = ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"] call BIS_fnc_selectRandom;
		_Size = 0.8 + random 0.4;
		//_amount = 1 + round random 4;
		_Wound = _WoundType call BIS_fnc_selectRandom;
		[_patient, _Size, _bodypart, _Wound] call ace_medical_fnc_addDamageToUnit;
		_counter = _counter + 1;
	};

};

[_patient] spawn {
	params ["_patient"];
	waituntil {(!alive _patient)};

	sleep 15;

	deletevehicle _patient;

};
