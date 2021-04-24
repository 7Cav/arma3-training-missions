/*
Range data format:

rangeData = [
	[
		["lane 1 name", lane1_readout, lane1_pedestal, lane1_shootingPosition, [lane targets]
	],
	range speaker
	hit indicator var string
];
*/

_hitData = _this select 0; //[lane1score, lane2score, lane3score...
_totalCount = _this select 1;

_rangeData = _this select 2;
	_lanesData = _rangeData select 0;
	_speaker = _rangeData select 1;
	_hitIndicatorVarString = _rangeData select 2;

_finalScore = if(count _this > 3) then {_this select 3} else {false};
_message = [parseText "<t color='#ff9900'>Rifle Range Scores:</t><br/>"];

#include "functions.sqf"

for "_i" from 1 to count _hitData do {
	_laneScore = _hitData select (_i - 1);
	if(_laneScore > 0) then {
		if(_finalScore) then {
			_qual = "";	
			_qualShort = "";
			_img = "";
			if(_laneScore >= 36) then {
				_qual = "<t color='#00ff00'>EXPERT</t>";
				_qualShort = "Expert";
				_img = "<img size='2' image='image\expert.paa'/><br/>";
			};
			if(_laneScore >= 30 && _laneScore <= 35) then {
				_qual = "<t color='#00ff00'>SHARPSHOOTER</t>";
				_qualShort = "Sharpshooter";
				_img = "<img size='2' image='image\sharpshooter.paa'/><br/>";
			};
			if(_laneScore >= 26 && _laneScore <= 29) then {
				_qual = "<t color='#00ff00'>MARKSMAN</t>";
				_qualShort = "Marksman";
				_img = "<img size='2' image='image\marksman.paa'/><br/>";
			};
			if(_laneScore < 26) then {
				_qual = "<t color='#ff0000'>NO GO</t>";
				_qualShort = "No Go";
			};
			
			_thisLaneShootingPos = (((_rangeData select 0) select (_i - 1)) select 3);
			
			_message = _message + [parseText format ["<br/><t color='#ff9900' size='1.6'>Lane %1:</t> <t color='#ff9900' size='1.6'>%2/%3</t><br/>", _i, _laneScore, _totalCount]];

			_message = _message + [parseText format ["<br/>%1", _qual]];
			_message = _message + [parseText format ["%1", _img]];
			
			_shooter = name ((nearestObjects [getPos _thisLaneShootingPos, ["Man"], 10]) select 0);				
			if(!(isNil "_shooter")) then {
				_message = _message + [parseText format ["<br/>Shooter: %1",_shooter]];
			};
			

			if((rangemaster getVariable [_hitIndicatorVarString, 0]) == 1) then {
				_readout = ((_lanesData select (_i - 1)) select 1);
				_averageData = [_readout] call range_getAverageData;
				if(count _averageData > 0) then {
					_countShots = _averageData select 0;
					_averageError = _averageData select 1;
					_averageDistance = _averageData select 2;
					_ratio = _averageData select 3;
					
					_score = [_readout] call range_getScoreSimple;
					
					_message = _message + [parseText format ["<br/>Average Accuracy: %1cm", _averageError]];
					//_message = _message + [parseText format ["<br/>Accuracy/Distance Ratio: %1", _ratio]];
					_message = _message + [parseText format ["<br/>Accuracy Score: %1/%2 points", _score, (40 * 10)]];
				};
			};
			
			_message = _message + [parseText "<br/>_______________<br/>"];
			
			_messageSimple = format["Final Score: Lane %1 - ", _i];
			
			if(!(isNil "_shooter")) then {
				_messageSimple = _messageSimple + format["%1 - ", _shooter];
			};
			
			_messageSimple = _messageSimple + format["%1/%2 - %3", _laneScore, _totalCount, _qualShort];
			
			if(isMultiplayer) then {
				[-2, {rangemaster globalChat _this}, _messageSimple] call CBA_fnc_globalExecute;
			} else {
				systemChat _messageSimple;
			};
			
		} else {
			_message = _message + [parseText format ["<br/>Lane %1: %2/%3", _i, _hitData select (_i - 1), _totalCount]];
		};
	};
};

[composeText _message,"hintSilent"] call BIS_fnc_MP;

if(_finalScore) then {
	for "_i" from 1 to count _hitData do {
		_laneScore = _hitData select (_i - 1);
		if(_laneScore > 0) then {
			switch(_i) do {
				case 1 : {
					["Lane1", true] call _loudSpeakerVoice;
				};
				case 2 : {
					["Lane2", true] call _loudSpeakerVoice;
				};
				case 3 : {
					["Lane3", true] call _loudSpeakerVoice;
				};
				case 4 : {
					["Lane4", true] call _loudSpeakerVoice;
				};
				case 5 : {
					["Lane5", true] call _loudSpeakerVoice;
				};
				case 6 : {
					["Lane6", true] call _loudSpeakerVoice;
				};
			};
			sleep 1.5;
			if(_laneScore >= 36) then {
				["Expert", true] call _loudSpeakerVoice;
				sleep 2;
			} else {
				if(_laneScore >= 30) then {
					["Sharpshooter", true] call _loudSpeakerVoice;
					sleep 2.5;
				} else {
					if(_laneScore >= 26) then {
						["Marksman", true] call _loudSpeakerVoice;
						sleep 2;
					} else {
						["NoGo", true] call _loudSpeakerVoice;
						sleep 1.8;
					};
				};
			};
		};
		
	};
};
