% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/psrwe_outana.R
\name{psrwe_outana}
\alias{psrwe_outana}
\title{Outcome Analysis for PS-Integrated Estimation

Report outcome analysis for the PS-integrated approach.}
\usage{
psrwe_outana(
  dta_psrst,
  method_ci = c("wald", "wilson"),
  conf_type = c("log_log", "plain"),
  conf_int = 0.95,
  alternative = c("less", "greater"),
  mu = 0,
  ...
)
}
\arguments{
\item{dta_psrst}{a returned object with class \code{PSRWE_EST}}

\item{method_ci}{a method name for confidence interval (default Wald)}

\item{conf_type}{a type name of transformation for the confidence interal
of PSKM approach (default log_log)}

\item{conf_int}{a two-sided level of confidence/credible limits
(default 0.95)}

\item{alternative}{a character string for the alternative hypothesis that
must be one of \code{"less"} (default) or \code{"greater"}}

\item{mu}{a number indicating the true value of the parameter of interest
(or the difference in means for two arms)}

\item{...}{other options}
}
\value{
A list with class name \code{PSRWE_EST_OUTANA}.
}
\description{
Outcome Analysis for PS-Integrated Estimation

Report outcome analysis for the PS-integrated approach.
}
\details{
This function is mainly for summarizing and reporting the
    outcome analysis for the PS-integrated estimation.
    The input \code{dta_psrst} can be generated from the functions
    \code{\link{psrwe_powerp}}, \code{\link{psrwe_compl}}, and
    \code{\link{psrwe_survkm}}.
    See the functions \code{\link{psrwe_ci}} and \code{\link{psrwe_infer}}
    for the options of outcome analyses.
}
\examples{
data(ex_dta)
dta_ps <- psrwe_est(ex_dta,
       v_covs = paste("V", 1:7, sep = ""),
       v_grp = "Group",
       cur_grp_level = "current")
ps_borrow <- psrwe_borrow(total_borrow = 30, dta_ps)
ps_rst <- psrwe_compl(ps_borrow, v_outcome = "Y_Con")
rst <- psrwe_outana(ps_rst)
rst

}
