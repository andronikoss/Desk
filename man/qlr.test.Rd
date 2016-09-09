\name{qlr.test}

\alias{qlr.test}

\title{Quandt Likelihood Ratio Test for structural breaks in any parameter with unknown breakdate.}

\description{Performs Quandt Likelihood Ratio Test for structural breaks with unknown breakdate.}

\usage{qlr.test(mod, data = list(), from, to, sig.level = 0.05, details = FALSE)}

\arguments{
  \item{mod}{The regular model object (without dummies) estimated by \code{ols()} or \code{lm()}}

  \item{data}{Name of the dataframe to be used if \code{mod} is only a formula.}

  \item{from}{Start period of range to be analyzed for a break.}

  \item{to}{End period of range to be analyzed for a break.}

  \item{sig.level}{Significance level. Allowed values are 0.01, 0.05 and 0.10.}

  \item{details}{Logical value indicating whether specific details about the test should be returned.}
}

\value{A list including:

\tabular{ll}{
\code{hyp} \tab The null-hypothesis to be tested.\cr
\code{results} \tab Dataframe of test results.\cr
\code{chi2.stats} \tab Chi^2 test statistics calculated between \code{from} and \code{to}.\cr
\code{f.stats} \tab F test statistics calculated between \code{from} and \code{to}.\cr
\code{f.crit} \tab Lower and upper critical F-value.\cr
\code{p.value} \tab p-value in the test (using approximation method proposed by Hansen (1997)).\cr
\code{breakpoint} \tab Period at which largest F value occurs\cr
\code{periods} \tab The range of periods analyzed.\cr
\code{lf.crit} \tab Lower and upper critical F-value including corresponding lambda values.\cr
\code{lambda} \tab The lambda correction value for the critical value.\cr
}
}

\examples{
  unemp.est <- ols(unempl ~ gdp, data = data.unempl)
  my.qlr <- qlr.test(unemp.est, from = 13, to = 17, details = TRUE)
  my.qlr # Print test results
  plot(my.qlr) # Plot test results
  }
\keyword{structural break, unknown breakdate, Quandt Likelihod Ratio test}