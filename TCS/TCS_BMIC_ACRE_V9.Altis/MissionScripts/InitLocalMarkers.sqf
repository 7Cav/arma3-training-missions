waitUntil {!isNull player};
_unit = _this select 0;

switch (typeOf _unit) do {
	case "rhsusf_usmc_marpat_wd_crewman" : {
		_mrk11 = createMarkerLocal["dir_11",getMarkerPos "dir11"];
		_mrk11 setMarkerTextLocal "";
		_mrk11 setMarkerColorLocal "ColorGREEN";
		_mrk11 setMarkerDirLocal 250;
		_mrk11 setMarkerTypeLocal "mil_arrow";		
		
		_mrk13 = createMarkerLocal["dir_13",getMarkerPos "dir13"];
		_mrk13 setMarkerTextLocal "";
		_mrk13 setMarkerColorLocal "ColorBLUFOR";
		_mrk13 setMarkerDirLocal 260;
		_mrk13 setMarkerTypeLocal "mil_arrow";		
		
		_mrk14 = createMarkerLocal["dir_14",getMarkerPos "dir14"];
		_mrk14 setMarkerTextLocal "DISMOUNT POSITION 1";
		_mrk14 setMarkerColorLocal "ColorBLUFOR";
		_mrk14 setMarkerDirLocal 160;
		_mrk14 setMarkerTypeLocal "mil_ambush";		
		
		_mrk21 = createMarkerLocal["dir_21",getMarkerPos "dir21"];
		_mrk21 setMarkerTextLocal "ROUTE 1";
		_mrk21 setMarkerColorLocal "ColorRED";
		_mrk21 setMarkerDirLocal 355;
		_mrk21 setMarkerTypeLocal "mil_arrow";		
		
		_mrk22 = createMarkerLocal["dir_22",getMarkerPos "dir22"];
		_mrk22 setMarkerTextLocal "ROUTE 1";
		_mrk22 setMarkerColorLocal "ColorRED";
		_mrk22 setMarkerDirLocal 350;
		_mrk22 setMarkerTypeLocal "mil_arrow";		
		
		_mrk23 = createMarkerLocal["dir_23",getMarkerPos "dir23"];
		_mrk23 setMarkerTextLocal "ROUTE 1";
		_mrk23 setMarkerColorLocal "ColorRED";
		_mrk23 setMarkerDirLocal 290;
		_mrk23 setMarkerTypeLocal "mil_arrow";		
		
		_mrk24 = createMarkerLocal["dir_24",getMarkerPos "dir24"];
		_mrk24 setMarkerTextLocal "AMBUSH POINT 1";
		_mrk24 setMarkerColorLocal "ColorRED";
		_mrk24 setMarkerDirLocal 255;
		_mrk24 setMarkerTypeLocal "mil_ambush";		
				
		_mrk41 = createMarkerLocal["dir_41",getMarkerPos "dir41"];
		_mrk41 setMarkerTextLocal "NOTE:  ONLY INSTRUCTORS CAN SEE ROUTE AND AMBUSH POINT MARKERS ON MAP";
		_mrk41 setMarkerColorLocal "ColorBLACK";
		_mrk41 setMarkerDirLocal 0;
		_mrk41 setMarkerTypeLocal "mil_triangle";		
	};
};