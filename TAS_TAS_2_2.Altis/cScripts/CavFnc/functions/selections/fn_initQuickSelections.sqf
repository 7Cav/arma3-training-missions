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
[_object,"cScriptQuickSelectionMenu","The Airborne School",_icon,["ACE_MainActions"]] call FUNC(addAceCategory);


// Create categories
private _charlie = ["AIRBORNE"];
private _alpha = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _ranger = ["JUMPMASTER"];
private _bravo = ["AIR ASSAULT"];
private _officer = ["FREEFALL"];

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Loadouts

//          B A C   L O A D O U T S
if (_companySelector in _charlie or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_charlie","Airborne/Air Assault",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _BACCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_charlie'];

    [_object,"Fire Team Leader", "BAC_FireTeamLeader_F", "", _BACCat, "Airborne", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "BAC_AutomaticRifleman_F", "", _BACCat, "Airborne", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "BAC_Grenadier_F", "", _BACCat, "Airborne", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman", "BAC_Rifleman_F", "", _BACCat, "Airborne", _allowOnlyForCompany] call FUNC(addQuickSelection);
};


//          J M C   L O A D O U T S
if (_companySelector in _ranger or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_ranger","Jumpmaster",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _JMCCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_ranger'];

    [_object,"Jumpmaster", "JM_Student_F", "", _JMCCat, "Jumpmaster", _allowOnlyForCompany] call FUNC(addQuickSelection);
};


//          M F F P C   L O A D O U T S
if (_companySelector in _bravo or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_bravo","Freefall",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _MFFCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_bravo'];

    [_object,"Fire Team Leader", "FF_FireTeamLeader_F", "", _MFFCat, "Freefall", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "FF_AutomaticRifleman_F", "", _MFFCat, "Freefall", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "FF_Grenadier_F", "", _MFFCat, "Freefall", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman", "FF_Rifleman_F", "", _MFFCat, "Freefall", _allowOnlyForCompany] call FUNC(addQuickSelection);
};


//          A L P H A   C O M P A N Y   L O A D O U T S
if (_companySelector in _alpha) then {
    [_object,"cScriptQuickSelection_Alpha", "Alpha", _icon, ["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _alphaCoCat = ['ACE_MainActions', 'cScriptQuickSelectionMenu', 'cScriptQuickSelection_Alpha'];
    
    // Loadouts
    [_object,"Rotary Pilot", "Cav_B_A_Helicopter_Tra_Pilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rotary CoPilot", "Cav_B_A_Helicopter_Tra_coPilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rotary Crew Chief", "Cav_B_A_Helicopter_Tra_CrewChief_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Crew Chief M240", "Cav_B_A_Helicopter_Tra_CrewChiefM240_Local", "", _alphaCoCat, "Alpha", _addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Rotary Door Gunner", "Cav_B_A_Helicopter_Tra_DoorGunner_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Attack Rotary Pilot", "Cav_B_A_Helicopter_Tra_DoorGunner_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Attack Rotary CoPilot", "Cav_B_A_Helicopter_Att_coPilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Fighter Pilot", "Cav_B_A_Plane_Fighter_Pilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Fixed Wing Pilot", "Cav_B_A_Plane_Transport_Pilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Fixed Wing CoPilot", "Cav_B_A_Plane_Transport_coPilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

#ifdef DEBUG_MODE
    [format["Setup of %1 loadouts selecton list on %2 is completed.", _companySelector, _object]] call FUNC(logInfo);
#endif
