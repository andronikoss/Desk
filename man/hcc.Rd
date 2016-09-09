\name{hcc}

\alias{hcc}

\title{Heteroskedasticity corrected covariance matrix.}

\description{Calculates Whites (1980) heteroskedasticity corrected covariance matrix in a linear model.}

\usage{
hcc(mod, data = list(), digits = 4) 
}

\arguments{
 \item{mod}{Estimated linear model object or formula.}
 \item{digits}{Number of decimal digits in rounded values.}
 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}
}

\value{The heteroskedasticity corrected covariance matrix.}

\references{
  White, H. (1980), A Heteroskedasticity-Consistent Covariance Matrix Estimator
  and a Direct Test for Heteroskedasticity. \emph{Econometrica}, \bold{48}, 817-838.
}

\seealso{
\code{\link{wh.test}}, \code{\link[lmtest]{bptest}}
}

\examples{
rent.est <- ols(rent ~ dist, data = data.rent)
hcc(rent.est)

hcc(wage ~ educ + age, data = data.wage)
}

\keyword{Heteroskedasticity, correction}
