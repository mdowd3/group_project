#' Show significance of a linear model with two explanatory variables
#'
#' This function provides the cosignificance of a linear model based
#' on the specified variables.
#'
#' @param df_name A data frame
#' @param response_variable A column name (numeric) that is the response variable (y-axis)
#' @param explanatory_variable1 A column name (numeric) that is the first explanatory variable (x-axis)
#' @param explanatory_variable2 A column name (numeric) that is the second explanatory variable (x-axis)
#' @return A stepAIC of the explanatory variables. The variables displayed
#' with the smallest AIC are significant.
#' @import magrittr
#' @import MASS
#' @import stats
#' @export
#' @examples
#' two_explan_mlm_significance(scad_full, 'Total_length_cm', 'Sex_dbl', 'Age_dbl')
two_explan_mlm_significance = function (df_name, response_variable, explanatory_variable1, explanatory_variable2) {
  response = df_name[,response_variable]
  explanatory1 = df_name[,explanatory_variable1]
  explanatory2 = df_name[,explanatory_variable2]
  stats::lm(response~explanatory1 + explanatory2) %>% MASS::stepAIC()
}
