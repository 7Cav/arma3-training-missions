_object = _this select 0;

_object enableSimulation false; 
_object setObjectTexture [0, "image\7th.paa"]; 

//if((typeOf player) in ["B_recon_F"]) then {
//	_object addAction ["Help", {hint parseText "Welcome to<br/><t size='1.5' color='#ffaa00'>7th Cavalry Bootcamp</t><br/><br/>New users:<br/>The ranges are controlled via radio menu (hit 0 twice). You have to rebind the ACE Holster Weapon action in Controls > Configure Addons > ACE 3 Weapons.<br/><br/>Teleport is available on flagpoles.<br/><br/>This help can be shown again by selecting Help on an infostand."}];
//};

_object addaction ["Trooper","cScripts\Loadouts\cLoad.sqf",1];
_object addaction ["Cadre","cScripts\Loadouts\cLoad.sqf",2];
_object addaction ["Drill Instructor","cScripts\Loadouts\cLoad.sqf",3];
_object addaction ["Clear Loadout","cScripts\Loadouts\cLoad.sqf",4];

