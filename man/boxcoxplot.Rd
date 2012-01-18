\name{boxcoxplot}
\alias{boxcoxplot}
\alias{boxcoxplot.lm}
\alias{boxcoxplot.formula}

\title{
Draws a Box-Cox plot
}
\description{
Draws a plot of the Box-Cox profile likelihood.
}
\usage{
 boxcoxplot(f, p = seq(-2, 2, length = 20), ...)
 \method{boxcoxplot}{lm}(f, p = seq(-2, 2, length = 20), ...)
 \method{boxcoxplot}{formula}(f, p = seq(-2, 2, length = 20), data, subset, 
    weights, na.action, method = "qr", model = TRUE, x = FALSE, 
    y = FALSE, qr = TRUE, singular.ok = TRUE, contrasts = NULL, 
    offset, ...) 

          }

\arguments{
\item{f}{
an lm object or a model formula
}
  \item{p}{
a vector of powers, representing plotting positions along the horizontal axis
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
\item{...}{
graphical arguments passed to plot function
}
}
\details{
The function draws a graph of the negative of the profile likelihood as a function of the transformation power p. The regression coeficients and the standard deiatoin of the eroors have been profiled out. The indicated power is the value of p  for which the function attains ist minimum. It may on rare occasions be necessary to adjust the range of p (default is (2,2)).
}
\value{
Returns no value but draws a plot of the Box-Cox profile likelihood.
}
\references{
Box, GEP and Cox, DR. (1964). An analysis of transformations. Journal of the Royal Statistical Society, Series B 26 (2): pp 211-252
}
\author{
Alan Lee, Blair Robertson
}
\note{
This function redirects to other functions based on the type of object. eg boxcoxplot.formula, boxcoxplot.lm
}

\examples{
data(educ.df)
boxcoxplot(educ~urban + percap + under18, data=educ.df[-50,])

data(wine.df)
boxcoxplot(price~year+temp+h.rain+w.rain,data=wine.df)
}

\keyword{ aplot }

