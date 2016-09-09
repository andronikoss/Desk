\name{cochorc}

\alias{cochorc}

\title{Estimating linear models under AR(1) autocorrelation with Cochrane Orcutt iteration.}

\description{
If autocorrelated errors can be modeled by an AR(1) process (rho as parameter) then this function performs a Cochrane Orcutt iteration. If model coefficients and the estimated rho value converge with the number of iterations, this procedure provides valid solutions.
}

\usage{cochorc(mod, data = list(), iter = 10, tol = 0.0001, pwt = TRUE, details = FALSE)}

\arguments{
  \item{mod}{Estimated linear model object or formula.}

  \item{data}{Dataframe to be specified if \code{mod} is a formula.}
  
  \item{iter}{Maximum number of iterations to be performed.}
  
  \item{tol}{Iterations are carried out until diffenrence in rho values is not larger than \code{tol}.}
  
  \item{pwt}{Build first observation using Prais-Whinston transformation. If pwt = FALSE then the
   first observation is dropped, Default value: pwt = TRUE.}
  
  \item{details}{Logical value, indicating whether details should be printed.}
}

\value{List object including:

\tabular{ll}{
\code{results} \tab Dataframe of iterated regression results.\cr
\code{niter} \tab Number of iterated regressions performed.\cr
\code{rho.opt} \tab Rho-value at last iteration performed.\cr
\code{y.trans} \tab Transformed y-values at last iteration performed.\cr
\code{X.trans} \tab Transformed x-values (incl. z) at last iteration performed.\cr
\code{resid} \tab Residuals of transformed model estimation.\cr
\code{all.regs} \tab Dataframe of regression results for all considered rho values.\cr
}
}

\references{
Cochrane, E. and G.H. Orcutt (1949), Application of Least Squares Regressions
to Relationships Containing Autocorrelated Error Terms. \emph{Journal of the
American Statistical Association}, \bold{44}, 32-61.
}

\examples{
sales.est <- ols(sales ~ price, data = data.filter)

# In this example only 2 iterations are needed to archieve
# convergence of rho at the 5th digit
cochorc(sales.est)

# For a higher precision we need 6 iterations
cochorc(sales.est, tol = 0.0000000000001)

# If we allow not more than 4 iterations, a warning message is generated
cochorc(sales.est, iter = 4, tol = 0.0000000000001)

# Direct usage of a model formula
X <- cochorc(sick ~ jobless, data = data.sick[1:14,], details = TRUE)

# See iterated regression results
X$all.regs

# Print full details
X

# Suppress details
print(X, details = FALSE)

# Plot rho over iterations to see convergence
plot(X)

# Replicate Table 11.3 and 11.7 from Murray (2006)
data.murray = read.table("http://wps.aw.com/wps/media/objects/2387/2445250/Data_Sets/ASCII/poverty1.csv", header = TRUE, sep = ",")
poverty.est <- ols(POVERTY ~ UNEMPLOY, data = data.murray)
cochorc(poverty.est, iter = 30, tol = 0.000001)

# Example with interaction
dummy = as.numeric(data.sick$year >= 2005)
kstand.str.est <- ols(sick ~ dummy + jobless + dummy*jobless, data = data.sick)
cochorc(kstand.str.est)
}
  
\keyword{Feasible Least Squares, Cochrane Orcutt, Autocorrelation, AR(1) process, iteration}