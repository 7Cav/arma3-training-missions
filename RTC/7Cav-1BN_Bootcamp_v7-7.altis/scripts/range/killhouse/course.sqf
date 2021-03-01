/*
Range data format:

rangeData = [
	[
		[
			"lane 1 name", 
			lane1_readout, 
			lane1_pedestal, 
			lane1_shootingPosition, 
			[lane targets]
		]
	],
	range speaker
	hit indicator var string
];
*/

/*
kh_setTargetTime = {
	//Run locally on client who shot target
	_ehArgs = _this select 0;
	_target = _ehArgs select 0;
	
	_targetIndex = kh_targets find _target;
	
	_kh_targetTimes = rangemaster getVariable ["kh_targetTimes", []];
	_kh_targetTimes set [_targetIndex, 1];

	rangemaster setVariable ["kh_targetTimes", _kh_targetTimes, true];
	
	//kh_targetTimes set [_targetIndex, kh_timer / 10];
};
*/

_rangeData = _this select 0;
	_allLanesData = _rangeData select 0;
		_laneData = _allLanesData select 0;
			_readout = _laneData select 1;
			kh_targets = _laneData select 4; // must be global so we can access it from inside an eventhandler
_speaker = _rangeData select 1;
_hitIndicatorVarString = _rangeData select 2;

diag_log "Bootcamp: started killhouse";

if(!isServer) exitWith {};

rangemaster setVariable ["kh_targetTimes", [], true];

_kh_targetTimes = [];
{
	_kh_targetTimes = _kh_targetTimes + [0];
	
} foreach kh_targets;
rangemaster setVariable ["kh_targetTimes", _kh_targetTimes, true];

#include "functions.sqf"

if(true) then {
	if(rangemaster getVariable [_hitIndicatorVarString, 0] == 1) then {
		[_readout] call range_clearMarks;
	};
	
	["Take the starting position inside the four cones."] call _rangeMessage;
	sleep 3;
	
	waitUntil{count (list kh_areaStart) > 0};
	_player = ((list kh_areaStart) select 0);
	_playerName = name _player;
	
	{
		_x setVariable ["Cav_targetPopup", false, true];
		_x animate ["terc", 1];
		[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopDown_Large_F"]] call CBA_fnc_globalExecute;
	} foreach kh_targets;
	
	["Load a magazine and standby..."] call _rangeMessage;
	["LoadStandby"] call _loudSpeakerVoice;
	sleep 5;
	
	//{
	//	_x setObjectTextureGlobal [0,'#(argb,8,8,3)color(1,0,0,1)'];
	//} foreach [kh_stoplight_screen1, kh_stoplight_screen2];
	
	["Course starting in: 3"] call _rangeMessage;
	["FD_Start_F"] call _loudSpeaker;
	sleep 1;
	["Course starting in: 2"] call _rangeMessage;
	["FD_Start_F"] call _loudSpeaker;
	sleep 1;
	["Course starting in: 1"] call _rangeMessage;
	["FD_Start_F"] call _loudSpeaker;
	sleep 1;
	
	_start = true;
	if(!(_player in (list kh_areaStart))) then {
		["The participant left the start area early!"] call _rangeMessage;
		_start = false;
	};
	
	if(_start) then {
		/*
		{
			_x setObjectTextureGlobal [0,'#(argb,8,8,3)color(0,1,0,1)'];
		} foreach [kh_stoplight_screen1, kh_stoplight_screen2];
		*/

		remoteExec ["killhouse_setLightColorGreen"];
		
		rangemaster setVariable ["kh_camPlayer", _player, true];
		
		//remoteExec ["Cav_fnc_kh_camera_start"];
		diag_log "Bootcamp: Told clients to start killhouse camera script";
		
		
		//kh_room_cam_handle = [kh_cam_rooms, _player, kh_cameraData] execVM "scripts\range\killhouse\kh_camera.sqf";
		
		//cutRsc ["cameraPreview","PLAIN"];
		
		["FD_Course_Active_F"] call _loudSpeaker;
		
		{
			_x animate ["terc", 0];
			[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopUp_Large_F"]] call CBA_fnc_globalExecute;
		} foreach kh_targets;
		
		/*
		_timerHandle = [] spawn {
			while{true} do {
				kh_timer = kh_timer + 1;
				sleep 0.1;
			};
		};
		*/
		
		sleep 0.35;
		while{!(_player in (list kh_trgEnd))} do {
			_targetString = " ";
			
			_targetTimes = (rangemaster getVariable ["kh_targetTimes", []]);
			
			{
				if((_x animationPhase "terc") > 0) then {
					if((_targetTimes select _forEachIndex) != 1) then {
						_targetTimes set [_forEachIndex, 1];
						rangemaster setVariable ["kh_targetTimes", _targetTimes, true];
					};
				};
			} foreach kh_targets;
			
			{
				if(_x == 0) then {
					_targetString = _targetString + "- ";
				} else {
					_targetString = _targetString + "X ";
				};
				if(((_forEachIndex + 1) % 5) == 0) then {
					_targetString = _targetString + " \n ";
				};
			} foreach (rangemaster getVariable ["kh_targetTimes", []]);
			
			//[format ["%1\nin the Killhouse:\n\nTime: %2 sec\n\n%3", _playerName, (kh_timer / 10), _targetString]] call _rangeMessage;
			[format ["%1\nin the Killhouse:\n\n%2", _playerName, _targetString]] call _rangeMessage;
			sleep 0.1;
		};
		
		/*
		terminate _timerHandle;
		*/
		
		remoteExec ["killhouse_setLightColorRed"];
		
		["Time!"] call _rangeMessage;
		["TimeStandby"] call _loudSpeakerVoice;
		 sleep 3;
		
		_targetHitCount = 0;
		
		{
			if((_x animationPhase "terc") > 0) then {
				_targetHitCount = _targetHitCount + 1;
			};
		} foreach kh_targets;
		
		/*
		_timesString = "";

		{
			_timesString = _timesString + format["Target %1: %2s\n", _forEachIndex + 1, _x];
		} foreach kh_targetTimes;
		*/
		
		_message = [parseText format ["<t color='#ff9900' size='1.4'>Killhouse Final Score:</t><br/><br/><t color='#ff9900'>Shooter:</t><br/>%1<br/><br/><t color='#ff9900'>Targets:</t><br/>%2/%3", _playerName, _targetHitCount, count kh_targets]];
		
		_message = _message + [parseText "<br/><br/>"];
		{
			if(_x == 0) then {
				_message = _message + [parseText "-  "];
			} else {
				_message = _message + [parseText "X  "];
			};
			if(((_forEachIndex + 1) % 5) == 0) then {
				_message = _message + [parseText "<br/>"];
			};
		} foreach (rangemaster getVariable ["kh_targetTimes", []]);
		
		_message = _message + [parseText format ["<br/><br/><t color='#ff9900'>Targets Result:</t><br/>"]];
		
		if(_targetHitCount == count kh_targets) then {
			_message = _message + [parseText "<t color='#00ff00' size='1.8'>GO</t><br/><br/>"];
		} else {
			_message = _message + [parseText "<t color='#ff0000' size='1.8'>NO GO</t><br/><br/>"];
		};
		
		if((rangemaster getVariable [_hitIndicatorVarString, 0]) == 1) then {
			
			_averageData = [_readout] call range_getAverageData;
			if(count _averageData > 0) then {
				_countShots = _averageData select 0;
				_averageError = _averageData select 1;
				_averageDistance = _averageData select 2;
				_ratio = _averageData select 3;
				
				_message = _message + [parseText format["Average Accuracy: %1cm<br/>", _averageError]];
				
				_score = [_readout] call range_getScoreSimple;
				_message = _message + [parseText format["Accuracy Score: %1/%2 points", _score, (15 * 10)]];
			};
		};
		
		[composeText _message] call _rangeMessage;
	};
};

// Cleanup
killhouse = 0;
publicVariable "killhouse";
rangemaster setVariable ["kh_camPlayer", objNull, true];

/*
{
	_x setObjectTextureGlobal [0,'#(argb,8,8,3)color(0,0,0,1)'];
} foreach [kh_stoplight_screen1, kh_stoplight_screen2];
*/

rangemaster setVariable ["kh_targetTimes", [], true];
	
{
	[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopUp_Large_F"]] call CBA_fnc_globalExecute;
	_x animate ["terc", 0];
	_x setVariable ["Cav_targetPopup", true, true];
} foreach kh_targets;
