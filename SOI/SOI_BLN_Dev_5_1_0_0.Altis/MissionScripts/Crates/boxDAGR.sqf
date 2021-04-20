
if (!isServer)  exitwith {};

params ["_box"];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

private _inventory = [
    ["ACE_DAGR", 12]
];

{
    _x params ["_ammo", "_amount"];
    _box addItemCargoGlobal [_ammo, _amount];
} forEach _inventory;

_box execVM "MissionScripts\Crates\boxes.sqf";

_box addEventHandler ["ContainerOpened", {
        [] spawn {
            waitUntil{!isNull findDisplay 602};
            closeDialog 1;
        };
}];

[missionNameSpace, ["lockedDAGR", true]] remoteExec ["setvariable", 0, true];

_box addAction ["  <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getout_ca'/>Lock Crate</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _target addEventHandler ["ContainerOpened", {
            [] spawn {
                waitUntil{ !isNull findDisplay 602 };
                closeDialog 1;
            };
        }];
        [missionNameSpace, ["lockedDAGR", true]] remoteExec ["setvariable", 0, true];
    },
    nil,
    1.5,
    true,
    true,
    "",
    "!(missionNameSpace getVariable ['lockedDAGR', true]) && (player getVariable ['instructor',false])", // _target, _this, _originalTarget
    5,
    false,
    "",
    ""
];

_box addAction ["  <t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getin_ca'/>Unlock Crate</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _target removeAllEventHandlers "ContainerOpened";
        [missionNameSpace, ["lockedDAGR", false]] remoteExec ["setvariable", 0, true];
    },
    nil,
    1.5,
    true,
    true,
    "",
    "(missionNameSpace getVariable ['lockedDAGR', false]) && (player getVariable ['instructor',false])", // _target, _this, _originalTarget
    5,
    false,
    "",
    ""
];
