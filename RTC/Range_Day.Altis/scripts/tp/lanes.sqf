
params ["_sign", "_tag"];

for "_i" from 1 to 8 do {
	_text = format ["Lane %1", _i];
	_mkrText = format ["mkr_%1Lane_%2", _tag, _i];
	_mkrPos = getMarkerPos _mkrText;
	if(_mkrPos isEqualTo [0,0,0]) then {
		systemChat format ["Failed to get markerPos %1", _mkrText];
	} else {
		_dir = markerDir _mkrText;
		_sign addAction [_text, format ["player setPos %1; player setDir %2", _mkrPos, _dir]];
	};
};