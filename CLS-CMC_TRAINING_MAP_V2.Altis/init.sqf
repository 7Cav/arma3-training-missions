/*           RULES            */

    {
        _x setSkill ["aimingspeed", 0.42];
        _x setSkill ["aimingaccuracy", 0.338];
        _x setSkill ["aimingshake", 0.36];
        _x setSkill ["spottime", 0.42];
        _x setSkill ["spotdistance", 0.7];
        _x setSkill ["commanding", 1.0];
        _x setSkill ["general", 1.0];
    } forEach allUnits;

/*           TFAR            */
    
    tf_no_auto_long_range_radio                 = true;
    TF_give_personal_radio_to_regular_soldier   = true;
    TF_give_microdagr_to_soldier                = false;
    TF_defaultWestPersonalRadio                 = "tf_rf7800str";
    TF_defaultWestRiflemanRadio                 = "tf_anprc152";
    TF_defaultWestAirborneRadio                 = "tf_anprc152";
    TF_defaultWestBackpack                      = "tf_rt1523g_big_rhs";
    
    TF_terrain_interception_coefficient         = 7.0; //Coefficient defining the level of radio signal interruption caused by terrain.
    
/*           MODUELS            */
{
    addFRIES = _x addEventHandler ["CuratorObjectPlaced", {
        _helo = ["RHS_UH60M","RHS_UH60M_MEV","RHS_UH60M_MEV2","RHS_UH60M_d","RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F","RHS_UH1Y","RHS_UH1Y_FFAR","RHS_UH1Y_GS","RHS_UH1Y_UNARMED","RHS_UH1Y_d","RHS_UH1Y_FFAR_d","RHS_UH1Y_d_GS","RHS_UH1Y_UNARMED_d"];
        _entity = _this select 1;
        if (_entity isKindOf "Helicopter") then {
            [_entity] call ace_fastroping_fnc_equipFRIES;
        };
        if ((typeOf _entity) in _helo) then {
            [_entity] call cScripts_fnc_addGetOutUH60;
        };
    }];
} forEach allCurators;