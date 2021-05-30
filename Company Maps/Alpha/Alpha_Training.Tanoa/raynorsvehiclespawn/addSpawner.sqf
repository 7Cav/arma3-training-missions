
params [["_spawnObj",objNull,[objNull]],["_vehicles","",["",[]]]];

if (count synchronizedObjects _spawnObj < 1) exitWith {
	diag_log text format ["Raynor Vehicle Spawner: Nothing synced with %1",_spawnObj]
};

private _sign = ((synchronizedObjects _spawnObj) select 0);

call compile preprocessFileLineNumbers "RaynorsVehicleSpawn\!spawnerList.sqf";

if(isNil '_vehicles') exitWith {systemChat "_vehicles was nil"};

private _vehiclesArr = [[],[],[],[]];
private _vehiclesArrSorted = [];

if(typeName _vehicles == "STRING") then {
	private _vehiclesArrInput = missionNamespace getVariable _vehicles;
	if(isNil '_vehiclesArrInput') exitWith {diag_log text format ["Raynor Vehicle Spawner: _vehicles value was not found in spawnerList: %1", _vehicles]};
	
	diag_log text format ["Raynor's Vehicle Spawn List: %1", _vehicles];
	
	{
		private _config = (configFile >> "CfgVehicles" >> _x);
		private _side = (getNumber (_config >> "side"));
		
		if(isClass _config) then {
			(_vehiclesArr select _side) pushback [getText (_config >> "displayName"), _x];
		} else {
			diag_log text "Raynor's Vehicle Spawn: Bad vehicle class requested:";
			diag_log text format ["List: %1", _vehicles];
			diag_log text format ["Class: %1", _x];
		};
	} foreach _vehiclesArrInput;

} else { //typeName _vehicles == "ARRAY"
	{
		private _vehicleType = _x;
		private _filter = [ // [string - startswith filter, bool - include root]
			["FIR_A10A", true],
			["FIR_A10C", true],
			["FIR_F16C", true],
			["FIR_F16D", true],
			["FIR_F15C", true],
			["FIR_F15D", true],
			["FIR_F15E", true],
			["FIR_F15J", false],
			["FIR_F15K", false],
			["RHS_T50", true],
			["RHS_TU95", false]
		];
		
		
		// [0 - east], [1 - west], [2 - resist], [3 - civilian];
		{
			private _config = _x;
			private _className = configName _config;
			//diag_log text format ["_className: %1",_className];
			private _ignore = false;
			{
				_x params ["_filterStr","_includeRoot"];
				//diag_log text format ["_filterStr: %1",_filterStr];
				if((_className find _filterStr) == 0) then {
					if(_includeRoot) then {
						if(_className != _filterStr) then {
							_ignore = true;
						};
					} else {
						_ignore = true;
					};
				};
			} foreach _filter;
			if(!_ignore) then {
				private _push = true;
				_side = (getNumber (_x >> "side"));
				{
					_x params ["_displayName", "_testConfig"];
					if(getText (_config >> "displayName") == getText (_testConfig >> "displayName")) then {
						_push = false;
					};
				} foreach (_vehiclesArr select _side);
				
				if(_push) then {
					(_vehiclesArr select _side) pushback [getText (_x >> "displayName"), _x];
				};
			};
		} foreach (format ["(getNumber (_x >> 'side') in [0,1,2,3]) &&(getNumber (_x >> 'scope') >= 2) && (configName _x isKindOf '%1')", _vehicleType] configClasses (configFile >> "CfgVehicles"));
	} forEach _vehicles;
	
	private _totalCount = 0;
	{
	    {
	        _totalCount = _totalCount + 1;
	    } forEach _x;
	} forEach _vehiclesArr;
	diag_log text format ["Raynor's Vehicle Spawn List: Generated - Filter: %1 - List Size: %2", _vehicles, _totalCount];
};

private _east = _vehiclesArr select 0;
_vehiclesArr set [0, _vehiclesArr select 1];
_vehiclesArr set [1, _east];

{
	_arr = _x sort true;
	_vehiclesArrSorted = _vehiclesArrSorted + _x;
} foreach _vehiclesArr;

_sign allowDamage false;
_sign enableSimulation false;

{
	_x params ["_displayName", "_veh"];
	
	private _config = if(typeName _veh == "STRING") then {(configFile >> "CfgVehicles" >> _veh)} else {_veh};
	private _name = getText (_config >> "displayName");
	private _side = getNumber (_config >> "side");
	
	private _color = "#ffffff";
	switch(_side) do {
		case 0: {_color = "#ff6666";}; //east
		case 1: {_color = "#6bb5ff";}; //west
		case 2: {_color = "#77ff77";}; //ind
		case 3: {_color = "#e789ff";}; //civ
	};
	
	if(_name == "") then {
		_sign addAction [format["<t color='#777777'>%1</t>", _config], "RaynorsVehicleSpawn\VehicleSpawn.sqf", [_spawnObj, configName _config, false],10,false,false];
	} else {
		_sign addAction [format["<t color='%1'>%2</t>", _color, _name], "RaynorsVehicleSpawn\VehicleSpawn.sqf", [_spawnObj, configName _config, true],10,false,false];
	};
} foreach _vehiclesArrSorted;

_sign addAction [format["<t color='#ffff55'>%1</t>", "Clear Spawn Area"], "RaynorsVehicleSpawn\VehicleSpawn.sqf", [_spawnObj, "Clear", true],10,false,false];
