#' Summarize a linear model
#'
#' This function provides a summary of a linear model based on the specified
#' variables.
#'
#' @param df_name A data frame
#' @param response_variable A column name (numeric) that is the response variable (y-axis)
#' @param explanatory_variable A column name (numeric) that is the explanatory variable (x-axis)
#' @return A summary of the linear model. Pr(>|t|) describes the significance
#' @import magrittr
#' @import stats
#' @export
#' @examples
#' linear_model_summary(snapper_full, 'Total_length_cm', 'Sex_dbl')
linear_model_summary = function (df_name, response_variable, explanatory_variable) {
  response = df_name[,response_variable]
  explanatory = df_name[,explanatory_variable]
  stats::lm(response~explanatory) %>% summary()
}
