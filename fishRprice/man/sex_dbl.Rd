% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sex_dbl.R
\name{sex_dbl}
\alias{sex_dbl}
\title{Creates a Column for Sex in a numerical format}
\usage{
sex_dbl(df_name, col_name)
}
\arguments{
\item{df_name}{A data frame}

\item{col_name}{A column of sexes that are factors}
}
\value{
A column of sexes that are numerics
}
\description{
This function creates a new column that converts factors into numbers
}
\examples{
age_dbl(snapper, Sex)
}
