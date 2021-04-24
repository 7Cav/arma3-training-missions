#include "..\..\includes.hpp"

/* 7th Cavalry Standard Loadouts
id = ["all", this] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf"; 
If Ranger put this in INIT
id = ["Ranger", this] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf"; 
*/

params ["_type", "_unit"];
	
// ====================================================================================
	
removeallweapons _unit; 
removeGoggles _unit;  
_unit unassignitem "NVGoggles"; 
_unit removeitem "NVGoggles"; 
removeVest _unit;				
	
switch (_type) do
{		
// ====================================================================================
	case "all": 
	{	
		
	};
// ====================================================================================
	case "CAD":
	{	
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;

		_unit forceAddUniform CLASS_UNIFORM;
		for "_i" from 1 to 3 do {_unit addItemToUniform CLASS_BANDAGE};
		for "_i" from 1 to 2 do {_unit addItemToUniform CLASS_MORPHINE};
		if(!(_unit getVariable ["ace_hasearplugsin",false])) then {
			_unit addItemToUniform CLASS_EARPLUGS;
		};
		_unit addVest CLASS_VEST_CADRE;
		for "_i" from 1 to 2 do {_unit addItemToVest CLASS_MAGAZINE;};
		_unit addHeadgear CLASS_HEAD_CADRE;

		_unit addWeapon CLASS_WEAPON;
		_unit addWeapon "Rangefinder";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "tf_microdagr";
		
		_pweap = primaryweapon _unit;
		_unit selectweapon _pweap;
	};
	
// ====================================================================================
	case "DI":
	{	
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;

		_unit forceAddUniform CLASSCLASS_UNIFORM_DI;
		for "_i" from 1 to 3 do {_unit addItemToUniform CLASS_BANDAGE;};
		for "_i" from 1 to 2 do {_unit addItemToUniform CLASS_MORPHINE;};
		if(!(_unit getVariable ["ace_hasearplugsin",false])) then {
			_unit addItemToUniform CLASS_EARPLUGS;
		};
		_unit addVest CLASS_VEST_DI;
		
		for "_i" from 1 to 4 do {_unit addItemToVest CLASS_MAGAZINE;};
		for "_i" from 1 to 4 do {_unit addItemToVest CLASS_GRENADE;};
		_unit addHeadgear CLASS_HEAD_DI;

		_unit addWeapon CLASS_WEAPON;
		_unit addWeapon "Rangefinder";

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemcTab";
		
		_pweap = primaryweapon _unit;
		_unit selectweapon _pweap;
	};
	
// ====================================================================================
	case "TRP":
	{	
		removeAllWeapons _unit;
		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeUniform _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeHeadgear _unit;
		removeGoggles _unit;

		_unit forceAddUniform CLASS_UNIFORM;
		if(!(_unit getVariable ["ace_hasearplugsin",false])) then {
			_unit addItemToUniform CLASS_EARPLUGS;
		};
		_unit addVest CLASS_VEST_TROOPER;
		
		_unit addHeadgear CLASS_HEAD_TROOPER;
		
		_unit addWeapon CLASS_WEAPON;

		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
	};
// ====================================================================================
	case "CLR":
	{	
		removeAllWeapons _unit;
		removeGoggles _unit; 
		removeHeadGear _unit;
		removeBackPack _unit;
	};
};


