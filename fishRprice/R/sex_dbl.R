#' Creates a Column for Sex in a numerical format
#'
#' This function creates a new column that converts factors into numbers
#'
#'
#' @param df_name A data frame
#' @param col_name A column of sexes that are factors
#' @return A column of sexes that are numerics
#' @import dplyr
#' @import magrittr
#' @export
#' @examples
#' age_dbl(snapper, Sex)
sex_dbl = function (df_name, col_name){
  df_name %>%
    dplyr::mutate(
      Sex_dbl = as.double({{col_name}}))
}
