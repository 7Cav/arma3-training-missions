
waitUntil {!isNull player};

player allowDamage false;

player addEventHandler ["InventoryClosed", {
	params ["_unit", "_container"];
	if ((typeOf _container) == "GroundWeaponHolder") then {
		deleteVehicle _container
	};
}];

player call tScripts_fnc_tapes;

player call HUD_Infantry_Initialize;
player setVariable ["SPM_BranchOfService", "infantry"];

["init"] call compile preProcessFile format ["tScripts\Class\%1.sqf", typeOf player];

player call tScripts_fnc_intro;
