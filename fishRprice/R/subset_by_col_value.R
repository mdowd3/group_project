#' Extract Observations by Column Value
#'
#' This function takes only the observations in a table that match
#' the specified column value in the specified column.
#'
#' @param df_name A data frame
#' @param col_name A column name
#' @param col_val The item being filtered for, in the form of 'col_value'
#' @return A data frame with only the specified col_value
#' @import magrittr
#' @import dplyr
#' @export
#' @examples
#' subset_by_col_value(snapper, MeasureValue, 'Fork length')
#' subset_by_col_value(scad, MeasureValue, 'Weight liver')
subset_by_col_value = function(df_name, col_name, col_val){
  df_name %>%
    dplyr::filter({{col_name}} == col_val)
}
