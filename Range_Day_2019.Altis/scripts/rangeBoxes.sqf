if(!hasInterface) exitWith {};
	
params ["_box","_action"];

waitUntil {alive player};

["AmmoboxInit", [_box, true, {_this getVariable ["cav_ranges_instructor",false]}]] spawn BIS_fnc_arsenal;

switch (_action) do {
	case "all" : {
		_box addAction ["Rifle Range Loadout", {_this execVM "scripts\loadouts\rifle_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
		_box addAction ["MG Range Loadout", {_this execVM "scripts\loadouts\mg_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
		_box addAction ["AT Range Loadout", {_this execVM "scripts\loadouts\at_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
		_box addAction ["M320 Range Loadout", {_this execVM "scripts\loadouts\m320_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
	};
	case "rifle" : {
		_box addAction ["Rifle Range Loadout", {_this execVM "scripts\loadouts\rifle_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
	};
	case "mg" : {
		_box addAction ["MG Range Loadout", {_this execVM "scripts\loadouts\mg_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
	};
	case "at" : {
		_box addAction ["AT Range Loadout", {_this execVM "scripts\loadouts\AT_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
	};
	case "m320" : {
		_box addAction ["M320 Range Loadout", {_this execVM "scripts\loadouts\m320_range.sqf"}, nil, 1.5, false, true, "", "true", 3];
	};
};

//if((typeOf player) in ["B_recon_F", "B_recon_medic_F"]) then {
	
//};
