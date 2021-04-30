
#include "..\script_component.hpp";

params ["_unit","_engineer","_eod","_medical"];

if (typeOf _unit == "Cav_B_Training_Cadet_F") then {
	_unit setVariable ['ace_isEngineer', _engineer, true];
	_unit setVariable ['ACE_isEOD', _eod, true];
	_unit setVariable ['ace_medical_medicClass', _medical, true];
};
