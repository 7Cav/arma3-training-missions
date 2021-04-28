
#include "..\script_component.hpp";

params ["_vehicle"];

_humvee = [];
{if (_x iskindOf "rhsusf_hmmwe_base") then {_humvee pushBack _x}} forEach vehicles;
{[_x] call FUNC(humvee)} forEach _humvee;

_truck = [];
{if (_x iskindOf "rhsusf_fmtv_base") then {_truck pushBack _x}} forEach vehicles;
{[_x] call FUNC(truck)} forEach _truck;

_stryker = [];
{if (_x iskindOf "rhsusf_stryker_base") then {_stryker pushBack _x}} forEach vehicles;
{[_x] call FUNC(stryker)} forEach _stryker;

_bradley = [];
{if (_x iskindOf "RHS_M2A2_Base") then {_bradley pushBack _x}} forEach vehicles;
{[_x] call FUNC(bradley)} forEach _bradley;

_abrams = [];
{if (_x iskindOf "rhsusf_m1a1tank_base") then {_abrams pushBack _x}} forEach vehicles;
{[_x] call FUNC(abrams)} forEach _abrams;

_littleBird = [];
{if (_x iskindOf "RHS_MELB_base") then {_littleBird pushBack _x}} forEach vehicles;
{[_x] call FUNC(littleBird)} forEach _littleBird;

_blackhawk = [];
{if (_x iskindOf "RHS_UH60_Base") then {_blackhawk pushBack _x}} forEach vehicles;
{[_x] call FUNC(blackhawk)} forEach _blackhawk;

_chinook = [];
{if (_x iskindOf "RHS_CH_47F_base") then {_chinook pushBack _x}} forEach vehicles;
{[_x] call FUNC(chinook)} forEach _chinook;

_apache = [];
{if (_x iskindOf "RHS_AH64_base") then {_apache pushBack _x}} forEach vehicles;
{[_x] call FUNC(apache)} forEach _apache;

_c130 = [];
{if (_x iskindOf "RHS_C130J_Base") then {_c130 pushBack _x}} forEach vehicles;
{[_x] call FUNC(c130)} forEach _c130;

_m2 = [];
{if (_x iskindOf "rhs_m2staticmg_base") then {_m2 pushBack _x}} forEach vehicles;
{[_x] call FUNC(m2)} forEach _m2;

_mk19 = [];
{if (_x iskindOf "RHS_MK19_TriPod_base") then {_mk19 pushBack _x}} forEach vehicles;
{[_x] call FUNC(mk19)} forEach _mk19;

_tow = [];
{if (_x iskindOf "RHS_TOW_TriPod_base") then {_tow pushBack _x}} forEach vehicles;
{[_x] call FUNC(tow)} forEach _tow;

_m224 = [];
{if (_x iskindOf "NDS_M224_mortar_base") then {_m224 pushBack _x}} forEach vehicles;
{[_x] call FUNC(m224)} forEach _m224;

{_x setPlateNumber "1/7 Cav"} forEach (
	_humvee +
	_truck +
	_stryker +
	_stryker +
	_bradley +
	_abrams
);
