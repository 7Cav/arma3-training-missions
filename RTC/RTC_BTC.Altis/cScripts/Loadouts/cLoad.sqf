/*  Place these actions into the init of the boxes
this addaction ["Cadre","cScripts\Loadouts\cLoad.sqf",1];
this addaction ["Drill Instructor","cScripts\Loadouts\cLoad.sqf",2];
this addaction ["Trooper","cScripts\Loadouts\cLoad.sqf",3];
this addaction ["Clear Loadout","cScripts\Loadouts\cLoad.sqf",4];
 */
 
private ["_action","_id","_player","_sl","_m","_g","_r","_ar","_p","_at","_c","_mog","_moa","_aa","_eng","_AR2","_ATL","_JTAC","_SPT","_SPTG","_SNP","_SNPG","_RNG","_RNGG","_RMED","_RMG","_CAD","_DI","_TRP","_CLR","_FM","_MTL","_TC"];
if (!local player) exitwith {};

_player = _this select 1;
_id = _this select 2;
_action = _this select 3;

_trp =["B_Soldier_F","B_recon_F","B_recon_medic_F"];
_cad =["B_recon_F","B_recon_medic_F"];
_di =["B_recon_F"];
_clr =["B_Soldier_F","B_recon_F","B_recon_medic_F"];

switch (_action) do
{
// ====================================================================================
// Trooper
    case 1: 
	{
	if ((typeof _player) in _TRP)
	then {_id = ["TRP", _player] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf"; }
	else {hint "You are not authorized for this load out!";}
	};
// ====================================================================================
// Cadre
    case 2: 
	{
	if ((typeof _player) in _CAD)
	then {_id = ["CAD", _player] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf"; }
	else {hint "You are not authorized for this load out!";}
	};
// ====================================================================================
// Drill Instructor
    case 3: 
	{
	if ((typeof _player) in _DI)
	then {_id = ["DI", _player] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf"; }
	else {hint "You are not authorized for this load out!";}
	};
// ====================================================================================
// Clear
    case 4: 
	{
	if ((typeof _player) in _CLR)
	then {_id = ["CLR", _player] call compile preprocessFileLineNumbers "cScripts\Loadouts\cStart.sqf"; }
	else {hint "You are not authorized for this load out!";}
	};
// ====================================================================================
};

