\name{wh.test}

\alias{wh.test}

\title{White heteroscedasticity test}

\description{White's test for heteroskedastic errors.}

\usage{
wh.test(mod, data = list(), sig.level = 0.05, details = FALSE, hyp = TRUE)
}

\arguments{
 \item{mod}{Estimated linear model object or formula.}

 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}

 \item{sig.level}{Significance level. Default value: sig.level = 0.05.}

 \item{details}{Logical value indicating whether specific details about the test should be returned.}
 
 \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{hreg} \tab Matrix of aux. regression results.\cr
\code{stats} \tab Additional statistic of aux. regression.\cr
\code{nulldist} \tab Type of the Null distribution with its parameters.\cr
}
}

\references{
  White, H. (1980), A Heteroskedasticity-Consistent Covariance Matrix Estimator
  and a Direct Test for Heteroskedasticity. \emph{Econometrica}, \bold{48}, 817-838.
}

\seealso{
\code{\link{wh.test}}, \code{\link[lmtest]{bptest}}
}

\examples{
# White test for a model with two regressors
X <- wh.test(wage ~ educ + age, data = data.wage)

# Show the auxiliary regression results
X$hreg

# Prettier way
print(X, details = TRUE)

# Plot the test result
plot(X)
}

\keyword{White test, heteroscedastic errors}
