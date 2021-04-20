params ["_player","","","","_thing"];

private _rtt = objNull;
private _rtt2 = "";
private _display = objNull;
private _display2 = objNull;
private _screen = 0;

if (_player inArea mortar60_1) then {_rtt = "rtt_mortar60_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_1,1)"; _display = mortar60_Display_1; _display2 = mortar60_Display2_1; _screen = 0};
if (_player inArea mortar60_2) then {_rtt = "rtt_mortar60_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_2,1)"; _display = mortar60_Display_2; _display2 = mortar60_Display2_2; _screen = 0};
if (_player inArea mortar60_3) then {_rtt = "rtt_mortar60_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_3,1)"; _display = mortar60_Display_3; _display2 = mortar60_Display2_3; _screen = 0};
if (_player inArea mortar60_4) then {_rtt = "rtt_mortar60_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_4,1)"; _display = mortar60_Display_4; _display2 = mortar60_Display2_4; _screen = 0};
if (_player inArea mortar82_1) then {_rtt = "rtt_mortar82_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_1,1)"; _display = mortar82_Display_1; _display2 = mortar82_Display2_1; _screen = 0};
if (_player inArea mortar82_2) then {_rtt = "rtt_mortar82_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_2,1)"; _display = mortar82_Display_2; _display2 = mortar82_Display2_2; _screen = 0};
if (_player inArea mortar82_3) then {_rtt = "rtt_mortar82_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_3,1)"; _display = mortar82_Display_3; _display2 = mortar82_Display2_3; _screen = 0};
if (_player inArea mortar82_4) then {_rtt = "rtt_mortar82_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_4,1)"; _display = mortar82_Display_4; _display2 = mortar82_Display2_4; _screen = 0};

private _projectile = nearestobject [_player, _this select 4];

_list = [
    "Sh_82mm_AMOS",
    "Sh_82mm_AMOS_guided",
    "Sh_82mm_AMOS_LG",
    "Smoke_82mm_AMOS_White",
    "Flare_82mm_AMOS_White",
    "NDS_A_60mm_HE",
    "NDS_A_60mm_HE_0",
    "NDS_A_60mm_SMOKE",
    "NDS_A_60mm_ILLUM"
];

if(_thing in _list)then{
    private _camera = "camera" camCreate [0,0,0];
    _camera cameraeffect ["internal", "back", _rtt];
    while{alive _projectile && alive _camera}do{
        _camera camSetTarget _projectile;
            _camera camSetRelPos [0,-2,.5];
    _camera camCommit 0;
            sleep 0.001;
    _display setObjectTexture [_screen, _rtt2];
    _display2 setObjectTexture [_screen, _rtt2];
    };

    if(alive _camera)then{sleep 3};
    _camera cameraeffect ["terminate", "back", _rtt];
    camdestroy _camera;
    _display setObjectTexture [_screen, ""];
    _display2 setObjectTexture [_screen, ""];
};