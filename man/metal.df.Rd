\name{metal.df}
\alias{metal.df}
\docType{data}
\title{
Metal Removal
}
\description{
Data from an experiment to measure the rate of metal removal in a machining process on a lathe
}
\usage{data(metal.df)}
\format{
  A data frame with 15 observations on the following 3 variables:
  \describe{
    \item{\code{hardness}}{hardness of the material being machined}
    \item{\code{setting}}{speed setting of the lathe (fast, medium or slow}
    \item{\code{rate}}{rate of metal removal (response)}
  }
}
\examples{
data(metal.df)
med <-ifelse(metal.df$setting=="medium", 1,0)
slow<-ifelse(metal.df$setting=="slow", 1,0)
summary(lm(rate~med + slow + hardness, data=metal.df))

}
\keyword{datasets}
