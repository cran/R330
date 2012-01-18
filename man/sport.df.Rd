\name{sport.df}
\alias{sport.df}
\docType{data}
\title{
Australian Institute of Sport
}
\description{
Data on 102 male and 100 female athletes collected at the Australian Institute of Sport, courtesy of Richard Telford and Ross Cunningham.

}
\usage{data(sport.df)}
\format{
  A data frame with 158 observations on the following 5 variables:
  \describe{
    \item{\code{ID}}{ID}
    \item{\code{sex}}{male or female}
    \item{\code{sport}}{Sport}
    \item{\code{BMI}}{Body mass index = weight/height^2}
    \item{\code{X.Bfat}}{percentage body fat}
  }
}
\source{
Richard Telford and Ross Cunningham, Australian National University.  
}
\references{
Cook, R. D., and Weisberg, S. (1994). An Introduction to Regression Graphics. Wiley, New York.
}
\examples{
data(sport.df)
library(lattice)
xyplot(X.Bfat~BMI|sport*sex,xlab="BMI",ylab="X.Bfat",data=sport.df)
}
\keyword{datasets}
