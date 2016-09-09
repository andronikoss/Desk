\name{rprofile.add}

\alias{rprofile.add}

\title{Add a command to user R startup file Rprofile.site.}	% Titelzeile der Hilfe

\description{Adds a specified R command to file "Rprofile.site" for automatic execution during startup.}

\usage{rprofile.add(line)}

\arguments{
  \item{line}{A text string specifying the command to be added.}
}

\value{None}

\examples{
\dontrun{rprofile.add("library(desk)") # Makes package ecotools to be loaded at startup}
}

\keyword{R, startup, configuration, Rprofile.site}