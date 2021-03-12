

_laneIndex = _this select 0;
_enable = _this select 1;

rr_fnc_recordBulletPath = { //inside event handler
	_bullet = _this select 0;
	_targetObject = _this select 1;
	_shooter = if(count _this > 2) then {_this select 2};
	_maxRange = if(count _this > 3) then {_this select 3};
	
	//hint str _targetObject;
	
	_bulletPos = [
		getPos _bullet select 0,
		getPos _bullet select 1,
		(getPos _bullet select 2) - 0.04
	];	
	
	_passed = false;
	_dontAppend = false;
	if((_bulletPos select 0 == 0) or (_bulletPos select 1 == 0)) then {
		_dontAppend = true;
	};
	
	if((player distance _bullet > player distance (_targetObject modelToWorld rr_targetCenterOffset) or !alive _bullet) and count rr_bulletPath > 2) then {
		if(count rr_bulletCam_intersectPos == 0) then {
			_passed = true;
			
			_indexOffset = 0;
			if(!alive _bullet) then {
				_indexOffset = 1;
			};
			
			_linePoint1 = rr_bulletPath select ((count rr_bulletPath) - (2 + _indexOffset));
			_linePoint2 = rr_bulletPath select ((count rr_bulletPath) - (1 + _indexOffset));
			_lineVec = vectorNormalized (_linePoint1 vectorFromTo _linePoint2);			
			_planePoint = _targetObject modelToWorld rr_targetCenterOffsetFront;
			_planeNormal = vectorDir _targetObject;
			
			//rr_helper0 = "Sign_Sphere10cm_F" createVehicle _linePoint1;
			//rr_helper0 setPos _linePoint1;
			//rr_helper1 = "Sign_Sphere10cm_F" createVehicle _bulletPos;
			//rr_helper1 setPos _bulletPos;
			
			_dotNumerator = ((_planePoint vectorDiff _linePoint1) vectorDotProduct _planeNormal);
			_dotDenominator = _lineVec vectorDotProduct _planeNormal;
			
			if(_dotDenominator != 0) then { // bullet did pass target, didn't fall short
				_length = _dotNumerator / _dotDenominator;
			
				_vectorToIntersect = _lineVec vectorMultiply (_length / vectorMagnitude _lineVec);
				
				rr_bulletCam_intersectPos = (_linePoint1 vectorAdd _vectorToIntersect);
				
				_pathToTargetCenter = [rr_bulletCam_intersectPos, _targetObject modelToWorld rr_targetCenterOffsetFront];
				_pathToGround = [rr_bulletCam_intersectPos, [
					rr_bulletCam_intersectPos select 0,
					rr_bulletCam_intersectPos select 1, 
					0
				]];
				
				rr_bulletCam_intersectPosPaths = [_pathToTargetCenter, _pathToGround];
			};
			
		};
		
	};
	
	_outOfRange = false;
	if(!isNil "_shooter" and !isNil "_maxRange") then {
		if(_bullet distance _shooter > _maxRange) then {
			_outOfRange = true;
		};
	};
	
	
	if(_passed) then {
		if(count rr_bulletCam_intersectPos > 0) then {
			rr_bulletPath = rr_bulletPath + [rr_bulletCam_intersectPos];
		};	
		
		if(!rr_var_pathContinueAfterPass) then {
			["rr_bulletPathRecorderEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
			rr_bulletPathRecorderEH_alive = false;
		};
	} else {
		if(count _bulletPos > 0 and !_dontAppend) then {
			if(count rr_bulletPath > 2) then {
				_linePoint1 = rr_bulletPath select ((count rr_bulletPath) - 2);
				_lineVec = vectorNormalized (_linePoint1 vectorFromTo _bulletPos);	
				
				[_linePoint1, _lineVec] call rr_fnc_addBulletPathVertex;
			};
		
			rr_bulletPath = rr_bulletPath + [_bulletPos];
		};
	};

	if((_outOfRange or !alive _bullet) && rr_bulletPathRecorderEH_alive) then {
		["rr_bulletPathRecorderEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		rr_bulletPathRecorderEH_alive = false;
	};
};

rr_fnc_addBulletPathVertex = {
	_vertex = _this select 0;
	_vectorNormalized = _this select 1;
	
	_radius = .04;

	_dir = (_vectorNormalized select 0) atan2 (_vectorNormalized select 1);
	
	_pointLeftXMag = sin(_dir - 90);
	_pointLeftYMag = cos(_dir - 90);
	
	_pointRightXMag = sin(_dir + 90);
	_pointRightYMag = cos(_dir + 90);
	
	_pointLeft = [
		(_vertex select 0) + _radius * _pointLeftXMag,
		(_vertex select 1) + _radius * _pointLeftYMag,
		_vertex select 2
	];
	_pointRight = [
		(_vertex select 0) + _radius * _pointRightXMag,
		(_vertex select 1) + _radius * _pointRightYMag,
		_vertex select 2
	];
	
	_vecLeft = [_pointLeftXMag, _pointLeftYMag, 0];
	
	_vecVert1 = _vectorNormalized vectorCrossProduct _vecLeft;
	_vecVert2 = _vecLeft vectorCrossProduct _vectorNormalized;
	
	_pointVert1 = [
		(_vertex select 0) + _radius * (_vecVert1 select 0),
		(_vertex select 1) + _radius * (_vecVert1 select 1),
		(_vertex select 2) + _radius * (_vecVert1 select 2)
	];
	_pointVert2 = [
		(_vertex select 0) + _radius * (_vecVert2 select 0),
		(_vertex select 1) + _radius * (_vecVert2 select 1),
		(_vertex select 2) + _radius * (_vecVert2 select 2)
	];
	
	rr_bulletPathVertices pushback [_pointLeft, _pointRight];
	rr_bulletPathVertices pushback [_pointVert1, _pointVert2];
	//rr_bulletPathVertices pushback [];
};

rr_fnc_drawBulletPath = {	
	if(!(player getVariable ["rr_bulletCamInCam", false])) exitWith {};
	if(count rr_bulletPath > 2) then {
		{
			if(_forEachIndex > 0) then {
				drawLine3D [rr_bulletPath select _forEachIndex, rr_bulletPath select (_forEachIndex - 1), [1,0,0,1]];
			};
		} foreach rr_bulletPath;
	};
	
	if(count rr_bulletPathVertices > 0 and (player getVariable "rr_bulletCamInCam")) then {
		for "_i" from 0 to (count rr_bulletPathVertices - 1) do {
			_path = rr_bulletPathVertices select _i;
			if(count _path > 1) then {
				for "_j" from 0 to (count _path - 1) do {
					if(_j > 0) then {
						drawLine3D [_path select (_j - 1), _path select _j, [1,0,0,1]];
					};
				};
			};
		};
	};
};

rr_fnc_drawIntersect = {
	if(!(player getVariable ["rr_bulletCamInCam", false])) exitWith {};
	_zoom = call KK_fnc_trueZoom;
	
	/*
	hintSilent format [
        "CURRENT ZOOM: %1x",
        round (_zoom * 10) / 10
    ];
	*/
	
	_zoomMinimumVisible = 1.1;
	if(count rr_bulletCam_intersectPos > 0 and _zoom > _zoomMinimumVisible) then {
		_iconScale = 1.5;
		
		if(!(player getVariable "rr_bulletCamInCam")) then {		
			_distanceMult = (((1 - ((player distance rr_bulletCam_intersectPos) / 400)) * 0.8) + 0.2);
			_zoomMult = ((((5 max _zoom) - 5) / 15) * 1.5);
			
			_iconScale = (2 * _distanceMult + _zoomMult);
		};
	
		drawIcon3D [MISSION_ROOT + "image\rangeMissIcon3.paa", [1,1,1,1], rr_bulletCam_intersectPos, _iconScale, _iconScale, 45];
	};
	
	
	if(count rr_targetOutlinePaths > 1) then {
		_readout = rr_targetOutlinePaths select 0;
		if(_readout animationPhase "terc" > 0) then {
			for "_i" from 1 to (count rr_targetOutlinePaths - 1) do {
				_path = rr_targetOutlinePaths select _i;
				if(count _path > 1) then {
					for "_j" from 0 to (count _path - 1) do {
						if(_j > 0) then {
							drawLine3D [_path select (_j - 1), _path select _j, [0,0,0,1]];
						};
					};
				};
			};
		};
	};
	
	if(count rr_bulletCam_intersectPosPaths == 2 and !rr_bulletCam_wasHit) then {
		_pathToTargetCenter = rr_bulletCam_intersectPosPaths select 0;
		if(count _pathToTargetCenter > 1) then {
			for "_i" from 0 to (count _pathToTargetCenter - 1) do {
				if(_i > 0) then {
					drawLine3D [_pathToTargetCenter select (_i - 1), _pathToTargetCenter select _i, [1,0,1,1]];
				};
			};
		};

		_pathToGround = rr_bulletCam_intersectPosPaths select 1;
		if(count _pathToGround > 1) then {
			for "_i" from 0 to (count _pathToGround - 1) do {
				if(_i > 0) then {
					drawLine3D [_pathToGround select (_i - 1), _pathToGround select _i, [0,0,0,1]];
				};
			};
		};
	};
};

rr_fnc_destroyCamera = {
	if(!isNil "rr_bulletCam") then {
		rr_bulletCam cameraEffect ["Terminate", "Back"];
		camDestroy rr_bulletCam;
		deleteVehicle rr_bulletCam;
		player setVariable ["rr_bulletCamInCam", false];
		titleText ["", "PLAIN"];
	};
};

rr_fnc_rangeCameraDisconnect = {
	[] call rr_fnc_destroyCamera;
	hint "Disconnected from range camera.";
	player removeEventHandler ["firedNear", player getVariable ["rr_firedNearEHID", -1]];
	player setVariable ["rr_bulletCamSubscription", -1];
	if(rr_bulletPathRecorderEH_alive) then {
		["rr_bulletPathRecorderEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		rr_bulletPathRecorderEH_alive = false;
	};
	["rr_bulletPathDrawEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
	["rr_bulletIntersectDrawEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", rr_var_bulletCam_keyPressEHID];
	
	rr_bulletCam_intersectPos = nil;
	rr_targetOutlinePaths = nil;
	rr_bulletPath = nil;
	rr_bulletCam_intersectPosPaths = nil;
	rr_var_pathContinueAfterPass = nil;
	rr_bulletPathVertices = nil;
};

//rr_var_actionZoomIn = "zoomIn";
//rr_var_actionZoomOut = "zoomOut";
rr_var_keyToggleCamera = 57;
rr_var_keyDisconnectCamera = 15;
rr_var_camFovAdjust = 1;

rr_eh_cameraKeyDown = {
	_key = _this select 1;
	if(_key == rr_var_keyToggleCamera) then {
		[] call rr_fnc_toggleRangeCamera;
	};
	if(_key == rr_var_keyDisconnectCamera) then {
		[] call rr_fnc_destroyCamera;
		player setVariable ["rr_bulletCamSubscription", -1];
		[] call rr_fnc_rangeCameraDisconnect;
	};
	/*
	if(_key in (actionKeys rr_var_actionZoomIn)) then {
		rr_var_camFovAdjust = rr_var_camFovAdjust + 0.01;
		
		if(player getVariable "rr_bulletCamInCam") then {
			hintSilent str rr_var_camFovAdjust;
			rr_bulletCam camSetFov ([_closestTargetIndex] call rr_fnc_calculateCamFOV);
			rr_bulletCam camCommit 0;
		};
	};
	if(_key in (actionKeys rr_var_actionZoomOut)) then {
		rr_var_camFovAdjust = rr_var_camFovAdjust - 0.01;
		
		if(player getVariable "rr_bulletCamInCam") then {
			hintSilent str rr_var_camFovAdjust;
			rr_bulletCam camSetFov ([_closestTargetIndex] call rr_fnc_calculateCamFOV);
			rr_bulletCam camCommit 0;
		};
	};
	*/
};

rr_eh_bulletCam_targetHit = {
	_args = _this select 0;
		_objectHit = _args select 0;
	
	_pos = _args select 3;
	
	rr_bulletCam_intersectPos = ASLtoAGL _pos;
	rr_bulletCam_wasHit = true;
	//rr_bulletPath = rr_bulletPath + [rr_bulletCam_intersectPos];
	
	_objectHit removeEventHandler ["HitPart", rr_var_bulletCam_targetEHID];
};

rr_fnc_toggleRangeCamera = {
	_setInCam = if(count _this > 0) then {_this select 0} else {!(player getVariable "rr_bulletCamInCam")};
	//hint str _setInCam;
	
	if(_setInCam) then {
		if(!isNil "rr_bulletCam") then {
			rr_bulletCam cameraEffect ["External", "Back"];
			cameraEffectEnableHUD true;
			showCinemaBorder true;
			rr_bulletCam camCommit 0;
		};
	} else {
		rr_bulletCam cameraEffect ["Terminate", "Back"];
		rr_bulletCam camCommit 0;
	};
	player setVariable ["rr_bulletCamInCam", _setInCam];
};

rr_fnc_getKeyText = {
	_arg = _this select 0;
	_resultText = "";
	
	_keys = [];
	_wasAction = true;
	
	if(typeName _arg == "STRING") then { // action
		_keys = actionKeys _arg;
	} else { // keycode
		_keys = [_arg];
		_wasAction = false;
	};

	_keyAssigned = false;
	
	if(_wasAction) then {
		if(count _keys == 0) then {
			_resultText = format ["<t color='#ff0000'>%1 not assigned</t>", actionName _action];
		} else {
			_keyAssigned = true;
		};
	} else {
		if(_keys isEqualTo [-1]) then {
			_resultText = "<t color='#ff0000'>Not assigned</t>";
		} else {
			_keyAssigned = true;
		};	
	};

	if(_keyAssigned) then {
		_keysTextArray = [];
		{
			if(_x < 256) then {
				_keysTextArray pushback ([keyName _x, """", ""] call CBA_fnc_replace);
			};
		} foreach _keys;
		
		_resultText = format ["<t color='#ffbb00'>%1</t>", [_keysTextArray, "<br/>"] call CBA_fnc_join];
	} else {
		_resultText = "<t color='#ff0000'>Error</t>";
	};
	
	_resultText
};

rr_fnc_calculateCamFOV = {
	_closestTargetIndex = _this select 0;
	(1 / ((_closestTargetIndex + 1)  * rr_var_camFovAdjust) * (1/16))
};

rr_fnc_showCameraHint = {
	_laneIndex = _this select 0;
	
	_cameraText = "";
	_cameraText = _cameraText + format ["Connected to Lane %1 range camera.<br/>", _laneIndex];
	_cameraText = _cameraText + "By default it will activate when a shot is detected.<br/><br/>";
	_cameraText = _cameraText + "Camera Controls:<br/>";
	_cameraText = _cameraText + format ["Toggle: %1<br/>", [rr_var_keyToggleCamera] call rr_fnc_getKeyText];
	_cameraText = _cameraText + format ["Disconnect: %1<br/>", [rr_var_keyDisconnectCamera] call rr_fnc_getKeyText];
	//_cameraText = _cameraText + format ["Zoom In: %1<br/>", [rr_var_actionZoomIn] call rr_fnc_getKeyText];
	//_cameraText = _cameraText + format ["Zoom Out: %1<br/>", [rr_var_actionZoomOut] call rr_fnc_getKeyText];

	hintSilent (parseText _cameraText);
};

if(_enable) then {
	player setVariable ["rr_bulletCamSubscription", _laneIndex];
	player setVariable ["rr_bulletCamInCam", false];
	
	[_laneIndex] call rr_fnc_showCameraHint;
	
	/*
	_hintLoop = [_laneIndex] spawn {
		_laneIndex = _this select 0;
		while {true} do {
			[_laneIndex] call rr_fnc_showCameraHint;
			sleep 30;
		};
	};
	*/

	/*
	if(isNil "rr_helper") then {
		rr_helper = "Sign_Sphere100cm_F" createVehicle [0,0,0];
	};
	
	[] spawn {
		while {player getVariable "rr_bulletCamSubscription" != -1} do {
			_aimPos = [
				(eyePos player select 0) + (5 * ((player weaponDirection (currentWeapon player)) select 0)),
				(eyePos player select 1) + (5 * ((player weaponDirection (currentWeapon player)) select 1)),
				(eyePos player select 2) + (5 * ((player weaponDirection (currentWeapon player)) select 2))
			];
			
			rr_helper setPos ASLtoAGL _aimPos;
			sleep 0.1;
		};
	};
	*/
	
	["rr_bulletPathDrawEH", "onEachFrame", rr_fnc_drawBulletPath, []] call BIS_fnc_addStackedEventHandler;
	["rr_bulletIntersectDrawEH", "onEachFrame", rr_fnc_drawIntersect, []] call BIS_fnc_addStackedEventHandler;

	rr_var_bulletCam_keyPressEHID = (findDisplay 46) displayAddEventHandler ["KeyDown", rr_eh_cameraKeyDown];
	
	rr_bulletCam_intersectPos = [];
	rr_targetOutlinePaths = [];
	rr_bulletPath = [];
	rr_bulletCam_intersectPosPaths = [];
	rr_var_pathContinueAfterPass = false;
	rr_bulletPathVertices = [];

	_id = player addEventHandler ["firedNear", {
		_bullet = nearestObject [getPos (_this select 1), _this select 6];
		_bulletInitPos = [
			getPos _bullet select 0,
			getPos _bullet select 1,
			(getPos _bullet select 2) - 0.04 //unsure why the 0.04 inaccuracy
		];
		[_this, _bullet, _bulletInitPos] spawn {
			_args 			= _this select 0;
				_player 		= _args select 0;
				_unitFired 		= _args select 1;
				_distance 		= _args select 2;
				_weapon 		= _args select 3;
				_muzzle 		= _args select 4;
				_mode 			= _args select 5;
				_ammo 			= _args select 6;
			_bullet 		= _this select 1;
			_bulletInitPos 	= _this select 2;

			_trg = missionNamespace getVariable format ["rr_lane%1_shootingPosArea", player getVariable "rr_bulletCamSubscription"];

			rr_bulletCam_intersectPos = [];
			//rr_targetOutlinePaths = [];
			rr_bulletCam_intersectPosPaths = [];
			rr_bulletCam_wasHit = false;
			rr_bulletPathVertices = [];

			if(_unitFired in list _trg) then {
				// Guess intended target based off initial bullet vector (may not work for super long ranges with vertically stacked targets)
				_initialPosition2 = [
					getPos _bullet select 0,
					getPos _bullet select 1,
					(getPos _bullet select 2) - 0.04
				];
				
				_bulletInitialVector = vectorNormalized [
					(_bulletInitPos select 0) - (_initialPosition2 select 0),
					(_bulletInitPos select 1) - (_initialPosition2 select 1),
					(_bulletInitPos select 2) - (_initialPosition2 select 2)
				];

				_laneTargets = ((rr_rangeData select 0) select ((player getVariable "rr_bulletCamSubscription") - 1)) select 4;
				
				_closestTarget = nil;
				_closestTargetDistance = -1;
				_closestTargetIndex = -1;

				_shotOffRange = true;
				
				{
					_vectorGunToTarget = _bulletInitPos vectorFromTo (_x modelToWorld rr_targetCenterOffset);
					
					_num = _bulletInitialVector vectorDotProduct _vectorGunToTarget;
					_denom = (vectorMagnitude _bulletInitialVector) * (vectorMagnitude _vectorGunToTarget);
					_angle = 180 - acos (_num / _denom);
					
					if(_angle < 10) then {
						_shotOffRange = false;
					};
					
					_set = false;
					
					if(isNil "_closestTarget") then {
						_set = true;
					} else {
						if(_angle >= 0 and _angle < _closestTargetDistance) then {
							_set = true;
						};
					};

					if(_set) then {
						_closestTarget = _x;
						_closestTargetDistance = _angle;
						_closestTargetIndex = _forEachIndex;
					};
				} foreach _laneTargets;
				
				if(_shotOffRange) exitWith {}; // If shot is not close to any targets, don't activate camera
				
				rr_bulletPath = [_bulletInitPos, _initialPosition2];
				
				_drawOutline = false;
				
				if(count rr_targetOutlinePaths == 0) then {
					_drawOutline = true;
				} else {
					if((rr_targetOutlinePaths select 0) != _closestTarget) then {
						_drawOutline = true;
					};
				};
				
				if(_drawOutline) then { // Don't recalculate if re-engaged same target
					rr_targetOutlinePaths = [_closestTarget];
					[_closestTarget, _bullet] spawn {
						_closestTarget = _this select 0;
						_bullet = _this select 1;
						waitUntil {rr_bulletCam_wasHit or !(alive _bullet)}; // wait until hit or bullet dies
						//if(rr_bulletCam_wasHit) then { // if it didn't hit, don't calculate the outline paths
							_targetOutlinePath = [
								_closestTarget modelToWorld [-0.33, (rr_targetCenterOffsetFront select 1), -0.48],
								_closestTarget modelToWorld [-0.33, (rr_targetCenterOffsetFront select 1), 0.65],
								_closestTarget modelToWorld [-0.108, (rr_targetCenterOffsetFront select 1), 0.855],
								_closestTarget modelToWorld [0.108, (rr_targetCenterOffsetFront select 1), 0.855],
								_closestTarget modelToWorld [0.33, (rr_targetCenterOffsetFront select 1), 0.65],
								_closestTarget modelToWorld [0.33, (rr_targetCenterOffsetFront select 1), -0.48],
								_closestTarget modelToWorld [-0.33, (rr_targetCenterOffsetFront select 1), -0.48]
							];

							_targetCenterOuterPath = [];
							for "_i" from 0 to 360 step 10 do {
								_magnitude = .285;
								_modelOffset = [
									(rr_targetCenterOffsetFront select 0) + _magnitude * sin(_i),
									(rr_targetCenterOffsetFront select 1),
									(rr_targetCenterOffsetFront select 2) + _magnitude * cos(_i)
								];
								_targetCenterOuterPath = _targetCenterOuterPath + [_closestTarget modelToWorld _modelOffset];
							};

							_targetCenterInnerPath = [];
							for "_i" from 0 to 360 step 30 do {
								_magnitude = .03;
								_modelOffset = [
									(rr_targetCenterOffsetFront select 0) + _magnitude * sin(_i),
									(rr_targetCenterOffsetFront select 1),
									(rr_targetCenterOffsetFront select 2) + _magnitude * cos(_i)
								];
								_targetCenterInnerPath = _targetCenterInnerPath + [_closestTarget modelToWorld _modelOffset];
							};
							
							if(!isNil "rr_targetOutlinePaths") then {
								rr_targetOutlinePaths = rr_targetOutlinePaths + [_targetOutlinePath, _targetCenterOuterPath, _targetCenterInnerPath];
							};
						//};
					};
				};
				
				["rr_bulletPathRecorderEH", "onEachFrame", rr_fnc_recordBulletPath, [_bullet, _closestTarget, _unitFired, 800]] call BIS_fnc_addStackedEventHandler;
				rr_bulletPathRecorderEH_alive = true;
				rr_var_bulletCam_targetEHID = _closestTarget addEventHandler ["HitPart", rr_eh_bulletCam_targetHit];
				
				rr_bulletCamPos = (((rr_rangeData select 0) select ((player getVariable "rr_bulletCamSubscription") - 1)) select 3) modelToWorld [1,-1,1];
				
				_spawn = false;
				if(isNil "rr_bulletCam") then {
					_spawn = true;
				} else {
					if(isNull rr_bulletCam) then {
						_spawn = true;
					};
				};
				
				if(_spawn) then {
					rr_bulletCam = "camera" camCreate (position player); 
					rr_bulletCam camSetPos rr_bulletCamPos;
					rr_bulletCam cameraEffect ["External", "Back"];
				} else {
					if(!(player getVariable ["rr_bulletCamInCam", false])) then {
						rr_bulletCam cameraEffect ["External", "Back"];
					};
				};
				
				rr_bulletCam camSetTarget [(getPos _closestTarget) select 0, (getPos _closestTarget) select 1, ((getPos _closestTarget) select 2) + 0.50];
				rr_bulletCam camSetFov ([_closestTargetIndex] call rr_fnc_calculateCamFOV);
				cameraEffectEnableHUD true;
				showCinemaBorder false;
				rr_bulletCam camCommit 0;

				player setVariable ["rr_bulletCamInCam", true];
			};
		};
	}];
	
	player setVariable ["rr_firedNearEHID", _id];
	
	waitUntil {player getVariable "rr_bulletCamSubscription" != _laneIndex};
	
	//terminate _hintLoop;
} else {
	[] call rr_fnc_rangeCameraDisconnect;
};

