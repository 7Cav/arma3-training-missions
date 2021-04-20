
params ["_box"];

_box addAction ["  Machinegun Team Leader", {
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
            ["rhsusf_100Rnd_762x51_m62_tracer", 2, 100]
        ]],
        ["B_Kitbag_mcamo",[
            ["rhsusf_100Rnd_762x51_m62_tracer", 5, 100],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 4, 1],
            ["SmokeShellBlue", 2, 1],
            ["ACE_Chemlight_IR", 4, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_personalAidKit", 1],
            ["ACE_SpraypaintRed", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Machinegunner", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m240B", "rhsusf_acc_ardec_m240", "rhsusf_acc_anpeq15side", "rhsusf_acc_elcan_ard", ["rhsusf_100Rnd_762x51_m62_tracer", 100], [], ""],
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
        ["rhsusf_spcs_ocp_machinegunner", [
            ["rhsusf_100Rnd_762x51_m62_tracer", 4, 100],
            ["SmokeShell", 2, 1]
        ]],
        ["B_AssaultPack_mcamo",[
            ["rhsusf_100Rnd_762x51_m62_tracer", 2, 100],
            ["rhsusf_ANPVS_14", 1],
            ["rhsusf_acc_acog_mdo", 1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Assistant Gunner", {
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
            ["rhsusf_100Rnd_762x51_m62_tracer", 2, 100]
        ]],
        ["B_Kitbag_mcamo",[
            ["rhsusf_100Rnd_762x51_m62_tracer", 5, 100],
            ["HandGrenade", 2, 1],
            ["SmokeShell", 2, 1],
            ["ACE_SpareBarrel", 1, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["rhsusf_bino_m24", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["  Grenadier", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1_m320", "rhsusf_acc_sfmb556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 30], ["rhs_mag_M433_HEDP", 1], ""],
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
        ["rhsusf_spcs_ocp_grenadier", [
            ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 7, 30],
            ["HandGrenade", 4, 1],
            ["SmokeShell", 4, 1]
        ]],
        ["rhsusf_assault_eagleaiii_ocp",[
            ["rhs_mag_M433_HEDP", 15, 1],
            ["rhs_mag_m713_Red", 4, 1],
            ["ACE_40mm_Flare_ir", 4, 1],
            ["ACE_HuntIR_M203", 2, 1],
            ["rhsusf_ANPVS_14", 1],
            ["ACE_EntrenchingTool", 1],
            ["ACE_personalAidKit", 1]
        ]],
        "rhsusf_ach_helmet_headset_ocp_alt", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ]
}];

_box addAction ["---", {}];

_box addAction ["  Automatic Rifleman", {
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
    ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 30],
    ["rhsusf_100Rnd_762x51_m62_tracer", 30],
    ["rhsusf_100Rnd_762x51_m61_ap", 30],
    ["rhs_mag_M441_HE", 60],
    ["rhs_mag_M433_HEDP", 60],
    ["rhs_mag_M397_HET", 60],
    ["rhs_mag_m713_Red", 30],
    ["ACE_40mm_Flare_ir", 30],
    ["ACE_HuntIR_M203", 15],
    ["ACE_HuntIR_monitor", 6]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";
