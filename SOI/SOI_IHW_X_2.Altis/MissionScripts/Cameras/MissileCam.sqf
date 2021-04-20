params ["_player","","","","_thing"];

private _rtt = objNull;
private _rtt2 = "";
private _display = objNull;
private _screen = 0;

if (_player inArea AT4_1) then {_rtt = "rtt_AT4_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT4_1,1)"; _display = AT4_Display_1; _screen = 0};
if (_player inArea AT4_2) then {_rtt = "rtt_AT4_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT4_2,1)"; _display = AT4_Display_1; _screen = 1};
if (_player inArea AT4_3) then {_rtt = "rtt_AT4_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT4_3,1)"; _display = AT4_Display_2; _screen = 0};
if (_player inArea AT4_4) then {_rtt = "rtt_AT4_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT4_4,1)"; _display = AT4_Display_2; _screen = 1};
if (_player inArea MAAWS_1) then {_rtt = "rtt_MAAWS_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_1,1)"; _display = MAAWS_Display_1; _screen = 0};
if (_player inArea MAAWS_2) then {_rtt = "rtt_MAAWS_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_2,1)"; _display = MAAWS_Display_1; _screen = 1};
if (_player inArea MAAWS_3) then {_rtt = "rtt_MAAWS_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_3,1)"; _display = MAAWS_Display_2; _screen = 0};
if (_player inArea MAAWS_4) then {_rtt = "rtt_MAAWS_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_MAAWS_4,1)"; _display = MAAWS_Display_2; _screen = 1};
if (_player inArea CCMS_1) then {_rtt = "rtt_CCMS_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_CCMS_1,1)"; _display = CCMS_Display_1; _screen = 0};
if (_player inArea CCMS_2) then {_rtt = "rtt_CCMS_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_CCMS_2,1)"; _display = CCMS_Display_1; _screen = 1};
if (_player inArea CCMS_3) then {_rtt = "rtt_CCMS_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_CCMS_3,1)"; _display = CCMS_Display_2; _screen = 0};
if (_player inArea CCMS_4) then {_rtt = "rtt_CCMS_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_CCMS_4,1)"; _display = CCMS_Display_2; _screen = 1};
if (_player inArea TOW_1) then {_rtt = "rtt_TOW_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_TOW_1,1)"; _display = TOW_Display_1; _screen = 0};
if (_player inArea TOW_2) then {_rtt = "rtt_TOW_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_TOW_2,1)"; _display = TOW_Display_1; _screen = 1};
if (_player inArea TOW_3) then {_rtt = "rtt_TOW_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_TOW_3,1)"; _display = TOW_Display_2; _screen = 0};
if (_player inArea TOW_4) then {_rtt = "rtt_TOW_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_TOW_4,1)"; _display = TOW_Display_2; _screen = 1};
if (_player inArea mortar60_1) then {_rtt = "rtt_mortar60_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_1,1)"; _display = mortar60_Display_1; _screen = 0};
if (_player inArea mortar60_2) then {_rtt = "rtt_mortar60_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_2,1)"; _display = mortar60_Display_1; _screen = 1};
if (_player inArea mortar60_3) then {_rtt = "rtt_mortar60_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_3,1)"; _display = mortar60_Display_2; _screen = 0};
if (_player inArea mortar60_4) then {_rtt = "rtt_mortar60_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar60_4,1)"; _display = mortar60_Display_2; _screen = 1};
if (_player inArea mortar82_1) then {_rtt = "rtt_mortar82_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_1,1)"; _display = mortar82_Display_1; _screen = 0};
if (_player inArea mortar82_2) then {_rtt = "rtt_mortar82_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_2,1)"; _display = mortar82_Display_1; _screen = 1};
if (_player inArea mortar82_3) then {_rtt = "rtt_mortar82_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_3,1)"; _display = mortar82_Display_2; _screen = 0};
if (_player inArea mortar82_4) then {_rtt = "rtt_mortar82_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_mortar82_4,1)"; _display = mortar82_Display_2; _screen = 1};

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
            _camera camSetRelPos [0,-2,.5];
    _camera camCommit 0;
            sleep 0.001;
    _display setObjectTexture [_screen, _rtt2];
    };

    if(alive _camera)then{sleep 3};
    _camera cameraeffect ["terminate", "back", _rtt];
    camdestroy _camera;
    _display setObjectTexture [_screen, "Data\StandBy.paa"];
};