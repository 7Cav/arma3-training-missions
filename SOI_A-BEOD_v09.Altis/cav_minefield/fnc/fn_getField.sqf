
#include "..\script_macros.hpp"

params ["_ctrlObject","_name"];

_fieldsData = GET_VAR_ARR(_ctrlObject,GVAR(fields));

if(count _fieldsData == 0) exitWith {LOG_1("%1 does not have fields array initialized. Cancelling search.",_ctrlObject); []};

_field = nil;
_fieldId = nil;
{
	if(_x select 2 == _name) then {
		_field = _x;
		_fieldId = _forEachIndex;
	};
} foreach _fieldsData;

if(isNil "_field") exitWith {LOG_2("Could not find field for getField %1 > %2",_ctrlObject,_name); []};
if(isNil "_fieldId") exitWith {LOG_2("Could not find _fieldId for getField %1 > %2",_ctrlObject,_name); []};

LOG_1("getField found %1",[_field,_fieldId])
[_field,_fieldId]