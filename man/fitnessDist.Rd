% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sourceSHAPE.R
\name{fitnessDist}
\alias{fitnessDist}
\title{This is the function that will call for draws from distributions.}
\usage{
fitnessDist(tmpDraws, tmpDistribution, tmpParameters)
}
\arguments{
\item{tmpDraws}{This is the number of draws sought from the distribution being called}

\item{tmpDistribution}{This is the character string that represents the implemented distribution you want called.
It must be one of: \strong{Fixed, Gamma, Uniform, Normal, Chi2, beta, exp, evd, rweibull, frechet, skewNorm}}

\item{tmpParameters}{This is the ordered vector of parameters to be passed in order to parameterise the distribution from which
you want to draw}
}
\value{
A vector of values with length equal to tmpDraws
}
\description{
This is the function that will call for draws from distributions.
}
\examples{
# This draws from distributions
fitnessDist(10, "Uniform", c(0,1))
fitnessDist(10, "Normal", c(0,1))
fitnessDist(10, "exp", 1)

}
