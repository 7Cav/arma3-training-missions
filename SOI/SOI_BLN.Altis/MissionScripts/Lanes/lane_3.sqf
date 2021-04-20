
params ["_caller"];

"laneBox_3" setMarkerAlphaLocal 1;

private _mapImg = "\a3\ui_f\data\igui\cfg\simpleTasks\types\map_ca.paa";  
private _ruleImg = "\a3\ui_f\data\igui\cfg\simpleTasks\types\danger_ca.paa";  
private _questionsImg = "\a3\ui_f\data\igui\cfg\Actions\talk_ca.paa";  
private _destTxt = composeText [
    image _mapImg,
    parseText " Destination<br />",
    parseText"Your destination grid is 2031 1631<br />You point will be orange and white and clearly visible<br />You are currently somewhere within the blue box marked on map<br />Your destination may be outside the blue box marked on map<br />"
];
private _rulesTxt = composeText [
    image _ruleImg, parseText " Rules<br />",
    parseText"Attempt to move tactically using cover and concealment as able<br />No use of GPS is allowed on this lane<br />Maintain your equipment for the duration of the course<br />Ping Zeus with [ Y ] if you have any other questions<br />"
];
private _questionsTxt = composeText [
    image _questionsImg, parseText " Overcoming Difficulties<br />",
    parseText"Locate yourself using key terrain features - Don't be afraid to move away<br />Plan your route using handrails, checkpoints, and catching features<br />If you are lost do not be afraid to backtrack<br />Ping Zeus with [ Y ] if you desire assistance<br />"
];
"Lane 3 Hint" hintC [_destTxt, _rulesTxt, _questionsTxt];

_caller setUnitLoadout [
    ["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",[],[],"rhsusf_acc_tdstubby_tan"],
    [],
    [],
    ["rhs_uniform_acu_oefcp",[
        ["ACE_quikclot",14],
        ["ACE_tourniquet",4],
        ["ACE_Flashlight_XL50",1],
        ["ACE_MapTools",1],
        ["ACRE_PRC343",1]]
    ],
    ["rhsusf_spcs_ocp_rifleman_alt",[]],
    ["B_AssaultPack_mcamo",[
        ["ACE_personalAidKit",1],
        ["rhsusf_ANPVS_14",1],
        ["ACE_EntrenchingTool",1]]
    ],"rhsusf_ach_helmet_ocp","",[],
    ["ItemMap","","","ItemCompass","ItemWatch",""]];
