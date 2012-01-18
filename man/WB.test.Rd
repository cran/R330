\name{WB.test}
\alias{WB.test}
\alias{WB.test.lm}
\alias{WB.test.formula}

\title{
Performs a Weisberg-Bingham test for normality
}
\description{
Calulates and prints a chi^2 statistic and a p-value for the Weisberg-Bingham test. The p-value is calculated by simulation.
}
\usage{
WB.test(f, n.rep=1000, ...)
\method{WB.test}{lm}(f, n.rep=1000, ...)
\method{WB.test}{formula}(f, n.rep=1000, data, subset, weights, na.action,
 method = "qr", model = TRUE, x = FALSE, y = FALSE,
 qr = TRUE, singular.ok = TRUE, contrasts = NULL, offset, ...)
}

\arguments{
  \item{f}{
an lm object or model formula
}
\item{n.rep}{
the number of simulations desired to compute the p-value. The default of 1000 should be adequate
}
  \item{data}{
A data frame, list or environment containing the variables in the model.
}
 
  \item{subset}{
an optional vector specifying a subset of observations to be used in the fitting process.
}
  \item{weights}{
an optional vector of `prior weights' to be used in the fitting process. Should be NULL or a numeric vector.
}
  \item{na.action}{
a function which indicates what should happen when the data contain NAs. The default is set by the na.action setting of options, and is na.fail if that is unset. The `factory-fresh' default is na.omit. Another possible value is NULL, no action. Value na.exclude can be useful.
}
  \item{method}{
the method to be used in fitting the model. The default method "glm.fit" uses iteratively reweighted least squares (IWLS): the alternative "model.frame" returns the model frame and does no fitting. 
}

  \item{x, y, qr, model}{
For glm: logical values indicating whether the response vector and model matrix used in the fitting process should be returned as components of the returned value. 

For glm.fit: x is a design matrix of dimension n * p, and y is a vector of observations of length n. 

}
  \item{singular.ok}{
logical. If FALSE (the default in S but not in R) a singular fit is an error.
}
  \item{contrasts}{
an optional list. See the contrasts.arg of model.matrix.default.
}
  \item{offset}{
this can be used to specify an a priori known component to be included in the linear predictor during fitting. This should be NULL or a numeric vector of length equal to the number of cases. One or more offset terms can be included in the formula instead or as well, and if more than one is specified their sum is used. See model.offset.
}
  \item{\dots}{
additional arguments to be passed to the low level regression fitting functions see lm and glm help files
}
}
\value{
Returns no value but prints the  value of the Weisberg-Bingham test statistic and the p-value of the test
}
\references{
S Weisberg and C Bingham (1975). An approximate analysis of variance test for non-normality
suitable for machine calculation, Technometrics 17, 133-134.
}
\author{
Alan Lee, Blair Robertson
}
\note{
This function redirects to other functions based on the type of object. eg WB.test.lm , WB.test.formula
}
\examples{
data(cherry.df)
cherry.lm =lm(volume~diameter+height,data=cherry.df) 
WB.test(cherry.lm)
}

\keyword{ univar }

