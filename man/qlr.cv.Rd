\name{qlr.cv}

\alias{qlr.cv}

\title{Critical values of the Quandt Liekelihood Ratio test (QLR-test)}

\description{Returns critical values of the Quandt Liekelihood Ratio test according to Andrews (2008), Econometrica}

\usage{
  qlr.cv(tAll, t0 = round(0.15*tAll), t1 = round(0.85*tAll), L = 2, sig.level = list(0.05, 0.01, 0.1))
  }

\arguments{
  \item{tAll}{Total number of periods}
  \item{t0}{Startperiod for Chow-F-Statistics}
  \item{t1}{Endperiod for Chow-F-Statistics}
  \item{L}{Number of break parameters (linear combinations) to be tested.}
  \item{sig.level}{Significance level. Valid values are: 0.01, 0.05 or 0.1}
}

\value{List including:

\tabular{ll}{
\code{lambda} \tab Lambda value correcting the critical value according to \code{range}.\cr
\code{range} \tab Selected range of periods in \code{tAll}.\cr
\code{cv.chi2} \tab Interval of critical chi^2 QLR-Values\cr
\code{cv.f} \tab Interval of critical F QLR-Values\cr
}
}

\examples{
qlr.cv(tAll = 60)
}

\keyword{Quandt Likelihood Ratio, QLR, critical value, structural break}
