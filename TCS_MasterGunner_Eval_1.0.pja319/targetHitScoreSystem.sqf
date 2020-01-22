params ["_unit"];

_unit addEventHandler ["Hit", {
    params ["_unit", "_source", "_damage", "_instigator"];
    if (_unit getVariable "isTargetHit") exitwith {};

    _unit setVariable ["isTargetHit", True];
    TANKSCORE = TANKSCORE + 1;
    [format["%1 Target Hit Your Score Is %2", name player, TANKSCORE],"hint",true] call BIS_fnc_MP;

}];