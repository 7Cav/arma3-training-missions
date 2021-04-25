
params ["_box"];

_box addAction ["  <t color='#FFD700'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconManCommander_ca'/></t>Instructor", {
    params ["","_player"];

    _player allowDamage false;

    _player setUnitLoadout [
        [],
        [],
        [],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_microDAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1],
            ["ACRE_PRC152",1]
        ]],
        [],
        [],
        "rhsusf_patrolcap_ocp","",[],
        ["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"(player getVariable ['instructor', false])",
5];

_box addAction ["  <t color='#FFD700'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconManOfficer_ca'/></t>Squad Leader", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_tdstubby_tan"],[],[],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_microDAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1],
            ["ACRE_PRC152",1]
        ]],
        ["rhsusf_spcs_ocp_squadleader",[
            ["ACRE_PRC152",1],
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],
            ["rhs_mag_m67",2,1],
            ["SmokeShell",4,1],
            ["SmokeShellBlue",6,1],
            ["ACE_Chemlight_IR",4,1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["B_IR_Grenade",2,1],
            ["rhsusf_ANPVS_14",1],
            ["ACE_personalAidKit",1],
            ["ACE_EntrenchingTool",1],
            ["ACE_HuntIR_monitor",1],
            ["ACE_SpraypaintGreen",1]
        ]],
        "rhsusf_ach_helmet_camo_ocp","rhs_facewear_6m2_1",
        ["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"(player getVariable ['instructor', false])",
5];

_box addAction ["  <t color='#155492'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconManLeader_ca'/></t>Team Leader", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_tdstubby_tan"],[],[],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_microDAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1],
            ["ACRE_PRC152",1]
        ]],
        ["rhsusf_spcs_ocp_teamleader",[
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",7,30],
            ["rhs_mag_m67",2,1],
            ["SmokeShell",4,1],
            ["SmokeShellBlue",2,1],
            ["ACE_Chemlight_IR",4,1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhsusf_ANPVS_14",1],
            ["ACE_personalAidKit",1],
            ["ACE_EntrenchingTool",1],
            ["ACE_HuntIR_monitor",1],
            ["ACE_SpraypaintRed",1],
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch",1,200]
        ]],
        "rhsusf_ach_helmet_camo_ocp","",
        ["ACE_Vector","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"",
5];

_box addAction ["  <t color='#155492'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconManMG_ca'/></t>Automatic Rifleman", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m249_light_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side","rhsusf_acc_ELCAN",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],[],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_DAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1]
        ]],
        ["rhsusf_spcs_ocp_saw",[
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200],
            ["rhs_mag_m67",2,1],["SmokeShell",4,1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhsusf_ANPVS_14",1],
            ["ACE_personalAidKit",1],
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch",2,200]
        ]],
        "rhsusf_ach_helmet_camo_ocp","",[],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"",
5];

_box addAction ["  <t color='#155492'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconManAT_ca'/></t>Grenadier", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],["rhs_mag_M433_HEDP",1],""],[],[],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_DAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1]
        ]],
        ["rhsusf_spcs_ocp_grenadier",[
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],
            ["rhs_mag_m67",2,1],
            ["SmokeShell",4,1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhsusf_ANPVS_14",1],
            ["ACE_personalAidKit",1],
            ["ACE_EntrenchingTool",1],
            ["rhs_mag_M433_HEDP",15,1],
            ["rhs_mag_m713_Red",4,1],
            ["ACE_40mm_Flare_ir",4,1],
            ["ACE_HuntIR_M203",2,1]
        ]],
        "rhsusf_ach_helmet_camo_ocp","",[],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"",
5];

_box addAction ["  <t color='#155492'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconMan_ca'/></t>Rifleman", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_tdstubby_tan"],["rhs_weap_M136_hp","","","",[],[],""],[],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_DAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1]
        ]],
        ["rhsusf_spcs_ocp_rifleman",[
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],
            ["rhs_mag_m67",2,1],
            ["SmokeShell",4,1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhsusf_ANPVS_14",1],
            ["ACE_personalAidKit",1],
            ["ACE_EntrenchingTool",1]
        ]],
        "rhsusf_ach_helmet_camo_ocp","",[],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"",
5];

_box addAction ["  <t color='#155492'><img size='1' image='\a3\ui_f\data\Map\VehicleIcons\iconManMedic_ca'/></t>Combat Life Saver", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_tdstubby_tan"],[],[],
        ["rhs_uniform_acu_oefcp",[
            ["ACE_quikclot",14],
            ["ACE_tourniquet",4],
            ["ACE_DAGR",1],
            ["ACE_MapTools",1],
            ["ACE_Flashlight_XL50",1],
            ["ACRE_PRC343",1]
        ]],
        ["rhsusf_spcs_ocp_medic",[
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG",7,30],
            ["rhs_mag_m67",2,1],
            ["SmokeShell",4,1],
            ["ACE_Chemlight_HiRed",4,1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhsusf_ANPVS_14",1],
            ["ACE_personalAidKit",5],
            ["ACE_EntrenchingTool",1],
            ["ACE_quikclot",56],
            ["ACE_tourniquet",16],
            ["ACE_splint",16]
        ]],
        "rhsusf_ach_helmet_camo_ocp","",[],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
},
nil,
1.5,
false,
false,
"",
"",
5];

_box execVM "MissionScripts\Crates\Inventory\inventoryInfantry.sqf";

_box execVM "MissionScripts\Crates\boxes.sqf";
