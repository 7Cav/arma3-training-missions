
// CLIENTSIDE of shooter
//_targetCenter = [-0.004,0.161,-0.023]; default target 2 accurate
_targetCenter = [-0.001,0.21,.3684]; // custom target center

//[-2, {hint _this}, "Checkhit running"] call CBA_fnc_globalExecute;

//testMark = "Sign_Sphere10cm_F" createVehicle [0,0,0]; markCenter = [-0.001,0.21,.3684]; 

_ehArgs 		= _this select 0;
	_target 		= _ehArgs select 0;
	_shooter 		= _ehArgs select 1;
	_position		= _ehArgs select 3;
	_selection 		= _ehArgs select 5;
	_direct 		= _ehArgs select 10;

_targetData = _target getVariable ["Cav_hitIndicatorTgtData", nil];

if(isNil "_targetData") exitWith {};
	
_rangeVarStr	= _targetData select 0;
_laneName 		= _targetData select 1;
_laneIndex		= _targetData select 2;
_readout 		= _targetData select 3;
_targetIndex	= _targetData select 4;
_showRange 		= _targetData select 5;

_hitPosRaw = _target worldToModel (ASLtoATL(_position));
_hitOffsetCenter = [(_hitPosRaw select 0) - (_targetCenter select 0), 0, (_hitPosRaw select 2) - (_targetCenter select 2)];
_iconMarkPos = _target worldToModel _position;
_iconMarkPos set [1, 0.18];

_hitPosFlat = _hitPosRaw;
_hitPosFlat set [1, _targetCenter select 1];
_distanceOffsetCenter = round ((_hitPosFlat distance _targetCenter) * (10 ^ 5)) / (10 ^ 5); // round to 5 decimal places

/*
// Make dot more recessed into target the closer it is to the center
_yAxisMax = _yAxisMax = 0.211;; //furthest recessed
_yAxisMin = 0.181; //least recessed
_yAxisMaxDistance = 1.0; //distance from center it reaches least recessed
_yAxis = _yAxisMax - ((_distanceOffsetCenter / _yAxisMaxDistance) * (_yAxisMax - _yAxisMin));  bip
*/



_animState = animationState _shooter;
_animStateChars = toArray _animState;
_animShort = toUpper (toString [_animStateChars select 5,_animStateChars select 6,_aniMStateChars select 7]);
_playerStance = "";

//hint str _playerStanceRaw;

switch (_animShort) do {
	case "ERC" : {_playerStance = "Standing"};
	case "KNL" : {_playerStance = "Kneeling"};
	case "PNE" : {_playerStance = "Prone"};
	case "BIP" : {_playerStance = "Prone Supported"};
};

if(count _selection > 0 && _direct && _target animationPhase "terc" < 0.3) then { //direct hit on target
	
	_hitPos = (_readout modelToWorld [
		(_targetCenter select 0) + (_hitOffsetCenter select 0), 
		0.15, 
		(_targetCenter select 2) + (_hitOffsetCenter select 2)
	]);

	//[_rangeVarStr, _laneIndex, _hitPos] remoteExec ["range_registerHit"];
	
	//systemChat str [_rangeVarStr, _laneIndex, _hitPos];
	
	_marks = _readout getVariable ["range_hits", []];
	
	_marks pushback _iconMarkPos;
	_readout setVariable ["range_hits", _marks, true];

	// Save accuracy for averaging
	_accuracyData = (_readout getVariable "range_accuracyData");
	
	_errorCm = (_distanceOffsetCenter * 100);
	
	if(isNil "_accuracyData") then {
		_accuracyData = [_errorCm];
	} else {
		_accuracyData pushBack _errorCm;
	};
	
	_readout setVariable ["range_accuracyData", _accuracyData, true];
	
	// Save distance for averaging
	_distanceData = (_readout getVariable "range_distanceData");
	
	//Nearest 0.1
	//_distance = round ((_shooter distance _target) * (10 ^ 1)) / (10 ^ 1);
	
	//round to nearest 50 (targets are at every 50)
	_distance = ((round ((_shooter distance _target) / 50)) * 50);
	
	if(isNil "_distanceData") then {
		_distanceData = [(_shooter distance _target)];
	} else {
		_distanceData pushBack _distance;
	};
	
	_readout setVariable ["range_distanceData", _distanceData, true];
	
	//_targetIndex = ((_targets find _target) + 1);
	_weapon = getText (configFile >> "CfgWeapons" >> primaryWeapon _shooter >> "displayName");
	_ammoName = getText (configFile >> "CfgMagazines" >> currentMagazine _shooter >> "displayName");

	
	
	_optics =  ((primaryWeaponItems _shooter) select 2);
	_bipod =  ((primaryWeaponItems _shooter) select 3);
	
	_weaponText = _weapon;
	_attachments = [];
	_hasAttachment = false;
	if(_optics != "") then {
		_hasAttachment = true;
		_attachments pushBack getText (configFile >> "CfgWeapons" >> _optics >> "displayName");
	};
	
	if(_bipod != "") then {
		_hasAttachment = true;
		_attachments pushBack getText (configFile >> "CfgWeapons" >> _bipod >> "displayName");
	};
	
	if(_hasAttachment) then {
		_weapon = format ["%1 + %2", _weapon, _attachments joinString ", "];
	};
	
	if(rangemaster getVariable [_rangeVarStr, 0] == 1) then {
		_message = format["Rangemaster: Hit! %1, T%2 - Off Center: %3cm (%4, ", _laneName, _targetIndex, _errorCm, name _shooter];
		if(_showRange) then {
			_message = _message + format ["%1m, ", _distance];
		};
		_message = _message + format ["%1, %2, %3)", _playerStance, _weapon, _ammoName];
		
		if(isMultiplayer) then {
			[-2, {rangemaster globalChat _this}, _message] call CBA_fnc_globalExecute;
		} else {
			systemChat _message;
		};
	};
} else { //hit base
	//hint "Miss!";
};

