#' Summarize a linear model with three explanatory variables
#'
#' This function provides a summary of a linear model based on the specified
#' variables.
#'
#' @param df_name A data frame
#' @param response_variable A column name (numeric) that is the response variable (y-axis)
#' @param explanatory_variable1 A column name (numeric) that is the first explanatory variable (x-axis)
#' @param explanatory_variable2 A column name (numeric) that is the second explanatory variable (x-axis)
#' @param explanatory_variable3 A column name (numeric) that is the third explanatory variable (x-axis)
#' @return A summary of the linear model. Pr(>|t|) describes the significance
#' @import magrittr
#' @import stats
#' @export
#' @examples
#' three_explan_mlm_summary(scad_full, 'Total_length_cm', 'Sex_dbl', 'Age_dbl', 'Waypoint_dbl')
three_explan_mlm_summary = function (df_name, response_variable, explanatory_variable1, explanatory_variable2, explanatory_variable3) {
  response = df_name[,response_variable]
  explanatory1 = df_name[,explanatory_variable1]
  explanatory2 = df_name[,explanatory_variable2]
  explanatory3 = df_name[,explanatory_variable3]
  stats::lm(response~explanatory1 + explanatory2 + explanatory3) %>% summary()
}
