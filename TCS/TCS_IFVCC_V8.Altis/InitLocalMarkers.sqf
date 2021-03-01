waitUntil {!isNull player};
_unit = _this select 0;

switch (typeOf _unit) do {
	case "rhsusf_usmc_marpat_d_officer" : {
		_mrk1 = createMarkerLocal["AMBUSH1",getMarkerPos "AP1"];
		_mrk1 setMarkerTextLocal "Ambush point 1";
		_mrk1 setMarkerColorLocal "ColorGREEN";
		_mrk1 setMarkerDirLocal 0;
		_mrk1 setMarkerTypeLocal "mil_ambush";		
		
		_mrk2 = createMarkerLocal["AMBUSH2",getMarkerPos "AP2"];
		_mrk2 setMarkerTextLocal "Ambush point 2";
		_mrk2 setMarkerColorLocal "ColorGREEN";
		_mrk2 setMarkerDirLocal 0;
		_mrk2 setMarkerTypeLocal "mil_ambush";		
		
		_mrk3 = createMarkerLocal["AMBUSH3",getMarkerPos "AP3"];
		_mrk3 setMarkerTextLocal "Ambush point 3";
		_mrk3 setMarkerColorLocal "ColorGREEN";
		_mrk3 setMarkerDirLocal 0;
		_mrk3 setMarkerTypeLocal "mil_ambush";		
		
		_mrk4 = createMarkerLocal["AMBUSHINFO",getMarkerPos "info"];
		_mrk4 setMarkerTextLocal "NOTE:  ONLY INSTRUCTORS CAN SEE GREEN AMBUSH POINT MARKERS ON MAP";
		_mrk4 setMarkerColorLocal "ColorGREEN";
		_mrk4 setMarkerDirLocal 0;
		_mrk4 setMarkerTypeLocal "mil_triangle";		
		
		
		_mrk5 = createMarkerLocal["Ambush1maneuverpoint",getMarkerPos "man1"];
		_mrk5 setMarkerTextLocal "Ambush 1: maneuver point";
		_mrk5 setMarkerColorLocal "ColorGREEN";
		_mrk5 setMarkerDirLocal 0;
		_mrk5 setMarkerTypeLocal "mil_ambush";	

		_mrk6 = createMarkerLocal["Ambush2maneuverpoint",getMarkerPos "man2"];
		_mrk6 setMarkerTextLocal "Ambush 2: maneuver point - use both sides of road";
		_mrk6 setMarkerColorLocal "ColorGREEN";
		_mrk6 setMarkerDirLocal 0;
		_mrk6 setMarkerTypeLocal "mil_ambush";			
		
		
		_mrk7 = createMarkerLocal["Ambush3maneuverpoint",getMarkerPos "man3"];
		_mrk7 setMarkerTextLocal "Ambush 3: maneuver point";
		_mrk7 setMarkerColorLocal "ColorGREEN";
		_mrk7 setMarkerDirLocal 0;
		_mrk7 setMarkerTypeLocal "mil_ambush";	
	};
};