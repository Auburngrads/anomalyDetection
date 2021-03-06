% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/factor_analysis.R
\name{factor_analysis_results}
\alias{factor_analysis_results}
\title{Easy Access to Factor Analysis Results}
\usage{
factor_analysis_results(data, results = 1)
}
\arguments{
\item{data}{list output from \code{factor_analysis}}

\item{results}{factor analysis results to extract. Can use either results
name or number (i.e. fa_scores or 2)::
  \enumerate{
    \item \code{fa_loadings} (default)
    \item \code{fa_scores}
    \item \code{fa_loadings_rotated}
    \item \code{fa_scores_rotated}
    \item \code{num_factors}
  }}
}
\value{
Returns the one of the selected results:
    \enumerate{
      \item \code{fa_loadings}: numerical matrix with the original factor loadings
      \item \code{fa_scores}: numerical matrix with the row scores for each factor
      \item \code{fa_loadings_rotated}: numerical matrix with the varimax rotated factor loadings
      \item \code{fa_scores_rotated}: numerical matrix with the row scores for each varimax rotated factor
      \item \code{num_factors}: numeric vector identifying the number of factors
    }
}
\description{
\code{factor_analysis_result} Provides easy access to factor analysis results
}
\examples{

# An efficient means for getting factor analysis results
x <- matrix(rnorm(200*3), ncol = 10)
N <- nrow(x)
p <- ncol(x)

x \%>\%
  horns_curve() \%>\%
  factor_analysis(x, hc_points = .) \%>\%
  factor_analysis_results(fa_scores_rotated)

}
\seealso{
\code{\link{factor_analysis}} for computing the factor analysis results
}
