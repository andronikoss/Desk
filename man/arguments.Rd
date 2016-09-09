\name{arguments}

\alias{arguments}

\title{Arguments of a function.}

\description{Show the arguments and their default values of a function.}

\usage{
arguments(fun, width = options("width")$width)
}

\arguments{
  \item{fun}{Name of the function.}
  \item{width}{Optional width for line breaking.}
  }

\value{None.}

\seealso{
\code{\link{args}}
}

\examples{
  arguments(rep.sample)
  }

\keyword{Arguments, function, default value}