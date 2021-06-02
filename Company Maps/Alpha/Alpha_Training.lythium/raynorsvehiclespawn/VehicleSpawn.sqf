_args = _this select 3;

_args params ["_spawnObject", "_vehType", "_valid"];


if(_valid) then {
	_occupied = objNull;
	{
		_veh = _x;
		if({alive _x} count crew _veh == 0) then {
			deleteVehicle _x;
		} else {
			_occupied = _veh;
		};
	} foreach nearestObjects [getPosATL _spawnObject, ["LandVehicle", "Air", "Wreck_Base", "CraterLong"], 15, true];
	
	if(isNull _occupied) then {
		if(_vehType != "Clear") then {
			sleep 0.1;
			
			_veh = createVehicle [_vehType,[0,0,1000],[],0,"CAN_COLLIDE"];
			_veh setDir (getDir _spawnObject);
			_veh setPos [getPosATL _spawnObject select 0, getPosATL _spawnObject select 1, ((getPosATL _spawnObject) select 2) + 0.2];
			
			_displayName = getText (configFile >> "CfgVehicles" >> _vehType >> "displayName");
			
			hint format ["%1 spawned", _displayName];
			
			[_veh] execVM "RaynorsVehicleSpawn\addEditable.sqf";
		};
	} else {
		_displayName = getText (configFile >> "CfgVehicles" >> typeOf _occupied >> "displayName");
		if (_displayName == "") then {
		    _displayName = "Vehicle";
		};
		hint format ["%1 on the pad is occupied, unable to clear pad for spawn",_displayName];
	};
	
	
} else {
	hint "That vehicle class is invalid!";
};
