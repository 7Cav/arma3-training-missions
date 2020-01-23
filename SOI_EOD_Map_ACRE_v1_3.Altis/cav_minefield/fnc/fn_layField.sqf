#include "..\script_macros.hpp"

params ["_target","_caller","_id","_args"];
_args params ["_ctrlObject","_trigger","_name","_count","_types",["_minDistance",0],["_actionIds",[]],["_active",false],["_mines",[]],["_hook",scriptNull],["_processing",false]];

LOG_1("Laying minefield: %1",_this); 

_fieldLookup = [_ctrlObject,_name] call FUNC(getField);
_fieldLookup params [["_field",[]],["_fieldId",-1]];

// check if another thread is working on the minefield, if not mark it as so
if(_field select 10) exitWith {ERROR_1("%1 is still processing, aborting action", _field)};
_field set [10, true];

// set active flag to true to flip actions
_field set [7, true];

//if(true) exitWith {};

//sleep 1;

_newMines = [];
_minesPos = [];
for "_i" from 0 to (_count - 1) do {
	_pos = [];
	if(_i == 0 || _minDistance == 0) then {
		_pos = ([_trigger] call BIS_fnc_randomPosTrigger);
	} else {
		_found = false;
		_tries = 0;
		while{!_found && _tries < 1000} do {
			_tooClose = false;
			_pos = ([_trigger] call BIS_fnc_randomPosTrigger);
			{
				if(_pos distance _x < _minDistance) exitWith {_tooClose = true;};
			} foreach _minesPos;
			
			if(_tooClose) then {
				_tries = _tries + 1;
			} else {
				_found = true;
			};
		};
	};

	_type = (_types select (floor random (count _types)));
	_mine = (_type createvehicle _pos);
	_mine setDir (random 360);
	_newMines pushback _mine;
	_minesPos pushBack _pos;
};

_hook = [_trigger,_name, _field, _newMines] spawn {
	params ["_trigger","_name","_field","_newMines"];
	
	LOG_3("Watching array: %1 > %2 (Count: %3)", _trigger, _newMines, count _newMines);

	_cleared = false;
	while{!_cleared} do {
		sleep 1;
		_continue = true;
		{
			if(!isNull _x) exitWith {_continue = false};
		} foreach _newMines;
		if(_continue) then {_cleared = true};
	};
	
	sleep 3;
	
	{
		deleteVehicle _x;
	} foreach nearestObjects [_trigger,["GroundWeaponHolder"],((triggerArea _trigger select 0) max (triggerArea _trigger select 1)) * 2];

	_field set [7, false];
	hint format ["Minefield (%1) cleared! Good job!", _name];
};

_field set [8,_newMines];
_field set [9,_hook];
_field set [10, false];


