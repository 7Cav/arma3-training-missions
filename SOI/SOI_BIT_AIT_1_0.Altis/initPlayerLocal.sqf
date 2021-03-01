waitUntil {!isNull player};
player allowDamage false;
null = [player] execVM "MissionScripts\InitLocalMarkers.sqf";
_instructorP = [];
addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "rhsusf_usmc_marpat_wd_officer" OR typeOf player == "rhsusf_usmc_marpat_wd_machinegunner_ass" OR typeOf player == "rhsusf_usmc_marpat_wd_squadleader" OR typeOf player == "rhsusf_usmc_marpat_wd_gunner") then {
			{			
				if ((side _x == west) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[0,0,1,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "rhsusf_usmc_marpat_wd_officer" OR typeOf player == "rhsusf_usmc_marpat_wd_machinegunner_ass" OR typeOf player == "rhsusf_usmc_marpat_wd_squadleader" OR typeOf player == "rhsusf_usmc_marpat_wd_gunner") then {
			{			
				if ((side _x == east) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
addMissionEventHandler ["Draw3D",
	{
		if (typeOf player == "rhsusf_usmc_marpat_wd_officer" OR typeOf player == "rhsusf_usmc_marpat_wd_machinegunner_ass" OR typeOf player == "rhsusf_usmc_marpat_wd_squadleader" OR typeOf player == "rhsusf_usmc_marpat_wd_gunner") then {
			{			
				if ((side _x == resistance) and ((_x distance player) < 1000)) then			
				{				
					// Passed parameters to the 3D icon draw function : 
					// - unit type icon from the Cfg
					// - the assigned team color R,G,B at a moderate 0.5 transparency
					// - the unit's X,Y height of 1 meter
					// - normal width
					// - normal height
					// - no rotation
					// - player's in-game name under the icon
					drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[0,1,0,0.5],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
				};			
			} foreach allUnits;
		};
	}];
