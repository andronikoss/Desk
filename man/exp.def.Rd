\name{exp.def}

\alias{exp.def}

\title{Lambda deformed exponential}

\description{
Calculates the lambda deformed exponential.
}

\usage{exp.def(x, lambda = 0, normalize = FALSE)}

\arguments{
  \item{x}{A numeric value.}
  \item{lambda}{Deformation parameter. Default value: lambda = 0 (regular exponential).}
  \item{normalize}{Logical value to indicate normalization.}
}
\value{The function value of the lambda deformed exponential at x.}
\examples{
  exp.def(3)   # Natural exponential of 3
  exp.def(3,2) # Deformed by lambda = 2
  }

\keyword{deformation, exponential}