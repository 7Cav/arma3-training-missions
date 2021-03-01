/*
Range data format:

rangeData = [
	[
		["lane 1 name", lane1_readout, lane1_pedestal, lane1_shootingPosition, [lane targets], lane_camera
	],
	range speaker
	hit indicator var string
];

*/

_rangeData = _this select 0;
	_lanes = _rangeData select 0;
	//_speaker = _rangeData select 1;
	_varString = _rangeData select 2;

if(isServer) then {

	[] execVM "scripts\range\functions.sqf";

	_showRange = if(count _this > 1) then {_showRange = _this select 1} else {true};

	if((rangemaster getVariable [_varString, 0]) != 1) then { // Show indicators
		rangemaster setVariable [_varString, 1, true];
		call compile format ["publicVariable '%1'", _varString];
		[_varString + "_hitDrawEH", "onEachFrame", range_drawMarkIcons, [_rangeData]] call BIS_fnc_addStackedEventHandler;
		
		{
			_laneName = _x select 0;
			_readout = _x select 1;
			_readoutPedestal = _x select 2;
			_targets = _x select 4;
			_laneIndex = _forEachIndex;

			//[_readout] call range_clearMarks;
			
			_readout hideObjectGlobal false;
			
			if(!(isNil "_readoutPedestal")) then {
				_readoutPedestal hideObjectGlobal false;
			};

			/*
			[-2, {call compile _this}, format ["%1 addAction ['Clear Marks', %2, %3]", _readout, range_clearMarks, [_readout, _rangeData]]] call CBA_fnc_globalExecute;
			[-2, {call compile _this}, format ["%1 addAction ['Show Accuracy Stats', %2, %3]", _readout, range_displayAverageSingle, [_readout, _rangeData]]] call CBA_fnc_globalExecute;
			*/
			
			//{
			//	[-2, {call compile _this}, format ["%1 addEventHandler ['hitPart', {[_this select 0, '%2', '%3', %4, %5, %6, %7] execVM 'scripts\range\checkhit.sqf'}];", _x, _varString, _laneName, _laneIndex, _readout, _targets, _showRange]] call CBA_fnc_globalExecute;
			//} foreach _targets;
		} foreach _lanes;
	} else { // Hide indicators
		rangemaster setVariable [_varString, 0, true];
		call compile format ["publicVariable '%1'", _varString];
		[_varString + "_hitDrawEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		
		{
			_laneName = _x select 0;
			_readout = _x select 1;
			_readoutPedestal = _x select 2;
			_targets = _x select 4;
			
			//[_readout] call range_clearMarks;
			
			_readout hideObjectGlobal true;
			
			if(!(isNil "_readoutPedestal")) then {
				_readoutPedestal hideObjectGlobal true;
			};
			
			//[-2, {removeAllActions _this}, _readout] call CBA_fnc_globalExecute;
			
			//{
			//	_x removeAllEventHandlers "hitPart";
			//	[-2, {call compile _this}, format ["%1 removeAllEventHandlers 'hitPart'", _x]] call CBA_fnc_globalExecute;
			//} foreach _targets;
		} foreach _lanes;
	};
} else {
	
	if((rangemaster getVariable [_varString, 0]) != 1) then { // Show indicators
		[_varString + "_hitDrawEH", "onEachFrame", range_drawMarkIcons, [_rangeData]] call BIS_fnc_addStackedEventHandler;
		//{
		//	_laneName = _x select 0;
		//	_readout = _x select 1;
		//	_readoutPedestal = _x select 2;
		//	_targets = _x select 4;
		//	_laneIndex = _forEachIndex;
		//	{
		//		_id = _x addEventHandler ['hitPart', {[_this select 0, _varString, _laneName, _laneIndex, _readout, _targets, _showRange] execVM 'scripts\range\checkhit.sqf'}];
		//		_x setVariable ["Cav_hitIndicatorEHid", _id];
		//	} foreach _targets;
		//} foreach _lanes;
	} else {
		[_varString + "_hitDrawEH", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		//{
		//	{
		//		_id = _x getVariable ["Cav_hitIndicatorEHid", nil];
		//		if(isNil "_id") then {
		//			systemChat "Target is missing hit indicator EH id, cannot remove. (hit indicators are probably broken now)"};
		//		} else {
		//			_id = _x removeEventHandler ['HitPart', _id];
		//		};
		//	} foreach _targets;
		//} foreach _lanes;
	};
};
