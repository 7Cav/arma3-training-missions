
["init"] call compile preProcessFile format ["MissionScripts\class\%1.sqf", typeOf player];

player addEventHandler ["InventoryClosed", {
    params ["_unit", "_container"];
    if ((typeOf _container) == "GroundWeaponHolder") then {
        deleteVehicle _container};
}];

addMissionEventHandler ["Draw3D",
    {
        if (typeOf player == "Cav_B_Training_Cadre_F") then {
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
                    drawIcon3D[getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),[0,0,1,0.25],[getPos _x select 0,getPos _x select 1,(getPos _x select 2)+3],1,1,0, str (floor(_x distance player))];
                };
            } foreach allUnits;
        };
    }];