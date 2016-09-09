\name{gq.test}

\alias{gq.test}

\title{Goldfeld-Quandt Test}

\description{Goldfeld-Quandt test for heteroskedastic errors.}

\usage{
gq.test(mod, data = list(), split = 0.5, omit.obs = 0, ah = c("increasing", "unequal", "decreasing"),     order.by = NULL, sig.level = 0.05, details = FALSE, hyp = TRUE)
}

\arguments{
  \item{mod}{Estimated linear model object or formula. If only a model formula is passed then the \code{data} argument must be specified.}

  \item{data}{If \code{mod} is a formula then the corresponding dataframe has to be specified.}

  \item{split}{Partitions the dataset into two groups. If <= 1 then \code{split} is a percentage value
  such that \code{T*split} observations are in the first partition. If \code{split} >= 1
     it is interpreted as the index of the partitioning observation, i.e. the number of observations in the first group.}
 
  \item{omit.obs}{The number of central observations to be omitted. Might increase the power of the test.
    If <= 1 then \code{split} is the percentage value of all observations, otherwise it is interpreted as absolute number.}
 
  \item{ah}{Character string specifying the type of the alternative hypothesis: "increasing" (variance increases from group 1 to group 2), "decreasing" (variance decreases from group 1 to group 2), "unequal" (variances are unequal between the groups). The default is to test for increasing variances.}
 
  \item{order.by}{Either a vector \code{z} or a formula with a single explanatory
    variable like \code{~ z}. The observations in the model
    are ordered by the size of \code{z}. If set to \code{NULL} (the
    default) the observations are assumed to be ordered.}
  
  \item{sig.level}{Significance level. Default value: sig.level = 0.05.}
  
  \item{details}{Logical value indicating whether specific details about the test should be returned.}

  \item{hyp}{Logical value indicating whether the Hypotheses should be returned.}
}

\details{
The Goldfeld-Quandt test compares the variances of two submodels
divided by a specified breakpoint and rejects if the variances differ.
Under \eqn{H_0} the test statistic of the Goldfeld-Quandt test follows an F
distribution with the degrees of freedom as given in the two groups.

This implementation of the test is based on \code{gqtest()} from package \code{lmtest}.
}

\value{List including:

\tabular{ll}{
\code{hyp} \tab Character matrix of hypotheses (if hyp = TRUE).\cr
\code{results} \tab A dataframe of basic test results.\cr
\code{hreg1} \tab Matrix of regression results in Group I.\cr
\code{stats1} \tab Additional statistic of regression in Group I.\cr
\code{hreg2} \tab Matrix of regression results in Group II.\cr
\code{stats2} \tab Additional statistic of regression in Group II.\cr
\code{nulldist} \tab Type of the Null distribution with its parameters.\cr
}
}

\references{
S.M. Goldfeld & R.E. Quandt (1965),
Some Tests for Homoskedasticity.
\emph{Journal of the American Statistical Association} \bold{60}, 539--547
}

\seealso{
\code{\link{wh.test}}, \code{\link[lmtest]{gqtest}}
}

\examples{
gq.test(rent ~ dist, split = 5, ah = "increasing", data = data.rent)

eu.mod <- lm(expend ~ pop + gdp + farm + votes + mship, data = data.eu)
gq.test(eu.mod, split = 13, order.by = data.eu$pop, details = TRUE)
}

\keyword{Goldfeld-Quandt Test, Heteroskedasticity}