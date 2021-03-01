_object = _this select 0;

_object setObjectTexture [0, "7th.paa"];

/*
_object addaction ["Cadre","cScripts\Loadouts\cLoad.sqf",25];
_object addaction ["Drill Instructor","cScripts\Loadouts\cLoad.sqf",26];
_object addaction ["Trooper","cScripts\Loadouts\cLoad.sqf",27];
_object addaction ["Clear Loadout","cScripts\Loadouts\cLoad.sqf",28];
*/

_object addaction ["Cadre", {[_this select 1] execVM "loadouts\cadre.sqf"}];
_object addaction ["Drill Instructor", {[_this select 1] execVM "loadouts\drill_instructor.sqf"}];
_object addaction ["Trooper", {[_this select 1] execVM "loadouts\trooper.sqf"}];
_object addaction ["Rifle Range", {[_this select 1] execVM "loadouts\rifle_range.sqf"}];
