/* This file is for mission makers to set up Custom Loadouts for players.
    
    Here is a copy paste friendly empty template:

class My_Soldier_Classname_or_VariableName : CommonBlufor {
    //regiment = "";
    //company = "";

    //displayName = "";
    //scope = 0;
    //category[] = {"cScripts_Loadout_Cat_Other"};
    //loadout = [[],[],[],[],[],[],"","",[],["","","","","",""]];
    //insignia = "";

    //abilityMedic = 0;
    //abilityEngineer = 0;
    //abilityEOD = 0;

    //preLoadout = "";
    //postLoadout = "";
};
*/

class rhsusf_usmc_marpat_wd_officer : CommonBlufor {
    //regiment = "";
    company = "Weapons";

    //displayName = "Weapons Instructor";
    scope = 1;
    category[] = {"cScripts_Loadout_Cat_Other"};
    loadout = [[],[],[],["rhs_uniform_acu_oefcp",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1]]],[],[],"rhsusf_patrolcap_ocp","",[" ","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]];
    //insignia = "cav_insignia_specialized_followme";

    abilityMedic = 2;
    abilityEngineer = 2;
    abilityEOD = 2;

    //preLoadout = "";
    //postLoadout = "";
};

class rhsusf_usmc_marpat_wd_rifleman_m4 : CommonBlufor {
    //regiment = "";
    company = "Weapons";

    //displayName = "Weapons Student";
    scope = 1;
    category[] = {"cScripts_Loadout_Cat_Other"};
    loadout = [[],[],[],["rhs_uniform_acu_oefcp",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_DAGR",1],["ACRE_PRC343",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1]]],[],[],"rhsusf_patrolcap_ocp","",["","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    //insignia = "";

    //abilityMedic = 0;
    //abilityEngineer = 0;
    //abilityEOD = 0;

    //preLoadout = "";
    //postLoadout = "";
};
