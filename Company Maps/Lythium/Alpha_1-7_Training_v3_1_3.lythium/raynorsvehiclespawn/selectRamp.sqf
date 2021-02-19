RAY_ramp_markers = [];

RAY_traffic_data = [["mark_spawn_10","CW2.Raynor.D","F-16 Fighting Falcon", true, 90]];

{
	_markName = format ["mark_%1", _x select 0];
	//systemChat _markName;
	createMarkerLocal [_markName, getPos (_x select 0)];
	_markName setMarkerShapeLocal "ICON";
	_markName setMarkerTypeLocal "mil_circle";
	_markName setMarkerColorLocal "ColorBlack";
	_markName setMarkerTextLocal (_x select 4);
	
	RAY_ramp_markers pushBack [_markName, _forEachIndex];
} foreach RAY_data_ramps;

RAY_UI_Ramp_EHs pushBack (((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw", {
	_params = (ctrlMapMouseOver (_this select 0));
	
	_params params ["_cursorType", "_markNameEvent"];
	
	//systemChat str _params;
	
	if(count _params > 0 && !isNil '_cursorType' && _cursorType == 'marker') then {
		_ramp = nil;
		{
			_x params ["_markNameArr", "_index"];
			//systemChat str [_x select 0, _markNameEvent];
			if(_markNameArr == _markNameEvent) then {
				_ramp = RAY_data_ramps select _index;
				//_markNameEvent setMarkerTextLocal (_ramp select 1);
				//_markNameEvent setMarkerColorLocal "ColorBlue";
				//systemChat str _ramp;
				//systemChat (_markNameEvent);
				(_this select 0) drawIcon ["iconexplosiveat", (side player) call BIS_fnc_sideColor, getMarkerPos _markNameEvent, 64, 64, 0, (_ramp select 1), 1, 0.09,'RobotoCondensed', 'left'];
			} else {
				//_markNameArr setMarkerColorLocal "ColorBlack";
				//_markNameArr setMarkerTextLocal "";
			};
			
			
		} foreach RAY_ramp_markers;
		
		if(!isNil "_ramp") then {
			//systemChat str [_markName,_ramp];
		} else {
			//systemChat "Not a ramp marker";
		};
	} else {
		//systemChat "Not a marker";
		//{
		//	_x params ["_markNameArr", "_index"];
		//	//_markNameArr setMarkerColorLocal "ColorBlack";
		//	//_markNameArr setMarkerTextLocal "";
		//} foreach RAY_ramp_markers;
	};
	
	{
		_x params ["_mark", "_pilot", "_type", "_fixed", "_angle"];
		
		(_this select 0) drawIcon [if(_fixed) then {"iconplane"} else {"iconhelicopter"}, (side player) call BIS_fnc_sideColor, getMarkerPos _mark, 32, 32, _angle, format ["%1 - %2", _pilot, _type], 1, 0.05, 'RobotoCondensed', 'right'];
	} foreach RAY_traffic_data;
}]);

_padCtrl = {
	params ["_x", "_y", "_w", "_h", "_padding"];
	
	[_x + _padding, _y + _padding, _w - _padding * 2, _h - _padding * 2];
};

//editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\B_Helipilot_F.jpg";

_nextY = safeZoneY;

openMap true;
mapAnimAdd [0, 0.09, getMarkerPos "hangars_central"];
mapAnimCommit;

disableSerialization;

uiNamespace setVariable ["ramp_disp", findDisplay 46 createDisplay "RscDisplayEmpty"];



_bg = (uiNamespace getVariable ["ramp_disp",nil]) ctrlCreate ["RscText", -1];

_xDialog = safeZoneX + (safeZoneW * 0.75);
_yDialog = safeZoneY + (safeZoneH * 0.05);
_wDialog = safeZoneW * 0.25;
_hDialog = safeZoneH * 0.85;

_padding = 0.02;

_spacing = [0.5, 0.3, 0.2];

_bg ctrlSetPosition [_xDialog, _yDialog, _wDialog, _hDialog];
_nextY = _yDialog;
_bg ctrlSetBackgroundColor [0, 0, 0, 0.8];
_bg ctrlCommit 0;
	
_edit = (uiNamespace getVariable ["ramp_disp",nil]) ctrlCreate ["RscEdit", 645];
_editH = 0.04 + _padding * 2;
_edit ctrlSetPosition ([_xDialog, _nextY, _wDialog, _editH, _padding] call _padCtrl);
_nextY = _nextY + _editH - _padding;
_edit ctrlSetFontHeight 0.03;
_edit ctrlSetBackgroundColor [0,0,0,3];
_edit ctrlCommit 0;

_tv = (uiNamespace getVariable ["ramp_disp",nil]) ctrlCreate ["RscTreeSearch", 1001];
_tv ctrlSetFont "PuristaMedium";  
_tv ctrlSetFontHeight 0.03; 
_tvH = _hDialog * 0.5 - _padding;
_tv ctrlSetPosition ([_xDialog, _nextY, _wDialog, _tvH, _padding] call _padCtrl);
_nextY = _nextY + _tvH;

_tv ctrlSetBackgroundColor [0,0,0,0.3];
_tv ctrlCommit 0;

_preview = (uiNamespace getVariable ["ramp_disp",nil]) ctrlCreate ["RscPictureKeepAspect ", 1002];
_previewH = _wDialog / 2 - _padding;
_preview ctrlSetPosition ([_xDialog, _nextY, _wDialog, _previewH, _padding] call _padCtrl);
_nextY = _nextY + _previewH;
_preview ctrlSetBackgroundColor [0,0,0,0.3];


/*
// TODO: Cache at mission start
R_fixed = ["FIR_F16C", "FIR_F16C_AV","B_UAV_05_F"];
R_rotary = ["B_UAV_06_F","RHS_UH60M","RHS_UH60M_d"];
R_vehicles_light = ["C_Offroad_02_unarmed_F","RHS_Ural_Zu23_Base","rhsusf_rg33_d"];
R_vehicles_heavy = ["rhsgref_ins_bmp1d","rhsgref_ins_bmp2d","rhsusf_m109_usarmy"];
*/

R_fixed = [];
R_rotary = [];
R_vehicles_light = [];
R_vehicles_heavy = [];

{
	if(configName _x isKindOf "Car") then {
		R_vehicles_light pushBack _x;
	} else {
		if(configName _x isKindOf "Tank") then {
			R_vehicles_heavy pushBack _x;
		} else {
			if(configName _x isKindOf "Helicopter") then {
				R_rotary pushBack _x;
			} else {
				if(configName _x isKindOf "Plane") then {
					R_fixed pushBack _x;
				};
			};
		};
	};
} foreach ("(getNumber (_x >> 'scope')) == 2" configClasses (configFile >> "CfgVehicles"));

_i = -1;
{
	_i = _i + 1;
	_x params ["_side","_sideText"];
	_sideNode = _tv tvAdd [[], _sideText];
	_j = -1;
	{
		_j = _j + 1;
		_x params ["_array","_typeText"];
		_typeNode = _tv tvAdd [[_i], _typeText];
		_k = -1;
		{
			_k = _k + 1;
			_vehConfig = _x;
			if(getNumber (_vehConfig >> 'side') == [_side] call BIS_fnc_sideID) then {
				_icon = getText (_vehConfig >> 'icon');
				_displayName = getText (_vehConfig >> 'displayName');
				_faction = getText (configFile >> "CfgFactionClasses" >> getText (_vehConfig >> 'faction') >> 'displayName');
				_index = _tv tvAdd [[_i,_j], _displayName + " - " + _faction];
				_tv tvSetData [[_i,_j,_index], configName _vehConfig];
				_tv tvSetPicture [[_i,_j,_index], _icon];
				_tv tvSetPictureColor  [[_i,_j,_index], [_side] call BIS_fnc_sideColor];
			};
		} foreach _array;
	} foreach [[R_fixed,"Fixed Wing"], [R_rotary,"Rotary"], [R_vehicles_light,"Light Vehicles"], [R_vehicles_heavy,"Heavy Vehicles"]];
} foreach [[west,"BLUFOR"], [east,"OPFOR"], [resistance,"Independent"], [civilian,"Civilian"]];

//tvExpandAll _tv;
_tv ctrlAddEventHandler ["TreeSelChanged", {
	disableSerialization;
	_tv = ((uiNamespace getVariable ["ramp_disp",nil]) displayCtrl 1001);
	systemChat format ["Item: %1 - %2", _this, _tv tvData (tvCurSel _tv)];
	
}];

(uiNamespace getVariable ["ramp_disp",nil]) displayAddEventHandler ["onUnload", {RAY_ramp_select_open = false;}];

RAY_ramp_select_open = true;

[] spawn {
	waitUntil{sleep 0.1; !RAY_ramp_select_open};
	
	if(!isNil "(uiNamespace getVariable ['ramp_disp',nil])") then {
		(uiNamespace getVariable ["ramp_disp",nil]) closeDisplay 1;
	};
	
	{
		((findDisplay 12) displayCtrl 51) ctrlRemoveEventHandler ["Draw", _x]
	} foreach RAY_UI_Ramp_EHs; 

	{ 
		deleteMarkerLocal (_x select 0); 
	} foreach RAY_ramp_markers;

	RAY_UI_Ramp_EHs = [];

};

waitUntil {sleep 0.1; !visibleMap};

RAY_ramp_select_open = false;
systemChat "Map closed";


