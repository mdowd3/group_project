#' Creates a Column for Age in a numerical format
#'
#' This function creates a new column that converts factors into numbers
#'
#'
#' @param df_name A data frame
#' @param col_name A column of ages that are factors
#' @return A column of ages that are numerics
#' @import dplyr
#' @import magrittr
#' @export
#' @examples
#' age_dbl(snapper, Age)
age_dbl = function (df_name, col_name){
  df_name %>%
    dplyr::mutate(
      Age_dbl = as.double({{col_name}}))
}
