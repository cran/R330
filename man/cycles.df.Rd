\name{cycles.df}
\alias{cycles.df}
\docType{data}
\title{
Cycles to failure of worsted yarn
}
\description{
Data which looked at the number of cycles to failure of lengths of worsted yarm under cycles of repeated loading
}
\usage{data(cycles.df)}
\format{
  A data frame with 27 observations on the following 4 variables:
  \describe{
    \item{\code{yarn.length}}{factor which takes lengths 250, 300 or 350mm, which were classified as low, med or high respectively}
    \item{\code{amplitude}}{the cycle amplitudes were taken to be 8, 9 or 10mm, which were classified as low, med or high respectively}
    \item{\code{load}}{loads taken to be 40, 45 or 50 grams, which were classified as low, med or high respectively}
    \item{\code{cycles}}{number of cycles to failure}
  }
}
\source{
Cox and Snell, Applied Statistics: Principles and Examples, pp 98-102
}
\references{
Cox, D. R. & Snell, E. J. (1981). Applied Statistics: Principles and Examples. Chapman and Hall, London.
}
\examples{
data(cycles.df)
library(lattice)
dotplot(cycles~yarn.length|amplitude*load,xlab="Yarn length",
 ylab="Cycles to failure",data=cycles.df,
strip=function(...)strip.default(...,strip.names=TRUE))
}
\keyword{datasets}
