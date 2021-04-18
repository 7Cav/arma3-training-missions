#include "..\includes.hpp"

_unit = _this select 0;
_unit switchMove "";

removeAllWeapons _unit;
{_unit removeMagazine _x} forEach (magazines _unit);

_unit addWeapon CLASS_WEAPON;
for "_i" from 1 to 4 do {_unit addItem CLASS_MAGAZINE;};

removeAllItems _unit;
//if(!(_unit getVariable ["ACE_hasEarPlugsin", false])) then {
//	_unit addItem CLASS_EARPLUGS;
//};