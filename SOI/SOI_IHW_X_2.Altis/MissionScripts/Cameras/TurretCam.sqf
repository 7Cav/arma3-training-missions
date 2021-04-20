this addeventhandler ["fired",{

    _projectile = nearestobject [_this select 0,_this select 4];
    
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
        "NDS_A_60mm_SMOKE"
    ];

    if((_this select 4) in _list)then{
    _camera = "camera" camCreate [0,0,0];
    _camera cameraeffect ["internal", "back", "rtt21"];
    while{alive _projectile && alive _camera}do{
        _camera camSetTarget _projectile;
        _camera camSetRelPos [0,-2,.5];
        _camera camCommit 0;
        sleep 0.001;
        cameraDisplay_11 setObjectTexture [0, "#(argb,512,512,1)r2t(rtt21,1)"];
    };

    if(alive _camera)then{sleep 1};
    _camera cameraeffect ["terminate", "back", "rtt21"];
    camdestroy _camera;
    cameraDisplay_11 setObjectTexture [0, "StandBy.paa"];
    };
}];