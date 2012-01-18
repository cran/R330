\name{vaso.df}
\alias{vaso.df}
\docType{data}
\title{
vaso-constriction data
}
\description{
Data from a study of reflex vaso-constriction (narrowing of the blood vessels) of the skin of the fingers
}
\usage{data(vaso.df)}
\format{
  A data frame with 39 observations on the following 3 variables.
  \describe{
    \item{\code{Volume}}{volume of air breathed in}
    \item{\code{Rate}}{rate of intake of breath}
    \item{\code{Response}}{1 = vaso-constriction occurs, 0 = doesn't occur}
  }
}
\source{
Finney, D. J. (1947). The estimation from individual records of the relationship between dose and quantal response. Biometrika, 34, 320-334.
}
\references{
Pregibon, D. (1981) Logistic regression diagnostics. Annals of Statistics, 9,705-724.
}
\examples{
data(vaso.df)
plot(vaso.df$Rate,vaso.df$Volume,type="n", cex=1.2)
text(vaso.df$Rate,vaso.df$Volume,1:39,
col=ifelse(vaso.df$Response==1, "red","blue"),cex=1.2)
text(2.3,3.5,"blue: no VS", col="blue",adj=0, cex=1.2)
text(2.3,3.0,"red: VS", col="red", adj=0, cex=1.2)
}
\keyword{datasets}
