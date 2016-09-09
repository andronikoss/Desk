\name{bc.test}

\alias{bc.test}


\title{Box Cox test}

\description{
Box Cox test for functional form. Compares a base model with non transformed endogenous variable to a model with logarithmic endogenous variable. Exogenous variables can be transformed or non-transformed.
}

\usage{
bc.test(basemod, data = list(), exo = "same", sig.level = 0.05, details = TRUE, hyp = TRUE)
}

\arguments{
 \item{basemod}{Estimated linear model object or formula taken as the base model for comparison. Has to have a non-transformed endogenous variable.}

 \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}

 \item{exo}{Vector or matrix of transformed exogenous variables to be used in the comparison model. If not specified the same variables from the base model are used ("same").}

 \item{sig.level}{Significance level. Default value: sig.level = 0.05.}

 \item{details}{Logical value indicating whether specific details about the test should be returned.}
 
 \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}


\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{stats} \tab Additional statistic of aux. regression.\cr
\code{nulldist} \tab Type of the Null distribution with its parameters.\cr
}
}

\references{
Box, G. E. P. and Cox, D. R. (1964), An analysis of transformations. \emph{Journal of the Royal Statisistical Society}, Series B. \bold{26}, 211-46.
}

\seealso{
\code{\link[car]{boxCox}}, \code{\link[MASS]{boxcox}}
}

\examples{
# Box Cox test between a semi-logarithmic model and a logarithmic model
semilogmilk.est <- ols(milk ~ log(feed), data = data.milk)
bc.test(semilogmilk.est, details = TRUE)

# Example with transformed exogenous variables
lin.est <- ols(rent ~ mult + mem + access, data = data.comp)
A = lin.est$data
bc.test(lin.est, exo = log(cbind(A$mult, A$mem, A$access)))
}
\keyword{htest}
