\name{wine.df}
\alias{wine.df}
\docType{data}
\title{
Bordeaux Wine data
}
\description{
A data set which attempted to assess the quality of various Bordeaux vintages based upon certain variables
}
\usage{data(wine.df)}
\format{
  A data frame with 27 observations on the following 5 variables:
  \describe{
    \item{\code{year}}{year (1952-1980)}
    \item{\code{price}}{Price (in 1980 US dollars, converted to an index with 1961=100)}
    \item{\code{temp}}{average temp during the growing season (degrees Celcius)}
    \item{\code{h.rain}}{total rainfall during harvest period (mm)}
    \item{\code{w.rain}}{total rainfall over preceding winter (mm)}
  }
}
\source{
The data are available at http://www.liquidasset.com/winedata.html
}
\references{
An article by Orly Ashenfelder is at http://www.liquidasset.com/orley.htm
See also Orley Ashenfelter, David Ashmore, and Robert Lalonde,  
Bordeaux wine vintage quality and the weather. Chance Magazine, Fall 1995, pp.7-14

}
\examples{
data(wine.df)
boxcoxplot(price~temp+h.rain+w.rain+year, data=wine.df)
}
\keyword{datasets}
