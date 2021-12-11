#' Creates a Column for Date in a readable format
#'
#' This function creates a column in dttm format that R can more easily read
#'
#'
#' @param df_name A data frame
#' @param col_name A column of dates
#' @param date_format The format the date column is in
#' @return A column of dates in dttm format
#' @import dplyr
#' @import magrittr
#' @export
#' @examples
#' dateR(snapper, DateCollected, "%m/%d/%Y")
#' dateR(scad, DateCollected, "%Y/%d/%m")
dateR = function (df_name, col_name, date_format){
  df_name %>%
    dplyr::mutate(
      DateR = as.POSIXct({{col_name}}, format= date_format))
}
