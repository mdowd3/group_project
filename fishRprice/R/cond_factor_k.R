#' Creates a Column for the Fulton Condition Factor
#'
#' This function creates a new column that gives the Fulton condition
#' factor, K, for each observation
#'
#'
#' @param df_name A data frame
#' @param carcass_weight A column of carcass weights
#' @param total_length A column of total lengths
#' @return A column of Fulton condition factor K
#' @import dplyr
#' @import magrittr
#' @export
#' @examples
#' cond_factor_k(snapper_extracted, Carcass_weight_g, Total_length_cm)
cond_factor_k = function (df_name, carcass_weight, total_length){
  df_name %>%
    dplyr::mutate(
      Fulton_condition_factor_K = (({{carcass_weight}}*100)/({{total_length}}^3)))
}
