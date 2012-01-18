\name{onions.df}
\alias{onions.df}
\docType{data}
\title{
Onion growing data
}
\description{
From an onion growing experiment at the Hort Research station at Pukekohe. Conducted to compare the effects of different curing methods on the number of skins on individual onions at different stages of maturity
}
\usage{data(onions.df)}
\format{
  A data frame with 300 observations on the following 5 variables:
  \describe{
    \item{\code{maturity}}{Maturity of the onion as a percentage (50,70,90,95,100)}
    \item{\code{cure}}{method of curing (traditional, shears or partial)}
    \item{\code{block}}{the area of land the onions were grown in (1,2,3,4)}
    \item{\code{skins}}{the number of skins}
    \item{\code{weight}}{a numeric vector}
  }
}
\source{
C.M. Triggs, personal communication
}
\examples{
data(onions.df)
onions.glm<-glm(skins ~ factor(block),
      family=poisson, weight=weight, data=onions.df)

}
\keyword{datasets}
