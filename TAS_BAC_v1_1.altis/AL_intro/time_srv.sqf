// by ALIAS
if (!isServer) exitWith {};

_check_time = _this select 0;

curr_time = false;
publicVariable "curr_time";

if (_check_time>0) then 
	{
	sleep _check_time;
	curr_time = true;
	publicVariable "curr_time";
	};