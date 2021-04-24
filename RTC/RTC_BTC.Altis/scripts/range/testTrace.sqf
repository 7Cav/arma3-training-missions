
if(player getVariable ["rr_testTraceOn", false]) then {
	player setVariable ["rr_testTraceOn", false];
} else {
	player setVariable ["rr_testTraceOn", true];
	_yOffset = 0.15; //0.18
	rr_testTracePath = [
		rr_lane1_1 modelToWorld [-0.33, _yOffset, -0.48],
		
		rr_lane1_1 modelToWorld [-0.33, _yOffset, 0.65],
		rr_lane1_1 modelToWorld [-0.108, _yOffset, 0.855],
		rr_lane1_1 modelToWorld [0.108, _yOffset, 0.855],
		rr_lane1_1 modelToWorld [0.33, _yOffset, 0.65],
		
		rr_lane1_1 modelToWorld [0.33, _yOffset, -0.48],
		rr_lane1_1 modelToWorld [-0.33, _yOffset, -0.48]
	];

	// Outer: .285
	// Inner: .01
	rr_testTracePathCircle1 = [];
	for "_i" from 0 to 360 step 10 do {
		_magnitude = .285;
		_modelOffset = [
			(rr_targetCenterOffsetActual select 0) + _magnitude * sin(_i),
			(rr_targetCenterOffsetActual select 1),
			(rr_targetCenterOffsetActual select 2) + _magnitude * cos(_i)
		];
		rr_testTracePathCircle1 = rr_testTracePathCircle1 + [rr_lane1_1 modelToWorld _modelOffset];
	};
	
	rr_testTracePathCircle2 = [];
	for "_i" from 0 to 360 step 30 do {
		_magnitude = .03;
		_modelOffset = [
			(rr_targetCenterOffsetActual select 0) + _magnitude * sin(_i),
			(rr_targetCenterOffsetActual select 1),
			(rr_targetCenterOffsetActual select 2) + _magnitude * cos(_i)
		];
		rr_testTracePathCircle2 = rr_testTracePathCircle2 + [rr_lane1_1 modelToWorld _modelOffset];
	};
	
	[] spawn {
		while {player getVariable ["rr_testTraceOn", false]} do {
			{
				if(_forEachIndex > 0) then {
					drawLine3D [rr_testTracePath select (_forEachIndex - 1), rr_testTracePath select _forEachIndex, [0,0,1,1]];
				};
			} foreach rr_testTracePath;
			
			{
				if(_forEachIndex > 0) then {
					drawLine3D [rr_testTracePathCircle1 select (_forEachIndex - 1), rr_testTracePathCircle1 select _forEachIndex, [0,0,1,1]];
				};
			} foreach rr_testTracePathCircle1;
			
			{
				if(_forEachIndex > 0) then {
					drawLine3D [rr_testTracePathCircle2 select (_forEachIndex - 1), rr_testTracePathCircle2 select _forEachIndex, [0,0,1,1]];
				};
			} foreach rr_testTracePathCircle2;
		};
	};
};