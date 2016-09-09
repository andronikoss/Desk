\name{lagk}

\alias{lagk}


\title{1 to k-period lags of given vector.}	% Titelzeile der Hilfe

\description{Builds a matrix of a given vector and its 1 to k-period lags. Missing values due to lag are filled with NA's.}

\usage{lagk(u, lag = 1, delete = TRUE)}

\arguments{
  \item{u}{Vector of one variable, usually residuals}

  \item{lag}{The number of periods up to which lags should be generated}
  
  \item{delete}{Logical value indicating whether missing data should be eliminated from the resulting matrix.}
}

\value{Matrix of u and its 1 to k-period lags.}

\examples{
  u = round(rnorm(10),2)
  lagk(u)
  lagk(u,lag = 3)
  lagk(u,lag = 3, delete = FALSE)
  }

\keyword{lag, heteroscedasticity, lagged residuals}