\name{reset.test}

\alias{reset.test}

\title{RESET test for nonlinear functional form.}

\description{Ramsey's RESET for nonlinear functional form.}

\usage{
reset.test(mod, data = list(), m = 2, sig.level = 0.05, details = FALSE, hyp = TRUE)
}

\arguments{
 \item{mod}{Estimated linear model object or formula.}

 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}

 \item{m}{The number of non-linear terms of fitted y values that should be included in the extended model. Default is m = 2, i.e. to add y.hat^2 and y.hat^3}

 \item{sig.level}{Significance level. Default value: sig.level = 0.05.}
 
 \item{details}{Logical value indicating whether specific details about the test should be returned.}

 \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{SSR0} \tab SSR of the H0-model.\cr
\code{SSR1} \tab SSR of the extended model.\cr
\code{L} \tab Numbers of parameters tested in H0.\cr
\code{nulldist} \tab Null-distribution of the test.\cr
}
}

\references{
J.B. Ramsey (1969), Tests for Specification Error in Classical Linear Least Squares Regression Analysis. \emph{Journal of the Royal Statistical Society}, Series B \bold{31}, 350-371
}

\seealso{
\code{\link[lmtest]{resettest}}
}

\examples{
# Numerical illustration 14.2. of the textbook
X <- reset.test(milk ~ feed, m = 4, data = data.milk)
X

# Plot the test result
plot(X)
}

\keyword{RESET, specification, functional form}
