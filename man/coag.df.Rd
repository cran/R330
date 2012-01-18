\name{coag.df}
\alias{coag.df}
\docType{data}
\title{
Blood Coagulation Data
}
\description{
Experiment designed to see the effect of four different diets on a subject's blood coagulation time
}
\usage{data(coag.df)}
\format{
  A data frame with 24 observations on each of the two variables
  \describe{
    \item{\code{coag}}{Blood coagulation time}
    \item{\code{diet}}{Which diet they were on either A, B, C or D}
  }
}
\source{
 Box, G.E.P., Hunter, J.S. Hunter, W.G. Statistics for experimenters, pp 165-197. 
}
\references{
 Box, G.E.P., Hunter, J.S. Hunter, W.G. (1978). Statistics for experimenters, Wiley, New York. 
}
\examples{
data(coag.df)
coag.lm <- lm(coag ~ diet,data = coag.df)
anova(coag.lm)
}
\keyword{datasets}
