\name{acet.df}
\alias{acet.df}
\docType{data}
\title{
Acetylene Data
}
\description{
Percentage conversions of n-heptane to acetylene
}
\usage{data(acet.df)}
\format{
  A data frame with 16 observations on the following 4 variables:
  \describe{
    \item{\code{percent.conv}}{percentage conversaions of n-heptane to acetylene}
    \item{\code{temp}}{temperature in degrees centergrade}
    \item{\code{ratio}}{ratio of H2 to n-heptane}
    \item{\code{contact}}{contact time in seconds}
  }
}
\source{
DW Marquardt and RD Snee (1975). Ridge regression in practice. American Statistian, 28, 3-20
}
\examples{
data(acet.df)
summary(lm(percent.conv~temp+ratio+contact, data=acet.df))
}
\keyword{datasets}
