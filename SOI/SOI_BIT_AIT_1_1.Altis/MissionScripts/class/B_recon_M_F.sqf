private _state = param [0, "", [""]];

if (_state == "init") then
{
	[] call HUD_SpecOps_Initialize;

	player setVariable ["SPM_BranchOfService", "special-forces", true];

};
