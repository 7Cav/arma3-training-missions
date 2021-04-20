
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
    ["navStart_1", 0],
    ["navStart_2", 0],
    ["navStart_3", 0],
    ["navStart_4", 0],
    ["navStart_5", 0],
    ["navStart_6", 0],
    ["navStart_7", 0],
    ["navStart_8", 0]
];

_laneEnd = [
    ["navEnd_1", 0],
    ["navEnd_2", 0],
    ["navEnd_3", 0],
    ["navEnd_4", 0],
    ["navEnd_5", 0],
    ["navEnd_6", 0],
    ["navEnd_7", 0],
    ["navEnd_8", 0]
];

_gridPlotting = [
    ["gridPractice_1", 1],
    ["gridPractice_2", 1],
    ["gridPractice_3", 1],
    ["gridPractice_4", 1],
    ["gridPractice_5", 1],
    ["gridPractice_6", 1],
    ["gridPractice_7", 1],
    ["gridPractice_8", 1],
    ["gridPracticeGreen__1", 0.5],
    ["gridPracticeGreen__2", 0.5],
    ["gridPracticeGreen__3", 0.5],
    ["gridPracticeGreen__4", 0.5],
    ["gridPracticeGreen__5", 0.5],
    ["gridPracticeGreen__6", 0.5],
    ["gridPracticeGreen__7", 0.5],
    ["gridPracticeGreen__8", 0.5],
    ["gridPracticeRed__1", 0.5],
    ["gridPracticeRed__2", 0.5],
    ["gridPracticeRed__3", 0.5],
    ["gridPracticeRed__4", 0.5],
    ["gridPracticeRed__5", 0.5],
    ["gridPracticeRed__6", 0.5],
    ["gridPracticeRed__7", 0.5],
    ["gridPracticeRed__8", 0.5]
];

_gridReading = [
    ["gridReading_1", 1],
    ["gridReading_2", 1],
    ["gridReading_3", 1],
    ["gridReading_4", 1],
    ["gridReading_5", 1],
    ["gridReading_6", 1],
    ["gridReading_7", 1],
    ["gridReading_8", 1]
];

_gridReadingAnswers = [
    ["gridReadingAnswer_1", 0.5],
    ["gridReadingAnswer_2", 0.5],
    ["gridReadingAnswer_3", 0.5],
    ["gridReadingAnswer_4", 0.5],
    ["gridReadingAnswer_5", 0.5],
    ["gridReadingAnswer_6", 0.5],
    ["gridReadingAnswer_7", 0.5],
    ["gridReadingAnswer_8", 0.5]
];

_routeExample = [
    ["routeExample_1", 0],
    ["routeExample_2", 0],
    ["routeExample_3", 0],
    ["routeExample_4", 0],
    ["routeExample_5", 0],
    ["routeExample_6", 0],
    ["routeExample_7", 0],
    ["routeExample_8", 0],
    ["routeExample_9", 0],
    ["routeExample_10", 0],
    ["routeExample_11", 0],
    ["routeExample_12", 0],
    ["routeExample_13", 0],
    ["routeExample_14", 0],
    ["routeExample_15", 0],
    ["routeExample_16", 0],
    ["routeExample_17", 0],
    ["routeExample_18", 0],
    ["routeExample_19", 0],
    ["routeExample_20", 0],
    ["routeExample_21", 0],
    ["routeExample_22", 0],
    ["routeExample_23", 0],
    ["routeExample_24", 0],
    ["routeExample_25", 0],
    ["routeExample_26", 0],
    ["routeExample_27", 0]
];

_mapCompass = [
    ["mapCompassTraining", 1],
    ["map_1", 1],
    ["map_2", 1],
    ["map_3", 1],
    ["map_4", 1],
    ["map_5", 1],
    ["map_6", 1],
    ["map_7", 1],
    ["map_8", 1],
    ["map_9", 1],
    ["map_10", 1],
    ["map_11", 1],
    ["map_12", 1],
    ["map_13", 1],
    ["map_14", 1],
    ["map_15", 1],
    ["map_16", 1],
    ["map_17", 1],
    ["map_18", 1],
    ["map_19", 1],
    ["map_20", 1],
    ["map_21", 1],
    ["map_22", 1],
    ["map_23", 1],
    ["map_24", 1],
    ["map_25", 1],
    ["map_26", 1],
    ["map_27", 1],
    ["map_28", 1],
    ["map_29", 1],
    ["map_30", 1],
    ["map_31", 1],
    ["map_32", 1],
    ["map_33", 1],
    ["map_34", 1],
    ["map_35", 1],
    ["map_36", 1]
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
            [["terrainAssociation", 0]] +
            [["terrainAssociationClassroom", 0]] +
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
            [["terrainAssociation", 0]] +
            _routeExample +
            _laneBoxes +
            _laneStart +
            _laneEnd
        );
    };

};
