_civ1Group = CreateGroup Civilian;
_civ2Group = CreateGroup Civilian;
_civ3Group = CreateGroup Civilian;
_civ4Group = CreateGroup Civilian;
_civ5Group = CreateGroup Civilian;
_civ6Group = CreateGroup Civilian;

if (isnil('Civ1')) then{
	"C_man_1" createUnit [getMarkerPos "Civ1", _civ1Group,"Civ1 = this; this setDir 226; this disableAI 'MOVE'; this addAction ['Secure Hostage', 'deleteVehicle Civ1; Civ1 = nil;'] "];
};
if (isnil('Civ2')) then{
	"C_man_1_1_F" createUnit [getMarkerPos "Civ2", _civ2Group,"Civ2 = this; this setDir 307; this disableAI 'MOVE'; this addAction ['Secure Hostage', 'deleteVehicle Civ2; Civ2 = nil;'] "];
};
if (isnil('Civ3')) then{
	"C_man_polo_1_F" createUnit [getMarkerPos "Civ3", _civ3Group,"Civ3 = this; this setDir 300; this disableAI 'MOVE'; this addAction ['Secure Hostage', 'deleteVehicle Civ3; Civ3 = nil;'] "];
};
if (isnil('Civ4')) then{
	"C_man_1_3_F" createUnit [getMarkerPos "Civ4", _civ4Group,"Civ4 = this; this setDir 441; this disableAI 'MOVE'; this addAction ['Secure Hostage', 'deleteVehicle Civ4; Civ4 = nil;'] "];
};
if (isnil('Civ5')) then{
	"C_man_polo_3_F" createUnit [getMarkerPos "Civ5", _civ5Group,"Civ5 = this; this setDir 520; this disableAI 'MOVE'; this addAction ['Secure Hostage', 'deleteVehicle Civ5; Civ5 = nil;'] "];
};
if (isnil('Civ6')) then{
	"C_man_polo_5_F" createUnit [getMarkerPos "Civ6", _civ6Group,"Civ6 = this; this setDir 90; this disableAI 'MOVE'; this addAction ['Secure Hostage', 'deleteVehicle Civ6; Civ6 = nil;'] "];
};
