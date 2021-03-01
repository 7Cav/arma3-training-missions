waitUntil {!isNull player};
_unit = _this select 0;

//{	BAC INSTRUCTORS AND STUDENTS AND PILOTS

if ((typeOf _unit == "rhsusf_army_ocp_squadleader") or (typeOf _unit == "rhsusf_army_ocp_teamleader") or (typeOf _unit == "rhsusf_army_ocp_autorifleman") or (typeOf _unit == "rhsusf_army_ocp_grenadier") or (typeOf _unit == "rhsusf_army_ocp_rifleman") or (typeOf _unit == "Cav_B_A_Plane_Transport_Pilot_F")) then
	{

	//{	DZ 1
	/*			MARKERS				*/
		
		_mrk1201 = createMarkerLocal["BAC_DZ1_ELE",getMarkerPos "MRK_BAC_DZ1_ELE"];
		_mrk1201 setMarkerTypeLocal "hd_warning";
		_mrk1201 setMarkerColorLocal "ColorBLACK";
		_mrk1201 setMarkerTextLocal "014m MSL";
		_mrk1201 setMarkerDirLocal 47;
		
		_mrk1202 = createMarkerLocal["BAC_DZ1_ING",getMarkerPos "MRK_BAC_DZ1_ING"];
		_mrk1202 setMarkerTypeLocal "hd_start";
		_mrk1202 setMarkerColorLocal "ColorBLACK";
		_mrk1202 setMarkerTextLocal "Ingress 040°";
		_mrk1202 setMarkerDirLocal 45;
		
		_mrk1203 = createMarkerLocal["BAC_DZ1_EGR",getMarkerPos "MRK_BAC_DZ1_EGR"];
		_mrk1203 setMarkerTypeLocal "hd_end";
		_mrk1203 setMarkerColorLocal "ColorBLACK";
		_mrk1203 setMarkerTextLocal "Egress 090°";
		_mrk1203 setMarkerDirLocal 275;
		
		_mrk1204 = createMarkerLocal["BAC_DZ1_DZRP",getMarkerPos "MRK_BAC_DZ1_DZRP"];
		_mrk1204 setMarkerTypeLocal "hd_join";
		_mrk1204 setMarkerColorLocal "ColorBLACK";
		_mrk1204 setMarkerTextLocal "DZ RP (White House)";
		
		_mrk1205 = createMarkerLocal["BAC_DZ1_NAME",getMarkerPos "MRK_BAC_DZ1_COLDBLUD"];
		_mrk1205 setMarkerTypeLocal "mil_triangle";
		_mrk1205 setMarkerColorLocal "ColorBLUE";
		_mrk1205 setMarkerTextLocal "DZ COLDBLUD (DZ 1)";
		
		_mrk1206 = createMarkerLocal["BAC_DZ1_X1",getMarkerPos "MRK_BAC_DZ1_X1"];
		_mrk1206 setMarkerTypeLocal "hd_destroy";
		_mrk1206 setMarkerColorLocal "ColorRED";
		
		_mrk1207 = createMarkerLocal["BAC_DZ1_X2",getMarkerPos "MRK_BAC_DZ1_X2"];
		_mrk1207 setMarkerTypeLocal "hd_destroy";
		_mrk1207 setMarkerColorLocal "ColorRED";
		
		_mrk1208 = createMarkerLocal["BAC_DZ1_X3",getMarkerPos "MRK_BAC_DZ1_X3"];
		_mrk1208 setMarkerTypeLocal "hd_destroy";
		_mrk1208 setMarkerColorLocal "ColorRED";
		
		_mrk1209 = createMarkerLocal["BAC_DZ1_X4",getMarkerPos "MRK_BAC_DZ1_X4"];
		_mrk1209 setMarkerTypeLocal "hd_destroy";
		_mrk1209 setMarkerColorLocal "ColorRED";
		
		_mrk1210 = createMarkerLocal["BAC_DZ1_X5",getMarkerPos "MRK_BAC_DZ1_X5"];
		_mrk1210 setMarkerTypeLocal "hd_destroy";
		_mrk1210 setMarkerColorLocal "ColorRED";
		
	/*			Boxes				*/
		
		_mrk1302 = createMarkerLocal["BAC_DZ1_BORDER_L",getMarkerPos "MRK_BAC_DZ1_BORDER_L"];
		_mrk1302 setMarkerShapeLocal "rectangle";
		_mrk1302 setMarkerColorLocal "ColorBLACK";
		_mrk1302 setMarkerSizeLocal [608, 4];
		_mrk1302 setMarkerDirLocal 130.204;
		
		_mrk1303 = createMarkerLocal["BAC_DZ1_BORDER_R",getMarkerPos "MRK_BAC_DZ1_BORDER_R"];
		_mrk1303 setMarkerShapeLocal "rectangle";
		_mrk1303 setMarkerColorLocal "ColorBLACK";
		_mrk1303 setMarkerSizeLocal [608, 4];
		_mrk1303 setMarkerDirLocal 130.204;
		
		_mrk1304 = createMarkerLocal["BAC_DZ1_RAIL_L",getMarkerPos "MRK_BAC_DZ1_RAIL_L"];
		_mrk1304 setMarkerShapeLocal "rectangle";
		_mrk1304 setMarkerColorLocal "ColorBLACK";
		_mrk1304 setMarkerSizeLocal [1008, 4];
		_mrk1304 setMarkerDirLocal 130.204;
		
		_mrk1305 = createMarkerLocal["BAC_DZ1_RAIL_R",getMarkerPos "MRK_BAC_DZ1_RAIL_R"];
		_mrk1305 setMarkerShapeLocal "rectangle";
		_mrk1305 setMarkerColorLocal "ColorBLACK";
		_mrk1305 setMarkerSizeLocal [1008, 4];
		_mrk1305 setMarkerDirLocal 130.204;
		
		_mrk1306 = createMarkerLocal["BAC_DZ1_RED_1",getMarkerPos "MRK_BAC_DZ1_RED_1"];
		_mrk1306 setMarkerShapeLocal "rectangle";
		_mrk1306 setMarkerColorLocal "ColorRED";
		_mrk1306 setMarkerSizeLocal [4, 108];
		_mrk1306 setMarkerDirLocal 130.204;
		
		_mrk1307 = createMarkerLocal["BAC_DZ1_YLW_1",getMarkerPos "MRK_BAC_DZ1_YLW_1"];
		_mrk1307 setMarkerShapeLocal "rectangle";
		_mrk1307 setMarkerColorLocal "ColorYELLOW";
		_mrk1307 setMarkerSizeLocal [4, 108];
		_mrk1307 setMarkerDirLocal 130.204;
		
		_mrk1308 = createMarkerLocal["BAC_DZ1_GRN_1",getMarkerPos "MRK_BAC_DZ1_GRN_1"];
		_mrk1308 setMarkerShapeLocal "rectangle";
		_mrk1308 setMarkerColorLocal "ColorGREEN";
		_mrk1308 setMarkerSizeLocal [4, 108];
		_mrk1308 setMarkerDirLocal 130.204;
		
		_mrk1309 = createMarkerLocal["BAC_DZ1_GRN_2",getMarkerPos "MRK_BAC_DZ1_GRN_2"];
		_mrk1309 setMarkerShapeLocal "rectangle";
		_mrk1309 setMarkerColorLocal "ColorGREEN";
		_mrk1309 setMarkerSizeLocal [4, 108];
		_mrk1309 setMarkerDirLocal 130.204;
		
		_mrk1310 = createMarkerLocal["BAC_DZ1_GRN_3",getMarkerPos "MRK_BAC_DZ1_GRN_3"];
		_mrk1310 setMarkerShapeLocal "rectangle";
		_mrk1310 setMarkerColorLocal "ColorGREEN";
		_mrk1310 setMarkerSizeLocal [4, 108];
		_mrk1310 setMarkerDirLocal 130.204;
		
		_mrk1311 = createMarkerLocal["BAC_DZ1_RED_2",getMarkerPos "MRK_BAC_DZ1_RED_2"];
		_mrk1311 setMarkerShapeLocal "rectangle";
		_mrk1311 setMarkerColorLocal "ColorRED";
		_mrk1311 setMarkerSizeLocal [4, 108];
		_mrk1311 setMarkerDirLocal 130.204;
		
		_mrk1312 = createMarkerLocal["BAC_DZ1_RED_3",getMarkerPos "MRK_BAC_DZ1_RED_3"];
		_mrk1312 setMarkerShapeLocal "rectangle";
		_mrk1312 setMarkerColorLocal "ColorRED";
		_mrk1312 setMarkerSizeLocal [4, 108];
		_mrk1312 setMarkerDirLocal 130.204;
		
		_mrk1313 = createMarkerLocal["BAC_DZ1_EGR_RAIL",getMarkerPos "MRK_BAC_DZ1_EGR_RAIL"];
		_mrk1313 setMarkerShapeLocal "rectangle";
		_mrk1313 setMarkerColorLocal "ColorBLACK";
		_mrk1313 setMarkerSizeLocal [600, 4];
		_mrk1313 setMarkerDirLocal 0;
		//}
	//{	DZ 2
	/*			MARKERS				*/
		
		_mrk1401 = createMarkerLocal["BAC_DZ2_ELE",getMarkerPos "MRK_BAC_DZ2_ELE"];
		_mrk1401 setMarkerTypeLocal "hd_warning";
		_mrk1401 setMarkerColorLocal "ColorBLACK";
		_mrk1401 setMarkerTextLocal "040m MSL";
		_mrk1401 setMarkerDirLocal 240;
		
		_mrk1402 = createMarkerLocal["BAC_DZ2_ING",getMarkerPos "MRK_BAC_DZ2_ING"];
		_mrk1402 setMarkerTypeLocal "hd_start";
		_mrk1402 setMarkerColorLocal "ColorBLACK";
		_mrk1402 setMarkerTextLocal "Ingress 239°";
		_mrk1402 setMarkerDirLocal 238;
		
		_mrk1403 = createMarkerLocal["BAC_DZ2_EGR",getMarkerPos "MRK_BAC_DZ2_EGR"];
		_mrk1403 setMarkerTypeLocal "hd_end";
		_mrk1403 setMarkerColorLocal "ColorBLACK";
		_mrk1403 setMarkerTextLocal "Egress 206°";
		_mrk1403 setMarkerDirLocal 30;
		
		_mrk1404 = createMarkerLocal["BAC_DZ2_DZRP",getMarkerPos "MRK_BAC_DZ2_DZRP"];
		_mrk1404 setMarkerTypeLocal "hd_join";
		_mrk1404 setMarkerColorLocal "ColorBLACK";
		_mrk1404 setMarkerTextLocal "DZ RP (Small House)";
		
		_mrk1405 = createMarkerLocal["BAC_DZ2_BOX",getMarkerPos "MRK_BAC_DZ2_KRAZEE"];
		_mrk1405 setMarkerTypeLocal "mil_triangle";
		_mrk1405 setMarkerColorLocal "ColorBLUE";
		_mrk1405 setMarkerTextLocal "DZ KRAZEE (DZ 2)";
		
		_mrk1406 = createMarkerLocal["BAC_DZ2_X1",getMarkerPos "MRK_BAC_DZ2_X1"];
		_mrk1406 setMarkerTypeLocal "hd_destroy";
		_mrk1406 setMarkerColorLocal "ColorRED";
		
		_mrk1407 = createMarkerLocal["BAC_DZ2_X2",getMarkerPos "MRK_BAC_DZ2_X2"];
		_mrk1407 setMarkerTypeLocal "hd_destroy";
		_mrk1407 setMarkerColorLocal "ColorRED";
		
		_mrk1408 = createMarkerLocal["BAC_DZ2_X3",getMarkerPos "MRK_BAC_DZ2_X3"];
		_mrk1408 setMarkerTypeLocal "hd_destroy";
		_mrk1408 setMarkerColorLocal "ColorRED";
		
		_mrk1409 = createMarkerLocal["BAC_DZ2_X4",getMarkerPos "MRK_BAC_DZ2_X4"];
		_mrk1409 setMarkerTypeLocal "hd_destroy";
		_mrk1409 setMarkerColorLocal "ColorRED";
		
		_mrk1410 = createMarkerLocal["BAC_DZ2_X5",getMarkerPos "MRK_BAC_DZ2_X5"];
		_mrk1410 setMarkerTypeLocal "hd_destroy";
		_mrk1410 setMarkerColorLocal "ColorRED";
		
		_mrk1411 = createMarkerLocal["BAC_DZ2_X6",getMarkerPos "MRK_BAC_DZ2_X6"];
		_mrk1411 setMarkerTypeLocal "hd_destroy";
		_mrk1411 setMarkerColorLocal "ColorRED";
		
	/*			Boxes				*/
		
		_mrk1502 = createMarkerLocal["BAC_DZ2_BORDER_L",getMarkerPos "MRK_BAC_DZ2_BORDER_L"];
		_mrk1502 setMarkerShapeLocal "rectangle";
		_mrk1502 setMarkerColorLocal "ColorBLACK";
		_mrk1502 setMarkerSizeLocal [608, 4];
		_mrk1502 setMarkerDirLocal 148.810;
		
		_mrk1503 = createMarkerLocal["BAC_DZ2_BORDER_R",getMarkerPos "MRK_BAC_DZ2_BORDER_R"];
		_mrk1503 setMarkerShapeLocal "rectangle";
		_mrk1503 setMarkerColorLocal "ColorBLACK";
		_mrk1503 setMarkerSizeLocal [608, 4];
		_mrk1503 setMarkerDirLocal 148.810;
		
		_mrk1504 = createMarkerLocal["BAC_DZ2_RAIL_L",getMarkerPos "MRK_BAC_DZ2_RAIL_L"];
		_mrk1504 setMarkerShapeLocal "rectangle";
		_mrk1504 setMarkerColorLocal "ColorBLACK";
		_mrk1504 setMarkerSizeLocal [1008, 4];
		_mrk1504 setMarkerDirLocal 148.810;
		
		_mrk1505 = createMarkerLocal["BAC_DZ2_RAIL_R",getMarkerPos "MRK_BAC_DZ2_RAIL_R"];
		_mrk1505 setMarkerShapeLocal "rectangle";
		_mrk1505 setMarkerColorLocal "ColorBLACK";
		_mrk1505 setMarkerSizeLocal [1008, 4];
		_mrk1505 setMarkerDirLocal 148.810;
		
		_mrk1506 = createMarkerLocal["BAC_DZ2_RED_1",getMarkerPos "MRK_BAC_DZ2_RED_1"];
		_mrk1506 setMarkerShapeLocal "rectangle";
		_mrk1506 setMarkerColorLocal "ColorRED";
		_mrk1506 setMarkerSizeLocal [4, 108];
		_mrk1506 setMarkerDirLocal 148.810;
		
		_mrk1507 = createMarkerLocal["BAC_DZ2_YLW_1",getMarkerPos "MRK_BAC_DZ2_YLW_1"];
		_mrk1507 setMarkerShapeLocal "rectangle";
		_mrk1507 setMarkerColorLocal "ColorYELLOW";
		_mrk1507 setMarkerSizeLocal [4, 108];
		_mrk1507 setMarkerDirLocal 148.810;
		
		_mrk1508 = createMarkerLocal["BAC_DZ2_GRN_1",getMarkerPos "MRK_BAC_DZ2_GRN_1"];
		_mrk1508 setMarkerShapeLocal "rectangle";
		_mrk1508 setMarkerColorLocal "ColorGREEN";
		_mrk1508 setMarkerSizeLocal [4, 108];
		_mrk1508 setMarkerDirLocal 148.810;
		
		_mrk1509 = createMarkerLocal["BAC_DZ2_GRN_2",getMarkerPos "MRK_BAC_DZ2_GRN_2"];
		_mrk1509 setMarkerShapeLocal "rectangle";
		_mrk1509 setMarkerColorLocal "ColorGREEN";
		_mrk1509 setMarkerSizeLocal [4, 108];
		_mrk1509 setMarkerDirLocal 148.810;
		
		_mrk1510 = createMarkerLocal["BAC_DZ2_GRN_3",getMarkerPos "MRK_BAC_DZ2_GRN_3"];
		_mrk1510 setMarkerShapeLocal "rectangle";
		_mrk1510 setMarkerColorLocal "ColorGREEN";
		_mrk1510 setMarkerSizeLocal [4, 108];
		_mrk1510 setMarkerDirLocal 148.810;
		
		_mrk1511 = createMarkerLocal["BAC_DZ2_RED_2",getMarkerPos "MRK_BAC_DZ2_RED_2"];
		_mrk1511 setMarkerShapeLocal "rectangle";
		_mrk1511 setMarkerColorLocal "ColorRED";
		_mrk1511 setMarkerSizeLocal [4, 108];
		_mrk1511 setMarkerDirLocal 148.810;
		
		_mrk1512 = createMarkerLocal["BAC_DZ2_RED_3",getMarkerPos "MRK_BAC_DZ2_RED_3"];
		_mrk1512 setMarkerShapeLocal "rectangle";
		_mrk1512 setMarkerColorLocal "ColorRED";
		_mrk1512 setMarkerSizeLocal [4, 108];
		_mrk1512 setMarkerDirLocal 148.810;
		
		_mrk1513 = createMarkerLocal["BAC_DZ2_EGR_RAIL",getMarkerPos "MRK_BAC_DZ2_EGR_RAIL"];
		_mrk1513 setMarkerShapeLocal "rectangle";
		_mrk1513 setMarkerColorLocal "ColorBLACK";
		_mrk1513 setMarkerSizeLocal [4, 600];
		_mrk1513 setMarkerDirLocal 206;
		//}
	//{	DZ 3
	/*			MARKERS				*/
		
		_mrk1601 = createMarkerLocal["BAC_DZ3_ELE",getMarkerPos "MRK_BAC_DZ3_ELE"];
		_mrk1601 setMarkerTypeLocal "hd_warning";
		_mrk1601 setMarkerColorLocal "ColorBLACK";
		_mrk1601 setMarkerTextLocal "014m MSL";
		_mrk1601 setMarkerDirLocal 47;
		
		_mrk1602 = createMarkerLocal["BAC_DZ3_ING",getMarkerPos "MRK_BAC_DZ3_ING"];
		_mrk1602 setMarkerTypeLocal "hd_start";
		_mrk1602 setMarkerColorLocal "ColorBLACK";
		_mrk1602 setMarkerColorLocal "ColorBLACK";
		_mrk1602 setMarkerTextLocal "Ingress 048°";
		_mrk1602 setMarkerDirLocal 45;
		
		_mrk1603 = createMarkerLocal["BAC_DZ3_EGR",getMarkerPos "MRK_BAC_DZ3_EGR"];
		_mrk1603 setMarkerTypeLocal "hd_end";
		_mrk1603 setMarkerColorLocal "ColorBLACK";
		_mrk1603 setMarkerTextLocal "Egress 090°";
		_mrk1603 setMarkerDirLocal 277;
		
		_mrk1604 = createMarkerLocal["BAC_DZ3_DZRP",getMarkerPos "MRK_BAC_DZ3_DZRP"];
		_mrk1604 setMarkerTypeLocal "hd_join";
		_mrk1604 setMarkerColorLocal "ColorBLACK";
		_mrk1604 setMarkerTextLocal "DZ RP (Ruined House)";
		
		_mrk1605 = createMarkerLocal["BAC_DZ3_BOX",getMarkerPos "MRK_BAC_DZ3_NOVAK"];
		_mrk1605 setMarkerTypeLocal "mil_triangle";
		_mrk1605 setMarkerColorLocal "ColorBLUE";
		_mrk1605 setMarkerTextLocal "DZ NOVAK (DZ 2)";
		
		_mrk1606 = createMarkerLocal["BAC_DZ3_X1",getMarkerPos "MRK_BAC_DZ3_X1"];
		_mrk1606 setMarkerTypeLocal "hd_destroy";
		_mrk1606 setMarkerColorLocal "ColorRED";
		
		_mrk1607 = createMarkerLocal["BAC_DZ3_X2",getMarkerPos "MRK_BAC_DZ3_X2"];
		_mrk1607 setMarkerTypeLocal "hd_destroy";
		_mrk1607 setMarkerColorLocal "ColorRED";
		
		_mrk1608 = createMarkerLocal["BAC_DZ3_X3",getMarkerPos "MRK_BAC_DZ3_X3"];
		_mrk1608 setMarkerTypeLocal "hd_destroy";
		_mrk1608 setMarkerColorLocal "ColorRED";
		
		_mrk1609 = createMarkerLocal["BAC_DZ3_X4",getMarkerPos "MRK_BAC_DZ3_X4"];
		_mrk1609 setMarkerTypeLocal "hd_destroy";
		_mrk1609 setMarkerColorLocal "ColorRED";
		
		_mrk1610 = createMarkerLocal["BAC_DZ3_X5",getMarkerPos "MRK_BAC_DZ3_X5"];
		_mrk1610 setMarkerTypeLocal "hd_destroy";
		_mrk1610 setMarkerColorLocal "ColorRED";
		
		_mrk1611 = createMarkerLocal["BAC_DZ3_X6",getMarkerPos "MRK_BAC_DZ3_X6"];
		_mrk1611 setMarkerTypeLocal "hd_destroy";
		_mrk1611 setMarkerColorLocal "ColorRED";
		
		_mrk1612 = createMarkerLocal["BAC_DZ3_X5",getMarkerPos "MRK_BAC_DZ3_X7"];
		_mrk1612 setMarkerTypeLocal "hd_destroy";
		_mrk1612 setMarkerColorLocal "ColorRED";
		
		_mrk1613 = createMarkerLocal["BAC_DZ3_X6",getMarkerPos "MRK_BAC_DZ3_X8"];
		_mrk1613 setMarkerTypeLocal "hd_destroy";
		_mrk1613 setMarkerColorLocal "ColorRED";
		
		_mrk1614 = createMarkerLocal["BAC_DZ3_OBJ",getMarkerPos "MRK_BAC_DZ3_OBJ"];
		_mrk1614 setMarkerTypeLocal "hd_objective";
		_mrk1614 setMarkerColorLocal "ColorEast";
		_mrk1614 setMarkerTextLocal "Raid";
		
	/*			Boxes				*/
		
		_mrk1702 = createMarkerLocal["BAC_DZ3_BORDER_L",getMarkerPos "MRK_BAC_DZ3_BORDER_L"];
		_mrk1702 setMarkerShapeLocal "rectangle";
		_mrk1702 setMarkerColorLocal "ColorBLACK";
		_mrk1702 setMarkerSizeLocal [608, 4];
		_mrk1702 setMarkerDirLocal 318.466;
		
		_mrk1703 = createMarkerLocal["BAC_DZ3_BORDER_R",getMarkerPos "MRK_BAC_DZ3_BORDER_R"];
		_mrk1703 setMarkerShapeLocal "rectangle";
		_mrk1703 setMarkerColorLocal "ColorBLACK";
		_mrk1703 setMarkerSizeLocal [608, 4];
		_mrk1703 setMarkerDirLocal 318.466;
		
		_mrk1704 = createMarkerLocal["BAC_DZ3_RAIL_L",getMarkerPos "MRK_BAC_DZ3_RAIL_L"];
		_mrk1704 setMarkerShapeLocal "rectangle";
		_mrk1704 setMarkerColorLocal "ColorBLACK";
		_mrk1704 setMarkerSizeLocal [1008, 4];
		_mrk1704 setMarkerDirLocal 318.466;
		
		_mrk1705 = createMarkerLocal["BAC_DZ3_RAIL_R",getMarkerPos "MRK_BAC_DZ3_RAIL_R"];
		_mrk1705 setMarkerShapeLocal "rectangle";
		_mrk1705 setMarkerColorLocal "ColorBLACK";
		_mrk1705 setMarkerSizeLocal [1008, 4];
		_mrk1705 setMarkerDirLocal 318.466;
		
		_mrk1706 = createMarkerLocal["BAC_DZ3_RED_1",getMarkerPos "MRK_BAC_DZ3_RED_1"];
		_mrk1706 setMarkerShapeLocal "rectangle";
		_mrk1706 setMarkerColorLocal "ColorRED";
		_mrk1706 setMarkerSizeLocal [4, 108];
		_mrk1706 setMarkerDirLocal 318.466;
		
		_mrk1707 = createMarkerLocal["BAC_DZ3_YLW_1",getMarkerPos "MRK_BAC_DZ3_YLW_1"];
		_mrk1707 setMarkerShapeLocal "rectangle";
		_mrk1707 setMarkerColorLocal "ColorYELLOW";
		_mrk1707 setMarkerSizeLocal [4, 108];
		_mrk1707 setMarkerDirLocal 318.466;
		
		_mrk1708 = createMarkerLocal["BAC_DZ3_GRN_1",getMarkerPos "MRK_BAC_DZ3_GRN_1"];
		_mrk1708 setMarkerShapeLocal "rectangle";
		_mrk1708 setMarkerColorLocal "ColorGREEN";
		_mrk1708 setMarkerSizeLocal [4, 108];
		_mrk1708 setMarkerDirLocal 318.466;
		
		_mrk1709 = createMarkerLocal["BAC_DZ3_GRN_2",getMarkerPos "MRK_BAC_DZ3_GRN_2"];
		_mrk1709 setMarkerShapeLocal "rectangle";
		_mrk1709 setMarkerColorLocal "ColorGREEN";
		_mrk1709 setMarkerSizeLocal [4, 108];
		_mrk1709 setMarkerDirLocal 318.466;
		
		_mrk1710 = createMarkerLocal["BAC_DZ3_GRN_3",getMarkerPos "MRK_BAC_DZ3_GRN_3"];
		_mrk1710 setMarkerShapeLocal "rectangle";
		_mrk1710 setMarkerColorLocal "ColorGREEN";
		_mrk1710 setMarkerSizeLocal [4, 108];
		_mrk1710 setMarkerDirLocal 318.466;
		
		_mrk1711 = createMarkerLocal["BAC_DZ3_RED_2",getMarkerPos "MRK_BAC_DZ3_RED_2"];
		_mrk1711 setMarkerShapeLocal "rectangle";
		_mrk1711 setMarkerColorLocal "ColorRED";
		_mrk1711 setMarkerSizeLocal [4, 108];
		_mrk1711 setMarkerDirLocal 318.466;
		
		_mrk1712 = createMarkerLocal["BAC_DZ3_RED_3",getMarkerPos "MRK_BAC_DZ3_RED_3"];
		_mrk1712 setMarkerShapeLocal "rectangle";
		_mrk1712 setMarkerColorLocal "ColorRED";
		_mrk1712 setMarkerSizeLocal [4, 108];
		_mrk1712 setMarkerDirLocal 318.466;
		
		_mrk1713 = createMarkerLocal["BAC_DZ3_EGR_RAIL",getMarkerPos "MRK_BAC_DZ3_EGR_RAIL"];
		_mrk1713 setMarkerShapeLocal "rectangle";
		_mrk1713 setMarkerColorLocal "ColorBLACK";
		_mrk1713 setMarkerSizeLocal [600, 4];
		_mrk1713 setMarkerDirLocal 0;
		
		_mrk1714 = createMarkerLocal["BAC_DZ3_OBJ_BOX",getMarkerPos "MRK_BAC_DZ3_OBJ_BOX"];
		_mrk1714 setMarkerShapeLocal "rectangle";
		_mrk1714 setMarkerColorLocal "ColorEast";
		_mrk1714 setMarkerBrushLocal "Cross";
		_mrk1714 setMarkerSizeLocal [45, 35];
		_mrk1714 setMarkerDirLocal 317.487;
		_mrk1714 setMarkerAlphaLocal .50;
		//}
	//{	DZ 4
	/*			MARKERS				*/
		
		_mrk1801 = createMarkerLocal["BAC_DZ4_ELE",getMarkerPos "MRK_BAC_DZ4_ELE"];
		_mrk1801 setMarkerTypeLocal "hd_warning";
		_mrk1801 setMarkerColorLocal "ColorBLACK";
		_mrk1801 setMarkerTextLocal "022m MSL";
		_mrk1801 setMarkerDirLocal 260;
		
		_mrk1802 = createMarkerLocal["BAC_DZ4_ING",getMarkerPos "MRK_BAC_DZ4_ING"];
		_mrk1802 setMarkerTypeLocal "hd_start";
		_mrk1802 setMarkerColorLocal "ColorBLACK";
		_mrk1802 setMarkerTextLocal "Ingress 258°";
		_mrk1802 setMarkerDirLocal 258;
		
		_mrk1803 = createMarkerLocal["BAC_DZ4_EGR",getMarkerPos "MRK_BAC_DZ4_EGR"];
		_mrk1803 setMarkerTypeLocal "hd_end";
		_mrk1803 setMarkerColorLocal "ColorBLACK";
		_mrk1803 setMarkerTextLocal "Egress 270°";
		_mrk1803 setMarkerDirLocal 95;
		
		_mrk1804 = createMarkerLocal["BAC_DZ4_DZRP",getMarkerPos "MRK_BAC_DZ4_DZRP"];
		_mrk1804 setMarkerTypeLocal "hd_join";
		_mrk1804 setMarkerColorLocal "ColorBLACK";
		_mrk1804 setMarkerTextLocal "DZ RP (Brick Building)";
		
		_mrk1805 = createMarkerLocal["BAC_DZ4_BOX",getMarkerPos "MRK_BAC_DZ4_TRAYCER"];
		_mrk1805 setMarkerTypeLocal "mil_triangle";
		_mrk1805 setMarkerColorLocal "ColorBLUE";
		_mrk1805 setMarkerTextLocal "DZ  TRAYCER (DZ 4)";
		
		_mrk1806 = createMarkerLocal["BAC_DZ4_X1",getMarkerPos "MRK_BAC_DZ4_X1"];
		_mrk1806 setMarkerTypeLocal "hd_destroy";
		_mrk1806 setMarkerColorLocal "ColorRED";
		
	/*			Boxes				*/
		
		_mrk1902 = createMarkerLocal["BAC_DZ4_BORDER_L",getMarkerPos "MRK_BAC_DZ4_BORDER_L"];
		_mrk1902 setMarkerShapeLocal "rectangle";
		_mrk1902 setMarkerColorLocal "ColorBLACK";
		_mrk1902 setMarkerSizeLocal [608, 4];
		_mrk1902 setMarkerDirLocal 168.230;
		
		_mrk1903 = createMarkerLocal["BAC_DZ4_BORDER_R",getMarkerPos "MRK_BAC_DZ4_BORDER_R"];
		_mrk1903 setMarkerShapeLocal "rectangle";
		_mrk1903 setMarkerColorLocal "ColorBLACK";
		_mrk1903 setMarkerSizeLocal [608, 4];
		_mrk1903 setMarkerDirLocal 168.230;
		
		_mrk1904 = createMarkerLocal["BAC_DZ4_RAIL_L",getMarkerPos "MRK_BAC_DZ4_RAIL_L"];
		_mrk1904 setMarkerShapeLocal "rectangle";
		_mrk1904 setMarkerColorLocal "ColorBLACK";
		_mrk1904 setMarkerSizeLocal [1008, 4];
		_mrk1904 setMarkerDirLocal 168.230;
		
		_mrk1905 = createMarkerLocal["BAC_DZ4_RAIL_R",getMarkerPos "MRK_BAC_DZ4_RAIL_R"];
		_mrk1905 setMarkerShapeLocal "rectangle";
		_mrk1905 setMarkerColorLocal "ColorBLACK";
		_mrk1905 setMarkerSizeLocal [1008, 4];
		_mrk1905 setMarkerDirLocal 168.230;
		
		_mrk1906 = createMarkerLocal["BAC_DZ4_RED_1",getMarkerPos "MRK_BAC_DZ4_RED_1"];
		_mrk1906 setMarkerShapeLocal "rectangle";
		_mrk1906 setMarkerColorLocal "ColorRED";
		_mrk1906 setMarkerSizeLocal [4, 108];
		_mrk1906 setMarkerDirLocal 168.230;
		
		_mrk1907 = createMarkerLocal["BAC_DZ4_YLW_1",getMarkerPos "MRK_BAC_DZ4_YLW_1"];
		_mrk1907 setMarkerShapeLocal "rectangle";
		_mrk1907 setMarkerColorLocal "ColorYELLOW";
		_mrk1907 setMarkerSizeLocal [4, 108];
		_mrk1907 setMarkerDirLocal 168.230;
		
		_mrk1908 = createMarkerLocal["BAC_DZ4_GRN_1",getMarkerPos "MRK_BAC_DZ4_GRN_1"];
		_mrk1908 setMarkerShapeLocal "rectangle";
		_mrk1908 setMarkerColorLocal "ColorGREEN";
		_mrk1908 setMarkerSizeLocal [4, 108];
		_mrk1908 setMarkerDirLocal 168.230;
		
		_mrk1909 = createMarkerLocal["BAC_DZ4_GRN_2",getMarkerPos "MRK_BAC_DZ4_GRN_2"];
		_mrk1909 setMarkerShapeLocal "rectangle";
		_mrk1909 setMarkerColorLocal "ColorGREEN";
		_mrk1909 setMarkerSizeLocal [4, 108];
		_mrk1909 setMarkerDirLocal 168.230;
		
		_mrk1910 = createMarkerLocal["BAC_DZ4_GRN_3",getMarkerPos "MRK_BAC_DZ4_GRN_3"];
		_mrk1910 setMarkerShapeLocal "rectangle";
		_mrk1910 setMarkerColorLocal "ColorGREEN";
		_mrk1910 setMarkerSizeLocal [4, 108];
		_mrk1910 setMarkerDirLocal 168.230;
		
		_mrk1911 = createMarkerLocal["BAC_DZ4_RED_2",getMarkerPos "MRK_BAC_DZ4_RED_2"];
		_mrk1911 setMarkerShapeLocal "rectangle";
		_mrk1911 setMarkerColorLocal "ColorRED";
		_mrk1911 setMarkerSizeLocal [4, 108];
		_mrk1911 setMarkerDirLocal 168.230;
		
		_mrk1912 = createMarkerLocal["BAC_DZ4_RED_3",getMarkerPos "MRK_BAC_DZ4_RED_3"];
		_mrk1912 setMarkerShapeLocal "rectangle";
		_mrk1912 setMarkerColorLocal "ColorRED";
		_mrk1912 setMarkerSizeLocal [4, 108];
		_mrk1912 setMarkerDirLocal 168.230;
		
		_mrk1913 = createMarkerLocal["BAC_DZ4_EGR_RAIL",getMarkerPos "MRK_BAC_DZ4_EGR_RAIL"];
		_mrk1913 setMarkerShapeLocal "rectangle";
		_mrk1913 setMarkerColorLocal "ColorBLACK";
		_mrk1913 setMarkerSizeLocal [600, 4];
		_mrk1913 setMarkerDirLocal 0;
		//}
	//{	DZ 5
	/*			MARKERS				*/
		
		_mrk2001 = createMarkerLocal["BAC_DZ5_ELE",getMarkerPos "MRK_BAC_DZ5_ELE"];
		_mrk2001 setMarkerTypeLocal "hd_warning";
		_mrk2001 setMarkerColorLocal "ColorBLACK";
		_mrk2001 setMarkerTextLocal "040m MSL";
		_mrk2001 setMarkerDirLocal 166;
		
		_mrk2002 = createMarkerLocal["BAC_DZ5_ING",getMarkerPos "MRK_BAC_DZ5_ING"];
		_mrk2002 setMarkerTypeLocal "hd_start";
		_mrk2002 setMarkerColorLocal "ColorBLACK";
		_mrk2002 setMarkerTextLocal "Ingress 239°";
		_mrk2002 setMarkerDirLocal 165;
		
		_mrk2003 = createMarkerLocal["BAC_DZ5_EGR",getMarkerPos "MRK_BAC_DZ5_EGR"];
		_mrk2003 setMarkerTypeLocal "hd_end";
		_mrk2003 setMarkerColorLocal "ColorBLACK";
		_mrk2003 setMarkerTextLocal "Egress 206°";
		_mrk2003 setMarkerDirLocal 33;
		
		_mrk2004 = createMarkerLocal["BAC_DZ5_DZRP",getMarkerPos "MRK_BAC_DZ5_DZRP"];
		_mrk2004 setMarkerTypeLocal "hd_join";
		_mrk2004 setMarkerColorLocal "ColorBLACK";
		_mrk2004 setMarkerTextLocal "DZ RP (Brick Building)";
		
		_mrk2005 = createMarkerLocal["BAC_DZ5_BOX",getMarkerPos "MRK_BAC_DZ5_MCGEHEE"];
		_mrk2005 setMarkerTypeLocal "mil_triangle";
		_mrk2005 setMarkerColorLocal "ColorBLUE";
		_mrk2005 setMarkerTextLocal "DZ  MCGEHEE (DZ 5)";
		
		_mrk2006 = createMarkerLocal["BAC_DZ5_X1",getMarkerPos "MRK_BAC_DZ5_X1"];
		_mrk2006 setMarkerTypeLocal "hd_destroy";
		_mrk2006 setMarkerColorLocal "ColorRED";
		
		_mrk2006 = createMarkerLocal["BAC_DZ5_X2",getMarkerPos "MRK_BAC_DZ5_X2"];
		_mrk2006 setMarkerTypeLocal "hd_destroy";
		_mrk2006 setMarkerColorLocal "ColorRED";
		
		_mrk2006 = createMarkerLocal["BAC_DZ5_X3",getMarkerPos "MRK_BAC_DZ5_X3"];
		_mrk2006 setMarkerTypeLocal "hd_destroy";
		_mrk2006 setMarkerColorLocal "ColorRED";
		
		_mrk2006 = createMarkerLocal["BAC_DZ5_X4",getMarkerPos "MRK_BAC_DZ5_X4"];
		_mrk2006 setMarkerTypeLocal "hd_destroy";
		_mrk2006 setMarkerColorLocal "ColorRED";
		
		_mrk2006 = createMarkerLocal["BAC_DZ5_X5",getMarkerPos "MRK_BAC_DZ5_X5"];
		_mrk2006 setMarkerTypeLocal "hd_destroy";
		_mrk2006 setMarkerColorLocal "ColorRED";
		
		_mrk2007 = createMarkerLocal["BAC_DZ5_OBJ",getMarkerPos "MRK_BAC_DZ5_OBJ"];
		_mrk2007 setMarkerTypeLocal "hd_objective";
		_mrk2007 setMarkerColorLocal "ColorEast";
		_mrk2007 setMarkerTextLocal "Raid";
		
	/*			Boxes				*/
		
		_mrk2102 = createMarkerLocal["BAC_DZ5_BORDER_L",getMarkerPos "MRK_BAC_DZ5_BORDER_L"];
		_mrk2102 setMarkerShapeLocal "rectangle";
		_mrk2102 setMarkerColorLocal "ColorBLACK";
		_mrk2102 setMarkerSizeLocal [308, 4];
		_mrk2102 setMarkerDirLocal 75.874;
		
		_mrk2103 = createMarkerLocal["BAC_DZ5_BORDER_R",getMarkerPos "MRK_BAC_DZ5_BORDER_R"];
		_mrk2103 setMarkerShapeLocal "rectangle";
		_mrk2103 setMarkerColorLocal "ColorBLACK";
		_mrk2103 setMarkerSizeLocal [308, 4];
		_mrk2103 setMarkerDirLocal 75.874;
		
		_mrk2104 = createMarkerLocal["BAC_DZ5_RAIL_L",getMarkerPos "MRK_BAC_DZ5_RAIL_L"];
		_mrk2104 setMarkerShapeLocal "rectangle";
		_mrk2104 setMarkerColorLocal "ColorBLACK";
		_mrk2104 setMarkerSizeLocal [1008, 4];
		_mrk2104 setMarkerDirLocal 75.874;
		
		_mrk2105 = createMarkerLocal["BAC_DZ5_RAIL_R",getMarkerPos "MRK_BAC_DZ5_RAIL_R"];
		_mrk2105 setMarkerShapeLocal "rectangle";
		_mrk2105 setMarkerColorLocal "ColorBLACK";
		_mrk2105 setMarkerSizeLocal [1008, 4];
		_mrk2105 setMarkerDirLocal 75.874;
		
		_mrk2106 = createMarkerLocal["BAC_DZ5_RED_1",getMarkerPos "MRK_BAC_DZ5_RED_1"];
		_mrk2106 setMarkerShapeLocal "rectangle";
		_mrk2106 setMarkerColorLocal "ColorRED";
		_mrk2106 setMarkerSizeLocal [4, 108];
		_mrk2106 setMarkerDirLocal 75.874;
		
		_mrk2107 = createMarkerLocal["BAC_DZ5_YLW_1",getMarkerPos "MRK_BAC_DZ5_YLW_1"];
		_mrk2107 setMarkerShapeLocal "rectangle";
		_mrk2107 setMarkerColorLocal "ColorYELLOW";
		_mrk2107 setMarkerSizeLocal [4, 108];
		_mrk2107 setMarkerDirLocal 75.874;
		
		_mrk2108 = createMarkerLocal["BAC_DZ5_GRN_1",getMarkerPos "MRK_BAC_DZ5_GRN_1"];
		_mrk2108 setMarkerShapeLocal "rectangle";
		_mrk2108 setMarkerColorLocal "ColorGREEN";
		_mrk2108 setMarkerSizeLocal [4, 108];
		_mrk2108 setMarkerDirLocal 75.874;
		
		_mrk2109 = createMarkerLocal["BAC_DZ5_GRN_2",getMarkerPos "MRK_BAC_DZ5_GRN_2"];
		_mrk2109 setMarkerShapeLocal "rectangle";
		_mrk2109 setMarkerColorLocal "ColorGREEN";
		_mrk2109 setMarkerSizeLocal [4, 108];
		_mrk2109 setMarkerDirLocal 75.874;
		
		_mrk2110 = createMarkerLocal["BAC_DZ5_GRN_3",getMarkerPos "MRK_BAC_DZ5_GRN_3"];
		_mrk2110 setMarkerShapeLocal "rectangle";
		_mrk2110 setMarkerColorLocal "ColorGREEN";
		_mrk2110 setMarkerSizeLocal [4, 108];
		_mrk2110 setMarkerDirLocal 75.874;
		
		_mrk2111 = createMarkerLocal["BAC_DZ5_RED_2",getMarkerPos "MRK_BAC_DZ5_RED_2"];
		_mrk2111 setMarkerShapeLocal "rectangle";
		_mrk2111 setMarkerColorLocal "ColorRED";
		_mrk2111 setMarkerSizeLocal [4, 108];
		_mrk2111 setMarkerDirLocal 75.874;
		
		_mrk2112 = createMarkerLocal["BAC_DZ5_RED_3",getMarkerPos "MRK_BAC_DZ5_RED_3"];
		_mrk2112 setMarkerShapeLocal "rectangle";
		_mrk2112 setMarkerColorLocal "ColorRED";
		_mrk2112 setMarkerSizeLocal [4, 108];
		_mrk2112 setMarkerDirLocal 75.874;
		
		_mrk2113 = createMarkerLocal["BAC_DZ5_EGR_RAIL",getMarkerPos "MRK_BAC_DZ5_EGR_RAIL"];
		_mrk2113 setMarkerShapeLocal "rectangle";
		_mrk2113 setMarkerColorLocal "ColorBLACK";
		_mrk2113 setMarkerSizeLocal [4, 600];
		_mrk2113 setMarkerDirLocal 206;
		
		_mrk2114 = createMarkerLocal["BAC_DZ5_OBJ_BOX",getMarkerPos "MRK_BAC_DZ5_OBJ_BOX"];
		_mrk2114 setMarkerShapeLocal "rectangle";
		_mrk2114 setMarkerColorLocal "ColorEast";
		_mrk2114 setMarkerBrushLocal "Cross";
		_mrk2114 setMarkerSizeLocal [20, 35];
		_mrk2114 setMarkerDirLocal 69.366;
		_mrk2114 setMarkerAlphaLocal .50;
		//}
	};
	//}
	
//{	JMC INSTRUCTORS AND STUDENTS AND PILOTS

if ((typeOf _unit == "B_RangeMaster_F") or (typeOf _unit == "B_soldier_PG_F") or (typeOf _unit == "Cav_B_A_Plane_Transport_coPilot_F")) then
	{
	//{	DZ TALK
	/*			MARKERS				*/
		
		_mrk2201 = createMarkerLocal["JMC_DZT_ELE",getMarkerPos "MRK_JMC_DZT_ELE"];
		_mrk2201 setMarkerTypeLocal "hd_warning";
		_mrk2201 setMarkerColorLocal "ColorBLACK";
		_mrk2201 setMarkerTextLocal "030m MSL";
		_mrk2201 setMarkerDirLocal 206;
		
		_mrk2202 = createMarkerLocal["JMC_DZT_ING",getMarkerPos "MRK_JMC_DZT_ING"];
		_mrk2202 setMarkerTypeLocal "hd_start";
		_mrk2202 setMarkerColorLocal "ColorBLACK";
		_mrk2202 setMarkerTextLocal "Ingress 179°";
		_mrk2202 setMarkerDirLocal 210;
		
		_mrk2203 = createMarkerLocal["JMC_DZT_EGR",getMarkerPos "MRK_JMC_DZT_EGR"];
		_mrk2203 setMarkerTypeLocal "hd_end";
		_mrk2203 setMarkerColorLocal "ColorBLACK";
		_mrk2203 setMarkerTextLocal "Egress 152°";
		_mrk2203 setMarkerDirLocal 346;
		
		_mrk2204 = createMarkerLocal["JMC_DZT_DZRP",getMarkerPos "MRK_JMC_DZT_DZRP"];
		_mrk2204 setMarkerTypeLocal "hd_join";
		_mrk2204 setMarkerColorLocal "ColorBLACK";
		_mrk2204 setMarkerTextLocal "DZ RP (Building in Trees)";
		
		_mrk2205 = createMarkerLocal["JMC_DZT_NAME",getMarkerPos "MRK_JMC_DZT_TALK"];
		_mrk2205 setMarkerTypeLocal "mil_triangle";
		_mrk2205 setMarkerColorLocal "ColorBLUE";
		_mrk2205 setMarkerTextLocal "DZ Marking Discussion";
		
		_mrk2206 = createMarkerLocal["JMC_DZT_X1",getMarkerPos "MRK_JMC_DZT_X1"];
		_mrk2206 setMarkerTypeLocal "hd_destroy";
		_mrk2206 setMarkerColorLocal "ColorRED";
		
		_mrk2207 = createMarkerLocal["JMC_DZT_X2",getMarkerPos "MRK_JMC_DZT_X2"];
		_mrk2207 setMarkerTypeLocal "hd_destroy";
		_mrk2207 setMarkerColorLocal "ColorRED";
		
		_mrk2208 = createMarkerLocal["JMC_DZT_OBJ",getMarkerPos "MRK_JMC_DZT_OBJ"];
		_mrk2208 setMarkerTypeLocal "hd_objective";
		_mrk2208 setMarkerColorLocal "ColorEast";
		_mrk2208 setMarkerTextLocal "Raid";
		
	/*			Boxes				*/
		
		_mrk2301 = createMarkerLocal["JMC_DZT_BOX",getMarkerPos "MRK_JMC_DZT_BOX"];
		_mrk2301 setMarkerShapeLocal "rectangle";
		_mrk2301 setMarkerColorLocal "ColorWest";
		_mrk2301 setMarkerSizeLocal [1000, 1000];
		_mrk2301 setMarkerDirLocal 0;
		_mrk2301 setMarkerAlphaLocal .25;
		
		_mrk23011 = createMarkerLocal["JMC_DZT_BOX1",getMarkerPos "MRK_JMC_DZT_BOX1"];
		_mrk23011 setMarkerShapeLocal "rectangle";
		_mrk23011 setMarkerColorLocal "ColorBLUE";
		_mrk23011 setMarkerSizeLocal [1000, 4];
		_mrk23011 setMarkerDirLocal 0;
		
		_mrk23012 = createMarkerLocal["JMC_DZT_BOX2",getMarkerPos "MRK_JMC_DZT_BOX2"];
		_mrk23012 setMarkerShapeLocal "rectangle";
		_mrk23012 setMarkerColorLocal "ColorBLUE";
		_mrk23012 setMarkerSizeLocal [1008, 4];
		_mrk23012 setMarkerDirLocal 90;
		
		_mrk23013 = createMarkerLocal["JMC_DZT_BOX3",getMarkerPos "MRK_JMC_DZT_BOX3"];
		_mrk23013 setMarkerShapeLocal "rectangle";
		_mrk23013 setMarkerColorLocal "ColorBLUE";
		_mrk23013 setMarkerSizeLocal [1000, 4];
		_mrk23013 setMarkerDirLocal 0;
		
		_mrk23014 = createMarkerLocal["JMC_DZT_BOX4",getMarkerPos "MRK_JMC_DZT_BOX4"];
		_mrk23014 setMarkerShapeLocal "rectangle";
		_mrk23014 setMarkerColorLocal "ColorBLUE";
		_mrk23014 setMarkerSizeLocal [1008, 4];
		_mrk23014 setMarkerDirLocal 90;
		
		_mrk2302 = createMarkerLocal["JMC_DZT_BORDER_L",getMarkerPos "MRK_JMC_DZT_BORDER_L"];
		_mrk2302 setMarkerShapeLocal "rectangle";
		_mrk2302 setMarkerColorLocal "ColorBLACK";
		_mrk2302 setMarkerSizeLocal [608, 4];
		_mrk2302 setMarkerDirLocal 109.268;
		
		_mrk2303 = createMarkerLocal["JMC_DZT_BORDER_R",getMarkerPos "MRK_JMC_DZT_BORDER_R"];
		_mrk2303 setMarkerShapeLocal "rectangle";
		_mrk2303 setMarkerColorLocal "ColorBLACK";
		_mrk2303 setMarkerSizeLocal [608, 4];
		_mrk2303 setMarkerDirLocal 109.268;
		
		_mrk2304 = createMarkerLocal["JMC_DZT_RAIL_L",getMarkerPos "MRK_JMC_DZT_RAIL_L"];
		_mrk2304 setMarkerShapeLocal "rectangle";
		_mrk2304 setMarkerColorLocal "ColorBLACK";
		_mrk2304 setMarkerSizeLocal [1008, 4];
		_mrk2304 setMarkerDirLocal 109.268;
		
		_mrk2305 = createMarkerLocal["JMC_DZT_RAIL_R",getMarkerPos "MRK_JMC_DZT_RAIL_R"];
		_mrk2305 setMarkerShapeLocal "rectangle";
		_mrk2305 setMarkerColorLocal "ColorBLACK";
		_mrk2305 setMarkerSizeLocal [1008, 4];
		_mrk2305 setMarkerDirLocal 109.268;
		
		_mrk2306 = createMarkerLocal["JMC_DZT_RED_1",getMarkerPos "MRK_JMC_DZT_RED_1"];
		_mrk2306 setMarkerShapeLocal "rectangle";
		_mrk2306 setMarkerColorLocal "ColorRED";
		_mrk2306 setMarkerSizeLocal [4, 108];
		_mrk2306 setMarkerDirLocal 109.268;
		
		_mrk2307 = createMarkerLocal["JMC_DZT_YLW_1",getMarkerPos "MRK_JMC_DZT_YLW_1"];
		_mrk2307 setMarkerShapeLocal "rectangle";
		_mrk2307 setMarkerColorLocal "ColorYELLOW";
		_mrk2307 setMarkerSizeLocal [4, 108];
		_mrk2307 setMarkerDirLocal 109.268;
		
		_mrk2308 = createMarkerLocal["JMC_DZT_GRN_1",getMarkerPos "MRK_JMC_DZT_GRN_1"];
		_mrk2308 setMarkerShapeLocal "rectangle";
		_mrk2308 setMarkerColorLocal "ColorGREEN";
		_mrk2308 setMarkerSizeLocal [4, 108];
		_mrk2308 setMarkerDirLocal 109.268;
		
		_mrk2309 = createMarkerLocal["JMC_DZT_GRN_2",getMarkerPos "MRK_JMC_DZT_GRN_2"];
		_mrk2309 setMarkerShapeLocal "rectangle";
		_mrk2309 setMarkerColorLocal "ColorGREEN";
		_mrk2309 setMarkerSizeLocal [4, 108];
		_mrk2309 setMarkerDirLocal 109.268;
		
		_mrk2310 = createMarkerLocal["JMC_DZT_GRN_3",getMarkerPos "MRK_JMC_DZT_GRN_3"];
		_mrk2310 setMarkerShapeLocal "rectangle";
		_mrk2310 setMarkerColorLocal "ColorGREEN";
		_mrk2310 setMarkerSizeLocal [4, 108];
		_mrk2310 setMarkerDirLocal 109.268;
		
		_mrk2311 = createMarkerLocal["JMC_DZT_RED_2",getMarkerPos "MRK_JMC_DZT_RED_2"];
		_mrk2311 setMarkerShapeLocal "rectangle";
		_mrk2311 setMarkerColorLocal "ColorRED";
		_mrk2311 setMarkerSizeLocal [4, 108];
		_mrk2311 setMarkerDirLocal 109.268;
		
		_mrk2312 = createMarkerLocal["JMC_DZT_RED_3",getMarkerPos "MRK_JMC_DZT_RED_3"];
		_mrk2312 setMarkerShapeLocal "rectangle";
		_mrk2312 setMarkerColorLocal "ColorRED";
		_mrk2312 setMarkerSizeLocal [4, 108];
		_mrk2312 setMarkerDirLocal 109.268;
		
		_mrk2313 = createMarkerLocal["JMC_DZT_EGR_RAIL",getMarkerPos "MRK_JMC_DZT_EGR_RAIL"];
		_mrk2313 setMarkerShapeLocal "rectangle";
		_mrk2313 setMarkerColorLocal "ColorBLACK";
		_mrk2313 setMarkerSizeLocal [500, 4];
		_mrk2313 setMarkerDirLocal 61.597;
		
		_mrk2314 = createMarkerLocal["JMC_DZT_RED_4",getMarkerPos "MRK_JMC_DZT_RED_4"];
		_mrk2314 setMarkerShapeLocal "rectangle";
		_mrk2314 setMarkerColorLocal "ColorRED";
		_mrk2314 setMarkerSizeLocal [4, 108];
		_mrk2314 setMarkerDirLocal 276.287;
		
		_mrk2315 = createMarkerLocal["JMC_DZT_OBJ_BOX",getMarkerPos "MRK_JMC_DZT_OBJ_BOX"];
		_mrk2315 setMarkerShapeLocal "rectangle";
		_mrk2315 setMarkerColorLocal "ColorEast";
		_mrk2315 setMarkerBrushLocal "Cross";
		_mrk2315 setMarkerSizeLocal [80, 50];
		_mrk2315 setMarkerDirLocal 39.392;
		_mrk2315 setMarkerAlphaLocal .50;
		//}
	//{	TIPS MARKERS
		
		_mrk2401 = createMarkerLocal["JMC_DZT_HLP_1",getMarkerPos "MRK_JMC_DZT_HLP_1"];
		_mrk2401 setMarkerTypeLocal "mil_box";
		_mrk2401 setMarkerColorLocal "ColorBLACK";
		_mrk2401 setMarkerTextLocal "DZ Marker (Name)";
		
		_mrk2402 = createMarkerLocal["JMC_DZT_HLP_2",getMarkerPos "MRK_JMC_DZT_HLP_2"];
		_mrk2402 setMarkerTypeLocal "mil_box";
		_mrk2402 setMarkerColorLocal "ColorBLACK";
		_mrk2402 setMarkerTextLocal "DZ Boundry";
		
		_mrk2403 = createMarkerLocal["JMC_DZT_HLP_3",getMarkerPos "MRK_JMC_DZT_HLP_3"];
		_mrk2403 setMarkerTypeLocal "mil_triangle";
		_mrk2403 setMarkerColorLocal "ColorBLACK";
		_mrk2403 setMarkerTextLocal "Double Green Lines at Start";
		
		_mrk2404 = createMarkerLocal["JMC_DZT_HLP_4",getMarkerPos "MRK_JMC_DZT_HLP_4"];
		_mrk2404 setMarkerTypeLocal "mil_triangle";
		_mrk2404 setMarkerColorLocal "ColorBLACK";
		_mrk2404 setMarkerTextLocal "Double Red Lines at End";
		
		_mrk2405 = createMarkerLocal["JMC_DZT_HLP_5",getMarkerPos "MRK_JMC_DZT_HLP_5"];
		_mrk2405 setMarkerTypeLocal "mil_box";
		_mrk2405 setMarkerColorLocal "ColorBLACK";
		_mrk2405 setMarkerTextLocal "Hazards";
		
		_mrk2406 = createMarkerLocal["JMC_DZT_HLP_6",getMarkerPos "MRK_JMC_DZT_HLP_6"];
		_mrk2406 setMarkerTypeLocal "mil_box";
		_mrk2406 setMarkerColorLocal "ColorBLACK";
		_mrk2406 setMarkerTextLocal "Ingress Guide Rails";
		
		_mrk2407 = createMarkerLocal["JMC_DZT_HLP_7",getMarkerPos "MRK_JMC_DZT_HLP_7"];
		_mrk2407 setMarkerTypeLocal "mil_triangle";
		_mrk2407 setMarkerColorLocal "ColorBLACK";
		_mrk2407 setMarkerTextLocal "~2km from Start of DZ";
		
		_mrk2408 = createMarkerLocal["JMC_DZT_HLP_8",getMarkerPos "MRK_JMC_DZT_HLP_8"];
		_mrk2408 setMarkerTypeLocal "mil_box";
		_mrk2408 setMarkerColorLocal "ColorBLACK";
		_mrk2408 setMarkerTextLocal "Jump Command Lines";
		
		_mrk2409 = createMarkerLocal["JMC_DZT_HLP_9",getMarkerPos "MRK_JMC_DZT_HLP_9"];
		_mrk2409 setMarkerTypeLocal "mil_triangle";
		_mrk2409 setMarkerColorLocal "ColorBLACK";
		_mrk2409 setMarkerTextLocal "Red for GET READY ~2km from Start";
		
		_mrk2410 = createMarkerLocal["JMC_DZT_HLP_10",getMarkerPos "MRK_JMC_DZT_HLP_10"];
		_mrk2410 setMarkerTypeLocal "mil_triangle";
		_mrk2410 setMarkerColorLocal "ColorBLACK";
		_mrk2410 setMarkerTextLocal "Yellow for STAND BY ~ 800 from Start";
		
		_mrk2411 = createMarkerLocal["JMC_DZT_HLP_11",getMarkerPos "MRK_JMC_DZT_HLP_11"];
		_mrk2411 setMarkerTypeLocal "mil_triangle";
		_mrk2411 setMarkerColorLocal "ColorBLACK";
		_mrk2411 setMarkerTextLocal "Green for GO GO GO ~200m from Start";
		
		_mrk2412 = createMarkerLocal["JMC_DZT_HLP_12",getMarkerPos "MRK_JMC_DZT_HLP_12"];
		_mrk2412 setMarkerTypeLocal "mil_box";
		_mrk2412 setMarkerColorLocal "ColorBLACK";
		_mrk2412 setMarkerTextLocal "Egress Guide Rail";
		
		_mrk2413 = createMarkerLocal["JMC_DZT_HLP_13",getMarkerPos "MRK_JMC_DZT_HLP_13"];
		_mrk2413 setMarkerTypeLocal "mil_box";
		_mrk2413 setMarkerColorLocal "ColorBLACK";
		_mrk2413 setMarkerTextLocal "Ingress and Egress Marker";
		
		_mrk2414 = createMarkerLocal["JMC_DZT_HLP_14",getMarkerPos "MRK_JMC_DZT_HLP_14"];
		_mrk2414 setMarkerTypeLocal "mil_triangle";
		_mrk2414 setMarkerColorLocal "ColorBLACK";
		_mrk2414 setMarkerTextLocal "Use START marker for Ingress";
		
		_mrk2415 = createMarkerLocal["JMC_DZT_HLP_15",getMarkerPos "MRK_JMC_DZT_HLP_15"];
		_mrk2415 setMarkerTypeLocal "mil_triangle";
		_mrk2415 setMarkerColorLocal "ColorBLACK";
		_mrk2415 setMarkerTextLocal "Use END Marker for Egress";
		
		_mrk2416 = createMarkerLocal["JMC_DZT_HLP_16",getMarkerPos "MRK_JMC_DZT_HLP_16"];
		_mrk2416 setMarkerTypeLocal "mil_triangle";
		_mrk2416 setMarkerColorLocal "ColorBLACK";
		_mrk2416 setMarkerTextLocal "Type [ALT] + 0 1 7 6  to create ° Marker";
		
		_mrk2417 = createMarkerLocal["JMC_DZT_HLP_17",getMarkerPos "MRK_JMC_DZT_HLP_17"];
		_mrk2417 setMarkerTypeLocal "mil_box";
		_mrk2417 setMarkerColorLocal "ColorBLACK";
		_mrk2417 setMarkerTextLocal "Approach Elevation Marker";
		
		_mrk2418 = createMarkerLocal["JMC_DZT_HLP_18",getMarkerPos "MRK_JMC_DZT_HLP_18"];
		_mrk2418 setMarkerTypeLocal "mil_box";
		_mrk2418 setMarkerColorLocal "ColorBLACK";
		_mrk2418 setMarkerTextLocal "Drop Zone Rally Point";
		//}
	//{	Practice DZs
	/*			MARKERS					*/
		
		_mrk2501 = createMarkerLocal["JMC_DZ1",getMarkerPos "MRK_JMC_DZ1"];
		_mrk2501 setMarkerTypeLocal "mil_triangle";
		_mrk2501 setMarkerColorLocal "ColorBLUE";
		_mrk2501 setMarkerTextLocal "DZ 1";
		
		_mrk2502 = createMarkerLocal["JMC_DZ1_OBJ",getMarkerPos "MRK_JMC_DZ1_OBJ"];
		_mrk2502 setMarkerTypeLocal "hd_objective";
		_mrk2502 setMarkerColorLocal "ColorEast";
		
		_mrk2503 = createMarkerLocal["JMC_DZ2",getMarkerPos "MRK_JMC_DZ2"];
		_mrk2503 setMarkerTypeLocal "mil_triangle";
		_mrk2503 setMarkerColorLocal "ColorBLUE";
		_mrk2503 setMarkerTextLocal "DZ 2";
		
		_mrk2504 = createMarkerLocal["JMC_DZ2_OBJ",getMarkerPos "MRK_JMC_DZ2_OBJ"];
		_mrk2504 setMarkerTypeLocal "hd_objective";
		_mrk2504 setMarkerColorLocal "ColorEast";
		
		_mrk2505 = createMarkerLocal["JMC_DZ3",getMarkerPos "MRK_JMC_DZ3"];
		_mrk2505 setMarkerTypeLocal "mil_triangle";
		_mrk2505 setMarkerColorLocal "ColorBLUE";
		_mrk2505 setMarkerTextLocal "DZ 3";
		
		_mrk2506 = createMarkerLocal["JMC_DZ3_OBJ",getMarkerPos "MRK_JMC_DZ3_OBJ"];
		_mrk2506 setMarkerTypeLocal "hd_objective";
		_mrk2506 setMarkerColorLocal "ColorEast";
		
		_mrk2507 = createMarkerLocal["JMC_DZ4",getMarkerPos "MRK_JMC_DZ4"];
		_mrk2507 setMarkerTypeLocal "mil_triangle";
		_mrk2507 setMarkerColorLocal "ColorBLUE";
		_mrk2507 setMarkerTextLocal "DZ 4";
		
		_mrk2508 = createMarkerLocal["JMC_DZ4_OBJ",getMarkerPos "MRK_JMC_DZ4_OBJ"];
		_mrk2508 setMarkerTypeLocal "hd_objective";
		_mrk2508 setMarkerColorLocal "ColorEast";
		
	/*			SHAPES					*/
		
		_mrk2601 = createMarkerLocal["JMC_DZ1_ELLIPSE",getMarkerPos "MRK_JMC_DZ1"];
		_mrk2601 setMarkerShapeLocal "ellipse";
		_mrk2601 setMarkerColorLocal "ColorWEST";
		_mrk2601 setMarkerBrushLocal "Horizontal";
		_mrk2601 setMarkerSizeLocal [1500, 1500];
		_mrk2601 setMarkerAlphaLocal .35;
		
		_mrk2602 = createMarkerLocal["JMC_DZ2_ELLIPSE",getMarkerPos "MRK_JMC_DZ2"];
		_mrk2602 setMarkerShapeLocal "ellipse";
		_mrk2602 setMarkerColorLocal "ColorWEST";
		_mrk2602 setMarkerBrushLocal "Horizontal";
		_mrk2602 setMarkerSizeLocal [1500, 1500];
		_mrk2602 setMarkerAlphaLocal .35;
		
		_mrk2603 = createMarkerLocal["JMC_DZ3_ELLIPSE",getMarkerPos "MRK_JMC_DZ3"];
		_mrk2603 setMarkerShapeLocal "ellipse";
		_mrk2603 setMarkerColorLocal "ColorWEST";
		_mrk2603 setMarkerBrushLocal "Horizontal";
		_mrk2603 setMarkerSizeLocal [1500, 1500];
		_mrk2603 setMarkerAlphaLocal .35;
		
		_mrk2604 = createMarkerLocal["JMC_DZ4_ELLIPSE",getMarkerPos "MRK_JMC_DZ4"];
		_mrk2604 setMarkerShapeLocal "ellipse";
		_mrk2604 setMarkerColorLocal "ColorWEST";
		_mrk2604 setMarkerBrushLocal "Horizontal";
		_mrk2604 setMarkerSizeLocal [1500, 1500];
		_mrk2604 setMarkerAlphaLocal .35;
		//}
	};
	//}
	
//{	BAAC INSTRUCTORS AND STUDENTS AND PILOTS

if ((typeOf _unit == "rhsusf_army_ocp_arb_squadleader") or (typeOf _unit == "rhsusf_army_ocp_arb_teamleader") or (typeOf _unit == "rhsusf_army_ocp_arb_autorifleman") or (typeOf _unit == "rhsusf_army_ocp_arb_grenadier") or (typeOf _unit == "rhsusf_army_ocp_arb_rifleman") or (typeOf _unit == "Cav_B_A_Helicopter_Tra_Pilot_F") or (typeOf _unit == "Cav_B_A_Helicopter_Tra_coPilot_F") or (typeOf _unit == "Cav_B_A_Helicopter_Tra_CrewChief_F") or (typeOf _unit == "Cav_B_A_Helicopter_Tra_DoorGunner_F")) then
	{
	
	//{	LZ 1
	
		_mrk2701 = createMarkerLocal["BAAC_LZ1_LZ",getMarkerPos "MRK_BAAC_LZ1_LZ"];
		_mrk2701 setMarkerTypeLocal "hd_pickup";
		_mrk2701 setMarkerColorLocal "ColorBLUE";
		_mrk2701 setMarkerTextLocal "LZ 1 - Trail";
	
		_mrk2702 = createMarkerLocal["BAAC_LZ1_RP",getMarkerPos "MRK_BAAC_LZ1_RP"];
		_mrk2702 setMarkerTypeLocal "hd_join";
		_mrk2702 setMarkerColorLocal "ColorBLUE";
		_mrk2702 setMarkerTextLocal "RP 1";
		
		_mrk2703 = createMarkerLocal["BAAC_LZ1_AR1",getMarkerPos "MRK_BAAC_LZ1_AR1"];
		_mrk2703 setMarkerTypeLocal "hd_arrow";
		_mrk2703 setMarkerColorLocal "ColorBLACK";
		_mrk2703 setMarkerDirLocal 225;
		
		_mrk2704 = createMarkerLocal["BAAC_LZ1_AR2",getMarkerPos "MRK_BAAC_LZ1_AR2"];
		_mrk2704 setMarkerTypeLocal "hd_arrow";
		_mrk2704 setMarkerColorLocal "ColorBLACK";
		_mrk2704 setMarkerDirLocal 225;
		
		_mrk2705 = createMarkerLocal["BAAC_LZ1_AR3",getMarkerPos "MRK_BAAC_LZ1_AR3"];
		_mrk2705 setMarkerTypeLocal "hd_arrow";
		_mrk2705 setMarkerColorLocal "ColorBLACK";
		_mrk2705 setMarkerDirLocal 225;
		//}
	//{	LZ 2
	
		_mrk2801 = createMarkerLocal["BAAC_LZ2_LZ",getMarkerPos "MRK_BAAC_LZ2_LZ"];
		_mrk2801 setMarkerTypeLocal "hd_pickup";
		_mrk2801 setMarkerColorLocal "ColorBLUE";
		_mrk2801 setMarkerTextLocal "LZ 2 - Trail";
	
		_mrk2802 = createMarkerLocal["BAAC_LZ2_RP",getMarkerPos "MRK_BAAC_LZ2_RP"];
		_mrk2802 setMarkerTypeLocal "hd_join";
		_mrk2802 setMarkerColorLocal "ColorBLUE";
		_mrk2802 setMarkerTextLocal "RP 2";
		
		_mrk2803 = createMarkerLocal["BAAC_LZ2_AR1",getMarkerPos "MRK_BAAC_LZ2_AR1"];
		_mrk2803 setMarkerTypeLocal "hd_arrow";
		_mrk2803 setMarkerColorLocal "ColorBLACK";
		_mrk2803 setMarkerDirLocal 122;
		
		_mrk2804 = createMarkerLocal["BAAC_LZ2_AR2",getMarkerPos "MRK_BAAC_LZ2_AR2"];
		_mrk2804 setMarkerTypeLocal "hd_arrow";
		_mrk2804 setMarkerColorLocal "ColorBLACK";
		_mrk2804 setMarkerDirLocal 122;
		
		_mrk2805 = createMarkerLocal["BAAC_LZ2_AR3",getMarkerPos "MRK_BAAC_LZ2_AR3"];
		_mrk2805 setMarkerTypeLocal "hd_arrow";
		_mrk2805 setMarkerColorLocal "ColorBLACK";
		_mrk2805 setMarkerDirLocal 122;
		//}
	//{	LZ 3
	
		_mrk3301 = createMarkerLocal["BAAC_LZ3_OBJ",getMarkerPos "MRK_BAAC_LZ3_OBJ"];
		_mrk3301 setMarkerTypeLocal "hd_objective";
		_mrk3301 setMarkerColorLocal "ColorEast";
	
		_mrk3302 = createMarkerLocal["BAAC_LZ3_OBJ_BOX",getMarkerPos "MRK_BAAC_LZ3_OBJ"];
		_mrk3302 setMarkerShapeLocal "rectangle";
		_mrk3302 setMarkerBrushLocal "Cross";
		_mrk3302 setMarkerColorLocal "ColorEast";
		_mrk3302 setMarkerSizeLocal [30, 10];
		_mrk3302 setMarkerDirLocal 63;
		_mrk3302 setMarkerAlphaLocal .5;
	
		_mrk2901 = createMarkerLocal["BAAC_LZ3_LZ",getMarkerPos "MRK_BAAC_LZ3_LZ"];
		_mrk2901 setMarkerTypeLocal "hd_pickup";
		_mrk2901 setMarkerColorLocal "ColorBLUE";
		_mrk2901 setMarkerTextLocal "LZ 3 - Trail";
	
		_mrk2902 = createMarkerLocal["BAAC_LZ3_RP",getMarkerPos "MRK_BAAC_LZ3_RP"];
		_mrk2902 setMarkerTypeLocal "hd_join";
		_mrk2902 setMarkerColorLocal "ColorBLUE";
		_mrk2902 setMarkerTextLocal "RP 3";
		
		_mrk2903 = createMarkerLocal["BAAC_LZ3_AR1",getMarkerPos "MRK_BAAC_LZ3_AR1"];
		_mrk2903 setMarkerTypeLocal "hd_arrow";
		_mrk2903 setMarkerColorLocal "ColorBLACK";
		_mrk2903 setMarkerDirLocal 216;
		
		_mrk2904 = createMarkerLocal["BAAC_LZ3_AR2",getMarkerPos "MRK_BAAC_LZ3_AR2"];
		_mrk2904 setMarkerTypeLocal "hd_arrow";
		_mrk2904 setMarkerColorLocal "ColorBLACK";
		_mrk2904 setMarkerDirLocal 216;
		
		_mrk2905 = createMarkerLocal["BAAC_LZ3_AR3",getMarkerPos "MRK_BAAC_LZ3_AR3"];
		_mrk2905 setMarkerTypeLocal "hd_arrow";
		_mrk2905 setMarkerColorLocal "ColorBLACK";
		_mrk2905 setMarkerDirLocal 216;
		//}
	//{	LZ 4
	
		_mrk3401 = createMarkerLocal["BAAC_LZ4_OBJ",getMarkerPos "MRK_BAAC_LZ4_OBJ"];
		_mrk3401 setMarkerTypeLocal "hd_objective";
		_mrk3401 setMarkerColorLocal "ColorEast";
	
		_mrk3402 = createMarkerLocal["BAAC_LZ4_OBJ_BOX",getMarkerPos "MRK_BAAC_LZ4_OBJ"];
		_mrk3402 setMarkerShapeLocal "rectangle";
		_mrk3402 setMarkerColorLocal "ColorEast";
		_mrk3402 setMarkerBrushLocal "Cross";
		_mrk3402 setMarkerSizeLocal [30, 35];
		_mrk3402 setMarkerDirLocal 305;
		_mrk3402 setMarkerAlphaLocal .5;
	
		_mrk3001 = createMarkerLocal["BAAC_LZ4_LZ",getMarkerPos "MRK_BAAC_LZ4_LZ"];
		_mrk3001 setMarkerTypeLocal "hd_pickup";
		_mrk3001 setMarkerColorLocal "ColorBLUE";
		_mrk3001 setMarkerTextLocal "LZ 4 - Trail";
	
		_mrk3002 = createMarkerLocal["BAAC_LZ4_RP",getMarkerPos "MRK_BAAC_LZ4_RP"];
		_mrk3002 setMarkerTypeLocal "hd_join";
		_mrk3002 setMarkerColorLocal "ColorBLUE";
		_mrk3002 setMarkerTextLocal "RP 4";
		
		_mrk3003 = createMarkerLocal["BAAC_LZ4_AR1",getMarkerPos "MRK_BAAC_LZ4_AR1"];
		_mrk3003 setMarkerTypeLocal "hd_arrow";
		_mrk3003 setMarkerColorLocal "ColorBLACK";
		_mrk3003 setMarkerDirLocal 45;
		
		_mrk3004 = createMarkerLocal["BAAC_LZ4_AR2",getMarkerPos "MRK_BAAC_LZ4_AR2"];
		_mrk3004 setMarkerTypeLocal "hd_arrow";
		_mrk3004 setMarkerColorLocal "ColorBLACK";
		_mrk3004 setMarkerDirLocal 45;
		
		_mrk3005 = createMarkerLocal["BAAC_LZ4_AR3",getMarkerPos "MRK_BAAC_LZ4_AR3"];
		_mrk3005 setMarkerTypeLocal "hd_arrow";
		_mrk3005 setMarkerColorLocal "ColorBLACK";
		_mrk3005 setMarkerDirLocal 45;
		//}
	//{	LZ 5
	
		_mrk3051 = createMarkerLocal["BAAC_LZ5_LZ",getMarkerPos "MRK_BAAC_LZ5_LZ"];
		_mrk3051 setMarkerTypeLocal "hd_pickup";
		_mrk3051 setMarkerColorLocal "ColorBLUE";
		_mrk3051 setMarkerTextLocal "LZ 5 - Fast Rope";
	
		_mrk3052 = createMarkerLocal["BAAC_LZ5_RP",getMarkerPos "MRK_BAAC_LZ5_RP"];
		_mrk3052 setMarkerTypeLocal "hd_join";
		_mrk3052 setMarkerColorLocal "ColorBLUE";
		_mrk3052 setMarkerTextLocal "RP 5";
		//}
	};
	//}

//{	BAAC INSTRUCTORS AND PILOTS

if (typeOf _unit == "rhsusf_army_ocp_arb_squadleader") then
	{
	
	//{	LZ 1
	
		_mrk3103 = createMarkerLocal["BAAC_LZ1_GRID",getMarkerPos "MRK_BAAC_LZ1_GRID"];
		_mrk3103 setMarkerTypeLocal "hd_dot";
		_mrk3103 setMarkerColorLocal "ColorBLACK";
		_mrk3103 setMarkerTextLocal "1374 1666";
		_mrk3103 setMarkerAlphaLocal .5;
	
		_mrk3104 = createMarkerLocal["BAAC_LZ1_AZIMUTH",getMarkerPos "MRK_BAAC_LZ1_AZIMUTH"];
		_mrk3104 setMarkerTypeLocal "hd_dot";
		_mrk3104 setMarkerColorLocal "ColorBLACK";
		_mrk3104 setMarkerTextLocal "225° - Trail";
		_mrk3104 setMarkerAlphaLocal .5;
	
		_mrk3105 = createMarkerLocal["BAAC_LZ1_RADIO",getMarkerPos "MRK_BAAC_LZ1_RADIO"];
		_mrk3105 setMarkerTypeLocal "hd_dot";
		_mrk3105 setMarkerColorLocal "ColorBLACK";
		_mrk3105 setMarkerTextLocal "Misfit 5 - Channel 8";
		_mrk3105 setMarkerAlphaLocal .5;
	
		_mrk3106 = createMarkerLocal["BAAC_LZ1_TROOPS",getMarkerPos "MRK_BAAC_LZ1_TROOPS"];
		_mrk3106 setMarkerTypeLocal "hd_dot";
		_mrk3106 setMarkerColorLocal "ColorBLACK";
		_mrk3106 setMarkerTextLocal "# of PAX";
		_mrk3106 setMarkerAlphaLocal .5;
	
		_mrk3107 = createMarkerLocal["BAAC_LZ1_SECURITY",getMarkerPos "MRK_BAAC_LZ1_SECURITY"];
		_mrk3107 setMarkerTypeLocal "hd_dot";
		_mrk3107 setMarkerColorLocal "ColorBLACK";
		_mrk3107 setMarkerTextLocal "Security Green";
		_mrk3107 setMarkerAlphaLocal .5;
	
		_mrk3108 = createMarkerLocal["BAAC_LZ1_MARKING",getMarkerPos "MRK_BAAC_LZ1_MARKING"];
		_mrk3108 setMarkerTypeLocal "hd_dot";
		_mrk3108 setMarkerColorLocal "ColorBLACK";
		_mrk3108 setMarkerTextLocal "Smoke";
		_mrk3108 setMarkerAlphaLocal .5;
		//}
	//{	LZ 2
	
		_mrk3203 = createMarkerLocal["BAAC_LZ2_GRID",getMarkerPos "MRK_BAAC_LZ2_GRID"];
		_mrk3203 setMarkerTypeLocal "hd_dot";
		_mrk3203 setMarkerColorLocal "ColorBLACK";
		_mrk3203 setMarkerTextLocal "3143 1758";
		_mrk3203 setMarkerAlphaLocal .5;
	
		_mrk3204 = createMarkerLocal["BAAC_LZ2_AZIMUTH",getMarkerPos "MRK_BAAC_LZ2_AZIMUTH"];
		_mrk3204 setMarkerTypeLocal "hd_dot";
		_mrk3204 setMarkerColorLocal "ColorBLACK";
		_mrk3204 setMarkerTextLocal "122° - Trail";
		_mrk3204 setMarkerAlphaLocal .5;
	
		_mrk3205 = createMarkerLocal["BAAC_LZ2_RADIO",getMarkerPos "MRK_BAAC_LZ2_RADIO"];
		_mrk3205 setMarkerTypeLocal "hd_dot";
		_mrk3205 setMarkerColorLocal "ColorBLACK";
		_mrk3205 setMarkerTextLocal "Misfit 5 - Channel 8";
		_mrk3205 setMarkerAlphaLocal .5;
	
		_mrk3206 = createMarkerLocal["BAAC_LZ2_TROOPS",getMarkerPos "MRK_BAAC_LZ2_TROOPS"];
		_mrk3206 setMarkerTypeLocal "hd_dot";
		_mrk3206 setMarkerColorLocal "ColorBLACK";
		_mrk3206 setMarkerTextLocal "# of PAX";
		_mrk3206 setMarkerAlphaLocal .5;
	
		_mrk3207 = createMarkerLocal["BAAC_LZ2_SECURITY",getMarkerPos "MRK_BAAC_LZ2_SECURITY"];
		_mrk3207 setMarkerTypeLocal "hd_dot";
		_mrk3207 setMarkerColorLocal "ColorBLACK";
		_mrk3207 setMarkerTextLocal "Security Green";
		_mrk3207 setMarkerAlphaLocal .5;
	
		_mrk3208 = createMarkerLocal["BAAC_LZ2_MARKING",getMarkerPos "MRK_BAAC_LZ2_MARKING"];
		_mrk3208 setMarkerTypeLocal "hd_dot";
		_mrk3208 setMarkerColorLocal "ColorBLACK";
		_mrk3208 setMarkerTextLocal "Smoke";
		_mrk3208 setMarkerAlphaLocal .5;
		//}
	//{	LZ 3
	
		_mrk3303 = createMarkerLocal["BAAC_LZ3_GRID",getMarkerPos "MRK_BAAC_LZ3_GRID"];
		_mrk3303 setMarkerTypeLocal "hd_dot";
		_mrk3303 setMarkerColorLocal "ColorBLACK";
		_mrk3303 setMarkerTextLocal "1162 1192";
		_mrk3303 setMarkerAlphaLocal .5;
	
		_mrk3304 = createMarkerLocal["BAAC_LZ3_AZIMUTH",getMarkerPos "MRK_BAAC_LZ3_AZIMUTH"];
		_mrk3304 setMarkerTypeLocal "hd_dot";
		_mrk3304 setMarkerColorLocal "ColorBLACK";
		_mrk3304 setMarkerTextLocal "116° - Trail";
		_mrk3304 setMarkerAlphaLocal .5;
	
		_mrk3305 = createMarkerLocal["BAAC_LZ3_RADIO",getMarkerPos "MRK_BAAC_LZ3_RADIO"];
		_mrk3305 setMarkerTypeLocal "hd_dot";
		_mrk3305 setMarkerColorLocal "ColorBLACK";
		_mrk3305 setMarkerTextLocal "Misfit 5 - Channel 8";
		_mrk3305 setMarkerAlphaLocal .5;
	
		_mrk3306 = createMarkerLocal["BAAC_LZ3_TROOPS",getMarkerPos "MRK_BAAC_LZ3_TROOPS"];
		_mrk3306 setMarkerTypeLocal "hd_dot";
		_mrk3306 setMarkerColorLocal "ColorBLACK";
		_mrk3306 setMarkerTextLocal "# of PAX";
		_mrk3306 setMarkerAlphaLocal .5;
	
		_mrk3307 = createMarkerLocal["BAAC_LZ3_SECURITY",getMarkerPos "MRK_BAAC_LZ3_SECURITY"];
		_mrk3307 setMarkerTypeLocal "hd_dot";
		_mrk3307 setMarkerColorLocal "ColorBLACK";
		_mrk3307 setMarkerTextLocal "Security Yellow - NME 150m SW";
		_mrk3307 setMarkerAlphaLocal .5;
	
		_mrk3308 = createMarkerLocal["BAAC_LZ3_MARKING",getMarkerPos "MRK_BAAC_LZ3_MARKING"];
		_mrk3308 setMarkerTypeLocal "hd_dot";
		_mrk3308 setMarkerColorLocal "ColorBLACK";
		_mrk3308 setMarkerTextLocal "Smoke";
		_mrk3308 setMarkerAlphaLocal .5;
		//}
	//{	LZ 4
	
		_mrk3403 = createMarkerLocal["BAAC_LZ4_GRID",getMarkerPos "MRK_BAAC_LZ4_GRID"];
		_mrk3403 setMarkerTypeLocal "hd_dot";
		_mrk3403 setMarkerColorLocal "ColorBLACK";
		_mrk3403 setMarkerTextLocal "1902 1481";
		_mrk3403 setMarkerAlphaLocal .5;
	
		_mrk3404 = createMarkerLocal["BAAC_LZ4_AZIMUTH",getMarkerPos "MRK_BAAC_LZ4_AZIMUTH"];
		_mrk3404 setMarkerTypeLocal "hd_dot";
		_mrk3404 setMarkerColorLocal "ColorBLACK";
		_mrk3404 setMarkerTextLocal "035° - Trail";
		_mrk3404 setMarkerAlphaLocal .5;
	
		_mrk3405 = createMarkerLocal["BAAC_LZ4_RADIO",getMarkerPos "MRK_BAAC_LZ4_RADIO"];
		_mrk3405 setMarkerTypeLocal "hd_dot";
		_mrk3405 setMarkerColorLocal "ColorBLACK";
		_mrk3405 setMarkerTextLocal "Misfit 5 - Channel 8";
		_mrk3405 setMarkerAlphaLocal .5;
	
		_mrk3406 = createMarkerLocal["BAAC_LZ4_TROOPS",getMarkerPos "MRK_BAAC_LZ4_TROOPS"];
		_mrk3406 setMarkerTypeLocal "hd_dot";
		_mrk3406 setMarkerColorLocal "ColorBLACK";
		_mrk3406 setMarkerTextLocal "# of PAX";
		_mrk3406 setMarkerAlphaLocal .5;
	
		_mrk3407 = createMarkerLocal["BAAC_LZ4_SECURITY",getMarkerPos "MRK_BAAC_LZ4_SECURITY"];
		_mrk3407 setMarkerTypeLocal "hd_dot";
		_mrk3407 setMarkerColorLocal "ColorBLACK";
		_mrk3407 setMarkerTextLocal "Security Yellow - NME 150m SE";
		_mrk3407 setMarkerAlphaLocal .5;
	
		_mrk3408 = createMarkerLocal["BAAC_LZ4_MARKING",getMarkerPos "MRK_BAAC_LZ4_MARKING"];
		_mrk3408 setMarkerTypeLocal "hd_dot";
		_mrk3408 setMarkerColorLocal "ColorBLACK";
		_mrk3408 setMarkerTextLocal "Chemlight";
		_mrk3408 setMarkerAlphaLocal .5;
		//}
	};
	//}

//{	MFFPC INSTRUCTORS AND STUDENTS

if ((typeOf _unit == "B_Story_SF_Captain_F") or (typeOf _unit == "rhsusf_army_ucp_teamleader") or (typeOf _unit == "rhsusf_army_ucp_autorifleman") or (typeOf _unit == "rhsusf_army_ucp_grenadier") or (typeOf _unit == "rhsusf_army_ucp_rifleman")) then
	{
	
	//{ DZ RED
		_mrk5001 = createMarkerLocal["MFFPC_RED_HARP",getMarkerPos "MRK_MFFPC_RED_HARP"];
		_mrk5001 setMarkerTypeLocal "hd_start";
		_mrk5001 setMarkerColorLocal "ColorRED";
		_mrk5001 setMarkerTextLocal "HARP RED";
		_mrk5001 setMarkerDirLocal 179.843;
		
		_mrk5002 = createMarkerLocal["MFFPC_RED_ARROW_1",getMarkerPos "MRK_MFFPC_RED_ARROW_1"];
		_mrk5002 setMarkerTypeLocal "hd_arrow";
		_mrk5002 setMarkerColorLocal "ColorRED";
		_mrk5002 setMarkerDirLocal 269.843;
		
		_mrk5003 = createMarkerLocal["MFFPC_RED_ARROW_2",getMarkerPos "MRK_MFFPC_RED_ARROW_2"];
		_mrk5003 setMarkerTypeLocal "hd_arrow";
		_mrk5003 setMarkerColorLocal "ColorRED";
		_mrk5003 setMarkerDirLocal 269.843;
		
		_mrk5004 = createMarkerLocal["MFFPC_RED_ARROW_3",getMarkerPos "MRK_MFFPC_RED_ARROW_3"];
		_mrk5004 setMarkerTypeLocal "hd_arrow";
		_mrk5004 setMarkerColorLocal "ColorRED";
		_mrk5004 setMarkerDirLocal 269.843;
		
		_mrk5005 = createMarkerLocal["MFFPC_RED_DZ",getMarkerPos "MRK_MFFPC_RED_DZ"];
		_mrk5005 setMarkerTypeLocal "hd_end";
		_mrk5005 setMarkerColorLocal "ColorRED";
		_mrk5005 setMarkerTextLocal "DZ COPPER";
		
		_mrk5006 = createMarkerLocal["MFFPC_RED_RP",getMarkerPos "MRK_MFFPC_RED_RP"];
		_mrk5006 setMarkerTypeLocal "hd_join";
		_mrk5006 setMarkerColorLocal "ColorWEST";
		_mrk5006 setMarkerTextLocal "RP OAK";
		
		_mrk5007 = createMarkerLocal["MFFPC_RED_ALT",getMarkerPos "MRK_MFFPC_RED_ALT"];
		_mrk5007 setMarkerTypeLocal "hd_dot";
		_mrk5007 setMarkerColorLocal "ColorRED";
		_mrk5007 setMarkerTextLocal "Altitude: 8000m";
		
		_mrk5008 = createMarkerLocal["MFFPC_RED_DIS",getMarkerPos "MRK_MFFPC_RED_DIS"];
		_mrk5008 setMarkerTypeLocal "hd_dot";
		_mrk5008 setMarkerColorLocal "ColorRED";
		_mrk5008 setMarkerTextLocal "Distance: 8520m";
		
		_mrk5009 = createMarkerLocal["MFFPC_RED_BEAR",getMarkerPos "MRK_MFFPC_RED_BEAR"];
		_mrk5009 setMarkerTypeLocal "hd_dot";
		_mrk5009 setMarkerColorLocal "ColorRED";
		_mrk5009 setMarkerTextLocal "Bearing: 180°";
		
		_mrk5010 = createMarkerLocal["MFFPC_RED_OPEN",getMarkerPos "MRK_MFFPC_RED_OPEN"];
		_mrk5010 setMarkerTypeLocal "hd_dot";
		_mrk5010 setMarkerColorLocal "ColorRED";
		_mrk5010 setMarkerTextLocal "Opening: 7000m";
		
		//}
	//{ DZ GREEN
		_mrk5011 = createMarkerLocal["MFFPC_GREEN_HARP",getMarkerPos "MRK_MFFPC_GREEN_HARP"];
		_mrk5011 setMarkerTypeLocal "hd_start";
		_mrk5011 setMarkerColorLocal "ColorGUER";
		_mrk5011 setMarkerTextLocal "HARP GREEN";
		_mrk5011 setMarkerDirLocal 229.723;
		
		_mrk5012 = createMarkerLocal["MFFPC_GREEN_ARROW_1",getMarkerPos "MRK_MFFPC_GREEN_ARROW_1"];
		_mrk5012 setMarkerTypeLocal "hd_arrow";
		_mrk5012 setMarkerColorLocal "ColorGUER";
		_mrk5012 setMarkerDirLocal 319.723;
		
		_mrk5013 = createMarkerLocal["MFFPC_GREEN_ARROW_2",getMarkerPos "MRK_MFFPC_GREEN_ARROW_2"];
		_mrk5013 setMarkerTypeLocal "hd_arrow";
		_mrk5013 setMarkerColorLocal "ColorGUER";
		_mrk5013 setMarkerDirLocal 319.723;
		
		_mrk5014 = createMarkerLocal["MFFPC_GREEN_ARROW_3",getMarkerPos "MRK_MFFPC_GREEN_ARROW_3"];
		_mrk5014 setMarkerTypeLocal "hd_arrow";
		_mrk5014 setMarkerColorLocal "ColorGUER";
		_mrk5014 setMarkerDirLocal 319.723;
		
		_mrk5015 = createMarkerLocal["MFFPC_GREEN_DZ",getMarkerPos "MRK_MFFPC_GREEN_DZ"];
		_mrk5015 setMarkerTypeLocal "hd_end";
		_mrk5015 setMarkerColorLocal "ColorGUER";
		_mrk5015 setMarkerTextLocal "DZ SILVER";
		
		_mrk5016 = createMarkerLocal["MFFPC_GREEN_RP",getMarkerPos "MRK_MFFPC_GREEN_RP"];
		_mrk5016 setMarkerTypeLocal "hd_join";	
		_mrk5016 setMarkerColorLocal "ColorWEST";
		_mrk5016 setMarkerTextLocal "RP MAPLE";
		
		_mrk5017 = createMarkerLocal["MFFPC_GREEN_ALT",getMarkerPos "MRK_MFFPC_GREEN_ALT"];
		_mrk5017 setMarkerTypeLocal "hd_dot";
		_mrk5017 setMarkerColorLocal "ColorGUER";
		_mrk5017 setMarkerTextLocal "Altitude: 7000m";
		
		_mrk5018 = createMarkerLocal["MFFPC_GREEN_DIS",getMarkerPos "MRK_MFFPC_GREEN_DIS"];
		_mrk5018 setMarkerTypeLocal "hd_dot";
		_mrk5018 setMarkerColorLocal "ColorGUER";
		_mrk5018 setMarkerTextLocal "Distance: 1355m";
		
		_mrk5019 = createMarkerLocal["MFFPC_GREEN_BEAR",getMarkerPos "MRK_MFFPC_GREEN_BEAR"];
		_mrk5019 setMarkerTypeLocal "hd_dot";
		_mrk5019 setMarkerColorLocal "ColorGUER";
		_mrk5019 setMarkerTextLocal "Bearing: 230°";
		
		_mrk5020 = createMarkerLocal["MFFPC_GREEN_OPEN",getMarkerPos "MRK_MFFPC_GREEN_OPEN"];
		_mrk5020 setMarkerTypeLocal "hd_dot";
		_mrk5020 setMarkerColorLocal "ColorGUER";
		_mrk5020 setMarkerTextLocal "Opening: HALO";
		//}
	//{ DZ YELLOW
		_mrk5021 = createMarkerLocal["MFFPC_YELLOW_HARP",getMarkerPos "MRK_MFFPC_YELLOW_HARP"];
		_mrk5021 setMarkerTypeLocal "hd_start";
		_mrk5021 setMarkerColorLocal "ColorYELLOW";
		_mrk5021 setMarkerTextLocal "HARP YELLOW";
		_mrk5021 setMarkerDirLocal 317.348;
		
		_mrk5022 = createMarkerLocal["MFFPC_YELLOW_ARROW_1",getMarkerPos "MRK_MFFPC_YELLOW_ARROW_1"];
		_mrk5022 setMarkerTypeLocal "hd_arrow";
		_mrk5022 setMarkerColorLocal "ColorYELLOW";
		_mrk5022 setMarkerDirLocal 47.348;
		
		_mrk5023 = createMarkerLocal["MFFPC_YELLOW_ARROW_2",getMarkerPos "MRK_MFFPC_YELLOW_ARROW_2"];
		_mrk5023 setMarkerTypeLocal "hd_arrow";
		_mrk5023 setMarkerColorLocal "ColorYELLOW";
		_mrk5023 setMarkerDirLocal 47.348;
		
		_mrk5024 = createMarkerLocal["MFFPC_YELLOW_ARROW_3",getMarkerPos "MRK_MFFPC_YELLOW_ARROW_3"];
		_mrk5024 setMarkerTypeLocal "hd_arrow";
		_mrk5024 setMarkerColorLocal "ColorYELLOW";
		_mrk5024 setMarkerDirLocal 47.348;
		
		_mrk5025 = createMarkerLocal["MFFPC_YELLOW_DZ",getMarkerPos "MRK_MFFPC_YELLOW_DZ"];
		_mrk5025 setMarkerTypeLocal "hd_end";
		_mrk5025 setMarkerColorLocal "ColorYELLOW";
		_mrk5025 setMarkerTextLocal "DZ BRONZE";
		
		_mrk5026 = createMarkerLocal["MFFPC_YELLOW_RP",getMarkerPos "MRK_MFFPC_YELLOW_RP"];
		_mrk5026 setMarkerTypeLocal "hd_join";
		_mrk5026 setMarkerColorLocal "ColorWEST";
		_mrk5026 setMarkerTextLocal "RP WILLOW";
		
		_mrk5027 = createMarkerLocal["MFFPC_YELLOW_OBJ",getMarkerPos "MRK_MFFPC_YELLOW_OBJ"];
		_mrk5027 setMarkerTypeLocal "hd_end";
		_mrk5027 setMarkerColorLocal "ColorYELLOW";
		_mrk5027 setMarkerTextLocal "OBJ EMERALD";
		
		_mrk5027 = createMarkerLocal["MFFPC_YELLOW_ALT",getMarkerPos "MRK_MFFPC_YELLOW_ALT"];
		_mrk5027 setMarkerTypeLocal "hd_dot";
		_mrk5027 setMarkerColorLocal "ColorYELLOW";
		_mrk5027 setMarkerTextLocal "Altitude: 9000m";
		
		_mrk5028 = createMarkerLocal["MFFPC_YELLOW_DIS",getMarkerPos "MRK_MFFPC_YELLOW_DIS"];
		_mrk5028 setMarkerTypeLocal "hd_dot";
		_mrk5028 setMarkerColorLocal "ColorYELLOW";
		_mrk5028 setMarkerTextLocal "Distance: 6200m";
		
		_mrk5029 = createMarkerLocal["MFFPC_YELLOW_BEAR",getMarkerPos "MRK_MFFPC_YELLOW_BEAR"];
		_mrk5029 setMarkerTypeLocal "hd_dot";
		_mrk5029 setMarkerColorLocal "ColorYELLOW";
		_mrk5029 setMarkerTextLocal "Bearing: 317°";
		
		_mrk5030 = createMarkerLocal["MFFPC_YELLOW_OPEN",getMarkerPos "MRK_MFFPC_YELLOW_OPEN"];
		_mrk5030 setMarkerTypeLocal "hd_dot";
		_mrk5030 setMarkerColorLocal "ColorYELLOW";
		_mrk5030 setMarkerTextLocal "Opening: 4500m";
		//}
	//{ DZ ORANGE
		_mrk5031 = createMarkerLocal["MFFPC_ORANGE_HARP",getMarkerPos "MRK_MFFPC_ORANGE_HARP"];
		_mrk5031 setMarkerTypeLocal "hd_start";
		_mrk5031 setMarkerColorLocal "ColorORANGE";
		_mrk5031 setMarkerTextLocal "HARP ORANGE";
		_mrk5031 setMarkerDirLocal 44.421;
		
		_mrk5032 = createMarkerLocal["MFFPC_ORANGE_ARROW_1",getMarkerPos "MRK_MFFPC_ORANGE_ARROW_1"];
		_mrk5032 setMarkerTypeLocal "hd_arrow";
		_mrk5032 setMarkerColorLocal "ColorORANGE";
		_mrk5032 setMarkerDirLocal 134.421;
		
		_mrk5033 = createMarkerLocal["MFFPC_ORANGE_ARROW_2",getMarkerPos "MRK_MFFPC_ORANGE_ARROW_2"];
		_mrk5033 setMarkerTypeLocal "hd_arrow";
		_mrk5033 setMarkerColorLocal "ColorORANGE";
		_mrk5033 setMarkerDirLocal 134.421;
		
		_mrk5034 = createMarkerLocal["MFFPC_ORANGE_ARROW_3",getMarkerPos "MRK_MFFPC_ORANGE_ARROW_3"];
		_mrk5034 setMarkerTypeLocal "hd_arrow";
		_mrk5034 setMarkerColorLocal "ColorORANGE";
		_mrk5034 setMarkerDirLocal 134.421;
		
		_mrk5035 = createMarkerLocal["MFFPC_ORANGE_DZ",getMarkerPos "MRK_MFFPC_ORANGE_DZ"];
		_mrk5035 setMarkerTypeLocal "hd_end";
		_mrk5035 setMarkerColorLocal "ColorORANGE";
		_mrk5035 setMarkerTextLocal "DZ PLATINUM";
		
		_mrk5036 = createMarkerLocal["MFFPC_ORANGE_RP",getMarkerPos "MRK_MFFPC_ORANGE_RP"];
		_mrk5036 setMarkerTypeLocal "hd_join";
		_mrk5036 setMarkerColorLocal "ColorWEST";
		_mrk5036 setMarkerTextLocal "RP BEECH";
		
		_mrk50371 = createMarkerLocal["MFFPC_ORANGE_OBJ",getMarkerPos "MRK_MFFPC_ORANGE_OBJ"];
		_mrk50371 setMarkerTypeLocal "hd_end";
		_mrk50371 setMarkerColorLocal "ColorORANGE";
		_mrk50371 setMarkerTextLocal "OBJ RUBY";
		
		_mrk5037 = createMarkerLocal["MFFPC_ORANGE_ALT",getMarkerPos "MRK_MFFPC_ORANGE_ALT"];
		_mrk5037 setMarkerTypeLocal "hd_dot";
		_mrk5037 setMarkerColorLocal "ColorORANGE";
		_mrk5037 setMarkerTextLocal "Altitude: 8000m";
		
		_mrk5038 = createMarkerLocal["MFFPC_ORANGE_DIS",getMarkerPos "MRK_MFFPC_ORANGE_DIS"];
		_mrk5038 setMarkerTypeLocal "hd_dot";
		_mrk5038 setMarkerColorLocal "ColorORANGE";
		_mrk5038 setMarkerTextLocal "Distance: 1320m";
		
		_mrk5039 = createMarkerLocal["MFFPC_ORANGE_BEAR",getMarkerPos "MRK_MFFPC_ORANGE_BEAR"];
		_mrk5039 setMarkerTypeLocal "hd_dot";
		_mrk5039 setMarkerColorLocal "ColorORANGE";
		_mrk5039 setMarkerTextLocal "Bearing: 044°";
		
		_mrk5050 = createMarkerLocal["MFFPC_ORANGE_OPEN",getMarkerPos "MRK_MFFPC_ORANGE_OPEN"];
		_mrk5050 setMarkerTypeLocal "hd_dot";
		_mrk5050 setMarkerColorLocal "ColorORANGE";
		_mrk5050 setMarkerTextLocal "Opening: HALO";
		//}
	//{ DZ BLUE
		_mrk5041 = createMarkerLocal["MFFPC_BLUE_HARP",getMarkerPos "MRK_MFFPC_BLUE_HARP"];
		_mrk5041 setMarkerTypeLocal "hd_start";
		_mrk5041 setMarkerColorLocal "ColorBLUE";
		_mrk5041 setMarkerTextLocal "HARP BLUE";
		_mrk5041 setMarkerDirLocal 2.318;
		
		_mrk5042 = createMarkerLocal["MFFPC_BLUE_ARROW_1",getMarkerPos "MRK_MFFPC_BLUE_ARROW_1"];
		_mrk5042 setMarkerTypeLocal "hd_arrow";
		_mrk5042 setMarkerColorLocal "ColorBLUE";
		_mrk5042 setMarkerDirLocal 92.318;
		
		_mrk5043 = createMarkerLocal["MFFPC_BLUE_ARROW_2",getMarkerPos "MRK_MFFPC_BLUE_ARROW_2"];
		_mrk5043 setMarkerTypeLocal "hd_arrow";
		_mrk5043 setMarkerColorLocal "ColorBLUE";
		_mrk5043 setMarkerDirLocal 92.318;
		
		_mrk5044 = createMarkerLocal["MFFPC_BLUE_ARROW_3",getMarkerPos "MRK_MFFPC_BLUE_ARROW_3"];
		_mrk5044 setMarkerTypeLocal "hd_arrow";
		_mrk5044 setMarkerColorLocal "ColorBLUE";
		_mrk5044 setMarkerDirLocal 92.318;
		
		_mrk5045 = createMarkerLocal["MFFPC_BLUE_DZ",getMarkerPos "MRK_MFFPC_BLUE_DZ"];
		_mrk5045 setMarkerTypeLocal "hd_end";
		_mrk5045 setMarkerColorLocal "ColorBLUE";
		_mrk5045 setMarkerTextLocal "DZ GOLD";
		
		_mrk5046 = createMarkerLocal["MFFPC_BLUE_RP",getMarkerPos "MRK_MFFPC_BLUE_RP"];
		_mrk5046 setMarkerTypeLocal "hd_join";
		_mrk5046 setMarkerColorLocal "ColorWEST";
		_mrk5046 setMarkerTextLocal "RP Spruce";
		
		_mrk5037 = createMarkerLocal["MFFPC_BLUE_ALT",getMarkerPos "MRK_MFFPC_BLUE_ALT"];
		_mrk5037 setMarkerTypeLocal "hd_dot";
		_mrk5037 setMarkerColorLocal "ColorBLUE";
		_mrk5037 setMarkerTextLocal "Altitude: 9000m";
		
		_mrk5038 = createMarkerLocal["MFFPC_BLUE_DIS",getMarkerPos "MRK_MFFPC_BLUE_DIS"];
		_mrk5038 setMarkerTypeLocal "hd_dot";
		_mrk5038 setMarkerColorLocal "ColorBLUE";
		_mrk5038 setMarkerTextLocal "Distance: 1670m";
		
		_mrk5039 = createMarkerLocal["MFFPC_BLUE_BEAR",getMarkerPos "MRK_MFFPC_BLUE_BEAR"];
		_mrk5039 setMarkerTypeLocal "hd_dot";
		_mrk5039 setMarkerColorLocal "ColorBLUE";
		_mrk5039 setMarkerTextLocal "Bearing: 002°";
		
		_mrk5050 = createMarkerLocal["MFFPC_BLUE_OPEN",getMarkerPos "MRK_MFFPC_BLUE_OPEN"];
		_mrk5050 setMarkerTypeLocal "hd_dot";
		_mrk5050 setMarkerColorLocal "ColorBLUE";
		_mrk5050 setMarkerTextLocal "Opening: HALO";
		//}
	};
	
	//}
//{	MFFPC INSTRUCTORS

if (typeOf _unit == "B_Story_SF_Captain_F") then
	{
	
	};
	//}