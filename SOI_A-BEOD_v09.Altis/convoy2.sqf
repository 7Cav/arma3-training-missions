_vicgrp2 = createGroup east;

_vic5 = [getMarkerPos "bv1",171,"rhs_btr80_vdv",_vicgrp2] call bis_fnc_spawnvehicle;
_vic6 = [getMarkerPos "bv2",171,"RHS_Ural_Fuel_VDV_01",_vicgrp2] call bis_fnc_spawnvehicle;
_vic7 = [getMarkerPos "bv3",171,"RHS_Ural_Fuel_VDV_01",_vicgrp2] call bis_fnc_spawnvehicle;
_vic8 = [getMarkerPos "bv4",171,"LOP_ChDKZ_UAZ_DshKM",_vicgrp2] call bis_fnc_spawnvehicle;

_vicgrp2 setFormation "FILE";

sleep 1.0;

_bwp1 = _vicgrp2 addWaypoint [getMarkerPos "bwp1", 0];
_bwp1 setWaypointType "Move";
_bwp1 setWaypointSpeed "LIMITED";
_bwp1 setWaypointCombatMode "BLUE";
_bwp1 setWaypointBehaviour "CARELESS";

_bwp2 = _vicgrp2 addWaypoint [getMarkerPos "bwp2", 0];
_bwp3 = _vicgrp2 addWaypoint [getMarkerPos "bwp3", 0];
_bwp4 = _vicgrp2 addWaypoint [getMarkerPos "bwp4", 0];
