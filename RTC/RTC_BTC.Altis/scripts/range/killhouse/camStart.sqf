//_player = _this select 0;

_player = (_this select 0);

//systemChat format ["Started killhouse camera script on: %1 - %2", _player, name _player];

diag_log "Bootcamp: Started killhouse camera script";

_offset = [0,-0.1, 0.05];

kh_cam_player = "camera" camCreate [0,0,0]; 

kh_cam_player cameraEffect ["Internal", "Back", "pip_kh_player"];
kh_cam_player attachTo [_player, [0.05,0.1,0.15], "Head"];
kh_cam_player camSetFov 0.5;
//grad_cam camSetTarget grad_cam_target;
kh_cam_player camCommit 0;


kh_cam_rooms = "camera" camCreate [0,0,0]; 
kh_cam_rooms cameraEffect ["Internal", "Back", "pip_kh_rooms"];
kh_cam_rooms camCommit 0;

kh_pip_screen1 setObjectTexture [0, "#(argb,512,512,1)r2t(pip_kh_player,1)"];
kh_pip_screen2 setObjectTexture [0, "#(argb,512,512,1)r2t(pip_kh_rooms,1)"];

diag_log "Bootcamp: Cameras set";

{
	_trigger = _x select 0;
	_camera_obj = _x select 1;
	_fov = _x select 2;
	_pitch = _x select 3;
	
	if(killhouse == 0) exitWith {};
	
	//hint str ("Waiting for trigger " + str _forEachIndex);
	if(_forEachIndex > 0) then {
		waitUntil {sleep 0.1; (_player in list _trigger) || (killhouse == 0)};
	};
	
	if(!isNil "_camera_obj" && !isNil "kh_cam_rooms") then {
		//hint str ("Going to " + str _camera_obj);
		kh_cam_rooms camSetPos (_camera_obj modelToWorld _offset);
		kh_cam_rooms setDir ((getDir _camera_obj ) - 180);
		[kh_cam_rooms, _pitch, 0] call BIS_fnc_setPitchBank;
		kh_cam_rooms camCommit 0;
	};
} foreach kh_cameraData;

{
	_x setObjectTexture [0,"image\bootCampgrounds.paa"];
} foreach [kh_pip_screen1, kh_pip_screen2];

if(!(isNil "kh_cam_player")) then {
	kh_cam_player cameraEffect ["Terminate", "Back"];
	camDestroy kh_cam_player;
	kh_cam_player = nil;
};
if(!(isNil "kh_cam_rooms")) then {
	kh_cam_rooms cameraEffect ["Terminate", "Back"];
	camDestroy kh_cam_rooms;
	kh_cam_rooms = nil;
};

