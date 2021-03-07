// Rifle Range
[
    "targets", //range type
    "Rifle Range", // title text
    "rr", // range tag
    8, // lane count
    8, // targets per lane
    [  //sequence
        ["Load and ready your weapon",5],
        ["Assume a prone position and scan your lane",3],
        ["Range is hot!",1],
        ["Range is hot!",0,"FD_Course_Active_F"],
        [[1],5],
        [[2],5],
        [[6],5],
        [[3],5],
        [[8],5],
        [[4],5],
        [[7],5],
        [[2],5],
        [[1],5],
        [[5],5],
        [[2,4],8],
        [[1,5],8],
        [[7,3],8],
        [[3,6],8],
        [[2,5],8],
        ["Reload one 20 round magazine",5],
        ["Assume a prone position and scan your lane",3],
        ["Range is hot!",1],
        ["Range is hot!",0,"FD_Course_Active_F",0],
        [[5],5],
        [[2],5],
        [[7],5],
        [[1],5],
        [[8],5],
        [[3],5],
        [[4],5],
        [[6],5],
        [[3],5],
        [[2],5],
        ["Assume a kneeling position and scan your lane",3],
        ["Range is hot!",1],
        [[1],5],
        [[3],5],
        [[4],5],
        [[2],5],
        [[3],5],
        [[2],5],
        [[4],5],
        [[1],5],
        [[3],5],
        [[2],5],
        ["Cease Fire!",3],
        ["Standby for final score...",1],
        ["Range complete.",0]
    ],
    nil, // target grouping (not yet implemented)
    [38,30,23], // score qualifications
    true, // add instructor actions
    true // use custom black target texture
] spawn cav_ranges_fnc_createRange;

// MG Range
_group1 = [1,2,3,4,5];
_group2 = [6,7,8,9,10];
_group3 = [11,12,13,14,15];
_group4 = [16,17,18,19,20];
_group5 = [21,22,23,24,25];
_group6 = [26,27,28,29,30];
_group7 = [31,32,33,34,35];
_group8 = [36,37,38,39,40];
[
    "targets", //range type
    "Machine Gun Range", // title text
    "mg", // range tag
    8, // lane count
    40, // targets per lane
    [  //sequence
        ["Load and ready your weapon",10],
        ["Assume a prone position and scan your lane",5],
        ["Range is hot!",2],
        ["Range is hot!",0,"FD_Course_Active_F"],
        [_group1,15],
    	[_group2,15],
    	[_group6,15],
    	[_group3,15],
    	[_group8,15],
    	[_group4,15],
    	[_group7,15],
    	[_group2,15],
    	[_group1,15],
    	[_group5,15],
        ["Reload your weapon",10],
        ["Assume a prone position and scan your lane",5],
        ["Range is hot!",1],
        ["Range is hot!",0,"FD_Course_Active_F"],
        [_group1,15],
    	[_group3,15],
    	[_group4,15],
    	[_group2,15],
    	[_group3,15],
    	[_group2,15],
    	[_group4,15],
    	[_group1,15],
    	[_group3,15],
    	[_group2,15],
        ["Cease Fire!",3],
        ["Standby for final score...",1],
        ["Range complete.",0]
    ],
    nil, // target grouping (not yet implemented)
    nil, // score qualifications
    true, // add instructor actions
    true // use custom black target texture
] spawn cav_ranges_fnc_createRange;

// grenade range
{
	_x addEventHandler ["Explosion", {_this spawn cav_ranges_fnc_eh_explosion}];
	_x addEventHandler ["HandleDamage", {0}];
	_x setVariable ["cav_ranges_expDmgThreshold",0.002];
} foreach allMissionObjects "TargetP_Inf2_F";


_gr_delay = 16;
[
    "targets", //range type
    "Grenade Range", // title text
    "gr", // range tag
    8, // lane count
    6, // targets per lane
    [  //sequence
        ["Load and ready your weapon",5],
        ["Scan your lane",3],
        ["Range is hot!",1],
        ["Range is hot!",0,"FD_Course_Active_F",0],
        [[1],_gr_delay],
        [[3],_gr_delay],
        [[5],_gr_delay],
        [[2],_gr_delay],
        [[6],_gr_delay],
        [[4],_gr_delay],
        [[2],_gr_delay],
        [[4],_gr_delay],
        [[6],_gr_delay],
        [[3],_gr_delay],
        [[1],_gr_delay],
        [[5],_gr_delay],
        ["Cease Fire!",3],
        ["Standby for final score...",1],
        ["Range complete.",0]
    ],
    nil, // target grouping (not yet implemented)
    nil, // score qualifications
    true, // add instructor actions
    false // use custom black target texture
] spawn cav_ranges_fnc_createRange;

// AT Range
[
    "spawn", //range type
    "AT Range", // title text
    "at", // range tag
    8, // lane count
    4, // targets per lane
    nil, //sequence
    nil, // target grouping (not yet implemented)
    nil, // score qualifications
    true, // add instructor actions
    nil,
    [[1,0.55,0,1],[1,0,0,1],[0,0,1,1],[0,1,0,1],[1,0.55,0,1],[1,0,0,1],[0,0,1,1],[0,1,0,1]] // lane colors
] spawn cav_ranges_fnc_createRange;
