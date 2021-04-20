
params ["_box"];

_box addAction ["<t color='#FF00FF'>Lane 5 ACE Hint</t>", {
		private _ammoImg = "\a3\ui_f\data\igui\cfg\actions\reload_ca.paa";  
		private _casualtyImg = "\a3\ui_f\data\igui\cfg\revive\overlayIcons\u100_ca.paa";  
		private _equipImg = "\a3\ui_f\data\igui\cfg\simpleTasks\types\box_ca.paa";  
		private _ammoTxt = composeText [
			image _ammoImg,
			parseText " Ammunition<br />",
			parseText"Your team is running dangerously low on 7.62mm belts<br />Your team is mostly full on all other ammunition<br />"
		];
		private _casualtyTxt = composeText [
			image _casualtyImg, parseText " Casualties<br />",
			parseText"You and your CLS are hurt but still able to fight<br />Your Grenadier was shot by a sniper, is bleeding, and requires a medic<br />No one else has been injured<br />"
		];
		private _equipTxt = composeText [
			image _equipImg, parseText " Equipment<br />",
			parseText"Your CLS lost his nods in a static line jump<br />You are almost full on medical supplies<br />"
		];
		"ACE Report Information" hintC [_ammoTxt, _casualtyTxt, _equipTxt]
	},
	nil,
	1.5,
	false,
	false,
	"",
	"",
	10
]; 
