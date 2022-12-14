% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_met_time.R
\name{plot_met_time}
\alias{plot_met_time}
\title{Custom colors}
\usage{
plot_met_time(tbl, var_met, var_time, var_color = NULL, time_cutoff = NULL)
}
\arguments{
\item{tbl}{The data.frame or tibble used to plot}

\item{var_met}{Metabolomics feature}

\item{var_time}{Time variable}

\item{var_color}{Color variable in the plot}

\item{time_cutoff}{Time threshold (a vertical line) in plot}
}
\description{
Custom colors
}
\examples{
plot_met_time(data.frame(a = rnorm(10), b = 1:10), a, b)

}
