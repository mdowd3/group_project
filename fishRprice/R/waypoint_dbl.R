#' Creates a Column for Waypoints in a numerical format
#'
#' This function creates a new column that converts factors into numbers
#'
#'
#' @param df_name A data frame
#' @param col_name A column of waypoints that are factors
#' @return A column of waypoints that are numerics
#' @import dplyr
#' @import magrittr
#' @export
#' @examples
#' waypoint_dbl(snapper, waypoint)
waypoint_dbl = function (df_name, col_name){
  df_name %>%
    dplyr::mutate(
      Waypoint_dbl = as.double({{col_name}}))
}
