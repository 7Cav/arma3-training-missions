params ["_target"];

_target addEventHandler ["hitPart", {
  (_this select 0) params ["_target"];
  _target animateSource ["Terc",1];
  _target setDamage 0;
}];