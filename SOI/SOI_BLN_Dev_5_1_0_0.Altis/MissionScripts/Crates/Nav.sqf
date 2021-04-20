
params ["_box"];

_box addAction ["  Instructor", {
    params ["","_player"];

    _player setUnitLoadout [
        [],
        [],
        [],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_Flashlight_XL50",1],
            ["ACE_MapTools",1],
            ["ACRE_PRC343",1],
            ["ACE_microDAGR",1],
            ["ACRE_PRC152",1]]
        ],
        [],
        [],
        "rhsusf_patrolcap_ocp","",[],
        ["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]
    ]
},
nil,
1.5,
false,
false,
"",
"(player getVariable ['instructor', false])",
5];

_box addAction ["  Land Navigation Kit", {
    params ["","_player"];

    _player setUnitLoadout [
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
        ["ItemMap","","","ItemCompass","ItemWatch",""]]
},
nil,
1.5,
false,
false,
"",
"",
5];

_box execVM "MissionScripts\Crates\inventory.sqf";

_box execVM "MissionScripts\Crates\boxes.sqf";
