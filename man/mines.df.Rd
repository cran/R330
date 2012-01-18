\name{mines.df}
\alias{mines.df}
\docType{data}
\title{
Mining accident data
}
\description{
A data set with the number of accidents per mine in a 3 month period in 44 coal mines in West Virginia
}
\usage{data(mines.df)}
\format{
  A data frame with 44 observations on the following 5 variables:
  \describe{
    \item{\code{COUNT}}{number of accidents (response)}
    \item{\code{INB}}{inner burden thickness}
    \item{\code{EXTRP}}{percentage of coal extracted from mine}
    \item{\code{AHS}}{the average height of the coal seam in the mine}
    \item{\code{AGE}}{the age of the mine}
  }
}
\examples{
data(mines.df)
mines.glm<-glm(COUNT ~ INB + EXTRP + AHS + AGE, 
                family=poisson, data=mines.df)

}
\keyword{datasets}
