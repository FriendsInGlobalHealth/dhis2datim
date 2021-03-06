SELECT district.name || ' / ' || ou.name AS facility,
'' AS placeholder1,
/*Auto-Calculate*/
/*HTS_TST_num*/
(
/*HTS_TST (Facility) - PITC Inpatient Services*/
COALESCE(atip_enf_0_8_f_pos.value,0)+
COALESCE(atip_enf_0_8_f_neg.value,0)+
COALESCE(atip_enf_0_8_m_pos.value,0)+
COALESCE(atip_enf_0_8_m_neg.value,0)+
(COALESCE(atip_enf_9_18_f_pos.value,0)+COALESCE(atip_enf_19_4_f_pos.value,0))+
(COALESCE(atip_enf_9_18_f_neg.value,0)+COALESCE(atip_enf_19_4_f_neg.value,0))+
(COALESCE(atip_enf_9_18_m_pos.value,0)+COALESCE(atip_enf_19_4_m_pos.value,0))+
(COALESCE(atip_enf_9_18_m_neg.value,0)+COALESCE(atip_enf_19_4_m_neg.value,0))+
COALESCE(atip_enf_5_9_f_pos.value,0)+
COALESCE(atip_enf_5_9_f_neg.value,0)+
COALESCE(atip_enf_5_9_m_pos.value,0)+
COALESCE(atip_enf_5_9_m_neg.value,0)+
COALESCE(atip_enf_10_14_f_pos.value,0)+
COALESCE(atip_enf_10_14_f_neg.value,0)+
COALESCE(atip_enf_10_14_m_pos.value,0)+
COALESCE(atip_enf_10_14_m_neg.value,0)+
COALESCE(atip_enf_15_19_f_pos.value,0)+
COALESCE(atip_enf_15_19_f_neg.value,0)+
COALESCE(atip_enf_15_19_m_pos.value,0)+
COALESCE(atip_enf_15_19_m_neg.value,0)+
COALESCE(atip_enf_20_24_f_pos.value,0)+
COALESCE(atip_enf_20_24_f_neg.value,0)+
COALESCE(atip_enf_20_24_m_pos.value,0)+
COALESCE(atip_enf_20_24_m_neg.value,0)+
(COALESCE(atip_enf_25_29_f_pos.value,0)+COALESCE(atip_enf_30_49_f_pos.value,0))+
(COALESCE(atip_enf_25_29_f_neg.value,0)+COALESCE(atip_enf_30_49_f_neg.value,0))+
(COALESCE(atip_enf_25_29_m_pos.value,0)+COALESCE(atip_enf_30_49_m_pos.value,0))+
(COALESCE(atip_enf_25_29_m_neg.value,0)+COALESCE(atip_enf_30_49_m_neg.value,0))+
COALESCE(atip_enf_50_f_pos.value,0)+
COALESCE(atip_enf_50_f_neg.value,0)+
COALESCE(atip_enf_50_m_pos.value,0)+
COALESCE(atip_enf_50_m_neg.value,0)+
/*HTS_TST (Facility)-PITC Pediatric Services*/
COALESCE(atip_ped_19_4_f_pos.value,0)+
COALESCE(atip_ped_19_4_f_neg.value,0)+
COALESCE(atip_ped_19_4_m_pos.value,0)+
COALESCE(atip_ped_19_4_m_neg.value,0)+
/*HTS_TST (Facility)-PITC-TB Clinics*/
COALESCE(HTS_TST_TB_men1_f_pos.value,0)+
COALESCE(HTS_TST_TB_men1_f_neg.value,0)+
COALESCE(HTS_TST_TB_men1_m_pos.value,0)+
COALESCE(HTS_TST_TB_men1_m_neg.value,0)+
COALESCE(HTS_TST_TB_1_4_f_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_f_neg.value,0)+
COALESCE(HTS_TST_TB_1_4_m_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_m_neg.value,0)+
COALESCE(HTS_TST_TB_5_9_f_pos.value,0)+
COALESCE(HTS_TST_TB_5_9_f_neg.value,0)+
COALESCE(HTS_TST_TB_5_9_m_pos.value,0)+
COALESCE(HTS_TST_TB_5_9_m_neg.value,0)+
COALESCE(HTS_TST_TB_10_14_f_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_f_neg.value,0)+
COALESCE(HTS_TST_TB_10_14_m_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_m_neg.value,0)+
COALESCE(HTS_TST_TB_15_19_f_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_f_neg.value,0)+
COALESCE(HTS_TST_TB_15_19_m_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_m_neg.value,0)+
COALESCE(HTS_TST_TB_20_24_f_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_f_neg.value,0)+
COALESCE(HTS_TST_TB_20_24_m_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_m_neg.value,0)+
COALESCE(HTS_TST_TB_25_29_f_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_f_neg.value,0)+
COALESCE(HTS_TST_TB_25_29_m_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_m_neg.value,0)+
COALESCE(HTS_TST_TB_30_34_f_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_f_neg.value,0)+
COALESCE(HTS_TST_TB_30_34_m_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_m_neg.value,0)+
COALESCE(HTS_TST_TB_35_39_f_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_f_neg.value,0)+
COALESCE(HTS_TST_TB_35_39_m_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_m_neg.value,0)+
COALESCE(HTS_TST_TB_40_44_f_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_f_neg.value,0)+
COALESCE(HTS_TST_TB_40_44_m_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_m_neg.value,0)+
COALESCE(HTS_TST_TB_45_49_f_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_f_neg.value,0)+
COALESCE(HTS_TST_TB_45_49_m_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_m_neg.value,0)+
COALESCE(HTS_TST_TB_50_f_pos.value,0)+
COALESCE(HTS_TST_TB_50_f_neg.value,0)+
COALESCE(HTS_TST_TB_50_m_pos.value,0)+
COALESCE(HTS_TST_TB_50_m_neg.value,0)+
/*HTS_TST (Facility)-PITC PMTCT (ANC Only) Clinics*/
COALESCE(HTS_TST_PMTCT_10_14_pos.value,0)+
COALESCE(HTS_TST_PMTCT_10_14_neg.value,0)+
COALESCE(HTS_TST_PMTCT_15_19_pos.value,0)+
COALESCE(HTS_TST_PMTCT_15_19_neg.value,0)+
COALESCE(HTS_TST_PMTCT_20_24_pos.value,0)+
COALESCE(HTS_TST_PMTCT_20_24_neg.value,0)+
COALESCE(HTS_TST_PMTCT_25_pos.value,0)+
COALESCE(HTS_TST_PMTCT_25_neg.value,0)+
/*HTS_TST (Facility)-PITC PMTCT Post ANC*/
(COALESCE(mat_men1_pos.value,0)+COALESCE(atip_cpp_0_8_f_pos.value,0))+
(COALESCE(mat_men1_neg.value,0)+COALESCE(atip_cpp_0_8_f_neg.value,0))+
(COALESCE(mat_1_4_pos.value,0)+COALESCE(atip_cpp_9_18_f_pos.value,0)+COALESCE(atip_cpp_19_4_f_pos.value,0))+
(COALESCE(mat_1_4_neg.value,0)+COALESCE(atip_cpp_9_18_f_neg.value,0)+COALESCE(atip_cpp_19_4_f_neg.value,0))+
(COALESCE(mat_5_9_pos.value,0)+COALESCE(atip_cpp_5_9_f_pos.value,0))+
(COALESCE(mat_5_9_neg.value,0)+COALESCE(atip_cpp_5_9_f_neg.value,0))+
(COALESCE(mat_10_14_pos.value,0)+COALESCE(atip_cpp_10_14_f_pos.value,0))+
(COALESCE(mat_10_14_neg.value,0)+COALESCE(atip_cpp_10_14_f_neg.value,0))+
(COALESCE(mat_15_19_pos.value,0)+COALESCE(atip_cpp_15_19_f_pos.value,0))+
(COALESCE(mat_15_19_neg.value,0)+COALESCE(atip_cpp_15_19_f_neg.value,0))+
(COALESCE(mat_20_24_pos.value,0)+COALESCE(atip_cpp_20_24_f_pos.value,0))+
(COALESCE(mat_20_24_neg.value,0)+COALESCE(atip_cpp_20_24_f_neg.value,0))+
(COALESCE(mat_25_29_pos.value,0)+COALESCE(mat_30_34_pos.value,0)+COALESCE(mat_35_39_pos.value,0)+COALESCE(mat_40_44_pos.value,0)+COALESCE(mat_45_49_pos.value,0)+COALESCE(atip_cpp_25_29_f_pos.value,0)+COALESCE(atip_cpp_30_49_f_pos.value,0))+
(COALESCE(mat_25_29_neg.value,0)+COALESCE(mat_30_34_neg.value,0)+COALESCE(mat_35_39_neg.value,0)+COALESCE(mat_40_44_neg.value,0)+COALESCE(mat_45_49_neg.value,0)+COALESCE(atip_cpp_25_29_f_neg.value,0)+COALESCE(atip_cpp_30_49_f_neg.value,0))+
(COALESCE(mat_50_pos.value,0)+COALESCE(atip_cpp_50_f_pos.value,0))+
(COALESCE(mat_50_neg.value,0)+COALESCE(atip_cpp_50_f_neg.value,0))+
/*HTS_TST (Facility)-PITC Emergency Ward*/
COALESCE(atip_bso_0_8_f_pos.value,0)+
COALESCE(atip_bso_0_8_f_neg.value,0)+
COALESCE(atip_bso_0_8_m_pos.value,0)+
COALESCE(atip_bso_0_8_m_neg.value,0)+
(COALESCE(atip_bso_9_18_f_pos.value,0)+COALESCE(atip_bso_19_4_f_pos.value,0))+
(COALESCE(atip_bso_9_18_f_neg.value,0)+COALESCE(atip_bso_19_4_f_neg.value,0))+
(COALESCE(atip_bso_9_18_m_pos.value,0)+COALESCE(atip_bso_19_4_m_pos.value,0))+
(COALESCE(atip_bso_9_18_m_neg.value,0)+COALESCE(atip_bso_19_4_m_neg.value,0))+
COALESCE(atip_bso_5_9_f_pos.value,0)+
COALESCE(atip_bso_5_9_f_neg.value,0)+
COALESCE(atip_bso_5_9_m_pos.value,0)+
COALESCE(atip_bso_5_9_m_neg.value,0)+
COALESCE(atip_bso_10_14_f_pos.value,0)+
COALESCE(atip_bso_10_14_f_neg.value,0)+
COALESCE(atip_bso_10_14_m_pos.value,0)+
COALESCE(atip_bso_10_14_m_neg.value,0)+
COALESCE(atip_bso_15_19_f_pos.value,0)+
COALESCE(atip_bso_15_19_f_neg.value,0)+
COALESCE(atip_bso_15_19_m_pos.value,0)+
COALESCE(atip_bso_15_19_m_neg.value,0)+
COALESCE(atip_bso_20_24_f_pos.value,0)+
COALESCE(atip_bso_20_24_f_neg.value,0)+
COALESCE(atip_bso_20_24_m_pos.value,0)+
COALESCE(atip_bso_20_24_m_neg.value,0)+
(COALESCE(atip_bso_25_29_f_pos.value,0)+COALESCE(atip_bso_30_49_f_pos.value,0))+
(COALESCE(atip_bso_25_29_f_neg.value,0)+COALESCE(atip_bso_30_49_f_neg.value,0))+
(COALESCE(atip_bso_25_29_m_pos.value,0)+COALESCE(atip_bso_30_49_m_pos.value,0))+
(COALESCE(atip_bso_25_29_m_neg.value,0)+COALESCE(atip_bso_30_49_m_neg.value,0))+
COALESCE(atip_bso_50_f_pos.value,0)+
COALESCE(atip_bso_50_f_neg.value,0)+
COALESCE(atip_bso_50_m_pos.value,0)+
COALESCE(atip_bso_50_m_neg.value,0)+
/*HTS_TST (Facility)-Other PITC*/
COALESCE(cpn_m_pos.value,0)+
COALESCE(cpn_m_neg.value,0)+
COALESCE(atip_0_8_f_pos.value,0)+
COALESCE(atip_0_8_f_neg.value,0)+
COALESCE(atip_0_8_m_pos.value,0)+
COALESCE(atip_0_8_m_neg.value,0)+
(COALESCE(atip_9_18_f_pos.value,0)+COALESCE(atip_19_4_f_pos.value,0))+
(COALESCE(atip_9_18_f_neg.value,0)+COALESCE(atip_19_4_f_neg.value,0))+
(COALESCE(atip_9_18_m_pos.value,0)+COALESCE(atip_19_4_m_pos.value,0))+
(COALESCE(atip_9_18_m_neg.value,0)+COALESCE(atip_19_4_m_neg.value,0))+
COALESCE(atip_5_9_f_pos.value,0)+
COALESCE(atip_5_9_f_neg.value,0)+
COALESCE(atip_5_9_m_pos.value,0)+
COALESCE(atip_5_9_m_neg.value,0)+
COALESCE(atip_10_14_f_pos.value,0)+
COALESCE(atip_10_14_f_neg.value,0)+
COALESCE(atip_10_14_m_pos.value,0)+
COALESCE(atip_10_14_m_neg.value,0)+
COALESCE(atip_15_19_f_pos.value,0)+
COALESCE(atip_15_19_f_neg.value,0)+
COALESCE(atip_15_19_m_pos.value,0)+
COALESCE(atip_15_19_m_neg.value,0)+
COALESCE(atip_20_24_f_pos.value,0)+
COALESCE(atip_20_24_f_neg.value,0)+
COALESCE(atip_20_24_m_pos.value,0)+
COALESCE(atip_20_24_m_neg.value,0)+
(COALESCE(atip_25_29_f_pos.value,0)+COALESCE(atip_30_49_f_pos.value,0))+
(COALESCE(atip_25_29_f_neg.value,0)+COALESCE(atip_30_49_f_neg.value,0))+
(COALESCE(atip_25_29_m_pos.value,0)+COALESCE(atip_30_49_m_pos.value,0))+
(COALESCE(atip_25_29_m_neg.value,0)+COALESCE(atip_30_49_m_neg.value,0))+
(COALESCE(atip_50_f_pos.value,0))+
(COALESCE(atip_50_f_neg.value,0))+
COALESCE(atip_50_m_pos.value,0)+
COALESCE(atip_50_m_neg.value,0)+
/*HTS_TST (Facility)-VCT*/
COALESCE(ats_0_8_f_pos.value,0)+
COALESCE(ats_0_8_f_neg.value,0)+
COALESCE(ats_0_8_m_pos.value,0)+
COALESCE(ats_0_8_m_neg.value,0)+
(COALESCE(ats_9_18_f_pos.value,0)+COALESCE(ats_19_4_f_pos.value,0))+
(COALESCE(ats_9_18_f_neg.value,0)+COALESCE(ats_19_4_f_neg.value,0))+
(COALESCE(ats_9_18_m_pos.value,0)+COALESCE(ats_19_4_m_pos.value,0))+
(COALESCE(ats_9_18_m_neg.value,0)+COALESCE(ats_19_4_m_neg.value,0))+
COALESCE(ats_5_9_f_pos.value,0)+
COALESCE(ats_5_9_f_neg.value,0)+
COALESCE(ats_5_9_m_pos.value,0)+
COALESCE(ats_5_9_m_neg.value,0)+
COALESCE(ats_10_14_f_pos.value,0)+
COALESCE(ats_10_14_f_neg.value,0)+
COALESCE(ats_10_14_m_pos.value,0)+
COALESCE(ats_10_14_m_neg.value,0)+
COALESCE(ats_15_19_f_pos.value,0)+
COALESCE(ats_15_19_f_neg.value,0)+
COALESCE(ats_15_19_m_pos.value,0)+
COALESCE(ats_15_19_m_neg.value,0)+
COALESCE(ats_20_24_f_pos.value,0)+
COALESCE(ats_20_24_f_neg.value,0)+
COALESCE(ats_20_24_m_pos.value,0)+
COALESCE(ats_20_24_m_neg.value,0)+
(COALESCE(ats_25_29_f_pos.value,0)+COALESCE(ats_30_49_f_pos.value,0))+
(COALESCE(ats_25_29_f_neg.value,0)+COALESCE(ats_30_49_f_neg.value,0))+
(COALESCE(ats_25_29_m_pos.value,0)+COALESCE(ats_30_49_m_pos.value,0))+
(COALESCE(ats_25_29_m_neg.value,0)+COALESCE(ats_30_49_m_neg.value,0))+
COALESCE(ats_50_f_pos.value,0)+
COALESCE(ats_50_f_neg.value,0)+
COALESCE(ats_50_m_pos.value,0)+
COALESCE(ats_50_m_neg.value,0)+
/*Index Testing*/
COALESCE(cpn_index_contact_pos.value,0)+
COALESCE(atip_index_0_8_f_pos.value,0)+COALESCE(ats_index_0_8_f_pos.value,0)+
COALESCE(atip_index_0_8_m_pos.value,0)+COALESCE(ats_index_0_8_m_pos.value,0)+
COALESCE(atip_index_9_18_f_pos.value,0)+COALESCE(atip_index_19_4_f_pos.value,0)+COALESCE(ats_index_9_18_f_pos.value,0)+COALESCE(ats_index_19_4_f_pos.value,0)+
COALESCE(atip_index_9_18_m_pos.value,0)+COALESCE(atip_index_19_4_m_pos.value,0)+COALESCE(ats_index_9_18_m_pos.value,0)+COALESCE(ats_index_19_4_m_pos.value,0)+
COALESCE(atip_index_5_9_f_pos.value,0)+COALESCE(ats_index_5_9_f_pos.value,0)+
COALESCE(atip_index_5_9_m_pos.value,0)+COALESCE(ats_index_5_9_m_pos.value,0)+
COALESCE(atip_index_10_14_f_pos.value,0)+COALESCE(ats_index_10_14_f_pos.value,0)+
COALESCE(atip_index_10_14_m_pos.value,0)+COALESCE(ats_index_10_14_m_pos.value,0)+
COALESCE(atip_index_15_19_f_pos.value,0)+COALESCE(ats_index_15_19_f_pos.value,0)+
COALESCE(atip_index_15_19_m_pos.value,0)+COALESCE(ats_index_15_19_m_pos.value,0)+
COALESCE(atip_index_20_24_f_pos.value,0)+COALESCE(ats_index_20_24_f_pos.value,0)+
COALESCE(atip_index_20_24_m_pos.value,0)+COALESCE(ats_index_20_24_m_pos.value,0)+
COALESCE(atip_index_25_29_f_pos.value,0)+COALESCE(ats_index_25_29_f_pos.value,0)+
COALESCE(atip_index_25_29_m_pos.value,0)+COALESCE(ats_index_25_29_m_pos.value,0)+
COALESCE(atip_index_30_49_f_pos.value,0)+COALESCE(ats_index_30_49_f_pos.value,0)+
COALESCE(atip_index_30_49_m_pos.value,0)+COALESCE(ats_index_30_49_m_pos.value,0)+
COALESCE(atip_index_50_f_pos.value,0)+COALESCE(ats_index_50_f_pos.value,0)+
COALESCE(atip_index_50_m_pos.value,0)+COALESCE(ats_index_50_m_pos.value,0)+
COALESCE(cpn_index_contact_neg.value,0)+
COALESCE(atip_index_0_8_f_neg.value,0)+COALESCE(ats_index_0_8_f_neg.value,0)+
COALESCE(atip_index_0_8_m_neg.value,0)+COALESCE(ats_index_0_8_m_neg.value,0)+
COALESCE(atip_index_9_18_f_neg.value,0)+COALESCE(atip_index_19_4_f_neg.value,0)+COALESCE(ats_index_9_18_f_neg.value,0)+COALESCE(ats_index_19_4_f_neg.value,0)+
COALESCE(atip_index_9_18_m_neg.value,0)+COALESCE(atip_index_19_4_m_neg.value,0)+COALESCE(ats_index_9_18_m_neg.value,0)+COALESCE(ats_index_19_4_m_neg.value,0)+
COALESCE(atip_index_5_9_f_neg.value,0)+COALESCE(ats_index_5_9_f_neg.value,0)+
COALESCE(atip_index_5_9_m_neg.value,0)+COALESCE(ats_index_5_9_m_neg.value,0)+
COALESCE(atip_index_10_14_f_neg.value,0)+COALESCE(ats_index_10_14_f_neg.value,0)+
COALESCE(atip_index_10_14_m_neg.value,0)+COALESCE(ats_index_10_14_m_neg.value,0)+
COALESCE(atip_index_15_19_f_neg.value,0)+COALESCE(ats_index_15_19_f_neg.value,0)+
COALESCE(atip_index_15_19_m_neg.value,0)+COALESCE(ats_index_15_19_m_neg.value,0)+
COALESCE(atip_index_20_24_f_neg.value,0)+COALESCE(ats_index_20_24_f_neg.value,0)+
COALESCE(atip_index_20_24_m_neg.value,0)+COALESCE(ats_index_20_24_m_neg.value,0)+
COALESCE(atip_index_25_29_f_neg.value,0)+COALESCE(ats_index_25_29_f_neg.value,0)+
COALESCE(atip_index_25_29_m_neg.value,0)+COALESCE(ats_index_25_29_m_neg.value,0)+
COALESCE(atip_index_30_49_f_neg.value,0)+COALESCE(ats_index_30_49_f_neg.value,0)+
COALESCE(atip_index_30_49_m_neg.value,0)+COALESCE(ats_index_30_49_m_neg.value,0)+
COALESCE(atip_index_50_f_neg.value,0)+COALESCE(ats_index_50_f_neg.value,0)+
COALESCE(atip_index_50_m_neg.value,0)+COALESCE(ats_index_50_m_neg.value,0) 
) AS HTS_TST_num,
/*Auto-Calculate*/
/*HTS_TST Positive*/
(
COALESCE(atip_enf_0_8_f_pos.value,0)+
COALESCE(atip_enf_0_8_m_pos.value,0)+
(COALESCE(atip_enf_9_18_f_pos.value,0)+COALESCE(atip_enf_19_4_f_pos.value,0))+
(COALESCE(atip_enf_9_18_m_pos.value,0)+COALESCE(atip_enf_19_4_m_pos.value,0))+
COALESCE(atip_enf_5_9_f_pos.value,0)+
COALESCE(atip_enf_5_9_m_pos.value,0)+
COALESCE(atip_enf_10_14_f_pos.value,0)+
COALESCE(atip_enf_10_14_m_pos.value,0)+
COALESCE(atip_enf_15_19_f_pos.value,0)+
COALESCE(atip_enf_15_19_m_pos.value,0)+
COALESCE(atip_enf_20_24_f_pos.value,0)+
COALESCE(atip_enf_20_24_m_pos.value,0)+
(COALESCE(atip_enf_25_29_f_pos.value,0)+COALESCE(atip_enf_30_49_f_pos.value,0))+
(COALESCE(atip_enf_25_29_m_pos.value,0)+COALESCE(atip_enf_30_49_m_pos.value,0))+
COALESCE(atip_enf_50_f_pos.value,0)+
COALESCE(atip_enf_50_m_pos.value,0)+
COALESCE(atip_ped_19_4_f_pos.value,0)+
COALESCE(atip_ped_19_4_m_pos.value,0)+
COALESCE(HTS_TST_TB_men1_f_pos.value,0)+
COALESCE(HTS_TST_TB_men1_m_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_f_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_m_pos.value,0)+
COALESCE(HTS_TST_TB_5_9_f_pos.value,0)+
COALESCE(HTS_TST_TB_5_9_m_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_f_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_m_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_f_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_m_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_f_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_m_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_f_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_m_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_f_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_m_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_f_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_m_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_f_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_m_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_f_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_m_pos.value,0)+
COALESCE(HTS_TST_TB_50_f_pos.value,0)+
COALESCE(HTS_TST_TB_50_m_pos.value,0)+
COALESCE(HTS_TST_PMTCT_10_14_pos.value,0)+
COALESCE(HTS_TST_PMTCT_15_19_pos.value,0)+
COALESCE(HTS_TST_PMTCT_20_24_pos.value,0)+
COALESCE(HTS_TST_PMTCT_25_pos.value,0)+
(COALESCE(mat_men1_pos.value,0)+COALESCE(atip_cpp_0_8_f_pos.value,0))+
(COALESCE(mat_1_4_pos.value,0)+COALESCE(atip_cpp_9_18_f_pos.value,0)+COALESCE(atip_cpp_19_4_f_pos.value,0))+
(COALESCE(mat_5_9_pos.value,0)+COALESCE(atip_cpp_5_9_f_pos.value,0))+
(COALESCE(mat_10_14_pos.value,0)+COALESCE(atip_cpp_10_14_f_pos.value,0))+
(COALESCE(mat_15_19_pos.value,0)+COALESCE(atip_cpp_15_19_f_pos.value,0))+
(COALESCE(mat_20_24_pos.value,0)+COALESCE(atip_cpp_20_24_f_pos.value,0))+
(COALESCE(mat_25_29_pos.value,0)+COALESCE(mat_30_34_pos.value,0)+COALESCE(mat_35_39_pos.value,0)+COALESCE(mat_40_44_pos.value,0)+COALESCE(mat_45_49_pos.value,0)+COALESCE(atip_cpp_25_29_f_pos.value,0)+COALESCE(atip_cpp_30_49_f_pos.value,0))+
(COALESCE(mat_50_pos.value,0)+COALESCE(atip_cpp_50_f_pos.value,0))+
COALESCE(atip_bso_0_8_f_pos.value,0)+
COALESCE(atip_bso_0_8_m_pos.value,0)+
(COALESCE(atip_bso_9_18_f_pos.value,0)+COALESCE(atip_bso_19_4_f_pos.value,0))+
(COALESCE(atip_bso_9_18_m_pos.value,0)+COALESCE(atip_bso_19_4_m_pos.value,0))+
COALESCE(atip_bso_5_9_f_pos.value,0)+
COALESCE(atip_bso_5_9_m_pos.value,0)+
COALESCE(atip_bso_10_14_f_pos.value,0)+
COALESCE(atip_bso_10_14_m_pos.value,0)+
COALESCE(atip_bso_15_19_f_pos.value,0)+
COALESCE(atip_bso_15_19_m_pos.value,0)+
COALESCE(atip_bso_20_24_f_pos.value,0)+
COALESCE(atip_bso_20_24_m_pos.value,0)+
(COALESCE(atip_bso_25_29_f_pos.value,0)+COALESCE(atip_bso_30_49_f_pos.value,0))+
(COALESCE(atip_bso_25_29_m_pos.value,0)+COALESCE(atip_bso_30_49_m_pos.value,0))+
COALESCE(atip_bso_50_f_pos.value,0)+
COALESCE(atip_bso_50_m_pos.value,0)+
COALESCE(cpn_m_pos.value,0)+
COALESCE(atip_0_8_f_pos.value,0)+
COALESCE(atip_0_8_m_pos.value,0)+
(COALESCE(atip_9_18_f_pos.value,0)+COALESCE(atip_19_4_f_pos.value,0))+
(COALESCE(atip_9_18_m_pos.value,0)+COALESCE(atip_19_4_m_pos.value,0))+
COALESCE(atip_5_9_f_pos.value,0)+
COALESCE(atip_5_9_m_pos.value,0)+
COALESCE(atip_10_14_f_pos.value,0)+
COALESCE(atip_10_14_m_pos.value,0)+
COALESCE(atip_15_19_f_pos.value,0)+
COALESCE(atip_15_19_m_pos.value,0)+
COALESCE(atip_20_24_f_pos.value,0)+
COALESCE(atip_20_24_m_pos.value,0)+
(COALESCE(atip_25_29_f_pos.value,0)+COALESCE(atip_30_49_f_pos.value,0))+
(COALESCE(atip_25_29_m_pos.value,0)+COALESCE(atip_30_49_m_pos.value,0))+
(COALESCE(atip_50_f_pos.value,0))+
COALESCE(atip_50_m_pos.value,0)+
COALESCE(ats_0_8_f_pos.value,0)+
COALESCE(ats_0_8_m_pos.value,0)+
(COALESCE(ats_9_18_f_pos.value,0)+COALESCE(ats_19_4_f_pos.value,0))+
(COALESCE(ats_9_18_m_pos.value,0)+COALESCE(ats_19_4_m_pos.value,0))+
COALESCE(ats_5_9_f_pos.value,0)+
COALESCE(ats_5_9_m_pos.value,0)+
COALESCE(ats_10_14_f_pos.value,0)+
COALESCE(ats_10_14_m_pos.value,0)+
COALESCE(ats_15_19_f_pos.value,0)+
COALESCE(ats_15_19_m_pos.value,0)+
COALESCE(ats_20_24_f_pos.value,0)+
COALESCE(ats_20_24_m_pos.value,0)+
(COALESCE(ats_25_29_f_pos.value,0)+COALESCE(ats_30_49_f_pos.value,0))+
(COALESCE(ats_25_29_m_pos.value,0)+COALESCE(ats_30_49_m_pos.value,0))+
COALESCE(ats_50_f_pos.value,0)+
COALESCE(ats_50_m_pos.value,0)+
COALESCE(cpn_index_contact_pos.value,0)+
COALESCE(atip_index_0_8_f_pos.value,0)+COALESCE(ats_index_0_8_f_pos.value,0)+
COALESCE(atip_index_0_8_m_pos.value,0)+COALESCE(ats_index_0_8_m_pos.value,0)+
COALESCE(atip_index_9_18_f_pos.value,0)+COALESCE(atip_index_19_4_f_pos.value,0)+COALESCE(ats_index_9_18_f_pos.value,0)+COALESCE(ats_index_19_4_f_pos.value,0)+
COALESCE(atip_index_9_18_m_pos.value,0)+COALESCE(atip_index_19_4_m_pos.value,0)+COALESCE(ats_index_9_18_m_pos.value,0)+COALESCE(ats_index_19_4_m_pos.value,0)+
COALESCE(atip_index_5_9_f_pos.value,0)+COALESCE(ats_index_5_9_f_pos.value,0)+
COALESCE(atip_index_5_9_m_pos.value,0)+COALESCE(ats_index_5_9_m_pos.value,0)+
COALESCE(atip_index_10_14_f_pos.value,0)+COALESCE(ats_index_10_14_f_pos.value,0)+
COALESCE(atip_index_10_14_m_pos.value,0)+COALESCE(ats_index_10_14_m_pos.value,0)+
COALESCE(atip_index_15_19_f_pos.value,0)+COALESCE(ats_index_15_19_f_pos.value,0)+
COALESCE(atip_index_15_19_m_pos.value,0)+COALESCE(ats_index_15_19_m_pos.value,0)+
COALESCE(atip_index_20_24_f_pos.value,0)+COALESCE(ats_index_20_24_f_pos.value,0)+
COALESCE(atip_index_20_24_m_pos.value,0)+COALESCE(ats_index_20_24_m_pos.value,0)+
COALESCE(atip_index_25_29_f_pos.value,0)+COALESCE(ats_index_25_29_f_pos.value,0)+
COALESCE(atip_index_25_29_m_pos.value,0)+COALESCE(ats_index_25_29_m_pos.value,0)+
COALESCE(atip_index_30_49_f_pos.value,0)+COALESCE(ats_index_30_49_f_pos.value,0)+
COALESCE(atip_index_30_49_m_pos.value,0)+COALESCE(ats_index_30_49_m_pos.value,0)+
COALESCE(atip_index_50_f_pos.value,0)+COALESCE(ats_index_50_f_pos.value,0)+
COALESCE(atip_index_50_m_pos.value,0)+COALESCE(ats_index_50_m_pos.value,0) 
) AS HTS_TST_pos,
/*Auto-Calculate*/
/*HTS_TST Index Testing*/
(
COALESCE(cpn_index_contact_pos.value,0)+
COALESCE(atip_index_0_8_f_pos.value,0)+COALESCE(ats_index_0_8_f_pos.value,0)+
COALESCE(atip_index_0_8_m_pos.value,0)+COALESCE(ats_index_0_8_m_pos.value,0)+
COALESCE(atip_index_9_18_f_pos.value,0)+COALESCE(atip_index_19_4_f_pos.value,0)+COALESCE(ats_index_9_18_f_pos.value,0)+COALESCE(ats_index_19_4_f_pos.value,0)+
COALESCE(atip_index_9_18_m_pos.value,0)+COALESCE(atip_index_19_4_m_pos.value,0)+COALESCE(ats_index_9_18_m_pos.value,0)+COALESCE(ats_index_19_4_m_pos.value,0)+
COALESCE(atip_index_5_9_f_pos.value,0)+COALESCE(ats_index_5_9_f_pos.value,0)+
COALESCE(atip_index_5_9_m_pos.value,0)+COALESCE(ats_index_5_9_m_pos.value,0)+
COALESCE(atip_index_10_14_f_pos.value,0)+COALESCE(ats_index_10_14_f_pos.value,0)+
COALESCE(atip_index_10_14_m_pos.value,0)+COALESCE(ats_index_10_14_m_pos.value,0)+
COALESCE(atip_index_15_19_f_pos.value,0)+COALESCE(ats_index_15_19_f_pos.value,0)+
COALESCE(atip_index_15_19_m_pos.value,0)+COALESCE(ats_index_15_19_m_pos.value,0)+
COALESCE(atip_index_20_24_f_pos.value,0)+COALESCE(ats_index_20_24_f_pos.value,0)+
COALESCE(atip_index_20_24_m_pos.value,0)+COALESCE(ats_index_20_24_m_pos.value,0)+
COALESCE(atip_index_25_29_f_pos.value,0)+COALESCE(ats_index_25_29_f_pos.value,0)+
COALESCE(atip_index_25_29_m_pos.value,0)+COALESCE(ats_index_25_29_m_pos.value,0)+
COALESCE(atip_index_30_49_f_pos.value,0)+COALESCE(ats_index_30_49_f_pos.value,0)+
COALESCE(atip_index_30_49_m_pos.value,0)+COALESCE(ats_index_30_49_m_pos.value,0)+
COALESCE(atip_index_50_f_pos.value,0)+COALESCE(ats_index_50_f_pos.value,0)+
COALESCE(atip_index_50_m_pos.value,0)+COALESCE(ats_index_50_m_pos.value,0) 
) AS Index_pos,
(
COALESCE(cpn_index_contact_neg.value,0)+
COALESCE(atip_index_0_8_f_neg.value,0)+COALESCE(ats_index_0_8_f_neg.value,0)+
COALESCE(atip_index_0_8_m_neg.value,0)+COALESCE(ats_index_0_8_m_neg.value,0)+
COALESCE(atip_index_9_18_f_neg.value,0)+COALESCE(atip_index_19_4_f_neg.value,0)+COALESCE(ats_index_9_18_f_neg.value,0)+COALESCE(ats_index_19_4_f_neg.value,0)+
COALESCE(atip_index_9_18_m_neg.value,0)+COALESCE(atip_index_19_4_m_neg.value,0)+COALESCE(ats_index_9_18_m_neg.value,0)+COALESCE(ats_index_19_4_m_neg.value,0)+
COALESCE(atip_index_5_9_f_neg.value,0)+COALESCE(ats_index_5_9_f_neg.value,0)+
COALESCE(atip_index_5_9_m_neg.value,0)+COALESCE(ats_index_5_9_m_neg.value,0)+
COALESCE(atip_index_10_14_f_neg.value,0)+COALESCE(ats_index_10_14_f_neg.value,0)+
COALESCE(atip_index_10_14_m_neg.value,0)+COALESCE(ats_index_10_14_m_neg.value,0)+
COALESCE(atip_index_15_19_f_neg.value,0)+COALESCE(ats_index_15_19_f_neg.value,0)+
COALESCE(atip_index_15_19_m_neg.value,0)+COALESCE(ats_index_15_19_m_neg.value,0)+
COALESCE(atip_index_20_24_f_neg.value,0)+COALESCE(ats_index_20_24_f_neg.value,0)+
COALESCE(atip_index_20_24_m_neg.value,0)+COALESCE(ats_index_20_24_m_neg.value,0)+
COALESCE(atip_index_25_29_f_neg.value,0)+COALESCE(ats_index_25_29_f_neg.value,0)+
COALESCE(atip_index_25_29_m_neg.value,0)+COALESCE(ats_index_25_29_m_neg.value,0)+
COALESCE(atip_index_30_49_f_neg.value,0)+COALESCE(ats_index_30_49_f_neg.value,0)+
COALESCE(atip_index_30_49_m_neg.value,0)+COALESCE(ats_index_30_49_m_neg.value,0)+
COALESCE(atip_index_50_f_neg.value,0)+COALESCE(ats_index_50_f_neg.value,0)+
COALESCE(atip_index_50_m_neg.value,0)+COALESCE(ats_index_50_m_neg.value,0) 
) AS Index_neg,
/*HTS_TST (Facility)-PITC Inpatient Services*/
COALESCE(atip_enf_0_8_f_pos.value,0) AS HTS_TST_Inpatient_men1_f_pos,
COALESCE(atip_enf_0_8_f_neg.value,0) AS HTS_TST_Inpatient_men1_f_neg,
COALESCE(atip_enf_0_8_m_pos.value,0) AS HTS_TST_Inpatient_men1_m_pos,
COALESCE(atip_enf_0_8_m_neg.value,0) AS HTS_TST_Inpatient_men1_m_neg,
(COALESCE(atip_enf_9_18_f_pos.value,0)+COALESCE(atip_enf_19_4_f_pos.value,0)) AS HTS_TST_Inpatient_1_4_f_pos,
(COALESCE(atip_enf_9_18_f_neg.value,0)+COALESCE(atip_enf_19_4_f_neg.value,0)) AS HTS_TST_Inpatient_1_4_f_neg,
(COALESCE(atip_enf_9_18_m_pos.value,0)+COALESCE(atip_enf_19_4_m_pos.value,0)) AS HTS_TST_Inpatient_1_4_m_pos,
(COALESCE(atip_enf_9_18_m_neg.value,0)+COALESCE(atip_enf_19_4_m_neg.value,0)) AS HTS_TST_Inpatient_1_4_m_neg,
COALESCE(atip_enf_5_9_f_pos.value,0) AS HTS_TST_Inpatient_5_9_f_pos,
COALESCE(atip_enf_5_9_f_neg.value,0) AS HTS_TST_Inpatient_5_9_f_neg,
COALESCE(atip_enf_5_9_m_pos.value,0) AS HTS_TST_Inpatient_5_9_m_pos,
COALESCE(atip_enf_5_9_m_neg.value,0) AS HTS_TST_Inpatient_5_9_m_neg,
COALESCE(atip_enf_10_14_f_pos.value,0) AS HTS_TST_Inpatient_10_14_f_pos,
COALESCE(atip_enf_10_14_f_neg.value,0) AS HTS_TST_Inpatient_10_14_f_neg,
COALESCE(atip_enf_10_14_m_pos.value,0) AS HTS_TST_Inpatient_10_14_m_pos,
COALESCE(atip_enf_10_14_m_neg.value,0) AS HTS_TST_Inpatient_10_14_m_neg,
COALESCE(atip_enf_15_19_f_pos.value,0) AS HTS_TST_Inpatient_15_19_f_pos,
COALESCE(atip_enf_15_19_f_neg.value,0) AS HTS_TST_Inpatient_15_19_f_neg,
COALESCE(atip_enf_15_19_m_pos.value,0) AS HTS_TST_Inpatient_15_19_m_pos,
COALESCE(atip_enf_15_19_m_neg.value,0) AS HTS_TST_Inpatient_15_19_m_neg,
COALESCE(atip_enf_20_24_f_pos.value,0) AS HTS_TST_Inpatient_20_24_f_pos,
COALESCE(atip_enf_20_24_f_neg.value,0) AS HTS_TST_Inpatient_20_24_f_neg,
COALESCE(atip_enf_20_24_m_pos.value,0) AS HTS_TST_Inpatient_20_24_m_pos,
COALESCE(atip_enf_20_24_m_neg.value,0) AS HTS_TST_Inpatient_20_24_m_neg,
COALESCE(atip_enf_25_29_f_pos.value,0) AS HTS_TST_Inpatient_25_29_f_pos,
COALESCE(atip_enf_25_29_f_neg.value,0) AS HTS_TST_Inpatient_25_29_f_neg,
COALESCE(atip_enf_25_29_m_pos.value,0) AS HTS_TST_Inpatient_25_29_m_pos,
COALESCE(atip_enf_25_29_m_neg.value,0) AS HTS_TST_Inpatient_25_29_m_neg,
COALESCE(atip_enf_30_49_f_pos.value,0) AS HTS_TST_Inpatient_30_49_f_pos,
COALESCE(atip_enf_30_49_f_neg.value,0) AS HTS_TST_Inpatient_30_49_f_neg,
COALESCE(atip_enf_30_49_m_pos.value,0) AS HTS_TST_Inpatient_30_49_m_pos,
COALESCE(atip_enf_30_49_m_neg.value,0) AS HTS_TST_Inpatient_30_49_m_neg,
COALESCE(atip_enf_50_f_pos.value,0) AS HTS_TST_Inpatient_50_f_pos,
COALESCE(atip_enf_50_f_neg.value,0) AS HTS_TST_Inpatient_50_f_neg,
COALESCE(atip_enf_50_m_pos.value,0) AS HTS_TST_Inpatient_50_m_pos,
COALESCE(atip_enf_50_m_neg.value,0) AS HTS_TST_Inpatient_50_m_neg,
/*HTS_TST (Facility)-PITC Pediatric Services*/
'' AS placeholder11,
'' AS placeholder12,
'' AS placeholder13,
'' AS placeholder14,
COALESCE(atip_ped_19_4_f_pos.value,0) AS HTS_TST_Pediatric_1_4_f_pos,
COALESCE(atip_ped_19_4_f_neg.value,0) AS HTS_TST_Pediatric_1_4_f_neg,
COALESCE(atip_ped_19_4_m_pos.value,0) AS HTS_TST_Pediatric_1_4_m_pos,
COALESCE(atip_ped_19_4_m_neg.value,0) AS HTS_TST_Pediatric_1_4_m_neg,
/*Auto-Calculate*/
/*HTS_TST (Facility)-PITC-TB Clinics*/
(
COALESCE(HTS_TST_TB_men1_f_pos.value,0)+
COALESCE(HTS_TST_TB_men1_m_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_f_pos.value,0) +
COALESCE(HTS_TST_TB_1_4_m_pos.value,0) +
COALESCE(HTS_TST_TB_5_9_f_pos.value,0) +
COALESCE(HTS_TST_TB_5_9_m_pos.value,0) +
COALESCE(HTS_TST_TB_10_14_f_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_m_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_f_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_m_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_f_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_m_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_f_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_m_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_f_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_m_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_f_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_m_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_f_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_m_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_f_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_m_pos.value,0)+
COALESCE(HTS_TST_TB_50_f_pos.value,0) +
COALESCE(HTS_TST_TB_50_m_pos.value,0) 
) AS HTS_TST_TB_pos,
(
COALESCE(HTS_TST_TB_men1_f_neg.value,0)+
COALESCE(HTS_TST_TB_men1_m_neg.value,0)+
COALESCE(HTS_TST_TB_1_4_f_neg.value,0) +
COALESCE(HTS_TST_TB_1_4_m_neg.value,0) +
COALESCE(HTS_TST_TB_5_9_f_neg.value,0) +
COALESCE(HTS_TST_TB_5_9_m_neg.value,0) +
COALESCE(HTS_TST_TB_10_14_f_neg.value,0)+
COALESCE(HTS_TST_TB_10_14_m_neg.value,0)+
COALESCE(HTS_TST_TB_15_19_f_neg.value,0)+
COALESCE(HTS_TST_TB_15_19_m_neg.value,0)+
COALESCE(HTS_TST_TB_20_24_f_neg.value,0)+
COALESCE(HTS_TST_TB_20_24_m_neg.value,0)+
COALESCE(HTS_TST_TB_25_29_f_neg.value,0)+
COALESCE(HTS_TST_TB_25_29_m_neg.value,0)+
COALESCE(HTS_TST_TB_30_34_f_neg.value,0)+
COALESCE(HTS_TST_TB_30_34_m_neg.value,0)+
COALESCE(HTS_TST_TB_35_39_f_neg.value,0)+
COALESCE(HTS_TST_TB_35_39_m_neg.value,0)+
COALESCE(HTS_TST_TB_40_44_f_neg.value,0)+
COALESCE(HTS_TST_TB_40_44_m_neg.value,0)+
COALESCE(HTS_TST_TB_45_49_f_neg.value,0)+
COALESCE(HTS_TST_TB_45_49_m_neg.value,0)+
COALESCE(HTS_TST_TB_50_f_neg.value,0) +
COALESCE(HTS_TST_TB_50_m_neg.value,0) 
) AS HTS_TST_TB_neg,
/*Auto-Calculate*/
/*HTS_TST (Facility)-PITC PMTCT (ANC1 Only) Clinics*/
(
COALESCE(HTS_TST_PMTCT_10_14_pos.value,0)+
COALESCE(HTS_TST_PMTCT_15_19_pos.value,0)+
COALESCE(HTS_TST_PMTCT_20_24_pos.value,0)+
COALESCE(HTS_TST_PMTCT_25_pos.value,0) 
) AS HTS_TST_PMTCT_pos,
(
COALESCE(HTS_TST_PMTCT_10_14_neg.value,0) +
COALESCE(HTS_TST_PMTCT_15_19_neg.value,0) +
COALESCE(HTS_TST_PMTCT_20_24_neg.value,0) +
COALESCE(HTS_TST_PMTCT_25_neg.value,0) 
) AS HTS_TST_PMTCT_neg,
/*HTS_TST (Facility)-PITC PMTCT (Post ANC1)*/
(COALESCE(mat_10_14_pos.value,0)+COALESCE(atip_cpp_10_14_f_pos.value,0)) AS HTS_TST_PMTCT_POST_10_14_pos,
(COALESCE(mat_10_14_neg.value,0)+COALESCE(atip_cpp_10_14_f_neg.value,0)) AS HTS_TST_PMTCT_POST_10_14_neg,
(COALESCE(mat_15_19_pos.value,0)+COALESCE(atip_cpp_15_19_f_pos.value,0)) AS HTS_TST_PMTCT_POST_15_19_pos,
(COALESCE(mat_15_19_neg.value,0)+COALESCE(atip_cpp_15_19_f_neg.value,0)) AS HTS_TST_PMTCT_POST_15_19_neg,
(COALESCE(mat_20_24_pos.value,0)+COALESCE(atip_cpp_20_24_f_pos.value,0)) AS HTS_TST_PMTCT_POST_20_24_pos,
(COALESCE(mat_20_24_neg.value,0)+COALESCE(atip_cpp_20_24_f_neg.value,0)) AS HTS_TST_PMTCT_POST_20_24_neg,
(COALESCE(mat_25_29_pos.value,0)+COALESCE(atip_cpp_25_29_f_pos.value,0)) AS HTS_TST_PMTCT_POST_25_29_pos,
(COALESCE(mat_25_29_neg.value,0)+COALESCE(atip_cpp_25_29_f_neg.value,0)) AS HTS_TST_PMTCT_POST_25_29_neg,
(COALESCE(mat_30_34_pos.value,0)+COALESCE(atip_cpp_30_49_f_pos.value,0)) AS HTS_TST_PMTCT_POST_30_34_pos,
(COALESCE(mat_30_34_neg.value,0)+COALESCE(atip_cpp_30_49_f_neg.value,0)) AS HTS_TST_PMTCT_POST_30_34_neg,
COALESCE(mat_35_39_pos.value,0) AS HTS_TST_PMTCT_POST_35_39_pos,
COALESCE(mat_35_39_neg.value,0) AS HTS_TST_PMTCT_POST_35_39_neg,
COALESCE(mat_40_44_pos.value,0) AS HTS_TST_PMTCT_POST_40_44_pos,
COALESCE(mat_40_44_neg.value,0) AS HTS_TST_PMTCT_POST_40_44_neg,
COALESCE(mat_45_49_pos.value,0) AS HTS_TST_PMTCT_POST_45_49_pos,
COALESCE(mat_45_49_neg.value,0) AS HTS_TST_PMTCT_POST_45_49_neg,
(COALESCE(mat_50_pos.value,0)+COALESCE(atip_cpp_50_f_pos.value,0)) AS HTS_TST_PMTCT_POST_50_pos,
(COALESCE(mat_50_neg.value,0)+COALESCE(atip_cpp_50_f_neg.value,0)) AS HTS_TST_PMTCT_POST_50_neg,
/*HTS_TST (Facility)-PITC Emergency Ward*/
COALESCE(atip_bso_0_8_f_pos.value,0) AS HTS_TST_Emergency_men1_f_pos,
COALESCE(atip_bso_0_8_f_neg.value,0) AS HTS_TST_Emergency_men1_f_neg,
COALESCE(atip_bso_0_8_m_pos.value,0) AS HTS_TST_Emergency_men1_m_pos,
COALESCE(atip_bso_0_8_m_neg.value,0) AS HTS_TST_Emergency_men1_m_neg,
(COALESCE(atip_bso_9_18_f_pos.value,0)+COALESCE(atip_bso_19_4_f_pos.value,0)) AS HTS_TST_Emergency_1_4_f_pos,
(COALESCE(atip_bso_9_18_f_neg.value,0)+COALESCE(atip_bso_19_4_f_neg.value,0)) AS HTS_TST_Emergency_1_4_f_neg,
(COALESCE(atip_bso_9_18_m_pos.value,0)+COALESCE(atip_bso_19_4_m_pos.value,0)) AS HTS_TST_Emergency_1_4_m_pos,
(COALESCE(atip_bso_9_18_m_neg.value,0)+COALESCE(atip_bso_19_4_m_neg.value,0)) AS HTS_TST_Emergency_1_4_m_neg,
COALESCE(atip_bso_5_9_f_pos.value,0) AS HTS_TST_Emergency_5_9_f_pos,
COALESCE(atip_bso_5_9_f_neg.value,0) AS HTS_TST_Emergency_5_9_f_neg,
COALESCE(atip_bso_5_9_m_pos.value,0) AS HTS_TST_Emergency_5_9_m_pos,
COALESCE(atip_bso_5_9_m_neg.value,0) AS HTS_TST_Emergency_5_9_m_neg,
COALESCE(atip_bso_10_14_f_pos.value,0) AS HTS_TST_Emergency_10_14_f_pos,
COALESCE(atip_bso_10_14_f_neg.value,0) AS HTS_TST_Emergency_10_14_f_neg,
COALESCE(atip_bso_10_14_m_pos.value,0) AS HTS_TST_Emergency_10_14_m_pos,
COALESCE(atip_bso_10_14_m_neg.value,0) AS HTS_TST_Emergency_10_14_m_neg,
COALESCE(atip_bso_15_19_f_pos.value,0) AS HTS_TST_Emergency_15_19_f_pos,
COALESCE(atip_bso_15_19_f_neg.value,0) AS HTS_TST_Emergency_15_19_f_neg,
COALESCE(atip_bso_15_19_m_pos.value,0) AS HTS_TST_Emergency_15_19_m_pos,
COALESCE(atip_bso_15_19_m_neg.value,0) AS HTS_TST_Emergency_15_19_m_neg,
COALESCE(atip_bso_20_24_f_pos.value,0) AS HTS_TST_Emergency_20_24_f_pos,
COALESCE(atip_bso_20_24_f_neg.value,0) AS HTS_TST_Emergency_20_24_f_neg,
COALESCE(atip_bso_20_24_m_pos.value,0) AS HTS_TST_Emergency_20_24_m_pos,
COALESCE(atip_bso_20_24_m_neg.value,0) AS HTS_TST_Emergency_20_24_m_neg,
COALESCE(atip_bso_25_29_f_pos.value,0) AS HTS_TST_Emergency_25_29_f_pos,
COALESCE(atip_bso_25_29_f_neg.value,0) AS HTS_TST_Emergency_25_29_f_neg,
COALESCE(atip_bso_25_29_m_pos.value,0) AS HTS_TST_Emergency_25_29_m_pos,
COALESCE(atip_bso_25_29_m_neg.value,0) AS HTS_TST_Emergency_25_29_m_neg,
COALESCE(atip_bso_30_49_f_pos.value,0) AS HTS_TST_Emergency_30_49_f_pos,
COALESCE(atip_bso_30_49_f_neg.value,0) AS HTS_TST_Emergency_30_49_f_neg,
COALESCE(atip_bso_30_49_m_pos.value,0) AS HTS_TST_Emergency_30_49_m_pos,
COALESCE(atip_bso_30_49_m_neg.value,0) AS HTS_TST_Emergency_30_49_m_neg,
COALESCE(atip_bso_50_f_pos.value,0) AS HTS_TST_Emergency_50_f_pos,
COALESCE(atip_bso_50_f_neg.value,0) AS HTS_TST_Emergency_50_f_neg,
COALESCE(atip_bso_50_m_pos.value,0) AS HTS_TST_Emergency_50_m_pos,
COALESCE(atip_bso_50_m_neg.value,0) AS HTS_TST_Emergency_50_m_neg,
/*HTS_TST (Facility)-Other PITC*/
'' AS placeholder17,
'' AS placeholder18,
COALESCE(cpn_m_pos.value,0) AS HTS_TST_Other_u_m_pos,
COALESCE(cpn_m_neg.value,0) AS HTS_TST_Other_u_m_neg,
(COALESCE(atip_0_8_f_pos.value,0)+COALESCE(mat_men1_pos.value,0)+COALESCE(atip_cpp_0_8_f_pos.value,0)) AS HTS_TST_Other_men1_f_pos,
(COALESCE(atip_0_8_f_neg.value,0)+COALESCE(mat_men1_neg.value,0)+COALESCE(atip_cpp_0_8_f_neg.value,0)) AS HTS_TST_Other_men1_f_neg,
COALESCE(atip_0_8_m_pos.value,0) AS HTS_TST_Other_men1_m_pos,
COALESCE(atip_0_8_m_neg.value,0) AS HTS_TST_Other_men1_m_neg,
(COALESCE(atip_9_18_f_pos.value,0)+COALESCE(atip_19_4_f_pos.value,0)+COALESCE(mat_1_4_pos.value,0)+COALESCE(atip_cpp_9_18_f_pos.value,0)+COALESCE(atip_cpp_19_4_f_pos.value,0)) AS HTS_TST_Other_1_4_f_pos,
(COALESCE(atip_9_18_f_neg.value,0)+COALESCE(atip_19_4_f_neg.value,0)+COALESCE(mat_1_4_neg.value,0)+COALESCE(atip_cpp_9_18_f_neg.value,0)+COALESCE(atip_cpp_19_4_f_neg.value,0)) AS HTS_TST_Other_1_4_f_neg,
(COALESCE(atip_9_18_m_pos.value,0)+COALESCE(atip_19_4_m_pos.value,0)) AS HTS_TST_Other_1_4_m_pos,
(COALESCE(atip_9_18_m_neg.value,0)+COALESCE(atip_19_4_m_neg.value,0)) AS HTS_TST_Other_1_4_m_neg,
(COALESCE(atip_5_9_f_pos.value,0)+COALESCE(mat_5_9_pos.value,0)+COALESCE(atip_cpp_5_9_f_pos.value,0)) AS HTS_TST_Other_5_9_f_pos,
(COALESCE(atip_5_9_f_neg.value,0)+COALESCE(mat_5_9_neg.value,0)+COALESCE(atip_cpp_5_9_f_neg.value,0)) AS HTS_TST_Other_5_9_f_neg,
COALESCE(atip_5_9_m_pos.value,0) AS HTS_TST_Other_5_9_m_pos,
COALESCE(atip_5_9_m_neg.value,0) AS HTS_TST_Other_5_9_m_neg,
COALESCE(atip_10_14_f_pos.value,0) AS HTS_TST_Other_10_14_f_pos,
COALESCE(atip_10_14_f_neg.value,0) AS HTS_TST_Other_10_14_f_neg,
COALESCE(atip_10_14_m_pos.value,0) AS HTS_TST_Other_10_14_m_pos,
COALESCE(atip_10_14_m_neg.value,0) AS HTS_TST_Other_10_14_m_neg,
COALESCE(atip_15_19_f_pos.value,0) AS HTS_TST_Other_15_19_f_pos,
COALESCE(atip_15_19_f_neg.value,0) AS HTS_TST_Other_15_19_f_neg,
COALESCE(atip_15_19_m_pos.value,0) AS HTS_TST_Other_15_19_m_pos,
COALESCE(atip_15_19_m_neg.value,0) AS HTS_TST_Other_15_19_m_neg,
COALESCE(atip_20_24_f_pos.value,0) AS HTS_TST_Other_20_24_f_pos,
COALESCE(atip_20_24_f_neg.value,0) AS HTS_TST_Other_20_24_f_neg,
COALESCE(atip_20_24_m_pos.value,0) AS HTS_TST_Other_20_24_m_pos,
COALESCE(atip_20_24_m_neg.value,0) AS HTS_TST_Other_20_24_m_neg,
COALESCE(atip_25_29_f_pos.value,0) AS HTS_TST_Other_25_29_f_pos,
COALESCE(atip_25_29_f_neg.value,0) AS HTS_TST_Other_25_29_f_neg,
COALESCE(atip_25_29_m_pos.value,0) AS HTS_TST_Other_25_29_m_pos,
COALESCE(atip_25_29_m_neg.value,0) AS HTS_TST_Other_25_29_m_neg,
COALESCE(atip_30_49_f_pos.value,0) AS HTS_TST_Other_30_49_f_pos,
COALESCE(atip_30_49_f_neg.value,0) AS HTS_TST_Other_30_49_f_neg,
COALESCE(atip_30_49_m_pos.value,0) AS HTS_TST_Other_30_49_m_pos,
COALESCE(atip_30_49_m_neg.value,0) AS HTS_TST_Other_30_49_m_neg,
COALESCE(atip_50_f_pos.value,0) AS HTS_TST_Other_50_f_pos,
COALESCE(atip_50_f_neg.value,0) AS HTS_TST_Other_50_f_neg,
COALESCE(atip_50_m_pos.value,0) AS HTS_TST_Other_50_m_pos,
COALESCE(atip_50_m_neg.value,0) AS HTS_TST_Other_50_m_neg,
/*HTS_TST (Facility)-VCT*/
COALESCE(ats_0_8_f_pos.value,0) AS HTS_TST_VCT_men1_f_pos,
COALESCE(ats_0_8_f_neg.value,0) AS HTS_TST_VCT_men1_f_neg,
COALESCE(ats_0_8_m_pos.value,0) AS HTS_TST_VCT_men1_m_pos,
COALESCE(ats_0_8_m_neg.value,0) AS HTS_TST_VCT_men1_m_neg,
(COALESCE(ats_9_18_f_pos.value,0)+COALESCE(ats_19_4_f_pos.value,0)) AS HTS_TST_VCT_1_4_f_pos,
(COALESCE(ats_9_18_f_neg.value,0)+COALESCE(ats_19_4_f_neg.value,0)) AS HTS_TST_VCT_1_4_f_neg,
(COALESCE(ats_9_18_m_pos.value,0)+COALESCE(ats_19_4_m_pos.value,0)) AS HTS_TST_VCT_1_4_m_pos,
(COALESCE(ats_9_18_m_neg.value,0)+COALESCE(ats_19_4_m_neg.value,0)) AS HTS_TST_VCT_1_4_m_neg,
COALESCE(ats_5_9_f_pos.value,0) AS HTS_TST_VCT_5_9_f_pos,
COALESCE(ats_5_9_f_neg.value,0) AS HTS_TST_VCT_5_9_f_neg,
COALESCE(ats_5_9_m_pos.value,0) AS HTS_TST_VCT_5_9_m_pos,
COALESCE(ats_5_9_m_neg.value,0) AS HTS_TST_VCT_5_9_m_neg,
COALESCE(ats_10_14_f_pos.value,0) AS HTS_TST_VCT_10_14_f_pos,
COALESCE(ats_10_14_f_neg.value,0) AS HTS_TST_VCT_10_14_f_neg,
COALESCE(ats_10_14_m_pos.value,0) AS HTS_TST_VCT_10_14_m_pos,
COALESCE(ats_10_14_m_neg.value,0) AS HTS_TST_VCT_10_14_m_neg,
COALESCE(ats_15_19_f_pos.value,0) AS HTS_TST_VCT_15_19_f_pos,
COALESCE(ats_15_19_f_neg.value,0) AS HTS_TST_VCT_15_19_f_neg,
COALESCE(ats_15_19_m_pos.value,0) AS HTS_TST_VCT_15_19_m_pos,
COALESCE(ats_15_19_m_neg.value,0) AS HTS_TST_VCT_15_19_m_neg,
COALESCE(ats_20_24_f_pos.value,0) AS HTS_TST_VCT_20_24_f_pos,
COALESCE(ats_20_24_f_neg.value,0) AS HTS_TST_VCT_20_24_f_neg,
COALESCE(ats_20_24_m_pos.value,0) AS HTS_TST_VCT_20_24_m_pos,
COALESCE(ats_20_24_m_neg.value,0) AS HTS_TST_VCT_20_24_m_neg,
COALESCE(ats_25_29_f_pos.value,0) AS HTS_TST_VCT_25_29_f_pos,
COALESCE(ats_25_29_f_neg.value,0) AS HTS_TST_VCT_25_29_f_neg,
COALESCE(ats_25_29_m_pos.value,0) AS HTS_TST_VCT_25_29_m_pos,
COALESCE(ats_25_29_m_neg.value,0) AS HTS_TST_VCT_25_29_m_neg,
COALESCE(ats_30_49_f_pos.value,0) AS HTS_TST_VCT_30_49_f_pos,
COALESCE(ats_30_49_f_neg.value,0) AS HTS_TST_VCT_30_49_f_neg,
COALESCE(ats_30_49_m_pos.value,0) AS HTS_TST_VCT_30_49_m_pos,
COALESCE(ats_30_49_m_neg.value,0) AS HTS_TST_VCT_30_49_m_neg,
COALESCE(ats_50_f_pos.value,0) AS HTS_TST_VCT_50_f_pos,
COALESCE(ats_50_f_neg.value,0) AS HTS_TST_VCT_50_f_neg,
COALESCE(ats_50_m_pos.value,0) AS HTS_TST_VCT_50_m_pos,
COALESCE(ats_50_m_neg.value,0) AS HTS_TST_VCT_50_m_neg,
/*Index Testing*/
/*DHIS*/
/*Offered*/
/*
COALESCE(index_offered_unk.value,0) AS Index_offered_unk,
'' AS placeholder19,
'' AS placeholder20,
'' AS placeholder21,
(COALESCE(HTS_TST_PMTCT_10_14_pos.value,0)+COALESCE(PMTCT_STAT_17q2_10_14_known_pos.value,0)) AS HTS_TST_PMTCT_10_14_pos3,
(COALESCE(HTS_TST_PMTCT_15_19_pos.value,0)+COALESCE(PMTCT_STAT_17q2_15_19_known_pos.value,0)) AS HTS_TST_PMTCT_15_19_pos3,
(COALESCE(HTS_TST_PMTCT_20_24_pos.value,0)+COALESCE(PMTCT_STAT_17q2_20_24_known_pos.value,0)) AS HTS_TST_PMTCT_20_24_pos3,
(COALESCE(HTS_TST_PMTCT_25_pos.value,0)+COALESCE(PMTCT_STAT_17q2_25_known_pos.value,0)) AS HTS_TST_PMTCT_25_29_pos3,
'' AS placeholder31,
'' AS placeholder32,
'' AS placeholder33,
'' AS placeholder34,
'' AS placeholder35,
'' AS placeholder36,
'' AS placeholder37,
'' AS placeholder38,
'' AS placeholder39,
'' AS placeholder30,
'' AS placeholder41,
'' AS placeholder42,
'' AS placeholder43,
'' AS placeholder44,
'' AS placeholder45,
'' AS placeholder46,
'' AS placeholder47,
'' AS placeholder48,
'' AS placeholder49,
'' AS placeholder50,
'' AS placeholder51,
'' AS placeholder52,
'' AS placeholder53,
'' AS placeholder54,
'' AS placeholder55,
'' AS placeholder56,
'' AS placeholder57,
'' AS placeholder58,
'' AS placeholder59,
'' AS placeholder60,
'' AS placeholder61,
'' AS placeholder62,
'' AS placeholder63,
'' AS placeholder64,
'' AS placeholder65,
'' AS placeholder66,
'' AS placeholder67,
'' AS placeholder68,
'' AS placeholder69,
'' AS placeholder70,
'' AS placeholder71,
'' AS placeholder72,
'' AS placeholder73,
'' AS placeholder74,
*/
/*OpenMRS*/
/*Ofered*/
'' AS placeholder75,
COALESCE(HTS_I_ofered_men1_f.value,0) AS HTS_I_ofered_men1_f,
COALESCE(HTS_I_ofered_1_4_f.value,0) AS HTS_I_ofered_1_4_f,
COALESCE(HTS_I_ofered_5_9_f.value,0) AS HTS_I_ofered_5_9_f,
COALESCE(HTS_I_ofered_10_14_f.value,0) AS HTS_I_ofered_10_14_f,
COALESCE(HTS_I_ofered_15_19_f.value,0) AS HTS_I_ofered_15_19_f,
COALESCE(HTS_I_ofered_20_24_f.value,0) AS HTS_I_ofered_20_24_f,
COALESCE(HTS_I_ofered_25_29_f.value,0) AS HTS_I_ofered_25_29_f,
COALESCE(HTS_I_ofered_30_34_f.value,0) AS HTS_I_ofered_30_34_f,
COALESCE(HTS_I_ofered_35_39_f.value,0) AS HTS_I_ofered_35_39_f,
COALESCE(HTS_I_ofered_40_44_f.value,0) AS HTS_I_ofered_40_44_f,
COALESCE(HTS_I_ofered_45_49_f.value,0) AS HTS_I_ofered_45_49_f,
COALESCE(HTS_I_ofered_50_f.value,0) AS HTS_I_ofered_50_f,
'' AS placeholder76,
COALESCE(HTS_I_ofered_men1_m.value,0) AS HTS_I_ofered_men1_m,
COALESCE(HTS_I_ofered_1_4_m.value,0) AS HTS_I_ofered_1_4_m,
COALESCE(HTS_I_ofered_5_9_m.value,0) AS HTS_I_ofered_5_9_m,
COALESCE(HTS_I_ofered_10_14_m.value,0) AS HTS_I_ofered_10_14_m,
COALESCE(HTS_I_ofered_15_19_m.value,0) AS HTS_I_ofered_15_19_m,
COALESCE(HTS_I_ofered_20_24_m.value,0) AS HTS_I_ofered_20_24_m,
COALESCE(HTS_I_ofered_25_29_m.value,0) AS HTS_I_ofered_25_29_m,
COALESCE(HTS_I_ofered_30_34_m.value,0) AS HTS_I_ofered_30_34_m,
COALESCE(HTS_I_ofered_35_39_m.value,0) AS HTS_I_ofered_35_39_m,
COALESCE(HTS_I_ofered_40_44_m.value,0) AS HTS_I_ofered_40_44_m,
COALESCE(HTS_I_ofered_45_49_m.value,0) AS HTS_I_ofered_45_49_m,
COALESCE(HTS_I_ofered_50_m.value,0) AS HTS_I_ofered_50_m,
/*Acepted*/
'' AS placeholder75,
COALESCE(HTS_I_acepted_men1_f.value,0) AS HTS_I_acepted_men1_f,
COALESCE(HTS_I_acepted_1_4_f.value,0) AS HTS_I_acepted_1_4_f,
COALESCE(HTS_I_acepted_5_9_f.value,0) AS HTS_I_acepted_5_9_f,
COALESCE(HTS_I_acepted_10_14_f.value,0) AS HTS_I_acepted_10_14_f,
COALESCE(HTS_I_acepted_15_19_f.value,0) AS HTS_I_acepted_15_19_f,
COALESCE(HTS_I_acepted_20_24_f.value,0) AS HTS_I_acepted_20_24_f,
COALESCE(HTS_I_acepted_25_29_f.value,0) AS HTS_I_acepted_25_29_f,
COALESCE(HTS_I_acepted_30_34_f.value,0) AS HTS_I_acepted_30_34_f,
COALESCE(HTS_I_acepted_35_39_f.value,0) AS HTS_I_acepted_35_39_f,
COALESCE(HTS_I_acepted_40_44_f.value,0) AS HTS_I_acepted_40_44_f,
COALESCE(HTS_I_acepted_45_49_f.value,0) AS HTS_I_acepted_45_49_f,
COALESCE(HTS_I_acepted_50_f.value,0) AS HTS_I_acepted_50_f,
'' AS placeholder76,
COALESCE(HTS_I_acepted_men1_m.value,0) AS HTS_I_acepted_men1_m,
COALESCE(HTS_I_acepted_1_4_m.value,0) AS HTS_I_acepted_1_4_m,
COALESCE(HTS_I_acepted_5_9_m.value,0) AS HTS_I_acepted_5_9_m,
COALESCE(HTS_I_acepted_10_14_m.value,0) AS HTS_I_acepted_10_14_m,
COALESCE(HTS_I_acepted_15_19_m.value,0) AS HTS_I_acepted_15_19_m,
COALESCE(HTS_I_acepted_20_24_m.value,0) AS HTS_I_acepted_20_24_m,
COALESCE(HTS_I_acepted_25_29_m.value,0) AS HTS_I_acepted_25_29_m,
COALESCE(HTS_I_acepted_30_34_m.value,0) AS HTS_I_acepted_30_34_m,
COALESCE(HTS_I_acepted_35_39_m.value,0) AS HTS_I_acepted_35_39_m,
COALESCE(HTS_I_acepted_40_44_m.value,0) AS HTS_I_acepted_40_44_m,
COALESCE(HTS_I_acepted_45_49_m.value,0) AS HTS_I_acepted_45_49_m,
COALESCE(HTS_I_acepted_50_m.value,0) AS HTS_I_acepted_50_m,
/*Elicited*/
'' AS placeholder77,
(COALESCE(cpn_index_contact_pos.value,0)+COALESCE(cpn_index_contact_neg.value,0)) AS CPN_index_contact_m,
(COALESCE(atip_index_0_8_f_pos.value,0)+COALESCE(ats_index_0_8_f_pos.value,0)+
COALESCE(atip_index_9_18_f_pos.value,0)+COALESCE(atip_index_19_4_f_pos.value,0)+COALESCE(ats_index_9_18_f_pos.value,0)+COALESCE(ats_index_19_4_f_pos.value,0)+
COALESCE(atip_index_5_9_f_pos.value,0)+COALESCE(ats_index_5_9_f_pos.value,0)+
COALESCE(atip_index_10_14_f_pos.value,0)+COALESCE(ats_index_10_14_f_pos.value,0)+
COALESCE(atip_index_0_8_f_neg.value,0)+COALESCE(ats_index_0_8_f_neg.value,0)+
COALESCE(atip_index_9_18_f_neg.value,0)+COALESCE(atip_index_19_4_f_neg.value,0)+COALESCE(ats_index_9_18_f_neg.value,0)+COALESCE(ats_index_19_4_f_neg.value,0)+
COALESCE(atip_index_5_9_f_neg.value,0)+COALESCE(ats_index_5_9_f_neg.value,0)+
COALESCE(atip_index_10_14_f_neg.value,0)+COALESCE(ats_index_10_14_f_neg.value,0)
) AS Index_contact_men15_f,
(COALESCE(atip_index_0_8_m_pos.value,0)+COALESCE(ats_index_0_8_m_pos.value,0)+
COALESCE(atip_index_9_18_m_pos.value,0)+COALESCE(atip_index_19_4_m_pos.value,0)+COALESCE(ats_index_9_18_m_pos.value,0)+COALESCE(ats_index_19_4_m_pos.value,0)+
COALESCE(atip_index_5_9_m_pos.value,0)+COALESCE(ats_index_5_9_m_pos.value,0)+
COALESCE(atip_index_10_14_m_pos.value,0)+COALESCE(ats_index_10_14_m_pos.value,0)+
COALESCE(atip_index_0_8_m_neg.value,0)+COALESCE(ats_index_0_8_m_neg.value,0)+
COALESCE(atip_index_9_18_m_neg.value,0)+COALESCE(atip_index_19_4_m_neg.value,0)+COALESCE(ats_index_9_18_m_neg.value,0)+COALESCE(ats_index_19_4_m_neg.value,0)+
COALESCE(atip_index_5_9_m_neg.value,0)+COALESCE(ats_index_5_9_m_neg.value,0)+
COALESCE(atip_index_10_14_m_neg.value,0)+COALESCE(ats_index_10_14_m_neg.value,0)
) AS Index_contact_men15_m,
(COALESCE(atip_index_15_19_f_pos.value,0)+COALESCE(ats_index_15_19_f_pos.value,0)+
COALESCE(atip_index_20_24_f_pos.value,0)+COALESCE(ats_index_20_24_f_pos.value,0)+
COALESCE(atip_index_25_29_f_pos.value,0)+COALESCE(ats_index_25_29_f_pos.value,0)+
COALESCE(atip_index_30_49_f_pos.value,0)+COALESCE(ats_index_30_49_f_pos.value,0)+
COALESCE(atip_index_50_f_pos.value,0)+COALESCE(ats_index_50_f_pos.value,0)+
COALESCE(atip_index_15_19_f_neg.value,0)+COALESCE(ats_index_15_19_f_neg.value,0)+
COALESCE(atip_index_20_24_f_neg.value,0)+COALESCE(ats_index_20_24_f_neg.value,0)+
COALESCE(atip_index_25_29_f_neg.value,0)+COALESCE(ats_index_25_29_f_neg.value,0)+
COALESCE(atip_index_30_49_f_neg.value,0)+COALESCE(ats_index_30_49_f_neg.value,0)+
COALESCE(atip_index_50_f_neg.value,0)+COALESCE(ats_index_50_f_neg.value,0)
) AS Index_contact_mai15_f,
(COALESCE(atip_index_15_19_m_pos.value,0)+COALESCE(ats_index_15_19_m_pos.value,0)+
COALESCE(atip_index_20_24_m_pos.value,0)+COALESCE(ats_index_20_24_m_pos.value,0)+
COALESCE(atip_index_25_29_m_pos.value,0)+COALESCE(ats_index_25_29_m_pos.value,0)+
COALESCE(atip_index_30_49_m_pos.value,0)+COALESCE(ats_index_30_49_m_pos.value,0)+
COALESCE(atip_index_50_m_pos.value,0)+COALESCE(ats_index_50_m_pos.value,0)+
COALESCE(atip_index_15_19_m_neg.value,0)+COALESCE(ats_index_15_19_m_neg.value,0)+
COALESCE(atip_index_20_24_m_neg.value,0)+COALESCE(ats_index_20_24_m_neg.value,0)+
COALESCE(atip_index_25_29_m_neg.value,0)+COALESCE(ats_index_25_29_m_neg.value,0)+
COALESCE(atip_index_30_49_m_neg.value,0)+COALESCE(ats_index_30_49_m_neg.value,0)+
COALESCE(atip_index_50_m_neg.value,0)+COALESCE(ats_index_50_m_neg.value,0)
) AS Index_contact_mai15_m,
'' AS placeholder78,
'' AS placeholder79,
'' AS placeholder80,
'' AS placeholder81,
/*Contacts*/
COALESCE(cpn_index_contact_pos.value,0) AS CPN_index_contact_m_pos_unk,
(COALESCE(atip_index_0_8_f_pos.value,0)+COALESCE(ats_index_0_8_f_pos.value,0)) AS HTS_TST_Index_men1_f_pos,
(COALESCE(atip_index_0_8_m_pos.value,0)+COALESCE(ats_index_0_8_m_pos.value,0)) AS HTS_TST_Index_men1_m_pos,
(COALESCE(atip_index_9_18_f_pos.value,0)+COALESCE(atip_index_19_4_f_pos.value,0)+COALESCE(ats_index_9_18_f_pos.value,0)+COALESCE(ats_index_19_4_f_pos.value,0)) AS HTS_TST_Index_1_4_f_pos,
(COALESCE(atip_index_9_18_m_pos.value,0)+COALESCE(atip_index_19_4_m_pos.value,0)+COALESCE(ats_index_9_18_m_pos.value,0)+COALESCE(ats_index_19_4_m_pos.value,0)) AS HTS_TST_Index_1_4_m_pos,
(COALESCE(atip_index_5_9_f_pos.value,0)+COALESCE(ats_index_5_9_f_pos.value,0)) AS HTS_TST_Index_5_9_f_pos,
(COALESCE(atip_index_5_9_m_pos.value,0)+COALESCE(ats_index_5_9_m_pos.value,0)) AS HTS_TST_Index_5_9_m_pos,
(COALESCE(atip_index_10_14_f_pos.value,0)+COALESCE(ats_index_10_14_f_pos.value,0)) AS HTS_TST_Index_10_14_f_pos,
(COALESCE(atip_index_10_14_m_pos.value,0)+COALESCE(ats_index_10_14_m_pos.value,0)) AS HTS_TST_Index_10_14_m_pos,
(COALESCE(atip_index_15_19_f_pos.value,0)+COALESCE(ats_index_15_19_f_pos.value,0)) AS HTS_TST_Index_15_19_f_pos,
(COALESCE(atip_index_15_19_m_pos.value,0)+COALESCE(ats_index_15_19_m_pos.value,0)) AS HTS_TST_Index_15_19_m_pos,
(COALESCE(atip_index_20_24_f_pos.value,0)+COALESCE(ats_index_20_24_f_pos.value,0)) AS HTS_TST_Index_20_24_f_pos,
(COALESCE(atip_index_20_24_m_pos.value,0)+COALESCE(ats_index_20_24_m_pos.value,0)) AS HTS_TST_Index_20_24_m_pos,
(COALESCE(atip_index_25_29_f_pos.value,0)+COALESCE(ats_index_25_29_f_pos.value,0)) AS HTS_TST_Index_25_29_f_pos,
(COALESCE(atip_index_25_29_m_pos.value,0)+COALESCE(ats_index_25_29_m_pos.value,0)) AS HTS_TST_Index_25_29_m_pos,
(COALESCE(atip_index_30_49_f_pos.value,0)+COALESCE(ats_index_30_49_f_pos.value,0)) AS HTS_TST_Index_30_49_f_pos,
(COALESCE(atip_index_30_49_m_pos.value,0)+COALESCE(ats_index_30_49_m_pos.value,0)) AS HTS_TST_Index_30_49_m_pos,
(COALESCE(atip_index_50_f_pos.value,0)+COALESCE(ats_index_50_f_pos.value,0)) AS HTS_TST_Index_50_f_pos,
(COALESCE(atip_index_50_m_pos.value,0)+COALESCE(ats_index_50_m_pos.value,0)) AS HTS_TST_Index_50_m_pos,
COALESCE(cpn_index_contact_neg.value,0) AS CPN_index_contact_m_neg_unk,
(COALESCE(atip_index_0_8_f_neg.value,0)+COALESCE(ats_index_0_8_f_neg.value,0)) AS HTS_TST_Index_men1_f_neg,
(COALESCE(atip_index_0_8_m_neg.value,0)+COALESCE(ats_index_0_8_m_neg.value,0)) AS HTS_TST_Index_men1_m_neg,
(COALESCE(atip_index_9_18_f_neg.value,0)+COALESCE(atip_index_19_4_f_neg.value,0)+COALESCE(ats_index_9_18_f_neg.value,0)+COALESCE(ats_index_19_4_f_neg.value,0)) AS HTS_TST_Index_1_4_f_neg,
(COALESCE(atip_index_9_18_m_neg.value,0)+COALESCE(atip_index_19_4_m_neg.value,0)+COALESCE(ats_index_9_18_m_neg.value,0)+COALESCE(ats_index_19_4_m_neg.value,0)) AS HTS_TST_Index_1_4_m_neg,
(COALESCE(atip_index_5_9_f_neg.value,0)+COALESCE(ats_index_5_9_f_neg.value,0)) AS HTS_TST_Index_5_9_f_neg,
(COALESCE(atip_index_5_9_m_neg.value,0)+COALESCE(ats_index_5_9_m_neg.value,0)) AS HTS_TST_Index_5_9_m_neg,
(COALESCE(atip_index_10_14_f_neg.value,0)+COALESCE(ats_index_10_14_f_neg.value,0)) AS HTS_TST_Index_10_14_f_neg,
(COALESCE(atip_index_10_14_m_neg.value,0)+COALESCE(ats_index_10_14_m_neg.value,0)) AS HTS_TST_Index_10_14_m_neg,
(COALESCE(atip_index_15_19_f_neg.value,0)+COALESCE(ats_index_15_19_f_neg.value,0)) AS HTS_TST_Index_15_19_f_neg,
(COALESCE(atip_index_15_19_m_neg.value,0)+COALESCE(ats_index_15_19_m_neg.value,0)) AS HTS_TST_Index_15_19_m_neg,
(COALESCE(atip_index_20_24_f_neg.value,0)+COALESCE(ats_index_20_24_f_neg.value,0)) AS HTS_TST_Index_20_24_f_neg,
(COALESCE(atip_index_20_24_m_neg.value,0)+COALESCE(ats_index_20_24_m_neg.value,0)) AS HTS_TST_Index_20_24_m_neg,
(COALESCE(atip_index_25_29_f_neg.value,0)+COALESCE(ats_index_25_29_f_neg.value,0)) AS HTS_TST_Index_25_29_f_neg,
(COALESCE(atip_index_25_29_m_neg.value,0)+COALESCE(ats_index_25_29_m_neg.value,0)) AS HTS_TST_Index_25_29_m_neg,
(COALESCE(atip_index_30_49_f_neg.value,0)+COALESCE(ats_index_30_49_f_neg.value,0)) AS HTS_TST_Index_30_49_f_neg,
(COALESCE(atip_index_30_49_m_neg.value,0)+COALESCE(ats_index_30_49_m_neg.value,0)) AS HTS_TST_Index_30_49_m_neg,
(COALESCE(atip_index_50_f_neg.value,0)+COALESCE(ats_index_50_f_neg.value,0)) AS HTS_TST_Index_50_f_neg,
(COALESCE(atip_index_50_m_neg.value,0)+COALESCE(ats_index_50_m_neg.value,0)) AS HTS_TST_Index_50_m_neg,

/*Auto-Calculate*/
/*PMTCT_STAT (Numerator)*/
/*
Since Q1FY19 its Auto-Calculate
(COALESCE(PMTCT_STAT_17q2_num.value,0)+COALESCE(PMTCT_STAT_17q1_num.value,0)) AS PMTCT_STAT_num,
Since Q1FY19 its not necessary desagregate by Age
(COALESCE(HTS_TST_PMTCT_10_14_pos.value,0)+COALESCE(HTS_TST_PMTCT_10_14_neg.value,0)+COALESCE(PMTCT_STAT_17q2_10_14_known_pos.value,0)) AS PMTCT_STAT_10_14_num,
(COALESCE(HTS_TST_PMTCT_15_19_pos.value,0)+COALESCE(HTS_TST_PMTCT_15_19_neg.value,0)+COALESCE(PMTCT_STAT_17q2_15_19_known_pos.value,0)) AS PMTCT_STAT_15_19_num,
(COALESCE(HTS_TST_PMTCT_20_24_pos.value,0)+COALESCE(HTS_TST_PMTCT_20_24_neg.value,0)+COALESCE(PMTCT_STAT_17q2_20_24_known_pos.value,0)) AS PMTCT_STAT_20_24_num,
(COALESCE(PMTCT_STAT_17q2_25_49_known_pos.value,0)+COALESCE(HTS_TST_PMTCT_25_pos.value,0)+COALESCE(HTS_TST_PMTCT_25_neg.value,0)+COALESCE(PMTCT_STAT_17q2_25_known_pos.value,0)) AS PMTCT_STAT_25_49_num,*/
(
COALESCE(PMTCT_STAT_17q2_10_14_known_pos.value,0)+
COALESCE(HTS_TST_PMTCT_10_14_pos.value,0)+
COALESCE(HTS_TST_PMTCT_10_14_neg.value,0)+
COALESCE(PMTCT_STAT_17q2_15_19_known_pos.value,0)+
COALESCE(HTS_TST_PMTCT_15_19_pos.value,0)+
COALESCE(HTS_TST_PMTCT_15_19_neg.value,0)+
COALESCE(PMTCT_STAT_17q2_20_24_known_pos.value,0)+
COALESCE(HTS_TST_PMTCT_20_24_pos.value,0)+
COALESCE(HTS_TST_PMTCT_20_24_neg.value,0)+
(COALESCE(PMTCT_STAT_17q2_25_49_known_pos.value,0)+COALESCE(PMTCT_STAT_17q2_25_known_pos.value,0))+
COALESCE(HTS_TST_PMTCT_25_pos.value,0)+
COALESCE(HTS_TST_PMTCT_25_neg.value,0) 
) AS PMTCT_STAT_num,
COALESCE(PMTCT_STAT_17q2_10_14_known_pos.value,0) AS PMTCT_STAT_10_14_known_pos,
COALESCE(HTS_TST_PMTCT_10_14_pos.value,0) AS HTS_TST_PMTCT_10_14_pos2,
COALESCE(HTS_TST_PMTCT_10_14_neg.value,0) AS HTS_TST_PMTCT_10_14_neg2,
COALESCE(PMTCT_STAT_17q2_15_19_known_pos.value,0) AS PMTCT_STAT_15_19_known_pos,
COALESCE(HTS_TST_PMTCT_15_19_pos.value,0) AS HTS_TST_PMTCT_15_19_pos2,
COALESCE(HTS_TST_PMTCT_15_19_neg.value,0) AS HTS_TST_PMTCT_15_19_neg2,
COALESCE(PMTCT_STAT_17q2_20_24_known_pos.value,0) AS PMTCT_STAT_20_24_known_pos,
COALESCE(HTS_TST_PMTCT_20_24_pos.value,0) AS HTS_TST_PMTCT_20_24_pos2,
COALESCE(HTS_TST_PMTCT_20_24_neg.value,0) AS HTS_TST_PMTCT_20_24_neg2,
(COALESCE(PMTCT_STAT_17q2_25_49_known_pos.value,0)+COALESCE(PMTCT_STAT_17q2_25_known_pos.value,0)) AS PMTCT_STAT_25_49_known_pos,
COALESCE(HTS_TST_PMTCT_25_pos.value,0) AS HTS_TST_PMTCT_25_49_pos2,
COALESCE(HTS_TST_PMTCT_25_neg.value,0) AS HTS_TST_PMTCT_25_49_neg2,
/*Auto-Calculate*/
/*PMTCT_STAT (Denominator)*/
(
COALESCE(PMTCT_STAT_17q2_10_14_den.value,0)+
COALESCE(PMTCT_STAT_17q2_15_19_den.value,0)+
COALESCE(PMTCT_STAT_17q2_20_24_den.value,0)+
(COALESCE(PMTCT_STAT_17q2_25_49_den.value,0)+COALESCE(PMTCT_STAT_17q2_25_den.value,0)) 
) AS PMTCT_STAT_den,
COALESCE(PMTCT_STAT_17q2_10_14_den.value,0) AS PMTCT_STAT_10_14_den,
COALESCE(PMTCT_STAT_17q2_15_19_den.value,0) AS PMTCT_STAT_15_19_den,
COALESCE(PMTCT_STAT_17q2_20_24_den.value,0) AS PMTCT_STAT_20_24_den,
(COALESCE(PMTCT_STAT_17q2_25_49_den.value,0)+COALESCE(PMTCT_STAT_17q2_25_den.value,0)) AS PMTCT_STAT_25_49_den,
/*Auto-Calculate*/
/*PMTCT_EID*/
(
COALESCE(PMTCT_EID_0_2_total.value,0)+
COALESCE(PMTCT_EID_2_12_total.value,0)
) AS PMTCT_EID,
COALESCE(PMTCT_EID_0_2_total.value,0) AS PMTCT_EID_0_2_test,
COALESCE(PMTCT_EID_2_12_total.value,0) AS PMTCT_EID_2_12_test,
/*Auto-Calculate*/
/*PMTCT_HEI_POS*/
(
COALESCE(PMTCT_EID_0_2_pos.value,0)+
COALESCE(PMTCT_EID_2_12_pos_sum_prev.value,0) 
) AS PMTCT_HEI_POS,
COALESCE(PMTCT_EID_0_2_pos.value,0) AS PMTCT_EID_0_2_pos,
COALESCE(PMTCT_EID_2_12_pos_sum_prev.value,0) AS PMTCT_EID_2_12_pos,
COALESCE(PMTCT_EID_0_2_art.value,0) AS PMTCT_EID_0_2_art,
COALESCE(PMTCT_EID_2_12_art.value,0) AS PMTCT_EID_2_12_art,
/*Auto-Calculate*/
/*TB_STAT Numerator*/
(
COALESCE(TB_STAT_kp_men1_f.value,0)+
COALESCE(TB_STAT_kp_men1_m.value,0)+
COALESCE(TB_STAT_kp_1_4_f.value,0)+
COALESCE(TB_STAT_kp_1_4_m.value,0)+
COALESCE(TB_STAT_kp_5_9_f.value,0)+
COALESCE(TB_STAT_kp_5_9_m.value,0)+
COALESCE(TB_STAT_kp_10_14_f.value,0)+
COALESCE(TB_STAT_kp_10_14_m.value,0)+
COALESCE(TB_STAT_kp_15_19_f.value,0)+
COALESCE(TB_STAT_kp_15_19_m.value,0)+
COALESCE(TB_STAT_kp_20_24_f.value,0)+
COALESCE(TB_STAT_kp_20_24_m.value,0)+
COALESCE(TB_STAT_kp_25_29_f.value,0)+
COALESCE(TB_STAT_kp_25_29_m.value,0)+
COALESCE(TB_STAT_kp_30_34_f.value,0)+
COALESCE(TB_STAT_kp_30_34_m.value,0)+
COALESCE(TB_STAT_kp_35_39_f.value,0)+
COALESCE(TB_STAT_kp_35_39_m.value,0)+
COALESCE(TB_STAT_kp_40_44_f.value,0)+
COALESCE(TB_STAT_kp_40_44_m.value,0)+
COALESCE(TB_STAT_kp_45_49_f.value,0)+
COALESCE(TB_STAT_kp_45_49_m.value,0)+
COALESCE(TB_STAT_kp_50_f.value,0)+
COALESCE(TB_STAT_kp_50_m.value,0)+
/*COALESCE(TB_STAT_kn_men1_f.value,0)+
COALESCE(TB_STAT_kn_men1_m.value,0)+
COALESCE(TB_STAT_kn_1_4_f.value,0)+
COALESCE(TB_STAT_kn_1_4_m.value,0)+
COALESCE(TB_STAT_kn_5_9_f.value,0)+
COALESCE(TB_STAT_kn_5_9_m.value,0)+
COALESCE(TB_STAT_kn_10_14_f.value,0)+
COALESCE(TB_STAT_kn_10_14_m.value,0)+
COALESCE(TB_STAT_kn_15_19_f.value,0)+
COALESCE(TB_STAT_kn_15_19_m.value,0)+
COALESCE(TB_STAT_kn_20_24_f.value,0)+
COALESCE(TB_STAT_kn_20_24_m.value,0)+
COALESCE(TB_STAT_kn_25_29_f.value,0)+
COALESCE(TB_STAT_kn_25_29_m.value,0)+
COALESCE(TB_STAT_kn_30_34_f.value,0)+
COALESCE(TB_STAT_kn_30_34_m.value,0)+
COALESCE(TB_STAT_kn_35_39_f.value,0)+
COALESCE(TB_STAT_kn_35_39_m.value,0)+
COALESCE(TB_STAT_kn_40_44_f.value,0)+
COALESCE(TB_STAT_kn_40_44_m.value,0)+
COALESCE(TB_STAT_kn_45_49_f.value,0)+
COALESCE(TB_STAT_kn_45_49_m.value,0)+
COALESCE(TB_STAT_kn_50_f.value,0)+
COALESCE(TB_STAT_kn_50_m.value,0)+*/
COALESCE(HTS_TST_TB_men1_f_pos.value,0)+
COALESCE(HTS_TST_TB_men1_m_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_f_pos.value,0)+
COALESCE(HTS_TST_TB_1_4_m_pos.value,0)+
COALESCE(HTS_TST_TB_5_9_f_pos.value,0)+
COALESCE(HTS_TST_TB_5_9_m_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_f_pos.value,0)+
COALESCE(HTS_TST_TB_10_14_m_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_f_pos.value,0)+
COALESCE(HTS_TST_TB_15_19_m_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_f_pos.value,0)+
COALESCE(HTS_TST_TB_20_24_m_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_f_pos.value,0)+
COALESCE(HTS_TST_TB_25_29_m_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_f_pos.value,0)+
COALESCE(HTS_TST_TB_30_34_m_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_f_pos.value,0)+
COALESCE(HTS_TST_TB_35_39_m_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_f_pos.value,0)+
COALESCE(HTS_TST_TB_40_44_m_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_f_pos.value,0)+
COALESCE(HTS_TST_TB_45_49_m_pos.value,0)+
COALESCE(HTS_TST_TB_50_f_pos.value,0)+
COALESCE(HTS_TST_TB_50_m_pos.value,0)+
COALESCE(HTS_TST_TB_men1_f_neg.value,0)+
COALESCE(HTS_TST_TB_men1_m_neg.value,0)+
COALESCE(HTS_TST_TB_1_4_f_neg.value,0)+
COALESCE(HTS_TST_TB_1_4_m_neg.value,0)+
COALESCE(HTS_TST_TB_5_9_f_neg.value,0)+
COALESCE(HTS_TST_TB_5_9_m_neg.value,0)+
COALESCE(HTS_TST_TB_10_14_f_neg.value,0)+
COALESCE(HTS_TST_TB_10_14_m_neg.value,0)+
COALESCE(HTS_TST_TB_15_19_f_neg.value,0)+
COALESCE(HTS_TST_TB_15_19_m_neg.value,0)+
COALESCE(HTS_TST_TB_20_24_f_neg.value,0)+
COALESCE(HTS_TST_TB_20_24_m_neg.value,0)+
COALESCE(HTS_TST_TB_25_29_f_neg.value,0)+
COALESCE(HTS_TST_TB_25_29_m_neg.value,0)+
COALESCE(HTS_TST_TB_30_34_f_neg.value,0)+
COALESCE(HTS_TST_TB_30_34_m_neg.value,0)+
COALESCE(HTS_TST_TB_35_39_f_neg.value,0)+
COALESCE(HTS_TST_TB_35_39_m_neg.value,0)+
COALESCE(HTS_TST_TB_40_44_f_neg.value,0)+
COALESCE(HTS_TST_TB_40_44_m_neg.value,0)+
COALESCE(HTS_TST_TB_45_49_f_neg.value,0)+
COALESCE(HTS_TST_TB_45_49_m_neg.value,0)+
COALESCE(HTS_TST_TB_50_f_neg.value,0)+
COALESCE(HTS_TST_TB_50_m_neg.value,0) 
) AS TB_STAT_num,
/*Known Positives*/
COALESCE(TB_STAT_kp_men1_f.value,0) AS TB_STAT_kp_men1_f,
COALESCE(TB_STAT_kp_men1_m.value,0) AS TB_STAT_kp_men1_m,
COALESCE(TB_STAT_kp_1_4_f.value,0) AS TB_STAT_kp_1_4_f,
COALESCE(TB_STAT_kp_1_4_m.value,0) AS TB_STAT_kp_1_4_m,
COALESCE(TB_STAT_kp_5_9_f.value,0) AS TB_STAT_kp_5_9_f,
COALESCE(TB_STAT_kp_5_9_m.value,0) AS TB_STAT_kp_5_9_m,
COALESCE(TB_STAT_kp_10_14_f.value,0) AS TB_STAT_kp_10_14_f,
COALESCE(TB_STAT_kp_10_14_m.value,0) AS TB_STAT_kp_10_14_m,
COALESCE(TB_STAT_kp_15_19_f.value,0) AS TB_STAT_kp_15_19_f,
COALESCE(TB_STAT_kp_15_19_m.value,0) AS TB_STAT_kp_15_19_m,
COALESCE(TB_STAT_kp_20_24_f.value,0) AS TB_STAT_kp_20_24_f,
COALESCE(TB_STAT_kp_20_24_m.value,0) AS TB_STAT_kp_20_24_m,
COALESCE(TB_STAT_kp_25_29_f.value,0) AS TB_STAT_kp_25_29_f,
COALESCE(TB_STAT_kp_25_29_m.value,0) AS TB_STAT_kp_25_29_m,
COALESCE(TB_STAT_kp_30_34_f.value,0) AS TB_STAT_kp_30_34_f,
COALESCE(TB_STAT_kp_30_34_m.value,0) AS TB_STAT_kp_30_34_m,
COALESCE(TB_STAT_kp_35_39_f.value,0) AS TB_STAT_kp_35_39_f,
COALESCE(TB_STAT_kp_35_39_m.value,0) AS TB_STAT_kp_35_39_m,
COALESCE(TB_STAT_kp_40_44_f.value,0) AS TB_STAT_kp_40_44_f,
COALESCE(TB_STAT_kp_40_44_m.value,0) AS TB_STAT_kp_40_44_m,
COALESCE(TB_STAT_kp_45_49_f.value,0) AS TB_STAT_kp_45_49_f,
COALESCE(TB_STAT_kp_45_49_m.value,0) AS TB_STAT_kp_45_49_m,
COALESCE(TB_STAT_kp_50_f.value,0) AS TB_STAT_kp_50_f,
COALESCE(TB_STAT_kp_50_m.value,0) AS TB_STAT_kp_50_m,
/*Newly Tested Positives*/
COALESCE(HTS_TST_TB_men1_f_pos.value,0) AS HTS_TST_TB_men1_f_pos2,
COALESCE(HTS_TST_TB_men1_m_pos.value,0) AS HTS_TST_TB_men1_m_pos2,
COALESCE(HTS_TST_TB_1_4_f_pos.value,0) AS HTS_TST_TB_1_4_f_pos2,
COALESCE(HTS_TST_TB_1_4_m_pos.value,0) AS HTS_TST_TB_1_4_m_pos2,
COALESCE(HTS_TST_TB_5_9_f_pos.value,0) AS HTS_TST_TB_5_9_f_pos2,
COALESCE(HTS_TST_TB_5_9_m_pos.value,0) AS HTS_TST_TB_5_9_m_pos2,
COALESCE(HTS_TST_TB_10_14_f_pos.value,0) AS HTS_TST_TB_10_14_f_pos2,
COALESCE(HTS_TST_TB_10_14_m_pos.value,0) AS HTS_TST_TB_10_14_m_pos2,
COALESCE(HTS_TST_TB_15_19_f_pos.value,0) AS HTS_TST_TB_15_19_f_pos2,
COALESCE(HTS_TST_TB_15_19_m_pos.value,0) AS HTS_TST_TB_15_19_m_pos2,
COALESCE(HTS_TST_TB_20_24_f_pos.value,0) AS HTS_TST_TB_20_24_f_pos2,
COALESCE(HTS_TST_TB_20_24_m_pos.value,0) AS HTS_TST_TB_20_24_m_pos2,
COALESCE(HTS_TST_TB_25_29_f_pos.value,0) AS HTS_TST_TB_25_29_f_pos2,
COALESCE(HTS_TST_TB_25_29_m_pos.value,0) AS HTS_TST_TB_25_29_m_pos2,
COALESCE(HTS_TST_TB_30_34_f_pos.value,0) AS HTS_TST_TB_30_34_f_pos2,
COALESCE(HTS_TST_TB_30_34_m_pos.value,0) AS HTS_TST_TB_30_34_m_pos2,
COALESCE(HTS_TST_TB_35_39_f_pos.value,0) AS HTS_TST_TB_35_39_f_pos2,
COALESCE(HTS_TST_TB_35_39_m_pos.value,0) AS HTS_TST_TB_35_39_m_pos2,
COALESCE(HTS_TST_TB_40_44_f_pos.value,0) AS HTS_TST_TB_40_44_f_pos2,
COALESCE(HTS_TST_TB_40_44_m_pos.value,0) AS HTS_TST_TB_40_44_m_pos2,
COALESCE(HTS_TST_TB_45_49_f_pos.value,0) AS HTS_TST_TB_45_49_f_pos2,
COALESCE(HTS_TST_TB_45_49_m_pos.value,0) AS HTS_TST_TB_45_49_m_pos2,
COALESCE(HTS_TST_TB_50_f_pos.value,0) AS HTS_TST_TB_50_f_pos2,
COALESCE(HTS_TST_TB_50_m_pos.value,0) AS HTS_TST_TB_50_m_pos2,
/*New Negatives*/
COALESCE(HTS_TST_TB_men1_f_neg.value,0) AS HTS_TST_TB_men1_f_neg2,
COALESCE(HTS_TST_TB_men1_m_neg.value,0) AS HTS_TST_TB_men1_m_neg2,
COALESCE(HTS_TST_TB_1_4_f_neg.value,0) AS HTS_TST_TB_1_4_f_neg2,
COALESCE(HTS_TST_TB_1_4_m_neg.value,0) AS HTS_TST_TB_1_4_m_neg2,
COALESCE(HTS_TST_TB_5_9_f_neg.value,0) AS HTS_TST_TB_5_9_f_neg2,
COALESCE(HTS_TST_TB_5_9_m_neg.value,0) AS HTS_TST_TB_5_9_m_neg2,
COALESCE(HTS_TST_TB_10_14_f_neg.value,0) AS HTS_TST_TB_10_14_f_neg2,
COALESCE(HTS_TST_TB_10_14_m_neg.value,0) AS HTS_TST_TB_10_14_m_neg2,
COALESCE(HTS_TST_TB_15_19_f_neg.value,0) AS HTS_TST_TB_15_19_f_neg2,
COALESCE(HTS_TST_TB_15_19_m_neg.value,0) AS HTS_TST_TB_15_19_m_neg2,
COALESCE(HTS_TST_TB_20_24_f_neg.value,0) AS HTS_TST_TB_20_24_f_neg2,
COALESCE(HTS_TST_TB_20_24_m_neg.value,0) AS HTS_TST_TB_20_24_m_neg2,
COALESCE(HTS_TST_TB_25_29_f_neg.value,0) AS HTS_TST_TB_25_29_f_neg2,
COALESCE(HTS_TST_TB_25_29_m_neg.value,0) AS HTS_TST_TB_25_29_m_neg2,
COALESCE(HTS_TST_TB_30_34_f_neg.value,0) AS HTS_TST_TB_30_34_f_neg2,
COALESCE(HTS_TST_TB_30_34_m_neg.value,0) AS HTS_TST_TB_30_34_m_neg2,
COALESCE(HTS_TST_TB_35_39_f_neg.value,0) AS HTS_TST_TB_35_39_f_neg2,
COALESCE(HTS_TST_TB_35_39_m_neg.value,0) AS HTS_TST_TB_35_39_m_neg2,
COALESCE(HTS_TST_TB_40_44_f_neg.value,0) AS HTS_TST_TB_40_44_f_neg2,
COALESCE(HTS_TST_TB_40_44_m_neg.value,0) AS HTS_TST_TB_40_44_m_neg2,
COALESCE(HTS_TST_TB_45_49_f_neg.value,0) AS HTS_TST_TB_45_49_f_neg2,
COALESCE(HTS_TST_TB_45_49_m_neg.value,0) AS HTS_TST_TB_45_49_m_neg2,
COALESCE(HTS_TST_TB_50_f_neg.value,0) AS HTS_TST_TB_50_f_neg2,
COALESCE(HTS_TST_TB_50_m_neg.value,0) AS HTS_TST_TB_50_m_neg2,
/*Auto-Calculate*/
/*TB_STAT Denominator*/
(
COALESCE(TB_STAT_den_men1_f.value,0)+
COALESCE(TB_STAT_den_men1_m.value,0)+
COALESCE(TB_STAT_den_1_4_f.value,0)+
COALESCE(TB_STAT_den_1_4_m.value,0)+
COALESCE(TB_STAT_den_5_9_f.value,0)+
COALESCE(TB_STAT_den_5_9_m.value,0)+
COALESCE(TB_STAT_den_10_14_f.value,0)+
COALESCE(TB_STAT_den_10_14_m.value,0)+
COALESCE(TB_STAT_den_15_19_f.value,0)+
COALESCE(TB_STAT_den_15_19_m.value,0)+
COALESCE(TB_STAT_den_20_24_f.value,0)+
COALESCE(TB_STAT_den_20_24_m.value,0)+
COALESCE(TB_STAT_den_25_29_f.value,0)+
COALESCE(TB_STAT_den_25_29_m.value,0)+
COALESCE(TB_STAT_den_30_34_f.value,0)+
COALESCE(TB_STAT_den_30_34_m.value,0)+
COALESCE(TB_STAT_den_35_39_f.value,0)+
COALESCE(TB_STAT_den_35_39_m.value,0)+
COALESCE(TB_STAT_den_40_44_f.value,0)+
COALESCE(TB_STAT_den_40_44_m.value,0)+
COALESCE(TB_STAT_den_45_49_f.value,0)+
COALESCE(TB_STAT_den_45_49_m.value,0)+
COALESCE(TB_STAT_den_50_f.value,0)+
COALESCE(TB_STAT_den_50_m.value,0) 
)AS TB_STAT_den,
COALESCE(TB_STAT_den_men1_f.value,0) AS TB_STAT_den_men1_f,
COALESCE(TB_STAT_den_men1_m.value,0) AS TB_STAT_den_men1_m,
COALESCE(TB_STAT_den_1_4_f.value,0) AS TB_STAT_den_1_4_f,
COALESCE(TB_STAT_den_1_4_m.value,0) AS TB_STAT_den_1_4_m,
COALESCE(TB_STAT_den_5_9_f.value,0) AS TB_STAT_den_5_9_f,
COALESCE(TB_STAT_den_5_9_m.value,0) AS TB_STAT_den_5_9_m,
COALESCE(TB_STAT_den_10_14_f.value,0) AS TB_STAT_den_10_14_f,
COALESCE(TB_STAT_den_10_14_m.value,0) AS TB_STAT_den_10_14_m,
COALESCE(TB_STAT_den_15_19_f.value,0) AS TB_STAT_den_15_19_f,
COALESCE(TB_STAT_den_15_19_m.value,0) AS TB_STAT_den_15_19_m,
COALESCE(TB_STAT_den_20_24_f.value,0) AS TB_STAT_den_20_24_f,
COALESCE(TB_STAT_den_20_24_m.value,0) AS TB_STAT_den_20_24_m,
COALESCE(TB_STAT_den_25_29_f.value,0) AS TB_STAT_den_25_29_f,
COALESCE(TB_STAT_den_25_29_m.value,0) AS TB_STAT_den_25_29_m,
COALESCE(TB_STAT_den_30_34_f.value,0) AS TB_STAT_den_30_34_f,
COALESCE(TB_STAT_den_30_34_m.value,0) AS TB_STAT_den_30_34_m,
COALESCE(TB_STAT_den_35_39_f.value,0) AS TB_STAT_den_35_39_f,
COALESCE(TB_STAT_den_35_39_m.value,0) AS TB_STAT_den_35_39_m,
COALESCE(TB_STAT_den_40_44_f.value,0) AS TB_STAT_den_40_44_f,
COALESCE(TB_STAT_den_40_44_m.value,0) AS TB_STAT_den_40_44_m,
COALESCE(TB_STAT_den_45_49_f.value,0) AS TB_STAT_den_45_49_f,
COALESCE(TB_STAT_den_45_49_m.value,0) AS TB_STAT_den_45_49_m,
COALESCE(TB_STAT_den_50_f.value,0) AS TB_STAT_den_50_f,
COALESCE(TB_STAT_den_50_m.value,0) AS TB_STAT_den_50_m,
/*On ART*/
/*TX_NEW*/
COALESCE(TX_NEW_num.value,0) AS TX_NEW_num,
COALESCE(TX_NEW_breast.value,0) AS TX_NEW_breast,
COALESCE(TX_NEW_men1_f.value,0) AS TX_NEW_men1_f,
COALESCE(TX_NEW_1_4_f.value,0) AS TX_NEW_1_4_f,
COALESCE(TX_NEW_5_9_f.value,0) AS TX_NEW_5_9_f,
COALESCE(TX_NEW_10_14_f.value,0) AS TX_NEW_10_14_f,
COALESCE(TX_NEW_15_19_f.value,0) AS TX_NEW_15_19_f,
COALESCE(TX_NEW_20_24_f.value,0) AS TX_NEW_20_24_f,
COALESCE(TX_NEW_25_29_f.value,0) AS TX_NEW_25_29_f,
COALESCE(TX_NEW_30_34_f.value,0) AS TX_NEW_30_34_f,
COALESCE(TX_NEW_35_39_f.value,0) AS TX_NEW_35_39_f,
COALESCE(TX_NEW_40_44_f.value,0) AS TX_NEW_40_44_f,
COALESCE(TX_NEW_45_49_f.value,0) AS TX_NEW_45_49_f,
COALESCE(TX_NEW_50_f.value,0) AS TX_NEW_50_f,
COALESCE(TX_NEW_men1_m.value,0) AS TX_NEW_men1_m,
COALESCE(TX_NEW_1_4_m.value,0) AS TX_NEW_1_4_m,
COALESCE(TX_NEW_5_9_m.value,0) AS TX_NEW_5_9_m,
COALESCE(TX_NEW_10_14_m.value,0) AS TX_NEW_10_14_m,
COALESCE(TX_NEW_15_19_m.value,0) AS TX_NEW_15_19_m,
COALESCE(TX_NEW_20_24_m.value,0) AS TX_NEW_20_24_m,
COALESCE(TX_NEW_25_29_m.value,0) AS TX_NEW_25_29_m,
COALESCE(TX_NEW_30_34_m.value,0) AS TX_NEW_30_34_m,
COALESCE(TX_NEW_35_39_m.value,0) AS TX_NEW_35_39_m,
COALESCE(TX_NEW_40_44_m.value,0) AS TX_NEW_40_44_m,
COALESCE(TX_NEW_45_49_m.value,0) AS TX_NEW_45_49_m,
COALESCE(TX_NEW_50_m.value,0) AS TX_NEW_50_m,
COALESCE(TX_NEW_coarse_f_men15.value,0) AS TX_NEW_coarse_f_men15,
COALESCE(TX_NEW_coarse_f_mai15.value,0) AS TX_NEW_coarse_f_mai15,
COALESCE(TX_NEW_coarse_m_men15.value,0) AS TX_NEW_coarse_m_men15,
COALESCE(TX_NEW_coarse_m_mai15.value,0) AS TX_NEW_coarse_m_mai15,
/*TX_CURR*/
COALESCE(TX_CURR_num.value,0) AS TX_CURR_num,
COALESCE(TX_CURR_men1_f.value,0) AS TX_CURR_men1_f,
COALESCE(TX_CURR_1_4_f.value,0) AS TX_CURR_1_4_f,
COALESCE(TX_CURR_5_9_f.value,0) AS TX_CURR_5_9_f,
COALESCE(TX_CURR_10_14_f.value,0) AS TX_CURR_10_14_f,
COALESCE(TX_CURR_15_19_f.value,0) AS TX_CURR_15_19_f,
COALESCE(TX_CURR_20_24_f.value,0) AS TX_CURR_20_24_f,
COALESCE(TX_CURR_25_29_f.value,0) AS TX_CURR_25_29_f,
COALESCE(TX_CURR_30_34_f.value,0) AS TX_CURR_30_34_f,
COALESCE(TX_CURR_35_39_f.value,0) AS TX_CURR_35_39_f,
COALESCE(TX_CURR_40_44_f.value,0) AS TX_CURR_40_44_f,
COALESCE(TX_CURR_45_49_f.value,0) AS TX_CURR_45_49_f,
COALESCE(TX_CURR_50_f.value,0) AS TX_CURR_50_f,
COALESCE(TX_CURR_men1_m.value,0) AS TX_CURR_men1_m,
COALESCE(TX_CURR_1_4_m.value,0) AS TX_CURR_1_4_m,
COALESCE(TX_CURR_5_9_m.value,0) AS TX_CURR_5_9_m,
COALESCE(TX_CURR_10_14_m.value,0) AS TX_CURR_10_14_m,
COALESCE(TX_CURR_15_19_m.value,0) AS TX_CURR_15_19_m,
COALESCE(TX_CURR_20_24_m.value,0) AS TX_CURR_20_24_m,
COALESCE(TX_CURR_25_29_m.value,0) AS TX_CURR_25_29_m,
COALESCE(TX_CURR_30_34_m.value,0) AS TX_CURR_30_34_m,
COALESCE(TX_CURR_35_39_m.value,0) AS TX_CURR_35_39_m,
COALESCE(TX_CURR_40_44_m.value,0) AS TX_CURR_40_44_m,
COALESCE(TX_CURR_45_49_m.value,0) AS TX_CURR_45_49_m,
COALESCE(TX_CURR_50_m.value,0) AS TX_CURR_50_m,
COALESCE(TX_CURR_coarse_f_men15.value,0) AS TX_CURR_coarse_f_men15,
COALESCE(TX_CURR_coarse_f_mai15.value,0) AS TX_CURR_coarse_f_mai15,
COALESCE(TX_CURR_coarse_m_men15.value,0) AS TX_CURR_coarse_m_men15,
COALESCE(TX_CURR_coarse_m_mai15.value,0) AS TX_CURR_coarse_m_mai15,
/*Auto-Calculate*/
/*PMTCT_ART*/
(
COALESCE(PMTCT_ART_New_10_14.value,0)+
COALESCE(PMTCT_ART_New_15_19.value,0)+
COALESCE(PMTCT_ART_New_20_24.value,0)+
COALESCE(PMTCT_ART_New_25.value,0)+
COALESCE(PMTCT_ART_Already_10_14.value,0)+
COALESCE(PMTCT_ART_Already_15_19.value,0)+
COALESCE(PMTCT_ART_Already_20_24.value,0)+
COALESCE(PMTCT_ART_Already_25.value,0) 
) AS PMTCT_ART_num,
COALESCE(PMTCT_ART_New_10_14.value,0) AS PMTCT_ART_New_10_14,
COALESCE(PMTCT_ART_New_15_19.value,0) AS PMTCT_ART_New_15_19,
COALESCE(PMTCT_ART_New_20_24.value,0) AS PMTCT_ART_New_20_24,
COALESCE(PMTCT_ART_New_25.value,0) AS PMTCT_ART_New_25,
COALESCE(PMTCT_ART_Already_10_14.value,0) AS PMTCT_ART_Already_10_14,
COALESCE(PMTCT_ART_Already_15_19.value,0) AS PMTCT_ART_Already_15_19,
COALESCE(PMTCT_ART_Already_20_24.value,0) AS PMTCT_ART_Already_20_24,
COALESCE(PMTCT_ART_Already_25.value,0) AS PMTCT_ART_Already_25,
/*TB_ART*/
COALESCE(TB_ART_num.value,0) AS TB_ART_num,
/*Already*/
COALESCE(TB_ART_prev_men1_f.value,0) AS TB_ART_prev_men1_f,
COALESCE(TB_ART_prev_men1_m.value,0) AS TB_ART_prev_men1_m,
COALESCE(TB_ART_prev_1_4_f.value,0) AS TB_ART_prev_1_4_f,
COALESCE(TB_ART_prev_1_4_m.value,0) AS TB_ART_prev_1_4_m,
COALESCE(TB_ART_prev_5_9_f.value,0) AS TB_ART_prev_5_9_f,
COALESCE(TB_ART_prev_5_9_m.value,0) AS TB_ART_prev_5_9_m,
COALESCE(TB_ART_prev_10_14_f.value,0) AS TB_ART_prev_10_14_f,
COALESCE(TB_ART_prev_10_14_m.value,0) AS TB_ART_prev_10_14_m,
COALESCE(TB_ART_prev_15_19_f.value,0) AS TB_ART_prev_15_19_f,
COALESCE(TB_ART_prev_15_19_m.value,0) AS TB_ART_prev_15_19_m,
COALESCE(TB_ART_prev_20_24_f.value,0) AS TB_ART_prev_20_24_f,
COALESCE(TB_ART_prev_20_24_m.value,0) AS TB_ART_prev_20_24_m,
COALESCE(TB_ART_prev_25_29_f.value,0) AS TB_ART_prev_25_29_f,
COALESCE(TB_ART_prev_25_29_m.value,0) AS TB_ART_prev_25_29_m,
COALESCE(TB_ART_prev_30_34_f.value,0) AS TB_ART_prev_30_34_f,
COALESCE(TB_ART_prev_30_34_m.value,0) AS TB_ART_prev_30_34_m,
COALESCE(TB_ART_prev_35_39_f.value,0) AS TB_ART_prev_35_39_f,
COALESCE(TB_ART_prev_35_39_m.value,0) AS TB_ART_prev_35_39_m,
COALESCE(TB_ART_prev_40_44_f.value,0) AS TB_ART_prev_40_44_f,
COALESCE(TB_ART_prev_40_44_m.value,0) AS TB_ART_prev_40_44_m,
COALESCE(TB_ART_prev_45_49_f.value,0) AS TB_ART_prev_45_49_f,
COALESCE(TB_ART_prev_45_49_m.value,0) AS TB_ART_prev_45_49_m,
COALESCE(TB_ART_prev_50_f.value,0) AS TB_ART_prev_50_f,
COALESCE(TB_ART_prev_50_m.value,0) AS TB_ART_prev_50_m,
/*New*/
(COALESCE(TB_ART_num_men1_f.value,0)-COALESCE(TB_ART_prev_men1_f.value,0)) AS TB_ART_num_men1_f,
(COALESCE(TB_ART_num_men1_m.value,0)-COALESCE(TB_ART_prev_men1_m.value,0)) AS TB_ART_num_men1_m,
(COALESCE(TB_ART_num_1_4_f.value,0)-COALESCE(TB_ART_prev_1_4_f.value,0)) AS TB_ART_num_1_4_f,
(COALESCE(TB_ART_num_1_4_m.value,0)-COALESCE(TB_ART_prev_1_4_m.value,0)) AS TB_ART_num_1_4_m,
(COALESCE(TB_ART_num_5_9_f.value,0)-COALESCE(TB_ART_prev_5_9_f.value,0)) AS TB_ART_num_5_9_f,
(COALESCE(TB_ART_num_5_9_m.value,0)-COALESCE(TB_ART_prev_5_9_m.value,0)) AS TB_ART_num_5_9_m,
(COALESCE(TB_ART_num_10_14_f.value,0)-COALESCE(TB_ART_prev_10_14_f.value,0)) AS TB_ART_num_10_14_f,
(COALESCE(TB_ART_num_10_14_m.value,0)-COALESCE(TB_ART_prev_10_14_m.value,0)) AS TB_ART_num_10_14_m,
(COALESCE(TB_ART_num_15_19_f.value,0)-COALESCE(TB_ART_prev_15_19_f.value,0)) AS TB_ART_num_15_19_f,
(COALESCE(TB_ART_num_15_19_m.value,0)-COALESCE(TB_ART_prev_15_19_m.value,0)) AS TB_ART_num_15_19_m,
(COALESCE(TB_ART_num_20_24_f.value,0)-COALESCE(TB_ART_prev_20_24_f.value,0)) AS TB_ART_num_20_24_f,
(COALESCE(TB_ART_num_20_24_m.value,0)-COALESCE(TB_ART_prev_20_24_m.value,0)) AS TB_ART_num_20_24_m,
(COALESCE(TB_ART_num_25_29_f.value,0)-COALESCE(TB_ART_prev_25_29_f.value,0)) AS TB_ART_num_25_29_f,
(COALESCE(TB_ART_num_25_29_m.value,0)-COALESCE(TB_ART_prev_25_29_m.value,0)) AS TB_ART_num_25_29_m,
(COALESCE(TB_ART_num_30_34_f.value,0)-COALESCE(TB_ART_prev_30_34_f.value,0)) AS TB_ART_num_30_34_f,
(COALESCE(TB_ART_num_30_34_m.value,0)-COALESCE(TB_ART_prev_30_34_m.value,0)) AS TB_ART_num_30_34_m,
(COALESCE(TB_ART_num_35_39_f.value,0)-COALESCE(TB_ART_prev_35_39_f.value,0)) AS TB_ART_num_35_39_f,
(COALESCE(TB_ART_num_35_39_m.value,0)-COALESCE(TB_ART_prev_35_39_m.value,0)) AS TB_ART_num_35_39_m,
(COALESCE(TB_ART_num_40_44_f.value,0)-COALESCE(TB_ART_prev_40_44_f.value,0)) AS TB_ART_num_40_44_f,
(COALESCE(TB_ART_num_40_44_m.value,0)-COALESCE(TB_ART_prev_40_44_m.value,0)) AS TB_ART_num_40_44_m,
(COALESCE(TB_ART_num_45_49_f.value,0)-COALESCE(TB_ART_prev_45_49_f.value,0)) AS TB_ART_num_45_49_f,
(COALESCE(TB_ART_num_45_49_m.value,0)-COALESCE(TB_ART_prev_45_49_m.value,0)) AS TB_ART_num_45_49_m,
(COALESCE(TB_ART_num_50_f.value,0)-COALESCE(TB_ART_prev_50_f.value,0)) AS TB_ART_num_50_f,
(COALESCE(TB_ART_num_50_m.value,0)-COALESCE(TB_ART_prev_50_m.value,0)) AS TB_ART_num_50_m,
/*Auto-Calculate*/
/*TX_PVLS*/
/*Numerator*/
(
COALESCE(TX_PVLS_num_rou_f_men1.value,0) +
COALESCE(TX_PVLS_num_rou_f_1_4.value,0) +
COALESCE(TX_PVLS_num_rou_f_5_9.value,0) +
COALESCE(TX_PVLS_num_rou_f_10_14.value,0) +
COALESCE(TX_PVLS_num_rou_f_15_19.value,0) +
COALESCE(TX_PVLS_num_rou_f_20_24.value,0) +
COALESCE(TX_PVLS_num_rou_f_25_29.value,0) +
COALESCE(TX_PVLS_num_rou_f_30_34.value,0) +
COALESCE(TX_PVLS_num_rou_f_35_39.value,0) +
COALESCE(TX_PVLS_num_rou_f_40_44.value,0) +
COALESCE(TX_PVLS_num_rou_f_45_49.value,0) +
COALESCE(TX_PVLS_num_rou_f_50.value,0) +
COALESCE(TX_PVLS_num_rou_m_men1.value,0) +
COALESCE(TX_PVLS_num_rou_m_1_4.value,0) +
COALESCE(TX_PVLS_num_rou_m_5_9.value,0) +
COALESCE(TX_PVLS_num_rou_m_10_14.value,0) +
COALESCE(TX_PVLS_num_rou_m_15_19.value,0) +
COALESCE(TX_PVLS_num_rou_m_20_24.value,0) +
COALESCE(TX_PVLS_num_rou_m_25_29.value,0) +
COALESCE(TX_PVLS_num_rou_m_30_34.value,0) +
COALESCE(TX_PVLS_num_rou_m_35_39.value,0) +
COALESCE(TX_PVLS_num_rou_m_40_44.value,0) +
COALESCE(TX_PVLS_num_rou_m_45_49.value,0) +
COALESCE(TX_PVLS_num_rou_m_50.value,0) +
/*Not Documented*/ 
COALESCE(TX_PVLS_num_und_f_men1.value,0) +
COALESCE(TX_PVLS_num_und_f_1_4.value,0) +
COALESCE(TX_PVLS_num_und_f_5_9.value,0) +
COALESCE(TX_PVLS_num_und_f_10_14.value,0) +
COALESCE(TX_PVLS_num_und_f_15_19.value,0) +
COALESCE(TX_PVLS_num_und_f_20_24.value,0) +
COALESCE(TX_PVLS_num_und_f_25_29.value,0) +
COALESCE(TX_PVLS_num_und_f_30_34.value,0) +
COALESCE(TX_PVLS_num_und_f_35_39.value,0) +
COALESCE(TX_PVLS_num_und_f_40_44.value,0) +
COALESCE(TX_PVLS_num_und_f_45_49.value,0) +
COALESCE(TX_PVLS_num_und_f_50.value,0) +
COALESCE(TX_PVLS_num_und_m_men1.value,0) +
COALESCE(TX_PVLS_num_und_m_1_4.value,0) +
COALESCE(TX_PVLS_num_und_m_5_9.value,0) +
COALESCE(TX_PVLS_num_und_m_10_14.value,0) +
COALESCE(TX_PVLS_num_und_m_15_19.value,0) +
COALESCE(TX_PVLS_num_und_m_20_24.value,0) +
COALESCE(TX_PVLS_num_und_m_25_29.value,0) +
COALESCE(TX_PVLS_num_und_m_30_34.value,0) +
COALESCE(TX_PVLS_num_und_m_35_39.value,0) +
COALESCE(TX_PVLS_num_und_m_40_44.value,0) +
COALESCE(TX_PVLS_num_und_m_45_49.value,0) +
COALESCE(TX_PVLS_num_und_m_50.value,0) 
) 
AS TX_PVLS_num,
COALESCE(TX_PVLS_num_rou_preg.value,0) AS TX_PVLS_num_rou_preg,
COALESCE(TX_PVLS_num_rou_breast.value,0) AS TX_PVLS_num_rou_breast,
COALESCE(TX_PVLS_num_und_preg.value,0) AS TX_PVLS_num_und_preg,
COALESCE(TX_PVLS_num_und_breast.value,0) AS TX_PVLS_num_und_breast,
/*Routine*/
COALESCE(TX_PVLS_num_rou_f_men1.value,0) AS TX_PVLS_num_rou_f_men1,
COALESCE(TX_PVLS_num_rou_f_1_4.value,0) AS TX_PVLS_num_rou_f_1_4,
COALESCE(TX_PVLS_num_rou_f_5_9.value,0) AS TX_PVLS_num_rou_f_5_9,
COALESCE(TX_PVLS_num_rou_f_10_14.value,0) AS TX_PVLS_num_rou_f_10_14,
COALESCE(TX_PVLS_num_rou_f_15_19.value,0) AS TX_PVLS_num_rou_f_15_19,
COALESCE(TX_PVLS_num_rou_f_20_24.value,0) AS TX_PVLS_num_rou_f_20_24,
COALESCE(TX_PVLS_num_rou_f_25_29.value,0) AS TX_PVLS_num_rou_f_25_29,
COALESCE(TX_PVLS_num_rou_f_30_34.value,0) AS TX_PVLS_num_rou_f_30_34,
COALESCE(TX_PVLS_num_rou_f_35_39.value,0) AS TX_PVLS_num_rou_f_35_39,
COALESCE(TX_PVLS_num_rou_f_40_44.value,0) AS TX_PVLS_num_rou_f_40_44,
COALESCE(TX_PVLS_num_rou_f_45_49.value,0) AS TX_PVLS_num_rou_f_45_49,
COALESCE(TX_PVLS_num_rou_f_50.value,0) AS TX_PVLS_num_rou_f_50,
COALESCE(TX_PVLS_num_rou_m_men1.value,0) AS TX_PVLS_num_rou_m_men1,
COALESCE(TX_PVLS_num_rou_m_1_4.value,0) AS TX_PVLS_num_rou_m_1_4,
COALESCE(TX_PVLS_num_rou_m_5_9.value,0) AS TX_PVLS_num_rou_m_5_9,
COALESCE(TX_PVLS_num_rou_m_10_14.value,0) AS TX_PVLS_num_rou_m_10_14,
COALESCE(TX_PVLS_num_rou_m_15_19.value,0) AS TX_PVLS_num_rou_m_15_19,
COALESCE(TX_PVLS_num_rou_m_20_24.value,0) AS TX_PVLS_num_rou_m_20_24,
COALESCE(TX_PVLS_num_rou_m_25_29.value,0) AS TX_PVLS_num_rou_m_25_29,
COALESCE(TX_PVLS_num_rou_m_30_34.value,0) AS TX_PVLS_num_rou_m_30_34,
COALESCE(TX_PVLS_num_rou_m_35_39.value,0) AS TX_PVLS_num_rou_m_35_39,
COALESCE(TX_PVLS_num_rou_m_40_44.value,0) AS TX_PVLS_num_rou_m_40_44,
COALESCE(TX_PVLS_num_rou_m_45_49.value,0) AS TX_PVLS_num_rou_m_45_49,
COALESCE(TX_PVLS_num_rou_m_50.value,0) AS TX_PVLS_num_rou_m_50,
/*Not Documented*/
COALESCE(TX_PVLS_num_und_f_men1.value,0) AS TX_PVLS_num_und_f_men1,
COALESCE(TX_PVLS_num_und_f_1_4.value,0) AS TX_PVLS_num_und_f_1_4,
COALESCE(TX_PVLS_num_und_f_5_9.value,0) AS TX_PVLS_num_und_f_5_9,
COALESCE(TX_PVLS_num_und_f_10_14.value,0) AS TX_PVLS_num_und_f_10_14,
COALESCE(TX_PVLS_num_und_f_15_19.value,0) AS TX_PVLS_num_und_f_15_19,
COALESCE(TX_PVLS_num_und_f_20_24.value,0) AS TX_PVLS_num_und_f_20_24,
COALESCE(TX_PVLS_num_und_f_25_29.value,0) AS TX_PVLS_num_und_f_25_29,
COALESCE(TX_PVLS_num_und_f_30_34.value,0) AS TX_PVLS_num_und_f_30_34,
COALESCE(TX_PVLS_num_und_f_35_39.value,0) AS TX_PVLS_num_und_f_35_39,
COALESCE(TX_PVLS_num_und_f_40_44.value,0) AS TX_PVLS_num_und_f_40_44,
COALESCE(TX_PVLS_num_und_f_45_49.value,0) AS TX_PVLS_num_und_f_45_49,
COALESCE(TX_PVLS_num_und_f_50.value,0) AS TX_PVLS_num_und_f_50,
COALESCE(TX_PVLS_num_und_m_men1.value,0) AS TX_PVLS_num_und_m_men1,
COALESCE(TX_PVLS_num_und_m_1_4.value,0) AS TX_PVLS_num_und_m_1_4,
COALESCE(TX_PVLS_num_und_m_5_9.value,0) AS TX_PVLS_num_und_m_5_9,
COALESCE(TX_PVLS_num_und_m_10_14.value,0) AS TX_PVLS_num_und_m_10_14,
COALESCE(TX_PVLS_num_und_m_15_19.value,0) AS TX_PVLS_num_und_m_15_19,
COALESCE(TX_PVLS_num_und_m_20_24.value,0) AS TX_PVLS_num_und_m_20_24,
COALESCE(TX_PVLS_num_und_m_25_29.value,0) AS TX_PVLS_num_und_m_25_29,
COALESCE(TX_PVLS_num_und_m_30_34.value,0) AS TX_PVLS_num_und_m_30_34,
COALESCE(TX_PVLS_num_und_m_35_39.value,0) AS TX_PVLS_num_und_m_35_39,
COALESCE(TX_PVLS_num_und_m_40_44.value,0) AS TX_PVLS_num_und_m_40_44,
COALESCE(TX_PVLS_num_und_m_45_49.value,0) AS TX_PVLS_num_und_m_45_49,
COALESCE(TX_PVLS_num_und_m_50.value,0) AS TX_PVLS_num_und_m_50,
/*Denominator*/
(
COALESCE(TX_PVLS_den_rou_f_men1.value,0)+
COALESCE(TX_PVLS_den_rou_f_1_4.value,0) +
COALESCE(TX_PVLS_den_rou_f_5_9.value,0) +
COALESCE(TX_PVLS_den_rou_f_10_14.value,0)+
COALESCE(TX_PVLS_den_rou_f_15_19.value,0)+
COALESCE(TX_PVLS_den_rou_f_20_24.value,0)+
COALESCE(TX_PVLS_den_rou_f_25_29.value,0)+
COALESCE(TX_PVLS_den_rou_f_30_34.value,0)+
COALESCE(TX_PVLS_den_rou_f_35_39.value,0)+
COALESCE(TX_PVLS_den_rou_f_40_44.value,0)+
COALESCE(TX_PVLS_den_rou_f_45_49.value,0)+
COALESCE(TX_PVLS_den_rou_f_50.value,0) +
COALESCE(TX_PVLS_den_rou_m_men1.value,0)+
COALESCE(TX_PVLS_den_rou_m_1_4.value,0) +
COALESCE(TX_PVLS_den_rou_m_5_9.value,0) +
COALESCE(TX_PVLS_den_rou_m_10_14.value,0)+
COALESCE(TX_PVLS_den_rou_m_15_19.value,0)+
COALESCE(TX_PVLS_den_rou_m_20_24.value,0)+
COALESCE(TX_PVLS_den_rou_m_25_29.value,0)+
COALESCE(TX_PVLS_den_rou_m_30_34.value,0)+
COALESCE(TX_PVLS_den_rou_m_35_39.value,0)+
COALESCE(TX_PVLS_den_rou_m_40_44.value,0)+
COALESCE(TX_PVLS_den_rou_m_45_49.value,0)+
COALESCE(TX_PVLS_den_rou_m_50.value,0) +
/*Not Documented*/ 
COALESCE(TX_PVLS_den_und_f_men1.value,0)+
COALESCE(TX_PVLS_den_und_f_1_4.value,0) +
COALESCE(TX_PVLS_den_und_f_5_9.value,0) +
COALESCE(TX_PVLS_den_und_f_10_14.value,0)+
COALESCE(TX_PVLS_den_und_f_15_19.value,0)+
COALESCE(TX_PVLS_den_und_f_20_24.value,0)+
COALESCE(TX_PVLS_den_und_f_25_29.value,0)+
COALESCE(TX_PVLS_den_und_f_30_34.value,0)+
COALESCE(TX_PVLS_den_und_f_35_39.value,0)+
COALESCE(TX_PVLS_den_und_f_40_44.value,0)+
COALESCE(TX_PVLS_den_und_f_45_49.value,0)+
COALESCE(TX_PVLS_den_und_f_50.value,0) +
COALESCE(TX_PVLS_den_und_m_men1.value,0)+
COALESCE(TX_PVLS_den_und_m_1_4.value,0) +
COALESCE(TX_PVLS_den_und_m_5_9.value,0) +
COALESCE(TX_PVLS_den_und_m_10_14.value,0)+
COALESCE(TX_PVLS_den_und_m_15_19.value,0)+
COALESCE(TX_PVLS_den_und_m_20_24.value,0)+
COALESCE(TX_PVLS_den_und_m_25_29.value,0)+
COALESCE(TX_PVLS_den_und_m_30_34.value,0)+
COALESCE(TX_PVLS_den_und_m_35_39.value,0)+
COALESCE(TX_PVLS_den_und_m_40_44.value,0)+
COALESCE(TX_PVLS_den_und_m_45_49.value,0)+
COALESCE(TX_PVLS_den_und_m_50.value,0) 
) 
AS TX_PVLS_den,
COALESCE(TX_PVLS_den_rou_preg.value,0) AS TX_PVLS_den_rou_preg,
COALESCE(TX_PVLS_den_rou_breast.value,0) AS TX_PVLS_den_rou_breast,
COALESCE(TX_PVLS_den_und_preg.value,0) AS TX_PVLS_den_und_preg,
COALESCE(TX_PVLS_den_und_breast.value,0) AS TX_PVLS_den_und_breast,
/*Routine*/
COALESCE(TX_PVLS_den_rou_f_men1.value,0) AS TX_PVLS_den_rou_f_men1,
COALESCE(TX_PVLS_den_rou_f_1_4.value,0) AS TX_PVLS_den_rou_f_1_4,
COALESCE(TX_PVLS_den_rou_f_5_9.value,0) AS TX_PVLS_den_rou_f_5_9,
COALESCE(TX_PVLS_den_rou_f_10_14.value,0) AS TX_PVLS_den_rou_f_10_14,
COALESCE(TX_PVLS_den_rou_f_15_19.value,0) AS TX_PVLS_den_rou_f_15_19,
COALESCE(TX_PVLS_den_rou_f_20_24.value,0) AS TX_PVLS_den_rou_f_20_24,
COALESCE(TX_PVLS_den_rou_f_25_29.value,0) AS TX_PVLS_den_rou_f_25_29,
COALESCE(TX_PVLS_den_rou_f_30_34.value,0) AS TX_PVLS_den_rou_f_30_34,
COALESCE(TX_PVLS_den_rou_f_35_39.value,0) AS TX_PVLS_den_rou_f_35_39,
COALESCE(TX_PVLS_den_rou_f_40_44.value,0) AS TX_PVLS_den_rou_f_40_44,
COALESCE(TX_PVLS_den_rou_f_45_49.value,0) AS TX_PVLS_den_rou_f_45_49,
COALESCE(TX_PVLS_den_rou_f_50.value,0) AS TX_PVLS_den_rou_f_50,
COALESCE(TX_PVLS_den_rou_m_men1.value,0) AS TX_PVLS_den_rou_m_men1,
COALESCE(TX_PVLS_den_rou_m_1_4.value,0) AS TX_PVLS_den_rou_m_1_4,
COALESCE(TX_PVLS_den_rou_m_5_9.value,0) AS TX_PVLS_den_rou_m_5_9,
COALESCE(TX_PVLS_den_rou_m_10_14.value,0) AS TX_PVLS_den_rou_m_10_14,
COALESCE(TX_PVLS_den_rou_m_15_19.value,0) AS TX_PVLS_den_rou_m_15_19,
COALESCE(TX_PVLS_den_rou_m_20_24.value,0) AS TX_PVLS_den_rou_m_20_24,
COALESCE(TX_PVLS_den_rou_m_25_29.value,0) AS TX_PVLS_den_rou_m_25_29,
COALESCE(TX_PVLS_den_rou_m_30_34.value,0) AS TX_PVLS_den_rou_m_30_34,
COALESCE(TX_PVLS_den_rou_m_35_39.value,0) AS TX_PVLS_den_rou_m_35_39,
COALESCE(TX_PVLS_den_rou_m_40_44.value,0) AS TX_PVLS_den_rou_m_40_44,
COALESCE(TX_PVLS_den_rou_m_45_49.value,0) AS TX_PVLS_den_rou_m_45_49,
COALESCE(TX_PVLS_den_rou_m_50.value,0) AS TX_PVLS_den_rou_m_50,
/*Not Documented*/
COALESCE(TX_PVLS_den_und_f_men1.value,0) AS TX_PVLS_den_und_f_men1,
COALESCE(TX_PVLS_den_und_f_1_4.value,0) AS TX_PVLS_den_und_f_1_4,
COALESCE(TX_PVLS_den_und_f_5_9.value,0) AS TX_PVLS_den_und_f_5_9,
COALESCE(TX_PVLS_den_und_f_10_14.value,0) AS TX_PVLS_den_und_f_10_14,
COALESCE(TX_PVLS_den_und_f_15_19.value,0) AS TX_PVLS_den_und_f_15_19,
COALESCE(TX_PVLS_den_und_f_20_24.value,0) AS TX_PVLS_den_und_f_20_24,
COALESCE(TX_PVLS_den_und_f_25_29.value,0) AS TX_PVLS_den_und_f_25_29,
COALESCE(TX_PVLS_den_und_f_30_34.value,0) AS TX_PVLS_den_und_f_30_34,
COALESCE(TX_PVLS_den_und_f_35_39.value,0) AS TX_PVLS_den_und_f_35_39,
COALESCE(TX_PVLS_den_und_f_40_44.value,0) AS TX_PVLS_den_und_f_40_44,
COALESCE(TX_PVLS_den_und_f_45_49.value,0) AS TX_PVLS_den_und_f_45_49,
COALESCE(TX_PVLS_den_und_f_50.value,0) AS TX_PVLS_den_und_f_50,
COALESCE(TX_PVLS_den_und_m_men1.value,0) AS TX_PVLS_den_und_m_men1,
COALESCE(TX_PVLS_den_und_m_1_4.value,0) AS TX_PVLS_den_und_m_1_4,
COALESCE(TX_PVLS_den_und_m_5_9.value,0) AS TX_PVLS_den_und_m_5_9,
COALESCE(TX_PVLS_den_und_m_10_14.value,0) AS TX_PVLS_den_und_m_10_14,
COALESCE(TX_PVLS_den_und_m_15_19.value,0) AS TX_PVLS_den_und_m_15_19,
COALESCE(TX_PVLS_den_und_m_20_24.value,0) AS TX_PVLS_den_und_m_20_24,
COALESCE(TX_PVLS_den_und_m_25_29.value,0) AS TX_PVLS_den_und_m_25_29,
COALESCE(TX_PVLS_den_und_m_30_34.value,0) AS TX_PVLS_den_und_m_30_34,
COALESCE(TX_PVLS_den_und_m_35_39.value,0) AS TX_PVLS_den_und_m_35_39,
COALESCE(TX_PVLS_den_und_m_40_44.value,0) AS TX_PVLS_den_und_m_40_44,
COALESCE(TX_PVLS_den_und_m_45_49.value,0) AS TX_PVLS_den_und_m_45_49,
COALESCE(TX_PVLS_den_und_m_50.value,0) AS TX_PVLS_den_und_m_50

FROM organisationunit ou
LEFT OUTER JOIN _orgunitstructure ous
 ON (ou.organisationunitid=ous.organisationunitid)
LEFT OUTER JOIN organisationunit province
 ON (ous.idlevel2=province.organisationunitid)
LEFT OUTER JOIN organisationunit district
 ON (ous.idlevel3=district.organisationunitid)

/*Quarterly*/
/*HTS_TST (Facility)-PITC Pediatric Services
C.PED Removed

LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=23817
 AND categoryoptioncomboid=23818
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_Pediatric_pos ON HTS_TST_Pediatric_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=23817
 AND categoryoptioncomboid=23819
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_Pediatric_neg ON HTS_TST_Pediatric_neg.sourceid=ou.organisationunitid
*/
/*19m-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566065,566055)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_ped_19_4_m_pos ON atip_ped_19_4_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566254,566244)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_ped_19_4_f_pos ON atip_ped_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566086,566076)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_ped_19_4_m_neg ON atip_ped_19_4_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566275,566265)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_ped_19_4_f_neg ON atip_ped_19_4_f_neg.sourceid=ou.organisationunitid

/*HTS_TST (Facility)-PITC-TB Clinics*/
/*<1*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62242
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_men1_f_pos ON HTS_TST_TB_men1_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62258
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_men1_f_neg ON HTS_TST_TB_men1_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62234
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_men1_m_pos ON HTS_TST_TB_men1_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62250
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_men1_m_neg ON HTS_TST_TB_men1_m_neg.sourceid=ou.organisationunitid
 
 /*1-4*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62243
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_1_4_f_pos ON HTS_TST_TB_1_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62259
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_1_4_f_neg ON HTS_TST_TB_1_4_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62235
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_1_4_m_pos ON HTS_TST_TB_1_4_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62251
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_1_4_m_neg ON HTS_TST_TB_1_4_m_neg.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62244
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_5_9_f_pos ON HTS_TST_TB_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62260
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_5_9_f_neg ON HTS_TST_TB_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62236
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_5_9_m_pos ON HTS_TST_TB_5_9_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62252
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_5_9_m_neg ON HTS_TST_TB_5_9_m_neg.sourceid=ou.organisationunitid

/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62245
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_10_14_f_pos ON HTS_TST_TB_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62261
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_10_14_f_neg ON HTS_TST_TB_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62237
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_10_14_m_pos ON HTS_TST_TB_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62253
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_10_14_m_neg ON HTS_TST_TB_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62246
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_15_19_f_pos ON HTS_TST_TB_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62262
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_15_19_f_neg ON HTS_TST_TB_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62238
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_15_19_m_pos ON HTS_TST_TB_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62254
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_15_19_m_neg ON HTS_TST_TB_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62247
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_20_24_f_pos ON HTS_TST_TB_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62263
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_20_24_f_neg ON HTS_TST_TB_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62239
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_20_24_m_pos ON HTS_TST_TB_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62255
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_20_24_m_neg ON HTS_TST_TB_20_24_m_neg.sourceid=ou.organisationunitid

 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561752
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_25_29_f_pos ON HTS_TST_TB_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561760
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_25_29_f_neg ON HTS_TST_TB_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561748
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_25_29_m_pos ON HTS_TST_TB_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561756
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_25_29_m_neg ON HTS_TST_TB_25_29_m_neg.sourceid=ou.organisationunitid

 /*30-34*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561753
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_30_34_f_pos ON HTS_TST_TB_30_34_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561761
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_30_34_f_neg ON HTS_TST_TB_30_34_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561749
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_30_34_m_pos ON HTS_TST_TB_30_34_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561757
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_30_34_m_neg ON HTS_TST_TB_30_34_m_neg.sourceid=ou.organisationunitid
 
 /*35-39*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561754
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_35_39_f_pos ON HTS_TST_TB_35_39_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561762
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_35_39_f_neg ON HTS_TST_TB_35_39_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561750
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_35_39_m_pos ON HTS_TST_TB_35_39_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561758
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_35_39_m_neg ON HTS_TST_TB_35_39_m_neg.sourceid=ou.organisationunitid
 
 /*40-44*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480502
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_40_44_f_pos ON HTS_TST_TB_40_44_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480506
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_40_44_f_neg ON HTS_TST_TB_40_44_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480500
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_40_44_m_pos ON HTS_TST_TB_40_44_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480504
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_40_44_m_neg ON HTS_TST_TB_40_44_m_neg.sourceid=ou.organisationunitid
 
 /*45-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480503
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_45_49_f_pos ON HTS_TST_TB_45_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480507
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_45_49_f_neg ON HTS_TST_TB_45_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480501
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_45_49_m_pos ON HTS_TST_TB_45_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480505
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_45_49_m_neg ON HTS_TST_TB_45_49_m_neg.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62249
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_50_f_pos ON HTS_TST_TB_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62265
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_50_f_neg ON HTS_TST_TB_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62241
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_50_m_pos ON HTS_TST_TB_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62257
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_TB_50_m_neg ON HTS_TST_TB_50_m_neg.sourceid=ou.organisationunitid

 /*HTS_TST (Facility)-PITC PMTCT (ANC Only) Clinics*/
 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=61995
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_10_14_pos ON HTS_TST_PMTCT_10_14_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=61999
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_10_14_neg ON HTS_TST_PMTCT_10_14_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=62023
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_15_19_pos ON HTS_TST_PMTCT_15_19_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=62010
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_15_19_neg ON HTS_TST_PMTCT_15_19_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=62036
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_20_24_pos ON HTS_TST_PMTCT_20_24_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=62004
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_20_24_neg ON HTS_TST_PMTCT_20_24_neg.sourceid=ou.organisationunitid

 /*25+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=563004
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_25_pos ON HTS_TST_PMTCT_25_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62040
 AND categoryoptioncomboid=563005
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS HTS_TST_PMTCT_25_neg ON HTS_TST_PMTCT_25_neg.sourceid=ou.organisationunitid

 /*HTS_TST (Facility)-Other PITC*/
 /*ATIP*/
 /*<1*/
 /*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566112,566113,566114,566115,566117,566118,566119,566120,566121,566122,566123,566124,1471331)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_0_8_f_pos ON atip_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566133,566134,566135,566136,566138,566139,566140,566141,566142,566143,566144,566145,1471333)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_0_8_f_neg ON atip_0_8_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565923,565924,565925,565926,565928,565929,565930,565931,565932,565933,565934,565935,565940,1471229)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_0_8_m_pos ON atip_0_8_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565944,565945,565946,565947,565949,565950,565951,565952,565953,565954,565955,565956,565961,1471231)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_0_8_m_neg ON atip_0_8_m_neg.sourceid=ou.organisationunitid

 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566175,566176,566177,566178,566180,566181,566182,566183,566184,566185,566186,566187,1471337)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_9_18_f_pos ON atip_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566196,566197,566198,566199,566201,566202,566203,566204,566205,566206,566207,566208,1471339)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_9_18_f_neg ON atip_9_18_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565986,565987,565988,565989,565991,565992,565993,565994,565995,565996,565997,565998,566003,1471235)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_9_18_m_pos ON atip_9_18_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566007,566008,566009,566010,566012,566013,566014,566015,566016,566017,566018,566019,566024,1471237)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_9_18_m_neg ON atip_9_18_m_neg.sourceid=ou.organisationunitid
 
 /*19-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566238,566239,566240,566241,566243,566245,566246,566247,566248,566249,566250,1471343)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_19_4_f_pos ON atip_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566259,566260,566261,566262,566264,566266,566267,566268,566269,566270,566271,1471345)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_19_4_f_neg ON atip_19_4_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566049,566050,566051,566052,566054,566056,566057,566058,566059,566060,566061,566066,1471241)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_19_4_m_pos ON atip_19_4_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566070,566071,566072,566073,566075,566077,566078,566079,566080,566081,566082,566087,1471243)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_19_4_m_neg ON atip_19_4_m_neg.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22256,22349,22405,22498,22509,22560,22597,230359,230360,230361,230362,230363,1471259)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_5_9_f_pos ON atip_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22305,22331,22339,22515,22603,22622,22646,230366,230367,230368,230369,230370,1471261)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_5_9_f_neg ON atip_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22207,22327,22404,22457,22517,22683,22692,230191,230192,230193,230194,230195,437587,1471157)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_5_9_m_pos ON atip_5_9_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22170,22189,22346,22430,22478,22561,22576,230198,230199,230200,230201,230202,437588,1471159)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_5_9_m_neg ON atip_5_9_m_neg.sourceid=ou.organisationunitid

/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22187,22352,22466,22506,22582,22602,22641,230380,230381,230382,230383,230384,1471265)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_10_14_f_pos ON atip_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22215,22241,22279,22420,22443,22488,22667,230387,230388,230389,230390,230391,1471267)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_10_14_f_neg ON atip_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22206,22261,22263,22347,22414,22480,22518,230212,230213,230214,230215,230216,437590,1471163)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_10_14_m_pos ON atip_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22240,22307,22416,22477,22496,22619,22668,230219,230220,230221,230222,230223,437591,1471165)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_10_14_m_neg ON atip_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22173,22233,22254,22282,22301,22534,22620,230401,230402,230403,230404,230405,1471271)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_15_19_f_pos ON atip_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22190,22277,22342,22397,22522,22572,22613,230408,230409,230410,230411,230412,1471273)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_15_19_f_neg ON atip_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22320,22321,22460,22511,22577,22590,22660,230233,230234,230235,230236,230237,437593,1471169)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_15_19_m_pos ON atip_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22177,22361,22385,22386,22413,22465,22686,230240,230241,230242,230243,230244,437594,1471171)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_15_19_m_neg ON atip_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22208,22222,22314,22351,22367,22586,22588,230422,230423,230424,230425,230426,1471277)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_20_24_f_pos ON atip_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22323,22393,22476,22541,22578,22592,22621,230429,230430,230431,230432,230433,1471279)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_20_24_f_neg ON atip_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22250,22258,22275,22312,22338,22538,22691,230254,230255,230256,230257,230258,437596,1471175)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_20_24_m_pos ON atip_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22265,22278,22309,22357,22394,22403,22415,230261,230262,230263,230264,230265,437597,1471177)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_20_24_m_neg ON atip_20_24_m_neg.sourceid=ou.organisationunitid
 
 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562059,562060,562061,562062,562064,562065,562066,562067,562068,562069,562070,562071,1471295)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_25_29_f_pos ON atip_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562080,562081,562082,562083,562085,562086,562087,562088,562089,562090,562091,562092,1471297)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_25_29_f_neg ON atip_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561807,561808,561809,561810,561812,561813,561814,561815,561816,561817,561818,561819,561824,1471193)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_25_29_m_pos ON atip_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561828,561829,561830,561831,561833,561834,561835,561836,561837,561838,561839,561840,561845,1471195)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_25_29_m_neg ON atip_25_29_m_neg.sourceid=ou.organisationunitid
 
 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565763,565764,565765,565766,565768,565769,565770,565771,565772,565773,565774,565775,1471325)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_30_49_f_pos ON atip_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565784,565785,565786,565787,565789,565790,565791,565792,565793,565794,565795,565796,1471327)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_30_49_f_neg ON atip_30_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565700,565701,565702,565703,565705,565706,565707,565708,565709,565710,565711,565712,565717,1471223)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_30_49_m_pos ON atip_30_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565721,565722,565723,565724,565726,565727,565728,565729,565730,565731,565732,565733,565738,1471225)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_30_49_m_neg ON atip_30_49_m_neg.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22264,22313,22412,22482,22485,22514,22643,230464,230465,230466,230467,230468,1471289)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_50_f_pos ON atip_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22244,22325,22343,22467,22500,22540,22543,230471,230472,230473,230474,230475,1471291)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_50_f_neg ON atip_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22168,22238,22550,22570,22642,22656,22670,230296,230297,230298,230299,230300,437602,1471187)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_50_m_pos ON atip_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22200,22212,22444,22481,22569,22600,22607,230303,230304,230305,230306,230307,437603,1471189)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_50_m_neg ON atip_50_m_neg.sourceid=ou.organisationunitid
 
 
 /*HTS_TST (Facility)-POST ANC*/
 /*ATIP CPP*/
 /*<1*/
 /*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=566129
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_0_8_f_pos ON atip_cpp_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=566150
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_0_8_f_neg ON atip_cpp_0_8_f_neg.sourceid=ou.organisationunitid


 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=566192
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_9_18_f_pos ON atip_cpp_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=566213
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_9_18_f_neg ON atip_cpp_9_18_f_neg.sourceid=ou.organisationunitid

 
 /*19-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=566255
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_19_4_f_pos ON atip_cpp_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=566276
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_19_4_f_neg ON atip_cpp_19_4_f_neg.sourceid=ou.organisationunitid

 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437611
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_5_9_f_pos ON atip_cpp_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437612
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_5_9_f_neg ON atip_cpp_5_9_f_neg.sourceid=ou.organisationunitid

/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437615
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_10_14_f_pos ON atip_cpp_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437616
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_10_14_f_neg ON atip_cpp_10_14_f_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437618
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_15_19_f_pos ON atip_cpp_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437619
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_15_19_f_neg ON atip_cpp_15_19_f_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437621
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_20_24_f_pos ON atip_cpp_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437622
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_20_24_f_neg ON atip_cpp_20_24_f_neg.sourceid=ou.organisationunitid

 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=562076
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_25_29_f_pos ON atip_cpp_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=562097
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_25_29_f_neg ON atip_cpp_25_29_f_neg.sourceid=ou.organisationunitid

 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=565780
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_30_49_f_pos ON atip_cpp_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=565801
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_30_49_f_neg ON atip_cpp_30_49_f_neg.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437627
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_50_f_pos ON atip_cpp_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=437628
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_cpp_50_f_neg ON atip_cpp_50_f_neg.sourceid=ou.organisationunitid

 /*Maternidade*/
 /*<1*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (61998,61994)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_men1_pos ON mat_men1_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62017,62000)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_men1_neg ON mat_men1_neg.sourceid=ou.organisationunitid

 /*1-4*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=62039
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_1_4_pos ON mat_1_4_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=62030
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_1_4_neg ON mat_1_4_neg.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=62031
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_5_9_pos ON mat_5_9_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=62026
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_5_9_neg ON mat_5_9_neg.sourceid=ou.organisationunitid

 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (61995,62027)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_10_14_pos ON mat_10_14_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (61999,62003)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_10_14_neg ON mat_10_14_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62023,62038)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_15_19_pos ON mat_15_19_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62010,62014)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_15_19_neg ON mat_15_19_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62036,62034)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_20_24_pos ON mat_20_24_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62004,62015)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_20_24_neg ON mat_20_24_neg.sourceid=ou.organisationunitid
 
 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (561724,561736)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_25_29_pos ON mat_25_29_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (561728,561740)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_25_29_neg ON mat_25_29_neg.sourceid=ou.organisationunitid
 
 /*30-34*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (561725,561737)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_30_34_pos ON mat_30_34_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (561729,561741)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_30_34_neg ON mat_30_34_neg.sourceid=ou.organisationunitid
 
 /*35-39*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (561726,561738)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_35_39_pos ON mat_35_39_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (561730,561742)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_35_39_neg ON mat_35_39_neg.sourceid=ou.organisationunitid
 
 /*40-44*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=1480204
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_40_44_pos ON mat_40_44_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=1480206
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_40_44_neg ON mat_40_44_neg.sourceid=ou.organisationunitid
 
 /*45-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=1480205
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_45_49_pos ON mat_45_49_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid=1480207
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_45_49_neg ON mat_45_49_neg.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62013,62011)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_50_pos ON mat_50_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62041
 AND categoryoptioncomboid IN (62009,62006)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS mat_50_neg ON mat_50_neg.sourceid=ou.organisationunitid

 /*CPN Parceiros*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=6946
 AND categoryoptioncomboid=6924
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS cpn_m_pos ON cpn_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=6946
 AND categoryoptioncomboid=6925
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS cpn_m_neg ON cpn_m_neg.sourceid=ou.organisationunitid

 /*HTS_TST (Facility)-VCT*/
 /*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565851
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_0_8_f_pos ON ats_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565852
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_0_8_f_neg ON ats_0_8_f_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565842
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_0_8_m_pos ON ats_0_8_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565843
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_0_8_m_neg ON ats_0_8_m_neg.sourceid=ou.organisationunitid
 
 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565854
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_9_18_f_pos ON ats_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565855
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_9_18_f_neg ON ats_9_18_f_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565845
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_9_18_m_pos ON ats_9_18_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565846
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_9_18_m_neg ON ats_9_18_m_neg.sourceid=ou.organisationunitid
 
 /*19-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565857
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_19_4_f_pos ON ats_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565858
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_19_4_f_neg ON ats_19_4_f_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565848
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_19_4_m_pos ON ats_19_4_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565849
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_19_4_m_neg ON ats_19_4_m_neg.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21867
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_5_9_f_pos ON ats_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21868
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_5_9_f_neg ON ats_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21843
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_5_9_m_pos ON ats_5_9_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21844
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_5_9_m_neg ON ats_5_9_m_neg.sourceid=ou.organisationunitid

/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21870
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_10_14_f_pos ON ats_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21871
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_10_14_f_neg ON ats_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21846
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_10_14_m_pos ON ats_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21847
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_10_14_m_neg ON ats_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21873
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_15_19_f_pos ON ats_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21874
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_15_19_f_neg ON ats_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21849
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_15_19_m_pos ON ats_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21850
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_15_19_m_neg ON ats_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21876
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_20_24_f_pos ON ats_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21877
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_20_24_f_neg ON ats_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21852
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_20_24_m_pos ON ats_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21853
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_20_24_m_neg ON ats_20_24_m_neg.sourceid=ou.organisationunitid
 
 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=561792
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_25_29_f_pos ON ats_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=561793
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_25_29_f_neg ON ats_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=561780
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_25_29_m_pos ON ats_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=561781
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_25_29_m_neg ON ats_25_29_m_neg.sourceid=ou.organisationunitid
 
 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565693
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_30_49_f_pos ON ats_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565694
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_30_49_f_neg ON ats_30_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565690
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_30_49_m_pos ON ats_30_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=565691
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_30_49_m_neg ON ats_30_49_m_neg.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21882
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_50_f_pos ON ats_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21883
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_50_f_neg ON ats_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21858
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_50_m_pos ON ats_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=21815
 AND categoryoptioncomboid=21859
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_50_m_neg ON ats_50_m_neg.sourceid=ou.organisationunitid


 /*Index Testing*/
 /*Offered UATS/ATIP*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (255151,43326)
 AND attributeoptioncomboid IN (229786,184430)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS index_offered_unk ON index_offered_unk.sourceid=ou.organisationunitid
 
/*Contacts*/
/*CPN*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (1535896,1555061)
 AND categoryoptioncomboid=6924
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS cpn_index_contact_pos ON cpn_index_contact_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (1535896,1555061)
 AND categoryoptioncomboid=6925
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS cpn_index_contact_neg ON cpn_index_contact_neg.sourceid=ou.organisationunitid
 
 /*ATIP*/
 /*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566109,566110,566111,566112,566113,566114,566115,566117,566118,566119,566120,566121,566122,566123,566124,566126,566127,566128,566129,1471330,1471331)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_0_8_f_pos ON atip_index_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566130,566131,566132,566133,566134,566135,566136,566138,566139,566140,566141,566142,566143,566144,566145,566147,566148,566149,566150,1471332,1471333)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_0_8_f_neg ON atip_index_0_8_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565920,565921,565922,565923,565924,565925,565926,565928,565929,565930,565931,565932,565933,565934,565935,565937,565938,565939,565940,1471228,1471229)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_0_8_m_pos ON atip_index_0_8_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565941,565942,565943,565944,565945,565946,565947,565949,565950,565951,565952,565953,565954,565955,565956,565958,565959,565960,565961,1471230,1471231)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_0_8_m_neg ON atip_index_0_8_m_neg.sourceid=ou.organisationunitid

 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566172,566173,566174,566175,566176,566177,566178,566180,566181,566182,566183,566184,566185,566186,566187,566189,566190,566191,566192,1471336,1471337)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_9_18_f_pos ON atip_index_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566193,566194,566195,566196,566197,566198,566199,566201,566202,566203,566204,566205,566206,566207,566208,566210,566211,566212,566213,1471338,1471339)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_9_18_f_neg ON atip_index_9_18_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565983,565984,565985,565986,565987,565988,565989,565991,565992,565993,565994,565995,565996,565997,565998,566000,566001,566002,566003,1471234,1471235)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_9_18_m_pos ON atip_index_9_18_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566004,566005,566006,566007,566008,566009,566010,566012,566013,566014,566015,566016,566017,566018,566019,566021,566022,566023,566024,1471236,1471237)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_9_18_m_neg ON atip_index_9_18_m_neg.sourceid=ou.organisationunitid
 
 /*19-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566235,566236,566237,566238,566239,566240,566241,566243,566244,566245,566246,566247,566248,566249,566250,566252,566253,566254,566255,1471342,1471343)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_19_4_f_pos ON atip_index_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566256,566257,566258,566259,566260,566261,566262,566264,566265,566266,566267,566268,566269,566270,566271,566273,566274,566275,566276,1471344,1471345)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_19_4_f_neg ON atip_index_19_4_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566046,566047,566048,566049,566050,566051,566052,566054,566055,566056,566057,566058,566059,566060,566061,566063,566064,566065,566066,1471240,1471241)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_19_4_m_pos ON atip_index_19_4_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566067,566068,566069,566070,566071,566072,566073,566075,566076,566077,566078,566079,566080,566081,566082,566084,566085,566086,566087,1471242,1471243)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_19_4_m_neg ON atip_index_19_4_m_neg.sourceid=ou.organisationunitid

 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22235,22256,22349,22405,22498,22509,22560,427237,22597,427238,22400,230359,230360,230361,230362,230363,22542,437611,338896,1471258,1471259)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_5_9_f_pos ON atip_index_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22299,22587,338898,22295,427239,427240,22305,22331,22339,22515,22603,22622,22646,230366,230367,230368,230369,230370,437612,1471260,1471261)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_5_9_f_neg ON atip_index_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22207,22327,22404,22457,22425,22517,22456,22683,22692,230191,230192,230193,230194,230195,22512,437587,338848,427189,427190,1471156,1471157)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_5_9_m_pos ON atip_index_5_9_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22199,22516,338850,22333,22170,22189,22346,22430,22478,22561,22576,230198,230199,230200,230201,230202,437588,427191,427192,1471158,1471159)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_5_9_m_neg ON atip_index_5_9_m_neg.sourceid=ou.organisationunitid
 
/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22582,230384,22553,230380,230381,22187,230382,22615,22508,22466,22352,230383,22506,22602,22641,22664,338902,427243,427244,437615,1471264,1471265)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_10_14_f_pos ON atip_index_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22279,230391,22658,230387,230388,22488,230389,22213,22306,22667,22215,230390,22443,22241,22420,22202,338904,427245,427246,437616,1471266,1471267)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_10_14_f_neg ON atip_index_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22261,230216,22484,230212,230213,22263,230214,22358,22689,22480,22347,230215,22414,22206,22518,22384,338854,427195,427196,437590,1471162,1471163)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_10_14_m_pos ON atip_index_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22307,230223,22672,230219,230220,22416,230221,22355,22513,22496,22477,230222,22619,22668,22240,22337,338856,427197,427198,437591,1471164,1471165)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_10_14_m_neg ON atip_index_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22282,230405,22546,230401,230402,22534,230403,22491,22475,22233,22620,230404,22301,22254,22173,22402,338908,427249,427250,437618,1471270,1471271)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_15_19_f_pos ON atip_index_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22397,230412,22328,230408,230409,22190,230410,22292,22311,22277,22342,230411,22522,22613,22572,22495,338910,427251,427252,437619,1471272,1471273)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_15_19_f_neg ON atip_index_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22320,230237,22547,230233,230234,22660,230235,22406,22391,22460,22590,230236,22577,22511,22321,22549,338860,427201,427202,437593,1471168,1471169)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_15_19_m_pos ON atip_index_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22413,230244,22526,230240,230241,22686,230242,22440,22242,22361,22386,230243,22465,22385,22177,22648,338862,427203,427204,437594,1471170,1471171)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_15_19_m_neg ON atip_index_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22586,230426,22536,230422,230423,22222,230424,22175,22300,22208,22314,230425,22588,22367,22351,22631,338914,427255,427256,437621,1471276,1471277)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_20_24_f_pos ON atip_index_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22393,230433,22218,230429,230430,22621,230431,22336,22294,22592,22578,230432,22541,22476,22323,22537,338916,427257,427258,437622,1471278,1471279)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_20_24_f_neg ON atip_index_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22312,230258,22624,230254,230255,22258,230256,22247,22185,22691,22275,230257,22338,22250,22538,22211,338866,427207,427208,437596,1471174,1471175)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_20_24_m_pos ON atip_index_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22357,230265,22345,230261,230262,22394,230263,22392,22499,22403,22415,230264,22265,22309,22278,22231,338868,427209,427210,437597,1471176,1471177)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_20_24_m_neg ON atip_index_20_24_m_neg.sourceid=ou.organisationunitid

 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562056,562057,562058,562059,562060,562061,562062,562064,562065,562066,562067,562068,562069,562070,562071,562073,562074,562075,562076,1471294,1471295)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_25_29_f_pos ON atip_index_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562077,562078,562079,562080,562081,562082,562083,562085,562086,562087,562088,562089,562090,562091,562092,562094,562095,562096,562097,1471296,1471297)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_25_29_f_neg ON atip_index_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561804,561805,561806,561807,561808,561809,561810,561812,561813,561814,561815,561816,561817,561818,561819,561821,561822,561823,561824,1471192,1471193)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_25_29_m_pos ON atip_index_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561825,561826,561827,561828,561829,561830,561831,561833,561834,561835,561836,561837,561838,561839,561840,561842,561843,561844,561845,1471194,1471195)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_25_29_m_neg ON atip_index_25_29_m_neg.sourceid=ou.organisationunitid
 
 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565760,565761,565699,565700,565701,565702,565703,565705,565706,565707,565708,565709,565710,565711,565712,565714,565715,565716,565717,1471222,1471223)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_30_49_m_pos ON atip_index_30_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565781,565782,565720,565721,565722,565723,565724,565726,565727,565728,565729,565730,565731,565732,565733,565735,565736,565737,565738,1471224,1471225)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_30_49_m_neg ON atip_index_30_49_m_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565697,565698,565762,565763,565764,565765,565766,565768,565769,565770,565771,565772,565773,565774,565775,565777,565778,565779,565780,1471324,1471325)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_30_49_f_pos ON atip_index_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565718,565719,565783,565784,565785,565786,565787,565789,565790,565791,565792,565793,565794,565795,565796,565798,565799,565800,565801,1471326,1471327)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_30_49_f_neg ON atip_index_30_49_f_neg.sourceid=ou.organisationunitid
 
 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22313,230468,22201,230464,230465,22482,230466,22266,22673,22412,22485,230467,22264,22514,22643,22596,338926,427267,427268,437627,1471288,1471289)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_50_f_pos ON atip_index_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22325,230475,22461,230471,230472,22540,230473,22276,22438,22543,22244,230474,22500,22343,22467,22322,338928,427269,427270,437628,1471290,1471291)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_50_f_neg ON atip_index_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22168,230300,22370,230296,230297,22238,230298,22639,22486,22656,22570,230299,22642,22670,22550,22647,338878,427219,427220,437602,1471186,1471187)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_50_m_pos ON atip_index_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22481,230307,22389,230303,230304,22444,230305,22525,22521,22200,22600,230306,22212,22607,22569,22665,338880,427221,427222,437603,1471188,1471189)
 AND attributeoptioncomboid=229786
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_index_50_m_neg ON atip_index_50_m_neg.sourceid=ou.organisationunitid

 /*ATS Index*/
 /*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565851
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_0_8_f_pos ON ats_index_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565852
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_0_8_f_neg ON ats_index_0_8_f_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565842
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_0_8_m_pos ON ats_index_0_8_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565843
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_0_8_m_neg ON ats_index_0_8_m_neg.sourceid=ou.organisationunitid
 
 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565854
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_9_18_f_pos ON ats_index_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565855
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_9_18_f_neg ON ats_index_9_18_f_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565845
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_9_18_m_pos ON ats_index_9_18_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565846
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_9_18_m_neg ON ats_index_9_18_m_neg.sourceid=ou.organisationunitid
 
 /*19-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565857
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_19_4_f_pos ON ats_index_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565858
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_19_4_f_neg ON ats_index_19_4_f_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565848
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_19_4_m_pos ON ats_index_19_4_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565849
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_19_4_m_neg ON ats_index_19_4_m_neg.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21867
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_5_9_f_pos ON ats_index_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21868
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_5_9_f_neg ON ats_index_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21843
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_5_9_m_pos ON ats_index_5_9_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21844
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_5_9_m_neg ON ats_index_5_9_m_neg.sourceid=ou.organisationunitid

/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21870
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_10_14_f_pos ON ats_index_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21871
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_10_14_f_neg ON ats_index_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21846
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_10_14_m_pos ON ats_index_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21847
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_10_14_m_neg ON ats_index_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21873
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_15_19_f_pos ON ats_index_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21874
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_15_19_f_neg ON ats_index_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21849
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_15_19_m_pos ON ats_index_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21850
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_15_19_m_neg ON ats_index_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21876
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_20_24_f_pos ON ats_index_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21877
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_20_24_f_neg ON ats_index_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21852
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_20_24_m_pos ON ats_index_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21853
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_20_24_m_neg ON ats_index_20_24_m_neg.sourceid=ou.organisationunitid

 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=561792
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_25_29_f_pos ON ats_index_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=561793
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_25_29_f_neg ON ats_index_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=561780
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_25_29_m_pos ON ats_index_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=561781
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_25_29_m_neg ON ats_index_25_29_m_neg.sourceid=ou.organisationunitid
 
 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565693
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_30_49_f_pos ON ats_index_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565694
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_30_49_f_neg ON ats_index_30_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565690
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_30_49_m_pos ON ats_index_30_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=565691
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_30_49_m_neg ON ats_index_30_49_m_neg.sourceid=ou.organisationunitid
 
 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21882
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_50_f_pos ON ats_index_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21883
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_50_f_neg ON ats_index_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21858
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_50_m_pos ON ats_index_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=43327
 AND categoryoptioncomboid=21859
 AND attributeoptioncomboid=184430 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS ats_index_50_m_neg ON ats_index_50_m_neg.sourceid=ou.organisationunitid

 /*PMTCT_STAT (Numerator)*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid IN (199702,199703,199704,199705,199706,199707,199708,199709,562864)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_num ON PMTCT_STAT_17q2_num.sourceid=ou.organisationunitid
*/
 /*Age Unknown*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (6920,CASE WHEN periodid IN (5786,3799,3817,18562,19934,20612,35909,35910,36804,27077,27397,32124,17085,17084,17083,104544) THEN 7407 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q1_num ON PMTCT_STAT_17q1_num.sourceid=ou.organisationunitid
*/
 /*Age*/
 /*<10*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid IN (199706,199708)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_men10_num ON PMTCT_STAT_17q2_men10_num.sourceid=ou.organisationunitid

 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid=199705
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_10_14_num ON PMTCT_STAT_17q2_10_14_num.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid=199709
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_15_19_num ON PMTCT_STAT_17q2_15_19_num.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid=199703
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_20_24_num ON PMTCT_STAT_17q2_20_24_num.sourceid=ou.organisationunitid

 /*25-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid IN (199702,199707)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_25_49_num ON PMTCT_STAT_17q2_25_49_num.sourceid=ou.organisationunitid

 /*25+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid=562864
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_25_num ON PMTCT_STAT_17q2_25_num.sourceid=ou.organisationunitid
 
 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (199720,199729)
 AND categoryoptioncomboid=199704
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_50_num ON PMTCT_STAT_17q2_50_num.sourceid=ou.organisationunitid

 /*Known Positive*/
 /*<10*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid IN (199706,199708)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_men10_known_pos ON PMTCT_STAT_17q2_men10_known_pos.sourceid=ou.organisationunitid

 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid=199705
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_10_14_known_pos ON PMTCT_STAT_17q2_10_14_known_pos.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid=199709
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_15_19_known_pos ON PMTCT_STAT_17q2_15_19_known_pos.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid=199703
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_20_24_known_pos ON PMTCT_STAT_17q2_20_24_known_pos.sourceid=ou.organisationunitid

 /*25-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid IN (199702,199707)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_25_49_known_pos ON PMTCT_STAT_17q2_25_49_known_pos.sourceid=ou.organisationunitid
 
 /*25+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid=562864
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_25_known_pos ON PMTCT_STAT_17q2_25_known_pos.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199720
 AND categoryoptioncomboid=199704
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_50_known_pos ON PMTCT_STAT_17q2_50_known_pos.sourceid=ou.organisationunitid

 /*Unknown*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (6920)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q1_unk_known_pos ON PMTCT_STAT_17q1_unk_known_pos.sourceid=ou.organisationunitid

 /*HTS_TST (Facility)-PITC Inpatient Services*/
 /*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565920,565921,1471228)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_0_8_m_pos ON atip_enf_0_8_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566109,566110,1471330)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_0_8_f_pos ON atip_enf_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565941,565942,1471230)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_0_8_m_neg ON atip_enf_0_8_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566130,566131,1471332)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_0_8_f_neg ON atip_enf_0_8_f_neg.sourceid=ou.organisationunitid
 
 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565983,565984,1471234)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_9_18_m_pos ON atip_enf_9_18_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566172,566173,1471336)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_9_18_f_pos ON atip_enf_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566004,566005,1471236)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_9_18_m_neg ON atip_enf_9_18_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566193,566194,1471338)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_9_18_f_neg ON atip_enf_9_18_f_neg.sourceid=ou.organisationunitid
 
 /*19m-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566046,566047,1471240)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_19_4_m_pos ON atip_enf_19_4_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566235,566236,1471342)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_19_4_f_pos ON atip_enf_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566067,566068,1471242)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_19_4_m_neg ON atip_enf_19_4_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (566256,566257,1471344)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_19_4_f_neg ON atip_enf_19_4_f_neg.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22400,22542,1471258)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_5_9_f_pos ON atip_enf_5_9_f_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22299,22587,1471260)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_5_9_f_neg ON atip_enf_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22425,22456,1471156)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_5_9_m_pos ON atip_enf_5_9_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22199,22516,1471158)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_5_9_m_neg ON atip_enf_5_9_m_neg.sourceid=ou.organisationunitid
 
/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22508,22615,1471264)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_10_14_f_pos ON atip_enf_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22213,22306,1471266)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_10_14_f_neg ON atip_enf_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22358,22689,1471162)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_10_14_m_pos ON atip_enf_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22355,22513,1471164)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_10_14_m_neg ON atip_enf_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22475,22491,1471270)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_15_19_f_pos ON atip_enf_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22292,22311,1471272)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_15_19_f_neg ON atip_enf_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22391,22406,1471168)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_15_19_m_pos ON atip_enf_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22242,22440,1471170)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_15_19_m_neg ON atip_enf_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22175,22300,1471276)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_20_24_f_pos ON atip_enf_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22294,22336,1471278)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_20_24_f_neg ON atip_enf_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22185,22247,1471174)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_20_24_m_pos ON atip_enf_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22392,22499,1471176)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_20_24_m_neg ON atip_enf_20_24_m_neg.sourceid=ou.organisationunitid
 
 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562056,562057,1471294)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_25_29_f_pos ON atip_enf_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562077,562078,1471296)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_25_29_f_neg ON atip_enf_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561804,561805,1471192)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_25_29_m_pos ON atip_enf_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561825,561826,1471194)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_25_29_m_neg ON atip_enf_25_29_m_neg.sourceid=ou.organisationunitid

 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565760,565761,1471324)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_30_49_f_pos ON atip_enf_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565781,565782,1471326)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_30_49_f_neg ON atip_enf_30_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565697,565698,1471222)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_30_49_m_pos ON atip_enf_30_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565718,565719,1471224)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_30_49_m_neg ON atip_enf_30_49_m_neg.sourceid=ou.organisationunitid
 
 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22266,22673,1471288)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_50_f_pos ON atip_enf_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22276,22438,1471290)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_50_f_neg ON atip_enf_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22486,22639,1471186)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_50_m_pos ON atip_enf_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (22521,22525,1471188)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_enf_50_m_neg ON atip_enf_50_m_neg.sourceid=ou.organisationunitid

 /*HTS_TST (Facility)-PITC Emergency Ward*/
/*0-8m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(565937,565922,565938,565939)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_0_8_m_pos ON atip_bso_0_8_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566126,566111,566127,566128)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_0_8_f_pos ON atip_bso_0_8_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(565958,565943,565959,565960)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_0_8_m_neg ON atip_bso_0_8_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566147,566132,566148,566149)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_0_8_f_neg ON atip_bso_0_8_f_neg.sourceid=ou.organisationunitid
 
 /*9-18m*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566000,565985,566001,566002)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_9_18_m_pos ON atip_bso_9_18_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566189,566174,566190,566191)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_9_18_f_pos ON atip_bso_9_18_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566021,566006,566022,566023)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_9_18_m_neg ON atip_bso_9_18_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566210,566195,566211,566212)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_9_18_f_neg ON atip_bso_9_18_f_neg.sourceid=ou.organisationunitid
 
 /*19m-4a*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566063,566048,566064)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_19_4_m_pos ON atip_bso_19_4_m_pos.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566252,566237,566253)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_19_4_f_pos ON atip_bso_19_4_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566084,566069,566085)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_19_4_m_neg ON atip_bso_19_4_m_neg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(566273,566258,566274)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_19_4_f_neg ON atip_bso_19_4_f_neg.sourceid=ou.organisationunitid

 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(22235,427237,427238,338896)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_5_9_f_pos ON atip_bso_5_9_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338898,22295,427239,427240)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_5_9_f_neg ON atip_bso_5_9_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(22512,338848,427189,427190)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_5_9_m_pos ON atip_bso_5_9_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338850,22333,427191,427192)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_5_9_m_neg ON atip_bso_5_9_m_neg.sourceid=ou.organisationunitid

/*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338902,22664,427243,427244)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_10_14_f_pos ON atip_bso_10_14_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338904,22202,427245,427246)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_10_14_f_neg ON atip_bso_10_14_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338854,22384,427195,427196)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_10_14_m_pos ON atip_bso_10_14_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338856,22337,427197,427198)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_10_14_m_neg ON atip_bso_10_14_m_neg.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338908,22402,427249,427250)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_15_19_f_pos ON atip_bso_15_19_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338910,22495,427251,427252)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_15_19_f_neg ON atip_bso_15_19_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338860,22549,427201,427202)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_15_19_m_pos ON atip_bso_15_19_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338862,22648,427203,427204)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_15_19_m_neg ON atip_bso_15_19_m_neg.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338914,22631,427255,427256)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_20_24_f_pos ON atip_bso_20_24_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338916,22537,427257,427258)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_20_24_f_neg ON atip_bso_20_24_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338866,22211,427207,427208)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_20_24_m_pos ON atip_bso_20_24_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN(338868,22231,427209,427210)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_20_24_m_neg ON atip_bso_20_24_m_neg.sourceid=ou.organisationunitid

 /*25-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=338920
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_49_f_pos ON atip_bso_25_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=338922
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_49_f_neg ON atip_bso_25_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=338872
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_49_m_pos ON atip_bso_25_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid=338874
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_49_m_neg ON atip_bso_25_49_m_neg.sourceid=ou.organisationunitid
 
 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562073,562058,562074,562075)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_29_f_pos ON atip_bso_25_29_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (562094,562079,562095,562096)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_29_f_neg ON atip_bso_25_29_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561821,561806,561822,561823)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_29_m_pos ON atip_bso_25_29_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (561842,561827,561843,561844)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_25_29_m_neg ON atip_bso_25_29_m_neg.sourceid=ou.organisationunitid

 /*30-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565777,565762,565778,565779)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_30_49_f_pos ON atip_bso_30_49_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565798,565783,565799,565800)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_30_49_f_neg ON atip_bso_30_49_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565714,565699,565715,565716)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_30_49_m_pos ON atip_bso_30_49_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (565735,565720,565736,565737)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_30_49_m_neg ON atip_bso_30_49_m_neg.sourceid=ou.organisationunitid
 
 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (338926,22596,427267,427268)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_50_f_pos ON atip_bso_50_f_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (338928,22322,427269,427270)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_50_f_neg ON atip_bso_50_f_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (338878,22647,427219,427220)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_50_m_pos ON atip_bso_50_m_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=22693
 AND categoryoptioncomboid IN (338880,22665,427221,427222)
 AND attributeoptioncomboid IN (16,230146,CASE WHEN periodid=51202 THEN 229786 ELSE 0 END)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS atip_bso_50_m_neg ON atip_bso_50_m_neg.sourceid=ou.organisationunitid
 
 /*PMTCT_STAT (Denominator)*/
 /*Age Unknown*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=6913
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q1_den ON PMTCT_STAT_17q1_den.sourceid=ou.organisationunitid

 /*Age*/
 /*<10*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid IN (199706,199708)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_men10_den ON PMTCT_STAT_17q2_men10_den.sourceid=ou.organisationunitid

 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid=199705
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_10_14_den ON PMTCT_STAT_17q2_10_14_den.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid=199709
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_15_19_den ON PMTCT_STAT_17q2_15_19_den.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid=199703
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_20_24_den ON PMTCT_STAT_17q2_20_24_den.sourceid=ou.organisationunitid

 /*25-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid IN (199702,199707)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_25_49_den ON PMTCT_STAT_17q2_25_49_den.sourceid=ou.organisationunitid

 /*25+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid=562864
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_25_den ON PMTCT_STAT_17q2_25_den.sourceid=ou.organisationunitid

 
 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199711
 AND categoryoptioncomboid=199704
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_STAT_17q2_50_den ON PMTCT_STAT_17q2_50_den.sourceid=ou.organisationunitid


 /*PMTCT_EID*/
 /*Positive*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (7020,472971)
 AND categoryoptioncomboid=7011
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_0_2_pos ON PMTCT_EID_0_2_pos.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (23816,472972,648454)
 AND categoryoptioncomboid IN (23813,7011)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_2_12_pos_sum_prev ON PMTCT_EID_2_12_pos_sum_prev.sourceid=ou.organisationunitid

 /*Negative*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (7020,472971)
 AND categoryoptioncomboid=7014
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_0_2_neg ON PMTCT_EID_0_2_neg.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid IN (23816,472972)
 AND categoryoptioncomboid=23812
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_2_12_neg ON PMTCT_EID_2_12_neg.sourceid=ou.organisationunitid

 /*Collected*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=7020
 AND categoryoptioncomboid=455205
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_0_2_col ON PMTCT_EID_0_2_col.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=23816
 AND categoryoptioncomboid=455204
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_2_12_col ON PMTCT_EID_2_12_col.sourceid=ou.organisationunitid
 
 /*ART*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=642133
 AND categoryoptioncomboid=6989
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_0_2_art ON PMTCT_EID_0_2_art.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=642133
 AND categoryoptioncomboid=6988
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_2_12_art ON PMTCT_EID_2_12_art.sourceid=ou.organisationunitid
 
 
 /*PMTCT_EID_total*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=6990
 AND categoryoptioncomboid=6989
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_0_2_total ON PMTCT_EID_0_2_total.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=6990
 AND categoryoptioncomboid IN(6988,1516819)
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_EID_2_12_total ON PMTCT_EID_2_12_total.sourceid=ou.organisationunitid
 
/*TB_STAT*/
/*Known Positive*/
/*<1*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62274
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_men1_f ON TB_STAT_kp_men1_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62266
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_men1_m ON TB_STAT_kp_men1_m.sourceid=ou.organisationunitid
 
 /*1-4*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62275
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_1_4_f ON TB_STAT_kp_1_4_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62267
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_1_4_m ON TB_STAT_kp_1_4_m.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62276
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_5_9_f ON TB_STAT_kp_5_9_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62268
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_5_9_m ON TB_STAT_kp_5_9_m.sourceid=ou.organisationunitid

 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62277
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_10_14_f ON TB_STAT_kp_10_14_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62269
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_10_14_m ON TB_STAT_kp_10_14_m.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62278
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_15_19_f ON TB_STAT_kp_15_19_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62270
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_15_19_m ON TB_STAT_kp_15_19_m.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62279
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_20_24_f ON TB_STAT_kp_20_24_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62271
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_20_24_m ON TB_STAT_kp_20_24_m.sourceid=ou.organisationunitid

 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561768
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_25_29_f ON TB_STAT_kp_25_29_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561764
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_25_29_m ON TB_STAT_kp_25_29_m.sourceid=ou.organisationunitid

 /*30-34*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561769
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_30_34_f ON TB_STAT_kp_30_34_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561765
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_30_34_m ON TB_STAT_kp_30_34_m.sourceid=ou.organisationunitid

 /*35-39*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561770
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_35_39_f ON TB_STAT_kp_35_39_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561766
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_35_39_m ON TB_STAT_kp_35_39_m.sourceid=ou.organisationunitid

 /*40-44*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480510
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_40_44_f ON TB_STAT_kp_40_44_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480508
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_40_44_m ON TB_STAT_kp_40_44_m.sourceid=ou.organisationunitid

 /*45-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480511
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_45_49_f ON TB_STAT_kp_45_49_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480509
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_45_49_m ON TB_STAT_kp_45_49_m.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62281
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_50_f ON TB_STAT_kp_50_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62273
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kp_50_m ON TB_STAT_kp_50_m.sourceid=ou.organisationunitid
 
 /*Known Negative*/
/*<1*/
/*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62290
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_men1_f ON TB_STAT_kn_men1_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62282
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_men1_m ON TB_STAT_kn_men1_m.sourceid=ou.organisationunitid
 */
 
 /*1-4*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62291
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_1_4_f ON TB_STAT_kn_1_4_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62283
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_1_4_m ON TB_STAT_kn_1_4_m.sourceid=ou.organisationunitid
 */
 /*5-9*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62292
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_5_9_f ON TB_STAT_kn_5_9_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62284
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_5_9_m ON TB_STAT_kn_5_9_m.sourceid=ou.organisationunitid
*/
 /*10-14*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62293
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_10_14_f ON TB_STAT_kn_10_14_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62285
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_10_14_m ON TB_STAT_kn_10_14_m.sourceid=ou.organisationunitid
*/
 /*15-19*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62294
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_15_19_f ON TB_STAT_kn_15_19_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62286
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_15_19_m ON TB_STAT_kn_15_19_m.sourceid=ou.organisationunitid
*/
 /*20-24*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62295
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_20_24_f ON TB_STAT_kn_20_24_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62287
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_20_24_m ON TB_STAT_kn_20_24_m.sourceid=ou.organisationunitid
*/
 /*25-29*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561776
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_25_29_f ON TB_STAT_kn_25_29_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561772
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_25_29_m ON TB_STAT_kn_25_29_m.sourceid=ou.organisationunitid
*/
 /*30-34*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561777
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_30_34_f ON TB_STAT_kn_30_34_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561773
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_30_34_m ON TB_STAT_kn_30_34_m.sourceid=ou.organisationunitid
*/
 /*35-39*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561778
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_35_39_f ON TB_STAT_kn_35_39_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=561774
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_35_39_m ON TB_STAT_kn_35_39_m.sourceid=ou.organisationunitid
*/
 /*40-44*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480514
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_40_44_f ON TB_STAT_kn_40_44_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480512
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_40_44_m ON TB_STAT_kn_40_44_m.sourceid=ou.organisationunitid
*/
 /*45-49*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480515
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_45_49_f ON TB_STAT_kn_45_49_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=1480513
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_45_49_m ON TB_STAT_kn_45_49_m.sourceid=ou.organisationunitid
*/
 /*50+*/
 /*
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62297
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_50_f ON TB_STAT_kn_50_f.sourceid=ou.organisationunitid
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=62230
 AND categoryoptioncomboid=62289
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_kn_50_m ON TB_STAT_kn_50_m.sourceid=ou.organisationunitid
 */

 /*TB_STAT*/
 /*Denominator*/
/*<1*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562476
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_men1_f ON TB_STAT_den_men1_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562465
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_men1_m ON TB_STAT_den_men1_m.sourceid=ou.organisationunitid
 
 /*1-4*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562477
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_1_4_f ON TB_STAT_den_1_4_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562466
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_1_4_m ON TB_STAT_den_1_4_m.sourceid=ou.organisationunitid
 
 /*5-9*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562478
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_5_9_f ON TB_STAT_den_5_9_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562467
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_5_9_m ON TB_STAT_den_5_9_m.sourceid=ou.organisationunitid

 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562479
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_10_14_f ON TB_STAT_den_10_14_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562468
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_10_14_m ON TB_STAT_den_10_14_m.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562480
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_15_19_f ON TB_STAT_den_15_19_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562469
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_15_19_m ON TB_STAT_den_15_19_m.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562481
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_20_24_f ON TB_STAT_den_20_24_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562470
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_20_24_m ON TB_STAT_den_20_24_m.sourceid=ou.organisationunitid

 /*25-29*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562482
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_25_29_f ON TB_STAT_den_25_29_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562471
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_25_29_m ON TB_STAT_den_25_29_m.sourceid=ou.organisationunitid

 /*30-34*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562483
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_30_34_f ON TB_STAT_den_30_34_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562472
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_30_34_m ON TB_STAT_den_30_34_m.sourceid=ou.organisationunitid

 /*35-39*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562484
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_35_39_f ON TB_STAT_den_35_39_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562473
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_35_39_m ON TB_STAT_den_35_39_m.sourceid=ou.organisationunitid

 /*40-44*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=1480498
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_40_44_f ON TB_STAT_den_40_44_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=1480496
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_40_44_m ON TB_STAT_den_40_44_m.sourceid=ou.organisationunitid

 /*45-49*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=1480499
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_45_49_f ON TB_STAT_den_45_49_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=1480497
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_45_49_m ON TB_STAT_den_45_49_m.sourceid=ou.organisationunitid

 /*50+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562486
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_50_f ON TB_STAT_den_50_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=199614
 AND categoryoptioncomboid=562475
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_STAT_den_50_m ON TB_STAT_den_50_m.sourceid=ou.organisationunitid
 
 /*TX_NEW*/
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=443867
 AND categoryoptioncomboid=16
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_num ON TX_NEW_num.sourceid=ou.organisationunitid
 
 /*Preg_Breast*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=443945
 AND categoryoptioncomboid=443938
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_preg ON TX_NEW_preg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=443945
 AND categoryoptioncomboid=443937
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_breast ON TX_NEW_breast.sourceid=ou.organisationunitid
 
 /*Female*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538076
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_men1_f ON TX_NEW_men1_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538078
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_1_4_f ON TX_NEW_1_4_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538080
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_5_9_f ON TX_NEW_5_9_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444114
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_10_14_f ON TX_NEW_10_14_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444116
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_15_19_f ON TX_NEW_15_19_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444118
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_20_24_f ON TX_NEW_20_24_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=603097
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_25_29_f ON TX_NEW_25_29_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=603099
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_30_34_f ON TX_NEW_30_34_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=603101
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_35_39_f ON TX_NEW_35_39_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538082
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_40_44_f ON TX_NEW_40_44_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538084
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_45_49_f ON TX_NEW_45_49_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444117
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_50_f ON TX_NEW_50_f.sourceid=ou.organisationunitid
 
 /*Male*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538075
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_men1_m ON TX_NEW_men1_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538077
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_1_4_m ON TX_NEW_1_4_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538079
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_5_9_m ON TX_NEW_5_9_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444123
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_10_14_m ON TX_NEW_10_14_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444119
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_15_19_m ON TX_NEW_15_19_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444120
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_20_24_m ON TX_NEW_20_24_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=603096
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_25_29_m ON TX_NEW_25_29_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=603098
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_30_34_m ON TX_NEW_30_34_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=603100
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_35_39_m ON TX_NEW_35_39_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538081
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_40_44_m ON TX_NEW_40_44_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=1538083
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_45_49_m ON TX_NEW_45_49_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444127
 AND categoryoptioncomboid=444121
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_50_m ON TX_NEW_50_m.sourceid=ou.organisationunitid
 
 /*TX_CURR*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444204
 AND categoryoptioncomboid=16
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_num ON TX_CURR_num.sourceid=ou.organisationunitid
 
 /*Female*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538076
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_men1_f ON TX_CURR_men1_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538078
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_1_4_f ON TX_CURR_1_4_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538080
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_5_9_f ON TX_CURR_5_9_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444114
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_10_14_f ON TX_CURR_10_14_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444116
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_15_19_f ON TX_CURR_15_19_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444118
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_20_24_f ON TX_CURR_20_24_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=603097
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_25_29_f ON TX_CURR_25_29_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=603099
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_30_34_f ON TX_CURR_30_34_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=603101
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_35_39_f ON TX_CURR_35_39_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538082
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_40_44_f ON TX_CURR_40_44_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538084
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_45_49_f ON TX_CURR_45_49_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444117
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_50_f ON TX_CURR_50_f.sourceid=ou.organisationunitid
 
 /*Male*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538075
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_men1_m ON TX_CURR_men1_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538077
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_1_4_m ON TX_CURR_1_4_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538079
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_5_9_m ON TX_CURR_5_9_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444123
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_10_14_m ON TX_CURR_10_14_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444119
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_15_19_m ON TX_CURR_15_19_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444120
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_20_24_m ON TX_CURR_20_24_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=603096
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_25_29_m ON TX_CURR_25_29_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=603098
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_30_34_m ON TX_CURR_30_34_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=603100
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_35_39_m ON TX_CURR_35_39_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538081
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_40_44_m ON TX_CURR_40_44_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=1538083
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_45_49_m ON TX_CURR_45_49_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=444211
 AND categoryoptioncomboid=444121
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_50_m ON TX_CURR_50_m.sourceid=ou.organisationunitid
 
 /*TX_NEW TX_CURR Coarse*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515648
 AND categoryoptioncomboid=481511
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_coarse_f_men15 ON TX_NEW_coarse_f_men15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515648
 AND categoryoptioncomboid=481512
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_coarse_f_mai15 ON TX_NEW_coarse_f_mai15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515648
 AND categoryoptioncomboid=481513
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_coarse_m_men15 ON TX_NEW_coarse_m_men15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515648
 AND categoryoptioncomboid=481510
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_NEW_coarse_m_mai15 ON TX_NEW_coarse_m_mai15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515649
 AND categoryoptioncomboid=481511
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_coarse_f_men15 ON TX_CURR_coarse_f_men15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515649
 AND categoryoptioncomboid=481512
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_coarse_f_mai15 ON TX_CURR_coarse_f_mai15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515649
 AND categoryoptioncomboid=481513
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_coarse_m_men15 ON TX_CURR_coarse_m_men15.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=515649
 AND categoryoptioncomboid=481510
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_CURR_coarse_m_mai15 ON TX_CURR_coarse_m_mai15.sourceid=ou.organisationunitid
 
 /*PMTCT_ART New*/
 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535785
 AND categoryoptioncomboid=199705
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_New_10_14 ON PMTCT_ART_New_10_14.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535785
 AND categoryoptioncomboid=199709
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_New_15_19 ON PMTCT_ART_New_15_19.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535785
 AND categoryoptioncomboid=199703
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_New_20_24 ON PMTCT_ART_New_20_24.sourceid=ou.organisationunitid

 /*25+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535785
 AND categoryoptioncomboid=562864
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_New_25 ON PMTCT_ART_New_25.sourceid=ou.organisationunitid

 /*PMTCT_ART Already*/
 /*10-14*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535786
 AND categoryoptioncomboid=199705
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_Already_10_14 ON PMTCT_ART_Already_10_14.sourceid=ou.organisationunitid

 /*15-19*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535786
 AND categoryoptioncomboid=199709
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_Already_15_19 ON PMTCT_ART_Already_15_19.sourceid=ou.organisationunitid

 /*20-24*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535786
 AND categoryoptioncomboid=199703
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_Already_20_24 ON PMTCT_ART_Already_20_24.sourceid=ou.organisationunitid

 /*25+*/
 LEFT OUTER JOIN (
 SELECT sourceid,SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535786
 AND categoryoptioncomboid=562864
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS PMTCT_ART_Already_25 ON PMTCT_ART_Already_25.sourceid=ou.organisationunitid

/*TB_ART (Numerator)*/
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num ON TB_ART_num.sourceid=ou.organisationunitid

/*Female*/
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562476
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_men1_f ON TB_ART_num_men1_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562477
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_1_4_f ON TB_ART_num_1_4_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562478
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_5_9_f ON TB_ART_num_5_9_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562479
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_10_14_f ON TB_ART_num_10_14_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562480
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_15_19_f ON TB_ART_num_15_19_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562481
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_20_24_f ON TB_ART_num_20_24_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562482
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_25_29_f ON TB_ART_num_25_29_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562483
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_30_34_f ON TB_ART_num_30_34_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562484
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_35_39_f ON TB_ART_num_35_39_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=1480498
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_40_44_f ON TB_ART_num_40_44_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=1480499
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_45_49_f ON TB_ART_num_45_49_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562486
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_50_f ON TB_ART_num_50_f.sourceid=ou.organisationunitid
 
 /*Male*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562465
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_men1_m ON TB_ART_num_men1_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562466
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_1_4_m ON TB_ART_num_1_4_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562467
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_5_9_m ON TB_ART_num_5_9_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562468
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_10_14_m ON TB_ART_num_10_14_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562469
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_15_19_m ON TB_ART_num_15_19_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562470
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_20_24_m ON TB_ART_num_20_24_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562471
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_25_29_m ON TB_ART_num_25_29_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562472
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_30_34_m ON TB_ART_num_30_34_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562473
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_35_39_m ON TB_ART_num_35_39_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=1480496
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_40_44_m ON TB_ART_num_40_44_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=1480497
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_45_49_m ON TB_ART_num_45_49_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=298004
 AND categoryoptioncomboid=562475
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_num_50_m ON TB_ART_num_50_m.sourceid=ou.organisationunitid
 
 /*Female*/
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562476
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_men1_f ON TB_ART_prev_men1_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562477
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_1_4_f ON TB_ART_prev_1_4_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562478
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_5_9_f ON TB_ART_prev_5_9_f.sourceid=ou.organisationunitid

 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562479
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_10_14_f ON TB_ART_prev_10_14_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562480
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_15_19_f ON TB_ART_prev_15_19_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562481
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_20_24_f ON TB_ART_prev_20_24_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562482
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_25_29_f ON TB_ART_prev_25_29_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562483
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_30_34_f ON TB_ART_prev_30_34_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562484
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_35_39_f ON TB_ART_prev_35_39_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=1480498
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_40_44_f ON TB_ART_prev_40_44_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=1480499
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_45_49_f ON TB_ART_prev_45_49_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562486
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_50_f ON TB_ART_prev_50_f.sourceid=ou.organisationunitid
 
 /*Male*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562465
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_men1_m ON TB_ART_prev_men1_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562466
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_1_4_m ON TB_ART_prev_1_4_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562467
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_5_9_m ON TB_ART_prev_5_9_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562468
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_10_14_m ON TB_ART_prev_10_14_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562469
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_15_19_m ON TB_ART_prev_15_19_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562470
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_20_24_m ON TB_ART_prev_20_24_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562471
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_25_29_m ON TB_ART_prev_25_29_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562472
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_30_34_m ON TB_ART_prev_30_34_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562473
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_35_39_m ON TB_ART_prev_35_39_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=1480496
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_40_44_m ON TB_ART_prev_40_44_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=1480497
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_45_49_m ON TB_ART_prev_45_49_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1535163
 AND categoryoptioncomboid=562475
 AND periodid IN (SELECT DISTINCT(ps.periodid) FROM _periodstructure ps, period p WHERE quarterly=(SELECT quarterly FROM _periodstructure WHERE periodid=630920) AND ps.periodid=p.periodid AND p.periodtypeid=3)
 GROUP BY sourceid) AS TB_ART_prev_50_m ON TB_ART_prev_50_m.sourceid=ou.organisationunitid
 
 /*TX_PVLS*/
 /*Routine*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484186
 AND categoryoptioncomboid=484024
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_preg ON TX_PVLS_num_rou_preg.sourceid=ou.organisationunitid
 
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484186
 AND categoryoptioncomboid=484023
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_breast ON TX_PVLS_num_rou_breast.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538088
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_men1 ON TX_PVLS_num_rou_f_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538094
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_1_4 ON TX_PVLS_num_rou_f_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538100
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_5_9 ON TX_PVLS_num_rou_f_5_9.sourceid=ou.organisationunitid
 
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484042
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_10_14 ON TX_PVLS_num_rou_f_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484039
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_15_19 ON TX_PVLS_num_rou_f_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484038
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_20_24 ON TX_PVLS_num_rou_f_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603107
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_25_29 ON TX_PVLS_num_rou_f_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603113
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_30_34 ON TX_PVLS_num_rou_f_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603119
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_35_39 ON TX_PVLS_num_rou_f_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538106
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_40_44 ON TX_PVLS_num_rou_f_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538112
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_45_49 ON TX_PVLS_num_rou_f_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484057
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_f_50 ON TX_PVLS_num_rou_f_50.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538085
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_men1 ON TX_PVLS_num_rou_m_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538091
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_1_4 ON TX_PVLS_num_rou_m_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538097
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_5_9 ON TX_PVLS_num_rou_m_5_9.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484055
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_10_14 ON TX_PVLS_num_rou_m_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484041
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_15_19 ON TX_PVLS_num_rou_m_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484061
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_20_24 ON TX_PVLS_num_rou_m_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603104
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_25_29 ON TX_PVLS_num_rou_m_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603110
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_30_34 ON TX_PVLS_num_rou_m_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603116
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_35_39 ON TX_PVLS_num_rou_m_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538103
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_40_44 ON TX_PVLS_num_rou_m_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538109
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_45_49 ON TX_PVLS_num_rou_m_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484065
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_rou_m_50 ON TX_PVLS_num_rou_m_50.sourceid=ou.organisationunitid
 
 /*Undocumented*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484186
 AND categoryoptioncomboid=484027
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_preg ON TX_PVLS_num_und_preg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484186
 AND categoryoptioncomboid=484025
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_breast ON TX_PVLS_num_und_breast.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538090
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_men1 ON TX_PVLS_num_und_f_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538096
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_1_4 ON TX_PVLS_num_und_f_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538102
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_5_9 ON TX_PVLS_num_und_f_5_9.sourceid=ou.organisationunitid
 
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484054
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_10_14 ON TX_PVLS_num_und_f_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484040
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_15_19 ON TX_PVLS_num_und_f_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484036
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_20_24 ON TX_PVLS_num_und_f_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603109
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_25_29 ON TX_PVLS_num_und_f_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603115
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_30_34 ON TX_PVLS_num_und_f_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603121
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_35_39 ON TX_PVLS_num_und_f_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538108
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_40_44 ON TX_PVLS_num_und_f_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538114
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_45_49 ON TX_PVLS_num_und_f_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484064
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_f_50 ON TX_PVLS_num_und_f_50.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538087
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_men1 ON TX_PVLS_num_und_m_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538093
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_1_4 ON TX_PVLS_num_und_m_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538099
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_5_9 ON TX_PVLS_num_und_m_5_9.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484052
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_10_14 ON TX_PVLS_num_und_m_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484047
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_15_19 ON TX_PVLS_num_und_m_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484037
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_20_24 ON TX_PVLS_num_und_m_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603106
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_25_29 ON TX_PVLS_num_und_m_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603112
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_30_34 ON TX_PVLS_num_und_m_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=603118
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_35_39 ON TX_PVLS_num_und_m_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538105
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_40_44 ON TX_PVLS_num_und_m_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=1538111
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_45_49 ON TX_PVLS_num_und_m_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484188
 AND categoryoptioncomboid=484046
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_num_und_m_50 ON TX_PVLS_num_und_m_50.sourceid=ou.organisationunitid
 
 /*TX_PVLS (Denominator)*/
 /*Routine*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484191
 AND categoryoptioncomboid=484024
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_preg ON TX_PVLS_den_rou_preg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484191
 AND categoryoptioncomboid=484023
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_breast ON TX_PVLS_den_rou_breast.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538088
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_men1 ON TX_PVLS_den_rou_f_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538094
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_1_4 ON TX_PVLS_den_rou_f_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538100
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_5_9 ON TX_PVLS_den_rou_f_5_9.sourceid=ou.organisationunitid
 
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484042
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_10_14 ON TX_PVLS_den_rou_f_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484039
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_15_19 ON TX_PVLS_den_rou_f_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484038
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_20_24 ON TX_PVLS_den_rou_f_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603107
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_25_29 ON TX_PVLS_den_rou_f_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603113
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_30_34 ON TX_PVLS_den_rou_f_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603119
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_35_39 ON TX_PVLS_den_rou_f_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538106
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_40_44 ON TX_PVLS_den_rou_f_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538112
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_45_49 ON TX_PVLS_den_rou_f_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484057
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_f_50 ON TX_PVLS_den_rou_f_50.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538085
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_men1 ON TX_PVLS_den_rou_m_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538091
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_1_4 ON TX_PVLS_den_rou_m_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538097
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_5_9 ON TX_PVLS_den_rou_m_5_9.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484055
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_10_14 ON TX_PVLS_den_rou_m_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484041
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_15_19 ON TX_PVLS_den_rou_m_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484061
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_20_24 ON TX_PVLS_den_rou_m_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603104
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_25_29 ON TX_PVLS_den_rou_m_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603110
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_30_34 ON TX_PVLS_den_rou_m_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603116
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_35_39 ON TX_PVLS_den_rou_m_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538103
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_40_44 ON TX_PVLS_den_rou_m_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538109
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_45_49 ON TX_PVLS_den_rou_m_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484065
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_rou_m_50 ON TX_PVLS_den_rou_m_50.sourceid=ou.organisationunitid
 
 /*Undocumented*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484191
 AND categoryoptioncomboid=484027
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_preg ON TX_PVLS_den_und_preg.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484191
 AND categoryoptioncomboid=484025
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_breast ON TX_PVLS_den_und_breast.sourceid=ou.organisationunitid 
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538090
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_men1 ON TX_PVLS_den_und_f_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538096
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_1_4 ON TX_PVLS_den_und_f_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538102
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_5_9 ON TX_PVLS_den_und_f_5_9.sourceid=ou.organisationunitid
 
LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484054
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_10_14 ON TX_PVLS_den_und_f_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484040
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_15_19 ON TX_PVLS_den_und_f_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484036
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_20_24 ON TX_PVLS_den_und_f_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603109
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_25_29 ON TX_PVLS_den_und_f_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603115
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_30_34 ON TX_PVLS_den_und_f_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603121
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_35_39 ON TX_PVLS_den_und_f_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538108
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_40_44 ON TX_PVLS_den_und_f_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538114
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_45_49 ON TX_PVLS_den_und_f_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484064
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_f_50 ON TX_PVLS_den_und_f_50.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538087
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_men1 ON TX_PVLS_den_und_m_men1.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538093
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_1_4 ON TX_PVLS_den_und_m_1_4.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538099
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_5_9 ON TX_PVLS_den_und_m_5_9.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484052
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_10_14 ON TX_PVLS_den_und_m_10_14.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484047
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_15_19 ON TX_PVLS_den_und_m_15_19.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484037
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_20_24 ON TX_PVLS_den_und_m_20_24.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603106
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_25_29 ON TX_PVLS_den_und_m_25_29.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603112
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_30_34 ON TX_PVLS_den_und_m_30_34.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=603118
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_35_39 ON TX_PVLS_den_und_m_35_39.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538105
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_40_44 ON TX_PVLS_den_und_m_40_44.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=1538111
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_45_49 ON TX_PVLS_den_und_m_45_49.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=484189
 AND categoryoptioncomboid=484046
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS TX_PVLS_den_und_m_50 ON TX_PVLS_den_und_m_50.sourceid=ou.organisationunitid
 
 /*HTS Index Offered*/
/*Female*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538076
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_men1_f ON HTS_I_ofered_men1_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538078
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_1_4_f ON HTS_I_ofered_1_4_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538080
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_5_9_f ON HTS_I_ofered_5_9_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444114
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_10_14_f ON HTS_I_ofered_10_14_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444116
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_15_19_f ON HTS_I_ofered_15_19_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444118
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_20_24_f ON HTS_I_ofered_20_24_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=603097
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_25_29_f ON HTS_I_ofered_25_29_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=603099
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_30_34_f ON HTS_I_ofered_30_34_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=603101
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_35_39_f ON HTS_I_ofered_35_39_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538082
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_40_44_f ON HTS_I_ofered_40_44_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538084
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_45_49_f ON HTS_I_ofered_45_49_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444117
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_50_f ON HTS_I_ofered_50_f.sourceid=ou.organisationunitid
 
 /*Male*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538075
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_men1_m ON HTS_I_ofered_men1_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538077
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_1_4_m ON HTS_I_ofered_1_4_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538079
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_5_9_m ON HTS_I_ofered_5_9_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444123
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_10_14_m ON HTS_I_ofered_10_14_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444119
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_15_19_m ON HTS_I_ofered_15_19_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444120
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_20_24_m ON HTS_I_ofered_20_24_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=603096
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_25_29_m ON HTS_I_ofered_25_29_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=603098
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_30_34_m ON HTS_I_ofered_30_34_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=603100
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_35_39_m ON HTS_I_ofered_35_39_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538081
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_40_44_m ON HTS_I_ofered_40_44_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=1538083
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_45_49_m ON HTS_I_ofered_45_49_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668025
 AND categoryoptioncomboid=444121
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_ofered_50_m ON HTS_I_ofered_50_m.sourceid=ou.organisationunitid
 
  /*HTS Index Accepted*/
/*Female*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538076
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_men1_f ON HTS_I_acepted_men1_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538078
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_1_4_f ON HTS_I_acepted_1_4_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538080
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_5_9_f ON HTS_I_acepted_5_9_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444114
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_10_14_f ON HTS_I_acepted_10_14_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444116
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_15_19_f ON HTS_I_acepted_15_19_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444118
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_20_24_f ON HTS_I_acepted_20_24_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=603097
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_25_29_f ON HTS_I_acepted_25_29_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=603099
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_30_34_f ON HTS_I_acepted_30_34_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=603101
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_35_39_f ON HTS_I_acepted_35_39_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538082
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_40_44_f ON HTS_I_acepted_40_44_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538084
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_45_49_f ON HTS_I_acepted_45_49_f.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444117
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_50_f ON HTS_I_acepted_50_f.sourceid=ou.organisationunitid
 
 /*Male*/
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538075
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_men1_m ON HTS_I_acepted_men1_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538077
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_1_4_m ON HTS_I_acepted_1_4_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538079
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_5_9_m ON HTS_I_acepted_5_9_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444123
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_10_14_m ON HTS_I_acepted_10_14_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444119
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_15_19_m ON HTS_I_acepted_15_19_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444120
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_20_24_m ON HTS_I_acepted_20_24_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=603096
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_25_29_m ON HTS_I_acepted_25_29_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=603098
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_30_34_m ON HTS_I_acepted_30_34_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=603100
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_35_39_m ON HTS_I_acepted_35_39_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538081
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_40_44_m ON HTS_I_acepted_40_44_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=1538083
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_45_49_m ON HTS_I_acepted_45_49_m.sourceid=ou.organisationunitid
 
 LEFT OUTER JOIN (
 SELECT sourceid, SUM(CAST(value AS DOUBLE PRECISION)) AS value
 FROM datavalue
 WHERE dataelementid=1668026
 AND categoryoptioncomboid=444121
 AND periodid=(SELECT ps.periodid FROM _periodstructure ps WHERE iso=(SELECT quarterly FROM _periodstructure WHERE periodid=630920))
 GROUP BY sourceid) AS HTS_I_acepted_50_m ON HTS_I_acepted_50_m.sourceid=ou.organisationunitid 
 
WHERE ous.level=4 AND ous.idlevel2=110 ORDER BY district.name || ' / ' || ou.name ASC;