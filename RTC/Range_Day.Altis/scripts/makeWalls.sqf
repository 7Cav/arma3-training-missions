//Make walls for ranges
_duplicate = {

	_src = _this select 0;
	_srcPos = _this select 1;
	_angleOffset = _this select 2;
	_offsetAdjustment = _this select 3;
	_height = _this select 4;
	_distance = _this select 5;
	
	_count = 0;
	_srcType = "";
	_srcObject = nil;
	
	if(typeName _src == "STRING") then {
		_srcType = _src;
		_srcObject = _srcType createVehicle [0,0,0];
	} else {
		_srcType = typeOf _src;
		_srcObject = _src;
	};
	
	_boundingBox = boundingBoxReal _srcObject;
	_boundingBoxSize = ((abs((_boundingBox select 0) select 0) + abs((_boundingBox select 1) select 0)) + _offsetAdjustment);
	
	_count = round (_distance / _boundingBoxSize);
	
	deleteVehicle _srcObject;
	_srcDir = getDir _srcObject;
	_offsetMagnitude = (_boundingBoxSize + _offsetAdjustment);
	_sinOffset = sin(_srcDir + _angleOffset);
	_cosOffset = cos(_srcDir + _angleOffset);
	for "_i" from 0 to _count do {
		_loc = [
			(_srcPos select 0) + (_offsetMagnitude * _i * _sinOffset),
			(_srcPos select 1) + (_offsetMagnitude * _i * _cosOffset),
			_height
		];
		
		_wall = createVehicle [typeOf _srcObject, _loc, [], 0, "CAN_COLLIDE"];
		_wall setDir (getDir _srcObject);
	};
};

_offsetAdjustment = -0.07;
_height = -0.6;
_angleOffset = 90;
_distance = 300;

rr_walls_N = [rr_wall_lane0, rr_wall_lane1, rr_wall_lane2, rr_wall_lane3, rr_wall_lane4];
rr_walls_S = [rr_wall_lane5, rr_wall_lane6, rr_wall_lane7, rr_wall_lane8, rr_wall_lane9];
mg_walls_N = [mg_wall_lane0, mg_wall_lane1, mg_wall_lane2, mg_wall_lane3, mg_wall_lane4];
mg_walls_S = [mg_wall_lane5, mg_wall_lane6, mg_wall_lane7, mg_wall_lane8, mg_wall_lane9];

{
	[_x, getPos _x, _angleOffset, _offsetAdjustment, _height, 700] spawn _duplicate;
} foreach (rr_walls_N + rr_walls_S);

{
	[_x, getPos _x, _angleOffset, _offsetAdjustment, _height, 900] spawn _duplicate;
} foreach (mg_walls_N + mg_walls_S);

[rr_wall_front_N, getPos rr_wall_front_N, _angleOffset + 180, 0, 0, 230] spawn _duplicate;
[rr_wall_front_S, getPos rr_wall_front_S, _angleOffset, 0, 0, 230] spawn _duplicate;
[mg_wall_front_N, getPos mg_wall_front_N, _angleOffset, 0, 0, 500] spawn _duplicate;
[mg_wall_front_S, getPos mg_wall_front_S, _angleOffset + 180, 0, 0, 500] spawn _duplicate;




