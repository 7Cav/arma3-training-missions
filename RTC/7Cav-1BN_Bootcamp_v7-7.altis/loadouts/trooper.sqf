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

for "_i" from 1 to 3 do {_unit addItemToUniform CLASS_BANDAGE};
for "_i" from 1 to 2 do {_unit addItemToUniform CLASS_MORPHINE};


_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";

_unit switchMove "";