private _state = param [0, "", [""]];

if (_state == "init") then
{
	[] call HUD_Pilot_Initialize;

	player setVariable ["SPM_BranchOfService", "air"];

};
