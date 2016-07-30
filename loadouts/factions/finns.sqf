
// INFO ========================================================================
/*
    Tasked with the defence of Finland's national borders and sovereign interests, the Finnish Armed Forces
	are a highly-mobilized military force with large combined-arms capabilities.

        SPRÍLÍLÍLÍLÍ :8-----DDDDDDDDDDxdddddDDD
*/

_factionID = "FINNS";
_factionName = "Finnish Army";
_factionStructure = "HIGH-TIER";

_factionCallsigns = _defaultCallsignBLUFOR;

_defaultSide = WEST;
_defaultVoice = [_voiceRUSSIAN];
_defaultFace = [_faceWHITE];
_defaultInsignia = "";
_defaultColor = "blue";

// WEAPONS =====================================================================

_commonRIFLE = _G3KA4;
_commonRIFLEGL = _G3KA4GL;
_commonPISTOL = _G17;
_commonMG = _Minimi765;
_commonMARKSMAN = _G3KA4;
_commonSNIPER = _SVDS;
_commonAT = _AT4;
_specAT = _MAAWS;
_commonSMG = _Mk20C;
_commonRCO = "optic_MRCO";
_commonCCO = _EOT;
_commonMAGNIFIED = "rhs_acc_pso1m2";
_commonSUPPRESSOR = "muzzle_snds_B";
_commonPISTOLSUPPRESSOR = "RH_gemtech9";
_NVG = _NVGEN4;

// AMMO COUNT ==================================================================

_countRIFLE = 9;
_countRIFLELOW = 6;
_countPISTOL = 2;
_countMG = 5;
_countSNIPER = 5;
_countAT = 3;
_countGRENADES = 3;
_count40mm = 15;

_countTracerRIFLE = 2;
_countTracerMG = 1;
_countHE = 1;

_countRifleCARGO = 30;
_countPistolCARGO = 10;
_countMgCARGO = 20;
_countSniperCARGO = 30;
_countATCARGO = 15;
_countGrenadesCARGO = 20;
_count40mmCARGO = 40;

// MEDICAL =====================================================================

_countBANDAGE = 20;
_countMORPHINE = 10;
_countEPI = 5;
_countCAT = 3;
_countBLOODBAG = 5;
_countPAK = 2;

_countBandageCARGO = 40;
_countMorphineCARGO = 30;
_countEpiCARGO = 20;
_countBloodbagCARGO = 20;
_countPAKCARGO = 10;

// UNIFORMS ====================================================================

_uniformsLIST = [
    "MNP_CombatUniform_Fin_A",
    "MNP_CombatUniform_Fin_B"
];

_vestsLIST = [
    "MNP_Vest_FIN_1",
    "MNP_Vest_FIN_2"
];

_randomUNIFORM = _uniformsLIST call BIS_fnc_selectRandom;
_randomVEST = _vestsLIST call BIS_fnc_selectRandom;

_commonHEAD = "MNP_Helmet_FIN_T";
_leaderHEAD = _commonHEAD;
_officerHEAD = "H_MilCap_dgtl";
_medicHEAD = "H_Bandanna_cbr";
_crewmanHEAD = "rhsusf_cvc_ess";
_pilotHEAD = "rhsusf_hgu56p";
_helicrewHEAD = "rhsusf_hgu56p_mask";
_helipilotHEAD = "rhsusf_hgu56p";
_sniperHEAD = "MNP_Boonie_FIN";
_demoHEAD = _commonHEAD;
_reconHEAD = "MNP_Boonie_FIN";

_commonUNIFORM = _randomUNIFORM;
_officerUNIFORM = _commonUNIFORM;
_pilotUNIFORM = _commonUNIFORM;
_sniperUNIFORM = _commonUNIFORM;
_marksmanUNIFORM = _commonUNIFORM;
_helicrewUNIFORM = _commonUNIFORM;
_crewUNIFORM = _commonUNIFORM;
_mgUNIFORM = _commonUNIFORM;
_medicUNIFORM = _commonUNIFORM;
_demoUNIFORM = _commonUNIFORM;
_reconUNIFORM = _commonUNIFORM;

_commonVEST = _randomVEST;
_officerVEST = _commonVEST;
_ftlVEST = _commonVEST;
_slVEST = _commonVEST;
_mgVEST = _commonVEST;
_grenadierVEST = _commonVEST;
_medicVEST = _commonVEST;
_demoVEST = _commonVEST;
_marksmanVEST = _commonVEST;
_reconVEST = _commonVEST;

_commonBACKPACK = "MNP_B_WD_FP";
_bigBACKPACK = "MNP_B_WD_CA";

// EXTRA EQUIPMENT =============================================================

_HMG = "RHS_M2_Gun_Bag";
_HMGTripod = "RHS_M2_Tripod_Bag";

_StaticAT = "rhs_Tow_Gun_Bag";
_ATTripod = "rhs_TOW_Tripod_Bag";

_mortar = "rhs_M252_Gun_Bag";
_mortarTripod = "rhs_M252_Bipod_Bag";

_UAVBag = "auto";
_UAVTerminal = "auto";

// VEHICLES ====================================================================

_factionVehicles = [
/* 0 - Anti Air Vehicles */	 ["B_APC_Tracked_01_AA_F", "RHS_M6_wd"]
/* 1 - Attack Helos      */	,["RHS_AH1Z_CS", "RHS_AH1Z_GS", "RHS_AH64D_wd_AA", "RHS_AH64D_wd_CS", "RHS_AH64D_wd_GS", "RHS_AH64D_wd", "RHS_AH64DGrey"]
/* 2 - Attack Planes     */	,["RHS_A10_AT", "RHS_A10", "rhsusf_f22"]
/* 3 - Heavy Vehicles    */	,["rhsusf_m1a1aimwd_usarmy", "rhsusf_m1a1aim_tuski_wd", "rhsusf_m1a2sep1wd_usarmy", "rhsusf_m1a2sep1tuskiwd_usarmy", "rhsusf_m1a2sep1tuskiiwd_usarmy"]
/* 4 - Light Vehicles    */	,["rhsusf_m1025_w_m2", "rhsusf_m1025_w", "rhsusf_m998_w_2dr_fulltop", "rhsusf_m998_w_4dr_fulltop", "rhsusf_m998_w_4dr", "rhsusf_rg33_w", "rhsusf_rg33_m2_w", "rhsusf_M1117_W"]
/* 5 - Medium Vehicles   */	,["RHS_M2A2_wd", "RHS_M2A2_BUSKI_WD", "RHS_M2A3_wd", "RHS_M2A3_BUSKI_wd", "RHS_M2A3_BUSKIII_wd", "rhsusf_m113_usarmy", "rhsusf_m113_usarmy_M240"]
/* 6 - Mobile Artillery  */	,["rhsusf_m109_usarmy", "rhsusf_m109_usarmy"]
/* 7 - Transport Helos   */	,["RHS_CH_47F_10", "RHS_CH_47F_light", "rhsusf_CH53E_USMC", "RHS_UH1Y_FFAR", "RHS_MELB_MH6M", "RHS_MELB_H6M"]
/* 8 - Transport Planes  */	,["RHS_C130J", "RHS_C130J"]
/* 9 - Transport Trucks  */	,["rhsusf_M1078A1P2_wd_fmtv_usarmy", "rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy", "rhsusf_M977A4_usarmy_wd"]
/*10 - Static Defence    */	,["RHS_Stinger_AA_pod_D", "RHS_M2StaticMG_D", "RHS_M2StaticMG_MiniTripod_D", "RHS_TOW_TriPod_D"]
/*11 - Boats             */	,["B_Boat_Transport_01_F", "B_Boat_Armed_01_minigun_F"]
/*12 - UAV               */	,["B_UAV_02_CAS_F","B_UAV_02_F"]
/*13 - UGV               */	,["B_UGV_01_F","B_UGV_01_rcws_F"]
/*14 - Support           */	,["rhsusf_M977A4_REPAIR_usarmy_wd","rhsusf_M977A4_AMMO_BKIT_usarmy_wd", "B_Truck_01_fuel_F"]
/*15 - Submarines        */	,["B_SDV_01_F"]
];

// OBJECTS =====================================================================

_factionObjects = [
/* Flag         */ "Flag_Blue_F",
/* Objects      */ ["B_CargoNet_01_ammo_F"],
/* Walls        */ ["Land_HBarrierWall4_F"],
/* Structures   */ ["Land_Cargo_House_V3_F"]
];

// =============================================================================