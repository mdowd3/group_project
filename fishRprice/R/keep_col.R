#' Keep Specific Columns
#'
#' This function keeps specified columns.
#'
#'
#' @param df_name A data frame
#' @param col_name A column name
#' @return A data frame with only the specified columns
#' @import magrittr
#' @import dplyr
#' @export
#' @examples
#' keep_col(snapper, c("MeasureValue")
#' keep_col(scad, c("MeasureValue", "MeasurementUnit")
keep_col = function (df_name, col_name){
  df_name %>%
    dplyr::select({{col_name}})
}
