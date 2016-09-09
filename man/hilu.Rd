\name{hilu}

\alias{hilu}

\title{Estimating linear models under AR(1) autocorrelation with Hildreth and Lu method.}

\description{If autocorrelated errors can be modeled by an AR(1) process (rho as parameter) then this function finds the rho value that that minimizes SSR in a Prais-Winsten transformed linear model. This is known as Hildreth and Lu estimation.}

\usage{hilu(mod, data = list(), range = seq(-1, 1, 0.01), details = FALSE)}

\arguments{
  \item{mod}{Estimated linear model object or formula.}

  \item{data}{Dataframe to be specified if \code{mod} is a formula.}
  
  \item{range}{Defines the range and stepsize of rho values.}
  
  \item{details}{Logical value, indicating whether details should be printed.}
}
\value{List object including:

\tabular{ll}{
\code{results} \tab Dataframe of basic regression results.\cr
\code{idx.opt} \tab Index of regression that minimizes SSR.\cr
\code{nregs} \tab Number of regressions performed.\cr
\code{rho.opt} \tab Rho-value of regression that minimizes SSR.\cr
\code{y.trans} \tab Optimal transformed y-values.\cr
\code{X.trans} \tab Optimal transformed x-values (incl. z).\cr
\code{all.regs} \tab Dataframe of regression results for all considered rho values.\cr
\code{rho.vals} \tab Vector of used rho values.\cr
}
}
\examples{
sales.est <- ols(sales ~ price, data = data.filter)

# In this example regressions over 199 rho values between -1 and 1 are carried out
# The one with minimal SSR is printed out
hilu(sales.est)

# Direct usage of a model formula
X <- hilu(sick ~ jobless, data = data.sick[1:14,], details = TRUE)

# Print full details
X

# Suppress details
print(X, details = FALSE)

# Plot SSR over rho-values to see minimum
plot(X)
}
\keyword{VKQ, Hildreth-Lu, Autocorrelation, AR(1) process}