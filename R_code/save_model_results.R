
save_model_results <- function(obj,
                               predict_results = TRUE,
                               report_varimp = TRUE){

  results <- list()

  results$fit <- obj
  results$name <- deparse(substitute(obj))


  if (predict_results == TRUE){
    fit_pred <- predict(obj, test)
    results$prediction_results <- fit_pred
    results$confusion_matrix <- confusionMatrix(data = fit_pred, test$responder_3m_f)
  }

  if (report_varimp == TRUE){
    results$varimp <- varImp(obj, scale = FALSE)
  }

  return(results)
}