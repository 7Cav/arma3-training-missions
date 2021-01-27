params ["_obj"];

_offset = [0,0,0];

switch (typeOf _obj) do {
    case "Land_LampHalogen_F" : {
        _offset = [0,0,6.7];
    };
};

_spawnPos = _obj modelToWorld _offset;

_light = "#lightpoint" createVehicleLocal _spawnPos;
_light setLightBrightness 1.0;
_light setLightUseFlare true;
_light setLightFlareSize 30;
_light setLightColor [100,0,0];
_light setLightAmbient [100,0,0];
_light setLightFlareMaxDistance 1000;
_light lightAttachObject [_obj, _offset];

if (isNil "RAY_warningFlares") then {
    RAY_warningFlares = [];
};

RAY_warningFlares pushBack _light;
