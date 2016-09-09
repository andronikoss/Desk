\name{dw.test}

\alias{dw.test}

\title{Durbin-Watson Test on AR(1) autocorrelation.}

\description{Durbin-Watson Test on AR(1) autocorrelation of errors in a linear model.}

\usage{
dw.test(mod, data = list(), dir = c("left", "right", "both"), method = c("pan1", "pan2", "paol", "spa"), crit.val = TRUE, sig.level = 0.05, details = FALSE, hyp = TRUE)
}

\arguments{
 \item{mod}{Estimated linear model object or formula describing the model.}
 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}
 \item{dir}{Direction of the alternative hypothesis: "right" for rho > 0, "left" for rho < 0 and "both" for rho <> 0}
 \item{method}{Algorithm used to calculate the p-value. "pan1" and "pan2" are two implementations of Imhof's (1961) algorithm. If they provide a p-values, it is the exact one. "paol" is Paoella's (2007) re-implementation of Imhof's theory, "spa" is a saddlepoint approximation, also implemented by Paoella (2007).}
 \item{crit.val}{Logical value indicating whether the critical value sould be calculated.}
 \item{sig.level}{Significance level. Default value: sig.level = 0.05.}
 \item{details}{Logical value indicating whether specific details about the test should be returned.}
 \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results. Note: the calculation of a critical value is not implemented, yet.\cr
\code{nulldist} \tab Type of the null distribution (for internal use).\cr
}
}

\references{

Durbin, J. and G. S. Watson (1950), Testing for Serial Correlation in Least Squares Regression I. \emph{Biometrika}, \bold{37}, 409-428.

Paolella (2007), \emph{Intermediate Probability - A computational approach}, Wiley
}

\seealso{
\code{\link{ddw}}, \code{\link{pdw}}
}

\examples{
# Estimate a simple model
filter.est <- ols(sales ~ price, data = data.filter)

# Perform Durbin Watson test for positive autocorrelation rho > 0 (i.e. d < 2)
# and save under object name "test.results"
test.results <- dw.test(filter.est)

# Print the test results
test.results

# Calculate DW null-distribution and plot the test results
plot(test.results)
}
\keyword{Durbin Watson test, AR(1) autocorrelation}
