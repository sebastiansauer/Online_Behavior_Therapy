

recode_predictor_names <- function(names){
  library(dplyr)


  dplyr::recode(names,
         yearswithOCD = "Duration of OCD",
         OCDonset = "OCD onset",
         Education_parentUniversity1 = "Parental education: University",
         obsessions1 = "Aggressive, sexual or religious obsessions",
         EWSASP_sum_PRE = "EWSAS-C",
         CYBOCS_pre_avoid = "CY-BOCS avoidance item",
         ChOCI_R_P_sumsym_pre = "ChOCI-R-P symptoms",
         ChOCI_R_C_sumsym_PRE = "ChOCI-R-P symptoms",
         SCAS_S_P_sum_PRE = "SCAS-S-P",
         OCD_treatm_expnone1 = "Previous CBT for OCD",
         distance = "Distance to research unit",
         contactSelf.referral1 = "Self-referral",
         CGI_S_pre = "CGI-S",
         CDI_S_sum_PRE = "CDI-S",
         BirthcountrySweden1 = "Country of birth: Sweden",
         dummy = "dummy2"
  ) -> names_new

  return(names_new)

}





recode_predictor_names_2 <- function(names){
  library(dplyr)


  dplyr::recode(names,
                yearswithOCD = "Duration of OCD",
                OCDonset = "OCD onset",
                Education_parentUniversity1 = "Parental education: University",
                obsessions1 = "Aggressive, sexual or religious obsessions",
                EWSASP_sum_PRE = "EWSAS-C",
                CYBOCS_pre_avoid = "CY-BOCS avoidance item",
                ChOCI_R_P_sumsym_pre = "ChOCI-R-P symptoms",
                ChOCI_R_C_sumsym_PRE = "ChOCI-R-P symptoms",
                SCAS_S_P_sum_PRE = "SCAS-S-P",
                OCD_treatm_expnone1 = "Previous CBT for OCD",
                distance = "Distance to research unit",
                contactSelf.referral1 = "Self-referral",
                CGI_S_pre = "CGI-S",
                CDI_S_sum_PRE = "CDI-S",
                BirthcountrySweden1 = "Country of birth: Sweden",
                dummy = "dummy2",
                CYBOCS_pre_insight = "CY-BOCS insight item",
                SCAS_S_C_sum_PRE = "SCAS-S-C",
                age = "Age",
                CYBOCS_pre_COMP = "CY-BOCS Compulsions subscale",
                ChOCI_R_C_sumimp_PRE = "ChOCI-R-C impairment",
                EWSASC_sum_PRE = "EWSAS-C",
                ChOCI_R_P_sumsym_PRE = "ChOCI-R-P impairment",
                ChOCI_R_C_sumimp_PRE = "ChOCI-R-C symptoms",
                numberdiagnos = "Number of comorbid diagnoses",
                EWSASC_sum_PRE = "EWSAS-P",
                FAS_PR_sum_PRE = "FAS-PR",
                CYBOCS_pre_OBS = "CY-BOCS Obsessions subscale"
  ) -> names_new

  return(names_new)

}




recode_predictor_names_3 <- function(names){
  library(dplyr)


  dplyr::recode(names,
                yearswithOCD = "Duration of OCD",
                OCDonset = "OCD onset",
                Education_parentUniversity1 = "Parental education: University",
                obsessions1 = "Aggressive, sexual or religious obsessions",
                EWSASP_sum_PRE = "EWSAS-C",
                CYBOCS_pre_avoid = "CY-BOCS avoidance item",
                ChOCI_R_P_sumsym_pre = "ChOCI-R-P symptoms",
                ChOCI_R_C_sumsym_PRE = "ChOCI-R-P symptoms",
                SCAS_S_P_sum_PRE = "SCAS-S-P",
                OCD_treatm_expnone1 = "Previous CBT for OCD",
                distance = "Distance to research unit",
                contactSelf.referral1 = "Self-referral",
                CGI_S_pre = "CGI-S",
                CDI_S_sum_PRE = "CDI-S",
                BirthcountrySweden1 = "Country of birth: Sweden",
                dummy = "dummy2",
                CYBOCS_pre_insight = "CY-BOCS insight item",
                SCAS_S_C_sum_PRE = "SCAS-S-C",
                age = "Age",
                CYBOCS_pre_COMP = "CY-BOCS Compulsions subscale",
                ChOCI_R_C_sumimp_PRE = "ChOCI-R-C impairment",
                EWSASC_sum_PRE = "EWSAS-C",
                ChOCI_R_P_sumsym_PRE = "ChOCI-R-P impairment",
                ChOCI_R_C_sumimp_PRE = "ChOCI-R-C symptoms",
                numberdiagnos = "Number of comorbid diagnoses",
                EWSASC_sum_PRE = "EWSAS-P",
                FAS_PR_sum_PRE = "FAS-PR",
                CYBOCS_pre_OBS = "CY-BOCS Obsessions subscale",
                ADHD1 = "ADHD",
                checking1 = "Checking & obsessive hoarding",
                Depression1 = "Depression",
                sexgirl1 = "Sex: female",
                OCD_treatm_expnone1 = "No previous treatment for OCD",
                CBT_OCD1 = "Previous CBT for OCD",
                treatm_expCAMHS.councelling1 = "Treatment CAMHS",
                medicationSSRI1 = "Medication: SSRI",
                ChOCI_R_P_sumimp_PRE = "ChOCI-R-P impairment"
  ) -> names_new

  return(names_new)

}
