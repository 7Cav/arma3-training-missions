
#include "..\script_component.hpp";

params ["_vehicle"];

_vehicle addAction ["<t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\unloadVehicle_ca'/> Raise", {
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		_pos = getPos _target;
		_target setPos [_pos#0, _pos#1, 0];
	},
	nil,		// arguments
	6,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"(getPos _target)#2 < -0.25", 	// condition
	5,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

diag_log format ["Lift Vehicle has been applied to %1", _vehicle];
