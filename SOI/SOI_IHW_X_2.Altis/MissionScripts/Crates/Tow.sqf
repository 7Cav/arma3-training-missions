
params ["_box"];

_box addAction ["  Tow Team Leader", {
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
        ["B_Kitbag_mcamo",[
            ["ace_compat_rhs_usf3_mag_TOW2bb", 1, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_SpraypaintRed", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Tow Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["ace_compat_rhs_usf3_tow_carry", "", "", "", [], [], ""],
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
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Tow Assistant Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["ace_csw_m220CarryTripod", "", "", "", [], [], ""],
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
            ["ACE_EntrenchingTool", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["ace_compat_rhs_usf3_mag_TOW2b", 1, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["rhsusf_bino_m24", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Tow Ammo Bearer", {
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
            ["ACE_EntrenchingTool", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["ace_compat_rhs_usf3_mag_TOW2b", 1, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

private _inventory = [
    ["ACE_EarPlugs", 100],
    ["ace_compat_rhs_usf3_mag_TOW", 20, 1],
    ["ace_compat_rhs_usf3_mag_TOWB", 20, 1],
    ["ace_compat_rhs_usf3_mag_ITOW", 20, 1],
    ["ace_compat_rhs_usf3_mag_TOW2", 20, 1],
    ["ace_compat_rhs_usf3_mag_TOW2A", 20, 1],
    ["ace_compat_rhs_usf3_mag_TOW2b", 20, 1],
    ["ace_compat_rhs_usf3_mag_TOW2b_aero", 20, 1],
    ["ace_compat_rhs_usf3_mag_TOW2bb", 20, 1]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
