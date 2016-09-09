\name{pdw}

\alias{pdw}

\title{Durbin Watson distribution}

\description{Calculates cumulative distribution values of the null distribution in the Durbin Watson test. Uses saddlepoint approximation by Paolella (2007)}

\usage{
pdw(x, mod, data = list())
}

\arguments{
 \item{x}{Quantile value(s) at which the density should be determined.}

 \item{mod}{Estimated linear model object, formula (with \code{data} specified), or model matrix.}

 \item{data}{If \code{mod} is a formula then the name of the corresponding dataframe has to be specified.}
}

\details{
Distribution depends on values of the exogenous variables. That is why it must be calculated from each specific data set, respectively.
}

\value{
Numerical density value(s).
}

\references{
Paolella (2007), Intermediate Probability - A computational approach, Wiley
}

\seealso{
\code{\link{dw.test}}, \code{\link{pdw}}
}

\examples{
filter.est <- ols(sales ~ price, data = data.filter)
pdw(x = c(0.9, 1.7, 2.15), filter.est)
}
\keyword{Durbin Watson, null distribution}
