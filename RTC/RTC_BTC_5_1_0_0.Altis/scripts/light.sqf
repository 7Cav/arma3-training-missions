
_source = _this select 0;
_brightness = _this select 1;
_ambient = _this select 2;
_color = _this select 3;

_light = "#lightpoint" createVehicle (getPos _source);
_light setLightBrightness _brightness;
_light setLightAmbient _ambient;
_light setLightColor _color;
_light setLightDayLight true;