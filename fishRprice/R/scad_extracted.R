#' The scad extracted animals file
#'
#' A dataset containing scad information with repeated observations extracted
#' and grouped together
#'
#' @format A tibble with 5255 rows and 9 columns
#' \describe{
#'  \item{CaseAcc}{Factor values. Sample ID}
#'  \item{Animal}{Factor values. Representing fish ID and common name}
#'  \item{DateCollected}{Factor values. Representing date collected}
#'  \item{Age}{Factor values. Representing age class}
#'  \item{Sex}{Factor values. Representing sex class}
#'  \item{Waypoint}{Factor values. Representing location collected}
#'  \item{Fork_length_cm}{Numeric values. Representing fork length measurement}
#'  \item{Total_length_cm}{Numeric values. Representing toal length measurement}
#'  \item{Weight_carcass_g}{Numeric values. Representing carcass weight measurement}
#'  \item{Weight_liver_g}{Numeric values. Representing liver weight measurement}
#' }
#' @source Data collected over around Oahu
"scad_extracted"
