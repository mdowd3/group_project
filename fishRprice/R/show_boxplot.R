#' Shows a boxplot
#'
#' Shows a boxplot for a given column range
#'
#'
#' @param df_name A data frame
#' @param col_range A column range. If left blank it will show all columns,
#' writing a single number will show a single column, writing #a:#b will show
#' boxplots from column#a to column#b
#' @return Boxplots of the specificed columns
#' @import graphics
#' @export
#' @examples
#' show_boxplot(snapper,)
#' show_boxplot(scad, 7)
#' show_boxplot(scad, 7:9)
show_boxplot = function (df_name, col_range) {
  graphics::boxplot(df_name[,col_range])
}
