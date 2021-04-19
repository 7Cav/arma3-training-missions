
waitUntil {!isNull player};

player allowDamage false;

addMissionEventHandler ["Draw3D", {
    if (typeOf player == "Cav_B_Training_Cadre_F") then {
        {
            if ((side _x == west) and ((_x distance player) < 10000)) then {
                drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[0,0,1,0.5],[getPos _x select 0,getPos _x select 1,(getPosATL _x select 2)+3],1,1,0, name _x]};
        } foreach allUnits;
    };
}];

addMissionEventHandler ["Draw3D", {
    if (typeOf player == "Cav_B_Training_Cadre_F") then {
        {
            if ((side _x == east) and ((_x distance player) < 1000)) then {
                drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,0,0.5],[getPos _x select 0,getPos _x select 1,(getPosATL _x select 2)+3],1,1,0, str (floor(_x distance player)) + "m"]};
        } foreach allUnits;
    };
}];

addMissionEventHandler ["Draw3D", {
    if (typeOf player == "Cav_B_Training_Cadre_F") then {
        {
            if ((side _x == resistance) and ((_x distance player) < 1000)) then {
                drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[0,1,0,0.5],[getPos _x select 0,getPos _x select 1,(getPosATL _x select 2)+3],1,1,0, str (floor(_x distance player)) + "m"]};
        } foreach allUnits;
    };
}];

addMissionEventHandler ["Draw3D", {
    if (typeOf player == "Cav_B_Training_Cadre_F") then {
        {
            if ((side _x == civilian) and ((_x distance player) < 1000)) then {
                drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[1,0,1,0.5],[getPos _x select 0,getPos _x select 1,(getPosATL _x select 2)+3],1,1,0, str (floor(_x distance player)) + "m"]};
        } foreach allUnits;
    };
}];

// Execute class-specific init
["init"] call compile preProcessFile format ["MissionScripts\class\%1.sqf", typeOf player];
