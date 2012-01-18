\name{ROC.curve}
\alias{ROC.curve}
\alias{ROC.curve.glm}
\alias{ROC.curve.formula}

\title{
draws an ROC curve
}
\description{
Draws an ROC curve and calculates the area under the curve
}
\usage{
ROC.curve(f, ...)
\method{ROC.curve}{glm}(f, ...)
\method{ROC.curve}{formula}(f, family = gaussian, data, weights, subset, na.action,
   start = NULL, etastart, mustart, offset, control = list(...),
   model = TRUE,  method = "glm.fit", x = FALSE, y = TRUE, 
   contrasts = NULL, ...) 
}
\arguments{
 \item{f}{
a glm object or a model formula
}
 \item{family}{
a description of the error distribution and link function to be used in the model. This can be a character string naming a family function, a family function or the result of a call to a family function. (See family for details of family functions.)
}
  \item{data}{
A data frame, list or environment containing the variables in the model.
}
  \item{weights}{
an optional vector of `prior weights' to be used in the fitting process. Should be NULL or a numeric vector.
}
  \item{subset}{
an optional vector specifying a subset of observations to be used in the fitting process.
}
  \item{na.action}{
a function which indicates what should happen when the data contain NAs. The default is set by the na.action setting of options, and is na.fail if that is unset. The `factory-fresh' default is na.omit. Another possible value is NULL, no action. Value na.exclude can be useful.
}
  \item{start}{
starting values for the parameters in the linear predictor.
}
  \item{etastart}{
starting values for the linear predictor.
}
  \item{mustart}{
starting values for the vector of means.
}
  \item{offset}{
this can be used to specify an a priori known component to be included in the linear predictor during fitting. This should be NULL or a numeric vector of length equal to the number of cases. One or more offset terms can be included in the formula instead or as well, and if more than one is specified their sum is used. See model.offset.
}
  \item{control}{
a list of parameters for controlling the fitting process. For glm.fit this is passed to glm.control.
}
  \item{model}{
a logical value indicating whether model frame should be included as a component of the returned value.
}
  \item{method}{
the method to be used in fitting the model. The default method "glm.fit" uses iteratively reweighted least squares (IWLS): the alternative "model.frame" returns the model frame and does no fitting.
}
  \item{x, y}{
For glm: logical values indicating whether the response vector and model matrix used in the fitting process should be returned as components of the returned value. 

For glm.fit: x is a design matrix of dimension n * p, and y is a vector of observations of length n. 

}
  \item{contrasts}{
an optional list. See the contrasts.arg of model.matrix.default.
}
  \item{\dots}{
additional arguments to be passed to the low level regression fitting functions see lm and glm help files
}
}
\details{
If the formula version is used, an error will occur unless family=binomial
}
\value{
Returns no value but prints the area under the ROC curve and draws the curve
}

\author{
Alan Lee, Blair Robertson
}

\examples{
data(drug.df)
ROC.curve(DFREE ~ NDRUGTX + factor(IVHX) + AGE + TREAT, family=binomial,
     data= drug.df)
}

\keyword{ aplot }

