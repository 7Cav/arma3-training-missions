waitUntil {!isNull player};
_unit = _this select 0;
// AIT Instructor Markers
if (typeOf _unit == "rhsusf_usmc_marpat_wd_officer") then
{
		_mrk11 = createMarkerLocal["mrk_ftx_11",getMarkerPos "ftx_1_start"];
		_mrk11 setMarkerTextLocal "START";
		_mrk11 setMarkerColorLocal "ColorBLUE";
		_mrk11 setMarkerDirLocal 160;
		_mrk11 setMarkerTypeLocal "mil_start";		
		
		_mrk12 = createMarkerLocal["mrk_ftx_12",getMarkerPos "ftx_1_sbf"];
		_mrk12 setMarkerTextLocal "SBF";
		_mrk12 setMarkerColorLocal "ColorBLUE";
		_mrk12 setMarkerDirLocal 45;
		_mrk12 setMarkerTypeLocal "mil_ambush";		
		
		_mrk13 = createMarkerLocal["mrk_ftx_13",getMarkerPos "ftx_1_ap"];
		_mrk13 setMarkerTextLocal "AP";
		_mrk13 setMarkerColorLocal "ColorBLUE";
		_mrk13 setMarkerDirLocal 40;
		_mrk13 setMarkerTypeLocal "mil_ambush";		
		
		_mrk21 = createMarkerLocal["mrk_ftx_21",getMarkerPos "ftx_2_start"];
		_mrk21 setMarkerTextLocal "START";
		_mrk21 setMarkerColorLocal "ColorBLUE";
		_mrk21 setMarkerDirLocal 255;
		_mrk21 setMarkerTypeLocal "mil_start";		
		
		_mrk22 = createMarkerLocal["mrk_ftx_22",getMarkerPos "ftx_2_sbf"];
		_mrk22 setMarkerTextLocal "SBF";
		_mrk22 setMarkerColorLocal "ColorBLUE";
		_mrk22 setMarkerDirLocal 230;
		_mrk22 setMarkerTypeLocal "mil_ambush";		
		
		_mrk23 = createMarkerLocal["mrk_ftx_23",getMarkerPos "ftx_2_ap"];
		_mrk23 setMarkerTextLocal "AP";
		_mrk23 setMarkerColorLocal "ColorBLUE";
		_mrk23 setMarkerDirLocal 270;
		_mrk23 setMarkerTypeLocal "mil_ambush";		
		
		_mrk31 = createMarkerLocal["mrk_ftx_31",getMarkerPos "ftx_3_start"];
		_mrk31 setMarkerTextLocal "START";
		_mrk31 setMarkerColorLocal "ColorBLUE";
		_mrk31 setMarkerDirLocal 120;
		_mrk31 setMarkerTypeLocal "mil_start";		
		
		_mrk32 = createMarkerLocal["mrk_ftx_32",getMarkerPos "ftx_3_sbf"];
		_mrk32 setMarkerTextLocal "SBF";
		_mrk32 setMarkerColorLocal "ColorBLUE";
		_mrk32 setMarkerDirLocal 90;
		_mrk32 setMarkerTypeLocal "mil_ambush";		
		
		_mrk33 = createMarkerLocal["mrk_ftx_33",getMarkerPos "ftx_3_ap"];
		_mrk33 setMarkerTextLocal "AP";
		_mrk33 setMarkerColorLocal "ColorBLUE";
		_mrk33 setMarkerDirLocal 70;
		_mrk33 setMarkerTypeLocal "mil_ambush";		
		
		_mrk41 = createMarkerLocal["mrk_ftx_41",getMarkerPos "ftx_4_start"];
		_mrk41 setMarkerTextLocal "START";
		_mrk41 setMarkerColorLocal "ColorBLUE";
		_mrk41 setMarkerDirLocal 45;
		_mrk41 setMarkerTypeLocal "mil_start";		
		
		_mrk42 = createMarkerLocal["mrk_ftx_42",getMarkerPos "ftx_4_sbf"];
		_mrk42 setMarkerTextLocal "SBF";
		_mrk42 setMarkerColorLocal "ColorBLUE";
		_mrk42 setMarkerDirLocal 350;
		_mrk42 setMarkerTypeLocal "mil_ambush";		
		
		_mrk43 = createMarkerLocal["mrk_ftx_43",getMarkerPos "ftx_4_ap"];
		_mrk43 setMarkerTextLocal "AP";
		_mrk43 setMarkerColorLocal "ColorBLUE";
		_mrk43 setMarkerDirLocal 40;
		_mrk43 setMarkerTypeLocal "mil_ambush";		
		
		_mrk51 = createMarkerLocal["mrk_ftx_51",getMarkerPos "ftx_5_start"];
		_mrk51 setMarkerTextLocal "START";
		_mrk51 setMarkerColorLocal "ColorBLUE";
		_mrk51 setMarkerDirLocal 135;
		_mrk51 setMarkerTypeLocal "mil_start";		
		
		_mrk52 = createMarkerLocal["mrk_ftx_52",getMarkerPos "ftx_5_sbf"];
		_mrk52 setMarkerTextLocal "SBF";
		_mrk52 setMarkerColorLocal "ColorBLUE";
		_mrk52 setMarkerDirLocal 35;
		_mrk52 setMarkerTypeLocal "mil_ambush";		
		
		_mrk53 = createMarkerLocal["mrk_ftx_53",getMarkerPos "ftx_5_ap"];
		_mrk53 setMarkerTextLocal "AP";
		_mrk53 setMarkerColorLocal "ColorBLUE";
		_mrk53 setMarkerDirLocal 45;
		_mrk53 setMarkerTypeLocal "mil_ambush";			
		
		_mrk24 = createMarkerLocal["mrk_tp_24",getMarkerPos "ftx_1_tp"];
		_mrk24 setMarkerTextLocal "TP Pole";
		_mrk24 setMarkerColorLocal "ColorUNKNOWN";
		_mrk24 setMarkerDirLocal 45;
		_mrk24 setMarkerTypeLocal "mil_box";			
		_mrk24 setMarkerSize [0.5, 0.5];
		
		_mrk25 = createMarkerLocal["mrk_tp_25",getMarkerPos "ftx_2_tp"];
		_mrk25 setMarkerTextLocal "TP Pole";
		_mrk25 setMarkerColorLocal "ColorUNKNOWN";
		_mrk25 setMarkerDirLocal 45;
		_mrk25 setMarkerTypeLocal "mil_box";				
		_mrk25 setMarkerSize [0.5, 0.5];
		
		_mrk26 = createMarkerLocal["mrk_tp_26",getMarkerPos "ftx_3_tp"];
		_mrk26 setMarkerTextLocal "TP Pole";
		_mrk26 setMarkerColorLocal "ColorUNKNOWN";
		_mrk26 setMarkerDirLocal 45;
		_mrk26 setMarkerTypeLocal "mil_box";
		_mrk26 setMarkerSize [0.5, 0.5];		
		
		_mrk27 = createMarkerLocal["mrk_tp_27",getMarkerPos "ftx_4_tp"];
		_mrk27 setMarkerTextLocal "TP Pole";
		_mrk27 setMarkerColorLocal "ColorUNKNOWN";
		_mrk27 setMarkerDirLocal 45;
		_mrk27 setMarkerTypeLocal "mil_box";
		_mrk27 setMarkerSize [0.5, 0.5];		
	};
// BIT Instructor Markers
if (typeOf _unit == "rhsusf_usmc_marpat_wd_gunner") then
{
		_mrk54 = createMarkerLocal["mrk_rtc_1",getMarkerPos "rtc_1_ep"];
		_mrk54 setMarkerTextLocal "EP";
		_mrk54 setMarkerColorLocal "ColorOrange";
		_mrk54 setMarkerDirLocal 0;
		_mrk54 setMarkerTypeLocal "mil_end";		
		
		_mrk55 = createMarkerLocal["mrk_rtc_2",getMarkerPos "rtc_2_wp1"];
		_mrk55 setMarkerTextLocal "WP 1";
		_mrk55 setMarkerColorLocal "ColorOrange";
		_mrk55 setMarkerDirLocal 0;
		_mrk55 setMarkerTypeLocal "mil_triangle";		
		
		_mrk56 = createMarkerLocal["mrk_rtc_3",getMarkerPos "rtc_2_ep"];
		_mrk56 setMarkerTextLocal "EP";
		_mrk56 setMarkerColorLocal "ColorOrange";
		_mrk56 setMarkerDirLocal 0;
		_mrk56 setMarkerTypeLocal "mil_end";			

		_mrk271 = createMarkerLocal["mrk_rtc_5",getMarkerPos "rtc_2_am1"];
		_mrk271 setMarkerTextLocal "Box 1";
		_mrk271 setMarkerColorLocal "ColorUNKNOWN";
		_mrk271 setMarkerDirLocal 45;
		_mrk271 setMarkerTypeLocal "mil_box";
		_mrk271 setMarkerSize [0.5, 0.5];				

		_mrk272 = createMarkerLocal["mrk_rtc_6",getMarkerPos "rtc_2_am2"];
		_mrk272 setMarkerTextLocal "Box 2";
		_mrk272 setMarkerColorLocal "ColorUNKNOWN";
		_mrk272 setMarkerDirLocal 45;
		_mrk272 setMarkerTypeLocal "mil_box";
		_mrk272 setMarkerSize [0.5, 0.5];				

		_mrk272 = createMarkerLocal["mrk_rtc_7",getMarkerPos "rtc_2_am3"];
		_mrk272 setMarkerTextLocal "Box 3";
		_mrk272 setMarkerColorLocal "ColorUNKNOWN";
		_mrk272 setMarkerDirLocal 45;
		_mrk272 setMarkerTypeLocal "mil_box";
		_mrk272 setMarkerSize [0.5, 0.5];		
	};
// BIT Student and Instructor Markers
if (typeOf _unit == "rhsusf_usmc_marpat_wd_gunner" OR typeOf _unit == "rhsusf_usmc_marpat_wd_riflemanat") then
{			
		_mrk561 = createMarkerLocal["mrk_rtc_4",getMarkerPos "rtc_2_dan"];
		_mrk561 setMarkerTextLocal "";
		_mrk561 setMarkerColorLocal "ColorEAST";
		_mrk561 setMarkerDirLocal 0;
		_mrk561 setMarkerTypeLocal "mil_warning";	
		
		_mrk57 = createMarkerLocal["mrk_tmr_1",getMarkerPos "tmr_1_wp1"];
		_mrk57 setMarkerTextLocal "WP 1";
		_mrk57 setMarkerColorLocal "ColorOrange";
		_mrk57 setMarkerDirLocal 0;
		_mrk57 setMarkerTypeLocal "mil_triangle";		
		
		_mrk58 = createMarkerLocal["mrk_tmr_2",getMarkerPos "tmr_1_wp2"];
		_mrk58 setMarkerTextLocal "WP 2";
		_mrk58 setMarkerColorLocal "ColorOrange";
		_mrk58 setMarkerDirLocal 0;
		_mrk58 setMarkerTypeLocal "mil_triangle";		
		
		_mrk59 = createMarkerLocal["mrk_tmr_3",getMarkerPos "tmr_1_ep"];
		_mrk59 setMarkerTextLocal "EP";
		_mrk59 setMarkerColorLocal "ColorOrange";
		_mrk59 setMarkerDirLocal 0;
		_mrk59 setMarkerTypeLocal "mil_end";			
		
		_mrk60 = createMarkerLocal["mrk_tmr_4",getMarkerPos "tmr_2_wp1"];
		_mrk60 setMarkerTextLocal "WP 1";
		_mrk60 setMarkerColorLocal "ColorOrange";
		_mrk60 setMarkerDirLocal 0;
		_mrk60 setMarkerTypeLocal "mil_triangle";		
		
		_mrk62 = createMarkerLocal["mrk_tmr_5",getMarkerPos "tmr_2_wp2"];
		_mrk62 setMarkerTextLocal "WP 2";
		_mrk62 setMarkerColorLocal "ColorOrange";
		_mrk62 setMarkerDirLocal 0;
		_mrk62 setMarkerTypeLocal "mil_triangle";		
		
		_mrk61 = createMarkerLocal["mrk_tmr_6",getMarkerPos "tmr_2_ep"];
		_mrk61 setMarkerTextLocal "EP";
		_mrk61 setMarkerColorLocal "ColorOrange";
		_mrk61 setMarkerDirLocal 0;
		_mrk61 setMarkerTypeLocal "mil_end";		
	};	
// BLC Instructor Markers
//TEST MARKER
if (typeOf _unit == "rhsusf_usmc_marpat_wd_machinegunner_ass") then
{
		_mrk62 = createMarkerLocal["mrk_blc_1",getMarkerPos "blc_test_1"];
		_mrk62 setMarkerTextLocal "BLC Test Marker";
		_mrk62 setMarkerColorLocal "ColorRED";
		_mrk62 setMarkerDirLocal 0;
		_mrk62 setMarkerTypeLocal "mil_warning";	
};
// ALC Instructor Markers
//TEST MARKER
if (typeOf _unit == "rhsusf_usmc_marpat_wd_squadleader") then
{
		_mrk63 = createMarkerLocal["mrk_alc_1",getMarkerPos "alc_test_1"];
		_mrk63 setMarkerTextLocal "ALC Test Marker";
		_mrk63 setMarkerColorLocal "ColorGUER";
		_mrk63 setMarkerDirLocal 0;
		_mrk63 setMarkerTypeLocal "mil_warning";	
};