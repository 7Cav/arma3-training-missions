params ["_obj",["_color",[1,1,1]],["_mult",1]];

_col = 5;
_amb = 6;

_light = "#lightpoint" createVehicleLocal getPos _obj;
_light setLightBrightness 400 * _mult;
_light setLightIntensity 400 * _mult;
_light setLightAmbient [
    _amb * (_color select 0) * _mult,
    _amb * (_color select 1) * _mult,
    _amb * (_color select 2) * _mult
];
_light setLightColor [
    _col * (_color select 0) * _mult,
    _col * (_color select 1) * _mult,
    _col * (_color select 2) * _mult
];
