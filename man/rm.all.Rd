\name{rm.all}

\alias{rm.all}

\title{Remove all objects}

\description{Removes all objects from global environment, except specified ones.}

\usage{rm.all(keep = NULL)}

\arguments{
  \item{keep}{A vector of strings specifying object names to be kept in environment, optional,
  if omitted then all objects in global environment are removed.}
}

\value{None}

\examples{
  x = c(1,2)
  y = c(4,1)
  z = c(3,1)

  # Delete all but x and z
  rm.all(c("x","z"))
  
  # Delete everything
  rm.all()
  }

\keyword{objects, remove, delete, environment, .GlobalEnv}