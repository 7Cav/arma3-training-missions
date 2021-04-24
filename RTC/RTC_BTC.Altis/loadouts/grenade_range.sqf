#include "..\includes.hpp"

_unit = _this select 0;

{_unit removeMagazine _x} forEach (magazines _unit);

//for "_i" from 1 to 2 do {_unit addItem CLASS_MAGAZINE};
for "_i" from 1 to 6 do {_unit addItem CLASS_GRENADE};