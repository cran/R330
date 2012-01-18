\name{fatty.df}
\alias{fatty.df}
\docType{data}
\title{
Fatty acid data
}
\description{
Data was collected to use physical measures to model a biochemical parameter in overweight children
}
\usage{data(fatty.df)}
\format{
  A data frame with 20 observations on the following 4 variables:
  \describe{
    \item{\code{ffa}}{free fatty acid level in blood (response)}
    \item{\code{age}}{age (months)}
    \item{\code{weight}}{weight (pounds)}
    \item{\code{skinfold}}{skinfold thickness (inches)}
  }
}
\examples{
data(fatty.df)
fatty.lm<-lm(ffa~age+weight+skinfold,data=fatty.df)
}
\keyword{datasets}
