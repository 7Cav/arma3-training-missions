
#include "..\script_component.hpp";

private _elapsedMinutes = 0;
private _incrementMinutes = 15;

while {true} do
{
    sleep (_incrementMinutes * 60);
	_elapsedMinutes = _elapsedMinutes + _incrementMinutes;

	_hours = floor(_elapsedMinutes / 60);
	_minutes = _elapsedMinutes % 60;

	_header = parseText "<t color='#FFD700'><img image='\a3\ui_f\data\GUI\Rsc\RscDisplayArsenal\watch_ca.paa'/></t> Elapsed Time:";
	_header setAttributes ["size", "2"];
	_formatedTime = parseText format ["%1h %2m", _hours, _minutes];
	_formatedTime setAttributes ["size", "2"];

	_structuredText = composeText [lineBreak, _header, lineBreak, _formatedTime, lineBreak];

	if(
		typeOf player == "Cav_B_Training_Cadre_F"
	) then {
		hintSilent _structuredText;
		sleep 15;
		hintSilent "";
	};
};
