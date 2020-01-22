if (!isServer) exitWith {};

_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;


_crate addItemCargoGlobal ["ToolKit",1];

