\name{Sxy}

\alias{Sxy}

\title{Variation and covariation.}

\description{Calculates the variation of one variable or the covariation of two different variables.}

\usage{Sxy(x, y = x, na.rm = FALSE)}

\arguments{
  \item{x}{Vector of one variable}

  \item{y}{Vector of another variable, optional,
    if specified then the covariation of x and y is calculated
    if ommitted then the variation of x is calculated}

  \item{na.rm}{A logical value indicating whether NA values should be stripped before the computation proceeds.}
}

\value{The variaion of x or the covariation of x and y.}

\examples{
  x = c(1,2)
  y = c(4,1)
  Sxy(x) # variation
  Sxy(x,y) # covariation
  
  # Second example illustrating the na.rm option
  x = c(1,2,NA,4)
  Sxy(x)
  Sxy(x, na.rm = TRUE)
}

\keyword{variation, covariation, variance, covariance}