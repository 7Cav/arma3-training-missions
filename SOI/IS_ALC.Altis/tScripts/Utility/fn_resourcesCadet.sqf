
#include "..\script_component.hpp";

params ["_printer"];

_printer addAction ["  <img size='1' image='\a3\ui_f\data\GUI\RscCommon\RscDebugConsole\biki_ca'/> Class Resources", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_fm = parseText "<a href='https://drive.google.com/file/d/0Bwq0MSV-1ylXcEF6QWVwN2ZOWXM/view'><t color='#ebc729' size='1.2'>Battle&#160;Drills&#160;Manual</t></a><br />";
		_survey = parseText "<a href='https://docs.google.com/forms/d/e/1FAIpQLSf6rfGTZfcblup1Q9wSfODUbSxi0Pe49IMbmGO2xBz8Ik7xOg/viewform'><t color='#ebc729' size='1.2'>Class&#160;Survey</t></a>";
		"Class Resources" hintC [_fm, _survey];

		hintC_EH = findDisplay 72 displayAddEventHandler ["unload", {
			0 = _this spawn {
				_this select 0 displayRemoveEventHandler ["unload", hintC_EH];
				hintSilent "";
			};
		}];
		},
		nil,		// arguments
		1.5,		  // priority
		true,	   // showWindow
		false,	  // hideOnUse
		"",		 // shortcut
		"",		 // condition
		5		   // distance
];
