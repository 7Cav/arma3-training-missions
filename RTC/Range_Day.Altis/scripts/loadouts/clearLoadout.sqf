_unit = _this select 0;

{
    if (_x in ["rhs_200rnd_556x45_M_SAW","rhs_mag_30Rnd_556x45_M855A1_PMAG","rhs_mag_M441_HE","tf47_m3maaws_HEAT"]) then {
        _unit removeMagazine _x;
    };

} forEach magazines _unit;

sleep 0.1;

_unit removeWeapon (primaryWeapon _unit);

_unit removeWeapon (secondaryWeapon _unit);

removeBackpack _unit;
