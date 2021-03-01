params ["_act"];

if(isDedicated) exitWith {};

if(_act) then {
	player setVariable ["Cav_previousViewDistance", viewDistance];
	//systemChat format ["Set View Distance for CQB. Saved %1", viewDistance];
	setViewDistance 200;
} else {
	_distance = (player getVariable ["Cav_previousViewDistance", -1]);
	setViewDistance _distance;
	//systemChat format ["Restored view distance to %1", _distance];
};