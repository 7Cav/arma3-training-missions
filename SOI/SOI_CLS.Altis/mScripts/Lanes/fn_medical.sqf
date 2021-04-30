
params ["_spawnPos", "_mode"];

_patientTypes = [
	"rhsusf_army_ocp_arb_squadleader",
	"rhsusf_army_ocp_arb_teamleader",
	"rhsusf_army_ocp_arb_teamleader",
	"rhsusf_army_ocp_arb_autorifleman",
	"rhsusf_army_ocp_arb_autorifleman",
	"rhsusf_army_ocp_arb_grenadier",
	"rhsusf_army_ocp_arb_grenadier",
	"rhsusf_army_ocp_arb_rifleman",
	"rhsusf_army_ocp_arb_rifleman",
	"rhsusf_army_ocp_arb_riflemanat",
	"rhsusf_army_ocp_arb_riflemanat",
	"rhsusf_army_ocp_arb_machinegunner",
	"rhsusf_army_ocp_arb_machinegunnera",
	"rhsusf_army_ocp_arb_maaws"
];

_group = createGroup WEST;
_patient = _patientTypes call BIS_fnc_selectRandom;
_patient createUnit [_spawnpos, _group,"patient_0 = this"];
_rand = random 360;
_group setFormDir _rand;

removeAllItemsWithMagazines  patient_0;
removeAllAssignedItems patient_0;
patient_0 forceAddUniform "rhs_uniform_acu_oefcp";
_band = round (random 1);

[patient_0, "FSM"] remoteExec ["disableAI", 0];
[patient_0, "WEAPONAIM"] remoteExec ["disableAI", 0];

[patient_0, _mode] call mScripts_fnc_check;

[patient_0,[
	"Get Down!",
	{
		params ["_target"];
		_chance = 0.80;
		if (_chance > random 1) then {
			[_target, "down"] remoteExec ["setUnitPos", 2];
		};
	},
	"",
	1,
	true,
	true,
	"",
	"(alive _target) && !(stance _target == 'prone')",
	5]
] remoteExec ["addaction", 0];

[patient_0,[
	"  <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\Revive\overlayIcons\d100_ca'/></t>End Patient",
	{
		params ["_target"];
		_target setdamage 1; [_target];
	},
	"",
	1,
	true,
	true,
	"",
	"(alive _target) && (player getVariable ['instructor', false])",
	5]
] remoteExec ["addaction", 0];
