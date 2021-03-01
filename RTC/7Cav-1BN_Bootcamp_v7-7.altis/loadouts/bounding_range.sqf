#include "..\includes.hpp"

_unit = _this select 0;

{_unit removeMagazine _x} forEach (magazines _unit);
sleep 0.01;
for "_i" from 1 to 8 do {_unit addItem CLASS_MAGAZINE};