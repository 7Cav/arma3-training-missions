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

class Cav_B_Training_Cadre_F : CommonBlufor {
    //regiment = "";
    company = "S7";

    //displayName = "Instructor";
    scope = 1;
    category[] = {"cScripts_Loadout_Cat_Other"};
    loadout = [[],[],[],["rhs_uniform_acu_oefcp",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1]]],[],[],"Cav_JMCap_Blk_F","",["","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]];
    insignia = "cav_insignia_specialized_airborne";

    abilityMedic = 2;
    abilityEngineer = 2;
    abilityEOD = 2;

    //preLoadout = "";
    //postLoadout = "";
};

class Cav_B_Training_Cadet_F : CommonBlufor {
    //regiment = "";
    company = "S7";

    //displayName = "Student";
    scope = 1;
    category[] = {"cScripts_Loadout_Cat_Other"};
    loadout = [["rhs_weap_m4a1_grip3","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_top","rhsusf_acc_acog_rmr",[],[],"rhsusf_acc_tdstubby_tan"],[],[],["rhs_uniform_acu_oefcp",[["ACE_quikclot",14],["ACE_tourniquet",4],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["ACE_MicroDAGR",1]]],["rhsusf_spcs_ocp_rifleman_alt",[]],["B_AssaultPack_mcamo",[["ACE_personalAidKit",1],["rhsusf_ANPVS_14",1],["ACE_EntrenchingTool",1]]],"rhsusf_ach_helmet_ocp","",[],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]];
    //insignia = "";

    //abilityMedic = 0;
    //abilityEngineer = 0;
    //abilityEOD = 0;

    //preLoadout = "";
    //postLoadout = "";
};
