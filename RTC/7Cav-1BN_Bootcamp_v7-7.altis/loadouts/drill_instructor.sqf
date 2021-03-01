#include "..\includes.hpp"

_unit = _this select 0;
_unit switchMove "";

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform CLASS_UNIFORM;
for "_i" from 1 to 3 do {_unit addItemToUniform CLASS_BANDAGE;};
for "_i" from 1 to 2 do {_unit addItemToUniform CLASS_MORPHINE;};
if(!(_unit getVariable ["ACE_hasEarPlugsin", false])) then {
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
