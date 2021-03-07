params ["_player","","","","_thing"];

private _rtt = objNull;
private _rtt2 = "";
private _display = objNull;
private _screen = 0;

if (_player inArea MAAWS_1) then {_rtt = "rtt_MAAWS_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_1,1)"; _display = MAAWS_Display_1; _screen = 0};
if (_player inArea MAAWS_2) then {_rtt = "rtt_MAAWS_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_2,1)"; _display = MAAWS_Display_2; _screen = 0};
if (_player inArea MAAWS_3) then {_rtt = "rtt_MAAWS_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_3,1)"; _display = MAAWS_Display_3; _screen = 0};
if (_player inArea MAAWS_4) then {_rtt = "rtt_MAAWS_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_4,1)"; _display = MAAWS_Display_4; _screen = 0};
if (_player inArea MAAWS_5) then {_rtt = "rtt_MAAWS_5"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_5,1)"; _display = MAAWS_Display_5; _screen = 0};
if (_player inArea MAAWS_6) then {_rtt = "rtt_MAAWS_6"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_6,1)"; _display = MAAWS_Display_6; _screen = 0};
if (_player inArea MAAWS_7) then {_rtt = "rtt_MAAWS_7"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_7,1)"; _display = MAAWS_Display_7; _screen = 0};
if (_player inArea MAAWS_8) then {_rtt = "rtt_MAAWS_8"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_8,1)"; _display = MAAWS_Display_8; _screen = 0};

private _projectile = nearestobject [_player, _this select 4];

_list = [
    "rhs_ammo_M136_rocket",
    "rhs_ammo_M136_hedp_rocket",
    "rhs_ammo_M136_hp_rocket",
    "tf47_at4_m_HEAT",
    "tf47_at4_m_HEDP",
    "tf47_at4_m_HP",
    "rhs_ammo_m72a7_rocket",
    "rhs_ammo_maaws_HE",
    "rhs_ammo_maaws_HEDP",
    "rhs_ammo_maaws_HEAT",
    "R_MRAAWS_HEAT_F",
    "R_MRAAWS_HEAT55_F",
    "R_MRAAWS_HE_F",
    "tf47_m3maaws_HE",
    "tf47_m3maaws_HEAT",
    "tf47_m3maaws_HEDP",
    "tf47_m3maaws_SMOKE",
    "tf47_m3maaws_ILLUM",
    "rhs_ammo_M_fgm148_AT",
    "rhs_ammo_fim92_missile",
    "tf47_smaw_HEDP",
    "tf47_smaw_HEAA",
    "tf47_smaw_NE",
    "rhs_ammo_TOW_AT",
    "rhs_ammo_TOWB_AT",
    "rhs_ammo_ITOW_AT",
    "rhs_ammo_TOW2_AT_static",
    "rhs_ammo_TOW2A_AT",
    "rhs_ammo_TOW2B_AT",
    "rhs_ammo_TOW2B_AERO_AT",
    "rhs_ammo_TOW2_BB",
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
        _camera camSetRelPos [0,-4,.25];
        _camera camCommit 0;
        _camera camSetFov .4; //Zoom
        sleep 0.001;
    _display setObjectTexture [_screen, _rtt2];
    };

    if(alive _camera)then{sleep 3};
    _camera cameraeffect ["terminate", "back", _rtt];
    camdestroy _camera;
    _display setObjectTexture [_screen, ""];
};