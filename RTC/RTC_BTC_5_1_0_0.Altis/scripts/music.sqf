if(!isServer) exitWith {};

_selection = _this select 0;

//hint ("music" + str _selection);

if(range_music == 0) then {
	[[0, 0],"fadeMusic"] call BIS_fnc_MP;
	[("music" + str _selection),"playMusic"] call BIS_fnc_MP;
	[[1, 0.5],"fadeMusic"] call BIS_fnc_MP;
	range_music = 1;
	publicVariable "range_music";
} else {
	[[2, 0],"fadeMusic"] call BIS_fnc_MP;
	sleep 2;
	["","playMusic"] call BIS_fnc_MP;
	[[0, 0.5],"fadeMusic"] call BIS_fnc_MP;
	range_music = 0;
	publicVariable "range_music";
};
