/*

_s = [this, "rifle"] execVM "scripts\rangeBoxes.sqf";

CargoRamp_Open
ramp_anim

statement = "this animateSource ['ramp_anim', 1];{if(not(_x isKindOf 'Man'))then{detach _x}}foreach attachedObjects this;";
*/


params [["_box", nil],["_type", ""]]; 

if(isNil "_box") exitWith {systemChat "Error rangeBox-9: Box doesn't exist"};

_box allowDamage false; 
_box enableSimulation false;

clearItemCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;

switch (_type) do {
	case "rifle" : {
		_box addAction ["Rifle Range Loadout (Standard)", {[_this select 1] execVM "loadouts\rifle_range.sqf"}]; 
		_box addAction ["Rifle Range Loadout (M4)", {[_this select 1] execVM "loadouts\rifle_rangeM4.sqf"}]; 
	};

	case "grenade" : {
		_box addAction ["Grenade Range Loadout", {[_this select 1] execVM "loadouts\grenade_range.sqf"}];
	};
	
	case "killhouse" : {
		_box addAction ["Killhouse Loadout", {[_this select 1] execVM "loadouts\killhouse.sqf"}];
	};
	case "bounding" : {
		_box addAction ["Bounding Range Loadout", {[_this select 1] execVM "loadouts\bounding_range.sqf"}];
	};
	case "" : {
	
	};
};

waitUntil {alive player};

/*
if((typeOf player) in ["B_recon_F", "B_recon_medic_F", "B_soldier_M_F"]) then {
	_box addAction ["<t color='#ffff11'>Arsenal</t>", {["Open",true] spawn BIS_fnc_arsenal}];
};
*/

