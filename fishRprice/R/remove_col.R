#' Remove Specific Columns
#'
#' This function removes specified columns.
#'
#'
#' @param df_name A data frame
#' @param col_name A column name
#' @return A data frame without the specified columns
#' @import magrittr
#' @import dplyr
#' @export
#' @examples
#' remove_col(snapper, c("MeasureValue")
#' remove_col(scad, c("MeasureValue", "MeasurementUnit")
remove_col = function (df_name, col_name){
  df_name %>%
    dplyr::select(-{{col_name}})
}
