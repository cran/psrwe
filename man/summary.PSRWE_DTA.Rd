% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/psrwe_ps_est.R
\name{summary.PSRWE_DTA}
\alias{summary.PSRWE_DTA}
\title{Summarize PS estimation and stratification results}
\usage{
\method{summary}{PSRWE_DTA}(
  object,
  metric = c("ovl", "ksd", "std", "abd", "ley", "mhb", "omkss"),
  min_n0 = 10,
  ...
)
}
\arguments{
\item{object}{A list of class \code{PSRWE_DAT} that is generated using
the \code{\link{psrwe_est}} function.}

\item{metric}{Metric to use for calculating the distance with options:
\describe{
  \item{\code{ovl}}{Overlapping area} (default)
  \item{\code{ksd}}{Kullback-Leibler distance}
  \item{\code{astd}}{Standardized absolute mean difference}
  \item{\code{std}}{Standardized mean difference}
  \item{\code{abd}}{Absolute difference in means}
  \item{\code{ley}}{Levy distance}
  \item{\code{mhb}}{Mahalanobis distance}
  \item{\code{omkss}}{One minus Kolmogorov-Smirnov statistic}
}}

\item{min_n0}{threshold for number of external subjects, below which the
external data in the current stratum will be ignored by setting the PS
distance to 0. Default value 10.}

\item{...}{Additional parameters.}
}
\value{
A list with columns:
  \itemize{
    \item{Summary}{A data frame with Stratum, number of subjects in RWD,
    current study, number of subjects in control and treatment arms for RCT
    studies, and distance in PS distributions.}

    \item{Overall}{A data frame with overall number of not-trimmed subjects
    in RWD, number of patients in current study, number of subjects in
    control and treatment arms for RCT studies, and distance in PS
    distributions.}

    \item{N}{Vector of total number of total RWD patients, number of trimmed
    RWD patients, and total number of current study patients.}

    \item{ps_fml}{PS model.}
    \item{Distance_metric}{Metric used for calculating the distance.}
}
}
\description{
Get number of subjects and the distances of PS distributions for
  each PS stratum.
}
\examples{
data(ex_dta)
dta_ps <- psrwe_est(ex_dta,
                     v_covs = paste("V", 1:7, sep = ""),
                     v_grp = "Group",
                     cur_grp_level = "current")
dta_ps

## With different similarity metric
print(dta_ps, metric = "omkss")
dta_ps_sum <- summary(dta_ps, metric = "omkss")

}
