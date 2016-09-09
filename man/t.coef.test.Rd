\name{t.coef.test}

\alias{t.coef.test}

\title{t-test on parameters of a lm model.}

\description{Performs a t-test on a single paramter hypothesis or a hypothesis containing
a linear combination of parameters of a linear model.}

\usage{t.coef.test(mod, data = list(), nh, q = 0, dir = c("both", "left", "right"), sig.level = 0.05, details = FALSE, hyp = TRUE)
}

\arguments{
  \item{mod}{Model object estimated by \code{ols()} or \code{lm()}}

  \item{data}{Name of the dataframe to be used if \code{mod} is a formula and the variables are not present in the environment.}
  
  \item{nh}{Vector of the coefficients of the linear combination of parameters.}
  
  \item{q}{Value on which parameter (combination) is to be tested against. Default value: q = 0.}
  
  \item{dir}{Direction of the hypothesis: "both", "left", "right", Default value: "both"}
  
  \item{sig.level}{Significance level. Default value: sig.level = 0.05.}

  \item{details}{Logical value indicating whether specific details about the test should be returned.}
  
  \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{nh} \tab Null hypothesis as parameters of a linear combination (for internal purposes).\cr
\code{lcomb} \tab The linear combination of parameters tested.\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{std.err} \tab Standard error of the linear estimator.\cr
\code{nulldist} \tab Type of the Null distribution with its parameters.\cr
}
}

\examples{
# Test H1: "phos + nit <> 1"
fert.est <- ols(barley ~ phos + nit, data = log(data.fertilizer))
x = t.coef.test(fert.est, nh = c(0,1,1), q = 1, details = TRUE)
x # Show the test results
plot(x) # Visualize the test result

# Test H1: "phos > 0.5"
x = t.coef.test(fert.est, nh = c(0,1,0), q = 0.5, dir = "right")
plot(x)
}
\keyword{t-test, linear hypothesis, linear model}