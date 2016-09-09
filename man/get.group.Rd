\name{get.group}   % Der Name der Funktion

\alias{get.group} 	% Kurzbeschreibung der Funktion

\title{Get a random draw from specified group of numbers.}	% Titelzeile der Hilfe

\description{
Get a random draw from specified group of numbers. This can be used for assigning groups of students to some exercises.
}

\usage{
get.group(grps = seq(1,5))
}

\arguments{
  \item{grps}{Vector of group numbers}
}

\value{None}

\examples{
  get.group() # Draw group from group numbers 1 to 5
  get.group(c(1,6,3)) # Draw group from specified group numbers
  }

\keyword{sample}