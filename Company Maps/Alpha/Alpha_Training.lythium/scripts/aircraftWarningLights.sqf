params ["_obj"];

_lightType = "Land_Flush_Light_red_F";
_offset = [0,0,0];
_dirOffset = 0;

switch (typeOf _obj) do {
    case "Land_LampHalogen_F" : {
        _offset = [0,0,6.7];
    };
};

_spawnPos = _obj modelToWorld _offset;

_lightObj = createVehicle [_lightType, _spawnPos, [], 0, "CAN_COLLIDE"];
//_lightObj setPos _spawnPos;
_lightObj setDir ((getDir _obj) + _dirOffset);
_lightObj attachTo [_obj];
_lightObj enableSimulation false;
