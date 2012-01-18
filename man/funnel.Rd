\name{funnel}
\alias{funnel}
\alias{funnel.lm}
\alias{funnel.formula}


\title{
Plots for checking for unequal variances
}
\description{
Plots for checking for unequal variances
}
\usage{
funnel(f,...)
\method{funnel}{lm}(f,...)
\method{funnel}{formula} (f, data, subset, weights, na.action, method = "qr",
 model = TRUE, x = FALSE, y = FALSE, qr = TRUE, singular.ok = TRUE, 
 contrasts = NULL, offset, ...)
          }

\arguments{
  \item{f}{
an lm object or a model formula
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
Prints the slope of the line of best fit for log std.errors vs log means. Returns (invisibly) the estimated variances of the observations, and draws (i) a plot of log standard deviations versus log means, and (ii) a plot of the smoothed squared residuals.
}

\author{
Alan Lee, Blair Robertson
}
\note{
This function redirects to other functions based on the type of object. eg funnel.lm , funnel.formula
}

\examples{
data(educ.df)
educ50.lm = lm(educ~urban + percap + under18, data=educ.df, subset=-50)
funnel(educ50.lm)
#
funnel(educ~urban + percap + under18, data=educ.df, subset=-50)
}

\keyword{ aplot }

