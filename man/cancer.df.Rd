\name{cancer.df}
\alias{cancer.df}
\docType{data}
\title{
Death Rates for Child Cancer
}
\description{
Data from study to investigate death rates for child cancer in the UK from 1951-1960 in Northumberland and Durham
}
\usage{data(cancer.df)}
\format{
  A data frame with 8 observations on the following 5 variables:
  \describe{
    \item{\code{Cytology}}{a factor with levels \code{L} \code{M}}
    \item{\code{Residence}}{type of residence either rural or urban}
    \item{\code{Age}}{the age of the child classified as either 0-4 years or 5-14 years}
    \item{\code{n}}{number of deaths}
    \item{\code{pop}}{population}
  }
}
\examples{
data(cancer.df)
cancer.glm<-glm(n ~ Cytology*Residence*Age, family=poisson,
offset=log(pop/100000), data=cancer.df)
anova(cancer.glm, test="Chisq")
}
\keyword{datasets}
