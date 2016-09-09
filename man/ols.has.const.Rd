\name{ols.has.const}

\alias{ols.has.const}

\title{Check if model has a constant.}

\description{Checks if a linear model included a constant level parameter (alpha).}

\usage{
ols.has.const(mod)
}

\arguments{
  \item{mod}{Linear model object of class "desk" or "lm"}
}
\value{Logical value TRUE (has contant), FALSE (has no constant)}
\examples{
  y = c(4,1,2,1)
  x1 = c(4,1,3,2)
  x2 = c(3,4,4,2)
  my.modA = ols(y ~ x1 + x2)
  my.modB = ols(y ~ 0 + x1 + x2)
  ols.has.const(my.modA)
  ols.has.const(my.modB)
  }

\keyword{Level parameter, Constant, Intercept, linear model}