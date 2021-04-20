
params ["_box"];

_box addAction ["  Team Leader", {
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
        ["rhsusf_spcs_ocp_teamleader", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1],
            ["SmokeShellBlue", 2, 1],
            ["ACE_Chemlight_IR", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_personalAidKit", 1],
            ["ACE_SpraypaintRed", 1],
            ["ACE_HuntIR_monitor", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Rifleman (AT)", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["rhs_weap_M136_hp", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Rifleman (LAT)", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], [], "rhsusf_acc_tdstubby_tan"],
        ["", "", "", "", [], [], ""],
        ["rhs_weap_m72a7", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1],
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
    ["rhs_weap_M136", 15],
    ["rhs_weap_M136_hedp", 15],
    ["rhs_weap_M136_hp", 15],
    ["tf47_at4_heat", 15],
    ["tf47_at4_HEDP", 15],
    ["tf47_at4_HP", 15],
    ["rhs_weap_m72a7", 15]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
