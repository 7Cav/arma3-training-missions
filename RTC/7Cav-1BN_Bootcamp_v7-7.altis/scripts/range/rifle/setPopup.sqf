if(!isServer) exitWith {};

/*
popup_rifle = "rifle"
popup_shoothouse = "shoothouse"
popup_grenade = "grenade"
*/

_trigger = _this select 0;
_value = if(count _this > 1) then {_this select 1} else {nil};

if(!isNil "_value") then { // call gave value
	switch(_trigger) do {
		case "rifle" : {
			popup_rifle = _value;
			publicVariable "popup_rifle";
			
			[] call popup_hint;
		};
		case "shoothouse" : {
			popup_shoothouse = _value;
			publicVariable "popup_shoothouse";
			[] call popup_hint;
		};
		case "grenade" : {
			popup_grenade = _value;
			publicVariable "popup_grenade";
			[] call popup_hint;
		};
	};
} else { // just toggle it
	switch(_trigger) do {
		case "rifle" : {
			popup_rifle = !popup_rifle;
			publicVariable "popup_rifle";
			[] call popup_hint;
		};
		case "shoothouse" : {
			popup_shoothouse = !popup_shoothouse;
			publicVariable "popup_shoothouse";
			[] call popup_hint;
		};
		case "grenade" : {
			popup_grenade = !popup_grenade;
			publicVariable "popup_grenade";
			[] call popup_hint;
		};
	};
};
