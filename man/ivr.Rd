\name{ivr}
\alias{ivr}

\title{Two-Stage Least Squares (2SLS) instrument variable regression}
\description{
  Performs a two-stage least squares regression.
}
\usage{
ivr(formula, data = list(), endog, iv, contrasts = NULL, details = FALSE, ...)
}

\arguments{
  \item{formula}{Model formula.}
  \item{data}{Name of the dataframe used. To be specified if variables are not stored in environment.}
  \item{endog}{Character vector of endogenous (to be instrumented) regressors.}
  \item{iv}{Character vector of (exogenous) instrumental variables.}
  \item{contrasts}{An optional list. See the contrasts.arg of \link[stats]{model.matrix.default}.}
  \item{details}{Logical value indicating whether details should be printed out by default.}
  \item{...}{Further arguments that lm.fit() understands.}
}

\value{List object including:

 \item{adj.r.squ}{Adjusted coefficient of determination (adj. R squared).}
 \item{coefficients}{IV-estimators of model parameters.}
 \item{data/model}{Matrix of the variables' data used.}
 \item{data.name}{Name of the dataframe used.}
 \item{df}{Degrees of freedom in the model (Number of observations minus rank).}
 \item{exogenous}{Exogenous regressors.}
 \item{f.hausman}{Exogeneity test: F value for simultaneous significance of all instrument parameters. If H0: "Instruments are exogenous" is rejected, usage of IV-regression can be justified against ols.}
 \item{f.instr}{Weak instrument test: F value for significance of instrument parameter in first stage of 2SLS regression. If H0: "Instrument is weak" is rejected, instruments are usually considered sufficiently strong.}
 \item{fitted.values}{Fitted values of the IV-regression.}
 \item{fsd}{First stage diagnostics (Weakness of instruments).}
 \item{has.const}{Logical value indicating whether model has a constant (internal purposes).}
 \item{instrumented}{Name of instrumented regressors.}
 \item{instruments}{Name of instruments.}
 \item{model.matrix}{The model (design) matrix.}
 \item{ncoef}{Integer, giving the rank of the model (Number of coefficients estimated)}
 \item{nobs}{Number of observations.}
 \item{p.hausman}{according p value of exogeneity test.}
 \item{p.instr}{according p value of weak instruments test.}
 \item{p.values}{Vector of p-values of single parameter significance tests.}
 \item{r.squ}{Coefficient of determination (R squared).}
 \item{residuals}{Residuals in the IV-regression.}
 \item{response}{The endogenous (response) variable.}
 \item{shea}{Shea's partial R^2 quantifying the ability to explain the endogenous regressors.}
 \item{sig.squ}{Estimated error variance (sigma squared).}
 \item{ssr}{Sum of squared residuals.}
 \item{std.err}{Vector of standard errors of the parameter estimators.}
 \item{t.values}{Vector of t-values of single parameter significance tests.}
 \item{ucov}{The (unscaled) variance-covariance matrix of the model's estimators.}
 \item{vcov}{The (scaled) variance-covariance matrix of the model's estimators.}
 \item{modform}{The model's regression R-formula.}

 %\code{part.r.squ} \tab Partial R-squared measuring the correlation between instrumented/endogenous regressor and instrument variables(s) after partialling out the effect of the exogenous regressor(s) \cr

}

\references{    
  Greene, W.H. (1993), \emph{Econometric Analysis, Second Edition}, Macmillan.
  
  Murray, M.P. (2006), \emph{Econometrics - A modern introduction}, Pearson.
  
  Kmenta, J. (1971), \emph{Elements of Econometrics}, 2nd ed., The University of Michigan Press.
}

\examples{
# Insurance Example, Chapter 20, Textbook
ivr(contr ~ score, endog = "score", iv = "contrprev", data = data.insurance, details = TRUE)

# Stata example
library(foreign)
data.educwages <- read.dta("http://www.stata-press.com/data/r12/educwages.dta")
ivr(wages ~ union + education, endog = "education", iv = c("meducation", "feducation"), data = data.educwages)

# Replicating Murray (2006) Table 14.1 (page 612)
data.graddy = read.table("http://wps.aw.com/wps/media/objects/2387/2445250/Data_Sets/ASCII/whiting.csv", header = TRUE, sep = ",")
ivr(QTY ~ PRICE, endog = c("PRICE"), iv = "WINDSPD", details = TRUE, data = data.graddy)

# Replicating Murray (2006) Table 14.3 (page 622-623)
endog = c("PRICE")
iv = c("WINDSPD","WINDSPD2", "STORMY", "COLD", "RAINY", "MIXED")
ivr(QTY ~ PRICE + DAY1 + DAY2 + DAY3 + DAY4, endog = endog, iv = iv, details = TRUE, data = data.graddy)
endog = c("QTY")
iv = iv = c("DAY1", "DAY2", "DAY3", "DAY4")
ivr(PRICE ~ QTY + WINDSPD + WINDSPD2 + STORMY + COLD + RAINY + MIXED, endog = endog, iv = iv, details = TRUE, data = data.graddy)

# Demand and supply estimation (Kmenta, 1971)

# Copy variables to environment
consump <- data.kmenta$consump
price <- data.kmenta$price
income <- data.kmenta$income
farmPrice <- data.kmenta$farmPrice
trend <- data.kmenta$trend

# Define model equations:
eqD <- consump ~ price + income
eqS <- consump ~ price + farmPrice + trend

# Estimate demand function with instruments "farmPrice"" and "trend""
D.est <- ivr(eqD, endog = "price", iv = c("farmPrice", "trend"))

# Estimate supply function with instrument "income"
S.est <- ivr(eqS, endog = "price", iv = "income")

# Calculate y-axis intersection and slope with averaged exogenous regressors
aD <- c(1, mean(income)) \%*\% D.est$coef[-2]
bD <- D.est$coef[2]
aS <- c(1, mean(farmPrice), mean(mean(trend))) \%*\% S.est$coef[-2]
bS <- S.est$coef[2]

# Plot data and estimated functions
plot(price, consump, xlim = c(0,120), ylim = c(0,120))
abline(a = aD, b = bD)
abline(a = aS, b = bS)

}
\keyword{Endogeneity, instrument variable}
