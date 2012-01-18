\name{test.lc}
\alias{test.lc}
\alias{test.lc.lm}
\alias{test.lc.glm}
\alias{test.lc.formula}

\title{
tests hypothesis cc^Tb=c
}
\description{
Given a linear model with coefficient vector b tests the linear hypothesis cc^Tb=c
}
\usage{
test.lc(f, cc, c, ...)
\method{test.lc}{lm}(f, cc, c, ...)
\method{test.lc}{glm}(f, cc,c, ...)
\method{test.lc}{formula}(f, cc, c, family = gaussian, data, weights, subset,
      na.action, start = NULL, etastart, mustart, offset,
      control = list(...), model = TRUE, method = "glm.fit",
      x = FALSE, y = TRUE, contrasts = NULL, ...) 
          }

\arguments{
 \item{f}{
a glm object or a model formula
}
\item{cc}{
a vector containing the coefficients of the linear combination
}
\item{c}{
hypothetical value of the combination
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
\value{
 \item{$est}{gives estimate for cc}
 \item{$std.err}{gives standard error for cc}
 \item{$df}{degrees of freedom}
 \item{$t.stat}{gives the t stat for the hypothesis test}
 \item{$p.val}{gives p-value for the hypothesis test}
}

\author{
Alan Lee, Blair Robertson
}
\note{
Redirects based on the type of object
}

\examples{
data(cherry.df)
cherry.lm = lm(log(volume)~log(diameter)+log(height),data=cherry.df)
cc = c(0,1,1)
c = 3
test.lc(cherry.lm, cc, c)
}

\keyword{ univar }

