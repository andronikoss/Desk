\name{jb.test}

\alias{jb.test}

\title{Jarque-Bera test}

\description{Jarque-Bera test for normality.}

\usage{
jb.test(x, data = list(), sig.level = 0.05, details = FALSE, hyp = TRUE)
}

\arguments{
 \item{x}{A numeric vector, an estimated linear model object or model formula (with \code{data} specified). In the two latter cases the model's residuals are tested for normality.}
 
 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}
 
 \item{sig.level}{Significance level. Default value: sig.level = 0.05.}
 
 \item{details}{Logical value indicating whether specific details about the test should be returned.}

 \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\details{
Under \eqn{H_0} the test statistic of the Jarque-Bera test follows a
chi-squared distribution with 2 degrees of freedom. If moment of order 3 (skewness) differs
significantly from 0 and/or moment of order 4 (kurtosis) differs significantly from 3, H0 is rejected.
}

\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{skew} \tab Moment of order 3 (Asymmetry, Skewness).\cr
\code{kur} \tab Moment of order 4 (Kurtosis).\cr
\code{nobs} \tab Number of observations (internal purpose).\cr
\code{nulldist} \tab Type of the Null distribution and its parameter(s).\cr
}
}

\references{
Jarque, C. M., Bera, A. K. (1980), Efficient test for normality, homoscedasticity and
serial independence of residuals, \emph{Economics Letters}, \bold{6} Issue 3, 255-259.
}

\seealso{
\code{\link[moments]{jarque.test}}
}

\examples{
# Test response variable for normality
X <- jb.test(data.income$loginc)
X

# Estimate linear model
income.est <- ols(loginc ~ logsave + logsum, data = data.income)
# Test residuals for normality, print details
jb.test(income.est, details = TRUE)

# Equivalent test
jb.test(loginc ~ logsave + logsum, data = data.income, details = TRUE)

# Plot the test result
plot(X)

}
\keyword{Normality, normal distribution, test}
