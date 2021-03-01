
_unit = _this select 0;

waitUntil {!isNil "rr_rangeData"};
_targets = ((rr_rangeData select 0) select 0) select 4;

doStop _unit;
_unit disableAI "MOVE";
_unit addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
_unit setUnitPos "DOWN";
_unit disableAI "TARGET";
_unit disableAI "AUTOTARGET";
_unit setBehaviour "COMBAT";
_unit setCombatMode "YELLOW";

_targetCenterOffset = [-0.001,0.21,.3684];

while{true} do {
	_unit doTarget objNull;
	waitUntil {(player getVariable ["rr_bulletCamSubscription", -1]) >= 0};
	
	_target = _targets select (floor(random 8));
	_unit reveal _target;
	_unit doTarget _target;
	_unit doWatch _target;
	sleep 0.5;
	
	_unit forceWeaponFire [currentWeapon _unit, "single"];
	
	sleep 4.5;
};