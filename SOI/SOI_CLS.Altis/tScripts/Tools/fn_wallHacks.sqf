
#include "..\script_component.hpp";

params [""];

player addAction ["  <t color='#ffffff'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> Wallhacks", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showWallhacks", true];
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"!(player getVariable ['showWallhacks', false]) && (player getVariable ['showTools', false])" 	// condition
];

player addAction ["  <t color='#ffffff'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> Wallhacks", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showWallhacks", false];
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showWallhacks', false]) && (player getVariable ['showTools', false])" 	// condition
];

player addAction ["    <t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> AI: Turn Wallhacks On", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showWallhacksAI", true];
		player setVariable ["showWallhacksPlayers", false];
		onEachFrame {
			{
				if (((side _x == east) or (side _x == resistance)) and ((_x distance player) < 500)) then {
					_beg = ASLToAGL eyePos _x;
					_endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply 500));
					_endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply 500));
					drawLine3D [_beg, _endW, [1,0,0,1]];
					drawLine3D [_beg, _endV, [0,0,1,1]];
				}
			} foreach allUnits;
		}
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showWallhacks', false]) && !(player getVariable ['showWallhacksAI', false]) && (player getVariable ['showTools', false])" 	// condition
];

player addAction ["    <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> AI: Turn Wallhacks Off", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showWallhacksAI", false];
		onEachFrame {
			{
				if (((side _x == east) or (side _x == resistance)) and ((_x distance player) < 500)) then {
					_beg = ASLToAGL eyePos _x;
					_endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply 500));
					_endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply 500));
					drawLine3D [_beg, _endW, [1,0,0,0]];
					drawLine3D [_beg, _endV, [0,0,1,0]];
				}
			} foreach allUnits;
		}
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showWallhacks', false]) && (player getVariable ['showWallhacksAI', false]) && (player getVariable ['showTools', false])" 	// condition
];

player addAction ["    <t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> Players: Turn Wallhacks On", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showWallhacksPlayers", true];
		player setVariable ["showWallhacksAI", false];
		onEachFrame {
			{
				if ((side _x == west) and ((_x distance player) < 500)) then {
					_beg = ASLToAGL eyePos _x;
					_endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply 500));
					_endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply 500));
					drawLine3D [_beg, _endW, [1,0,0,1]];
					drawLine3D [_beg, _endV, [0,0,1,1]];
				}
			} foreach allPlayers;
		}
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showWallhacks', false]) && !(player getVariable ['showWallhacksPlayers', false]) && (player getVariable ['showTools', false])" 	// condition
];

player addAction ["    <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> Players: Turn Wallhacks Off", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showWallhacksPlayers", false];
		onEachFrame {
			{
				if ((side _x == west) and ((_x distance player) < 500)) then {
					_beg = ASLToAGL eyePos _x;
					_endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply 500));
					_endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply 500));
					drawLine3D [_beg, _endW, [1,0,0,0]];
					drawLine3D [_beg, _endV, [0,0,1,0]];
				}
			} foreach allPlayers;
		}
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showWallhacks', false]) && (player getVariable ['showWallhacksPlayers', false]) && (player getVariable ['showTools', false])" 	// condition
];
