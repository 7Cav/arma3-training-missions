#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys via the arsenal menu.
 * The crates can be filterd via squad, platoon or just ignore filters and write "all".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Size Type <SIZE> ["none","all","officer","alpha","bravo","charlie","ranger" and Squad Names etc...]
 * 2: Require correct company to select loadout. <BOOL> (default: true)
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"full",true] call cScripts_fnc_initQuickSelections;
 */
params [
    ["_object", objNull, [objNull]],
    ["_companySelectorType", "NONE"],
    ["_allowOnlyForCompany", true]
];

// Set upper case
_companySelector = toUpper(_companySelectorType);

if (_companySelector == "" OR _companySelector == "NONE") exitWith {};

#ifdef DEBUG_MODE
    [format["Setting up %1 loadouts selecton list on %2...", _companySelector, _object]] call FUNC(logInfo);
#endif

// Define the icon to be used
private _icon = "cScripts\Data\Icon\icon_01.paa";

// Create the main selection menu
[_object,"cScriptQuickSelectionMenu","Quick Selection",_icon,["ACE_MainActions"]] call FUNC(addAceCategory);


// Create categories
private _officer = ["OFFICER"];
private _alpha = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo = ["BRAVO", "VIKING", "APOLLO", "MUSTANG"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT", 'HAVOC'];
private _ranger = ["RANGER", "SNIPER"];

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Loadouts

//          O F F I C E R   L O A D O U T S
if (_companySelector in _officer or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Officer", "Officers", _icon, ["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _officerCoCat = ['ACE_MainActions', 'cScriptQuickSelectionMenu', 'cScriptQuickSelection_Officer'];
    
    [_object,"Air Controller", "Cav_B_A_AirController_F", "", _officerCoCat, "Officer", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Officer", "Cav_B_A_Officer_F", "", _officerCoCat, "Officer", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Joint Fires Observer", "Cav_B_A_JFO_F", "", _officerCoCat, "Officer", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

//          A L P H A   C O M P A N Y   L O A D O U T S
if (_companySelector in _alpha or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Alpha", "Machineguns", _icon, ["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _alphaCoCat = ['ACE_MainActions', 'cScriptQuickSelectionMenu', 'cScriptQuickSelection_Alpha'];
    
    // Loadouts
    [_object,"MMG Team Lead", "MMG_TL_TRG", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Machingunner", "Machingunner_TRG", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Assistnat Gunner", "Assistant_Gunner_TRG", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "AutomaticRifleman_TRG", "", _alphaCoCat, "Alpha", _addActionAllowedOnCompany] call FUNC(addQuickSelection);
};

//          B R A V O   C O M P A N Y   L O A D O U T S
if (_companySelector in _bravo or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Bravo","Shoulder-Launched Munitions",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _bravoCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'];
    
    // Loadouts
    [_object,"SLM Team Lead", "SLM_TL_TRG", "", _bravoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"SLM Gunner", "SLM_Gunner_TRG", "", _bravoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Ammo Bearer", "SLM_AmmoBearer", "", _bravoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"AT-4 Rifleman", "AT4_Gunner", "", _bravoCoCat, "Bravo", _addActionAllowedOnCompany] call FUNC(addQuickSelection);
};

//          C H A R L I E   C O M P A N Y   L O A D O U T S
if (_companySelector in _charlie or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Charlie","Close Combat Missile Systems",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _charlieCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'];

    // Loadouts
    [_object,"FMG-148 Gunner", "FGM148_Gunner_TRG", "", _charlieCoCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"FGM-148 Ammo Bearer", "FGM148_Ammo_TRG", "", _charlieCoCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"FIM-92 Gunner", "FIM92_Gunner", "", _charlieCoCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"FIM-92 Ammo Bearer", "FIM92_Ammo", "", _charlieCoCat, "Charlie", _addActionAllowedOnCompany] call FUNC(addQuickSelection);
};

//          R A N G E R   C O M P A N Y   L O A D O U T S
if (_companySelector in _ranger or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Ranger","Ranger",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _charlieCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'];

    // Loadouts Ranger
    [_object,"cScriptQuickSelection_Ranger_Squad","Ranger",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]] call FUNC(addAceCategory);
    private _rangerSquadCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger','cScriptQuickSelection_Ranger_Squad'];

    [_object,"Roughneck-6", "rhsusf_socom_marsoc_elementleader", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Roughneck-5", "rhsusf_socom_marsoc_teamchief", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    
    [_object,"Team Leader", "rhsusf_socom_marsoc_teamleader", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "rhsusf_socom_marsoc_cso_mechanic", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "rhsusf_socom_marsoc_cso_grenadier", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman", "rhsusf_socom_marsoc_cso", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Medic", "rhsusf_socom_marsoc_sarc", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    
    // Loadouts Sniper
    [_object,"cScriptQuickSelection_Ranger_Sniper","Sniper",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]] call FUNC(addAceCategory);
    private _rangerSniperCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger','cScriptQuickSelection_Ranger_Sniper'];

    [_object,"Sniper", "B_sniper_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Arid", "B_ghillie_ard_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Jungle", "B_T_ghillie_tna_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Lush", "B_ghillie_lsh_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Semi-Arid", "B_ghillie_sard_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter", "B_spotter_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Arid", "B_CTRG_soldier_engineer_exp_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Jungle", "B_CTRG_soldier_M_medic_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Lush", "B_Captain_Jay_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Semi-Arid", "B_Story_Protagonist_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

#ifdef DEBUG_MODE
    [format["Setup of %1 loadouts selecton list on %2 is completed.", _companySelector, _object]] call FUNC(logInfo);
#endif
