\name{log.def}

\alias{log.def}

\title{Lambda deformed logarithm}

\description{Calculates the lambda deformed logarithm.}

\usage{log.def(x, lambda = 0, normalize = FALSE)}

\arguments{
  \item{x}{A numeric value.}
  \item{lambda}{Deformation parameter. Default value: lambda = 0 (natural log).}
  \item{normalize}{Normalization (internal purpose).}
}

\value{The function value of the lambda deformed logarithm at x.}

\examples{
  log.def(3) # Natural log of 3
  log.def(3,2) # Deformed by lambda = 2
  }

\keyword{deformation, logarithm}