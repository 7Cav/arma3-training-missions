waitUntil {!isNull player};
_unit = _this select 0;

if (typeOf _unit == "rhsusf_usmc_marpat_wd_officer") then
{
		_mrk11 = createMarkerLocal["mrk_11",getMarkerPos "lightning"];
		_mrk11 setMarkerTextLocal "LIGHTNING NORTH-WEST";
		_mrk11 setMarkerColorLocal "ColorBLACK";
		_mrk11 setMarkerDirLocal 225;
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
		
		_mrk21 = createMarkerLocal["mrk_21",getMarkerPos "bty_ctr"];
		_mrk21 setMarkerTextLocal "BTY CTR";
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
	};