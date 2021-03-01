range_registerHit = { // executed globally on hit, not connected
	_rangeVarStr = _this select 0;
	_laneIndex = _this select 1;
	_hitPos = _this select 2;
	
	_hitArray = (missionNamespace getVariable (format ["%1_hits", _rangeVarStr]));
	
	_oldLaneHits = _hitArray select _laneIndex;
	_newLaneHits = _oldLaneHits + [_hitPos];
	
	_hitArray set [_laneIndex, _newLaneHits];
};

range_clearMarks = { // executed locally on action
	//hint str _this;
	_readout = _this select 0;
	
	// Erase average data
	_readout setVariable ["range_accuracyData", [], true];
	_readout setVariable ["range_distanceData", [], true];
	_readout setVariable ["range_hits", [], true];
};

range_drawMarkIcons = {
	_rangeData = _this select 0;

	_lanes = _rangeData select 0;
	
	for "_i" from 0 to (count _lanes - 1) do {
		_readout = ((_lanes select _i) select 1);
		_thisLaneHits = _readout getVariable "range_hits";
		
		if((count _thisLaneHits) > 0) then {
			_relAngle = [_readout, positionCameraToWorld [0,0,0]] call BIS_fnc_relativeDirTo;
			_distance = (_readout distance positionCameraToWorld [0,0,0]);
			
			if((_relAngle < 270 or _relAngle > 90) and (_distance < 40)) then {
				_angleAlphaMultiplier = (((90 - abs(_relAngle - 180)) * (1/90)) * 2.0) - 0.5; // ...)) * curve ) - minimum;

				_angleAlphaMultiplier = _angleAlphaMultiplier max 0;
				_angleAlphaMultiplier = _angleAlphaMultiplier min 1;

				if(_distance > 30) then {
					_angleAlphaMultiplier = _angleAlphaMultiplier - ((_distance - 30) * (1/10));
				};

				_alphaMultiplier = _angleAlphaMultiplier * 0.7; // final alpha scale
				_alphaMultiplierFirst2 = _angleAlphaMultiplier;
				
				_fovAdd = (((call KK_fnc_trueZoom) - 0.33) * 0.5);

				_scale = 1.5 * ((1 / _distance) * 2) + _fovAdd;
				
				for "_j" from 0 to (count _thisLaneHits - 1) do {
					_rgba = [1,1,0,_alphaMultiplier];
					
					if(_j == (count _thisLaneHits - 1)) then {
						_rgba = [1,0,0,_alphaMultiplierFirst2];
					};
					if(_j == (count _thisLaneHits - 2)) then {
						_rgba = [1,0.3,0,_alphaMultiplierFirst2];
					};
					
					if(count _thisLaneHits > 0) then {
						_markPos = (_readout modelToWorld (_thisLaneHits select _j));
						
						drawIcon3D [MISSION_ROOT + "image\rangeHitMarker.paa", _rgba, ASLtoATL _markPos, _scale, _scale, 0];
					};
				};
			};
		};
	};
};

range_displayAverageSingle = {
	_args = _this select 3;
	_readout = _args select 0;
	_rangeData = _args select 1;
	
	_laneName = "";
	_laneIndex = 0;
	{
		if(_laneIndex == 0) then {
			if(_x select 1 == _readout) then {
				_laneName = _x select 0;
			};
		};
	} foreach (_rangeData select 0);
	
	_averageData = [_readout] call range_getAverageData;
	
	if(count _averageData > 0) then {
		_countShots = _averageData select 0;
		_averageError = _averageData select 1;
		_averageDistance = _averageData select 2;
		_ratio = _averageData select 3;
		
		_score = [_readout] call range_getScoreSimple;

		hintSilent format ["%1 Accuracy:\nShot count: %2\nAverage Error: %3cm\nAverage Distance: %4m\nAccuracy Ratio: %5\n\nAccuracy Score: %6/%7", _laneName, _countShots, _averageError, _averageDistance, _ratio, _score, (_countShots * 10)];
	} else {
		hintSilent "This readout doesn't have any accuracy data yet!";
	};
};

range_getAverageData = {
	_readout = _this select 0;
	_accuracyData = _readout getVariable ["range_accuracyData", []];
	_distanceData = _readout getVariable ["range_distanceData", []];
	
	if((count _accuracyData) == 0) then {
		[]
	} else {
		//Calculate average accuracy
		_countShots = count _accuracyData;
		_totalError = 0;
		{
			_totalError = _totalError + _x;
		} foreach _accuracyData;
		_averageError = ((round((_totalError / _countShots) * 1000)) / 1000);
		
		//Calculate average distance
		_totalDistance = 0;
		{
			_totalDistance = _totalDistance + _x;
		} foreach _distanceData;
		_averageDistance = ((round((_totalDistance / _countShots) * 100)) / 100);
		
		_ratio = ((round ((_averageDistance / _averageError) * 1000)) / 1000) ;
		
		[_countShots, _averageError, _averageDistance, _ratio];
	};
};

range_getScoreSimple = {
	_readout = _this select 0;
	_accuracyData = _readout getVariable ["range_accuracyData", []];
	//systemChat str _accuracyData;

	_score = 0;
	
	{
		_cm = _x;
		switch(true) do {
			case (_cm <= 1) : {
				_score = _score + 12;
			};
			case (_cm > 1 && _cm <= 2.5) : {
				_score = _score + 10;
			};
			case (_cm > 2.5 && _cm <= 6) : {
				_score = _score + 9;
			};
			case (_cm > 6 && _cm <= 8.5) : {
				_score = _score + 8;
			};
			case (_cm > 8.5 && _cm <= 11.2) : {
				_score = _score + 7;
			};
			case (_cm > 11.2 && _cm <= 14) : {
				_score = _score + 6;
			};
			case (_cm > 14 && _cm <= 17) : {
				_score = _score + 5;
			};
			case (_cm > 17 && _cm <= 19.8) : {
				_score = _score + 4;
			};
			case (_cm > 19.8 && _cm <= 22.5) : {
				_score = _score + 3;
			};
			case (_cm > 22.5 && _cm <= 25.5) : {
				_score = _score + 2;
			};
			case (_cm > 25.5 && _cm <= 28.5) : {
				_score = _score + 1;
			};
		};
		//systemChat str _cm;
	} foreach _accuracyData;
	
	_score
};

killhouse_setLightColorGreen = {
	{
		_x setLightAmbient [0,1,0];
		_x setLightColor [0,1,0];
	} foreach kh_stoplight_lights;
};
killhouse_setLightColorRed = {
	{
		_x setLightAmbient [1,0,0];
		_x setLightColor [1,0,0];
	} foreach kh_stoplight_lights;
};