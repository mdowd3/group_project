#' Give Specified Statistic of Parameter
#'
#' This function gives specified statistic based on the parameters supplied
#'
#'
#' @param df_name A data frame
#' @param parameter1 A numeric column that you want the statistics of
#' @param parameter2 A factor column that you want the statistics by
#' @param statistic The statistic you want
#' @return The statistic of parameter1 based on parameter2
#' @export
#' @examples
#' get_stats(snapper_extracted, 'Fork_length_cm', 'Sex', mean)
#' gives the mean of column 'Fork_length_cm' per 'Sex' category
#' get_stats(scad_extracted, 'Weight_liver_g', 'Age', sd)
#' gives the standard deviation of column 'Weight_liver_g' per 'Age' category
get_stats = function(df_name, parameter1, parameter2, statistic) {
  a = df_name[,parameter1]
  b = df_name[,parameter2]
  tapply(a, b, statistic)
}
