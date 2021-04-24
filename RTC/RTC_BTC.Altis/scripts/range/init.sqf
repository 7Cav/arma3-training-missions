/*
Range data format:

rangeData = [
	0 (Lanes) - [
		0 - [
			0 - "lane 1 name", 
			1 - lane1_readout, 
			2 - lane1_pedestal, 
			3 - lane1_shootingPosition, 
			4 - [lane targets]
			5 - lane camera
			6 - spectator area trigger
		],
		
		1 - [
			0 - "lane 2 name", 
			1 - lane2_readout, 
			2 - lane2_pedestal, 
			3 - lane2_shootingPosition, 
			4 - [lane targets]
			5 - lane camera
			6 - spectator area trigger
		],
		etc...
	],
	1 - range speaker
	2 - hit indicator
	3 - show range
];

Lane properties:
"lane 1 name": 					String - display name of the lane in score messages
lane1_readout: 					Object - Target mirroring the targets downrange, to show where the rounds have hit
lane1_pedestal: 				Object - A purely aethsetic object that is shown and hidden along with the readout so the readout object isn't floating in the air. If there isn't one, pass nil.
lane1_shootingPosition: 		Object - The object to use as the anchor for the player check. The closest player to this object will be shown in the final range score message
lane targets: 					Array - an array listing all targets in the lane

Range Properties:
range speaker:					Object - Range audio will be played at this object
hit indicator:					String - The name of a value stored in the rangemaster game logic showing whether hit indicators are currently active for this range
show range:						Boolean - Whether to show a range value in the hit indicators verbose systemChat text for a hit
*/

// Rifle Range =======================================================================================

rr_rangeData = [
	[
		["Rifle Range L1", rr_lane1_readout, rr_lane1_readoutPedestal, rr_lane1_shootingPos, [rr_lane1_1, rr_lane1_2, rr_lane1_3, rr_lane1_4, rr_lane1_5, rr_lane1_6, rr_lane1_7, rr_lane1_8], rr_lane1_camera],
		["Rifle Range L2", rr_lane2_readout, rr_lane2_readoutPedestal, rr_lane2_shootingPos, [rr_lane2_1, rr_lane2_2, rr_lane2_3, rr_lane2_4, rr_lane2_5, rr_lane2_6, rr_lane2_7, rr_lane2_8], rr_lane2_camera],
		["Rifle Range L3", rr_lane3_readout, rr_lane3_readoutPedestal, rr_lane3_shootingPos, [rr_lane3_1, rr_lane3_2, rr_lane3_3, rr_lane3_4, rr_lane3_5, rr_lane3_6, rr_lane3_7, rr_lane3_8], rr_lane3_camera],
		["Rifle Range L4", rr_lane4_readout, rr_lane4_readoutPedestal, rr_lane4_shootingPos, [rr_lane4_1, rr_lane4_2, rr_lane4_3, rr_lane4_4, rr_lane4_5, rr_lane4_6, rr_lane4_7, rr_lane4_8], rr_lane4_camera],
		["Rifle Range L5", rr_lane5_readout, rr_lane5_readoutPedestal, rr_lane5_shootingPos, [rr_lane5_1, rr_lane5_2, rr_lane5_3, rr_lane5_4, rr_lane5_5, rr_lane5_6, rr_lane5_7, rr_lane5_8], rr_lane5_camera],
		["Rifle Range L6", rr_lane6_readout, rr_lane6_readoutPedestal, rr_lane6_shootingPos, [rr_lane6_1, rr_lane6_2, rr_lane6_3, rr_lane6_4, rr_lane6_5, rr_lane6_6, rr_lane6_7, rr_lane6_8], rr_lane6_camera]
	],
	rr_speaker,
	"rifleRangeHitIndicators",
	true
];

{
	_laneData = _x;
	_readout = _laneData select 1;
	_readout addAction ["Clear Marks", {(_this select 3) call range_clearMarks}, [_readout, rr_rangeData]];
	_readout addAction ["Show Accuracy Stats", {_this call range_displayAverageSingle}, [_readout, rr_rangeData]];
	
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
	
	_rangeVarStr = rr_rangeData select 2;
	_laneName = _x select 0;
	_laneIndex = _forEachIndex;
	_readout = _x select 1;
	_showRange = rr_rangeData select 3;
	
	{
		_x setVariable ["Cav_hitIndicatorTgtData", [_rangeVarStr, _laneName, _laneIndex, _readout, _forEachIndex, _showRange]];
		[_x] execVM "scripts\range\tgtEH.sqf";
	} foreach (_laneData select 4);
} foreach (rr_rangeData select 0);

// killhouse ========================================================================================

kh_rangeData = [
	[
		["Killhouse", kh_readout, nil, nil, [kh_target_1, kh_target_2, kh_target_3, kh_target_4, kh_target_5, kh_target_6, kh_target_7, kh_target_8, kh_target_9, kh_target_10, kh_target_11, kh_target_12, kh_target_13, kh_target_14, kh_target_15]]
	],
	kh_speaker,
	"killhouseHitIndicators",
	false
];

kh_cameraData = [
	[kh_areaStart, kh_cam_1, 1.0, -45],
	[kh_trg_cam_2, kh_cam_2, 1.0, -45], //camera backwards
	[kh_trg_cam_3, kh_cam_3, 1.0, -35],
	[kh_trg_cam_4, kh_cam_4, 1.0, -45],
	[kh_trg_cam_5, kh_cam_5, 1.0, -35],
	[kh_trg_cam_6, kh_cam_6, 0.7, -45], //rotate right 15 degrees
	[kh_trg_cam_7, kh_cam_7, 1.3, -40],
	[kh_trg_cam_8, kh_cam_8, 1.0, -35],
	[kh_trgEnd, nil, nil]
];

{
	_laneData = _x;
	_readout = _laneData select 1;
	_readout addAction ["Clear Marks", {(_this select 3) call range_clearMarks}, [_readout, kh_rangeData]];
	_readout addAction ["Show Accuracy Stats", {_this call range_displayAverageSingle}, [_readout, kh_rangeData]];
	
	_rangeVarStr = kh_rangeData select 2;
	_laneName = _x select 0;
	_laneIndex = _forEachIndex;
	_readout = _x select 1;
	_showRange = kh_rangeData select 3;
	
	{
		_x setVariable ["Cav_hitIndicatorTgtData", [_rangeVarStr, _laneName, _laneIndex, _readout, _forEachIndex, _showRange]];
		[_x] execVM "scripts\range\tgtEH.sqf";
	} foreach (_laneData select 4);
} foreach (kh_rangeData select 0);


//kh_camera_start = compile preprocessFileLineNumbers "scripts\range\killhouse\kh_camera.sqf";



// Grenade Range =====================================================================================

gr_rangeData = [
	[
		["Grenade Range L1", nil, nil, gr_lane1_shootingPos, [gr_lane1_1, gr_lane1_2, gr_lane1_3, gr_lane1_4]],
		["Grenade Range L2", nil, nil, gr_lane2_shootingPos, [gr_lane2_1, gr_lane2_2, gr_lane2_3, gr_lane2_4]],
		["Grenade Range L3", nil, nil, gr_lane3_shootingPos, [gr_lane3_1, gr_lane3_2, gr_lane3_3, gr_lane3_4]]
	],
	nil,
	nil
];

{
	_laneData = _x;
	{
		[_x, false] execVM "scripts\range\tgtEH.sqf";
		//[_x] execVM "scripts\range\grenade\handleDamage.sqf"
	} foreach (_laneData select 4);
} foreach (gr_rangeData select 0);

// Bounding Range =====================================================================================

br_rangeData = [
	[
		["Bounding Range", nil, nil, nil, [br_target1, br_target2, br_target3, br_target4, br_target5, br_target6, br_target7, br_target8]]
	],
	nil,
	nil
];

{
	_laneData = _x;
	{
		[_x] execVM "scripts\range\tgtEH.sqf";
	} foreach (_laneData select 4);
} foreach (gr_rangeData select 0);

// ===================================================================================================





[] execVM "scripts\range\functions.sqf";

killhouse = 0;
rangeRifle = 0;
rangemaster_voice = true;
range_PR = false;