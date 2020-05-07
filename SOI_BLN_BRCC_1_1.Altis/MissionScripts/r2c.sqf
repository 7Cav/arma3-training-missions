_course = _this select 3;

{
	_grp = createGroup east;

	_u = _grp createUnit ["rhs_msv_sergeant",getMarkerPos format["r2c%1_%2_1",_course,_x], [], 0, "FORM"];
	null = [_u] execVM "MissionScripts\AISkill.sqf";	
	zeus_module1 addCuratorEditableObjects [[_u],true];
	zeus_module2 addCuratorEditableObjects [[_u],true];
	zeus_module3 addCuratorEditableObjects [[_u],true];
	zeus_module4 addCuratorEditableObjects [[_u],true];
	
	_u = _grp createUnit ["rhs_msv_arifleman",getMarkerPos format["r2c%1_%2_2",_course,_x], [], 0, "FORM"];	
	null = [_u] execVM "MissionScripts\AISkill.sqf";	
	zeus_module1 addCuratorEditableObjects [[_u],true];
	zeus_module2 addCuratorEditableObjects [[_u],true];
	zeus_module3 addCuratorEditableObjects [[_u],true];
	zeus_module4 addCuratorEditableObjects [[_u],true];
	
	_grp setBehaviour "STEALTH";
	_grp setFormDir 270;
} forEach [1,2,3,4,5,6];