
params ["_box"];

_box addAction ["  60mm Team Leader", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_acog_rmr", ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACRE_PRC152", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_microDAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_teamleader_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1],
            ["SmokeShellBlue", 2, 1],
            ["ACE_Chemlight_IR", 4, 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_personalAidKit", 1],
            ["ACE_artilleryTable", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["NDS_M_6Rnd_60mm_HE", 2, 6],
            ["NDS_M_6Rnd_60mm_HE_0", 2, 6],
            ["NDS_M_6Rnd_60mm_SMOKE", 1, 6],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_SpraypaintRed", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  60mm Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1],
            ["ACE_artilleryTable", 1]
        ]],
        ["NDS_B_M224_mortar",[
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  60mm Ammo Bearer", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1],
            ["ACE_personalAidKit", 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_artilleryTable", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["NDS_M_6Rnd_60mm_HE", 2, 6],
            ["NDS_M_6Rnd_60mm_HE_0", 2, 6],
            ["NDS_M_6Rnd_60mm_SMOKE", 1, 6],
            ["rhsusf_ANPVS_14", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["---", {}];

_box addAction ["  82mm Team Leader", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_acog_rmr", ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACRE_PRC152", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_microDAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_teamleader_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1],
            ["SmokeShellBlue", 2, 1],
            ["ACE_Chemlight_IR", 4, 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_personalAidKit", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_1Rnd_82mm_Mo_HE", 5, 1],
            ["ACE_1Rnd_82mm_Mo_Smoke", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  82mm Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["ace_csw_staticMortarCarry", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1],
            ["ACE_1Rnd_82mm_Mo_HE", 1, 1],
            ["ACE_1Rnd_82mm_Mo_Smoke", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  82mm Assistant Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["ace_csw_carryMortarBaseplate", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 2, 1],
            ["ACE_personalAidKit", 1],
            ["ACE_EntrenchingTool", 1],
            ["rhsusf_ANPVS_14", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["ACE_1Rnd_82mm_Mo_HE", 5, 1],
            ["ACE_1Rnd_82mm_Mo_Smoke", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["rhsusf_bino_m24", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  82mm Ammo Bearer", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 2, 1],
            ["ACE_personalAidKit", 1],
            ["ACE_EntrenchingTool", 1],
            ["rhsusf_ANPVS_14", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["ACE_1Rnd_82mm_Mo_HE", 5, 1],
            ["ACE_1Rnd_82mm_Mo_Smoke", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

private _inventory = [
    ["ACE_EarPlugs", 100],
    ["ACE_artilleryTable", 100],
    ["NDS_M_6Rnd_60mm_SMOKE", 60],
    ["NDS_M_6Rnd_60mm_ILLUM", 60],
    ["NDS_M_6Rnd_60mm_HE_0", 60],
    ["NDS_M_6Rnd_60mm_HE", 60],
    ["ACE_1Rnd_82mm_Mo_HE_Guided", 60],
    ["ACE_1Rnd_82mm_Mo_HE", 60],
    ["ACE_1Rnd_82mm_Mo_Illum", 60],
    ["ACE_1Rnd_82mm_Mo_HE_LaserGuided", 60],
    ["ACE_1Rnd_82mm_Mo_Smoke", 60]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
