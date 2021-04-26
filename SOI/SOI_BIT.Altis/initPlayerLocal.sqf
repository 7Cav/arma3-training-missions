
waitUntil {!isNull player};

player allowDamage false;

["init"] call compile preProcessFile format ["MissionScripts\Class\%1.sqf", typeOf player];
