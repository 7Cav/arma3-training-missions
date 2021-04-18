_freezeAI = {
	_this DisableAI "MOVE";
	_this DisableAI "TARGET";
	_this DisableAI "AUTOTARGET";
	_this DisableAI "FSM";
};

_workoutGroup = [];
 
{
	[_x] execVM "loadouts\trooper.sqf";
	_x call _freezeAI;
	_workoutGroup = _workoutGroup + [_x];
	_x allowDamage false;
	_x setVariable ["bootcamp_startPos", getPos _x];
} foreach (units group ai_rct1);

//[ai_di1] execVM "loadouts\drill_instructor.sqf";
//ai_di1 call _freezeAI;

_workoutGroup spawn {
	_workoutGroup = _this;
	while{true} do {
		{
			_x spawn {
				sleep (random 1);
				_this setPos (_this getVariable "bootcamp_startPos");
				_this playMoveNow "AmovPercMstpSnonWnonDnon_exercisePushup";
				sleep 15.733;
				_this setPos (_this getVariable "bootcamp_startPos");
				_this playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
				sleep 5.03;
				_this setPos (_this getVariable "bootcamp_startPos");
				_this playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
				sleep 3.03;
				_this setPos (_this getVariable "bootcamp_startPos");
			};
		} foreach _workoutGroup;
		sleep 28;
	};
};

//ai_di1 spawn {
//	_di = _this;
//	sleep 1;
//	_di allowDamage false;
//	_di playMoveNow "AmovPercMstpSnonWnonDnon_ease";
//	_di disableAI "ANIM";
//	sleep 0.01;
//	ai_di1 removeWeapon (primaryWeapon ai_di1);
//};

