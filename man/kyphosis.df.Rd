\name{kyphosis.df}
\alias{kyphosis.df}
\docType{data}
\title{
Data on Children who have had Corrective Spinal Surgery
}
\description{
The kyphosis data frame has 81 rows and 4 columns, representing data on children who have had corrective spinal surgery. 
}
\usage{data(kyphosis.df)}
\format{
  A data frame with 81 observations on the following 4 variables:
  \describe{
    \item{\code{Kyphosis}}{a factor with levels absent present indicating if a kyphosis (a type of deformation) was present after the operation. }
    \item{\code{Age}}{in months}
    \item{\code{Number}}{the number of vertebrae involved }
    \item{\code{Start}}{the number of the first (topmost) vertebra operated on}
  }
}
\source{
John M. Chambers and Trevor J. Hastie,  Statistical Models in S, p 200.
}
\references{
John M. Chambers and Trevor J. Hastie eds. (1992) Statistical Models in S, Wadsworth and Brooks/Cole, Pacific Grove, CA. 
}
\examples{
data(kyphosis.df) 
pairs20x(kyphosis.df)

}
\keyword{datasets}
