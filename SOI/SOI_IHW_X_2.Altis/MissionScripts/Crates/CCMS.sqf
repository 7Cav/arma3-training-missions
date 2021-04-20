
params ["_box"];

_box addAction ["  Javelin Team Leader", {
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
            ["SmokeShell", 2, 1],
            ["SmokeShellBlue", 2, 1],
            ["ACE_Chemlight_IR", 4, 1],
            ["ACE_personalAidKit", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["rhs_fgm148_magazine_AT", 1, 1],
            ["rhsusf_ANPVS_14", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Javelin Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["rhs_weap_fgm148", "", "", "", ["rhs_fgm148_magazine_AT", 1], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 100],
            ["SmokeShell", 2, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Javelin Ammo Bearer", {
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
            ["ACE_EntrenchingTool", 1]
        ]],
        ["B_Carryall_mcamo",[
            ["rhs_fgm148_magazine_AT", 1, 1],
            ["rhsusf_ANPVS_14", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["---", {}];

_box addAction ["  Stinger Team Leader", {
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
            ["SmokeShell", 2, 1],
            ["SmokeShellBlue", 2, 1],
            ["ACE_Chemlight_IR", 4, 1],
            ["ACE_personalAidKit", 1],
            ["rhsusf_ANPVS_14", 1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhs_fim92_mag", 2, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Stinger Gunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["rhs_weap_fim92", "", "", "", ["rhs_fim92_mag", 1], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 100],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 2, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_personalAidKit", 1],
            ["rhs_fim92_mag", 1, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Stinger Ammo Bearer", {
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
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhs_fim92_mag", 2, 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

private _inventory = [
    ["ACE_EarPlugs", 100],
    ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 100],
    ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 30],
    ["rhs_fgm148_magazine_AT", 30],
    ["rhs_fim92_mag", 30]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
