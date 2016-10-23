save_model_results <- function(obj,
                               test_df = test_sample,
                               predict_results = TRUE,
                               report_varimp = TRUE,
                               compute_conf_matrix = TRUE){

  results <- list()

  results$fit <- obj
  results$name <- deparse(substitute(obj))


  if (predict_results == TRUE){
    message("Computing predictiong. Predicted values are: \n")
    fit_pred <- predict(obj, test_df)

    print(fit_pred)

    if (compute_conf_matrix == TRUE){
      message("confusion matrix for predicted values and factual values: \n")
      results$confusion_matrix <- confusionMatrix(data = fit_pred,
                                                  test_df$responder_3m_f)
      print(results$confusion_matrix)
    }
  }

  if (report_varimp == TRUE){
    results$varimp <- varImp(obj, scale = FALSE)
    print(results$varimp)
  }



  return(results)
}


message("function 'save_model_results' has been sourced.")