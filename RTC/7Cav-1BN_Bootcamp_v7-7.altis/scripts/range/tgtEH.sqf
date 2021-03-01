params [["_target",nil]];

//if(!isNil "TestTgtEH") then {_target removeEventHandler ["HitPart", TestTgtEH]};
//removeAllActions _target;
_target setVariable ["Cav_targetPopup", true, true];
_target setVariable ["Cav_targetDown", false, true];
_target setVariable ["Cav_targetPopDelay", 5, true];
_target animate ["terc",0];

/*
_ehArgs 		= _this select 0;
	_target 		= _ehArgs select 0;
	_shooter 		= _ehArgs select 1;
	_position		= _ehArgs select 3;
	_selection 		= _ehArgs select 5;
	_direct 		= _ehArgs select 10;
_rangeVarStr	= _this select 1;
_laneName 		= _this select 2;
_laneIndex		= _this select 3;
_readout 		= _this select 4;
_targetIndex	= _this select 5;
_showRange 		= _this select 6;
*/

EH_hit = {
	params ["_target","_shooter","_bullet","_position","_velocity","_selection","_ammo","_direction","_radius","_surface","_direct"];
	
	//createVehicle ["Sign_Sphere100cm_F", _position, [], 0, ""];
	
	//hint format ["Popup: %1", (_target getVariable ["Cav_targetPopup", true])];
	
	if(_selection isEqualTo ["target"] && !(_target getVariable ["Cav_targetDown", false])) then {
		_target setVariable ["Cav_targetDown", true, true];
		//hint "down";
		_target animate ["terc", 1];
		[_this] execVM 'scripts\range\checkhit.sqf';
		
		_target spawn {
			waitUntil{sleep 0.1; _this animationPhase "terc" < 0.9};
			_this setVariable ["Cav_targetDown", false, true];
		};
		
		if(_target getVariable ["Cav_targetPopup", true]) then {
			sleep (_target getVariable ["Cav_targetPopDelay", 5]);
			//hint "up";
			if(_target getVariable ["Cav_targetPopup", true]) then {
				_target animate ["terc", 0];
			};
		//} else {
		//	waitUntil{sleep 0.1; _target getVariable ["Cav_targetPopup", true]};
		//	_target animate ["terc", 0];
		};
	};
	
	false
};

_target addEventHandler ["HitPart", {(_this select 0) spawn EH_hit}];

/*
//Testing
TestTgtAction1 = _target addAction ["Disable Popup", {(_this select 0) setVariable ["Cav_targetPopup", false, true]; hint format ["Popup: %1", ((_this select 0) getVariable ["Cav_targetPopup", true])];}];
TestTgtAction2 = _target addAction ["Enable Popup", {(_this select 0) setVariable ["Cav_targetPopup", true, true]; hint format ["Popup: %1", ((_this select 0) getVariable ["Cav_targetPopup", true])];}];
TestTgtAction2 = _target addAction ["5 second delay", {(_this select 0) setVariable ["Cav_targetPopDelay", 5, true];}];
TestTgtAction2 = _target addAction ["2 second delay", {(_this select 0) setVariable ["Cav_targetPopDelay", 2, true];}];
TestTgtAction3 = _target addAction ["Raise", {(_this select 0) animate ["terc", 0]}];
*/