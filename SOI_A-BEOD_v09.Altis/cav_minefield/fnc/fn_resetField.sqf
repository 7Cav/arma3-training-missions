
#include "..\script_macros.hpp"

params ["_target","_caller","_id","_args"];
_args params ["_ctrlObject","_trigger","_name","_count","_types","_minDistance"];

LOG_1("Resetting minefield for %1",_trigger);

[nil,nil,nil,[_ctrlObject,_trigger,_name,_count,_types,_minDistance]] call FUNC(clearField);

[nil,nil,nil,[_ctrlObject,_trigger,_name,_count,_types,_minDistance]] call FUNC(layField);

systemChat (format ["Minefield %1 Reset",_name]);