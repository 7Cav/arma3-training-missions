// Configurable spawn lists
// Don't forget a comma after every item on each array, except the last one!

// These will be sorted later, first by side, then by display name. Order here does not matter.

list_spawn_combatVehicle = [
	"rhsusf_m1025_w_m2",
	"rhsusf_m1025_w_mk19",
	"rhsusf_m1025_w",
	"rhsusf_m998_w_2dr_fulltop",
	"rhsusf_m998_w_2dr_halftop",
	"rhsusf_m998_w_2dr",
	"rhsusf_m998_w_4dr_fulltop",
	"rhsusf_m998_w_4dr_halftop",
	"rhsusf_m998_w_4dr",
	"rhsusf_m113_usarmy",
	"RHS_M2A2_wd",
	"RHS_M2A3_wd",
	"rhsusf_m1a2sep1wd_usarmy"
];

list_spawn_medical = [
	"RHS_UH60M_MEV2",
	"RHS_UH60M_MEV",
	"rhsusf_m113_usarmy_medical",
	"M1133_MEV_DG1_NOSLATWOOD",
	"M1133_MEV_DG1_SLATWOOD"
];

list_spawn_rotary_small_hangar = [
	"RHS_AH64D",
	"RHS_MELB_AH6M",
	"RHS_MELB_MH6M",
	"RHS_MELB_H6M"
];

list_spawn_rotary_large_hangar = list_spawn_rotary_small_hangar + [
	"RHS_UH60M"
];

list_spawn_rotary_official_small_hangar = [
	"Cav_Alpha_AH64D",
	"Cav_Alpha_UH60M",
	"Cav_Alpha_UH60M2",
	"Cav_Alpha_UH60M_MEV2",
	"RHS_MELB_AH6M",
	"RHS_MELB_MH6M",
	"RHS_MELB_H6M"
];

list_spawn_rotary_official = list_spawn_rotary_official_small_hangar + [
	"Cav_Alpha_CH_47F"
];

list_spawn_rotary = list_spawn_rotary_large_hangar + [
	"RHS_AH1Z_wd",
	"RHS_CH_47F",
	"rhsusf_CH53E_USMC",
	"RHS_UH1Y_UNARMED",
	"RHS_UH1Y_FFAR",
	"RHS_UH1Y"
];

list_spawn_fixedWing_small_hangar = [
	"FIR_A10A",
	"FIR_A10C",
	"FIR_F15C",
	"FIR_F15D",
	"FIR_F15E",
	"FIR_F16C",
	"FIR_F16D",
	"B_Plane_Fighter_01_F",
	"B_Plane_Fighter_01_Stealth_F",
	"B_Plane_CAS_01_dynamicLoadout_F",
	"rhs_l159_cdf_b_CDF",
	"rhs_l159_cdf_b_CDF_CAP",
	"rhs_l159_cdf_b_CDF_CAS",
	"rhsusf_f22",
	"RHS_A10",
	"RHS_AN2_B",
	"I_Plane_Fighter_04_F",
	"O_Plane_Fighter_02_F",
	"O_Plane_Fighter_02_Stealth_F",
	"O_Plane_CAS_02_dynamicLoadout_F",
	"rhs_mig29s_vmf",
	"RHS_Su25SM_vvs",
	"RHS_T50_vvs_generic",
	"RHS_T50_vvs_generic_ext",
	"C_Plane_Civil_01_F"
];

list_spawn_fixedWing_large_hangar = list_spawn_fixedWing_small_hangar + [
	"O_T_VTOL_02_infantry_dynamicLoadout_F",
	"FIR_F16D_CFTTEST"
];

list_spawn_fixedWing = list_spawn_fixedWing_large_hangar + [
	"B_T_VTOL_01_infantry_F",
	"B_T_VTOL_01_vehicle_F",
	"B_T_VTOL_01_armed_F",
	"RHS_C130J"
];

list_spawn_fixedWing_official_small_hangar = [
	"B_Plane_CAS_01_dynamicLoadout_F",
	"Cav_Alpha_A10",
	"FIR_A10C",
	"Cav_Alpha_F16C",
	"FIR_F16D",
	"B_Plane_Fighter_01_F",
	"B_Plane_Fighter_01_Stealth_F"
];

list_spawn_fixedWing_official = list_spawn_fixedWing_official_small_hangar + [
	"Cav_Alpha_C130J"
];

list_spawn_mixed_official_small_hangar = list_spawn_fixedWing_official_small_hangar + list_spawn_rotary_official_small_hangar;
list_spawn_mixed_official_large_hangar = list_spawn_rotary_official + list_spawn_fixedWing_official;

list_spawn_combined_small_hangar = list_spawn_rotary_small_hangar + list_spawn_fixedWing_small_hangar;
list_spawn_combined_large_hangar = list_spawn_rotary_large_hangar + list_spawn_fixedWing_large_hangar;
list_spawn_combined = list_spawn_rotary + list_spawn_fixedWing;

list_spawn_carrier = [
	"B_Plane_Fighter_01_F",
	"B_Plane_Fighter_01_Stealth_F",
	"RHS_UH60M",
	"RHS_UH60M_MEV2",
	"O_T_VTOL_02_infantry_dynamicLoadout_F",
	"rhsusf_CH53E_USMC"
];
