params ["_player","","","","_thing"];

private _rtt = objNull;
private _rtt2 = "";
private _display = objNull;
private _screen = 0;

if (_player inArea at_lane1_shootingPosArea) then {_rtt = "rtt_AT_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_1,1)"; _display = at_lane1_laptop; _screen = 1};
if (_player inArea at_lane2_shootingPosArea) then {_rtt = "rtt_AT_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_2,1)"; _display = at_lane2_laptop; _screen = 1};
if (_player inArea at_lane3_shootingPosArea) then {_rtt = "rtt_AT_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_3,1)"; _display = at_lane3_laptop; _screen = 1};
if (_player inArea at_lane4_shootingPosArea) then {_rtt = "rtt_AT_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_4,1)"; _display = at_lane4_laptop; _screen = 1};
if (_player inArea at_lane5_shootingPosArea) then {_rtt = "rtt_AT_5"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_5,1)"; _display = at_lane5_laptop; _screen = 1};
if (_player inArea at_lane6_shootingPosArea) then {_rtt = "rtt_AT_6"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_6,1)"; _display = at_lane6_laptop; _screen = 1};
if (_player inArea at_lane7_shootingPosArea) then {_rtt = "rtt_AT_7"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_7,1)"; _display = at_lane7_laptop; _screen = 1};
if (_player inArea at_lane8_shootingPosArea) then {_rtt = "rtt_AT_8"; _rtt2 = "#(argb,512,512,1)r2t(rtt_AT_8,1)"; _display = at_lane8_laptop; _screen = 1};
if (_player inArea gr_lane1_shootingPosArea) then {_rtt = "rtt_GR_1"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_1,1)"; _display = gr_lane1_laptop; _screen = 1};
if (_player inArea gr_lane2_shootingPosArea) then {_rtt = "rtt_GR_2"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_2,1)"; _display = gr_lane2_laptop; _screen = 1};
if (_player inArea gr_lane3_shootingPosArea) then {_rtt = "rtt_GR_3"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_3,1)"; _display = gr_lane3_laptop; _screen = 1};
if (_player inArea gr_lane4_shootingPosArea) then {_rtt = "rtt_GR_4"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_4,1)"; _display = gr_lane4_laptop; _screen = 1};
if (_player inArea gr_lane5_shootingPosArea) then {_rtt = "rtt_GR_5"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_5,1)"; _display = gr_lane5_laptop; _screen = 1};
if (_player inArea gr_lane6_shootingPosArea) then {_rtt = "rtt_GR_6"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_6,1)"; _display = gr_lane6_laptop; _screen = 1};
if (_player inArea gr_lane7_shootingPosArea) then {_rtt = "rtt_GR_7"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_7,1)"; _display = gr_lane7_laptop; _screen = 1};
if (_player inArea gr_lane8_shootingPosArea) then {_rtt = "rtt_GR_8"; _rtt2 = "#(argb,512,512,1)r2t(rtt_GR_8,1)"; _display = gr_lane8_laptop; _screen = 1};

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
    "NDS_A_60mm_ILLUM",
    "rhsusf_40mm_HE",
    "rhsusf_40mm_HEDP",
    "rhsusf_40mm_Practice"
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