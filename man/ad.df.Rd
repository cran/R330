\name{ad.df}
\alias{ad.df}
\docType{data}
\title{
Advertising data
}
\description{
A data set which looks at the relationship between the sales and the expenditure on sales over 36 months
}
\usage{data(ad.df)}
\format{
  A data frame with 35 observations on the following 3 variables:
  \describe{
    \item{\code{sales}}{monthly sales}
    \item{\code{spend}}{amount spent on advertising this month}
    \item{\code{prev.spend}}{amount spent on advertising in the previous month}
  }
}
\details{
We lose one observation when prev.spend was created
}
\examples{
data(ad.df)
advert.lm<-lm(sales~spend+prev.spend,data=ad.df)
}
\keyword{datasets}
