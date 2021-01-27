_tailrotorfailure =  _this addAction ["Tail rotor failure", "AirFailurePad\tailrotor.sqf"];
_enginefailure = _this addAction ["Engine failure", "AirFailurePad\engine.sqf"];
_repairall = _this addAction ["Repair all", "AirFailurePad\repair.sqf"];
hint format ["Tail Rotor Failure = %1. Engine Failure = %2.  Repair All = %3.", _tailrotorfailure, _enginefailure,_repairall];

