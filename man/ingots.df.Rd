\name{ingots.df}
\alias{ingots.df}
\docType{data}
\title{
Unreadiness for rolling of metal ingots
}
\description{
An experiment testing metal ingots prepared with different soaking times and heats. The number which were not ready were counted
}
\usage{data(ingots.df)}
\format{
  A data frame which shows a condensed table.
  \describe{
    \item{\code{heat}}{heating times for ingots either 7, 24, 27 or 51}
    \item{\code{soak}}{soaking times for ingots either 1.0, 1.7, 2.2, 2.8 or 4.0}
    \item{\code{notready}}{the number of ingots not ready for rolling}
    \item{\code{total}}{the total number of ingots which were tested under that set of conditions}
  }
}
\source{
D.R.Cox. (1970) The Analysis of Binary Data, p. 11
}
\references{
D.R.Cox. (1970) The Analysis of Binary Data, Chapman and Hall, London
}
\examples{
data(ingots.df)
ingots.glm<-glm(cbind(notready, total-notready)~heat + 
   soak, weight=total, family = binomial, data = ingots.df)
summary(ingots.glm)
}
\keyword{datasets}
