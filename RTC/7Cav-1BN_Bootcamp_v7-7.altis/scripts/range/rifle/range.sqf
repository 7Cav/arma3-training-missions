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

if(!isServer) exitWith {};

_rangeData = _this select 0;

_lanes = _rangeData select 0;

_speaker = _rangeData select 1;

#include "functions.sqf"

_hitData = [];
_totalCount = 0;
rr_mustKneel = false;

{ // populate _hitData = [0,0,0,0];
	_hitData set [count _hitData, 0];
	_readout = _x select 1;
	[_readout] call range_clearMarks;
} foreach _lanes;

_laneSequence = {
	sleep 2;
	["Load one 20 round magazine."] call _rangeMessage;
	["Reload"] call _loudSpeakerVoice;
	sleep 5;
	["Assume a prone position and scan your lane."] call _rangeMessage;
	["Prone2"] call _loudSpeakerVoice;
	sleep 5;
	["Range is hot!"] call _rangeMessage;
	["RangeIsHot"] call _loudSpeakerVoice;
	sleep 2;
	["FD_Course_Active_F"] call _loudSpeaker;
	[1] call _raiseTargets;
	[2] call _raiseTargets;
	[6] call _raiseTargets;
	[3] call _raiseTargets;
	[8] call _raiseTargets;
	[4] call _raiseTargets;
	[7] call _raiseTargets;
	[2] call _raiseTargets;
	[1] call _raiseTargets;
	[5] call _raiseTargets;
	[2,4] call _raiseTargets;
	[1,5] call _raiseTargets;
	[7,3] call _raiseTargets;
	[3,6] call _raiseTargets;
	[2,5] call _raiseTargets;
	sleep 2;
	["Reload"] call _loudSpeakerVoice;
	["Reload one 20 round magazine."] call _rangeMessage;
	sleep 10;
	["Prone1"] call _loudSpeakerVoice;
	["Assume a prone position and scan your lane."] call _rangeMessage;
	sleep 5;
	["RangeIsHot"] call _loudSpeakerVoice;
	["Range is hot!"] call _rangeMessage;
	sleep 2;
	["FD_Course_Active_F"] call _loudSpeaker;
	[5] call _raiseTargets;
	[2] call _raiseTargets;
	[7] call _raiseTargets;
	[1] call _raiseTargets;
	[8] call _raiseTargets;
	[3] call _raiseTargets;
	[4] call _raiseTargets;
	[6] call _raiseTargets;
	[3] call _raiseTargets;
	[2] call _raiseTargets;
	sleep 2;
	["Assume a kneeling position and scan your lane."] call _rangeMessage;
	["Kneel"] call _loudSpeakerVoice;
	sleep 5;
	["Range is hot!"] call _rangeMessage;
	["RangeIsHot"] call _loudSpeakerVoice;
	sleep 2;
	rr_mustKneel = true;
	[1] call _raiseTargets;
	[3] call _raiseTargets;
	[4] call _raiseTargets;
	[2] call _raiseTargets;
	[3] call _raiseTargets;
	[2] call _raiseTargets;
	[4] call _raiseTargets;
	[1] call _raiseTargets;
	[3] call _raiseTargets;
	[2] call _raiseTargets;
	sleep 1;
	["Cease Fire! Cease Fire! Cease Fire!"] call _rangeMessage;
	["CeaseFire1"] call _loudSpeakerVoice;
	sleep 4;
	["StandbyScore"] call _loudSpeakerVoice;
	["Standby for final score..."] call _rangeMessage;
	sleep 5;
	[_hitData, _totalCount, _rangeData, true] execVM "scripts\range\rifle\scoreMessage.sqf";
};

_timePerTarget = 5; // Time that targets stay up
_timeBetweenTargets = 3; // Delay between target groups

_raiseTargets = {
	_targetIndices = _this;
	_totalCount = _totalCount + (count _targetIndices);
	_lanesTargetsToRaise = [];
	
	for "_i" from 0 to ((count _lanes) - 1) do {
		_thisLaneAllTargets = (_lanes select _i) select 4;
		_thisLaneTargetsToRaise = [];
		
		{
			_thisLaneTargetsToRaise = _thisLaneTargetsToRaise + [(_thisLaneAllTargets select (_x - 1))];
		} foreach _targetIndices;
		
		_lanesTargetsToRaise = _lanesTargetsToRaise + [_thisLaneTargetsToRaise];
	};
	
	{
		{
			_x animate ["terc", 0];
			[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopUp_Large_F"]] call CBA_fnc_globalExecute;
		} foreach _x;
	} foreach _lanesTargetsToRaise;
	
	sleep (_timePerTarget * count (_lanesTargetsToRaise select 0));
	
	for "_i" from 0 to ((count _lanes) - 1) do {
		_thisLaneTargetsToRaise = _lanesTargetsToRaise select _i;
		_shootingPos = ((_lanes select _i) select 3);
		_thisLaneHits = 0;

		{
			if(_x animationPhase "terc" > 0) then {
				if(rr_mustKneel) then {
					_shooter = nearestObject [_shootingPos, "Man"];
					_animState = animationState _shooter;
					_animStateChars = toArray _animState;
					_animShort = toUpper (toString [_animStateChars select 5,_animStateChars select 6,_aniMStateChars select 7]);
					_playerStance = "";
					
					switch (_animShort) do {
						case "ERC" : {_playerStance = "Standing"};
						case "KNL" : {_playerStance = "Kneeling"};
						case "PNE" : {_playerStance = "Prone"};
					};
					
					if(_playerStance == "Prone") then {
						_message = format ["Shooter at Lane %1 (%2) was prone! Shot disqualified.", _i, name _shooter];
						if(isMultiplayer) then {
							[-2, {rangemaster globalChat _this}, _message] call CBA_fnc_globalExecute;
						} else {
							systemChat _message;
						};
					} else {
						_thisLaneHits = _thisLaneHits + 1;
					};
				} else {
					_thisLaneHits = _thisLaneHits + 1;
				};
			};
			[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopDown_Large_F"]] call CBA_fnc_globalExecute;
			_x animate ["terc", 1];
		} foreach _thisLaneTargetsToRaise;
		
		_hitData set [_i, (_hitData select _i) + _thisLaneHits];
	};
	
	sleep 1;
	
	[_hitData, _totalCount, _rangeData] execVM "scripts\range\rifle\scoreMessage.sqf";
	
	sleep _timeBetweenTargets - 1;
};

{
	_thisLaneTargets = _x select 4;
	{
		_x setVariable ["Cav_targetPopup", false, true];
		_x animate ["terc", 1];
		[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopDown_Large_F"]] call CBA_fnc_globalExecute;
	} foreach _thisLaneTargets;
} foreach _lanes;

[] call _laneSequence;

{
	_thisLaneTargets = _x select 4;
	{
		_x setVariable ["Cav_targetPopup", true, true];
		_x animate ["terc", 0];
		[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopUp_Large_F"]] call CBA_fnc_globalExecute;
	} foreach _thisLaneTargets;
} foreach _lanes;

rangeRifle = 0;
publicVariable "rangeRifle";