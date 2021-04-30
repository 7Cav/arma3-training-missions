
#include "..\script_component.hpp";

params [""];

player addAction ["  <img size='1' image='\a3\ui_f\data\IGUI\RscIngameUI\RscDisplayChannel\MuteChat_ca'/> Class Resources", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_lp = parseText "<a href='https://drive.google.com/file/d/1MsnmKkSVa6nlJlUJOwPTUYviTg47FZlJ/view?usp=sharing'><t color='#ebc729' size='1.2'>Lesson&#160;Plan</t></a><br />";
		_fm = parseText "<a href='https://drive.google.com/file/d/16sDYIEaiKVK8AW67d0mVP2zCEkJkBVWg/view?usp=sharing'><t color='#ebc729' size='1.2'>Field&#160;Manual</t></a><br />";
		_survey = parseText "<a href='https://docs.google.com/forms/d/e/1FAIpQLSf6rfGTZfcblup1Q9wSfODUbSxi0Pe49IMbmGO2xBz8Ik7xOg/viewform'><t color='#ebc729' size='1.2'>Class&#160;Survey</t></a>";
		"Class Resources" hintC [_lp, _fm, _survey];

		hintC_EH = findDisplay 72 displayAddEventHandler ["unload", {
			0 = _this spawn {
				_this select 0 displayRemoveEventHandler ["unload", hintC_EH];
				hintSilent "";
			};
		}];
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showTools', false])"		  // condition
];
