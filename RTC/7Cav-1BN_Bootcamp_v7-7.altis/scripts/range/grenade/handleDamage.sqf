params ["_target"];

EH_handleDamage = {
	systemChat format ["EH_handleDamage: %1", _this];
	//params ["_target", "_hitSelection","_damage", "_source", "_projectile", "_hitPartIndex", "_instigator", "_hitpoint"];
	//diag_log str [_target, _hitSelection,_damage, _source, _projectile, _hitPartIndex, _instigator, _hitpoint];
	
};

EH_Dammaged = {
	systemChat format ["EH_Dammaged: %1", _this];
};

_target addEventHandler ["HandleDamage", "_this call EH_handleDamage"];
_target addEventHandler ["Dammaged", "_this call EH_Dammaged"];

systemChat "added EH to grenade ranges";