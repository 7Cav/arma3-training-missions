params ["_obj",["_offset",[0,10,7]]];

_col = 10;
_amb = 2;

_light = "#lightpoint" createVehicleLocal (_obj modelToWorld _offset);
_light setLightBrightness 200;
_light setLightIntensity 200;
_light setLightAmbient [_amb,_amb,_amb];
_light setLightColor [_col,_col,_col];
