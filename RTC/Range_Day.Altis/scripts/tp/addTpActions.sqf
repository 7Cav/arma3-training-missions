_tpObjects = [
	[tp_main, "Rifle/MG", main_tent],
	[tp_at, "AT Range", at_ctrl],
	[tp_m320, "M320 Range", mg_ctrl]
];

{
	private _activeObject = _x select 0;
	{
		_x params ["_destObj","_destName","_faceObject"];
		if(_activeObject != _destObj) then {
			_activeObject addAction [_destName, "scripts\tp\teleport.sqf", [_destObj, _faceObject]];
		};
	} foreach _tpObjects;
} foreach _tpObjects;
