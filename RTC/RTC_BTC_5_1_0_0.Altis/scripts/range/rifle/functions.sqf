
_loudSpeaker = {
	_sound = _this select 0;
	[_speaker,[_sound, 400]] remoteExec ["say3d"];
};

_loudSpeakerVoice = {
	if(rangemaster_voice) then {
		_sound = _this select 0;
		[_speaker,[_sound, 400]] remoteExec ["say3d"];
	};
};

_rangeMessage = {
	_message = _this select 0;
	[_message,"hintSilent"] call BIS_fnc_MP;
};