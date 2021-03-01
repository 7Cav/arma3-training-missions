waitUntil {!isNull player};
_unit = _this select 0;

if (typeOf _unit == "rhsusf_usmc_marpat_wd_officer") then
{
		_mrk11 = createMarkerLocal["nav_11",getMarkerPos "nav1_start"];
		_mrk11 setMarkerTextLocal "Nav 1 Start";
		_mrk11 setMarkerColorLocal "ColorBLACK";
		_mrk11 setMarkerDirLocal 300;
		_mrk11 setMarkerTypeLocal "mil_start";		
		
		_mrk12 = createMarkerLocal["nav_12",getMarkerPos "nav1_end"];
		_mrk12 setMarkerTextLocal "Nav 1 End 1269 2058";
		_mrk12 setMarkerColorLocal "ColorBLACK";
		_mrk12 setMarkerDirLocal 120;
		_mrk12 setMarkerTypeLocal "mil_end";
		_mrk12 setMarkerAlphaLocal .5;
		
		_mrk21 = createMarkerLocal["nav_21",getMarkerPos "nav2_start"];
		_mrk21 setMarkerTextLocal "Nav 2 Start";
		_mrk21 setMarkerColorLocal "ColorBLACK";
		_mrk21 setMarkerDirLocal 230;
		_mrk21 setMarkerTypeLocal "mil_start";		
		
		_mrk22 = createMarkerLocal["nav_22",getMarkerPos "nav2_end"];
		_mrk22 setMarkerTextLocal "Nav 2 End 1966 1679";
		_mrk22 setMarkerColorLocal "ColorBLACK";
		_mrk22 setMarkerDirLocal 50;
		_mrk22 setMarkerTypeLocal "mil_end";		
		_mrk22 setMarkerAlphaLocal .5;
		
		_mrk31 = createMarkerLocal["nav_31",getMarkerPos "nav3_start"];
		_mrk31 setMarkerTextLocal "Nav 3 Start";
		_mrk31 setMarkerColorLocal "ColorBLACK";
		_mrk31 setMarkerDirLocal 9;
		_mrk31 setMarkerTypeLocal "mil_start";		
		
		_mrk32 = createMarkerLocal["nav_32",getMarkerPos "nav3_end"];
		_mrk32 setMarkerTextLocal "Nav 3 End 2031 1631";
		_mrk32 setMarkerColorLocal "ColorBLACK";
		_mrk32 setMarkerDirLocal 189;
		_mrk32 setMarkerTypeLocal "mil_end";			
		_mrk32 setMarkerAlphaLocal .5;	

		_mrk41 = createMarkerLocal["nav_41",getMarkerPos "nav4_start"];
		_mrk41 setMarkerTextLocal "Nav 4 Start";
		_mrk41 setMarkerColorLocal "ColorBLACK";
		_mrk41 setMarkerDirLocal 188;
		_mrk41 setMarkerTypeLocal "mil_start";		
		
		_mrk42 = createMarkerLocal["nav_42",getMarkerPos "nav4_end"];
		_mrk42 setMarkerTextLocal "Nav 4 End 1838 1171";
		_mrk42 setMarkerColorLocal "ColorBLACK";
		_mrk42 setMarkerDirLocal 8;
		_mrk42 setMarkerTypeLocal "mil_end";			
		_mrk42 setMarkerAlphaLocal .5;	

		_mrk51 = createMarkerLocal["nav_51",getMarkerPos "nav5_start"];
		_mrk51 setMarkerTextLocal "Nav 5 Start";
		_mrk51 setMarkerColorLocal "ColorBLACK";
		_mrk51 setMarkerDirLocal 9;
		_mrk51 setMarkerTypeLocal "mil_start";		
		
		_mrk52 = createMarkerLocal["nav_52",getMarkerPos "nav5_end"];
		_mrk52 setMarkerTextLocal "Nav 5 End 0969 1425";
		_mrk52 setMarkerColorLocal "ColorBLACK";
		_mrk52 setMarkerDirLocal 189;
		_mrk52 setMarkerTypeLocal "mil_end";		
		_mrk52 setMarkerAlphaLocal .5;

		_mrk61 = createMarkerLocal["nav_61",getMarkerPos "nav6_start"];
		_mrk61 setMarkerTextLocal "Nav 6 Start";
		_mrk61 setMarkerColorLocal "ColorBLACK";
		_mrk61 setMarkerDirLocal 125;
		_mrk61 setMarkerTypeLocal "mil_start";		
		
		_mrk62 = createMarkerLocal["nav_62",getMarkerPos "nav6_end"];
		_mrk62 setMarkerTextLocal "Nav 6 End 0744 1293";
		_mrk62 setMarkerColorLocal "ColorBLACK";
		_mrk62 setMarkerDirLocal 305;
		_mrk62 setMarkerTypeLocal "mil_end";		
		_mrk62 setMarkerAlphaLocal .5;		
		
		_mrk71 = createMarkerLocal["nav_71",getMarkerPos "nav7_start"];
		_mrk71 setMarkerTextLocal "Nav 7 Start";
		_mrk71 setMarkerColorLocal "ColorBLACK";
		_mrk71 setMarkerDirLocal 81;
		_mrk71 setMarkerTypeLocal "mil_start";		
		
		_mrk72 = createMarkerLocal["nav_72",getMarkerPos "nav7_end"];
		_mrk72 setMarkerTextLocal "Nav 7 End 1079 1760";
		_mrk72 setMarkerColorLocal "ColorBLACK";
		_mrk72 setMarkerDirLocal 261;
		_mrk72 setMarkerTypeLocal "mil_end";		
		_mrk72 setMarkerAlphaLocal .5;

		_mrk81 = createMarkerLocal["nav_81",getMarkerPos "nav8_start"];
		_mrk81 setMarkerTextLocal "Nav 8 Start";
		_mrk81 setMarkerColorLocal "ColorBLACK";
		_mrk81 setMarkerDirLocal 315;
		_mrk81 setMarkerTypeLocal "mil_start";

		_mrk82 = createMarkerLocal["nav_82",getMarkerPos "nav8_end"];
		_mrk82 setMarkerTextLocal "Nav 8 End 1031 2013";
		_mrk82 setMarkerColorLocal "ColorBLACK";
		_mrk82 setMarkerDirLocal 135;
		_mrk82 setMarkerTypeLocal "mil_end";		
		_mrk82 setMarkerAlphaLocal .5;

		_mrk91 = createMarkerLocal["terrain_assoc",getMarkerPos "terrain"];
		_mrk91 setMarkerTextLocal "CLASSROOM AREA";
		_mrk91 setMarkerColorLocal "ColorBLACK";
		_mrk91 setMarkerDirLocal 0;
		_mrk91 setMarkerTypeLocal "mil_triangle";




		_mrk101 = createMarkerLocal["marker_note",getMarkerPos "markernote"];
		_mrk101 setMarkerTextLocal "NOTE: ONLY INSTRUCTORS CAN SEE MARKERS IN BLACK.";
		_mrk101 setMarkerColorLocal "ColorBLACK";
		_mrk101 setMarkerDirLocal 0;
		_mrk101 setMarkerTypeLocal "mil_triangle";




		_mrk152 = createMarkerLocal["nav_152",getMarkerPos "grid_practice_1"];
		_mrk152 setMarkerTextLocal "0494 1396 3671m 69m";
		_mrk152 setMarkerColorLocal "ColorBLACK";
		_mrk152 setMarkerDirLocal 0;
		_mrk152 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk172 = createMarkerLocal["nav_172",getMarkerPos "grid_practice_1_1"];
		_mrk172 setMarkerColorLocal "ColorGREEN";
		_mrk172 setMarkerDirLocal 0;
		_mrk172 setMarkerShapeLocal "rectangle";
		_mrk172 setMarkerSizeLocal [5, 5];
		_mrk172 setMarkerAlphaLocal .3;

		_mrk173 = createMarkerLocal["nav_173",getMarkerPos "grid_practice_1_1"];
		_mrk173 setMarkerColorLocal "ColorRED";
		_mrk173 setMarkerDirLocal 0;
		_mrk173 setMarkerShapeLocal "rectangle";
		_mrk173 setMarkerSizeLocal [15, 15];
		_mrk173 setMarkerAlphaLocal .3;


		_mrk153 = createMarkerLocal["nav_153",getMarkerPos "grid_practice_2"];
		_mrk153 setMarkerTextLocal "0642 1358 3441m 103m";
		_mrk153 setMarkerColorLocal "ColorBLACK";
		_mrk153 setMarkerDirLocal 0;
		_mrk153 setMarkerTypeLocal "mil_destroy";
		_mrk153 setMarkerAlphaLocal .5;

		_mrk174 = createMarkerLocal["nav_174",getMarkerPos "grid_practice_2_1"];
		_mrk174 setMarkerColorLocal "ColorGREEN";
		_mrk174 setMarkerDirLocal 0;
		_mrk174 setMarkerShapeLocal "rectangle";
		_mrk174 setMarkerSizeLocal [5, 5];
		_mrk174 setMarkerAlphaLocal .3;

		_mrk175 = createMarkerLocal["nav_175",getMarkerPos "grid_practice_2_1"];
		_mrk175 setMarkerColorLocal "ColorRED";
		_mrk175 setMarkerDirLocal 0;
		_mrk175 setMarkerShapeLocal "rectangle";
		_mrk175 setMarkerSizeLocal [15, 15];
		_mrk175 setMarkerAlphaLocal .3;


		_mrk154 = createMarkerLocal["nav_154",getMarkerPos "grid_practice_3"];
		_mrk154 setMarkerTextLocal "0797 1407 4586m 113m";
		_mrk154 setMarkerColorLocal "ColorBLACK";
		_mrk154 setMarkerDirLocal 0;
		_mrk154 setMarkerTypeLocal "mil_destroy";
		_mrk154 setMarkerAlphaLocal .5;

		_mrk176 = createMarkerLocal["nav_176",getMarkerPos "grid_practice_3_1"];
		_mrk176 setMarkerColorLocal "ColorGREEN";
		_mrk176 setMarkerDirLocal 0;
		_mrk176 setMarkerShapeLocal "rectangle";
		_mrk176 setMarkerSizeLocal [5, 5];
		_mrk176 setMarkerAlphaLocal .3;

		_mrk177 = createMarkerLocal["nav_177",getMarkerPos "grid_practice_3_1"];
		_mrk177 setMarkerColorLocal "ColorRED";
		_mrk177 setMarkerDirLocal 0;
		_mrk177 setMarkerShapeLocal "rectangle";
		_mrk177 setMarkerSizeLocal [15, 15];
		_mrk177 setMarkerAlphaLocal .3;


		_mrk155 = createMarkerLocal["nav_155",getMarkerPos "grid_practice_4"];
		_mrk155 setMarkerTextLocal "0699 1227 2560m 69m";
		_mrk155 setMarkerColorLocal "ColorBLACK";
		_mrk155 setMarkerDirLocal 0;
		_mrk155 setMarkerTypeLocal "mil_destroy";
		_mrk155 setMarkerAlphaLocal .5;

		_mrk178 = createMarkerLocal["nav_178",getMarkerPos "grid_practice_4_1"];
		_mrk178 setMarkerColorLocal "ColorGREEN";
		_mrk178 setMarkerDirLocal 0;
		_mrk178 setMarkerShapeLocal "rectangle";
		_mrk178 setMarkerSizeLocal [5, 5];
		_mrk178 setMarkerAlphaLocal .3;

		_mrk179 = createMarkerLocal["nav_179",getMarkerPos "grid_practice_4_1"];
		_mrk179 setMarkerColorLocal "ColorRED";
		_mrk179 setMarkerDirLocal 0;
		_mrk179 setMarkerShapeLocal "rectangle";
		_mrk179 setMarkerSizeLocal [15, 15];
		_mrk179 setMarkerAlphaLocal .3;


		_mrk156 = createMarkerLocal["nav_156",getMarkerPos "grid_practice_5"];
		_mrk156 setMarkerTextLocal "0347 1212 2599m 59m";
		_mrk156 setMarkerColorLocal "ColorBLACK";
		_mrk156 setMarkerDirLocal 0;
		_mrk156 setMarkerTypeLocal "mil_destroy";
		_mrk156 setMarkerAlphaLocal .5;

		_mrk180 = createMarkerLocal["nav_180",getMarkerPos "grid_practice_5_1"];
		_mrk180 setMarkerColorLocal "ColorGREEN";
		_mrk180 setMarkerDirLocal 0;
		_mrk180 setMarkerShapeLocal "rectangle";
		_mrk180 setMarkerSizeLocal [5, 5];
		_mrk180 setMarkerAlphaLocal .3;

		_mrk181 = createMarkerLocal["nav_181",getMarkerPos "grid_practice_5_1"];
		_mrk181 setMarkerColorLocal "ColorRED";
		_mrk181 setMarkerDirLocal 0;
		_mrk181 setMarkerShapeLocal "rectangle";
		_mrk181 setMarkerSizeLocal [15, 15];
		_mrk181 setMarkerAlphaLocal .3;


		_mrk157 = createMarkerLocal["nav_157",getMarkerPos "grid_practice_6"];
		_mrk157 setMarkerTextLocal "0849 1203 3588m 76m";
		_mrk157 setMarkerColorLocal "ColorBLACK";
		_mrk157 setMarkerDirLocal 0;
		_mrk157 setMarkerTypeLocal "mil_destroy";
		_mrk157 setMarkerAlphaLocal .5;

		_mrk182 = createMarkerLocal["nav_182",getMarkerPos "grid_practice_6_1"];
		_mrk182 setMarkerColorLocal "ColorGREEN";
		_mrk182 setMarkerDirLocal 0;
		_mrk182 setMarkerShapeLocal "rectangle";
		_mrk182 setMarkerSizeLocal [5, 5];
		_mrk182 setMarkerAlphaLocal .3;

		_mrk183 = createMarkerLocal["nav_183",getMarkerPos "grid_practice_6_1"];
		_mrk183 setMarkerColorLocal "ColorRED";
		_mrk183 setMarkerDirLocal 0;
		_mrk183 setMarkerShapeLocal "rectangle";
		_mrk183 setMarkerSizeLocal [15, 15];
		_mrk183 setMarkerAlphaLocal .3;


		_mrk158 = createMarkerLocal["nav_158",getMarkerPos "grid_practice_7"];
		_mrk158 setMarkerTextLocal "1075 1053 5416m 15m";
		_mrk158 setMarkerColorLocal "ColorBLACK";
		_mrk158 setMarkerDirLocal 0;
		_mrk158 setMarkerTypeLocal "mil_destroy";
		_mrk158 setMarkerAlphaLocal .5;

		_mrk184 = createMarkerLocal["nav_184",getMarkerPos "grid_practice_7_1"];
		_mrk184 setMarkerColorLocal "ColorGREEN";
		_mrk184 setMarkerDirLocal 0;
		_mrk184 setMarkerShapeLocal "rectangle";
		_mrk184 setMarkerSizeLocal [5, 5];
		_mrk184 setMarkerAlphaLocal .3;

		_mrk185 = createMarkerLocal["nav_185",getMarkerPos "grid_practice_7_1"];
		_mrk185 setMarkerColorLocal "ColorRED";
		_mrk185 setMarkerDirLocal 0;
		_mrk185 setMarkerShapeLocal "rectangle";
		_mrk185 setMarkerSizeLocal [15, 15];
		_mrk185 setMarkerAlphaLocal .3;


		_mrk159 = createMarkerLocal["nav_159",getMarkerPos "grid_practice_8"];
		_mrk159 setMarkerTextLocal "0921 0861 4230m 60m";
		_mrk159 setMarkerColorLocal "ColorBLACK";
		_mrk159 setMarkerDirLocal 0;
		_mrk159 setMarkerTypeLocal "mil_destroy";
		_mrk159 setMarkerAlphaLocal .5;

		_mrk186 = createMarkerLocal["nav_186",getMarkerPos "grid_practice_8_1"];
		_mrk186 setMarkerColorLocal "ColorGREEN";
		_mrk186 setMarkerDirLocal 0;
		_mrk186 setMarkerShapeLocal "rectangle";
		_mrk186 setMarkerSizeLocal [5, 5];
		_mrk186 setMarkerAlphaLocal .3;

		_mrk187 = createMarkerLocal["nav_187",getMarkerPos "grid_practice_8_1"];
		_mrk187 setMarkerColorLocal "ColorRED";
		_mrk187 setMarkerDirLocal 0;
		_mrk187 setMarkerShapeLocal "rectangle";
		_mrk187 setMarkerSizeLocal [15, 15];
		_mrk187 setMarkerAlphaLocal .3;





		_mrk140 = createMarkerLocal["nav_140",getMarkerPos "marker_140"];
		_mrk140 setMarkerTextLocal "A 0237 0664";
		_mrk140 setMarkerColorLocal "ColorBLACK";
		_mrk140 setMarkerDirLocal 0;
		_mrk140 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk142 = createMarkerLocal["nav_142",getMarkerPos "marker_142"];
		_mrk142 setMarkerTextLocal "B 0244 0612";
		_mrk142 setMarkerColorLocal "ColorBLACK";
		_mrk142 setMarkerDirLocal 0;
		_mrk142 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk143 = createMarkerLocal["nav_143",getMarkerPos "marker_143"];
		_mrk143 setMarkerTextLocal "C 0256 0680";
		_mrk143 setMarkerColorLocal "ColorBLACK";
		_mrk143 setMarkerDirLocal 0;
		_mrk143 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk144 = createMarkerLocal["nav_144",getMarkerPos "marker_144"];
		_mrk144 setMarkerTextLocal "D 0263 0642";
		_mrk144 setMarkerColorLocal "ColorBLACK";
		_mrk144 setMarkerDirLocal 0;
		_mrk144 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk145 = createMarkerLocal["nav_145",getMarkerPos "marker_145"];
		_mrk145 setMarkerTextLocal "E 0268 0694";
		_mrk145 setMarkerColorLocal "ColorBLACK";
		_mrk145 setMarkerDirLocal 0;
		_mrk145 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk146 = createMarkerLocal["nav_146",getMarkerPos "marker_146"];
		_mrk146 setMarkerTextLocal "F 0273 0667";
		_mrk146 setMarkerColorLocal "ColorBLACK";
		_mrk146 setMarkerDirLocal 0;
		_mrk146 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk147 = createMarkerLocal["nav_147",getMarkerPos "marker_147"];
		_mrk147 setMarkerTextLocal "G 0287 0617";
		_mrk147 setMarkerColorLocal "ColorBLACK";
		_mrk147 setMarkerDirLocal 0;
		_mrk147 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;

		_mrk148 = createMarkerLocal["nav_148",getMarkerPos "marker_148"];
		_mrk148 setMarkerTextLocal "H 0293 0643";
		_mrk148 setMarkerColorLocal "ColorBLACK";
		_mrk148 setMarkerDirLocal 0;
		_mrk148 setMarkerTypeLocal "mil_destroy";
		_mrk152 setMarkerAlphaLocal .5;
	};