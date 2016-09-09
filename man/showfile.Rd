\name{showfile}

\alias{showfile}

\title{Print ASCII file to console.}

\description{Print an ASCII encoded text file to the console. Usfeful for quickly viewing .txt or .csv datasets.}

\usage{showfile(file, head = "all")}

\arguments{
  \item{file}{Name of the file to be printed to the console.}
  \item{head}{Numeric value. Numbers of lines to be printed out. Default value is set to print everything.}
  }

\value{None.}

\examples{
  MyPath <- file.path(.libPaths()[1], "desk", "Labor.txt")
  showfile(MyPath) # show everything
  showfile(MyPath, head = 4) # show only first 4 lines
  }

\keyword{Arguments, function, default value}