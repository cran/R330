\name{plum.df}
\alias{plum.df}
\docType{data}
\title{
Plum tree data
}
\description{
A study was conducted on the reproduction of plum trees by taking cuttings
from older trees. Half the cuttings were planted immediately while the other half were
bedded in sand until spring when they were planted. Two lengths of cuttings were used: long
(12 cm) and short (6cm). A total of 240 cuttings were taken for each of the 4 combinations of
planting time and cutting length and the number of cuttings that survived in each situation
was recorded.
}
\usage{data(plum.df)}
\format{
  A data frame with 4 observations on the following 4 variables:
  \describe{
    \item{\code{length}}{cutting length (long,short)}
    \item{\code{time}}{planting time (spring, autumn)}
    \item{\code{s}}{number that survived}
    \item{\code{n}}{total number planted}
  }
}
\examples{
data(plum.df)
plum.glm<-glm(cbind(s,n-s)~length*time, family=binomial, data=plum.df)
summary(plum.glm)

}
\keyword{datasets}
