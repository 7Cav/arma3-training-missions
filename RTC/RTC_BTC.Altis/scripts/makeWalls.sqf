//Make walls for rifle range
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

{
	[_x, getPos _x, _angleOffset, _offsetAdjustment, _height, _distance] spawn _duplicate;
	
	/*
	_srcBoundingBox = boundingBoxReal _x;
	_srcBoundingBoxHeight = (abs((_srcBoundingBox select 0) select 2) + abs((_srcBoundingBox select 1) select 2));
	_srcBoundingBoxWidth = (abs((_srcBoundingBox select 0) select 2) + abs((_srcBoundingBox select 1) select 2));

	_woodWall = "Land_Shoot_House_Wall_Long_F" createVehicle [0,0,0];
	_woodBoundingBox = boundingBoxReal _woodWall;
	_woodBoundingBoxWidth = (abs((_woodBoundingBox select 0) select 0) + abs((_woodBoundingBox select 1) select 0));
	
	_woodWallXDifference = ((_woodBoundingBoxWidth - _srcBoundingBoxWidth) * 2);
	
	_woodWallPos0 = [
		(getpos _x select 0) - _woodWallXDifference,
		(getpos _x select 1),
		0
	];
	
	_woodWallHeight = _srcBoundingBoxHeight + _height - 0.03;
	
	
	["Land_Shoot_House_Wall_Long_F", _woodWallPos0, _angleOffset, 0, _woodWallHeight, _distance] spawn _duplicate;
	*/

} foreach [rr_wall_lane0, rr_wall_lane1, rr_wall_lane2, rr_wall_lane3, rr_wall_lane4, rr_wall_lane5, rr_wall_lane6];

[rr_wall_front, getPos rr_wall_front, _angleOffset, 0, 0, 260] spawn _duplicate;