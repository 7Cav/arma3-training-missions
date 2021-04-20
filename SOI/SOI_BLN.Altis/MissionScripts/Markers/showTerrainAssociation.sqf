
params ["_unit"];

_laneBoxes = [
    ["laneBox_1", 0],
    ["laneBox_2", 0],
    ["laneBox_3", 0],
    ["laneBox_4", 0],
    ["laneBox_5", 0],
    ["laneBox_6", 0],
    ["laneBox_7", 0],
    ["laneBox_8", 0]
];

_laneStart = [
    ["navStart_1", 0.5],
    ["navStart_2", 0.5],
    ["navStart_3", 0.5],
    ["navStart_4", 0.5],
    ["navStart_5", 0.5],
    ["navStart_6", 0.5],
    ["navStart_7", 0.5],
    ["navStart_8", 0.5]
];

_laneEnd = [
    ["navEnd_1", 0.5],
    ["navEnd_2", 0.5],
    ["navEnd_3", 0.5],
    ["navEnd_4", 0.5],
    ["navEnd_5", 0.5],
    ["navEnd_6", 0.5],
    ["navEnd_7", 0.5],
    ["navEnd_8", 0.5]
];

_gridPlotting = [
    ["gridPractice_1", 0],
    ["gridPractice_2", 0],
    ["gridPractice_3", 0],
    ["gridPractice_4", 0],
    ["gridPractice_5", 0],
    ["gridPractice_6", 0],
    ["gridPractice_7", 0],
    ["gridPractice_8", 0],
    ["gridPracticeGreen__1", 0],
    ["gridPracticeGreen__2", 0],
    ["gridPracticeGreen__3", 0],
    ["gridPracticeGreen__4", 0],
    ["gridPracticeGreen__5", 0],
    ["gridPracticeGreen__6", 0],
    ["gridPracticeGreen__7", 0],
    ["gridPracticeGreen__8", 0],
    ["gridPracticeRed__1", 0],
    ["gridPracticeRed__2", 0],
    ["gridPracticeRed__3", 0],
    ["gridPracticeRed__4", 0],
    ["gridPracticeRed__5", 0],
    ["gridPracticeRed__6", 0],
    ["gridPracticeRed__7", 0],
    ["gridPracticeRed__8", 0]
];

_gridReading = [
    ["gridReading_1", 0],
    ["gridReading_2", 0],
    ["gridReading_3", 0],
    ["gridReading_4", 0],
    ["gridReading_5", 0],
    ["gridReading_6", 0],
    ["gridReading_7", 0],
    ["gridReading_8", 0]
];

_gridReadingAnswers = [
    ["gridReadingAnswer_1", 0],
    ["gridReadingAnswer_2", 0],
    ["gridReadingAnswer_3", 0],
    ["gridReadingAnswer_4", 0],
    ["gridReadingAnswer_5", 0],
    ["gridReadingAnswer_6", 0],
    ["gridReadingAnswer_7", 0],
    ["gridReadingAnswer_8", 0]
];

_routeExample = [
    ["routeExample_1", 1],
    ["routeExample_2", 1],
    ["routeExample_3", 1],
    ["routeExample_4", 1],
    ["routeExample_5", 1],
    ["routeExample_6", 1],
    ["routeExample_7", 1],
    ["routeExample_8", 1],
    ["routeExample_9", 1],
    ["routeExample_10", 1],
    ["routeExample_11", 1],
    ["routeExample_12", 1],
    ["routeExample_13", 1],
    ["routeExample_14", 1],
    ["routeExample_15", 1],
    ["routeExample_16", 1],
    ["routeExample_17", 1],
    ["routeExample_18", 1],
    ["routeExample_19", 1],
    ["routeExample_20", 1],
    ["routeExample_21", 1],
    ["routeExample_22", 1],
    ["routeExample_23", 1],
    ["routeExample_24", 1],
    ["routeExample_25", 1],
    ["routeExample_26", 1],
    ["routeExample_27", 1]
];

_mapCompass = [
    ["mapCompassTraining", 0],
    ["map_1", 0],
    ["map_2", 0],
    ["map_3", 0],
    ["map_4", 0],
    ["map_5", 0],
    ["map_6", 0],
    ["map_7", 0],
    ["map_8", 0],
    ["map_9", 0],
    ["map_10", 0],
    ["map_11", 0],
    ["map_12", 0],
    ["map_13", 0],
    ["map_14", 0],
    ["map_15", 0],
    ["map_16", 0],
    ["map_17", 0],
    ["map_18", 0],
    ["map_19", 0],
    ["map_20", 0],
    ["map_21", 0],
    ["map_22", 0],
    ["map_23", 0],
    ["map_24", 0],
    ["map_25", 0],
    ["map_26", 0],
    ["map_27", 0],
    ["map_28", 0],
    ["map_29", 0],
    ["map_30", 0],
    ["map_31", 0],
    ["map_32", 0],
    ["map_33", 0],
    ["map_34", 0],
    ["map_35", 0],
    ["map_36", 0]
];

switch (typeOf _unit) do {
    case "Cav_B_Training_Cadre_F": {
        {
            _x params ["_mark", "_alpha"];
            _mark setMarkerAlphaLocal _alpha;
        } forEach (
            _mapCompass +
            _gridReading +
            _gridReadingAnswers +
            _gridPlotting +
            [["terrainAssociation", 0.5]] +
            [["terrainAssociationClassroom", 0.5]] +
            _routeExample +
            _laneBoxes +
            _laneStart +
            _laneEnd
        );
    };

    case "Cav_B_Training_Cadet_F": {
        {
            _x params ["_mark", "_alpha"];
            _mark setMarkerAlphaLocal _alpha;
        } forEach (
            _mapCompass +
            _gridReading +
            [["terrainAssociation", 0.5]] +
            _routeExample +
            _laneBoxes
        );
    };

};
