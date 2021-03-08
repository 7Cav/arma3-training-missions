
params ["_box"];

_box addAction ["  MG Range Loadout", {
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
        ["rhsusf_spcs_ocp_saw", []],
        ["",[]],
        "rhsusf_ach_helmet_ocp", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];

    _player addWeapon "rhs_weap_m249_light_S";
    _player addPrimaryWeaponItem "rhsusf_acc_sfmb556";
    _player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
    _player addPrimaryWeaponItem "rhsusf_acc_elcan";
    _player addPrimaryWeaponItem "rhsusf_acc_grip4_bipod";

    for "_i" from 1 to 2 do {_player addMagazine ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 200];};
    for "_i" from 1 to 1 do {_player addMagazine ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 0];};

}, nil, 1.5, true, true, "", "true", 5];

_box execVM "MissionScripts\Crates\boxes.sqf";
