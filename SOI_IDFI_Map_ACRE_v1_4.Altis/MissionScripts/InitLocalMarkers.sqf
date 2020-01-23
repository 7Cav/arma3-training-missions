waitUntil {!isNull player};
_unit = _this select 0;

switch (typeOf _unit) do {
	case "rhsusf_usmc_marpat_wd_officer" : {
		_mrk11 = createMarkerLocal["mrk_11",getMarkerPos "lightning"];
		_mrk11 setMarkerTextLocal "LIGHTNING NORTH-WEST";
		_mrk11 setMarkerColorLocal "ColorBLACK";
		_mrk11 setMarkerDirLocal 0;
		_mrk11 setMarkerTypeLocal "mil_start";		
		
		_mrk12 = createMarkerLocal["mrk_12",getMarkerPos "arrow_1"];
		_mrk12 setMarkerTextLocal "";
		_mrk12 setMarkerColorLocal "ColorBLACK";
		_mrk12 setMarkerDirLocal 200;
		_mrk12 setMarkerTypeLocal "mil_arrow";		
		
		_mrk13 = createMarkerLocal["mrk_13",getMarkerPos "arrow_2"];
		_mrk13 setMarkerTextLocal "";
		_mrk13 setMarkerColorLocal "ColorBLACK";
		_mrk13 setMarkerDirLocal 225;
		_mrk13 setMarkerTypeLocal "mil_arrow";		
		
		_mrk21 = createMarkerLocal["mrk_21",getMarkerPos "MFP4"];
		_mrk21 setMarkerTextLocal "MFP04";
		_mrk21 setMarkerColorLocal "ColorBLACK";
		_mrk21 setMarkerDirLocal 200;
		_mrk21 setMarkerTypeLocal "mil_ambush";		
		
		_mrk22 = createMarkerLocal["mrk_22",getMarkerPos "instr"];
		_mrk22 setMarkerTextLocal "ONLY INSTRUCTORS CAN SEE MARKERS IN BLACK";
		_mrk22 setMarkerColorLocal "ColorBLACK";
		_mrk22 setMarkerDirLocal 0;
		_mrk22 setMarkerTypeLocal "mil_triangle";		
		
		_mrk23 = createMarkerLocal["mrk_23",getMarkerPos "lightning_tgt1"];
		_mrk23 setMarkerTextLocal "EI DUG IN";
		_mrk23 setMarkerColorLocal "ColorBLACK";
		_mrk23 setMarkerDirLocal 30;
		_mrk23 setMarkerTypeLocal "mil_ambush";		
		
		_mrk31 = createMarkerLocal["mrk_31",getMarkerPos "MFP1"];
		_mrk31 setMarkerTextLocal "MFP01";
		_mrk31 setMarkerColorLocal "ColorBLACK";
		_mrk31 setMarkerDirLocal 190;
		_mrk31 setMarkerTypeLocal "mil_ambush";		
		
		_mrk32 = createMarkerLocal["mrk_32",getMarkerPos "MFP2"];
		_mrk32 setMarkerTextLocal "MFP02";
		_mrk32 setMarkerColorLocal "ColorBLACK";
		_mrk32 setMarkerDirLocal 210;
		_mrk32 setMarkerTypeLocal "mil_ambush";		
		
		_mrk33 = createMarkerLocal["mrk_33",getMarkerPos "arrow_3"];
		_mrk33 setMarkerTextLocal "";
		_mrk33 setMarkerColorLocal "ColorBLACK";
		_mrk33 setMarkerDirLocal 200;
		_mrk33 setMarkerTypeLocal "mil_arrow";		
		
		_mrk41 = createMarkerLocal["mrk_41",getMarkerPos "arrow_4"];
		_mrk41 setMarkerTextLocal "";
		_mrk41 setMarkerColorLocal "ColorBLACK";
		_mrk41 setMarkerDirLocal 300;
		_mrk41 setMarkerTypeLocal "mil_arrow";
		
		_mrk42 = createMarkerLocal["mrk_42",getMarkerPos "MFP3"];
		_mrk42 setMarkerTextLocal "MFP03";
		_mrk42 setMarkerColorLocal "ColorBLACK";
		_mrk42 setMarkerDirLocal 170;
		_mrk42 setMarkerTypeLocal "mil_ambush";
		
		_mrk43 = createMarkerLocal["mrk_43",getMarkerPos "arrow_5"];
		_mrk43 setMarkerTextLocal "";
		_mrk43 setMarkerColorLocal "ColorBLACK";
		_mrk43 setMarkerDirLocal 50;
		_mrk43 setMarkerTypeLocal "mil_arrow";
		
		_mrk44 = createMarkerLocal["mrk_44",getMarkerPos "arrow_6"];
		_mrk44 setMarkerTextLocal "";
		_mrk44 setMarkerColorLocal "ColorBLACK";
		_mrk44 setMarkerDirLocal 0;
		_mrk44 setMarkerTypeLocal "mil_arrow";
		
		_mrk45 = createMarkerLocal["mrk_45",getMarkerPos "arrow_7"];
		_mrk45 setMarkerTextLocal "";
		_mrk45 setMarkerColorLocal "ColorBLACK";
		_mrk45 setMarkerDirLocal 355;
		_mrk45 setMarkerTypeLocal "mil_arrow";
		};
};