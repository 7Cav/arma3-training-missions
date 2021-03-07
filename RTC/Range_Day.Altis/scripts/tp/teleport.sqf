params ["_target","_caller","_id","_args"];

private ["_destObj","_destPos", "_faceobject","_dir"];

if(count _this > 1) then {
    _args = _this select 3;
    _destObj = _args select 0;
    _faceobject = _args select 1;
    _dir = _destObj getRelDir _faceobject;
    _destPos = getPos _destObj;
} else {
    _destPos = _this select 0;
    _dir = random 359;
};

_distance = 4;

player SetPos [(_destPos select 0)-_distance*sin(_dir),(_destPos select 1)-_distance*cos(_dir)];

if(!isNil "_faceobject") then {
    sleep 0.1;
    player setDir ((getDir player) + (player getRelDir (getPos _faceObject)));
};
