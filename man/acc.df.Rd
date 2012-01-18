\name{acc.df}
\alias{acc.df}
\docType{data}
\title{
Data from the Auckland City Council
}
\description{
Data from the Auckland City Council where the aim was to predict the capital value from the rental value
}
\usage{data(acc.df)}
\format{
  A data frame with observations on 96 properties having variables
  \describe{
    \item{\code{capital}}{the capital value of the property}
    \item{\code{rental}}{the rental value of the property}
  }
}
\examples{
data(acc.df)
acc.lm<-lm(capital~rental,data=acc.df)
}
\keyword{datasets}
