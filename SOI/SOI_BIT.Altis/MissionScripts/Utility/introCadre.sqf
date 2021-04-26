
params [""];

[[
    	["Basic Individual Training", "<t align = 'right' shadow = '1' size = '1' color='#99ffffff' font='PuristaBold'>%1</t><br/>",2], 
    	["from the Infantry School", "<t align = 'right' shadow = '1' size = '0.7' color='#99ffffff' font='PuristaLight'>%1</t><br/>",2], 
    	["by Whitsel", "<t align = 'right' shadow = '1' size = '0.5' color='#99888888' font='PuristaMedium'>%1</t>", 60] 
	],0.7,1
] spawn BIS_fnc_typeText;
 
[format ["<t color='#66ffffff' size = '1'>Welcome %1</t>",name player],-1,-1,3,2,0,788] spawn BIS_fnc_dynamicText; 

sleep 6;

["<t color='#66ffffff' size = '.8'>Use the scroll wheel menu to change slides</t>",-1,-1,3,2,0,789] spawn BIS_fnc_dynamicText; 
