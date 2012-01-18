\name{stamford.df}
\alias{stamford.df}
\docType{data}
\title{
Maximum Daily Ozone Concertrations
}
\description{
Daily maximum ozone concertrations at Stamford, Connecticut and Yonkers, New York, during the period 1 May 1974 to 30 September 1974.
}
\usage{data(stamford.df)}
\format{
  A data frame with 136 observations on the following 2 variables:
  \describe{
    \item{\code{days}}{denotes which day observation occured on}
    \item{\code{ozone}}{ozone in parts per billion}
  }
}
\source{
Chambers, J. M. et al.  Graphical Methods for Data Analysis. p346
}
\references{
Chambers, J. M. et al. (1983). Graphical Methods for Data Analysis. Duxbury Press: Boston.
}
\examples{
data(stamford.df)
plot(stamford.df$days, stamford.df$ozone, xlab="Days", ylab="Ozone")
loess.stuff=loess(ozone~days, data=stamford.df, span=0.75)
lines(loess.stuff$x, loess.stuff$fitted)
}
\keyword{datasets}
