\name{allpossregs}
\alias{allpossregs}
\alias{allpossregs.lm}
\alias{allpossregs.formula}

\title{
Calculates all possible regressions
}
\description{
Calculates all possible regressions for subset selection
}
\usage{
allpossregs(f, best = 1, Cp.plot = TRUE, text.cex = 0.8, dp = 3,
       cv.rep = 50, nvmax = 20, ...)
\method{allpossregs}{lm}(f, best = 1, Cp.plot = TRUE, text.cex = 0.8, dp = 3,
       cv.rep = 50, nvmax = 20, ...)
\method{allpossregs}{formula}(f, best = 1, Cp.plot = TRUE, text.cex = 0.8, dp = 3,
       cv.rep = 50, nvmax = 20, data, subset, weights, na.action,
       method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
       singular.ok = TRUE, contrasts = NULL, offset, ...)
          }

\arguments{
  \item{f}{
an lm object or model formula
}
 \item{best}{
the number of models for each size (size=number of variables) to be printed
}
  \item{Cp.plot}{
print Cp plot? (TRUE=yes, FALSE=no)
}
  \item{text.cex}{
expansion factor for plot text
}
  \item{dp}{
number of decimal places
}
  \item{cv.rep}{
The number of random samplings when calculating the CV estimate of prediction error
}
  \item{nvmax}{
The maximum number of variables to be included in models.
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
A matrix with columns labeled:
 \item{rssp}{Residual Sum of Squares}
 \item{sigma2}{low values indicate better model}
 \item{adjRsq}{adjusted R squared for the model. Big values indicate good model}
 \item{Cp}{Mallow's Cp measure of how well model predicts. Want small values}
 \item{AIC}{Akaike Information Criterion, estimate of the difference between the fitted model and actualy model. Want small values}
 \item{BIC}{Bayesian Information Criterion, estimate of the posterior probability that fitted model is correct one. Want small values}
 \item{CV}{Cross-validation. Small values indicate good model.}
 \item{Variables}{states which variables were included for the regression (val=1 means included)}

Rows represent the number of variables in the model
}
\author{
Alan Lee, Blair Robertson
}
\note{
This function redirects to other functions based on the type of object. eg all.poss.regs.lm , all.poss.regs.formula
}
\examples{
data(fatty.df)
allpossregs(ffa ~ age + skinfold + weight, data = fatty.df, Cp.plot=TRUE)
}

\keyword{ regression }

