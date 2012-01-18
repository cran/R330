\name{evap.df}
\alias{evap.df}
\docType{data}
\title{
Moisture evaporation data
}
\description{
The purpose was to see if the amount of evaporation could be predicted by the temperature humidity and wind speed
}
\usage{data(evap.df)}
\format{
  A data frame with 46 observations on the following 11 variables:
  \describe{
    \item{\code{avst}}{average soil temperature over 24 hour period (x10)}
    \item{\code{minst}}{minimum soil temperature over 24 hour period (x10)}
    \item{\code{maxst}}{maximum soil temperature over 24 hour period (x10)}
    \item{\code{avat}}{average air temperature over 24 hour period (x10)}
    \item{\code{minat}}{minimum air temperature over 24 hour period (x10)}
    \item{\code{maxat}}{maximum air temperature over 24 hour period (x10)}
    \item{\code{avh}}{average humidity over 24 hour period (x10)}
    \item{\code{minh}}{minimum humidity over 24 hour period (x10)}
    \item{\code{maxh}}{maximum humidity over 24 hour period (x10)}
    \item{\code{wind}}{average wind speed over a 24 hour period (x100)}
    \item{\code{evap}}{amount of evaporation over 24 hour period}
  }
}
\examples{
data(evap.df)
evap.lm<-lm(evap~avat+avh+wind,data=evap.df)
summary(evap.lm)
}
\keyword{datasets}
