
params ["_unit"];

_laneBoxes = [
    "laneBox_1",
    "laneBox_2",
    "laneBox_3",
    "laneBox_4",
    "laneBox_5",
    "laneBox_6",
    "laneBox_7",
    "laneBox_8"
];

_laneStart = [
    "navStart_1",
    "navStart_2",
    "navStart_3",
    "navStart_4",
    "navStart_5",
    "navStart_6",
    "navStart_7",
    "navStart_8"
];

_laneEnd = [
    "navEnd_1",
    "navEnd_2",
    "navEnd_3",
    "navEnd_4",
    "navEnd_5",
    "navEnd_6",
    "navEnd_7",
    "navEnd_8"
];

_gridPlotting = [
    "gridPractice_1",
    "gridPractice_2",
    "gridPractice_3",
    "gridPractice_4",
    "gridPractice_5",
    "gridPractice_6",
    "gridPractice_7",
    "gridPractice_8",
    "gridPracticeGreen__1",
    "gridPracticeGreen__2",
    "gridPracticeGreen__3",
    "gridPracticeGreen__4",
    "gridPracticeGreen__5",
    "gridPracticeGreen__6",
    "gridPracticeGreen__7",
    "gridPracticeGreen__8",
    "gridPracticeRed__1",
    "gridPracticeRed__2",
    "gridPracticeRed__3",
    "gridPracticeRed__4",
    "gridPracticeRed__5",
    "gridPracticeRed__6",
    "gridPracticeRed__7",
    "gridPracticeRed__8"
];

_gridReading = [
    "gridReading_1",
    "gridReading_2",
    "gridReading_3",
    "gridReading_4",
    "gridReading_5",
    "gridReading_6",
    "gridReading_7",
    "gridReading_8"
];

_gridReadingAnswers = [
    "gridReadingAnswer_1",
    "gridReadingAnswer_2",
    "gridReadingAnswer_3",
    "gridReadingAnswer_4",
    "gridReadingAnswer_5",
    "gridReadingAnswer_6",
    "gridReadingAnswer_7",
    "gridReadingAnswer_8"
];

_routeExample = [
    "routeExample_1",
    "routeExample_2",
    "routeExample_3",
    "routeExample_4",
    "routeExample_5",
    "routeExample_6",
    "routeExample_7",
    "routeExample_8",
    "routeExample_9",
    "routeExample_10",
    "routeExample_11",
    "routeExample_12",
    "routeExample_13",
    "routeExample_14",
    "routeExample_15",
    "routeExample_16",
    "routeExample_17",
    "routeExample_18",
    "routeExample_19",
    "routeExample_20",
    "routeExample_21",
    "routeExample_22",
    "routeExample_23",
    "routeExample_24",
    "routeExample_25",
    "routeExample_26",
    "routeExample_27"
];

_mapCompass = [
    "mapCompassTraining",
    "map_1",
    "map_2",
    "map_3",
    "map_4",
    "map_5",
    "map_6",
    "map_7",
    "map_8",
    "map_9",
    "map_10",
    "map_11",
    "map_12",
    "map_13",
    "map_14",
    "map_15",
    "map_16",
    "map_17",
    "map_18",
    "map_19",
    "map_20",
    "map_21",
    "map_22",
    "map_23",
    "map_24",
    "map_25",
    "map_26",
    "map_27",
    "map_28",
    "map_29",
    "map_30",
    "map_31",
    "map_32",
    "map_33",
    "map_34",
    "map_35",
    "map_36"
];

_class = typeOf _unit;

switch (_class) do {
    case "Cav_B_Training_Cadre_F": {
        {_x setMarkerAlphaLocal 0} forEach (
            _laneBoxes +
            _laneStart +
            _laneEnd +
            _gridPlotting +
            _gridReading +
            _gridReadingAnswers +
            _routeExample +
            _mapCompass +
            ["terrainAssociation"] +
            ["terrainAssociationClassroom"]
        );
    };

    case "Cav_B_Training_Cadet_F": {
        {_x setMarkerAlphaLocal 0} forEach (
            _laneBoxes +
            _laneStart +
            _laneEnd +
            _gridPlotting +
            _gridReading +
            _gridReadingAnswers +
            _routeExample +
            _mapCompass +
            ["terrainAssociation"] +
            ["terrainAssociationClassroom"]
        );
    };

};
