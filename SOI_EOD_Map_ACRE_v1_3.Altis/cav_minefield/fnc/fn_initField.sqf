#include "..\script_macros.hpp"

INFO_2("Initializing minefield: %1 (Build: %2)",_this,QUOTE(PROJECT_VERSION)); 

params ["_ctrlObject","_trigger","_name","_count","_types",["_minDistance",0]]; // ["_actionIds",[]],["_active",false],["_mines",[]],["_hook",scriptNull]

_fieldsData = GET_VAR_ARR(_ctrlObject,GVAR(fields));
LOG_VAR(_fieldsData);

// Check if the minefield is already defined on the ctrlObject

_field = nil;
_fieldId = nil;

if(count _fieldsData > 0) then {
	_fieldLookup = [_ctrlObject,_name] call FUNC(getField);
	if(count _fieldLookup == 2) then {
		_field = _fieldLookup select 0;
		_fieldId = _fieldLookup select 1;
	};
} else {
	LOG_1("%1 has no fieldData, adding new", _ctrlObject);
};

if(!isNil "_field") then { // matching minefield found, updating
	if(_field select 7) exitWith {WARNING_2("%1 %2 is currently set, aborting overwrite.",_ctrlObject,_name);};
	
	WARNING_3("%1 already has a minefield %2 assigned to it (%3). Replacing actions.",_ctrlObject,_name,_field);
	
	_field params ["_ctrlObject","_trigger","_name","_count","_types","_minDistance","_actions"];
	_actions params ["_addId","_resetId","_clearId"];
	
	_ctrlObject removeAction _addId; 
	LOG_2("%1 removing addId: %2", vehicleVarName _trigger, _addId);

	_ctrlObject removeAction _resetId; 
	LOG_2("%1 removing resetId: %2", vehicleVarName _trigger, _resetId);

	_ctrlObject removeAction _clearId;
	LOG_2("%1 removing clearId: %2", vehicleVarName _trigger, _clearId);
	
	_fieldId = 0;
	
	LOG_2("Overwriting minefield %1 as index %2 in data",_name,_fieldId);
} else { // minefield not found, creating
	_data = [_ctrlObject,_trigger,_name,_count,_types,_minDistance,[],false,[],scriptNull,false];
	_fieldId = _fieldsData pushBack _data;
	LOG_3("Pushing minefield to %1 named %2 - index %3", _ctrlObject, _name, _fieldId);
};

_newAddId = _ctrlObject addAction [
	format ["Lay Minefield %1",_name],
	FUNC(layField),
	[_ctrlObject,_trigger,_name,_count,_types,_minDistance],
	1.5,true,true,"",
	//FORMAT_3(QUOTE(!(((GET_VAR(%1,QUOTE(%2))) select %3) select 7)),vehicleVarName _ctrlObject,QGVAR(fields),_fieldId),
	format["!(((%1 getVariable [""%2"",nil]) select %3) select 7) && !(((%1 getVariable [""%2"",nil]) select %3) select 10)",
		vehicleVarName _ctrlObject,
		QGVAR(fields),
		_fieldId
	],
	5,
	false,
	""
];
_newResetId = _ctrlObject addAction [
	format ["Reset Minefield %1",_name],
	FUNC(resetField),
	[_ctrlObject,_trigger,_name,_count,_types,_minDistance],
	1.5,true,true,"",
	format["(((%1 getVariable [""%2"",nil]) select %3) select 7) && !(((%1 getVariable [""%2"",nil]) select %3) select 10)",
		vehicleVarName _ctrlObject,
		QGVAR(fields),
		_fieldId
	],
	5,
	false,
	""
];
_newClearId = _ctrlObject addAction [
	format ["Clear Minefield %1",_name],
	FUNC(clearField),
	[_ctrlObject,_trigger,_name,_count,_types,_minDistance],
	1.5,true,true,"",
	format["(((%1 getVariable [""%2"",nil]) select %3) select 7) && !(((%1 getVariable [""%2"",nil]) select %3) select 10)",
		vehicleVarName _ctrlObject,
		QGVAR(fields),
		_fieldId
	],
	5,
	false,
	""
];

_newActions = [_newAddId,_newResetId,_newClearId];
(_fieldsData select _fieldId) set [6, _newActions];
SET_VAR_G(_ctrlObject,GVAR(fields),_fieldsData);

LOG_2("%1 adding actions: %2", _ctrlObject, _newActions);

