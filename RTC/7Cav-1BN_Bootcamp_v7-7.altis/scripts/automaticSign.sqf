if(!isServer) exitWith {};

_sign = _this select 0;
_interval = _this select 1;

_images = ["image\TrainingGrounds.paa","image\Map3.paa"];

_index = 0;

[_sign, _interval, _images, _index] spawn {
	_sign = _this select 0;
	_interval = _this select 1;
	_images = _this select 2;
	_index = _this select 3;
	
	while{true} do {
		_sign setObjectTextureGlobal [0, _images select _index];
		if(_index == ((count _images) - 1)) then {
			_index = 0;
		} else {
			_index = _index + 1;
		};
		sleep _interval;
	};
};