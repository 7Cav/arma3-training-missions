
#include "..\script_component.hpp";

params ["_box"];

_box addEventHandler ["ContainerOpened", {
		params ["_container", "_unit"];
        if ((_container getVariable ["locked", false])) then {
            [] spawn {
                waitUntil{!isNull findDisplay 602};
                closeDialog 1;
            };
        };
}];

_box addAction ["  <t color='#ff0000'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getout_ca'/>Lock Crate</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target, ["locked", true]] remoteExec ["setvariable", 0, true];
    },
    nil,
    1.5,
    true,
    true,
    "",
    "!(_target getVariable ['locked', false]) && (player getVariable ['instructor',false])", // _target, _this, _originalTarget
    5,
    false,
    "",
    ""
];

_box addAction ["  <t color='#00ff00'><img size='1' image='\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getin_ca'/>Unlock Crate</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target, ["locked", false]] remoteExec ["setvariable", 0, true];
    },
    nil,
    1.5,
    true,
    true,
    "",
    "(_target getVariable ['locked', false]) && (player getVariable ['instructor',false])", // _target, _this, _originalTarget
    5,
    false,
    "",
    ""
];
