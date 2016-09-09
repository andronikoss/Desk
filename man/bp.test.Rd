\name{bp.test}

\alias{bp.test}

\title{Breusch Pagan test}

\description{Breusch Pagan test for heteroskedastic errors.}

\usage{
bp.test(mod, data = list(), varmod = NULL, koenker = TRUE, sig.level = 0.05, details = FALSE, hyp = TRUE) 
}
\arguments{
 \item{mod}{Estimated linear model object or formula.}
 
 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}
 
 \item{varmod}{Formula object (starting with tilde ~) specifying the terms of regressors that explain sigma squared for each observation. If not specified the regular model \code{mod} is used.}
 
 \item{koenker}{Logical value specifying whether Koenker's studentized version or the original Breusch Pagan test should be performed.}
 
 \item{sig.level}{Significance level. Default value: sig.level = 0.05.}
 
 \item{details}{Logical value indicating whether specific details about the test should be returned.}
 
 \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\value{List object including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{hreg} \tab Matrix of aux. regression results.\cr
\code{stats} \tab Additional statistic of aux. regression.\cr
\code{nulldist} \tab Type of the Null distribution with its parameters.\cr
}
}

\references{
T.S. Breusch & A.R. Pagan (1979),
A Simple Test for Heteroscedasticity and Random Coefficient Variation.
\emph{Econometrica} \bold{47}, 1287--1294

R. Koenker (1981), A Note on Studentizing a Test for Heteroscedasticity.
\emph{Journal of Econometrics} \bold{17}, 107--112.
}

\seealso{
\code{\link{wh.test}}, \code{\link[lmtest]{bptest}}
}

\examples{
# BP test with Koenker's studentized residuals
X <- bp.test(wage ~ educ + age, data = data.wage, koenker = FALSE)
X

# A white test for the same model (auxiliary regression specified by \code{varmod})
bp.test(wage ~ educ + age, varmod = ~ (educ + age)^2 + I(educ^2) + I(age^2), data = data.wage)

# Similar test
wh.test(wage ~ educ + age, data = data.wage)

# Plot the test result
plot(X)

}
\keyword{heteroskedasticity, Breuch Pagan test, non-constant error variance}
