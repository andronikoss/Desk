\name{makedata.corr}

\alias{makedata.corr}

\title{Generate exogenous normal data with specified correlations.}	% Titelzeile der Hilfe

\description{This command generates a dataframe of exogenous normal regression data with given correlation between the variables. This can, for example, be used for analyzing the effects of autocorrelation.}

\usage{makedata.corr(n = 10, k = 2, CORR, sample = FALSE)}

\arguments{
  \item{n}{Number of observations to be generated.}

  \item{k}{Number of exogenous variables to be generated.}
  
  \item{CORR}{(k x k) Correlation matrix that specifies the desired correlation structure of the data to be generated. If not specified a random positive definite covariance matrix will be used.}
  
  \item{sample}{Logical value indicating whether the correlation structure is applied to the population (false) or the sample (true)}
}

\value{The generated dataframe of exogenous variables.}

\examples{
  # Generate desired correlation structure
  corr.mat = cbind(c(1, 0.7),c(0.7, 1))

  # Generate 10 observations of 2 exogenous variables
  X = makedata.corr(n = 10, k = 2, CORR = corr.mat)

  cor(X) # not exact values of corr.mat
  
  # Same structure applied to a sample
  X = makedata.corr(n = 10, k = 2, CORR = corr.mat, sample = TRUE)
  cor(X) # exact values of corr.mat
  }

\author{S. Hoffmann}

\keyword{variation, covariation, variance, covariance}