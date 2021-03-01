/*
Bounding Range

TODO:
Explosions
Smoke

Buzzer
Targets popup on range start
*/

if(!isServer) exitWith {};

_br_targets = [
	[br_target1, br_target2],
	[br_target3, br_target4],
	[br_target5, br_target6]
];

// Sound effects from speakers =========================================================
_fx_firefight = [
	"A3\Sounds_F\ambient\battlefield\battlefield_firefight1_mono.wss", 
	"A3\Sounds_F\ambient\battlefield\battlefield_firefight2_mono.wss", 
	"A3\Sounds_F\ambient\battlefield\battlefield_firefight3_mono.wss", 
	"A3\Sounds_F\ambient\battlefield\battlefield_firefight4_mono.wss"	
];

_fx_explosions = [
	"A3\Sounds_F\ambient\battlefield\battlefield_explosions1_mono.wss",
	"A3\Sounds_F\ambient\battlefield\battlefield_explosions2_mono.wss",
	"A3\Sounds_F\ambient\battlefield\battlefield_explosions3_mono.wss",
	"A3\Sounds_F\ambient\battlefield\battlefield_explosions4_mono.wss",
	"A3\Sounds_F\ambient\battlefield\battlefield_explosions5_mono.wss"
];

_soundEffectLoop = {
	_effectsList = _this select 0;
	_interval = _this select 1;
	_source = _this select 2;
	_indexStart = _this select 3;
	
	_index = _indexStart;
	while{range_PR} do {
		_effect = _effectsList select _index;
		
		if(_index == ((count _effectsList) - 1)) then {
			_index = 0;
		} else {
			_index = _index + 1;
		};
		
		//systemChat format["Loop %1, %2, %3, %4", _effect, _interval, _source, range_PR];
		
		playSound3d [_effect, _source, false, getPosASL _source, 10];
		
		sleep _interval;
	};
};

// Guns shooting over players' heads ============================================================================
_pr_weapons = [
	[br_pr_gun1, br_pr_target1, br_pr_gun1base], 
	[br_pr_gun2, br_pr_target2, br_pr_gun2base], 
	[br_pr_gun3, br_pr_target3, br_pr_gun3base]
];

_fireRandomly = {
	_gun = _this select 0;
	//_target = _this select 1;
	while {range_PR} do {
		_burstCount = (floor(random 5) + 3);
		_sleepTime = ((random 2) + 1);
		
		for "_i" from 0 to _burstCount do {
			call compile format ["rangemaster action [""useWeapon"", %1, gunner %1, 0]", _gun];
			sleep 0.1;
		};
		sleep _sleepTime;
	};
};

if(range_PR) then {
	//systemChat "Positive Reinforcement Deactivated";
	range_PR = false;
	publicVariable "range_PR";
	
	{
		deleteVehicle (gunner (_x select 0));
	} foreach _pr_weapons;
} else {
	//systemChat "Positive Reinforcement Activated";
	range_PR = true;
	publicVariable "range_PR";
	[_fx_explosions, 7, br_speaker1, 0] spawn _soundEffectLoop;
	[_fx_explosions, 7, br_speaker2, 2] spawn _soundEffectLoop;
	[_fx_firefight, 7, br_speaker3, 0] spawn _soundEffectLoop;
	[_fx_firefight, 7, br_speaker4, 2] spawn _soundEffectLoop;

	_gunnersGroup = createGroup west;

	{
		_gun = _x select 0;
		_target = _x select 1;
		_base = _x select 2;
		
		if(isNull(gunner _gun)) then {
			"rhsusf_army_ucp_rifleman" createUnit [getPos _gun, _gunnersGroup, format ["this moveInGunner %1", str _gun]];
			_gunner = gunner _gun;
			_gunner allowDamage false;
			_gunner doWatch _target;
			[_gun] spawn _fireRandomly;
		};
		//_gun attachTo [pr_gunBase];
	} foreach _pr_weapons;
	
	_createRandomExplosions = {
		_explosionType = _this select 0;
		_markerList = _this select 1;
		
		while{range_PR} do {
			_interval = (random 2) + 1;
			sleep _interval;
			_bomb = createVehicle [_explosionType, (getMarkerPos (_markerList select 0)), _markerList, 0, "NONE"];
			_bomb setVelocity [0,0,-1000];
		};
	};
	
	/*
	HelicopterExploSmall
	M_Titan_AT
	rhs_rpg7v2_pg7vl
	*/
	_explosionType = "rhs_rpg7v2_pg7vl";
	_explosionLocations = ["br_pr_bomb1", "br_pr_bomb2", "br_pr_bomb3", "br_pr_bomb4", "br_pr_bomb5", "br_pr_bomb6", "br_pr_bomb7", "br_pr_bomb8"];
	
	[_explosionType, _explosionLocations] spawn _createRandomExplosions;
};
