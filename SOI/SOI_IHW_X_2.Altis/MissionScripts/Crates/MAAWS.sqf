
params ["_box"];

_box addAction ["  [RHS] SLM Team Leader", {
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
            ["ACE_personalAidKit", 1],
            ["ACE_SpraypaintRed", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["rhs_mag_maaws_HEAT", 2, 1],
            ["rhs_mag_maaws_HE", 1, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [RHS] SLM Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", 1], [], ""],
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
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhs_mag_maaws_HEAT", 1, 1],
            ["rhs_mag_maaws_HE", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [RHS] SLM Ammo Bearer", {
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
            ["ACE_personalAidKit", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["rhs_mag_maaws_HEAT", 2, 1],
            ["rhs_mag_maaws_HE", 1, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [RHS] Automatic Rifleman", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m249_light_S", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15side", "rhsusf_acc_elcan_ard", ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 200], [], ""],
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
        ["rhsusf_spcs_ocp_saw", [
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 2, 200],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 2, 100],
            ["rhsusf_ANPVS_14",  1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["---", {}];

_box addAction ["  [Vanilla] SLM Team Leader", {
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
            ["ACE_personalAidKit", 1],
            ["ACE_SpraypaintRed", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["MRAWS_HEAT_F", 2, 1],
            ["MRAWS_HE_F", 3, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [Vanilla] SLM Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["launch_MRAWS_green_F", "", "rhsusf_acc_anpeq15side", "", ["MRAWS_HEAT_F", 1], [], ""],
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
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["MRAWS_HEAT_F", 2, 1],
            ["MRAWS_HE_F", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [Vanilla] SLM Ammo Bearer", {
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
            ["ACE_personalAidKit", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["MRAWS_HEAT_F", 2, 1],
            ["MRAWS_HE_F", 3, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [Vanilla] Automatic Rifleman", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m249_light_S", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15side", "rhsusf_acc_elcan_ard", ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 200], [], ""],
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
        ["rhsusf_spcs_ocp_saw", [
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 2, 200],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 2, 100],
            ["rhsusf_ANPVS_14",  1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["---", {}];

_box addAction ["  [TF47] SLM Team Leader", {
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
            ["ACE_personalAidKit", 1],
            ["ACE_SpraypaintRed", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["tf47_m3maaws_HEAT", 1, 1],
            ["tf47_m3maaws_HE", 2, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [TF47] SLM Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["tf47_m3maaws", "", "", "tf47_optic_m3maaws", ["tf47_m3maaws_HEAT", 1], [], ""],
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
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["tf47_m3maaws_HEAT", 1, 1],
            ["tf47_m3maaws_HE", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [TF47] SLM Ammo Bearer", {
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
            ["ACE_personalAidKit", 1]
        ]],
        ["B_Kitbag_mcamo",[
            ["tf47_m3maaws_HEAT", 1, 1],
            ["tf47_m3maaws_HE", 2, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  [TF47] Automatic Rifleman", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m249_light_S", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15side", "rhsusf_acc_elcan_ard", ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 200], [], ""],
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
        ["rhsusf_spcs_ocp_saw", [
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 2, 200],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 2, 100],
            ["rhsusf_ANPVS_14",  1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

private _inventory = [
    ["ACE_EarPlugs", 100],
    ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 100],
    ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30],
    ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 15],
    ["rhs_mag_maaws_HEAT", 30],
    ["rhs_mag_maaws_HE", 30],
    ["rhs_mag_maaws_HEDP", 30],
    ["MRAWS_HEAT_F", 30],
    ["MRAWS_HEAT55_F", 30],
    ["MRAWS_HE_F", 30],
    ["tf47_m3maaws_HEAT", 30],
    ["tf47_m3maaws_HE", 30],
    ["tf47_m3maaws_HEDP", 30],
    ["tf47_m3maaws_SMOKE", 30],
    ["tf47_m3maaws_ILLUM", 30]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
