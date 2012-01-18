\name{chem.df}
\alias{chem.df}
\docType{data}
\title{
Yield of Chemical Process
}
\description{
The data was collected to see if how the yields from a particular chemical process were associated with higher or lower flows and conversion percentages
}
\usage{data(chem.df)}
\format{
  A data frame with 44 observations on the following 4 variables:
  \describe{
    \item{\code{yield}}{yield}
    \item{\code{conversion}}{conversion as a percentage}
    \item{\code{flow}}{flow}
    \item{\code{ratio}}{ratio}
  }
}
\examples{
data(chem.df)
chem.lm<-lm(yield~.,data=chem.df)
summary(chem.lm)
}
\keyword{datasets}
