\name{bc.model}

\alias{bc.model}

\title{One dimensional Box-Cox model}

\description{
Finds lambda-values for which the one dimensional Box-Cox-Model has lowest SSR.
}

\usage{
bc.model(mod, data = list(), range = seq(-2,2,0.1), details = FALSE)
}

\arguments{
  \item{mod}{Estimated linear model object or formula.}
  \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}
  \item{range}{Range and stepsize of lambda values. Default is a range from -2 to 2 at a stepsize of 0.1.}
  \item{details}{Logical value indicating whether specific details about the test should be returned.}
}

\value{List object including:

\tabular{ll}{
\code{results} \tab Regression results with minimal SSR.\cr
\code{lambda} \tab Optimal Lambda values.\cr
\code{nregs} \tab No. of regressions performed.\cr
\code{idx.opt} \tab Index of optimal regression.\cr
\code{val.opt} \tab Minimal SSR value.\cr
}
}

\examples{
  y <- c(4,1,3)
  x <- c(1,2,4)
  my.mod <- ols(y~x)
  bc.model(my.mod)
  }
\keyword{Box-Cox-Model, deformed logarithm}