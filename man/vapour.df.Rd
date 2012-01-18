\name{vapour.df}
\alias{vapour.df}
\docType{data}
\title{
Hydrocarbon data
}
\description{
When petrol is pumped into a tank, hydrocarbon vapours are forced into the atmosphere. To reduce this significant source of air pollution, devices are installed to capture the vapour. A laboratory experiment was conducted in which the amount of vapour given off was measured.
}
\usage{data(vapour.df)}
\format{
  A data frame with 125 observations on the following 5 variables:
  \describe{
    \item{\code{t.temp}}{initial tank temperature (degrees F)}
    \item{\code{p.temp}}{temperature of the dispensed petrol (degrees F)}
    \item{\code{t.vp}}{initial vapour pressure in tank (psi)}
    \item{\code{p.vp}}{vapour pressure of the dispensed petrol (psi)}
    \item{\code{hc}}{emitted dispensed hydrocarbons (g)(response)}
  }
}
\examples{
data(vapour.df)
vapour.lm<-lm(hc~ t.temp + p.temp + t.vp + p.vp, data=vapour.df)
summary(vapour.lm)

}
\keyword{datasets}
