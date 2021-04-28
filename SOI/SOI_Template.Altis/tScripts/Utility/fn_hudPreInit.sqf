
#include "..\script_component.hpp";

HUD_Enabled = true;

HUD_Names =
[
	["Microphone", ["\a3\ui_f\data\GUI\Rsc\RscDisplayArsenal\voice_ca.paa", 32]],
	["Radio", ["\a3\ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa", 32]],
	["Weapon", ["\a3\ui_f\data\IGUI\cfg\Actions\Obsolete\ui_action_gear_ca.paa", 32]],
	["VehicleRepair", ["\a3\ui_f\data\IGUI\cfg\Cursors\iconRepairVehicle_ca.paa", 32]],
	["VehicleFuel", ["\a3\ui_f\data\IGUI\cfg\Cursors\iconRefuelAt_ca.paa", 32]],
	["Base", ["\a3\ui_f\data\IGUI\cfg\IslandMap\iconSensor_ca.paa", 32]],
	["Armor", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\armor_ca.paa", 32]],
	["Bacpack", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\backpack_ca.paa", 32]],
	["Boat", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\boat_ca.paa", 32]],
	["Box", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\box_ca.paa", 32]],
	["Heli", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\heli_ca.paa", 32]],
	["Map", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\map_ca.paa", 32]],
	["Message", ["\a3\ui_f\data\IGUI\RscIngameUI\RscDisplayChannel\MuteChat_ca", 32]],
	["Move", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move_ca.paa", 32]],
	["Move1", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move1_ca.paa", 32]],
	["Move2", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move2_ca.paa", 32]],
	["Move3", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move3_ca.paa", 32]],
	["Move4", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move4_ca.paa", 32]],
	["Move5", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\move5_ca.paa", 32]],
	["Plane", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\plane_ca.paa", 32]],
	["Truck", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\truck_ca.paa", 32]],
	["Whiteboard", ["\a3\ui_f\data\igui\cfg\simpleTasks\types\whiteboard_ca.paa", 32]],
	["Info", ["\a3\ui_f\data\GUI\RscCommon\RscDebugConsole\biki_ca", 32]],
	["Engine", ["\a3\ui_f\data\igui\cfg\vehicleToggles\EngineIconOn_ca.paa", 32]],
	["Revive", ["\a3\ui_f\data\igui\cfg\revive\overlayIcons\u100_ca.paa", 32]],
	["Air", ["\a3\ui_f\data\igui\cfg\MPTable\air_ca.paa", 32]],
	["Tank", ["\a3\ui_f\data\igui\cfg\MPTable\armored_ca.paa", 32]],
	["Infantry", ["\a3\ui_f\data\igui\cfg\MPTable\infantry_ca.paa", 32]],
	["Humvee", ["\a3\ui_f\data\igui\cfg\MPTable\soft_ca.paa", 32]],
	["Star", ["\a3\ui_f\data\igui\cfg\HoldActions\holdAction_requestLeadership_ca.paa", 32]],
	["Ambush", ["\a3\ui_f\data\Map\Markers\HandDrawn\ambush_CA.paa", 32]],
	["Arrow", ["\a3\ui_f\data\Map\Markers\HandDrawn\arrow_CA.paa", 32]],
	["Destroy", ["\a3\ui_f\data\Map\Markers\HandDrawn\destroy_CA.paa", 32]],
	["Dot", ["\a3\ui_f\data\Map\Markers\HandDrawn\dot_CA.paa", 32]],
	["End", ["\a3\ui_f\data\Map\Markers\HandDrawn\end_CA.paa", 32]],
	["Flag", ["\a3\ui_f\data\Map\Markers\HandDrawn\flag_CA.paa", 32]],
	["Join", ["\a3\ui_f\data\Map\Markers\HandDrawn\join_CA.paa", 32]],
	["Objective", ["\a3\ui_f\data\Map\Markers\HandDrawn\objective_CA.paa", 32]],
	["PickUp", ["\a3\ui_f\data\Map\Markers\HandDrawn\pickup_CA.paa", 32]],
	["Start", ["\a3\ui_f\data\Map\Markers\HandDrawn\start_CA.paa", 32]],
	["Unknown", ["\a3\ui_f\data\Map\Markers\HandDrawn\unknown_CA.paa", 32]],
	["Warning", ["\a3\ui_f\data\Map\Markers\HandDrawn\warning_CA.paa", 32]],
	["LetterA", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\a_ca.paa", 32]],
	["LetterB", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\b_ca.paa", 32]],
	["LetterC", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\c_ca.paa", 32]],
	["LetterD", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\d_ca.paa", 32]],
	["LetterE", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\e_ca.paa", 32]],
	["LetterF", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\f_ca.paa", 32]],
	["LetterG", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\g_ca.paa", 32]],
	["LetterH", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\h_ca.paa", 32]],
	["LetterI", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\i_ca.paa", 32]],
	["LetterJ", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\j_ca.paa", 32]],
	["LetterK", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\k_ca.paa", 32]],
	["LetterL", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\l_ca.paa", 32]],
	["LetterM", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\m_ca.paa", 32]],
	["LetterN", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\n_ca.paa", 32]],
	["LetterO", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\o_ca.paa", 32]],
	["LetterP", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\p_ca.paa", 32]],
	["LetterQ", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\q_ca.paa", 32]],
	["LetterR", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\r_ca.paa", 32]],
	["LetterS", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\s_ca.paa", 32]],
	["LetterT", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\t_ca.paa", 32]],
	["LetterU", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\u_ca.paa", 32]],
	["LetterV", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\v_ca.paa", 32]],
	["LetterW", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\w_ca.paa", 32]],
	["LetterX", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\x_ca.paa", 32]],
	["LetterY", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\y_ca.paa", 32]],
	["LetterZ", ["\a3\ui_f\data\igui\cfg\simpleTasks\letters\z_ca.paa", 32]],
	["HUDTESTCallback", [HUDTESTCallback, [], 90210]]
];

// UserTexture_1x2_F
// UserTexture10m_F
// UserTexture1m_F

// Icon descriptor:
// [position, string-or-array, current-color, min-distance, max-distance, size-in-meters, font]
// Array form is either [icon, size] or [code, ...].  The code will be called and is expected to return a non-code icon descriptor.

#define FADE_DURATION 0.5

HUD_DrawIcon = {
	params ["_descriptor"];

	if (typeName (_descriptor select 1) == "ARRAY" && { typeName (_descriptor select 1 select 0) == "CODE" }) then {
		_descriptor = [_descriptor] call (_descriptor select 1 select 0);
	};

	private _position = _descriptor select 0;

	private _distance = player distance _position;
	private _color = _descriptor select 2;
	private _alpha = _color select 3;

	if (_distance >= _descriptor select 3 && { _distance <= _descriptor select 4 }) then {
		_alpha = (_alpha + (1 / diag_fps) / FADE_DURATION) min 1.0;
		_color set [3, _alpha];
		_descriptor set [2, _color];
	}
	else
	{
		if (_alpha > 0.0) then {
			_alpha = (_alpha - (1 / diag_fps) / FADE_DURATION) max 0.0;
			_color set [3, _alpha];
			_descriptor set [2, _color];
		};
	};

	if (_alpha > 0.0) then
	{
		private _v1 = worldToScreen _position;
		if (count _v1 > 0) then {
			_v1 set [2, 0];

			private _right = vectorNormalized ((getCameraViewDirection player) vectorCrossProduct [0,0,1]);

			private _v2 = worldToScreen (_position vectorAdd (_right vectorMultiply (_descriptor select 5)));
			if (count _v2 > 0) then {
				_v2 set [2, 0];

				private _size = vectorMagnitude (_v1 vectorDiff _v2);
				if ((_descriptor select 1) isEqualType "") then
				{
					drawIcon3D ["", _color, _position, 0.0, 0.0, 0, _descriptor select 1, 1, _size, _descriptor select 6];
				} else {
					_size = (_size * (getResolution select 3) / safeZoneH) / (_descriptor select 1 select 1);
					drawIcon3D [_descriptor select 1 select 0, _color, _position, _size, _size, 0];
				};
			};
		};
	};
};

HUD_GetMarkerIcons = {
	params ["_prefix", "_icons"]; // Prefix must be of format "string_string_", e.g. "HUD_Greeting1_Pilot_Hello"

	private _pieces = [];
	private _descriptor = [];
	private _key = "";
	private _color = [];
	private _minDistance = 0;
	private _maxDistance = 0;
	private _sizeInMeters = 0;
	private _named = [];

	// Marker format "<prefix><name>_<label/icon>_<min-distance>_<max-distance>_<size-in-meters>_<font-family>"
	private _newIcons = allMapMarkers select { _x find "HUD_" == 0 } apply {

			_pieces = _x splitString "_";

			if (count _pieces < 3) then
			{
				[]
			}
			else
			{
				_pieces params ["_unused", "_name", "_prefixes", "_key", ["_minDistance", "10", [""]], ["_maxDistance", "100", [""]], ["_sizeInMeters", "2", [""]], ["_font", "PuristaLight", [""]]];

				_prefixes = _prefixes splitString ",";
				if (not (_prefix in _prefixes)) then
				{
					[]
				}
				else
				{
					_named = [HUD_Names, _key] call BIS_fnc_getFromPairs;
					if (not isNil "_named") then { _key = +_named };

					_color = getArray (configFile >> "CfgMarkerColors" >> getMarkerColor _x >> "color");
					_color = _color apply { if (_x isEqualType 0) then { _x } else { call compile _x } };

					_minDistance = parseNumber _minDistance;
					_maxDistance = parseNumber _maxDistance;
					_sizeInMeters = parseNumber _sizeInMeters;

					[(getMarkerPos _x) vectorAdd [0, 0, _sizeInMeters / 2], _key, _color, _minDistance, _maxDistance, _sizeInMeters, _font]
				};
			};
		};

	_icons append (_newIcons select { count _x > 0 });
};

HUD_Pilot_Draw = {
	if (not HUD_Enabled) exitWith {};

	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_Pilot_Icons;
};

HUD_Pilot_Initialize = {
	HUD_Pilot_Icons = [];
	["Pilot", HUD_Pilot_Icons] call HUD_GetMarkerIcons;

	addMissionEventHandler ["Draw3D", HUD_Pilot_Draw];
};

HUD_Infantry_Draw = {
	if (not HUD_Enabled) exitWith {};

	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_Infantry_Icons;
};

HUD_Infantry_Initialize = {
	HUD_Infantry_Icons = [];
	["Infantry", HUD_Infantry_Icons] call HUD_GetMarkerIcons;

	addMissionEventHandler ["Draw3D", HUD_Infantry_Draw];
};

HUD_Instructor_Draw = {
	if (not HUD_Enabled) exitWith {};

	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_Infantry_Icons;
};

HUD_Instructor_Initialize = {
	HUD_Infantry_Icons = [];
	["Instructor", HUD_Instructor_Icons] call HUD_GetMarkerIcons;

	addMissionEventHandler ["Draw3D", HUD_Instructor_Draw];
};

HUD_SpecOps_Draw = {
	if (not HUD_Enabled) exitWith {};

	{
		[_x] call HUD_DrawIcon;
	} forEach HUD_SpecOps_Icons;
};

HUD_SpecOps_Initialize = {
	HUD_SpecOps_Icons = [];
	["SpecOps", HUD_SpecOps_Icons] call HUD_GetMarkerIcons;

	addMissionEventHandler ["Draw3D", HUD_SpecOps_Draw];
};


[] spawn {
	waitUntil { sleep 1; not isNull (findDisplay 46) };

	(findDisplay 46) displayAddEventHandler ["KeyDown",
		{
			params ["_control", "_key", "_isShift", "_isControl", "_isAlt"];

			private _override = false;

			switch (_key) do
			{
				case 0x16: // U
				{
					if (_isShift && _isControl) then
					{
						_override = true;

						HUD_Enabled = not HUD_Enabled;
					};
				};
			};

			_override;
		}];
};