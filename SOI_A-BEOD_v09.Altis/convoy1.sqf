_vicgrp = createGroup east;

_vic1 = [getMarkerPos "av1",230,"rhs_btr80_vdv",_vicgrp] call bis_fnc_spawnvehicle;
_vic2 = [getMarkerPos "av2",230,"RHS_Ural_Fuel_VDV_01",_vicgrp] call bis_fnc_spawnvehicle;
_vic3 = [getMarkerPos "av3",230,"RHS_Ural_Fuel_VDV_01",_vicgrp] call bis_fnc_spawnvehicle;
_vic4 = [getMarkerPos "av4",230,"LOP_ChDKZ_UAZ_DshKM",_vicgrp] call bis_fnc_spawnvehicle;

_vicgrp setFormation "FILE";

sleep 1.0;

_awp1 = _vicgrp addWaypoint [getMarkerPos "awp1", 0];
_awp1 setWaypointType "Move";
_awp1 setWaypointSpeed "LIMITED";
_awp1 setWaypointCombatMode "BLUE";
_awp1 setWaypointBehaviour "CARELESS";

_awp2 = _vicgrp addWaypoint [getMarkerPos "awp2", 0];
_awp3 = _vicgrp addWaypoint [getMarkerPos "awp3", 0];
_awp4 = _vicgrp addWaypoint [getMarkerPos "awp4", 0];
