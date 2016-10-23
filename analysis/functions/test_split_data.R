test_split_data <- function(data_df = data_class){
  cat("Class of DV:\n")
  print(str(data_df$responder_3m_f))
  print(str(data_df$responder_3m_f))
  print(str(data_df$responder_3m_f))


  if ("CYBOCS_3m" %in% names(data_df)) warning("CYBOCS_3m is *in* test sample")
  if (!("CYBOCS_3m" %in% names(data_df))) message("CYBOCS_3m is NOT in test sample")
  message("done")
}

test_split_data(data_class)

message("function 'test_split_data' has been run.")