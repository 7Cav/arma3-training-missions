
#include "..\script_macros.hpp"

params ["_target","_caller","_id","_args"];
_args params ["_ctrlObject","_trigger","_name","_count","_types","_minDistance"];

LOG_1("Clearing minefield for %1",_trigger);

_fieldLookup = [_ctrlObject,_name] call FUNC(getField);
_fieldLookup params [["_field",[]],["_fieldId",-1]];

// check if another thread is working on the minefield, if not mark it as so
if(_field select 10) exitWith {ERROR_1("%1 is still processing, aborting action", _field)};
_field set [10, true];

//terminate loop watching minefield
if(count _field > 9) then {
	_hook = _field select 9;
	if(!isNil "_hook") then {
		terminate _hook;
	} else {
		ERROR_1("%1 had nil hook",_field);
	};
} else {
	ERROR_1("%1 did not have correct size array to terminate hook",_field);
};

// delete still alive mines
if((count _field) > 8) then {
	_mines = (_field select 8);
	if(!isNil "_mines") then {
		{ deleteVehicle _x; } foreach _mines;
	} else {
		ERROR_1("%1 had nil mines",_field);
	};
} else {
	ERROR_1("%1 ",_field);
};

// delete mines that have been disarmed
{
	if(_x isKindOf "GroundWeaponHolder") then {
		deleteVehicle _x;
	};
} foreach list (_field select 1);

_field set [7, false];
_field set [10, false];

systemChat (format ["Minefield %1 Cleared",_name]);