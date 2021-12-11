#' Creates a Column for the Hepatosomatic Index
#'
#' This function creates a new column that gives the HSI for each observation
#'
#'
#' @param df_name A data frame
#' @param liver_weight A column of liver weights
#' @param carcass_weight A column of carcass weights
#' @return A column of HSI
#' @import dplyr
#' @import magrittr
#' @export
#' @examples
#' HSI(scad_full, Weight_liver_g, Carcass_weight_g)
HSI = function (df_name, liver_weight, carcass_weight){
  df_name %>%
    dplyr::mutate(
      HSI = (({{liver_weight}}/{{carcass_weight}})*100))
}
