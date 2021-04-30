
params ["_unit"];

_laneEllipse = [
	"laneEllipse_1",
	"laneEllipse_2",
	"laneEllipse_3",
	"laneEllipse_4",
	"laneEllipse_5",
	"laneEllipse_6",
	"laneEllipse_7",
	"laneEllipse_8"
];

_laneDot = [
	"laneDot_1",
	"laneDot_2",
	"laneDot_3",
	"laneDot_4",
	"laneDot_5",
	"laneDot_6",
	"laneDot_7",
	"laneDot_8"
];

switch (typeOf _unit) do {
	case "Cav_B_Training_Cadre_F": {
	};

	case "Cav_B_Training_Cadet_F": {
		{_x setMarkerAlphaLocal 0} forEach _laneEllipse;
		{_x setMarkerAlphaLocal 0} forEach _laneDot;
	};

	default {
		{_x setMarkerAlphaLocal 0} forEach _laneEllipse;
		{_x setMarkerAlphaLocal 0} forEach _laneDot;	
	};
};
