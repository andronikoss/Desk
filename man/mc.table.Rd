\name{mc.table}

\alias{mc.table}

\title{Generate R^2 matrix of all possible regressions among regressors to check multicollinearity.}	% Titelzeile der Hilfe

\description{
For a given set of regressors this command calculates the coefficient of determination of a regression of one specific regressor on all combinations of the remaining regressors. This provides an overview of potential multicollinearity.
}

\usage{
mc.table(x, intercept = TRUE, digits = 3)
}

\arguments{
  \item{x}{Data frame of variables to be regressed on each other.}

  \item{intercept}{Logical value specifying whether regression should have an intercept.}
  
  \item{digits}{Number of digits to be rounded to.}
}

\value{
Matrix of R2 values. The column headers indicate the respective endogenous variables that is projected on a combination of exogenous variables. Example: If we have 4 regressors x1, x2, x3, x4, then the fist column of the returned matrix has 7 rows including the R2 values of the following regressions:

\tabular{ll}{

\code{1)} \tab x1 ~ x2 + x3 + x4\cr
\code{2)} \tab x1 ~ x3 + x4\cr
\code{3)} \tab x1 ~ x2 + x4\cr
\code{4)} \tab x1 ~ x2 + x3\cr
\code{5)} \tab x1 ~ x4\cr
\code{6)} \tab x1 ~ x3\cr
\code{7)} \tab x1 ~ x2\cr
}

The second column corresponds to the regressions:

\tabular{ll}{
\code{1)} \tab x2 ~ x1 + x3 + x4\cr
\code{2)} \tab x2 ~ x3 + x4\cr
\code{3)} \tab x2 ~ x1 + x4\cr
\code{4)} \tab x2 ~ x1 + x3\cr
\code{5)} \tab x2 ~ x4\cr
\code{6)} \tab x2 ~ x3\cr
\code{7)} \tab x2 ~ x1\cr
}

and so on.
}

\examples{
mc.table(data.printer[,-1])
}

\keyword{Coefficient of determination, Multicollinearity}