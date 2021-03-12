
params ["_box"];

_box addAction ["  AT Launcher Loadout", {
    params ["","_player"];

    _player setUnitLoadout [
        ["rhs_weap_m4a1", "rhsusf_acc_SFMB556", "rhsusf_acc_anpeq15_top", "rhsusf_acc_compm4", [], [], "rhsusf_acc_tdstubby_tan"],
        ["rhs_weap_M136_hp", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", []],
        [],
        "rhsusf_ach_helmet_ocp", "",["ACE_Vector", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
    
    for "_i" from 1 to 8 do {_player addMagazine ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 0];};

}, nil, 1.5, true, true, "", "true", 5];

_box execVM "MissionScripts\Crates\boxes.sqf";
