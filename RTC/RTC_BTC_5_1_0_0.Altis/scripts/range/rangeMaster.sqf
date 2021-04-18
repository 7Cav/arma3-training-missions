/*
Range data format:

rangeData = [
	[
		["lane 1 name", lane1_readout, lane1_pedestal, lane1_shootingPosition, [lane targets]
	],
	range speaker
	hit indicator var string
];
*/

params ["_action"];

//systemChat "Rangemaster called";
[_action] spawn {
	sleep 0.5;
	params ["_action"];
	//systemChat "Checking _action == killhouse";
	if(_action == "killhouse") then {
		//systemChat "Checking killhouse == 1";
		if(killhouse == 1) then {
			//systemChat "waiting for kh_camPlayer to exists or killhouse == 0";
			waitUntil{sleep 0.1; ((!isNull (rangemaster getVariable ["kh_camPlayer", objNull])) || killhouse == 0)};
			if(killhouse == 1) then {
				//systemChat "Starting cameras!";
				[rangemaster getVariable "kh_camPlayer"] execVM "scripts\range\killhouse\camStart.sqf";
			};
		};
	};
};

if(!isServer) exitWith {};

diag_log ("Bootcamp: Running " + _action);

switch (_action) do {
	case "rifle": { //Rifle Range
		_data = rr_rangeData;
		
		if (rangeRifle != 1) then {
			rangeRifle = 1;
			publicVariable "rangeRifle";
			rangeRifle_handle = [_data] execVM "scripts\range\rifle\range.sqf";
		} else {
			terminate rangeRifle_handle;
			rangeRifle = 0;
			publicVariable "rangeRifle";
			["Cease Fire! Cease Fire! Cease Fire!","hint"] call BIS_fnc_MP;
			
			_speaker = _data select 1;
			if(rangemaster_voice) then {[_speaker,["CeaseFire1", 400]] remoteExec ["say3d"]};
			
			_lanes = _data select 0;
			{
				_thisLaneTargets = _x select 4;
				{
					_x setVariable ["Cav_targetPopup", true, true];
					_x animate ["terc", 0];
					[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopUp_Large_F"]] call CBA_fnc_globalExecute;
				} foreach _thisLaneTargets;
			} foreach _lanes;
		};
	};
	case "killhouse": { //killhouse
		_data = kh_rangeData;
		
		if (killhouse != 1) then {
			killhouse = 1;
			publicVariable "killhouse";
			killhouse_handle = [_data] execVM "scripts\range\killhouse\course.sqf";
			//["Start killhouse","systemChat"] call BIS_fnc_MP;
		} else {
			terminate killhouse_handle;
			killhouse = 0;
			publicVariable "killhouse";
			//remoteExec ["Cav_fnc_kh_camera_end"];
			rangemaster setVariable ["kh_camPlayer", objNull];
			
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

			/*
			{
				_x setObjectTextureGlobal [0,'#(argb,8,8,3)color(0,0,0,1)'];
			} foreach [kh_stoplight_screen1, kh_stoplight_screen2];
			*/
			
			remoteExec ["killhouse_setLightColorRed"];
			
			//{
			//	_x setLightAmbient [1,0,0];
			//	_x setLightColor [1,0,0];
			//} foreach kh_stoplight_lights;

			{
				_x setObjectTextureGlobal [0,"image\bootCampgrounds.paa"];
			} foreach [kh_pip_screen1, kh_pip_screen2];
			
			["Cease Fire! Cease Fire! Cease Fire!","hint"] call BIS_fnc_MP;
			rangemaster setVariable ["kh_targetTimes", [], true];
			
			_speaker = _data select 1;
			if(rangemaster_voice) then {[_speaker,["CeaseFireSafe", 400]] remoteExec ["say3d"]};

			_lanes = _data select 0;
			{
				_thisLaneTargets = _x select 4;
				{
					_x setVariable ["Cav_targetPopup", true, true];
					_x animate ["terc", 0];
					[-2, {(_this select 0) say3d (_this select 1)}, [_x, "FD_Target_PopUp_Large_F"]] call CBA_fnc_globalExecute;
				} foreach _thisLaneTargets;
			} foreach _lanes;
			
			//["End killhouse","systemChat"] call BIS_fnc_MP;
		};
	};
};

//["rangeRifle " + (str rangeRifle),"systemChat"] call BIS_fnc_MP;