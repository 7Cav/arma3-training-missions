
params ["_box"];

_box addAction ["  320 Range Loadout", {
    params ["","_player"];

    _player setUnitLoadout [
        ["", "", "", "", [], [], ""],
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
        ["rhsusf_spcs_ocp_grenadier", []],
        ["",[]],
        "rhsusf_ach_helmet_ocp", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];
    
    _player addWeapon "rhs_weap_m4a1_m320";
    _player addPrimaryWeaponItem "rhsusf_acc_sfmb556";
    _player addPrimaryWeaponItem "rhsusf_acc_anpeq15_top";
    _player addPrimaryWeaponItem "rhsusf_acc_acog_rmr";

    for "_i" from 1 to 8 do {_player addMagazine ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 0];};
    for "_i" from 1 to 12 do {_player addMagazine ["rhs_mag_M441_HE", 1];};

}, nil, 1.5, true, true, "", "true", 5];

_box execVM "MissionScripts\Crates\boxes.sqf";
