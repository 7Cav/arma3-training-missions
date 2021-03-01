waitUntil {!isNull player};

null = [player] execVM "MissionScripts\InitLocalMarkers.sqf";
player allowDamage false;

["init"] call compile preProcessFile format ["MissionScripts\class\%1.sqf", typeOf player];
