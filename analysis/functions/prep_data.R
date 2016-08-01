prep_data <- function(data_file = path_file_data, learning_type = "classification", write = FALSE) {

  require(readr)
  require(dplyr)


  # define paths
  path_data <- "~/Documents/OneDrive/Forschung/Online_Behavior_Therapy/raw_data"
  path_file_data <- "~/Documents/OneDrive/Forschung/Online_Behavior_Therapy/raw_data/BiPOCD_raw_data.csv"



  # load data
  data <- read_csv(path_file_data)

  # convert outcome to factor and relevel
  data %>%
    mutate(responder_3m_f = factor(responder_3m)) -> data

  cat("factorized!")


  data$responder_3m_f <- relevel(data$responder_3m_f, ref = "1")

  # identify NZV variables
  data %>%
    caret::nearZeroVar(., saveMetrics = TRUE) %>%
    tibble::rownames_to_column() %>%
    filter(nzv == TRUE) -> data_nzv

  nzv_vars <- data_nzv$rowname


  data %>%
    dplyr::select(dplyr::matches("sum|CYBOCS"),  # sumscores of scales OR CYBOCS
                  Depression:numberdiagnos,  # comorbidity
                  sex:OCD_treatm_exp,  # demographics
                  responder_3m_f, CYBOCS_3m,  # outcome
                  CGI_S_pre,  # clincial rating of symptoms
                  checking, obsessions, contamination, symmetry, # symptoms
                  ID,
                  -one_of(nzv_vars)) ->  # exclude nzv variables
    data_mod

  if (write == TRUE) write_csv(data_mod, path = "data_mod.csv")




  return(data_mod)



}