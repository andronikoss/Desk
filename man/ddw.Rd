\name{ddw}

\alias{ddw}

\title{Durbin Watson distribution}

\description{Calculates density values of the null distribution in the Durbin Watson test. Uses the saddlepoint approximation by Paolella (2007)}

\usage{
ddw(x, mod, data = list())
}

\arguments{
 \item{x}{Quantile value(s) at which the density should be determined.}
 \item{mod}{Estimated linear model object, formula (with \code{data} specified), or model matrix.}
 \item{data}{If \code{mod} is a formula then the name of the corresponding dataframe has to be specified here.}
}

\details{
The Durbin Watson Null-Distribution depends on values of the exogenous variables. That is why it must be calculated from each specific data set, respectively.
}

\value{
Numerical density value(s).
}

\references{

Durbin, J. and G. S. Watson (1950), Testing for Serial Correlation in Least Squares Regression I. \emph{Biometrika}, \bold{37}, 409-428.

Paolella (2007), \emph{Intermediate Probability - A computational approach}, Wiley
}

\seealso{
\code{\link{dw.test}}, \code{\link{pdw}}
}

\examples{
filter.est <- ols(sales ~ price, data = data.filter)
ddw(x = c(0.9, 1.7, 2.15), filter.est)
}
\keyword{Durbin Watson, null distribution}
